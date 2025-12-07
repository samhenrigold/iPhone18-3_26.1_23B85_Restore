uint64_t sub_10003853C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100036134(a1);
  v3 = enum case for SceneUpdateTiming.async(_:);
  updated = type metadata accessor for SceneUpdateTiming();
  v5 = *(*(updated - 8) + 104);

  return v5(a2, v3, updated);
}

char *sub_1000385B8(uint64_t a1)
{
  v2 = type metadata accessor for ExecutionLane();
  v21 = *(v2 - 8);
  v22 = v2;
  __chkstk_darwin(v2);
  v20 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for CanvasUpdateOutput();
  v5 = *(updated - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(updated);
  v8 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v19 - v9;
  v11 = type metadata accessor for CanvasUpdater.UpdateResult(0);
  v12 = *(v5 + 16);
  v12(v10, a1 + *(v11 + 20), updated);
  v13 = CanvasUpdateOutput.makeStaticOutput.getter();
  v14 = v23;
  v13();
  v23 = v14;
  if (v14)
  {
    (*(v5 + 8))(v10, updated);
  }

  else
  {

    v12(v8, v10, updated);
    v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v16 = swift_allocObject();
    (*(v5 + 32))(v16 + v15, v8, updated);
    v17 = v20;
    static ExecutionLane.any.getter();
    type metadata accessor for PropertyList();
    v8 = Future.mapSuccess<A>(dsoHandle:file:line:column:function:on:_:)();

    (*(v21 + 8))(v17, v22);
    (*(v5 + 8))(v10, updated);
  }

  return v8;
}

uint64_t sub_1000388A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13[1] = a2;
  v3 = type metadata accessor for PropertyList();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ChromeType();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for StaticPreviewReply();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  CanvasUpdateOutput.staticChromeType.getter();
  CanvasUpdateOutput.controlDescriptions.getter();
  CanvasUpdateOutput.controlStates.getter();
  (*(v4 + 16))(v6, a1, v3);
  StaticPreviewReply.init(chromeType:controlDescriptions:controlStates:contentPayload:)();
  sub_100039348(&qword_100070250, 255, &type metadata accessor for StaticPreviewReply, &protocol conformance descriptor for StaticPreviewReply);
  PropertyListRepresentable.propertyList.getter();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_100038B04()
{
  if (*(v0 + 64))
  {
    v0 = *(v0 + 64);
  }

  else
  {
    *(v0 + 64) = v0;
    swift_retain_n();
  }

  return v0;
}

uint64_t sub_100038B4C()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_100038CDC(uint64_t a1, uint64_t a2)
{
  result = sub_100039348(&qword_10006F6E8, a2, type metadata accessor for StaticPreviewCanvas, &unk_10004F2B4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100038D34()
{
  v21 = type metadata accessor for ContentKey();
  v1 = *(v21 - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v20 = type metadata accessor for PreviewAgentConnector();
  v4 = *(v20 - 8);
  v5 = *(v4 + 80);
  v18 = (((v2 + 24) & ~v2) + v3 + v5) & ~v5;
  v14 = (*(v4 + 64) + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = type metadata accessor for PropertyList();
  v6 = *(v19 - 8);
  v7 = *(v6 + 80);
  v16 = (v14 + v7 + 16) & ~v7;
  v8 = (*(v6 + 64) + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = type metadata accessor for AgentUpdate.Context();
  v9 = *(v17 - 8);
  v10 = *(v9 + 80);
  v11 = (v8 + v10 + 8) & ~v10;
  v15 = *(v9 + 64);
  v12 = v2 | v5 | v7 | v10;

  (*(v1 + 8))(v0 + ((v2 + 24) & ~v2), v21);
  (*(v4 + 8))(v0 + v18, v20);

  (*(v6 + 8))(v0 + v16, v19);

  (*(v9 + 8))(v0 + v11, v17);

  return _swift_deallocObject(v0, v11 + v15, v12 | 7);
}

uint64_t sub_100038FD8()
{
  v1 = *(type metadata accessor for ContentKey() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for PreviewAgentConnector() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(type metadata accessor for PropertyList() - 8);
  v8 = (v6 + *(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(type metadata accessor for AgentUpdate.Context() - 8);
  v11 = *(v0 + 16);
  v12 = *(v0 + v6);
  v13 = *(v0 + v6 + 8);
  v14 = *(v0 + v9);
  v15 = v0 + ((v9 + *(v10 + 80) + 8) & ~*(v10 + 80));

  return sub_100037978(v11, v0 + v2, v0 + v5, v12, v13, v0 + v8, v14, v15);
}

uint64_t sub_1000391B8()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100039200()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100039240()
{
  updated = type metadata accessor for CanvasUpdateOutput();
  v2 = *(updated - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, updated);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000392C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for CanvasUpdateOutput();

  return sub_1000388A8(a1, a2);
}

uint64_t sub_100039348(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_100039390(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = type metadata accessor for SceneSettingsPolicy();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for Callsite();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  Callsite.init(_:_:_:_:)();
  assertMainThread(callsite:)();
  (*(v11 + 8))(v13, v10);
  v14 = static ProcessUtilities.processHandle(for:)();
  if (v14 && (v15 = v14, v16 = RBSProcessHandle.applicationProcess.getter(), v15, v16))
  {
    v17 = a2;
    v18 = [v16 identity];
    v19 = AgentSceneConfiguration.sceneSpecification.getter();
    v20 = [v19 specification];

    v21 = objc_opt_self();
    v42 = v20;
    v41 = [v21 parametersForSpecification:v20];
    v43 = v17;
    AgentSceneConfiguration.previewShellScene.getter();
    (*(v7 + 16))(v9, a3, v6);
    v22 = (*(v7 + 88))(v9, v6);
    if (v22 == enum case for SceneSettingsPolicy.custom(_:))
    {
      swift_unknownObjectRelease();
      (*(v7 + 96))(v9, v6);
      v23 = *v9;
    }

    else
    {
      v27 = v22;
      v40 = v18;
      v28 = v16;
      v29 = enum case for SceneSettingsPolicy.mirrorParent(_:);
      swift_getObjectType();
      v23 = dispatch thunk of PreviewShellScene.sceneSettings.getter();
      swift_unknownObjectRelease();
      if (v27 != v29)
      {
        (*(v7 + 8))(v9, v6);
      }

      v16 = v28;
      v18 = v40;
    }

    v30 = [v23 settings];

    v31 = [v30 copyResettingInterruptionPolicy];
    v32 = v41;
    [v41 setSettings:v31];

    v33 = [objc_allocWithZone(FBSMutableSceneDefinition) init];
    AgentSceneConfiguration.sceneIdentifier.getter();
    v34 = String._bridgeToObjectiveC()();

    v35 = [objc_opt_self() identityForIdentifier:v34];

    [v33 setIdentity:v35];
    v36 = [objc_opt_self() identityForProcessIdentity:v18];
    [v33 setClientIdentity:v36];

    v37 = v42;
    [v33 setSpecification:v42];
    v38 = [objc_opt_self() sharedInstance];
    v39 = [v38 createSceneWithDefinition:v33 initialParameters:v32];

    return v39;
  }

  else
  {
    v24 = type metadata accessor for ProcessError();
    sub_10003A294(&qword_10006E8D8, &type metadata accessor for ProcessError, &protocol conformance descriptor for ProcessError);
    swift_allocError();
    *v25 = v5;
    (*(*(v24 - 8) + 104))(v25, enum case for ProcessError.noProcessForPid(_:), v24);
    return swift_willThrow();
  }
}

uint64_t sub_1000398CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4[3] = a4;
  v6 = *a4;
  v4[4] = type metadata accessor for MainActor();
  v4[5] = static MainActor.shared.getter();
  v4[2] = a4;
  v7 = swift_task_alloc();
  v4[6] = v7;
  v8 = sub_10003A294(qword_10006FE20, &type metadata accessor for PreviewSceneAgentProxy, &protocol conformance descriptor for PreviewSceneAgentProxy);
  *v7 = v4;
  v7[1] = sub_1000399F4;

  return ConcurrentInvalidatable.invalidation.getter(v6, v8);
}

uint64_t sub_1000399F4()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100039B30, v1, v0);
}

uint64_t sub_100039B30()
{

  v1 = PreviewSceneAgentProxy.scene.getter();
  v2 = [v1 scene];

  sub_10003A03C(0, v2);
  v3 = *(v0 + 8);

  return v3();
}

void *sub_100039BC8()
{
  result = sub_10002B8C0(&_swiftEmptyArrayStorage);
  off_100070258 = result;
  return result;
}

id sub_100039BF0()
{
  result = [objc_allocWithZone(SBSKeyboardFocusService) init];
  qword_100070260 = result;
  return result;
}

Swift::Int sub_100039C24(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004C60(&qword_100070270, &qword_10004F300);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

id sub_100039D8C(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.uv.getter();

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_10000E0C0(a1, a2, &v19);
    _os_log_impl(&_mh_execute_header, v8, v9, "Allowing keyboard focus for %s", v10, 0xCu);
    sub_10000519C(v11);
  }

  (*(v5 + 8))(v7, v4);
  if (qword_10006E620 != -1)
  {
    swift_once();
  }

  v12 = qword_100070260;
  sub_100004C60(&qword_100070268, &qword_10004F2F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10004E380;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  sub_100039C24(inited);
  swift_setDeallocating();
  sub_10003A240(inited + 32);
  isa = Set._bridgeToObjectiveC()().super.isa;

  v15 = String._bridgeToObjectiveC()();
  v16 = [v12 setExternalSceneIdentities:isa forReason:v15];

  return v16;
}

uint64_t sub_10003A03C(char a1, id a2)
{
  v3 = [a2 identityToken];
  v4 = [v3 stringRepresentation];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  if (a1)
  {
    if (qword_10006E618 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (*(off_100070258 + 2))
    {
      sub_100006E04(v5, v7);
      if (v8)
      {
        swift_endAccess();
      }
    }

    swift_endAccess();
    v14 = sub_100039D8C(v5, v7);
    swift_beginAccess();
    v15 = v14;
    v16 = v5;
    v17 = v7;
  }

  else
  {
    if (qword_10006E618 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v10 = off_100070258;
    if (*(off_100070258 + 2) && (v11 = sub_100006E04(v5, v7), (v12 & 1) != 0))
    {
      v13 = *(v10[7] + 8 * v11);
      swift_endAccess();
      [v13 invalidate];
    }

    else
    {
      swift_endAccess();
    }

    swift_beginAccess();
    v15 = 0;
    v16 = v5;
    v17 = v7;
  }

  sub_100006380(v15, v16, v17);
  return swift_endAccess();
}

uint64_t sub_10003A294(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10003A2F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for SceneLayout();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10003A3B0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for SceneLayout();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for SceneConfigurator(uint64_t a1)
{
  result = qword_1000702D8;
  if (!qword_1000702D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10003A4A0(uint64_t a1)
{
  sub_10003A53C();
  if (v1 <= 0x3F)
  {
    sub_10003A5A0();
    if (v2 <= 0x3F)
    {
      type metadata accessor for SceneLayout();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_10003A53C()
{
  result = qword_1000702E8;
  if (!qword_1000702E8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1000702E8);
  }

  return result;
}

void sub_10003A5A0()
{
  if (!qword_1000702F0)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1000702F0);
    }
  }
}

void sub_10003A5F0(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 setInterfaceOrientation:sub_10003BEC8()];
  sub_10003C338();
  [a1 setFrame:{0.0, 0.0, v8, v9}];
  [a1 setInterfaceOrientationMode:2];
  [a1 setDeviceOrientation:sub_10003BEC8()];
  v10 = v1[3];
  v11 = v2[4];
  sub_10000E678(v2, v10);
  [a1 setPreviewMaximumSize:{sub_1000053E0(v10, v11)}];
  type metadata accessor for SceneConfigurator(0);
  [a1 setPreviewSceneLayout:sub_10003C5D4()];
  sub_10003C818(a1);
  if (qword_10006E5D0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for PreviewShellPluginRegistry();
  sub_10000BE8C(v12, qword_1000736E8);
  swift_beginAccess();
  PreviewShellPluginRegistry.sceneConfigurator.getter();
  swift_endAccess();
  if (v47)
  {
    sub_10000BF1C(&v46, v48);
    sub_10000E678(v48, v48[3]);
    v13 = [objc_allocWithZone(PSMutableSceneSettings) initWithSettings:a1];
    dispatch thunk of PreviewShellSceneConfigurator.configure(sceneSettings:for:)();

    sub_10000519C(v48);
  }

  else
  {
    sub_10003D3FC(&v46);
  }

  static Logger.uv.getter();
  v14 = a1;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (!os_log_type_enabled(v15, v16))
  {

    (*(v5 + 8))(v7, v4);
    return;
  }

  v44 = v5;
  v45 = v4;
  v17 = swift_slowAlloc();
  v48[0] = swift_slowAlloc();
  *v17 = 136316162;
  v18 = [v14 persistenceIdentifier];
  if (v18)
  {
    v19 = v18;
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    v23 = sub_10000E0C0(v20, v22, v48);

    *(v17 + 4) = v23;
    *(v17 + 12) = 2080;
    [v14 interfaceOrientation];
    v24 = BSInterfaceOrientationDescription();
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    v28 = sub_10000E0C0(v25, v27, v48);

    *(v17 + 14) = v28;
    *(v17 + 22) = 2080;
    [v14 frame];
    v29 = BSStringFromCGRect();

    if (v29)
    {
      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v31;

      v33 = sub_10000E0C0(v30, v32, v48);

      *(v17 + 24) = v33;
      *(v17 + 32) = 2080;
      [v14 previewMaximumSize];
      v34 = BSStringFromCGSize();

      if (v34)
      {
        v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v37 = v36;

        v38 = sub_10000E0C0(v35, v37, v48);

        *(v17 + 34) = v38;
        *(v17 + 42) = 2080;
        [v14 previewSceneLayout];
        v39 = UVPreviewSceneLayoutDescription();
        v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v42 = v41;

        v43 = sub_10000E0C0(v40, v42, v48);

        *(v17 + 44) = v43;
        _os_log_impl(&_mh_execute_header, v15, v16, "Configuring scene %s with orientation:%s, frame:%s, maxSize:%s, layout:%s", v17, 0x34u);
        swift_arrayDestroy();

        (*(v44 + 8))(v7, v45);
        return;
      }

      goto LABEL_14;
    }
  }

  else
  {

    __break(1u);
  }

  __break(1u);
LABEL_14:
  __break(1u);
}

id sub_10003AB58(uint64_t a1)
{
  v3 = type metadata accessor for SceneLayout();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  v10 = *(type metadata accessor for SceneConfigurator(0) + 24);
  v11 = *(v4 + 16);
  v11(v9, v1 + v10, v3);
  v12 = (*(v4 + 88))(v9, v3);
  if (v12 == enum case for SceneLayout.device(_:))
  {
    (*(v4 + 96))(v9, v3);
    v13 = *(a1 + 48);
    if (v13)
    {
      [v13 setHidden:0];
    }

    v14 = type metadata accessor for PreviewTraits.Orientation();
    return (*(*(v14 - 8) + 8))(v9, v14);
  }

  else if (v12 == enum case for SceneLayout.custom(_:))
  {
    result = *(a1 + 48);
    if (result)
    {
      return [result setHidden:1];
    }
  }

  else
  {
    v17 = 0;
    v18 = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    v17 = 0xD000000000000015;
    v18 = 0x80000001000557E0;
    v11(v7, v1 + v10, v3);
    v16._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v16);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_10003ADDC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Callsite();
  __chkstk_darwin(v6 - 8);
  v19 = 0;
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = &v19;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_10003D5A0;
  *(v8 + 24) = v7;
  v17 = sub_10003D5AC;
  v18 = v8;
  aBlock = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_10003D4E8;
  v16 = &unk_100063BD0;
  v9 = _Block_copy(&aBlock);

  [v3 performUpdate:v9];
  _Block_release(v9);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
    __break(1u);
  }

  else
  {
    if ((v19 & 1) == 0)
    {
      aBlock = 0;
      v14 = 0xE000000000000000;
      _StringGuts.grow(_:)(40);

      aBlock = 0xD000000000000026;
      v14 = 0x8000000100055800;
      v11 = [v3 settings];
      swift_getObjectType();

      v12._countAndFlagsBits = _typeName(_:qualified:)();
      String.append(_:)(v12);

      Callsite.init(_:_:_:_:)();
      type metadata accessor for Unreachable();
      sub_10003BCB0();
      swift_allocError();
      Unreachable.init(_:diagnostics:callsite:)();
      swift_willThrow();
    }
  }

  return result;
}

void sub_10003B094(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v60 = a4;
  v8 = type metadata accessor for Callsite();
  __chkstk_darwin(v8 - 8);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_allocWithZone(FBSMutableSceneDefinition) init];
  v12 = String._bridgeToObjectiveC()();
  v13 = [objc_opt_self() identityForIdentifier:v12];

  [v11 setIdentity:v13];
  v14 = [objc_opt_self() localIdentity];
  [v11 setClientIdentity:v14];

  v15 = [objc_allocWithZone(type metadata accessor for LocalSceneSpecification()) init];
  [v11 setSpecification:v15];

  v16 = [v11 specification];
  v17 = [objc_opt_self() parametersForSpecification:v16];

  v62 = v4;
  v63 = a3;
  v64 = a1;
  v65 = a2;
  v18 = v67;
  sub_10003B9F8(sub_10003B9EC, v61);
  if (v18)
  {

    v19 = v17;
LABEL_3:

    return;
  }

  v57 = v4;
  v58 = v10;
  v20 = [objc_opt_self() sharedInstance];
  v59 = v11;
  v21 = [v20 createSceneWithDefinition:v11 initialParameters:v17];

  if (qword_10006E5B0 != -1)
  {
    swift_once();
  }

  sub_10000E678(qword_10006EAD0, qword_10006EAE8);
  v22 = [objc_allocWithZone(PSScene) initWithScene:v21];
  v67 = v21;
  v23 = v22;
  dispatch thunk of PreviewShellSceneBinder.bind(scene:)();

  v24 = v67;
  v25 = [objc_opt_self() sharedInstance];
  v26 = [v25 fbsSceneForScene:v24];

  if (!v26)
  {
    Callsite.init(_:_:_:_:)();
    type metadata accessor for Unreachable();
    sub_10003BCB0();
    swift_allocError();
    Unreachable.init(_:diagnostics:callsite:)();
    swift_willThrow();

    v19 = v24;
    goto LABEL_3;
  }

  v27 = [v26 windowScene];
  v28 = v57;
  if (!v27)
  {
    Callsite.init(_:_:_:_:)();
    type metadata accessor for Unreachable();
    sub_10003BCB0();
    swift_allocError();
    Unreachable.init(_:diagnostics:callsite:)();
    swift_willThrow();

    v19 = v26;
    goto LABEL_3;
  }

  v19 = v27;
  v56 = v26;
  v29 = [v27 delegate];
  v30 = v59;
  if (!v29)
  {
    Callsite.init(_:_:_:_:)();
    type metadata accessor for Unreachable();
    sub_10003BCB0();
    swift_allocError();
    Unreachable.init(_:diagnostics:callsite:)();
    swift_willThrow();

    goto LABEL_3;
  }

  v58 = v29;
  v31 = v59;
  v55 = [objc_allocWithZone(UIWindow) initWithWindowScene:v19];
  [v55 setHidden:0];
  v32 = v28[3];
  v33 = v28[4];
  sub_10000E678(v28, v32);
  v35 = (*(v33 + 8))(v32, v33);
  v36 = v34;
  if ((v37 & 1) == 0 || (v38 = [v34 exclusionArea]) == 0)
  {

LABEL_16:
    v50 = 0;
    goto LABEL_17;
  }

  v39 = v38;
  objc_opt_self();
  v40 = swift_dynamicCastObjCClass();
  if (!v40)
  {

    goto LABEL_16;
  }

  [v40 rect];
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;

  v49 = objc_allocWithZone(type metadata accessor for ExclusionWindow());
  v50 = sub_10001E07C(v19, v42, v44, v46, v48);
LABEL_17:
  v51 = sub_10003BD08();
  v66[0] = a1;
  v66[1] = a2;
  v66[2] = v19;
  v66[3] = v55;
  v66[4] = v51;
  v66[5] = v58;
  v66[6] = v50;
  v54 = v50;

  sub_10003AB58(v66);

  v52 = v60;
  *v60 = v67;
  v52[1] = a1;
  v52[2] = a2;
  v52[3] = v19;
  v52[4] = v55;
  v52[5] = v51;
  v52[6] = v58;
  v52[7] = v50;
}

uint64_t sub_10003B800()
{
  v0 = type metadata accessor for SceneLayout();
  sub_100020278(v0, qword_100073738);
  v1 = sub_10000BE8C(v0, qword_100073738);
  v2 = enum case for PreviewTraits.Orientation.portrait(_:);
  v3 = type metadata accessor for PreviewTraits.Orientation();
  (*(*(v3 - 8) + 104))(v1, v2, v3);
  v4 = enum case for SceneLayout.device(_:);
  v5 = *(*(v0 - 8) + 104);

  return v5(v1, v4, v0);
}

void sub_10003B8E0(void *a1, void *a2)
{
  v3 = a2[3];
  v4 = a2[4];
  sub_10000E678(a2, v3);
  v5 = sub_10000542C(v3, v4);
  [a1 setDisplayConfiguration:v5];

  [a1 setLevel:0.0];
  [a1 setForeground:1];
  v6 = String._bridgeToObjectiveC()();
  v7 = UVSceneIdentifierToPersistenceIdentifier();

  if (!v7)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = String._bridgeToObjectiveC()();
  }

  [a1 setPersistenceIdentifier:v7];

  sub_10003A5F0(a1);
}

uint64_t sub_10003B9F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Callsite();
  __chkstk_darwin(v6 - 8);
  v18 = 0;
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = &v18;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_10003D3A0;
  *(v8 + 24) = v7;
  v16 = sub_10003D3BC;
  v17 = v8;
  aBlock = _NSConcreteStackBlock;
  v13 = 1107296256;
  v14 = sub_1000133D0;
  v15 = &unk_100063B58;
  v9 = _Block_copy(&aBlock);

  [v3 updateSettingsWithBlock:v9];
  _Block_release(v9);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
    __break(1u);
  }

  else
  {
    if ((v18 & 1) == 0)
    {
      aBlock = 0;
      v13 = 0xE000000000000000;
      _StringGuts.grow(_:)(40);

      aBlock = 0xD000000000000026;
      v13 = 0x8000000100055800;

      sub_100004C60(&qword_100070328, &qword_10004F348);
      v11._countAndFlagsBits = _typeName(_:qualified:)();
      String.append(_:)(v11);

      Callsite.init(_:_:_:_:)();
      type metadata accessor for Unreachable();
      sub_10003BCB0();
      swift_allocError();
      Unreachable.init(_:diagnostics:callsite:)();
      swift_willThrow();
    }
  }

  return result;
}

unint64_t sub_10003BCB0()
{
  result = qword_10006EA30;
  if (!qword_10006EA30)
  {
    type metadata accessor for Unreachable();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006EA30);
  }

  return result;
}

uint64_t sub_10003BD08()
{
  v1 = v0;
  v2 = type metadata accessor for Callsite();
  __chkstk_darwin(v2 - 8);
  v3 = [v0 settings];
  if (v3)
  {
    v4 = v3;
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      return result;
    }
  }

  _StringGuts.grow(_:)(40);

  sub_100004C60(&qword_100070328, &qword_10004F348);
  v6._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v6);

  Callsite.init(_:_:_:_:)();
  type metadata accessor for Unreachable();
  sub_10003BCB0();
  swift_allocError();
  Unreachable.init(_:diagnostics:callsite:)();
  return swift_willThrow();
}

uint64_t sub_10003BEC8()
{
  v1 = type metadata accessor for PreviewTraits.Orientation();
  v29 = *(v1 - 8);
  v2 = __chkstk_darwin(v1);
  v27 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v6 = &v26 - v5;
  __chkstk_darwin(v4);
  v8 = &v26 - v7;
  v9 = type metadata accessor for SceneLayout();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v26 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v26 - v13;
  v15 = *(type metadata accessor for SceneConfigurator(0) + 24);
  v16 = *(v10 + 16);
  v28 = v0;
  v16(v14, v0 + v15, v9);
  v17 = (*(v10 + 88))(v14, v9);
  if (v17 == enum case for SceneLayout.device(_:))
  {
    (*(v10 + 96))(v14, v9);
    v18 = v29;
    (*(v29 + 32))(v8, v14, v1);
    object = *(v18 + 16);
    object(v6, v8, v1);
    v20 = (*(v18 + 88))(v6, v1);
    v21 = v18;
    if (v20 == enum case for PreviewTraits.Orientation.portrait(_:))
    {
      v22 = 1;
    }

    else if (v20 == enum case for PreviewTraits.Orientation.portraitUpsideDown(_:))
    {
      v22 = 2;
    }

    else if (v20 == enum case for PreviewTraits.Orientation.landscapeLeft(_:))
    {
      v22 = 4;
    }

    else
    {
      if (v20 != enum case for PreviewTraits.Orientation.landscapeRight(_:))
      {
        while (1)
        {
          v30 = 0;
          v31 = 0xE000000000000000;
          _StringGuts.grow(_:)(23);

          v30 = 0xD000000000000015;
          v31 = 0x80000001000558D0;
          object(v27, v8, v1);
          v25._countAndFlagsBits = String.init<A>(describing:)();
          object = v25._object;
          String.append(_:)(v25);

LABEL_15:
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }
      }

      v22 = 3;
    }

    (*(v21 + 8))(v8, v1);
  }

  else
  {
    if (v17 != enum case for SceneLayout.custom(_:))
    {
      v30 = 0;
      v31 = 0xE000000000000000;
      _StringGuts.grow(_:)(23);

      v30 = 0xD000000000000015;
      v31 = 0x80000001000557E0;
      v16(v26, v28 + v15, v9);
      v24._countAndFlagsBits = String.init<A>(describing:)();
      object = v24._object;
      String.append(_:)(v24);

      goto LABEL_15;
    }

    return 1;
  }

  return v22;
}

uint64_t sub_10003C338()
{
  v1 = type metadata accessor for SceneLayout();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v16 - v6;
  v8 = *(type metadata accessor for SceneConfigurator(0) + 24);
  v9 = *(v2 + 16);
  v9(v7, &v0[v8], v1);
  v10 = (*(v2 + 88))(v7, v1);
  if (v10 == enum case for SceneLayout.device(_:))
  {
    (*(v2 + 96))(v7, v1);
    v11 = *(v0 + 3);
    v12 = *(v0 + 4);
    sub_10000E678(v0, v11);
    sub_1000053E0(v11, v12);
    v13 = type metadata accessor for PreviewTraits.Orientation();
    return (*(*(v13 - 8) + 8))(v7, v13);
  }

  else if (v10 == enum case for SceneLayout.custom(_:))
  {
    return (*(v2 + 96))(v7, v1);
  }

  else
  {
    v16 = 0;
    v17 = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    v16 = 0xD000000000000015;
    v17 = 0x80000001000557E0;
    v9(v5, &v0[v8], v1);
    v15._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v15);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_10003C5D4()
{
  v1 = v0;
  v2 = type metadata accessor for SceneLayout();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v14 - v7;
  v9 = *(v3 + 16);
  v9(&v14 - v7, v1, v2);
  v10 = (*(v3 + 88))(v8, v2);
  if (v10 == enum case for SceneLayout.device(_:))
  {
    (*(v3 + 96))(v8, v2);
    v11 = type metadata accessor for PreviewTraits.Orientation();
    (*(*(v11 - 8) + 8))(v8, v11);
    return 0;
  }

  else if (v10 == enum case for SceneLayout.custom(_:))
  {
    return 1;
  }

  else
  {
    v14 = 0;
    v15 = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    v14 = 0xD000000000000015;
    v15 = 0x80000001000557E0;
    v9(v6, v1, v2);
    v13._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v13);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void sub_10003C818(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for SceneLayout();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v79 - v9;
  if (v1[6])
  {

    v86 = sub_100015884();
  }

  else
  {
    v86 = 0;
  }

  v11 = *(type metadata accessor for SceneConfigurator(0) + 24);
  v12 = *(v5 + 16);
  v12(v10, v1 + v11, v4);
  v13 = (*(v5 + 88))(v10, v4);
  if (v13 == enum case for SceneLayout.device(_:))
  {
    (*(v5 + 96))(v10, v4);
    v14 = v1[3];
    v15 = v1[4];
    sub_10000E678(v1, v14);
    v16 = (*(v15 + 8))(v14, v15);
    v18 = v17;
    [v16 deviceInfoFloatValueForKey:UISDeviceContextDeviceCornerRadiusKey];
    v20 = v19;

    v21 = [objc_allocWithZone(BSCornerRadiusConfiguration) initWithCornerRadius:v20];
    [a1 setCornerRadiusConfiguration:v21];

    v22 = v2[3];
    v23 = v2[4];
    sub_10000E678(v2, v22);
    v24 = (*(v23 + 8))(v22, v23);
    v26 = v25;
    v27 = [v25 displayEdgeInfo];
    if (!v27)
    {
      v27 = [objc_allocWithZone(UISApplicationSupportDisplayEdgeInfo) init];
    }

    v80 = v10;

    sub_10003D01C(a1);
    v28 = v86;
    if (qword_10006E630 == -1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (v13 != enum case for SceneLayout.custom(_:))
    {
      v87 = 0;
      v88 = 0xE000000000000000;
      _StringGuts.grow(_:)(23);

      v87 = 0xD000000000000015;
      v88 = 0x80000001000557E0;
      v12(v8, v1 + v11, v4);
      v78._countAndFlagsBits = String.init<A>(describing:)();
      String.append(_:)(v78);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return;
    }

    v54 = [objc_allocWithZone(BSCornerRadiusConfiguration) initWithCornerRadius:0.0];
    [a1 setCornerRadiusConfiguration:v54];

    v55 = [objc_allocWithZone(UISApplicationSupportDisplayEdgeInfo) init];
    sub_10003D01C(a1);

    if (qword_10006E630 != -1)
    {
      swift_once();
    }

    v56 = off_100070278;
    v57 = off_100070278 + 64;
    v58 = 1 << *(off_100070278 + 32);
    v59 = -1;
    if (v58 < 64)
    {
      v59 = ~(-1 << v58);
    }

    v60 = v59 & *(off_100070278 + 8);
    v28 = ((v58 + 63) >> 6);

    v61 = 0;
    while (v60)
    {
      v62 = v61;
LABEL_35:
      v63 = __clz(__rbit64(v60));
      v60 &= v60 - 1;
      [a1 setDefaultStatusBarHeight:*(v56[6] + ((v62 << 9) | (8 * v63))) forOrientation:0.0];
    }

    while (1)
    {
      v62 = v61 + 1;
      if (__OFADD__(v61, 1))
      {
        break;
      }

      if (v62 >= v28)
      {

        [a1 setStatusBarHeight:0.0];

        return;
      }

      v60 = *&v57[8 * v62];
      ++v61;
      if (v60)
      {
        v61 = v62;
        goto LABEL_35;
      }
    }

LABEL_43:
    __break(1u);
  }

  swift_once();
LABEL_8:
  v29 = off_100070278;
  v30 = off_100070278 + 64;
  v31 = 1 << *(off_100070278 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & *(off_100070278 + 8);
  v34 = (v31 + 63) >> 6;
  v81 = UISDeviceContextDeviceIdiomKey;

  v35 = 0;
  v83 = v2;
  v84 = a1;
  v82 = v29;
  while (v33)
  {
LABEL_21:
    v41 = (v35 << 9) | (8 * __clz(__rbit64(v33)));
    v42 = *(v29[6] + v41);
    v39 = *(v29[7] + v41);
    if (v28)
    {
      v43 = v2[3];
      v44 = v2[4];
      sub_10000E678(v2, v43);
      v45 = v2;
      v85 = v28;
      v46 = sub_10000542C(v43, v44);
      v48 = v2[3];
      v47 = v45[4];
      sub_10000E678(v45, v45[3]);
      v49 = (*(v47 + 8))(v48, v47);
      v51 = v50;
      v52 = v81;
      v53 = [v49 deviceInfoIntegerValueForKey:v52];

      if ((v53 - 1) < 7)
      {
        v36 = qword_10004F360[(v53 - 1)];
      }

      else
      {
        v36 = -1;
      }

      v37 = v85;
      v38 = [v85 statusBarForcedHiddenForInterfaceOrientation:v42 onDisplay:v46 withUserInterfaceIdiom:v36];

      if (v38)
      {
        v39 = 0.0;
      }

      v2 = v83;
      a1 = v84;
      v28 = v86;
      v29 = v82;
    }

    v33 &= v33 - 1;
    [a1 setDefaultStatusBarHeight:v42 forOrientation:v39];
  }

  while (1)
  {
    v40 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      __break(1u);
      goto LABEL_43;
    }

    if (v40 >= v34)
    {
      break;
    }

    v33 = *&v30[8 * v40];
    ++v35;
    if (v33)
    {
      v35 = v40;
      goto LABEL_21;
    }
  }

  if (!v28 || (v64 = v28, v65 = sub_10003BEC8(), v66 = v2[3], v67 = v2[4], sub_10000E678(v2, v66), v68 = sub_10000542C(v66, v67), v69 = v2[3], v70 = v2[4], sub_10000E678(v2, v69), v71 = (*(v70 + 8))(v69, v70), v73 = v72, v74 = sub_1000058B0(v71), v73, v71, v75 = v65, v28 = v86, LOBYTE(v71) = [v64 statusBarHiddenForInterfaceOrientation:v75 onDisplay:v68 withUserInterfaceIdiom:v74], v64, v68, v76 = 0.0, (v71 & 1) == 0))
  {
    [a1 defaultStatusBarHeightForOrientation:sub_10003BEC8()];
  }

  [a1 setStatusBarHeight:v76];

  v77 = type metadata accessor for PreviewTraits.Orientation();
  (*(*(v77 - 8) + 8))(v80, v77);
}

id sub_10003D01C(void *a1)
{
  v3 = [v1 safeAreaInsetsPortrait];
  UIEdgeInsetsFromApplicationSupportDisplayEdgeInsetsWrapper();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [a1 setSafeAreaInsetsPortrait:{v5, v7, v9, v11}];
  v12 = [v1 peripheryInsets];
  UIEdgeInsetsFromApplicationSupportDisplayEdgeInsetsWrapper();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  [a1 setPeripheryInsets:{v14, v16, v18, v20}];
  v21 = [v1 homeAffordanceOverlayAllowance];
  if (v21)
  {
    v22 = v21;
    [v21 doubleValue];
    v24 = v23;
  }

  else
  {
    v24 = 0.0;
  }

  return [a1 setHomeAffordanceOverlayAllowance:v24];
}

void *sub_10003D158()
{
  result = sub_10003D178();
  off_100070278 = result;
  return result;
}

void *sub_10003D178()
{
  sub_10003D554();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = 0;
  while (1)
  {
    v2 = *(&off_1000625A8 + v1 + 32);
    [ObjCClassFromMetadata heightForStyle:0 orientation:v2];
    v4 = v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = sub_1000072E8(v2);
    v8 = _swiftEmptyDictionarySingleton[2];
    v9 = (v7 & 1) == 0;
    v10 = __OFADD__(v8, v9);
    v11 = v8 + v9;
    if (v10)
    {
      break;
    }

    v12 = v7;
    if (_swiftEmptyDictionarySingleton[3] < v11)
    {
      sub_100009150(v11, isUniquelyReferenced_nonNull_native);
      v6 = sub_1000072E8(v2);
      if ((v12 & 1) != (v13 & 1))
      {
        goto LABEL_17;
      }

LABEL_9:
      if (v12)
      {
        goto LABEL_2;
      }

      goto LABEL_10;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_9;
    }

    v16 = v6;
    sub_10000B500();
    v6 = v16;
    if (v12)
    {
LABEL_2:
      *(_swiftEmptyDictionarySingleton[7] + 8 * v6) = v4;
      goto LABEL_3;
    }

LABEL_10:
    _swiftEmptyDictionarySingleton[(v6 >> 6) + 8] |= 1 << v6;
    *(_swiftEmptyDictionarySingleton[6] + 8 * v6) = v2;
    *(_swiftEmptyDictionarySingleton[7] + 8 * v6) = v4;
    v14 = _swiftEmptyDictionarySingleton[2];
    v10 = __OFADD__(v14, 1);
    v15 = v14 + 1;
    if (v10)
    {
      goto LABEL_16;
    }

    _swiftEmptyDictionarySingleton[2] = v15;
LABEL_3:
    v1 += 8;
    if (v1 == 32)
    {
      return _swiftEmptyDictionarySingleton;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  type metadata accessor for UIInterfaceOrientation(0);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_10003D314(void *a1, void (*a2)(uint64_t), uint64_t a3, _BYTE *a4)
{
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    v8 = v7;
    v9 = a1;
    a2(v8);

    *a4 = 1;
  }
}

uint64_t sub_10003D3E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10003D3FC(uint64_t a1)
{
  v2 = sub_100004C60(&qword_100070330, &unk_10004F350);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10003D464(void *a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t a4, _BYTE *a5)
{
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (v9)
  {
    v10 = v9;
    v11 = a1;
    a3(v10, a2);

    *a5 = 1;
  }
}

void sub_10003D4E8(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v6 = a2;
  v5 = a3;
  v4(v6, v5);
}

unint64_t sub_10003D554()
{
  result = qword_100070338;
  if (!qword_100070338)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100070338);
  }

  return result;
}

uint64_t sub_10003D5E4(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC12PreviewShell18LocalSceneDelegate_previewShellScene);
  *v3 = a1;
  v3[1] = a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v4 = *(v2 + OBJC_IVAR____TtC12PreviewShell13SceneDelegate_previewSceneSettings);
  if (v4 && *v3)
  {
    v5 = v3[1];
    ObjectType = swift_getObjectType();
    v7 = *(v5 + 8);
    v8 = v4;
    swift_unknownObjectRetain();
    sub_10003E938(v8, 0, ObjectType, v7);

    swift_unknownObjectRelease();
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_10003D738(uint64_t a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  result = __chkstk_darwin(v3);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *&v1[OBJC_IVAR____TtC12PreviewShell13SceneDelegate_windowScene];
  if (v8)
  {
    v9 = v8 == a1;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    static Logger.uv.getter();
    v10 = v1;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v26 = a1;
      v13 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v30 = v25;
      *v13 = 136446210;
      v27 = v10;
      type metadata accessor for SceneDelegate();
      v14 = v10;
      sub_100004C60(&qword_100070518, &qword_10004F4A0);
      if (!swift_dynamicCast())
      {
        goto LABEL_13;
      }

      sub_10000BF1C(v28, v31);
      v16 = v32;
      v15 = v33;
      sub_10000E678(v31, v32);
      v17 = (*(v15 + 8))(v16, v15);
      v19 = v18;
      sub_10000519C(v31);
      v20 = sub_10000E0C0(v17, v19, &v30);

      *(v13 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v11, v12, "%{public}s will enter foreground", v13, 0xCu);
      sub_10000519C(v25);

      (*(v4 + 8))(v7, v3);
      a1 = v26;
    }

    else
    {

      (*(v4 + 8))(v7, v3);
    }

    v30 = v10;
    type metadata accessor for SceneDelegate();
    v21 = v10;
    sub_100004C60(&qword_100070518, &qword_10004F4A0);
    if (swift_dynamicCast())
    {
      sub_10000BF1C(v28, v31);
      v22 = v32;
      v23 = v33;
      sub_10000E678(v31, v32);
      (*(v23 + 24))(a1, v22, v23);
      return sub_10000519C(v31);
    }

LABEL_13:
    v29 = 0;
    memset(v28, 0, sizeof(v28));
    sub_100041E08(v28);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_10003DB10(uint64_t a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  result = __chkstk_darwin(v3);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *&v1[OBJC_IVAR____TtC12PreviewShell13SceneDelegate_windowScene];
  if (v8)
  {
    v9 = v8 == a1;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    static Logger.uv.getter();
    v10 = v1;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v28 = v14;
      *v13 = 136446210;
      v24 = v10;
      type metadata accessor for SceneDelegate();
      v15 = v10;
      sub_100004C60(&qword_100070518, &qword_10004F4A0);
      if (!swift_dynamicCast())
      {
        v23 = 0;
        memset(v22, 0, sizeof(v22));
        sub_100041E08(v22);
        result = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return result;
      }

      sub_10000BF1C(v22, v25);
      v16 = v26;
      v17 = v27;
      sub_10000E678(v25, v26);
      v18 = (*(v17 + 8))(v16, v17);
      v20 = v19;
      sub_10000519C(v25);
      v21 = sub_10000E0C0(v18, v20, &v28);

      *(v13 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v11, v12, "%{public}s did enter background", v13, 0xCu);
      sub_10000519C(v14);
    }

    return (*(v4 + 8))(v7, v3);
  }

  return result;
}

uint64_t sub_10003DE34(uint64_t a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  result = __chkstk_darwin(v3);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *&v1[OBJC_IVAR____TtC12PreviewShell13SceneDelegate_windowScene];
  if (v8)
  {
    v9 = v8 == a1;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    static Logger.uv.getter();
    v10 = v1;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v26 = a1;
      v13 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v30 = v25;
      *v13 = 136446210;
      v27 = v10;
      type metadata accessor for SceneDelegate();
      v14 = v10;
      sub_100004C60(&qword_100070518, &qword_10004F4A0);
      if (!swift_dynamicCast())
      {
        goto LABEL_13;
      }

      sub_10000BF1C(v28, v31);
      v16 = v32;
      v15 = v33;
      sub_10000E678(v31, v32);
      v17 = (*(v15 + 8))(v16, v15);
      v19 = v18;
      sub_10000519C(v31);
      v20 = sub_10000E0C0(v17, v19, &v30);

      *(v13 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v11, v12, "%{public}s did disconnect", v13, 0xCu);
      sub_10000519C(v25);

      (*(v4 + 8))(v7, v3);
      a1 = v26;
    }

    else
    {

      (*(v4 + 8))(v7, v3);
    }

    v30 = v10;
    type metadata accessor for SceneDelegate();
    v21 = v10;
    sub_100004C60(&qword_100070518, &qword_10004F4A0);
    if (swift_dynamicCast())
    {
      sub_10000BF1C(v28, v31);
      v22 = v32;
      v23 = v33;
      sub_10000E678(v31, v32);
      (*(v23 + 40))(a1, v22, v23);
      return sub_10000519C(v31);
    }

LABEL_13:
    v29 = 0;
    memset(v28, 0, sizeof(v28));
    sub_100041E08(v28);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

id sub_10003E328(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SceneDelegate();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10003E424(void *a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for MainViewController(0);
  v7 = [objc_allocWithZone(v6) init];
  v23[3] = v6;
  v23[4] = sub_100041B04(&qword_1000704D0, type metadata accessor for MainViewController, &unk_10004E858);
  v23[0] = v7;
  type metadata accessor for MainScene(0);
  swift_allocObject();
  v8 = v7;
  v9 = a1;
  v10 = a2;
  v11 = sub_1000459A8(v9, v23, v10);

  if (qword_10006E600 != -1)
  {
    swift_once();
  }

  v12 = qword_100073700;

  v14 = sub_100040718(v13, v12);

  *&v8[OBJC_IVAR____TtC12PreviewShell18MainViewController_previewCanvas] = v14;
  swift_retain_n();

  sub_1000233D0();

  v15 = [objc_allocWithZone(UIWindow) initWithWindowScene:v9];
  sub_1000052B8(0, &qword_1000704D8, UIColor_ptr);
  v16 = v15;
  v17 = static UIColor.shellTintColor.getter();
  [v16 setTintColor:v17];

  [v16 setRootViewController:v8];
  [v16 makeKeyAndVisible];
  v18 = *(v3 + OBJC_IVAR____TtC12PreviewShell23DeviceMainSceneDelegate_window);
  *(v3 + OBJC_IVAR____TtC12PreviewShell23DeviceMainSceneDelegate_window) = v16;
  v19 = v16;

  v20 = *(v3 + OBJC_IVAR____TtC12PreviewShell23DeviceMainSceneDelegate_mainViewController);
  *(v3 + OBJC_IVAR____TtC12PreviewShell23DeviceMainSceneDelegate_mainViewController) = v8;
  v21 = v8;

  *(v3 + OBJC_IVAR____TtC12PreviewShell23DeviceMainSceneDelegate_previewShellScene) = v11;

  if ([v9 activationState] <= 1)
  {
    sub_100040D0C();
  }
}

void sub_10003E6D4(void *a1, void *a2)
{
  v5 = type metadata accessor for SceneSettingsUpdate();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a2 animationFence];
  if (v9)
  {

    v10 = [a2 animationSettings];
    if (!v10)
    {
      if (!a2)
      {
        goto LABEL_6;
      }

      v11 = [objc_opt_self() settingsWithDuration:0.3];
      [a2 setAnimationSettings:v11];
      v10 = v11;
    }
  }

LABEL_6:
  v12 = [a1 copyRemovingTargetOfEventDeferringEnvironments];
  if (*(v2 + OBJC_IVAR____TtC12PreviewShell23DeviceMainSceneDelegate_previewShellScene))
  {
    v19 = v12;
    v13 = objc_allocWithZone(PSSceneSettings);

    [v13 initWithSettings:v19];
    v14 = a2;
    SceneSettingsUpdate.init(sceneSettings:transitionContext:)();
    v15 = sub_100041B04(&qword_1000704C8, type metadata accessor for MainScene, &unk_10004F734);
    v16 = *(v15 + 40);
    v17 = type metadata accessor for MainScene(0);
    v16(v8, v17, v15);

    (*(v6 + 8))(v8, v5);
  }

  else
  {
  }
}

uint64_t sub_10003E938(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for SceneSettingsUpdate();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  [objc_allocWithZone(PSSceneSettings) initWithSettings:a1];
  v12 = a2;
  SceneSettingsUpdate.init(sceneSettings:transitionContext:)();
  (*(a4 + 40))(v11, a3, a4);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_10003EAC8()
{
}

void sub_10003EC9C(void *a1, void *a2)
{
  v3 = v2;
  type metadata accessor for MainScene(0);
  v16 = 0u;
  v17 = 0u;
  v18 = 0;
  swift_allocObject();
  v6 = a1;
  v7 = a2;
  v8 = sub_1000459A8(v6, &v16, v7);

  if (qword_10006E600 != -1)
  {
    swift_once();
  }

  v9 = qword_100073700;

  v11 = sub_100040718(v10, v9);

  v12 = objc_allocWithZone(UIWindow);
  v13 = [v12 initWithWindowScene:{v6, v16, v17, v18}];
  [v13 setRootViewController:v11[3]];
  v14 = v13;
  [v14 setHidden:0];

  *(v3 + OBJC_IVAR____TtC12PreviewShell26SimulatorMainSceneDelegate_previewShellScene) = v8;

  v15 = *(v3 + OBJC_IVAR____TtC12PreviewShell26SimulatorMainSceneDelegate_window);
  *(v3 + OBJC_IVAR____TtC12PreviewShell26SimulatorMainSceneDelegate_window) = v14;
}

uint64_t sub_10003EE0C(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for SceneSettingsUpdate();
  v6 = *(v5 - 8);
  result = __chkstk_darwin(v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + OBJC_IVAR____TtC12PreviewShell26SimulatorMainSceneDelegate_previewShellScene))
  {
    v10 = objc_allocWithZone(PSSceneSettings);

    [v10 initWithSettings:a1];
    v11 = a2;
    SceneSettingsUpdate.init(sceneSettings:transitionContext:)();
    v12 = sub_100041B04(&qword_1000704C8, type metadata accessor for MainScene, &unk_10004F734);
    v13 = *(v12 + 40);
    v14 = type metadata accessor for MainScene(0);
    v13(v9, v14, v12);

    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

uint64_t sub_10003F134(uint64_t result, void *a2)
{
  v3 = (*v2 + OBJC_IVAR____TtC12PreviewShell18LocalSceneDelegate_previewShellScene);
  if (*v3)
  {
    v5 = result;
    v6 = v3[1];
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 8);
    swift_unknownObjectRetain();
    sub_10003E938(v5, a2, ObjectType, v8);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_10003F254(void *a1, void *a2)
{
  v3 = v2;
  v6 = [a1 _sceneIdentifier];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  type metadata accessor for HostInjectedScene(0);
  swift_allocObject();
  v10 = a1;
  v11 = a2;
  v12 = sub_10004571C(v7, v9, v10, v11);

  if (qword_10006E600 != -1)
  {
    swift_once();
  }

  v13 = qword_100073700;

  v15 = sub_1000400CC(v14, v13);

  v16 = [objc_allocWithZone(UVInjectedSceneWindow) initWithWindowScene:v10];
  [v16 setHidden:0];
  v17 = v15[3];
  [v16 setRootViewController:v17];

  *(v3 + OBJC_IVAR____TtC12PreviewShell21InjectedSceneDelegate_previewShellScene) = v12;

  v18 = *(v3 + OBJC_IVAR____TtC12PreviewShell21InjectedSceneDelegate_window);
  *(v3 + OBJC_IVAR____TtC12PreviewShell21InjectedSceneDelegate_window) = v16;
}

uint64_t sub_10003F3EC(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for SceneSettingsUpdate();
  v6 = *(v5 - 8);
  result = __chkstk_darwin(v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + OBJC_IVAR____TtC12PreviewShell21InjectedSceneDelegate_previewShellScene))
  {
    v10 = objc_allocWithZone(PSSceneSettings);

    [v10 initWithSettings:a1];
    v11 = a2;
    SceneSettingsUpdate.init(sceneSettings:transitionContext:)();
    v12 = sub_100041B04(&qword_100070508, type metadata accessor for HostInjectedScene, &unk_10004F86C);
    v13 = *(v12 + 40);
    v14 = type metadata accessor for HostInjectedScene(0);
    v13(v9, v14, v12);

    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

uint64_t sub_10003F578(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC12PreviewShell21InjectedSceneDelegate_window;
  v5 = *(v2 + OBJC_IVAR____TtC12PreviewShell21InjectedSceneDelegate_window);
  if (v5)
  {
    [v5 setHidden:1];
    v6 = *(v2 + v4);
  }

  else
  {
    v6 = 0;
  }

  *(v2 + v4) = 0;

  v7 = OBJC_IVAR____TtC12PreviewShell21InjectedSceneDelegate_previewShellScene;
  if (*(v2 + OBJC_IVAR____TtC12PreviewShell21InjectedSceneDelegate_previewShellScene))
  {
    v16 = *(v2 + OBJC_IVAR____TtC12PreviewShell21InjectedSceneDelegate_previewShellScene);
    v14 = type metadata accessor for HostInjectedScene(0);
    v15 = sub_100041B04(&qword_100070500, type metadata accessor for HostInjectedScene, &unk_10004F77C);
    LOBYTE(v13) = 2;
    Invalidatable.invalidate(dsoHandle:file:line:column:function:)();
  }

  *(v2 + v7) = 0;

  if (qword_10006E600 != -1)
  {
    swift_once();
  }

  v8 = [a1 _sceneIdentifier];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  sub_100022E9C(v9, v11);
}

id sub_10003F714(char *a1, uint64_t a2, void *a3, void *a4)
{
  ObjectType = swift_getObjectType();
  *&a1[*a3] = 0;
  *&a1[*a4] = 0;
  v9.receiver = a1;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, "init");
}

uint64_t sub_10003F788(void *a1, void *a2)
{
}

uint64_t sub_10003F7E0(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
}

uint64_t *sub_10003F8DC(uint64_t a1, uint64_t *a2)
{
  v19 = *a2;
  v20 = type metadata accessor for ExecutionLane();
  v18 = *(v20 - 8);
  __chkstk_darwin(v20);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100041B04(&qword_100070508, type metadata accessor for HostInjectedScene, &unk_10004F86C);
  type metadata accessor for InvalidationHandle();
  swift_allocObject();
  a2[2] = InvalidationHandle.init(dsoHandle:file:line:column:function:name:)();
  *(a2 + 7) = 0u;
  *(a2 + 9) = 0u;
  *(a2 + 84) = 0u;
  sub_100004C60(&qword_1000704F8, &qword_10004F498);
  swift_allocObject();
  a2[13] = EventStream.Sink.init()();
  if (*(a1 + 40))
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
  }

  else
  {
    v8 = 0xE400000000000000;
    v7 = 1852399981;
  }

  v9 = type metadata accessor for CanvasViewController(0);
  v10 = objc_allocWithZone(v9);
  *&v10[OBJC_IVAR____TtC12PreviewShell20CanvasViewController_active] = 0;
  *&v10[OBJC_IVAR____TtC12PreviewShell20CanvasViewController_activating] = 0;
  v11 = OBJC_IVAR____TtC12PreviewShell20CanvasViewController_forcedOrientation;
  v12 = type metadata accessor for PreviewPreferences.InterfaceOrientation();
  (*(*(v12 - 8) + 56))(&v10[v11], 1, 1, v12);
  *&v10[OBJC_IVAR____TtC12PreviewShell20CanvasViewController_debugOverlay] = 0;
  v13 = &v10[OBJC_IVAR____TtC12PreviewShell20CanvasViewController_sceneIdentifier];
  *v13 = v7;
  v13[1] = v8;
  v22.receiver = v10;
  v22.super_class = v9;

  a2[3] = objc_msgSendSuper2(&v22, "initWithNibName:bundle:", 0, 0);
  type metadata accessor for CanvasUpdater();
  v14 = swift_allocObject();
  v14[2] = 0;

  v15 = sub_10002B6D0(&_swiftEmptyArrayStorage);
  v14[4] = v6;
  v14[5] = v15;
  v14[3] = a1;
  a2[5] = v6;
  a2[6] = v14;
  a2[4] = a1;
  v21[5] = a2;
  v21[3] = swift_getObjectType();
  v21[4] = *(*(*(v6 + 8) + 8) + 8);
  v21[0] = a1;
  sub_100041B04(&qword_10006ECA8, type metadata accessor for HostedPreviewCanvas, &unk_10004DB04);

  Invalidatable.trackInvalidation(dsoHandle:file:line:column:function:of:)();
  sub_10000519C(v21);
  v21[0] = a2;
  static ExecutionLane.main.getter();

  Invalidatable.onInvalidation(on:_:)();

  (*(v18 + 8))(v5, v20);
  return a2;
}

uint64_t *sub_10003FCE8(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for ExecutionLane();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100041B04(&qword_1000704C8, type metadata accessor for MainScene, &unk_10004F734);
  type metadata accessor for InvalidationHandle();
  swift_allocObject();
  a2[2] = InvalidationHandle.init(dsoHandle:file:line:column:function:name:)();
  *(a2 + 7) = 0u;
  *(a2 + 9) = 0u;
  *(a2 + 84) = 0u;
  sub_100004C60(&qword_1000704F8, &qword_10004F498);
  swift_allocObject();
  a2[13] = EventStream.Sink.init()();
  v9 = type metadata accessor for CanvasViewController(0);
  v10 = objc_allocWithZone(v9);
  *&v10[OBJC_IVAR____TtC12PreviewShell20CanvasViewController_active] = 0;
  *&v10[OBJC_IVAR____TtC12PreviewShell20CanvasViewController_activating] = 0;
  v11 = OBJC_IVAR____TtC12PreviewShell20CanvasViewController_forcedOrientation;
  v12 = type metadata accessor for PreviewPreferences.InterfaceOrientation();
  (*(*(v12 - 8) + 56))(&v10[v11], 1, 1, v12);
  *&v10[OBJC_IVAR____TtC12PreviewShell20CanvasViewController_debugOverlay] = 0;
  v13 = &v10[OBJC_IVAR____TtC12PreviewShell20CanvasViewController_sceneIdentifier];
  *v13 = 1852399981;
  *(v13 + 1) = 0xE400000000000000;
  v18.receiver = v10;
  v18.super_class = v9;
  a2[3] = objc_msgSendSuper2(&v18, "initWithNibName:bundle:", 0, 0);
  type metadata accessor for CanvasUpdater();
  v14 = swift_allocObject();
  v14[2] = 0;

  v15 = sub_10002B6D0(&_swiftEmptyArrayStorage);
  v14[4] = v8;
  v14[5] = v15;
  v14[3] = a1;
  a2[5] = v8;
  a2[6] = v14;
  a2[4] = a1;
  v17[5] = a2;
  v17[3] = swift_getObjectType();
  v17[4] = *(*(*(v8 + 8) + 8) + 8);
  v17[0] = a1;
  sub_100041B04(&qword_10006ECA8, type metadata accessor for HostedPreviewCanvas, &unk_10004DB04);

  Invalidatable.trackInvalidation(dsoHandle:file:line:column:function:of:)();
  sub_10000519C(v17);
  v17[0] = a2;
  static ExecutionLane.main.getter();

  Invalidatable.onInvalidation(on:_:)();

  (*(v5 + 8))(v7, v4);
  return a2;
}

uint64_t *sub_1000400CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Callsite();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v45 = *(v8 - 8);
  v46 = v8;
  __chkstk_darwin(v8);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_100041B04(&qword_100070510, type metadata accessor for HostInjectedScene, &unk_10004F888);
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  swift_beginAccess();
  v13 = *(a2 + 16);
  v14 = *(v13 + 16);

  if (v14 && (v15 = sub_100007180(v11, v12), (v16 & 1) != 0))
  {
    v17 = *(*(v13 + 56) + 8 * v15);
    swift_endAccess();

    Callsite.init(_:_:_:_:)();
    assertUnreachable(callsite:)();
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    swift_endAccess();
    static Logger.uv.getter();

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();

    v20 = v12;
    if (os_log_type_enabled(v18, v19))
    {
      v21 = swift_slowAlloc();
      v48 = v12;
      v22 = v21;
      v23 = swift_slowAlloc();
      v50 = v23;
      *v22 = 136446210;
      v49[0] = v11;
      v49[1] = v48;

      v24 = String.init<A>(describing:)();
      v26 = v11;
      v27 = sub_10000E0C0(v24, v25, &v50);

      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v18, v19, "registering injected scene '%{public}s'", v22, 0xCu);
      sub_10000519C(v23);

      v20 = v48;

      (*(v45 + 8))(v10, v46);
    }

    else
    {

      (*(v45 + 8))(v10, v46);
      v26 = v11;
    }

    v28 = v47;
    v29 = type metadata accessor for HostedPreviewCanvas();
    v30 = swift_allocObject();

    v17 = sub_10003F8DC(v31, v30);
    swift_weakAssign();
    v49[0] = v17;
    v32 = swift_allocObject();
    *(v32 + 16) = a1;
    *(v32 + 24) = v28;
    sub_100041B04(&qword_10006ECA8, type metadata accessor for HostedPreviewCanvas, &unk_10004DB04);

    Invalidatable.onInvalidation(_:)();

    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v50 = *(a2 + 16);
    *(a2 + 16) = 0x8000000000000000;
    sub_10000A64C(v17, v26, v20, isUniquelyReferenced_nonNull_native);

    *(a2 + 16) = v50;
    swift_endAccess();
    swift_beginAccess();
    v34 = *(a2 + 24);
    v35 = *(v34 + 16);
    v44 = v26;
    if (v35 && (v36 = sub_100007180(v26, v20), (v37 & 1) != 0))
    {
      v48 = v20;
      v38 = *(*(v34 + 56) + 8 * v36);
      swift_endAccess();
      v43 = a2;
      if (v38 >> 62)
      {
        goto LABEL_26;
      }

      v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_11:

      if (v39)
      {
        v40 = 0;
        v20 = &qword_1000704F0;
        do
        {
          if ((v38 & 0xC000000000000001) != 0)
          {
            specialized _ArrayBuffer._getElementSlowPath(_:)();
            v41 = v40 + 1;
            if (__OFADD__(v40, 1))
            {
LABEL_20:
              __break(1u);
              goto LABEL_21;
            }
          }

          else
          {
            if (v40 >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
LABEL_26:
              v39 = _CocoaArrayWrapper.endIndex.getter();
              goto LABEL_11;
            }

            v41 = v40 + 1;
            if (__OFADD__(v40, 1))
            {
              goto LABEL_20;
            }
          }

          v49[3] = v29;
          v49[4] = sub_100041B04(&qword_1000704F0, type metadata accessor for HostedPreviewCanvas, &unk_10004DB2C);
          v49[0] = v17;

          Promise.succeed(with:)();

          sub_10000519C(v49);
          ++v40;
        }

        while (v41 != v39);
      }

      v20 = v48;
    }

    else
    {
LABEL_21:
      swift_endAccess();
    }

    swift_beginAccess();
    sub_1000066A0(0, v44, v20);
    swift_endAccess();
  }

  return v17;
}

uint64_t *sub_100040718(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Callsite();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100041B04(&unk_1000704E0, type metadata accessor for MainScene, &unk_10004F760);
  swift_beginAccess();
  v13 = *(a2 + 16);
  if (*(v13 + 16) && (v14 = sub_100007180(0, 0), (v15 & 1) != 0))
  {
    v16 = *(*(v13 + 56) + 8 * v14);
    swift_endAccess();

    Callsite.init(_:_:_:_:)();
    assertUnreachable(callsite:)();
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    swift_endAccess();
    static Logger.uv.getter();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v40 = a2;
      v41[0] = 0;
      v21 = v12;
      v22 = v20;
      v42 = v20;
      *v19 = 136446210;
      v41[1] = 0;
      v23 = String.init<A>(describing:)();
      v39 = v8;
      v25 = sub_10000E0C0(v23, v24, &v42);

      *(v19 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v17, v18, "registering injected scene '%{public}s'", v19, 0xCu);
      sub_10000519C(v22);
      v12 = v21;
      a2 = v40;

      (*(v9 + 8))(v11, v39);
    }

    else
    {

      (*(v9 + 8))(v11, v8);
    }

    v26 = type metadata accessor for HostedPreviewCanvas();
    v27 = swift_allocObject();

    v16 = sub_10003FCE8(v28, v27);
    swift_weakAssign();
    v41[0] = v16;
    v29 = swift_allocObject();
    *(v29 + 16) = a1;
    *(v29 + 24) = v12;
    sub_100041B04(&qword_10006ECA8, type metadata accessor for HostedPreviewCanvas, &unk_10004DB04);

    Invalidatable.onInvalidation(_:)();

    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v42 = *(a2 + 16);
    *(a2 + 16) = 0x8000000000000000;
    sub_10000A64C(v16, 0, 0, isUniquelyReferenced_nonNull_native);
    *(a2 + 16) = v42;
    swift_endAccess();
    swift_beginAccess();
    v31 = *(a2 + 24);
    if (*(v31 + 16) && (v32 = sub_100007180(0, 0), (v33 & 1) != 0))
    {
      v34 = *(*(v31 + 56) + 8 * v32);
      swift_endAccess();
      v40 = a2;
      if (v34 >> 62)
      {
        goto LABEL_26;
      }

      v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_11:

      if (v35)
      {
        v36 = 0;
        do
        {
          if ((v34 & 0xC000000000000001) != 0)
          {
            specialized _ArrayBuffer._getElementSlowPath(_:)();
            v37 = v36 + 1;
            if (__OFADD__(v36, 1))
            {
LABEL_20:
              __break(1u);
              goto LABEL_21;
            }
          }

          else
          {
            if (v36 >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
LABEL_26:
              v35 = _CocoaArrayWrapper.endIndex.getter();
              goto LABEL_11;
            }

            v37 = v36 + 1;
            if (__OFADD__(v36, 1))
            {
              goto LABEL_20;
            }
          }

          v41[3] = v26;
          v41[4] = sub_100041B04(&qword_1000704F0, type metadata accessor for HostedPreviewCanvas, &unk_10004DB2C);
          v41[0] = v16;

          Promise.succeed(with:)();

          sub_10000519C(v41);
          ++v36;
        }

        while (v37 != v35);
      }
    }

    else
    {
LABEL_21:
      swift_endAccess();
    }

    swift_beginAccess();
    sub_1000066A0(0, 0, 0);
    swift_endAccess();
  }

  return v16;
}

void sub_100040D0C()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_opt_self();
  v7 = [v6 standardUserDefaults];
  v8 = String._bridgeToObjectiveC()();
  v9 = [v7 BOOLForKey:v8];

  if ((v9 & 1) == 0)
  {
    static Logger.uv.getter();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "MainSceneDelegate is coming foreground so make icon visible on the home screen", v12, 2u);
    }

    (*(v3 + 8))(v5, v2);
    v13 = [v6 standardUserDefaults];
    v14 = String._bridgeToObjectiveC()();
    [v13 setBool:1 forKey:v14];

    v15 = CFNotificationCenterGetDarwinNotifyCenter();
    if (v15)
    {
      v16 = v15;
      v17 = String._bridgeToObjectiveC()();
      CFNotificationCenterPostNotification(v16, v17, 0, 0, 1u);
    }
  }

  v18 = *(v1 + OBJC_IVAR____TtC12PreviewShell23DeviceMainSceneDelegate_mainViewController);
  if (v18)
  {
    v19 = v18;
    sub_1000259C4();
  }
}

void sub_100040F84(void *a1, void *a2)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (v9)
  {
    v10 = v9;
    v11 = a1;
    v12 = [v11 _FBSScene];
    v57 = [v12 settings];

    objc_opt_self();
    v13 = swift_dynamicCastObjCClass();
    if (v13)
    {
      v14 = v13;
      static Logger.uv.getter();
      v15 = v2;
      v16 = a2;
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v17, v18))
      {
        v53 = v18;
        v54 = v17;
        v55 = v11;
        v56 = v10;
        v19 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v61 = v52;
        *v19 = 136446466;
        v58 = v15;
        type metadata accessor for SceneDelegate();
        v20 = v15;
        sub_100004C60(&qword_100070518, &qword_10004F4A0);
        if (!swift_dynamicCast())
        {
          goto LABEL_16;
        }

        sub_10000BF1C(v59, v62);
        v22 = v63;
        v21 = v64;
        sub_10000E678(v62, v63);
        v23 = (*(v21 + 8))(v22, v21);
        v25 = v24;
        sub_10000519C(v62);
        v26 = sub_10000E0C0(v23, v25, &v61);

        *(v19 + 4) = v26;
        *(v19 + 12) = 2082;
        v27 = [v16 persistentIdentifier];
        v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v30 = v29;

        v31 = sub_10000E0C0(v28, v30, &v61);

        *(v19 + 14) = v31;
        v32 = v54;
        _os_log_impl(&_mh_execute_header, v54, v53, "%{public}s will connect to session %{public}s", v19, 0x16u);
        swift_arrayDestroy();

        (*(v6 + 8))(v8, v5);
        v11 = v55;
        v10 = v56;
      }

      else
      {

        (*(v6 + 8))(v8, v5);
      }

      objc_opt_self();
      v34 = swift_dynamicCastObjCClass();
      if (v34)
      {
        v35 = v34;
        v36 = v57;
      }

      else
      {
        v37 = [objc_allocWithZone(UVMutablePreviewSceneSettings) initWithSettings:v14];
        [v14 frame];
        [v37 setPreviewMaximumSize:{v38, v39}];
        v35 = [objc_allocWithZone(UVPreviewSceneSettings) initWithSettings:v37];
      }

      v40 = *&v15[OBJC_IVAR____TtC12PreviewShell13SceneDelegate_previewSceneSettings];
      *&v15[OBJC_IVAR____TtC12PreviewShell13SceneDelegate_previewSceneSettings] = v35;
      v41 = v35;

      v42 = *&v15[OBJC_IVAR____TtC12PreviewShell13SceneDelegate_windowScene];
      *&v15[OBJC_IVAR____TtC12PreviewShell13SceneDelegate_windowScene] = v10;
      v43 = v11;

      v61 = v15;
      type metadata accessor for SceneDelegate();
      v44 = v15;
      sub_100004C60(&qword_100070518, &qword_10004F4A0);
      if (swift_dynamicCast())
      {
        sub_10000BF1C(v59, v62);
        v45 = v63;
        v46 = v64;
        sub_10000E678(v62, v63);
        (*(v46 + 16))(v10, v41, v45, v46);
        sub_10000519C(v62);
        sub_100004C60(&qword_100070530, &qword_10004E1E0);
        v47 = swift_allocObject();
        *(v47 + 16) = xmmword_10004DBA0;
        *(v47 + 32) = v44;
        v48 = v44;
        sub_100004C60(&qword_100070538, qword_10004F4C0);
        isa = Array._bridgeToObjectiveC()().super.isa;

        sub_1000052B8(0, &unk_100070540, NSString_ptr);
        v50 = NSString.init(stringLiteral:)();
        [v10 _registerSettingsDiffActionArray:isa forKey:v50];

        return;
      }

LABEL_16:
      v60 = 0;
      memset(v59, 0, sizeof(v59));
      sub_100041E08(v59);
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return;
    }

    v33 = v57;
  }
}

uint64_t sub_1000415AC()
{
  v1 = (v0 + OBJC_IVAR____TtC12PreviewShell18LocalSceneDelegate_previewShellScene);
  if (*(v0 + OBJC_IVAR____TtC12PreviewShell18LocalSceneDelegate_previewShellScene))
  {
    swift_getObjectType();
    Invalidatable.invalidate(dsoHandle:file:line:column:function:)();
  }

  *v1 = 0;
  v1[1] = 0;
  result = swift_unknownObjectRelease();
  v3 = *(v0 + OBJC_IVAR____TtC12PreviewShell13SceneDelegate_previewSceneSettings);
  if (v3)
  {
    if (*v1)
    {
      v4 = v1[1];
      ObjectType = swift_getObjectType();
      v6 = *(v4 + 8);
      v7 = v3;
      swift_unknownObjectRetain();
      sub_10003E938(v7, 0, ObjectType, v6);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1000416C0()
{
  v1 = v0;
  v2 = type metadata accessor for InvalidationTrace();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10006E600 != -1)
  {
    swift_once();
  }

  sub_100022E9C(0, 0);
  v6 = OBJC_IVAR____TtC12PreviewShell23DeviceMainSceneDelegate_window;
  v7 = *(v1 + OBJC_IVAR____TtC12PreviewShell23DeviceMainSceneDelegate_window);
  if (v7)
  {
    [v7 setHidden:1];
    v8 = *(v1 + v6);
  }

  else
  {
    v8 = 0;
  }

  *(v1 + v6) = 0;

  v9 = OBJC_IVAR____TtC12PreviewShell23DeviceMainSceneDelegate_mainViewController;
  v10 = *(v1 + OBJC_IVAR____TtC12PreviewShell23DeviceMainSceneDelegate_mainViewController);
  if (v10)
  {
    v15 = *(v1 + OBJC_IVAR____TtC12PreviewShell23DeviceMainSceneDelegate_mainViewController);
    v11 = v10;
    static InvalidationTrace.empty.getter();
    type metadata accessor for MainViewController(0);
    sub_100041B04(&qword_10006F840, type metadata accessor for MainViewController, &unk_10004E800);
    AnyInvalidatable.invalidate(file:line:column:function:trace:)();
    (*(v3 + 8))(v5, v2);

    v10 = *(v1 + v9);
  }

  *(v1 + v9) = 0;

  v12 = OBJC_IVAR____TtC12PreviewShell23DeviceMainSceneDelegate_previewShellScene;
  if (*(v1 + OBJC_IVAR____TtC12PreviewShell23DeviceMainSceneDelegate_previewShellScene))
  {
    v15 = *(v1 + OBJC_IVAR____TtC12PreviewShell23DeviceMainSceneDelegate_previewShellScene);
    type metadata accessor for MainScene(0);
    sub_100041B04(&qword_1000704C0, type metadata accessor for MainScene, &unk_10004F644);
    Invalidatable.invalidate(dsoHandle:file:line:column:function:)();
  }

  *(v1 + v12) = 0;
}

uint64_t sub_10004196C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000419B4()
{
  v1 = v0;
  if (qword_10006E600 != -1)
  {
    swift_once();
  }

  sub_100022E9C(0, 0);
  v2 = OBJC_IVAR____TtC12PreviewShell26SimulatorMainSceneDelegate_window;
  v3 = *(v1 + OBJC_IVAR____TtC12PreviewShell26SimulatorMainSceneDelegate_window);
  if (v3)
  {
    [v3 setHidden:1];
    v4 = *(v1 + v2);
  }

  else
  {
    v4 = 0;
  }

  *(v1 + v2) = 0;

  v5 = OBJC_IVAR____TtC12PreviewShell26SimulatorMainSceneDelegate_previewShellScene;
  if (*(v1 + OBJC_IVAR____TtC12PreviewShell26SimulatorMainSceneDelegate_previewShellScene))
  {
    type metadata accessor for MainScene(0);
    sub_100041B04(&qword_1000704C0, type metadata accessor for MainScene, &unk_10004F644);
    Invalidatable.invalidate(dsoHandle:file:line:column:function:)();
  }

  *(v1 + v5) = 0;
}

uint64_t sub_100041B04(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100041B4C(void *a1, id a2)
{
  if (a2 && ([a2 copy], _bridgeAnyObjectToAny(_:)(), swift_unknownObjectRelease(), sub_1000052B8(0, &qword_100070528, FBSSceneTransitionContext_ptr), (swift_dynamicCast() & 1) != 0))
  {
    v4 = v20[0];
    [v20[0] setActions:0];
    if (!a1)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v4 = 0;
    if (!a1)
    {
LABEL_11:

      return;
    }
  }

  v5 = [a1 settings];
  if (!v5)
  {
    goto LABEL_11;
  }

  v6 = v5;
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (!v7)
  {

    goto LABEL_11;
  }

  v8 = v7;
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (v9)
  {
    v10 = v9;
    v11 = v6;
  }

  else
  {
    v12 = [objc_allocWithZone(UVMutablePreviewSceneSettings) initWithSettings:v8];
    [v8 frame];
    [v12 setPreviewMaximumSize:{v13, v14}];
    v10 = [objc_allocWithZone(UVPreviewSceneSettings) initWithSettings:v12];
  }

  v15 = *&v2[OBJC_IVAR____TtC12PreviewShell13SceneDelegate_previewSceneSettings];
  *&v2[OBJC_IVAR____TtC12PreviewShell13SceneDelegate_previewSceneSettings] = v10;
  v16 = v10;

  v23 = v2;
  type metadata accessor for SceneDelegate();
  v17 = v2;
  sub_100004C60(&qword_100070518, &qword_10004F4A0);
  if (swift_dynamicCast())
  {
    sub_10000BF1C(v20, v24);
    v18 = v25;
    v19 = v26;
    sub_10000E678(v24, v25);
    (*(v19 + 32))(v16, v4, v18, v19);

    sub_10000519C(v24);
  }

  else
  {
    v22 = 0;
    *v20 = 0u;
    v21 = 0u;
    sub_100041E08(v20);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

uint64_t sub_100041E08(uint64_t a1)
{
  v2 = sub_100004C60(&qword_100070520, qword_10004F4A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100041E7C()
{
  v2 = v0;
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v2 + 24);
  v8 = *(v7 + 80);
  static Logger.uv.getter();
  v9 = v8;

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v34 = v3;
    v35 = v1;
    v12 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v36 = v33;
    *v12 = 136315650;
    v13 = *(v7 + 24);
    v14 = *(v7 + 32);

    v15 = sub_10000E0C0(v13, v14, &v36);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2080;
    v16 = [v9 settings];
    [v16 interfaceOrientation];

    v17 = BSInterfaceOrientationDescription();
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    v21 = sub_10000E0C0(v18, v20, &v36);

    *(v12 + 14) = v21;
    *(v12 + 22) = 2080;
    v22 = [v9 settings];
    [v22 frame];

    v23 = BSStringFromCGRect();
    if (!v23)
    {
      __break(1u);
      return;
    }

    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    v27 = sub_10000E0C0(v24, v26, &v36);

    *(v12 + 24) = v27;
    _os_log_impl(&_mh_execute_header, v10, v11, "Snapshotting scene %s with orientation:%s, frame:%s", v12, 0x20u);
    swift_arrayDestroy();

    (*(v4 + 8))(v6, v34);
  }

  else
  {

    (*(v4 + 8))(v6, v3);
  }

  v28 = [v9 createSnapshot];
  if (v28 && (v29 = v28, v30 = [v28 CGImage], v29, v30))
  {
  }

  else
  {
    sub_100046074();
    swift_allocError();
    *v31 = v9;
    swift_willThrow();
  }
}

unint64_t sub_100042240(void *a1)
{
  _StringGuts.grow(_:)(34);

  v2 = [a1 description];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6._countAndFlagsBits = v3;
  v6._object = v5;
  String.append(_:)(v6);

  return 0xD000000000000020;
}

uint64_t sub_100042314(uint64_t a1)
{
  v2 = sub_10004642C();

  return HumanReadableError.errorDescription.getter(a1, v2);
}

uint64_t sub_100042350(uint64_t a1)
{
  v2 = sub_10004642C();

  return HumanReadableError.description.getter(a1, v2);
}

uint64_t sub_10004238C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100004C60(&qword_1000709A8, &unk_10004FB28);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC12PreviewShell15SimDisplayScene____lazy_storage___thumbnailSceneCache;
  swift_beginAccess();
  sub_10002D4F0(v1 + v9, v8, &qword_1000709A8, &unk_10004FB28);
  v10 = type metadata accessor for ThumbnailSceneCache();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_10000BF34(v8, &qword_1000709A8, &unk_10004FB28);
  sub_100045264(&qword_100070958, type metadata accessor for SimDisplayScene, &unk_10004F9F4);
  swift_retain_n();
  ThumbnailSceneCache.init(in:makeHostingViewController:)();
  (*(v11 + 16))(v6, a1, v10);
  (*(v11 + 56))(v6, 0, 1, v10);
  swift_beginAccess();
  sub_100045F64(v6, v1 + v9);
  return swift_endAccess();
}

uint64_t sub_1000425D8()
{

  v1 = OBJC_IVAR____TtC12PreviewShell15SimDisplayScene_role;
  v2 = type metadata accessor for PreviewSceneRole();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_10000BF34(v0 + OBJC_IVAR____TtC12PreviewShell15SimDisplayScene____lazy_storage___thumbnailSceneCache, &qword_1000709A8, &unk_10004FB28);
  return v0;
}

uint64_t sub_1000426AC()
{
  sub_1000425D8();

  return swift_deallocClassInstance();
}

void sub_10004272C(uint64_t a1)
{
  type metadata accessor for PreviewSceneRole();
  if (v1 <= 0x3F)
  {
    sub_100042824(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100042824(uint64_t a1)
{
  if (!qword_1000705A0)
  {
    type metadata accessor for ThumbnailSceneCache();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1000705A0);
    }
  }
}

uint64_t sub_100042880(uint64_t a1)
{
  v2 = SceneSettingsUpdate.sceneSettings.getter();
  v3 = *(v1 + OBJC_IVAR____TtC12PreviewShell15SimDisplayScene_sceneSettings);
  *(v1 + OBJC_IVAR____TtC12PreviewShell15SimDisplayScene_sceneSettings) = v2;

  return EventStream.Sink.send(_:)();
}

unint64_t sub_100042910@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + OBJC_IVAR____TtC12PreviewShell15SimDisplayScene_findStaticCanvas))();
  if (!v2)
  {
    v5 = sub_100038B04();

    a1[3] = &type metadata for ShellThumbnailFactory;
    result = sub_100045FD4();
    a1[4] = result;
    *a1 = v5;
  }

  return result;
}

uint64_t sub_10004298C()
{
  v1 = *(*(v0 + 24) + 88);

  return v1;
}

uint64_t sub_1000429EC@<X0>(_DWORD *a1@<X8>)
{
  *a1 = *(*(v1 + OBJC_IVAR____TtC12PreviewShell15SimDisplayScene_display) + OBJC_IVAR____TtC12PreviewShell10SimDisplay_displayID);
  v3 = enum case for HostIdentity.simulator(_:);
  v4 = type metadata accessor for HostIdentity();
  v5 = *(*(v4 - 8) + 104);

  return v5(a1, v3, v4);
}

void *sub_100042B2C()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC12PreviewShell15SimDisplayScene_display) + OBJC_IVAR____TtC12PreviewShell10SimDisplay_capabilities);
  v2 = v1;
  return v1;
}

void *sub_100042B6C()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC12PreviewShell15SimDisplayScene_display) + OBJC_IVAR____TtC12PreviewShell10SimDisplay_capabilities + 8);
  v2 = v1;
  return v1;
}

