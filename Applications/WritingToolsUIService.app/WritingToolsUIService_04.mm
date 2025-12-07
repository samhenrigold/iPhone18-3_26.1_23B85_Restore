uint64_t sub_10007C390(uint64_t a1, uint64_t a2)
{
  v3[18] = a2;
  v3[19] = v2;
  v3[17] = a1;
  type metadata accessor for MainActor();
  v3[20] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[21] = v5;
  v3[22] = v4;

  return _swift_task_switch(sub_10007C42C, v5, v4);
}

uint64_t sub_10007C42C()
{
  v1 = v0[18];
  v2 = v0[17] & 0xFFFFFFFFFFFFLL;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  if (v2)
  {
    v3 = v0[19];
    swift_getKeyPath();
    v0[15] = v3;
    sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v4 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__analyticsInstance;
    swift_beginAccess();
    sub_1000081F8(v3 + v4, (v0 + 2), &unk_10025B1C0, &unk_1001CFA90);
    if (v0[5])
    {
      v5 = v0[19];
      v6 = v0[17];
      sub_100028458((v0 + 2), (v0 + 7));
      sub_10000F500((v0 + 2), &unk_10025B1C0, &unk_1001CFA90);
      sub_100027874(v0 + 7, v0[10]);
      swift_getKeyPath();
      v0[16] = v5;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      sub_10000C1CC(0, 1, 0, 1, v6, v1, 0, 0, *(v5 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__inclusionPolicy));
      sub_10000F4B4(v0 + 7);
    }

    else
    {
      sub_10000F500((v0 + 2), &unk_10025B1C0, &unk_1001CFA90);
    }

    v9 = swift_task_alloc();
    v0[24] = v9;
    *v9 = v0;
    v9[1] = sub_10007C878;
    v10 = v0[18];
    v11 = v0[17];

    return sub_10007DE34(v11, v10);
  }

  else
  {
    v7 = swift_task_alloc();
    v0[23] = v7;
    *v7 = v0;
    v7[1] = sub_10007C6F8;

    return sub_10007C998();
  }
}

uint64_t sub_10007C6F8()
{
  v1 = *v0;

  v2 = *(v1 + 176);
  v3 = *(v1 + 168);

  return _swift_task_switch(sub_10007C818, v3, v2);
}

uint64_t sub_10007C818(uint64_t a1, uint64_t a2)
{

  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_10007C878()
{
  v1 = *v0;

  v2 = *(v1 + 176);
  v3 = *(v1 + 168);

  return _swift_task_switch(sub_10009B1E4, v3, v2);
}

uint64_t sub_10007C998()
{
  v1[17] = v0;
  type metadata accessor for MainActor();
  v1[18] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[19] = v3;
  v1[20] = v2;

  return _swift_task_switch(sub_10007CA30, v3, v2);
}

uint64_t sub_10007CA30()
{
  v1 = v0[17];
  swift_getKeyPath();
  v0[15] = v1;
  sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__analyticsInstance;
  swift_beginAccess();
  sub_1000081F8(v1 + v2, (v0 + 2), &unk_10025B1C0, &unk_1001CFA90);
  if (v0[5])
  {
    v3 = v0[17];
    sub_100028458((v0 + 2), (v0 + 7));
    sub_10000F500((v0 + 2), &unk_10025B1C0, &unk_1001CFA90);
    sub_100027874(v0 + 7, v0[10]);
    swift_getKeyPath();
    v0[16] = v3;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    sub_10000C1CC(0, 1, 0, 1, 0, 0, 0xD00000000000001ALL, 0x80000001001E4B90, *(v3 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__inclusionPolicy));
    sub_10000F4B4(v0 + 7);
  }

  else
  {
    sub_10000F500((v0 + 2), &unk_10025B1C0, &unk_1001CFA90);
  }

  v4 = swift_task_alloc();
  v0[21] = v4;
  *v4 = v0;
  v4[1] = sub_10007CC94;

  return sub_10007DE34(0xD00000000000001ALL, 0x80000001001E4B90);
}

uint64_t sub_10007CC94()
{
  v1 = *v0;

  v2 = *(v1 + 160);
  v3 = *(v1 + 152);

  return _swift_task_switch(sub_10007CDB4, v3, v2);
}

uint64_t sub_10007CDB4(uint64_t a1, uint64_t a2)
{

  v3 = *(v2 + 8);

  return v3();
}

void sub_10007CE14(char a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v5 = v4;
  v10 = sub_10000341C(&unk_100262580, &qword_1001CFF70);
  __chkstk_darwin(v10 - 8);
  v12 = &v47 - v11;
  v13 = type metadata accessor for CompositionModel.Session(0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = (&v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a2)
  {
    v17 = sub_1000713A0();
    if (v17)
    {
      v18 = v17;
      if ([v17 respondsToSelector:"endTextPlaceholderAndWillInsertText:completion:"])
      {
        v52 = nullsub_1;
        v53 = 0;
        aBlock = _NSConcreteStackBlock;
        v49 = 1107296256;
        v50 = sub_1001256BC;
        v51 = &unk_10024CEC0;
        v19 = _Block_copy(&aBlock);
        [v18 endTextPlaceholderAndWillInsertText:(a1 == 2) | (a1 & 1) completion:v19];
        swift_unknownObjectRelease();
        _Block_release(v19);
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    swift_getKeyPath();
    aBlock = v5;
    sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v27 = Strong;
      v28 = _convertErrorToNSError(_:)();
      [v27 endWritingToolsWithError:v28];

      swift_unknownObjectRelease();
    }

    return;
  }

  swift_getKeyPath();
  aBlock = v4;
  sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v20 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__session;
  swift_beginAccess();
  sub_1000081F8(v5 + v20, v12, &unk_100262580, &qword_1001CFF70);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_10000F500(v12, &unk_100262580, &qword_1001CFF70);
    if (qword_10025A718 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_10000F34C(v21, qword_100276FB0);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      aBlock = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_10002510C(0xD00000000000001FLL, 0x80000001001E4940, &aBlock);
      _os_log_impl(&_mh_execute_header, v22, v23, "%s is called without session. The session may have been ended by a different view trying to start a new session", v24, 0xCu);
      sub_10000F4B4(v25);
    }

    if (a3)
    {
      (a3)();
    }

    return;
  }

  sub_10009A774(v12, v16, type metadata accessor for CompositionModel.Session);
  if (qword_10025A718 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  sub_10000F34C(v29, qword_100276FB0);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 67109120;
    if (a1 == 2)
    {
      v33 = 1;
    }

    else
    {
      v33 = a1 & 1;
    }

    *(v32 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v30, v31, "Ending WT session, accepted: %{BOOL}d", v32, 8u);
  }

  if (v16[2])
  {
    v47 = a3;
    v34 = a4;
    GenerativeExperiencesSession.sessionIdentifier()();
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "Ending GES session", v37, 2u);
    }

    type metadata accessor for GenerativeExperiencesSession();
    v38 = static GenerativeExperiencesSession.terminateSession(for:)();

    a4 = v34;
    a3 = v47;
    if (v38)
    {
      goto LABEL_32;
    }

    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      v42 = "GES session termination returned failure";
LABEL_30:
      _os_log_impl(&_mh_execute_header, v39, v40, v42, v41, 2u);
    }
  }

  else
  {
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      v42 = "No GES session to end";
      goto LABEL_30;
    }
  }

LABEL_32:
  v43 = sub_1000713A0();
  if (v43)
  {
    v44 = v43;
    if ([v43 respondsToSelector:"endTextPlaceholderAndWillInsertText:completion:"])
    {
      v52 = nullsub_1;
      v53 = 0;
      aBlock = _NSConcreteStackBlock;
      v49 = 1107296256;
      v50 = sub_1001256BC;
      v51 = &unk_10024CE98;
      v45 = _Block_copy(&aBlock);
      [v44 endTextPlaceholderAndWillInsertText:(a1 == 2) | (a1 & 1) completion:v45];
      swift_unknownObjectRelease();
      _Block_release(v45);
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  v46 = sub_1000713A0();
  if (v46)
  {
    [v46 didEndWritingToolsSession:*v16 accepted:(a1 == 2) | (a1 & 1)];
    swift_unknownObjectRelease();
  }

  sub_10007D654(v16, v5, a3, a4);
  sub_100099074(v16);
}

uint64_t sub_10007D654(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v35[1] = a4;
  v37 = a3;
  v6 = sub_10000341C(&unk_100262450, &qword_1001CFAA0);
  __chkstk_darwin(v6 - 8);
  v36 = v35 - v7;
  v8 = sub_10000341C(&unk_100262580, &qword_1001CFF70);
  __chkstk_darwin(v8 - 8);
  v10 = v35 - v9;
  v11 = sub_10000341C(&qword_10025F240, &qword_1001D3D58);
  __chkstk_darwin(v11 - 8);
  v13 = v35 - v12;
  v14 = sub_10000341C(&qword_10025F2C0, qword_1001D3D68);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v35 - v16;
  v18 = type metadata accessor for CompositionModel.Session(0);
  sub_1000081F8(a1 + *(v18 + 28), v13, &qword_10025F240, &qword_1001D3D58);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_10000F500(v13, &qword_10025F240, &qword_1001D3D58);
  }

  else
  {
    (*(v15 + 32))(v17, v13, v14);
    if (qword_10025A718 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_10000F34C(v19, qword_100276FB0);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "user reverted while continuation was still active", v22, 2u);
    }

    sub_100099280();
    v23 = swift_allocError();
    *v24 = 0;
    v24[1] = 0;
    v40 = v23;
    CheckedContinuation.resume(throwing:)();
    (*(v15 + 8))(v17, v14);
  }

  (*(*(v18 - 8) + 56))(v10, 1, 1, v18);
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  v35[-2] = a2;
  v35[-1] = v10;
  v40 = a2;
  sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  sub_10000F500(v10, &unk_100262580, &qword_1001CFF70);
  v26 = (a2 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__notice);
  if (*(a2 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__notice + 8))
  {
    v27 = swift_getKeyPath();
    __chkstk_darwin(v27);
    v35[-3] = 0;
    v35[-2] = 0;
    v35[-4] = a2;
    v40 = a2;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *v26 = 0;
    v26[1] = 0;
  }

  sub_100073770(_swiftEmptyArrayStorage);
  sub_100072BD0(_swiftEmptyArrayStorage);
  if (*(a2 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__nonInlineSupportResponse))
  {
    v28 = swift_getKeyPath();
    __chkstk_darwin(v28);
    v35[-2] = a2;
    v35[-1] = 0;
    v40 = a2;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  swift_getKeyPath();
  v40 = a2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v40 = a2;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v29 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__requestedInfoResponse;
  swift_beginAccess();
  *(a2 + v29) = &_swiftEmptyDictionarySingleton;

  v39 = a2;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  swift_getKeyPath();
  v39 = a2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v39 = a2;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v30 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__slots;
  swift_beginAccess();
  *(a2 + v30) = _swiftEmptyArrayStorage;

  v38 = a2;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  swift_getKeyPath();
  v38 = a2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  sub_100170300();

  v31 = type metadata accessor for UUID();
  v32 = *(*(v31 - 8) + 56);
  v33 = v36;
  v32(v36, 1, 1, v31);
  sub_1000742F0(v33);
  v32(v33, 1, 1, v31);
  result = sub_1000744CC(v33);
  if (v37)
  {
    return v37(result);
  }

  return result;
}

uint64_t sub_10007DE34(uint64_t a1, uint64_t a2)
{
  v3[54] = a2;
  v3[55] = v2;
  v3[53] = a1;
  sub_10000341C(&unk_100262450, &qword_1001CFAA0);
  v3[56] = swift_task_alloc();
  type metadata accessor for Locale();
  v3[57] = swift_task_alloc();
  type metadata accessor for String.LocalizationValue();
  v3[58] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[59] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[60] = v5;
  v3[61] = v4;

  return _swift_task_switch(sub_10007DF60, v5, v4);
}

uint64_t sub_10007DF60()
{
  v1 = v0[55];
  v2 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__state;
  v0[62] = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__state;
  if (*(v1 + v2) != 1)
  {
    swift_getKeyPath();
    v3 = swift_task_alloc();
    *(v3 + 16) = v1;
    *(v3 + 24) = 1;
    v0[43] = v1;
    sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v4 = swift_task_alloc();
  v0[63] = v4;
  *v4 = v0;
  v4[1] = sub_10007E0D8;
  v5 = v0[54];
  v6 = v0[53];

  return sub_100080514(v6, v5);
}

uint64_t sub_10007E0D8()
{
  v2 = *v1;
  *(*v1 + 512) = v0;

  v3 = *(v2 + 488);
  v4 = *(v2 + 480);
  if (v0)
  {
    v5 = sub_10007EDA0;
  }

  else
  {
    v5 = sub_10007E214;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10007E214()
{
  v59 = v0;
  v1 = v0[55];
  if (*(v1 + v0[62]))
  {
    swift_getKeyPath();
    v2 = swift_task_alloc();
    *(v2 + 16) = v1;
    *(v2 + 24) = 0;
    v0[48] = v1;
    sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v1 = v0[55];
  }

  swift_getKeyPath();
  v0[49] = v1;
  sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__analyticsInstance;
  swift_beginAccess();
  sub_1000081F8(v1 + v3, (v0 + 22), &unk_10025B1C0, &unk_1001CFA90);
  if (v0[25])
  {
    v4 = v0[55];
    sub_100028458((v0 + 22), (v0 + 27));
    sub_10000F500((v0 + 22), &unk_10025B1C0, &unk_1001CFA90);
    v5 = sub_100027874(v0 + 27, v0[30]);
    swift_getKeyPath();
    v0[51] = v4;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v57 = *(v4 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__modelInfoString);
    v6 = *(v4 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__modelInfoString + 8);
    swift_getKeyPath();
    v0[52] = v4;

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v7 = *(v4 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__resultAttributedString);
    if (v7)
    {
      v8 = v7;
      v9 = [v8 string];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v56 = *v5;
    if (qword_10025A6F8 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000F34C(v10, qword_100276F50);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v58[0] = swift_slowAlloc();
      *v13 = 136643075;
      *(v13 + 4) = sub_10002510C(v57, v6, v58);
      *(v13 + 12) = 2081;
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      v14 = String._bridgeToObjectiveC()();

      v15 = [v14 key];

      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      v19 = sub_10002510C(v16, v18, v58);

      *(v13 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v11, v12, "reportResultsGenerated: modelInfo: %{sensitive}s mode: %{private}s", v13, 0x16u);
      swift_arrayDestroy();
    }

    sub_10000341C(&unk_10025F490, &unk_1001CFA50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1001CF9F0;
    if (qword_10025A528 != -1)
    {
      swift_once();
    }

    v21 = qword_100276D38;
    *(inited + 32) = qword_100276D38;
    v22 = v21;
    v23 = String._bridgeToObjectiveC()();

    v24 = IAPayloadKeyWritingToolsFeatureDetails;
    *(inited + 40) = v23;
    *(inited + 48) = v24;
    v25 = qword_10025A5F0;
    v26 = v24;
    if (v25 != -1)
    {
      swift_once();
    }

    v27 = qword_100276E00;
    *(inited + 56) = qword_100276E00;
    v28 = qword_10025A530;
    v29 = v27;
    if (v28 != -1)
    {
      swift_once();
    }

    v30 = v0[56];
    v31 = qword_100276D40;
    *(inited + 64) = qword_100276D40;
    type metadata accessor for IAPayloadValue(0);
    v32 = v31;
    *(inited + 72) = Array._bridgeToObjectiveC()();
    v33 = sub_100005794(inited);
    swift_setDeallocating();
    sub_10000341C(&qword_10025B1A0, &unk_1001D45A0);
    swift_arrayDestroy();
    v34 = IAPayloadKeyWritingToolsResultText;
    v35 = String._bridgeToObjectiveC()();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v58[0] = v33;
    sub_1001A9924(v35, v34, isUniquelyReferenced_nonNull_native);

    v37 = IASignalWritingToolsResultsGenerated;
    v38 = IAChannelWritingTools;
    sub_1000081F8(v56 + OBJC_IVAR____TtC21WritingToolsUIService21WritingToolsAnalytics_analyticsUUID, v30, &unk_100262450, &qword_1001CFAA0);
    v39 = type metadata accessor for UUID();
    v40 = *(v39 - 8);
    v41 = (*(v40 + 48))(v30, 1, v39);
    v42 = v0[56];
    if (v41 == 1)
    {
      sub_10000F500(v0[56], &unk_100262450, &qword_1001CFAA0);
      v43 = 0;
    }

    else
    {
      UUID.uuidString.getter();
      (*(v40 + 8))(v42, v39);
      v43 = String._bridgeToObjectiveC()();
    }

    v44 = objc_opt_self();
    type metadata accessor for IAPayloadKey(0);
    sub_1000081B0(0, &qword_10025F4A0, NSObject_ptr);
    sub_1000997E0(&qword_10025AF18, type metadata accessor for IAPayloadKey, &unk_1001CF8D0);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v44 sendSignal:v37 toChannel:v38 withNullableUniqueStringID:v43 withPayload:isa];

    sub_10000F4B4(v0 + 27);
  }

  else
  {
    sub_10000F500((v0 + 22), &unk_10025B1C0, &unk_1001CFA90);
  }

  v46 = v0[55];
  swift_getKeyPath();
  v0[50] = v46;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v47 = *(v46 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__resultAttributedString);
  if (v47)
  {
    v48 = v47;
    v49 = [v48 string];
    v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v52 = v51;
  }

  else
  {
    v50 = 0;
    v52 = 0xE000000000000000;
  }

  sub_10006CC20("Composition", 11, 2, v50, v52);

  v53 = v0[55];
  swift_getKeyPath();
  v0[47] = v53;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v0[65] = *(v53 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__rateLimitModel);

  v54 = swift_task_alloc();
  v0[66] = v54;
  *v54 = v0;
  v54[1] = sub_10007EBD8;

  return sub_1000DF628();
}

uint64_t sub_10007EBD8()
{
  v1 = *v0;

  v2 = *(v1 + 488);
  v3 = *(v1 + 480);

  return _swift_task_switch(sub_10007ED1C, v3, v2);
}

uint64_t sub_10007ED1C(uint64_t a1, uint64_t a2)
{

  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_10007EDA0()
{
  v0[44] = v0[64];
  swift_errorRetain();
  sub_10000341C(&qword_10025F410, &qword_1001D4370);
  if (swift_dynamicCast())
  {
    v1 = v0[42];
    if (!v1)
    {

      goto LABEL_12;
    }

    sub_10009A8B8(v0[41], v1);
  }

  if (qword_10025A6E0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000F34C(v2, qword_100276F08);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "composition failed: %@", v5, 0xCu);
    sub_10000F500(v6, &unk_10025D580, &qword_1001CFA60);
  }

  v8 = v0[55];

  swift_getKeyPath();
  v0[45] = v8;
  sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v9 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__analyticsInstance;
  swift_beginAccess();
  sub_1000081F8(v8 + v9, (v0 + 12), &unk_10025B1C0, &unk_1001CFA90);
  v10 = v0[64];
  if (v0[15])
  {
    sub_100028458((v0 + 12), (v0 + 17));
    sub_10000F500((v0 + 12), &unk_10025B1C0, &unk_1001CFA90);
    sub_100027874(v0 + 17, v0[20]);
    swift_errorRetain();
    sub_10000DB64(v10, 0, 1, 0, 1);

    sub_10000F4B4(v0 + 17);
  }

  else
  {
    sub_10000F500((v0 + 12), &unk_10025B1C0, &unk_1001CFA90);
  }

  swift_errorRetain();
  sub_100036BF0(v10);
  swift_getErrorValue();
  v11 = Error.localizedDescription.getter();
  sub_10006CC20("Composition", 11, 2, v11, v12);

LABEL_12:

  v13 = v0[55];
  swift_getKeyPath();
  v0[47] = v13;
  sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v0[65] = *(v13 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__rateLimitModel);

  v14 = swift_task_alloc();
  v0[66] = v14;
  *v14 = v0;
  v14[1] = sub_10007EBD8;

  return sub_1000DF628();
}

uint64_t sub_10007F1E8()
{
  swift_getKeyPath();
  sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__handoffOriginatorMode;
  v2 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__handoffOriginatorMode);
  v3 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__handoffOriginatorMode + 24);
  if (!*(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__handoffOriginatorMode + 24))
  {
    return *&aRewrite_1[8 * v2];
  }

  if (v3 == 255)
  {
    return 0;
  }

  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  if (v3 == 2 && v2 == 1 && (v5 | v4) == 0)
  {
    return 0x616572666F6F7270;
  }

  sub_10000F3F4(v2, v4, v5, v3);
  if (qword_10025A6D8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000F34C(v8, qword_100276EF0);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Unexpected handoffOriginatorMode.", v11, 2u);
  }

  _StringGuts.grow(_:)(38);
  v12._object = 0x80000001001E4B60;
  v12._countAndFlagsBits = 0xD000000000000022;
  String.append(_:)(v12);
  _print_unlocked<A, B>(_:_:)();
  v13._countAndFlagsBits = 11869;
  v13._object = 0xE200000000000000;
  String.append(_:)(v13);
  sub_100099280();
  swift_allocError();
  *v14 = 0;
  v14[1] = 0xE000000000000000;
  swift_willThrow();
  return sub_1000278C0(v2, v4, v5, v3);
}

uint64_t sub_10007F4A4()
{
  v1 = v0;
  v99 = type metadata accessor for UUID();
  v97 = *(v99 - 8);
  __chkstk_darwin(v99);
  v96 = v86 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for SessionConfiguration();
  __chkstk_darwin(v3 - 8);
  v98 = v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Prompt();
  __chkstk_darwin(v5 - 8);
  v94 = v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000341C(&qword_10025F478, &unk_1001D4D30);
  __chkstk_darwin(v7 - 8);
  v93 = v86 - v8;
  v9 = type metadata accessor for Prompt.StringInterpolation();
  __chkstk_darwin(v9 - 8);
  v92 = v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for ChatMessageRole();
  v89 = *(v90 - 8);
  __chkstk_darwin(v90);
  v91 = v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ChatMessagePrompt();
  v13 = *(v12 - 8);
  v100 = v12;
  v101 = v13;
  v14 = __chkstk_darwin(v12);
  v103 = v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v107 = v86 - v16;
  v17 = type metadata accessor for CachePolicy();
  __chkstk_darwin(v17 - 8);
  v88 = v86 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for SessionConfiguration();
  v105 = *(v19 - 8);
  v106 = v19;
  v20 = __chkstk_darwin(v19);
  v102 = v86 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v113 = v86 - v22;
  v23 = sub_10000341C(&qword_10025F480, &qword_1001D4510);
  __chkstk_darwin(v23 - 8);
  v25 = v86 - v24;
  v26 = type metadata accessor for ModelBundle();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v104 = v86 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_10000341C(&unk_100262580, &qword_1001CFF70);
  __chkstk_darwin(v29 - 8);
  v31 = v86 - v30;
  if (qword_10025A718 != -1)
  {
    swift_once();
  }

  v109 = v27;
  v110 = v26;
  v32 = type metadata accessor for Logger();
  v108 = sub_10000F34C(v32, qword_100276FB0);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&_mh_execute_header, v33, v34, "Initializing GES Session.", v35, 2u);
  }

  swift_getKeyPath();
  v111 = v1;
  sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v36 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__session;
  swift_beginAccess();
  sub_1000081F8(v1 + v36, v31, &unk_100262580, &qword_1001CFF70);
  v37 = type metadata accessor for CompositionModel.Session(0);
  v38 = *(v37 - 8);
  v87 = *(v38 + 48);
  v86[1] = v38 + 48;
  LODWORD(v36) = v87(v31, 1, v37);
  sub_10000F500(v31, &unk_100262580, &qword_1001CFF70);
  if (v36 == 1)
  {
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&_mh_execute_header, v39, v40, "Writing Tools session was not initialized.", v41, 2u);
    }

    v42 = 0x80000001001E4A50;
    sub_100099280();
    swift_allocError();
    v44 = 0xD00000000000002ALL;
    goto LABEL_11;
  }

  type metadata accessor for CompositionModel(0);
  sub_100071008(v25);
  v46 = v109;
  v45 = v110;
  if ((*(v109 + 48))(v25, 1, v110) == 1)
  {
    sub_10000F500(v25, &qword_10025F480, &qword_1001D4510);
    v42 = 0x80000001001E4AD0;
    sub_100099280();
    swift_allocError();
    v44 = 0xD00000000000001CLL;
LABEL_11:
    *v43 = v44;
    v43[1] = v42;
    return swift_willThrow();
  }

  v86[0] = v37;
  v48 = v104;
  (*(v46 + 32))(v104, v25, v45);
  sub_10000341C(&qword_10025F488, &qword_1001D4518);
  v49 = (*(v46 + 80) + 32) & ~*(v46 + 80);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_1001CF9D0;
  (*(v46 + 16))(v50 + v49, v48, v45);
  static CachePolicy.inMemory.getter();
  SessionConfiguration.init(identifier:useCaseID:preferredModelBundles:handlesSensitiveData:cachePolicy:onBehalfOf:parentOfOnBehalfOf:)();
  swift_getKeyPath();
  v111 = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v51 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__selectedWordCount;
  v52 = *(v1 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__selectedWordCount);
  swift_getKeyPath();
  v111 = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if ((*(v1 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__inclusionPolicy) & 1) != 0 || (swift_getKeyPath(), v111 = v1, ObservationRegistrar.access<A, B>(_:keyPath:)(), , v53 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__allWordCount, *(v1 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__allWordCount) <= 0))
  {
    v55 = v52 > 0;
  }

  else
  {
    swift_getKeyPath();
    v111 = v1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v54 = *(v1 + v51);
    swift_getKeyPath();
    v111 = v1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (v52 <= 0)
    {
      v55 = 2 * (v54 != *(v1 + v53));
    }

    else
    {
      v55 = 1;
    }
  }

  v56 = v100;
  (*(v89 + 104))(v91, enum case for ChatMessageRole.system(_:), v90);
  Prompt.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v57._countAndFlagsBits = 0;
  v57._object = 0xE000000000000000;
  Prompt.StringInterpolation.appendLiteral(_:)(v57);
  LODWORD(v100) = v55;
  sub_10019B2F0(v55);
  v58 = type metadata accessor for Prompt.Component.Privacy();
  v59 = v93;
  (*(*(v58 - 8) + 56))(v93, 1, 1, v58);
  Prompt.StringInterpolation.appendInterpolation(_:priority:privacy:)();

  sub_10000F500(v59, &qword_10025F478, &unk_1001D4D30);
  v60._countAndFlagsBits = 0;
  v60._object = 0xE000000000000000;
  Prompt.StringInterpolation.appendLiteral(_:)(v60);
  Prompt.init(stringInterpolation:)();
  v61 = v107;
  ChatMessagePrompt.init(role:prompt:)();
  (*(v105 + 16))(v102, v113, v106);
  v62 = v101;
  (*(v101 + 16))(v103, v61, v56);
  v63 = v95;
  sub_10007F1E8();
  if (v63)
  {
  }

  v64 = v96;
  UUID.init()();
  UUID.uuidString.getter();
  (*(v97 + 8))(v64, v99);
  SessionConfiguration.init(tokenGeneratorConfig:identifier:instructions:templateID:)();
  type metadata accessor for GenerativeExperiencesSession();
  swift_allocObject();
  v65 = GenerativeExperiencesSession.init(configuration:)();
  if (v65)
  {
    v66 = v65;

    v67 = sub_10007A25C(&v111);
    v69 = v68;
    if (!v87(v68, 1, v86[0]))
    {
      *(v69 + 2) = v66;
    }

    (v67)(&v111, 0);

    (*(v62 + 8))(v107, v56);
    (*(v105 + 8))(v113, v106);
    return (*(v109 + 8))(v104, v110);
  }

  else
  {
    v70 = 0xEC000000656E6F6ELL;
    v71 = 0x5F65736F706D6F63;
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v111 = v75;
      *v74 = 136315138;
      if (v100)
      {
        if (v100 == 2)
        {
          v76 = 0x80000001001E4B20;
          v77 = 0xD000000000000013;
        }

        else
        {
          v76 = 0x80000001001E4B40;
          v77 = 0xD00000000000001ALL;
        }
      }

      else
      {
        v77 = 0x5F65736F706D6F63;
        v76 = 0xEC000000656E6F6ELL;
      }

      v78 = sub_10002510C(v77, v76, &v111);

      *(v74 + 4) = v78;
      _os_log_impl(&_mh_execute_header, v72, v73, "Attempted to Create GES session with %s but failed.", v74, 0xCu);
      sub_10000F4B4(v75);

      v62 = v101;
    }

    else
    {
    }

    v111 = 0;
    v112 = 0xE000000000000000;
    _StringGuts.grow(_:)(51);
    v79._countAndFlagsBits = 0xD000000000000025;
    v79._object = 0x80000001001E4AF0;
    String.append(_:)(v79);
    v80 = v109;
    if (v100)
    {
      if (v100 == 2)
      {
        v70 = 0x80000001001E4B20;
        v71 = 0xD000000000000013;
      }

      else
      {
        v70 = 0x80000001001E4B40;
        v71 = 0xD00000000000001ALL;
      }
    }

    v81._countAndFlagsBits = v71;
    v81._object = v70;
    String.append(_:)(v81);

    v82._countAndFlagsBits = 0x6961662074756220;
    v82._object = 0xEC0000002E64656CLL;
    String.append(_:)(v82);
    v83 = v111;
    v84 = v112;
    sub_100099280();
    swift_allocError();
    *v85 = v83;
    v85[1] = v84;
    swift_willThrow();
    (*(v62 + 8))(v107, v56);
    (*(v105 + 8))(v113, v106);
    return (*(v80 + 8))(v104, v110);
  }
}

