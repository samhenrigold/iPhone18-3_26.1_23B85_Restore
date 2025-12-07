void sub_100031720()
{
  sub_100003D74();
  v12 = v0;
  v1 = type metadata accessor for URL();
  sub_100002CC4();
  v13 = v2;
  __chkstk_darwin(v3);
  sub_100002DEC();
  v6 = v5 - v4;
  URL.init(fileURLWithPath:isDirectory:)();
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v7 = sub_100003DE8();
  sub_100002CFC(v7);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1001E5F60;
  v9 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.init(stringLiteral:)();
  v14[3] = v1;
  v10 = sub_100017E64(v14);
  (*(v13 + 16))(v10, v6, v1);
  static LogInterpolation.safe(_:)();
  sub_100009FB0(v14, &qword_10026D350, &qword_1001E6050);
  if (qword_1002686B0 != -1)
  {
    sub_100002D44(&qword_1002686B0);
  }

  v11 = static os_log_type_t.debug.getter();
  sub_1000036B0(v11, v8);

  static ClassicDataVaultUtilities.createDataVault(at:for:)();
  (*(v13 + 32))(v12, v6, v1);
  sub_10000A7C0(v12, 0, 1, v1);
  sub_100005F14();
}

unint64_t sub_100031B04()
{
  result = qword_10026E290;
  if (!qword_10026E290)
  {
    sub_10007BC70(&qword_10026E288, &unk_1001EDA28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026E290);
  }

  return result;
}

uint64_t sub_100031B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for LogInterpolation.StringInterpolation();
  __chkstk_darwin(v6 - 8);
  sub_100033FE8(a3, a1);
  v7 = type metadata accessor for JSStackContext(0);
  v8 = *(a1 + *(v7 + 44));
  if (*(a1 + *(v7 + 44)))
  {
    v9 = &type metadata for RemoteJetpackV2Loader;
  }

  else
  {
    v9 = &type metadata for RemoteJetpackLoader;
  }

  v10 = &off_100251408;
  if (*(a1 + *(v7 + 44)))
  {
    v10 = &off_1002514B0;
  }

  v25 = v9;
  v26 = v10;
  if (qword_1002686C0 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  type metadata accessor for LogInterpolation();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1001E5F70;
  if (*(a3 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_currentRequest + 8))
  {
  }

  type metadata accessor for JSStackProvider();
  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v12._object = 0x80000001001FD3D0;
  v12._countAndFlagsBits = 0xD00000000000001BLL;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v12);
  v13 = sub_100003CA8(v24, v9);
  v23[3] = v9;
  v14 = sub_100017E64(v23);
  v15 = &type metadata for RemoteJetpackLoader;
  if (v8)
  {
    v15 = &type metadata for RemoteJetpackV2Loader;
  }

  (*(v15[-1].Description + 2))(v14, v13, v9);
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_100002C5C(v23);
  v16._countAndFlagsBits = 41;
  v16._object = 0xE100000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v16);
  LogInterpolation.init(stringInterpolation:)();
  v17 = static os_log_type_t.debug.getter();
  sub_1000036B0(v17, v11);

  v18 = v25;
  v19 = v26;
  sub_100003CA8(v24, v25);
  v20 = (v19[1])(a3, a1, a4, v18, v19);
  sub_100002C00(v24);
  return v20;
}

uint64_t sub_100031E90()
{

  sub_100002FB8();

  return _swift_deallocObject(v0);
}

uint64_t sub_100031ECC()
{
  v1 = type metadata accessor for JSStackContext(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  v3 = type metadata accessor for URL();
  v4 = *(*(v3 - 8) + 8);
  v5 = sub_100007F3C();
  v4(v5);
  v6 = v1[5];
  if (!sub_100009F34(v2 + v6, 1, v3))
  {
    (v4)(v2 + v6, v3);
  }

  v7 = sub_100008158(v1[6]);
  v4(v7);
  v8 = sub_100008158(v1[7]);
  v4(v8);
  v9 = v1[8];
  if (!sub_100009F34(v2 + v9, 1, v3))
  {
    (v4)(v2 + v9, v3);
  }

  v10 = sub_100008158(v1[9]);
  v4(v10);
  v11 = sub_100008158(v1[10]);
  v4(v11);

  return _swift_deallocObject(v0);
}

uint64_t sub_100032070()
{
  type metadata accessor for JSStackContext(0);
  sub_10000A4E8();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  v4 = type metadata accessor for URL();
  sub_100002DDC();
  v6 = *(v5 + 8);
  v6(v3, v4);
  if (!sub_100007738())
  {
    v7 = sub_100019DA0();
    (v6)(v7);
  }

  v8 = sub_100008158(v0[6]);
  (v6)(v8);
  v9 = sub_100008158(v0[7]);
  (v6)(v9);
  if (!sub_100007738())
  {
    v10 = sub_100019DA0();
    (v6)(v10);
  }

  v11 = sub_100008158(v0[9]);
  (v6)(v11);
  v12 = sub_100008158(v0[10]);
  (v6)(v12);

  return _swift_deallocObject(v1);
}

uint64_t sub_1000321E0()
{
  swift_unknownObjectRelease();

  sub_1000083D8();

  return _swift_deallocObject(v0);
}

uint64_t sub_10003221C()
{
  type metadata accessor for JSCallable();
  sub_100002D30();
  v1 = sub_10000327C();
  v2(v1);

  return _swift_deallocObject(v0);
}

uint64_t sub_1000322A0()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_1000322E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v128 = a3;
  v132 = a2;
  v4 = type metadata accessor for DispatchQoS.QoSClass();
  v5 = sub_100006FA0(v4, &v143);
  v125 = v6;
  __chkstk_darwin(v5);
  sub_1000034BC(v106 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_10007B9A4(&qword_1002704B0, &qword_1001EFA38);
  sub_100006FA0(v8, &v142);
  v122 = v9;
  sub_100004E78();
  __chkstk_darwin(v10);
  sub_1000074D8();
  sub_1000034BC(v11);
  v12 = sub_10007B9A4(&qword_1002705A0, &qword_1001EFB10);
  sub_100006FA0(v12, v141);
  v119 = v13;
  sub_100004E78();
  __chkstk_darwin(v14);
  sub_1000074D8();
  sub_1000034BC(v15);
  v16 = sub_10007B9A4(&qword_1002704C0, &qword_1001EFA48);
  sub_100006FA0(v16, &v140);
  v116 = v17;
  sub_100004E78();
  __chkstk_darwin(v18);
  sub_1000074D8();
  sub_1000034BC(v19);
  v20 = sub_10007B9A4(&qword_1002704C8, &qword_1001EFA50);
  sub_100006FA0(v20, &v144);
  v115 = v21;
  sub_100004E78();
  __chkstk_darwin(v22);
  sub_1000074D8();
  sub_1000034BC(v23);
  v24 = sub_10007B9A4(&qword_1002705A8, &qword_1001EFB18);
  sub_100006FA0(v24, &v137);
  v112 = v25;
  sub_100004E78();
  __chkstk_darwin(v26);
  sub_1000074D8();
  sub_1000034BC(v27);
  v28 = sub_10007B9A4(&qword_1002705B0, &qword_1001EFB20);
  sub_100006FA0(v28, v135);
  v110 = v29;
  sub_100004E78();
  __chkstk_darwin(v30);
  sub_1000074D8();
  sub_1000034BC(v31);
  v32 = sub_10007B9A4(&qword_1002705B8, &qword_1001EFB28);
  sub_100006FA0(v32, &v145);
  v109 = v33;
  sub_100004E78();
  __chkstk_darwin(v34);
  sub_1000074D8();
  sub_1000034BC(v35);
  v36 = type metadata accessor for JSStackContext(0);
  v107 = *(v36 - 8);
  __chkstk_darwin(v36);
  v127 = v37;
  v131 = (v106 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = sub_10007B9A4(&qword_1002704E0, &qword_1001EFB30);
  sub_100006FA0(v38, v134);
  v106[2] = v39;
  sub_100004E78();
  __chkstk_darwin(v40);
  v42 = v106 - v41;
  v43 = sub_10007B9A4(&qword_1002704E8, &qword_1001EFA70);
  sub_100006FA0(v43, &v132);
  v45 = v44;
  sub_100004E78();
  __chkstk_darwin(v46);
  v48 = v106 - v47;
  if (qword_1002686C8 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  type metadata accessor for LogInterpolation();
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_1001E5F70;
  *(&v138 + 1) = &type metadata for RemoteJetpackV2Loader;
  v133 = a1;
  if (*(a1 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_currentRequest + 8))
  {
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v137);
  LogInterpolation.init(stringLiteral:)();
  v50 = static os_log_type_t.info.getter();
  sub_1000036B0(v50, v49);

  sub_100002BC0(0, &qword_10026D648, AMSProcessInfo_ptr);
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v51 = v137;
  sub_10007B9A4(&unk_10026FEE0, &unk_1001E67C0);
  v52 = v132;
  static Pipeline.start<A>(with:)();
  v53 = *(v133 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_config + 16);
  v137 = *(v133 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_config);
  v138 = v53;
  v54 = *(v133 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_config + 48);
  v139 = *(v133 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_config + 32);
  v140 = v54;
  sub_100002BC0(0, &qword_10026D640, AMSURLSession_ptr);
  inject<A, B>(_:from:)();
  v55 = v136;
  if (qword_1002685F8 != -1)
  {
    swift_once();
  }

  v56 = qword_10026A070;
  v57 = v131;
  sub_1000345E0(v52, v131);
  type metadata accessor for SourceFetcher(0);
  swift_allocObject();
  sub_1000346F4(&v137, v57, v55, v51, v56);
  sub_10000F4A4(&v137, v134);
  type metadata accessor for URL();
  v114 = v51;
  swift_unknownObjectRetain();
  PipelinePhase.init(mapOutput:)();
  sub_100006070(&qword_100270508, &qword_1002704E8, &qword_1001EFA70, &protocol conformance descriptor for PipelineEntryTask<A>);
  v58 = v106[1];
  v59 = PipelineTask.andThen<A>(_:)();
  sub_100007CE0();
  v60(v42, v106[3]);
  (*(v45 + 8))(v48, v58);
  v134[0] = v59;
  if (sub_100024F14())
  {
    type metadata accessor for Defaults();
    v61 = 1;
    v62 = sub_1000287B4(1);
    if (v62 != 2)
    {
      v61 = v62 ^ 1;
    }
  }

  else
  {
    v61 = 1;
  }

  v63 = v131;
  sub_1000345E0(v52, v131);
  v128 = *(v107 + 80);
  v64 = (v128 + 16) & ~v128;
  v107 = v64;
  v127 += v64;
  v65 = v127;
  v66 = swift_allocObject();
  sub_100034690(v63, v66 + v64);
  *(v66 + v65) = v61 & 1;
  type metadata accessor for DiskJetPackResourceBundle();
  v67 = v108;
  PipelinePhase.init(mapOutput:)();
  sub_10007B9A4(&qword_100270510, &qword_1001EFA90);
  sub_100006070(&qword_100270518, &qword_100270510, &qword_1001EFA90, &protocol conformance descriptor for MapPipelineTask<A, B>);
  v68 = PipelineTask.andThen<A>(_:)();
  sub_100007CE0();
  v69(v67, v130);

  v134[0] = v68;
  sub_10000AD54();
  static PipelinePhase.cacheValueIfSuccessful()();
  sub_10007B9A4(&qword_1002705C0, &qword_1001EFB38);
  sub_100006070(&qword_1002705C8, &qword_1002705C0, &qword_1001EFB38, &protocol conformance descriptor for MapPipelineTask<A, B>);
  sub_100006648();
  v70 = PipelineTask.andThen<A>(_:)();
  v130 = v70;
  v71 = sub_1000034C8();
  v72(v71, v111);

  v134[0] = v70;
  sub_10000AD54();
  PipelinePhase.init(mapOutput:)();
  v111 = sub_10007B9A4(&qword_1002705D0, &qword_1001EFB40);
  v110 = sub_100006070(&qword_1002705D8, &qword_1002705D0, &qword_1001EFB40, &protocol conformance descriptor for MapPipelineTask<A, B>);
  v73 = v52;
  v74 = PipelineTask.andThen<A>(_:)();
  v75 = sub_1000034C8();
  v76(v75, v113);
  v134[0] = v74;
  sub_1000345E0(v73, v63);
  v77 = sub_100008164(&unk_1002514F8);
  v78 = v107;
  sub_100034690(v63, v77 + v107);
  type metadata accessor for JSPackageIndex();
  sub_10000AD54();
  PipelinePhase.init(mapOutput:)();
  sub_10007B9A4(&qword_1002705E0, &qword_1001EFB48);
  sub_100006070(&qword_1002705E8, &qword_1002705E0, &qword_1001EFB48, &protocol conformance descriptor for MapPipelineTask<A, B>);
  sub_100006648();
  v79 = PipelineTask.andThen<A>(_:)();
  v80 = sub_1000034C8();
  v81(v80, v129);

  v134[0] = v79;
  sub_10000AD54();
  static PipelinePhase.cacheValueIfSuccessful()();
  sub_10007B9A4(&qword_100270560, &unk_1001EFB50);
  sub_100006070(&qword_100270568, &qword_100270560, &unk_1001EFB50, &protocol conformance descriptor for MapPipelineTask<A, B>);
  sub_100006648();
  v129 = PipelineTask.andThen<A>(_:)();
  v82 = sub_1000034C8();
  v83(v82, v117);

  v134[0] = v130;
  sub_1000345E0(v132, v63);
  v84 = sub_100008164(&unk_100251520);
  sub_100034690(v63, v84 + v78);
  sub_10007B9A4(&qword_100270570, &qword_1001EFAC0);
  v85 = v118;
  PipelinePhase.init(mapOutput:)();
  v86 = PipelineTask.andThen<A>(_:)();
  sub_100007CE0();
  v87(v85, v120);
  v134[0] = v86;
  v88 = v121;
  static PipelinePhase.cacheValueIfSuccessful()();
  sub_10007B9A4(&qword_1002705F0, &qword_1001EFB60);
  sub_100006070(&qword_1002705F8, &qword_1002705F0, &qword_1001EFB60, &protocol conformance descriptor for MapPipelineTask<A, B>);
  v132 = PipelineTask.andThen<A>(_:)();
  sub_100007CE0();
  v89(v88, v123);

  v90 = dispatch thunk of MapPipelineTask.run()();
  v91 = swift_allocObject();
  v92 = v133;
  *(v91 + 16) = v133;
  v128 = sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  v93 = enum case for DispatchQoS.QoSClass.default(_:);
  v94 = v125;
  v131 = *(v125 + 104);
  v95 = v124;
  v96 = v126;
  (v131)(v124, enum case for DispatchQoS.QoSClass.default(_:), v126);
  v97 = v92;
  v98 = static OS_dispatch_queue.global(qos:)();
  v99 = *(v94 + 8);
  v99(v95, v96);
  v133 = sub_1000357F4(sub_10018F62C, v91, v98, v90, &unk_1002515C0, sub_100036138, sub_10018F6B0);

  dispatch thunk of MapPipelineTask.run()();
  v134[3] = type metadata accessor for SyncTaskScheduler();
  v134[4] = &protocol witness table for SyncTaskScheduler;
  sub_100017E64(v134);
  SyncTaskScheduler.init()();
  v100 = Promise.map<A>(on:_:)();

  sub_100002C00(v134);
  v101 = swift_allocObject();
  *(v101 + 16) = v97;
  (v131)(v95, v93, v96);
  v102 = v97;
  v103 = static OS_dispatch_queue.global(qos:)();
  v99(v95, v96);
  sub_1000357F4(sub_100036434, v101, v103, v100, &unk_100251598, sub_10006270C, sub_1000361D8);

  sub_10007B9A4(&qword_100270588, &unk_1001EFAD0);
  sub_100006070(&qword_100270590, &qword_100270588, &unk_1001EFAD0, &protocol conformance descriptor for Promise<A>);
  v104 = Promise.join<A>(with:)();

  return v104;
}

uint64_t sub_100033470()
{
  type metadata accessor for JSStackContext(0);
  sub_10000A4E8();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  v4 = type metadata accessor for URL();
  sub_100002DDC();
  v6 = *(v5 + 8);
  v6(v3, v4);
  if (!sub_100007738())
  {
    v7 = sub_100019DA0();
    (v6)(v7);
  }

  v8 = sub_100008158(v0[6]);
  (v6)(v8);
  v9 = sub_100008158(v0[7]);
  (v6)(v9);
  if (!sub_100007738())
  {
    v10 = sub_100019DA0();
    (v6)(v10);
  }

  v11 = sub_100008158(v0[9]);
  (v6)(v11);
  v12 = sub_100008158(v0[10]);
  (v6)(v12);

  return _swift_deallocObject(v1);
}

uint64_t sub_1000335E8()
{

  return _swift_deallocObject(v0);
}

unint64_t sub_100033630()
{
  result = qword_10026E278;
  if (!qword_10026E278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026E278);
  }

  return result;
}

void *sub_100033684(void *a1)
{
  v3 = sub_10007B9A4(&qword_10026D300, &qword_1001EC710);
  sub_100002CC4();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v11 - v7;
  v9 = sub_100003CA8(a1, a1[3]);
  sub_1000337F8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v5 + 8))(v8, v3);
  }

  sub_100002C00(a1);
  return v9;
}

void *sub_1000337CC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_100033684(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1000337F8()
{
  result = qword_10026D308;
  if (!qword_10026D308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026D308);
  }

  return result;
}

uint64_t sub_100033850(unsigned __int8 *a1, uint64_t (*a2)(uint64_t, unsigned __int8 *))
{
  v4 = *a1;
  v5 = sub_10007B9A4(&qword_10026E268, &qword_1001EDA10);
  return a2(v4, &a1[*(v5 + 48)]);
}

uint64_t sub_1000338E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a1;
  v53 = a2;
  v2 = type metadata accessor for LogInterpolation.StringInterpolation();
  __chkstk_darwin(v2 - 8);
  sub_100002DEC();
  v3 = type metadata accessor for URL();
  sub_100002CC4();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_100002DEC();
  v9 = v8 - v7;
  v10 = type metadata accessor for URL.DirectoryHint();
  sub_100002CC4();
  v51 = v11;
  __chkstk_darwin(v12);
  sub_100002DEC();
  v15 = v14 - v13;
  v16 = sub_10007B9A4(&unk_10026FEE0, &unk_1001E67C0);
  __chkstk_darwin(v16 - 8);
  sub_1000056E8();
  v19 = v17 - v18;
  v21 = __chkstk_darwin(v20);
  v23 = &v48 - v22;
  v24 = __chkstk_darwin(v21);
  v26 = &v48 - v25;
  __chkstk_darwin(v24);
  v28 = &v48 - v27;
  sub_100031720();
  v29 = sub_100009F34(v26, 1, v3);
  v30 = &enum case for URL.DirectoryHint.inferFromPath(_:);
  if (v29 == 1)
  {
    sub_10000A064(v26, &unk_10026FEE0, &unk_1001E67C0);
    v31 = 1;
  }

  else
  {
    v49 = v9;
    v50 = v5;
    v32 = 0xE900000000000073;
    v33 = 0x636974796C616E61;
    switch(v52)
    {
      case 1:
        v32 = 0xE800000000000000;
        v33 = 0x6C616E7265746E69;
        break;
      case 2:
        v32 = 0xE800000000000000;
        v33 = 0x7379656E72756F6ALL;
        break;
      case 3:
        sub_100007638();
        v33 = 0x6E656D6D6F636572;
        break;
      default:
        break;
    }

    v54 = v33;
    v55 = v32;
    v34 = v51;
    (*(v51 + 104))(v15, *v30, v10);
    sub_10001ECE0();
    URL.appending<A>(path:directoryHint:)();
    (*(v34 + 8))(v15, v10);

    v5 = v50;
    (*(v50 + 8))(v26, v3);
    v31 = 0;
    v9 = v49;
  }

  sub_10000A7C0(v28, v31, 1, v3);
  sub_10001EC70(v28, v23);
  sub_10000330C(v23);
  if (v42)
  {
    sub_10000A064(v23, &unk_10026FEE0, &unk_1001E67C0);
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    type metadata accessor for LogInterpolation();
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1001E5F70;
    v36 = AMSSetLogKeyIfNeeded();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v37._object = 0x80000001001FD2F0;
    v37._countAndFlagsBits = 0xD00000000000002ALL;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v37);
    v56 = &unk_1002471C0;
    LOBYTE(v54) = v52;
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A064(&v54, &qword_10026D350, &qword_1001E6050);
    v38._countAndFlagsBits = 41;
    v38._object = 0xE100000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v38);
    LogInterpolation.init(stringInterpolation:)();
    if (qword_1002686B0 != -1)
    {
      swift_once();
    }

    v39 = static os_log_type_t.debug.getter();
    sub_1000036B0(v39, v35);

    v40 = v28;
    goto LABEL_16;
  }

  (*(v5 + 32))(v9, v23, v3);
  v41 = [objc_opt_self() defaultManager];
  sub_10001E148();

  sub_10000330C(v19);
  if (v42)
  {
    (*(v5 + 8))(v9, v3);
    sub_10000A064(v28, &unk_10026FEE0, &unk_1001E67C0);
    v40 = v19;
LABEL_16:
    sub_10000A064(v40, &unk_10026FEE0, &unk_1001E67C0);
    v46 = 1;
    v44 = v53;
    return sub_10000A7C0(v44, v46, 1, v3);
  }

  v54 = 0x426B63617074656ALL;
  v55 = 0xEF65646F43657479;
  v43 = v51;
  (*(v51 + 104))(v15, enum case for URL.DirectoryHint.inferFromPath(_:), v10);
  sub_10001ECE0();
  v44 = v53;
  URL.appending<A>(path:directoryHint:)();
  (*(v43 + 8))(v15, v10);
  v45 = *(v5 + 8);
  v45(v9, v3);
  sub_10000A064(v28, &unk_10026FEE0, &unk_1001E67C0);
  v45(v19, v3);
  v46 = 0;
  return sub_10000A7C0(v44, v46, 1, v3);
}

void sub_100033FE8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_config + 48) && *(a1 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_config + 48) != 1)
  {
  }

  else
  {
    v2 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v2 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  type metadata accessor for JSStackContext(0);
  sub_1000209D4();
LABEL_7:
  sub_100034484();
  type metadata accessor for JSStackContext(0);
  sub_100034484();
  sub_100034484();
}

void sub_100034484()
{
  v0 = objc_opt_self();
  v1 = [v0 defaultManager];
  URL.path.getter();
  v2 = String._bridgeToObjectiveC()();

  v3 = [v1 fileExistsAtPath:v2];

  if ((v3 & 1) == 0)
  {
    v4 = [v0 defaultManager];
    URL._bridgeToObjectiveC()(v5);
    v7 = v6;
    v11 = 0;
    v8 = [v4 createDirectoryAtURL:v6 withIntermediateDirectories:1 attributes:0 error:&v11];

    if (v8)
    {
      v9 = v11;
    }

    else
    {
      v10 = v11;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }
}

uint64_t sub_1000345E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JSStackContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for SourceFetcher(uint64_t a1)
{
  result = qword_100270AB0;
  if (!qword_100270AB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100034690(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JSStackContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000346F4(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a1[1];
  *(v5 + 24) = *a1;
  *(v5 + 40) = v9;
  v10 = a1[3];
  *(v5 + 56) = a1[2];
  *(v5 + 72) = v10;
  sub_100034690(a2, v5 + OBJC_IVAR____TtC14amsengagementd13SourceFetcher_context);
  *(v5 + OBJC_IVAR____TtC14amsengagementd13SourceFetcher_urlSession) = a3;
  *(v5 + OBJC_IVAR____TtC14amsengagementd13SourceFetcher_process) = a4;
  *(v5 + 16) = a5;
  return v5;
}

uint64_t sub_100034774(uint64_t a1)
{
  v3 = type metadata accessor for LogInterpolation.StringInterpolation();
  __chkstk_darwin(v3 - 8);
  v4 = sub_10007B9A4(&unk_10026FEE0, &unk_1001E67C0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v50 - v8;
  v10 = type metadata accessor for URL();
  v53 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v13 = v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v51 = v50 - v14;
  if (*(v1 + 72) && *(v1 + 72) != 1)
  {
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v15 & 1) == 0)
    {
      v52 = v10;
      if (qword_1002686C8 != -1)
      {
        sub_100007038(&qword_1002686C8);
      }

      sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      sub_100002DFC();
      v16 = type metadata accessor for LogInterpolation();
      sub_100002CFC(v16);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1001E5F70;
      sub_10000BBF0();
      v18 = AMSLogKey();
      if (v18)
      {
        v19 = v18;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      sub_100007D0C();

      sub_100002C00(&v54);
      LogInterpolation.init(stringLiteral:)();
      v31 = static os_log_type_t.info.getter();
      sub_1000036B0(v31, v17);

      sub_10007B9A4(&qword_100270B58, &qword_1001F0228);
      v32 = v1 + OBJC_IVAR____TtC14amsengagementd13SourceFetcher_context;
      v33 = type metadata accessor for JSStackContext(0);
      (*(v53 + 16))(v13, v32 + *(v33 + 40), v52);
      return Promise.__allocating_init(value:)();
    }
  }

  sub_10001EC70(a1, v9);
  if (sub_100009F34(v9, 1, v10) == 1)
  {
    v20 = v10;
    sub_100009F5C(v9, &unk_10026FEE0, &unk_1001E67C0);
    if (qword_1002686C8 != -1)
    {
      sub_100007038(&qword_1002686C8);
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    sub_100002DFC();
    v21 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v21);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1001E5F70;
    sub_10000BBF0();
    v23 = AMSLogKey();
    if (v23)
    {
      v24 = v23;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    sub_100007D0C();

    sub_100002C00(&v54);
    LogInterpolation.init(stringLiteral:)();
    v34 = static os_log_type_t.error.getter();
    sub_1000036B0(v34, v22);

    sub_10007B9A4(&qword_100270B58, &qword_1001F0228);
    v35 = v1 + OBJC_IVAR____TtC14amsengagementd13SourceFetcher_context;
    v36 = type metadata accessor for JSStackContext(0);
    (*(v53 + 16))(v13, v35 + *(v36 + 40), v20);
    return Promise.__allocating_init(value:)();
  }

  v25 = *(v53 + 32);
  v52 = v10;
  v50[0] = v25;
  v25(v51, v9);
  if (qword_1002686C8 != -1)
  {
    sub_100007038(&qword_1002686C8);
  }

  v50[2] = qword_100287828;
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  sub_100002DFC();
  v26 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v26);
  v50[1] = *(v27 + 72);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1001E5F70;
  sub_10000BBF0();
  v29 = AMSLogKey();
  if (v29)
  {
    v30 = v29;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v54);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v38._object = 0x8000000100202A20;
  v38._countAndFlagsBits = 0xD00000000000001ALL;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v38);
  sub_10001EC70(a1, v7);
  v39 = v52;
  if (sub_100009F34(v7, 1, v52) == 1)
  {
    sub_100009F5C(v7, &unk_10026FEE0, &unk_1001E67C0);
    v54 = 0u;
    v55 = 0u;
  }

  else
  {
    *(&v55 + 1) = v39;
    v40 = sub_100017E64(&v54);
    (v50[0])(v40, v7, v39);
  }

  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_100009F5C(&v54, &qword_10026D350, &qword_1001E6050);
  v41._countAndFlagsBits = 0;
  v41._object = 0xE000000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v41);
  LogInterpolation.init(stringInterpolation:)();
  v42 = static os_log_type_t.info.getter();
  sub_1000036B0(v42, v28);

  sub_10007B9A4(&qword_100270B58, &qword_1001F0228);
  v37 = Promise.__allocating_init()();
  v43 = v51;
  sub_1001A29D0(v51);
  sub_100002DFC();
  v44 = type metadata accessor for SyncTaskScheduler();
  *(&v55 + 1) = v44;
  v56 = &protocol witness table for SyncTaskScheduler;
  sub_100017E64(&v54);
  SyncTaskScheduler.init()();
  type metadata accessor for URLRequest();
  Promise.map<A>(on:_:)();

  sub_100002C00(&v54);
  *(&v55 + 1) = v44;
  v56 = &protocol witness table for SyncTaskScheduler;
  sub_100017E64(&v54);

  SyncTaskScheduler.init()();
  sub_10007B9A4(&unk_100271830, &unk_1001F0A50);
  sub_100006070(&qword_100270B60, &unk_100271830, &unk_1001F0A50, &protocol conformance descriptor for Promise<A>);
  Promise.flatMap<A>(on:_:)();

  sub_100002C00(&v54);
  v45 = swift_allocObject();
  *(v45 + 16) = v1;
  *(v45 + 24) = v37;
  v46 = swift_allocObject();
  *(v46 + 16) = v37;
  *(v46 + 24) = v1;
  v47 = sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  swift_retain_n();
  swift_retain_n();
  v48 = static OS_dispatch_queue.main.getter();
  *(&v55 + 1) = v47;
  v56 = &protocol witness table for OS_dispatch_queue;
  *&v54 = v48;
  Promise.then(perform:orCatchError:on:)();

  (*(v53 + 8))(v43, v52);
  sub_100002C00(&v54);
  return v37;
}

uint64_t sub_10003518C(uint64_t a1, uint64_t a2, int a3)
{
  v34 = a3;
  v42 = a2;
  v35 = a1;
  v43 = type metadata accessor for JetPackFileStreamSource();
  v41 = *(v43 - 8);
  __chkstk_darwin(v43);
  v40 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DiskJetPackLoader();
  v38 = *(v4 - 8);
  v39 = v4;
  __chkstk_darwin(v4);
  v37 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for JetPackSigningPolicy();
  v6 = *(v36 - 8);
  v7 = __chkstk_darwin(v36);
  v33 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v31 - v9;
  v11 = type metadata accessor for LogInterpolation.StringInterpolation();
  __chkstk_darwin(v11 - 8);
  if (qword_1002686C8 != -1)
  {
    swift_once();
  }

  v32 = qword_100287828;
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  type metadata accessor for LogInterpolation();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1001E5F70;
  sub_10007B9A4(&qword_1002705B8, &qword_1001EFB28);
  v13 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v14._object = 0x8000000100201A50;
  v14._countAndFlagsBits = 0xD00000000000001BLL;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v14);
  v15 = type metadata accessor for URL();
  v46 = v15;
  v16 = sub_100017E64(v45);
  (*(*(v15 - 8) + 16))(v16, v35, v15);
  LogInterpolation.StringInterpolation.appendInterpolation(sensitive:)();
  sub_10000A00C(v45, &qword_10026D350, &qword_1001E6050);
  v17._countAndFlagsBits = 41;
  v17._object = 0xE100000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v17);
  LogInterpolation.init(stringInterpolation:)();
  v18 = static os_log_type_t.debug.getter();
  sub_1000036B0(v18, v12);

  v32 = *(type metadata accessor for JSStackContext(0) + 28);
  static DiskJetPackResourceBundle.cleanUpOldSessions(baseURL:)();
  v19 = v6;
  v20 = *(v6 + 104);
  v21 = &enum case for JetPackSigningPolicy.required(_:);
  if ((v34 & 1) == 0)
  {
    v21 = &enum case for JetPackSigningPolicy.ignore(_:);
  }

  v22 = v36;
  v20(v10, *v21, v36);
  (*(v19 + 16))(v33, v10, v22);
  v46 = type metadata accessor for JetPackManagedKeyProvider();
  v47 = &protocol witness table for JetPackManagedKeyProvider;
  sub_100017E64(v45);
  JetPackManagedKeyProvider.init()();
  v23 = v37;
  DiskJetPackLoader.init(signingPolicy:keyProvider:)();
  URL.path.getter();
  v24 = v40;
  JetPackFileStreamSource.init(path:)();
  v25 = v43;
  v46 = v43;
  v47 = &protocol witness table for JetPackFileStreamSource;
  v26 = sub_100017E64(v45);
  v27 = v41;
  (*(v41 + 16))(v26, v24, v25);
  v28 = static DiskJetPackLoader.sharedUnpackQueue.getter();
  v44[3] = sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  v44[4] = &protocol witness table for OS_dispatch_queue;
  v44[0] = v28;
  v29 = DiskJetPackLoader.bundle(from:baseURL:automaticallyCleanUp:on:)();
  (*(v27 + 8))(v24, v25);
  (*(v38 + 8))(v23, v39);
  (*(v19 + 8))(v10, v22);
  sub_100002C00(v44);
  sub_100002C00(v45);
  return v29;
}