uint64_t sub_100042BB0()
{
  v0 = sub_100046028();

  return static EventStream.empty.getter(v0);
}

uint64_t sub_100042BEC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100004C60(&qword_1000709A8, &unk_10004FB28);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC12PreviewShell16LocalStaticScene____lazy_storage___thumbnailSceneCache;
  swift_beginAccess();
  sub_10002D4F0(v1 + v9, v8, &qword_1000709A8, &unk_10004FB28);
  v10 = type metadata accessor for ThumbnailSceneCache();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_10000BF34(v8, &qword_1000709A8, &unk_10004FB28);
  sub_100045264(&qword_100070940, type metadata accessor for LocalStaticScene, &unk_10004F8CC);
  swift_retain_n();
  ThumbnailSceneCache.init(in:makeHostingViewController:)();
  (*(v11 + 16))(v6, a1, v10);
  (*(v11 + 56))(v6, 0, 1, v10);
  swift_beginAccess();
  sub_100045F64(v6, v1 + v9);
  return swift_endAccess();
}

uint64_t sub_100042E38(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for InvalidationHandle();
  swift_allocObject();
  LOBYTE(v7) = 2;
  *(v1 + 16) = InvalidationHandle.init(dsoHandle:file:line:column:function:name:)();
  sub_100004C60(&qword_100070970, &qword_10004FAF8);
  swift_allocObject();
  *(v1 + 32) = EventStream.Sink.init()();
  v4 = OBJC_IVAR____TtC12PreviewShell16LocalStaticScene____lazy_storage___thumbnailSceneCache;
  v5 = type metadata accessor for ThumbnailSceneCache();
  (*(*(v5 - 8) + 56))(v2 + v4, 1, 1, v5);
  *(v2 + 24) = a1;
  *(v2 + 40) = [objc_allocWithZone(PSSceneSettings) initWithSettings:{*(a1 + 120), v7, 0, 0}];
  return v2;
}