uint64_t sub_100080514(uint64_t a1, uint64_t a2)
{
  v3[135] = v2;
  v3[134] = a2;
  v3[133] = a1;
  v3[136] = *(type metadata accessor for Attachment(0) - 8);
  v3[137] = swift_task_alloc();
  type metadata accessor for String.Encoding();
  v3[138] = swift_task_alloc();
  v4 = type metadata accessor for CharacterSet();
  v3[139] = v4;
  v3[140] = *(v4 - 8);
  v3[141] = swift_task_alloc();
  sub_10000341C(&unk_100262580, &qword_1001CFF70);
  v3[142] = swift_task_alloc();
  v3[143] = swift_task_alloc();
  v5 = type metadata accessor for CompositionModel.Session(0);
  v3[144] = v5;
  v3[145] = *(v5 - 8);
  v3[146] = swift_task_alloc();
  v3[147] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[148] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[149] = v6;
  v3[150] = v7;

  return _swift_task_switch(sub_100080778, v6, v7);
}

uint64_t sub_100080778()
{
  v197 = v0;
  if (qword_10025A718 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000F34C(v1, qword_100276FB0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Running Compose with GES", v4, 2u);
  }

  v5 = *(v0 + 1080);

  sub_10007A838();
  swift_getKeyPath();
  *(v0 + 768) = v5;
  sub_1000997E0(&qword_10025C140, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v5 + 120))
  {
    swift_errorRetain();

    swift_willThrow();
LABEL_18:

    v28 = *(v0 + 8);

    return v28();
  }

  v194 = v1;
  v6 = *(v0 + 1160);
  v7 = *(v0 + 1152);
  v8 = *(v0 + 1144);
  v9 = *(v0 + 1080);
  swift_getKeyPath();
  *(v0 + 1208) = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel___observationRegistrar;
  *(v0 + 1024) = v9;
  *(v0 + 1216) = sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v10 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__session;
  swift_beginAccess();
  sub_1000081F8(v9 + v10, v8, &unk_100262580, &qword_1001CFF70);
  v11 = *(v6 + 48);
  v12 = v11(v8, 1, v7);
  v13 = *(v0 + 1144);
  if (v12 == 1)
  {

    sub_10000F500(v13, &unk_100262580, &qword_1001CFF70);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Writing Tools session was not initialized.", v16, 2u);
    }

    sub_100099280();
    swift_allocError();
    *v17 = 0xD00000000000002ALL;
    v17[1] = 0x80000001001E4A50;
    swift_willThrow();
    goto LABEL_18;
  }

  v18 = *(v0 + 1176);
  sub_10009A774(*(v0 + 1144), v18, type metadata accessor for CompositionModel.Session);
  if (!*(v18 + 16))
  {
    sub_10007F4A4();
  }

  v19 = *(v0 + 1152);
  v20 = *(v0 + 1136);
  v21 = *(v0 + 1080);
  swift_getKeyPath();
  *(v0 + 1016) = v21;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  sub_1000081F8(v9 + v10, v20, &unk_100262580, &qword_1001CFF70);
  if (v11(v20, 1, v19))
  {
    v22 = *(v0 + 1136);

    sub_10000F500(v22, &unk_100262580, &qword_1001CFF70);
LABEL_15:
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "GES session was not initialized.", v25, 2u);
    }

    v26 = *(v0 + 1176);

    sub_100099280();
    swift_allocError();
    *v27 = 0xD000000000000020;
    v27[1] = 0x80000001001E4A80;
    swift_willThrow();
    sub_100099074(v26);
    goto LABEL_18;
  }

  v30 = *(v0 + 1136);
  v31 = *(v30 + 16);
  *(v0 + 1224) = v31;

  sub_10000F500(v30, &unk_100262580, &qword_1001CFF70);
  if (!v31)
  {

    goto LABEL_15;
  }

  v189 = v31;
  v32 = *(v0 + 1080);
  if (*(v32 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__nonInlineSupportResponse))
  {
    swift_getKeyPath();
    v33 = swift_task_alloc();
    *(v33 + 16) = v32;
    *(v33 + 24) = 0;
    *(v0 + 776) = v32;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v32 = *(v0 + 1080);
  }

  v191 = *(v0 + 1176);
  v34 = *(v0 + 1152);
  swift_getKeyPath();
  *(v0 + 1008) = v32;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *(v0 + 1000) = v32;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v35 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__requestedInfoResponse;
  swift_beginAccess();
  *(v32 + v35) = &_swiftEmptyDictionarySingleton;

  *(v0 + 992) = v32;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  swift_getKeyPath();
  *(v0 + 984) = v32;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *(v0 + 976) = v32;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v36 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__slots;
  swift_beginAccess();
  *(v32 + v36) = _swiftEmptyArrayStorage;

  *(v0 + 968) = v32;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  v37 = *(v191 + *(v34 + 32));
  if (!v37)
  {
    v38 = sub_1000713A0();
    if (v38)
    {
      v39 = v38;
      v40 = *(v0 + 1176);
      v41 = *v40;
      sub_10000341C(&qword_10025F470, &qword_1001D1020);
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_1001D1060;
      v43 = v40[1];
      *(v42 + 32) = v43;
      sub_1000081B0(0, &unk_100262480, WTContext_ptr);
      v44 = v43;
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v39 didBeginWritingToolsSession:v41 contexts:isa];
      swift_unknownObjectRelease();
    }
  }

  v46 = sub_1000713A0();
  if (v46)
  {
    [v46 writingToolsSession:**(v0 + 1176) didReceiveAction:3];
    swift_unknownObjectRelease();
  }

  if (*(*(v0 + 1176) + *(*(v0 + 1152) + 36)) == 1)
  {
    v47 = sub_1000713A0();
    if (v47)
    {
      v48 = v47;
      if ([v47 respondsToSelector:"beginTextPlaceholder"])
      {
        [v48 beginTextPlaceholder];
      }

      swift_unknownObjectRelease();
    }
  }

  v49 = *(v0 + 1080);
  v192 = sub_1000057A8(_swiftEmptyArrayStorage);
  swift_getKeyPath();
  *(v0 + 960) = v49;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v50 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__selectedWordCount;
  v190 = *(v49 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__selectedWordCount);
  swift_getKeyPath();
  *(v0 + 952) = v49;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v49 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__inclusionPolicy))
  {
    v51 = 0;
  }

  else
  {
    v186 = v37;
    v52 = *(v0 + 1080);
    swift_getKeyPath();
    *(v0 + 1032) = v52;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v52 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__allWordCount) < 1)
    {
      v51 = 0;
    }

    else
    {
      v53 = *(v0 + 1080);
      v183 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__allWordCount;
      swift_getKeyPath();
      *(v0 + 1040) = v53;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v54 = *(v49 + v50);
      swift_getKeyPath();
      *(v0 + 1048) = v53;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v51 = v54 != *(v52 + v183);
    }

    v37 = v186;
  }

  if (!v37 && (v190 > 0 || v51))
  {
    v184 = v51;
    v55 = *(v0 + 1176);
    *(v0 + 136) = &type metadata for WritingTools;
    v179 = sub_10002AC88();
    *(v0 + 144) = v179;
    *(v0 + 112) = 15;
    v56 = isFeatureEnabled(_:)();
    sub_10000F4B4((v0 + 112));
    v57 = *(v55 + 8);
    v182 = v57;
    if (v56)
    {
      v58 = [v57 attributedText];
      v59 = [v57 range];
      v61 = [v58 attributedSubstringFromRange:{v59, v60}];

      v62 = v61;
      v63 = sub_10007A450();
      v64 = [objc_allocWithZone(TCAttributedStringFormatter) initWithDigestedAttributedString:v62 formatOptions:v63];

      v65 = [v64 inputFormattedString];
      v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v68 = v67;

      v69 = Logger.logObject.getter();
      v70 = static os_log_type_t.debug.getter();
      v187 = v66;
      if (os_log_type_enabled(v69, v70))
      {
        v177 = v64;
        v71 = swift_slowAlloc();
        v175 = v62;
        v72 = swift_slowAlloc();
        v196[0] = v72;
        *v71 = 136315138;
        v73 = sub_10002510C(v66, v68, v196);
        v74 = v69;
        v75 = v73;

        *(v71 + 4) = v75;
        _os_log_impl(&_mh_execute_header, v74, v70, "selectedText (inputFormattedString) = %s", v71, 0xCu);
        sub_10000F4B4(v72);
      }

      else
      {
      }

      v83 = v68;
      p_name = (&stru_100256FF8 + 8);
    }

    else
    {
      [v57 range];
      v78 = [v57 attributedText];
      v79 = v57;
      v80 = [v78 string];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Range<>.init(_:in:)();
      v82 = v81;

      if (v82)
      {
        v187 = 0;
        v83 = 0xE000000000000000;
        p_name = (&stru_100256FF8 + 8);
      }

      else
      {
        v85 = [v79 attributedText];
        p_name = &stru_100256FF8.name;
        v86 = [v85 string];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        String.subscript.getter();

        v187 = static String._fromSubstring(_:)();
        v83 = v87;
      }
    }

    *(v0 + 176) = &type metadata for WritingTools;
    *(v0 + 184) = v179;
    *(v0 + 152) = 15;
    v88 = isFeatureEnabled(_:)();
    sub_10000F4B4((v0 + 152));
    if (v88)
    {
      v180 = v83;
      sub_10009A70C(*(v0 + 1176), *(v0 + 1168), type metadata accessor for CompositionModel.Session);
      v89 = Logger.logObject.getter();
      v90 = static os_log_type_t.debug.getter();
      v91 = os_log_type_enabled(v89, v90);
      v92 = *(v0 + 1168);
      if (v91)
      {
        v93 = swift_slowAlloc();
        v94 = swift_slowAlloc();
        *v93 = 138412290;
        v95 = [*(v92 + 8) attributedText];
        sub_100099074(v92);
        *(v93 + 4) = v95;
        *v94 = v95;
        _os_log_impl(&_mh_execute_header, v89, v90, "context = %@", v93, 0xCu);
        sub_10000F500(v94, &unk_10025D580, &qword_1001CFA60);

        v96 = &_s7SwiftUI16_BlendModeEffectVAA12ViewModifierAAWP_ptr;
      }

      else
      {

        sub_100099074(v92);
        v96 = &_s7SwiftUI16_BlendModeEffectVAA12ViewModifierAAWP_ptr;
      }

      v103 = [v182 attributedText];
      v104 = sub_10007A450();
      v105 = [objc_allocWithZone(v96[384]) initWithDigestedAttributedString:v103 formatOptions:v104];

      v106 = [v105 inputFormattedString];
      v107 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v101 = v108;

      v109 = Logger.logObject.getter();
      v110 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v109, v110))
      {
        v111 = swift_slowAlloc();
        v112 = swift_slowAlloc();
        v196[0] = v112;
        *v111 = 136315138;
        *(v111 + 4) = sub_10002510C(v107, v101, v196);
        _os_log_impl(&_mh_execute_header, v109, v110, "allText (inputFormattedString) = %s", v111, 0xCu);
        sub_10000F4B4(v112);
      }

      v83 = v180;
      v102 = v187;
      v99 = v107;
    }

    else
    {
      v97 = [v182 attributedText];
      v98 = [v97 p_name[369]];

      v99 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v101 = v100;

      v102 = v187;
    }

    if (v190 < 1)
    {

      v102 = 0;
      v83 = 0;
    }

    if (!v184)
    {

      v99 = 0;
      v101 = 0;
    }

    v113 = *(v0 + 1072);
    v114 = *(v0 + 1064);
    type metadata accessor for JSONEncoder();
    swift_allocObject();
    JSONEncoder.init()();
    *(v0 + 64) = v114;
    *(v0 + 72) = v113;
    *(v0 + 80) = v102;
    *(v0 + 88) = v83;
    *(v0 + 96) = v99;
    *(v0 + 104) = v101;
    sub_10009A85C();

    v115 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v116 = v101;
    v117 = v99;
    v118 = v115;
    v120 = v119;
    v176 = v117;
    v188 = v102;

    v121 = v83;

    sub_10004DC4C(v118, v120);
    v122 = sub_100097014(v118, v120);
    v124 = v120;
    if (v123)
    {
      v76 = v123;
      v178 = v122;
      sub_10004DD08(v118, v120);
LABEL_66:
      v125 = v116;
LABEL_73:
      v185 = v124;
      if (v125)
      {
        v127 = *(v0 + 1128);
        v128 = *(v0 + 1120);
        v181 = *(v0 + 1112);
        *(v0 + 736) = v176;
        *(v0 + 744) = v125;
        static CharacterSet.whitespacesAndNewlines.getter();
        sub_10002AC34();
        v129 = StringProtocol.trimmingCharacters(in:)();
        v131 = v130;
        (*(v128 + 8))(v127, v181);

        *(v0 + 360) = &type metadata for String;
        *(v0 + 336) = v129;
        *(v0 + 344) = v131;
        sub_100008150((v0 + 336), (v0 + 304));
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v196[0] = v192;
        sub_1001A9A58((v0 + 304), 0xD000000000000010, 0x80000001001E4AB0, isUniquelyReferenced_nonNull_native);
        v192 = v196[0];
      }

      if (v121)
      {
        v133 = *(v0 + 1128);
        v134 = *(v0 + 1120);
        v135 = *(v0 + 1112);
        *(v0 + 720) = v188;
        *(v0 + 728) = v121;
        static CharacterSet.whitespacesAndNewlines.getter();
        sub_10002AC34();
        v136 = StringProtocol.trimmingCharacters(in:)();
        v138 = v137;
        (*(v134 + 8))(v133, v135);

        *(v0 + 424) = &type metadata for String;
        *(v0 + 400) = v136;
        *(v0 + 408) = v138;
        sub_100008150((v0 + 400), (v0 + 368));
        v139 = swift_isUniquelyReferenced_nonNull_native();
        v196[0] = v192;
        sub_1001A9A58((v0 + 368), 0x6C616E696769726FLL, 0xED00007478657420, v139);
        v192 = v196[0];
      }

      *(v0 + 296) = &type metadata for Int;
      *(v0 + 272) = 1;
      sub_100008150((v0 + 272), (v0 + 432));
      v140 = swift_isUniquelyReferenced_nonNull_native();
      v196[0] = v192;
      sub_1001A9A58((v0 + 432), 0x6E6F6973726576, 0xE700000000000000, v140);

      sub_10004DD08(v118, v185);
      v192 = v196[0];
      v77 = v178;
      goto LABEL_78;
    }

    *(v0 + 704) = v118;
    *(v0 + 712) = v120;
    sub_10004DC4C(v118, v120);
    sub_10000341C(&qword_10025F350, &unk_1001D40F0);
    if (swift_dynamicCast())
    {
      sub_100008198((v0 + 232), v0 + 192);
      sub_100027874((v0 + 192), *(v0 + 216));
      if (dispatch thunk of _HasContiguousBytes._providesContiguousBytesNoCopy.getter())
      {
        sub_10004DD08(v118, v120);
        sub_100027874((v0 + 192), *(v0 + 216));
        dispatch thunk of _HasContiguousBytes.withUnsafeBytes<A>(_:)();
        v178 = *(v0 + 752);
        v76 = *(v0 + 760);
        sub_10000F4B4((v0 + 192));
        v121 = v83;
        v124 = v120;
        goto LABEL_66;
      }

      sub_10000F4B4((v0 + 192));
      v121 = v83;
      v124 = v120;
    }

    else
    {
      *(v0 + 264) = 0;
      *(v0 + 248) = 0u;
      *(v0 + 232) = 0u;
      sub_10000F500(v0 + 232, &qword_10025CC40, &qword_1001D1FD0);
    }

    v125 = v116;
    v178 = sub_100095E84(v118, v124);
    v76 = v126;
    sub_10004DD08(v118, v124);
    goto LABEL_73;
  }

  v76 = *(v0 + 1072);

  v77 = *(v0 + 1064);
LABEL_78:
  *(v0 + 1240) = v76;
  *(v0 + 1232) = v77;
  if (*(v192 + 16))
  {
    v141 = objc_opt_self();
    v142 = Dictionary._bridgeToObjectiveC()().super.isa;

    *(v0 + 944) = 0;
    v143 = [v141 dataWithJSONObject:v142 options:1 error:v0 + 944];

    v144 = *(v0 + 944);
    if (v143)
    {
      v145 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v147 = v146;

      static String.Encoding.utf8.getter();
      v148 = String.init(data:encoding:)();
      if (v149)
      {
        v150 = v149;
        v193 = v148;
        v195 = v147;
        v151 = *(v0 + 1080);
        swift_getKeyPath();
        *(v0 + 880) = v151;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        *(v0 + 888) = v151;
        swift_getKeyPath();
        ObservationRegistrar.willSet<A, B>(_:keyPath:)();

        v152 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__inputStringsForFeedback;
        swift_beginAccess();
        v153 = *(v151 + v152);
        v154 = swift_isUniquelyReferenced_nonNull_native();
        *(v151 + v152) = v153;
        if ((v154 & 1) == 0)
        {
          v153 = sub_10017DD84(0, *(v153 + 2) + 1, 1, v153);
          *(v151 + v152) = v153;
        }

        v156 = *(v153 + 2);
        v155 = *(v153 + 3);
        if (v156 >= v155 >> 1)
        {
          v153 = sub_10017DD84((v155 > 1), v156 + 1, 1, v153);
        }

        v157 = *(v0 + 1080);
        *(v153 + 2) = v156 + 1;
        v158 = &v153[16 * v156];
        *(v158 + 4) = v193;
        *(v158 + 5) = v150;
        *(v151 + v152) = v153;
        swift_endAccess();
        *(v0 + 904) = v157;
        swift_getKeyPath();
        ObservationRegistrar.didSet<A, B>(_:keyPath:)();
        sub_10004DD08(v145, v195);
      }

      else
      {
        sub_10004DD08(v145, v147);
      }
    }

    else
    {
      v159 = v144;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_10025A6D8 != -1)
      {
        swift_once();
      }

      sub_10000F34C(v194, qword_100276EF0);
      v160 = Logger.logObject.getter();
      v161 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v160, v161))
      {
        v162 = swift_slowAlloc();
        *v162 = 0;
        _os_log_impl(&_mh_execute_header, v160, v161, "Cannot serialize JSON.", v162, 2u);
      }
    }
  }

  else
  {
  }

  v163 = *(v0 + 1080);
  swift_getKeyPath();
  *(v0 + 936) = v163;

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *(v0 + 928) = v163;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v164 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__promptStringsForFeedback;
  swift_beginAccess();
  v165 = *(v163 + v164);
  v166 = swift_isUniquelyReferenced_nonNull_native();
  *(v163 + v164) = v165;
  if ((v166 & 1) == 0)
  {
    v165 = sub_10017DD84(0, *(v165 + 2) + 1, 1, v165);
    *(v163 + v164) = v165;
  }

  v168 = *(v165 + 2);
  v167 = *(v165 + 3);
  if (v168 >= v167 >> 1)
  {
    v165 = sub_10017DD84((v167 > 1), v168 + 1, 1, v165);
  }

  v169 = *(v0 + 1080);
  v170 = *(v0 + 1072);
  v171 = *(v0 + 1064);
  *(v165 + 2) = v168 + 1;
  v172 = &v165[16 * v168];
  *(v172 + 4) = v171;
  *(v172 + 5) = v170;
  *(v163 + v164) = v165;
  swift_endAccess();
  *(v0 + 920) = v169;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  swift_getKeyPath();
  *(v0 + 912) = v169;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v173 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__attachmentManager;
  *(v0 + 1248) = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__attachmentManager;
  *(v0 + 1256) = *(v169 + v173);

  v174 = swift_task_alloc();
  *(v0 + 1264) = v174;
  *v174 = v0;
  v174[1] = sub_1000822F4;

  return sub_100170B3C(v189);
}

uint64_t sub_1000822F4()
{
  v2 = *v1;
  *(*v1 + 1272) = v0;

  if (v0)
  {

    v3 = *(v2 + 1200);
    v4 = *(v2 + 1192);
    v5 = sub_100083150;
  }

  else
  {

    v3 = *(v2 + 1200);
    v4 = *(v2 + 1192);
    v5 = sub_100082478;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100082478()
{
  v1 = v0[156];
  v2 = v0[135];
  swift_getKeyPath();
  v0[112] = v2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v0[108] = v2;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__attachments;
  swift_beginAccess();
  *(v2 + v3) = _swiftEmptyArrayStorage;

  v0[104] = v2;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  swift_getKeyPath();
  v0[101] = v2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v2 + v1);
  swift_getKeyPath();
  v0[99] = v4;
  sub_1000997E0(&qword_10025F460, type metadata accessor for AttachmentManager, &unk_1001DF07C);

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v5 = *(v4 + 16);

  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = v0[136];
    v21 = v3;
    v8 = v5 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v22 = *(v7 + 72);
    v23 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v24 = v2;
    do
    {
      v25 = v6;
      v9 = v0[135];
      sub_10009A70C(v8, v0[137], type metadata accessor for Attachment);
      swift_getKeyPath();
      v0[132] = v9;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v0[98] = v9;
      swift_getKeyPath();
      ObservationRegistrar.willSet<A, B>(_:keyPath:)();

      swift_beginAccess();
      v10 = *(v2 + v3);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v2 + v3) = v10;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v10 = sub_10017D7EC(0, v10[2] + 1, 1, v10);
        *(v2 + v3) = v10;
      }

      v13 = v10[2];
      v12 = v10[3];
      if (v13 >= v12 >> 1)
      {
        v10 = sub_10017D7EC((v12 > 1), v13 + 1, 1, v10);
      }

      v14 = v0[137];
      v15 = v0[135];
      v10[2] = v13 + 1;
      sub_10009A774(v14, v10 + v23 + v13 * v22, type metadata accessor for Attachment);
      v3 = v21;
      *(v24 + v21) = v10;
      swift_endAccess();
      v0[100] = v15;
      swift_getKeyPath();
      v2 = v24;
      ObservationRegistrar.didSet<A, B>(_:keyPath:)();

      v8 += v22;
      v6 = v25 - 1;
    }

    while (v25 != 1);
  }

  v16 = v0[153];
  v17 = swift_task_alloc();
  v0[160] = v17;
  *v17 = v0;
  v17[1] = sub_1000828F0;
  v18 = v0[155];
  v19 = v0[154];

  return sub_100083480((v0 + 2), v16, v19, v18);
}