uint64_t sub_100035764(uint64_t a1)
{
  v3 = *(type metadata accessor for JSStackContext(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  v5 = *(v4 + *(v3 + 64));

  return sub_10003518C(a1, v4, v5);
}

uint64_t sub_1000357F4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14[3] = sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  v14[4] = &protocol witness table for OS_dispatch_queue;
  v14[0] = a3;
  v10 = a3;
  v11 = Promise.__allocating_init()();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = a1;
  v12[4] = a2;
  swift_retain_n();

  Promise.then(perform:orCatchError:on:)();

  sub_100002C00(v14);
  return v11;
}

uint64_t sub_100035914()
{
  sub_10003596C();

  return swift_deallocClassInstance();
}

void *sub_10003596C()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 32);

  sub_1000359E8();
  return v0;
}

uint64_t sub_1000359E8()
{
  v1 = sub_100002DFC();
  v2(v1);
  sub_100002D30();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_100035A38()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0);
}

uint64_t sub_100035A80()
{

  sub_100007A3C();

  return _swift_deallocObject(v1);
}

uint64_t sub_100035ABC()
{
  sub_100004DA8();
  v0 = sub_100005AA0();
  return sub_100035B14(v0, v1, v2);
}

uint64_t sub_100035B14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v9[3] = a1;
  v9[1] = a3;
  v9[2] = a2;
  v11 = type metadata accessor for JetPackPath();
  v10 = *(v11 - 8);
  __chkstk_darwin(v11);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1002686C8 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  type metadata accessor for LogInterpolation();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1001E5F70;
  sub_10007B9A4(&qword_1002705A0, &qword_1001EFB10);
  v6 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.init(stringLiteral:)();
  v7 = static os_log_type_t.debug.getter();
  sub_1000036B0(v7, v5);

  type metadata accessor for JSStackContext(0);
  static JetPackPath.sourcePath.getter();
  DiskJetPackResourceBundle.memoryMappedSource(atPath:virtualMachine:cacheURL:)();
  return (*(v10 + 8))(v4, v11);
}

uint64_t sub_100035D90@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v29 = a1;
  v24 = a2;
  v32 = type metadata accessor for JetPackPath();
  v31 = *(v32 - 8);
  __chkstk_darwin(v32);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1002686C8 != -1)
  {
    swift_once();
  }

  v28 = qword_100287828;
  v4 = sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v5 = *(type metadata accessor for LogInterpolation() - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v27 = v4;
  v25 = v7 + 2 * v6;
  v8 = swift_allocObject();
  v23 = xmmword_1001E5F70;
  *(v8 + 16) = xmmword_1001E5F70;
  v26 = v7;
  v9 = sub_10007B9A4(&qword_1002705A8, &qword_1001EFB18);
  v10 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.init(stringLiteral:)();
  v11 = static os_log_type_t.debug.getter();
  sub_1000036B0(v11, v8);

  JetPackPath.init(_:)();
  v12 = v30;
  v13 = DiskJetPackResourceBundle.fileData(atPath:)();
  if (v12)
  {
    return (*(v31 + 8))(v3, v32);
  }

  v16 = v13;
  v17 = v14;
  v30 = v9;
  result = (*(v31 + 8))(v3, v32);
  if (v17 >> 60 == 15)
  {
    v18 = swift_allocObject();
    *(v18 + 16) = v23;
    v19 = AMSSetLogKeyIfNeeded();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.init(stringLiteral:)();
    v20 = static os_log_type_t.error.getter();
    sub_1000036B0(v20, v18);

    sub_10013C144();
    swift_allocError();
    *v21 = 1;
    return swift_willThrow();
  }

  else
  {
    v22 = v24;
    *v24 = v16;
    v22[1] = v17;
  }

  return result;
}

uint64_t sub_100036164()
{
  sub_1000067E4();
  v2 = v1();
  if (v0)
  {
    sub_1000F121C();
  }

  else
  {
    sub_1000040EC(v2);
  }
}

uint64_t sub_1000361E4@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (qword_1002686C8 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  type metadata accessor for LogInterpolation();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1001E5F60;
  v11 = &type metadata for RemoteJetpackV2Loader;
  if (*(a2 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_currentRequest + 8))
  {
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v10);
  LogInterpolation.init(stringLiteral:)();
  swift_getErrorValue();
  v11 = v9;
  v6 = sub_100017E64(v10);
  (*(v9[-1].Description + 2))(v6);
  static LogInterpolation.safe(_:)();
  sub_10000A00C(v10, &qword_10026D350, &qword_1001E6050);
  v7 = static os_log_type_t.default.getter();
  sub_1000036B0(v7, v5);

  result = Dictionary.init(dictionaryLiteral:)();
  *a3 = result;
  return result;
}

uint64_t sub_100036450@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1, a1 + 1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t type metadata accessor for JSAMS(uint64_t a1)
{
  result = qword_10026D4B0;
  if (!qword_10026D4B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_1000364D8(char *a1, void *a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v99 = a4;
  v9 = type metadata accessor for LogInterpolation.StringInterpolation();
  __chkstk_darwin(v9 - 8);
  sub_100002DEC();
  v104 = v11 - v10;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v101 = v12;
  v102 = v13;
  __chkstk_darwin(v12);
  sub_100002DEC();
  v100 = v15 - v14;
  v103 = sub_10007B9A4(&qword_10026D4C8, &qword_1001EC8C0);
  __chkstk_darwin(v103);
  v17 = &v97 - v16;
  v18 = type metadata accessor for JSAccountStore();
  v19 = objc_allocWithZone(v18);
  *&v19[OBJC_IVAR____TtC14amsengagementd14JSAccountStore_accountStore] = a2;
  v115.receiver = v19;
  v115.super_class = v18;
  v20 = a2;
  *&v5[OBJC_IVAR____TtC14amsengagementd5JSAMS_accounts] = objc_msgSendSuper2(&v115, "init");
  v21 = &a1[OBJC_IVAR____TtC14amsengagementd9JSRuntime_config];
  v22 = *&a1[OBJC_IVAR____TtC14amsengagementd9JSRuntime_config + 16];
  v117[0] = *&a1[OBJC_IVAR____TtC14amsengagementd9JSRuntime_config];
  v117[1] = v22;
  v23 = *&a1[OBJC_IVAR____TtC14amsengagementd9JSRuntime_config + 48];
  v117[2] = *&a1[OBJC_IVAR____TtC14amsengagementd9JSRuntime_config + 32];
  v117[3] = v23;
  v24 = objc_allocWithZone(type metadata accessor for JSApp());
  sub_10000F4A4(v117, v116);
  v25 = sub_100036D90(v117);
  sub_1000052EC(v25, OBJC_IVAR____TtC14amsengagementd5JSAMS_app);
  v26 = type metadata accessor for JSBacklog();
  v27 = objc_allocWithZone(v26);
  *&v27[OBJC_IVAR____TtC14amsengagementd9JSBacklog_runtime] = a1;
  v114.receiver = v27;
  v114.super_class = v26;
  v28 = a1;
  *&v5[OBJC_IVAR____TtC14amsengagementd5JSAMS_backlog] = objc_msgSendSuper2(&v114, "init");
  v29 = *(v21 + 1);
  v116[0] = *v21;
  v116[1] = v29;
  v30 = *(v21 + 3);
  v116[2] = *(v21 + 2);
  v116[3] = v30;
  v31 = objc_allocWithZone(type metadata accessor for JSClient());
  v32 = a3;
  sub_10000F4A4(v116, v112);
  v33 = sub_100036EF8(v32, v116);
  sub_1000052EC(v33, OBJC_IVAR____TtC14amsengagementd5JSAMS_client);
  v34 = type metadata accessor for JSContent();
  v35 = objc_allocWithZone(v34);
  *&v35[OBJC_IVAR____TtC14amsengagementd9JSContent_runtime] = v28;
  v111.receiver = v35;
  v111.super_class = v34;
  v36 = v28;
  v37 = objc_msgSendSuper2(&v111, "init");
  sub_1000052EC(v37, OBJC_IVAR____TtC14amsengagementd5JSAMS_content);
  v38 = type metadata accessor for JSDatabaseStore();
  v39 = objc_allocWithZone(v38);
  *&v39[OBJC_IVAR____TtC14amsengagementd15JSDatabaseStore_runtime] = v36;
  v110.receiver = v39;
  v110.super_class = v38;
  v40 = v36;
  v41 = objc_msgSendSuper2(&v110, "init");
  v42 = sub_1000052EC(v41, OBJC_IVAR____TtC14amsengagementd5JSAMS_database);
  v43 = [objc_allocWithZone(type metadata accessor for JSDevice(v42)) init];
  sub_1000052EC(v43, OBJC_IVAR____TtC14amsengagementd5JSAMS_device);
  v44 = objc_allocWithZone(type metadata accessor for JSFamily());
  v45 = v20;
  v46 = v40;
  v47 = sub_100037138(v45, v46);
  sub_1000052EC(v47, OBJC_IVAR____TtC14amsengagementd5JSAMS_family);
  v48 = [objc_allocWithZone(type metadata accessor for JSFeatureFlag()) init];
  sub_1000052EC(v48, OBJC_IVAR____TtC14amsengagementd5JSAMS_featureFlag);
  v49 = type metadata accessor for JSFollowUp();
  v50 = objc_allocWithZone(v49);
  *&v50[OBJC_IVAR____TtC14amsengagementd10JSFollowUp_accountStore] = v45;
  v109.receiver = v50;
  v109.super_class = v49;
  v51 = v45;
  v52 = objc_msgSendSuper2(&v109, "init");
  sub_1000052EC(v52, OBJC_IVAR____TtC14amsengagementd5JSAMS_followUp);
  v53 = [objc_allocWithZone(type metadata accessor for JSLocalize()) init];
  sub_1000052EC(v53, OBJC_IVAR____TtC14amsengagementd5JSAMS_localize);
  v54 = [objc_allocWithZone(type metadata accessor for JSLocation()) init];
  sub_1000052EC(v54, OBJC_IVAR____TtC14amsengagementd5JSAMS_location);
  v55 = objc_allocWithZone(type metadata accessor for JSLog());
  v56 = v46;
  v57 = sub_10003725C(v56);
  v58 = sub_1000052EC(v57, OBJC_IVAR____TtC14amsengagementd5JSAMS_log);
  v59 = objc_allocWithZone(type metadata accessor for JSMarketing(v58));
  v60 = v51;
  v61 = v56;
  v97 = v32;
  v98 = v60;
  v62 = sub_10003744C(v60, v97, v61);
  sub_1000052EC(v62, OBJC_IVAR____TtC14amsengagementd5JSAMS_marketing);
  v63 = objc_allocWithZone(type metadata accessor for JSMediaAPI());
  v64 = v61;
  v65 = sub_10003765C(v64);
  sub_1000052EC(v65, OBJC_IVAR____TtC14amsengagementd5JSAMS_media);
  v66 = type metadata accessor for JSMediaCatalogSync();
  v67 = objc_allocWithZone(v66);
  *&v67[OBJC_IVAR____TtC14amsengagementd18JSMediaCatalogSync_runtime] = v64;
  v108.receiver = v67;
  v108.super_class = v66;
  v68 = v64;
  v69 = objc_msgSendSuper2(&v108, "init");
  sub_1000052EC(v69, OBJC_IVAR____TtC14amsengagementd5JSAMS_mediaCatalogSync);
  v70 = type metadata accessor for JSMetrics();
  v71 = objc_allocWithZone(v70);
  *&v71[OBJC_IVAR____TtC14amsengagementd9JSMetrics_runtime] = v68;
  v107.receiver = v71;
  v107.super_class = v70;
  v72 = v68;
  v73 = objc_msgSendSuper2(&v107, "init");
  sub_1000052EC(v73, OBJC_IVAR____TtC14amsengagementd5JSAMS_metrics);
  v74 = [objc_allocWithZone(type metadata accessor for JSNetwork()) init];
  sub_1000052EC(v74, OBJC_IVAR____TtC14amsengagementd5JSAMS_network);
  v75 = objc_allocWithZone(type metadata accessor for JSExtension());
  v76 = v72;
  v77 = sub_100037850(v76);
  sub_1000052EC(v77, OBJC_IVAR____TtC14amsengagementd5JSAMS_plugin);
  *&v5[OBJC_IVAR____TtC14amsengagementd5JSAMS_privacy] = [objc_allocWithZone(type metadata accessor for JSPrivacy()) init];
  *&v5[OBJC_IVAR____TtC14amsengagementd5JSAMS_props] = v99;
  v78 = [objc_allocWithZone(type metadata accessor for JSServerDataCache()) init];
  sub_1000052EC(v78, OBJC_IVAR____TtC14amsengagementd5JSAMS_serverDataCache);
  v79 = type metadata accessor for JSSubscriptionStatus();
  v80 = objc_allocWithZone(v79);
  *&v80[OBJC_IVAR____TtC14amsengagementd20JSSubscriptionStatus_runtime] = v76;
  v106.receiver = v80;
  v106.super_class = v79;
  v81 = v76;
  v82 = objc_msgSendSuper2(&v106, "init");
  sub_1000052EC(v82, OBJC_IVAR____TtC14amsengagementd5JSAMS_subscription);
  v83 = [objc_allocWithZone(type metadata accessor for JSTelephony()) init];
  sub_1000052EC(v83, OBJC_IVAR____TtC14amsengagementd5JSAMS_telephony);
  v84 = [objc_allocWithZone(type metadata accessor for JSTreatmentStore()) init];
  sub_1000052EC(v84, OBJC_IVAR____TtC14amsengagementd5JSAMS_treatmentStore);
  *&v5[OBJC_IVAR____TtC14amsengagementd5JSAMS_userNotifications] = [objc_allocWithZone(type metadata accessor for JSUserNotifications()) init];
  v85 = v100;
  UUID.init()();
  sub_1000385DC(v85, v17);
  (*(v102 + 8))(v85, v101);
  sub_100038678(v17, &v5[OBJC_IVAR____TtC14amsengagementd5JSAMS_uuid]);
  v86 = type metadata accessor for JSAMS(0);
  v105.receiver = v5;
  v105.super_class = v86;
  v87 = objc_msgSendSuper2(&v105, "init");
  v88 = qword_1002686C0;
  v89 = v87;
  if (v88 != -1)
  {
    sub_1000031E0(&qword_1002686C0);
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  type metadata accessor for LogInterpolation();
  v90 = swift_allocObject();
  *(v90 + 16) = xmmword_1001E5F70;
  v113 = v86;
  v112[0] = v89;
  if (*&v81[OBJC_IVAR____TtC14amsengagementd9JSRuntime_currentRequest + 8])
  {
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v112);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v91._countAndFlagsBits = 0x696C616974696E49;
  v91._object = 0xEC0000002064657ALL;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v91);
  v92 = OBJC_IVAR____TtC14amsengagementd5JSAMS_uuid;
  v113 = v103;
  v93 = sub_100017E64(v112);
  sub_100037A94(&v89[v92], v93);
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_10000A064(v112, &qword_10026D350, &qword_1001E6050);
  v94._countAndFlagsBits = 0;
  v94._object = 0xE000000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v94);
  LogInterpolation.init(stringInterpolation:)();
  v95 = static os_log_type_t.debug.getter();
  sub_1000036B0(v95, v90);

  return v89;
}

id sub_100036D90(uint64_t a1)
{
  v2 = 0xE900000000000073;
  v3 = 0x636974796C616E61;
  switch(*(a1 + 1))
  {
    case 1:
      v2 = 0xE800000000000000;
      v3 = 0x6C616E7265746E69;
      break;
    case 2:
      v2 = 0xE800000000000000;
      v3 = 0x7379656E72756F6ALL;
      break;
    case 3:
      v2 = 0xEF736E6F69746164;
      v3 = 0x6E656D6D6F636572;
      break;
    default:
      break;
  }

  v5 = &v1[OBJC_IVAR____TtC14amsengagementd5JSApp_name];
  *v5 = v3;
  v5[1] = v2;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for JSApp();
  v6 = objc_msgSendSuper2(&v8, "init");
  sub_10000FF10(a1);
  return v6;
}

id sub_100036EF8(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC14amsengagementd8JSClient_demo;
  *&v2[v5] = [objc_allocWithZone(type metadata accessor for JSClientDemo()) init];
  v6 = *(a2 + 1);
  v7 = &v2[OBJC_IVAR____TtC14amsengagementd8JSClient_clientInfo];
  *v7 = a1;
  v7[8] = v6;
  v10.receiver = v2;
  v10.super_class = type metadata accessor for JSClient();
  v8 = objc_msgSendSuper2(&v10, "init");
  sub_10000FF10(a2);
  return v8;
}

id sub_100036F94()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSClientDemo();
  return objc_msgSendSuper2(&v2, "init");
}

uint64_t type metadata accessor for JSDevice(uint64_t a1)
{
  result = qword_10026DA38;
  if (!qword_10026DA38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_100037080()
{
  v1 = OBJC_IVAR____TtC14amsengagementd8JSDevice____lazy_storage___fileSystemSizeResults;
  v2 = sub_10007B9A4(&qword_10026DA50, &qword_1001ECFF0);
  sub_10000A7C0(v0 + v1, 1, 1, v2);
  v4.receiver = v0;
  v4.super_class = type metadata accessor for JSDevice(0);
  return objc_msgSendSuper2(&v4, "init");
}

id sub_100037138(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC14amsengagementd8JSFamily_accountStore] = a1;
  *&v2[OBJC_IVAR____TtC14amsengagementd8JSFamily_runtime] = a2;
  v4.receiver = v2;
  v4.super_class = type metadata accessor for JSFamily();
  return objc_msgSendSuper2(&v4, "init");
}

_BYTE *sub_10003725C(_BYTE *a1)
{
  *&v1[OBJC_IVAR____TtC14amsengagementd5JSLog_runtime] = a1;
  v2 = 0xE900000000000073;
  v3 = 0x636974796C616E61;
  switch(a1[OBJC_IVAR____TtC14amsengagementd9JSRuntime_config + 1])
  {
    case 1:
      v2 = 0xE800000000000000;
      v3 = 0x6C616E7265746E69;
      break;
    case 2:
      v2 = 0xE800000000000000;
      v3 = 0x7379656E72756F6ALL;
      break;
    case 3:
      v2 = 0xEF736E6F69746164;
      v3 = 0x6E656D6D6F636572;
      break;
    default:
      break;
  }

  v10 = 762343521;
  v11 = 0xE400000000000000;
  v4 = a1;
  v5._countAndFlagsBits = v3;
  v5._object = v2;
  String.append(_:)(v5);

  type metadata accessor for Log();
  v6 = swift_allocObject();
  sub_100013AB8();
  *(v6 + 16) = OS_os_log.init(subsystem:category:)();
  *&v1[OBJC_IVAR____TtC14amsengagementd5JSLog_logger] = v6;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for JSLog();
  v7 = objc_msgSendSuper2(&v9, "init");

  return v7;
}

uint64_t type metadata accessor for JSMarketing(uint64_t a1)
{
  result = qword_10026DDC8;
  if (!qword_10026DDC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_10003744C(void *a1, uint64_t a2, _BYTE *a3)
{
  v7 = type metadata accessor for Bag();
  sub_100002CC4();
  v9 = v8;
  __chkstk_darwin(v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = &v3[OBJC_IVAR____TtC14amsengagementd11JSMarketing_accountStore];
  v13[3] = sub_100002BC0(0, &unk_100271F90, ACAccountStore_ptr);
  v13[4] = &off_100246688;
  *v13 = a1;
  v14 = &a3[OBJC_IVAR____TtC14amsengagementd9JSRuntime_config];
  v3[OBJC_IVAR____TtC14amsengagementd11JSMarketing_app] = a3[OBJC_IVAR____TtC14amsengagementd9JSRuntime_config + 1];
  v15 = qword_1002685F8;
  v16 = a1;
  if (v15 != -1)
  {
    swift_once();
  }

  swift_unknownObjectRetain();
  Bag.init(from:)();
  (*(v9 + 32))(&v3[OBJC_IVAR____TtC14amsengagementd11JSMarketing_bag], v12, v7);
  *&v3[OBJC_IVAR____TtC14amsengagementd11JSMarketing_clientInfo] = a2;
  v17 = *(v14 + 4);
  v18 = &v3[OBJC_IVAR____TtC14amsengagementd11JSMarketing_mediaClient];
  *v18 = *(v14 + 3);
  v18[1] = v17;
  *&v3[OBJC_IVAR____TtC14amsengagementd11JSMarketing_runtime] = a3;
  v19 = type metadata accessor for JSMarketing(0);
  v23.receiver = v3;
  v23.super_class = v19;

  v20 = a3;
  v21 = objc_msgSendSuper2(&v23, "init");

  return v21;
}

id sub_10003765C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14amsengagementd10JSMediaAPI_encoders;
  *&v1[v3] = [objc_opt_self() mapTableWithKeyOptions:0 valueOptions:5];
  v4 = OBJC_IVAR____TtC14amsengagementd10JSMediaAPI_tokenServices;
  *&v1[v4] = [objc_opt_self() mapTableWithKeyOptions:5 valueOptions:5];
  v5 = OBJC_IVAR____TtC14amsengagementd10JSMediaAPI_urlSessions;
  *&v1[v5] = [objc_opt_self() mapTableWithKeyOptions:5 valueOptions:5];
  *&v1[OBJC_IVAR____TtC14amsengagementd10JSMediaAPI_runtime] = a1;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for JSMediaAPI();
  return objc_msgSendSuper2(&v7, "init");
}

id sub_1000377B0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSNetwork();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_100037850(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC14amsengagementd11JSExtension____lazy_storage___extensionLoader] = 0;
  *&v1[OBJC_IVAR____TtC14amsengagementd11JSExtension_runtime] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for JSExtension();
  return objc_msgSendSuper2(&v3, "init");
}

id sub_10003789C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSPrivacy();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_100037918()
{
  v1 = OBJC_IVAR____TtC14amsengagementd11JSTelephony_telephonyEntitlementFineGrained;
  *&v0[v1] = String._bridgeToObjectiveC()();
  v2 = &v0[OBJC_IVAR____TtC14amsengagementd11JSTelephony_telephonyEntitlementFineGrainedItemSPI];
  *v2 = 6910067;
  *(v2 + 1) = 0xE300000000000000;
  *&v0[OBJC_IVAR____TtC14amsengagementd11JSTelephony____lazy_storage___telephonyContext] = 1;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for JSTelephony();
  return objc_msgSendSuper2(&v4, "init");
}

id sub_100037A14()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "init");
}

uint64_t sub_100037A94(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007B9A4(&qword_10026D4C8, &qword_1001EC8C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for JSBag(uint64_t a1)
{
  result = qword_10026D718;
  if (!qword_10026D718)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100037B50(char *a1, void (*a2)(void *, uint64_t, uint64_t), void *a3, void *a4, uint64_t a5)
{
  v83 = a4;
  v90[6] = a5;
  v77 = a3;
  v78 = a2;
  v82 = type metadata accessor for Bag();
  v80 = *(v82 - 8);
  __chkstk_darwin(v82);
  v79 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for JSStack.StandardGlobalConfiguration();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v81 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v88 = &v62 - v12;
  v13 = type metadata accessor for LogInterpolation.StringInterpolation();
  __chkstk_darwin(v13 - 8);
  v14 = a1;
  v15 = *&a1[OBJC_IVAR____TtC14amsengagementd9JSRuntime_currentRequest + 8];
  if (v15)
  {
    v16 = *&a1[OBJC_IVAR____TtC14amsengagementd9JSRuntime_currentRequest];
  }

  else
  {
    v16 = 0;
  }

  v86 = v9;
  v87 = v8;
  if (qword_1002686C0 != -1)
  {
    swift_once();
  }

  v17 = qword_100287820;
  v18 = sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v19 = *(type metadata accessor for LogInterpolation() - 8);
  v20 = *(v19 + 72);
  v21 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v65 = *(v19 + 80);
  v67 = v18;
  v64 = v21 + 2 * v20;
  v22 = swift_allocObject();
  v62 = xmmword_1001E5F70;
  *(v22 + 16) = xmmword_1001E5F70;
  v66 = v21;
  v23 = type metadata accessor for JSStackProvider();
  v71 = v5;
  v70 = v16;
  v85 = v15;
  v63 = v23;
  static LogInterpolation.prefix<A>(_:_:)();
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v24._countAndFlagsBits = 0xD000000000000025;
  v24._object = 0x80000001001FD380;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v24);
  v75 = v14;
  v25 = *&v14[OBJC_IVAR____TtC14amsengagementd9JSRuntime_config + 40];
  v90[3] = &type metadata for Int;
  v76 = v25;
  v90[0] = v25;
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_100002C5C(v90);
  v26._countAndFlagsBits = 41;
  v26._object = 0xE100000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v26);
  v68 = v20;
  LogInterpolation.init(stringInterpolation:)();
  v27 = static os_log_type_t.debug.getter();
  v69 = v17;
  sub_1000036B0(v27, v22);

  sub_100002BC0(0, &unk_100271F90, ACAccountStore_ptr);
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v28 = v90[0];
  sub_100002BC0(0, &qword_10026D648, AMSProcessInfo_ptr);
  inject<A, B>(_:from:)();
  v29 = v90[0];
  static JSStack.StandardGlobalConfiguration.default.getter();
  sub_10007B9A4(&qword_10026E298, &qword_1001EDA38);
  v30 = type metadata accessor for JSStack.Prerequisite();
  v31 = *(v30 - 8);
  v32 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v72 = *(v31 + 72);
  v33 = v72;
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1001E5F60;
  v74 = v34;
  v35 = v34 + v32;
  sub_1000262E4(v77, v35);
  v36 = *(v31 + 104);
  v36(v35, enum case for JSStack.Prerequisite.source(_:), v30);
  v37 = (v35 + v33);
  v38 = objc_allocWithZone(type metadata accessor for JSAMS(0));
  v39 = v28;
  v40 = v29;
  v41 = v78;

  v42 = v75;
  v77 = v39;
  v75 = v40;
  v43 = sub_1000364D8(v42, v39, v40, v41);
  *v37 = 5459265;
  v37[1] = 0xE300000000000000;
  v37[2] = v43;
  v44 = enum case for JSStack.Prerequisite.globalObject(_:);
  v73 = v30;
  v78 = v36;
  v36(v37, enum case for JSStack.Prerequisite.globalObject(_:), v30);
  v45 = (v35 + 2 * v72);
  if (qword_1002685F8 != -1)
  {
    swift_once();
  }

  swift_unknownObjectRetain();
  v46 = v79;
  Bag.init(from:)();
  v47 = type metadata accessor for JSBag(0);
  v48 = objc_allocWithZone(v47);
  v49 = v80;
  v50 = v82;
  (*(v80 + 16))(v48 + OBJC_IVAR____TtC14amsengagementd5JSBag_bag, v46, v82);
  v89.receiver = v48;
  v89.super_class = v47;
  v51 = objc_msgSendSuper2(&v89, "init");
  (*(v49 + 8))(v46, v50);
  *v45 = 6775138;
  v45[1] = 0xE300000000000000;
  v45[2] = v51;
  v78(v45, v44, v73);
  type metadata accessor for JSStack();
  v53 = v86;
  v52 = v87;
  v54 = v88;
  (*(v86 + 16))(v81, v88, v87);

  v55 = v83;
  v56 = v84;
  v57 = JSStack.__allocating_init(asPartOf:virtualMachine:configuration:customPrerequisites:qualityOfService:)();
  if (v56)
  {
    (*(v53 + 8))(v54, v52);
  }

  else
  {
    JSStack.withUnsafeContext(_:)();
    if (sub_100024F14() && (type metadata accessor for Defaults(), v58 = sub_1000287B4(7), v58 != 2) && (v58 & 1) != 0)
    {
      v59 = swift_allocObject();
      *(v59 + 16) = v62;
      static LogInterpolation.prefix<A>(_:_:)();

      LogInterpolation.init(stringLiteral:)();
      v60 = static os_log_type_t.debug.getter();
      sub_1000036B0(v60, v59);

      JSStack.makeRemoteInspectable()();
    }

    else
    {
    }

    (*(v53 + 8))(v54, v52);
  }

  return v57;
}

id sub_100038424()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSFeatureFlag();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_10003847C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSLocalize();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_1000384B0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSLocation();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_10003852C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSServerDataCache();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_1000385A8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSUserNotifications();
  return objc_msgSendSuper2(&v2, "init");
}