uint64_t sub_100042F64()
{

  sub_10000BF34(v0 + OBJC_IVAR____TtC12PreviewShell16LocalStaticScene____lazy_storage___thumbnailSceneCache, &qword_1000709A8, &unk_10004FB28);

  return swift_deallocClassInstance();
}

void sub_100043020(uint64_t a1)
{
  sub_100042824(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1000430D0@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 24);
  a1[3] = type metadata accessor for LocalSceneHost(0);
  a1[4] = &off_100063588;
  *a1 = v3;
}

uint64_t sub_100043120(uint64_t a1)
{
  v2 = SceneSettingsUpdate.sceneSettings.getter();
  v3 = *(v1 + 40);
  *(v1 + 40) = v2;

  return EventStream.Sink.send(_:)();
}

uint64_t sub_1000432D0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100004C60(&qword_1000709A8, &unk_10004FB28);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC12PreviewShell17HostInjectedScene____lazy_storage___thumbnailSceneCache;
  swift_beginAccess();
  sub_10002D4F0(v1 + v9, v8, &qword_1000709A8, &unk_10004FB28);
  v10 = type metadata accessor for ThumbnailSceneCache();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_10000BF34(v8, &qword_1000709A8, &unk_10004FB28);
  sub_100045264(&qword_100070928, type metadata accessor for HostInjectedScene, &unk_10004F7A4);
  swift_retain_n();
  ThumbnailSceneCache.init(in:makeHostingViewController:)();
  (*(v11 + 16))(v6, a1, v10);
  (*(v11 + 56))(v6, 0, 1, v10);
  swift_beginAccess();
  sub_100045F64(v6, v1 + v9);
  return swift_endAccess();
}