uint64_t sub_1000828F0()
{
  v2 = *v1;
  v3 = *v1;
  v3[161] = v0;
  v3[162] = v2[2];
  *(v3 + 163) = *(v3 + 3);
  v3[165] = v2[5];
  *(v3 + 83) = *(v3 + 3);

  v4 = v2[150];
  v5 = v2[149];
  if (v0)
  {
    v6 = sub_100083260;
  }

  else
  {
    v6 = sub_100082AB4;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_100082AB4()
{
  v1 = v0[165];
  v2 = v0[135];
  swift_getKeyPath();
  v0[102] = v2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v0[103] = v2;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__generatedImages;
  swift_beginAccess();
  v31 = v3;
  *(v2 + v3) = _swiftEmptyArrayStorage;

  v0[105] = v2;
  swift_getKeyPath();
  v32 = v2;
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  v4 = *(v1 + 16);
  if (v4)
  {
    v5 = (v0[165] + 40);
    do
    {
      v34 = v4;
      v6 = v0[135];
      v8 = *(v5 - 1);
      v7 = *v5;
      swift_getKeyPath();
      v0[106] = v6;
      sub_10004DC4C(v8, v7);
      v33 = v8;
      v9 = v7;
      sub_10004DC4C(v8, v7);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v0[107] = v6;
      swift_getKeyPath();
      ObservationRegistrar.willSet<A, B>(_:keyPath:)();

      swift_beginAccess();
      v10 = *(v32 + v31);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v32 + v31) = v10;
      v12 = v32;
      v13 = v31;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v18 = sub_10017DE90(0, *(v10 + 2) + 1, 1, v10);
        v13 = v31;
        v12 = v32;
        v10 = v18;
        *(v32 + v31) = v18;
      }

      v15 = *(v10 + 2);
      v14 = *(v10 + 3);
      if (v15 >= v14 >> 1)
      {
        v19 = v10;
        v20 = v12;
        v21 = v13;
        v22 = sub_10017DE90((v14 > 1), v15 + 1, 1, v19);
        v13 = v21;
        v12 = v20;
        v10 = v22;
      }

      v5 += 2;
      v16 = v0[135];
      *(v10 + 2) = v15 + 1;
      v17 = &v10[16 * v15];
      *(v17 + 4) = v33;
      *(v17 + 5) = v9;
      *(v12 + v13) = v10;
      swift_endAccess();
      v0[109] = v16;
      swift_getKeyPath();
      ObservationRegistrar.didSet<A, B>(_:keyPath:)();
      sub_10004DD08(v33, v9);

      v4 = v34 - 1;
    }

    while (v34 != 1);
  }

  v23 = swift_task_alloc();
  v0[168] = v23;
  *v23 = v0;
  v23[1] = sub_100082E54;
  v24 = v0[167];
  v25 = v0[166];
  v26 = v0[165];
  v27 = v0[164];
  v28 = v0[163];
  v29 = v0[162];

  return sub_1000897EC(v29, v28, v27, v26, v25, v24, 0, 0);
}

uint64_t sub_100082E54()
{
  v2 = *v1;
  *(*v1 + 1352) = v0;

  v3 = *(v2 + 1200);
  v4 = *(v2 + 1192);
  if (v0)
  {
    v5 = sub_100083370;
  }

  else
  {
    v5 = sub_100083038;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100083038(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 1176);

  sub_100099074(v3);

  v4 = *(v2 + 8);

  return v4();
}

uint64_t sub_100083150(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 1176);

  sub_100099074(v3);

  v4 = *(v2 + 8);

  return v4();
}

uint64_t sub_100083260(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 1176);

  sub_100099074(v3);

  v4 = *(v2 + 8);

  return v4();
}

uint64_t sub_100083370(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 1176);

  sub_100099074(v3);

  v4 = *(v2 + 8);

  return v4();
}

uint64_t sub_100083480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[16] = a4;
  v5[17] = v4;
  v5[14] = a2;
  v5[15] = a3;
  v5[13] = a1;
  type metadata accessor for ToolChoice();
  v5[18] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[19] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[20] = v7;
  v5[21] = v6;

  return _swift_task_switch(sub_10008354C, v7, v6);
}

uint64_t sub_10008354C()
{
  sub_10000341C(&qword_10025F448, &qword_1001D43E0);
  type metadata accessor for ToolType();
  *(swift_allocObject() + 16) = xmmword_1001CF9E0;
  static ToolType.imageGenerator.getter();
  v1 = swift_allocObject();
  swift_weakInit();
  v2 = swift_allocObject();
  swift_weakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = sub_100186E04();
  v6 = v5;
  v0[11] = &type metadata for RequestUserInfoTool;
  v0[12] = sub_10009A590();
  v7 = swift_allocObject();
  v0[8] = v7;
  v7[2] = 0xD000000000000013;
  v7[3] = 0x80000001001E4A30;
  v7[4] = v4;
  v7[5] = v6;
  v7[6] = &unk_1001D43F0;
  v7[7] = v3;
  static ToolType.tooling(_:)();
  sub_10000F4B4(v0 + 8);
  static ToolChoice.automatic.getter();
  GenerativeExperiencesSession.toolChoice.setter();
  GenerativeExperiencesSession.tools.setter();
  v8 = swift_task_alloc();
  v0[22] = v8;
  *v8 = v0;
  v8[1] = sub_1000837B0;
  v9 = v0[16];
  v10 = v0[14];
  v11 = v0[15];

  return sub_10008569C((v0 + 2), v10, v11, v9);
}

uint64_t sub_1000837B0()
{
  v2 = *v1;
  v3 = *v1;
  v3[23] = v0;
  v3[24] = v2[2];
  *(v3 + 25) = *(v3 + 3);
  v3[27] = v2[5];
  *(v3 + 14) = *(v3 + 3);

  v4 = v2[21];
  v5 = v2[20];
  if (v0)
  {
    v6 = sub_1000839D4;
  }

  else
  {
    v6 = sub_10008392C;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_10008392C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 232);
  v4 = *(v2 + 192);
  v5 = *(v2 + 104);
  v8 = *(v2 + 200);
  v9 = *(v2 + 216);

  *v5 = v4;
  *(v5 + 8) = v8;
  *(v5 + 24) = v9;
  *(v5 + 40) = v3;
  v6 = *(v2 + 8);

  return v6();
}

uint64_t sub_1000839D4(uint64_t a1, uint64_t a2)
{

  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_100083A40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  type metadata accessor for ToolChoice();
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_100083AD4, 0, 0);
}

uint64_t sub_100083AD4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[12] = Strong;
  if (Strong)
  {
    swift_beginAccess();
    v2 = swift_weakLoadStrong();
    v0[13] = v2;
    if (v2)
    {
      v3 = swift_task_alloc();
      v0[14] = v3;
      *v3 = v0;
      v3[1] = sub_100083DA0;
      v4 = v0[8];

      return sub_10008B430(v4);
    }

    if (qword_10025A6E0 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000F34C(v11, qword_100276F08);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "request user info tool was invoked, but GES session is nil", v14, 2u);
    }

    v10 = sub_100006100(_swiftEmptyArrayStorage);
  }

  else
  {
    if (qword_10025A6E0 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000F34C(v6, qword_100276F08);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "request user info tool was invoked, but composition model is nil", v9, 2u);
    }

    v10 = sub_100006100(_swiftEmptyArrayStorage);
  }

  v15 = v0[1];

  return v15(v10);
}