uint64_t sub_1000385DC@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 16))(a3, a1, v5);
  sub_10007B9A4(&qword_10026D4C8, &qword_1001EC8C0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_100038678(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007B9A4(&qword_10026D4C8, &qword_1001EC8C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1000386E8(void *a1)
{
  v1 = [a1 virtualMachine];
  if (v1)
  {
    v2 = v1;
    [v1 shrinkFootprintWhenIdle];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100038744()
{

  sub_100007A3C();

  return _swift_deallocObject(v0);
}

uint64_t sub_100038780()
{

  sub_100007A3C();

  return _swift_deallocObject(v1);
}

uint64_t sub_1000387C4()
{
  sub_10000A610();
  v0 = type metadata accessor for Date();
  sub_100002CFC(v0);
  sub_100004CA8();
  v1 = sub_100003B80();

  return sub_100039E84(v1, v2, v3, v4, v5, v6);
}

uint64_t sub_100038858(uint64_t *a1)
{
  v3 = type metadata accessor for JSRequest();
  sub_100003D10(v3);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = v1 + ((*(v4 + 80) + 56) & ~*(v4 + 80));

  return sub_100038930(a1, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1000388D0()
{
  v0 = type metadata accessor for JSRequest();
  sub_100003D10(v0);
  return JSStack.performRequest(_:)();
}

uint64_t sub_100038930(uint64_t *a1, uint64_t a2, NSString a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v42 = a7;
  v38 = a5;
  v39 = a6;
  v10 = type metadata accessor for DispatchQoS.QoSClass();
  v44 = *(v10 - 8);
  v45 = v10;
  __chkstk_darwin(v10);
  v43 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for JSRequest();
  v12 = *(v41 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v41);
  v40 = v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for LogInterpolation.StringInterpolation();
  __chkstk_darwin(v14 - 8);
  v37[1] = *a1;
  if (a3)
  {
    a3 = String._bridgeToObjectiveC()();
  }

  if (qword_1002686C0 != -1)
  {
    swift_once();
  }

  v37[0] = qword_100287820;
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  type metadata accessor for LogInterpolation();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1001E5F70;
  v47 = type metadata accessor for JSAppEngine();
  v46[0] = a4;

  v16 = AMSLogKey();
  if (v16)
  {
    v17 = v16;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v46);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v18._object = 0x80000001001F9C20;
  v18._countAndFlagsBits = 0xD000000000000014;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v18);
  v47 = &type metadata for String;
  v46[0] = v38;
  v46[1] = v39;

  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_10000A064(v46, &qword_10026D350, &qword_1001E6050);
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v19);
  LogInterpolation.init(stringInterpolation:)();
  v20 = static os_log_type_t.default.getter();
  sub_1000036B0(v20, v15);

  type metadata accessor for JSStack();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v21 = v46[0];
  JSStack.withUnsafeContext(_:)();
  v22 = v42;
  v23 = JSRequest.timeoutInterval.getter();
  if ((v24 & 1) == 0)
  {
    sub_100038FD4(*&v23);
  }

  v26 = v40;
  v25 = v41;
  (*(v12 + 16))(v40, v22, v41);
  v27 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = v21;
  (*(v12 + 32))(v28 + v27, v26, v25);

  v29 = sub_100039288(sub_1000388D0, v28);

  v30 = swift_allocObject();
  *(v30 + 16) = a4;
  *(v30 + 24) = v21;
  sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  v32 = v43;
  v31 = v44;
  v33 = v45;
  (*(v44 + 104))(v43, enum case for DispatchQoS.QoSClass.default(_:), v45);

  v34 = static OS_dispatch_queue.global(qos:)();
  (*(v31 + 8))(v32, v33);
  v35 = sub_10010242C(sub_10005C7C8, v30, v34, v29, &unk_10024BF60, &unk_10024BF88, sub_10010274C, sub_100102758);

  return v35;
}

uint64_t sub_100038EE8()
{
  type metadata accessor for JSRequest();
  sub_100002CC4();

  v0 = sub_100008428();
  v1(v0);
  v2 = sub_100012C90();

  return _swift_deallocObject(v2);
}

uint64_t sub_100038F94()
{

  v0 = sub_1000074E4();

  return _swift_deallocObject(v0);
}

uint64_t sub_100038FD4(double a1)
{
  v3 = *v1;
  v4 = type metadata accessor for LogInterpolation.StringInterpolation();
  v5 = sub_100003D10(v4);
  __chkstk_darwin(v5);
  sub_100002DEC();
  if (qword_1002686C0 != -1)
  {
    sub_1000031E0(&qword_1002686C0);
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v6 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v6);
  sub_1000056F8();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1001E5F70;
  v14 = type metadata accessor for JSAppEngine();
  v13[0] = v1;
  if (*(v1[3] + OBJC_IVAR____TtC14amsengagementd9JSRuntime_currentRequest + 8))
  {
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v13);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v8._object = 0x80000001001F9A80;
  v8._countAndFlagsBits = 0xD000000000000027;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v8);
  v14 = &type metadata for Double;
  *v13 = a1;
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_10000A064(v13, &qword_10026D350, &qword_1001E6050);
  v9._countAndFlagsBits = 41;
  v9._object = 0xE100000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v9);
  LogInterpolation.init(stringInterpolation:)();
  v10 = static os_log_type_t.info.getter();
  sub_1000036B0(v10, v7);

  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v3;
  JSStack.withUnsafeContext(_:)();
}

uint64_t sub_100039288(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v54 = a1;
  v55 = a2;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v53 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v52 = *(v6 - 8);
  __chkstk_darwin(v6);
  v51 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchTimeInterval();
  v46 = *(v8 - 8);
  v47 = v8;
  __chkstk_darwin(v8);
  v10 = (&v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for DispatchTime();
  v49 = *(v11 - 8);
  v50 = v11;
  v12 = __chkstk_darwin(v11);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v48 = &v41 - v15;
  v16 = type metadata accessor for LogInterpolation.StringInterpolation();
  __chkstk_darwin(v16 - 8);
  v17 = (*(v2 + 24) + OBJC_IVAR____TtC14amsengagementd9JSRuntime_currentRequest);
  if (v17[1])
  {
    v45 = *v17;
  }

  else
  {
    v45 = 0;
  }

  type metadata accessor for Defaults();
  v18 = sub_10002E3EC(4);
  if ((v19 & 1) != 0 || (v20 = v18, v18 < 1))
  {

    return v54(v40);
  }

  else
  {
    v42 = v6;
    v43 = v4;
    v44 = v3;
    if (qword_1002686C0 != -1)
    {
      swift_once();
    }

    v41 = qword_100287820;
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    type metadata accessor for LogInterpolation();
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1001E5F70;
    v57 = type metadata accessor for JSAppEngine();
    aBlock[0] = v2;

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(aBlock);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v22._countAndFlagsBits = 0x676E69796C707041;
    v22._object = 0xE900000000000020;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v22);
    v57 = &type metadata for Int;
    aBlock[0] = v20;
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A064(aBlock, &qword_10026D350, &qword_1001E6050);
    v23._object = 0x80000001001F9C40;
    v23._countAndFlagsBits = 0xD000000000000011;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v23);
    LogInterpolation.init(stringInterpolation:)();
    v24 = static os_log_type_t.info.getter();
    sub_1000036B0(v24, v21);

    sub_10007B9A4(&qword_10026D658, &qword_1001EC9A0);
    v25 = Promise.__allocating_init()();
    sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
    v26 = v25;
    v41 = v25;

    v45 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    *v10 = v20;
    v28 = v46;
    v27 = v47;
    (*(v46 + 104))(v10, enum case for DispatchTimeInterval.seconds(_:), v47);
    v29 = v48;
    + infix(_:_:)();
    (*(v28 + 8))(v10, v27);
    v30 = v50;
    v49 = *(v49 + 8);
    (v49)(v14, v50);
    v31 = swift_allocObject();
    v32 = v54;
    v33 = v55;
    v31[2] = v26;
    v31[3] = v32;
    v31[4] = v33;
    v58 = sub_100102764;
    v59 = v31;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100005E50;
    v57 = &unk_10024BFC8;
    v34 = _Block_copy(aBlock);

    v35 = v51;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10004DE28();
    sub_10007B9A4(&unk_100270490, &unk_1001E74F0);
    sub_100006070(&qword_10026CD50, &unk_100270490, &unk_1001E74F0, &protocol conformance descriptor for [A]);
    v36 = v53;
    v37 = v44;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v38 = v45;
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v34);

    (*(v43 + 8))(v36, v37);
    (*(v52 + 8))(v35, v42);
    (v49)(v29, v30);
    return v41;
  }
}

uint64_t sub_1000399B4(void *a1)
{
  Group = JSContextGetGroup([a1 JSGlobalContextRef]);

  return _JSContextGroupClearExecutionTimeLimit(Group);
}

uint64_t sub_1000399E8(void *a1, double a2)
{
  Group = JSContextGetGroup([a1 JSGlobalContextRef]);

  v4.n128_f64[0] = a2 + 2.0;
  return _JSContextGroupSetExecutionTimeLimit(Group, sub_100101D60, 0, v4);
}

uint64_t sub_100039B44(uint64_t a1)
{
  v2._countAndFlagsBits = sub_10003A3C0(0x73616C4361746164, 0xE900000000000073, a1);
  if (!v2._object)
  {
    v2._countAndFlagsBits = 0;
    v2._object = 0xE000000000000000;
  }

  v3 = sub_10001FC50(v2);
  if (v3 == 4)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  type metadata accessor for AppDatabase();
  v5 = sub_10001D804(*(*(v1 + OBJC_IVAR____TtC14amsengagementd15JSDatabaseStore_runtime) + OBJC_IVAR____TtC14amsengagementd9JSRuntime_config + 1), v4);
  sub_10007B9A4(&qword_10026FE80, &unk_1001E6270);
  inited = swift_initStackObject();
  sub_100006D54(inited, xmmword_1001E61B0);
  v7 = type metadata accessor for JSDatabase();
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR____TtC14amsengagementd10JSDatabase_database] = v5;
  v12.receiver = v8;
  v12.super_class = v7;

  v9 = objc_msgSendSuper2(&v12, "init");
  inited[4].n128_u64[1] = v7;
  inited[3].n128_u64[0] = v9;
  v10 = Dictionary.init(dictionaryLiteral:)();

  return v10;
}

uint64_t sub_100039E84(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = type metadata accessor for LogInterpolation.StringInterpolation();
  v11 = __chkstk_darwin(v10 - 8);
  __chkstk_darwin(v11);
  v12 = *a1;
  if (a4)
  {
    v13 = String._bridgeToObjectiveC()();
  }

  else
  {
    v13 = 0;
  }

  sub_10007B9A4(&unk_100270BA0, &unk_1001EC990);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1001E61B0;
  Date.timeIntervalSinceNow.getter();
  *(v14 + 56) = &type metadata for Double;
  *(v14 + 64) = &protocol witness table for Double;
  *(v14 + 32) = fabs(v15);
  v29 = String.init(format:_:)();
  v17 = v16;
  if (v12)
  {
    v18 = v16;
    *(a6 + 16) = v12;
    swift_retain_n();

    if (qword_1002686C0 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    type metadata accessor for LogInterpolation();
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1001E5F70;
    *(&v32 + 1) = type metadata accessor for JSAppEngine();
    *&v31 = a6;

    static LogInterpolation.prefix(_:_:)();
    sub_100002C00(&v31);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v20._countAndFlagsBits = 0xD000000000000015;
    v20._object = 0x80000001001F9B40;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v20);
    *(&v32 + 1) = &type metadata for String;
    *&v31 = v29;
    *(&v31 + 1) = v18;
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A064(&v31, &qword_10026D350, &qword_1001E6050);
    v21._countAndFlagsBits = 41;
    v21._object = 0xE100000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v21);
    LogInterpolation.init(stringInterpolation:)();
    v22 = static os_log_type_t.default.getter();
    sub_1000036B0(v22, v19);
  }

  else
  {
    if (qword_1002686C0 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    type metadata accessor for LogInterpolation();
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1001E5F60;
    *(&v32 + 1) = type metadata accessor for JSAppEngine();
    *&v31 = a6;

    static LogInterpolation.prefix(_:_:)();
    sub_100002C00(&v31);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v24._object = 0x80000001001F9B20;
    v24._countAndFlagsBits = 0xD000000000000012;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v24);
    *(&v32 + 1) = &type metadata for String;
    *&v31 = v29;
    *(&v31 + 1) = v17;
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A064(&v31, &qword_10026D350, &qword_1001E6050);
    v25._countAndFlagsBits = 41;
    v25._object = 0xE100000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v25);
    LogInterpolation.init(stringInterpolation:)();
    if (a2)
    {
      swift_getErrorValue();
      *(&v32 + 1) = v30;
      v26 = sub_100017E64(&v31);
      (*(*(v30 - 8) + 16))(v26);
    }

    else
    {
      v31 = 0u;
      v32 = 0u;
    }

    static LogInterpolation.safe(_:)();
    sub_10000A064(&v31, &qword_10026D350, &qword_1001E6050);
    v27 = static os_log_type_t.error.getter();
    sub_1000036B0(v27, v23);
  }
}

uint64_t sub_10003A3C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16) && (v3 = sub_100012A94(), (v4 & 1) != 0))
  {
    sub_100061E4C(v3);
  }

  else
  {
    sub_1000060DC();
  }

  return sub_100005B9C();
}

uint64_t sub_10003A420@<X0>(_OWORD *a2@<X8>)
{
  if (*(v2 + 16))
  {
    sub_10000357C();

    sub_100008614(v5, v6, v7, v8, v9);

    if (!v3)
    {
      sub_100003C38(v16, &v15);
      sub_10007B9A4(&qword_10026D350, &qword_1001E6050);
      if ((swift_dynamicCast() & 1) == 0)
      {
        *a2 = xmmword_1001F0380;
      }
    }

    return sub_100002C5C(v16);
  }

  else
  {
    v11 = sub_10001ED34();
    v12 = sub_100007544(&unk_1002527D0, v11);
    return sub_100006E04(v12, v13, v14);
  }
}

uint64_t sub_10003A504(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 16))
  {
    sub_10000357C();

    sub_100008614(v4, v5, v6, v7, v8);

    if (v3)
    {
      return sub_100002C5C(v24);
    }

    else
    {
      sub_100003C38(v24, v23);
      v14 = sub_10007B9A4(&qword_10026D350, &qword_1001E6050);
      v22 = sub_10000BC24(v14, v15, v16, v17, v18, v19, v20, v21, v23[0]);
      if ((v22 & 1) == 0)
      {
        v25 = 0;
      }

      v26 = v22 ^ 1;
      sub_100002C5C(v24);
      return v25;
    }
  }

  else
  {
    v10 = sub_10001ED34();
    v11 = sub_100007544(&unk_1002527D0, v10);
    return sub_100006E04(v11, v12, v13);
  }
}

uint64_t sub_10003A5E0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10003A638@<X0>(char a1@<W2>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LogInterpolation.StringInterpolation();
  __chkstk_darwin(v4 - 8);
  sub_100002DEC();
  type metadata accessor for String.Encoding();
  sub_100002CC4();
  __chkstk_darwin(v5);
  sub_100002DEC();
  *a2 = 0u;
  *(a2 + 16) = 0u;
  switch(a1)
  {
    case 1:
      sub_100002BC0(0, &qword_10026A528, NSString_ptr);
      v33 = sub_100004894();
      sub_10003A5E0(v33, v34);
      static String.Encoding.utf8.getter();
      String.Encoding.rawValue.getter();
      v35 = sub_100006A80();
      v36(v35);
      v37 = sub_100004894();
      v39 = sub_10000AEA8(v37, v38);
      if (v39)
      {
        v40 = v39;
        v41 = [v39 BOOLValue];

        sub_10000A064(a2, &qword_10026D350, &qword_1001E6050);
        v42 = v41;
        v43 = &type metadata for Bool;
      }

      else
      {
        sub_10000A064(a2, &qword_10026D350, &qword_1001E6050);
        v42 = 0;
        v43 = 0;
      }

      *a2 = v42;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *(a2 + 24) = v43;
      goto LABEL_35;
    case 2:
      sub_100002BC0(0, &qword_10026A528, NSString_ptr);
      v17 = sub_100004894();
      sub_10003A5E0(v17, v18);
      static String.Encoding.utf8.getter();
      String.Encoding.rawValue.getter();
      v19 = sub_100006A80();
      v20(v19);
      v21 = sub_100004894();
      v23 = sub_10000AEA8(v21, v22);
      v16 = v23;
      if (v23)
      {
        v15 = [v23 integerValue];

        v16 = &type metadata for Int;
      }

      else
      {
        v15 = 0;
      }

      goto LABEL_17;
    case 3:
      sub_100002BC0(0, &qword_10026A528, NSString_ptr);
      v24 = sub_100004894();
      sub_10003A5E0(v24, v25);
      static String.Encoding.utf8.getter();
      String.Encoding.rawValue.getter();
      v26 = sub_100006A80();
      v27(v26);
      v28 = sub_100004894();
      v30 = sub_10000AEA8(v28, v29);
      v7 = v30;
      if (v30)
      {
        [v30 doubleValue];
        v32 = v31;

        v7 = &type metadata for Double;
      }

      else
      {
        v32 = 0;
      }

      sub_10000A064(a2, &qword_10026D350, &qword_1001E6050);
      *a2 = v32;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      goto LABEL_34;
    case 4:
      v8 = sub_100002BC0(0, &qword_10026A528, NSString_ptr);
      v9 = sub_100004894();
      sub_10003A5E0(v9, v10);
      static String.Encoding.utf8.getter();
      String.Encoding.rawValue.getter();
      v11 = sub_100006A80();
      v12(v11);
      v13 = sub_100004894();
      v15 = sub_10000AEA8(v13, v14);
      if (v15)
      {
        v16 = v8;
      }

      else
      {
        v16 = 0;
      }

LABEL_17:
      sub_10000A064(a2, &qword_10026D350, &qword_1001E6050);
      *a2 = v15;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *(a2 + 24) = v16;
      goto LABEL_35;
    case 5:
      objc_opt_self();
      sub_100004894();
      isa = Data._bridgeToObjectiveC()().super.isa;
      *&v68 = 0;
      v45 = sub_100019B80(isa, "propertyListWithData:options:format:error:");

      v46 = 0;
      if (v45)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v50 = v46;
        _convertNSErrorToError(_:)();

        swift_willThrow();

        v68 = 0u;
        v69 = 0u;
      }

      sub_100003C38(&v68, v66);
      if (!v67)
      {
        goto LABEL_30;
      }

      v51 = &qword_10026A520;
      v52 = &qword_1001E83B0;
      goto LABEL_28;
    case 6:
      objc_opt_self();
      sub_100004894();
      v47 = Data._bridgeToObjectiveC()().super.isa;
      *&v68 = 0;
      v48 = sub_100019B80(v47, "propertyListWithData:options:format:error:");

      v49 = 0;
      if (v48)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v53 = v49;
        _convertNSErrorToError(_:)();

        swift_willThrow();

        v68 = 0u;
        v69 = 0u;
      }

      sub_100003C38(&v68, v66);
      if (v67)
      {
        v51 = &qword_10026AE50;
        v52 = &unk_1001E83A0;
LABEL_28:
        v7 = sub_10007B9A4(v51, v52);
        if (swift_dynamicCast())
        {
          v54 = v65;
          sub_10000A064(&v68, &qword_10026D350, &qword_1001E6050);
          sub_10000A064(a2, &qword_10026D350, &qword_1001E6050);
          goto LABEL_33;
        }

        sub_10000C31C(&v68);
        v55 = a2;
      }

      else
      {
LABEL_30:
        sub_10000C31C(&v68);
        sub_10000C31C(a2);
        v55 = v66;
      }

      sub_10000C31C(v55);
      v54 = 0;
      v7 = 0;
LABEL_33:
      *a2 = v54;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
LABEL_34:
      *(a2 + 24) = v7;
LABEL_35:
      sub_100003C38(a2, &v68);
      v56 = *(&v69 + 1);
      result = sub_10000A064(&v68, &qword_10026D350, &qword_1001E6050);
      if (!v56)
      {
        if (qword_1002686B8 != -1)
        {
          sub_100004FFC();
          swift_once();
        }

        sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
        type metadata accessor for LogInterpolation();
        v58 = swift_allocObject();
        *(v58 + 16) = xmmword_1001E61B0;
        LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v59._countAndFlagsBits = 0x5252452045505954;
        v59._object = 0xEC000000203A524FLL;
        LogInterpolation.StringInterpolation.appendLiteral(_:)(v59);
        static String.Encoding.utf8.getter();
        sub_100004894();
        v60 = String.init(data:encoding:)();
        if (v61)
        {
          v62 = &type metadata for String;
        }

        else
        {
          v60 = 0;
          v62 = 0;
          *&v69 = 0;
        }

        *&v68 = v60;
        *(&v68 + 1) = v61;
        *(&v69 + 1) = v62;
        LogInterpolation.StringInterpolation.appendInterpolation(sensitive:)();
        sub_10000A064(&v68, &qword_10026D350, &qword_1001E6050);
        v63._countAndFlagsBits = 0;
        v63._object = 0xE000000000000000;
        LogInterpolation.StringInterpolation.appendLiteral(_:)(v63);
        LogInterpolation.init(stringInterpolation:)();
        v64 = static os_log_type_t.error.getter();
        sub_1000036B0(v64, v58);
      }

      return result;
    default:
      v6 = [objc_allocWithZone(NSNull) init];
      v7 = sub_100002BC0(0, qword_10026A530, NSNull_ptr);
      sub_10000A064(a2, &qword_10026D350, &qword_1001E6050);
      *a2 = v6;
      goto LABEL_34;
  }
}

uint64_t sub_10003AE18(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1000253FC(result, a2);
  }

  return result;
}

uint64_t sub_10003AE2C(uint64_t a1, uint64_t a2)
{

  return String.hash(into:)();
}

uint64_t sub_10003AE50()
{

  return sub_10008A630();
}

uint64_t sub_10003AEE8()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

void sub_10003AF20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, unsigned int a11)
{

  sub_1000036B0(a11, v11);
}

uint64_t sub_10003AF48()
{

  return AnyHashable.init<A>(_:)();
}

uint64_t sub_10003AF6C()
{

  return static _SetStorage.allocate(capacity:)();
}

uint64_t sub_10003AF98(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_1000050D4(a1, a2, a3, a4);
  sub_100002DDC();
  (*(v6 + 16))(v4, v5);
  return v4;
}

uint64_t sub_10003AFE8()
{
  sub_100004768();
  sub_1000056A8();
  v3 = v2;
  sub_100004EEC();
  *v4 = v3;
  v5 = *v1;
  sub_100002D20();
  *v6 = v5;
  *(v3 + 32) = v0;

  if (v0)
  {
    sub_1000060D0();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {
    v10 = *(v3 + 40);
    v11 = *(v5 + 8);

    return v11(v10);
  }
}

uint64_t sub_10003B104(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_10003B11C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10003B1C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = type metadata accessor for LogInterpolation.StringInterpolation();
  __chkstk_darwin(v6 - 8);
  sub_100002DEC();
  v7 = *(a1 + 16);
  if (v7)
  {
    swift_beginAccess();
    sub_10003B7C4(v3 + 16, &v36);
    if (v37)
    {
      sub_10003B104(&v36, v29);
      sub_100003CA8(v29, v29[3]);
      v8 = *(v3 + 57);
      sub_10003B834(&v30);
      if (v30)
      {
        v9 = v31;
        v10 = v32;
        v11 = v33;
        v12 = v35;
        v38 = v30;
        sub_10000A064(&v38, &qword_10026A6F8, &unk_1001E7CA0);
        v39 = v34;
        sub_10000A064(&v39, &unk_10026CD20, &unk_1001E7CC0);
        v40 = v12;
        sub_10000A064(&v40, &qword_10026A758, &qword_1001EBE80);
        if (v9 != 2)
        {
          v41 = v11;
          if (v9)
          {
            sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
            v13 = sub_100003DE8();
            sub_100002CFC(v13);
            v14 = swift_allocObject();
            *(v14 + 16) = xmmword_1001E5F70;
            v37 = type metadata accessor for EnqueueRunner();
            *&v36 = v4;

            static LogInterpolation.prefix(_:_:)();
            sub_100002C00(&v36);
            LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
            v15._countAndFlagsBits = 0x6965756575716E45;
            v15._object = 0xEB0000000020676ELL;
            LogInterpolation.StringInterpolation.appendLiteral(_:)(v15);
            v37 = &type metadata for Int;
            *&v36 = v7;
            LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
            sub_10000A064(&v36, &qword_10026D350, &qword_1001E6050);
            sub_1000083FC(" event(s) to backlog...");
            LogInterpolation.init(stringInterpolation:)();
            if (qword_1002686B0 != -1)
            {
              sub_100002D44(&qword_1002686B0);
            }

            v16 = static os_log_type_t.default.getter();
            sub_1000036B0(v16, v14);

            type metadata accessor for AppDatabase();
            v17 = sub_10001D804(v8, 0);
            v18 = a1 + 32;
            v27 = v41;
            do
            {
              swift_bridgeObjectRetain_n();
              sub_1000A5940(&v36);
              v19 = v17;
              if (v27)
              {
                v20 = sub_1000F4A44();
                v22 = v21;
              }

              else
              {
                v22 = 0;
                v20 = v10;
              }

              v23 = sub_1000A0D24();
              v24 = v22 & 1;
              v17 = v19;
              sub_1000A0E24(&v36, v20, v24, v23, 0);

              sub_10009D054(&v36);
              v18 += 8;
              --v7;
            }

            while (v7);
            v25 = swift_allocObject();
            *(v25 + 16) = xmmword_1001E5F70;
            sub_100007A48();
            static LogInterpolation.prefix(_:_:)();
            sub_100002C00(v28);
            LogInterpolation.init(stringLiteral:)();
            v26 = static os_log_type_t.default.getter();
            sub_1000036B0(v26, v25);
          }
        }
      }

      sub_100002C00(v29);
    }

    else
    {
      sub_10000A064(&v36, &qword_10026C878, &qword_1001EBCD8);
    }
  }
}

uint64_t sub_10003B7C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007B9A4(&qword_10026C878, &qword_1001EBCD8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_10003B834@<D0>(uint64_t a2@<X8>)
{
  sub_10007B9A4(&qword_10026A760, &qword_1001E7CD0);
  OS_dispatch_queue.sync<A>(execute:)();
  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 32) = v6;
  *(a2 + 48) = v7;
  return result;
}

uint64_t sub_10003B8C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_10003B914@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v10 = *(a1 + 24);
  if (*(v10 + 16))
  {

    v11 = sub_10003BBE8(a2);
    if (v12)
    {
      v13 = *(v10 + 56) + 56 * v11;
      v15 = *v13;
      v14 = *(v13 + 8);
      v16 = *(v13 + 16);
      v17 = *(v13 + 24);
      v19 = *(v13 + 32);
      v18 = *(v13 + 40);
      v20 = *(v13 + 48);

      *a3 = v15;
      a3[1] = v14;
      a3[2] = v16;
      a3[3] = v17;
      a3[4] = v19;
      a3[5] = v18;
      a3[6] = v20;
      return result;
    }
  }

  sub_1000A3B88();
  sub_1000A36EC();
  v35 = a2;
  v22 = v37;
  v34 = *(&v38 + 1);
  v23 = v38;
  v33 = *(&v39 + 1);
  v24 = v39;
  v32 = v40;
  (*(v7 + 8))(v9, v6);
  swift_beginAccess();
  if (v37)
  {
    v41 = v22;
    v42 = v23;
    v43 = v34;
    v44 = v24;
    v45 = v33;
    v46 = v32;
    sub_1000A46BC(&v37, v36, &qword_10026A760, &qword_1001E7CD0);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36[0] = *(a1 + 24);
    sub_1000AC840(&v41, v35, isUniquelyReferenced_nonNull_native, v26, v27, v28, v29, v30, v32, v33);
    *(a1 + 24) = v36[0];
  }

  else
  {
    sub_1000AB7AC();
    sub_100009FB0(&v41, &qword_10026A760, &qword_1001E7CD0);
  }

  swift_endAccess();
  v31 = v38;
  *a3 = v37;
  *(a3 + 1) = v31;
  result = *&v39;
  *(a3 + 2) = v39;
  a3[6] = v40;
  return result;
}

unint64_t sub_10003BBE8(uint64_t a1)
{
  v1 = a1;
  sub_10003D2F8();
  sub_10003BC4C(v4, v1);
  v2 = Hasher._finalize()();

  return sub_10004F904(v1, v2);
}

uint64_t sub_10003BC4C(uint64_t a1, char a2)
{
  String.hash(into:)();
}