void sub_10004351C(uint64_t a1, uint64_t a2)
{
  v39 = a2;
  v3 = sub_100004C60(&qword_100070990, &qword_10004FB18);
  v35 = *(v3 - 8);
  v4 = *(v35 + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v33 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v34 = &v32 - v6;
  v7 = type metadata accessor for ExecutionLane();
  v37 = *(v7 - 8);
  v38 = v7;
  __chkstk_darwin(v7);
  v36 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for SceneUpdateTiming();
  v10 = *(updated - 8);
  __chkstk_darwin(updated);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SceneUpdateSeed();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for HostToShellMessage();
  __chkstk_darwin(v17);
  v19 = (&v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100045C5C(a1, v19);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v41 = *v19;
      v21 = v41;
      EventStream.Sink.send(_:)();
    }

    else if (swift_weakLoadStrong())
    {
      sub_10000D5DC();
      v25 = v36;
      static ExecutionLane.main.getter();
      v26 = v34;
      sub_10002D4F0(v39, v34, &qword_100070990, &qword_10004FB18);
      v27 = (*(v35 + 80) + 16) & ~*(v35 + 80);
      v28 = swift_allocObject();
      sub_100045E2C(v26, v28 + v27);
      Future.observeCompletion(on:_:)();

      (*(v37 + 8))(v25, v38);
    }

    else
    {
      v29 = v33;
      sub_10002D4F0(v39, v33, &qword_100070990, &qword_10004FB18);
      v30 = type metadata accessor for SceneMessageResponder();
      v31 = *(v30 - 8);
      if ((*(v31 + 48))(v29, 1, v30) == 1)
      {
        sub_10000BF34(v29, &qword_100070990, &qword_10004FB18);
      }

      else
      {
        sub_100045CC0();
        swift_allocError();
        SceneMessageResponder.reply(error:)();

        (*(v31 + 8))(v29, v30);
      }
    }
  }

  else
  {
    v22 = *(v19 + *(sub_100004C60(&qword_1000709A0, &qword_10004FB20) + 48));
    (*(v14 + 32))(v16, v19, v13);
    v23 = &enum case for SceneUpdateTiming.async(_:);
    v24 = v40;
    if (v22)
    {
      v23 = &enum case for SceneUpdateTiming.fenced(_:);
    }

    (*(v10 + 104))(v12, *v23, updated);
    sub_100006A9C(v16, v12);
    (*(v10 + 8))(v12, updated);
    if (v22)
    {
      [v22 applyToScene:*(v24 + 48)];
      [v22 invalidate];
    }

    (*(v14 + 8))(v16, v13);
  }
}