uint64_t sub_100083DA0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v5 = sub_100084008;
  }

  else
  {
    *(v4 + 128) = a1;
    v5 = sub_100083EC8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100083EC8()
{
  sub_10000341C(&qword_10025F448, &qword_1001D43E0);
  type metadata accessor for ToolType();
  *(swift_allocObject() + 16) = xmmword_1001CF9D0;
  static ToolType.imageGenerator.getter();
  GenerativeExperiencesSession.tools.setter();
  static ToolChoice.automatic.getter();
  GenerativeExperiencesSession.toolChoice.setter();

  v1 = *(v0 + 128);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100084008()
{
  if (qword_10025A6E0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000F34C(v1, qword_100276F08);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "error providing requested info to model: %@", v4, 0xCu);
    sub_10000F500(v5, &unk_10025D580, &qword_1001CFA60);
  }

  swift_willThrow();

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1000841C0(uint64_t a1, uint64_t a2)
{
  v3[33] = a2;
  v3[34] = v2;
  v3[32] = a1;
  v4 = sub_10000341C(&qword_10025F418, &qword_1001D4388);
  v3[35] = v4;
  v3[36] = *(v4 - 8);
  v3[37] = swift_task_alloc();
  v5 = sub_10000341C(&qword_10025F420, &qword_1001D4390);
  v3[38] = v5;
  v3[39] = *(v5 - 8);
  v3[40] = swift_task_alloc();
  v6 = sub_10000341C(&qword_10025F428, &qword_1001D4398);
  v3[41] = v6;
  v3[42] = *(v6 - 8);
  v3[43] = swift_task_alloc();
  v7 = sub_10000341C(&qword_10025F430, &qword_1001D43A0);
  v3[44] = v7;
  v3[45] = *(v7 - 8);
  v3[46] = swift_task_alloc();
  sub_10000341C(&unk_100262580, &qword_1001CFF70);
  v3[47] = swift_task_alloc();
  v8 = type metadata accessor for CompositionModel.Session(0);
  v3[48] = v8;
  v3[49] = *(v8 - 8);
  v3[50] = swift_task_alloc();
  v9 = sub_10000341C(&qword_10025F438, &qword_1001D43A8);
  v3[51] = v9;
  v10 = *(v9 - 8);
  v3[52] = v10;
  v3[53] = *(v10 + 64);
  v3[54] = swift_task_alloc();
  sub_10000341C(&qword_10025F440, &qword_1001D43B0);
  v3[55] = swift_task_alloc();
  v3[56] = swift_task_alloc();
  v3[57] = type metadata accessor for MainActor();
  v3[58] = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[59] = v12;
  v3[60] = v11;

  return _swift_task_switch(sub_100084548, v12, v11);
}

uint64_t sub_100084548()
{
  v1 = TokenStreamHandler.stream(fields:)();
  if (!sub_10017CF7C(v1))
  {
    v8 = *(v0 + 448);
    v9 = *(v0 + 408);
    v10 = *(v0 + 416);

    (*(v10 + 56))(v8, 1, 1, v9);
    goto LABEL_10;
  }

  if (_swift_isClassOrObjCExistentialType())
  {
    sub_10017CF08(0, (v1 & 0xC000000000000001) == 0, v1);
    if ((v1 & 0xC000000000000001) != 0)
    {
      v2 = *(v0 + 424);
      v3 = sub_10017D2D4(0, v1);
      if (v2 != 8)
      {
        __break(1u);
        return TokenStreamHandler.finalize()(v3, v4);
      }

      v5 = *(v0 + 448);
      v6 = *(v0 + 408);
      v7 = *(v0 + 416);
      *(v0 + 184) = v3;
      (*(v7 + 16))(v5, v0 + 184, v6);
      swift_unknownObjectRelease();
      goto LABEL_9;
    }
  }

  else
  {
    sub_10017CF08(0, 1, v1);
  }

  (*(*(v0 + 416) + 16))(*(v0 + 448), v1 + ((*(*(v0 + 416) + 80) + 32) & ~*(*(v0 + 416) + 80)), *(v0 + 408));
LABEL_9:

  (*(*(v0 + 416) + 56))(*(v0 + 448), 0, 1, *(v0 + 408));
LABEL_10:
  v11 = *(v0 + 440);
  v12 = *(v0 + 408);
  v13 = *(v0 + 416);
  sub_10009A2AC(*(v0 + 448), v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_10009A31C(*(v0 + 440));
    goto LABEL_14;
  }

  v14 = *(v0 + 384);
  v15 = *(v0 + 392);
  v16 = *(v0 + 376);
  v17 = *(v0 + 272);
  (*(*(v0 + 416) + 32))(*(v0 + 432), *(v0 + 440), *(v0 + 408));
  swift_getKeyPath();
  *(v0 + 488) = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel___observationRegistrar;
  *(v0 + 192) = v17;
  *(v0 + 496) = sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v18 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__session;
  swift_beginAccess();
  sub_1000081F8(v17 + v18, v16, &unk_100262580, &qword_1001CFF70);
  if ((*(v15 + 48))(v16, 1, v14) == 1)
  {
    v19 = *(v0 + 376);
    (*(*(v0 + 416) + 8))(*(v0 + 432), *(v0 + 408));
    sub_10000F500(v19, &unk_100262580, &qword_1001CFF70);
LABEL_14:
    v20 = swift_task_alloc();
    *(v0 + 560) = v20;
    *v20 = v0;
    v20[1] = sub_100085254;
    v4 = *(v0 + 256);
    v3 = v0 + 104;

    return TokenStreamHandler.finalize()(v3, v4);
  }

  v21 = *(v0 + 432);
  v22 = *(v0 + 408);
  v23 = *(v0 + 416);
  v24 = *(v0 + 400);
  v25 = *(v0 + 344);
  v43 = *(v0 + 336);
  v26 = *(v0 + 320);
  v27 = *(v0 + 312);
  v41 = *(v0 + 304);
  v42 = *(v0 + 328);
  v28 = *(v0 + 288);
  v39 = *(v0 + 296);
  v40 = *(v0 + 280);
  sub_10009A774(*(v0 + 376), v24, type metadata accessor for CompositionModel.Session);
  v29 = *(v24 + 8);
  *(v0 + 504) = v29;
  *(v0 + 88) = v22;
  v30 = sub_100099F30();
  *(v0 + 152) = &type metadata for ResponseContent;
  *(v0 + 160) = v30;
  *(v0 + 96) = swift_getOpaqueTypeConformance2();
  v31 = sub_10002DB6C((v0 + 64));
  (*(v23 + 16))(v31, v21, v22);
  v32 = v29;
  Regex.init(_regexString:version:)();
  v33 = swift_allocObject();
  *(v33 + 16) = 0;
  v34 = swift_task_alloc();
  *(v34 + 16) = v0 + 64;
  *(v34 + 24) = v33;
  *(v34 + 32) = xmmword_1001D3B90;
  *(v34 + 48) = 0xE200000000000000;
  *(v34 + 56) = v26;
  (*(v28 + 104))(v39, enum case for AsyncThrowingStream.Continuation.BufferingPolicy.unbounded<A, B>(_:), v40);
  AsyncThrowingStream.init<>(_:bufferingPolicy:_:)();

  (*(v27 + 8))(v26, v41);
  sub_10000F4B4((v0 + 64));
  AsyncThrowingStream.makeAsyncIterator()();
  (*(v43 + 8))(v25, v42);
  *(v0 + 512) = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__isForEditableContent;
  *(v0 + 520) = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__wantsInlineEditing;
  *(v0 + 528) = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__delegate;
  *(v0 + 576) = 1;
  v35 = static MainActor.shared.getter();
  *(v0 + 536) = v35;
  v36 = swift_task_alloc();
  *(v0 + 544) = v36;
  *v36 = v0;
  v36[1] = sub_100084B40;
  v37 = *(v0 + 352);

  return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v0 + 168, v35, &protocol witness table for MainActor, v37, v0 + 200);
}

uint64_t sub_100084B40()
{
  v2 = *v1;
  *(*v1 + 552) = v0;

  v3 = *(v2 + 472);
  v4 = *(v2 + 480);
  if (v0)
  {
    v5 = sub_100085464;
  }

  else
  {
    v5 = sub_100084C64;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100084C64()
{
  v2 = v0[21];
  v1 = v0[22];
  if (v1)
  {
    if (String.count.getter() < 1)
    {
    }

    else
    {
      if (*(v0 + 576) == 1)
      {
        v3 = v0[64];
        v4 = v0[34];
        swift_getKeyPath();
        v0[29] = v4;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        if (*(v4 + v3) == 1)
        {
          v5 = v0[65];
          v6 = v0[34];
          swift_getKeyPath();
          v0[30] = v6;
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          if (*(v6 + v5) == 1)
          {
            v7 = v0[34];
            swift_getKeyPath();
            v0[31] = v7;
            ObservationRegistrar.access<A, B>(_:keyPath:)();

            Strong = swift_unknownObjectWeakLoadStrong();
            if (Strong)
            {
              v9 = Strong;
              if ([Strong respondsToSelector:"endTextPlaceholderAndWillInsertText:completion:"])
              {
                v0[6] = nullsub_1;
                v0[7] = 0;
                v0[2] = _NSConcreteStackBlock;
                v0[3] = 1107296256;
                v0[4] = sub_1001256BC;
                v0[5] = &unk_10024D078;
                v10 = _Block_copy(v0 + 2);
                [v9 endTextPlaceholderAndWillInsertText:1 completion:v10];
                swift_unknownObjectRelease();
                _Block_release(v10);
              }

              else
              {
                swift_unknownObjectRelease();
              }
            }
          }
        }
      }

      v20 = v0[69];
      v21 = sub_1000D1524(v2, v1);
      if (v20)
      {
        v22 = v0[63];
        v47 = v0[56];
        v23 = v0[54];
        v24 = v0[51];
        v25 = v0[52];
        v46 = v0[50];
        v26 = v0[45];
        v27 = v0[46];
        v28 = v0[44];

        (*(v26 + 8))(v27, v28);
        (*(v25 + 8))(v23, v24);
        sub_10009A31C(v47);
        sub_100099074(v46);

        v29 = v0[1];

        return v29();
      }

      v30 = v21;
      v31 = v0[64];
      v32 = v0[34];

      swift_getKeyPath();
      v0[26] = v32;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      if (*(v32 + v31) == 1)
      {
        v33 = v0[65];
        v34 = v0[34];
        swift_getKeyPath();
        v0[27] = v34;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        if (*(v34 + v33) == 1)
        {
          v35 = v0[34];
          swift_getKeyPath();
          v0[28] = v35;
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          v36 = swift_unknownObjectWeakLoadStrong();
          if (v36)
          {
            v37 = v36;
            v38 = v0[63];
            v39 = *v0[50];
            v40 = [v38 range];
            [v37 compositionSession:v39 didReceiveText:v30 replacementRange:v40 inContext:v41 finished:{v38, 0}];
            swift_unknownObjectRelease();
          }
        }
      }

      *(v0 + 576) = 0;
    }

    v42 = static MainActor.shared.getter();
    v0[67] = v42;
    v43 = swift_task_alloc();
    v0[68] = v43;
    *v43 = v0;
    v43[1] = sub_100084B40;
    v44 = v0[44];

    return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v0 + 21, v42, &protocol witness table for MainActor, v44, v0 + 25);
  }

  else
  {
    v11 = v0[54];
    v12 = v0[51];
    v13 = v0[52];
    v14 = v0[50];
    v16 = v0[45];
    v15 = v0[46];
    v17 = v0[44];

    (*(v16 + 8))(v15, v17);
    (*(v13 + 8))(v11, v12);
    sub_100099074(v14);
    v18 = swift_task_alloc();
    v0[70] = v18;
    *v18 = v0;
    v18[1] = sub_100085254;
    v19 = v0[32];

    return TokenStreamHandler.finalize()(v0 + 13, v19);
  }
}

uint64_t sub_100085254()
{
  v2 = *v1;
  *(*v1 + 568) = v0;

  if (v0)
  {
    v3 = *(v2 + 472);
    v4 = *(v2 + 480);
    v5 = sub_1000855AC;
  }

  else
  {

    v3 = *(v2 + 472);
    v4 = *(v2 + 480);
    v5 = sub_100085378;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100085378(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 448);

  sub_10009A31C(v3);

  v4 = *(v2 + 8);

  return v4();
}

uint64_t sub_100085464()
{
  v1 = *(v0 + 448);
  v2 = *(v0 + 432);
  v3 = *(v0 + 408);
  v4 = *(v0 + 416);
  v5 = *(v0 + 400);
  v7 = *(v0 + 360);
  v6 = *(v0 + 368);
  v8 = *(v0 + 352);

  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v2, v3);
  sub_10009A31C(v1);
  sub_100099074(v5);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1000855AC(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 448);

  sub_10009A31C(v3);

  v4 = *(v2 + 8);

  return v4();
}

uint64_t sub_10008569C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[56] = a4;
  v5[57] = v4;
  v5[54] = a2;
  v5[55] = a3;
  v5[53] = a1;
  v6 = type metadata accessor for PromptCompletionStream();
  v5[58] = v6;
  v5[59] = *(v6 - 8);
  v5[60] = swift_task_alloc();
  v7 = sub_10000341C(&qword_10025F398, &qword_1001D42D0);
  v5[61] = v7;
  v5[62] = *(v7 - 8);
  v5[63] = swift_task_alloc();
  v8 = type metadata accessor for StringResponseSanitizer.DefaultableGuardrails();
  v5[64] = v8;
  v5[65] = *(v8 - 8);
  v5[66] = swift_task_alloc();
  type metadata accessor for OutputDenyListBundle();
  v5[67] = swift_task_alloc();
  v9 = type metadata accessor for StringResponseSanitizer.DefaultableOverrides();
  v5[68] = v9;
  v5[69] = *(v9 - 8);
  v5[70] = swift_task_alloc();
  v10 = type metadata accessor for StringResponseSanitizer();
  v5[71] = v10;
  v5[72] = *(v10 - 8);
  v5[73] = swift_task_alloc();
  v11 = type metadata accessor for StringRenderedPromptSanitizer.DefaultableGuardrails();
  v5[74] = v11;
  v5[75] = *(v11 - 8);
  v5[76] = swift_task_alloc();
  type metadata accessor for InputDenyListBundle();
  v5[77] = swift_task_alloc();
  v12 = type metadata accessor for StringRenderedPromptSanitizer.DefaultableOverrides();
  v5[78] = v12;
  v5[79] = *(v12 - 8);
  v5[80] = swift_task_alloc();
  v13 = type metadata accessor for StringRenderedPromptSanitizer();
  v5[81] = v13;
  v5[82] = *(v13 - 8);
  v5[83] = swift_task_alloc();
  sub_10000341C(&qword_10025F3A0, &qword_1001D42D8);
  v5[84] = swift_task_alloc();
  v5[85] = swift_task_alloc();
  v14 = type metadata accessor for SamplingParameters();
  v5[86] = v14;
  v5[87] = *(v14 - 8);
  v5[88] = swift_task_alloc();
  sub_10000341C(&unk_100262580, &qword_1001CFF70);
  v5[89] = swift_task_alloc();
  v15 = type metadata accessor for PromptCompletion();
  v5[90] = v15;
  v5[91] = *(v15 - 8);
  v5[92] = swift_task_alloc();
  v5[93] = swift_task_alloc();
  v5[94] = swift_task_alloc();
  v5[95] = swift_task_alloc();
  v5[96] = swift_task_alloc();
  v5[97] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[98] = static MainActor.shared.getter();
  v17 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[99] = v17;
  v5[100] = v16;

  return _swift_task_switch(sub_100085BF4, v17, v16);
}

uint64_t sub_100085BF4()
{
  v1 = v0[89];
  v2 = v0[57];
  swift_getKeyPath();
  v0[51] = v2;
  sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__session;
  swift_beginAccess();
  sub_1000081F8(v2 + v3, v1, &unk_100262580, &qword_1001CFF70);
  v4 = type metadata accessor for CompositionModel.Session(0);
  v5 = (*(*(v4 - 8) + 48))(v1, 1, v4);
  v6 = v0[89];
  if (v5)
  {
    sub_10000F500(v6, &unk_100262580, &qword_1001CFF70);
  }

  else
  {
    v7 = v0[89];
    v8 = *(v6 + 8);
    sub_10000F500(v7, &unk_100262580, &qword_1001CFF70);
    [v8 range];
  }

  v0[17] = &type metadata for WritingTools;
  v0[18] = sub_10002AC88();
  *(v0 + 112) = 9;
  v9 = isFeatureEnabled(_:)();
  sub_10000F4B4(v0 + 14);
  if ((v9 & 1) != 0 && (v10 = v0[57], swift_getKeyPath(), v0[52] = v10, ObservationRegistrar.access<A, B>(_:keyPath:)(), , (*(v10 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__isWebKitView) & 1) == 0))
  {
    v39 = v0[88];
    v112 = v0[87];
    v114 = v0[86];
    v40 = v0[85];
    v41 = v0[84];
    v81 = v0[83];
    v108 = v0[82];
    v110 = v0[81];
    v42 = v0[80];
    v43 = v0[79];
    v74 = v0[78];
    v76 = v0[76];
    v78 = v0[75];
    v79 = v0[74];
    v98 = v0[73];
    v103 = v0[72];
    v105 = v0[71];
    v88 = v0[69];
    v90 = v0[68];
    v84 = v0[70];
    v92 = v0[66];
    v94 = v0[65];
    v96 = v0[64];
    v99 = v0[55];
    v101 = v0[56];
    v44 = type metadata accessor for SamplingStrategy();
    (*(*(v44 - 8) + 56))(v40, 1, 1, v44);
    sub_1000081F8(v40, v41, &qword_10025F3A0, &qword_1001D42D8);
    v86 = v39;
    SamplingParameters.init(strategy:temperature:frequencyPenalty:lengthPenalty:maximumTokens:stopSequences:randomSeed:timeout:)();
    SamplingParameters.promptLookupDraftSteps.setter();
    SamplingParameters.speculativeSampling.setter();
    SamplingParameters.tokenHealing.setter();
    sub_10000F500(v40, &qword_10025F3A0, &qword_1001D42D8);
    static Catalog.Resource.TokenInputDenyList.WritingToolsComposeInputDenyList()();
    v45 = v0[32];
    v46 = sub_100027874(v0 + 29, v45);
    v47 = *(v45 - 8);
    v48 = swift_task_alloc();
    (*(v47 + 16))(v48, v46, v45, v49, v50, v51);
    InputDenyListBundle.init<A>(resource:)();

    StringRenderedPromptSanitizer.Overrides.init(denyList:)();
    sub_10000F4B4(v0 + 29);
    v52 = type metadata accessor for StringRenderedPromptSanitizer.Overrides();
    (*(*(v52 - 8) + 56))(v42, 0, 1, v52);
    (*(v43 + 104))(v42, enum case for StringRenderedPromptSanitizer.DefaultableOverrides.withoutDefault(_:), v74);
    v53 = type metadata accessor for StringRenderedPromptSanitizer.Guardrails();
    (*(*(v53 - 8) + 56))(v76, 1, 1, v53);
    (*(v78 + 104))(v76, enum case for StringRenderedPromptSanitizer.DefaultableGuardrails.withoutDefault(_:), v79);
    StringRenderedPromptSanitizer.init(overrides:guardrails:)();
    static Catalog.Resource.TokenOutputDenyList.WritingToolsComposeOutputDenyList()();
    v54 = v0[37];
    v55 = sub_100027874(v0 + 34, v54);
    v56 = *(v54 - 8);
    v57 = swift_task_alloc();
    (*(v56 + 16))(v57, v55, v54, v58, v59, v60);
    OutputDenyListBundle.init<A>(resource:)();

    StringResponseSanitizer.Overrides.init(denyList:)();
    sub_10000F4B4(v0 + 34);
    v61 = type metadata accessor for StringResponseSanitizer.Overrides();
    (*(*(v61 - 8) + 56))(v84, 0, 1, v61);
    (*(v88 + 104))(v84, enum case for StringResponseSanitizer.DefaultableOverrides.withoutDefault(_:), v90);
    v62 = type metadata accessor for StringResponseSanitizer.Guardrails();
    (*(*(v62 - 8) + 56))(v92, 1, 1, v62);
    (*(v94 + 104))(v92, enum case for StringResponseSanitizer.DefaultableGuardrails.withoutDefault(_:), v96);
    StringResponseSanitizer.init(overrides:guardrails:)();
    v63 = swift_task_alloc();
    *(v63 + 16) = v99;
    *(v63 + 24) = v101;
    sub_100099F30();
    v64 = GenerativeExperiencesSession.complete<A>(generating:parameters:promptSanitizer:responseSanitizer:clientRequestID:prompt:)();
    v0[101] = v64;

    (*(v103 + 8))(v98, v105);
    (*(v108 + 8))(v81, v110);
    (*(v112 + 8))(v86, v114);
    v65 = sub_1000713A0();
    v0[102] = v65;
    if (v65)
    {
      v66 = swift_task_alloc();
      v0[103] = v66;
      *v66 = v0;
      v66[1] = sub_100086AA8;
      v67 = v0[96];

      return sub_1000841C0(v67, v64);
    }

    else
    {
      v68 = swift_task_alloc();
      v0[105] = v68;
      *v68 = v0;
      v68[1] = sub_100086F14;
      v69 = v0[94];

      return TokenStreamHandler.content()(v0 + 48, v69);
    }
  }

  else
  {
    v11 = v0[88];
    v111 = v0[87];
    v113 = v0[86];
    v12 = v0[85];
    v13 = v0[84];
    v77 = v0[83];
    v107 = v0[82];
    v109 = v0[81];
    v14 = v0[80];
    v15 = v0[79];
    v71 = v0[78];
    v72 = v0[76];
    v73 = v0[75];
    v75 = v0[74];
    v95 = v0[73];
    v100 = v0[72];
    v102 = v0[71];
    v80 = v0[70];
    v82 = v0[69];
    v83 = v0[68];
    v85 = v0[66];
    v87 = v0[65];
    v89 = v0[64];
    v97 = v0[63];
    v104 = v0[61];
    v106 = v0[62];
    v91 = v0[55];
    v93 = v0[56];
    v16 = type metadata accessor for SamplingStrategy();
    (*(*(v16 - 8) + 56))(v12, 1, 1, v16);
    sub_1000081F8(v12, v13, &qword_10025F3A0, &qword_1001D42D8);
    SamplingParameters.init(strategy:temperature:frequencyPenalty:lengthPenalty:maximumTokens:stopSequences:randomSeed:timeout:)();
    SamplingParameters.promptLookupDraftSteps.setter();
    SamplingParameters.speculativeSampling.setter();
    v17 = v11;
    SamplingParameters.tokenHealing.setter();
    sub_10000F500(v12, &qword_10025F3A0, &qword_1001D42D8);
    static Catalog.Resource.TokenInputDenyList.WritingToolsComposeInputDenyList()();
    v18 = v0[22];
    v19 = sub_100027874(v0 + 19, v18);
    v20 = *(v18 - 8);
    v21 = swift_task_alloc();
    (*(v20 + 16))(v21, v19, v18, v22, v23, v24);
    InputDenyListBundle.init<A>(resource:)();

    StringRenderedPromptSanitizer.Overrides.init(denyList:)();
    sub_10000F4B4(v0 + 19);
    v25 = type metadata accessor for StringRenderedPromptSanitizer.Overrides();
    (*(*(v25 - 8) + 56))(v14, 0, 1, v25);
    (*(v15 + 104))(v14, enum case for StringRenderedPromptSanitizer.DefaultableOverrides.withoutDefault(_:), v71);
    v26 = type metadata accessor for StringRenderedPromptSanitizer.Guardrails();
    (*(*(v26 - 8) + 56))(v72, 1, 1, v26);
    (*(v73 + 104))(v72, enum case for StringRenderedPromptSanitizer.DefaultableGuardrails.withoutDefault(_:), v75);
    StringRenderedPromptSanitizer.init(overrides:guardrails:)();
    static Catalog.Resource.TokenOutputDenyList.WritingToolsComposeOutputDenyList()();
    v27 = v0[27];
    v28 = sub_100027874(v0 + 24, v27);
    v29 = *(v27 - 8);
    v30 = swift_task_alloc();
    (*(v29 + 16))(v30, v28, v27, v31, v32, v33);
    OutputDenyListBundle.init<A>(resource:)();

    StringResponseSanitizer.Overrides.init(denyList:)();
    sub_10000F4B4(v0 + 24);
    v34 = type metadata accessor for StringResponseSanitizer.Overrides();
    (*(*(v34 - 8) + 56))(v80, 0, 1, v34);
    (*(v82 + 104))(v80, enum case for StringResponseSanitizer.DefaultableOverrides.withoutDefault(_:), v83);
    v35 = type metadata accessor for StringResponseSanitizer.Guardrails();
    (*(*(v35 - 8) + 56))(v85, 1, 1, v35);
    (*(v87 + 104))(v85, enum case for StringResponseSanitizer.DefaultableGuardrails.withoutDefault(_:), v89);
    StringResponseSanitizer.init(overrides:guardrails:)();
    v36 = swift_task_alloc();
    *(v36 + 16) = v91;
    *(v36 + 24) = v93;
    sub_100099F30();
    GenerativeExperiencesSession.complete<A>(generating:parameters:promptSanitizer:responseSanitizer:query:)();

    (*(v100 + 8))(v95, v102);
    (*(v107 + 8))(v77, v109);
    (*(v111 + 8))(v17, v113);
    TokenStream.events.getter();
    (*(v106 + 8))(v97, v104);
    v37 = swift_task_alloc();
    v0[115] = v37;
    *v37 = v0;
    v37[1] = sub_100087624;
    v38 = v0[93];

    return PromptCompletionStream.collect()(v38);
  }
}

uint64_t sub_100086AA8()
{
  v2 = *v1;
  *(*v1 + 832) = v0;

  v3 = *(v2 + 800);
  v4 = *(v2 + 792);
  if (v0)
  {
    v5 = sub_1000881D8;
  }

  else
  {
    v5 = sub_100086BE4;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100086BE4()
{
  v21 = v0;
  (*(v0[91] + 32))(v0[97], v0[96], v0[90]);
  if (qword_10025A6E0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000F34C(v1, qword_100276F08);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Finished collecting completion for streaming", v4, 2u);
  }

  swift_unknownObjectRelease();
  if (qword_10025A6E0 != -1)
  {
    swift_once();
  }

  sub_10000F34C(v1, qword_100276F08);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = v8;
    *v7 = 136315138;
    swift_beginAccess();
    PromptCompletion.metadata.getter();
    v9 = Dictionary.description.getter();
    v11 = v10;

    v12 = sub_10002510C(v9, v11, &v20);

    *(v7 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v5, v6, "metadata: %s", v7, 0xCu);
    sub_10000F4B4(v8);
  }

  v13 = v0[97];
  v14 = v0[92];
  v15 = v0[91];
  v16 = v0[90];
  swift_beginAccess();
  (*(v15 + 16))(v14, v13, v16);
  v17 = swift_task_alloc();
  v0[117] = v17;
  *v17 = v0;
  v17[1] = sub_100087AD4;
  v18 = v0[92];

  return sub_100097654((v0 + 2), v18);
}

uint64_t sub_100086F14()
{
  v2 = *v1;
  *(*v1 + 848) = v0;

  if (v0)
  {
    v3 = *(v2 + 800);
    v4 = *(v2 + 792);
    v5 = sub_100088040;
  }

  else
  {

    v3 = *(v2 + 800);
    v4 = *(v2 + 792);
    v5 = sub_100087040;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100087040()
{
  (*(v0[91] + 32))(v0[95], v0[94], v0[90]);
  v1 = swift_task_alloc();
  v0[107] = v1;
  *v1 = v0;
  v1[1] = sub_1000870F8;
  v2 = v0[95];

  return sub_100097654((v0 + 8), v2);
}

uint64_t sub_1000870F8()
{
  v2 = *v1;
  v3 = *v1;
  v3[108] = v0;
  v3[109] = v2[8];
  *(v3 + 55) = *(v3 + 9);
  v3[112] = v2[11];
  *(v3 + 113) = *(v3 + 6);

  v4 = v2[100];
  v5 = v2[99];
  if (v0)
  {
    v6 = sub_100087468;
  }

  else
  {
    v6 = sub_100087278;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_100087278(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 728);

  v9 = *(v2 + 872);
  v10 = *(v2 + 912);
  v4 = *(v2 + 424);
  v8 = *(v2 + 896);
  v7 = *(v2 + 880);
  (*(v3 + 8))(*(v2 + 760), *(v2 + 720));

  *v4 = v9;
  *(v4 + 8) = v7;
  *(v4 + 24) = v8;
  *(v4 + 40) = v10;
  v5 = *(v2 + 8);

  return v5();
}

uint64_t sub_100087468(uint64_t a1, uint64_t a2)
{
  v3 = v2[95];
  v4 = v2[91];
  v5 = v2[90];

  (*(v4 + 8))(v3, v5);

  v6 = v2[1];

  return v6();
}

uint64_t sub_100087624()
{
  v2 = *v1;
  v3 = *(*v1 + 480);
  v4 = *(*v1 + 472);
  v5 = *(*v1 + 464);
  *(*v1 + 928) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 800);
  v7 = *(v2 + 792);
  if (v0)
  {
    v8 = sub_10008837C;
  }

  else
  {
    v8 = sub_1000877BC;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_1000877BC()
{
  v21 = v0;
  (*(v0[91] + 32))(v0[97], v0[93], v0[90]);
  if (qword_10025A6E0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000F34C(v1, qword_100276F08);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Finished collecting token stream", v4, 2u);
  }

  if (qword_10025A6E0 != -1)
  {
    swift_once();
  }

  sub_10000F34C(v1, qword_100276F08);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = v8;
    *v7 = 136315138;
    swift_beginAccess();
    PromptCompletion.metadata.getter();
    v9 = Dictionary.description.getter();
    v11 = v10;

    v12 = sub_10002510C(v9, v11, &v20);

    *(v7 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v5, v6, "metadata: %s", v7, 0xCu);
    sub_10000F4B4(v8);
  }

  v13 = v0[97];
  v14 = v0[92];
  v15 = v0[91];
  v16 = v0[90];
  swift_beginAccess();
  (*(v15 + 16))(v14, v13, v16);
  v17 = swift_task_alloc();
  v0[117] = v17;
  *v17 = v0;
  v17[1] = sub_100087AD4;
  v18 = v0[92];

  return sub_100097654((v0 + 2), v18);
}

uint64_t sub_100087AD4()
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 736);
  v5 = *(*v1 + 728);
  v6 = *(*v1 + 720);
  v3[118] = v0;
  v3[119] = v2[2];
  *(v3 + 60) = *(v3 + 3);
  v3[122] = v2[5];
  *(v3 + 123) = *(v3 + 3);

  v7 = *(v5 + 8);
  v3[125] = v7;
  v3[126] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v4, v6);
  v8 = v2[100];
  v9 = v2[99];
  if (v0)
  {
    v10 = sub_100087E98;
  }

  else
  {
    v10 = sub_100087CC8;
  }

  return _swift_task_switch(v10, v9, v8);
}

uint64_t sub_100087CC8(uint64_t a1, uint64_t a2)
{

  v8 = *(v2 + 952);
  v9 = *(v2 + 992);
  v3 = *(v2 + 424);
  v6 = *(v2 + 960);
  v7 = *(v2 + 976);
  (*(v2 + 1000))(*(v2 + 776), *(v2 + 720));

  *v3 = v8;
  *(v3 + 8) = v6;
  *(v3 + 24) = v7;
  *(v3 + 40) = v9;
  v4 = *(v2 + 8);

  return v4();
}

uint64_t sub_100087E98(uint64_t a1, uint64_t a2)
{
  v3 = v2[125];
  v4 = v2[97];
  v5 = v2[90];

  v3(v4, v5);

  v6 = v2[1];

  return v6();
}

uint64_t sub_100088040(uint64_t a1, uint64_t a2)
{

  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_1000881D8(uint64_t a1, uint64_t a2)
{

  swift_unknownObjectRelease();

  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_10008837C(uint64_t a1, uint64_t a2)
{

  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_100088508@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v18 = a3;
  v17 = a2;
  v21 = a4;
  v5 = type metadata accessor for User();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ChatMessagesPrompt();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1;
  v20 = v17;
  User.init(_:)();
  static ChatMessagesPromptBuilder.buildExpression<A>(_:)();
  (*(v6 + 8))(v8, v5);
  sub_10000341C(&qword_10025F3B0, &unk_1001D4310);
  v13 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1001CF9D0;
  (*(v10 + 16))(v14 + v13, v12, v9);
  static ChatMessagesPromptBuilder.buildBlock(_:)();

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_100088738(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Prompt();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[3] = &type metadata for String;
  v12[4] = &protocol witness table for String;
  v12[0] = a1;
  v12[1] = a2;

  static CustomPromptBuilder.buildExpression(_:)();
  sub_10000F4B4(v12);
  sub_10000341C(&qword_10025F3B8, &qword_1001D4D40);
  v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1001CF9D0;
  (*(v5 + 16))(v9 + v8, v7, v4);
  static CustomPromptBuilder.buildBlock(_:)();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1000888F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[14] = a2;
  v3[15] = a3;
  v3[13] = a1;
  v4 = type metadata accessor for PromptCompletion.ImageContent();
  v3[16] = v4;
  v5 = *(v4 - 8);
  v3[17] = v5;
  v3[18] = *(v5 + 64);
  v3[19] = swift_task_alloc();
  sub_10000341C(&unk_10025B5D0, &qword_1001D05A0);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v6 = sub_10000341C(&qword_10025F3F8, &qword_1001D4358);
  v3[22] = v6;
  v3[23] = *(v6 - 8);
  v3[24] = swift_task_alloc();
  v7 = sub_10000341C(&qword_10025F400, &qword_1001D4360);
  v3[25] = v7;
  v3[26] = *(v7 - 8);
  v3[27] = swift_task_alloc();
  sub_10000341C(&qword_10025F408, &qword_1001D4368);
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = type metadata accessor for MainActor();
  v3[31] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[32] = v9;
  v3[33] = v8;

  return _swift_task_switch(sub_100088B4C, v9, v8);
}

uint64_t sub_100088B4C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = 0;
  v7 = *(v5 + 208);
  v45 = *(v5 + 200);
  v42 = (v7 + 48);
  v43 = (v7 + 56);
  v44 = *(v5 + 136);
  v8 = *(*(v5 + 120) + 16);
  v41 = v8;
  while (1)
  {
    if (v6 == v8)
    {
      v10 = 1;
      v11 = v8;
    }

    else
    {
      if (v6 >= v8)
      {
        __break(1u);
LABEL_20:
        __break(1u);
        return __sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(a1, a2, a3, a4, a5);
      }

      v11 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_20;
      }

      v13 = *(v5 + 216);
      v12 = *(v5 + 224);
      v14 = *(v5 + 128);
      v15 = *(v5 + 120) + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v6;
      v16 = *(v45 + 48);
      *v13 = v6;
      (*(v44 + 16))(&v13[v16], v15, v14, a4, a5);
      sub_10002A894(v13, v12, &qword_10025F400, &qword_1001D4360);
      v10 = 0;
    }

    v18 = *(v5 + 224);
    v17 = *(v5 + 232);
    v19 = *(v5 + 200);
    (*v43)(v18, v10, 1, v19, a5);
    sub_10002A894(v18, v17, &qword_10025F408, &qword_1001D4368);
    if ((*v42)(v17, 1, v19) == 1)
    {
      break;
    }

    v49 = v11;
    v20 = *(v5 + 232);
    v21 = *(v5 + 168);
    v22 = *(v5 + 152);
    v46 = v21;
    v23 = *(v5 + 128);
    v47 = *v20;
    v48 = *(v5 + 160);
    v24 = *(v45 + 48);
    v25 = type metadata accessor for TaskPriority();
    v26 = *(v25 - 8);
    (*(v26 + 56))(v21, 1, 1, v25);
    v27 = *(v44 + 32);
    v27(v22, v20 + v24, v23);
    v28 = (*(v44 + 80) + 40) & ~*(v44 + 80);
    v29 = swift_allocObject();
    v29[2] = 0;
    v30 = v29 + 2;
    v29[3] = 0;
    v29[4] = v47;
    v27(v29 + v28, v22, v23);
    sub_1000081F8(v46, v48, &unk_10025B5D0, &qword_1001D05A0);
    v31 = (*(v26 + 48))(v48, 1, v25);
    v32 = *(v5 + 160);
    if (v31 == 1)
    {
      sub_10000F500(*(v5 + 160), &unk_10025B5D0, &qword_1001D05A0);
      if (*v30)
      {
        goto LABEL_11;
      }
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(v26 + 8))(v32, v25);
      if (*v30)
      {
LABEL_11:
        swift_getObjectType();
        swift_unknownObjectRetain();
        v33 = dispatch thunk of Actor.unownedExecutor.getter();
        v35 = v34;
        swift_unknownObjectRelease();
        goto LABEL_14;
      }
    }

    v33 = 0;
    v35 = 0;
LABEL_14:
    v6 = v49;
    v8 = v41;
    v36 = **(v5 + 112);

    sub_10000341C(&qword_10025F3D8, &qword_1001D4330);
    v37 = v35 | v33;
    if (v35 | v33)
    {
      v37 = v5 + 16;
      *(v5 + 16) = 0;
      *(v5 + 24) = 0;
      *(v5 + 32) = v33;
      *(v5 + 40) = v35;
    }

    v9 = *(v5 + 168);
    *(v5 + 72) = 1;
    *(v5 + 80) = v37;
    *(v5 + 88) = v36;
    swift_task_create();

    a1 = sub_10000F500(v9, &unk_10025B5D0, &qword_1001D05A0);
  }

  sub_10000341C(&qword_10025F3D8, &qword_1001D4330);
  sub_10000341C(&qword_10025F410, &qword_1001D4370);
  ThrowingTaskGroup.makeAsyncIterator()();
  *(v5 + 272) = _swiftEmptyArrayStorage;
  v38 = static MainActor.shared.getter();
  *(v5 + 280) = v38;
  v39 = swift_task_alloc();
  *(v5 + 288) = v39;
  *v39 = v5;
  v39[1] = sub_100089044;
  a4 = *(v5 + 176);
  a3 = &protocol witness table for MainActor;
  a1 = v5 + 48;
  a5 = v5 + 96;
  a2 = v38;

  return __sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(a1, a2, a3, a4, a5);
}

uint64_t sub_100089044()
{
  v2 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {

    v3 = *(v2 + 256);
    v4 = *(v2 + 264);
    v5 = sub_1000894C0;
  }

  else
  {

    v3 = *(v2 + 256);
    v4 = *(v2 + 264);
    v5 = sub_100089170;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100089170()
{
  v27 = v0;
  v1 = *(v0 + 64);
  if (v1 >> 60 == 15)
  {
    v2 = *(v0 + 296);
    v3 = *(v0 + 272);
    (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176), *(v0 + 48));

    v26 = v3;

    sub_100095CA8(&v26);
    if (v2)
    {
    }

    else
    {
      v14 = v26;
      v15 = v26[2];
      if (v15)
      {
        v26 = _swiftEmptyArrayStorage;
        sub_100163CC0(0, v15, 0);
        v16 = v26;
        v17 = v14 + 6;
        do
        {
          v18 = *(v17 - 1);
          v19 = *v17;
          sub_10004DC4C(v18, *v17);
          v26 = v16;
          v21 = v16[2];
          v20 = v16[3];
          if (v21 >= v20 >> 1)
          {
            sub_100163CC0((v20 > 1), v21 + 1, 1);
            v16 = v26;
          }

          v17 += 3;
          v16[2] = v21 + 1;
          v22 = &v16[2 * v21];
          v22[4] = v18;
          v22[5] = v19;
          --v15;
        }

        while (v15);
      }

      else
      {

        v16 = _swiftEmptyArrayStorage;
      }

      **(v0 + 104) = v16;

      v23 = *(v0 + 8);

      return v23();
    }
  }

  else
  {
    v25 = *(v0 + 48);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v0 + 272);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v6 = sub_10017DFC4(0, v6[2] + 1, 1, v6);
    }

    v8 = v6[2];
    v7 = v6[3];
    v9 = v25;
    if (v8 >= v7 >> 1)
    {
      v24 = sub_10017DFC4((v7 > 1), v8 + 1, 1, v6);
      v9 = v25;
      v6 = v24;
    }

    v6[2] = v8 + 1;
    v10 = &v6[3 * v8];
    *(v10 + 2) = v9;
    v10[6] = v1;
    *(v0 + 272) = v6;
    v11 = static MainActor.shared.getter();
    *(v0 + 280) = v11;
    v12 = swift_task_alloc();
    *(v0 + 288) = v12;
    *v12 = v0;
    v12[1] = sub_100089044;
    v13 = *(v0 + 176);

    return __sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v0 + 48, v11, &protocol witness table for MainActor, v13, v0 + 96);
  }
}

uint64_t sub_1000894C0(uint64_t a1, uint64_t a2)
{
  v3 = v2[23];
  v4 = v2[24];
  v5 = v2[22];

  (*(v3 + 8))(v4, v5);

  v6 = v2[1];

  return v6();
}

uint64_t sub_1000895A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return _swift_task_switch(sub_1000895CC, 0, 0);
}

uint64_t sub_1000895CC()
{
  **(v0 + 16) = *(v0 + 24);
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_100089668;

  return PromptCompletion.ImageContent.imageData()();
}

uint64_t sub_100089668(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;

  if (v2)
  {
    v8 = *(v7 + 8);

    return v8();
  }

  else
  {
    *(v6 + 48) = a2;
    *(v6 + 56) = a1;

    return _swift_task_switch(sub_1000897C4, 0, 0);
  }
}

uint64_t sub_1000897EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v9 + 480) = a8;
  *(v9 + 488) = v8;
  *(v9 + 672) = a7;
  *(v9 + 464) = a5;
  *(v9 + 472) = a6;
  *(v9 + 448) = a3;
  *(v9 + 456) = a4;
  *(v9 + 432) = a1;
  *(v9 + 440) = a2;
  type metadata accessor for AttributedString();
  *(v9 + 496) = swift_task_alloc();
  *(v9 + 504) = swift_task_alloc();
  sub_10000341C(&unk_100262580, &qword_1001CFF70);
  *(v9 + 512) = swift_task_alloc();
  v10 = type metadata accessor for CompositionModel.Session(0);
  *(v9 + 520) = v10;
  v11 = *(v10 - 8);
  *(v9 + 528) = v11;
  *(v9 + 536) = *(v11 + 64);
  *(v9 + 544) = swift_task_alloc();
  *(v9 + 552) = swift_task_alloc();
  *(v9 + 560) = type metadata accessor for MainActor();
  *(v9 + 568) = static MainActor.shared.getter();
  v13 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v9 + 576) = v13;
  *(v9 + 584) = v12;

  return _swift_task_switch(sub_10008997C, v13, v12);
}