uint64_t sub_10003BD24@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_10007B9A4(&unk_100271EA0, &qword_1001E77F0);
  sub_100002CFC(v5);
  v7 = v6;
  v9 = v8;
  v10 = *(v7 + 80);
  v11 = (v10 + 32) & ~v10;
  v12 = *(v9 + 64);
  v13 = (v12 + v10 + v11) & ~v10;
  v14 = v13 + v12;
  return sub_10003BE18(a1, *(v2 + 16), *(v2 + 24), v2 + v11, v2 + v13, *(v2 + ((v14 + 7) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + ((v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 16), a2, *(v2 + ((v14 + 31) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v14 + 31) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_10003BE18@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v128 = a8;
  v111 = a6;
  v112 = a7;
  v109 = a4;
  v110 = a5;
  v140 = a1;
  v120 = a9;
  v107 = a11;
  v106 = a10;
  v127 = type metadata accessor for Date();
  v13 = *(v127 - 8);
  v14 = __chkstk_darwin(v127);
  v126 = &v98 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v125 = &v98 - v16;
  v136 = type metadata accessor for Treatment(0);
  v124 = *(v136 - 8);
  __chkstk_darwin(v136);
  v141 = &v98 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a2[17];
  v19 = a2[18];
  sub_100003CA8(a2 + 14, v18);
  v20 = (*(v19 + 8))(v18, v19);
  v108 = a2;
  v21 = a2[21];
  type metadata accessor for TreatmentsCalculator();
  inited = swift_initStackObject();
  *(inited + 16) = v20;
  *(inited + 24) = v21;
  v23 = a3 + 56;
  v24 = 1 << *(a3 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & *(a3 + 56);
  v27 = (v24 + 63) >> 6;
  v123 = (v13 + 16);
  v105 = 0x8000000100203DC0;
  v28 = a3;
  swift_unknownObjectRetain();

  v29 = 0;
  v30 = _swiftEmptyDictionarySingleton;
  v104 = xmmword_1001E5F60;
  v119 = xmmword_1001E61B0;
  v138 = v27;
  v139 = a3 + 56;
LABEL_4:
  v31 = v122;
  if (v26)
  {
    goto LABEL_9;
  }

LABEL_5:
  while (1)
  {
    v32 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v32 >= v27)
    {
      swift_setDeallocating();
      sub_1001AFE78();
      swift_deallocClassInstance();

      *v120 = v30;
      return result;
    }

    v26 = *(v23 + 8 * v32);
    ++v29;
    if (v26)
    {
      v29 = v32;
      while (1)
      {
LABEL_9:
        v33 = (*(v28 + 48) + ((v29 << 10) | (16 * __clz(__rbit64(v26)))));
        v34 = *v33;
        v35 = v33[1];

        v137 = v34;
        v142 = v35;
        sub_10003CB20(v34, v35, &v147);
        if (v31)
        {

          goto LABEL_50;
        }

        v26 &= v26 - 1;
        if (v148)
        {
          v153 = v147;
          v154 = v148;
          v155 = v149;
          v156 = v150;
          v157 = v151;
          v158 = v152;
          v36 = sub_10003D1B4(&v153);
          if (v37)
          {
            v101 = v36;
            v102 = v37;
            v38 = sub_1001AF95C(v36, v37);
            type metadata accessor for TreatmentsRandomGenerator();
            swift_initStackObject();
            sub_1001B59E8(v38);
            v103 = sub_1001B5A8C(10000);

            v39 = sub_1001B7710(v137, v142, v103, v109, v110, v111, v112);
            v99 = v28;
            v122 = 0;
            v40 = *(v39 + 16);
            if (v40)
            {
              v144 = _swiftEmptyArrayStorage;
              v41 = v39;
              v116 = v40;
              specialized ContiguousArray.reserveCapacity(_:)();
              v42 = sub_1001BEB6C(v39);
              v45 = 0;
              v135 = v39 + 56;
              v115 = v43;
              v100 = v39 + 64;
              v117 = inited;
              v118 = v39;
              v121 = v30;
              do
              {
                if ((v42 & 0x8000000000000000) != 0 || v42 >= 1 << *(v41 + 32))
                {
                  __break(1u);
LABEL_53:
                  __break(1u);
LABEL_54:
                  __break(1u);
LABEL_55:
                  __break(1u);
LABEL_56:
                  __break(1u);
LABEL_57:
                  __break(1u);
LABEL_58:
                  __break(1u);
                }

                v46 = 1 << v42;
                if ((*(v135 + 8 * (v42 >> 6)) & (1 << v42)) == 0)
                {
                  goto LABEL_53;
                }

                if (*(v41 + 36) != v43)
                {
                  goto LABEL_54;
                }

                v131 = v42 >> 6;
                v132 = v43;
                v134 = v44;
                v129 = v45;
                v47 = *(v41 + 48);
                v48 = *(v124 + 72);
                v133 = v42;
                v49 = v141;
                sub_1001BF1D0(v47 + v48 * v42, v141);
                v130 = v46;
                if (v128)
                {
                  sub_10007B9A4(&unk_100271ED0, &qword_1001E74E0);
                  v50 = swift_initStackObject();
                  *(v50 + 16) = v119;
                  v51 = (v49 + *(v136 + 20));
                  v52 = v51[1];
                  *(v50 + 32) = *v51;
                  *(v50 + 40) = v52;

                  v53 = v102;

                  sub_10000DE9C();
                  v55 = v54;
                  v54[2] = 2;
                  v54[6] = v101;
                  v54[7] = v53;
                  v56 = *(&v157 + 1);
                  v57 = *(&v158 + 1);
                  v113 = v157;
                  v114 = v158;
                  v58 = v54[3];

                  if (v58 <= 5)
                  {
                    sub_10000DE9C();
                    v55 = v88;
                  }

                  v55[2] = 3;
                  v55[8] = v113;
                  v55[9] = v56;
                  v59 = v55[3];

                  if (v59 <= 7)
                  {
                    sub_10000DE9C();
                    v55 = v89;
                  }

                  v55[2] = 4;
                  v55[10] = v114;
                  v55[11] = v57;
                  v143 = v103;
                  v60 = dispatch thunk of CustomStringConvertible.description.getter();
                  v62 = v55[2];
                  if (v62 >= v55[3] >> 1)
                  {
                    v90 = v60;
                    v91 = v61;
                    sub_10000DE9C();
                    v61 = v91;
                    v55 = v92;
                    v60 = v90;
                  }

                  v55[2] = v62 + 1;
                  v63 = &v55[2 * v62];
                  v63[4] = v60;
                  v63[5] = v61;
                  v143 = v55;
                  sub_10007B9A4(&qword_1002704A0, &unk_1001ECCF0);
                  sub_100006070(&qword_100270BB0, &qword_1002704A0, &unk_1001ECCF0, &protocol conformance descriptor for [A]);
                  v64 = BidirectionalCollection<>.joined(separator:)();
                  v113 = v65;
                  v114 = v64;

                  v66 = *v123;
                  v67 = v125;
                  v68 = v141;
                  v69 = v127;
                  (*v123)(v125, v141, v127);
                  v70 = v126;
                  v66(v126, v68 + *(v136 + 24), v69);
                  v71 = objc_allocWithZone(AMSTreatment);
                  sub_1001BE4B0(v67, v114, v113, v70);
                  v41 = v118;
                }

                else
                {
                  v72 = *v123;
                  v73 = v125;
                  v74 = v127;
                  (*v123)(v125, v141, v127);
                  v75 = *(v136 + 24);
                  v76 = (v141 + *(v136 + 20));
                  v77 = v76[1];
                  v114 = *v76;
                  v78 = v126;
                  v72(v126, v141 + v75, v74);
                  v41 = v118;
                  objc_allocWithZone(AMSTreatment);

                  v79 = v73;
                  v68 = v141;
                  sub_1001BE4B0(v79, v114, v77, v78);
                }

                sub_1001BF22C(v68, type metadata accessor for Treatment);
                specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
                specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
                specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                specialized ContiguousArray._endMutation()();
                if (v134)
                {
                  goto LABEL_58;
                }

                v80 = 1 << *(v41 + 32);
                inited = v117;
                v30 = v121;
                if (v133 >= v80)
                {
                  goto LABEL_55;
                }

                v81 = *(v135 + 8 * v131);
                if ((v81 & v130) == 0)
                {
                  goto LABEL_56;
                }

                if (*(v41 + 36) != v132)
                {
                  goto LABEL_57;
                }

                v82 = v81 & (-2 << (v133 & 0x3F));
                if (v82)
                {
                  v80 = __clz(__rbit64(v82)) | v133 & 0x7FFFFFFFFFFFFFC0;
                }

                else
                {
                  v83 = v131 << 6;
                  v84 = v131 + 1;
                  v85 = (v100 + 8 * v131);
                  while (v84 < (v80 + 63) >> 6)
                  {
                    v87 = *v85++;
                    v86 = v87;
                    v83 += 64;
                    ++v84;
                    if (v87)
                    {
                      sub_100083998(v133, v132, 0);
                      v80 = __clz(__rbit64(v86)) + v83;
                      goto LABEL_41;
                    }
                  }

                  sub_100083998(v133, v132, 0);
LABEL_41:
                  v30 = v121;
                }

                v44 = 0;
                v45 = v129 + 1;
                v42 = v80;
                v43 = v115;
              }

              while (v129 + 1 != v116);
              sub_10000A00C(&v147, &qword_100271DD0, &qword_1001F1888);

              v93 = v144;
            }

            else
            {
              sub_10000A00C(&v147, &qword_100271DD0, &qword_1001F1888);

              v93 = _swiftEmptyArrayStorage;
            }

            sub_1001B8614(v93);
            swift_isUniquelyReferenced_nonNull_native();
            v144 = v30;
            sub_1000AD090();

            v121 = v144;
            if (qword_100268738 != -1)
            {
              swift_once();
            }

            v142 = qword_100287898;
            sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
            type metadata accessor for LogInterpolation();
            v94 = swift_allocObject();
            *(v94 + 16) = v104;
            v146 = type metadata accessor for TreatmentStoreService();
            v144 = v108;

            static LogInterpolation.prefix(_:_:)();
            sub_100002C00(&v144);
            v146 = &type metadata for String;
            v144 = 0xD000000000000033;
            v145 = v105;
            static LogInterpolation.safe(_:)();
            sub_10000A00C(&v144, &qword_10026D350, &qword_1001E6050);
            v144 = 0x6465766C6F736552;
            v145 = 0xE900000000000020;
            sub_10007B9A4(&qword_10026E448, &qword_1001F1AA0);
            v30 = v121;
            v95._countAndFlagsBits = Dictionary.description.getter();
            String.append(_:)(v95);

            v146 = &type metadata for String;
            static LogInterpolation.safe(_:)();
            sub_10000A00C(&v144, &qword_10026D350, &qword_1001E6050);
            v96 = static os_log_type_t.debug.getter();
            sub_1000036B0(v96, v94);

            v28 = v99;
            v27 = v138;
            v23 = v139;
            goto LABEL_4;
          }

          sub_10000A00C(&v147, &qword_100271DD0, &qword_1001F1888);
        }

        v27 = v138;
        v23 = v139;
        if (!v26)
        {
          goto LABEL_5;
        }
      }
    }
  }

  __break(1u);
  sub_10000A00C(&v147, &qword_100271DD0, &qword_1001F1888);

LABEL_50:
}

uint64_t sub_10003CAB4()
{
  sub_100003CA8(v0, v0[3]);
  v1 = sub_10000A280();
  return v2(v1);
}

void *sub_10003CB20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_10007B9A4(&qword_100269FC8, &qword_1001E7530);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001E61B0;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  sub_10000827C(inited);
  v8 = swift_allocObject();
  *(v8 + 16) = 0u;
  v9 = (v8 + 16);
  *(v8 + 32) = 0u;
  *(v8 + 48) = 0u;
  *(v8 + 64) = 0u;
  *(v8 + 80) = 0u;
  *(v8 + 96) = 0;

  v11[2] = sub_100017C14();
  v11[3] = 0xD00000000000006ALL;
  v11[4] = 0x8000000100203AC0;
  v11[5] = inited;
  v11[6] = sub_10003D06C;
  v11[7] = v8;
  sub_100014A20(sub_10001D7C8, v11);

  if (v3)
  {

    swift_setDeallocating();
    return sub_10001CE50();
  }

  else
  {
    swift_setDeallocating();
    sub_10001CE50();
    sub_10000602C(v9, v13);
    memcpy(__dst, v9, sizeof(__dst));
    sub_1000E0BFC(__dst, v12, &qword_100271DD0, &qword_1001F1888);

    return memcpy(a3, __dst, 0x58uLL);
  }
}

uint64_t sub_10003CCD4()
{
  if (*(v0 + 32))
  {
  }

  return _swift_deallocObject(v0);
}

uint64_t sub_10003CD30(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

unint64_t sub_10003CD70(unint64_t result, uint64_t a2, unint64_t a3)
{
  if (a3 >= result && result + 8 * a2 > a3)
  {
    if (a3 != result)
    {
      sub_10007B9A4(&qword_10026BFB0, &qword_1001EA308);

      return swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    sub_10007B9A4(&qword_10026BFB0, &qword_1001EA308);

    return swift_arrayInitWithTakeFrontToBack();
  }

  return result;
}

uint64_t sub_10003CE40(uint64_t a1, void *a2)
{
  v4 = sub_10003A400(0x6C62616568636163, 0xE900000000000065);
  if (!v2 && (v5 & 1) == 0)
  {
    v6 = v4;
    v7 = sub_10001ADD4(0x696669746E656469, 0xEA00000000007265);
    v9 = v8;
    if (v8)
    {
      v10 = v7;
      v11 = sub_10001ADD4(0x616D6F4464656573, 0xEA00000000006E69);
      v14 = v12;
      if (v12)
      {
        v15 = v11;
        v16 = sub_10001ADD4(0x6570795464656573, 0xE800000000000000);
        v18 = v17;
        if (v17)
        {
          v27 = v16;
          v24 = sub_10001ADD4(1953259891, 0xE400000000000000);
          v25 = v19;
          v20 = sub_10001ADD4(0xD000000000000010, 0x8000000100203990);
          v23 = v6 != 0;
          v22 = v21;
          swift_beginAccess();
          memcpy(__dst, a2 + 2, sizeof(__dst));
          *(a2 + 16) = v23;
          a2[3] = v10;
          a2[4] = v9;
          a2[5] = v24;
          a2[6] = v25;
          a2[7] = v20;
          a2[8] = v22;
          a2[9] = v15;
          a2[10] = v14;
          a2[11] = v27;
          a2[12] = v18;
          sub_10000A00C(__dst, &qword_100271DD0, &qword_1001F1888);
          return 0;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_10003D08C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_10003D0E0(uint64_t *a1)
{

  v2 = sub_10003D27C();
  switch(v2)
  {
    case 6:
      return 0;
    case 5:
      v5 = a1[4];
      v4 = a1[5];

      v6 = sub_1001B0940(v5, v4);
      if (v6 != 2)
      {
        return sub_1001AFD00(v6 & 1);
      }

      return 0;
    case 3:
      return sub_10003D3A4(*a1, a1[1]);
  }

  v8 = a1[4];
  v7 = a1[5];

  v9 = sub_1001B0940(v8, v7);
  if (v9 == 2)
  {
    return 0;
  }

  return sub_1001AF8C8(v9 & 1);
}

void *sub_10003D1B4(void *a1)
{
  result = sub_10003D0E0(a1 + 5);
  if (v3)
  {
    if (a1[4])
    {
      v4 = a1[3];
      v5 = a1[4];
    }

    else
    {
      v4 = 0;
      v5 = 0xE000000000000000;
    }

    v10 = result;

    v6._countAndFlagsBits = v4;
    v6._object = v5;
    String.append(_:)(v6);

    v8 = a1[1];
    v7 = a1[2];

    v9._countAndFlagsBits = v8;
    v9._object = v7;
    String.append(_:)(v9);

    return v10;
  }

  return result;
}

unint64_t sub_10003D27C()
{
  sub_10000E740();
  v2._object = v0;
  _findStringSwitchCase(cases:string:)(&off_100245350, v2);
  sub_100005F2C();

  if (v1 >= 6)
  {
    return 6;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_10003D2D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  a5[17] = a1;
  a5[18] = a2;
  a5[19] = a3;
  a5[20] = a4;
  a5[21] = v5;
}

uint64_t sub_10003D2F8()
{

  return Hasher.init(_seed:)();
}

uint64_t sub_10003D310(uint64_t a1)
{
  *(v2 - 104) = a1;
  *(v2 - 128) = v1;
}

uint64_t *sub_10003D338()
{
  *(v0 - 88) = *(v0 - 128);

  return sub_100017E64((v0 - 112));
}

uint64_t sub_10003D37C()
{
}

uint64_t sub_10003D3A4(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = *(v2 + 24);
  if (!v3)
  {
    return 0;
  }

  v4 = objc_opt_self();
  v5 = *(v2 + 16);
  swift_unknownObjectRetain();
  v6 = String._bridgeToObjectiveC()();
  v7 = String._bridgeToObjectiveC()();
  v8 = [v4 identifierForAccount:v5 bag:v3 bagNamespace:v6 keyName:v7];

  v16 = 0;
  v9 = [v8 resultWithTimeout:&v16 error:1.0];
  v10 = v16;
  if (!v9)
  {
    v14 = v16;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_unknownObjectRelease();

    return 0;
  }

  v11 = v9;
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v10;

  swift_unknownObjectRelease();
  return v12;
}

void sub_10003D598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1000057A4();
  a21 = v23;
  a22 = v24;
  v26 = v25;
  v27 = [*&v22[OBJC_IVAR____TtC14amsengagementd10CascadeBag_primaryBag] dictionaryForKey:v25];
  v28 = [v27 valuePromise];

  sub_100002FB8();
  v29 = swift_allocObject();
  *(v29 + 16) = v22;
  *(v29 + 24) = v26;
  sub_100006B40();
  sub_100005098();
  a11 = v30;
  a12 = &unk_100247F28;
  _Block_copy(&a9);
  sub_10000BE48();
  v31 = v26;
  sub_1000048C8();
  v32 = sub_10000B7B8();
  v34 = [v32 v33];
  sub_10000831C();

  [objc_opt_self() bagValueWithKey:v26 valueType:6 valuePromise:v22];
  sub_100007470();
}

uint64_t sub_10003D6B8()
{
  sub_100004768();
  swift_task_alloc();
  sub_100015B58();
  *(v0 + 32) = v1;
  *v1 = v2;
  v1[1] = sub_10003DB1C;
  sub_10000522C();
  sub_10000A724();

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v3);
}

uint64_t sub_10003D768(uint64_t a1, uint64_t a2)
{
  v28 = a2;
  v23 = a1;
  v3 = type metadata accessor for DispatchQoS.QoSClass();
  v26 = *(v3 - 8);
  v27 = v3;
  __chkstk_darwin(v3);
  v25 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10007B9A4(&qword_10026C8C0, &qword_1001EBD78);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v9 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v22 - v10;
  v12 = *(v6 + 16);
  v12(&v22 - v10, a1, v5);
  v13 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v24 = swift_allocObject();
  v14 = *(v6 + 32);
  v14(v24 + v13, v11, v5);
  v12(v9, v23, v5);
  v15 = swift_allocObject();
  v14(v15 + v13, v9, v5);
  v16 = sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  v18 = v25;
  v17 = v26;
  v19 = v27;
  (*(v26 + 104))(v25, enum case for DispatchQoS.QoSClass.default(_:), v27);
  v20 = static OS_dispatch_queue.global(qos:)();
  (*(v17 + 8))(v18, v19);
  v29[3] = v16;
  v29[4] = &protocol witness table for OS_dispatch_queue;
  v29[0] = v20;
  Promise.then(perform:orCatchError:on:)();

  return sub_100002C00(v29);
}

uint64_t sub_10003DA78()
{
  v0 = sub_10007B9A4(&qword_10026C8C0, &qword_1001EBD78);
  sub_100003D10(v0);

  return sub_10003DAE0();
}

uint64_t sub_10003DB1C()
{
  sub_100004768();
  sub_1000056A8();
  sub_100002D98();
  *v3 = v2;
  v4 = *v1;
  sub_100002D20();
  *v5 = v4;
  *(v6 + 40) = v0;

  if (v0)
  {
    sub_1000060D0();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {
    sub_100002D8C();

    return v10();
  }
}

uint64_t sub_10003DC34()
{
  sub_1000061B4();
  v2 = *v1;
  sub_100002D20();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 376) = v0;

  if (v0)
  {
    v4 = *(v2 + 256);

    v5 = sub_1001BDE40;
  }

  else
  {
    v4 = *(v2 + 256);

    v5 = sub_10003DD78;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10003DD78()
{
  sub_100004768();
  *(v0 + 384) = sub_10003DE18();
  sub_1000058A4(&unk_1001EBD60);
  v4 = v1;
  v2 = swift_task_alloc();
  *(v0 + 392) = v2;
  *v2 = v0;
  sub_10001CC4C(v2);

  return v4();
}

uint64_t sub_10003DE18()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchQoS.QoSClass();
  sub_100002CC4();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_100002DEC();
  v8 = v7 - v6;
  if (dispatch thunk of static DeviceInformation.deviceIsRunningInternalBuild()())
  {
    if (qword_100268840 != -1)
    {
      swift_once();
    }

    v9 = qword_100287938;
    sub_10007B9A4(&unk_100271F80, &unk_1001F1B60);
    v10 = [*(v1 + 168) BOOLForKey:v9];
    v11 = [v10 valuePromise];

    Promise<A>.init(_:)();
    sub_100003EFC();
    v15[3] = type metadata accessor for SyncTaskScheduler();
    v15[4] = &protocol witness table for SyncTaskScheduler;
    sub_100017E64(v15);
    SyncTaskScheduler.init()();
    Promise.map<A>(on:_:)();

    sub_100002C00(v15);
    sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
    (*(v4 + 104))(v8, enum case for DispatchQoS.QoSClass.default(_:), v2);
    v12 = static OS_dispatch_queue.global(qos:)();
    (*(v4 + 8))(v8, v2);
    v13 = sub_1000185A8(sub_1001BA1C4, 0, v12);
  }

  else
  {
    sub_10007B9A4(&qword_10026C8F0, &qword_1001EBDC0);
    LOBYTE(v15[0]) = 0;
    return Promise.__allocating_init(value:)();
  }

  return v13;
}

void sub_10003E0E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1000057A4();
  a21 = v23;
  a22 = v24;
  v26 = v25;
  v27 = [*&v22[OBJC_IVAR____TtC14amsengagementd10CascadeBag_primaryBag] BOOLForKey:v25];
  v28 = [v27 valuePromise];

  sub_100002FB8();
  v29 = swift_allocObject();
  *(v29 + 16) = v22;
  *(v29 + 24) = v26;
  sub_100006B40();
  sub_100005098();
  a11 = v30;
  a12 = &unk_100248108;
  _Block_copy(&a9);
  sub_10000BE48();
  v31 = v26;
  sub_1000048C8();
  v32 = sub_10000B7B8();
  v34 = [v32 v33];
  sub_10000831C();

  [objc_opt_self() bagValueWithKey:v26 valueType:1 valuePromise:v22];
  sub_100007470();
}

uint64_t sub_10003E208()
{
  sub_100002FB8();

  return _swift_deallocObject(v1);
}

uint64_t sub_10003E280()
{
  sub_100004768();
  swift_task_alloc();
  sub_100015B58();
  *(v0 + 24) = v1;
  *v1 = v2;
  v1[1] = sub_10003AFE8;
  sub_10000522C();
  sub_10000A724();

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v3);
}

uint64_t sub_10003E330(uint64_t a1, uint64_t a2)
{
  v28 = a2;
  v23 = a1;
  v3 = type metadata accessor for DispatchQoS.QoSClass();
  v26 = *(v3 - 8);
  v27 = v3;
  __chkstk_darwin(v3);
  v25 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10007B9A4(&qword_10026C8B8, &qword_1001EBD68);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v9 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v22 - v10;
  v12 = *(v6 + 16);
  v12(&v22 - v10, a1, v5);
  v13 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v24 = swift_allocObject();
  v14 = *(v6 + 32);
  v14(v24 + v13, v11, v5);
  v12(v9, v23, v5);
  v15 = swift_allocObject();
  v14(v15 + v13, v9, v5);
  v16 = sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  v18 = v25;
  v17 = v26;
  v19 = v27;
  (*(v26 + 104))(v25, enum case for DispatchQoS.QoSClass.default(_:), v27);
  v20 = static OS_dispatch_queue.global(qos:)();
  (*(v17 + 8))(v18, v19);
  v29[3] = v16;
  v29[4] = &protocol witness table for OS_dispatch_queue;
  v29[0] = v20;
  Promise.then(perform:orCatchError:on:)();

  return sub_100002C00(v29);
}

id sub_10003E640@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 BOOLValue];
  *a2 = result;
  return result;
}

uint64_t sub_10003E6C0(char *a1)
{
  v2 = sub_10007B9A4(&qword_10026C8B8, &qword_1001EBD68);
  sub_100003D10(v2);
  sub_1000F11BC();

  return sub_10003E77C(a1);
}

uint64_t sub_10003E784(uint64_t a1)
{
  sub_1001BF340();
  sub_100003D28();
  v4 = v3;
  v5 = *v2;
  sub_100002D20();
  *v6 = v5;
  *v6 = *v2;
  *(v5 + 400) = v1;

  if (v1)
  {
  }

  else
  {

    *(v5 + 460) = v4 & 1;
  }

  sub_1001BF32C();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10003E8D4()
{
  sub_100003D28();
  v1 = *(v0 + 256);
  v2 = v1[18];
  sub_100003CA8(v1 + 14, v1[17]);
  v6 = (*(v2 + 16) + **(v2 + 16));
  v3 = swift_task_alloc();
  *(v0 + 408) = v3;
  *v3 = v0;
  v3[1] = sub_10003F764;
  v4 = sub_1000077B0();

  return v6(v4);
}

uint64_t sub_10003E9F0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10003F674;

  return sub_10003EA7C();
}

uint64_t sub_10003EA94()
{
  sub_100003CA8(*(v0 + 40), *(*(v0 + 40) + 24));
  v1 = sub_10000A280();
  *(v0 + 48) = v2(v1);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *v3 = v0;
  v3[1] = sub_10003ECD8;

  return sub_10003EBB0();
}

id sub_10003EB78()
{
  v1 = [v0 ams_activeiTunesAccount];

  return v1;
}

uint64_t sub_10003EBB0()
{
  sub_100004768();
  v0[29] = v1;
  v2 = sub_10007B9A4(&qword_100269580, &unk_1001E6040);
  v0[30] = v2;
  sub_100002CFC(v2);
  v0[31] = v3;
  v0[32] = *(v4 + 64);
  v0[33] = swift_task_alloc();
  v0[34] = swift_task_alloc();
  v5 = type metadata accessor for AccountIdentity();
  v0[35] = v5;
  sub_100002CFC(v5);
  v0[36] = v6;
  v0[37] = swift_task_alloc();

  return _swift_task_switch(sub_10003EDD0, 0, 0);
}

uint64_t sub_10003ECD8()
{
  sub_100004768();
  sub_1000056A8();
  v2[2] = v0;
  v2[3] = v1;
  v2[4] = v3;
  v4 = *v0;
  sub_100002D20();
  *v5 = v4;
  *(v7 + 64) = v6;

  return _swift_task_switch(sub_10003F2AC, 0, 0);
}

uint64_t sub_10003EDD0()
{
  v1 = *(v0 + 232);
  if (v1)
  {
    v2 = v1;
    v3 = [v2 ams_accountID];
    *(v0 + 304) = v3;
    if (v3)
    {
      v4 = v3;
      AccountIdentity.init(amsAccountID:)();
      type metadata accessor for AccountCachedServerData();
      v5 = static AccountCachedServerData.shared.getter();
      AccountCachedServerData.stringSequence(forKey:accountID:)();

      if (qword_100268738 != -1)
      {
        sub_100004E84(&qword_100268738);
      }

      v6 = *(v0 + 232);
      *(v0 + 312) = qword_100287898;
      *(v0 + 320) = sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      v7 = type metadata accessor for LogInterpolation();
      sub_100002CFC(v7);
      *(v0 + 328) = *(v8 + 72);
      *(v0 + 376) = *(v9 + 80);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_1001E5F60;
      *(v0 + 40) = &unk_100246478;
      *(v0 + 16) = v6;
      v28 = v2;
      v11 = AMSLogKey();
      if (v11)
      {
        v12 = v11;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      v24 = *(v0 + 264);
      v25 = *(v0 + 272);
      v15 = *(v0 + 248);
      v23 = *(v0 + 240);
      v26 = *(v0 + 256);
      v27 = *(v0 + 232);
      static LogInterpolation.prefix(_:_:)();

      sub_100002C00((v0 + 16));
      *(v0 + 72) = &type metadata for String;
      sub_100002D0C();
      *(v0 + 48) = v16;
      sub_100008228();
      *(v0 + 56) = v17;
      static LogInterpolation.safe(_:)();
      sub_100009F5C(v0 + 48, &qword_10026D350, &qword_1001E6050);
      *(v0 + 104) = &type metadata for String;
      *(v0 + 80) = 0x676E697972657551;
      *(v0 + 88) = 0xEF6D616572747320;
      static LogInterpolation.safe(_:)();
      sub_100009F5C(v0 + 80, &qword_10026D350, &qword_1001E6050);
      v18 = static os_log_type_t.debug.getter();
      sub_1000036B0(v18, v10);

      (*(v15 + 16))(v24, v25, v23);
      v19 = (*(v15 + 80) + 16) & ~*(v15 + 80);
      v20 = swift_allocObject();
      *(v0 + 336) = v20;
      (*(v15 + 32))(v20 + v19, v24, v23);
      *(v20 + ((v26 + v19 + 7) & 0xFFFFFFFFFFFFFFF8)) = v27;
      v21 = v28;
      v22 = swift_task_alloc();
      *(v0 + 344) = v22;
      *v22 = v0;
      v22[1] = sub_10007F0E4;

      return sub_1001138B8(300000000000000000, 0, &unk_1001E6060, v20);
    }
  }

  sub_100007E4C();

  return v13(0, 0);
}

uint64_t sub_10003F210()
{
  sub_10007B9A4(&qword_100269580, &unk_1001E6040);
  sub_100002D30();
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v2);

  return _swift_deallocObject(v0);
}

uint64_t sub_10003F2AC()
{
  sub_100004768();
  v1 = *(v0 + 64);
  if (v1)
  {
    v2 = *(v0 + 24);
  }

  else
  {
    v2 = sub_10003F32C();
    v1 = v3;
  }

  sub_100007E4C();

  return v4(v2, v1);
}

unint64_t sub_10003F32C()
{
  v1 = sub_10007B9A4(&qword_100269510, &qword_1001E6000);
  __chkstk_darwin(v1 - 8);
  v3 = &v20[-v2];
  v4 = sub_10007B9A4(&qword_100269518, &qword_1001E6008);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20[-v6];
  v8 = sub_10007B9A4(&qword_100269520, &qword_1001E6010);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v20[-v10];
  v12 = v0[3];
  v13 = v0[4];
  sub_100003CA8(v0, v12);
  v14 = (*(v13 + 8))(v12, v13);
  if (!v14)
  {
    return 0;
  }

  v15 = sub_10018A15C(v14);
  v17 = v16;
  if (v16)
  {
    v18 = v15;
    sub_10007B9A4(&qword_100269528, &qword_1001E6018);
    sub_100006070(&qword_100269530, &qword_100269520, &qword_1001E6010, &protocol conformance descriptor for Regex<A>);
    Regex.init<A>(_:)();
    sub_10007EF00(v11, v18, v17);

    if (sub_100009F34(v3, 1, v4) != 1)
    {
      (*(v5 + 32))(v7, v3, v4);
      Regex.Match.output.getter();

      v17 = static String._fromSubstring(_:)();

      (*(v5 + 8))(v7, v4);
      (*(v9 + 8))(v11, v8);
      return v17;
    }

    (*(v9 + 8))(v11, v8);
    sub_100009F5C(v3, &qword_100269510, &qword_1001E6000);
    return 0;
  }

  return v17;
}

uint64_t sub_10003F674()
{
  sub_100004768();
  v2 = v1;
  v4 = v3;
  sub_1000056A8();
  v5 = *v0;
  sub_100002D20();
  *v6 = v5;

  sub_100007E4C();

  return v7(v4, v2);
}

uint64_t sub_10003F764()
{
  sub_100004768();
  sub_1000056A8();
  v1 = *v0;
  sub_100002D20();
  *v2 = v1;
  *(v5 + 416) = v3;
  *(v5 + 424) = v4;

  v6 = sub_1000047B0();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_10003F864()
{
  v1 = v0;
  v28 = *(v0 + 424);
  v26 = *(v0 + 416);
  v27 = *(v0 + 460);
  v2 = *(v0 + 352);
  v22 = v1[39];
  v23 = v1[40];
  v19 = v1[37];
  v20 = v1[36];
  v3 = v1[35];
  v21 = v1[34];
  v4 = v1[32];
  v17 = v1[30];
  v18 = v1[31];
  v24 = v1[28];
  v25 = v1[33];
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1001E5F60;
  v1[21] = v2;
  v1[18] = v4;

  static LogInterpolation.prefix(_:_:)();
  sub_100002C00(v1 + 18);
  v1[25] = &type metadata for String;
  v1[22] = 0xD000000000000033;
  v1[23] = 0x8000000100203DC0;
  static LogInterpolation.safe(_:)();
  sub_10000A00C((v1 + 22), &qword_10026D350, &qword_1001E6050);
  LogInterpolation.init(stringLiteral:)();
  v6 = static os_log_type_t.debug.getter();
  sub_1000036B0(v6, v5);

  sub_1000E0BFC(v17, v19, &unk_100271EA0, &qword_1001E77F0);
  sub_1000E0BFC(v18, v20, &unk_100271EA0, &qword_1001E77F0);
  v7 = *(v21 + 80);
  v8 = (v7 + 32) & ~v7;
  v9 = (v3 + v7 + v8) & ~v7;
  v10 = (v9 + v3 + 31) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_allocObject();
  *(v11 + 16) = v4;
  *(v11 + 24) = v24;
  sub_10003FD2C(v19, v11 + v8);
  sub_10003FD2C(v20, v11 + v9);
  v12 = v11 + ((v9 + v3 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v12 = v26;
  *(v12 + 8) = v28;
  *(v12 + 16) = v27;
  v13 = (v11 + v10);
  *v13 = v22;
  v13[1] = v23;
  *(v11 + ((v10 + 23) & 0xFFFFFFFFFFFFFFF8)) = v25;
  swift_retain_n();

  v1[54] = sub_1001B96F4(sub_10003BD24, v11, sub_1001BE920, v4);

  sub_1000058A4(&unk_1001EBD48);
  v29 = v14;
  v15 = swift_task_alloc();
  v1[55] = v15;
  *v15 = v1;
  sub_10001CC4C(v15);

  return v29();
}

uint64_t sub_10003FBA8()
{
  v1 = sub_10007B9A4(&unk_100271EA0, &qword_1001E77F0);
  sub_100002CFC(v1);
  v3 = *(v2 + 80);
  v5 = (v3 + 32) & ~v3;
  v6 = (*(v4 + 64) + v3 + v5) & ~v3;

  v7 = type metadata accessor for Date();
  if (!sub_100009F34(v0 + v5, 1, v7))
  {
    (*(*(v7 - 8) + 8))(v0 + v5, v7);
  }

  if (!sub_100009F34(v0 + v6, 1, v7))
  {
    (*(*(v7 - 8) + 8))(v0 + v6, v7);
  }

  return _swift_deallocObject(v0);
}

uint64_t sub_10003FD2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007B9A4(&unk_100271EA0, &qword_1001E77F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003FDB0()
{
  sub_100004768();
  v1 = swift_task_alloc();
  sub_100061DE4(v1);
  sub_10007B9A4(&qword_10026C8A8, &qword_1001EBD50);
  sub_10001CD6C();
  *v0 = v2;
  sub_100017EE4();
  sub_10000522C();
  v3 = sub_100004C68();

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v3);
}

uint64_t sub_10003FE60(uint64_t a1, uint64_t a2)
{
  v28 = a2;
  v23 = a1;
  v3 = type metadata accessor for DispatchQoS.QoSClass();
  v26 = *(v3 - 8);
  v27 = v3;
  __chkstk_darwin(v3);
  v25 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10007B9A4(&qword_10026C8B0, &qword_1001EBD58);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v9 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v22 - v10;
  v12 = *(v6 + 16);
  v12(&v22 - v10, a1, v5);
  v13 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v24 = swift_allocObject();
  v14 = *(v6 + 32);
  v14(v24 + v13, v11, v5);
  v12(v9, v23, v5);
  v15 = swift_allocObject();
  v14(v15 + v13, v9, v5);
  v16 = sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  v18 = v25;
  v17 = v26;
  v19 = v27;
  (*(v26 + 104))(v25, enum case for DispatchQoS.QoSClass.default(_:), v27);
  v20 = static OS_dispatch_queue.global(qos:)();
  (*(v17 + 8))(v18, v19);
  v29[3] = v16;
  v29[4] = &protocol witness table for OS_dispatch_queue;
  v29[0] = v20;
  Promise.then(perform:orCatchError:on:)();

  return sub_100002C00(v29);
}

uint64_t sub_100040188(uint64_t a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t))
{
  sub_100017C14();

  sub_1000179B4(v5, v5);
  sub_1000170D4();

  a3(v7, a1);
  Promise.resolve(_:)();

  swift_retain_n();
  sub_10001C50C();
}

uint64_t sub_1000404B8()
{
  sub_10007B9A4(&qword_10026AE90, &qword_1001E8640);
  result = Dictionary.init(dictionaryLiteral:)();
  qword_10026A3A0 = result;
  return result;
}

uint64_t sub_100040550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10004058C()
{
  sub_10007B9A4(&qword_100270E30, &qword_1001F02F0);
  swift_allocObject();
  result = DispatchSpecificKey.init()();
  qword_100287910 = result;
  return result;
}

uint64_t sub_1000405FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100040684(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for LogInterpolation.StringInterpolation();
  __chkstk_darwin(v3 - 8);
  if (qword_1002686B8 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  type metadata accessor for LogInterpolation();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001E5F70;
  v5 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  type metadata accessor for AppDatabase();
  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v6._countAndFlagsBits = 0xD00000000000002FLL;
  v6._object = 0x80000001001F4AB0;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v6);
  v19 = &type metadata for Int;
  v18[0] = a2;
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_10000A064(v18, &qword_10026D350, &qword_1001E6050);
  v7._countAndFlagsBits = 41;
  v7._object = 0xE100000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v7);
  LogInterpolation.init(stringInterpolation:)();
  v8 = static os_log_type_t.debug.getter();
  sub_1000036B0(v8, v4);

  result = 5;
  switch(a2)
  {
    case 0:
      result = sub_1000A6C80(7566955, 0xE300000000000000);
      if (!v16)
      {
        result = 1;
      }

      break;
    case 1:
      result = sub_1000A4F34();
      if (!v16)
      {
        sub_10009FE4C(0x746E65746E6F63, 0xE700000000000000);
        sub_1000A7698(0x656C756465686373, 0xE900000000000073);
        result = 2;
      }

      break;
    case 2:
      result = sub_10009FFB8(0x746E65746E6F63, 0xE700000000000000);
      if (!v16)
      {
        result = 3;
      }

      break;
    case 3:
      result = sub_1000A5100();
      if (!v16)
      {
        result = 4;
      }

      break;
    case 4:
      return result;
    case 5:
      result = sub_1000A9600(0x676F6C6B636162, 0xE700000000000000, 1701669236, 0xE400000000000000);
      if (!v16)
      {
        sub_1000A9600(0x746E65746E6F63, 0xE700000000000000, 0x69646F4D7473616CLL, 0xEC00000064656966);
        result = 6;
      }

      break;
    case 6:
      result = sub_1000A01BC(0x746E65746E6F63, 0xE700000000000000);
      if (!v16)
      {
        result = 7;
      }

      break;
    case 7:
      result = 8;
      break;
    case 8:
      v10._countAndFlagsBits = 0xD000000000000029;
      v10._object = 0x80000001001F4AE0;
      SQLDatabase.execute(sql:parameters:)(v10, _swiftEmptyArrayStorage);
      if (!v11)
      {
        sub_1000A4F34();
        sub_1000A5100();
        sub_1000A9600(0xD000000000000013, 0x80000001001F4B40, 1701669236, 0xE400000000000000);
        goto LABEL_11;
      }

      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1001E5F60;
      v13 = AMSSetLogKeyIfNeeded();
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      static LogInterpolation.prefix<A>(_:_:)();

      LogInterpolation.init(stringLiteral:)();
      swift_getErrorValue();
      v19 = v17;
      v14 = sub_100017E64(v18);
      (*(*(v17 - 1) + 16))(v14);
      static LogInterpolation.safe(_:)();
      sub_10000A064(v18, &qword_10026D350, &qword_1001E6050);
      v15 = static os_log_type_t.error.getter();
      sub_1000036B0(v15, v12);

      result = 9;
      break;
    case 9:
LABEL_11:
      result = 9;
      break;
    default:
      sub_1000A1AC4();
      swift_allocError();
      result = swift_willThrow();
      break;
  }

  return result;
}

void sub_100040D00()
{
  sub_100003D8C();
  if (*(v0 + 8))
  {
    sub_1000048BC();
    sub_10000A00C(v1, v2, v3);
    sub_10000821C();
    sub_1000AB6A4(v4);

    sub_1000048BC();
    sub_10000A00C(v5, v6, v7);
  }

  else
  {
    sub_100040DAC(v0, v22);
    swift_isUniquelyReferenced_nonNull_native();
    sub_10000631C();
    sub_100009DBC();
    sub_100040E1C(v8, v9, v10, v11);

    sub_10000A6E0(v12, v13, v14, v15, v16, v17, v18, v19, v20, v21);
  }
}

uint64_t sub_100040DAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007B9A4(&qword_10026AE90, &qword_1001E8640);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100040E1C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100012A94();
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_11;
  }

  v16 = v11;
  v17 = v12;
  sub_10007B9A4(&qword_10026AE98, &qword_1001E8648);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a4 & 1, v15))
  {
    goto LABEL_5;
  }

  v18 = sub_100012A94();
  if ((v17 & 1) != (v19 & 1))
  {
LABEL_11:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v16 = v18;
LABEL_5:
  v20 = *v5;
  if (v17)
  {
    return sub_100050008(a1, v20[7] + 8 * v16, &qword_10026AE90, &qword_1001E8640);
  }

  sub_100041380(v16, a2, a3, a1, v20);
}

uint64_t sub_100040F5C(uint64_t a1, uint64_t a2)
{
  v21 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v21 - 8);
  __chkstk_darwin(v21);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v22 = *(v5 - 8);
  v23 = v5;
  __chkstk_darwin(v5);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchTime();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v19 - v13;
  if (qword_100268618 != -1)
  {
    swift_once();
  }

  v19[1] = qword_10026A3A8;
  static DispatchTime.now()();
  + infix(_:_:)();
  v20 = *(v9 + 8);
  v20(v12, v8);
  sub_100011BAC(a1, v27);
  v15 = swift_allocObject();
  sub_100002C4C(v27, (v15 + 16));
  aBlock[4] = nullsub_1;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100005E50;
  aBlock[3] = &unk_100247350;
  v16 = _Block_copy(aBlock);
  static DispatchQoS.unspecified.getter();
  v25 = _swiftEmptyArrayStorage;
  sub_100005DC0(&qword_10026CD40, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10007B9A4(&unk_100270490, &unk_1001E74F0);
  sub_10001407C(&qword_10026CD50, &unk_100270490, &unk_1001E74F0);
  v17 = v21;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v16);
  (*(v24 + 8))(v4, v17);
  (*(v22 + 8))(v7, v23);
  v20(v14, v8);
}

uint64_t sub_100041348()
{
  sub_100002C00((v0 + 16));

  return _swift_deallocObject(v0);
}

uint64_t sub_100041380(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_100040DAC(a4, a5[7] + 8 * a1);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void *sub_100041404()
{
  if (*(v0 + 56))
  {
    v1 = *(v0 + 56);
  }

  else
  {
    v2 = *(v0 + 16);
    v3 = type metadata accessor for AppSchedulesTable();
    v1 = sub_100004B50(v3);
    v1[2] = v2;
    v1[3] = 0x656C756465686373;
    v1[4] = 0xE900000000000073;
    *(v0 + 56) = v1;
  }

  return v1;
}

uint64_t sub_1000414AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  v27 = a5;
  v7 = v5;
  _StringGuts.grow(_:)(25);

  sub_10000B754();
  v25 = v11;
  v26 = v10;
  String.append(_:)(*(v5 + 24));
  v12 = v25;
  v13 = v26;
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  v15 = *(v7 + 16);
  v16 = swift_allocObject();
  v16[2] = v14;
  v16[3] = v7;
  v16[4] = a1;
  v16[5] = a2;
  v19 = v15;
  v20 = v12;
  v21 = v13;
  v22 = _swiftEmptyArrayStorage;
  v23 = a4;
  v24 = v16;

  sub_100014A20(v27, v18);
}

uint64_t sub_100041634()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10004167C()
{
  v0 = AMSSetLogKeyIfNeeded();
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v1;
}

uint64_t sub_100041718(char a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *), uint64_t a5, uint64_t (*a6)(void), void (*a7)(uint64_t, char *), uint64_t (*a8)(void))
{
  v58 = a8;
  v59 = a4;
  v60 = a5;
  v61 = a7;
  v62 = a3;
  v63 = a2;
  v10 = a6(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v49 - v11;
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v20 = &v49 - v19;
  __chkstk_darwin(v18);
  v22 = &v49 - v21;
  sub_100004B94();
  sub_10000797C();
  v25 = sub_10001ADD4(v23, v24);
  if (v8)
  {
    return a1 & 1;
  }

  v27 = v26;
  v51 = v20;
  v52 = v17;
  v28 = v63;
  v54 = v14;
  v55 = v22;
  v53 = v12;
  v56 = v13;
  v57 = v25;
  sub_1000073D0();
  sub_10003A420(&v64);
  v50 = v27;
  v29 = v64;
  v30 = sub_100002F08();
  sub_100041D2C(v30, v31);
  v49 = *(&v29 + 1);
  if (*(&v29 + 1) >> 60 != 15)
  {
    v34 = v32;
    v35 = v49;
    sub_10003A5E0(v29, v49);
    sub_10003A638(6, &v64);
    if (v65)
    {
      sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
      v36 = swift_dynamicCast();
      sub_10003AE18(v29, v35);
      if (v36)
      {

        v37 = v66[0];
        if (v34)
        {
          v38 = v51;
          static Date.now.getter();
          Date.timeIntervalSinceReferenceDate.getter();
          v39 = v54;
          v40 = v56;
          (*(v54 + 8))(v38, v56);
        }

        else
        {
          v40 = v56;
          v39 = v54;
        }

        v45 = v53;
        v46 = v61;
        v47 = v55;
        v48 = v52;
        Date.init(timeIntervalSinceReferenceDate:)();
        (*(v39 + 16))(v48, v47, v40);
        v46(v37, v48);
        a1 = v59(v45);
        sub_10003AE18(v29, v49);
        sub_100042144(v45, v58);
        (*(v39 + 8))(v55, v56);
        return a1 & 1;
      }
    }

    else
    {
      sub_10003AE18(v29, v35);
      sub_100002C5C(&v64);
    }
  }

  sub_10000602C(v28 + 16, v66);
  if ((*(v28 + 16) & 1) == 0)
  {
    swift_beginAccess();
    *(v28 + 16) = 1;
    if (qword_1002686B8 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    type metadata accessor for LogInterpolation();
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_1001E5F70;
    v65 = type metadata accessor for AppSchedulesTable();
    *&v64 = v62;

    v42 = AMSLogKey();
    if (v42)
    {
      v43 = v42;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(&v64);
    LogInterpolation.init(stringLiteral:)();
    v44 = static os_log_type_t.error.getter();
    sub_1000036B0(v44, v41);
  }

  if (v50)
  {
    sub_1000A8D54(v57, v50);
    sub_10003AE18(v29, v49);
  }

  else
  {
    sub_10003AE18(v29, v49);
  }

  a1 = 1;
  return a1 & 1;
}

uint64_t sub_100041D4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v25 = type metadata accessor for Date();
  sub_100002CC4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_100002DEC();
  v10 = v9 - v8;
  v11 = type metadata accessor for ScheduleInfo.Metadata(0);
  v12 = sub_100003D10(v11);
  __chkstk_darwin(v12);
  sub_100002DEC();
  v15 = (v14 - v13);
  v16 = sub_100042030(a1);
  sub_1000438F4(7, v16, v27);
  if (v28)
  {
    sub_10007B9A4(&qword_10026CAD0, &unk_1001EE000);
    if (swift_dynamicCast())
    {
      v17 = v29;
      v19 = v25;
      v18 = a2;
      goto LABEL_6;
    }
  }

  else
  {
    sub_10000A00C(v27, &qword_10026D350, &qword_1001E6050);
  }

  v19 = v25;
  v18 = a2;
  v17 = _swiftEmptyArrayStorage;
LABEL_6:
  *a3 = v17;
  (*(v6 + 16))(v10, v18, v19);
  sub_100043920(a1, v10, v15);
  if (v24)
  {
    (*(v6 + 8))(v18, v19);
  }

  v21 = type metadata accessor for ScheduleInfo(0);
  sub_1000420E0(v15, a3 + *(v21 + 20));
  sub_1000438F4(12, v16, v27);

  if (!v28)
  {
    (*(v6 + 8))(a2, v25);
    result = sub_10000A00C(v27, &qword_10026D350, &qword_1001E6050);
LABEL_13:
    v23 = 0;
    goto LABEL_14;
  }

  sub_100002BC0(0, &qword_10026AF10, NSNumber_ptr);
  sub_100005AD8();
  if ((swift_dynamicCast() & 1) == 0)
  {
    result = (*(v6 + 8))(a2, v25);
    goto LABEL_13;
  }

  v22 = v29;
  v23 = [v29 BOOLValue];

  result = (*(v6 + 8))(a2, v25);
LABEL_14:
  *(a3 + *(v21 + 24)) = v23;
  return result;
}

unint64_t sub_100042038()
{
  result = qword_10026AF70;
  if (!qword_10026AF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026AF70);
  }

  return result;
}

uint64_t sub_100042090(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_1000050D4(a1, a2, a3, a4);
  sub_100002DDC();
  (*(v6 + 32))(v4, v5);
  return v4;
}

uint64_t sub_1000420E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScheduleInfo.Metadata(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100042144(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_1000421C8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UniversalLinksService();
  return objc_msgSendSuper2(&v2, "init");
}

char *sub_1000421FC(void *a1)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  v5 = objc_allocWithZone(type metadata accessor for XPCServiceProvider());
  v6 = sub_100045498(v2, v4);
  v7 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL___AMSUniversalLinksServiceProtocol];
  v8 = *&v6[OBJC_IVAR____TtC14amsengagementd18XPCServiceProvider_exportedInterface];
  *&v6[OBJC_IVAR____TtC14amsengagementd18XPCServiceProvider_exportedInterface] = v7;

  v12[3] = swift_getObjectType();
  v12[0] = a1;
  v9 = OBJC_IVAR____TtC14amsengagementd18XPCServiceProvider_exportedObject;
  swift_beginAccess();
  v10 = a1;
  sub_10001D2C8(v12, &v6[v9]);
  swift_endAccess();
  return v6;
}

char *sub_1000422F8(void *a1)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  v5 = objc_allocWithZone(type metadata accessor for XPCServiceProvider());
  v6 = sub_100045498(v2, v4);
  v7 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL___AMSServerDataCacheServiceProtocol];
  sub_100047120();
  [v7 setClass:swift_getObjCClassFromMetadata() forSelector:"setUpCacheForAccount:completion:" argumentIndex:0 ofReply:0];
  v8 = *&v6[OBJC_IVAR____TtC14amsengagementd18XPCServiceProvider_exportedInterface];
  *&v6[OBJC_IVAR____TtC14amsengagementd18XPCServiceProvider_exportedInterface] = v7;

  v12[3] = swift_getObjectType();
  v12[0] = a1;
  v9 = OBJC_IVAR____TtC14amsengagementd18XPCServiceProvider_exportedObject;
  swift_beginAccess();
  v10 = a1;
  sub_10001D2C8(v12, &v6[v9]);
  swift_endAccess();
  return v6;
}