uint64_t sub_100043AA8(uint64_t *a1, uint64_t a2)
{
  v3 = sub_100004C60(&qword_100070990, &qword_10004FB18);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - v4;
  sub_10002D4F0(a2, &v9 - v4, &qword_100070990, &qword_10004FB18);
  v6 = type metadata accessor for SceneMessageResponder();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_10000BF34(v5, &qword_100070990, &qword_10004FB18);
  }

  SceneMessageResponder.reply(result:)();
  return (*(v7 + 8))(v5, v6);
}

uint64_t sub_100043BEC()
{

  sub_10000BF34(v0 + OBJC_IVAR____TtC12PreviewShell17HostInjectedScene____lazy_storage___thumbnailSceneCache, &qword_1000709A8, &unk_10004FB28);
  swift_weakDestroy();
  return v0;
}

uint64_t sub_100043C74()
{
  sub_100043BEC();

  return swift_deallocClassInstance();
}

void sub_100043CF4(uint64_t a1)
{
  sub_100042824(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100043DBC(uint64_t a1)
{
  swift_weakAssign();
}

uint64_t sub_100043E04@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 72);
  a1[3] = type metadata accessor for HostPreferenceResolver();
  a1[4] = &off_100062A00;
  *a1 = v3;
}

uint64_t sub_100043E54(int a1)
{
  v2 = type metadata accessor for ShellToHostMessage();
  __chkstk_darwin(v2);
  v4 = (&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v4 = a1;
  swift_storeEnumTagMultiPayload();
  SceneMessenger.send(message:)();
  return sub_100006DA8(v4);
}

uint64_t sub_100043EF8(uint64_t a1)
{
  v2 = SceneSettingsUpdate.sceneSettings.getter();
  v3 = *(v1 + 56);
  *(v1 + 56) = v2;

  return EventStream.Sink.send(_:)();
}

uint64_t sub_100043F54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for ShellToHostMessage();
  __chkstk_darwin(v3);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  SceneMessenger.send(message:)();
  return sub_100006DA8(v5);
}