uint64_t sub_10008997C()
{
  v140 = v0;
  v1 = *(v0 + 528);
  v2 = *(v0 + 520);
  v3 = *(v0 + 512);
  v4 = *(v0 + 488);
  swift_getKeyPath();
  *(v0 + 592) = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel___observationRegistrar;
  *(v0 + 424) = v4;
  *(v0 + 600) = sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__session;
  swift_beginAccess();
  sub_1000081F8(v4 + v5, v3, &unk_100262580, &qword_1001CFF70);
  v8 = *(v1 + 48);
  v7 = v1 + 48;
  v6 = v8;
  v9 = v8(v3, 1, v2);
  v10 = *(v0 + 512);
  if (v9 == 1)
  {

    sub_10000F500(v10, &unk_100262580, &qword_1001CFF70);
    sub_100099280();
    swift_allocError();
    *v11 = xmmword_1001D3BA0;
    swift_willThrow();

    v12 = *(v0 + 8);

    return v12();
  }

  v134 = v6;
  v135 = v7;
  sub_10009A774(v10, *(v0 + 552), type metadata accessor for CompositionModel.Session);
  if (qword_10025A718 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  *(v0 + 608) = v14;
  sub_10000F34C(v14, qword_100276FB0);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 134217984;
    *(v17 + 4) = String.count.getter();

    _os_log_impl(&_mh_execute_header, v15, v16, "Query successful. Response length %ld.", v17, 0xCu);
  }

  else
  {
  }

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  v20 = os_log_type_enabled(v18, v19);
  v21 = *(v0 + 456);
  if (v20)
  {
    v22 = swift_slowAlloc();
    *v22 = 134217984;
    *(v22 + 4) = *(v21 + 16);

    _os_log_impl(&_mh_execute_header, v18, v19, "Model generated %ld images.", v22, 0xCu);
  }

  else
  {
  }

  v23 = *(v0 + 480);
  v25 = *(v0 + 464);
  v24 = *(v0 + 472);

  sub_100072700(v25, v24);
  v26 = swift_allocObject();
  *(v0 + 616) = v26;
  v138 = v26;
  if (v23)
  {
    v27 = *(v0 + 480);
    v28 = [v27 mutableCopy];
    if (v28)
    {
      *(v26 + 16) = v28;

      goto LABEL_25;
    }

    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
    return _swift_task_switch(v28, v29, v30);
  }

  *(v0 + 88) = &type metadata for WritingTools;
  *(v0 + 96) = sub_10002AC88();
  *(v0 + 64) = 15;
  v31 = isFeatureEnabled(_:)();
  sub_10000F4B4((v0 + 64));
  if (v31)
  {
    if (qword_10025A6E0 == -1)
    {
      goto LABEL_18;
    }

    goto LABEL_73;
  }

  v50 = *(v0 + 504);
  v52 = *(v0 + 432);
  v51 = *(v0 + 440);

  sub_100039044(v52, v51, v50);
  sub_1000081B0(0, &qword_10025F378, NSMutableAttributedString_ptr);
  *(v26 + 16) = NSAttributedString.init(_:)();
  while (1)
  {
LABEL_25:
    v137 = v0;
    v53 = *(v0 + 456);
    v54 = *(v53 + 16);
    if (v54)
    {
      sub_1000081B0(0, &qword_10025F2D0, NSAttributedString_ptr);
      v136 = objc_opt_self();
      swift_beginAccess();
      v55 = (v53 + 40);
      p_name = (&stru_100256FF8 + 8);
      do
      {
        v64 = *(v55 - 1);
        v65 = *v55;
        v66 = objc_allocWithZone(NSTextAttachment);
        sub_10004DC4C(v64, v65);
        v67 = [v66 init];
        v68 = objc_allocWithZone(UIImage);
        sub_10004DC4C(v64, v65);
        isa = Data._bridgeToObjectiveC()().super.isa;
        v70 = [v68 initWithData:isa];

        sub_10004DD08(v64, v65);
        [v67 setImage:v70];

        v71 = [v67 p_name[481]];
        if (v71)
        {
          v72 = v71;
          [v71 size];
          v74 = v73;
        }

        else
        {
          v74 = 200.0;
        }

        v75 = [v67 p_name[481]];
        if (v75)
        {
          v57 = v75;
          [v75 size];
          v59 = v58;
        }

        else
        {
          v59 = 200.0;
        }

        v55 += 2;
        [v67 setBounds:{0.0, 0.0, v74, v59}];
        v60 = *(v138 + 16);
        AttributedString.init(stringLiteral:)();
        v61 = NSAttributedString.init(_:)();
        [v60 appendAttributedString:v61];

        v62 = *(v138 + 16);
        v63 = [v136 attributedStringWithAttachment:v67];
        [v62 appendAttributedString:v63];

        sub_10004DD08(v64, v65);
        --v54;
        p_name = &stru_100256FF8.name;
      }

      while (v54);
    }

    v76 = (v137 + 144);
    v77 = *(v137 + 488);
    v78 = swift_allocObject();
    *(v137 + 624) = v78;
    *(v78 + 16) = 0;
    v79 = (v78 + 16);
    swift_beginAccess();
    v80 = [*(v138 + 16) string];
    v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v83 = v82;

    *(v137 + 632) = v81;
    *(v137 + 640) = v83;
    *(v137 + 296) = v81;
    *(v137 + 304) = v83;
    v84 = HIBYTE(v83) & 0xF;
    if ((v83 & 0x2000000000000000) == 0)
    {
      v84 = v81;
    }

    v85 = 11;
    if (((v83 >> 60) & ((v81 & 0x800000000000000) == 0)) == 0)
    {
      v85 = 7;
    }

    v86 = v137;
    *(v137 + 312) = 15;
    *(v137 + 320) = v85 | (v84 << 16);

    sub_10000341C(&unk_10025F380, &qword_1001D4200);
    sub_10002AC34();
    sub_100007120(&qword_10025F390, &unk_10025F380, &qword_1001D4200, &protocol conformance descriptor for Range<A>);
    StringProtocol.enumerateSubstrings<A>(in:options:_:)();

    swift_getKeyPath();
    *(v137 + 408) = v77;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v14 = 0;
    if (*(v77 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__wantsInlineEditing) == 1)
    {
      v87 = *(v137 + 488);
      swift_beginAccess();
      v14 = 0;
      v88 = *v79;
      if (*(v87 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__selectedWordCount) != *v79)
      {
        v89 = *(v137 + 488);
        swift_getKeyPath();
        v90 = swift_task_alloc();
        *(v90 + 16) = v89;
        *(v90 + 24) = v88;
        *(v137 + 416) = v89;
        v14 = 0;
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }

      sub_1000940A8();
    }

    v91 = *(v138 + 16);
    v92 = v91;
    sub_100074EBC(v91);
    v93 = Logger.logObject.getter();
    v94 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      *v95 = 0;
      _os_log_impl(&_mh_execute_header, v93, v94, "Updating Last Response", v95, 2u);
    }

    v96 = *(v137 + 520);

    v97 = objc_allocWithZone(NSAttributedString);
    v98 = String._bridgeToObjectiveC()();
    v99 = [v97 initWithString:v98];
    *(v137 + 648) = v99;

    v100 = sub_10007A25C(v76);
    v102 = v101;
    if (!v134(v101, 1, v96))
    {
      v28 = [v99 copy];
      if (!v28)
      {
        goto LABEL_75;
      }

      v103 = *(*(v137 + 520) + 32);
      v104 = *(v102 + v103);
      *(v102 + v103) = v28;
    }

    (v100)(v76, 0);
    v105 = *(v137 + 672);
    swift_getKeyPath();
    v0 = *(v137 + 488);
    if (v105 != 1)
    {
      break;
    }

    *(v137 + 392) = v0;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v106 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__activeGeneratedResponseIndex);
    if (!__OFSUB__(v106, 1))
    {
      v107 = (v106 - 1) & ~((v106 - 1) >> 63);
      v108 = v138;
      if (v106 == v107)
      {
        goto LABEL_59;
      }

      v115 = *(v137 + 488);
      swift_getKeyPath();
      v116 = swift_task_alloc();
      *(v116 + 16) = v115;
      *(v116 + 24) = v107;
      *(v137 + 400) = v115;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      goto LABEL_58;
    }

    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    swift_once();
LABEL_18:
    sub_10000F34C(v14, qword_100276F08);

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v35 = *(v0 + 432);
      v34 = *(v0 + 440);
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v139 = v37;
      *v36 = 136315138;
      *(v36 + 4) = sub_10002510C(v35, v34, &v139);
      _os_log_impl(&_mh_execute_header, v32, v33, "response.body = %s", v36, 0xCu);
      sub_10000F4B4(v37);
    }

    v38 = [*(*(v0 + 552) + 8) attributedText];
    v39 = sub_10007A450();
    v40 = [objc_allocWithZone(TCAttributedStringFormatter) initWithDigestedAttributedString:v38 formatOptions:v39];

    v41 = String._bridgeToObjectiveC()();
    v42 = [v40 digestedAttributedStringFromFormattedString:v41];

    v28 = [v42 mutableCopy];
    if (!v28)
    {
      goto LABEL_76;
    }

    v43 = v28;

    *(v138 + 16) = v43;

    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *v46 = 138412290;
      swift_beginAccess();
      v48 = *(v138 + 16);
      *(v46 + 4) = v48;
      *v47 = v48;
      v49 = v48;
      _os_log_impl(&_mh_execute_header, v44, v45, "assistantResponse = %@", v46, 0xCu);
      sub_10000F500(v47, &unk_10025D580, &qword_1001CFA60);
    }
  }

  *(v137 + 368) = v0;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *(v137 + 360) = v0;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v109 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__activeGeneratedResponseIndex;
  v110 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__activeGeneratedResponseIndex);
  v111 = __OFADD__(v110, 1);
  v112 = v110 + 1;
  if (v111)
  {
    goto LABEL_72;
  }

  v113 = *(v137 + 488);
  *(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__activeGeneratedResponseIndex) = v112;
  *(v137 + 336) = v113;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  swift_getKeyPath();
  *(v137 + 328) = v113;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v0 + v109) < 2)
  {
    v86 = v137;
    v108 = v138;
    goto LABEL_59;
  }

  v114 = *(v137 + 488);
  swift_getKeyPath();
  *(v137 + 376) = v114;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v86 = v137;
  if (*(v114 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__hasGeneratedResponseDrafts))
  {
    v108 = v138;
    goto LABEL_59;
  }

  v117 = *(v137 + 488);
  swift_getKeyPath();
  v118 = swift_task_alloc();
  *(v118 + 16) = v117;
  *(v118 + 24) = 1;
  *(v137 + 384) = v117;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  v108 = v138;
LABEL_58:

LABEL_59:
  v86[82] = 0;

  v119 = Logger.logObject.getter();
  v120 = static os_log_type_t.default.getter();
  v121 = os_log_type_enabled(v119, v120);
  v122 = v86[56];
  if (v121)
  {
    v123 = swift_slowAlloc();
    *v123 = 134217984;
    *(v123 + 4) = *(v122 + 16);

    _os_log_impl(&_mh_execute_header, v119, v120, "Updating Refinement action with %ld refinement(s)", v123, 0xCu);
  }

  else
  {
  }

  v124 = v86[61];

  sub_100073770(v125);
  v126 = *(v108 + 16);
  swift_getKeyPath();
  v86[43] = v124;
  v127 = v126;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v124 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__allowedResultOptions) == 1)
  {
    v128 = [v127 string];
    if (!v128)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v128 = String._bridgeToObjectiveC()();
    }

    v129 = [objc_allocWithZone(NSMutableAttributedString) initWithString:v128];

    v127 = v129;
  }

  v130 = *(v108 + 16);
  *(v108 + 16) = v127;

  v131 = Logger.logObject.getter();
  v132 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v131, v132))
  {
    v133 = swift_slowAlloc();
    *v133 = 0;
    _os_log_impl(&_mh_execute_header, v131, v132, "Finishing GES session", v133, 2u);
  }

  v28 = sub_10008AC50;
  v29 = 0;
  v30 = 0;

  return _swift_task_switch(v28, v29, v30);
}

uint64_t sub_10008AC50(uint64_t a1)
{
  *(v1 + 664) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10008ACDC, v3, v2);
}

uint64_t sub_10008ACDC(uint64_t a1, uint64_t a2)
{

  v3 = sub_1000713A0();
  if (v3)
  {
    v4 = v3;
    if ([v3 respondsToSelector:"endTextPlaceholderAndWillInsertText:completion:"])
    {
      v5 = v2[77];
      v6 = v2[68];
      v7 = v2[67];
      v8 = v2[66];
      v9 = v2[61];
      sub_10009A70C(v2[69], v6, type metadata accessor for CompositionModel.Session);
      v10 = (*(v8 + 80) + 24) & ~*(v8 + 80);
      v11 = (v7 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
      v12 = swift_allocObject();
      *(v12 + 16) = v9;
      sub_10009A774(v6, v12 + v10, type metadata accessor for CompositionModel.Session);
      *(v12 + v11) = v5;
      v2[6] = sub_100099DE0;
      v2[7] = v12;
      v2[2] = _NSConcreteStackBlock;
      v2[3] = 1107296256;
      v2[4] = sub_1001256BC;
      v2[5] = &unk_10024D000;
      v13 = _Block_copy(v2 + 2);

      [v4 endTextPlaceholderAndWillInsertText:1 completion:v13];
      swift_unknownObjectRelease();
      _Block_release(v13);
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  v14 = v2[60];
  v15 = v2[61];
  if (((v14 != 0) ^ *(v15 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__showingOriginal)))
  {
    v16 = v14 != 0;
    swift_getKeyPath();
    v17 = swift_task_alloc();
    *(v17 + 16) = v15;
    *(v17 + 24) = v16;
    v2[44] = v15;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *(v15 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__showingOriginal) = v14 != 0;
  }

  v18 = v2[73];
  v19 = v2[72];

  return _swift_task_switch(sub_10008AF6C, v19, v18);
}

id sub_10008AF6C()
{
  v39 = v0;
  v0[16] = &type metadata for WritingTools;
  v1 = sub_10002AC88();
  *(v0 + 104) = 7;
  v0[17] = v1;
  v2 = isFeatureEnabled(_:)();
  sub_10000F4B4(v0 + 13);
  if (v2)
  {
    v3 = sub_1000A3970(v0[79], v0[80]);
    if (qword_10025A6E0 != -1)
    {
      swift_once();
    }

    sub_10000F34C(v0[76], qword_100276F08);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v38 = v7;
      *v6 = 136642819;
      v8 = Array.description.getter();
      v10 = sub_10002510C(v8, v9, &v38);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v4, v5, "found slots in output: %{sensitive}s", v6, 0xCu);
      sub_10000F4B4(v7);
    }

    v11 = *(v3 + 2);
    v12 = _swiftEmptyArrayStorage;
    if (v11)
    {
      v36 = v0;
      v38 = _swiftEmptyArrayStorage;
      sub_100163C60(0, v11, 0);
      v13 = v38;
      v14 = v38[2];
      v15 = (v14 << 6) + 88;
      v35 = v3;
      v16 = (v3 + 40);
      do
      {
        v17 = v12;
        v19 = *(v16 - 1);
        v18 = *v16;
        v38 = v13;
        v20 = v14 + 1;
        v21 = v13[3];

        if (v14 >= v21 >> 1)
        {
          sub_100163C60((v21 > 1), v20, 1);
          v13 = v38;
        }

        v13[2] = v20;
        v22 = (v13 + v15);
        *(v22 - 7) = v19;
        *(v22 - 6) = v18;
        *(v22 - 5) = 0;
        *(v22 - 4) = 0xE000000000000000;
        *(v22 - 24) = 0;
        *(v22 - 23) = *v37;
        *(v22 - 5) = *&v37[3];
        *(v22 - 2) = 0;
        *(v22 - 1) = 0xE000000000000000;
        v12 = v17;
        *v22 = v17;
        v15 += 64;
        v16 += 2;
        ++v14;
        --v11;
      }

      while (v11);
      v3 = v35;
      v0 = v36;
    }

    else
    {
      v13 = _swiftEmptyArrayStorage;
    }

    sub_1000738D0(v13);
    if (*(v3 + 2))
    {
      sub_10008EAC0(v3, v0[79], v0[80]);
    }
  }

  v23 = v0[81];
  sub_1000D1DE4(1);
  result = [v23 copy];
  if (result)
  {
    v25 = result;
    v26 = v0[81];
    v27 = v0[69];

    sub_1000728D4(v25);
    v28 = [v26 string];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v29 = _NSRange.init(_:)();
    v31 = v30;
    v33 = v32;

    sub_100072A68(v29, v31, v33 & 1);

    sub_100099074(v27);

    v34 = v0[1];

    return v34();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_10008B380(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = sub_1000713A0();
  if (result)
  {
    v6 = result;
    v7 = *a2;
    swift_beginAccess();
    v8 = a2[1];
    v9 = *(a3 + 16);
    v10 = [v8 range];
    [v6 compositionSession:v7 didReceiveText:v9 replacementRange:v10 inContext:v11 finished:{v8, 1}];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10008B430(uint64_t a1)
{
  v2[26] = a1;
  v2[27] = v1;
  v2[28] = type metadata accessor for MainActor();
  v2[29] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[30] = v4;
  v2[31] = v3;

  return _swift_task_switch(sub_10008B4CC, v4, v3);
}

uint64_t sub_10008B4CC()
{
  v52 = v0;
  if (qword_10025A6E0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000F34C(v1, qword_100276F08);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Model requested more info from the user:", v4, 2u);
  }

  v5 = v0;
  v6 = v0[26];

  v7 = *(v6 + 16);
  v8 = _swiftEmptyArrayStorage;
  if (v7)
  {
    v45 = v5[26];
    v9 = (v45 + 64);
    v48 = *(v6 + 16);
    v46 = v5;
    do
    {
      v19 = *(v9 - 4);
      v20 = *(v9 - 3);
      v21 = *(v9 - 2);
      v22 = *(v9 - 1);
      v23 = *v9;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v24, v25))
      {
        v10 = v21;
        v11 = v19;
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v14 = v23;
        v15 = v13;
        v51 = v13;
        *v12 = 136315138;
        v46[12] = v11;
        v46[13] = v20;
        v46[14] = v10;
        v46[15] = v22;
        *(v46 + 128) = v14;
        v16 = String.init<A>(describing:)();
        v18 = sub_10002510C(v16, v17, &v51);

        *(v12 + 4) = v18;
        _os_log_impl(&_mh_execute_header, v24, v25, "%s", v12, 0xCu);
        sub_10000F4B4(v15);
      }

      else
      {
      }

      v9 += 40;
      --v7;
    }

    while (v7);
    v51 = _swiftEmptyArrayStorage;
    v26 = v48;
    sub_100163C60(0, v48, 0);
    v8 = v51;
    v27 = v51[2];
    v28 = (v27 << 6) + 88;
    v29 = (v45 + 64);
    do
    {
      v49 = v26;
      v31 = *(v29 - 4);
      v30 = *(v29 - 3);
      v33 = *(v29 - 2);
      v32 = *(v29 - 1);
      v47 = *v29;
      v51 = v8;
      v34 = v8[3];

      if (v27 >= v34 >> 1)
      {
        sub_100163C60((v34 > 1), v27 + 1, 1);
        v8 = v51;
      }

      v29 += 40;
      v8[2] = v27 + 1;
      v35 = (v8 + v28);
      *(v35 - 7) = v31;
      *(v35 - 6) = v30;
      *(v35 - 5) = v33;
      *(v35 - 4) = v32;
      *(v35 - 24) = v47;
      *(v35 - 23) = *v50;
      *(v35 - 5) = *&v50[3];
      *(v35 - 2) = 0;
      *(v35 - 1) = 0xE000000000000000;
      *v35 = _swiftEmptyArrayStorage;
      v28 += 64;
      ++v27;
      --v26;
    }

    while (v49 != 1);
    v36 = v46;
  }

  else
  {
    v36 = v5;
  }

  v37 = v36[27];
  sub_1000738D0(v8);
  swift_getKeyPath();
  v36[23] = v37;
  sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v38 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__analyticsInstance;
  swift_beginAccess();
  sub_1000081F8(v37 + v38, (v36 + 2), &unk_10025B1C0, &unk_1001CFA90);
  if (v36[5])
  {
    v39 = v36[27];
    sub_100028458((v36 + 2), (v36 + 7));
    sub_10000F500((v36 + 2), &unk_10025B1C0, &unk_1001CFA90);
    sub_100027874(v36 + 7, v36[10]);
    swift_getKeyPath();
    v36[25] = v39;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();

    sub_10000B06C(v40);

    sub_10000F4B4(v36 + 7);
  }

  else
  {
    sub_10000F500((v36 + 2), &unk_10025B1C0, &unk_1001CFA90);
  }

  sub_10008C6E4();
  v41 = static MainActor.shared.getter();
  v36[32] = v41;
  v42 = swift_allocObject();
  v36[33] = v42;
  swift_weakInit();
  v43 = swift_task_alloc();
  v36[34] = v43;
  *v43 = v36;
  v43[1] = sub_10008BABC;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v36 + 24, v41, &protocol witness table for MainActor, 0xD000000000000020, 0x80000001001E4970, sub_100099B0C, v42, &_s21RequestedInfoResponseVN);
}

uint64_t sub_10008BABC()
{
  v2 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v3 = *(v2 + 240);
    v4 = *(v2 + 248);
    v5 = sub_10008BC48;
  }

  else
  {

    v3 = *(v2 + 240);
    v4 = *(v2 + 248);
    v5 = sub_10008BBE0;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10008BBE0(uint64_t a1, uint64_t a2)
{

  v3 = *(v2 + 192);
  v4 = *(v2 + 8);

  return v4(v3);
}

uint64_t sub_10008BC48(uint64_t a1, uint64_t a2)
{

  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_10008BCC0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = sub_10007A25C(v11);
    v6 = v5;
    v7 = type metadata accessor for CompositionModel.Session(0);
    if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
    {
      v8 = *(v7 + 28);
      sub_10000F500(v6 + v8, &qword_10025F240, &qword_1001D3D58);
      v9 = sub_10000341C(&qword_10025F2C0, qword_1001D3D68);
      v10 = *(v9 - 8);
      (*(v10 + 16))(v6 + v8, a1, v9);
      (*(v10 + 56))(v6 + v8, 0, 1, v9);
    }

    (v4)(v11, 0);
  }

  return result;
}

void sub_10008BE38(uint64_t a1)
{
  v2 = v1;
  v63[3] = &type metadata for WritingTools;
  v63[4] = sub_10002AC88();
  LOBYTE(v63[0]) = 5;
  v4 = isFeatureEnabled(_:)();
  sub_10000F4B4(v63);
  if ((v4 & 1) == 0)
  {
    if (qword_10025A710 != -1)
    {
      goto LABEL_37;
    }

    goto LABEL_29;
  }

  swift_getKeyPath();
  v52 = a1;
  v5 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel___observationRegistrar;
  v63[0] = v2;
  v6 = sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v63[0] = v2;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  sub_10008C5E0(a1, v7);
  swift_endAccess();
  v63[0] = v2;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  swift_getKeyPath();
  v63[0] = v2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v8 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__slots;
  swift_beginAccess();
  v9 = *(*(v2 + v8) + 16);
  if (v9)
  {
    v10 = 0;
    v60 = 0;
    v49 = v2;
    v48[1] = v5;
    v48[0] = v6;
    v51 = v8;
    v50 = v9;
    do
    {
      v53 = v10;
      swift_getKeyPath();
      v62 = v2;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v11 = v53;
      v12 = *(v2 + v8);
      if (v53 >= *(v12 + 16))
      {
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v13 = v12 + (v53 << 6);
      v15 = *(v13 + 72);
      v14 = *(v13 + 80);
      v16 = v15 & 0xFFFFFFFFFFFFLL;
      if ((v14 & 0x2000000000000000) != 0)
      {
        v17 = HIBYTE(v14) & 0xF;
      }

      else
      {
        v17 = v16;
      }

      if (!v17)
      {
        swift_getKeyPath();
        v62 = v2;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v11 = v53;
        v18 = *(v2 + v8);
        if (v53 >= *(v18 + 16))
        {
          goto LABEL_35;
        }

        v19 = v52;
        v56 = *(*(v18 + (v53 << 6) + 88) + 16);
        if (v56)
        {

          v21 = 0;
          v22 = (v20 + 48);
          v55 = v20;
          while (1)
          {
            if (v21 >= *(v20 + 16))
            {
              __break(1u);
              goto LABEL_34;
            }

            v23 = *(v22 - 1);
            v54 = *(v22 - 2);
            v24 = v22[1];
            v25 = v22[3];
            v26 = *(v19 + 32);
            v27 = v26 & 0x3F;
            v28 = ((1 << v26) + 63) >> 6;
            v29 = 8 * v28;
            v58 = v22[5];

            swift_bridgeObjectRetain_n();
            v59 = v24;
            swift_bridgeObjectRetain_n();
            v61 = v23;

            v57 = v25;

            if (v27 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
            {
              __chkstk_darwin(isStackAllocationSafe);
              bzero(v48 - ((v29 + 15) & 0x3FFFFFFFFFFFFFF0), v29);
              v31 = v28;
              v32 = v60;
              v33 = sub_100096898(v48 - ((v29 + 15) & 0x3FFFFFFFFFFFFFF0), v31, v19, v59);
              v60 = v32;
              if (v32)
              {

                swift_willThrow();

                __break(1u);
LABEL_39:

                __break(1u);
                return;
              }

              v34 = v33;
            }

            else
            {
              v36 = swift_slowAlloc();

              v37 = v59;

              v38 = v28;
              v39 = v60;
              v34 = sub_100096808(v36, v38, v19, v37);

              v60 = v39;
              if (v39)
              {
                goto LABEL_39;
              }
            }

            v35 = v34[2];

            if (v35)
            {
              break;
            }

            ++v21;

            v22 += 8;
            v20 = v55;
            if (v56 == v21)
            {

              v2 = v49;
              v8 = v51;
              v9 = v50;
              v11 = v53;
              goto LABEL_5;
            }
          }

          swift_getKeyPath();
          v2 = v49;
          v62 = v49;

          ObservationRegistrar.access<A, B>(_:keyPath:)();

          v62 = v2;
          swift_getKeyPath();
          ObservationRegistrar.willSet<A, B>(_:keyPath:)();

          v8 = v51;
          swift_beginAccess();
          v40 = *(v2 + v8);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v2 + v8) = v40;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v40 = sub_10017E494(v40);
            *(v2 + v8) = v40;
          }

          v9 = v50;
          if (v53 < *(v40 + 2))
          {
            v42 = &v40[64 * v53];
            v43 = v61;
            *(v42 + 9) = v54;
            *(v42 + 10) = v43;
            *(v2 + v8) = v40;
            swift_endAccess();

            v62 = v2;
            swift_getKeyPath();
            ObservationRegistrar.didSet<A, B>(_:keyPath:)();

            v11 = v53;
            goto LABEL_5;
          }

LABEL_36:
          __break(1u);
LABEL_37:
          swift_once();
LABEL_29:
          v44 = type metadata accessor for Logger();
          sub_10000F34C(v44, qword_100276F98);
          v45 = Logger.logObject.getter();
          v46 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v45, v46))
          {
            v47 = swift_slowAlloc();
            *v47 = 0;
            _os_log_impl(&_mh_execute_header, v45, v46, "personal info search is disabled", v47, 2u);
          }

          return;
        }

        v8 = v51;
        v9 = v50;
      }

LABEL_5:
      v10 = v11 + 1;
    }

    while (v10 != v9);
  }
}