unint64_t sub_100042428()
{
  result = qword_10026CFE0;
  if (!qword_10026CFE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10026CFE0);
  }

  return result;
}

uint64_t type metadata accessor for MediaCatalogSyncActor(uint64_t a1)
{
  result = qword_100269970;
  if (!qword_100269970)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for MediaCatalogSyncState(uint64_t a1)
{
  result = qword_10026C648;
  if (!qword_10026C648)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100042504(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for MediaCatalogSyncPageMetadata(uint64_t a1)
{
  result = qword_10026BE40;
  if (!qword_10026BE40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1000425B4()
{
  result = qword_100269BF8;
  if (!qword_100269BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269BF8);
  }

  return result;
}

char *sub_100042608(uint64_t a1)
{
  v2 = objc_allocWithZone(type metadata accessor for XPCServiceProvider());
  v3 = sub_100045498(0xD000000000000021, 0x80000001001F4750);
  v4 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL___AMSMediaCatalogSyncServiceProtocol];
  v5 = *&v3[OBJC_IVAR____TtC14amsengagementd18XPCServiceProvider_exportedInterface];
  *&v3[OBJC_IVAR____TtC14amsengagementd18XPCServiceProvider_exportedInterface] = v4;

  v8[3] = swift_getObjectType();
  v8[0] = a1;
  v6 = OBJC_IVAR____TtC14amsengagementd18XPCServiceProvider_exportedObject;
  swift_beginAccess();

  sub_10001D2C8(v8, &v3[v6]);
  swift_endAccess();
  return v3;
}

id sub_100042708()
{
  result = sub_100042728();
  qword_100287930 = result;
  return result;
}

id sub_100042728()
{
  v0 = type metadata accessor for URL.DirectoryHint();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10007B9A4(&unk_10026FEE0, &unk_1001E67C0);
  __chkstk_darwin(v4 - 8);
  v6 = &v41 - v5;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v42 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v41 - v12;
  __chkstk_darwin(v11);
  v15 = &v41 - v14;
  v16 = [objc_opt_self() ams_sharedAccountStore];
  v47[3] = sub_100002BC0(0, &unk_100271F90, ACAccountStore_ptr);
  v47[4] = &off_100246688;
  v47[0] = v16;
  sub_100002BC0(0, &qword_10026CFE0, AMSBag_ptr);
  v17 = sub_10002411C(0x6761676E45534D41, 0xED0000746E656D65, 49, 0xE100000000000000);
  type metadata accessor for DynamicUICache();
  v18 = sub_100047910();
  v43 = v15;
  if (v18)
  {
    v19 = v18;
    v41 = v13;
    sub_10007B9A4(&qword_100271FA8, &unk_1001F1B70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1001E5F70;
    if (qword_100268840 != -1)
    {
      swift_once();
    }

    v21 = qword_100287938;
    *(inited + 32) = qword_100287938;
    v22 = qword_100268848;
    v23 = v21;
    if (v22 != -1)
    {
      swift_once();
    }

    v24 = qword_100287940;
    *(inited + 40) = qword_100287940;
    v25 = v24;
    v26 = sub_1001C9EBC(inited);
    v27 = type metadata accessor for CascadeBag();
    v28 = objc_allocWithZone(v27);
    *&v28[OBJC_IVAR____TtC14amsengagementd10CascadeBag_primaryBag] = v19;
    *&v28[OBJC_IVAR____TtC14amsengagementd10CascadeBag_secondaryBag] = v17;
    *&v28[OBJC_IVAR____TtC14amsengagementd10CascadeBag_optionalKeys] = v26;
    v44.receiver = v28;
    v44.super_class = v27;
    v17 = objc_msgSendSuper2(&v44, "init");
    v13 = v41;
    v15 = v43;
  }

  sub_10001E8B8();
  if (sub_100009F34(v6, 1, v7) == 1)
  {
    sub_10001DCD4();
    if (sub_100009F34(v6, 1, v7) != 1)
    {
      sub_10000A00C(v6, &unk_10026FEE0, &unk_1001E67C0);
    }
  }

  else
  {
    (*(v8 + 32))(v15, v6, v7);
  }

  v46[0] = 0x6E656D7461657274;
  v46[1] = 0xEA00000000007374;
  (*(v1 + 104))(v3, enum case for URL.DirectoryHint.inferFromPath(_:), v0);
  sub_10001ECE0();
  URL.appending<A>(path:directoryHint:)();
  (*(v1 + 8))(v3, v0);
  v29 = objc_opt_self();
  swift_unknownObjectRetain();
  v30 = [v29 defaultSession];
  v31 = String._bridgeToObjectiveC()();
  type metadata accessor for TreatmentsConfigurationProvider();
  swift_allocObject();
  v32 = sub_100045E58(v17, v31, v30);
  v33 = v42;
  (*(v8 + 16))(v42, v13, v7);
  type metadata accessor for TreatmentsStorage(0);
  swift_allocObject();
  v34 = sub_100045F30(v33);
  v35 = type metadata accessor for DeviceDetails();
  v36 = type metadata accessor for TreatmentStoreService();
  v37 = swift_allocObject();
  v46[3] = &unk_100246328;
  v46[4] = &off_100246340;
  v46[0] = swift_allocObject();
  sub_10003B164(v47, v46[0] + 16);
  swift_defaultActor_initialize();
  *(v37 + 208) = 0;
  sub_1000262E4(v46, v37 + 112);
  *(v37 + 152) = 0x404E000000000000;
  *(v37 + 160) = 0;
  *(v37 + 168) = v17;
  *(v37 + 176) = v32;
  *(v37 + 184) = v35;
  *(v37 + 192) = &protocol witness table for DeviceDetails;
  *(v37 + 200) = v34;
  v45.receiver = v37;
  v45.super_class = v36;
  v38 = objc_msgSendSuper2(&v45, "init");
  v39 = *(v8 + 8);
  v39(v13, v7);
  v39(v43, v7);
  sub_100002C00(v46);
  sub_1000461E8(v47);
  return v38;
}

uint64_t sub_100042D74()
{
  sub_100002C00((v0 + 16));

  return _swift_deallocObject(v0);
}

uint64_t sub_100042DAC()
{
  sub_10007B9A4(&unk_10026FEC0, &qword_1001E6280);
  sub_100004E78();
  __chkstk_darwin(v1);
  sub_10000619C(v0 + 32, v8);
  sub_10007B9A4(&qword_100269838, &qword_1001E62D0);
  Dictionary._Variant.removeAll(keepingCapacity:)(0);
  swift_endAccess();
  sub_10000619C(v0 + 40, v8);
  sub_10007B9A4(&qword_100269840, &qword_1001E62D8);
  Dictionary._Variant.removeAll(keepingCapacity:)(0);
  swift_endAccess();
  sub_10000619C(v0 + 48, v8);
  sub_10007B9A4(&qword_100269848, &qword_1001E62E0);
  Dictionary._Variant.removeAll(keepingCapacity:)(0);
  swift_endAccess();
  sub_10000619C(v0 + 56, v8);
  sub_10007B9A4(&qword_100269850, &qword_1001E62E8);
  Dictionary._Variant.removeAll(keepingCapacity:)(0);
  swift_endAccess();
  type metadata accessor for TaskPriority();
  sub_100004798();
  sub_10000A7C0(v2, v3, v4, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v0;

  sub_100009DC8();
  sub_1000E349C();
}

id sub_100042F6C()
{
  result = [objc_allocWithZone(type metadata accessor for NotificationObserver()) init];
  qword_10026FC90 = result;
  return result;
}

uint64_t sub_100042F9C(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1001C7454(v7 + 1);
      goto LABEL_10;
    }

    if (v8 <= v7)
    {
      sub_1001C9594(v7 + 1);
LABEL_10:
      v13 = *v3;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      String.hash(into:)();
      v14 = Hasher._finalize()();

      v15 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v14 & v15;
        if (((*(v13 + 56 + (((v14 & v15) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v14 & v15)) & 1) == 0)
        {
          goto LABEL_7;
        }

        type metadata accessor for AMSAccountMediaType(0);
        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;
        if (v16 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v18 == v19)
        {
          goto LABEL_19;
        }

        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v21)
        {
          goto LABEL_20;
        }

        v14 = a2 + 1;
      }
    }

    result = sub_1001C8BF0();
  }

LABEL_7:
  v9 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v9 + 48) + 8 * a2) = v6;
  v10 = *(v9 + 16);
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
LABEL_19:

LABEL_20:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v9 + 16) = v12;
  }

  return result;
}