uint64_t sub_100043FEC(uint64_t a1)
{
  v2 = type metadata accessor for ShellToHostMessage();
  __chkstk_darwin(v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SuppressedPresentation();
  (*(*(v5 - 8) + 16))(v4, a1, v5);
  swift_storeEnumTagMultiPayload();
  SceneMessenger.send(message:)();
  return sub_100006DA8(v4);
}

uint64_t sub_100044110()
{
  if (*(v0 + 40))
  {
    v1 = *(v0 + 32);
  }

  else
  {
    v1 = 1852399981;
  }

  return v1;
}

uint64_t sub_100044180@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 40);
  if (v3)
  {
    *a1 = *(v1 + 32);
    a1[1] = v3;
    v4 = &enum case for HostIdentity.injected(_:);
  }

  else
  {
    v4 = &enum case for HostIdentity.main(_:);
  }

  v5 = *v4;
  v6 = type metadata accessor for HostIdentity();
  (*(*(v6 - 8) + 104))(a1, v5, v6);
}

uint64_t sub_1000442A4()
{
  v0 = type metadata accessor for Callsite();
  __chkstk_darwin(v0 - 8);
  Callsite.init(_:_:_:_:)();
  type metadata accessor for Unreachable();
  sub_100045264(&qword_10006EA30, &type metadata accessor for Unreachable, &protocol conformance descriptor for Unreachable);
  swift_allocError();
  Unreachable.init(_:diagnostics:callsite:)();
  return swift_willThrow();
}

uint64_t sub_1000443F4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100004C60(&qword_1000709A8, &unk_10004FB28);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC12PreviewShell9MainScene____lazy_storage___thumbnailSceneCache;
  swift_beginAccess();
  sub_10002D4F0(v1 + v9, v8, &qword_1000709A8, &unk_10004FB28);
  v10 = type metadata accessor for ThumbnailSceneCache();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_10000BF34(v8, &qword_1000709A8, &unk_10004FB28);
  sub_100045264(&qword_100070918, type metadata accessor for MainScene, &unk_10004F66C);
  swift_retain_n();
  ThumbnailSceneCache.init(in:makeHostingViewController:)();
  (*(v11 + 16))(v6, a1, v10);
  (*(v11 + 56))(v6, 0, 1, v10);
  swift_beginAccess();
  sub_100045F64(v6, v1 + v9);
  return swift_endAccess();
}

uint64_t sub_100044640(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v6 = sub_100045264(a3, a4, a5);
  v7 = objc_allocWithZone(type metadata accessor for RemoteContentViewController(0));

  return sub_100012A18(v8, a2, v6);
}

