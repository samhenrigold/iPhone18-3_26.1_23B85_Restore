uint64_t sub_1000D776C()
{
  *(*v1 + 280) = v0;

  if (v0)
  {
    v2 = sub_1000D7C90;
  }

  else
  {
    v2 = sub_1000D7880;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000D7880()
{
  v1 = v0[19];
  v2 = v0[17];
  v3 = v0[15];
  v12 = v0[14];
  v4 = v0[12];
  v5 = v0[13];
  v6 = v0[11];
  v7 = v0[6];
  v8 = v0[7];
  v9 = v0[5];

  (*(v7 + 8))(v8, v9);
  (*(v4 + 8))(v5, v6);
  (*(v3 + 8))(v2, v12);
  sub_1000DC828(v1, type metadata accessor for TetsuoJetpackInfo);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1000D79BC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000D7A70()
{
  v1 = v0[19];
  v2 = v0[17];
  v3 = v0[14];
  v4 = v0[15];
  (*(v0[12] + 8))(v0[13], v0[11]);
  (*(v4 + 8))(v2, v3);
  sub_1000DC828(v1, type metadata accessor for TetsuoJetpackInfo);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1000D7B74()
{
  v1 = v0[19];
  v2 = v0[17];
  v3 = v0[14];
  v4 = v0[15];
  v6 = v0[12];
  v5 = v0[13];
  v7 = v0[11];

  (*(v6 + 8))(v5, v7);
  (*(v4 + 8))(v2, v3);
  sub_1000DC828(v1, type metadata accessor for TetsuoJetpackInfo);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000D7C90()
{
  v12 = v0[19];
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[15];
  v5 = v0[12];
  v4 = v0[13];
  v6 = v0[11];
  v7 = v0[6];
  v8 = v0[7];
  v9 = v0[5];

  (*(v7 + 8))(v8, v9);
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);
  sub_1000DC828(v12, type metadata accessor for TetsuoJetpackInfo);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1000D7DD8(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v2[13] = a2;
  v3 = type metadata accessor for JetPackAsset();
  v2[14] = v3;
  v2[15] = *(v3 - 8);
  v2[16] = swift_task_alloc();
  type metadata accessor for JetPackSigningPolicy();
  v2[17] = swift_task_alloc();
  v4 = type metadata accessor for InMemoryJetPackLoader();
  v2[18] = v4;
  v2[19] = *(v4 - 8);
  v2[20] = swift_task_alloc();
  v2[21] = type metadata accessor for TetsuoJetpackInfo(0);
  v2[22] = swift_task_alloc();

  return _swift_task_switch(sub_1000D7F50, 0, 0);
}

uint64_t sub_1000D7F50()
{
  v13 = v0;
  if (qword_100168E60 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006B0C(v1, qword_100182048);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    v6 = _typeName(_:qualified:)();
    v8 = sub_100006B44(v6, v7, &v12);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s - Loading Jetpack Resource Bundle", v4, 0xCu);
    sub_1000052E4(v5);
  }

  v0[23] = type metadata accessor for BaseObjectGraph();
  v0[24] = static BaseObjectGraph.current.getter();
  v9 = swift_task_alloc();
  v0[25] = v9;
  *v9 = v0;
  v9[1] = sub_1000D8134;
  v10 = v0[22];

  return BaseObjectGraph.inject<A>(_:)(v10);
}

uint64_t sub_1000D8134()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_1000D8730;
  }

  else
  {

    v2 = sub_1000D8250;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000D8250(uint64_t a1)
{
  sub_100080C60(v1[17]);
  v1[5] = type metadata accessor for JetPackManagedKeyProvider();
  v1[6] = &protocol witness table for JetPackManagedKeyProvider;
  sub_100020014(v1 + 2);
  JetPackManagedKeyProvider.init()();
  InMemoryJetPackLoader.init(signingPolicy:keyProvider:)();
  v1[27] = static BaseObjectGraph.current.getter();
  v2 = swift_task_alloc();
  v1[28] = v2;
  *v2 = v1;
  v2[1] = sub_1000D8350;
  v3 = v1[16];

  return BaseObjectGraph.inject<A>(_:)(v3);
}

uint64_t sub_1000D8350()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_1000D87C4;
  }

  else
  {
    v2 = sub_1000D8480;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000D8480()
{
  JetPackAsset.streamSource.getter();
  v1 = swift_task_alloc();
  *(v0 + 240) = v1;
  *v1 = v0;
  v1[1] = sub_1000D852C;
  v2 = *(v0 + 96);

  return InMemoryJetPackLoader.bundle(from:)(v2, v0 + 56);
}

uint64_t sub_1000D852C()
{
  v2 = *v1;
  *(v2 + 248) = v0;

  sub_1000052E4((v2 + 56));
  if (v0)
  {
    v3 = sub_1000D8888;
  }

  else
  {
    v3 = sub_1000D8648;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000D8648()
{
  v1 = v0[22];
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[18];
  (*(v0[15] + 8))(v0[16], v0[14]);
  (*(v3 + 8))(v2, v4);
  sub_1000DC828(v1, type metadata accessor for TetsuoJetpackInfo);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1000D8730()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000D87C4()
{
  v1 = v0[22];
  (*(v0[19] + 8))(v0[20], v0[18]);
  sub_1000DC828(v1, type metadata accessor for TetsuoJetpackInfo);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1000D8888()
{
  v1 = v0[22];
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[18];
  (*(v0[15] + 8))(v0[16], v0[14]);
  (*(v3 + 8))(v2, v4);
  sub_1000DC828(v1, type metadata accessor for TetsuoJetpackInfo);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1000D896C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for JetPackPath();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = type metadata accessor for InMemoryJetPackResourceBundle();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();

  return _swift_task_switch(sub_1000D8A88, 0, 0);
}

uint64_t sub_1000D8A88()
{
  v13 = v0;
  if (qword_100168E60 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006B0C(v1, qword_100182048);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    v6 = _typeName(_:qualified:)();
    v8 = sub_100006B44(v6, v7, &v12);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s - Loading Jetpack Source Provider", v4, 0xCu);
    sub_1000052E4(v5);
  }

  type metadata accessor for BaseObjectGraph();
  v0[10] = static BaseObjectGraph.current.getter();
  v9 = swift_task_alloc();
  v0[11] = v9;
  *v9 = v0;
  v9[1] = sub_1000D8C6C;
  v10 = v0[9];

  return BaseObjectGraph.inject<A>(_:)(v10);
}

uint64_t sub_1000D8C6C()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_1000D8E7C;
  }

  else
  {

    v2 = sub_1000D8D88;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000D8D88()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[4];
  v6 = v0[5];
  static JetPackPath.sourcePath.getter();
  InMemoryJetPackResourceBundle.inMemorySource(fromPath:)();
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1000D8E7C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000D8EF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a1;
  v74 = a2;
  v67 = type metadata accessor for OpenURLActionImplementation(0);
  __chkstk_darwin(v67);
  v66 = (v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_100002BE4(&qword_100170720, &qword_100118ED8);
  v5 = *(v4 - 8);
  v64 = v4;
  v65 = v5;
  __chkstk_darwin(v4);
  v63 = v55 - v6;
  v7 = sub_100002BE4(&qword_100170728, &qword_100118EE0);
  v8 = *(v7 - 8);
  v61 = v7;
  v62 = v8;
  __chkstk_darwin(v7);
  v60 = v55 - v9;
  v10 = sub_100002BE4(&unk_100170700, &unk_1001153F0);
  __chkstk_darwin(v10 - 8);
  v12 = v55 - v11;
  v57 = sub_100002BE4(&unk_100170730, &qword_100118EE8);
  v58 = *(v57 - 8);
  __chkstk_darwin(v57);
  v14 = v55 - v13;
  v15 = sub_100002BE4(&qword_100170718, &qword_100118ED0);
  v78 = *(v15 - 8);
  v16 = __chkstk_darwin(v15);
  v59 = v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v71 = v55 - v19;
  v20 = __chkstk_darwin(v18);
  v76 = v55 - v21;
  v22 = __chkstk_darwin(v20);
  v77 = v55 - v23;
  v24 = __chkstk_darwin(v22);
  v26 = v55 - v25;
  __chkstk_darwin(v24);
  v28 = v55 - v27;
  sub_10000C178(a1, v12, &unk_100170700, &unk_1001153F0);
  v29 = type metadata accessor for BaseObjectGraph();
  v30 = type metadata accessor for FlowAction(0);
  v70 = sub_1000DC7E0(&qword_100170288, type metadata accessor for FlowAction, &unk_100118494);
  v69 = sub_1000DC7E0(&qword_100170740, type metadata accessor for FlowAction, &unk_10011840C);
  v75 = v29;
  v55[1] = v30;
  AlertActionImplementation.init<A>(following:)();
  ActionDispatcher.init()();
  v31 = v78;
  v32 = *(v78 + 16);
  v73 = v28;
  v32(v28, v26, v15);
  sub_100012C48(&qword_100170748, &unk_100170730, &qword_100118EE8, &protocol conformance descriptor for AlertActionImplementation<A>);
  v33 = v57;
  ActionDispatcher.add<A>(_:)();
  v68 = *(v31 + 8);
  v78 = v31 + 8;
  v68(v26, v15);
  (*(v58 + 8))(v14, v33);
  v34 = v56;
  v55[0] = v12;
  sub_10000C178(v56, v12, &unk_100170700, &unk_1001153F0);
  v35 = v60;
  FlowActionImplementation.init(following:)();
  v36 = v77;
  ActionDispatcher.init()();
  v72 = v26;
  v32(v26, v36, v15);
  sub_100012C48(&qword_100170750, &qword_100170728, &qword_100118EE0, &protocol conformance descriptor for FlowActionImplementation<A, B>);
  v37 = v61;
  ActionDispatcher.add<A>(_:)();
  v38 = v68;
  v68(v36, v15);
  (*(v62 + 8))(v35, v37);
  sub_10000C178(v34, v55[0], &unk_100170700, &unk_1001153F0);
  v39 = v63;
  FlowBackActionImplementation.init<A>(following:)();
  v40 = v76;
  ActionDispatcher.init()();
  v32(v36, v40, v15);
  sub_100012C48(&qword_100170758, &qword_100170720, &qword_100118ED8, &protocol conformance descriptor for FlowBackActionImplementation<A>);
  v41 = v64;
  ActionDispatcher.add<A>(_:)();
  v38(v40, v15);
  (*(v65 + 8))(v39, v41);
  KeyPath = swift_getKeyPath();
  v43 = v66;
  *v66 = KeyPath;
  sub_100002BE4(&qword_100170760, &unk_100111070);
  swift_storeEnumTagMultiPayload();
  v44 = v71;
  ActionDispatcher.init()();
  v32(v40, v44, v15);
  sub_1000DC7E0(&qword_100170768, type metadata accessor for OpenURLActionImplementation, &unk_100111024);
  ActionDispatcher.add<A>(_:)();
  v45 = v44;
  v46 = v44;
  v47 = v38;
  v48 = v78;
  v38(v46, v15);
  sub_1000DC828(v43, type metadata accessor for OpenURLActionImplementation);
  v49 = v59;
  ActionDispatcher.init()();
  v32(v45, v49, v15);
  sub_1000DC888();
  ActionDispatcher.add<A>(_:)();
  v47(v49, v15);
  sub_100002BE4(&qword_100170778, &qword_100118F28);
  v50 = *(v48 + 64);
  v51 = (*(v48 + 72) + 32) & ~*(v48 + 72);
  v69 = 4 * v50;
  v70 = swift_allocObject();
  v52 = v70 + v51;
  v32((v70 + v51), v73, v15);
  v32((v52 + v50), v72, v15);
  v66 = (2 * v50);
  v32((v52 + 2 * v50), v77, v15);
  v67 = 3 * v50;
  v32((v52 + 3 * v50), v76, v15);
  v32((v52 + 4 * v50), v45, v15);
  ActionDispatcher.init()();
  v32(v49, v52, v15);
  ActionDispatcher.add(contentsOf:)();
  v53 = v68;
  v68(v49, v15);
  v32(v49, (v52 + v50), v15);
  ActionDispatcher.add(contentsOf:)();
  v53(v49, v15);
  v32(v49, v66 + v52, v15);
  ActionDispatcher.add(contentsOf:)();
  v53(v49, v15);
  v32(v49, (v52 + v67), v15);
  ActionDispatcher.add(contentsOf:)();
  v53(v49, v15);
  v32(v49, (v52 + v69), v15);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  ActionDispatcher.add(contentsOf:)();
  v53(v49, v15);
  v53(v71, v15);
  v53(v76, v15);
  v53(v77, v15);
  v53(v72, v15);
  return (v53)(v73, v15);
}

uint64_t sub_1000D99F4()
{
  v0 = type metadata accessor for Bag();
  __chkstk_darwin(v0);
  v1 = type metadata accessor for MetricsPipeline.Configuration();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v10[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v10[-1] - v6;
  type metadata accessor for BaseObjectGraph();
  static BaseObjectGraph.current.getter();
  BaseObjectGraph.inject<A>(_:)();
  v10[3] = type metadata accessor for IntentMetricsEventLinter();
  v10[4] = &protocol witness table for IntentMetricsEventLinter;
  sub_100020014(v10);

  IntentMetricsEventLinter.init(objectGraph:)();
  MetricsPipeline.Configuration.init(bag:linter:anonymousTopics:)();
  (*(v2 + 16))(v5, v7, v1);
  MetricsPipeline.init(from:)();

  return (*(v2 + 8))(v7, v1);
}

uint64_t sub_1000D9BD0(uint64_t a1)
{
  v1[19] = a1;
  sub_100002BE4(&qword_1001707A8, &unk_100118F60);
  v1[20] = swift_task_alloc();
  v2 = type metadata accessor for JSStack.Prerequisite();
  v1[21] = v2;
  v1[22] = *(v2 - 8);
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  sub_100002BE4(&qword_1001707B0, &qword_100117F20);
  v1[27] = swift_task_alloc();
  v3 = type metadata accessor for JSStack.StandardGlobalConfiguration();
  v1[28] = v3;
  v1[29] = *(v3 - 8);
  v1[30] = swift_task_alloc();

  return _swift_task_switch(sub_1000D9D80, 0, 0);
}

uint64_t sub_1000D9D80()
{
  type metadata accessor for BaseObjectGraph();
  *(v0 + 248) = static BaseObjectGraph.current.getter();
  sub_100002BE4(&qword_1001706C0, &qword_100118E58);
  v1 = swift_task_alloc();
  *(v0 + 256) = v1;
  *v1 = v0;
  v1[1] = sub_1000D9E50;

  return BaseObjectGraph.inject<A>(_:)(v0 + 16);
}

uint64_t sub_1000D9E50()
{
  v2 = *v1;
  v2[33] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1000DAB08, 0, 0);
  }

  else
  {
    v2[17] = _swiftEmptyArrayStorage;
    sub_100002BE4(&qword_1001706E0, &unk_100118E78);
    v3 = swift_task_alloc();
    v2[34] = v3;
    *v3 = v2;
    v3[1] = sub_1000DA000;

    return BaseObjectGraph.inject<A>(_:)(v2 + 7);
  }
}

uint64_t sub_1000DA000()
{
  *(*v1 + 280) = v0;

  if (v0)
  {
    v2 = sub_1000DABCC;
  }

  else
  {
    v2 = sub_1000DA114;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000DA114()
{
  static JSStack.StandardGlobalConfiguration.default.getter();
  v0[36] = type metadata accessor for Bag();
  v1 = swift_task_alloc();
  v0[37] = v1;
  *v1 = v0;
  v1[1] = sub_1000DA1D0;
  v2 = v0[27];

  return BaseObjectGraph.inject<A>(_:)(v2);
}

uint64_t sub_1000DA1D0()
{
  v2 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    (*(v2[29] + 8))(v2[30], v2[28]);
    v3 = sub_1000DAC98;
  }

  else
  {
    v3 = sub_1000DA2FC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000DA2FC()
{
  (*(*(v0[36] - 8) + 56))(v0[27], 0, 1);
  sub_100031904(0, &qword_1001706D8, AMSURLSession_ptr);
  v1 = swift_task_alloc();
  v0[39] = v1;
  *v1 = v0;
  v1[1] = sub_1000DA3F4;

  return BaseObjectGraph.inject<A>(_:)(v0 + 18);
}

uint64_t sub_1000DA3F4()
{
  v2 = *v1;
  (*v1)[40] = v0;

  if (v0)
  {
    v4 = v2[29];
    v3 = v2[30];
    v5 = v2[28];
    sub_100009908(v2[27], &qword_1001707B0, &qword_100117F20);
    (*(v4 + 8))(v3, v5);
    v6 = sub_1000DAD6C;
  }

  else
  {
    v2[41] = type metadata accessor for JSStack();
    v6 = sub_1000DA550;
  }

  return _swift_task_switch(v6, 0, 0);
}

id sub_1000DA550()
{
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[27];
  v4 = v0[26];
  v5 = v0[22];
  v48 = v0[28];
  v6 = v0[18];
  v7 = [objc_opt_self() currentProcess];
  sub_10002BFD4((v0 + 7), (v0 + 12));
  v8 = static JSStack.makeStandardPrerequisites(using:bag:urlSession:process:accountProvider:)();

  sub_100009908((v0 + 12), &qword_1001707B8, &unk_100118F70);
  sub_100009908(v3, &qword_1001707B0, &qword_100117F20);
  (*(v2 + 8))(v1, v48);
  sub_1000DB028(v8);
  v9 = [objc_allocWithZone(type metadata accessor for UTSService()) init];
  *v4 = 7566453;
  v4[1] = 0xE300000000000000;
  v4[2] = v9;
  v47 = enum case for JSStack.Prerequisite.dependency(_:);
  v49 = *(v5 + 104);
  v49(v4);
  v10 = v0[17];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = sub_1000091A0(0, *(v10 + 2) + 1, 1, v10);
  }

  v12 = *(v10 + 2);
  v11 = *(v10 + 3);
  if (v12 >= v11 >> 1)
  {
    v10 = sub_1000091A0((v11 > 1), v12 + 1, 1, v10);
  }

  v14 = v0[25];
  v13 = v0[26];
  v15 = v0[21];
  v16 = v0[22];
  *(v10 + 2) = v12 + 1;
  v18 = *(v16 + 32);
  v16 += 32;
  v17 = v18;
  v19 = (*(v16 + 48) + 32) & ~*(v16 + 48);
  v20 = *(v16 + 40);
  v18(&v10[v19 + v20 * v12], v13, v15);
  v21 = [objc_allocWithZone(type metadata accessor for JSLoggingService()) init];
  *v14 = 0x676F6C736ALL;
  v14[1] = 0xE500000000000000;
  v14[2] = v21;
  (v49)(v14, v47, v15);
  v23 = *(v10 + 2);
  v22 = *(v10 + 3);
  if (v23 >= v22 >> 1)
  {
    v10 = sub_1000091A0((v22 > 1), v23 + 1, 1, v10);
  }

  v25 = v0[24];
  v24 = v0[25];
  v26 = v0[21];
  *(v10 + 2) = v23 + 1;
  v17(&v10[v19 + v23 * v20], v24, v26);
  v27 = [objc_allocWithZone(type metadata accessor for TetsuoConfigService()) init];
  *v25 = 0xD000000000000013;
  v25[1] = 0x800000010011FEB0;
  v25[2] = v27;
  (v49)(v25, v47, v26);
  v29 = *(v10 + 2);
  v28 = *(v10 + 3);
  v30 = v29 + 1;
  if (v29 >= v28 >> 1)
  {
    v10 = sub_1000091A0((v28 > 1), v29 + 1, 1, v10);
  }

  v32 = v0[23];
  v31 = v0[24];
  v33 = v0[21];
  *(v10 + 2) = v30;
  v17(&v10[v19 + v29 * v20], v31, v33);
  sub_10002BFD4((v0 + 2), v32);
  (v49)(v32, enum case for JSStack.Prerequisite.source(_:), v33);
  v34 = *(v10 + 3);
  if ((v29 + 2) > (v34 >> 1))
  {
    v10 = sub_1000091A0((v34 > 1), v29 + 2, 1, v10);
  }

  v35 = v0[23];
  v37 = v0[20];
  v36 = v0[21];
  *(v10 + 2) = v29 + 2;
  v17(&v10[v19 + v30 * v20], v35, v36);
  v38 = type metadata accessor for SentryConfiguration();
  (*(*(v38 - 8) + 56))(v37, 1, 1, v38);
  v39 = objc_allocWithZone(JSVirtualMachine);

  result = [v39 init];
  if (result)
  {
    v41 = v0[40];

    swift_allocObject();
    v42 = JSStack.init(prerequisites:qualityOfService:sentryConfiguration:virtualMachine:)();
    if (v41)
    {

      sub_1000052E4(v0 + 7);
      sub_1000052E4(v0 + 2);

      v43 = v0[1];
    }

    else
    {
      v44 = v42;
      static BundleIdentifierConstants.tetsuoBundleIdentifier.getter();
      String.utf8CString.getter();

      has_internal_ui = os_variant_has_internal_ui();

      if (has_internal_ui)
      {
        JSStack.makeRemoteInspectable()();
      }

      v46 = v0[19];

      sub_1000052E4(v0 + 7);
      sub_1000052E4(v0 + 2);
      *v46 = v44;

      v43 = v0[1];
    }

    return v43();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000DAB08()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000DABCC()
{

  sub_1000052E4((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000DAC98()
{

  sub_1000052E4(v0 + 7);
  sub_1000052E4(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000DAD6C()
{

  sub_1000052E4(v0 + 7);
  sub_1000052E4(v0 + 2);

  v1 = v0[1];

  return v1();
}

void sub_1000DAE40(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  v3 = sub_100008F88(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_1000DAF34(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  v3 = sub_100009094(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_1000DB028(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_1000091A0(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = (v3[3] >> 1) - v3[2];
  type metadata accessor for JSStack.Prerequisite();
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

uint64_t sub_1000DB154(uint64_t a1)
{
  v1[12] = a1;
  v2 = sub_100002BE4(&qword_100170788, &qword_100118F48);
  v1[13] = v2;
  v1[14] = *(v2 - 8);
  v1[15] = swift_task_alloc();
  v3 = type metadata accessor for NativeIntentDispatcher();
  v1[16] = v3;
  v1[17] = *(v3 - 8);
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();

  return _swift_task_switch(sub_1000DB294, 0, 0);
}

uint64_t sub_1000DB294()
{
  v1 = v0[19];
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[15];
  v14 = v0[16];
  v6 = v0[13];
  v5 = v0[14];
  type metadata accessor for Models.DeepLinkIntent();
  DeepLinkIntentImplementation.init(dispatching:routes:)();
  NativeIntentDispatcher.init()();
  sub_100012C48(&qword_100170790, &qword_100170788, &qword_100118F48, &protocol conformance descriptor for DeepLinkIntentImplementation<A>);
  v13 = v2;
  NativeIntentDispatcher.registering<A>(_:)();
  v7 = *(v3 + 8);
  v0[21] = v7;
  v0[22] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v2, v14);
  (*(v5 + 8))(v4, v6);
  sub_100002BE4(&qword_100170798, &qword_100118F50);
  v8 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v9 = swift_allocObject();
  v10 = *(v3 + 16);
  v0[23] = v10;
  v0[24] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v10(v9 + v8, v1, v14);
  NativeIntentDispatcher.init()();
  v10(v13, v9 + v8, v14);
  swift_setDeallocating();
  v7(v9 + v8, v14);
  swift_deallocClassInstance();
  NativeIntentDispatcher.register(contentsOf:)();
  v7(v13, v14);
  v7(v1, v14);
  type metadata accessor for BaseObjectGraph();
  v0[25] = static BaseObjectGraph.current.getter();
  v0[5] = type metadata accessor for JSStack();
  v0[6] = &protocol witness table for JSStack;
  v11 = swift_task_alloc();
  v0[26] = v11;
  *v11 = v0;
  v11[1] = sub_1000DB550;

  return BaseObjectGraph.inject<A>(_:)(v0 + 2);
}

uint64_t sub_1000DB550()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    (*(v2 + 168))(*(v2 + 160), *(v2 + 128));

    v3 = sub_1000DB7C0;
  }

  else
  {

    v3 = sub_1000DB6A0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000DB6A0()
{
  v1 = v0[23];
  v2 = v0[21];
  v3 = v0[20];
  v4 = v0[16];
  v5 = v0[12];
  v5[3] = v4;
  v5[4] = &protocol witness table for NativeIntentDispatcher;
  sub_100020014(v5);
  v1();
  sub_10000C178((v0 + 2), (v0 + 7), &qword_1001707A0, &qword_100118F58);
  NativeIntentDispatcher.next.setter();
  v2(v3, v4);
  sub_100009908((v0 + 2), &qword_1001707A0, &qword_100118F58);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1000DB7C0()
{
  sub_1000C7CA0((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000DB898(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100024388;

  return sub_1000D5610(a1, v4);
}

uint64_t sub_1000DB938(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100024388;

  return sub_1000D57E8(a1, v4);
}

uint64_t sub_1000DB9D8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100024388;

  return sub_1000D5CC8(a1, v4);
}

uint64_t sub_1000DBA78(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000FA04;

  return sub_1000D643C(a1, v4);
}

uint64_t sub_1000DBB18(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100024388;

  return sub_1000D69F0(a1, v4);
}

uint64_t sub_1000DBBB8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100024388;

  return sub_1000D7DD8(a1, v4);
}

uint64_t sub_1000DBC58(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100024388;

  return sub_1000D896C(a1, v4);
}

uint64_t sub_1000DBCF8(uint64_t a1)
{
  v2 = type metadata accessor for OpenURLAction();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.openURL.setter();
}

uint64_t sub_1000DBDF0()
{
  v1 = (sub_100002BE4(&unk_100170700, &unk_1001153F0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[10];
  v6 = sub_100002BE4(&qword_100170710, &qword_10011A170);
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000DBF00(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&unk_100170700, &unk_1001153F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000DBF70()
{
  v1 = *(sub_100002BE4(&unk_100170700, &unk_1001153F0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1000D31B4(v2, v3);
}

uint64_t sub_1000DBFE0()
{
  v0 = type metadata accessor for Dependency();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v12 - v5;
  type metadata accessor for JSStack();
  Dependency.init<A>(satisfying:with:)();
  sub_100002BE4(&qword_100170780, &qword_100118F38);
  Dependency.init<A>(satisfying:with:)();
  type metadata accessor for BaseObjectGraph();
  sub_100002BE4(&qword_1001706C8, &qword_100118E70);
  v7 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10010D3B0;
  (*(v1 + 16))(v8 + v7, v6, v0);
  BaseObjectGraph.__allocating_init(name:_:)();
  v9 = dispatch thunk of BaseObjectGraph.adding(dependency:)();

  v10 = *(v1 + 8);
  v10(v4, v0);
  v10(v6, v0);
  return v9;
}

uint64_t sub_1000DC1EC(uint64_t a1)
{
  v24 = a1;
  v28 = sub_100002BE4(&unk_100170700, &unk_1001153F0);
  v2 = *(v28 - 8);
  __chkstk_darwin(v28);
  v4 = &v23 - v3;
  v5 = type metadata accessor for Dependency();
  v27 = *(v5 - 8);
  v6 = v27;
  v7 = __chkstk_darwin(v5);
  v26 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v25 = &v23 - v10;
  __chkstk_darwin(v9);
  v12 = &v23 - v11;
  sub_100002BE4(&qword_100170718, &qword_100118ED0);
  sub_10000C178(a1, v4, &unk_100170700, &unk_1001153F0);
  v13 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v14 = swift_allocObject();
  sub_1000DBF00(v4, v14 + v13);
  Dependency.init<A>(satisfying:with:)();
  type metadata accessor for MetricsPipeline();
  v15 = v25;
  Dependency.init<A>(satisfying:with:)();
  sub_10000C178(v24, v4, &unk_100170700, &unk_1001153F0);
  v16 = swift_allocObject();
  sub_1000DBF00(v4, v16 + v13);
  v17 = v26;
  Dependency.init<A>(satisfying:with:)();
  type metadata accessor for BaseObjectGraph();
  sub_100002BE4(&qword_1001706C8, &qword_100118E70);
  v18 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_10010D3B0;
  (*(v6 + 16))(v19 + v18, v12, v5);
  BaseObjectGraph.__allocating_init(name:_:)();
  dispatch thunk of BaseObjectGraph.adding(dependency:)();
  v20 = dispatch thunk of BaseObjectGraph.adding(dependency:)();

  v21 = *(v6 + 8);
  v21(v17, v5);
  v21(v15, v5);
  v21(v12, v5);
  return v20;
}

uint64_t sub_1000DC5AC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(sub_100002BE4(&unk_100170700, &unk_1001153F0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1000D8EF4(v4, a1);
}

uint64_t sub_1000DC628()
{
  v1 = (sub_100002BE4(&unk_100170700, &unk_1001153F0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[10];
  v6 = sub_100002BE4(&qword_100170710, &qword_10011A170);
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000DC7E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000DC828(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1000DC888()
{
  result = qword_100170770;
  if (!qword_100170770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100170770);
  }

  return result;
}

uint64_t sub_1000DC908()
{
  sub_100002BE4(&qword_1001707C8, &qword_100119008);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001119B0;
  *(inited + 32) = 0x69746341776F6C66;
  *(inited + 40) = 0xEA00000000006E6FLL;
  v1 = type metadata accessor for FlowAction(0);
  v2 = sub_1000DCC7C(&qword_10016A290, type metadata accessor for FlowAction, &unk_1001183E4);
  *(inited + 48) = v1;
  *(inited + 56) = v2;
  strcpy((inited + 64), "openURLAction");
  *(inited + 78) = -4864;
  v3 = type metadata accessor for OpenURLAction(0);
  v4 = sub_1000DCC7C(&qword_10016BB88, type metadata accessor for OpenURLAction, &unk_100110FFC);
  *(inited + 80) = v3;
  *(inited + 88) = v4;
  *(inited + 96) = 0xD000000000000015;
  *(inited + 104) = 0x800000010011FED0;
  v5 = type metadata accessor for OpenProductPageAction(0);
  v6 = sub_1000DCC7C(&qword_10016B1F8, type metadata accessor for OpenProductPageAction, &unk_1001104C4);
  *(inited + 112) = v5;
  *(inited + 120) = v6;
  v7 = sub_10000BF54(inited);
  swift_setDeallocating();
  sub_100002BE4(&qword_1001707D0, &qword_100119010);
  result = swift_arrayDestroy();
  qword_1001821E8 = v7;
  return result;
}

uint64_t sub_1000DCAD0()
{
  if (qword_100168FC8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1000DCB2C()
{
  if (qword_100168FC8 != -1)
  {
    swift_once();
  }

  v0 = qword_1001821E8;

  v1 = _defaultActionKindLookup.getter();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = v0;
  sub_1000DDE48(v1, sub_1000DD958, 0, isUniquelyReferenced_nonNull_native, &v6);

  sub_1000DD730(v6);
  v4 = v3;

  return v4;
}

unint64_t sub_1000DCC28()
{
  result = qword_1001707C0;
  if (!qword_1001707C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001707C0);
  }

  return result;
}

uint64_t sub_1000DCC7C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_1000DCCC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *&v98 = a2;
  v88 = a3;
  v4 = type metadata accessor for JSONObject();
  __chkstk_darwin(v4 - 8);
  v87 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for AnyActionTypes();
  v86 = *(v92 - 8);
  __chkstk_darwin(v92);
  v84 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100002BE4(&qword_1001707D8, &qword_100119018);
  __chkstk_darwin(v7 - 8);
  v91 = &v80 - v8;
  v9 = sub_100002BE4(&qword_1001707E0, &qword_100119020);
  v90 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v12 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v80 - v13;
  v15 = sub_100002BE4(&qword_1001707E8, &qword_100119028);
  v93 = *(v15 - 8);
  v94 = v15;
  v16 = __chkstk_darwin(v15);
  v85 = &v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v80 - v18;
  v104 = type metadata accessor for JSONContext();
  v97 = *(v104 - 8);
  v20 = __chkstk_darwin(v104);
  v22 = &v80 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v20);
  v25 = &v80 - v24;
  v26 = __chkstk_darwin(v23);
  v96 = &v80 - v27;
  __chkstk_darwin(v26);
  v29 = &v80 - v28;
  v30 = sub_1000C7C18(a1, a1, &protocol descriptor for ActionModel, &protocol descriptor for Decodable);
  if (v30)
  {
    v90 = v31;
    v91 = v32;
    v92 = v30;
    v33 = v98;
    sub_10000524C(v98, *(v98 + 24));
    dispatch thunk of Decoder.userInfo.getter();
    JSONContext.init(userInfo:)();
    static JSONContext.Property<A>.actionKindTable.getter();
    sub_100002BE4(&qword_1001707F8, &unk_100119038);
    JSONContext.subscript.getter();
    v34 = v94;
    v35 = *(v93 + 1);
    v35(v19, v94);
    v36 = v104;
    if (!v100)
    {
      v37 = sub_1000DDDF4();
      v100 = v89;
      v101 = v37;
      v38 = v85;
      static JSONContext.Property<A>.actionKindTable.getter();
      v39 = v96;
      JSONContext.addingValue<A>(_:forProperty:)();
      v35(v38, v34);
      v40 = v97;
      (*(v97 + 8))(v29, v104);
      v41 = v39;
      v36 = v104;
      (*(v40 + 32))(v29, v41, v104);
    }

    sub_10000524C(v33, v33[3]);
    v42 = v97;
    (*(v97 + 16))(v96, v29, v36);
    Dictionary<>.init(jsonContext:)();
    Decoder.withUserInfo(_:)();

    *&v102 = v92;
    *(&v102 + 1) = v90;
    v103 = v91;
    sub_100020014(&v100);
    v43 = v95;
    dispatch thunk of Decodable.init(from:)();
    if (v43)
    {
      (*(v42 + 8))(v29, v36);
      return sub_1000C7CA0(&v100);
    }

    v98 = v102;
    v64 = v102;
    v65 = sub_10000524C(&v100, v102);
    v66 = v88;
    *(v88 + 24) = v98;
    v67 = sub_100020014(v66);
    (*(*(v64 - 8) + 16))(v67, v65, v64);
    (*(v42 + 8))(v29, v36);
    return sub_1000052E4(&v100);
  }

  v45 = v91;
  v93 = v12;
  v85 = v22;
  v46 = v90;
  v94 = v25;
  v47 = v92;
  v48 = sub_1000C7C18(a1, a1, &protocol descriptor for ActionModel, &protocol descriptor for ExpressibleByJSON);
  if (v48)
  {
    v81 = v49;
    v82 = v50;
    v83 = v48;
    sub_10000524C(v98, *(v98 + 24));
    dispatch thunk of Decoder.userInfo.getter();
    JSONContext.init(userInfo:)();
    v51 = v14;
    static JSONContext.Property<A>.actionTypes.getter();
    v52 = v47;
    JSONContext.subscript.getter();
    v53 = *(v46 + 8);
    v54 = v51;
    v55 = v9;
    v53(v54, v9);
    v56 = v86;
    v57 = (*(v86 + 48))(v45, 1, v47);
    sub_1000DDD8C(v45);
    if (v57 == 1)
    {
      sub_1000DDDF4();
      v58 = v84;
      AnyActionTypes.init(_:)();
      v59 = v93;
      static JSONContext.Property<A>.actionTypes.getter();
      v60 = v94;
      JSONContext.addingValue<A>(_:forProperty:)();
      v53(v59, v55);
      (*(v56 + 8))(v58, v52);
      v61 = v97;
      v62 = v104;
      (*(v97 + 8))(v60, v104);
      (*(v61 + 32))(v60, v96, v62);
    }

    sub_10002BFD4(v98, v99);
    v63 = v95;
    JSONObject.init(from:)();
    if (v63)
    {
      return (*(v97 + 8))(v94, v104);
    }

    v73 = v97;
    v74 = v94;
    v75 = v104;
    (*(v97 + 16))(v85, v94, v104);
    *&v102 = v83;
    *(&v102 + 1) = v81;
    v103 = v82;
    sub_100020014(&v100);
    dispatch thunk of ExpressibleByJSON.init(deserializing:using:)();
    v98 = v102;
    v76 = v102;
    v77 = sub_10000524C(&v100, v102);
    v78 = v88;
    *(v88 + 24) = v98;
    v79 = sub_100020014(v78);
    (*(*(v76 - 8) + 16))(v79, v77, v76);
    (*(v73 + 8))(v74, v75);
    return sub_1000052E4(&v100);
  }

  v68 = type metadata accessor for DecodingError();
  swift_allocError();
  v70 = v69;
  sub_100002BE4(&qword_100169D10, &qword_100119030);
  *v70 = a1;
  sub_10000524C(v98, *(v98 + 24));
  dispatch thunk of Decoder.codingPath.getter();
  v100 = 0;
  v101 = 0xE000000000000000;
  _StringGuts.grow(_:)(21);

  v100 = 60;
  v101 = 0xE100000000000000;
  v71._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v71);

  v72._object = 0x800000010011F9E0;
  v72._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v72);
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v68 - 8) + 104))(v70, enum case for DecodingError.typeMismatch(_:), v68);
  return swift_willThrow();
}

void sub_1000DD730(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100002BE4(&qword_10016FE00, &qword_1001178D0);
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

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v12 = (*(a1 + 48) + ((v10 << 10) | (16 * v11)));
        v14 = *v12;
        v13 = v12[1];

        sub_100002BE4(&qword_100170800, &qword_100119048);
        sub_100002BE4(&qword_10016FE10, &qword_1001178E0);
        swift_dynamicCast();
        v15 = sub_10006889C(v14, v13);
        if (v16)
        {
          v8 = (v2[6] + 16 * v15);
          *v8 = v14;
          v8[1] = v13;
          v9 = v15;

          *(v2[7] + 8 * v9) = v21;
          v7 = v10;
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

          *(v2 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v15;
          v17 = (v2[6] + 16 * v15);
          *v17 = v14;
          v17[1] = v13;
          *(v2[7] + 8 * v15) = v21;
          v18 = v2[2];
          v19 = __OFADD__(v18, 1);
          v20 = v18 + 1;
          if (v19)
          {
            goto LABEL_21;
          }

          v2[2] = v20;
          v7 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v10 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t sub_1000DD958@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 24);
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 24) = v2;
}

void sub_1000DD978()
{
  v1 = v0;
  sub_100002BE4(&qword_1001697A0, &qword_10010D240);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
}

void sub_1000DDAE0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100002BE4(&qword_1001697A0, &qword_10010D240);
  v34 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
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
    v14 = v6 + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = (*(v5 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v35 = *(*(v5 + 56) + v21);
      if ((v34 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      v25 = Hasher._finalize()();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
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

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v7 + 56) + v16) = v35;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
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

LABEL_33:
  *v3 = v7;
}

uint64_t sub_1000DDD8C(uint64_t a1)
{
  v2 = sub_100002BE4(&qword_1001707D8, &qword_100119018);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000DDDF4()
{
  result = qword_1001707F0;
  if (!qword_1001707F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001707F0);
  }

  return result;
}

void sub_1000DDE48(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, void *a5)
{
  v44 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  while (v9)
  {
    v38 = a4;
    v12 = v11;
LABEL_14:
    v14 = (v12 << 10) | (16 * __clz(__rbit64(v9)));
    v15 = *(a1 + 56);
    v16 = (*(a1 + 48) + v14);
    v17 = v16[1];
    v42[0] = *v16;
    v42[1] = v17;
    v43 = *(v15 + v14);

    a2(&v39, v42);

    v18 = v39;
    v19 = v40;
    v36 = v41;
    v20 = *v44;
    v22 = sub_10006889C(v39, v40);
    v23 = v20[2];
    v24 = (v21 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      goto LABEL_25;
    }

    v26 = v21;
    if (v20[3] >= v25)
    {
      if ((v38 & 1) == 0)
      {
        sub_1000DD978();
      }
    }

    else
    {
      sub_1000DDAE0(v25, v38 & 1);
      v27 = sub_10006889C(v18, v19);
      if ((v26 & 1) != (v28 & 1))
      {
        goto LABEL_27;
      }

      v22 = v27;
    }

    v9 &= v9 - 1;
    v29 = *v44;
    if (v26)
    {
      v37 = *(v29[7] + 16 * v22);

      *(v29[7] + 16 * v22) = v37;
    }

    else
    {
      v29[(v22 >> 6) + 8] |= 1 << v22;
      v30 = (v29[6] + 16 * v22);
      *v30 = v18;
      v30[1] = v19;
      *(v29[7] + 16 * v22) = v36;
      v31 = v29[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        goto LABEL_26;
      }

      v29[2] = v33;
    }

    a4 = 1;
    v11 = v12;
  }

  v13 = v11;
  while (1)
  {
    v12 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v12 >= v10)
    {
      sub_1000151D4(a1);

      return;
    }

    v9 = *(v6 + 8 * v12);
    ++v13;
    if (v9)
    {
      v38 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_1000DE0EC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100002BE4(&qword_10016A118, &unk_10010EEF0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000DE1BC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_100002BE4(&qword_10016A118, &unk_10010EEF0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for AppTitleComponentModel(uint64_t a1)
{
  result = qword_100170860;
  if (!qword_100170860)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000DE2B8(uint64_t a1)
{
  sub_10001EA88();
  if (v1 <= 0x3F)
  {
    sub_10001EB04(319);
    if (v2 <= 0x3F)
    {
      sub_10001EC3C(319, &qword_10016B298, &unk_10016B2A0, "ʴ");
      if (v3 <= 0x3F)
      {
        sub_10001EC3C(319, &qword_10016A1C8, &unk_10016A1D0, &qword_10010EF30);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1000DE3A4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = sub_100002BE4(&qword_10016A118, &unk_10010EEF0);
  __chkstk_darwin(v3);
  v5 = &v30 - v4;
  v33 = sub_100002BE4(&qword_1001708B0, &qword_100119110);
  v31 = *(v33 - 8);
  __chkstk_darwin(v33);
  v7 = &v30 - v6;
  v8 = type metadata accessor for AppTitleComponentModel(0);
  v9 = __chkstk_darwin(v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v9 + 20);
  v13 = type metadata accessor for ImpressionMetrics();
  v14 = *(*(v13 - 8) + 56);
  v36 = v12;
  v14(&v11[v12], 1, 1, v13);
  v15 = v8[8];
  v35 = v11;
  v16 = &v11[v15];
  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  *v16 = 0u;
  *(v16 + 16) = 0u;
  *(v16 + 32) = 0;
  sub_10001FD78(&v38, v16, &qword_10016A248, &qword_100114390);
  v17 = a1[3];
  v37 = a1;
  sub_10000524C(a1, v17);
  sub_1000DEBD4();
  v32 = v7;
  v18 = v34;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v18)
  {
    v20 = v36;
    sub_1000052E4(v37);
    sub_100009908(v35 + v20, &qword_10016A118, &unk_10010EEF0);
    return sub_100009908(v16, &qword_10016A230, &unk_10010F030);
  }

  else
  {
    v34 = v3;
    v19 = v31;
    sub_100002BE4(&qword_10016A238, &qword_100114380);
    v41 = 0;
    sub_100012C48(&qword_10016DA90, &qword_10016A238, &qword_100114380, &protocol conformance descriptor for CodeAnyHashable<A>);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v21 = v39;
    v22 = v35;
    *v35 = v38;
    *(v22 + 16) = v21;
    *(v22 + 32) = v40;
    LOBYTE(v38) = 1;
    sub_100012C48(&qword_10016DBE0, &qword_10016A118, &unk_10010EEF0, &protocol conformance descriptor for CodeByExpressibleByJSON<A>);
    v23 = v5;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v24 = v19;
    sub_10001FD78(v23, v22 + v36, &qword_10016A118, &unk_10010EEF0);
    LOBYTE(v38) = 2;
    v25 = v32;
    v26 = KeyedDecodingContainer.decode(_:forKey:)();
    v27 = (v22 + v8[6]);
    *v27 = v26;
    v27[1] = v28;
    sub_100002BE4(&qword_10016B338, &qword_1001105A0);
    v41 = 3;
    sub_100038F3C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v22 + v8[7]) = v38;
    sub_100002BE4(&qword_10016A230, &unk_10010F030);
    v41 = 4;
    sub_100075C58();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v24 + 8))(v25, v33);
    sub_10001FD78(&v38, v16, &qword_10016A230, &unk_10010F030);
    sub_1000DEC28(v22, v30);
    sub_1000052E4(v37);
    return sub_10002BEBC(v22);
  }
}

unint64_t sub_1000DE920()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x656C746974;
  v4 = 0xD000000000000014;
  if (v1 != 3)
  {
    v4 = 0x6575676573;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000DE9B4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000DEDA4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000DE9DC(uint64_t a1)
{
  v2 = sub_1000DEBD4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000DEA18(uint64_t a1)
{
  v2 = sub_1000DEBD4();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1000DEA54@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10000C178(v2 + *(a1 + 32), v6, &qword_10016A230, &unk_10010F030);
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v5;
  *(a2 + 32) = v7;
  return result;
}

uint64_t sub_1000DEAC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100002BE4(&qword_10016A118, &unk_10010EEF0);
  __chkstk_darwin(v5 - 8);
  v7 = &v9 - v6;
  sub_10000C178(v2 + *(a1 + 20), &v9 - v6, &qword_10016A118, &unk_10010EEF0);
  return sub_1000200DC(v7, a2);
}

unint64_t sub_1000DEB7C()
{
  result = qword_1001708A8;
  if (!qword_1001708A8)
  {
    type metadata accessor for AppTitleComponentModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001708A8);
  }

  return result;
}

unint64_t sub_1000DEBD4()
{
  result = qword_1001708B8;
  if (!qword_1001708B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001708B8);
  }

  return result;
}

uint64_t sub_1000DEC28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppTitleComponentModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000DECA0()
{
  result = qword_1001708C0;
  if (!qword_1001708C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001708C0);
  }

  return result;
}

unint64_t sub_1000DECF8()
{
  result = qword_1001708C8;
  if (!qword_1001708C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001708C8);
  }

  return result;
}

unint64_t sub_1000DED50()
{
  result = qword_1001708D0;
  if (!qword_1001708D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001708D0);
  }

  return result;
}

uint64_t sub_1000DEDA4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010011D5D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x800000010011FEF0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1000DEF64()
{
  sub_100002BE4(&qword_1001708E0, &qword_1001192E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100110A60;
  *(inited + 32) = 1869768008;
  *(inited + 40) = 0xE400000000000000;
  v1 = type metadata accessor for AppHeroModel(0);
  v2 = sub_1000DF7EC(&qword_1001708E8, type metadata accessor for AppHeroModel, &unk_100114140);
  *(inited + 48) = v1;
  *(inited + 56) = v2;
  *(inited + 64) = 0x656C746954;
  *(inited + 72) = 0xE500000000000000;
  v3 = type metadata accessor for AppTitleComponentModel(0);
  v4 = sub_1000DF7EC(&qword_10016BBF8, type metadata accessor for AppTitleComponentModel, &unk_1001190D0);
  *(inited + 80) = v3;
  *(inited + 88) = v4;
  strcpy((inited + 96), "EpicShowcase");
  *(inited + 109) = 0;
  *(inited + 110) = -5120;
  v5 = type metadata accessor for EpicShowcaseComponentModel(0);
  v6 = sub_1000DF7EC(&qword_1001708F0, type metadata accessor for EpicShowcaseComponentModel, &unk_10010EFF0);
  *(inited + 112) = v5;
  *(inited + 120) = v6;
  *(inited + 128) = 1954047316;
  *(inited + 136) = 0xE400000000000000;
  v7 = type metadata accessor for AppTextComponentModel(0);
  v8 = sub_1000DF7EC(&qword_10016A598, type metadata accessor for AppTextComponentModel, &unk_100114338);
  *(inited + 144) = v7;
  *(inited + 152) = v8;
  v9 = sub_10000C05C(inited);
  swift_setDeallocating();
  sub_100002BE4(&qword_1001708F8, &qword_1001192E8);
  result = swift_arrayDestroy();
  qword_1001821F0 = v9;
  return result;
}

uint64_t sub_1000DF164()
{
  if (qword_100168FD0 != -1)
  {
    swift_once();
  }
}

void sub_1000DF1C0()
{
  if (qword_100168FD0 != -1)
  {
    swift_once();
  }

  v1 = qword_1001821F0;

  sub_1000DF5C4(v1);
}

void *sub_1000DF234@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for JSONContext();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for JSONObject();
  __chkstk_darwin(v8 - 8);
  v9 = sub_1000C7C18(a1, a1, &protocol descriptor for ComponentModel, &protocol descriptor for Decodable);
  if (v9)
  {
    v12 = v9;
    v13 = v10;
    v14 = v11;
    sub_10002BFD4(a2, v31);
    *&v33 = v12;
    *(&v33 + 1) = v13;
    v34 = v14;
    sub_100020014(v32);
    dispatch thunk of Decodable.init(from:)();
    if (v3)
    {
      return sub_1000C7CA0(v32);
    }

LABEL_7:
    v30 = v33;
    v22 = v33;
    v23 = sub_10000524C(v32, v33);
    *(a3 + 24) = v30;
    v24 = sub_100020014(a3);
    (*(*(v22 - 8) + 16))(v24, v23, v22);
    return sub_1000052E4(v32);
  }

  v16 = sub_1000C7C18(a1, a1, &protocol descriptor for ComponentModel, &protocol descriptor for ExpressibleByJSON);
  if (v16)
  {
    v19 = v16;
    v20 = v17;
    v21 = v18;
    sub_10002BFD4(a2, v31);
    result = JSONObject.init(from:)();
    if (v3)
    {
      return result;
    }

    sub_10000524C(a2, a2[3]);
    dispatch thunk of Decoder.userInfo.getter();
    JSONContext.init(userInfo:)();
    *&v33 = v19;
    *(&v33 + 1) = v20;
    v34 = v21;
    sub_100020014(v32);
    dispatch thunk of ExpressibleByJSON.init(deserializing:using:)();
    goto LABEL_7;
  }

  v25 = type metadata accessor for DecodingError();
  swift_allocError();
  v27 = v26;
  sub_100002BE4(&qword_100169D10, &qword_100119030);
  *v27 = a1;
  sub_10000524C(a2, a2[3]);
  dispatch thunk of Decoder.codingPath.getter();
  _StringGuts.grow(_:)(21);

  v32[0] = 60;
  v32[1] = 0xE100000000000000;
  v28._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v28);

  v29._object = 0x800000010011F9E0;
  v29._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v29);
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v25 - 8) + 104))(v27, enum case for DecodingError.typeMismatch(_:), v25);
  return swift_willThrow();
}

void sub_1000DF5C4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100002BE4(&qword_10016FE00, &qword_1001178D0);
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

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v12 = (*(a1 + 48) + ((v10 << 10) | (16 * v11)));
        v14 = *v12;
        v13 = v12[1];

        sub_100002BE4(&qword_1001708D8, &unk_1001192D0);
        sub_100002BE4(&qword_10016FE10, &qword_1001178E0);
        swift_dynamicCast();
        v15 = sub_10006889C(v14, v13);
        if (v16)
        {
          v8 = (v2[6] + 16 * v15);
          *v8 = v14;
          v8[1] = v13;
          v9 = v15;

          *(v2[7] + 8 * v9) = v21;
          v7 = v10;
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

          *(v2 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v15;
          v17 = (v2[6] + 16 * v15);
          *v17 = v14;
          v17[1] = v13;
          *(v2[7] + 8 * v15) = v21;
          v18 = v2[2];
          v19 = __OFADD__(v18, 1);
          v20 = v18 + 1;
          if (v19)
          {
            goto LABEL_21;
          }

          v2[2] = v20;
          v7 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v10 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t sub_1000DF7EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1000DF8D8(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for VisionCompanionFeatures();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100168E90 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100006B0C(v9, qword_1001820D8);
  v10 = v2;

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v30 = v5;
    v14 = v13;
    v31 = swift_slowAlloc();
    *v14 = 136446466;
    v15 = &v10[OBJC_IVAR____TtC17AppleVisionProApp13SceneDelegate_sceneIdentifierName];
    v29 = v10;
    v16 = a1;
    v18 = *v15;
    v17 = v15[1];

    v19 = sub_100006B44(v18, v17, &v31);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2082;
    sub_1000DFF60();
    sub_1000AC980();
    v20 = Set.description.getter();
    v22 = sub_100006B44(v20, v21, &v31);
    a1 = v16;
    v10 = v29;

    *(v14 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v11, v12, "[%{public}s] openURLContexts %{public}s", v14, 0x16u);
    swift_arrayDestroy();

    v5 = v30;
  }

  objc_opt_self();
  v23 = swift_dynamicCastObjCClass();
  if (v23)
  {
    v24 = v23;
    (*(v6 + 104))(v8, enum case for VisionCompanionFeatures.airPlayReceiver(_:), v5);
    v25 = a1;
    v26 = VisionCompanionFeatures.isEnabled.getter();
    (*(v6 + 8))(v8, v5);
    if (v26)
    {
      v27 = *&v10[OBJC_IVAR____TtC17AppleVisionProApp13SceneDelegate_airplayReceiverLifecycleManager];
      sub_1000A17C4(v24, a2);
    }
  }
}

id sub_1000DFE70(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SceneDelegate();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1000DFF24@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for SceneDelegate();
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

unint64_t sub_1000DFF60()
{
  result = qword_10016F2C0;
  if (!qword_10016F2C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10016F2C0);
  }

  return result;
}

double sub_1000DFFAC(void *a1, void *a2)
{
  v5 = [a1 _FBSScene];
  v6 = [v5 identifier];

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v10 = &v2[OBJC_IVAR____TtC17AppleVisionProApp13SceneDelegate_sceneIdentifierName];
  *v10 = v7;
  v10[1] = v9;

  if (qword_100168E90 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100006B0C(v11, qword_1001820D8);
  v12 = v2;
  v13 = a2;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v16 = 136446466;
    v17 = *v10;
    v18 = v10[1];

    v19 = sub_100006B44(v17, v18, &v29);

    *(v16 + 4) = v19;
    *(v16 + 12) = 2082;
    v20 = v13;
    v21 = [v20 description];
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    v25 = sub_100006B44(v22, v24, &v29);

    *(v16 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v14, v15, "[%{public}s] sceneWillConnect with options %{public}s", v16, 0x16u);
    swift_arrayDestroy();
  }

  v26 = [v13 URLContexts];
  sub_1000DFF60();
  sub_1000AC980();
  v27 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1000DF8D8(a1, v27);

  return result;
}

void sub_1000E0260(const char *a1, void (*a2)(void), ...)
{
  v5 = type metadata accessor for VisionCompanionFeatures();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100168E90 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100006B0C(v9, qword_1001820D8);
  v10 = v2;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  v13 = os_log_type_enabled(v11, v12);
  v26 = v10;
  if (v13)
  {
    v14 = swift_slowAlloc();
    v25 = a2;
    v15 = v14;
    v16 = swift_slowAlloc();
    v27 = v16;
    *v15 = 136446210;
    v17 = &v10[OBJC_IVAR____TtC17AppleVisionProApp13SceneDelegate_sceneIdentifierName];
    v18 = a1;
    v20 = *v17;
    v19 = v17[1];

    v21 = sub_100006B44(v20, v19, &v27);

    *(v15 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v11, v12, v18, v15, 0xCu);
    sub_1000052E4(v16);

    a2 = v25;
  }

  (*(v6 + 104))(v8, enum case for VisionCompanionFeatures.airPlayReceiver(_:), v5);
  v22 = VisionCompanionFeatures.isEnabled.getter();
  (*(v6 + 8))(v8, v5);
  if (v22)
  {
    v23 = *&v26[OBJC_IVAR____TtC17AppleVisionProApp13SceneDelegate_airplayReceiverLifecycleManager];
    a2();
  }
}

uint64_t sub_1000E04D4@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1000E3778(&qword_10016D7D0, type metadata accessor for SoftwareUpdateProvider, &unk_100119378);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC17AppleVisionProApp22SoftwareUpdateProvider__softwareUpdateInfo;
  swift_beginAccess();
  return sub_1000E3604(v5 + v3, a1);
}

uint64_t sub_1000E059C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000E3778(&qword_10016D7D0, type metadata accessor for SoftwareUpdateProvider, &unk_100119378);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC17AppleVisionProApp22SoftwareUpdateProvider__softwareUpdateInfo;
  swift_beginAccess();
  return sub_1000E3604(v3 + v4, a2);
}

uint64_t sub_1000E0664(uint64_t a1)
{
  v2 = sub_100002BE4(&qword_10016D778, &qword_100113C20);
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - v3;
  sub_1000E3604(a1, &v6 - v3);
  return sub_1000E06F8(v4);
}

uint64_t sub_1000E06F8(uint64_t a1)
{
  v3 = sub_100002BE4(&qword_10016D778, &qword_100113C20);
  __chkstk_darwin(v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC17AppleVisionProApp22SoftwareUpdateProvider__softwareUpdateInfo;
  swift_beginAccess();
  sub_1000E3604(v1 + v6, v5);
  v7 = sub_1000E2CE8(v5, a1);
  sub_100009908(v5, &qword_10016D778, &qword_100113C20);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_1000E3778(&qword_10016D7D0, type metadata accessor for SoftwareUpdateProvider, &unk_100119378);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    sub_1000E3604(a1, v5);
    swift_beginAccess();
    sub_1000E3674(v5, v1 + v6);
    swift_endAccess();
  }

  return sub_100009908(a1, &qword_10016D778, &qword_100113C20);
}

uint64_t sub_1000E08E8(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC17AppleVisionProApp22SoftwareUpdateProvider__softwareUpdateInfo;
  swift_beginAccess();
  sub_1000E3708(a2, a1 + v4);
  return swift_endAccess();
}

double sub_1000E0954(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100002BE4(&unk_10016F2B0, &qword_10010F6F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  swift_getKeyPath();
  v15 = v2;
  sub_1000E3778(&qword_10016D7D0, type metadata accessor for SoftwareUpdateProvider, &unk_100119378);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v10 = *(v2 + OBJC_IVAR____TtC17AppleVisionProApp22SoftwareUpdateProvider__serialNumber + 8);
  if (!v10)
  {
    if (!a2)
    {
      return result;
    }

    goto LABEL_10;
  }

  if (!a2 || (*(v2 + OBJC_IVAR____TtC17AppleVisionProApp22SoftwareUpdateProvider__serialNumber) == a1 ? (v11 = v10 == a2) : (v11 = 0), !v11 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0))
  {
LABEL_10:
    v12 = type metadata accessor for TaskPriority();
    (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
    v13 = swift_allocObject();
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = v3;

    sub_1000EE5F8(0, 0, v8, &unk_100119450, v13);
  }

  return result;
}

uint64_t sub_1000E0B24()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000FA04;

  return sub_1000E21A8();
}

double sub_1000E0BDC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1000E0C1C(v1, v2);
}

double sub_1000E0C1C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC17AppleVisionProApp22SoftwareUpdateProvider__serialNumber);
  v7 = *(v2 + OBJC_IVAR____TtC17AppleVisionProApp22SoftwareUpdateProvider__serialNumber);
  v6 = *(v2 + OBJC_IVAR____TtC17AppleVisionProApp22SoftwareUpdateProvider__serialNumber + 8);
  if (v6)
  {
    if (a2)
    {
      v8 = v7 == a1 && v6 == a2;
      if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000E3778(&qword_10016D7D0, type metadata accessor for SoftwareUpdateProvider, &unk_100119378);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return result;
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *v5 = a1;
  v5[1] = a2;
  sub_1000E0954(v7, v6);

  return result;
}

void sub_1000E0DA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + OBJC_IVAR____TtC17AppleVisionProApp22SoftwareUpdateProvider__serialNumber);
  v4 = *(a1 + OBJC_IVAR____TtC17AppleVisionProApp22SoftwareUpdateProvider__serialNumber);
  v5 = *(a1 + OBJC_IVAR____TtC17AppleVisionProApp22SoftwareUpdateProvider__serialNumber + 8);
  *v3 = a2;
  v3[1] = a3;

  sub_1000E0954(v4, v5);
}

uint64_t sub_1000E0E18(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1000E3778(&qword_10016D7D0, type metadata accessor for SoftwareUpdateProvider, &unk_100119378);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v2 + *a2);

  return v4;
}

uint64_t sub_1000E0ECC@<X0>(uint64_t *a1@<X0>, void *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1000E3778(&qword_10016D7D0, type metadata accessor for SoftwareUpdateProvider, &unk_100119378);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = (v6 + *a3);
  v8 = v7[1];
  *a4 = *v7;
  a4[1] = v8;
}

double sub_1000E0F88(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC17AppleVisionProApp22SoftwareUpdateProvider__currentBuildVersion);
  v6 = *(v2 + OBJC_IVAR____TtC17AppleVisionProApp22SoftwareUpdateProvider__currentBuildVersion + 8);
  if (v6)
  {
    if (a2)
    {
      v7 = *v5 == a1 && v6 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000E3778(&qword_10016D7D0, type metadata accessor for SoftwareUpdateProvider, &unk_100119378);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return result;
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *v5 = a1;
  v5[1] = a2;

  return result;
}

uint64_t sub_1000E1104()
{
  swift_getKeyPath();
  sub_1000E3778(&qword_10016D7D0, type metadata accessor for SoftwareUpdateProvider, &unk_100119378);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
}

uint64_t sub_1000E11C4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000E3778(&qword_10016D7D0, type metadata accessor for SoftwareUpdateProvider, &unk_100119378);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC17AppleVisionProApp22SoftwareUpdateProvider__cancellables;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

double sub_1000E128C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17AppleVisionProApp22SoftwareUpdateProvider__cancellables;
  swift_beginAccess();

  sub_1000E7FD4(v4, a1);
  v6 = v5;

  if (v6)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000E3778(&qword_10016D7D0, type metadata accessor for SoftwareUpdateProvider, &unk_100119378);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

void sub_1000E13DC(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC17AppleVisionProApp22SoftwareUpdateProvider__cancellables;
  swift_beginAccess();
  *(a1 + v4) = a2;
}

uint64_t sub_1000E144C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for PushNotificationDispatchItem();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();

  return _swift_task_switch(sub_1000E150C, 0, 0);
}

uint64_t sub_1000E150C()
{
  (*(v0[5] + 104))(v0[6], enum case for PushNotificationDispatchItem.softwareUpdateInfo(_:), v0[4]);
  type metadata accessor for PushNotificationDispatch();
  sub_1000E3778(&qword_10016E760, &type metadata accessor for PushNotificationDispatch, &protocol conformance descriptor for PushNotificationDispatch);

  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000E15FC, v2, v1);
}

uint64_t sub_1000E15FC()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  dispatch thunk of PushNotificationDispatch.register(_:handler:)();

  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_1000E16E8;

  return static CloudKitUtilities.registerForSoftwareUpdateInfoPushNotifications()();
}

uint64_t sub_1000E16E8()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 64) = v3;
  *v3 = v2;
  v3[1] = sub_1000E1828;

  return sub_1000E21A8();
}

uint64_t sub_1000E1828()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000E1938()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100024388;

  return sub_1000E21A8();
}

double sub_1000E19C8()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for NSNotificationCenter.Publisher();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() defaultCenter];
  if (qword_100168F70 != -1)
  {
    swift_once();
  }

  NSNotificationCenter.publisher(for:object:)();

  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v2;
  sub_1000E3778(&qword_100170C10, &type metadata accessor for NSNotificationCenter.Publisher, &protocol conformance descriptor for NSNotificationCenter.Publisher);
  Publisher<>.sink(receiveValue:)();

  (*(v4 + 8))(v6, v3);
  swift_getKeyPath();
  v12 = v1;
  sub_1000E3778(&qword_10016D7D0, type metadata accessor for SoftwareUpdateProvider, &unk_100119378);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v12 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v12 = v1;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  return result;
}

double sub_1000E1CD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Notification();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v32[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100168EA8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100006B0C(v9, qword_100182120);
  (*(v6 + 16))(v8, a1, v5);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v31 = a2;
    v12 = swift_slowAlloc();
    v35[0] = swift_slowAlloc();
    *v12 = 136315394;
    v13 = _typeName(_:qualified:)();
    v15 = sub_100006B44(v13, v14, v35);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2080;
    v16 = Notification.userInfo.getter();
    if (v16)
    {
      v33 = 0;
      v34 = 0xE000000000000000;
      v32[0] = v16;
      sub_100002BE4(&qword_100170C18, &qword_100119440);
      _print_unlocked<A, B>(_:_:)();

      v18 = v33;
      v17 = v34;
    }

    else
    {
      v17 = 0xE300000000000000;
      v18 = 7104878;
    }

    (*(v6 + 8))(v8, v5);
    v19 = sub_100006B44(v18, v17, v35);

    *(v12 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v10, v11, "%s received selectedDeviceDidChange notification with userInfo: %s", v12, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }

  v20 = Notification.userInfo.getter();
  if (v20)
  {
    v22 = v20;
    strcpy(v32, "serialNumber");
    BYTE5(v32[1]) = 0;
    HIWORD(v32[1]) = -5120;
    AnyHashable.init<A>(_:)();
    if (*(v22 + 16))
    {
      v23 = sub_100068958(&v33);
      if (v24)
      {
        sub_1000076F0(*(v22 + 56) + 32 * v23, v35);
        sub_100064580(&v33);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_20;
        }

        v26 = v32[0];
        v25 = v32[1];
        v32[0] = 0xD000000000000013;
        v32[1] = 0x800000010011EC40;
        AnyHashable.init<A>(_:)();
        if (*(v22 + 16))
        {
          v27 = sub_100068958(&v33);
          if (v28)
          {
            sub_1000076F0(*(v22 + 56) + 32 * v27, v35);
            sub_100064580(&v33);

            if (swift_dynamicCast())
            {
              v30 = v32[0];
              v29 = v32[1];
              swift_beginAccess();
              if (swift_weakLoadStrong())
              {
                sub_1000E0F88(v30, v29);
              }

              else
              {
              }

              swift_beginAccess();
              if (swift_weakLoadStrong())
              {
                sub_1000E0C1C(v26, v25);

                return result;
              }
            }

LABEL_20:

            return result;
          }
        }
      }
    }

    sub_100064580(&v33);
  }

  return result;
}

uint64_t sub_1000E21A8()
{
  v1[4] = v0;
  v1[5] = *v0;
  sub_100002BE4(&qword_10016D778, &qword_100113C20);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  updated = type metadata accessor for SoftwareUpdateInfo();
  v1[8] = updated;
  v1[9] = *(updated - 8);
  v1[10] = swift_task_alloc();

  return _swift_task_switch(sub_1000E22D4, 0, 0);
}

uint64_t sub_1000E22D4()
{
  v1 = v0[4];
  swift_getKeyPath();
  v2 = OBJC_IVAR____TtC17AppleVisionProApp22SoftwareUpdateProvider___observationRegistrar;
  v0[2] = v1;
  v0[11] = v2;
  v0[12] = sub_1000E3778(&qword_10016D7D0, type metadata accessor for SoftwareUpdateProvider, &unk_100119378);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = (v1 + OBJC_IVAR____TtC17AppleVisionProApp22SoftwareUpdateProvider__serialNumber);
  v4 = *(v1 + OBJC_IVAR____TtC17AppleVisionProApp22SoftwareUpdateProvider__serialNumber + 8);
  v0[13] = v4;
  if (v4)
  {
    v5 = *v3;

    v6 = swift_task_alloc();
    v0[14] = v6;
    *v6 = v0;
    v6[1] = sub_1000E24A0;
    v7 = v0[7];

    return static CloudKitUtilities.fetchSoftwareUpdateInfo(for:)(v7, v5, v4);
  }

  else
  {
    v8 = v0[6];
    (*(v0[9] + 56))(v8, 1, 1, v0[8]);
    sub_1000E06F8(v8);

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_1000E24A0()
{

  return _swift_task_switch(sub_1000E25B8, 0, 0);
}

uint64_t sub_1000E25B8()
{
  v34 = v0;
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100009908(v3, &qword_10016D778, &qword_100113C20);
LABEL_15:
    v22 = v0[6];
    (*(v0[9] + 56))(v22, 1, 1, v0[8]);
    sub_1000E06F8(v22);
    goto LABEL_23;
  }

  v4 = v0[4];
  (*(v2 + 32))(v0[10], v3, v1);
  swift_getKeyPath();
  v0[3] = v4;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v4 + OBJC_IVAR____TtC17AppleVisionProApp22SoftwareUpdateProvider__currentBuildVersion + 8);
  if (!v5)
  {
    (*(v0[9] + 8))(v0[10], v0[8]);
    goto LABEL_15;
  }

  v6 = *(v4 + OBJC_IVAR____TtC17AppleVisionProApp22SoftwareUpdateProvider__currentBuildVersion);

  if (SoftwareUpdateInfo.targetVersion.getter() == v6 && v5 == v7)
  {

    goto LABEL_17;
  }

  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v9)
  {
LABEL_17:
    if (qword_100168EA8 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100006B0C(v23, qword_100182120);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v33 = v27;
      *v26 = 136315138;
      v28 = _typeName(_:qualified:)();
      v30 = sub_100006B44(v28, v29, &v33);

      *(v26 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v24, v25, "%s currentBuildVersion matches targetVersion, showing update Info", v26, 0xCu);
      sub_1000052E4(v27);
    }

    v19 = v0[9];
    v18 = v0[10];
    v20 = v0[8];
    v21 = v0[6];
    (*(v19 + 16))(v21, v18, v20);
    (*(v19 + 56))(v21, 0, 1, v20);
    goto LABEL_22;
  }

  if (qword_100168EA8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100006B0C(v10, qword_100182120);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v33 = v14;
    *v13 = 136315138;
    v15 = _typeName(_:qualified:)();
    v17 = sub_100006B44(v15, v16, &v33);

    *(v13 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v11, v12, "%s currentBuildVersion does not match targetVersion, hiding update Info", v13, 0xCu);
    sub_1000052E4(v14);
  }

  v19 = v0[9];
  v18 = v0[10];
  v20 = v0[8];
  v21 = v0[6];
  (*(v19 + 56))(v21, 1, 1, v20);
LABEL_22:
  sub_1000E06F8(v21);
  (*(v19 + 8))(v18, v20);
LABEL_23:

  v31 = v0[1];

  return v31();
}

uint64_t sub_1000E2A64()
{
  sub_100009908(v0 + OBJC_IVAR____TtC17AppleVisionProApp22SoftwareUpdateProvider__softwareUpdateInfo, &qword_10016D778, &qword_100113C20);

  v1 = OBJC_IVAR____TtC17AppleVisionProApp22SoftwareUpdateProvider___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SoftwareUpdateProvider(uint64_t a1)
{
  result = qword_100170A60;
  if (!qword_100170A60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000E2BAC(uint64_t a1)
{
  sub_1000E2C90(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ObservationRegistrar();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1000E2C90(uint64_t a1)
{
  if (!qword_100170A70)
  {
    type metadata accessor for SoftwareUpdateInfo();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100170A70);
    }
  }
}

uint64_t sub_1000E2CE8(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for SoftwareUpdateInfo();
  v5 = *(updated - 8);
  __chkstk_darwin(updated);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100002BE4(&qword_10016D778, &qword_100113C20);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  v11 = sub_100002BE4(&qword_100170C20, &unk_100119480);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  sub_1000E3604(a1, &v21 - v13);
  sub_1000E3604(a2, &v14[v15]);
  v16 = *(v5 + 48);
  if (v16(v14, 1, updated) != 1)
  {
    sub_1000E3604(v14, v10);
    if (v16(&v14[v15], 1, updated) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], updated);
      sub_1000E3778(&qword_100170C28, &type metadata accessor for SoftwareUpdateInfo, &protocol conformance descriptor for SoftwareUpdateInfo);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      v19 = *(v5 + 8);
      v19(v7, updated);
      v19(v10, updated);
      sub_100009908(v14, &qword_10016D778, &qword_100113C20);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, updated);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, updated) != 1)
  {
LABEL_6:
    sub_100009908(v14, &qword_100170C20, &unk_100119480);
    v17 = 1;
    return v17 & 1;
  }

  sub_100009908(v14, &qword_10016D778, &qword_100113C20);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1000E2FD8(uint64_t a1)
{
  v3 = sub_100002BE4(&unk_10016F2B0, &qword_10010F6F0);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  v6 = OBJC_IVAR____TtC17AppleVisionProApp22SoftwareUpdateProvider__softwareUpdateInfo;
  updated = type metadata accessor for SoftwareUpdateInfo();
  (*(*(updated - 8) + 56))(v1 + v6, 1, 1, updated);
  v8 = (v1 + OBJC_IVAR____TtC17AppleVisionProApp22SoftwareUpdateProvider__serialNumber);
  *v8 = 0;
  v8[1] = 0;
  v9 = (v1 + OBJC_IVAR____TtC17AppleVisionProApp22SoftwareUpdateProvider__currentBuildVersion);
  *v9 = 0;
  v9[1] = 0;
  *(v1 + OBJC_IVAR____TtC17AppleVisionProApp22SoftwareUpdateProvider__cancellables) = &_swiftEmptySetSingleton;
  ObservationRegistrar.init()();
  sub_1000E19C8();
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a1;
  v11[5] = v1;

  sub_1000EE5F8(0, 0, v5, &unk_1001193A8, v11);

  return v1;
}

uint64_t sub_1000E3180()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000E31C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100024388;

  return sub_1000E144C(a1, v4, v5, v7, v6);
}

uint64_t sub_1000E3288()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100024388;

  return sub_1000E1938();
}

uint64_t sub_1000E3398(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t sub_1000E33E0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000E3418()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_1000E34A4()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC17AppleVisionProApp22SoftwareUpdateProvider__currentBuildVersion);
  *v2 = v0[3];
  v2[1] = v1;
}

uint64_t sub_1000E3510()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000E3550()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000FA04;

  return sub_1000E0B24();
}

uint64_t sub_1000E3604(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&qword_10016D778, &qword_100113C20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000E3674(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&qword_10016D778, &qword_100113C20);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000E3708(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&qword_10016D778, &qword_100113C20);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000E3778(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000E37C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1000E3808(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_1000E3858@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, unint64_t *a4@<X8>)
{
  sub_100002BE4(&qword_1001705A0, &qword_100118BF8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001119B0;
  *(inited + 32) = 0x646E696B24;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = 0xD00000000000001CLL;
  *(inited + 56) = 0x8000000100119490;
  *(inited + 64) = 0x444965676170;
  *(inited + 72) = 0xE600000000000000;
  *(inited + 80) = a1;
  *(inited + 88) = a2;
  *(inited + 96) = 0x6E6F6973726576;
  *(inited + 104) = 0xE700000000000000;

  *(inited + 112) = dispatch thunk of CustomStringConvertible.description.getter();
  *(inited + 120) = v8;
  v9 = sub_10000B5DC(inited);
  swift_setDeallocating();
  sub_100002BE4(&qword_10016E7F8, &qword_1001153D0);
  swift_arrayDestroy();
  a4[3] = sub_100002BE4(&qword_100169C98, &qword_100115D60);
  result = sub_10009A918();
  a4[4] = result;
  *a4 = v9;
  return result;
}

id sub_1000E39C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_opt_self();
  v9 = [v8 valueWithNewObjectInContext:a1];
  if (v9)
  {
    v10 = v9;

    v11 = [v8 valueWithObject:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)() inContext:{a1, a2, a3}];
    result = swift_unknownObjectRelease();
    if (!v11)
    {
      __break(1u);
LABEL_17:
      __break(1u);
      return result;
    }

    JSValue.subscript.setter();
    if (a4 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (a4 <= 0x7FFFFFFF)
    {
      result = [v8 valueWithInt32:a4 inContext:a1];
      if (result)
      {
        JSValue.subscript.setter();
        return v10;
      }

      goto LABEL_17;
    }

    __break(1u);
    goto LABEL_15;
  }

  if (qword_100168E60 != -1)
  {
LABEL_15:
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100006B0C(v13, qword_100182048);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Error making the JSContext", v16, 2u);
  }

  v17 = objc_allocWithZone(JSValue);

  return [v17 init];
}

uint64_t sub_1000E3C00(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v6 = sub_100002BE4(&qword_100170C40, &unk_1001195B0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v11 - v8;
  sub_10000524C(a1, a1[3]);
  sub_1000E4190();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v4)
  {
    v12 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1000E3D94()
{
  if (*v0)
  {
    return 0x6E6F6973726576;
  }

  else
  {
    return 0x444965676170;
  }
}

void sub_1000E3DCC(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x444965676170 && a2 == 0xE600000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1000E3EA4(uint64_t a1)
{
  v2 = sub_1000E4190();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000E3EE0(uint64_t a1)
{
  v2 = sub_1000E4190();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000E3F3C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1000E3FB8(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_1000E3FB8(void *a1)
{
  v3 = sub_100002BE4(&qword_100170C30, &qword_1001195A8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9[-v5];
  v7 = a1[4];
  sub_10000524C(a1, a1[3]);
  sub_1000E4190();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v9[15] = 0;
    v7 = KeyedDecodingContainer.decode(_:forKey:)();
    v9[14] = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_1000052E4(a1);
  return v7;
}

unint64_t sub_1000E4190()
{
  result = qword_100170C38;
  if (!qword_100170C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100170C38);
  }

  return result;
}

unint64_t sub_1000E41F8()
{
  result = qword_100170C48;
  if (!qword_100170C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100170C48);
  }

  return result;
}

unint64_t sub_1000E4250()
{
  result = qword_100170C50;
  if (!qword_100170C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100170C50);
  }

  return result;
}

unint64_t sub_1000E42A8()
{
  result = qword_100170C58;
  if (!qword_100170C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100170C58);
  }

  return result;
}

char *sub_1000E42FC()
{
  v1 = type metadata accessor for ColorScheme();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100002BE4(&qword_10016BA40, &qword_100110FC0);
  __chkstk_darwin(v5 - 8);
  v7 = v53 - v6;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000EA638();
  if (v13 >> 60 == 15)
  {
    sub_1000E4960();
    swift_allocError();
    *v14 = 0;
    swift_willThrow();
    return v4;
  }

  v54 = v2;
  v55 = v1;
  v53[1] = v0;
  v56 = v12;
  v15 = v13;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v17 = v8;
  v18 = [(objc_class *)isa hk_hexString];

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v57 = v9;
  v20 = v19;
  v22 = v21;

  v23 = v17;
  v59 = 0xD00000000000001FLL;
  v60 = 0x8000000100120030;
  v24._countAndFlagsBits = v20;
  v25 = v57;
  v24._object = v22;
  String.append(_:)(v24);

  URL.init(string:)();

  if ((*(v25 + 48))(v7, 1, v23) == 1)
  {
    sub_100045318(v7);
    sub_1000E4960();
    swift_allocError();
    *v26 = 1;
    swift_willThrow();
    sub_10003DCC8(v56, v15);
    return v4;
  }

  v27 = *(v25 + 32);
  v28 = v11;
  v27(v11, v7, v23);
  v29 = v15 >> 62;
  if ((v15 >> 62) > 1)
  {
    if (v29 != 2)
    {
      goto LABEL_15;
    }

    v31 = v56[2];
    v30 = v56[3];
    v32 = __OFSUB__(v30, v31);
    v33 = v30 - v31;
    if (!v32)
    {
      if (v33 == 16)
      {
        goto LABEL_12;
      }

LABEL_15:
      v34 = v15;
      v35 = &ACCBakerDataVersion3;
      goto LABEL_16;
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  if (v29)
  {
    if (!__OFSUB__(HIDWORD(v56), v56))
    {
      if (HIDWORD(v56) - v56 == 16)
      {
        goto LABEL_12;
      }

      goto LABEL_15;
    }

    goto LABEL_30;
  }

  if (BYTE6(v15) != 16)
  {
    goto LABEL_15;
  }

LABEL_12:
  v34 = v15;
  v35 = &ACCBakerDataVersion1;
LABEL_16:
  v58 = *v35;
  v59 = 0;
  if (qword_100168F30 != -1)
  {
    swift_once();
  }

  v36 = v55;
  sub_100006B0C(v55, qword_100182180);
  URL._bridgeToObjectiveC()(v37);
  v39 = v38;
  v40 = v54;
  (*(v54 + 104))(v4, enum case for ColorScheme.dark(_:), v36);
  static ColorScheme.== infix(_:_:)();
  (*(v40 + 8))(v4, v36);
  v41 = ACCBakerCreate();

  v42 = v59;
  if (!v59)
  {
    v44 = v57;
    if (!v41)
    {
      sub_1000E4960();
      swift_allocError();
      *v48 = 2;
      swift_willThrow();
      sub_10003DCC8(v56, v34);
      (*(v44 + 8))(v28, v23);
      return v4;
    }

    v45 = CGSVGDocumentCreateFromData();
    if (v45)
    {
      v46 = v45;
      v47 = [objc_opt_self() _imageWithCGSVGDocument:v45 scale:0 orientation:1.0];
      if (v47)
      {
        v4 = v47;
        (*(v44 + 8))(v28, v23);
        sub_10003DCC8(v56, v34);

        return v4;
      }

      sub_1000E4960();
      v49 = v28;
      swift_allocError();
      *v51 = 4;
      swift_willThrow();

      sub_10003DCC8(v56, v34);
    }

    else
    {
      sub_1000E4960();
      v49 = v28;
      swift_allocError();
      *v50 = 3;
      swift_willThrow();

      sub_10003DCC8(v56, v34);
    }

    (*(v44 + 8))(v49, v23);
    return v4;
  }

  sub_1000E4960();
  swift_allocError();
  *v43 = v42;
  swift_willThrow();
  sub_10003DCC8(v56, v34);
  (*(v57 + 8))(v28, v23);
  return v4;
}

unint64_t sub_1000E4960()
{
  result = qword_100170C60;
  if (!qword_100170C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100170C60);
  }

  return result;
}

uint64_t sub_1000E49B4(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1000E49CC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 8))
  {
    return (*a1 + 2147483643);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 4;
  if (v4 >= 6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000E4A24(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

double sub_1000E4A84@<D0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v4 = [objc_opt_self() mainBundle];
  v5 = "YOUR_VISION_PRO_SETUP";
  v6 = "DiscoverVisionOS_UserGuide";
  v7 = 0xD000000000000014;
  if (a1 == 2)
  {
    v6 = "REMOTE_IPHONE_UNLOCK";
    v7 = 0xD000000000000015;
    v8 = 4;
  }

  else
  {
    v8 = 2;
  }

  if (a1)
  {
    v5 = "REMOTE_IPHONE_UNLOCK";
    v9 = 0xD000000000000015;
  }

  else
  {
    v9 = 0xD00000000000001ALL;
  }

  if (a1)
  {
    v10 = 3;
  }

  else
  {
    v10 = 1;
  }

  if (a1 <= 1u)
  {
    v11 = v5;
  }

  else
  {
    v11 = v6;
  }

  if (a1 <= 1u)
  {
    v12 = v9;
  }

  else
  {
    v12 = v7;
  }

  if (a1 <= 1u)
  {
    v13 = v10;
  }

  else
  {
    v13 = v8;
  }

  v21._object = 0xE000000000000000;
  v14.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v14.value._object = 0xEB00000000656C62;
  v15 = v11 | 0x8000000000000000;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  v21._countAndFlagsBits = 0;
  v17 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v12, v14, v4, v16, v21);

  v18 = *(type metadata accessor for Tip(0) + 32);
  v19 = sub_100002BE4(&qword_10016C220, &qword_100112330);
  (*(*(v19 - 8) + 56))(a2 + v18, v13, 7, v19);
  type metadata accessor for TipDestinationAction(0);
  swift_storeEnumTagMultiPayload();
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = v17;
  result = 0.0;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  return result;
}

void sub_1000E4C24(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000E8F80(&qword_10016C230, type metadata accessor for PasscodeAndBiometricsProvider, &unk_100117190);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 32);
}

uint64_t sub_1000E4CF4()
{
  swift_getKeyPath();
  sub_1000E8F80(&qword_10016D7D8, type metadata accessor for TipProvider, &unk_100119894);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
}

uint64_t sub_1000E4DB4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000E8F80(&qword_10016D7D8, type metadata accessor for TipProvider, &unk_100119894);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC17AppleVisionProApp11TipProvider__settingsTips;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

double sub_1000E4EA8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17AppleVisionProApp11TipProvider__settingsTips;
  swift_beginAccess();

  sub_1000E82C8(v4, a1);
  v6 = v5;

  if (v6)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000E8F80(&qword_10016D7D8, type metadata accessor for TipProvider, &unk_100119894);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

void sub_1000E4FF8(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC17AppleVisionProApp11TipProvider__settingsTips;
  swift_beginAccess();
  *(a1 + v4) = a2;
}

void *sub_1000E5068()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_100002BE4(&unk_10016F2B0, &qword_10010F6F0);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  EnrollmentAssetService.init()();
  v6 = OBJC_IVAR____TtC17AppleVisionProApp11TipProvider_pabProvider;
  type metadata accessor for PasscodeAndBiometricsProvider(0);
  swift_allocObject();
  *(v0 + v6) = sub_1000BF704();
  *(v0 + OBJC_IVAR____TtC17AppleVisionProApp11TipProvider__settingsTips) = &_swiftEmptySetSingleton;
  ObservationRegistrar.init()();
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  type metadata accessor for MainActor();

  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = v1;
  v9[5] = v2;
  sub_1000EE5F8(0, 0, v5, &unk_1001198C0, v9);

  return v1;
}

uint64_t sub_1000E521C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[5] = v7;
  v5[6] = v6;

  return _swift_task_switch(sub_1000E52B4, v7, v6);
}

uint64_t sub_1000E52B4()
{
  v12 = v0;
  if (qword_100168EB0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006B0C(v1, qword_100182138);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    v6 = _typeName(_:qualified:)();
    v8 = sub_100006B44(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s activating enrollmentAssetService", v4, 0xCu);
    sub_1000052E4(v5);
  }

  v9 = swift_task_alloc();
  *(v0 + 56) = v9;
  *v9 = v0;
  v9[1] = sub_100022EE0;

  return EnrollmentAssetService.activate()();
}

double sub_1000E5480()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = [v2 standardUserDefaults];
  static UserDefaultUtilities.SharedConstants.forceShowAllSettingsTips.getter();
  v4 = String._bridgeToObjectiveC()();

  v5 = [v3 BOOLForKey:v4];

  if (v5)
  {
    sub_1000E6270(0);
    sub_1000E6270(1);
    v6 = 2;
LABEL_5:
    sub_1000E6270(v6);

    return sub_1000E6270(3);
  }

  v7 = [v2 standardUserDefaults];
  static UserDefaultUtilities.SharedConstants.myDeviceForceShowUIVisibleSettingsTips.getter();
  v8 = String._bridgeToObjectiveC()();

  v9 = [v7 BOOLForKey:v8];

  sub_1000E6270(0);
  if (v9)
  {
    v6 = 1;
    goto LABEL_5;
  }

  v11 = *(v1 + OBJC_IVAR____TtC17AppleVisionProApp11TipProvider_pabProvider);
  swift_getKeyPath();
  sub_1000E8F80(&qword_10016C230, type metadata accessor for PasscodeAndBiometricsProvider, &unk_100117190);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v11 + 32) == 1)
  {
    sub_1000E6270(3);
    v12 = sub_1000C05CC();
    sub_1000BF564(v12, v13);
  }

  else
  {
    sub_1000E65A8(3);
  }

  return sub_1000E5684();
}

double sub_1000E5684()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_100002BE4(&unk_10016F2B0, &qword_10010F6F0);
  __chkstk_darwin(v3 - 8);
  v5 = &v18 - v4;
  if (EnrollmentAssetService.cloudDataExists()())
  {
    if (qword_100168EB0 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100006B0C(v6, qword_100182138);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v19 = v10;
      *v9 = 136315138;
      v11 = _typeName(_:qualified:)();
      v13 = sub_100006B44(v11, v12, &v19);

      *(v9 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v7, v8, "%s enrollmentAssetService cloudDataExists", v9, 0xCu);
      sub_1000052E4(v10);
    }

    sub_1000E65A8(2);

    return sub_1000E6270(1);
  }

  else
  {
    sub_1000E65A8(1);
    v15 = type metadata accessor for TaskPriority();
    (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
    type metadata accessor for MainActor();

    v16 = static MainActor.shared.getter();
    v17 = swift_allocObject();
    v17[2] = v16;
    v17[3] = &protocol witness table for MainActor;
    v17[4] = v1;
    v17[5] = v2;
    sub_1000EE5F8(0, 0, v5, &unk_100119900, v17);
  }

  return result;
}

uint64_t sub_1000E5950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[8] = type metadata accessor for MainActor();
  v5[9] = static MainActor.shared.getter();
  v6 = swift_task_alloc();
  v5[10] = v6;
  *v6 = v5;
  v6[1] = sub_1000E5A0C;

  return EnrollmentAssetService.localDataExists()();
}

uint64_t sub_1000E5A0C(char a1)
{
  v4 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
    v8 = sub_1000E6064;
  }

  else
  {
    *(v4 + 96) = a1 & 1;
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v9;
    v8 = sub_1000E5B90;
  }

  return _swift_task_switch(v8, v5, v7);
}

uint64_t sub_1000E5B90()
{
  v29 = v0;
  v1 = *(v0 + 96);

  if (v1 != 1)
  {
    v19.n128_f64[0] = sub_1000E65A8(2);
    goto LABEL_20;
  }

  if (qword_100168EB0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006B0C(v2, qword_100182138);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v28[0] = v6;
    *v5 = 136315138;
    v7 = _typeName(_:qualified:)();
    v9 = sub_100006B44(v7, v8, v28);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s enrollmentAssetService localDataExists", v5, 0xCu);
    sub_1000052E4(v6);
  }

  v10 = *(v0 + 48);
  swift_getKeyPath();
  *(v0 + 40) = v10;
  sub_1000E8F80(&qword_10016D7D8, type metadata accessor for TipProvider, &unk_100119894);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v11 = OBJC_IVAR____TtC17AppleVisionProApp11TipProvider__settingsTips;
  swift_beginAccess();
  v12 = *(v10 + v11);
  if (!*(v12 + 16))
  {
LABEL_18:
    v19.n128_f64[0] = sub_1000E6270(2);
    goto LABEL_20;
  }

  Hasher.init(_seed:)();

  String.hash(into:)();
  v13 = Hasher._finalize()();
  v14 = -1 << *(v12 + 32);
  v15 = v13 & ~v14;
  if (((*(v12 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
  {
LABEL_17:

    goto LABEL_18;
  }

  v16 = ~v14;
  while (*(*(v12 + 48) + v15) <= 1u)
  {
    v17 = 0x800000010011C9C0;
    if (*(*(v12 + 48) + v15))
    {
      goto LABEL_14;
    }

LABEL_15:
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v18)
    {
      goto LABEL_24;
    }

    v15 = (v15 + 1) & v16;
    if (((*(v12 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  if (*(*(v12 + 48) + v15) != 2)
  {
    goto LABEL_15;
  }

  v17 = 0x800000010011C9E0;
LABEL_14:
  if (0x800000010011C9C0 != v17)
  {
    goto LABEL_15;
  }

LABEL_24:

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v28[0] = swift_slowAlloc();
    *v24 = 136315650;
    v25 = _typeName(_:qualified:)();
    v27 = sub_100006B44(v25, v26, v28);

    *(v24 + 4) = v27;
    *(v24 + 12) = 2080;
    *(v24 + 14) = sub_100006B44(0xD000000000000017, 0x800000010011C9C0, v28);
    *(v24 + 22) = 2080;
    *(v24 + 24) = sub_100006B44(0xD000000000000017, 0x800000010011C9E0, v28);
    _os_log_impl(&_mh_execute_header, v22, v23, "%s we are already showing %s, so hiding %s ", v24, 0x20u);
    swift_arrayDestroy();
  }

LABEL_20:
  v20 = *(v0 + 8);

  return v20(v19);
}

uint64_t sub_1000E6064()
{
  v14 = v0;

  if (qword_100168EB0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006B0C(v1, qword_100182138);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v4 = 136315394;
    v7 = _typeName(_:qualified:)();
    v9 = sub_100006B44(v7, v8, &v13);

    *(v4 + 4) = v9;
    *(v4 + 12) = 2112;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v10;
    *v5 = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s portableEnrollmentLocalAvailable fetch failed with error: %@", v4, 0x16u);
    sub_1000077E0(v5);

    sub_1000052E4(v6);
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11();
}

double sub_1000E6270(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  if (qword_100168EB0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006B0C(v4, qword_100182138);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v19[0] = swift_slowAlloc();
    *v7 = 136315394;
    v8 = _typeName(_:qualified:)();
    v10 = sub_100006B44(v8, v9, v19);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    v11 = 0xEC0000006B636F6CLL;
    v12 = 0x6E5565746F6D6572;
    if (v3 == 2)
    {
      v12 = 0xD000000000000017;
      v11 = 0x800000010011C9E0;
    }

    v13 = 0x800000010011C9A0;
    v14 = 0xD000000000000014;
    if (v3)
    {
      v14 = 0xD000000000000017;
      v13 = 0x800000010011C9C0;
    }

    if (v3 <= 1u)
    {
      v15 = v14;
    }

    else
    {
      v15 = v12;
    }

    if (v3 <= 1u)
    {
      v16 = v13;
    }

    else
    {
      v16 = v11;
    }

    v17 = sub_100006B44(v15, v16, v19);

    *(v7 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s inserting %s", v7, 0x16u);
    swift_arrayDestroy();
  }

  swift_getKeyPath();
  v19[0] = v2;
  sub_1000E8F80(&qword_10016D7D8, type metadata accessor for TipProvider, &unk_100119894);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v19[0] = v2;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  sub_1000E6F04(&v20, v3);
  swift_endAccess();
  v19[0] = v2;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  return result;
}

double sub_1000E65A8(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  if (qword_100168EB0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006B0C(v4, qword_100182138);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v19[0] = swift_slowAlloc();
    *v7 = 136315394;
    v8 = _typeName(_:qualified:)();
    v10 = sub_100006B44(v8, v9, v19);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    v11 = 0xEC0000006B636F6CLL;
    v12 = 0x6E5565746F6D6572;
    if (v3 == 2)
    {
      v12 = 0xD000000000000017;
      v11 = 0x800000010011C9E0;
    }

    v13 = 0x800000010011C9A0;
    v14 = 0xD000000000000014;
    if (v3)
    {
      v14 = 0xD000000000000017;
      v13 = 0x800000010011C9C0;
    }

    if (v3 <= 1u)
    {
      v15 = v14;
    }

    else
    {
      v15 = v12;
    }

    if (v3 <= 1u)
    {
      v16 = v13;
    }

    else
    {
      v16 = v11;
    }

    v17 = sub_100006B44(v15, v16, v19);

    *(v7 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s removing %s", v7, 0x16u);
    swift_arrayDestroy();
  }

  swift_getKeyPath();
  v19[0] = v2;
  sub_1000E8F80(&qword_10016D7D8, type metadata accessor for TipProvider, &unk_100119894);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v19[0] = v2;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  sub_1000E7B18(v3);
  swift_endAccess();
  v19[0] = v2;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  return result;
}

uint64_t sub_1000E68DC()
{
  v1 = OBJC_IVAR____TtC17AppleVisionProApp11TipProvider_enrollmentAssetService;
  v2 = type metadata accessor for EnrollmentAssetService();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC17AppleVisionProApp11TipProvider___observationRegistrar;
  v4 = type metadata accessor for ObservationRegistrar();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TipProvider(uint64_t a1)
{
  result = qword_100170CA8;
  if (!qword_100170CA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000E6A2C(uint64_t a1)
{
  result = type metadata accessor for EnrollmentAssetService();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ObservationRegistrar();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_1000E6B28()
{
  result = qword_100170DE0;
  if (!qword_100170DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100170DE0);
  }

  return result;
}

Swift::Int sub_1000E6B88()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_1000E6C5C(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int sub_1000E6D1C(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1000E6DEC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000E8CF8(*a1);
  *a2 = result;
  return result;
}

void sub_1000E6E1C(unint64_t *a1@<X8>)
{
  v2 = 0xEC0000006B636F6CLL;
  v3 = 0x6E5565746F6D6572;
  if (*v1 == 2)
  {
    v3 = 0xD000000000000017;
    v2 = 0x800000010011C9E0;
  }

  v4 = 0x800000010011C9A0;
  v5 = 0xD000000000000014;
  if (*v1)
  {
    v5 = 0xD000000000000017;
    v4 = 0x800000010011C9C0;
  }

  if (*v1 <= 1u)
  {
    v6 = v5;
  }

  else
  {
    v6 = v3;
  }

  if (*v1 <= 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_1000E6EB0()
{
  result = qword_100170DE8;
  if (!qword_100170DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100170DE8);
  }

  return result;
}

uint64_t sub_1000E6F04(unsigned __int8 *a1, unsigned __int8 a2)
{
  v4 = *v2;
  Hasher.init(_seed:)();
  String.hash(into:)();

  v5 = Hasher._finalize()();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v26 = ~v6;
    while (1)
    {
      v8 = *(*(v4 + 48) + v7);
      v9 = v8 == 2 ? 0xD000000000000017 : 0x6E5565746F6D6572;
      v10 = v8 == 2 ? 0x800000010011C9E0 : 0xEC0000006B636F6CLL;
      v11 = *(*(v4 + 48) + v7) ? 0xD000000000000017 : 0xD000000000000014;
      v12 = *(*(v4 + 48) + v7) ? 0x800000010011C9C0 : 0x800000010011C9A0;
      v13 = *(*(v4 + 48) + v7) <= 1u ? v11 : v9;
      v14 = *(*(v4 + 48) + v7) <= 1u ? v12 : v10;
      v15 = a2 == 2 ? 0xD000000000000017 : 0x6E5565746F6D6572;
      v16 = a2 == 2 ? 0x800000010011C9E0 : 0xEC0000006B636F6CLL;
      v17 = a2 ? 0xD000000000000017 : 0xD000000000000014;
      v18 = a2 ? 0x800000010011C9C0 : 0x800000010011C9A0;
      v19 = a2 <= 1u ? v17 : v15;
      v20 = a2 <= 1u ? v18 : v16;
      if (v13 == v19 && v14 == v20)
      {
        break;
      }

      v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v21)
      {
        goto LABEL_45;
      }

      v7 = (v7 + 1) & v26;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_43;
      }
    }

LABEL_45:
    result = 0;
    a2 = *(*(v4 + 48) + v7);
  }

  else
  {
LABEL_43:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v24;
    sub_1000E7464(a2, v7, isUniquelyReferenced_nonNull_native);
    *v24 = v27;
    result = 1;
  }

  *a1 = a2;
  return result;
}

void sub_1000E7170(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100002BE4(&qword_100170DF0, &qword_1001198F0);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v18 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_16:
      v21 = *(*(v3 + 48) + (v18 | (v6 << 6)));
      Hasher.init(_seed:)();
      String.hash(into:)();

      v13 = Hasher._finalize()();
      v14 = -1 << *(v5 + 32);
      v15 = v13 & ~v14;
      v16 = v15 >> 6;
      if (((-1 << v15) & ~*(v12 + 8 * (v15 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v14) >> 6;
        while (++v16 != v23 || (v22 & 1) == 0)
        {
          v24 = v16 == v23;
          if (v16 == v23)
          {
            v16 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v16);
          if (v25 != -1)
          {
            v17 = __clz(__rbit64(~v25)) + (v16 << 6);
            goto LABEL_8;
          }
        }

LABEL_31:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v15) & ~*(v12 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v12 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v5 + 48) + v17) = v21;
      ++*(v5 + 16);
    }

    v19 = v6;
    while (1)
    {
      v6 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v6 >= v11)
      {
        break;
      }

      v20 = v7[v6];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v10 = (v20 - 1) & v20;
        goto LABEL_16;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1000E7464(unsigned __int8 a1, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_50;
  }

  if (a3)
  {
    sub_1000E7170(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      sub_1000E7714();
      goto LABEL_50;
    }

    sub_1000E7854(v5 + 1);
  }

  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();

  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  a2 = v8 & ~v9;
  v31 = v7 + 56;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v30 = v7;
    v10 = ~v9;
    do
    {
      v11 = *(*(v30 + 48) + a2);
      v12 = v11 == 2 ? 0xD000000000000017 : 0x6E5565746F6D6572;
      v13 = v11 == 2 ? 0x800000010011C9E0 : 0xEC0000006B636F6CLL;
      v14 = *(*(v30 + 48) + a2) ? 0xD000000000000017 : 0xD000000000000014;
      v15 = *(*(v30 + 48) + a2) ? 0x800000010011C9C0 : 0x800000010011C9A0;
      v16 = *(*(v30 + 48) + a2) <= 1u ? v14 : v12;
      v17 = *(*(v30 + 48) + a2) <= 1u ? v15 : v13;
      v18 = a1 == 2 ? 0xD000000000000017 : 0x6E5565746F6D6572;
      v19 = a1 == 2 ? 0x800000010011C9E0 : 0xEC0000006B636F6CLL;
      v20 = a1 ? 0xD000000000000017 : 0xD000000000000014;
      v21 = a1 ? 0x800000010011C9C0 : 0x800000010011C9A0;
      v22 = a1 <= 1u ? v20 : v18;
      v23 = a1 <= 1u ? v21 : v19;
      if (v16 == v22 && v17 == v23)
      {
        goto LABEL_53;
      }

      v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v24)
      {
        goto LABEL_54;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v31 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_50:
  v25 = *v29;
  *(*v29 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v25 + 48) + a2) = a1;
  v26 = *(v25 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v25 + 16) = v28;
    return;
  }

  __break(1u);
LABEL_53:

LABEL_54:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_1000E7714()
{
  v1 = v0;
  sub_100002BE4(&qword_100170DF0, &qword_1001198F0);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
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

      v16 = *(v2 + 56 + 8 * v8);
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
}

void sub_1000E7854(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100002BE4(&qword_100170DF0, &qword_1001198F0);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_16:
      v20 = *(*(v3 + 48) + (v17 | (v6 << 6)));
      Hasher.init(_seed:)();
      String.hash(into:)();

      v12 = Hasher._finalize()();
      v13 = -1 << *(v5 + 32);
      v14 = v12 & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v11 + 8 * (v14 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v13) >> 6;
        while (++v15 != v22 || (v21 & 1) == 0)
        {
          v23 = v15 == v22;
          if (v15 == v22)
          {
            v15 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v15);
          if (v24 != -1)
          {
            v16 = __clz(__rbit64(~v24)) + (v15 << 6);
            goto LABEL_8;
          }
        }

        goto LABEL_29;
      }

      v16 = __clz(__rbit64((-1 << v14) & ~*(v11 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v11 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v5 + 48) + v16) = v20;
      ++*(v5 + 16);
    }

    v18 = v6;
    while (1)
    {
      v6 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_27;
      }

      v19 = *(v3 + 56 + 8 * v6);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v9 = (v19 - 1) & v19;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v5;
  }
}

uint64_t sub_1000E7B18(unsigned __int8 a1)
{
  v3 = *v1;
  Hasher.init(_seed:)();
  String.hash(into:)();

  v4 = Hasher._finalize()();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 4;
  }

  v26 = v1;
  v27 = ~v5;
  v7 = a1;
  while (1)
  {
    v8 = *(*(v3 + 48) + v6);
    v9 = v8 == 2 ? 0xD000000000000017 : 0x6E5565746F6D6572;
    v10 = v8 == 2 ? 0x800000010011C9E0 : 0xEC0000006B636F6CLL;
    v11 = *(*(v3 + 48) + v6) ? 0xD000000000000017 : 0xD000000000000014;
    v12 = *(*(v3 + 48) + v6) ? 0x800000010011C9C0 : 0x800000010011C9A0;
    v13 = *(*(v3 + 48) + v6) <= 1u ? v11 : v9;
    v14 = *(*(v3 + 48) + v6) <= 1u ? v12 : v10;
    v15 = v7 == 2 ? 0xD000000000000017 : 0x6E5565746F6D6572;
    v16 = v7 == 2 ? 0x800000010011C9E0 : 0xEC0000006B636F6CLL;
    v17 = v7 ? 0xD000000000000017 : 0xD000000000000014;
    v18 = v7 ? 0x800000010011C9C0 : 0x800000010011C9A0;
    v19 = v7 <= 1 ? v17 : v15;
    v20 = v7 <= 1 ? v18 : v16;
    if (v13 == v19 && v14 == v20)
    {
      break;
    }

    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v21)
    {
      goto LABEL_45;
    }

    v6 = (v6 + 1) & v27;
    if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 4;
    }
  }

LABEL_45:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v26;
  v28 = *v26;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1000E7714();
    v24 = v28;
  }

  v22 = *(*(v24 + 48) + v6);
  sub_1000E7D80(v6);
  *v26 = v28;
  return v22;
}

void sub_1000E7D80(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        Hasher.init(_seed:)();
        String.hash(into:)();

        v10 = Hasher._finalize()() & v7;
        if (v2 >= v9)
        {
          if (v10 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v10 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v10)
        {
LABEL_11:
          v11 = *(v3 + 48);
          v12 = (v11 + v2);
          v13 = (v11 + v6);
          if (v2 != v6 || v12 >= v13 + 1)
          {
            *v12 = *v13;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v14 = *(v3 + 16);
  v15 = __OFSUB__(v14, 1);
  v16 = v14 - 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v16;
    ++*(v3 + 36);
  }
}

void sub_1000E7FD4(uint64_t a1, uint64_t a2)
{
  v3 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (v3)
    {
      if (a2 < 0)
      {
        v5 = a2;
      }

      else
      {
        v5 = (a2 & 0xFFFFFFFFFFFFFF8);
      }

_$ss10__CocoaSetV7isEqual2toSbAB_tF:
      __CocoaSet.isEqual(to:)(v5, v4);
      return;
    }

    v8 = v4;
    v7 = a2;
    goto LABEL_17;
  }

  if (v3)
  {
    v6 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v6 = a2;
    }

    v7 = a1;
    v8 = v6;
LABEL_17:

    sub_1000E8608(v8, v7);
    return;
  }

  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v9 = a1 + 56;
    v10 = 1 << *(a1 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(a1 + 56);
    type metadata accessor for AnyCancellable();
    v13 = 0;
    v14 = (v10 + 63) >> 6;
    v15 = a2 + 56;
    v5 = &qword_100170DF8;
    if (!v12)
    {
LABEL_27:
      v16 = v13;
      while (1)
      {
        v13 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v13 >= v14)
        {
          return;
        }

        v17 = *(v9 + 8 * v13);
        ++v16;
        if (v17)
        {
          v22 = (v17 - 1) & v17;
          goto LABEL_32;
        }
      }

      __break(1u);
      goto _$ss10__CocoaSetV7isEqual2toSbAB_tF;
    }

    while (1)
    {
      v22 = (v12 - 1) & v12;
LABEL_32:
      sub_1000E8F80(&qword_100170DF8, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);

      v18 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v19 = -1 << *(a2 + 32);
      v20 = v18 & ~v19;
      if (((*(v15 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
      {
        break;
      }

      v21 = ~v19;
      sub_1000E8F80(&qword_100170E00, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
      while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
      {
        v20 = (v20 + 1) & v21;
        if (((*(v15 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
        {
          goto LABEL_40;
        }
      }

      v14 = (v10 + 63) >> 6;
      v12 = v22;
      v5 = &qword_100170DF8;
      if (!v22)
      {
        goto LABEL_27;
      }
    }

LABEL_40:
  }
}

void sub_1000E82C8(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return;
  }

  v3 = a1;
  if (*(a1 + 16) != *(a2 + 16))
  {
    return;
  }

  v4 = 0;
  v23 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v24 = v8;
  if (!v7)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v10 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_13:
    v13 = *(*(v3 + 48) + (v10 | (v4 << 6)));
    Hasher.init(_seed:)();
    String.hash(into:)();

    v14 = Hasher._finalize()();
    v15 = -1 << *(a2 + 32);
    v16 = v14 & ~v15;
    if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
    {
      break;
    }

    v17 = ~v15;
    while (1)
    {
      if (*(*(a2 + 48) + v16) > 1u)
      {
        v18 = 0x6E5565746F6D6572;
        v19 = 0xEC0000006B636F6CLL;
        if (*(*(a2 + 48) + v16) == 2)
        {
          v18 = 0xD000000000000017;
          v19 = 0x800000010011C9E0;
        }
      }

      else
      {
        v18 = *(*(a2 + 48) + v16) ? 0xD000000000000017 : 0xD000000000000014;
        v19 = *(*(a2 + 48) + v16) ? 0x800000010011C9C0 : 0x800000010011C9A0;
      }

      if (v13 <= 1)
      {
        break;
      }

      if (v13 == 2)
      {
        v21 = 0xD000000000000017;
      }

      else
      {
        v21 = 0x6E5565746F6D6572;
      }

      if (v13 == 2)
      {
        v20 = 0x800000010011C9E0;
      }

      else
      {
        v20 = 0xEC0000006B636F6CLL;
      }

      if (v18 == v21)
      {
        goto LABEL_37;
      }

LABEL_38:
      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v22)
      {
        goto LABEL_42;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        return;
      }
    }

    if (!v13)
    {
      v20 = 0x800000010011C9A0;
      if (v18 == 0xD000000000000014)
      {
        goto LABEL_37;
      }

      goto LABEL_38;
    }

    v20 = 0x800000010011C9C0;
    if (v18 != 0xD000000000000017)
    {
      goto LABEL_38;
    }

LABEL_37:
    if (v19 != v20)
    {
      goto LABEL_38;
    }

LABEL_42:
    v8 = v24;
    v3 = a1;
    v7 = v26;
    if (!v26)
    {
LABEL_8:
      v11 = v4;
      while (1)
      {
        v4 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v4 >= v8)
        {
          return;
        }

        v12 = *(v23 + 8 * v4);
        ++v11;
        if (v12)
        {
          v10 = __clz(__rbit64(v12));
          v26 = (v12 - 1) & v12;
          goto LABEL_13;
        }
      }

      __break(1u);
      return;
    }
  }
}

void sub_1000E8608(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == __CocoaSet.count.getter())
  {
    v4 = 0;
    v5 = 1 << *(a2 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v7 &= v7 - 1;
LABEL_12:

      v11 = __CocoaSet.contains(_:)();

      if ((v11 & 1) == 0)
      {
        return;
      }
    }

    v9 = v4;
    while (1)
    {
      v4 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v10 = *(a2 + 56 + 8 * v4);
      ++v9;
      if (v10)
      {
        v7 = (v10 - 1) & v10;
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1000E870C()
{
  sub_100002BE4(&qword_100170E08, &qword_100119938);
  v0 = type metadata accessor for Tip(0);
  v1 = *(v0 - 8);
  v47 = *(v1 + 72);
  v45 = v0 - 8;
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_100110A60;
  v3 = (v46 + v2);
  v49 = objc_opt_self();
  v4 = [v49 mainBundle];
  v50._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0x524154535F544547;
  v5._object = 0xEB00000000444554;
  v6.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v6.value._object = 0xEB00000000656C62;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v50._countAndFlagsBits = 0;
  v8 = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, v6, v4, v7, v50);

  v9 = [v49 mainBundle];
  v51._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0x5F4E495F57454956;
  v10._object = 0xEC00000053504954;
  v11.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v11.value._object = 0xEB00000000656C62;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v51._countAndFlagsBits = 0;
  v13 = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, v11, v9, v12, v51);

  v14 = *(v45 + 40);
  v15 = sub_100002BE4(&qword_10016C220, &qword_100112330);
  v48 = *(*(v15 - 8) + 56);
  v48(v46 + v2 + v14, 5, 7, v15);
  type metadata accessor for TipDestinationAction(0);
  swift_storeEnumTagMultiPayload();
  v3->_countAndFlagsBits = 0;
  v3->_object = 0;
  v3[1] = v8;
  v3[2] = v13;
  v3[3]._countAndFlagsBits = 0xD00000000000001BLL;
  v3[3]._object = 0x80000001001200C0;
  v16 = (v46 + v2 + v47);
  v17 = [v49 mainBundle];
  v52._object = 0xE000000000000000;
  v18._countAndFlagsBits = 0x455241435F544946;
  v18._object = 0xE800000000000000;
  v19.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v19.value._object = 0xEB00000000656C62;
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  v52._countAndFlagsBits = 0;
  v21 = NSLocalizedString(_:tableName:bundle:value:comment:)(v18, v19, v17, v20, v52);

  v22 = [v49 mainBundle];
  v53._object = 0xE000000000000000;
  v23._countAndFlagsBits = 0x5F4E495F57454956;
  v23._object = 0xEC00000053504954;
  v24.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v24.value._object = 0xEB00000000656C62;
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  v53._countAndFlagsBits = 0;
  v26 = NSLocalizedString(_:tableName:bundle:value:comment:)(v23, v24, v22, v25, v53);

  v48(v16 + *(v45 + 40), 6, 7, v15);
  swift_storeEnumTagMultiPayload();
  v16->_countAndFlagsBits = 0;
  v16->_object = 0;
  v16[1] = v21;
  v16[2] = v26;
  v16[3]._countAndFlagsBits = 0xD00000000000001BLL;
  v16[3]._object = 0x80000001001200E0;
  v27 = (v46 + v2 + 2 * v47);
  v28 = [v49 mainBundle];
  v54._object = 0xE000000000000000;
  v29._countAndFlagsBits = 0x454E5F5354414857;
  v29._object = 0xE900000000000057;
  v30.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v30.value._object = 0xEB00000000656C62;
  v31._countAndFlagsBits = 0;
  v31._object = 0xE000000000000000;
  v54._countAndFlagsBits = 0;
  v32 = NSLocalizedString(_:tableName:bundle:value:comment:)(v29, v30, v28, v31, v54);

  v33 = [v49 mainBundle];
  v55._object = 0xE000000000000000;
  v34._countAndFlagsBits = 0x5F4E495F57454956;
  v34._object = 0xEC00000053504954;
  v35.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v35.value._object = 0xEB00000000656C62;
  v36._countAndFlagsBits = 0;
  v36._object = 0xE000000000000000;
  v55._countAndFlagsBits = 0;
  v37 = NSLocalizedString(_:tableName:bundle:value:comment:)(v34, v35, v33, v36, v55);

  v48(v27 + *(v45 + 40), 7, 7, v15);
  swift_storeEnumTagMultiPayload();
  v27->_countAndFlagsBits = 0;
  v27->_object = 0;
  v27[1] = v32;
  v27[2] = v37;
  v38 = (v46 + v2 + 3 * v47);
  v27[3]._countAndFlagsBits = 0xD000000000000019;
  v27[3]._object = 0x8000000100120100;
  v39 = [v49 mainBundle];
  v40._countAndFlagsBits = 0xD000000000000015;
  v56._object = 0xE000000000000000;
  v40._object = 0x8000000100120120;
  v41.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v41.value._object = 0xEB00000000656C62;
  v42._countAndFlagsBits = 0;
  v42._object = 0xE000000000000000;
  v56._countAndFlagsBits = 0;
  v43 = NSLocalizedString(_:tableName:bundle:value:comment:)(v40, v41, v39, v42, v56);

  *(&v38->_countAndFlagsBits + *(v45 + 40)) = 0;
  swift_storeEnumTagMultiPayload();
  v38->_countAndFlagsBits = 0;
  v38->_object = 0;
  v38[1] = v43;
  v38[2]._countAndFlagsBits = 0;
  v38[2]._object = 0;
  v38[3]._countAndFlagsBits = 0xD00000000000001ALL;
  v38[3]._object = 0x8000000100120140;
  return v46;
}

unint64_t sub_1000E8CF8(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10015A170, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000E8D48(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100024388;

  return sub_1000E521C(a1, v4, v5, v7, v6);
}

uint64_t sub_1000E8E38()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000E8E78(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000FA04;

  return sub_1000E5950(a1, v4, v5, v7, v6);
}

uint64_t sub_1000E8F80(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000E8FD8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1000E9020(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1000E90C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v57 = a3;
  v66 = a2;
  v64 = a4;
  v5 = type metadata accessor for AppHeroModel(0);
  v50 = *(v5 - 8);
  v6 = *(v50 + 64);
  __chkstk_darwin(v5);
  v51 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100002BE4(&qword_10016A0A8, &qword_100119A80);
  __chkstk_darwin(v7 - 8);
  v52 = &v49 - v8;
  v63 = sub_100002BE4(&qword_100170E18, &qword_100119A88);
  v54 = *(v63 - 8);
  __chkstk_darwin(v63);
  v53 = &v49 - v9;
  v65 = sub_100002BE4(&qword_100170E20, &qword_100119A90);
  v56 = *(v65 - 8);
  __chkstk_darwin(v65);
  v55 = &v49 - v10;
  v61 = sub_100002BE4(&qword_100170E28, &qword_100119A98);
  __chkstk_darwin(v61);
  v12 = &v49 - v11;
  v60 = sub_100002BE4(&qword_100170E30, &qword_100119AA0);
  v58 = *(v60 - 8);
  __chkstk_darwin(v60);
  v14 = &v49 - v13;
  v62 = sub_100002BE4(&qword_100170E38, &unk_100119AA8);
  v59 = *(v62 - 8);
  __chkstk_darwin(v62);
  v16 = &v49 - v15;
  v17 = type metadata accessor for EnvironmentValues();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = (a1 + *(v5 + 28));
  v22 = v21[1];
  if (v22)
  {
    v55 = v12;
    v56 = a1;
    v23 = *v21;

    v24 = v57;
    if ((v57 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v25 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v18 + 8))(v20, v17);
    }

    v26 = sub_10000D220(v23, v22);

    v27 = swift_allocObject();
    v28 = v66;
    *(v27 + 16) = v66;
    *(v27 + 24) = v24 & 1;
    *(v27 + 32) = v23;
    *(v27 + 40) = v22;
    *(v27 + 48) = v26 & 1;
    __chkstk_darwin(v28);
    *(&v49 - 2) = v56;

    sub_100002BE4(&qword_100170E40, &qword_100119AB8);
    sub_1000EA1B4();
    Button.init(action:label:)();
    v29 = sub_100012C48(&qword_100170E88, &qword_100170E30, &qword_100119AA0, &protocol conformance descriptor for Button<A>);
    v30 = sub_1000EA3A4();
    v31 = v60;
    View.buttonStyle<A>(_:)();
    (*(v58 + 8))(v14, v31);
    v32 = v59;
    v33 = v62;
    (*(v59 + 16))(v55, v16, v62);
    swift_storeEnumTagMultiPayload();
    v67 = v31;
    v68 = &type metadata for ScalingButtonStyle;
    v69 = v29;
    v70 = v30;
    swift_getOpaqueTypeConformance2();
    v34 = sub_100012C48(&qword_100170E78, &qword_100170E18, &qword_100119A88, &protocol conformance descriptor for ActionButton<A>);
    v67 = v63;
    v68 = &type metadata for ScalingButtonStyle;
    v69 = v34;
    v70 = v30;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v32 + 8))(v16, v33);
  }

  else
  {
    v36 = type metadata accessor for ButtonRole();
    (*(*(v36 - 8) + 56))(v52, 1, 1, v36);
    sub_1000E9E30(a1 + *(v5 + 40), &v67);
    v37 = a1;
    v38 = v51;
    sub_100075D08(v37, v51);
    v39 = (*(v50 + 80) + 16) & ~*(v50 + 80);
    v40 = swift_allocObject();
    sub_1000EA0EC(v38, v40 + v39);
    sub_100002BE4(&qword_100170E40, &qword_100119AB8);
    sub_1000EA1B4();
    v41 = v53;
    ActionButton.init(role:action:label:)();
    v42 = sub_100012C48(&qword_100170E78, &qword_100170E18, &qword_100119A88, &protocol conformance descriptor for ActionButton<A>);
    v43 = sub_1000EA3A4();
    v44 = v55;
    v45 = v63;
    View.buttonStyle<A>(_:)();
    (*(v54 + 8))(v41, v45);
    v46 = v56;
    v47 = v65;
    (*(v56 + 16))(v12, v44, v65);
    swift_storeEnumTagMultiPayload();
    v48 = sub_100012C48(&qword_100170E88, &qword_100170E30, &qword_100119AA0, &protocol conformance descriptor for Button<A>);
    v67 = v60;
    v68 = &type metadata for ScalingButtonStyle;
    v69 = v48;
    v70 = v43;
    swift_getOpaqueTypeConformance2();
    v67 = v45;
    v68 = &type metadata for ScalingButtonStyle;
    v69 = v42;
    v70 = v43;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v46 + 8))(v44, v47);
  }
}

uint64_t sub_1000E9A20(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = type metadata accessor for EnvironmentValues();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v16[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v10 + 8))(v12, v9);
  }

  sub_10000D854(a3, a4, (a5 & 1) == 0);

  sub_10004F388(0);
  v16[3] = &_s20TetsuoAnalyticsEventON;
  v16[4] = sub_1000250D8();
  if (a5)
  {
    LOBYTE(v16[0]) = 14;
    static AnalyticsCoordinator.submitEvent(_:payload:)();

    return sub_1000052E4(v16);
  }

  else
  {
    LOBYTE(v16[0]) = 13;
    static AnalyticsCoordinator.submitEvent(_:payload:)();

    sub_1000052E4(v16);
    return sub_10004B668(0.0, a3, a4, 2u);
  }
}

uint64_t sub_1000E9C24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100075D08(a1, a2);
  v3 = a2 + *(type metadata accessor for AppHeroView(0) + 20);
  type metadata accessor for DiscoveryFeedStateProvider(0);
  sub_1000EA468(&qword_100169930, type metadata accessor for DiscoveryFeedStateProvider, &unk_10010D308);
  result = Environment.init<A>(_:)();
  *v3 = result;
  *(v3 + 8) = v5 & 1;
  return result;
}

uint64_t sub_1000E9CC4(uint64_t a1)
{
  sub_10002C0D4();

  return _ComponentBody.init(_:)();
}

unint64_t sub_1000E9D30()
{
  result = qword_100170E10;
  if (!qword_100170E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100170E10);
  }

  return result;
}

uint64_t sub_1000E9E30(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&qword_10016A230, &unk_10010F030);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000E9EA0()
{
  v1 = type metadata accessor for AppHeroModel(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  sub_1000052E4((v0 + v3));
  v6 = v1[5];
  v7 = type metadata accessor for ImpressionMetrics();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  v9 = v1[9];
  v10 = type metadata accessor for Models.Menu();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  v12 = (v5 + v1[10]);
  if (v12[3])
  {
    sub_1000052E4(v12);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000EA0EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppHeroModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000EA1B4()
{
  result = qword_100170E48;
  if (!qword_100170E48)
  {
    sub_10000459C(&qword_100170E40, &qword_100119AB8);
    sub_1000EA240();
    sub_1000EA350();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100170E48);
  }

  return result;
}

unint64_t sub_1000EA240()
{
  result = qword_100170E50;
  if (!qword_100170E50)
  {
    sub_10000459C(&qword_100170E58, &qword_100119AC0);
    sub_1000EA468(&qword_100170E60, type metadata accessor for AppHeroView, &unk_100110D10);
    sub_1000EA2FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100170E50);
  }

  return result;
}

unint64_t sub_1000EA2FC()
{
  result = qword_100170E68;
  if (!qword_100170E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100170E68);
  }

  return result;
}

unint64_t sub_1000EA350()
{
  result = qword_100170E70;
  if (!qword_100170E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100170E70);
  }

  return result;
}

unint64_t sub_1000EA3A4()
{
  result = qword_100170E80;
  if (!qword_100170E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100170E80);
  }

  return result;
}

uint64_t sub_1000EA3F8()
{

  return _swift_deallocObject(v0, 49, 7);
}

uint64_t sub_1000EA468(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000EA4B4()
{
  result = qword_100170E90;
  if (!qword_100170E90)
  {
    sub_10000459C(&qword_100170E98, &qword_100119AC8);
    sub_10000459C(&qword_100170E30, &qword_100119AA0);
    sub_100012C48(&qword_100170E88, &qword_100170E30, &qword_100119AA0, &protocol conformance descriptor for Button<A>);
    sub_1000EA3A4();
    swift_getOpaqueTypeConformance2();
    sub_10000459C(&qword_100170E18, &qword_100119A88);
    sub_100012C48(&qword_100170E78, &qword_100170E18, &qword_100119A88, &protocol conformance descriptor for ActionButton<A>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100170E90);
  }

  return result;
}

id sub_1000EA638()
{
  result = [v0 metadata];
  if (result)
  {
    v2 = result;
    v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (*(v3 + 16))
    {
      v6 = sub_10006889C(v4, v5);
      v8 = v7;

      if (v8)
      {
        sub_1000076F0(*(v3 + 56) + 32 * v6, v10);

        if (swift_dynamicCast())
        {
          return v9;
        }

        else
        {
          return 0;
        }
      }
    }

    else
    {
    }

    return 0;
  }

  return result;
}

uint64_t sub_1000EA7C8(uint64_t a1)
{
  result = type metadata accessor for ExternalLinkCoordinator.ExternalDestination(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000EA848(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for TipDestinationAction(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000EA908(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for TipDestinationAction(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1000EA9CC(uint64_t a1)
{
  sub_1000B03A8();
  if (v1 <= 0x3F)
  {
    type metadata accessor for TipDestinationAction(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1000EAA5C@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

uint64_t sub_1000EAA7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Tip(0);
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

uint64_t sub_1000EAB4C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Tip(0);
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

uint64_t type metadata accessor for ListTipView(uint64_t a1)
{
  result = qword_100171040;
  if (!qword_100171040)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1000EAC50(uint64_t a1)
{
  result = type metadata accessor for Tip(319);
  if (v2 <= 0x3F)
  {
    result = sub_1000223CC();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000EACF0()
{
  v1 = type metadata accessor for AutomationSemantics();
  v21 = *(v1 - 8);
  v22 = v1;
  __chkstk_darwin(v1);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ListTipView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = sub_100002BE4(&qword_100171078, &unk_100119B90);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v21 - v9;
  sub_1000EBAA4(v0, &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ListTipView);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  sub_1000EB944(&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  v23 = v0;
  sub_100002BE4(&qword_100171080, &unk_100119BA0);
  sub_100012C48(&qword_100171088, &qword_100171080, &unk_100119BA0, &protocol conformance descriptor for HStack<A>);
  Button.init(action:label:)();
  sub_100002BE4(&qword_100169AA0, &qword_10010FFC0);
  v13 = *(type metadata accessor for AutomationUtilities.AutomationAttributeType(0) - 8);
  v14 = *(v13 + 72);
  v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10010FEE0;
  v17 = (v16 + v15);
  *v17 = 1;
  swift_storeEnumTagMultiPayload();
  v18 = (v17 + v14);
  v19 = *(v0 + 24);
  *v18 = *(v0 + 16);
  v18[1] = v19;
  swift_storeEnumTagMultiPayload();

  sub_1000FCC48(192, v16, v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_100012C48(&qword_100171090, &qword_100171078, &unk_100119B90, &protocol conformance descriptor for Button<A>);
  View.automationSemantics(_:)();
  (*(v21 + 8))(v3, v22);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1000EB0FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = static VerticalAlignment.center.getter();
  *(a2 + 8) = 0x4030000000000000;
  *(a2 + 16) = 0;
  v4 = sub_100002BE4(&qword_100171098, &qword_100119BB0);
  return sub_1000EB154(a1, a2 + *(v4 + 44));
}

uint64_t sub_1000EB154@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TipLabelView(0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v50 - v8;
  v54 = type metadata accessor for AutomationSemantics();
  v10 = *(v54 - 8);
  __chkstk_darwin(v54);
  v56 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_100002BE4(&qword_1001710A0, &qword_100119BB8);
  __chkstk_darwin(v59);
  v13 = (&v50 - v12);
  v14 = sub_100002BE4(&qword_1001710A8, &qword_100119BC0);
  v57 = *(v14 - 8);
  v58 = v14;
  __chkstk_darwin(v14);
  v55 = &v50 - v15;
  v16 = sub_100002BE4(&qword_1001710B0, &qword_100119BC8);
  v17 = __chkstk_darwin(v16 - 8);
  v19 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v50 - v20;
  v22 = *(a1 + 56);
  if (v22)
  {
    v50 = *(a1 + 48);
    swift_bridgeObjectRetain_n();
    v23 = Image.init(_:bundle:)();
    v52 = v9;
    v24 = v23;
    v25 = *(sub_100002BE4(&qword_1001710C0, &qword_100119BD8) + 36);
    v53 = a2;
    v26 = v13 + v25;
    static Material.regular.getter();
    v27 = static Edge.Set.all.getter();
    v51 = v10;
    v26[*(sub_100002BE4(&qword_1001710C8, &qword_100119BE0) + 36)] = v27;
    *v13 = v24;
    v28 = (v13 + *(sub_100002BE4(&qword_1001710D0, &qword_100119BE8) + 36));
    v29 = *(type metadata accessor for RoundedRectangle() + 20);
    v30 = enum case for RoundedCornerStyle.continuous(_:);
    v31 = type metadata accessor for RoundedCornerStyle();
    (*(*(v31 - 8) + 104))(&v28->i8[v29], v30, v31);
    *v28 = vdupq_n_s64(0x4040000000000000uLL);
    *(v28->i16 + *(sub_100002BE4(&qword_1001710D8, &unk_100119BF0) + 56)) = 256;
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v32 = (v13 + *(v59 + 36));
    v33 = v61;
    *v32 = v60;
    v32[1] = v33;
    v32[2] = v62;
    sub_100002BE4(&qword_100169AA0, &qword_10010FFC0);
    v34 = *(type metadata accessor for AutomationUtilities.AutomationAttributeType(0) - 8);
    v35 = v19;
    v36 = a1;
    v37 = v7;
    v38 = *(v34 + 72);
    v39 = (*(v34 + 80) + 32) & ~*(v34 + 80);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_10010FEE0;
    v41 = (v40 + v39);
    *v41 = 257;
    swift_storeEnumTagMultiPayload();
    v42 = (v41 + v38);
    v7 = v37;
    a1 = v36;
    v19 = v35;
    *v42 = v50;
    v42[1] = v22;
    swift_storeEnumTagMultiPayload();
    v43 = v56;
    sub_1000FCC48(192, v40, v56);
    swift_setDeallocating();
    v9 = v52;
    swift_arrayDestroy();
    a2 = v53;
    swift_deallocClassInstance();
    sub_1000EBBD0();
    v44 = v55;
    View.automationSemantics(_:)();
    (*(v51 + 8))(v43, v54);
    sub_1000EBDCC(v13);
    v46 = v57;
    v45 = v58;
    (*(v57 + 32))(v21, v44, v58);
    (*(v46 + 56))(v21, 0, 1, v45);
  }

  else
  {
    (*(v57 + 56))(&v50 - v20, 1, 1, v58);
  }

  sub_1000EBAA4(a1, v9, type metadata accessor for Tip);
  sub_1000EBA34(v21, v19);
  sub_1000EBAA4(v9, v7, type metadata accessor for TipLabelView);
  sub_1000EBA34(v19, a2);
  v47 = sub_100002BE4(&qword_1001710B8, &qword_100119BD0);
  sub_1000EBAA4(v7, a2 + *(v47 + 48), type metadata accessor for TipLabelView);
  v48 = a2 + *(v47 + 64);
  *v48 = 0;
  *(v48 + 8) = 0;
  sub_1000EBB0C(v9);
  sub_1000EBB68(v21);
  sub_1000EBB0C(v7);
  return sub_1000EBB68(v19);
}

uint64_t sub_1000EB7B8()
{
  v1 = *(type metadata accessor for ListTipView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = v0 + v3;

  v6 = *(type metadata accessor for Tip(0) + 32);
  type metadata accessor for TipDestinationAction(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_100002BE4(&qword_10016C220, &qword_100112330);
    if (!(*(*(v7 - 8) + 48))(v5 + v6, 7, v7))
    {
      v8 = type metadata accessor for UUID();
      (*(*(v8 - 8) + 8))(v5 + v6, v8);
    }
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000EB944(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ListTipView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000EB9A8()
{
  v1 = type metadata accessor for ListTipView(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = *(v2 + *(v1 + 20));
  v4 = type metadata accessor for Tip(0);
  return v3(v2 + *(v4 + 32));
}

uint64_t sub_1000EBA34(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&qword_1001710B0, &qword_100119BC8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000EBAA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000EBB0C(uint64_t a1)
{
  v2 = type metadata accessor for TipLabelView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000EBB68(uint64_t a1)
{
  v2 = sub_100002BE4(&qword_1001710B0, &qword_100119BC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000EBBD0()
{
  result = qword_1001710E0;
  if (!qword_1001710E0)
  {
    sub_10000459C(&qword_1001710A0, &qword_100119BB8);
    sub_1000EBC5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001710E0);
  }

  return result;
}

unint64_t sub_1000EBC5C()
{
  result = qword_1001710E8;
  if (!qword_1001710E8)
  {
    sub_10000459C(&qword_1001710D0, &qword_100119BE8);
    sub_1000EBD14();
    sub_100012C48(&qword_100171100, &qword_1001710D8, &unk_100119BF0, &protocol conformance descriptor for _InsettableBackgroundShapeModifier<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001710E8);
  }

  return result;
}

unint64_t sub_1000EBD14()
{
  result = qword_1001710F0;
  if (!qword_1001710F0)
  {
    sub_10000459C(&qword_1001710C0, &qword_100119BD8);
    sub_100012C48(&qword_1001710F8, &qword_1001710C8, &qword_100119BE0, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001710F0);
  }

  return result;
}

uint64_t sub_1000EBDCC(uint64_t a1)
{
  v2 = sub_100002BE4(&qword_1001710A0, &qword_100119BB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000EBE34()
{
  sub_10000459C(&qword_100171078, &unk_100119B90);
  sub_100012C48(&qword_100171090, &qword_100171078, &unk_100119B90, &protocol conformance descriptor for Button<A>);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000EBECC(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1000EBEEC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 336))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1000EBF48(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 328) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 336) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 336) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t sub_1000EC004(uint64_t a1)
{
  v3 = sub_1000EC524(*(v1 + 24), *(v1 + 32));
  if (v3[2] && (v4 = sub_10006899C(a1), (v5 & 1) != 0))
  {
    v6 = *(v3[7] + 8 * v4);

    return v6;
  }

  else
  {

    return static Color.clear.getter();
  }
}

unint64_t sub_1000EC084()
{
  v1 = *v0;
  v2 = 0x6E6F6349707061;
  if (v1 != 4)
  {
    v2 = 0x70796C476F676F6CLL;
  }

  if (v1 == 3)
  {
    v2 = 0xD000000000000015;
  }

  v3 = 0xD000000000000017;
  v4 = 0xD000000000000010;
  if (v1 != 1)
  {
    v4 = 0xD000000000000017;
  }

  if (*v0)
  {
    v3 = v4;
  }

  if (*v0 <= 2u)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1000EC154@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000EDCC4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000EC17C(uint64_t a1)
{
  v2 = sub_1000ED728();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000EC1B8(uint64_t a1)
{
  v2 = sub_1000ED728();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_1000EC1F4@<X0>(void *a1@<X8>, void *a2@<X0>)
{
  result = sub_1000ECF44(a2, v5);
  if (!v2)
  {
    return memcpy(a1, v5, 0x150uLL);
  }

  return result;
}

uint64_t sub_1000EC240()
{
  v1 = *v0;
  v2 = 0x6874646977;
  v3 = 0x726F6C6F43656F6ALL;
  v4 = 0xD000000000000014;
  if (v1 != 4)
  {
    v4 = 7107189;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x746867696568;
  if (v1 != 1)
  {
    v5 = 860910441;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000EC2E8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000EE21C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000EC310(uint64_t a1)
{
  v2 = sub_1000EDF28();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000EC34C(uint64_t a1)
{
  v2 = sub_1000EDF28();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1000EC388@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1000ECC54(a2, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a1 = v7[0];
    a1[1] = v5;
    result = *&v8;
    v6 = v9;
    a1[2] = v8;
    a1[3] = v6;
  }

  return result;
}

unint64_t sub_1000EC3CC()
{
  v1 = 0x6874646977;
  v2 = 0xD000000000000014;
  if (*v0 != 2)
  {
    v2 = 7107189;
  }

  if (*v0)
  {
    v1 = 0x746867696568;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1000EC43C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000EE418(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000EC464(uint64_t a1)
{
  v2 = sub_1000EDED4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000EC4A0(uint64_t a1)
{
  v2 = sub_1000EDED4();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1000EC4DC@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1000EDAB4(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

void *sub_1000EC524(uint64_t a1, uint64_t a2)
{
  v72 = type metadata accessor for Color.RGBColorSpace();
  v2 = *(v72 - 8);
  __chkstk_darwin(v72);
  v71 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for RawColor();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v80 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_100002BE4(&qword_100171190, &unk_10011A140);
  v7 = __chkstk_darwin(v79);
  v82 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v69 = &v60 - v10;
  v11 = __chkstk_darwin(v9);
  v83 = &v60 - v12;
  __chkstk_darwin(v11);
  v68 = &v60 - v13;
  v14 = static RegexUtilities.extractJoeColors(from:)();
  v15 = sub_10000BC78(_swiftEmptyArrayStorage);
  v16 = 0;
  v18 = v14 + 64;
  v17 = *(v14 + 64);
  v73 = v14;
  v19 = 1 << *(v14 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v17;
  v22 = (v19 + 63) >> 6;
  v67 = v5 + 16;
  v66 = v5 + 32;
  v65 = enum case for Color.RGBColorSpace.sRGB(_:);
  v64 = (v2 + 104);
  v70 = v5;
  v61 = v14 + 64;
  v60 = v22;
  v63 = v4;
  v62 = (v5 + 8);
  while (v21)
  {
    v26 = v4;
    v78 = v15;
LABEL_12:
    v28 = __clz(__rbit64(v21)) | (v16 << 6);
    v29 = v73;
    v30 = *(v73 + 48);
    v31 = type metadata accessor for JoeColorType();
    v81 = *(v31 - 8);
    v75 = *(v81 + 72);
    v32 = v68;
    v76 = *(v81 + 16);
    v74 = v81 + 16;
    v76(v68, v30 + v75 * v28, v31);
    v33 = v70;
    v34 = *(v29 + 56) + *(v70 + 72) * v28;
    v35 = v79;
    v36 = *(v79 + 48);
    (*(v70 + 16))(&v32[v36], v34, v26);
    v77 = *(v35 + 48);
    v37 = v81;
    v38 = v83;
    (*(v81 + 32))(v83, v32, v31);
    v39 = *(v33 + 32);
    v39(v77 + v38, &v32[v36], v26);
    v40 = v69;
    sub_1000EE57C(v38, v69);
    v39(v80, (v40 + *(v35 + 48)), v26);
    v41 = *(v37 + 8);
    v81 = v31;
    v41(v40, v31);
    RawColor.redValue.getter();
    RawColor.greenValue.getter();
    RawColor.blueValue.getter();
    (*v64)(v71, v65, v72);
    v42 = Color.init(_:red:green:blue:opacity:)();
    v43 = v82;
    sub_1000EE57C(v83, v82);

    v44 = v78;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v84 = v44;
    v47 = sub_10006899C(v43);
    v48 = v44[2];
    v49 = (v46 & 1) == 0;
    v50 = v48 + v49;
    if (__OFADD__(v48, v49))
    {
      goto LABEL_25;
    }

    v51 = v46;
    v52 = v44[3];
    v77 = v41;
    if (v52 >= v50)
    {
      v55 = v62;
      if (isUniquelyReferenced_nonNull_native)
      {
        v15 = v84;
        if (v46)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_10004EFE4();
        v15 = v84;
        if (v51)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_10004DA2C(v50, isUniquelyReferenced_nonNull_native);
      v53 = sub_10006899C(v82);
      v55 = v62;
      if ((v51 & 1) != (v54 & 1))
      {
        goto LABEL_27;
      }

      v47 = v53;
      v15 = v84;
      if (v51)
      {
LABEL_4:
        *(v15[7] + 8 * v47) = v42;

        v23 = *v55;
        v4 = v63;
        (*v55)(v80, v63);
        sub_100009908(v83, &qword_100171190, &unk_10011A140);
        goto LABEL_5;
      }
    }

    v15[(v47 >> 6) + 8] |= 1 << v47;
    v76((v15[6] + v47 * v75), v82, v81);
    *(v15[7] + 8 * v47) = v42;

    v23 = *v55;
    v4 = v63;
    (*v55)(v80, v63);
    sub_100009908(v83, &qword_100171190, &unk_10011A140);
    v56 = v15[2];
    v57 = __OFADD__(v56, 1);
    v58 = v56 + 1;
    if (v57)
    {
      goto LABEL_26;
    }

    v15[2] = v58;
LABEL_5:
    v21 &= v21 - 1;
    v24 = *(v79 + 48);
    v25 = v82;
    v77(v82, v81);
    v23((v25 + v24), v4);
    v18 = v61;
    v22 = v60;
  }

  while (1)
  {
    v27 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v27 >= v22)
    {

      return v15;
    }

    v21 = *(v18 + 8 * v27);
    ++v16;
    if (v21)
    {
      v26 = v4;
      v78 = v15;
      v16 = v27;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1000ECC54@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_100002BE4(&qword_100171150, &qword_100119F28);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v27 - v7;
  sub_10000524C(a1, a1[3]);
  sub_1000EDF28();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_1000052E4(a1);
  }

  LOBYTE(v34[0]) = 0;
  KeyedDecodingContainer.decode(_:forKey:)();
  v10 = v9;
  LOBYTE(v34[0]) = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  v12 = v11;
  LOBYTE(v34[0]) = 2;
  v13 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v34[0]) = 3;
  v14 = KeyedDecodingContainer.decode(_:forKey:)();
  v16 = v15;
  v29 = v14;
  LOBYTE(v34[0]) = 4;
  v41 = KeyedDecodingContainer.decode(_:forKey:)();
  v42 = 5;
  v17 = KeyedDecodingContainer.decode(_:forKey:)();
  v28 = v13 & 1;
  v18 = v41 & 1;
  v19 = v8;
  v21 = v20;
  (*(v6 + 8))(v19, v5);
  *&v30 = v10;
  *(&v30 + 1) = v12;
  v22 = v28;
  LOBYTE(v31) = v28;
  v23 = v29;
  *(&v31 + 1) = v29;
  *&v32 = v16;
  BYTE8(v32) = v18;
  *&v33 = v17;
  *(&v33 + 1) = v21;
  sub_1000EDF7C(&v30, v34);
  sub_1000052E4(a1);
  v34[0] = v10;
  v34[1] = v12;
  v35 = v22;
  v36 = v23;
  v37 = v16;
  v38 = v18;
  v39 = v17;
  v40 = v21;
  result = sub_1000EDFB4(v34);
  v25 = v31;
  *a2 = v30;
  a2[1] = v25;
  v26 = v33;
  a2[2] = v32;
  a2[3] = v26;
  return result;
}

uint64_t sub_1000ECF44@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  *&v66 = sub_100002BE4(&qword_100171108, &unk_100119D28);
  v4 = *(v66 - 8);
  __chkstk_darwin(v66);
  v6 = &v39 - v5;
  v7 = a1[3];
  v112 = a1;
  sub_10000524C(a1, v7);
  sub_1000ED728();
  v8 = v6;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    v110 = 0u;
    v111 = 0u;
    v108 = 0u;
    v109 = 0u;
    v106 = 0u;
    v107 = 0u;
    v104 = 0u;
    v105 = 0u;
    v102 = 0u;
    v103 = 0u;
    v100 = 0u;
    v101 = 0u;
    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    v92 = 0u;
    v93 = 0u;
    v91 = 0u;
    sub_1000ED77C(&v91);
    return sub_1000052E4(v112);
  }

  else
  {
    *&v64 = v4;
    v9 = v65;
    v84[0] = 4;
    sub_1000ED7AC();
    v10 = v66;
    v11 = v8;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v62 = v85;
    v12 = *(&v86 + 1);
    v63 = v86;
    v13 = v87;
    v84[0] = 5;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v61 = v12;
    v14 = v85;
    v59 = v13;
    v60 = *(&v86 + 1);
    v57 = v86;
    v58 = v87;
    v84[79] = 0;
    v15 = sub_1000ED800();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v56 = v14;
    v16 = v85;
    v52 = v86;
    v55 = v88;
    v51 = v89;
    v53 = v87;
    v54 = v90;
    memset(v84, 0, 64);
    sub_100009908(v84, &qword_10016EB30, &qword_1001157E0);
    v78[79] = 1;
    *&v50 = v15;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v49 = v16;
    v18 = v79;
    v17 = v80;
    v46 = v81;
    v47 = v82;
    v48 = v83;
    memset(v78, 0, 64);
    sub_100009908(v78, &qword_10016EB30, &qword_1001157E0);
    v72[79] = 2;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v44 = v18;
    v45 = v17;
    v40 = v73;
    v41 = v74;
    v42 = v75;
    v19 = v77;
    v43 = v76;
    memset(v72, 0, 64);
    sub_100009908(v72, &qword_10016EB30, &qword_1001157E0);
    v67 = 3;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v20 = v61;
    v21 = v54;
    (*(v64 + 8))(v11, v10);
    v93 = 0u;
    v94 = 0u;
    v91 = 0u;
    v92 = 0u;
    v66 = v68;
    v50 = v69;
    v64 = v70;
    v39 = v71;
    sub_100009908(&v91, &qword_10016EB30, &qword_1001157E0);
    result = sub_1000052E4(v112);
    v23 = *(&v49 + 1);
    *v9 = v49;
    *(v9 + 8) = v23;
    v24 = *(&v52 + 1);
    *(v9 + 16) = v52;
    *(v9 + 24) = v24;
    v25 = v55;
    *(v9 + 32) = v53;
    *(v9 + 40) = v25;
    *(v9 + 48) = v51;
    *(v9 + 56) = v21;
    v26 = v45;
    *(v9 + 64) = v44;
    *(v9 + 72) = v26;
    v27 = *(&v46 + 1);
    *(v9 + 80) = v46;
    *(v9 + 88) = v27;
    v28 = *(&v47 + 1);
    *(v9 + 96) = v47;
    *(v9 + 104) = v28;
    v29 = *(&v48 + 1);
    *(v9 + 112) = v48;
    *(v9 + 120) = v29;
    v30 = *(&v40 + 1);
    *(v9 + 128) = v40;
    *(v9 + 136) = v30;
    v31 = *(&v41 + 1);
    *(v9 + 144) = v41;
    *(v9 + 152) = v31;
    v32 = *(&v42 + 1);
    *(v9 + 160) = v42;
    *(v9 + 168) = v32;
    *(v9 + 176) = v43;
    *(v9 + 184) = v19;
    v33 = v50;
    *(v9 + 192) = v66;
    *(v9 + 208) = v33;
    v34 = v39;
    *(v9 + 224) = v64;
    *(v9 + 240) = v34;
    v35 = *(&v62 + 1);
    *(v9 + 256) = v62;
    *(v9 + 264) = v35;
    *(v9 + 272) = v63;
    *(v9 + 280) = v20;
    v36 = v56;
    *(v9 + 288) = v59;
    *(v9 + 296) = v36;
    v37 = v57;
    *(v9 + 304) = *(&v36 + 1);
    *(v9 + 312) = v37;
    v38 = v58;
    *(v9 + 320) = v60;
    *(v9 + 328) = v38;
  }

  return result;
}

unint64_t sub_1000ED728()
{
  result = qword_100171110;
  if (!qword_100171110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100171110);
  }

  return result;
}

unint64_t sub_1000ED7AC()
{
  result = qword_100171118;
  if (!qword_100171118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100171118);
  }

  return result;
}

unint64_t sub_1000ED800()
{
  result = qword_100171120;
  if (!qword_100171120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100171120);
  }

  return result;
}

uint64_t sub_1000ED864(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000ED8AC(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_1000ED904(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000ED94C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000ED9B0()
{
  result = qword_100171128;
  if (!qword_100171128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100171128);
  }

  return result;
}

unint64_t sub_1000EDA08()
{
  result = qword_100171130;
  if (!qword_100171130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100171130);
  }

  return result;
}

unint64_t sub_1000EDA60()
{
  result = qword_100171138;
  if (!qword_100171138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100171138);
  }

  return result;
}

uint64_t sub_1000EDAB4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100002BE4(&qword_100171140, &qword_100119F20);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - v7;
  sub_10000524C(a1, a1[3]);
  sub_1000EDED4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_1000052E4(a1);
  }

  v22 = 0;
  KeyedDecodingContainer.decode(_:forKey:)();
  v10 = v9;
  v21 = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  v12 = v11;
  v20 = 2;
  v13 = KeyedDecodingContainer.decode(_:forKey:)();
  v19 = 3;
  v14 = KeyedDecodingContainer.decode(_:forKey:)();
  v16 = v15;
  (*(v6 + 8))(v8, v5);
  result = sub_1000052E4(a1);
  *a2 = v10;
  *(a2 + 8) = v12;
  *(a2 + 16) = v13 & 1;
  *(a2 + 24) = v14;
  *(a2 + 32) = v16;
  return result;
}

uint64_t sub_1000EDCC4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000017 && 0x80000001001201C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001001201E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000100120200 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000100120220 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F6349707061 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x70796C476F676F6CLL && a2 == 0xE900000000000068)
  {

    return 5;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

unint64_t sub_1000EDED4()
{
  result = qword_100171148;
  if (!qword_100171148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100171148);
  }

  return result;
}

unint64_t sub_1000EDF28()
{
  result = qword_100171158;
  if (!qword_100171158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100171158);
  }

  return result;
}

unint64_t sub_1000EE010()
{
  result = qword_100171160;
  if (!qword_100171160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100171160);
  }

  return result;
}

unint64_t sub_1000EE068()
{
  result = qword_100171168;
  if (!qword_100171168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100171168);
  }

  return result;
}

unint64_t sub_1000EE0C0()
{
  result = qword_100171170;
  if (!qword_100171170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100171170);
  }

  return result;
}

unint64_t sub_1000EE118()
{
  result = qword_100171178;
  if (!qword_100171178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100171178);
  }

  return result;
}

unint64_t sub_1000EE170()
{
  result = qword_100171180;
  if (!qword_100171180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100171180);
  }

  return result;
}

unint64_t sub_1000EE1C8()
{
  result = qword_100171188;
  if (!qword_100171188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100171188);
  }

  return result;
}

uint64_t sub_1000EE21C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6874646977 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746867696568 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 860910441 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x726F6C6F43656F6ALL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000100120240 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1000EE418(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6874646977 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746867696568 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000100120240 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1000EE57C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&qword_100171190, &unk_10011A140);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000EE5F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100002BE4(&unk_10016F2B0, &qword_10010F6F0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_1000F2450(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100009908(v11, &unk_10016F2B0, &qword_10010F6F0);
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

      sub_100009908(a3, &unk_10016F2B0, &qword_10010F6F0);

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

  sub_100009908(a3, &unk_10016F2B0, &qword_10010F6F0);
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

uint64_t sub_1000EE8E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100002BE4(&unk_10016F2B0, &qword_10010F6F0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_1000F2450(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100009908(v11, &unk_10016F2B0, &qword_10010F6F0);
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

      sub_100002BE4(&qword_10016F030, &qword_10011A2D0);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_100009908(a3, &unk_10016F2B0, &qword_10010F6F0);

      return v22;
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

  sub_100009908(a3, &unk_10016F2B0, &qword_10010F6F0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_100002BE4(&qword_10016F030, &qword_10011A2D0);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

void sub_1000EEBEC(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000F25B0(&qword_10016E910, type metadata accessor for AppState, &unk_10011A824);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 16);
}

void *sub_1000EECBC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100002BE4(&qword_100170710, &qword_10011A170);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v18 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v18 - v6;
  type metadata accessor for AppDelegate(0);
  sub_1000F25B0(&qword_10016A710, type metadata accessor for AppDelegate, &unk_10011A410);
  UIApplicationDelegateAdaptor<>.init(_:)();
  v8 = type metadata accessor for TetsuoApp(0);
  v9 = a1 + *(v8 + 20);
  v10 = [objc_opt_self() standardUserDefaults];
  static UserDefaultUtilities.SharedConstants.privacyViewVersion.getter();
  v11 = String._bridgeToObjectiveC()();

  v12 = [v10 integerForKey:v11];

  LOBYTE(v19) = v12 < static BundleIdentifierConstants.currentPrivacyVersion.getter();
  State.init(wrappedValue:)();
  v13 = v21;
  *v9 = v20;
  *(v9 + 8) = v13;
  v20 = 0xD000000000000013;
  v21 = 0x800000010011FAA0;
  if (qword_100168FB0 != -1)
  {
    swift_once();
  }

  type metadata accessor for FlowAction(0);
  sub_1000F25B0(&qword_100170288, type metadata accessor for FlowAction, &unk_100118494);
  sub_1000F25B0(&qword_100170740, type metadata accessor for FlowAction, &unk_10011840C);

  FlowAuthority.init(initialTabSelection:tabContent:)();
  (*(v3 + 16))(v18, v7, v2);
  State.init(wrappedValue:)();
  (*(v3 + 8))(v7, v2);
  v14 = (a1 + *(v8 + 28));
  type metadata accessor for AppState(0);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  ObservationRegistrar.init()();
  v19 = v15;
  result = State.init(wrappedValue:)();
  v17 = v21;
  *v14 = v20;
  v14[1] = v17;
  return result;
}

uint64_t sub_1000EF030@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = type metadata accessor for TetsuoApp(0);
  v40 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = v4;
  v6 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100002BE4(&qword_1001712E8, &unk_10011A240);
  __chkstk_darwin(v7);
  v9 = &v38 - v8;
  sub_1000EF508(a1, &v38 - v8);
  v10 = *(v7 + 36);
  if (qword_100168F30 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for ColorScheme();
  v12 = sub_100006B0C(v11, qword_100182180);
  v13 = *(v11 - 8);
  (*(v13 + 16))(&v9[v10], v12, v11);
  (*(v13 + 56))(&v9[v10], 0, 1, v11);
  v14 = (a1 + *(v3 + 20));
  v15 = *v14;
  v16 = *(v14 + 1);
  v45 = v15;
  v46 = v16;
  sub_100002BE4(&qword_10016A0A0, &unk_10010ECB0);
  State.projectedValue.getter();
  sub_1000F1B64(a1, v6);
  v38 = a1;
  v40 = (*(v40 + 80) + 16) & ~*(v40 + 80);
  v17 = v40;
  v41 = v5;
  v18 = swift_allocObject();
  sub_1000F1BCC(v6, v18 + v17);
  sub_100002BE4(&qword_1001712F0, &qword_10011A250);
  v39 = v6;
  sub_1000F1D6C();
  v19 = sub_10001E6A8();
  v43 = &type metadata for PrivacyView;
  v44 = v19;
  swift_getOpaqueTypeConformance2();
  v20 = v42;
  View.sheet<A>(isPresented:onDismiss:content:)();

  sub_1000F1FE4(v9);
  v21 = (v20 + *(sub_100002BE4(&qword_100171338, &qword_10011A270) + 36));
  *v21 = sub_1000EFD30;
  v21[1] = 0;
  v21[2] = 0;
  v21[3] = 0;
  sub_100002BE4(&qword_1001711A0, &qword_10011A150);
  v22 = v38;
  v23 = UIApplicationDelegateAdaptor.wrappedValue.getter();
  v24 = *&v23[OBJC_IVAR____TtC17AppleVisionProApp11AppDelegate_deviceProvider];

  v25 = v20 + *(sub_100002BE4(&qword_100171340, &qword_10011A288) + 36);
  v26 = enum case for ScenePhase.active(_:);
  v27 = type metadata accessor for ScenePhase();
  (*(*(v27 - 8) + 104))(v25, v26, v27);
  v28 = (v25 + *(type metadata accessor for ScenePhaseViewModifier(0) + 20));
  *v28 = &unk_10011A280;
  v28[1] = v24;
  v29 = [objc_opt_self() defaultCenter];
  v30 = static NSNotificationName.applicationRecievedPushNotification.getter();
  v31 = sub_100002BE4(&qword_100171270, &qword_10011A1C8);
  NSNotificationCenter.publisher(for:object:)();

  v32 = v22;
  v33 = v39;
  sub_1000F1B64(v32, v39);
  v34 = v40;
  v35 = swift_allocObject();
  result = sub_1000F1BCC(v33, v35 + v34);
  v37 = (v20 + *(v31 + 56));
  *v37 = sub_1000F20DC;
  v37[1] = v35;
  return result;
}

uint64_t sub_1000EF508@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TetsuoAppMainView(0);
  __chkstk_darwin(v4);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_100002BE4(&qword_100171348, &qword_10011A2B0);
  v7 = *(v37 - 8);
  __chkstk_darwin(v37);
  v9 = &v35 - v8;
  v10 = sub_100002BE4(&qword_100171350, &qword_10011A2B8);
  __chkstk_darwin(v10);
  v12 = &v35 - v11;
  v13 = type metadata accessor for TetsuoApp(0);
  v14 = (a1 + *(v13 + 20));
  v15 = *v14;
  v16 = *(v14 + 1);
  LOBYTE(v38) = v15;
  v39 = v16;
  sub_100002BE4(&qword_10016A0A0, &unk_10010ECB0);
  State.wrappedValue.getter();
  if (v42 == 1)
  {
    swift_storeEnumTagMultiPayload();
    v17 = type metadata accessor for AppState(255);
    v18 = sub_1000F25B0(&qword_100171320, type metadata accessor for TetsuoAppMainView, &unk_100115420);
    v19 = sub_1000F25B0(&qword_10016E910, type metadata accessor for AppState, &unk_10011A824);
    v38 = v4;
    v39 = v17;
    v40 = v18;
    v41 = v19;
    swift_getOpaqueTypeConformance2();
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v36 = v7;
    sub_100002BE4(&qword_1001711A8, &qword_10011A158);
    State.projectedValue.getter();
    type metadata accessor for AppDelegate(0);
    sub_1000F25B0(&qword_10016A710, type metadata accessor for AppDelegate, &unk_10011A410);
    *v6 = EnvironmentObject.init()();
    *(v6 + 1) = v21;
    type metadata accessor for SceneDelegate();
    sub_1000F25B0(&qword_10016D538, type metadata accessor for SceneDelegate, &unk_100119300);
    *(v6 + 2) = EnvironmentObject.init()();
    *(v6 + 3) = v22;
    v23 = type metadata accessor for AppState(0);
    v24 = sub_1000F25B0(&qword_10016E910, type metadata accessor for AppState, &unk_10011A824);
    v35 = a2;
    v25 = v24;
    *(v6 + 4) = Environment.init<A>(_:)();
    v6[40] = v26 & 1;
    v27 = &v6[*(v4 + 32)];
    LOBYTE(v42) = 0;
    State.init(wrappedValue:)();
    v28 = v39;
    *v27 = v38;
    *(v27 + 1) = v28;
    v29 = (a1 + *(v13 + 28));
    v31 = *v29;
    v30 = v29[1];
    v38 = v31;
    v39 = v30;
    sub_100002BE4(&qword_1001712E0, &qword_10011A210);
    State.wrappedValue.getter();
    v32 = sub_1000F25B0(&qword_100171320, type metadata accessor for TetsuoAppMainView, &unk_100115420);
    View.environment<A>(_:)();

    sub_1000F25F8(v6);
    v34 = v36;
    v33 = v37;
    (*(v36 + 16))(v12, v9, v37);
    swift_storeEnumTagMultiPayload();
    v38 = v4;
    v39 = v23;
    v40 = v32;
    v41 = v25;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v34 + 8))(v9, v33);
  }
}

double sub_1000EFA34(uint64_t a1)
{
  v2 = type metadata accessor for TetsuoApp(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  sub_1000F1B64(a1, v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_1000F1BCC(v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  v8[0] = sub_1000F22D0;
  v8[1] = v6;
  sub_10001E6A8();
  View.interactiveDismissDisabled(_:)();

  return result;
}

double sub_1000EFB58(uint64_t a1)
{
  v2 = sub_100002BE4(&unk_10016F2B0, &qword_10010F6F0);
  __chkstk_darwin(v2 - 8);
  v4 = &v15[-v3];
  sub_100002BE4(&qword_1001711A0, &qword_10011A150);
  v5 = UIApplicationDelegateAdaptor.wrappedValue.getter();
  v6 = [objc_opt_self() currentNotificationCenter];
  [v6 setDelegate:v5];

  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  type metadata accessor for MainActor();
  v8 = v5;
  v9 = static MainActor.shared.getter();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = &protocol witness table for MainActor;
  v10[4] = v8;
  sub_1000EE5F8(0, 0, v4, &unk_10011A290, v10);

  v11 = (a1 + *(type metadata accessor for TetsuoApp(0) + 20));
  v12 = *v11;
  v13 = *(v11 + 1);
  v15[16] = v12;
  v16 = v13;
  v15[15] = 0;
  sub_100002BE4(&qword_10016A0A0, &unk_10010ECB0);
  State.wrappedValue.setter();
  return result;
}

void sub_1000EFD30()
{
  v0 = [objc_opt_self() standardUserDefaults];
  static UserDefaultUtilities.SharedConstants.clearURLCacheOnLaunch.getter();
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 BOOLForKey:v1];

  if (v2)
  {
    v3 = [objc_opt_self() sharedURLCache];
    [v3 removeAllCachedResponses];
  }
}

uint64_t sub_1000EFE14()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000FA04;

  return sub_1000866E0();
}

uint64_t sub_1000EFEA4(uint64_t a1, uint64_t a2)
{
  v3 = sub_100002BE4(&unk_100170700, &unk_1001153F0);
  __chkstk_darwin(v3 - 8);
  v5 = (v22 - v4);
  started = type metadata accessor for JetStartUpCoordinator();
  v7 = *(started - 8);
  __chkstk_darwin(started);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100168E28 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100006B0C(v10, qword_100181FA0);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v24[0] = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_100006B44(0x70416F7573746554, 0xE900000000000070, v24);
    _os_log_impl(&_mh_execute_header, v11, v12, "%s Notification will push to the Discover tab.", v13, 0xCu);
    sub_1000052E4(v14);
  }

  v15 = (a2 + *(type metadata accessor for TetsuoApp(0) + 28));
  v17 = *v15;
  v16 = v15[1];
  v24[0] = v17;
  v24[1] = v16;
  sub_100002BE4(&qword_1001712E0, &qword_10011A210);
  State.wrappedValue.getter();
  v18 = v23;
  if (*(v23 + 16))
  {
    KeyPath = swift_getKeyPath();
    v22[1] = v22;
    __chkstk_darwin(KeyPath);
    v22[-2] = v18;
    LOBYTE(v22[-1]) = 0;
    v24[0] = v18;
    sub_1000F25B0(&qword_10016E910, type metadata accessor for AppState, &unk_10011A824);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  sub_100002BE4(&qword_1001711A0, &qword_10011A150);
  v20 = UIApplicationDelegateAdaptor.wrappedValue.getter();
  sub_100002BE4(&qword_1001711A8, &qword_10011A158);
  State.projectedValue.getter();
  sub_1000F4BD8(v5, v9);

  sub_100009908(v5, &unk_100170700, &unk_1001153F0);
  JetStartUpCoordinator.restart()();
  return (*(v7 + 8))(v9, started);
}

uint64_t sub_1000F028C@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v18 = sub_100002BE4(&qword_100171298, &qword_10011A1D8);
  __chkstk_darwin(v18);
  v3 = &v16 - v2;
  v17 = sub_100002BE4(&qword_1001712A0, &qword_10011A1E0);
  v4 = *(v17 - 8);
  __chkstk_darwin(v17);
  v6 = &v16 - v5;
  v7 = type metadata accessor for CommandGroupPlacement();
  __chkstk_darwin(v7 - 8);
  v8 = sub_100002BE4(&qword_1001712A8, &qword_10011A1E8);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - v10;
  static CommandGroupPlacement.toolbar.getter();
  v20 = v1;
  sub_100002BE4(&qword_1001712B0, &qword_10011A1F0);
  sub_100012C48(&qword_1001712B8, &qword_1001712B0, &qword_10011A1F0, &protocol conformance descriptor for TupleView<A>);
  CommandGroup.init(replacing:addition:)();
  static CommandGroupPlacement.help.getter();
  sub_100002BE4(&qword_1001712C0, &qword_10011A1F8);
  sub_100012C48(&qword_1001712C8, &qword_1001712C0, &qword_10011A1F8, &protocol conformance descriptor for Link<A>);
  CommandGroup.init(replacing:addition:)();
  v12 = *(v18 + 48);
  (*(v9 + 16))(v3, v11, v8);
  v13 = &v3[v12];
  v14 = v17;
  (*(v4 + 16))(v13, v6, v17);
  TupleCommandContent.init(_:)();
  (*(v4 + 8))(v6, v14);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1000F05F4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v56 = a2;
  v59 = type metadata accessor for KeyEquivalent();
  v61 = *(v59 - 8);
  v3 = __chkstk_darwin(v59);
  v55 = v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v46 = v45 - v5;
  v6 = type metadata accessor for TetsuoApp(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v58 = sub_100002BE4(&qword_10016A088, &unk_100116A60);
  v60 = *(v58 - 8);
  v9 = __chkstk_darwin(v58);
  v51 = v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = v45 - v11;
  v13 = sub_100002BE4(&qword_1001712D0, &qword_10011A200);
  v54 = *(v13 - 8);
  v14 = __chkstk_darwin(v13);
  v53 = v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v52 = v45 - v17;
  v18 = __chkstk_darwin(v16);
  v50 = v45 - v19;
  __chkstk_darwin(v18);
  v57 = v45 - v20;
  LocalizedStringKey.init(stringLiteral:)();
  v49 = a1;
  sub_1000F1B64(a1, v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v47 = v8;
  v22 = swift_allocObject();
  v48 = v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000F1BCC(v48, v22 + v21);
  v23 = v46;
  Button<>.init(_:action:)();
  KeyEquivalent.init(extendedGraphemeClusterLiteral:)();
  v24 = static EventModifiers.command.getter();
  EventModifiers.init(rawValue:)();
  EventModifiers.init(rawValue:)();
  if (EventModifiers.init(rawValue:)() != v24)
  {
    EventModifiers.init(rawValue:)();
  }

  v25 = sub_100012C48(&qword_10016A098, &qword_10016A088, &unk_100116A60, &protocol conformance descriptor for Button<A>);
  v26 = v58;
  v45[1] = v25;
  View.keyboardShortcut(_:modifiers:)();
  v27 = *(v61 + 8);
  v61 += 8;
  v27(v23, v59);
  v28 = *(v60 + 8);
  v60 += 8;
  v28(v12, v26);
  LocalizedStringKey.init(stringLiteral:)();
  v29 = v48;
  sub_1000F1B64(v49, v48);
  v30 = swift_allocObject();
  sub_1000F1BCC(v29, v30 + v21);
  v31 = v51;
  Button<>.init(_:action:)();
  v32 = v55;
  KeyEquivalent.init(extendedGraphemeClusterLiteral:)();
  v33 = static EventModifiers.command.getter();
  EventModifiers.init(rawValue:)();
  EventModifiers.init(rawValue:)();
  if (EventModifiers.init(rawValue:)() != v33)
  {
    EventModifiers.init(rawValue:)();
  }

  v34 = v50;
  v35 = v58;
  View.keyboardShortcut(_:modifiers:)();
  v27(v32, v59);
  v28(v31, v35);
  v36 = v54;
  v37 = *(v54 + 16);
  v38 = v52;
  v39 = v57;
  v37(v52, v57, v13);
  v40 = v53;
  v37(v53, v34, v13);
  v41 = v56;
  v37(v56, v38, v13);
  v42 = sub_100002BE4(&qword_1001712D8, &qword_10011A208);
  v37(&v41[*(v42 + 48)], v40, v13);
  v43 = *(v36 + 8);
  v43(v34, v13);
  v43(v39, v13);
  v43(v40, v13);
  return (v43)(v38, v13);
}

double sub_1000F0C78(uint64_t a1)
{
  if (qword_100168E28 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006B0C(v1, qword_100181FA0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Selected Discover tab via menu item", v4, 2u);
  }

  type metadata accessor for TetsuoApp(0);
  sub_100002BE4(&qword_1001712E0, &qword_10011A210);
  State.wrappedValue.getter();
  if (*(v7 + 16))
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000F25B0(&qword_10016E910, type metadata accessor for AppState, &unk_10011A824);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

double sub_1000F0E80(uint64_t a1)
{
  if (qword_100168E28 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006B0C(v1, qword_100181FA0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Selected Device tab via menu item", v4, 2u);
  }

  type metadata accessor for TetsuoApp(0);
  sub_100002BE4(&qword_1001712E0, &qword_10011A210);
  State.wrappedValue.getter();
  if (*(v7 + 16) != 1)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000F25B0(&qword_10016E910, type metadata accessor for AppState, &unk_10011A824);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_1000F1090()
{
  v0 = sub_100002BE4(&qword_10016BA40, &qword_100110FC0);
  __chkstk_darwin(v0 - 8);
  v2 = &v11 - v1;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v11 - v8;
  URL.init(string:)();
  result = (*(v4 + 48))(v2, 1, v3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v4 + 32))(v9, v2, v3);
    LocalizedStringKey.init(stringLiteral:)();
    (*(v4 + 16))(v7, v9, v3);
    Link<>.init(_:destination:)();
    return (*(v4 + 8))(v9, v3);
  }

  return result;
}

uint64_t sub_1000F12A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v24 = a2;
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  v6 = sub_100002BE4(&qword_100171260, &qword_10011A1B8);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - v8;
  v10 = sub_100002BE4(&qword_100171268, &qword_10011A1C0);
  v11 = *(v10 - 8);
  v22 = v10;
  v23 = v11;
  __chkstk_darwin(v10);
  v13 = &v21 - v12;
  sub_1000F1B64(v3, &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v15 = swift_allocObject();
  sub_1000F1BCC(&v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  sub_100002BE4(&qword_100171270, &qword_10011A1C8);
  sub_100012C48(&qword_100171278, &qword_100171270, &qword_10011A1C8, &protocol conformance descriptor for SubscriptionView<A, B>);
  WindowGroup.init(id:title:lazyContent:)();
  v25 = v3;
  v16 = sub_100002BE4(&qword_100171280, &qword_10011A1D0);
  v17 = sub_100012C48(&qword_100171288, &qword_100171260, &qword_10011A1B8, &protocol conformance descriptor for WindowGroup<A>);
  v18 = sub_100012C48(&qword_100171290, &qword_100171280, &qword_10011A1D0, &protocol conformance descriptor for TupleCommandContent<A>);
  Scene.commands<A>(content:)();
  (*(v7 + 8))(v9, v6);
  v26 = v6;
  v27 = v16;
  v28 = v17;
  v29 = v18;
  swift_getOpaqueTypeConformance2();
  v19 = v22;
  static SceneBuilder.buildBlock<A>(_:)();
  return (*(v23 + 8))(v13, v19);
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for TetsuoApp(0);
  sub_1000F25B0(&qword_100171198, type metadata accessor for TetsuoApp, &unk_10011A178);
  static App.main()();
  return 0;
}

uint64_t type metadata accessor for TetsuoApp(uint64_t a1)
{
  result = qword_100171208;
  if (!qword_100171208)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000F1714(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100002BE4(&qword_1001711A0, &qword_10011A150);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_100002BE4(&qword_1001711A8, &qword_10011A158);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1000F184C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100002BE4(&qword_1001711A0, &qword_10011A150);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_100002BE4(&qword_1001711A8, &qword_10011A158);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

void sub_1000F196C(uint64_t a1)
{
  sub_1000F1AE4(319, &qword_100171218, type metadata accessor for AppDelegate, &type metadata accessor for UIApplicationDelegateAdaptor);
  if (v1 <= 0x3F)
  {
    sub_100071908();
    if (v2 <= 0x3F)
    {
      sub_1000F1A80(319);
      if (v3 <= 0x3F)
      {
        sub_1000F1AE4(319, &unk_100171228, type metadata accessor for AppState, &type metadata accessor for State);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1000F1A80(uint64_t a1)
{
  if (!qword_100171220)
  {
    sub_10000459C(&qword_100170710, &qword_10011A170);
    v1 = type metadata accessor for State();
    if (!v2)
    {
      atomic_store(v1, &qword_100171220);
    }
  }
}

void sub_1000F1AE4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1000F1B64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TetsuoApp(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000F1BCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TetsuoApp(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000F1CE8(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for TetsuoApp(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_1000F1D6C()
{
  result = qword_1001712F8;
  if (!qword_1001712F8)
  {
    sub_10000459C(&qword_1001712E8, &unk_10011A240);
    sub_1000F1E24();
    sub_100012C48(&qword_100171328, &qword_100171330, &qword_10011A268, &protocol conformance descriptor for _PreferenceWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001712F8);
  }

  return result;
}

unint64_t sub_1000F1E24()
{
  result = qword_100171300;
  if (!qword_100171300)
  {
    sub_10000459C(&qword_100171308, &qword_10011A258);
    sub_1000F1EA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100171300);
  }

  return result;
}

unint64_t sub_1000F1EA8()
{
  result = qword_100171310;
  if (!qword_100171310)
  {
    sub_10000459C(&qword_100171318, &qword_10011A260);
    type metadata accessor for TetsuoAppMainView(255);
    type metadata accessor for AppState(255);
    sub_1000F25B0(&qword_100171320, type metadata accessor for TetsuoAppMainView, &unk_100115420);
    sub_1000F25B0(&qword_10016E910, type metadata accessor for AppState, &unk_10011A824);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100171310);
  }

  return result;
}

uint64_t sub_1000F1FE4(uint64_t a1)
{
  v2 = sub_100002BE4(&qword_1001712E8, &unk_10011A240);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000F204C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000FA04;

  return sub_1000EFE14();
}

uint64_t sub_1000F20DC(uint64_t a1)
{
  v3 = *(type metadata accessor for TetsuoApp(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1000EFEA4(a1, v4);
}

uint64_t sub_1000F214C()
{
  v1 = (type metadata accessor for TetsuoApp(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_100002BE4(&qword_1001711A0, &qword_10011A150);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  v6 = v0 + v3 + v1[8];
  v7 = sub_100002BE4(&qword_100170710, &qword_10011A170);
  (*(*(v7 - 8) + 8))(v6, v7);
  sub_100002BE4(&qword_1001711A8, &qword_10011A158);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000F22E8(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for TetsuoApp(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1000F235C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000F239C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100024388;

  return sub_1000F4DE0(a1, v4, v5, v6);
}