uint64_t *sub_10004316C(uint64_t a1, void *a2, void *a3, uint64_t (*a4)(uint64_t, id), uint64_t (*a5)(uint64_t, id))
{
  result = sub_100003CA8((a1 + 32), *(a1 + 56));
  v8 = *result;
  if (a3)
  {
    v9 = a3;
    v10 = v8;
    v11 = a4;

    return v11(v10, v9);
  }

  if (a2)
  {
    v9 = a2;
    v10 = v8;
    v11 = a5;

    return v11(v10, v9);
  }

  __break(1u);
  return result;
}

uint64_t sub_10004323C()
{
  sub_100002D98();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 224) = v4;
  if (v4)
  {
    swift_setDeallocating();
    sub_1001A6548();
    v5 = sub_100080C54;
  }

  else
  {
    v5 = sub_10004900C;
  }

  return _swift_task_switch(v5, 0, 0);
}

void *sub_100043358(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    result = specialized ContiguousArray.reserveCapacity(_:)();
    if (v2 < 0)
    {
      __break(1u);
    }

    else
    {
      v4 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v5 = *(a1 + 8 * v4 + 32);
        }

        ++v4;
        sub_100047120();
        sub_10007B9A4(&qword_10026DAF0, &qword_1001ED098);
        swift_dynamicCast();
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      while (v2 != v4);
      return _swiftEmptyArrayStorage;
    }
  }

  return result;
}

void sub_1000434A0()
{
  v1 = *(v0 + 128);
  v2 = -1;
  v3 = -1 << *(v1 + 32);
  if (-v3 < 64)
  {
    v2 = ~(-1 << -v3);
  }

  v4 = v2 & *(v1 + 64);
  v5 = (63 - v3) >> 6;

  v6 = 0;
  if (v4)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v7 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v7 >= v5)
    {

      v9 = sub_100049574(_swiftEmptyArrayStorage);
      for (i = 0; v9 != i; ++i)
      {
        if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
        {
          v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (i >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_25;
          }

          v11 = _swiftEmptyArrayStorage[i + 4];
        }

        v12 = v11;
        if (__OFADD__(i, 1))
        {
          goto LABEL_24;
        }

        sub_100049578(v11);
      }

      sub_100002D8C();

      v13();
      return;
    }

    v4 = *(v1 + 64 + 8 * v7);
    ++v6;
    if (v4)
    {
      v6 = v7;
      do
      {
LABEL_8:
        v8 = *(*(v1 + 56) + ((v6 << 9) | (8 * __clz(__rbit64(v4)))));
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        v4 &= v4 - 1;
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      while (v4);
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
}

void sub_1000436A4()
{
  sub_10001CB6C();
  v2 = v1;
  v4 = v3;
  sub_10000B330();
  sub_100012A94();
  if (v5)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10000AB58();
    v8 = *(v7 + 24);
    sub_10007B9A4(v4, v2);
    sub_100004BA8();
    _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v8);
    sub_10005ADA4();
    sub_100009DBC();
    sub_100002BC0(v9, v10, v11);
    sub_100002FD8();
    _NativeDictionary._delete(at:)();
    *v0 = v2;
  }

  sub_100006778();
}

uint64_t sub_100043764()
{
  v0 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  sub_100048C6C(v0, qword_10026F3E0);
  sub_100048CD0(v0, qword_10026F3E0);
  return static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)();
}

uint64_t sub_1000437B4(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100002BC0(255, a2, a3);
    sub_100003E78();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1000437F4(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 48))
  {
    v3 = *(v2 + 48);
  }

  else
  {
    v4 = *(v2 + 40);
    if (v4)
    {
      v3 = *(v2 + 40);
    }

    else
    {
      v5 = [objc_allocWithZone(AMSCloudDataContainerOptions) init];
      [v5 setRecordZoneEncryption:1];
      v6 = *(v2 + 72);
      v7 = String._bridgeToObjectiveC()();
      v8 = sub_100029420();
      v3 = [v8 v9];

      v4 = 0;
    }

    *(v2 + 48) = v3;
    v10 = v4;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v3;
}

uint64_t sub_100043920@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void)@<X8>)
{
  v142 = a2;
  v141 = type metadata accessor for TimeZone();
  sub_100002CC4();
  v139 = v5;
  __chkstk_darwin(v6);
  sub_100002DEC();
  v137 = v8 - v7;
  v9 = sub_10007B9A4(&qword_10026B530, &unk_1001EFCD0);
  v10 = sub_100003D10(v9);
  __chkstk_darwin(v10);
  sub_1000056E8();
  v138 = v11 - v12;
  sub_100003F08();
  __chkstk_darwin(v13);
  v136 = &v134 - v14;
  sub_100003F08();
  __chkstk_darwin(v15);
  v17 = &v134 - v16;
  v18 = type metadata accessor for Date();
  sub_100002CC4();
  v144 = v19;
  __chkstk_darwin(v20);
  sub_100002DEC();
  v23 = v22 - v21;
  v24 = sub_10007B9A4(&unk_100271EA0, &qword_1001E77F0);
  v25 = sub_100003D10(v24);
  __chkstk_darwin(v25);
  sub_1000056E8();
  v28 = v26 - v27;
  v30 = __chkstk_darwin(v29);
  v32 = &v134 - v31;
  __chkstk_darwin(v30);
  v143 = (&v134 - v33);
  v34 = sub_100042030(a1);

  sub_1000438F4(0, v34, &v146);
  if (v147)
  {
    if (sub_10000BB8C(v35, v36, v37, &type metadata for String))
    {
      v38 = v145;
      goto LABEL_6;
    }
  }

  else
  {
    sub_10000A00C(&v146, &qword_10026D350, &qword_1001E6050);
  }

  v38._countAndFlagsBits = sub_10000B870();
LABEL_6:
  v39 = sub_1000116D0(v38);
  if (v39 == 4)
  {
    sub_100191B7C();
    swift_allocError();
    *v40 = 7368801;
    *(v40 + 8) = 0xE300000000000000;
    sub_1000438F4(0, v34, (v40 + 16));

    swift_willThrow();
    return (*(v144 + 8))(v142, v18);
  }

  *a3 = v39;
  sub_100004798();
  sub_10000A7C0(v42, v43, v44, v18);
  sub_1000438F4(2, v34, &v146);
  v140 = a3;
  if (v147)
  {
    v45 = sub_100002BC0(0, &qword_10026AF10, NSNumber_ptr);
    if (sub_1000034D8(v45))
    {
      countAndFlagsBits = v145._countAndFlagsBits;
      [v145._countAndFlagsBits doubleValue];
      Date.init(timeIntervalSinceReferenceDate:)();

      v47 = v17;
      v48 = v143;
      sub_10000A00C(v143, &unk_100271EA0, &qword_1001E77F0);
      sub_10000A7C0(v32, 0, 1, v18);
      v49 = v48;
      v17 = v47;
      a3 = v140;
      sub_100042090(v32, v49, &unk_100271EA0, &qword_1001E77F0);
    }
  }

  else
  {
    sub_10000A00C(&v146, &qword_10026D350, &qword_1001E6050);
  }

  v50 = v142;
  sub_10003AF98(v143, v28, &unk_100271EA0, &qword_1001E77F0);
  v51 = sub_100005FE8();
  if (sub_100009F34(v51, v52, v18) == 1)
  {
    (*(v144 + 16))(v23, v50, v18);
    v53 = sub_100005FE8();
    if (sub_100009F34(v53, v54, v18) != 1)
    {
      sub_10000A00C(v28, &unk_100271EA0, &qword_1001E77F0);
    }
  }

  else
  {
    (*(v144 + 32))(v23, v28, v18);
  }

  v55 = type metadata accessor for ScheduleInfo.Metadata(0);
  v56 = *(v144 + 32);
  v135 = v55[6];
  v56(a3 + v135, v23, v18);
  sub_1000438F4(4, v34, &v146);
  if (v147)
  {
    v57 = sub_100002BC0(0, &qword_10026AF10, NSNumber_ptr);
    if (sub_1000034D8(v57))
    {
      goto LABEL_22;
    }
  }

  else
  {
    sub_10000A00C(&v146, &qword_10026D350, &qword_1001E6050);
  }

  sub_1000438F4(6, v34, &v146);
  if (v147)
  {
    v58 = sub_100002BC0(0, &qword_10026AF10, NSNumber_ptr);
    if (sub_1000034D8(v58))
    {
LABEL_22:
      v59 = v145._countAndFlagsBits;
      v60 = v55[8];
      [v145._countAndFlagsBits doubleValue];
      Date.init(timeIntervalSinceReferenceDate:)();

      v61 = a3 + v60;
      v62 = 0;
      goto LABEL_25;
    }
  }

  else
  {
    sub_10000A00C(&v146, &qword_10026D350, &qword_1001E6050);
  }

  v61 = a3 + v55[8];
  v62 = 1;
LABEL_25:
  sub_10000A7C0(v61, v62, 1, v18);
  sub_1000438F4(8, v34, &v146);
  if (!v147)
  {
    v77 = v55;
    sub_10000A00C(&v146, &qword_10026D350, &qword_1001E6050);
LABEL_32:
    sub_100191B7C();
    swift_allocError();
    sub_100004DC8();
    *v78 = v79;
    *(v78 + 8) = v80;
    sub_1000438F4(8, v34, (v78 + 16));

    swift_willThrow();
    v81 = sub_100012DCC();
    a3(v81);
    v82 = 0;
    goto LABEL_33;
  }

  if ((sub_10000BB8C(v63, v64, v65, &type metadata for String) & 1) == 0)
  {
    v77 = v55;
    goto LABEL_32;
  }

  object = v145._object;
  v67 = (a3 + v55[11]);
  *v67 = v145._countAndFlagsBits;
  v67[1] = object;
  sub_100004798();
  sub_10000A7C0(v68, v69, v70, v141);
  sub_1000438F4(11, v34, &v146);
  v134 = v55;
  if (v147)
  {
    v71 = sub_100002BC0(0, &qword_10026AF10, NSNumber_ptr);
    if (sub_1000034D8(v71))
    {
      v72 = v145._countAndFlagsBits;
      [v145._countAndFlagsBits integerValue];
      v73 = v136;
      TimeZone.init(secondsFromGMT:)();

      sub_10000AA90();
      sub_10000A00C(v74, v75, v76);
      sub_100042090(v73, v17, &qword_10026B530, &unk_1001EFCD0);
    }
  }

  else
  {
    sub_10000A00C(&v146, &qword_10026D350, &qword_1001E6050);
  }

  v136 = v17;
  v90 = v17;
  v91 = v138;
  sub_10003AF98(v90, v138, &qword_10026B530, &unk_1001EFCD0);
  v92 = v141;
  if (sub_100009F34(v91, 1, v141) == 1)
  {
    sub_10000A00C(v91, &qword_10026B530, &unk_1001EFCD0);
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    type metadata accessor for LogInterpolation();
    v93 = swift_allocObject();
    *(v93 + 16) = xmmword_1001E5F70;
    v94 = AMSSetLogKeyIfNeeded();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v95 = v134;
    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.init(stringLiteral:)();
    if (qword_1002686B0 != -1)
    {
      sub_100006914();
      swift_once();
    }

    v96 = static os_log_type_t.error.getter();
    sub_1000036B0(v96, v93);

    a3 = v140;
    static TimeZone.current.getter();
  }

  else
  {
    v97 = *(v139 + 32);
    v98 = v91;
    v99 = v137;
    v97(v137, v98, v92);
    v100 = v92;
    v95 = v134;
    v97(a3 + v134[12], v99, v100);
  }

  sub_1000438F4(10, v34, &v146);
  if (v147)
  {
    if (sub_10000BB8C(v101, v102, v103, &type metadata for String))
    {
      v104 = v145;
      goto LABEL_46;
    }
  }

  else
  {
    sub_10000A00C(&v146, &qword_10026D350, &qword_1001E6050);
  }

  v104._countAndFlagsBits = sub_10000B870();
LABEL_46:
  v105 = sub_10004EF8C(v104);
  if (v105 != 3)
  {
    *(a3 + v95[13]) = v105;
    sub_1000438F4(1, v34, &v146);
    if (v147)
    {
      v108 = sub_100002BC0(0, &qword_10026AF10, NSNumber_ptr);
      if (sub_1000034D8(v108))
      {
        v109 = v145._countAndFlagsBits;
        v110 = [v145._countAndFlagsBits BOOLValue];

        goto LABEL_53;
      }
    }

    else
    {
      sub_10000A00C(&v146, &qword_10026D350, &qword_1001E6050);
    }

    v110 = 1;
LABEL_53:
    *(v140 + 1) = v110;
    sub_1000438F4(3, v34, &v146);
    if (v147)
    {
      if (sub_10000BB8C(v111, v112, v113, &type metadata for String))
      {
        v114 = v145;
        goto LABEL_58;
      }
    }

    else
    {
      sub_10000A00C(&v146, &qword_10026D350, &qword_1001E6050);
    }

    v114._countAndFlagsBits = sub_10000B870();
LABEL_58:
    v115 = sub_10001FC50(v114);
    if (v115 == 4)
    {
      v116 = 0;
    }

    else
    {
      v116 = v115;
    }

    *(v140 + v95[7]) = v116;
    sub_1000438F4(5, v34, &v146);
    if (v147)
    {
      v117 = sub_100002BC0(0, &qword_10026AF10, NSNumber_ptr);
      if (sub_1000034D8(v117))
      {
        v118 = v145._countAndFlagsBits;
        v119 = [v145._countAndFlagsBits BOOLValue];

        goto LABEL_66;
      }
    }

    else
    {
      sub_10000A00C(&v146, &qword_10026D350, &qword_1001E6050);
    }

    v119 = 0;
LABEL_66:
    v120 = v140;
    *(v140 + v95[9]) = v119;
    sub_1000438F4(9, v34, &v146);

    if (v147)
    {
      v121 = sub_100002BC0(0, &qword_10026AF10, NSNumber_ptr);
      if (sub_1000034D8(v121))
      {
        v122 = v145._countAndFlagsBits;
        [v145._countAndFlagsBits doubleValue];
        v124 = v123;

        v125 = sub_10000A500();
        v126(v125);
        sub_10000A00C(v136, &qword_10026B530, &unk_1001EFCD0);
        result = sub_10000A00C(v143, &unk_100271EA0, &qword_1001E77F0);
LABEL_72:
        *(v120 + v95[10]) = v124;
        return result;
      }

      v132 = sub_10000A500();
      v133(v132);
      sub_10000A00C(v136, &qword_10026B530, &unk_1001EFCD0);
      v129 = &unk_100271EA0;
      v130 = &qword_1001E77F0;
      v131 = v143;
    }

    else
    {
      v127 = sub_10000A500();
      v128(v127);
      sub_10000A00C(v136, &qword_10026B530, &unk_1001EFCD0);
      sub_10000A00C(v143, &unk_100271EA0, &qword_1001E77F0);
      v129 = &qword_10026D350;
      v130 = &qword_1001E6050;
      v131 = &v146;
    }

    result = sub_10000A00C(v131, v129, v130);
    v124 = 0;
    goto LABEL_72;
  }

  v77 = v95;
  sub_100191B7C();
  swift_allocError();
  *v106 = 1701869940;
  *(v106 + 8) = 0xE400000000000000;
  sub_1000438F4(10, v34, (v106 + 16));

  swift_willThrow();
  v107 = sub_100012DCC();
  a3(v107);
  sub_10000A00C(v136, &qword_10026B530, &unk_1001EFCD0);
  v82 = 1;
LABEL_33:
  sub_10000AA90();
  sub_10000A00C(v83, v84, v85);
  v86 = v140;
  (a3)(v140 + v135, v18);
  sub_10000AA90();
  result = sub_10000A00C(v87, v88, v89);
  if (v82)
  {

    return (*(v139 + 8))(&v86[v77[12]], v141);
  }

  return result;
}

uint64_t sub_100044688(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v38 = a4;
  v34 = a3;
  v6 = type metadata accessor for ScheduleInfo(0);
  v36 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v37 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v7 + 20);
  v35 = a1;
  v10 = a1 + v9;
  v33 = type metadata accessor for ScheduleInfo.Metadata(0);
  v11 = (v10 + *(v33 + 44));
  v12 = *v11;
  v13 = v11[1];
  v39 = *v11;
  v40 = v13;
  v43 = 0xD000000000000019;
  v44 = 0x80000001001FCF60;
  v41 = 0;
  v42 = 0xE000000000000000;
  sub_10001ECE0();

  v39 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v40 = v14;
  v15 = 0xE900000000000073;
  v16 = 0x636974796C616E61;
  switch(a2)
  {
    case 1:
      v15 = 0xE800000000000000;
      v16 = 0x6C616E7265746E69;
      break;
    case 2:
      v15 = 0xE800000000000000;
      v16 = 0x7379656E72756F6ALL;
      break;
    case 3:
      v15 = 0xEF736E6F69746164;
      v16 = 0x6E656D6D6F636572;
      break;
    default:
      break;
  }

  v43 = v16;
  v44 = v15;

  v17._countAndFlagsBits = 95;
  v17._object = 0xE100000000000000;
  String.append(_:)(v17);

  v41 = 0;
  v42 = 0xE000000000000000;
  v18 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v20 = v19;

  v21 = v12 == v18 && v13 == v20;
  if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
  }

  else
  {
    sub_1001CF380();
    v22 = v34;
    swift_beginAccess();
    sub_1000EF5A0();
    v23 = *(*(v22 + 16) + 16);
    sub_1000EF6A4(v23);
    v24 = *(v22 + 16);
    *(v24 + 16) = v23 + 1;
    v25 = v24 + 16 * v23;
    *(v25 + 32) = v12;
    *(v25 + 40) = v13;
    *(v22 + 16) = v24;
    swift_endAccess();
    v26 = v37;
    sub_1000A9424(v35, v37);
    v27 = (v26 + *(v6 + 20) + *(v33 + 44));

    *v27 = v18;
    v27[1] = v20;
    v28 = v38;
    swift_beginAccess();
    sub_1000EF5B8();
    v29 = *(*(v28 + 16) + 16);
    sub_1000EF6BC(v29);
    v30 = *(v28 + 16);
    *(v30 + 16) = v29 + 1;
    sub_1000A9424(v26, v30 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v29);
    *(v28 + 16) = v30;
    swift_endAccess();
    sub_1000A1B7C(v26);
  }

  return 1;
}

uint64_t sub_100044A6C()
{
  v64 = type metadata accessor for URL();
  sub_100002CC4();
  v1 = v0;
  v3 = __chkstk_darwin(v2);
  v63 = (v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v3);
  v6 = v46 - v5;
  v7 = objc_opt_self();
  v8 = 0;
  v58 = (v1 + 16);
  v59 = "com.apple.AMSEngagementDatabase";
  v46[3] = NSFileProtectionCompleteUntilFirstUserAuthentication;
  v46[2] = NSFileProtectionCompleteUnlessOpen;
  v46[1] = NSFileProtectionComplete;
  v57 = NSFileProtectionNone;
  v48 = 0x80000001001F4BD0;
  v61 = xmmword_1001E5F60;
  v60 = v1 + 8;
  v47 = v7;
  while (1)
  {
    v9 = *(&off_100244638 + v8 + 32);
    sub_10001F0D0(1, *(&off_100244638 + v8 + 32), 1, v6);
    v10 = [v7 defaultManager];
    URL.path.getter();
    v11 = String._bridgeToObjectiveC()();

    v12 = [v10 fileExistsAtPath:v11];

    if (v12)
    {
      break;
    }

    v28 = sub_100023CB0();
    result = v29(v28);
LABEL_13:
    if (++v8 == 4)
    {
      return result;
    }
  }

  v62 = 0;
  if (qword_1002686B8 != -1)
  {
    sub_100004FFC();
    swift_once();
  }

  v13 = qword_100287818;
  v14 = sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v15 = *(type metadata accessor for LogInterpolation() - 8);
  v16 = *(v15 + 72);
  v17 = *(v15 + 80);
  v18 = (v17 + 32) & ~v17;
  v50 = 3 * v16;
  v51 = v17;
  v53 = v14;
  v19 = swift_allocObject();
  *(v19 + 16) = v61;
  v52 = v18;
  v20 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v49 = type metadata accessor for AppDatabase();
  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.init(stringLiteral:)();
  v54 = 2 * v16;
  v21 = v64;
  v68 = v64;
  v55 = v16;
  v22 = sub_100017E64(v67);
  v23 = *v58;
  (*v58)(v22, v6, v21);
  static LogInterpolation.safe(_:)();
  sub_10000A064(v67, &qword_10026D350, &qword_1001E6050);
  v24 = static os_log_type_t.default.getter();
  v56 = v13;
  sub_1000036B0(v24, v19);

  v23(v63, v6, v21);
  v25 = v57;
  v26 = v62;
  switch(v9)
  {
    case 1:
      v27 = &v69;
      goto LABEL_10;
    case 2:
      v27 = &v70;
      goto LABEL_10;
    case 3:
      v27 = &v71;
LABEL_10:
      v25 = *(v27 - 32);
      break;
    default:
      break;
  }

  v31 = v25;
  type metadata accessor for SQLDatabase();
  v32 = SQLDatabase.__allocating_init(url:readonly:fileProtection:schemaBlock:corruptionBlock:)(v63, 0, v31, 0, 0, 0, 0);
  if (!v26)
  {
    v33 = v32;

    sub_1000179B4(v34, v34);
    sub_1000170D4();
    __chkstk_darwin(v35);
    v46[-6] = v33;
    v46[-5] = 0xD00000000000003DLL;
    v46[-4] = v48;
    v46[-3] = _swiftEmptyArrayStorage;
    v46[-2] = sub_1000A14DC;
    v46[-1] = 0;
    sub_100014A20(sub_100014768, &v46[-8]);

    sub_10001C50C();
    v7 = v47;
    URL.path.getter();
    static SQLDatabase.removeDatabase(path:)();
    v36 = sub_100023CB0();
    v37(v36);

    goto LABEL_13;
  }

  v38 = sub_1000073E0();
  v39(v38);
  sub_100002F3C();
  v40 = swift_allocObject();
  *(v40 + 16) = v61;
  v41 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.init(stringLiteral:)();
  swift_getErrorValue();
  v42 = v65;
  v43 = v66;
  v68 = v66;
  v44 = sub_100017E64(v67);
  (*(*(v43 - 8) + 16))(v44, v42, v43);
  static LogInterpolation.safe(_:)();
  sub_10000A064(v67, &qword_10026D350, &qword_1001E6050);
  v45 = static os_log_type_t.error.getter();
  sub_1000036B0(v45, v40);
}

char *sub_1000451D4(void *a1)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  v5 = objc_allocWithZone(type metadata accessor for XPCServiceProvider());
  v6 = sub_100045498(v2, v4);
  v7 = objc_opt_self();
  v8 = [v7 interfaceWithProtocol:&OBJC_PROTOCOL___AMSEngagementServiceProtocol];
  v21 = [v7 interfaceWithProtocol:&OBJC_PROTOCOL___AMSTreatmentStoreServiceProtocol];
  [v8 setInterface:v21 forSelector:"treatmentStoreServiceWithReply:" argumentIndex:0 ofReply:1];
  v9 = [objc_opt_self() archiveClasses];
  static Set._unconditionallyBridgeFromObjectiveC(_:)();

  isa = Set._bridgeToObjectiveC()().super.isa;

  [v8 setClasses:isa forSelector:"enqueueWithRequest:completion:" argumentIndex:0 ofReply:0];

  v11 = [objc_opt_self() archiveClasses];
  static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v12 = Set._bridgeToObjectiveC()().super.isa;

  [v8 setClasses:v12 forSelector:"syncWithRequest:completion:" argumentIndex:0 ofReply:0];

  v13 = *&v6[OBJC_IVAR____TtC14amsengagementd18XPCServiceProvider_exportedInterface];
  *&v6[OBJC_IVAR____TtC14amsengagementd18XPCServiceProvider_exportedInterface] = v8;
  v14 = v8;

  v22[3] = swift_getObjectType();
  v22[0] = a1;
  v15 = OBJC_IVAR____TtC14amsengagementd18XPCServiceProvider_exportedObject;
  swift_beginAccess();
  v16 = a1;
  sub_10001D2C8(v22, &v6[v15]);
  swift_endAccess();
  v17 = &OBJC_PROTOCOL___AMSEngagementClientProtocol;
  v18 = [v7 interfaceWithProtocol:v17];

  v19 = *&v6[OBJC_IVAR____TtC14amsengagementd18XPCServiceProvider_remoteObjectInterface];
  *&v6[OBJC_IVAR____TtC14amsengagementd18XPCServiceProvider_remoteObjectInterface] = v18;

  return v6;
}

char *sub_100045498(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC14amsengagementd18XPCServiceProvider_connections] = _swiftEmptyArrayStorage;
  v3 = OBJC_IVAR____TtC14amsengagementd18XPCServiceProvider_connectionsLock;
  *&v2[v3] = [objc_allocWithZone(NSLock) init];
  *&v2[OBJC_IVAR____TtC14amsengagementd18XPCServiceProvider_exportedInterface] = 0;
  v4 = &v2[OBJC_IVAR____TtC14amsengagementd18XPCServiceProvider_exportedObject];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *&v2[OBJC_IVAR____TtC14amsengagementd18XPCServiceProvider_remoteObjectInterface] = 0;
  sub_100002BC0(0, &qword_100272538, NSXPCListener_ptr);
  *&v2[OBJC_IVAR____TtC14amsengagementd18XPCServiceProvider_listener] = sub_1000455A8();
  v7.receiver = v2;
  v7.super_class = type metadata accessor for XPCServiceProvider();
  v5 = objc_msgSendSuper2(&v7, "init");
  [*&v5[OBJC_IVAR____TtC14amsengagementd18XPCServiceProvider_listener] setDelegate:v5];
  return v5;
}

id sub_1000455A8()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 initWithMachServiceName:v1];

  return v2;
}

void sub_10004561C()
{
  sub_100003D74();
  v3 = v2;
  v5 = v4;
  sub_100005068(v6, v7, v8);
  sub_100006AF8();
  if (v9)
  {
    __break(1u);
LABEL_13:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  sub_10000A5E0();
  sub_10007B9A4(v5, v3);
  v10 = sub_1000082EC();
  v12 = _NativeDictionary.ensureUnique(isUnique:capacity:)(v10, v11);
  if (v12)
  {
    sub_1000119F0();
    sub_100007450();
    if (!v16)
    {
      goto LABEL_13;
    }
  }

  if (v1)
  {
    sub_10000AEC0(v12, v13, v14, v15, *v0);
    sub_100005F14();
  }

  else
  {
    v19 = sub_100007988();
    sub_1000112BC(v19, v20, v21, v22, v23);
    sub_100005F14();
  }
}

void *sub_100045710()
{
  type metadata accessor for AccountsObserver();
  swift_allocObject();
  result = sub_100047740();
  qword_1002695E0 = result;
  return result;
}

uint64_t sub_10004574C()
{
  sub_100002D98();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 128) = v4;
  *(v2 + 136) = v0;

  if (v0)
  {
    v5 = sub_1000810F8;
  }

  else
  {
    v5 = sub_1000434A0;
  }

  return _swift_task_switch(v5, 0, 0);
}

void sub_100045890(uint64_t a1, void *a2)
{
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a2 _setEnabledTopics:isa];
}

void sub_1000459B4()
{
  sub_100003D74();
  v2 = v1;
  v3 = type metadata accessor for LogInterpolation.StringInterpolation();
  v4 = sub_100003D10(v3);
  __chkstk_darwin(v4);
  sub_100002DEC();
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v5 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v5);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1001E5F70;
  v17 = type metadata accessor for PushService();
  v16[0] = v0;
  v7 = v0;
  v8 = AMSLogKey();
  if (v8)
  {
    v9 = v8;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v16);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v10._object = 0x8000000100201500;
  v10._countAndFlagsBits = 0xD000000000000017;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v10);
  if (v2 >> 60 == 15)
  {
    countAndFlagsBits = 0;
    object = 0;
    v13 = 0;
    v16[2] = 0;
  }

  else
  {
    v14 = Data.base64EncodedString(options:)(0);
    object = v14._object;
    countAndFlagsBits = v14._countAndFlagsBits;
    v13 = &type metadata for String;
  }

  v16[0] = countAndFlagsBits;
  v16[1] = object;
  v17 = v13;
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_100002C5C(v16);
  sub_100003B48();
  LogInterpolation.init(stringInterpolation:)();
  if (qword_1002686B0 != -1)
  {
    sub_100002D44(&qword_1002686B0);
  }

  v15 = static os_log_type_t.info.getter();
  sub_1000036B0(v15, v6);

  sub_100005F14();
}