char *sub_1000446B8()
{
  v1 = type metadata accessor for Callsite();
  __chkstk_darwin(v1 - 8);
  v2 = [*(v0 + 32) keyWindow];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 uv_createSnapshotImageFromIOSurface];
    if (v4)
    {
      v5 = v4;
    }

    else
    {
      type metadata accessor for LocalSnapshotError();
      sub_100045264(&qword_1000709C8, &type metadata accessor for LocalSnapshotError, &protocol conformance descriptor for LocalSnapshotError);
      swift_allocError();
      v5 = v6;
      v3 = v3;
      LocalSnapshotError.init(window:)();
      swift_willThrow();
    }
  }

  else
  {
    v5 = "snapshots";
    Callsite.init(_:_:_:_:)();
    type metadata accessor for Unreachable();
    sub_100045264(&qword_10006EA30, &type metadata accessor for Unreachable, &protocol conformance descriptor for Unreachable);
    swift_allocError();
    Unreachable.init(_:diagnostics:callsite:)();
    swift_willThrow();
  }

  return v5;
}

uint64_t sub_1000448A0()
{
  updated = type metadata accessor for SceneUpdateTiming();
  v1 = *(updated - 8);
  __chkstk_darwin(updated);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PreviewPreferences();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100004C60(&qword_100070098, &unk_10004F238);
  __chkstk_darwin(v8 - 8);
  v10 = &v18 - v9;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v12 = *(Strong + 24);

    SceneUpdateHandshake.preferences.getter();
    PreviewPreferences.preferredOrientation.getter();
    (*(v5 + 8))(v7, v4);
    v13 = type metadata accessor for PreviewPreferences.InterfaceOrientation();
    (*(*(v13 - 8) + 56))(v10, 0, 1, v13);
    v14 = OBJC_IVAR____TtC12PreviewShell20CanvasViewController_forcedOrientation;
    swift_beginAccess();
    sub_100046168(v10, v12 + v14);
    swift_endAccess();
    [v12 setNeedsUpdateOfSupportedInterfaceOrientations];

    sub_10000BF34(v10, &qword_100070098, &unk_10004F238);
  }

  v15 = SceneUpdateHandshake.fenceHandle.getter();
  [v15 invalidate];

  sub_100004C60(&qword_10006EA20, &qword_10004D9B0);
  SceneUpdateHandshake.timing.getter();
  v16 = static Future.succeeded(dsoHandle:file:line:column:function:_:)();
  (*(v1 + 8))(v3, updated);
  return v16;
}