uint64_t sub_10008C5E0(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  if (v7)
  {
    while (1)
    {
      v9 = v3;
LABEL_9:
      v10 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
      v12 = *v11;
      v13 = v11[1];

      sub_1000CBF08(&v14, v12, v13);

      if (!v7)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
      return result;
    }

    if (v9 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }
}

void sub_10008C6E4()
{
  v1 = v0;
  v2 = sub_10000341C(&unk_10025B5D0, &qword_1001D05A0);
  __chkstk_darwin(v2 - 8);
  v59 = &v50 - v3;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v8 = __chkstk_darwin(v7);
  v10 = &v50 - v9;
  __chkstk_darwin(v8);
  v12 = &v50 - v11;
  v13 = sub_10000341C(&unk_100262450, &qword_1001CFAA0);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v50 - v17;
  v61[3] = &type metadata for WritingTools;
  v61[4] = sub_10002AC88();
  LOBYTE(v61[0]) = 5;
  v19 = isFeatureEnabled(_:)();
  sub_10000F4B4(v61);
  if (v19)
  {
    v58 = v10;
    sub_100073EB8(&_swiftEmptySetSingleton);
    UUID.init()();
    (*(v5 + 56))(v18, 0, 1, v4);
    sub_1000742F0(v18);
    swift_getKeyPath();
    v20 = v5;
    v61[0] = v1;
    sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v21 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__currentSearchToolQueryID;
    swift_beginAccess();
    v22 = v1 + v21;
    v23 = v20;
    sub_1000081F8(v22, v16, &unk_100262450, &qword_1001CFAA0);
    if ((*(v20 + 48))(v16, 1, v4) == 1)
    {
      __break(1u);
    }

    else
    {
      v54 = *(v20 + 32);
      v55 = v20 + 32;
      v54(v12, v16, v4);
      v24 = v58;
      if (qword_10025A6E0 != -1)
      {
        swift_once();
      }

      v56 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
      v25 = type metadata accessor for Logger();
      sub_10000F34C(v25, qword_100276F08);
      v26 = v23;
      v27 = *(v23 + 16);
      v57 = v12;
      v53 = v27;
      v27(v24, v12, v4);
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v52 = v23;
        v31 = v30;
        v32 = swift_slowAlloc();
        v51 = v1;
        v33 = v32;
        v60 = v32;
        *v31 = 136315138;
        v34 = UUID.uuidString.getter();
        v35 = v24;
        v37 = v36;
        v58 = *(v52 + 8);
        (v58)(v35, v4);
        v38 = sub_10002510C(v34, v37, &v60);

        *(v31 + 4) = v38;
        _os_log_impl(&_mh_execute_header, v28, v29, "starting a new search tool invocation with UUID %s", v31, 0xCu);
        sub_10000F4B4(v33);
        v1 = v51;

        v26 = v52;
      }

      else
      {

        v58 = *(v23 + 8);
        (v58)(v24, v4);
      }

      v43 = type metadata accessor for TaskPriority();
      v44 = v59;
      (*(*(v43 - 8) + 56))(v59, 1, 1, v43);
      v46 = v56;
      v45 = v57;
      v53(v56, v57, v4);
      type metadata accessor for MainActor();

      v47 = static MainActor.shared.getter();
      v48 = (*(v26 + 80) + 40) & ~*(v26 + 80);
      v49 = swift_allocObject();
      *(v49 + 2) = v47;
      *(v49 + 3) = &protocol witness table for MainActor;
      *(v49 + 4) = v1;
      v54(&v49[v48], v46, v4);
      sub_10015C9C8(0, 0, v44, &unk_1001D41A0, v49);

      (v58)(v45, v4);
    }
  }

  else
  {
    if (qword_10025A710 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    sub_10000F34C(v39, qword_100276F98);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&_mh_execute_header, v40, v41, "personal info search is disabled", v42, 2u);
    }
  }
}

uint64_t sub_10008CD90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[30] = a4;
  v5[31] = a5;
  v6 = type metadata accessor for UUID();
  v5[32] = v6;
  v5[33] = *(v6 - 8);
  v5[34] = swift_task_alloc();
  v5[35] = swift_task_alloc();
  v5[36] = sub_10000341C(&qword_10025F358, &qword_1001D4140);
  v5[37] = swift_task_alloc();
  sub_10000341C(&unk_100262450, &qword_1001CFAA0);
  v5[38] = swift_task_alloc();
  v5[39] = swift_task_alloc();
  v5[40] = swift_task_alloc();
  v5[41] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[42] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[43] = v7;
  v5[44] = v8;

  return _swift_task_switch(sub_10008CF5C, v7, v8);
}

uint64_t sub_10008CF5C()
{
  v1 = v0[30];
  swift_getKeyPath();
  v0[17] = v1;
  v0[45] = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel___observationRegistrar;
  v0[46] = sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__slots;
  v0[47] = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__slots;
  swift_beginAccess();
  v3 = *(*(v1 + v2) + 16);
  v0[48] = v3;
  if (v3)
  {
    v4 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__currentSearchToolQueryID;
    v0[49] = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel_userInfoSearcher;
    v0[50] = v4;
    v0[51] = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__selectedSlotSourceIds;
    swift_beginAccess();
    v5 = 0;
    while (1)
    {
      v0[52] = v5;
      v6 = v0[47];
      v7 = v0[30];
      swift_getKeyPath();
      v0[18] = v7;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v8 = *(v7 + v6);
      if (v5 >= *(v8 + 16))
      {
        __break(1u);
        goto LABEL_20;
      }

      v9 = *(v8 + (v5 << 6) + 64);
      if (v9 != 1 && v9 != 2)
      {
        break;
      }

      v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v10)
      {
        goto LABEL_15;
      }

      v5 = v0[52] + 1;
      if (v5 == v0[48])
      {
        goto LABEL_8;
      }
    }

LABEL_15:
    v20 = v0[47];
    v21 = v0[30];
    swift_getKeyPath();
    v0[19] = v21;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v22 = *(v21 + v20);
    if (v5 >= *(v22 + 16))
    {
      __break(1u);
    }

    v23 = v22 + (v5 << 6);
    v25 = *(v23 + 48);
    v24 = *(v23 + 56);
    v0[53] = v24;

    v26 = swift_task_alloc();
    v0[54] = v26;
    *v26 = v0;
    v26[1] = sub_10008D418;

    return sub_1000C9E44(v25, v24);
  }

  else
  {
LABEL_8:

    if (qword_10025A6E0 != -1)
    {
LABEL_20:
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000F34C(v11, qword_100276F08);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "search tool finished; setting current search tool query ID to nil", v14, 2u);
    }

    v15 = v0[38];
    v16 = v0[32];
    v17 = v0[33];

    (*(v17 + 56))(v15, 1, 1, v16);
    sub_1000742F0(v15);

    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_10008D418(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 440) = a1;
  *(v4 + 448) = v1;

  v5 = *(v3 + 352);
  v6 = *(v3 + 344);
  if (v1)
  {
    v7 = sub_10008E5A8;
  }

  else
  {
    v7 = sub_10008D5A0;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_10008D5A0()
{
  v131 = v0;
  v1 = v0[50];
  v2 = v0[41];
  v4 = v0[36];
  v3 = v0[37];
  v5 = v0[32];
  v6 = v0[33];
  v8 = v0[30];
  v7 = v0[31];
  v9 = *(v6 + 16);
  v127 = v6 + 16;
  v128 = v1;
  v126 = v9;
  v9(v2, v7, v5);
  (*(v6 + 56))(v2, 0, 1, v5);
  swift_getKeyPath();
  v0[20] = v8;
  v129 = v0 + 20;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v10 = *(v4 + 48);
  sub_1000081F8(v2, v3, &unk_100262450, &qword_1001CFAA0);
  sub_1000081F8(&v128[v8], v3 + v10, &unk_100262450, &qword_1001CFAA0);
  v11 = *(v6 + 48);
  if ((v11)(v3, 1, v5) == 1)
  {
    v12 = v0[32];
    sub_10000F500(v0[41], &unk_100262450, &qword_1001CFAA0);
    if ((v11)(v3 + v10, 1, v12) == 1)
    {
      sub_10000F500(v0[37], &unk_100262450, &qword_1001CFAA0);
      goto LABEL_14;
    }

    goto LABEL_7;
  }

  v13 = v0[32];
  sub_1000081F8(v0[37], v0[40], &unk_100262450, &qword_1001CFAA0);
  v14 = (v11)(v3 + v10, 1, v13);
  v15 = v0[32];
  v16 = v0[33];
  if (v14 == 1)
  {
    v17 = v0[41];
    v18 = v0[40];

    sub_10000F500(v17, &unk_100262450, &qword_1001CFAA0);
    (*(v16 + 8))(v18, v15);
LABEL_7:
    sub_10000F500(v0[37], &qword_10025F358, &qword_1001D4140);
LABEL_8:
    if (qword_10025A6E0 != -1)
    {
LABEL_59:
      swift_once();
    }

    v19 = v0[34];
    v21 = v0[31];
    v20 = v0[32];
    v22 = type metadata accessor for Logger();
    sub_10000F34C(v22, qword_100276F08);
    v126(v19, v21, v20);

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v23, v24))
    {
      LODWORD(v125) = v24;
      v25 = v0[50];
      v26 = v0[46];
      v120 = v0[45];
      v121 = v26;
      v122 = v0[39];
      v123 = v25;
      v28 = v0[33];
      v27 = v0[34];
      v29 = v0[32];
      v128 = v11;
      v30 = v0[30];
      v31 = swift_slowAlloc();
      v124 = swift_slowAlloc();
      v130[0] = v124;
      *v31 = 136315394;
      v32 = UUID.uuidString.getter();
      v34 = v33;
      v118 = *(v28 + 8);
      v118(v27, v29);
      v35 = sub_10002510C(v32, v34, v130);

      *(v31 + 4) = v35;
      *(v31 + 12) = 2080;
      swift_getKeyPath();
      v0[21] = v30;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v36 = v122;
      sub_1000081F8(v30 + v123, v122, &unk_100262450, &qword_1001CFAA0);
      if ((v128)(v36, 1, v29))
      {
        sub_10000F500(v0[39], &unk_100262450, &qword_1001CFAA0);
        v37 = 0xE300000000000000;
        v38 = 7104878;
      }

      else
      {
        v74 = v0[35];
        v75 = v0[32];
        v76 = v0[39];
        v126(v74, v76, v75);
        sub_10000F500(v76, &unk_100262450, &qword_1001CFAA0);
        v77 = UUID.uuidString.getter();
        v37 = v78;
        v118(v74, v75);
        v38 = v77;
      }

      v79 = v125;
      v80 = sub_10002510C(v38, v37, v130);

      *(v31 + 14) = v80;
      _os_log_impl(&_mh_execute_header, v23, v79, "user canceled search tool invocation; returning (query ID is %s, current ID is %s)", v31, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      v40 = v0[33];
      v39 = v0[34];
      v41 = v0[32];

      (*(v40 + 8))(v39, v41);
    }

    goto LABEL_49;
  }

  v128 = v11;
  v43 = v0[40];
  v42 = v0[41];
  v125 = v0[37];
  v44 = v0[35];
  (*(v16 + 32))(v44, v3 + v10, v15);
  sub_1000997E0(&unk_10025F360, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v45 = dispatch thunk of static Equatable.== infix(_:_:)();
  v46 = *(v16 + 8);
  v46(v44, v15);
  sub_10000F500(v42, &unk_100262450, &qword_1001CFAA0);
  v46(v43, v15);
  sub_10000F500(v125, &unk_100262450, &qword_1001CFAA0);
  if ((v45 & 1) == 0)
  {

    v11 = v128;
    goto LABEL_8;
  }

LABEL_14:
  v47 = v0[47];
  v48 = v0[30];
  swift_getKeyPath();
  v0[22] = v48;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v0[23] = v48;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  v49 = *(v48 + v47);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v48 + v47) = v49;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v112 = v0[47];
    v113 = v0[30];
    v49 = sub_10017E494(v49);
    *(v113 + v112) = v49;
  }

  v51 = v0[52];
  if (v51 >= *(v49 + 2))
  {
    __break(1u);
    goto LABEL_61;
  }

  v11 = v0[47];
  v52 = v0[30];
  *&v49[64 * v51 + 88] = v0[55];
  *&v11[v52] = v49;
  swift_endAccess();

  v0[24] = v52;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  swift_getKeyPath();
  v0[25] = v52;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v53 = *&v11[v52];
  if (v51 >= *(v53 + 16))
  {
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    swift_once();
LABEL_46:
    v97 = type metadata accessor for Logger();
    sub_10000F34C(v97, qword_100276F08);
    v98 = Logger.logObject.getter();
    v99 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v98, v99))
    {
      v100 = swift_slowAlloc();
      *v100 = 0;
      _os_log_impl(&_mh_execute_header, v98, v99, "search tool finished; setting current search tool query ID to nil", v100, 2u);
    }

    v101 = v0[38];
    v102 = v0[32];
    v103 = v0[33];

    (*(v103 + 56))(v101, 1, 1, v102);
    sub_1000742F0(v101);
LABEL_49:

    v104 = v0[1];

    return v104();
  }

  v54 = *(v53 + (v0[52] << 6) + 88);
  v120 = *(v54 + 2);
  if (v120)
  {
    v116 = v129 - 6;

    swift_beginAccess();
    v55 = 0;
    v56 = v0[56];
    v57 = (v54 + 48);
    v118 = v54;
    v119 = v0;
    while (1)
    {
      if (v55 >= *(v54 + 2))
      {
LABEL_58:
        __break(1u);
        goto LABEL_59;
      }

      v121 = v55;
      v127 = v0[51];
      v128 = v56;
      v126 = v0[46];
      v58 = v0[30];
      v59 = *(v57 - 1);
      v117 = *(v57 - 2);
      v61 = *v57;
      v60 = v57[1];
      v62 = v57[5];
      v63 = v57[3];
      swift_getKeyPath();
      v0[26] = v58;
      v124 = v62;
      v11 = v60;

      v125 = v59;

      v122 = v61;

      v123 = v63;

      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v64 = *(v58 + v127);
      v65 = *(v64 + 32);
      LODWORD(v60) = v65 & 0x3F;
      v66 = ((1 << v65) + 63) >> 6;
      v67 = 8 * v66;
      swift_bridgeObjectRetain_n();

      if (v60 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
      {
        __chkstk_darwin(isStackAllocationSafe);
        bzero(&v116 - ((v67 + 15) & 0x3FFFFFFFFFFFFFF0), v67);
        v69 = v128;
        v70 = sub_100096898(&v116 - ((v67 + 15) & 0x3FFFFFFFFFFFFFF0), v66, v64, v11);

        if (v69)
        {

          swift_willThrow();
        }
      }

      else
      {
        v72 = swift_slowAlloc();

        v73 = v128;
        v70 = sub_100096808(v72, v66, v64, v11);

        if (v73)
        {
          goto LABEL_65;
        }
      }

      v0 = v119;
      v71 = *(v70 + 16);

      if (v71)
      {
        break;
      }

      v55 = v121 + 1;

      v56 = 0;
      v57 += 8;
      v54 = v118;
      if (v120 == v55)
      {

        goto LABEL_38;
      }
    }

    v82 = v0[47];
    v83 = v0[30];

    swift_getKeyPath();
    v0[27] = v83;

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v0[28] = v83;
    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    swift_beginAccess();
    v84 = *(v83 + v82);
    v85 = swift_isUniquelyReferenced_nonNull_native();
    *(v83 + v82) = v84;
    if ((v85 & 1) == 0)
    {
      v114 = v0[47];
      v115 = v0[30];
      v84 = sub_10017E494(v84);
      *(v115 + v114) = v84;
    }

    v86 = v0[52];
    if (v86 < *(v84 + 2))
    {
      v87 = v0[47];
      v88 = v0[30];
      v89 = &v84[64 * v86];
      v90 = v125;
      *(v89 + 9) = v117;
      *(v89 + 10) = v90;
      *(v88 + v87) = v84;
      swift_endAccess();

      v0[29] = v88;
      swift_getKeyPath();
      ObservationRegistrar.didSet<A, B>(_:keyPath:)();

      goto LABEL_38;
    }

    __break(1u);
LABEL_65:
  }

  else
  {
LABEL_38:
    --v129;
    while (1)
    {
      v92 = v0[52] + 1;
      if (v92 == v0[48])
      {

        if (qword_10025A6E0 != -1)
        {
          goto LABEL_63;
        }

        goto LABEL_46;
      }

      v0[52] = v92;
      v11 = v0[46];
      v93 = v0[47];
      v94 = v0[30];
      swift_getKeyPath();
      v0[18] = v94;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v95 = *(v94 + v93);
      if (v92 >= *(v95 + 16))
      {
        __break(1u);
        goto LABEL_58;
      }

      v96 = *(v95 + (v92 << 6) + 64);
      if (v96 != 1 && v96 != 2)
      {
        break;
      }

      v91 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v91)
      {
        goto LABEL_53;
      }
    }

LABEL_53:
    v105 = v0[47];
    v106 = v0[30];
    swift_getKeyPath();
    v0[19] = v106;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v107 = *(v106 + v105);
    if (v92 >= *(v107 + 16))
    {
      goto LABEL_62;
    }

    v108 = v107 + (v92 << 6);
    v110 = *(v108 + 48);
    v109 = *(v108 + 56);
    v0[53] = v109;

    v111 = swift_task_alloc();
    v0[54] = v111;
    *v111 = v0;
    v111[1] = sub_10008D418;

    return sub_1000C9E44(v110, v109);
  }
}

uint64_t sub_10008E5A8()
{
  if (qword_10025A6E0 != -1)
  {
LABEL_23:
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000F34C(v1, qword_100276F08);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v28 = v1;
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "failed to get user info: %@", v4, 0xCu);
    sub_10000F500(v5, &unk_10025D580, &qword_1001CFA60);
  }

  else
  {
  }

  while (1)
  {
    v8 = v0[52] + 1;
    if (v8 == v0[48])
    {
      break;
    }

    v0[52] = v8;
    v9 = v0[47];
    v10 = v0[30];
    swift_getKeyPath();
    v0[18] = v10;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v11 = *(v10 + v9);
    if (v8 >= *(v11 + 16))
    {
      __break(1u);
      goto LABEL_23;
    }

    v12 = *(v11 + (v8 << 6) + 64);
    if (v12 != 1 && v12 != 2)
    {

LABEL_18:
      v21 = v0[47];
      v22 = v0[30];
      swift_getKeyPath();
      v0[19] = v22;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v23 = *(v22 + v21);
      if (v8 < *(v23 + 16))
      {
        v24 = v23 + (v8 << 6);
        v25 = *(v24 + 48);
        v26 = *(v24 + 56);
        v0[53] = v26;

        v27 = swift_task_alloc();
        v0[54] = v27;
        *v27 = v0;
        v27[1] = sub_10008D418;

        return sub_1000C9E44(v25, v26);
      }

      __break(1u);
      goto LABEL_25;
    }

    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      goto LABEL_18;
    }
  }

  if (qword_10025A6E0 == -1)
  {
    goto LABEL_12;
  }

LABEL_25:
  swift_once();
LABEL_12:
  sub_10000F34C(v28, qword_100276F08);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "search tool finished; setting current search tool query ID to nil", v15, 2u);
  }

  v16 = v0[38];
  v17 = v0[32];
  v18 = v0[33];

  (*(v18 + 56))(v16, 1, 1, v17);
  sub_1000742F0(v16);

  v19 = v0[1];

  return v19();
}

uint64_t sub_10008EAC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v5 = sub_10000341C(&unk_10025B5D0, &qword_1001D05A0);
  __chkstk_darwin(v5 - 8);
  v59 = &v49 - v6;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v58 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v10);
  v13 = &v49 - v12;
  __chkstk_darwin(v11);
  v15 = &v49 - v14;
  v16 = sub_10000341C(&unk_100262450, &qword_1001CFAA0);
  v17 = __chkstk_darwin(v16 - 8);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v49 - v20;
  UUID.init()();
  (*(v8 + 56))(v21, 0, 1, v7);
  sub_1000744CC(v21);
  swift_getKeyPath();
  v63[1] = v4;
  sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v22 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__currentSlotQueryRequestID;
  swift_beginAccess();
  sub_1000081F8(v4 + v22, v19, &unk_100262450, &qword_1001CFAA0);
  result = (*(v8 + 48))(v19, 1, v7);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v57 = v4;
    v54 = *(v8 + 32);
    v55 = v8 + 32;
    v54(v15, v19, v7);
    v24 = v15;
    if (qword_10025A6E0 != -1)
    {
      swift_once();
    }

    v56 = v9;
    v25 = type metadata accessor for Logger();
    sub_10000F34C(v25, qword_100276F08);
    v26 = *(v8 + 16);
    v26(v13, v24, v7);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();
    v29 = os_log_type_enabled(v27, v28);
    v53 = v8;
    if (v29)
    {
      v30 = swift_slowAlloc();
      v50 = v24;
      v31 = v30;
      v32 = swift_slowAlloc();
      v63[0] = v32;
      *v31 = 136315138;
      v33 = UUID.uuidString.getter();
      v49 = v26;
      v35 = v34;
      v36 = *(v8 + 8);
      v51 = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v52 = v36;
      v36(v13, v7);
      v37 = sub_10002510C(v33, v35, v63);
      v26 = v49;

      *(v31 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v27, v28, "starting a new slot query request with UUID %s", v31, 0xCu);
      sub_10000F4B4(v32);

      v24 = v50;
    }

    else
    {

      v38 = *(v8 + 8);
      v51 = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v52 = v38;
      v38(v13, v7);
    }

    v39 = type metadata accessor for TaskPriority();
    v40 = v59;
    (*(*(v39 - 8) + 56))(v59, 1, 1, v39);
    v41 = v58;
    v26(v58, v24, v7);
    type metadata accessor for MainActor();
    v42 = v57;

    v43 = v24;
    v44 = v60;

    v45 = v62;

    v46 = static MainActor.shared.getter();
    v47 = (*(v53 + 80) + 64) & ~*(v53 + 80);
    v48 = swift_allocObject();
    *(v48 + 2) = v46;
    *(v48 + 3) = &protocol witness table for MainActor;
    *(v48 + 4) = v42;
    *(v48 + 5) = v44;
    *(v48 + 6) = v61;
    *(v48 + 7) = v45;
    v54(&v48[v47], v41, v7);
    sub_10015C9C8(0, 0, v40, &unk_1001D4138, v48);

    return v52(v43, v7);
  }

  return result;
}

uint64_t sub_10008F098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[21] = a7;
  v8[22] = a8;
  v8[19] = a5;
  v8[20] = a6;
  v8[18] = a4;
  v9 = type metadata accessor for UUID();
  v8[23] = v9;
  v8[24] = *(v9 - 8);
  v8[25] = swift_task_alloc();
  v8[26] = swift_task_alloc();
  v8[27] = sub_10000341C(&qword_10025F358, &qword_1001D4140);
  v8[28] = swift_task_alloc();
  sub_10000341C(&unk_100262450, &qword_1001CFAA0);
  v8[29] = swift_task_alloc();
  v8[30] = swift_task_alloc();
  v8[31] = swift_task_alloc();
  v8[32] = swift_task_alloc();
  type metadata accessor for MainActor();
  v8[33] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v8[34] = v11;
  v8[35] = v10;

  return _swift_task_switch(sub_10008F238, v11, v10);
}