uint64_t sub_100045C48(uint64_t a1, char a2)
{
  v4 = type metadata accessor for LogInterpolation.StringInterpolation();
  v5 = sub_100003D10(v4);
  __chkstk_darwin(v5);
  sub_100002DEC();
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v6 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v6);
  v7 = sub_100007CB8();
  *(v7 + 16) = xmmword_1001E5F70;
  v15 = type metadata accessor for PushService();
  v14[0] = v2;
  v8 = v2;
  v9 = AMSLogKey();
  if (v9)
  {
    v10 = v9;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v14);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11._object = 0x8000000100201520;
  v11._countAndFlagsBits = 0xD000000000000012;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v11);
  v15 = &type metadata for Bool;
  LOBYTE(v14[0]) = a2 & 1;
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_100002C5C(v14);
  sub_100003B48();
  LogInterpolation.init(stringInterpolation:)();
  if (qword_1002686B0 != -1)
  {
    sub_100002D44(&qword_1002686B0);
  }

  v12 = static os_log_type_t.info.getter();
  sub_1000036B0(v12, v7);
}

void *sub_100045E58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  return v3;
}

uint64_t sub_100045E88(uint64_t a1)
{
  result = type metadata accessor for URL();
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

uint64_t sub_100045F30(uint64_t a1)
{
  v13 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  sub_100002CC4();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_100002DEC();
  v6 = v5 - v4;
  type metadata accessor for OS_dispatch_queue.Attributes();
  sub_100002DDC();
  __chkstk_darwin(v7);
  sub_100002DEC();
  v8 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v8 - 8);
  sub_100002DEC();
  sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  if (qword_1002687F8 != -1)
  {
    swift_once();
  }

  v9 = qword_1002878F0;
  static DispatchQoS.unspecified.getter();
  sub_10003B11C(&qword_10026CCF0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10007B9A4(&unk_10026F8A0, &unk_1001EBCC0);
  sub_10001407C(&qword_10026CD00, &unk_10026F8A0, &unk_1001EBCC0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v2 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v13);
  *(v15 + 16) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v15 + 24) = 0;
  v10 = OBJC_IVAR____TtC14amsengagementd17TreatmentsStorage_storageURL;
  type metadata accessor for URL();
  sub_100002DDC();
  (*(v11 + 32))(v15 + v10, a1);
  return v15;
}

unint64_t sub_100046278(char a1)
{
  result = 7368801;
  switch(a1)
  {
    case 1:
      result = 0x79726574746162;
      break;
    case 2:
      result = 0x64657461657263;
      break;
    case 3:
      result = 0x73616C4361746164;
      break;
    case 4:
      result = 1702125924;
      break;
    case 5:
      result = 0x6441734965746164;
      break;
    case 6:
      result = 0x79616C6564;
      break;
    case 7:
      result = 0x73746E657665;
      break;
    case 8:
      result = 0x696669746E656469;
      break;
    case 9:
      result = 0x6563617267;
      break;
    case 10:
      result = 1701869940;
      break;
    case 11:
      result = 0xD000000000000010;
      break;
    case 12:
      result = 0x746972777265766FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10004640C()
{
  type metadata accessor for DispatchWorkItemFlags();
  sub_100013AFC(&qword_10026CD40, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10007B9A4(&unk_100270490, &unk_1001E74F0);
  sub_10001407C(&qword_10026CD50, &unk_100270490, &unk_1001E74F0);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t sub_1000464E4()
{
  v1 = v0;
  v2 = type metadata accessor for LogInterpolation.StringInterpolation();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for DispatchQoS.QoSClass();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = BYSetupAssistantFinishedDarwinNotification;
  if (BYSetupAssistantFinishedDarwinNotification)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100017A08();
    (*(v4 + 104))(v6, enum case for DispatchQoS.QoSClass.default(_:), v3);
    v8 = static OS_dispatch_queue.global(qos:)();
    (*(v4 + 8))(v6, v3);
    v22 = sub_1001A2938;
    v23 = v1;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001A22E4;
    v21 = &unk_100252488;
    v9 = _Block_copy(aBlock);

    v10 = String.utf8CString.getter();

    swift_beginAccess();
    v11 = notify_register_dispatch((v10 + 32), (v1 + 16), v8, v9);
    swift_endAccess();

    _Block_release(v9);

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    type metadata accessor for LogInterpolation();
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1001E5F70;
    if (v11)
    {
      v21 = type metadata accessor for SetupAssistantObserver();
      aBlock[0] = v1;

      v13 = AMSLogKey();
      if (v13)
      {
        v14 = v13;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      static LogInterpolation.prefix(_:_:)();

      sub_100002C00(aBlock);
      LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v17._object = 0x8000000100202920;
      v17._countAndFlagsBits = 0xD000000000000011;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v17);
      v21 = &type metadata for UInt32;
      LODWORD(aBlock[0]) = v11;
      LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
      sub_10000A064(aBlock, &qword_10026D350, &qword_1001E6050);
      v18._countAndFlagsBits = 0;
      v18._object = 0xE000000000000000;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v18);
      LogInterpolation.init(stringInterpolation:)();
      if (qword_1002686B0 != -1)
      {
        sub_100002D44(&qword_1002686B0);
      }

      v19 = static os_log_type_t.error.getter();
    }

    else
    {
      v21 = type metadata accessor for SetupAssistantObserver();
      aBlock[0] = v1;

      v15 = AMSLogKey();
      if (v15)
      {
        v16 = v15;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      static LogInterpolation.prefix(_:_:)();

      sub_100002C00(aBlock);
      LogInterpolation.init(stringLiteral:)();
      if (qword_1002686B0 != -1)
      {
        sub_100002D44(&qword_1002686B0);
      }

      v19 = static os_log_type_t.default.getter();
    }

    sub_1000036B0(v19, v12);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000469B8()
{
  type metadata accessor for AppConnection();
  v0 = swift_allocObject();
  result = sub_1000469F4();
  qword_100287788 = v0;
  return result;
}

uint64_t sub_1000469F4()
{
  v1 = v0;
  *(v0 + 16) = [objc_allocWithZone(type metadata accessor for ServerDataCacheService()) init];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (qword_100268670 != -1)
  {
    swift_once();
  }

  v2 = qword_1002877D0;
  sub_1000451D4(v2);

  swift_isUniquelyReferenced_nonNull_native();
  sub_100006A4C();
  sub_10004710C();

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = [objc_allocWithZone(type metadata accessor for UniversalLinksService()) init];
  sub_1000421FC(v3);

  swift_isUniquelyReferenced_nonNull_native();
  sub_100006A4C();
  sub_10004710C();

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = *(v1 + 16);
  sub_1000422F8(v4);

  swift_isUniquelyReferenced_nonNull_native();
  sub_100006A4C();
  sub_10004710C();

  if (qword_1002685E0 != -1)
  {
    swift_once();
  }

  sub_100042608(v5);

  swift_isUniquelyReferenced_nonNull_native();
  sub_10004710C();
  *(v1 + 24) = v7;
  return v1;
}

uint64_t sub_100046C4C()
{
  v3[3] = &type metadata for JSEnginePerformerProvider;
  v3[4] = &off_10024C500;
  v0 = objc_allocWithZone(type metadata accessor for EngagementService());
  sub_100046CB8(v3, &type metadata for JSEnginePerformerProvider);
  v1 = sub_10004C904(v0);
  result = sub_100002C00(v3);
  qword_1002877D0 = v1;
  return result;
}

uint64_t sub_100046CB8(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

void sub_100046D08()
{
  sub_100003D74();
  v2 = v1;
  type metadata accessor for OS_dispatch_queue.Attributes();
  sub_1000047A4();
  __chkstk_darwin(v3);
  sub_100002DEC();
  sub_100004B68();
  v4 = type metadata accessor for DispatchQoS();
  v5 = sub_100003D10(v4);
  __chkstk_darwin(v5);
  sub_100002DEC();
  v6 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  sub_100002CC4();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_100002DEC();
  v12 = v11 - v10;
  sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  (*(v8 + 104))(v12, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v6);
  static DispatchQoS.unspecified.getter();
  sub_100046F28();
  sub_10007B9A4(&unk_10026F8A0, &unk_1001EBCC0);
  sub_10004F018();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v0 + 16) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v0 + 24) = _swiftEmptyDictionarySingleton;
  strcpy((v0 + 32), "defaults.json");
  *(v0 + 46) = -4864;
  sub_10001EC00(v2, v0 + OBJC_IVAR____TtC14amsengagementd19AppDefaultsProvider_directoryURL);
  sub_100005F14();
}

unint64_t sub_100046F28()
{
  result = qword_10026CCF0;
  if (!qword_10026CCF0)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026CCF0);
  }

  return result;
}

uint64_t sub_100046F80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_defaultActor_initialize();
  *(v4 + 136) = a4;
  *(v4 + 144) = 0;
  *(v4 + 152) = 0;
  *(v4 + 112) = a1;
  *(v4 + 120) = a2;
  *(v4 + 128) = a3;
  return v4;
}

void *sub_100046FFC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
    if (v4)
    {
      v5 = v4;
      v2 = sub_1000D6400(v4, 0);
      sub_10018BB64((v2 + 4), v5, a1);
      v7 = v6;

      if (v7 == v5)
      {
        return v2;
      }

      __break(1u);
    }

    return _swiftEmptyArrayStorage;
  }

  return (a1 & 0xFFFFFFFFFFFFFF8);
}

id sub_1000470B4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Defaults();
  return objc_msgSendSuper2(&v2, "init");
}

unint64_t sub_100047120()
{
  result = qword_100269880;
  if (!qword_100269880)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100269880);
  }

  return result;
}

uint64_t sub_100047164()
{
  sub_100042428();
  sub_10002411C(0x6761676E45534D41, 0xED0000746E656D65, 49, 0xE100000000000000);
  sub_100002DFC();
  v0 = objc_allocWithZone(type metadata accessor for SendableBag());
  v1 = SendableBag.init(wrappedBag:)();
  v5[3] = &type metadata for FeatureFlagProvider;
  v5[4] = &off_10024B860;
  type metadata accessor for MediaCatalogSyncService();
  v2 = swift_allocObject();
  sub_100046CB8(v5, &type metadata for FeatureFlagProvider);
  v3 = sub_100047238(v1, v2);
  result = sub_100002C00(v5);
  qword_100287770 = v3;
  return result;
}

uint64_t sub_100047238(void *a1, uint64_t a2)
{
  v6 = &type metadata for FeatureFlagProvider;
  v7 = &off_10024B860;
  *(a2 + 16) = a1;
  type metadata accessor for MediaCatalogSyncCoordinatorActor();
  swift_allocObject();
  *(a2 + 24) = sub_10004D748(a1);
  sub_10003B104(&v5, a2 + 32);
  return a2;
}