uint64_t sub_100044BC8()
{

  v1 = OBJC_IVAR____TtC12PreviewShell9MainScene_sceneCrashedStyle;
  v2 = type metadata accessor for SceneCrashedStyle();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_10000BF34(v0 + OBJC_IVAR____TtC12PreviewShell9MainScene____lazy_storage___thumbnailSceneCache, &qword_1000709A8, &unk_10004FB28);
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

void sub_100044CDC(uint64_t a1)
{
  type metadata accessor for SceneCrashedStyle();
  if (v1 <= 0x3F)
  {
    sub_100042824(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_100044DD0(uint64_t a1)
{
  swift_weakAssign();
}

uint64_t sub_100044E3C@<X0>(void *a1@<X8>)
{
  a1[3] = *v1;
  a1[4] = &off_100063D70;
  *a1 = v1;
}

uint64_t sub_100044E78(uint64_t a1)
{
  v2 = SceneSettingsUpdate.sceneSettings.getter();
  v3 = *(v1 + 40);
  *(v1 + 40) = v2;

  return EventStream.Sink.send(_:)();
}

uint64_t sub_100044EC4()
{
  if (qword_10006E5F8 != -1)
  {
    swift_once();
  }

  v0 = qword_10006F690;
  if (byte_10006F698)
  {
    swift_errorRetain();
    sub_100004C60(&qword_10006E8E8, &qword_10004D780);
    swift_willThrowTypedImpl();
  }

  else
  {
  }

  return v0;
}

unint64_t sub_100044FBC@<X0>(unint64_t *a1@<X2>, uint64_t (*a2)(uint64_t)@<X3>, uint64_t a3@<X4>, uint64_t *a4@<X8>)
{
  v7 = *v4;
  v8 = sub_100045264(a1, a2, a3);
  result = (*(v8 + 96))(v7, v8);
  if (!v5)
  {
    v10 = sub_100038B04();

    a4[3] = &type metadata for ShellThumbnailFactory;
    result = sub_100045FD4();
    a4[4] = result;
    *a4 = v10;
  }

  return result;
}

uint64_t sub_1000450B4@<X0>(unsigned int *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a2(0);
  v6 = *(*(v5 - 8) + 104);

  return v6(a3, v4, v5);
}

uint64_t sub_100045144@<X0>(uint64_t *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a2(0);
  v7 = *(*(v6 - 8) + 16);

  return v7(a3, v3 + v5, v6);
}

uint64_t sub_100045264(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000452AC(uint64_t a1)
{
  result = sub_100045264(&qword_100070920, type metadata accessor for MainScene, &unk_10004F6FC);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100045304(uint64_t a1)
{
  result = sub_100045264(&qword_1000704C8, type metadata accessor for MainScene, &unk_10004F734);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000453EC(uint64_t a1)
{
  result = sub_100045264(&qword_100070930, type metadata accessor for HostInjectedScene, &unk_10004F834);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100045444(uint64_t a1)
{
  result = sub_100045264(&qword_100070508, type metadata accessor for HostInjectedScene, &unk_10004F86C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10004552C(uint64_t a1)
{
  result = sub_100045264(&qword_100070948, type metadata accessor for LocalStaticScene, &unk_10004F95C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100045584(uint64_t a1)
{
  result = sub_100045264(&qword_10006F6E0, type metadata accessor for LocalStaticScene, &unk_10004F994);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10004566C(uint64_t a1)
{
  result = sub_100045264(&qword_100070960, type metadata accessor for SimDisplayScene, &unk_10004FA84);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000456C4(uint64_t a1)
{
  result = sub_100045264(&qword_100070968, type metadata accessor for SimDisplayScene, &unk_10004FABC);
  *(a1 + 8) = result;
  return result;
}

char *sub_10004571C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  type metadata accessor for InvalidationHandle();
  swift_allocObject();
  LOBYTE(v19) = 2;
  *(v4 + 2) = InvalidationHandle.init(dsoHandle:file:line:column:function:name:)();
  sub_100004C60(&qword_100070970, &qword_10004FAF8);
  swift_allocObject();
  *(v4 + 3) = EventStream.Sink.init()();
  sub_100004C60(&qword_100070980, &qword_10004FB08);
  swift_allocObject();
  *(v4 + 10) = EventStream.Sink.init()();
  v10 = OBJC_IVAR____TtC12PreviewShell17HostInjectedScene____lazy_storage___thumbnailSceneCache;
  v11 = type metadata accessor for ThumbnailSceneCache();
  (*(*(v11 - 8) + 56))(&v5[v10], 1, 1, v11);
  swift_weakInit();
  *(v5 + 4) = a1;
  *(v5 + 5) = a2;
  *(v5 + 6) = a3;
  v12 = objc_allocWithZone(PSSceneSettings);
  v13 = a3;
  *(v5 + 7) = [v12 initWithSettings:{a4, v19, 0, 0}];
  sub_100004C60(&qword_100070988, &qword_10004FB10);
  *(swift_allocObject() + 16) = v13;
  v14 = v13;
  *(v5 + 8) = SceneMessenger.__allocating_init(actionSender:)();

  UIScene.setPreviewSceneActionHandler(_:)();

  v15 = *(v5 + 8);
  type metadata accessor for HostPreferenceResolver();
  v16 = swift_allocObject();

  v17 = sub_10002B3F0(&_swiftEmptyArrayStorage);
  *(v16 + 16) = v15;
  *(v16 + 24) = v17;
  *(v5 + 9) = v16;

  SceneMessenger.messageReceiver.setter();

  return v5;
}

uint64_t sub_1000459A8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for SceneCrashedStyle();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  type metadata accessor for InvalidationHandle();
  swift_allocObject();
  *(v3 + 16) = InvalidationHandle.init(dsoHandle:file:line:column:function:name:)();
  sub_100004C60(&qword_100070970, &qword_10004FAF8);
  swift_allocObject();
  *(v3 + 24) = EventStream.Sink.init()();
  v12 = OBJC_IVAR____TtC12PreviewShell9MainScene____lazy_storage___thumbnailSceneCache;
  v13 = type metadata accessor for ThumbnailSceneCache();
  (*(*(v13 - 8) + 56))(v4 + v12, 1, 1, v13);
  swift_weakInit();
  *(v4 + 32) = a1;
  sub_10002D4F0(a2, v18, &qword_100070978, &qword_10004FB00);
  v14 = a1;
  SceneCrashedStyle.init(snapshotStyle:redCrossVisible:reloadHandler:)();
  (*(v9 + 32))(v4 + OBJC_IVAR____TtC12PreviewShell9MainScene_sceneCrashedStyle, v11, v8);
  v15 = [objc_allocWithZone(PSSceneSettings) initWithSettings:a3];
  sub_10000BF34(a2, &qword_100070978, &qword_10004FB00);
  *(v4 + 40) = v15;
  return v4;
}

uint64_t sub_100045BF8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100045C5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HostToShellMessage();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100045CC0()
{
  result = qword_100070998;
  if (!qword_100070998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070998);
  }

  return result;
}

uint64_t sub_100045D14()
{
  v1 = *(sub_100004C60(&qword_100070990, &qword_10004FB18) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for SceneMessageResponder();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100045E2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004C60(&qword_100070990, &qword_10004FB18);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100045E9C(uint64_t *a1)
{
  v3 = *(sub_100004C60(&qword_100070990, &qword_10004FB18) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100043AA8(a1, v4);
}

uint64_t sub_100045F64(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004C60(&qword_1000709A8, &unk_10004FB28);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_100045FD4()
{
  result = qword_1000709B0;
  if (!qword_1000709B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000709B0);
  }

  return result;
}

unint64_t sub_100046028()
{
  result = qword_1000709B8;
  if (!qword_1000709B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000709B8);
  }

  return result;
}

unint64_t sub_100046074()
{
  result = qword_1000709C0;
  if (!qword_1000709C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000709C0);
  }

  return result;
}

uint64_t sub_100046168(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004C60(&qword_100070098, &unk_10004F238);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100046224()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.uv.getter();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Invalidating scene settings is no-op on injected preview shell scenes.", v6, 2u);
  }

  return (*(v1 + 8))(v3, v0);
}

unint64_t sub_100046380()
{
  result = qword_1000709D0;
  if (!qword_1000709D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000709D0);
  }

  return result;
}

unint64_t sub_1000463D8()
{
  result = qword_1000709D8;
  if (!qword_1000709D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000709D8);
  }

  return result;
}

unint64_t sub_10004642C()
{
  result = qword_1000709E0;
  if (!qword_1000709E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000709E0);
  }

  return result;
}

BOOL sub_1000464DC@<W0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v5 = *a1;
  result = sub_1000274C8(*a1);
  if (result && (v3 & 0x18) == 24)
  {
    v9 = 0;
  }

  else
  {
    result = sub_1000274D8(v5);
    v8 = result && (v3 & 2) != 0;
    if (!v8)
    {
      v5 = 0;
    }

    v9 = v8 ^ 1;
  }

  *a3 = v5;
  *(a3 + 8) = v9 & 1;
  return result;
}

uint64_t UIInterfaceOrientation.description.getter(uint64_t a1)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      return 0x6E776F6E6B6E75;
    }

    if (a1 == 1)
    {
      return 0x7469617274726F70;
    }

    return 0x446E776F6E6B6E75;
  }

  if (a1 == 2)
  {
    return 0xD000000000000012;
  }

  result = 0x70616373646E616CLL;
  if (a1 != 4 && a1 != 3)
  {
    return 0x446E776F6E6B6E75;
  }

  return result;
}

uint64_t sub_100046628()
{
  v1 = *v0;
  if (*v0 <= 1)
  {
    if (!v1)
    {
      return 0x6E776F6E6B6E75;
    }

    if (v1 == 1)
    {
      return 0x7469617274726F70;
    }

    return 0x446E776F6E6B6E75;
  }

  if (v1 == 2)
  {
    return 0xD000000000000012;
  }

  result = 0x70616373646E616CLL;
  if (v1 != 4 && v1 != 3)
  {
    return 0x446E776F6E6B6E75;
  }

  return result;
}

uint64_t sub_100046710(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v59 = a4;
  v71 = a2;
  v72 = a3;
  v77 = a1;
  v10 = sub_100004C60(&qword_10006F450, &qword_10004E198);
  __chkstk_darwin(v10 - 8);
  v73 = &v57 - v11;
  v12 = type metadata accessor for PreviewSceneRole();
  __chkstk_darwin(v12 - 8);
  updated = type metadata accessor for SceneUpdateTiming();
  v65 = *(updated - 8);
  v66 = updated;
  __chkstk_darwin(updated);
  v67 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for SceneUpdateSeed();
  v62 = *(v63 - 8);
  __chkstk_darwin(v63);
  v64 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for SceneUpdateContext();
  v74 = *(v16 - 8);
  v75 = v16;
  v17 = __chkstk_darwin(v16);
  v68 = v18;
  v69 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v76 = &v57 - v19;
  v61 = type metadata accessor for Logger();
  v60 = *(v61 - 8);
  __chkstk_darwin(v61);
  v21 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for Callsite();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v57 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  Callsite.init(_:_:_:_:)();
  assertMainThread(callsite:)();
  (*(v23 + 8))(v25, v22);
  v81 = 0;
  v79 = 0u;
  v80 = 0u;
  v26 = v7[3];
  v27 = v7[4];
  v28 = type metadata accessor for CanvasUpdater.UpdateDelegate(0);
  swift_allocObject();
  swift_unknownObjectRetain();

  v29 = sub_100012360(&v79, v26, v27, a5, a6);
  swift_unknownObjectRelease();

  v30 = v7[2];
  v70 = v28;
  if (v30)
  {
    *&v79 = v30;
    sub_100049E44(&qword_10006ECC0, &unk_10004DCC8);
    Invalidatable.invalidate(dsoHandle:file:line:column:function:)();
  }

  v7[2] = v29;

  static Logger.uv.getter();
  sub_10000E808(v77, &v79);

  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v58 = v29;
    v34 = v33;
    v35 = swift_slowAlloc();
    v57 = v21;
    v78 = v35;
    *v34 = 136446466;
    swift_getObjectType();
    v36 = dispatch thunk of PreviewShellScene.identifier.getter();
    v38 = sub_10000E0C0(v36, v37, &v78);

    *(v34 + 4) = v38;
    *(v34 + 12) = 2082;
    sub_10000E678(&v79, *(&v80 + 1));
    swift_getDynamicType();
    v39 = _typeName(_:qualified:)();
    v41 = v40;
    sub_10000519C(&v79);
    v42 = sub_10000E0C0(v39, v41, &v78);

    *(v34 + 14) = v42;
    _os_log_impl(&_mh_execute_header, v31, v32, "Canvas %{public}s performing custom update using %{public}s", v34, 0x16u);
    swift_arrayDestroy();

    v29 = v58;

    (*(v60 + 8))(v57, v61);
  }

  else
  {

    sub_10000519C(&v79);
    (*(v60 + 8))(v21, v61);
  }

  (*(v62 + 16))(v64, v29 + OBJC_IVAR____TtCC12PreviewShell13CanvasUpdaterP33_AD1F3764465B03D85C2D8A634FCA9F5714UpdateDelegate_seed, v63);
  (*(v65 + 16))(v67, v71, v66);
  swift_getObjectType();
  dispatch thunk of PreviewShellScene.role.getter();
  v43 = v76;
  SceneUpdateContext.init(seed:timing:role:)();
  sub_100004C60(&qword_1000709F8, &qword_10004FE78);
  v44 = type metadata accessor for TaskPriority();
  (*(*(v44 - 8) + 56))(v73, 1, 1, v44);
  v45 = v74;
  v46 = v75;
  v47 = v69;
  (*(v74 + 16))(v69, v43, v75);
  v48 = v29;
  v49 = (*(v45 + 80) + 40) & ~*(v45 + 80);
  v50 = swift_allocObject();
  v51 = v59;
  *(v50 + 2) = v72;
  *(v50 + 3) = v51;
  *(v50 + 4) = v48;
  (*(v45 + 32))(&v50[v49], v47, v46);

  Future<A>.init(dsoHandle:file:line:column:function:priority:operation:cleanupOnCancelation:)();
  v52 = v77[3];
  v53 = v77[4];
  v54 = sub_10000E678(v77, v52);
  sub_100011CFC(v48, v54, v7, v52, v53);
  sub_100004C60(&qword_10006E8F8, &qword_10004D790);
  v55 = static Future<A>.zip<A, B>(dsoHandle:file:line:column:function:_:_:)();
  *&v79 = v48;
  sub_100049E44(&qword_10006ECC0, &unk_10004DCC8);

  Invalidatable.onInvalidation(_:)();

  (*(v45 + 8))(v76, v46);

  return v55;
}

uint64_t sub_1000470C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[8] = a1;
  v4[9] = a2;
  type metadata accessor for MainActor();
  v4[12] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[13] = v6;
  v4[14] = v5;

  return _swift_task_switch(sub_100047160, v6, v5);
}

uint64_t sub_100047160()
{
  v1 = v0[10];
  v2 = v0[8];
  v0[5] = type metadata accessor for CanvasUpdater.UpdateDelegate(0);
  v0[6] = sub_100049E44(&qword_10006ECD0, &unk_10004DCF0);
  v0[2] = v1;

  v6 = (v2 + *v2);
  v3 = swift_task_alloc();
  v0[15] = v3;
  *v3 = v0;
  v3[1] = sub_1000472A8;
  v4 = v0[11];

  return (v6)(v0 + 7, v0 + 2, v4);
}

uint64_t sub_1000472A8()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = v2[13];
    v4 = v2[14];
    v5 = sub_10004742C;
  }

  else
  {
    sub_10000519C(v2 + 2);
    v3 = v2[13];
    v4 = v2[14];
    v5 = sub_1000473C4;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1000473C4()
{

  v1.n128_u64[0] = *(v0 + 56);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10004742C()
{

  sub_10000519C((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100047498(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v10 = sub_100004C60(&qword_10006F450, &qword_10004E198);
  __chkstk_darwin(v10 - 8);
  v12 = &v24 - v11;
  updated = type metadata accessor for SceneUpdateTiming();
  v14 = *(updated - 8);
  __chkstk_darwin(updated);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100036134(a2);
  (*(v14 + 104))(v16, enum case for SceneUpdateTiming.async(_:), updated);
  sub_10000E808(a2, v27);
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  sub_10000BF1C(v27, v17 + 24);

  sub_100046710(a2, v16, a3, a4, sub_1000495B0, v17);

  (*(v14 + 8))(v16, updated);
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v12, 1, 1, v18);
  v19 = swift_allocObject();
  v20 = v26;
  *(v19 + 16) = v25;
  *(v19 + 24) = v20;
  v21 = swift_allocObject();
  *(v21 + 16) = &unk_10004FE58;
  *(v21 + 24) = v19;
  type metadata accessor for PreviewSnapshot();

  v22 = Future.then<A>(dsoHandle:file:line:column:function:priority:transform:)();

  sub_1000499E8(v12);
  return v22;
}

uint64_t sub_100047790(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = *(sub_100004C60(&qword_1000709F0, &qword_10004FE70) + 48);
  v10 = (a3 + *a3);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10002020C;

  return v10(a1, a2, a2 + v7);
}

uint64_t sub_1000478BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[25] = a4;
  v5[26] = a5;
  v5[23] = a2;
  v5[24] = a3;
  v5[22] = a1;
  v6 = *(a5 - 8);
  v5[27] = v6;
  v5[28] = *(v6 + 64);
  v5[29] = swift_task_alloc();
  v5[30] = type metadata accessor for MainActor();
  v5[31] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[32] = v8;
  v5[33] = v7;

  return _swift_task_switch(sub_1000479B4, v8, v7);
}

uint64_t sub_1000479B4()
{
  v1 = v0[25];
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v0[34] = 0;
  v0[35] = 0xE000000000000000;
  type metadata accessor for ThumbnailHostFactory();
  v2 = ThumbnailHostFactory.makeHost.getter();
  v0[36] = v3;
  v4 = *(v1 + 32);
  v0[37] = v4;
  v5 = *(*(v1 + 40) + 8);
  swift_unknownObjectRetain();
  v8 = (v2 + *v2);
  v6 = swift_task_alloc();
  v0[38] = v6;
  *v6 = v0;
  v6[1] = sub_100047B18;

  return (v8)(v0 + 2, v4, v5);
}

uint64_t sub_100047B18()
{
  v2 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {
    swift_unknownObjectRelease();

    v3 = *(v2 + 256);
    v4 = *(v2 + 264);
    v5 = sub_100048174;
  }

  else
  {

    swift_unknownObjectRelease();
    v3 = *(v2 + 256);
    v4 = *(v2 + 264);
    v5 = sub_100047C90;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100047C90()
{
  v21 = *(v0 + 272);
  v22 = *(v0 + 280);
  v1 = *(v0 + 232);
  v2 = *(v0 + 216);
  v4 = *(v0 + 200);
  v3 = *(v0 + 208);
  v5 = *(v0 + 184);
  v7 = *(v0 + 40);
  v6 = *(v0 + 48);
  v8 = sub_10000E678((v0 + 16), v7);
  *(v0 + 80) = v7;
  *(v0 + 88) = *(v6 + 8);
  v9 = sub_100011FC4((v0 + 56));
  (*(*(v7 - 8) + 16))(v9, v8, v7);
  sub_10000E808(v0 + 16, v0 + 96);
  (*(v2 + 16))(v1, v5, v3);
  v10 = (*(v2 + 80) + 80) & ~*(v2 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = v3;
  *(v11 + 3) = v21;
  *(v11 + 4) = v22;
  sub_10000BF1C((v0 + 96), (v11 + 40));
  (*(v2 + 32))(&v11[v10], v1, v3);
  v12 = swift_allocObject();
  v12[2] = v21;
  v12[3] = v22;
  v12[4] = v4;
  sub_10000E808(v0 + 56, v0 + 136);
  v13 = swift_allocObject();
  v13[2] = v4;
  sub_10000BF1C((v0 + 136), (v13 + 3));
  v13[8] = &unk_10004FE20;
  v13[9] = v11;
  v13[10] = &unk_10004FE30;
  v13[11] = v12;
  v14 = type metadata accessor for PreviewSnapshot();
  swift_bridgeObjectRetain_n();
  swift_retain_n();

  v15 = FutureSerialQueue.enqueue<A>(priority:makeFuture:)();
  *(v0 + 320) = v15;

  sub_10000519C((v0 + 56));
  v16 = swift_allocObject();
  *(v16 + 16) = v21;
  *(v16 + 24) = v22;
  Future.observeCancelation(_:)();

  v17 = static MainActor.shared.getter();
  *(v0 + 328) = v17;
  v18 = swift_task_alloc();
  *(v0 + 336) = v18;
  *v18 = v0;
  v18[1] = sub_100047FD4;
  v19 = *(v0 + 176);

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v19, &unk_10004FE40, v15, sub_1000494D0, v15, v17, &protocol witness table for MainActor, v14);
}

uint64_t sub_100047FD4()
{
  v2 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    v3 = *(v2 + 256);
    v4 = *(v2 + 264);
    v5 = sub_1000481E0;
  }

  else
  {

    v3 = *(v2 + 256);
    v4 = *(v2 + 264);
    v5 = sub_1000480F0;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1000480F0()
{

  sub_10000519C((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100048174()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000481E0()
{

  sub_10000519C((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100048268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v8 = type metadata accessor for Logger();
  v7[9] = v8;
  v7[10] = *(v8 - 8);
  v7[11] = swift_task_alloc();
  type metadata accessor for MainActor();
  v7[12] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v7[13] = v10;
  v7[14] = v9;

  return _swift_task_switch(sub_100048368, v10, v9);
}

uint64_t sub_100048368(uint64_t a1)
{
  v23 = v1;
  static Logger.uv.getter();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  v4 = os_log_type_enabled(v2, v3);
  v6 = v1[10];
  v5 = v1[11];
  v7 = v1[9];
  if (v4)
  {
    v20 = v1[5];
    v21 = v1[6];
    v8 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v8 = 136315394;
    sub_100049524();
    v9 = _typeName(_:qualified:)();
    v11 = sub_10000E0C0(v9, v10, &v22);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_10000E0C0(v20, v21, &v22);
    _os_log_impl(&_mh_execute_header, v2, v3, "Hosting thumbnail content for %s, state = %s", v8, 0x16u);
    swift_arrayDestroy();
  }

  (*(v6 + 8))(v5, v7);
  v12 = v1[7];
  v13 = v12[3];
  v14 = v12[4];
  sub_10000E678(v12, v13);
  v15 = swift_task_alloc();
  v1[15] = v15;
  *v15 = v1;
  v15[1] = sub_10004857C;
  v16 = v1[8];
  v18 = v1[3];
  v17 = v1[4];

  return dispatch thunk of ThumbnailHost.displayThumbnailAndPerformHandshake(for:context:delegate:)(v16, v17, v18, v13, v14);
}

uint64_t sub_10004857C(double a1)
{
  v4 = *v2;
  *(*v2 + 128) = v1;

  if (v1)
  {
    v5 = *(v4 + 104);
    v6 = *(v4 + 112);
    v7 = sub_100048720;
  }

  else
  {
    *(v4 + 136) = a1;
    v5 = *(v4 + 104);
    v6 = *(v4 + 112);
    v7 = sub_1000486A0;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_1000486A0()
{
  v1 = v0[17];
  v2 = v0[2];

  *v2 = v1;

  v3 = v0[1];

  return v3();
}

uint64_t sub_100048720()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10004878C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  v8 = type metadata accessor for Logger();
  v6[6] = v8;
  v6[7] = *(v8 - 8);
  v6[8] = swift_task_alloc();
  v6[9] = *a3;
  type metadata accessor for MainActor();
  v6[10] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100048890, v10, v9);
}

uint64_t sub_100048890()
{
  v18 = v0;

  static Logger.uv.getter();

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();

  v3 = os_log_type_enabled(v1, v2);
  v5 = v0[7];
  v4 = v0[8];
  v6 = v0[6];
  if (v3)
  {
    v15 = v0[3];
    v16 = v0[4];
    v7 = swift_slowAlloc();
    v17[0] = swift_slowAlloc();
    *v7 = 136315394;
    sub_100049524();
    v8 = _typeName(_:qualified:)();
    v10 = sub_10000E0C0(v8, v9, v17);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_10000E0C0(v15, v16, v17);
    _os_log_impl(&_mh_execute_header, v1, v2, "Generating thumbnail snapshot for %s, state = %s", v7, 0x16u);
    swift_arrayDestroy();
  }

  (*(v5 + 8))(v4, v6);
  swift_getObjectType();
  dispatch thunk of PreviewShellScene.takeSnapshot()();
  v11 = dispatch thunk of PreviewShellScene.windowScene.getter();
  v12 = [v11 screen];

  [v12 scale];
  PreviewSnapshot.init(image:selectableRegions:cornerRadius:scaleFactor:)();

  v13 = v0[1];

  return v13();
}

uint64_t sub_100048B14(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.uv.getter();

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v17 = a2;
    v12 = v11;
    v18 = swift_slowAlloc();
    *v12 = 136315394;
    sub_100049524();
    v13 = _typeName(_:qualified:)();
    v15 = sub_10000E0C0(v13, v14, &v18);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_10000E0C0(v17, a3, &v18);
    _os_log_impl(&_mh_execute_header, v9, v10, "Thumbnail generation canceled for %s, state = %s", v12, 0x16u);
    swift_arrayDestroy();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100048D04(uint64_t a1)
{
  v1[2] = type metadata accessor for MainActor();
  v1[3] = static MainActor.shared.getter();
  v3 = swift_task_alloc();
  v1[4] = v3;
  *v3 = v1;
  v3[1] = sub_100048DC8;

  return Future<A>.value.getter(a1);
}

uint64_t sub_100048DC8()
{
  *(*v1 + 40) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_100048F88;
  }

  else
  {
    v4 = sub_100048F24;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_100048F24()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100048F88()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100048FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_10001D424;

  return sub_1000478BC(a1, a2, a3, v10, a4);
}

uint64_t sub_1000490B4()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 80) & ~v3;
  v5 = *(v2 + 64);

  sub_10000519C((v0 + 40));
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100049178(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[3];
  v9 = (*(*(v3[2] - 8) + 80) + 80) & ~*(*(v3[2] - 8) + 80);
  v10 = v3[4];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_10002020C;

  return sub_100048268(a1, a2, a3, v8, v10, (v3 + 5), v3 + v9);
}

uint64_t sub_100049284()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000492C4(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = v3[2];
  v9 = v3[3];
  v10 = v3[4];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_10002020C;

  return sub_10004878C(a1, a2, a3, v8, v9, v10);
}

uint64_t sub_100049390()
{

  sub_10000519C((v0 + 24));

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_1000493F4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100049434(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10002020C;

  return sub_100048D04(a1);
}

unint64_t sub_100049524()
{
  result = qword_1000709E8;
  if (!qword_1000709E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000709E8);
  }

  return result;
}

uint64_t sub_100049570()
{

  sub_10000519C((v0 + 24));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000495BC(uint64_t a1, void *a2, uint64_t a3, int *a4)
{
  *(v4 + 16) = *a2;
  v9 = (a4 + *a4);
  v7 = swift_task_alloc();
  *(v4 + 24) = v7;
  *v7 = v4;
  v7[1] = sub_1000496D4;

  return v9(a1, a3, v4 + 16);
}

uint64_t sub_1000496D4()
{
  *(*v1 + 32) = v0;

  if (v0)
  {
    v2 = sub_100049800;
  }

  else
  {
    v2 = sub_1000497E8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100049818()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100049850(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10001D424;

  return sub_1000495BC(a1, a2, a3, v8);
}

uint64_t sub_100049920(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10002020C;

  return sub_100047790(a1, a2, v6);
}

uint64_t sub_1000499E8(uint64_t a1)
{
  v2 = sub_100004C60(&qword_10006F450, &qword_10004E198);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100049A50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = sub_100049B08;

  return sub_1000470C4(a2, a3, a4, a5);
}

uint64_t sub_100049B08(double a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_100049C18()
{
  updated = type metadata accessor for SceneUpdateContext();
  v2 = *(updated - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, updated);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100049CE4(uint64_t a1)
{
  v4 = *(type metadata accessor for SceneUpdateContext() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002020C;

  return sub_100049A50(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100049E44(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CanvasUpdater.UpdateDelegate(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t ContentProviderRegistry.register<A>(provider:for:override:)()
{
  return ContentProviderRegistry.register<A>(provider:for:override:)();
}

{
  return ContentProviderRegistry.register<A>(provider:for:override:)();
}

{
  return ContentProviderRegistry.register<A>(provider:for:override:)();
}