uint64_t sub_10008F238()
{
  v1 = v0[18];
  swift_getKeyPath();
  v2 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel___observationRegistrar;
  v0[11] = v1;
  v0[36] = v2;
  v0[37] = sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(v1 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__slotParser);
  v0[38] = v3;
  if (v3)
  {

    v4 = swift_task_alloc();
    v0[39] = v4;
    *v4 = v0;
    v4[1] = sub_10008F4B4;
    v5 = v0[20];
    v6 = v0[21];
    v7 = v0[19];

    return sub_1000A0C90(v7, v5, v6);
  }

  else
  {

    if (qword_10025A6E0 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000F34C(v9, qword_100276F08);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "slots were found in the response, but slot parser is nil", v12, 2u);
    }

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_10008F4B4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 320) = a1;
  *(v4 + 328) = v1;

  v5 = *(v3 + 280);
  v6 = *(v3 + 272);
  if (v1)
  {
    v7 = sub_1000902E4;
  }

  else
  {
    v7 = sub_10008F5F8;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_10008F5F8(uint64_t a1, uint64_t a2)
{
  v105 = v2;
  v3 = *(v2 + 32);
  v4 = *(v2 + 28);
  v102 = *(v2 + 27);
  v6 = *(v2 + 23);
  v5 = *(v2 + 24);
  v7 = *(v2 + 22);
  v8 = *(v2 + 18);

  v100 = *(v5 + 16);
  v100(v3, v7, v6);
  (*(v5 + 56))(v3, 0, 1, v6);
  swift_getKeyPath();
  *(v2 + 12) = v8;
  ObservationRegistrar.access<A, B>(_:keyPath:)();
  v9 = v5;

  v10 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__currentSlotQueryRequestID;
  swift_beginAccess();
  v11 = *(v102 + 48);
  sub_1000081F8(v3, v4, &unk_100262450, &qword_1001CFAA0);
  v103 = v8;
  v97 = v10;
  sub_1000081F8(&v8[v10], v4 + v11, &unk_100262450, &qword_1001CFAA0);
  v12 = *(v9 + 48);
  v101 = v2;
  if ((v12)(v4, 1, v6) == 1)
  {
    v13 = *(v2 + 23);
    sub_10000F500(*(v2 + 32), &unk_100262450, &qword_1001CFAA0);
    if ((v12)(v4 + v11, 1, v13) == 1)
    {
      sub_10000F500(*(v2 + 28), &unk_100262450, &qword_1001CFAA0);
      goto LABEL_14;
    }

    goto LABEL_7;
  }

  v14 = *(v2 + 23);
  sub_1000081F8(*(v2 + 28), *(v2 + 31), &unk_100262450, &qword_1001CFAA0);
  if ((v12)(v4 + v11, 1, v14) == 1)
  {
    v16 = *(v2 + 31);
    v15 = *(v2 + 32);
    v17 = *(v2 + 23);
    v18 = *(v2 + 24);

    sub_10000F500(v15, &unk_100262450, &qword_1001CFAA0);
    (*(v18 + 8))(v16, v17);
LABEL_7:
    sub_10000F500(*(v2 + 28), &qword_10025F358, &qword_1001D4140);
    goto LABEL_8;
  }

  v42 = *(v2 + 31);
  v41 = *(v2 + 32);
  v94 = *(v2 + 28);
  v43 = *(v2 + 26);
  v44 = *(v2 + 23);
  v45 = *(v2 + 24);
  (*(v45 + 32))(v43, v4 + v11, v44);
  sub_1000997E0(&unk_10025F360, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v46 = dispatch thunk of static Equatable.== infix(_:_:)();
  v47 = *(v45 + 8);
  v47(v43, v44);
  sub_10000F500(v41, &unk_100262450, &qword_1001CFAA0);
  v47(v42, v44);
  sub_10000F500(v94, &unk_100262450, &qword_1001CFAA0);
  if ((v46 & 1) == 0)
  {

LABEL_8:
    if (qword_10025A6E0 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_50;
  }

LABEL_14:
  if (qword_10025A6E0 != -1)
  {
    swift_once();
  }

  v89 = type metadata accessor for Logger();
  sub_10000F34C(v89, qword_100276F08);

  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.default.getter();

  v12 = "CompositionModelSuggestionsView";
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v104 = v51;
    *v50 = 136642819;
    v52 = Array.description.getter();
    v54 = sub_10002510C(v52, v53, &v104);

    *(v50 + 4) = v54;
    _os_log_impl(&_mh_execute_header, v48, v49, "slot queries: %{sensitive}s", v50, 0xCu);
    sub_10000F4B4(v51);
  }

  v55 = *(v2 + 40);
  v96 = *(v55 + 16);
  if (v96)
  {
    v95 = v55 + 32;
    loga = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__slots;
    v100 = *(v2 + 18);
    swift_beginAccess();
    v56 = 0;
    v91 = v55;
    while (v56 < *(v55 + 16))
    {
      v57 = *(v2 + 18);
      v58 = (v95 + 32 * v56);
      v60 = *v58;
      v59 = v58[1];
      v61 = v58[3];
      v97 = v58[2];
      swift_getKeyPath();
      *(v2 + 14) = v57;

      v103 = v61;

      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v62 = *(&loga->isa + v100);
      v63 = *(v62 + 16);
      if (v63)
      {
        v12 = 0;
        v64 = 0;
        while (1)
        {
          v65 = *&v12[v62 + 32] == v60 && *&v12[v62 + 40] == v59;
          if (v65 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          ++v64;
          v12 += 64;
          if (v63 == v64)
          {
            goto LABEL_31;
          }
        }

        v71 = *(v2 + 18);
        swift_getKeyPath();
        *(v2 + 15) = v71;

        ObservationRegistrar.access<A, B>(_:keyPath:)();

        *(v2 + 16) = v71;
        swift_getKeyPath();
        ObservationRegistrar.willSet<A, B>(_:keyPath:)();

        v2 = v100;
        swift_beginAccess();
        v72 = *(&loga->isa + v100);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(&loga->isa + v100) = v72;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v72 = sub_10017E494(v72);
          *(&loga->isa + v100) = v72;
        }

        if (v64 >= *(v72 + 2))
        {
          goto LABEL_49;
        }

        v74 = *(v101 + 18);
        v75 = &v12[v72];
        v12 = v103;
        *(v75 + 6) = v97;
        *(v75 + 7) = v103;
        *(&loga->isa + v100) = v72;
        swift_endAccess();

        *(v101 + 17) = v74;
        swift_getKeyPath();
        v2 = v101;
        ObservationRegistrar.didSet<A, B>(_:keyPath:)();

        v55 = v91;
      }

      else
      {
LABEL_31:

        v12 = v103;

        v66 = Logger.logObject.getter();
        v67 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v66, v67))
        {
          v68 = swift_slowAlloc();
          v69 = swift_slowAlloc();
          v104 = v69;
          *v68 = 136642819;

          v70 = sub_10002510C(v60, v59, &v104);

          *(v68 + 4) = v70;
          v55 = v91;
          v2 = v101;
          _os_log_impl(&_mh_execute_header, v66, v67, "got slot query for %{sensitive}s, but no slot found", v68, 0xCu);
          sub_10000F4B4(v69);
        }

        else
        {
        }
      }

      if (++v56 == v96)
      {
        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    swift_once();
LABEL_9:
    v19 = *(v2 + 25);
    v21 = *(v2 + 22);
    v20 = *(v2 + 23);
    v22 = type metadata accessor for Logger();
    sub_10000F34C(v22, qword_100276F08);
    v100(v19, v21, v20);

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v93 = v24;
      log = v23;
      v92 = *(v2 + 30);
      v26 = *(v2 + 24);
      v25 = *(v2 + 25);
      v27 = *(v101 + 23);
      v28 = *(v101 + 18);
      v29 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      *v29 = 136315394;
      v30 = UUID.uuidString.getter();
      v32 = v31;
      v90 = *(v26 + 8);
      v90(v25, v27);
      v33 = sub_10002510C(v30, v32, &v104);

      *(v29 + 4) = v33;
      *(v29 + 12) = 2080;
      swift_getKeyPath();
      *(v101 + 13) = v28;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      sub_1000081F8(&v103[v97], v92, &unk_100262450, &qword_1001CFAA0);
      v2 = v101;
      v34 = (v12)(v92, 1, v27);
      v35 = *(v101 + 30);
      if (v34)
      {
        sub_10000F500(*(v101 + 30), &unk_100262450, &qword_1001CFAA0);
        v36 = 0xE300000000000000;
        v37 = 7104878;
      }

      else
      {
        v82 = *(v101 + 26);
        v83 = *(v101 + 23);
        v100(v82, *(v101 + 30), v83);
        sub_10000F500(v35, &unk_100262450, &qword_1001CFAA0);
        v84 = UUID.uuidString.getter();
        v36 = v85;
        v90(v82, v83);
        v37 = v84;
      }

      v86 = sub_10002510C(v37, v36, &v104);

      *(v29 + 14) = v86;
      _os_log_impl(&_mh_execute_header, log, v93, "user already ignored or submitted their own input; returning (query ID is %s, current ID is %s)", v29, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      v39 = *(v2 + 24);
      v38 = *(v2 + 25);
      v40 = *(v2 + 23);

      (*(v39 + 8))(v38, v40);
    }

    goto LABEL_45;
  }

LABEL_37:

  sub_10008C6E4();
  if (qword_10025A6E0 != -1)
  {
    swift_once();
  }

  sub_10000F34C(v89, qword_100276F08);
  v76 = Logger.logObject.getter();
  v77 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v76, v77))
  {
    v78 = swift_slowAlloc();
    *v78 = 0;
    _os_log_impl(&_mh_execute_header, v76, v77, "got slot queries; setting current slot query request ID to nil", v78, 2u);
  }

  v79 = *(v2 + 29);
  v80 = *(v2 + 23);
  v81 = *(v2 + 24);

  (*(v81 + 56))(v79, 1, 1, v80);
  sub_1000744CC(v79);

LABEL_45:

  v87 = *(v2 + 1);

  return v87();
}

uint64_t sub_1000902E4(uint64_t a1, uint64_t a2)
{

  if (qword_10025A6E0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000F34C(v3, qword_100276F08);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "error generating slot queries: %@", v6, 0xCu);
    sub_10000F500(v7, &unk_10025D580, &qword_1001CFA60);
  }

  else
  {
  }

  if (qword_10025A6E0 != -1)
  {
    swift_once();
  }

  sub_10000F34C(v3, qword_100276F08);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "got slot queries; setting current slot query request ID to nil", v11, 2u);
  }

  v12 = v2[29];
  v13 = v2[23];
  v14 = v2[24];

  (*(v14 + 56))(v12, 1, 1, v13);
  sub_1000744CC(v12);

  v15 = v2[1];

  return v15();
}

uint64_t sub_1000905CC(char a1)
{
  *(v2 + 96) = v1;
  *(v2 + 232) = a1;
  sub_10000341C(&qword_10025F240, &qword_1001D3D58);
  *(v2 + 104) = swift_task_alloc();
  v3 = sub_10000341C(&qword_10025F2C0, qword_1001D3D68);
  *(v2 + 112) = v3;
  *(v2 + 120) = *(v3 - 8);
  *(v2 + 128) = swift_task_alloc();
  sub_10000341C(&unk_100262580, &qword_1001CFF70);
  *(v2 + 136) = swift_task_alloc();
  v4 = type metadata accessor for CompositionModel.Session(0);
  *(v2 + 144) = v4;
  *(v2 + 152) = *(v4 - 8);
  *(v2 + 160) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v2 + 168) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v2 + 176) = v6;
  *(v2 + 184) = v5;

  return _swift_task_switch(sub_10009079C, v6, v5);
}

uint64_t sub_10009079C()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v3 = *(v0 + 136);
  v4 = *(v0 + 96);
  swift_getKeyPath();
  *(v0 + 64) = v4;
  *(v0 + 192) = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel___observationRegistrar;
  *(v0 + 200) = sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__session;
  swift_beginAccess();
  sub_1000081F8(v4 + v5, v3, &unk_100262580, &qword_1001CFF70);
  v6 = (*(v2 + 48))(v3, 1, v1);
  v7 = *(v0 + 136);
  if (v6 == 1)
  {

    sub_10000F500(v7, &unk_100262580, &qword_1001CFF70);
    if (qword_10025A6E0 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000F34C(v8, qword_100276F08);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "no session", v11, 2u);
    }

    sub_100099280();
    v12 = swift_allocError();
    *v13 = xmmword_1001D3BC0;
    sub_100036BF0(v12);
    goto LABEL_20;
  }

  v14 = *(v0 + 160);
  sub_10009A774(*(v0 + 136), v14, type metadata accessor for CompositionModel.Session);
  v15 = *(v14 + 16);
  *(v0 + 208) = v15;
  if (!v15)
  {

    if (qword_10025A6E0 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_10000F34C(v27, qword_100276F08);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "no GES session", v30, 2u);
    }

    v31 = *(v0 + 160);

    sub_100099280();
    v32 = swift_allocError();
    *v33 = xmmword_1001D3BB0;
    sub_100036BF0(v32);
    v26 = v31;
    goto LABEL_19;
  }

  v16 = *(v0 + 112);
  v17 = *(v0 + 120);
  v18 = *(v0 + 104);
  sub_1000081F8(*(v0 + 160) + *(*(v0 + 144) + 28), v18, &qword_10025F240, &qword_1001D3D58);
  if ((*(v17 + 48))(v18, 1, v16) == 1)
  {
    v19 = *(v0 + 104);

    sub_10000F500(v19, &qword_10025F240, &qword_1001D3D58);
    if (qword_10025A6E0 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_10000F34C(v20, qword_100276F08);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    v23 = os_log_type_enabled(v21, v22);
    v24 = *(v0 + 160);
    if (v23)
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "no continuation to call", v25, 2u);
    }

    v26 = v24;
LABEL_19:
    sub_100099074(v26);
LABEL_20:

    v34 = *(v0 + 8);

    return v34();
  }

  (*(*(v0 + 120) + 32))(*(v0 + 128), *(v0 + 104), *(v0 + 112));

  v36 = swift_task_alloc();
  *(v0 + 216) = v36;
  *v36 = v0;
  v36[1] = sub_100090D38;
  v37 = *(v0 + 232);

  return sub_100093350(v15, v37);
}

uint64_t sub_100090D38()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  v3 = *(v2 + 184);
  v4 = *(v2 + 176);
  if (v0)
  {
    v5 = sub_100090FC8;
  }

  else
  {
    v5 = sub_100090E74;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100090E74(uint64_t a1, uint64_t a2)
{
  v3 = v2[12];

  swift_getKeyPath();
  v2[10] = v3;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__requestedInfoResponse;
  swift_beginAccess();
  v2[11] = *(v3 + v4);

  CheckedContinuation.resume(returning:)();
  v5 = v2[20];
  v7 = v2[15];
  v6 = v2[16];
  v8 = v2[14];
  sub_1000910BC(v2[12]);

  (*(v7 + 8))(v6, v8);
  sub_100099074(v5);

  v9 = v2[1];

  return v9();
}

uint64_t sub_100090FC8(uint64_t a1, uint64_t a2)
{
  v3 = v2[28];

  v2[9] = v3;
  CheckedContinuation.resume(throwing:)();
  v4 = v2[20];
  v6 = v2[15];
  v5 = v2[16];
  v7 = v2[14];
  sub_1000910BC(v2[12]);

  (*(v6 + 8))(v5, v7);
  sub_100099074(v4);

  v8 = v2[1];

  return v8();
}

uint64_t sub_1000910BC(uint64_t a1)
{
  v2 = sub_10000341C(&unk_100262580, &qword_1001CFF70);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v17 - v6;
  v8 = sub_10000341C(&qword_10025F240, &qword_1001D3D58);
  __chkstk_darwin(v8 - 8);
  v10 = &v17 - v9;
  v11 = sub_10000341C(&qword_10025F2C0, qword_1001D3D68);
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  swift_getKeyPath();
  v20 = a1;
  sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v20 = a1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v12 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__session;
  swift_beginAccess();
  sub_1000081F8(a1 + v12, v7, &unk_100262580, &qword_1001CFF70);
  v13 = type metadata accessor for CompositionModel.Session(0);
  result = (*(*(v13 - 8) + 48))(v7, 1, v13);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_10009AAB8(v10, &v7[*(v13 + 28)], &qword_10025F240, &qword_1001D3D58);
    sub_1000081F8(a1 + v12, v5, &unk_100262580, &qword_1001CFF70);
    swift_beginAccess();
    sub_10009AB44(v7, a1 + v12, &unk_100262580, &qword_1001CFF70);
    swift_endAccess();
    sub_100079808(v5);
    sub_10000F500(v5, &unk_100262580, &qword_1001CFF70);
    sub_10000F500(v7, &unk_100262580, &qword_1001CFF70);
    v19 = a1;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();

    swift_getKeyPath();
    v19 = a1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v19 = a1;
    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    v15 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__requestedInfoResponse;
    swift_beginAccess();
    *(a1 + v15) = &_swiftEmptyDictionarySingleton;

    v18 = a1;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();

    swift_getKeyPath();
    v18 = a1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v18 = a1;
    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    v16 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__slots;
    swift_beginAccess();
    *(a1 + v16) = _swiftEmptyArrayStorage;

    v17 = a1;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();
  }

  return result;
}

uint64_t sub_100091570(char a1)
{
  *(v2 + 528) = v1;
  *(v2 + 744) = a1;
  type metadata accessor for JSONEncoder.OutputFormatting();
  *(v2 + 536) = swift_task_alloc();
  sub_10000341C(&unk_100262580, &qword_1001CFF70);
  *(v2 + 544) = swift_task_alloc();
  v3 = type metadata accessor for CompositionModel.Session(0);
  *(v2 + 552) = v3;
  *(v2 + 560) = *(v3 - 8);
  *(v2 + 568) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v2 + 576) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v2 + 584) = v5;
  *(v2 + 592) = v4;

  return _swift_task_switch(sub_1000916D0, v5, v4);
}

uint64_t sub_1000916D0(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 744) == 1)
  {
    v3 = *(v2 + 528);

    swift_getKeyPath();
    *(v2 + 464) = v3;
    sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    *(v2 + 472) = v3;
    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    v4 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__requestedInfoResponse;
    swift_beginAccess();
    *(v3 + v4) = &_swiftEmptyDictionarySingleton;

    *(v2 + 488) = v3;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();

    swift_getKeyPath();
    *(v2 + 496) = v3;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    *(v2 + 504) = v3;
    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    v5 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__slots;
    swift_beginAccess();
    *(v3 + v5) = _swiftEmptyArrayStorage;

    *(v2 + 520) = v3;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();

LABEL_18:

    v30 = *(v2 + 8);

    return v30();
  }

  v6 = *(v2 + 560);
  v7 = *(v2 + 552);
  v8 = *(v2 + 544);
  v9 = *(v2 + 528);
  swift_getKeyPath();
  *(v2 + 600) = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel___observationRegistrar;
  *(v2 + 344) = v9;
  *(v2 + 608) = sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v10 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__session;
  swift_beginAccess();
  sub_1000081F8(v9 + v10, v8, &unk_100262580, &qword_1001CFF70);
  v11 = (*(v6 + 48))(v8, 1, v7);
  v12 = *(v2 + 544);
  if (v11 == 1)
  {

    sub_10000F500(v12, &unk_100262580, &qword_1001CFF70);
    if (qword_10025A6E0 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_10000F34C(v13, qword_100276F08);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "no session", v16, 2u);
    }

    sub_100099280();
    v17 = swift_allocError();
    *v18 = xmmword_1001D3BC0;
    sub_100036BF0(v17);
    goto LABEL_18;
  }

  v19 = *(v2 + 568);
  sub_10009A774(*(v2 + 544), v19, type metadata accessor for CompositionModel.Session);
  v20 = *(v19 + 16);
  *(v2 + 616) = v20;
  if (!v20)
  {

    if (qword_10025A6E0 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_10000F34C(v23, qword_100276F08);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "no GES session", v26, 2u);
    }

    v27 = *(v2 + 568);

    sub_100099280();
    v28 = swift_allocError();
    *v29 = xmmword_1001D3BB0;
    sub_100036BF0(v28);
    sub_100099074(v27);
    goto LABEL_18;
  }

  v21 = swift_task_alloc();
  *(v2 + 624) = v21;
  *v21 = v2;
  v21[1] = sub_100091CC4;

  return sub_100093350(v20, 0);
}

uint64_t sub_100091CC4()
{
  v2 = *v1;
  *(*v1 + 632) = v0;

  v3 = *(v2 + 592);
  v4 = *(v2 + 584);
  if (v0)
  {
    v5 = sub_100092C20;
  }

  else
  {
    v5 = sub_100091E00;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100091E00()
{
  v31 = v0;
  v1 = *(v0 + 528);
  v2 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__state;
  *(v0 + 640) = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__state;
  if (*(v1 + v2) != 1)
  {
    v3 = *(v0 + 632);
    swift_getKeyPath();
    v5 = swift_task_alloc();
    *(v5 + 16) = v1;
    *(v5 + 24) = 1;
    *(v0 + 368) = v1;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v4 = sub_1000713A0();
    if (!v4)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = *(v0 + 632);
  v4 = sub_1000713A0();
  if (v4)
  {
LABEL_5:
    [v4 writingToolsSession:**(v0 + 568) didReceiveAction:3];
    swift_unknownObjectRelease();
  }

LABEL_6:
  v6 = *(v0 + 528);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  *(v0 + 648) = JSONEncoder.init()();
  static JSONEncoder.OutputFormatting.prettyPrinted.getter();
  dispatch thunk of JSONEncoder.outputFormatting.setter();
  swift_getKeyPath();
  *(v0 + 360) = v6;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__requestedInfoResponse;
  swift_beginAccess();
  *(v0 + 352) = *(v6 + v7);
  sub_10004DBF8();

  v8 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  *(v0 + 656) = v8;
  *(v0 + 664) = v9;
  if (v3)
  {

    v10 = *(v0 + 528);
    swift_getKeyPath();
    *(v0 + 512) = v10;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    *(v0 + 480) = v10;
    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    v11 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__requestedInfoResponse;
    swift_beginAccess();
    *(v10 + v11) = &_swiftEmptyDictionarySingleton;

    *(v0 + 456) = v10;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();

    swift_getKeyPath();
    *(v0 + 440) = v10;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    *(v0 + 424) = v10;
    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    v12 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__slots;
    swift_beginAccess();
    *(v10 + v12) = _swiftEmptyArrayStorage;

    *(v0 + 376) = v10;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();

    swift_errorRetain();
    sub_100036BF0(v3);

    sub_100099074(*(v0 + 568));

    v13 = *(v0 + 8);

    return v13();
  }

  v15 = v8;
  v16 = v9;

  sub_10004DC4C(v15, v16);
  v17 = sub_100097014(v15, v16);
  if (v18)
  {
    goto LABEL_17;
  }

  *(v0 + 328) = v15;
  *(v0 + 336) = v16;
  sub_10004DC4C(v15, v16);
  sub_10000341C(&qword_10025F350, &unk_1001D40F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(v0 + 96) = 0;
    *(v0 + 64) = 0u;
    *(v0 + 80) = 0u;
    sub_10000F500(v0 + 64, &qword_10025CC40, &qword_1001D1FD0);
LABEL_16:
    v17 = sub_100095E84(v15, v16);
LABEL_17:
    v19 = v17;
    v20 = v18;
    sub_10004DD08(v15, v16);
    goto LABEL_18;
  }

  sub_100008198((v0 + 64), v0 + 104);
  sub_100027874((v0 + 104), *(v0 + 128));
  if ((dispatch thunk of _HasContiguousBytes._providesContiguousBytesNoCopy.getter() & 1) == 0)
  {
    sub_10000F4B4((v0 + 104));
    goto LABEL_16;
  }

  sub_10004DD08(v15, v16);
  sub_100027874((v0 + 104), *(v0 + 128));
  dispatch thunk of _HasContiguousBytes.withUnsafeBytes<A>(_:)();
  v19 = *(v0 + 312);
  v20 = *(v0 + 320);
  sub_10000F4B4((v0 + 104));
LABEL_18:
  *(v0 + 672) = v20;
  if (qword_10025A6E0 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_10000F34C(v21, qword_100276F08);

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v30 = v25;
    *v24 = 136642819;
    *(v24 + 4) = sub_10002510C(v19, v20, &v30);
    _os_log_impl(&_mh_execute_header, v22, v23, "sending slot filling info to model: %{sensitive}s", v24, 0xCu);
    sub_10000F4B4(v25);
  }

  v29 = *(v0 + 616);
  v26 = *(v0 + 528);
  swift_getKeyPath();
  *(v0 + 384) = v26;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *(v0 + 392) = v26;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  *(v6 + v7) = &_swiftEmptyDictionarySingleton;

  *(v0 + 400) = v26;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  swift_getKeyPath();
  *(v0 + 408) = v26;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *(v0 + 416) = v26;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v27 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__slots;
  swift_beginAccess();
  *(v26 + v27) = _swiftEmptyArrayStorage;

  *(v0 + 432) = v26;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  v28 = swift_task_alloc();
  *(v0 + 680) = v28;
  *v28 = v0;
  v28[1] = sub_100092670;

  return sub_10008569C(v0 + 16, v29, v19, v20);
}

uint64_t sub_100092670()
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  v3[86] = v0;
  v14 = v2[2];
  v5 = v2[3];
  v3[87] = v5;
  v6 = v2[4];
  v3[88] = v6;
  v7 = v2[5];
  v3[89] = v7;
  v8 = v2[6];
  v9 = v2[7];
  v3[90] = v9;

  if (v0)
  {
    v10 = v3[74];
    v11 = v3[73];

    return _swift_task_switch(sub_100092E70, v11, v10);
  }

  else
  {
    v12 = swift_task_alloc();
    v3[91] = v12;
    *v12 = v4;
    v12[1] = sub_1000928D0;

    return sub_1000897EC(v14, v5, v6, v7, v8, v9, 0, 0);
  }
}

uint64_t sub_1000928D0()
{
  v2 = *v1;
  *(*v1 + 736) = v0;

  v3 = *(v2 + 592);
  v4 = *(v2 + 584);
  if (v0)
  {
    v5 = sub_1000930E0;
  }

  else
  {
    v5 = sub_100092A80;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100092A80(uint64_t a1, uint64_t a2)
{
  v3 = v2[80];
  v4 = v2[66];

  if (*(v4 + v3))
  {
    v14 = v2[83];
    v5 = v2[82];
    v6 = v2[66];
    swift_getKeyPath();
    v7 = swift_task_alloc();
    *(v7 + 16) = v6;
    *(v7 + 24) = 0;
    v2[56] = v6;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    sub_10004DD08(v5, v14);
  }

  else
  {
    v8 = v2[83];
    v9 = v2[82];
    v10 = v2[80];
    v11 = v2[66];

    sub_10004DD08(v9, v8);
    *(v11 + v10) = 0;
  }

  sub_100099074(v2[71]);

  v12 = v2[1];

  return v12();
}

uint64_t sub_100092C20(uint64_t a1, uint64_t a2)
{

  v3 = v2[79];
  v4 = v2[66];
  swift_getKeyPath();
  v2[64] = v4;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2[60] = v4;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v5 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__requestedInfoResponse;
  swift_beginAccess();
  *(v4 + v5) = &_swiftEmptyDictionarySingleton;

  v2[57] = v4;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  swift_getKeyPath();
  v2[55] = v4;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2[53] = v4;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v6 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__slots;
  swift_beginAccess();
  *(v4 + v6) = _swiftEmptyArrayStorage;

  v2[47] = v4;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  swift_errorRetain();
  sub_100036BF0(v3);

  sub_100099074(v2[71]);

  v7 = v2[1];

  return v7();
}

uint64_t sub_100092E70(uint64_t a1, uint64_t a2)
{
  v3 = v2[83];
  v4 = v2[82];

  sub_10004DD08(v4, v3);

  v5 = v2[86];
  v6 = v2[66];
  swift_getKeyPath();
  v2[64] = v6;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2[60] = v6;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v7 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__requestedInfoResponse;
  swift_beginAccess();
  *(v6 + v7) = &_swiftEmptyDictionarySingleton;

  v2[57] = v6;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  swift_getKeyPath();
  v2[55] = v6;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2[53] = v6;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v8 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__slots;
  swift_beginAccess();
  *(v6 + v8) = _swiftEmptyArrayStorage;

  v2[47] = v6;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  swift_errorRetain();
  sub_100036BF0(v5);

  sub_100099074(v2[71]);

  v9 = v2[1];

  return v9();
}

uint64_t sub_1000930E0(uint64_t a1, uint64_t a2)
{
  v3 = v2[83];
  v4 = v2[82];

  sub_10004DD08(v4, v3);

  v5 = v2[92];
  v6 = v2[66];
  swift_getKeyPath();
  v2[64] = v6;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2[60] = v6;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v7 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__requestedInfoResponse;
  swift_beginAccess();
  *(v6 + v7) = &_swiftEmptyDictionarySingleton;

  v2[57] = v6;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  swift_getKeyPath();
  v2[55] = v6;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2[53] = v6;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v8 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__slots;
  swift_beginAccess();
  *(v6 + v8) = _swiftEmptyArrayStorage;

  v2[47] = v6;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  swift_errorRetain();
  sub_100036BF0(v5);

  sub_100099074(v2[71]);

  v9 = v2[1];

  return v9();
}

uint64_t sub_100093350(uint64_t a1, char a2)
{
  *(v3 + 232) = a2;
  *(v3 + 160) = a1;
  *(v3 + 168) = v2;
  sub_10000341C(&unk_100262450, &qword_1001CFAA0);
  *(v3 + 176) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v3 + 184) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v3 + 192) = v5;
  *(v3 + 200) = v4;

  return _swift_task_switch(sub_100093424, v5, v4);
}

uint64_t sub_100093424(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 232) == 1)
  {
    v3 = *(v2 + 168);

    swift_getKeyPath();
    *(v2 + 128) = v3;
    sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    *(v2 + 136) = v3;
    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    v4 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__requestedInfoResponse;
    swift_beginAccess();
    *(v3 + v4) = &_swiftEmptyDictionarySingleton;

    *(v2 + 144) = v3;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();

    swift_getKeyPath();
    *(v2 + 152) = v3;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    sub_1001734FC();

    if (qword_10025A6E0 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000F34C(v5, qword_100276F08);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "user sent requested info; setting current search tool query and slot query request IDs to nil", v8, 2u);
    }

    v9 = *(v2 + 176);

    v10 = type metadata accessor for UUID();
    v11 = *(*(v10 - 8) + 56);
    v11(v9, 1, 1, v10);
    sub_1000742F0(v9);
    v11(v9, 1, 1, v10);
    sub_1000744CC(v9);

    v12 = *(v2 + 8);

    return v12();
  }

  else
  {
    v14 = *(v2 + 168);
    swift_getKeyPath();
    *(v2 + 88) = v14;
    sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v15 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__slots;
    swift_beginAccess();
    v16 = *(*(v14 + v15) + 16);
    if (v16)
    {
      v17 =  + 88;
      do
      {
        v18 = *(v2 + 168);
        v19 = *(v17 - 48);
        v25 = *(v17 - 56);
        v23 = *(v17 - 8);
        v24 = *(v17 - 16);
        v17 += 64;
        swift_getKeyPath();
        *(v2 + 96) = v18;

        ObservationRegistrar.access<A, B>(_:keyPath:)();

        *(v2 + 104) = v18;
        swift_getKeyPath();
        ObservationRegistrar.willSet<A, B>(_:keyPath:)();

        swift_beginAccess();
        sub_100093E98(v24, v23, v25, v19);
        swift_endAccess();
        *(v2 + 112) = v18;
        swift_getKeyPath();
        ObservationRegistrar.didSet<A, B>(_:keyPath:)();

        --v16;
      }

      while (v16);
    }

    v20 = *(v2 + 168);
    swift_getKeyPath();
    *(v2 + 120) = v20;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    *(v2 + 208) = *(v20 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__attachmentManager);

    v21 = swift_task_alloc();
    *(v2 + 216) = v21;
    *v21 = v2;
    v21[1] = sub_100093A20;
    v22 = *(v2 + 160);

    return sub_100170B3C(v22);
  }
}