uint64_t sub_1000472BC(uint64_t a1)
{
  result = type metadata accessor for MediaCatalogSyncState(319);
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

uint64_t sub_100047388(uint64_t a1)
{
  sub_10004750C(319, &qword_10026B378, &type metadata for String);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_100042504(319, &qword_10026C658, &type metadata accessor for Date, &type metadata accessor for Optional);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_10004750C(319, &qword_10026C660, &type metadata for Bool);
      if (v7 > 0x3F)
      {
        return v6;
      }

      else
      {
        v2 = type metadata accessor for Date();
        if (v8 <= 0x3F)
        {
          sub_100042504(319, &unk_10026C668, type metadata accessor for MediaCatalogSyncPageMetadata, &type metadata accessor for Array);
          v2 = v9;
          if (v10 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v2;
}

void sub_10004750C(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_100047558(uint64_t a1)
{
  result = type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1000475D0()
{
  result = qword_10026BCF8;
  if (!qword_10026BCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026BCF8);
  }

  return result;
}

id sub_100047624(SEL *a1)
{
  v3 = *(v1 + 24);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  if (v6)
  {
    while (1)
    {
      v10 = v9;
LABEL_9:
      v11 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      result = [*(*(*(v3 + 56) + ((v10 << 9) | (8 * v11))) + OBJC_IVAR____TtC14amsengagementd18XPCServiceProvider_listener) *a1];
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      return result;
    }

    if (v10 >= v7)
    {
      break;
    }

    v6 = *(v3 + 64 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_9;
    }
  }
}

void *sub_100047740()
{
  v0[2] = [objc_allocWithZone(NSNumberFormatter) init];
  sub_100002BC0(0, &qword_10026AF10, NSNumber_ptr);
  v0[3] = Dictionary.init(dictionaryLiteral:)();
  v0[4] = Dictionary.init(dictionaryLiteral:)();
  v0[5] = Dictionary.init(dictionaryLiteral:)();
  sub_10007B9A4(&qword_1002697D8, &qword_1001E6250);
  v0[6] = Dictionary.init(dictionaryLiteral:)();
  sub_10007B9A4(&qword_1002697E0, &qword_1001E6258);
  v0[7] = Dictionary.init(dictionaryLiteral:)();
  v0[8] = 0;
  v0[9] = [objc_allocWithZone(NSLock) init];
  sub_10007B9A4(&qword_1002697E8, &unk_1001E6260);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1001E61B0;
  v2 = AMSAccountMediaTypeProduction;
  *(v1 + 32) = AMSAccountMediaTypeProduction;
  v0[10] = v1;
  v3 = v0[2];
  v4 = v2;
  [v3 setNumberStyle:1];
  sub_100042DAC();
  return v0;
}

id sub_100047910()
{
  v0 = sub_10007B9A4(&unk_10026FEE0, &unk_1001E67C0);
  sub_100003D10(v0);
  sub_100004E78();
  __chkstk_darwin(v1);
  v3 = &v13 - v2;
  v4 = type metadata accessor for URL();
  sub_100002CC4();
  v6 = v5;
  __chkstk_darwin(v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100047A74(v3);
  if (sub_100009F34(v3, 1, v4) == 1)
  {
    sub_100009FB0(v3, &unk_10026FEE0, &unk_1001E67C0);
    return 0;
  }

  else
  {
    sub_10000874C();
    v11();
    v10 = sub_1000C69C8(v9);
    (*(v6 + 8))(v9, v4);
  }

  return v10;
}

uint64_t sub_100047A74@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10007B9A4(&unk_10026FEE0, &unk_1001E67C0);
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - v3;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100047C24(v4);
  if (sub_100009F34(v4, 1, v5) == 1)
  {
    sub_100009FB0(v4, &unk_10026FEE0, &unk_1001E67C0);
    v9 = 1;
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    URL.appendingPathComponent(_:isDirectory:)();
    (*(v6 + 8))(v8, v5);
    v9 = 0;
  }

  return sub_10000A7C0(a1, v9, 1, v5);
}

uint64_t sub_100047C24@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v16 - v7;
  v9 = [objc_opt_self() ams_dynamicUIDirectory];
  if (v9)
  {
    v10 = v9;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v3 + 32))(v8, v6, v2);
    v11 = [objc_opt_self() defaultManager];
    sub_10001E148();

    return (*(v3 + 8))(v8, v2);
  }

  else
  {
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    type metadata accessor for LogInterpolation();
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1001E5F70;
    v14 = AMSSetLogKeyIfNeeded();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    type metadata accessor for DynamicUICache();
    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.init(stringLiteral:)();
    if (qword_1002686B0 != -1)
    {
      swift_once();
    }

    v15 = static os_log_type_t.fault.getter();
    sub_1000036B0(v15, v13);

    return sub_10000A7C0(a1, 1, 1, v2);
  }
}

uint64_t sub_100047F28()
{
  sub_10007B9A4(&unk_10026F880, &qword_1001E62B0);
  sub_100004E78();
  __chkstk_darwin(v1);
  v3 = &v41 - v2;
  type metadata accessor for NSNotificationCenter.Publisher();
  sub_100002CC4();
  v43 = v5;
  v44 = v4;
  __chkstk_darwin(v4);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007B9A4(&qword_100269808, &qword_1001E62B8);
  sub_100002CC4();
  v45 = v9;
  v46 = v8;
  sub_100004E78();
  __chkstk_darwin(v10);
  sub_10007B9A4(&qword_100269810, &qword_1001E62C0);
  sub_100002CC4();
  v48 = v12;
  v49 = v11;
  sub_100004E78();
  __chkstk_darwin(v13);
  v47 = &v41 - v14;
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  sub_100003EFC();
  v15 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v15);
  sub_100002D7C();
  v16 = sub_10000A92C();
  *(v16 + 16) = xmmword_1001E5F70;
  v51[3] = type metadata accessor for AccountsObserver();
  v50 = v0;
  v51[0] = v0;

  v17 = AMSLogKey();
  if (v17)
  {
    v18 = v17;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v51);
  LogInterpolation.init(stringLiteral:)();
  if (qword_1002686B0 != -1)
  {
    sub_100002D44(&qword_1002686B0);
  }

  v19 = static os_log_type_t.info.getter();
  sub_1000036B0(v19, v16);

  v20 = [objc_opt_self() defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  if (qword_1002685D0 != -1)
  {
    swift_once();
  }

  v42 = v7;
  v21 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  sub_100048CD0(v21, qword_1002695C8);
  if (qword_1002687F0 != -1)
  {
    swift_once();
  }

  v22 = qword_1002878E8;
  v51[0] = qword_1002878E8;
  v23 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v24 = v3;
  sub_100004798();
  sub_10000A7C0(v25, v26, v27, v23);
  sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  sub_100048EC8(&qword_100269818, &type metadata accessor for NSNotificationCenter.Publisher, &protocol conformance descriptor for NSNotificationCenter.Publisher);
  sub_100048F10();
  v28 = v22;
  v29 = v44;
  v30 = v42;
  Publisher.debounce<A>(for:scheduler:options:)();
  sub_100009FB0(v24, &unk_10026F880, &qword_1001E62B0);
  (*(v43 + 8))(v30, v29);
  v51[0] = v28;
  sub_100004798();
  sub_10000A7C0(v31, v32, v33, v23);
  sub_100006070(&qword_100269820, &qword_100269808, &qword_1001E62B8, &protocol conformance descriptor for Publishers.Debounce<A, B>);
  v34 = v47;
  Publisher.receive<A>(on:options:)();
  sub_100009FB0(v24, &unk_10026F880, &qword_1001E62B0);

  v35 = sub_10000821C();
  v36(v35);
  sub_100004AA0();
  swift_allocObject();
  v37 = v50;
  swift_weakInit();
  sub_100006070(&qword_100269828, &qword_100269810, &qword_1001E62C0, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v38 = v49;
  v39 = Publisher<>.sink(receiveValue:)();

  (*(v48 + 8))(v34, v38);
  *(v37 + 64) = v39;
}

uint64_t sub_100048540()
{
  swift_weakDestroy();
  sub_100004AA0();

  return _swift_deallocObject(v0);
}

uint64_t sub_100048574()
{
  sub_1000061B4();
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v4 = sub_100004A88(v3);

  return sub_100048614(v4, v5, v6, v2);
}

uint64_t sub_100048614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 112) = a4;
  v5 = swift_task_alloc();
  *(v4 + 120) = v5;
  *v5 = v4;
  v5[1] = sub_10004574C;

  return sub_1000486A8();
}

uint64_t sub_1000486C8()
{
  sub_10007B9A4(&qword_100269870, &qword_1001E6310);
  inited = swift_initStackObject();
  v0[26] = inited;
  *(inited + 16) = xmmword_1001E61B0;
  v2 = [objc_opt_self() ams_sharedAccountStore];
  v3 = [v2 ams_activeiCloudAccount];

  *(inited + 32) = v3;
  v0[23] = inited;
  v4 = sub_100048878();
  v0[27] = v4;
  v0[2] = v0;
  v0[7] = v0 + 24;
  v0[3] = sub_10004323C;
  v5 = swift_continuation_init();
  v0[17] = sub_10007B9A4(&qword_100269878, &qword_1001E6318);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100048FD8;
  v0[13] = &unk_100246638;
  v0[14] = v5;
  [v4 resultWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

id sub_100048878()
{
  v0 = [objc_opt_self() ams_sharedAccountStore];

  sub_100048944(v1);
  v2 = sub_100003EFC();
  type metadata accessor for AMSAccountMediaType(v2);
  sub_100002D64();
  sub_100048EC8(v3, v4, &unk_1001E38CC);
  isa = Set._bridgeToObjectiveC()().super.isa;

  v6 = [v0 ams_iTunesAccountsForMediaTypes:isa];

  return v6;
}

unint64_t sub_100048A70(uint64_t a1)
{
  result = sub_100012EF8(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

void sub_100048AB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_100003FE8();
  v35 = v34;
  v51 = v32;
  v52 = v36;
  v37 = *v32;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v39 = v38;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v40 = Hasher._finalize()();

  sub_100004E1C();
  v42 = ~v41;
  while (1)
  {
    v43 = v40 & v42;
    if (((1 << (v40 & v42)) & *(v37 + 56 + (((v40 & v42) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v53 = *v51;
      v48 = v35;
      sub_100042F9C(v48, v43, isUniquelyReferenced_nonNull_native);
      *v51 = v53;
      *v52 = v48;
      goto LABEL_13;
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = sub_10000903C();
    if (v33 == v44 && v39 == v45)
    {

      goto LABEL_12;
    }

    v33 = sub_100009F10(v44);

    if (v33)
    {
      break;
    }

    v40 = v43 + 1;
  }

LABEL_12:
  v49 = *(*(v37 + 48) + 8 * v43);
  *v52 = v49;
  v50 = v49;
LABEL_13:
  sub_100006150();
}

uint64_t sub_100048C1C()
{
  v0 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  sub_100048C6C(v0, qword_1002695C8);
  sub_100048CD0(v0, qword_1002695C8);
  return static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)();
}

uint64_t *sub_100048C6C(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_100048CD0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void sub_100048D08()
{
  sub_100003D74();
  type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  sub_100002CC4();
  __chkstk_darwin(v0);
  sub_100002DEC();
  sub_100006658();
  sub_1000085C8();
  __chkstk_darwin(v1);
  sub_100002DEC();
  v2 = sub_100007754();
  __chkstk_darwin(v2 - 8);
  sub_100002DEC();
  sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  sub_100006FB8();
  sub_100013AFC(v3, v4, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10007B9A4(&unk_10026F8A0, &unk_1001EBCC0);
  v5 = sub_10001407C(&qword_10026CD00, &unk_10026F8A0, &unk_1001EBCC0);
  sub_10000C1B0(v5);
  v6 = sub_100005ABC();
  v7(v6);
  qword_1002878E8 = sub_10000BB64(42, 0x8000000100201B10);
  sub_100005F14();
}

uint64_t sub_100048EC8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100048F10()
{
  result = qword_10026CFC0;
  if (!qword_10026CFC0)
  {
    sub_100002BC0(255, &qword_10026CFB0, OS_dispatch_queue_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026CFC0);
  }

  return result;
}

void sub_10004900C()
{
  v1 = *(v0 + 192);

  v2 = sub_1000492B4();
  v3 = sub_100043358(v2);

  sub_1000494BC(v3);
  v4 = *(v0 + 184);
  sub_100002BC0(0, &qword_100269880, ACAccount_ptr);
  v5 = Dictionary.init(dictionaryLiteral:)();
  v6 = 0;
  v7 = *(v4 + 16);
  while (1)
  {
    if (v7 == v6)
    {

      v32 = *(v0 + 8);

      v32(v5);
      return;
    }

    if (v6 >= *(v4 + 16))
    {
      break;
    }

    v8 = *(v4 + 8 * v6 + 32);
    if (!v8)
    {
      goto LABEL_7;
    }

    v9 = v8;
    v10 = [v9 identifier];
    if (v10)
    {
      v11 = v10;
      v33 = v1;
      v34 = v0;
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      v35 = v9;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v36 = v12;
      v16 = sub_100012A94();
      v18 = *(v5 + 16);
      v19 = (v17 & 1) == 0;
      v20 = v18 + v19;
      if (__OFADD__(v18, v19))
      {
        __break(1u);
LABEL_25:
        __break(1u);
        return;
      }

      v21 = v16;
      v22 = v17;
      sub_10007B9A4(&qword_100269888, &qword_1001E6320);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v20))
      {
        v23 = sub_100012A94();
        if ((v22 & 1) != (v24 & 1))
        {
          goto LABEL_21;
        }

        v21 = v23;
      }

      if (v22)
      {

        v25 = *(v5 + 56);
        v26 = *(v25 + 8 * v21);
        *(v25 + 8 * v21) = v35;
      }

      else
      {
        sub_100007380();
        v28 = (v27 + 16 * v21);
        *v28 = v36;
        v28[1] = v14;
        *(*(v5 + 56) + 8 * v21) = v35;

        v29 = *(v5 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          goto LABEL_25;
        }

        *(v5 + 16) = v31;
      }

      ++v6;
      v1 = v33;
      v0 = v34;
    }

    else
    {

LABEL_7:
      ++v6;
    }
  }

  __break(1u);
LABEL_21:

  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
}

void *sub_1000492B4()
{
  v0 = type metadata accessor for NSFastEnumerationIterator();
  v6 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = _swiftEmptyArrayStorage;
  v12 = _swiftEmptyArrayStorage;
  NSArray.makeIterator()();
  sub_100048EC8(&qword_10026E610, &type metadata accessor for NSFastEnumerationIterator, &protocol conformance descriptor for NSFastEnumerationIterator);
  while (1)
  {
    dispatch thunk of IteratorProtocol.next()();
    if (!v11)
    {
      break;
    }

    sub_100002C4C(&v10, v9);
    sub_100011BAC(v9, v7);
    sub_100002BC0(0, &qword_100269880, ACAccount_ptr);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v8 = 0;
    }

    sub_100002C00(v9);
    if (v8)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v3 = v12;
    }
  }

  (*(v6 + 8))(v2, v0);
  return v3;
}

void sub_1000494BC(uint64_t a1)
{
  v4 = sub_10000B958(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_100015308(v4, 1, &specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
  sub_10000AF78();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_100005944();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = sub_10007B9A4(&qword_10026DAF0, &qword_1001ED098);
  sub_10000C3FC(v8);

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  sub_10000ABF8();
  if (!v5)
  {
    *(v3 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_100049578(void *a1)
{
  sub_100026484(a1, &selRef_identifier);
  if (v3)
  {
    v4 = [a1 ams_DSID];
    sub_100007858((v1 + 3), v5, v6);
    if (v4)
    {
      swift_isUniquelyReferenced_nonNull_native();
      sub_100019B30();
      sub_100009DBC();
      sub_1000ABF68();
      v1[3] = v24;
    }

    else
    {
      sub_10000821C();
      sub_10004585C();
    }

    swift_endAccess();
    [a1 isActive];
    sub_100007858((v1 + 4), v12, v13);
    swift_isUniquelyReferenced_nonNull_native();
    v25 = v1[4];
    sub_100009DBC();
    sub_100049908();
    v1[4] = v25;
    swift_endAccess();
    sub_100026484(a1, &selRef_ams_creditsString);
    v15 = v14;
    sub_100007858((v1 + 5), v14, v16);
    if (v15)
    {
      swift_isUniquelyReferenced_nonNull_native();
      sub_100019B30();
      sub_1000ABF90();
      v1[5] = v25;
    }

    else
    {
      v17 = sub_10000821C();
      sub_100049A48(v17);
    }

    swift_endAccess();
    if (sub_100049AF8(a1))
    {
      sub_100007858((v1 + 6), v18, v19);
      swift_isUniquelyReferenced_nonNull_native();
      sub_100019B30();
      sub_100009DBC();
      sub_1000ABF7C();
      v1[6] = v25;
      swift_endAccess();
    }

    else
    {
      sub_100007858((v1 + 6), v18, v19);
      sub_10000821C();
      sub_100049C74();
      swift_endAccess();
    }

    sub_100049C98(a1);
    sub_100007858((v1 + 7), v20, v21);
    swift_isUniquelyReferenced_nonNull_native();
    v26 = v1[7];
    sub_100009DBC();
    sub_10004A164();
    v1[7] = v26;

    return swift_endAccess();
  }

  else
  {
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    sub_100003EFC();
    v7 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v7);
    v8 = sub_10000A92C();
    *(v8 + 16) = xmmword_1001E5F70;
    v27[3] = type metadata accessor for AccountsObserver();
    v27[0] = v1;

    v9 = AMSLogKey();
    if (v9)
    {
      v10 = v9;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v27);
    LogInterpolation.init(stringLiteral:)();
    if (qword_1002686B0 != -1)
    {
      sub_100002D44(&qword_1002686B0);
    }

    v23 = static os_log_type_t.error.getter();
    sub_1000036B0(v23, v8);
  }
}

void sub_100049908()
{
  sub_100008738();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  sub_1000048A0(v5, v3, v1);
  sub_100006AF8();
  if (v9)
  {
    __break(1u);
LABEL_12:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v10 = v7;
  v11 = v8;
  sub_10007B9A4(&qword_10026AFF0, &qword_1001E8770);
  v12 = sub_1000082EC();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v12, v13))
  {
    sub_100012A94();
    sub_10000A978();
    if (!v15)
    {
      goto LABEL_12;
    }

    v10 = v14;
  }

  v16 = *v0;
  if (v11)
  {
    *(v16[7] + v10) = v6 & 1;
    sub_100003B6C();
  }

  else
  {
    sub_100049A00(v10, v4, v2, v6 & 1, v16);
    sub_100003B6C();
  }
}

unint64_t sub_100049A00(unint64_t result, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

void *sub_100049AF8(void *a1)
{
  v2 = [a1 ams_privacyAcknowledgement];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = *(v1 + 16);
  sub_100002BC0(0, &qword_10026AF10, NSNumber_ptr);
  v5 = Dictionary.init(dictionaryLiteral:)();
  v6 = sub_100080CBC(v5, v3, v4);

  if (!v6[2])
  {

    return 0;
  }

  return v6;
}

void sub_100049BB8()
{
  sub_10001CB6C();
  v2 = v1;
  v4 = v3;
  sub_10000B330();
  sub_100012A94();
  if (v5)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10000AB58();
    v8 = *(v7 + 24);
    sub_10007B9A4(v4, v2);
    sub_100004BA8();
    _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v8);
    sub_10005ADA4();
    v9 = sub_10000821C();
    sub_10007B9A4(v9, v10);
    sub_100002FD8();
    _NativeDictionary._delete(at:)();
    *v0 = v2;
  }

  sub_100006778();
}

void *sub_100049C98(void *a1)
{
  v3 = 0;
  v4 = *(v1 + 80);
  v5 = *(v4 + 16);
  while (1)
  {
    if (v5 == v3)
    {
      return _swiftEmptyDictionarySingleton;
    }

    if (v3 >= *(v4 + 16))
    {
      break;
    }

    v6 = *(v4 + 32 + 8 * v3);
    v7 = [a1 ams_storefrontForMediaType:v6];
    if (v7)
    {
      v10 = v7;
      v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = v11;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v13 = sub_100049FA8(v6);
      v15 = _swiftEmptyDictionarySingleton[2];
      v16 = (v14 & 1) == 0;
      v17 = v15 + v16;
      if (__OFADD__(v15, v16))
      {
        goto LABEL_20;
      }

      v18 = v13;
      v33 = v14;
      sub_10007B9A4(&qword_100269830, &qword_1001E62C8);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v17))
      {
        v19 = sub_100049FA8(v6);
        v21 = v33;
        if ((v33 & 1) != (v20 & 1))
        {
          goto LABEL_22;
        }

        v18 = v19;
      }

      else
      {
        v21 = v33;
      }

      if (v21)
      {
        v26 = (_swiftEmptyDictionarySingleton[7] + 16 * v18);
        *v26 = v34;
        v26[1] = v35;
      }

      else
      {
        sub_100007380();
        *(v27 + 8 * v18) = v6;
        v28 = (_swiftEmptyDictionarySingleton[7] + 16 * v18);
        *v28 = v34;
        v28[1] = v35;
        v29 = _swiftEmptyDictionarySingleton[2];
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          goto LABEL_21;
        }

        _swiftEmptyDictionarySingleton[2] = v31;
      }

LABEL_17:
      ++v3;
    }

    else
    {
      v8 = sub_100049FA8(v6);
      if (v9)
      {
        v22 = v8;
        v23 = swift_isUniquelyReferenced_nonNull_native();
        v24 = _swiftEmptyDictionarySingleton[3];
        sub_10007B9A4(&qword_100269830, &qword_1001E62C8);
        _NativeDictionary.ensureUnique(isUnique:capacity:)(v23, v24);

        type metadata accessor for AMSAccountMediaType(0);
        sub_100002D64();
        sub_100048EC8(&qword_100268B70, v25, &unk_1001E38CC);
        _NativeDictionary._delete(at:)();

        goto LABEL_17;
      }

      ++v3;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  type metadata accessor for AMSAccountMediaType(0);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_100049F1C(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._finalize()();

  sub_10000A144();
  sub_100049FAC();
}

void sub_100049FAC()
{
  sub_100003D74();
  v1 = ~(-1 << *(v0 + 32));
  for (i = v2 & v1; ((1 << i) & *(v0 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v1)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
    if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
    {

      break;
    }

    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      break;
    }
  }

  sub_100005F14();
}

uint64_t sub_10004A094()
{
  sub_100003D74();
  v3 = v2;
  v5 = v4;
  sub_100005068(v6, v7, v8);
  sub_100006AF8();
  if (v9)
  {
    __break(1u);
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  sub_10000A5E0();
  sub_10007B9A4(v5, v3);
  v10 = sub_1000082EC();
  v12 = _NativeDictionary.ensureUnique(isUnique:capacity:)(v10, v11);
  if (v12)
  {
    sub_1000119F0();
    sub_100007450();
    if (!v16)
    {
      goto LABEL_13;
    }
  }

  if (v1)
  {
    sub_10000AEC0(v12, v13, v14, v15, *v0);
    sub_100005F14();
  }

  else
  {
    v19 = sub_100007988();
    sub_1000112BC(v19, v20, v21, v22, v23);
    sub_100005F14();
  }
}

id sub_10004A1A4()
{
  v11 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v11 - 8);
  __chkstk_darwin(v11);
  sub_100002DEC();
  v3 = v2 - v1;
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4);
  sub_100002DEC();
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  sub_100002DEC();
  v10 = OBJC_IVAR____TtC14amsengagementd20NotificationObserver_queue;
  sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  static DispatchQoS.utility.getter();
  if (qword_1002687F0 != -1)
  {
    swift_once();
  }

  v6 = qword_1002878E8;
  v14 = _swiftEmptyArrayStorage;
  sub_100005DC0(&qword_10026CCF0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  v7 = v6;
  sub_10007B9A4(&unk_10026F8A0, &unk_1001EBCC0);
  sub_10001407C(&qword_10026CD00, &unk_10026F8A0, &unk_1001EBCC0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v11);
  *&v12[v10] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v13.receiver = v12;
  v13.super_class = type metadata accessor for NotificationObserver();
  v8 = objc_msgSendSuper2(&v13, "init");
  sub_10004A498();
  sub_10004D894();

  return v8;
}

void sub_10004A498()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 addObserver:v0 selector:"timezoneChanged" name:NSSystemTimeZoneDidChangeNotification object:0];

  v2 = CFNotificationCenterGetDarwinNotifyCenter();
  v3 = String._bridgeToObjectiveC()();
  CFNotificationCenterAddObserver(v2, v0, sub_10017F0BC, v3, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  v4 = *&v0[OBJC_IVAR____TtC14amsengagementd20NotificationObserver_queue];
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7[4] = sub_10018056C;
  v7[5] = v5;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_10017F158;
  v7[3] = &unk_100250D20;
  v6 = _Block_copy(v7);

  xpc_set_event_stream_handler("com.apple.notifyd.matching", v4, v6);
  _Block_release(v6);
}

uint64_t sub_10004A62C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0);
}

void sub_10004A67C(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = String._bridgeToObjectiveC()();

  [a3 *a4];
}

uint64_t sub_10004A6E8(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  sub_100002CC4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_100002DEC();
  v10 = v9 - v8;
  type metadata accessor for DispatchQoS();
  sub_100002CC4();
  v43 = v12;
  v44 = v11;
  __chkstk_darwin(v11);
  sub_100002DEC();
  v15 = v14 - v13;
  v16 = type metadata accessor for DispatchPredicate();
  sub_100002CC4();
  v18 = v17;
  __chkstk_darwin(v19);
  sub_100002DEC();
  v22 = (v21 - v20);
  if (qword_1002687F0 != -1)
  {
    sub_100002E30(&qword_1002687F0);
  }

  v23 = qword_1002878E8;
  *v22 = qword_1002878E8;
  (*(v18 + 104))(v22, enum case for DispatchPredicate.onQueue(_:), v16);
  v23;
  LOBYTE(v23) = _dispatchPreconditionTest(_:)();
  (*(v18 + 8))(v22, v16);
  if ((v23 & 1) == 0)
  {
    __break(1u);
LABEL_21:
    sub_100006990(&qword_1002686D0);
LABEL_12:
    v41 = v6;
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v29 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v29);
    sub_1000056F8();
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1001E5F70;
    v30 = type metadata accessor for ActivityObserver();
    sub_100023C50(v30);
    v27 = AMSLogKey();
    if (!v27)
    {
      goto LABEL_18;
    }

    goto LABEL_9;
  }

  if (sub_10004ADCC())
  {
    if ((a1 & 1) == 0)
    {
      if (qword_1002686D0 != -1)
      {
        sub_100006990(&qword_1002686D0);
      }

      v41 = v6;
      v42 = v4;
      sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      v24 = type metadata accessor for LogInterpolation();
      sub_100002CFC(v24);
      sub_1000056F8();
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_1001E5F70;
      v26 = type metadata accessor for ActivityObserver();
      sub_100023C50(v26);
      v27 = AMSLogKey();
      if (!v27)
      {
        goto LABEL_18;
      }

LABEL_9:
      v28 = v27;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

LABEL_18:
      sub_10000AB10();

      sub_100002C00(aBlock);
      LogInterpolation.init(stringLiteral:)();
      v36 = static os_log_type_t.info.getter();
      sub_1000036B0(v36, v25);

      aBlock[4] = sub_1000635A8;
      aBlock[5] = v2;
      sub_100002E50();
      sub_100004F0C(COERCE_DOUBLE(1107296256));
      aBlock[2] = v37;
      aBlock[3] = &unk_100246A00;
      v38 = _Block_copy(aBlock);

      static DispatchQoS.unspecified.getter();
      sub_10004DE28();
      sub_10007B9A4(&unk_100270490, &unk_1001E74F0);
      sub_10004DDC4();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v38);
      (*(v41 + 8))(v10, v42);
      (*(v43 + 8))(v15, v44);
    }

LABEL_11:
    v42 = v4;
    if (qword_1002686D0 == -1)
    {
      goto LABEL_12;
    }

    goto LABEL_21;
  }

  if (a1)
  {
    goto LABEL_11;
  }

  if (qword_1002686D0 != -1)
  {
    sub_100006990(&qword_1002686D0);
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v31 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v31);
  sub_1000056F8();
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1001E5F70;
  v33 = type metadata accessor for ActivityObserver();
  sub_100023C50(v33);
  v34 = AMSLogKey();
  if (v34)
  {
    v35 = v34;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(aBlock);
  LogInterpolation.init(stringLiteral:)();
  v40 = static os_log_type_t.info.getter();
  sub_1000036B0(v40, v32);
}

uint64_t sub_10004ADCC()
{
  v0 = type metadata accessor for Date();
  sub_100002CC4();
  v2 = v1;
  v4 = __chkstk_darwin(v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v22 - v7;
  v9 = type metadata accessor for DispatchPredicate();
  sub_100002CC4();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_100002DEC();
  v15 = (v14 - v13);
  if (qword_1002687F0 != -1)
  {
    sub_100002E30(&qword_1002687F0);
  }

  v16 = qword_1002878E8;
  *v15 = qword_1002878E8;
  (*(v11 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v9);
  v17 = v16;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  result = (*(v11 + 8))(v15, v9);
  if (v16)
  {
    if (sub_10004DEDC() == 0.0)
    {
      return 0;
    }

    else
    {
      static Date.now.getter();
      sub_10005BE3C();
      Date.timeIntervalSince(_:)();
      v20 = v19;
      v21 = *(v2 + 8);
      v21(v6, v0);
      v21(v8, v0);
      return sub_10004DEDC() <= v20;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10004B024()
{
  sub_100003D74();
  type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  sub_100002CC4();
  __chkstk_darwin(v0);
  sub_100002DEC();
  sub_100006658();
  sub_1000085C8();
  __chkstk_darwin(v1);
  sub_100002DEC();
  v2 = sub_100007754();
  __chkstk_darwin(v2 - 8);
  sub_100002DEC();
  sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  sub_100006FB8();
  sub_100013AFC(v3, v4, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10007B9A4(&unk_10026F8A0, &unk_1001EBCC0);
  v5 = sub_10001407C(&qword_10026CD00, &unk_10026F8A0, &unk_1001EBCC0);
  sub_10000C1B0(v5);
  v6 = sub_100005ABC();
  v7(v6);
  qword_1002878F8 = sub_10000BB64(54, 0x8000000100201C90);
  sub_100005F14();
}

uint64_t sub_10004B1E4()
{
  type metadata accessor for UbiquitousKeyValueStoreController();
  v0 = swift_allocObject();
  result = sub_10004F3F8();
  qword_100287948 = v0;
  return result;
}

unint64_t sub_10004B220()
{
  result = qword_10026A090;
  if (!qword_10026A090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026A090);
  }

  return result;
}

void sub_10004B274(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1;
  if (qword_1002687B0 != -1)
  {
    a1 = swift_once();
  }

  v6 = [sub_1000437F4(a1 a2)];
  swift_unknownObjectRelease();
  sub_100007A3C();
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = v5;
  v7[4] = a2;
  v9[4] = sub_1001C1AA0;
  v9[5] = v7;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_100099934;
  v9[3] = &unk_100253FD8;
  v8 = _Block_copy(v9);

  sub_100017E54(v5, a2);

  [v6 addFinishBlock:v8];
  _Block_release(v8);
}

uint64_t sub_10004B3D0()
{

  if (*(v0 + 24))
  {
  }

  sub_100007A3C();

  return _swift_deallocObject(v1);
}

void sub_10004B440()
{
  sub_100003D74();
  v1 = v0;
  v62 = v2;
  v3 = sub_10007B9A4(&unk_10026F880, &qword_1001E62B0);
  sub_100003D10(v3);
  sub_100004E78();
  __chkstk_darwin(v4);
  v55 = v53 - v5;
  v57 = sub_10007B9A4(&unk_10026CFA0, &qword_1001E8EC0);
  sub_100002CC4();
  v60 = v6;
  sub_100004E78();
  __chkstk_darwin(v7);
  v56 = v53 - v8;
  sub_100003D1C();
  v61 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  sub_100002CC4();
  v59 = v9;
  __chkstk_darwin(v10);
  sub_100002DEC();
  v58 = v12 - v11;
  sub_100003D1C();
  type metadata accessor for OS_dispatch_queue.Attributes();
  sub_1000047A4();
  __chkstk_darwin(v13);
  sub_100002DEC();
  v54 = (v15 - v14);
  sub_100003D1C();
  v16 = type metadata accessor for DispatchQoS();
  v17 = sub_100003D10(v16);
  __chkstk_darwin(v17);
  sub_100002DEC();
  v18 = sub_10007B9A4(&unk_10026F890, &unk_1001E74C0);
  swift_allocObject();
  *(v0 + 16) = PassthroughSubject.init()();
  *(v0 + 24) = 0;
  sub_100002BC0(0, &qword_10026CFE0, AMSBag_ptr);
  v19 = sub_10002411C(0x6761676E45534D41, 0xED0000746E656D65, 49, 0xE100000000000000);
  *(v0 + 64) = 0;
  *(v0 + 80) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  *(v0 + 32) = v19;
  *(v0 + 56) = 0;
  swift_allocObject();
  *(v0 + 88) = PassthroughSubject.init()();
  *(v0 + 96) = 0;
  *(v0 + 112) = [objc_allocWithZone(NSLock) init];
  *(v0 + 120) = &_swiftEmptySetSingleton;
  v63 = sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  if (qword_1002687F8 != -1)
  {
    swift_once();
  }

  v20 = qword_1002878F0;
  static DispatchQoS.unspecified.getter();
  v65 = _swiftEmptyArrayStorage;
  sub_100013B44(&qword_10026CCF0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10007B9A4(&unk_10026F8A0, &unk_1001EBCC0);
  sub_10000317C();
  sub_10004F4C0(v21, v22, &unk_1001EBCC0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v59 + 104))(v58, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v61);
  *(v0 + 128) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  swift_allocObject();
  *(v0 + 136) = PassthroughSubject.init()();
  *(v0 + 144) = xmmword_1001EED70;
  *(v0 + 160) = 0x80000001001FF3C0;
  *(v0 + 168) = 0xD000000000000022;
  *(v0 + 176) = 0x80000001001FF3F0;
  *(v0 + 184) = 0xD00000000000001FLL;
  *(v0 + 192) = 0x80000001001FF420;
  *(v0 + 200) = 0xD00000000000002BLL;
  *(v0 + 208) = 0x80000001001FF440;
  v23 = *(v0 + 40);
  v24 = v62;
  *(v1 + 40) = v62;
  v54 = v24;

  sub_100002BC0(0, &qword_10026F8B0, off_100241F38);
  *(v1 + 72) = sub_10004BD08();
  *(v1 + 104) = [objc_allocWithZone(AMSMetricsIdentifierCloudDataSource) init];
  [*(v1 + 72) setDelegate:v1];
  [*(v1 + 104) setDelegate:v1];
  v65 = *(v1 + 16);
  v25 = qword_1002687B8;

  if (v25 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  v53[1] = sub_100048CD0(v26, qword_10026F3E0);
  v64 = *(v1 + 128);
  v27 = v64;
  v58 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v28 = v55;
  v29 = sub_10000B3FC();
  sub_10000A7C0(v29, v30, v31, v32);
  v62 = sub_10004F4C0(&qword_10026B700, &unk_10026F890, &unk_1001E74C0);
  v33 = sub_1000437B4(&qword_10026CFC0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  v61 = v33;
  v34 = v27;
  v35 = v56;
  Publisher.debounce<A>(for:scheduler:options:)();
  sub_100009FB0(v28, &unk_10026F880, &qword_1001E62B0);

  sub_100004AA0();
  v36 = swift_allocObject();
  sub_1000072D0(v36);
  v59 = sub_10004F4C0(&qword_10026B708, &unk_10026CFA0, &qword_1001E8EC0);

  v37 = v57;
  Publisher<>.sink(receiveValue:)();
  sub_100017DF8();

  v60 = *(v60 + 8);
  (v60)(v35, v37);
  *(v1 + 24) = v35;

  v38 = *(v1 + 88);
  v64 = *(v1 + 128);
  v39 = v64;
  v65 = v38;
  v40 = sub_10000B3FC();
  v53[0] = v18;
  sub_10000A7C0(v40, v41, v42, v58);

  v43 = v39;
  sub_100022298();
  Publisher.debounce<A>(for:scheduler:options:)();
  sub_100009FB0(v28, &unk_10026F880, &qword_1001E62B0);

  sub_100004AA0();
  v44 = swift_allocObject();
  sub_1000072D0(v44);
  sub_100024078();
  sub_100017DF8();

  (v60)(v35, v37);
  *(v1 + 96) = v39;

  v46 = *(v1 + 136);
  v64 = *(v1 + 128);
  v45 = v64;
  v65 = v46;
  v47 = sub_10000B3FC();
  sub_10000A7C0(v47, v48, v49, v58);

  v50 = v45;
  sub_100022298();
  Publisher.debounce<A>(for:scheduler:options:)();
  sub_100009FB0(v28, &unk_10026F880, &qword_1001E62B0);

  sub_100004AA0();
  v51 = swift_allocObject();
  sub_1000072D0(v51);

  v52 = sub_100024078();

  (v60)(v35, v37);
  *(v1 + 144) = v52;

  sub_100005F14();
}

uint64_t sub_10004BCD4()
{
  swift_weakDestroy();
  sub_100004AA0();

  return _swift_deallocObject(v0);
}

id sub_10004BD08()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 initWithPushNotificationTopic:v1];

  return v2;
}

unint64_t sub_10004BD7C()
{
  result = qword_1002707B0;
  if (!qword_1002707B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002707B0);
  }

  return result;
}

uint64_t sub_10004BDD0(uint64_t a1)
{
  sub_100042038();
  v3 = Dictionary.init(dictionaryLiteral:)();
  v4 = a1 + 64;
  sub_100006BB4();
  v6 = v5 >> 6;
  v38 = a1;

  v7 = 0;
  v37 = v4;
  while (v1)
  {
LABEL_7:
    sub_10000B810();
    v10 = (*(v38 + 48) + 16 * v9);
    v12 = *v10;
    v11 = v10[1];
    sub_100011BAC(*(v38 + 56) + 32 * v9, v43);
    *&v45 = v12;
    *(&v45 + 1) = v11;
    sub_100002C4C(v43, &v46);

LABEL_8:
    v48 = v45;
    v49[0] = v46;
    v49[1] = v47;
    v13 = *(&v45 + 1);
    if (!*(&v45 + 1))
    {

      return v3;
    }

    v14 = v48;
    sub_100002C4C(v49, v44);

    v50._countAndFlagsBits = v14;
    v50._object = v13;
    v15 = sub_10004C0E8(v50);
    if (v15 == 13)
    {
      sub_100002C00(v44);
    }

    else
    {
      LOBYTE(v43[0]) = v15;
      sub_100011BAC(v44, v43 + 8);
      v45 = v43[0];
      v46 = v43[1];
      sub_10000837C();
      sub_10004ED94(v16, v17, &qword_10026BA18, &qword_1001E92B0);
      sub_10004ED94(&v45, v41, &qword_10026BA18, &qword_1001E92B0);
      v18 = LOBYTE(v43[0]);
      sub_100002C4C(&v42, v40);
      swift_isUniquelyReferenced_nonNull_native();
      sub_10004C1D8(v18);
      sub_100003058();
      if (__OFADD__(v19, v20))
      {
        goto LABEL_24;
      }

      sub_100005800();
      v21 = sub_10007B9A4(&qword_10026BA20, &qword_1001E92B8);
      if (sub_100006348(v21, v22, v23, v24, v25, v26, v27, v28, v36, v37, v38, v3))
      {
        sub_10004C1D8(v18);
        sub_10000BEE8();
        if (!v30)
        {
          goto LABEL_26;
        }

        v4 = v29;
      }

      v3 = *v39;
      if (&v48)
      {
        v31 = (*(*v39 + 56) + 32 * v4);
        sub_100002C00(v31);
        sub_100002C4C(v40, v31);
        sub_10000A064(&v45, &qword_10026BA18, &qword_1001E92B0);
        sub_100002C00(v44);
      }

      else
      {
        sub_100005140();
        *(v32 + v4) = v18;
        sub_100002C4C(v40, (*(*v39 + 56) + 32 * v4));
        sub_10000A064(&v45, &qword_10026BA18, &qword_1001E92B0);
        sub_100002C00(v44);

        sub_1000079CC();
        if (v34)
        {
          goto LABEL_25;
        }

        *(*v39 + 16) = v33;
      }

      sub_100002C00(v43 + 1);
      v4 = v37;
    }
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {
      v1 = 0;
      v46 = 0u;
      v47 = 0u;
      v45 = 0u;
      goto LABEL_8;
    }

    v1 = *(v4 + 8 * v8);
    ++v7;
    if (v1)
    {
      v7 = v8;
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t sub_10004C0E8(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1002448A8, v2);

  if (v3 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10004C144(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(uint64_t, Swift::Int))
{
  sub_10003D2F8();
  a2(a1);
  String.hash(into:)();

  v5 = Hasher._finalize()();

  return a3(a1, v5);
}

unint64_t sub_10004C204(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE300000000000000;
      v8 = 7368801;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v7 = 0xE700000000000000;
          v8 = 0x79726574746162;
          break;
        case 2:
          v7 = 0xE700000000000000;
          v8 = 0x64657461657263;
          break;
        case 3:
          v7 = 0xE900000000000073;
          v8 = 0x73616C4361746164;
          break;
        case 4:
          v7 = 0xE400000000000000;
          v8 = 1702125924;
          break;
        case 5:
          v8 = 0x6441734965746164;
          v7 = 0xEE00657669747061;
          break;
        case 6:
          v7 = 0xE500000000000000;
          v8 = 0x79616C6564;
          break;
        case 7:
          v7 = 0xE600000000000000;
          v8 = 0x73746E657665;
          break;
        case 8:
          v8 = 0x696669746E656469;
          v7 = 0xEA00000000007265;
          break;
        case 9:
          v7 = 0xE500000000000000;
          v8 = 0x6563617267;
          break;
        case 0xA:
          v7 = 0xE400000000000000;
          v8 = 1701869940;
          break;
        case 0xB:
          v8 = 0xD000000000000010;
          v7 = 0x80000001001F2E10;
          break;
        case 0xC:
          v8 = 0x746972777265766FLL;
          v7 = 0xE900000000000065;
          break;
        default:
          break;
      }

      v9 = 0xE300000000000000;
      v10 = 7368801;
      switch(a1)
      {
        case 1:
          v9 = 0xE700000000000000;
          v10 = 0x79726574746162;
          break;
        case 2:
          v9 = 0xE700000000000000;
          v10 = 0x64657461657263;
          break;
        case 3:
          v9 = 0xE900000000000073;
          v10 = 0x73616C4361746164;
          break;
        case 4:
          v9 = 0xE400000000000000;
          v10 = 1702125924;
          break;
        case 5:
          v10 = 0x6441734965746164;
          v9 = 0xEE00657669747061;
          break;
        case 6:
          v9 = 0xE500000000000000;
          v10 = 0x79616C6564;
          break;
        case 7:
          v9 = 0xE600000000000000;
          v10 = 0x73746E657665;
          break;
        case 8:
          v10 = 0x696669746E656469;
          v9 = 0xEA00000000007265;
          break;
        case 9:
          v9 = 0xE500000000000000;
          v10 = 0x6563617267;
          break;
        case 10:
          v9 = 0xE400000000000000;
          v10 = 1701869940;
          break;
        case 11:
          v10 = 0xD000000000000010;
          v9 = 0x80000001001F2E10;
          break;
        case 12:
          v10 = 0x746972777265766FLL;
          v9 = 0xE900000000000065;
          break;
        default:
          break;
      }

      if (v8 == v10 && v7 == v9)
      {
        break;
      }

      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
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

double sub_10004C600@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t (*a4)(uint64_t, Swift::Int)@<X3>, _OWORD *a5@<X8>)
{
  if (*(a2 + 16) && (v6 = sub_10004C144(a1, a3, a4), (v7 & 1) != 0))
  {
    v8 = sub_10003AE78(v6);

    sub_100011BAC(v8, v9);
  }

  else
  {
    result = 0.0;
    *a5 = 0u;
    a5[1] = 0u;
  }

  return result;
}

void sub_10004C664()
{
  sub_100003D74();
  v2 = v0;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  sub_100002CC4();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_100002DEC();
  v7 = sub_100007754();
  sub_100002CC4();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_100002DEC();
  v13 = v12 - v11;
  sub_100002BC0(0, &qword_100270650, OS_dispatch_source_ptr);
  v14 = static OS_dispatch_source.makeSignalSource(signal:queue:)();
  swift_getObjectType();
  v15 = swift_allocObject();
  *(v15 + 16) = v2;
  v18[4] = sub_10018FA2C;
  v18[5] = v15;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 1107296256;
  v18[2] = sub_100005E50;
  v18[3] = &unk_100251600;
  v16 = _Block_copy(v18);
  v17 = v2;
  static DispatchQoS.unspecified.getter();
  sub_10004640C();
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v16);
  (*(v5 + 8))(v1, v3);
  (*(v9 + 8))(v13, v7);

  *&v17[OBJC_IVAR____TtC14amsengagementd7RunLoop_terminationSignalSource] = v14;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  OS_dispatch_source.activate()();
  swift_unknownObjectRelease();
  sub_100005F14();
}

uint64_t sub_10004C8A8()
{

  return _swift_deallocObject(v0);
}

char *sub_10004C904(char *a1)
{
  v2 = sub_10007B9A4(&unk_10026FEE0, &unk_1001E67C0);
  __chkstk_darwin(v2 - 8);
  v33 = v30 - v3;
  v32 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v4 = *(v32 - 8);
  __chkstk_darwin(v32);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v7);
  v8 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v8 - 8);
  v36[3] = &type metadata for JSEnginePerformerProvider;
  v36[4] = &off_10024C500;
  v31 = OBJC_IVAR____TtC14amsengagementd17EngagementService_serviceQueue;
  v9 = sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  v30[1] = "engagement-enqueue-finished";
  v30[2] = v9;
  static DispatchQoS.unspecified.getter();
  v35 = _swiftEmptyArrayStorage;
  sub_100005DC0(&qword_10026CCF0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10007B9A4(&unk_10026F8A0, &unk_1001EBCC0);
  sub_1000140D0(&qword_10026CD00, &unk_10026F8A0, &unk_1001EBCC0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v4 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v32);
  v10 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v11 = v31;
  *&a1[v31] = v10;
  v12 = &a1[OBJC_IVAR____TtC14amsengagementd17EngagementService_appDefaultsProvider];
  v13 = type metadata accessor for URL();
  sub_10000A7C0(v33, 1, 1, v13);
  v14 = type metadata accessor for AppDefaultsProvider(0);
  swift_allocObject();
  sub_100046D08();
  *(v12 + 3) = v14;
  *(v12 + 4) = &off_100247508;
  *v12 = v15;
  v16 = &a1[OBJC_IVAR____TtC14amsengagementd17EngagementService_currentEnginePerformer];
  *v16 = 0u;
  *(v16 + 1) = 0u;
  *&a1[OBJC_IVAR____TtC14amsengagementd17EngagementService_engineReleaseDelay] = 1;
  v17 = &a1[OBJC_IVAR____TtC14amsengagementd17EngagementService_engineReleaseToken];
  *v17 = 0;
  *(v17 + 1) = 0;
  v18 = &a1[OBJC_IVAR____TtC14amsengagementd17EngagementService_featureFlagProvider];
  *(v18 + 3) = &type metadata for FeatureFlagProvider;
  *(v18 + 4) = &off_10024B860;
  v19 = OBJC_IVAR____TtC14amsengagementd17EngagementService_flushDebouncer;
  type metadata accessor for AsyncDebouncer();
  swift_allocObject();
  *&a1[v19] = sub_100046F80(0x8AC7230489E80000, 0, &unk_1001EBD40, 0);
  sub_1000262E4(v36, &a1[OBJC_IVAR____TtC14amsengagementd17EngagementService_enginePerformerProvider]);
  v20 = *&a1[v11];
  type metadata accessor for PriorityQueue();
  swift_allocObject();
  v21 = v20;
  sub_10004CF54();
  *&a1[OBJC_IVAR____TtC14amsengagementd17EngagementService_priorityQueue] = v22;
  v23 = *&a1[v11];
  type metadata accessor for BagProvider();
  v24 = swift_allocObject();
  v25 = objc_allocWithZone(type metadata accessor for Defaults());
  v26 = v23;
  *&a1[OBJC_IVAR____TtC14amsengagementd17EngagementService_syncCoordinator] = sub_10004D234(v24, [v25 init], v23);
  sub_1000262E4(v12, &a1[OBJC_IVAR____TtC14amsengagementd17EngagementService_persistedEventCoordinator]);
  v27 = type metadata accessor for EngagementService();
  v34.receiver = a1;
  v34.super_class = v27;
  v28 = objc_msgSendSuper2(&v34, "init");
  sub_100002C00(v36);
  return v28;
}