uint64_t sub_100093A20()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v3 = *(v2 + 192);
    v4 = *(v2 + 200);
    v5 = sub_100093CE0;
  }

  else
  {

    v3 = *(v2 + 192);
    v4 = *(v2 + 200);
    v5 = sub_100093B3C;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100093B3C(uint64_t a1, uint64_t a2)
{

  if (qword_10025A6E0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000F34C(v3, qword_100276F08);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "user sent requested info; setting current search tool query and slot query request IDs to nil", v6, 2u);
  }

  v7 = *(v2 + 176);

  v8 = type metadata accessor for UUID();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 1, 1, v8);
  sub_1000742F0(v7);
  v9(v7, 1, 1, v8);
  sub_1000744CC(v7);

  v10 = *(v2 + 8);

  return v10();
}

uint64_t sub_100093CE0(uint64_t a1, uint64_t a2)
{

  if (qword_10025A6E0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000F34C(v3, qword_100276F08);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "failed to upload attachments: %@", v6, 0xCu);
    sub_10000F500(v7, &unk_10025D580, &qword_1001CFA60);
  }

  swift_willThrow();

  v9 = *(v2 + 8);

  return v9();
}

uint64_t sub_100093E98(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (qword_10025A6D8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000F34C(v8, qword_100276EF0);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v11 = 136643075;
    *(v11 + 4) = sub_10002510C(a3, a4, &v16);
    *(v11 + 12) = 2085;
    v17 = a1;
    v18 = a2;

    v12 = String.init<A>(describing:)();
    v14 = sub_10002510C(v12, v13, &v16);

    *(v11 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v9, v10, "adding value to requested info response: %{sensitive}s: %{sensitive}s", v11, 0x16u);
    swift_arrayDestroy();
  }

  v19 = &type metadata for String;
  v20 = &protocol witness table for String;
  v17 = a1;
  v18 = a2;

  return sub_10019D2B8(&v17, a3, a4);
}

uint64_t sub_1000940A8()
{
  swift_getKeyPath();
  sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__nonSelectedWordCount);
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__selectedWordCount);
  if (__OFADD__(v1, v3))
  {
    __break(1u);
  }

  else if (*(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__allWordCount) != v1 + v3)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_100094238()
{
  v1 = v0;
  v2 = sub_10000341C(&unk_10025B5D0, &qword_1001D05A0);
  __chkstk_darwin(v2 - 8);
  v4 = v11 - v3;
  type metadata accessor for GenerativeAssistantSettingsUserDefaults();
  v5 = static GenerativeAssistantSettingsUserDefaults.isEnabled()() & 1;
  if (v5 == *(v1 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__isFeatureEnabled))
  {
    *(v1 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__isFeatureEnabled) = v5;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v11[-2] = v1;
    LOBYTE(v11[-1]) = v5;
    v11[1] = v1;
    sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  type metadata accessor for MainActor();

  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = v1;
  sub_10015C9C8(0, 0, v4, &unk_1001D4018, v9);
}

uint64_t sub_10009445C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[5] = v6;
  v4[6] = v5;

  return _swift_task_switch(sub_1000944F4, v6, v5);
}

uint64_t sub_1000944F4()
{
  v1 = v0[3];
  swift_getKeyPath();
  v0[2] = v1;
  sub_1000997E0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v0[7] = *(v1 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__rateLimitModel);

  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_100094618;

  return sub_1000DF628();
}

uint64_t sub_100094618()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return _swift_task_switch(sub_10009475C, v3, v2);
}

uint64_t sub_10009475C(uint64_t a1, uint64_t a2)
{

  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_1000947BC()
{
  v1 = v0;
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v3 - 8);
  *(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__state) = 0;
  *(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__inclusionPolicy) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v4 = (v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__prompt);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  v5 = (v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__notice);
  *v5 = 0;
  v5[1] = 0;
  *(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__resultAttributedString) = 0;
  v6 = v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__resultAttributedStringRange;
  *v6 = 0;
  *(v6 + 8) = 0;
  *(v6 + 16) = 1;
  *(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__inputStringsForFeedback) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__promptStringsForFeedback) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__attachments) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__generatedImages) = _swiftEmptyArrayStorage;
  v7 = sub_1000971C0();
  v8 = (v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__modelInfoString);
  *v8 = v7;
  v8[1] = v9;
  v10 = v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__analyticsInstance;
  *(v10 + 32) = 0;
  *v10 = 0u;
  *(v10 + 16) = 0u;
  *(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__allowedResultOptions) = 0;
  type metadata accessor for AttachmentManager(0);
  v11 = swift_allocObject();
  *(v11 + 16) = _swiftEmptyArrayStorage;
  *(v11 + 24) = 0u;
  *(v11 + 40) = 0u;
  *(v11 + 56) = 0;
  *(v11 + 64) = _swiftEmptyArrayStorage;
  ObservationRegistrar.init()();
  *(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__attachmentManager) = v11;
  v12 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel_education;
  type metadata accessor for CompositionEducationModel(0);
  v13 = swift_allocObject();
  *(v13 + 16) = 0xD000000000000010;
  *(v13 + 24) = 0x80000001001E4C80;
  ObservationRegistrar.init()();
  v14 = [objc_allocWithZone(NSUserDefaults) init];
  v15 = String._bridgeToObjectiveC()();
  v16 = [v14 BOOLForKey:v15];

  *(v13 + 32) = v16;
  *(v0 + v12) = v13;
  *(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__refinements) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__slots) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__requestedInfoResponse) = sub_100006100(_swiftEmptyArrayStorage);
  *(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__selectedSlotSourceIds) = &_swiftEmptySetSingleton;
  *(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__slotParser) = 0;
  v17 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__currentSearchToolQueryID;
  v18 = type metadata accessor for UUID();
  v19 = *(*(v18 - 8) + 56);
  v19(v1 + v17, 1, 1, v18);
  v19(v1 + v17, 1, 1, v18);
  v20 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__currentSlotQueryRequestID;
  v19(v1 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__currentSlotQueryRequestID, 1, 1, v18);
  v19(v1 + v20, 1, 1, v18);
  type metadata accessor for GenerativeAssistantSettingsUserDefaults();
  *(v1 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__isFeatureEnabled) = static GenerativeAssistantSettingsUserDefaults.isEnabled()() & 1;
  type metadata accessor for CompositionRateLimitModel(0);
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  *(v21 + 24) = String.init(localized:table:bundle:locale:comment:)();
  *(v21 + 32) = v22;
  ObservationRegistrar.init()();
  *(v1 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__rateLimitModel) = v21;
  *(v1 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__wantsInlineEditing) = 1;
  *(v1 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__isForEditableContent) = 1;
  *(v1 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__nonInlineSupportResponse) = 0;
  *(v1 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__isWebKitView) = 0;
  *(v1 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__hasGeneratedResponseDrafts) = 0;
  *(v1 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__activeGeneratedResponseIndex) = 0;
  *(v1 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__isHandoff) = 0;
  v23 = v1 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__handoffOriginatorMode;
  *(v23 + 8) = 0;
  *(v23 + 16) = 0;
  *v23 = 0;
  *(v23 + 24) = -1;
  *(v1 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__showingOriginal) = 0;
  *(v1 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__allWordCount) = 0;
  *(v1 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__selectedWordCount) = 0;
  *(v1 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__nonSelectedWordCount) = 0;
  v24 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__session;
  v25 = type metadata accessor for CompositionModel.Session(0);
  v26 = *(*(v25 - 8) + 56);
  v26(v1 + v24, 1, 1, v25);
  v26(v1 + v24, 1, 1, v25);
  v27 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel_userInfoSearcher;
  type metadata accessor for UserInfoSearcher();
  swift_allocObject();
  *(v1 + v27) = sub_1000CBCB8();
  ObservationRegistrar.init()();
  swift_unknownObjectWeakInit();
  *(v1 + 49) = 0u;
  *(v1 + 40) = 0u;
  *(v1 + 24) = 0u;
  *(v1 + 80) = 0;
  *(v1 + 88) = 0;
  *(v1 + 72) = 0;
  *(v1 + 96) = -1;
  *(v1 + 104) = 0;
  *(v1 + 112) = 0;
  *(v1 + 120) = 0;
  *(v1 + 128) = 0;
  *(v1 + 136) = 0;
  *(v1 + 144) = 0;
  ObservationRegistrar.init()();
  return v1;
}

uint64_t sub_100094D98()
{
  sub_100037D88(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__delegate);

  sub_10000F500(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__analyticsInstance, &unk_10025B1C0, &unk_1001CFA90);

  sub_10000F500(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__currentSearchToolQueryID, &unk_100262450, &qword_1001CFAA0);
  sub_10000F500(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__currentSlotQueryRequestID, &unk_100262450, &qword_1001CFAA0);

  sub_1000278C0(*(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__handoffOriginatorMode), *(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__handoffOriginatorMode + 8), *(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__handoffOriginatorMode + 16), *(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__handoffOriginatorMode + 24));
  sub_10000F500(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__session, &unk_100262580, &qword_1001CFF70);

  v1 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t sub_100094FE0()
{
  v0 = ToolModel.deinit();
  sub_100037D88(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__delegate);

  sub_10000F500(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__analyticsInstance, &unk_10025B1C0, &unk_1001CFA90);

  sub_10000F500(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__currentSearchToolQueryID, &unk_100262450, &qword_1001CFAA0);
  sub_10000F500(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__currentSlotQueryRequestID, &unk_100262450, &qword_1001CFAA0);

  sub_1000278C0(*(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__handoffOriginatorMode), *(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__handoffOriginatorMode + 8), *(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__handoffOriginatorMode + 16), *(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__handoffOriginatorMode + 24));
  sub_10000F500(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__session, &unk_100262580, &qword_1001CFF70);

  v1 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_100095228()
{
  sub_100094FE0();

  return swift_deallocClassInstance();
}

void sub_1000952A4(uint64_t a1)
{
  sub_1000954B0(319, &qword_10025B060, &type metadata accessor for UUID);
  if (v1 <= 0x3F)
  {
    sub_1000954B0(319, &unk_10025E4C0, type metadata accessor for CompositionModel.Session);
    if (v2 <= 0x3F)
    {
      type metadata accessor for ObservationRegistrar();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1000954B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t getEnumTagSinglePayload for HandoffState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HandoffState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CompositionModel.State(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CompositionModel.State(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_100095800(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10000341C(&qword_10025F240, &qword_1001D3D58);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_1000958D0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_10000341C(&qword_10025F240, &qword_1001D3D58);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100095980(uint64_t a1)
{
  sub_1000081B0(319, &unk_10025D5F0, WTSession_ptr);
  if (v1 <= 0x3F)
  {
    sub_1000081B0(319, &unk_100262480, WTContext_ptr);
    if (v2 <= 0x3F)
    {
      sub_1000954B0(319, &qword_10025F2B0, &type metadata accessor for GenerativeExperiencesSession);
      if (v3 <= 0x3F)
      {
        sub_100095A90(319);
        if (v4 <= 0x3F)
        {
          sub_100095AF4(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100095A90(uint64_t a1)
{
  if (!qword_10025F2B8)
  {
    sub_100003E34(&qword_10025F2C0, qword_1001D3D68);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_10025F2B8);
    }
  }
}

void sub_100095AF4(uint64_t a1)
{
  if (!qword_10025F2C8)
  {
    sub_1000081B0(255, &qword_10025F2D0, NSAttributedString_ptr);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_10025F2C8);
    }
  }
}

unint64_t sub_100095B60()
{
  result = qword_10025F310;
  if (!qword_10025F310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025F310);
  }

  return result;
}

unint64_t sub_100095BB8()
{
  result = qword_10025F318;
  if (!qword_10025F318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025F318);
  }

  return result;
}

unint64_t sub_100095C54()
{
  result = qword_10025F330;
  if (!qword_10025F330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025F330);
  }

  return result;
}

Swift::Int sub_100095CA8(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10009FF24(v2);
  }

  v3 = v2[2];
  v18[0] = (v2 + 4);
  v18[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 4;
      do
      {
        v11 = v2[3 * v9 + 4];
        v12 = v8;
        v13 = v10;
        do
        {
          if (v11 >= *v13)
          {
            break;
          }

          v14 = *(v13 + 2);
          *(v13 + 3) = *v13;
          v13[5] = v13[2];
          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 3;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 3;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      sub_10000341C(&qword_10025F3D8, &qword_1001D4330);
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v16[0] = v7 + 4;
    v16[1] = v6;
    sub_100096004(v16, v17, v18, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

void *sub_100095E10(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_10000341C(&qword_10025BA00, &qword_1001D4100);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_100095E84(uint64_t a1, unint64_t a2)
{
  sub_10004DC4C(a1, a2);
  sub_100096E98(a1, a2);
  v4 = static String._fromUTF8Repairing(_:)();

  return v4;
}

uint64_t sub_100095EF0@<X0>(uint64_t *a3@<X8>)
{
  result = static String._fromUTF8Repairing(_:)();
  *a3 = result;
  a3[1] = v5;
  return result;
}

void sub_100095F2C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_10000341C(&qword_10025F4D8, &qword_1001D4650);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_100096004(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v92 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = _swiftEmptyArrayStorage;
LABEL_88:
    v93 = *v92;
    if (!*v92)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_10009FA94(v7);
      v7 = result;
    }

    v84 = v7 + 2;
    v85 = v7[2];
    if (v85 >= 2)
    {
      while (*a3)
      {
        v86 = &v7[2 * v85];
        v87 = *v86;
        v88 = &v84[2 * v85];
        v89 = v88[1];
        sub_1000965CC((*a3 + 24 * *v86), (*a3 + 24 * *v88), *a3 + 24 * v89, v93);
        if (v4)
        {
        }

        if (v89 < v87)
        {
          goto LABEL_114;
        }

        if (v85 - 2 >= *v84)
        {
          goto LABEL_115;
        }

        *v86 = v87;
        v86[1] = v89;
        v90 = *v84 - v85;
        if (*v84 < v85)
        {
          goto LABEL_116;
        }

        v85 = *v84 - 1;
        result = memmove(v88, v88 + 2, 16 * v90);
        *v84 = v85;
        if (v85 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  v91 = a4;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 24 * v6);
      v10 = 24 * v8;
      v11 = (*a3 + 24 * v8);
      v14 = *v11;
      v13 = v11 + 6;
      v12 = v14;
      v15 = v8 + 2;
      v16 = v9;
      while (v5 != v15)
      {
        v17 = *v13;
        v13 += 3;
        v18 = (v9 < v12) ^ (v17 >= v16);
        ++v15;
        v16 = v17;
        if ((v18 & 1) == 0)
        {
          v6 = v15 - 1;
          if (v9 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v9 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v19 = 0;
        v20 = 24 * v6;
        v21 = v8;
        do
        {
          if (v21 != v6 + v19 - 1)
          {
            v27 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v27 + v10);
            v23 = v27 + v20;
            v24 = *(v22 + 2);
            v25 = *v22;
            v26 = *(v23 - 8);
            *v22 = *(v23 - 24);
            *(v22 + 2) = v26;
            *(v23 - 24) = v25;
            *(v23 - 8) = v24;
          }

          ++v21;
          --v19;
          v20 -= 24;
          v10 += 24;
        }

        while (v21 < v6 + v19);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10009FBA4(0, v7[2] + 1, 1, v7);
      v7 = result;
    }

    v37 = v7[2];
    v36 = v7[3];
    v38 = v37 + 1;
    if (v37 >= v36 >> 1)
    {
      result = sub_10009FBA4((v36 > 1), v37 + 1, 1, v7);
      v7 = result;
    }

    v7[2] = v38;
    v39 = v7 + 4;
    v40 = &v7[2 * v37 + 4];
    *v40 = v8;
    v40[1] = v6;
    v93 = *v92;
    if (!*v92)
    {
      goto LABEL_127;
    }

    if (v37)
    {
      while (1)
      {
        v41 = v38 - 1;
        if (v38 >= 4)
        {
          break;
        }

        if (v38 == 3)
        {
          v42 = v7[4];
          v43 = v7[5];
          v52 = __OFSUB__(v43, v42);
          v44 = v43 - v42;
          v45 = v52;
LABEL_57:
          if (v45)
          {
            goto LABEL_104;
          }

          v58 = &v7[2 * v38];
          v60 = *v58;
          v59 = v58[1];
          v61 = __OFSUB__(v59, v60);
          v62 = v59 - v60;
          v63 = v61;
          if (v61)
          {
            goto LABEL_106;
          }

          v64 = &v39[2 * v41];
          v66 = *v64;
          v65 = v64[1];
          v52 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v52)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v62, v67))
          {
            goto LABEL_111;
          }

          if (v62 + v67 >= v44)
          {
            if (v44 < v67)
            {
              v41 = v38 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v38 < 2)
        {
          goto LABEL_112;
        }

        v68 = &v7[2 * v38];
        v70 = *v68;
        v69 = v68[1];
        v52 = __OFSUB__(v69, v70);
        v62 = v69 - v70;
        v63 = v52;
LABEL_72:
        if (v63)
        {
          goto LABEL_108;
        }

        v71 = &v39[2 * v41];
        v73 = *v71;
        v72 = v71[1];
        v52 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v52)
        {
          goto LABEL_110;
        }

        if (v74 < v62)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v41 - 1 >= v38)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v79 = &v39[2 * v41 - 2];
        v80 = *v79;
        v81 = &v39[2 * v41];
        v82 = v81[1];
        sub_1000965CC((*a3 + 24 * *v79), (*a3 + 24 * *v81), *a3 + 24 * v82, v93);
        if (v4)
        {
        }

        if (v82 < v80)
        {
          goto LABEL_99;
        }

        if (v41 > v7[2])
        {
          goto LABEL_100;
        }

        *v79 = v80;
        v79[1] = v82;
        v83 = v7[2];
        if (v41 >= v83)
        {
          goto LABEL_101;
        }

        v38 = v83 - 1;
        result = memmove(&v39[2 * v41], v81 + 2, 16 * (v83 - 1 - v41));
        v7[2] = v83 - 1;
        if (v83 <= 2)
        {
          goto LABEL_3;
        }
      }

      v46 = &v39[2 * v38];
      v47 = *(v46 - 8);
      v48 = *(v46 - 7);
      v52 = __OFSUB__(v48, v47);
      v49 = v48 - v47;
      if (v52)
      {
        goto LABEL_102;
      }

      v51 = *(v46 - 6);
      v50 = *(v46 - 5);
      v52 = __OFSUB__(v50, v51);
      v44 = v50 - v51;
      v45 = v52;
      if (v52)
      {
        goto LABEL_103;
      }

      v53 = &v7[2 * v38];
      v55 = *v53;
      v54 = v53[1];
      v52 = __OFSUB__(v54, v55);
      v56 = v54 - v55;
      if (v52)
      {
        goto LABEL_105;
      }

      v52 = __OFADD__(v44, v56);
      v57 = v44 + v56;
      if (v52)
      {
        goto LABEL_107;
      }

      if (v57 >= v49)
      {
        v75 = &v39[2 * v41];
        v77 = *v75;
        v76 = v75[1];
        v52 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v52)
        {
          goto LABEL_113;
        }

        if (v44 < v78)
        {
          v41 = v38 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    a4 = v91;
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v28 = *a3;
  v29 = *a3 + 24 * v6 - 24;
  v30 = v8 - v6;
LABEL_30:
  v31 = *(v28 + 24 * v6);
  v32 = v30;
  v33 = v29;
  while (1)
  {
    if (v31 >= *v33)
    {
LABEL_29:
      ++v6;
      v29 += 24;
      --v30;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v28)
    {
      break;
    }

    v34 = *(v33 + 32);
    *(v33 + 24) = *v33;
    *(v33 + 40) = *(v33 + 16);
    *v33 = v31;
    *(v33 + 8) = v34;
    v33 -= 24;
    if (__CFADD__(v32++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_1000965CC(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[24 * v9] <= a4)
    {
      memmove(a4, __dst, 24 * v9);
    }

    v12 = &v4[24 * v9];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (*v6 < *v4)
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 24;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 24;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 24;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    *(v7 + 2) = *(v13 + 2);
    *v7 = v15;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[24 * v11] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v12 = &v4[24 * v11];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_20:
    v16 = v6 - 24;
    v5 -= 24;
    v17 = v12;
    do
    {
      v18 = (v5 + 24);
      v19 = *(v17 - 24);
      v17 -= 24;
      if (v19 < *v16)
      {
        if (v18 != v6)
        {
          v21 = *v16;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v21;
        }

        if (v12 <= v4 || (v6 -= 24, v16 <= v7))
        {
          v6 = v16;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      if (v18 != v12)
      {
        v20 = *v17;
        *(v5 + 16) = *(v17 + 16);
        *v5 = v20;
      }

      v5 -= 24;
      v12 = v17;
    }

    while (v17 > v4);
    v12 = v17;
  }

LABEL_31:
  v22 = ((v12 - v4) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v23 = (v22 >> 2) + (v22 >> 63);
  if (v6 != v4 || v6 >= &v4[24 * v23])
  {
    memmove(v6, v4, 24 * v23);
  }

  return 1;
}

void *sub_100096808(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_100096898(result, a2, a3, a4);

    return v8;
  }

  return result;
}

Swift::Int sub_100096898(Swift::Int result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v50 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v53 = 0;
    v13 = 0;
    v14 = a3 + 56;
    v15 = 1 << *(a3 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(a3 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = a4 + 56;
    while (v17)
    {
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_18:
      v51 = v20 | (v13 << 6);
      v23 = (*(a3 + 48) + 16 * v51);
      v25 = *v23;
      v24 = v23[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v26 = Hasher._finalize()();
      v27 = -1 << *(v4 + 32);
      v28 = v26 & ~v27;
      if ((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
      {
        v29 = ~v27;
        while (1)
        {
          v30 = (*(a4 + 48) + 16 * v28);
          v31 = *v30 == v25 && v30[1] == v24;
          if (v31 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          v28 = (v28 + 1) & v29;
          if (((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        *(v50 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        if (v32)
        {
          __break(1u);
LABEL_30:
          v5 = a3;
LABEL_31:

          return sub_100096C74(v50, a2, v53, v5);
        }
      }

      else
      {
LABEL_10:

        v4 = a4;
      }
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_30;
      }

      v22 = *(v14 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

LABEL_54:
    __break(1u);
  }

  else
  {
    v53 = 0;
    v6 = 0;
    v7 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = a3 + 56;
    v49 = v11;
    while (v10)
    {
      v33 = __clz(__rbit64(v10));
      v52 = (v10 - 1) & v10;
LABEL_41:
      v36 = (*(v4 + 48) + 16 * (v33 | (v6 << 6)));
      v38 = *v36;
      v37 = v36[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v39 = Hasher._finalize()();
      v40 = -1 << *(v5 + 32);
      v41 = v39 & ~v40;
      v42 = v41 >> 6;
      v43 = 1 << v41;
      if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) != 0)
      {
        v44 = (*(v5 + 48) + 16 * v41);
        if (*v44 != v38 || v44[1] != v37)
        {
          v46 = ~v40;
          while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            v41 = (v41 + 1) & v46;
            v42 = v41 >> 6;
            v43 = 1 << v41;
            if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) == 0)
            {
              v5 = a3;
              goto LABEL_33;
            }

            v47 = (*(a3 + 48) + 16 * v41);
            if (*v47 == v38 && v47[1] == v37)
            {
              break;
            }
          }
        }

        v11 = v49;
        v50[v42] |= v43;
        v5 = a3;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        v10 = v52;
        if (v32)
        {
          __break(1u);
          goto LABEL_54;
        }
      }

      else
      {
LABEL_33:

        v4 = a4;
        v11 = v49;
        v10 = v52;
      }
    }

    v34 = v6;
    while (1)
    {
      v6 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_31;
      }

      v35 = *(v7 + 8 * v6);
      ++v34;
      if (v35)
      {
        v33 = __clz(__rbit64(v35));
        v52 = (v35 - 1) & v35;
        goto LABEL_41;
      }
    }
  }

  __break(1u);
  return result;
}