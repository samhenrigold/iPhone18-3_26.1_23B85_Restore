uint64_t sub_1000D6CA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 352) = v19;
  *(v9 + 360) = v8;
  *(v9 + 260) = v20;
  *(v9 + 336) = a8;
  *(v9 + 344) = v18;
  *(v9 + 320) = a6;
  *(v9 + 328) = a7;
  *(v9 + 304) = a4;
  *(v9 + 312) = a5;
  *(v9 + 288) = a2;
  *(v9 + 296) = a3;
  *(v9 + 280) = a1;
  *(v9 + 368) = type metadata accessor for AssessmentPayload(0);
  *(v9 + 376) = swift_task_alloc();
  v10 = type metadata accessor for ODIClientGUIDSeeds();
  *(v9 + 384) = v10;
  *(v9 + 392) = *(v10 - 8);
  *(v9 + 400) = swift_task_alloc();
  *(v9 + 408) = swift_task_alloc();
  *(v9 + 416) = type metadata accessor for AssessmentPayloadCacher(0);
  *(v9 + 424) = swift_task_alloc();
  v11 = type metadata accessor for DUATaskType();
  *(v9 + 432) = v11;
  *(v9 + 440) = *(v11 - 8);
  *(v9 + 448) = swift_task_alloc();
  v12 = type metadata accessor for DispatchTime();
  *(v9 + 456) = v12;
  *(v9 + 464) = *(v12 - 8);
  *(v9 + 472) = swift_task_alloc();
  v13 = type metadata accessor for String.Encoding();
  *(v9 + 480) = v13;
  *(v9 + 488) = *(v13 - 8);
  *(v9 + 496) = swift_task_alloc();
  v14 = type metadata accessor for TSID();
  *(v9 + 504) = v14;
  *(v9 + 512) = *(v14 - 8);
  *(v9 + 520) = swift_task_alloc();
  v15 = type metadata accessor for UUID();
  *(v9 + 528) = v15;
  *(v9 + 536) = *(v15 - 8);
  *(v9 + 544) = swift_task_alloc();

  return _swift_task_switch(sub_1000D6FC4, 0, 0);
}

uint64_t sub_1000D6FC4()
{
  v1 = *(v0 + 544);
  v2 = *(v0 + 536);
  v3 = *(v0 + 528);
  UUID.init()();
  v4 = UUID.uuidString.getter();
  v6 = v5;
  *(v0 + 552) = v4;
  *(v0 + 560) = v5;
  (*(v2 + 8))(v1, v3);
  swift_bridgeObjectRetain_n();

  TSID.init(tsid:session_id:ts_nonce:)();
  *(v0 + 568) = type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  sub_1000D8F70(&qword_1006CCAA8, &type metadata accessor for TSID, &protocol conformance descriptor for TSID);
  v7 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  *(v0 + 576) = v7;
  *(v0 + 584) = v8;
  v9 = v7;
  v10 = v8;

  type metadata accessor for ODNAssessmentGUIDManager();
  *(v0 + 592) = type metadata accessor for ProfileContent(0);
  v11 = static ODNAssessmentGUIDManager.getECv3SHEncryptedContainers(tsidEncryptionCertString:tsid:assessmentGUID:)();
  *(v0 + 600) = 0;
  *(v0 + 608) = v11;
  *(v0 + 616) = v12;
  if (!v11 || !v12)
  {
    v55 = *(v0 + 520);
    v22 = *(v0 + 504);
    v21 = *(v0 + 512);

    sub_1000D8A4C();
    sub_1000D9624();
    swift_allocError();
    sub_1000D9688(v23, 2);
    swift_willThrow();
    sub_1000448B0(v9, v10);

    (*(v21 + 8))(v55, v22);
    sub_1000D9630(*(v0 + 544));

    sub_10006574C();
    sub_100097FD0();

    __asm { BRAA            X1, X16 }
  }

  sub_1000443DC(&qword_1006CCAB0);
  inited = swift_initStackObject();
  *(v0 + 624) = inited;
  *(inited + 16) = xmmword_1005CC380;
  *(inited + 32) = v9;
  *(inited + 40) = v10;
  sub_100046D38(v9, v10);
  v16 = EncryptedDataContainer.data.getter();
  if (v17)
  {
    v18 = v16;
    static String.Encoding.utf8.getter();
    String.data(using:allowLossyConversion:)();
    sub_1000D96A8();

    v19 = sub_1000D959C();
    v20(v19);
  }

  else
  {
    v18 = 0;
    v6 = 0xF000000000000000;
  }

  *(inited + 48) = v18;
  *(inited + 56) = v6;
  v24 = EncryptedDataContainer.data.getter();
  if (v25)
  {
    v26 = v24;
    v28 = *(v0 + 488);
    v27 = *(v0 + 496);
    v29 = *(v0 + 480);
    static String.Encoding.utf8.getter();
    String.data(using:allowLossyConversion:)();
    sub_1000D96A8();

    (*(v28 + 8))(v27, v29);
  }

  else
  {
    v26 = 0;
    v6 = 0xF000000000000000;
  }

  v30 = *(v0 + 464);
  *(inited + 64) = v26;
  *(inited + 72) = v6;
  v54 = [objc_allocWithZone(ASPrecomputationRunner) init];
  *(v0 + 632) = v54;
  static DispatchTime.now()();
  *(v0 + 640) = DispatchTime.uptimeNanoseconds.getter();
  *(v0 + 648) = *(v30 + 8);
  *(v0 + 656) = (v30 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v31 = sub_1000D967C();
  v32(v31);
  sub_100080E58();
  v33.super.isa = Array._bridgeToObjectiveC()().super.isa;
  *(v0 + 664) = v33;
  v53.super.isa = Data._bridgeToObjectiveC()().super.isa;
  *(v0 + 672) = v53;
  v34 = ODIBindingsDict.contents.getter();
  sub_1000A34A0(v34);

  v35.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  *(v0 + 680) = v35;

  v37 = 0;
  v38 = _swiftEmptyArrayStorage;
LABEL_15:
  v39 = v37 - 1;
  v40 = 16 * v37 + 40;
  while (v39 != 2)
  {
    if (++v39 > 2)
    {
      __break(1u);
      return _swift_continuation_await(isUniquelyReferenced_nonNull_native);
    }

    v41 = v40 + 16;
    v42 = *(inited + v40);
    v40 += 16;
    if (v42 >> 60 != 15)
    {
      isa = v35.super.isa;
      v43 = *(inited + v41 - 24);
      sub_100046D38(v43, v42);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v44 = v33.super.isa;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100062C84();
        v38 = isUniquelyReferenced_nonNull_native;
      }

      v45 = v38[2];
      if (v45 >= v38[3] >> 1)
      {
        sub_100062C84();
        v38 = isUniquelyReferenced_nonNull_native;
      }

      v37 = v39 + 1;
      v38[2] = v45 + 1;
      v46 = &v38[2 * v45];
      v46[4] = v43;
      v46[5] = v42;
      v33.super.isa = v44;
      v35.super.isa = isa;
      goto LABEL_15;
    }
  }

  v47 = Array._bridgeToObjectiveC()().super.isa;
  *(v0 + 688) = v47;

  v48 = Data._bridgeToObjectiveC()().super.isa;
  *(v0 + 696) = v48;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 224;
  *(v0 + 24) = sub_1000D76B4;
  v49 = swift_continuation_init();
  *(v0 + 216) = sub_1000443DC(&qword_1006CCA98);
  *(v0 + 160) = _NSConcreteStackBlock;
  *(v0 + 168) = 1107296256;
  *(v0 + 176) = sub_1000D8684;
  *(v0 + 184) = &unk_100695290;
  *(v0 + 192) = v49;
  [v54 runPrecomputationWithProfiles:v33.super.isa profileInfo:v53.super.isa bindings:v35.super.isa externalDataArray:v47 nonce:v48 completion:v0 + 160];
  sub_100097FD0();

  return _swift_continuation_await(isUniquelyReferenced_nonNull_native);
}

uint64_t sub_1000D76B4()
{
  sub_1000657D4();
  sub_10007CAE0();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 704) = v4;
  if (v4)
  {
  }

  sub_1000658F8();

  return _swift_task_switch(v5, v6, v7);
}

void sub_1000D77BC()
{
  v1 = *(v0 + 696);
  v2 = *(v0 + 688);
  v3 = *(v0 + 680);
  v4 = *(v0 + 672);
  v5 = *(v0 + 664);
  v6 = *(v0 + 648);
  v103 = *(v0 + 640);
  v7 = *(v0 + 472);
  v8 = *(v0 + 456);
  v9 = *(v0 + 232);
  *(v0 + 712) = *(v0 + 224);
  *(v0 + 720) = v9;
  v97 = *(v0 + 248);
  v98 = *(v0 + 240);
  *(v0 + 728) = v98;
  *(v0 + 736) = v97;
  v95 = *(v0 + 256);

  static DispatchTime.now()();
  v10 = DispatchTime.uptimeNanoseconds.getter();
  v6(v7, v8);
  type metadata accessor for DIPODNHelper();
  if (v10 < v103)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v12 = *(v0 + 440);
  v11 = *(v0 + 448);
  v13 = *(v0 + 432);
  (*(v12 + 104))(v11, enum case for DUATaskType.background(_:), v13);
  v14 = sub_1000D959C();
  sub_100046D38(v14, v15);
  sub_1000D959C();
  v16 = static DIPODNHelper.generateDUAData(tData:duration:computationTaskType:isDeviceLocked:)();
  v18 = v17;
  v19 = sub_1000D959C();
  sub_1000448B0(v19, v20);
  (*(v12 + 8))(v11, v13);
  if (!v18)
  {
    v28 = *(v0 + 632);
    v96 = *(v0 + 584);
    v29 = *(v0 + 576);
    v30 = *(v0 + 512);
    v101 = *(v0 + 504);
    v104 = *(v0 + 520);

    sub_1000D8A4C();
    sub_1000D9624();
    swift_allocError();
    sub_1000D9688(v31, 3);
    swift_willThrow();

    sub_1000448B0(v98, v97);

    v32 = sub_1000D959C();
    sub_1000448B0(v32, v33);
    sub_1000448B0(v29, v96);
    (*(v30 + 8))(v104, v101);
LABEL_14:
    sub_1000D95A8();

    sub_10006574C();

    v56();
    return;
  }

  v94 = v16;
  sub_1000D8F0C(*(v0 + 360), *(v0 + 424));
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();
  v23 = os_log_type_enabled(v21, v22);
  v24 = *(v0 + 424);
  if (v23)
  {
    v25 = swift_slowAlloc();
    v105 = swift_slowAlloc();
    *v25 = 136446210;
    v26 = *v24;

    sub_1000D954C();
    v27 = sub_100052F7C(v26);

    *(v25 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v21, v22, "Successfully pre-generated an assessment for workflow ID %{public}s", v25, 0xCu);
    sub_100044850(v105);
    sub_100097AB8();

    sub_100097AB8();
  }

  else
  {

    sub_1000D954C();
  }

  if (v95 < 0)
  {
    goto LABEL_20;
  }

  v34 = *(v0 + 288);
  v35 = *(v34 + 32);
  if (v35 < 0xFFFFFFFF80000000)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v35 > 0x7FFFFFFF)
  {
LABEL_22:
    __break(1u);
    return;
  }

  v91 = *(v34 + 32);
  v36 = *(v0 + 360);
  v37 = *v36;
  v92 = v36[1];
  v93 = *(v34 + 24);
  v38 = *(v0 + 600);
  v39 = *(v0 + 592);
  v40 = *(v0 + 384);
  v88 = *(v34 + v39[11]);
  v41 = (v34 + v39[12]);
  v89 = *v41;
  v90 = v41[1];
  v86 = v39[13];
  v87 = v37;
  v99 = *(v0 + 288);
  v42 = Data.base64EncodedString(options:)(0);
  swift_allocObject();
  v43 = JSONEncoder.init()();
  *(v0 + 744) = v43;
  ODIClientGUID.seeds.getter();
  v44 = sub_1000D8F70(&qword_1006CCAB8, &type metadata accessor for ODIClientGUIDSeeds, &protocol conformance descriptor for ODIClientGUIDSeeds);
  v45 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v38)
  {
    (*(*(v0 + 392) + 8))(*(v0 + 408), *(v0 + 384));

    v50 = *(v0 + 736);
    v51 = *(v0 + 728);
    v52 = *(v0 + 720);
    v53 = *(v0 + 712);
    v54 = *(v0 + 632);
    sub_1000D9694();
    v55 = *(v0 + 512);
    v100 = *(v0 + 504);
    v102 = *(v0 + 520);

    sub_1000448B0(v51, v50);

    sub_1000448B0(v53, v52);
    sub_1000448B0(v40, v42._countAndFlagsBits);
    (*(v55 + 8))(v102, v100);
    goto LABEL_14;
  }

  v47 = v45;
  v48 = v46;
  v85 = *(*(v0 + 392) + 8);
  v85(*(v0 + 408), *(v0 + 384));
  v49 = Data.base64EncodedString(options:)(0);
  sub_1000448B0(v47, v48);
  ODIClientGUID.seeds.getter();
  dispatch thunk of JSONEncoder.encode<A>(_:)();
  sub_1000D96A8();
  v57 = *(v0 + 608);
  v85(*(v0 + 400), *(v0 + 384));
  v58 = Data.base64EncodedString(options:)(0);
  sub_1000448B0(v43, v44);
  *(v0 + 264) = v57;
  sub_1000443DC(&qword_1006CCAC0);
  sub_1000D8FB8(&qword_1006CCAC8, &qword_1006CCAC0);
  dispatch thunk of JSONEncoder.encode<A>(_:)();
  sub_1000D96A8();
  v59 = *(v0 + 616);
  v60 = Data.base64EncodedString(options:)(0);
  sub_1000448B0(v43, v44);
  *(v0 + 272) = v59;
  sub_1000443DC(&qword_1006CCAD0);
  sub_1000D8FB8(&qword_1006CCAD8, &qword_1006CCAD0);
  v61 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v63 = v62;
  v83 = *(v0 + 552);
  v64 = *(v0 + 368);
  v65 = *(v0 + 376);
  v84 = *(v0 + 560);
  v82 = *(v0 + 280);
  v66 = Data.base64EncodedString(options:)(0);
  sub_1000448B0(v61, v63);
  Date.init()();
  v67 = ODIClientGUID.asString.getter();
  v69 = v68;
  v70 = ODIClientGUID.asString.getter();
  v72 = v71;
  v73 = v64[14];
  v74 = type metadata accessor for ODIBindingsDict();
  (*(*(v74 - 8) + 16))(&v65[v73], v82, v74);
  sub_1000446C4(v99 + v86, &v65[v64[21]]);
  *v65 = v87;
  *(v65 + 1) = v92;
  *&v65[v64[6]] = v42;
  v75 = &v65[v64[7]];
  *v75 = v94;
  v75[1] = v18;
  v76 = &v65[v64[8]];
  *v76 = v67;
  v76[1] = v69;
  *&v65[v64[9]] = v49;
  v77 = &v65[v64[10]];
  *v77 = v70;
  v77[1] = v72;
  *&v65[v64[11]] = v58;
  v78 = &v65[v64[12]];
  *v78 = v83;
  *(v78 + 1) = v84;
  *&v65[v64[13]] = v95;
  *&v65[v64[15]] = v93;
  *&v65[v64[16]] = v91;
  *&v65[v64[17]] = v60;
  *&v65[v64[18]] = v66;
  v65[v64[19]] = v88;
  v79 = &v65[v64[20]];
  *v79 = v89;
  *(v79 + 1) = v90;

  v80 = swift_task_alloc();
  *(v0 + 752) = v80;
  *v80 = v0;
  v80[1] = sub_1000D8168;
  v81 = *(v0 + 376);

  sub_1000BCBFC(v81);
}

uint64_t sub_1000D8168()
{
  sub_1000657D4();
  sub_1000657F8();
  sub_10007CAE0();
  *v3 = v2;
  v4 = *v1;
  sub_1000773D4();
  *v5 = v4;
  *(v6 + 760) = v0;

  sub_1000658F8();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000D8264()
{
  v1 = v0[92];
  v2 = v0[91];
  v3 = v0[89];
  v4 = v0[79];
  v10 = v0[73];
  v11 = v0[90];
  v9 = v0[72];
  v5 = v0[65];
  v6 = v0[64];
  v12 = v0[63];

  sub_1000D9574();

  sub_1000448B0(v2, v1);

  sub_1000448B0(v3, v11);
  sub_1000448B0(v9, v10);
  (*(v6 + 8))(v5, v12);

  sub_10006574C();

  return v7();
}

uint64_t sub_1000D83DC()
{

  sub_1000D9574();
  v3 = v0[92];
  v4 = v0[91];
  v5 = v0[90];
  v6 = v0[89];
  v7 = v0[79];
  sub_1000D9694();
  v12 = v0[65];
  v8 = v0[64];
  v11 = v0[63];

  sub_1000448B0(v4, v3);

  sub_1000448B0(v6, v5);
  sub_1000448B0(v2, v1);
  (*(v8 + 8))(v12, v11);
  sub_1000D95A8();

  sub_10006574C();

  return v9();
}

uint64_t sub_1000D851C(uint64_t a1)
{
  v10 = v1[87];
  v11 = v1[86];
  v12 = v1[85];
  v13 = v1[84];
  v14 = v1[83];
  v2 = v1[79];
  v3 = v1[73];
  v4 = v1[72];
  v5 = v1[65];
  v6 = v1[63];
  v7 = v1[64];
  swift_willThrow();

  sub_1000448B0(v4, v3);
  (*(v7 + 8))(v5, v6);

  sub_1000D9630(v1[68]);

  sub_10006574C();

  return v8();
}

uint64_t sub_1000D8684(uint64_t a1, void *a2, void *a3, int a4, void *a5)
{
  v9 = *sub_100044728((a1 + 32), *(a1 + 56));
  if (a5)
  {
    v10 = a5;

    return sub_1000C4464();
  }

  else
  {
    v12 = a2;
    v13 = a3;
    v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20[0] = v14;
    v20[1] = v16;
    v20[2] = v17;
    v20[3] = v19;
    v21 = a4;
    return sub_1000C1B3C(v9, v20);
  }
}

uint64_t sub_1000D876C(size_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4, v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000D8990(0, a1);
  v9 = v8[2];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_100062778(0, v9, 0, v8);
    v8 = v10;
  }

  v11 = sub_1000D967C();
  if (!SecRandomCopyBytes(v11, v12, v13))
  {
    return sub_1000450F0(v8);
  }

  Logger.init(subsystem:category:)();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    sub_100097B40();
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Failed to generate nonce", v16, 2u);
    sub_100097AB8();
  }

  sub_100080D18();
  sub_1000D9624();
  swift_allocError();
  sub_1000D9688(v17, 1);
  swift_willThrow();
  return (*(v3 + 8))(v7, v2);
}

void *sub_1000D8990(void *result, size_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return _swiftEmptyArrayStorage;
    }

    v3 = result;
    v4 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v4 + 16) = a2;
    memset((v4 + 32), v3, a2);
    return v4;
  }

  return result;
}

uint64_t type metadata accessor for AssessmentPayloadCacher(uint64_t a1)
{
  result = qword_1006CCB38;
  if (!qword_1006CCB38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1000D8A4C()
{
  result = qword_1006CCAA0;
  if (!qword_1006CCAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CCAA0);
  }

  return result;
}

void sub_1000D8AA0()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v3 = v2 - 2;
  if (v2 >= 2)
  {
    v4 = 0;
    while (1)
    {
      __src[0] = 0;
      swift_stdlib_random();
      v5 = (__src[0] * v2) >> 64;
      if (v2 > __src[0] * v2)
      {
        v6 = -v2 % v2;
        if (v6 > __src[0] * v2)
        {
          do
          {
            __src[0] = 0;
            swift_stdlib_random();
          }

          while (v6 > __src[0] * v2);
          v5 = (__src[0] * v2) >> 64;
        }
      }

      v7 = v4 + v5;
      if (__OFADD__(v4, v5))
      {
        break;
      }

      if (v4 != v7)
      {
        v8 = *(v1 + 16);
        if (v4 >= v8)
        {
          goto LABEL_20;
        }

        memcpy(__dst, (v1 + 32 + 104 * v4), sizeof(__dst));
        if (v7 >= v8)
        {
          goto LABEL_21;
        }

        memcpy(__src, (v1 + 32 + 104 * v7), sizeof(__src));
        sub_10007606C(__dst, v13);
        sub_10007606C(__src, v13);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1000875FC(v1);
          v1 = v9;
        }

        if (v4 >= *(v1 + 16))
        {
          goto LABEL_22;
        }

        v10 = v1 + 32;
        memcpy(v12, (v1 + 32 + 104 * v4), sizeof(v12));
        memcpy((v1 + 32 + 104 * v4), __src, 0x68uLL);
        sub_1000760C8(v12);
        if (v7 >= *(v1 + 16))
        {
          goto LABEL_23;
        }

        memcpy(v13, (v10 + 104 * v7), sizeof(v13));
        memcpy((v10 + 104 * v7), __dst, 0x68uLL);
        sub_1000760C8(v13);
        *v0 = v1;
      }

      --v2;
      if (v4++ == v3)
      {
        return;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }
}

void sub_1000D8C70()
{
  v1 = type metadata accessor for ODIBindingsDict();
  v30 = *(v1 - 8);
  v4 = __chkstk_darwin(v1, v2, v3);
  v33 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4, v6, v7);
  v34 = &v26 - v8;
  v29 = v0;
  v9 = *v0;
  v10 = *(*v0 + 16);
  v11 = v10 - 2;
  if (v10 >= 2)
  {
    v12 = 0;
    v26 = v10 - 2;
    v27 = (v30 + 40);
    v28 = v30 + 16;
    while (1)
    {
      v35 = 0;
      swift_stdlib_random();
      v13 = (v35 * v10) >> 64;
      if (v10 > v35 * v10)
      {
        v14 = -v10 % v10;
        if (v14 > v35 * v10)
        {
          do
          {
            v35 = 0;
            swift_stdlib_random();
          }

          while (v14 > v35 * v10);
          v13 = (v35 * v10) >> 64;
        }
      }

      v15 = v12 + v13;
      if (__OFADD__(v12, v13))
      {
        break;
      }

      if (v12 != v15)
      {
        v16 = *(v9 + 16);
        if (v12 >= v16)
        {
          goto LABEL_20;
        }

        v17 = v1;
        v32 = (*(v30 + 80) + 32) & ~*(v30 + 80);
        v18 = v9 + v32;
        v19 = *(v30 + 72);
        v20 = *(v30 + 16);
        v31 = v19 * v12;
        v20(v34, v9 + v32 + v19 * v12, v17);
        if (v15 >= v16)
        {
          goto LABEL_21;
        }

        v21 = v19 * v15;
        v20(v33, v18 + v19 * v15, v17);
        v1 = v17;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100087610(v9);
          v9 = v22;
        }

        if (v12 >= *(v9 + 16))
        {
          goto LABEL_22;
        }

        v23 = v9 + v32;
        v24 = *v27;
        (*v27)(v9 + v32 + v31, v33, v17);
        if (v15 >= *(v9 + 16))
        {
          goto LABEL_23;
        }

        v24(v23 + v21, v34, v17);
        *v29 = v9;
        v11 = v26;
      }

      --v10;
      if (v12++ == v11)
      {
        return;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }
}

uint64_t sub_1000D8F0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssessmentPayloadCacher(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000D8F70(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000D8FB8(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000471A4(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000D9008(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for AssessmentPayloadError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1000D9134);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ProfileEvaluationCacherError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1000D9238);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1000D9284(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Logger();
    v9 = a1 + *(a3 + 28);

    return sub_100046EA4(v9, a2, v8);
  }
}

uint64_t sub_1000D9320(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Logger();
    v8 = v5 + *(a4 + 28);

    return sub_1000485F8(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000D93A0(uint64_t a1)
{
  result = type metadata accessor for AssessmentPayloadStore(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Logger();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1000D9438()
{
  result = qword_1006CCB78;
  if (!qword_1006CCB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CCB78);
  }

  return result;
}

unint64_t sub_1000D9490()
{
  result = qword_1006CCB80;
  if (!qword_1006CCB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CCB80);
  }

  return result;
}

uint64_t sub_1000D94FC(uint64_t a1)
{
  *(a1 + 8) = sub_1000D6030;
  v5 = v2[16];
  v4 = v2[17];
  v6 = v2[13];
  *(v3 + 32) = v1 & 1;
  *(v3 + 16) = v4;
  *(v3 + 24) = v5;
  return v6;
}

uint64_t sub_1000D954C()
{

  return sub_1000D9008(v0, type metadata accessor for AssessmentPayloadCacher);
}

uint64_t sub_1000D9574()
{

  return sub_1000D9008(v0, type metadata accessor for AssessmentPayload);
}

uint64_t sub_1000D95A8()
{
}

uint64_t sub_1000D95D8()
{
}

uint64_t sub_1000D95F8()
{
  v3[5] = v1;
  v3[6] = v2;
  v3[2] = 2;

  return ODIBindingsDict.subscript.setter();
}

uint64_t sub_1000D9630(uint64_t a1)
{
}

uint64_t sub_1000D9658()
{
}

void sub_1000D96B4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for XPCStreamListener(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8, v9, v10);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Registering listener for Buddy Flow completion", v13, 2u);
  }

  v14 = *v3;
  sub_10007DE54(v3, aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v16 = swift_allocObject();
  sub_10007E1C4(aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  v17 = (v16 + ((v8 + v15 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v17 = a1;
  v17[1] = a2;
  aBlock[4] = sub_1000D9B00;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10004788C;
  aBlock[3] = &unk_100695400;
  v18 = _Block_copy(aBlock);

  xpc_set_event_stream_handler("com.apple.notifyd.matching", v14, v18);
  _Block_release(v18);
}

uint64_t type metadata accessor for XPCStreamListener(uint64_t a1)
{
  result = qword_1006CCBE0;
  if (!qword_1006CCBE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

const char *sub_1000D991C(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  result = xpc_dictionary_get_string(a1, _xpc_event_key_name);
  if (result)
  {
    result = strcmp(result, "Buddy Setup Done");
    if (!result)
    {
      type metadata accessor for XPCStreamListener(0);
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v5, v6, "Buddy Flow complete notification received. Triggering handler.", v7, 2u);
      }

      return a3();
    }
  }

  return result;
}

uint64_t sub_1000D9A00()
{
  v1 = (type metadata accessor for XPCStreamListener(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;

  v6 = v1[7];
  v7 = type metadata accessor for Logger();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);

  return _swift_deallocObject(v0, v4 + 16, v2 | 7);
}

const char *sub_1000D9B00(void *a1)
{
  v3 = *(type metadata accessor for XPCStreamListener(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1000D991C(a1, v1 + v4, v5);
}

uint64_t sub_1000D9BA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000D9BCC(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Logger();
    v9 = a1 + *(a3 + 20);

    return sub_100046EA4(v9, a2, v8);
  }
}

void *sub_1000D9C68(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Logger();
    v8 = v5 + *(a4 + 20);

    return sub_1000485F8(v8, a2, a2, v7);
  }

  return result;
}

unint64_t sub_1000D9CE8(uint64_t a1)
{
  result = sub_10007DD5C();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Logger();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void *sub_1000D9D6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v21[0] = a1;
  v21[1] = a2;
  v6 = type metadata accessor for LocalFeatureToggle(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6 - 8, v8, v9);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a3 + 16);
  v13 = _swiftEmptyArrayStorage;
  if (!v12)
  {
    return v13;
  }

  v26 = _swiftEmptyArrayStorage;
  sub_1000BDFC4(0, v12, 0);
  v13 = v26;
  for (i = (a3 + 40); ; i += 6)
  {
    v15 = *i;
    v16 = *(i + 8);
    v17 = *(i + 32);
    v22[0] = *(i - 1);
    v22[1] = v15;
    v23 = v16;
    v24 = *(i + 1);
    v25 = v17;

    (v21[0])(v22);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v26 = v13;
    v19 = v13[2];
    v18 = v13[3];
    if (v19 >= v18 >> 1)
    {
      sub_1000BDFC4(v18 > 1, v19 + 1, 1);
      v13 = v26;
    }

    v13[2] = v19 + 1;
    sub_1000DC714(v11, v13 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v19);
    if (!--v12)
    {
      return v13;
    }
  }

  __break(1u);
  return result;
}

void *sub_1000D9F4C()
{
  v99 = type metadata accessor for Date();
  sub_10004EAE0();
  v3 = v2;
  __chkstk_darwin(v4, v5, v6);
  sub_10004EAF4();
  v9 = v8 - v7;
  v98 = type metadata accessor for LocalFeatureToggle(0);
  sub_10004EAE0();
  v100 = v10;
  __chkstk_darwin(v11, v12, v13);
  sub_100047544();
  v93 = v14;
  sub_1000474F8();
  __chkstk_darwin(v15, v16, v17);
  v96 = &v91 - v18;
  sub_1000474F8();
  __chkstk_darwin(v19, v20, v21);
  sub_1000DD164();
  __chkstk_darwin(v22, v23, v24);
  v94 = (&v91 - v25);
  sub_1000474F8();
  __chkstk_darwin(v26, v27, v28);
  v30 = &v91 - v29;
  v31 = v0[4];
  v95 = v0;
  sub_100044728(v0 + 1, v31);
  v32 = sub_10004ECC8();
  v34 = v33(v32);
  v35 = 0;
  v97 = *(v34 + 16);
  v36 = (v3 + 8);
  v37 = _swiftEmptyArrayStorage;
  while (v97 != v35)
  {
    if (v35 >= *(v34 + 16))
    {
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v38 = (*(v100 + 80) + 32) & ~*(v100 + 80);
    v39 = *(v100 + 72);
    sub_1000DC654(v34 + v38 + v39 * v35, v30);
    static Date.now.getter();
    v40 = static Date.> infix(_:_:)();
    (*v36)(v9, v99);
    if (v40)
    {
      sub_1000DC714(v30, v94);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v101 = v37;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1000DD0E4(v37[2]);
        v37 = v101;
      }

      v43 = v37[2];
      v42 = v37[3];
      v44 = v43 + 1;
      if (v43 >= v42 >> 1)
      {
        v45 = sub_1000DD148(v42);
        v92 = v46;
        sub_1000BDFC4(v45, v46, 1);
        v44 = v92;
        v37 = v101;
      }

      ++v35;
      v37[2] = v44;
      sub_1000DC714(v94, v37 + v38 + v43 * v39);
    }

    else
    {
      sub_1000DC6B8(v30);
      ++v35;
    }
  }

  v47 = v95;
  v48 = *v95;
  v94 = sub_1000DBBBC(v37, *v95);

  __chkstk_darwin(v49, v50, v51);
  *(&v91 - 2) = v47;
  v52 = sub_1000D9D6C(sub_1000DC778, (&v91 - 4), v48);
  v53 = 0;
  v54 = v52[2];
  v55 = _swiftEmptyArrayStorage;
  while (v54 != v53)
  {
    if (v53 >= v52[2])
    {
      goto LABEL_40;
    }

    v56 = (*(v100 + 80) + 32) & ~*(v100 + 80);
    v57 = *(v100 + 72);
    sub_1000DC654(v52 + v56 + v57 * v53, v1);
    static Date.now.getter();
    v58 = static Date.> infix(_:_:)();
    (*v36)(v9, v99);
    if (v58)
    {
      sub_1000DC714(v1, v93);
      v59 = swift_isUniquelyReferenced_nonNull_native();
      v101 = v55;
      if ((v59 & 1) == 0)
      {
        sub_1000DD0E4(v55[2]);
        v55 = v101;
      }

      v61 = v55[2];
      v60 = v55[3];
      v62 = (v61 + 1);
      if (v61 >= v60 >> 1)
      {
        v63 = sub_1000DD148(v60);
        v97 = v64;
        sub_1000BDFC4(v63, v64, 1);
        v62 = v97;
        v55 = v101;
      }

      ++v53;
      v55[2] = v62;
      sub_1000DC714(v93, v55 + v56 + v61 * v57);
    }

    else
    {
      sub_1000DC6B8(v1);
      ++v53;
    }
  }

  v65 = v94;
  v66 = sub_1000DBD9C(v94, v55);

  v67 = v95[4];
  v68 = v95[5];
  sub_100044728(v95 + 1, v67);
  (*(v68 + 8))(v66, 0x746165662E647361, 0xEC00000073657275, v67, v68);

  v69 = sub_1000DBD9C(v65, v52);

  v99 = v69[2];
  if (v99)
  {
    v70 = 0;
    v98 = v69 + ((*(v100 + 80) + 32) & ~*(v100 + 80));
    v71 = _swiftEmptyDictionarySingleton;
    v72 = v96;
    v97 = v69;
    while (v70 < v69[2])
    {
      sub_1000DC654(v98 + *(v100 + 72) * v70, v72);
      if (*(v72 + 40) == 1)
      {
        v73 = *(v72 + 16);
      }

      else
      {
        v73 = 0;
      }

      v75 = *v72;
      v74 = *(v72 + 8);
      v76 = swift_isUniquelyReferenced_nonNull_native();
      v101 = v71;
      v77 = sub_1000BFB60(v75, v74);
      v79 = v71[2];
      v80 = (v78 & 1) == 0;
      v81 = v79 + v80;
      if (__OFADD__(v79, v80))
      {
        goto LABEL_42;
      }

      v82 = v77;
      v83 = v78;
      sub_1000443DC(&qword_1006CCC58);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v76, v81))
      {
        v84 = sub_1000BFB60(v75, v74);
        if ((v83 & 1) != (v85 & 1))
        {
          goto LABEL_44;
        }

        v82 = v84;
      }

      v71 = v101;
      if (v83)
      {
        *(v101[7] + v82) = v73;
      }

      else
      {
        v101[(v82 >> 6) + 8] |= 1 << v82;
        v86 = (v71[6] + 16 * v82);
        *v86 = v75;
        v86[1] = v74;
        *(v71[7] + v82) = v73;
        v87 = v71[2];
        v88 = __OFADD__(v87, 1);
        v89 = v87 + 1;
        if (v88)
        {
          goto LABEL_43;
        }

        v71[2] = v89;
      }

      ++v70;
      v72 = v96;
      sub_1000DC6B8(v96);
      v69 = v97;
      if (v99 == v70)
      {
        goto LABEL_38;
      }
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v71 = _swiftEmptyDictionarySingleton;
LABEL_38:

  return v71;
}

uint64_t sub_1000DA5F4()
{
  v0 = type metadata accessor for Logger();
  sub_100046E08(v0, qword_1006CCC18);
  sub_100046E6C(v0, qword_1006CCC18);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000DA678(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656C62616E457369 && a2 == 0xE900000000000064;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6F69746172 && a2 == 0xE500000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 7107700 && a2 == 0xE300000000000000;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6374754F65636964 && a2 == 0xEB00000000656D6FLL;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x797269707865 && a2 == 0xE600000000000000)
          {

            return 5;
          }

          else
          {
            v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1000DA86C(char a1)
{
  result = 1701667182;
  switch(a1)
  {
    case 1:
      result = 0x656C62616E457369;
      break;
    case 2:
      result = 0x6F69746172;
      break;
    case 3:
      result = 7107700;
      break;
    case 4:
      result = 0x6374754F65636964;
      break;
    case 5:
      result = 0x797269707865;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000DA92C(void *a1)
{
  sub_1000443DC(&qword_1006CCD28);
  sub_10004EAE0();
  __chkstk_darwin(v3, v4, v5);
  sub_10004EAF4();
  sub_100044728(a1, a1[3]);
  sub_1000DCB50();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_10004EC80();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    sub_10004EC80();
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_1000443DC(&qword_1006CCD18);
    sub_1000DCBA4(&qword_1006CCD30, &protocol witness table for Int, &protocol conformance descriptor for <A> [A]);
    sub_10004EC80();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_10004EC80();
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_10004EC80();
    KeyedEncodingContainer.encode(_:forKey:)();
    type metadata accessor for LocalFeatureToggle(0);
    type metadata accessor for Date();
    sub_1000DD0CC();
    sub_1000DCC08(v6, v7, &protocol conformance descriptor for Date);
    sub_10004EC80();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  v8 = sub_10004ECC8();
  return v9(v8);
}

uint64_t sub_1000DAB88@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Date();
  sub_10004EAE0();
  v26 = v5;
  __chkstk_darwin(v6, v7, v8);
  sub_10004EAF4();
  v11 = v10 - v9;
  sub_1000443DC(&qword_1006CCD08);
  sub_10004EAE0();
  __chkstk_darwin(v12, v13, v14);
  sub_10004EAF4();
  v15 = type metadata accessor for LocalFeatureToggle(0);
  __chkstk_darwin(v15, v16, v17);
  sub_10004EAF4();
  v28 = v19 - v18;
  sub_100044728(a1, a1[3]);
  sub_1000DCB50();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100044850(a1);
  }

  sub_1000DD158();
  *v28 = KeyedDecodingContainer.decode(_:forKey:)();
  *(v28 + 8) = v20;
  sub_1000DD158();
  *(v28 + 16) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
  sub_1000443DC(&qword_1006CCD18);
  sub_1000DD104(&qword_1006CCD20, &protocol witness table for Int);
  sub_1000DD178();
  sub_1000DD158();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v28 + 24) = v29;
  sub_1000DD158();
  *(v28 + 32) = KeyedDecodingContainer.decode(_:forKey:)();
  sub_1000DD158();
  *(v28 + 40) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
  sub_1000DD0CC();
  sub_1000DCC08(v21, v22, &protocol conformance descriptor for Date);
  sub_1000DD158();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v23 = sub_1000DD0BC();
  v24(v23);
  (*(v26 + 32))(v28 + *(v15 + 36), v11, v4);
  sub_1000DC654(v28, a2);
  sub_100044850(a1);
  return sub_1000DC6B8(v28);
}

uint64_t sub_1000DAFA8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656C62616E457369 && a2 == 0xE900000000000064;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6F69746172 && a2 == 0xE500000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 7107700 && a2 == 0xE300000000000000)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_1000DB10C(char a1)
{
  result = 1701667182;
  switch(a1)
  {
    case 1:
      result = 0x656C62616E457369;
      break;
    case 2:
      result = 0x6F69746172;
      break;
    case 3:
      result = 7107700;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000DB190@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000443DC(&qword_1006CCD38);
  sub_10004EAE0();
  v7 = v6;
  __chkstk_darwin(v8, v9, v10);
  sub_10004EAF4();
  v13 = v12 - v11;
  sub_100044728(a1, a1[3]);
  sub_1000DCC50();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100044850(a1);
  }

  sub_1000BB9D4();
  v14 = KeyedDecodingContainer.decode(_:forKey:)();
  v16 = v15;
  sub_1000BB9D4();
  v23 = KeyedDecodingContainer.decode(_:forKey:)();
  sub_1000443DC(&qword_1006CCD18);
  sub_1000DD104(&qword_1006CCD20, &protocol witness table for Int);
  sub_1000DD178();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_1000BB9D4();
  v17 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v18 = v13;
  v20 = v19;
  (*(v7 + 8))(v18, v5);
  result = sub_100044850(a1);
  *a2 = v14;
  *(a2 + 8) = v16;
  *(a2 + 16) = v23 & 1;
  *(a2 + 24) = v22;
  *(a2 + 32) = v17;
  *(a2 + 40) = v20 & 1;
  return result;
}

uint64_t sub_1000DB3FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000DA678(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000DB424@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000DA864();
  *a1 = result;
  return result;
}

uint64_t sub_1000DB44C(uint64_t a1)
{
  v2 = sub_1000DCB50();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000DB488(uint64_t a1)
{
  v2 = sub_1000DCB50();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000DB4FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000DAFA8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000DB524@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000DB104();
  *a1 = result;
  return result;
}

uint64_t sub_1000DB54C(uint64_t a1)
{
  v2 = sub_1000DCC50();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000DB588(uint64_t a1)
{
  v2 = sub_1000DCC50();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1000DB5C4@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1000DB190(a1, &v6);
  if (!v2)
  {
    v5 = v7[0];
    *a2 = v6;
    a2[1] = v5;
    result = *(v7 + 9);
    *(a2 + 25) = *(v7 + 9);
  }

  return result;
}

void *sub_1000DB608(uint64_t a1, uint64_t a2)
{
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 objectForKey:v3];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v16[0] = v14;
  v16[1] = v15;
  if (*(&v15 + 1))
  {
    if (swift_dynamicCast())
    {
      type metadata accessor for JSONDecoder();
      swift_allocObject();
      JSONDecoder.init()();
      sub_1000443DC(&qword_1006CCC30);
      sub_1000DC5C0(&qword_1006CCC38, &qword_1006CCC40, &unk_1005CF794, &protocol conformance descriptor for <A> [A]);
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();
      sub_1000448B0(v12, v13);

      return *&v16[0];
    }
  }

  else
  {
    sub_1000DBB5C(v16);
  }

  if (qword_1006C9848 != -1)
  {
    sub_1000DD128(&qword_1006C9848);
  }

  v5 = type metadata accessor for Logger();
  sub_100046E6C(v5, qword_1006CCC18);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *&v16[0] = v9;
    *v8 = 136315138;
    v10 = sub_10004ECC8();
    *(v8 + 4) = sub_100052F7C(v10);
    _os_log_impl(&_mh_execute_header, v6, v7, "Could not decode featureToggles from defaults for key: %s", v8, 0xCu);
    sub_100044850(v9);
    sub_1000488AC(v9);
    sub_1000488AC(v8);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1000DB894(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  sub_1000443DC(&qword_1006CCC30);
  sub_1000DC5C0(&qword_1006CCC48, &qword_1006CCC50, &unk_1005CF76C, &protocol conformance descriptor for <A> [A]);
  v3 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v5 = v4;

  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_10004ECC8();
  v7 = String._bridgeToObjectiveC()();
  [v2 setObject:isa forKey:v7];

  return sub_1000448B0(v3, v5);
}

uint64_t sub_1000DBB5C(uint64_t a1)
{
  v2 = sub_1000443DC(&qword_1006CA130);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1000DBBBC(uint64_t a1, uint64_t a2)
{
  v31 = a2;
  v3 = type metadata accessor for LocalFeatureToggle(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3 - 8, v5, v6);
  sub_100047544();
  v30 = v7;
  sub_1000474F8();
  __chkstk_darwin(v8, v9, v10);
  v12 = &v28 - v11;
  v13 = 0;
  v14 = *(a1 + 16);
  v15 = _swiftEmptyArrayStorage;
  while (v14 != v13)
  {
    v16 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v17 = *(v4 + 72);
    v18 = sub_1000DC654(a1 + v16 + v17 * v13, v12);
    __chkstk_darwin(v18, v19, v20);
    *(&v28 - 2) = v12;
    if (sub_1000985D8())
    {
      sub_1000DC6B8(v12);
      ++v13;
    }

    else
    {
      sub_1000DC714(v12, v30);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v32 = v15;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1000DD0E4(v15[2]);
        v15 = v32;
      }

      v23 = v15[2];
      v22 = v15[3];
      v24 = v23 + 1;
      if (v23 >= v22 >> 1)
      {
        v25 = sub_1000DD148(v22);
        v29 = v26;
        sub_1000BDFC4(v25, v26, 1);
        v24 = v29;
        v15 = v32;
      }

      ++v13;
      v15[2] = v24;
      sub_1000DC714(v30, v15 + v16 + v23 * v17);
    }
  }

  return v15;
}

void *sub_1000DBD9C(uint64_t a1, uint64_t a2)
{
  v48 = a2;
  v4 = type metadata accessor for LocalFeatureToggle(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4 - 8, v6, v7);
  sub_100047544();
  v45 = v8;
  sub_1000474F8();
  __chkstk_darwin(v9, v10, v11);
  sub_1000DD164();
  __chkstk_darwin(v12, v13, v14);
  v16 = (&v44 - v15);
  v17 = *(a1 + 16);
  v18 = _swiftEmptyArrayStorage;
  v46 = v5;
  v44 = a1;
  if (v17)
  {
    v50 = _swiftEmptyArrayStorage;
    sub_1000BDEA4(0, v17, 0);
    v18 = v50;
    v19 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v20 = *(v5 + 72);
    do
    {
      sub_1000DC654(v19, v16);
      v21 = *v16;
      v22 = v16[1];

      sub_1000DC6B8(v16);
      v50 = v18;
      v24 = v18[2];
      v23 = v18[3];
      if (v24 >= v23 >> 1)
      {
        sub_1000BDEA4((v23 > 1), v24 + 1, 1);
        v18 = v50;
      }

      v18[2] = v24 + 1;
      v25 = &v18[2 * v24];
      v25[4] = v21;
      v25[5] = v22;
      v19 += v20;
      --v17;
    }

    while (v17);
  }

  v26 = sub_10009D890(v18);
  v27 = 0;
  v47 = *(v48 + 16);
  v28 = _swiftEmptyArrayStorage;
LABEL_7:
  while (v27 != v47)
  {
    v29 = (*(v46 + 80) + 32) & ~*(v46 + 80);
    v30 = *(v46 + 72);
    v49 = v27 + 1;
    sub_1000DC654(v48 + v29 + v30 * v27, v2);
    if (*(v26 + 16))
    {
      v31 = *v2;
      v32 = v2[1];
      Hasher.init(_seed:)();
      String.hash(into:)();
      v33 = Hasher._finalize()();
      v34 = ~(-1 << *(v26 + 32));
      while (1)
      {
        v35 = v33 & v34;
        if (((*(v26 + 56 + (((v33 & v34) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v33 & v34)) & 1) == 0)
        {
          break;
        }

        v36 = (*(v26 + 48) + 16 * v35);
        if (*v36 != v31 || v36[1] != v32)
        {
          v38 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v33 = v35 + 1;
          if ((v38 & 1) == 0)
          {
            continue;
          }
        }

        sub_1000DC6B8(v2);
        v27 = v49;
        goto LABEL_7;
      }
    }

    sub_1000DC714(v2, v45);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v51 = v28;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1000DD0E4(v28[2]);
      v28 = v51;
    }

    v41 = v28[2];
    v40 = v28[3];
    if (v41 >= v40 >> 1)
    {
      v42 = sub_1000DD148(v40);
      sub_1000BDFC4(v42, v41 + 1, 1);
      v28 = v51;
    }

    v28[2] = v41 + 1;
    sub_1000DC714(v45, v28 + v29 + v41 * v30);
    v27 = v49;
  }

  v50 = v44;

  sub_1000CEFC0(v28);
  return v50;
}

void sub_1000DC0C8(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v35 = a2;
  v38 = type metadata accessor for Date();
  v5 = *(v38 - 8);
  v8 = __chkstk_darwin(v38, v6, v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v8, v11, v12);
  v15 = &v35 - v14;
  __chkstk_darwin(v13, v16, v17);
  v19 = &v35 - v18;
  v20 = a1[1];
  v36 = *a1;
  v39 = v20;
  v37 = *(a1 + 16);
  v21 = a1[3];
  v22 = a1[4];
  v23 = *(a1 + 40);
  sub_1000446C4(v35 + 48, v40);
  sub_100044728(v40, v40[3]);
  if (v21)
  {
    v24 = v21;
  }

  else
  {
    v24 = &off_100691558;
  }

  sub_1000DC3E0(v24);
  v26 = v25;

  sub_10009CD54(0.0, 1.0);
  v28 = v27;
  sub_100044850(v40);
  if (v23 == 1)
  {
    static Date.distantPast.getter();
    v22 = 0;
    v29 = v38;
  }

  else
  {
    static Date.now.getter();
    static Date.+ infix(_:_:)();
    v30 = v10;
    v29 = v38;
    (*(v5 + 8))(v30, v38);
  }

  v31 = *(v5 + 32);
  v31(v19, v15, v29);
  v32 = &off_100691580;
  v33 = v39;
  *a3 = v36;
  *(a3 + 8) = v33;
  if (v21)
  {
    v32 = v21;
  }

  *(a3 + 16) = v37;
  *(a3 + 24) = v32;
  *(a3 + 32) = v22;
  *(a3 + 40) = v28 < v26;
  v34 = type metadata accessor for LocalFeatureToggle(0);
  v31((a3 + *(v34 + 36)), v19, v29);
}

BOOL sub_1000DC334(uint64_t *a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = a1[3];
  v5 = a1[4];
  v6 = *(a1 + 40);
  v7 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (v7 || (v8 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v8 & 1) != 0))
  {
    v10 = v3 != *(a2 + 16) || v4 == 0;
    return v10 || v6 & 1 | ((sub_1000DC518(v4, *(a2 + 24)) & 1) == 0) || v5 != *(a2 + 32);
  }

  return result;
}

uint64_t sub_1000DC3E0(uint64_t a1)
{

  result = sub_1000846FC(2, a1);
  v6 = (v5 >> 1) - v4;
  if (v5 >> 1 == v4)
  {
    return swift_unknownObjectRelease();
  }

  if ((v5 >> 1) > v4)
  {
    v7 = 0;
    v8 = (v3 + 8 * v4);
    while (1)
    {
      v9 = *v8++;
      v10 = __OFADD__(v7, v9);
      v7 += v9;
      if (v10)
      {
        break;
      }

      if (!--v6)
      {
        return swift_unknownObjectRelease();
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000DC48C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1000DC518(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for LocalFeatureToggle(uint64_t a1)
{
  result = qword_1006CCCB8;
  if (!qword_1006CCCB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000DC5C0(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000471A4(&qword_1006CCC30);
    sub_1000DCC08(a2, type metadata accessor for LocalFeatureToggle, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000DC654(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocalFeatureToggle(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000DC6B8(uint64_t a1)
{
  v2 = type metadata accessor for LocalFeatureToggle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000DC714(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocalFeatureToggle(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000DC7DC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Date();
    v9 = a1 + *(a3 + 36);

    return sub_100046EA4(v9, a2, v8);
  }
}

uint64_t sub_1000DC878(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = v5 + *(a4 + 36);

    return sub_1000485F8(v8, a2, a2, v7);
  }

  return result;
}

void sub_1000DC8F8(uint64_t a1)
{
  sub_1000DC9A4();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000DC9A4()
{
  if (!qword_1006CCCC8)
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_1006CCCC8);
    }
  }
}

uint64_t sub_1000DC9FC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1000DCA3C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

__n128 sub_1000DCAA0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000DCAB4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 41))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_1000DCAF4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000DCB50()
{
  result = qword_1006CCD10;
  if (!qword_1006CCD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CCD10);
  }

  return result;
}

uint64_t sub_1000DCBA4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000471A4(&qword_1006CCD18);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000DCC08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000DCC50()
{
  result = qword_1006CCD40;
  if (!qword_1006CCD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CCD40);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RemoteFeatureToggle.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1000DCD70);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LocalFeatureToggle.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1000DCE74);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1000DCEB0()
{
  result = qword_1006CCD48;
  if (!qword_1006CCD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CCD48);
  }

  return result;
}

unint64_t sub_1000DCF08()
{
  result = qword_1006CCD50;
  if (!qword_1006CCD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CCD50);
  }

  return result;
}

unint64_t sub_1000DCF60()
{
  result = qword_1006CCD58;
  if (!qword_1006CCD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CCD58);
  }

  return result;
}

unint64_t sub_1000DCFB8()
{
  result = qword_1006CCD60;
  if (!qword_1006CCD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CCD60);
  }

  return result;
}

unint64_t sub_1000DD010()
{
  result = qword_1006CCD68;
  if (!qword_1006CCD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CCD68);
  }

  return result;
}

unint64_t sub_1000DD068()
{
  result = qword_1006CCD70;
  if (!qword_1006CCD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CCD70);
  }

  return result;
}

void sub_1000DD0E4(uint64_t a1@<X8>)
{

  sub_1000BDFC4(0, a1 + 1, 1);
}

uint64_t sub_1000DD104(unint64_t *a1, uint64_t a2)
{

  return sub_1000DCBA4(a1, a2, &protocol conformance descriptor for <A> [A]);
}

uint64_t sub_1000DD128(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1000DD18C()
{
  v0 = type metadata accessor for Logger();
  sub_100046E08(v0, qword_1006DF858);
  sub_100046E6C(v0, qword_1006DF858);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000DD214()
{
  sub_1000657D4();
  v0[9] = v1;
  v0[10] = v2;
  sub_1000443DC(&qword_1006C9E20);
  v0[11] = swift_task_alloc();
  v0[12] = swift_task_alloc();

  return _swift_task_switch(sub_1000DD2B0, 0, 0);
}

uint64_t sub_1000DD2B0()
{
  v1 = *(v0 + 80);
  v2 = *(v1 + 16);
  if (v2)
  {
    v19 = **(v0 + 72);
    v3 = type metadata accessor for TaskPriority();
    v4 = (v1 + 40);
    do
    {
      v6 = *(v0 + 88);
      v5 = *(v0 + 96);
      v7 = *(v4 - 1);
      v8 = *v4;
      sub_1000485F8(v5, 1, 1, v3);
      v9 = swift_allocObject();
      v9[2] = 0;
      v9[3] = 0;
      v9[4] = v7;
      v9[5] = v8;
      sub_10006E754(v5, v6);
      LODWORD(v6) = sub_100046EA4(v6, 1, v3);

      v10 = *(v0 + 88);
      if (v6 == 1)
      {
        sub_1000DDB80(*(v0 + 88));
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(*(v3 - 8) + 8))(v10, v3);
      }

      if (v9[2])
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v11 = dispatch thunk of Actor.unownedExecutor.getter();
        v13 = v12;
        swift_unknownObjectRelease();
      }

      else
      {
        v11 = 0;
        v13 = 0;
      }

      v14 = swift_allocObject();
      *(v14 + 16) = &unk_1005CF9F0;
      *(v14 + 24) = v9;

      if (v13 | v11)
      {
        v15 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v11;
        *(v0 + 40) = v13;
      }

      else
      {
        v15 = 0;
      }

      v16 = *(v0 + 96);
      *(v0 + 48) = 1;
      *(v0 + 56) = v15;
      *(v0 + 64) = v19;
      swift_task_create();

      sub_1000DDB80(v16);
      v4 += 2;
      --v2;
    }

    while (v2);
  }

  sub_10006574C();

  return v17();
}

uint64_t sub_1000DD534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_task_alloc();
  *(v5 + 16) = v8;
  *v8 = v5;
  v8[1] = sub_1000640AC;

  return sub_1000DD5D0(a4, a5);
}

uint64_t sub_1000DD5D0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_1000DD5F0, 0, 0);
}

uint64_t sub_1000DD5F0()
{
  type metadata accessor for PrecomputationSession();
  static ODIServiceProviderId.workflowIdFromServiceProviderId(_:)();
  sub_1000CA51C();
  *(v0 + 32) = PrecomputationSession.__allocating_init(workflowID:diskCommand:)();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1000DD6DC;

  return PrecomputationSession.forceCacheProfile()();
}

uint64_t sub_1000DD6DC()
{
  sub_1000657D4();
  sub_1000657F8();
  v2 = *v1;
  sub_1000655F4();
  *v3 = v2;
  *(v4 + 48) = v0;

  if (v0)
  {
    v5 = sub_1000DD92C;
  }

  else
  {
    v5 = sub_1000DD7E0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000DD7E0()
{
  if (qword_1006C9850 != -1)
  {
    sub_1000DDCD0(&qword_1006C9850);
  }

  v0 = type metadata accessor for Logger();
  sub_100046E6C(v0, qword_1006DF858);

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *(v3 + 4) = sub_1000DDD10(4.8149e-34);
    sub_1000DDCF0(&_mh_execute_header, v4, v5, "Cached profile for: %s");
    sub_100044850(v8);
    sub_1000488AC(v8);
    sub_1000488AC(v3);
  }

  sub_10006574C();

  return v6();
}

uint64_t sub_1000DD92C()
{

  if (qword_1006C9850 != -1)
  {
    sub_1000DDCD0(&qword_1006C9850);
  }

  v0 = type metadata accessor for Logger();
  sub_100046E6C(v0, qword_1006DF858);

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *(v3 + 4) = sub_1000DDD10(4.8149e-34);
    sub_1000DDCF0(&_mh_execute_header, v4, v5, "Failed to cache profile for: %s");
    sub_100044850(v8);
    sub_1000488AC(v8);
    sub_1000488AC(v3);
  }

  sub_10006574C();

  return v6();
}

uint64_t sub_1000DDA80()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000DDAC0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000640AC;

  return sub_1000DD534(a1, v4, v5, v7, v6);
}

uint64_t sub_1000DDB80(uint64_t a1)
{
  v2 = sub_1000443DC(&qword_1006C9E20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000DDBE0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000DDC18(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000640AC;

  return sub_10007611C(a1, v4);
}

uint64_t sub_1000DDCD0(uint64_t a1)
{

  return swift_once();
}

void sub_1000DDCF0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

unint64_t sub_1000DDD10(float a1)
{
  *v2 = a1;

  return sub_100052F7C(v1);
}

uint64_t sub_1000DDD30(uint64_t a1, uint64_t a2)
{
  v2 = *(&off_1006B4E30 + ((99 * (dword_1006D7A88 ^ 0x89 ^ dword_1006D53C8)) ^ byte_10066CCA0[byte_10064CCF0[(99 * (dword_1006D7A88 ^ 0x89 ^ dword_1006D53C8))] ^ 0xF1]) + 907);
  v3 = 99 * ((dword_1006D53C8 - *v2) ^ 0x89);
  v4 = *(&off_1006B4E30 + (byte_10066CDA0[byte_10064CDF8[v3 - 8] ^ 0xCD] ^ v3) + 1075);
  v5 = (*v4 - *v2) ^ &v8;
  *v2 = 1758147683 * v5 + 0x4D631102543E877;
  *v4 = 1758147683 * (v5 ^ 0xFB29CEEFDABC1789);
  v6 = *(*a1 + 16) + 32 * (*(*a1 + 24) - 1);
  v10 = 961063711 * ((2 * (&v9 & 0x6FD39A0) - &v9 - 117258658) ^ 0x88F60F41) - 1455520778;
  v9 = v6;
  v11 = a2;
  LOBYTE(v4) = 99 * ((*v4 + *v2) ^ 0x89);
  (*(*(&off_1006B4E30 + ((99 * ((dword_1006D53C8 - dword_1006D7A88) ^ 0x89)) ^ byte_10060D0D0[byte_10066CFA0[(99 * ((dword_1006D53C8 - dword_1006D7A88) ^ 0x89))] ^ 0x84]) + 631) + 8 * (byte_10060D0D8[(byte_10066CFA0[v4] ^ 5) - 8] ^ v4) + 99516))(&v9);
  return 0;
}

uint64_t sub_1000DDF50(uint64_t a1, uint64_t a2)
{
  v2 = *(&off_1006B4E30 + ((99 * (dword_1006D5838 ^ 0x89 ^ dword_1006D53C8)) ^ byte_10066CDA0[byte_10064CDF0[(99 * (dword_1006D5838 ^ 0x89 ^ dword_1006D53C8))] ^ 0xCD]) + 1122);
  v3 = *(v2 - 4);
  v4 = *(&off_1006B4E30 + (byte_10060D0D8[(byte_10066CFA0[(99 * (v3 ^ dword_1006D53C8 ^ 0x89))] ^ 5) - 8] ^ (99 * (v3 ^ dword_1006D53C8 ^ 0x89))) + 992);
  v5 = 1758147683 * ((v3 - &v7 + *v4) ^ 0xFB29CEEFDABC1789);
  *(v2 - 4) = v5;
  *v4 = v5;
  v8 = a2;
  v10 = a1 + 144;
  v11 = 844969835 - 784480913 * ((&v8 + 781534342 - 2 * (&v8 & 0x2E954486)) ^ 0x8083EFD);
  LOBYTE(v4) = 99 * ((*v4 + *(v2 - 4)) ^ 0x89);
  (*(*(&off_1006B4E30 + ((99 * ((dword_1006D53C8 - dword_1006D5838) ^ 0x89)) ^ byte_10066CDA0[byte_10064CDF0[(99 * ((dword_1006D53C8 - dword_1006D5838) ^ 0x89))] ^ 0xCE]) + 804) + 8 * (byte_10066CDA0[byte_10064CDF8[v4 - 8] ^ 0xCD] ^ v4) + 99764))(&v8);
  return (v9 - 1801394111);
}

void sub_1000DE14C(uint64_t a1)
{
  v1 = 505507193 * (((a1 | 0xE86E00764F81BB08) - (a1 & 0xE86E00764F81BB08)) ^ 0x347D0AE7240A30C3);
  v2 = *(a1 + 8) + v1;
  __asm { BRAA            X11, X17 }
}

uint64_t sub_1000DE240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11, int a12)
{
  v16 = ((((v12 ^ 0x31370650CD8F97F6) + 0x73BE81DF28ELL) ^ v12 ^ ((v12 ^ 0x356A98C7FF6) + 0x23D8C1E1A8ELL) ^ ((v12 ^ 0xC35ADEF6F5FLL) + 0xD5E887D0A25) ^ ((v12 ^ 0x7A713813D20 ^ (((v15 - 8146) | 0x218) + 7650)) + 0x6CC361378A1)) << 20) ^ 0xE94DA6D9A8400000;
  v17 = (v13 ^ 0xB29D115C65B8EFAELL) & (2 * (v13 & 0xBB1D9461663CEF0FLL)) ^ v13 & 0xBB1D9461663CEF0FLL;
  v18 = ((2 * (v13 ^ 0xB6B4195EA199E7A0)) ^ 0x1B531A7F8F4A115ELL) & (v13 ^ 0xB6B4195EA199E7A0) ^ (2 * (v13 ^ 0xB6B4195EA199E7A0)) & 0xDA98D3FC7A508AELL;
  v19 = v18 ^ 0x4A8850040A508A1;
  v20 = (v18 ^ 0x800000F8100000CLL) & (4 * v17) ^ v17;
  v21 = ((4 * v19) ^ 0x36A634FF1E9422BCLL) & v19 ^ (4 * v19) & 0xDA98D3FC7A508ACLL;
  v22 = (v21 ^ 0x4A0043F068400A0) & (16 * v20) ^ v20;
  v23 = ((16 * (v21 ^ 0x9098900C1210803)) ^ 0xDA98D3FC7A508AF0) & (v21 ^ 0x9098900C1210803) ^ (16 * (v21 ^ 0x9098900C1210803)) & 0xDA98D3FC7A508A0;
  v24 = (v23 ^ 0x888813C42000800) & (v22 << 8) ^ v22;
  v25 = (((v23 ^ 0x5210C0385A5000FLL) << 8) ^ 0xA98D3FC7A508AF00) & (v23 ^ 0x5210C0385A5000FLL) ^ ((v23 ^ 0x5210C0385A5000FLL) << 8) & 0xDA98D3FC7A50800;
  v26 = v24 ^ 0xDA98D3FC7A508AFLL ^ (v25 ^ 0x9890D0785000000) & (v24 << 16);
  v27 = v16 / ((2 * v13) ^ (4 * ((v26 << 32) & 0xDA98D3F00000000 ^ v26 ^ ((v26 << 32) ^ 0x7A508AF00000000) & (((v25 ^ 0x420803842A500AFLL) << 16) & 0xDA98D3F00000000 ^ 0x80081A00000000 ^ (((v25 ^ 0x420803842A500AFLL) << 16) ^ 0xD3FC7A500000000) & (v25 ^ 0x420803842A500AFLL)))) ^ 0x56193C81D2EDFCA2);
  v28 = 400289179 * ((((2 * &a10) | 0x9A34E902C6E01A70) - &a10 + 0x32E58B7E9C8FF2C8) ^ 0x623686F21AD1FE2FLL);
  a11 = ((v27 ^ 0x7AEFF3777FEBFF3DLL) - 0x4840D17572088211 + ((2 * v27) & 0xF5DFE6EEFFD7FE7ALL)) ^ v28;
  a12 = v15 - v28 - 5762;
  v29 = (*(v14 + 8 * (v15 ^ 0x1184)))(&a10, a2, a3, a4, a5, a6, a7, a8);
  v30 = (a10 - 0x22F346122C67ED1ELL) * (v13 - 0x44E26B9E99C310F1);
  v31 = (v30 >> 21) - ((v30 >> 20) & 0x7A8AE59443ELL) + 0x52E39BD4572CA21FLL;
  LODWORD(v30) = ((v30 - ((((v31 ^ 0x5310F2D025FLL) - 0x7EEFAD310F2D025FLL) ^ ((v31 ^ 0x321ACB4001ELL) - 0x5B2C3321ACB4001ELL) ^ ((v31 ^ 0x5C4F4B5A05ELL) + 0x8DFFA3B0B4A5FA2)) << 21) + 0x5751A6BBC200000) & 0x7FFFFFFFFFF00000) == 0;
  return (*(v14 + 8 * ((8 * v30) | (32 * v30) | v15)))(v29);
}

void sub_1000DED6C(uint64_t a1)
{
  v1 = 961063711 * ((a1 - 2 * (a1 & 0x94254E8) + 155342056) ^ 0x78B69DF7);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1000DEE4C@<X0>(unint64_t a1@<X0>, int a2@<W8>)
{
  LODWORD(STACK[0x3D0]) = v2;
  v5 = *(a1 + 32);
  STACK[0x730] = 2224;
  v6 = *(v4 + 8 * (((v5 != 0) | (32 * (v5 != 0))) ^ a2));
  STACK[0x668] = v4;
  STACK[0x260] = a1;
  STACK[0x258] = v3;
  return v6();
}

uint64_t sub_1000DEE9C@<X0>(uint64_t a1@<X1>, int a2@<W8>)
{
  STACK[0x390] = v6;
  v8 = (((v3 - v4) ^ 0xFFD33DBC) + 431486878) ^ (((v3 - v4) ^ 0x4A607C7) - 490549785) ^ (((a2 + 3849) ^ v2 ^ (v3 - v4) ^ 0x50DD1402) - 1229324693);
  STACK[0x710] = &STACK[0x1140];
  STACK[0x2C8] = v5 + 0x69103689CFE5B30ELL;
  v9 = ((a2 + 2223) ^ 0x1919) + 1305263196;
  LODWORD(STACK[0x2FC]) = v8;
  LODWORD(STACK[0x2F8]) = v9;
  return (*(v7 + 8 * (((8 * (v8 != v9)) | (16 * (v8 != v9))) ^ (a2 + 3849))))(1044992267, a1, 2290933359);
}

uint64_t sub_1000DEF84@<X0>(int a1@<W0>, int a2@<W2>, int a3@<W8>)
{
  v5 = ((a3 + 111) ^ 0xB943799B) + LODWORD(STACK[0x2FC]);
  LODWORD(STACK[0x708]) = a3 + 111;
  LODWORD(STACK[0x700]) = a3 - 1686173361;
  LODWORD(STACK[0x6F8]) = -2113010089;
  LODWORD(STACK[0x6F0]) = 42018562;
  v6 = -a1 - 398329065 * ((STACK[0x700] & 0x6480DFB7) + 1139556838 + (*STACK[0x390] ^ 0xEFDDFBC7) + ((2 * *STACK[0x390]) & 0xFF8F) + 1378508817) + 944584714;
  v7 = (v6 ^ 0xC4689B56) & (2 * (v6 & 0xD6829396)) ^ v6 & 0xD6829396;
  v8 = ((2 * (v6 ^ 0xE969BA7A)) ^ 0x7FD653D8) & (v6 ^ 0xE969BA7A) ^ (2 * (v6 ^ 0xE969BA7A)) & 0x3FEB29EC;
  v9 = v8 ^ 0x292824;
  v10 = (v8 ^ 0x3E0200C8) & (4 * v7) ^ v7;
  v11 = ((4 * v9) ^ 0xFFACA7B0) & v9 ^ (4 * v9) & 0x3FEB29EC;
  v12 = (v11 ^ 0x3FA821A0) & (16 * v10) ^ v10;
  v13 = ((16 * (v11 ^ 0x43084C)) ^ 0xFEB29EC0) & (v11 ^ 0x43084C) ^ (16 * (v11 ^ 0x43084C)) & 0x3FEB29E0;
  v14 = v12 ^ 0x3FEB29EC ^ (v13 ^ 0x3EA20800) & (v12 << 8);
  v15 = v6 ^ (2 * ((v14 << 16) & 0x3FEB0000 ^ v14 ^ ((v14 << 16) ^ 0x29EC0000) & (((v13 ^ 0x149212C) << 8) & 0x3FEB0000 ^ 0x14C20000 ^ (((v13 ^ 0x149212C) << 8) ^ 0x6B290000) & (v13 ^ 0x149212C)))) ^ 0x198E8C32;
  v16 = 0xFF00FF00FF0100 * (((v15 ^ 0x6DB282441C93A07BLL) - 0x6DB282441C93A07BLL) ^ ((v15 ^ 0x88E1AFB6C60F0B57) + 0x771E504939F0F4A9) ^ ((v15 ^ 0xE5532DF23996E750) + 0x1AACD20DC66918B0)) + 0x27DBA7FABC348705;
  v17 = (2 * (v16 & 0x2FCCAFAE7D9BF400)) & 0x45180B5CDB064000 ^ v16 & 0x2FCCAFAE7D9BF400 ^ ((2 * (v16 & 0x2FCCAFAE7D9BF400)) | 2) & (v16 ^ 0x6AB4A470A695A4E3);
  v18 = (2 * (v16 ^ 0x6AB4A470A695A4E3)) & 0x45780BDEDB0E5000 ^ 0x4508084249025000 ^ ((2 * (v16 ^ 0x6AB4A470A695A4E3)) ^ 0x8AF017BDB61CA020) & (v16 ^ 0x6AB4A470A695A4E3);
  v19 = (4 * v17) & 0x45780BDEDB0E5018 ^ v17 ^ ((4 * v17) | 4) & v18;
  v20 = (4 * v18) & 0x45780BDEDB0E5018 ^ 0x4018008493061018 ^ ((4 * v18) ^ 0x15E02F7B6C394060) & v18;
  v21 = (16 * v19) & 0x45780BDEDB0E5010 ^ v19 ^ ((16 * v19) ^ 0x10) & v20;
  v22 = (16 * v20) & 0x45780BDEDB0E5010 ^ 0x7802124B0A5018 ^ ((16 * v20) ^ 0x5780BDEDB0E50180) & v20;
  v23 = (v21 << 8) & 0x45780BDEDB0E5000 ^ v21 ^ ((v21 << 8) ^ 0x1100) & v22;
  v24 = (v22 << 8) & 0x45780BDEDB0E5000 ^ 0x5700104D10E4018 ^ ((v22 << 8) ^ 0x780BDEDB0E501800) & v22;
  v25 = v23 ^ (v23 << 16) & 0x45780BDEDB0E0000 ^ ((v23 << 16) ^ 0x10110000) & v24 ^ 0x45780BDECB0E4009;
  v26 = v16 ^ (2 * ((v25 << 32) & 0x45780BDE00000000 ^ v25 ^ ((v25 << 32) ^ 0x5B0E501800000000) & ((v24 << 16) & 0x45780BDE00000000 ^ 0x442000D000000000 ^ ((v24 << 16) ^ 0xBDEDB0E00000000) & v24)));
  v27 = ((v26 ^ 0x460BA588CFE1C793) + 0x3A10674086D99DFBLL) ^ ((v26 ^ 0x51B6A784C43C6EEALL) + 0x2DAD654C8D043484);
  LODWORD(v26) = __CFADD__(257 * (v27 ^ ((v26 ^ 0x3091BA2FC05AFDB2) + 0x4C8A78E78962A7DCLL)), 0x6D4D9991BE324E5DLL) + (((v27 ^ ((v26 ^ 0x3091BA2FC05AFDB2uLL) + 0x4C8A78E78962A7DCLL)) * 0x101uLL) >> 64) + 257 * ((__CFADD__(v26 ^ 0x460BA588CFE1C793, 0x3A10674086D99DFBLL) - 1) ^ (__CFADD__(v26 ^ 0x51B6A784C43C6EEALL, 0x2DAD654C8D043484) - 1) ^ (__CFADD__(v26 ^ 0x3091BA2FC05AFDB2, 0x4C8A78E78962A7DCLL) - 1)) + 673196076;
  LODWORD(v26) = v6 ^ v4 ^ ((v6 ^ 0x552CE2A) - 741319232) ^ ((v6 ^ 0x5D1A8DEC) - 1952964998) ^ ((v6 ^ 0x4ACEC057) - 1672719421) ^ ((v6 ^ 0x3BFBEFFB) - 310805393) ^ v26 ^ ((v26 ^ 0x57FCF1F4) - 2145179251) ^ ((v26 ^ 0x31DA5C84) - 435845891) ^ ((v26 ^ 0x61F87148) - 1238914767) ^ ((v26 ^ 0x2FFEFBBF) - 132045880);
  LODWORD(v25) = a2 - (((v3 ^ 0x2943F321) - 692319009) ^ ((v3 ^ 0xC734AFB4) + 952848460) ^ ((v3 ^ 0xCB52AF2) - 213199602)) + (((v26 ^ 0x5DF29F68) - 167831746) ^ ((v26 ^ 0x4FC2A705) - 405852335) ^ ((v26 ^ 0x29D6FACA) - 2116324704));
  v28 = v25 + 833676255;
  LODWORD(v27) = ((v25 + 833676255) ^ 0x9D7AB9E7) & (2 * ((v25 + 833676255) & 0xD97CB9E4)) ^ (v25 + 833676255) & 0xD97CB9E4;
  LODWORD(v26) = ((2 * ((v25 + 833676255) ^ 0x3DB3A9EF)) ^ 0xC99E2016) & ((v25 + 833676255) ^ 0x3DB3A9EF) ^ (2 * ((v25 + 833676255) ^ 0x3DB3A9EF)) & 0xE4CF100A;
  v29 = v26 ^ 0x24411009;
  LODWORD(v26) = (v26 ^ 0xC0860000) & (4 * v27) ^ v27;
  LODWORD(v27) = ((4 * v29) ^ 0x933C402C) & v29 ^ (4 * v29) & 0xE4CF1008;
  LODWORD(v26) = v26 ^ 0xE4CF100B ^ (v27 ^ 0x800C0003) & (16 * v26);
  LODWORD(v27) = (16 * (v27 ^ 0x64C31003)) & 0xE4CF1000 ^ 0xA00E100B ^ ((16 * (v27 ^ 0x64C31003)) ^ 0x4CF100B0) & (v27 ^ 0x64C31003);
  LODWORD(v26) = (v26 << 8) & 0xE4CF1000 ^ v26 ^ ((v26 << 8) ^ 0xCF100B00) & v27;
  LODWORD(v26) = (v25 + 833676255) ^ v3 ^ (2 * ((v26 << 16) & 0x64CF0000 ^ v26 ^ ((v26 << 16) ^ 0x100B0000) & ((v27 << 8) & 0xE4CF0000 ^ 0x20CF0000 ^ ((v27 << 8) ^ 0xCF100000) & v27)));
  LODWORD(v26) = ((v26 ^ 0xDCA2AB9F) - 1950822492) ^ ((v26 ^ 0xE5C4E7AF) - 1294040172) ^ ((v26 ^ 0x4350A3A5) + 340445082);
  LODWORD(v27) = (((v4 ^ 0xE042A78C) + 532502644) ^ ((v4 ^ 0x641744E9) - 1679246569) ^ ((v4 ^ 0xBEEE6A2F) + 1091671505)) - v25 - 1725275831;
  v30 = ((v27 ^ 0x83CA9E27) + 363402267) ^ v27 ^ ((v27 ^ 0xC2CFB16) - 1706069716) ^ ((v27 ^ 0x39C76F08) - 1348147914) ^ ((v27 ^ 0xDFBD7FFB) + 1239348679);
  LODWORD(v25) = v25 + 833676255 + a2;
  v31 = (v25 ^ 0xDE65DD25) & (2 * (v25 & 0x9F619DB5)) ^ v25 & 0x9F619DB5;
  LODWORD(v27) = ((2 * (v25 ^ 0xC665EE2D)) ^ 0xB208E730) & (v25 ^ 0xC665EE2D) ^ (2 * (v25 ^ 0xC665EE2D)) & 0x59047398;
  v32 = v27 ^ 0x49041088;
  LODWORD(v27) = (v27 ^ 0x10006310) & (4 * v31) ^ v31;
  v33 = ((4 * v32) ^ 0x6411CE60) & v32 ^ (4 * v32) & 0x59047398;
  LODWORD(v27) = (v33 ^ 0x40004208) & (16 * v27) ^ v27;
  v34 = ((16 * (v33 ^ 0x19043198)) ^ 0x90473980) & (v33 ^ 0x19043198) ^ (16 * (v33 ^ 0x19043198)) & 0x59047390;
  LODWORD(v27) = v27 ^ 0x59047398 ^ (v34 ^ 0x10043100) & (v27 << 8);
  HIDWORD(v35) = ((v28 ^ 0xBE3ED2A4) + 658664264) ^ v28 ^ ((v28 ^ 0x21E48040) + 949500324) ^ ((v28 ^ 0x726EB57) + 509235893) ^ ((v28 ^ 0x3E7FFFAF) + 654526029);
  LODWORD(v35) = ((v28 ^ 0x75FC1B99) - 1400855941) ^ v28 ^ ((v28 ^ 0xA9968CCE) + 1894397230) ^ ((v28 ^ 0xF16BEB0) - 697694376) ^ ((v28 ^ 0xF5FF6FFF) + 746837533);
  LODWORD(v27) = v25 ^ (2 * ((v27 << 16) & 0x59040000 ^ v27 ^ ((v27 << 16) ^ 0x73980000) & (((v34 ^ 0x49004218) << 8) & 0x59040000 ^ 0x59040000 ^ (((v34 ^ 0x49004218) << 8) ^ 0x4730000) & (v34 ^ 0x49004218))));
  LODWORD(v25) = (((v30 ^ (v35 >> 30) ^ 0xA8B9AE2E) + 1089102028) ^ ((v30 ^ (v35 >> 30) ^ 0x4E89A5CD) - 1495635159) ^ ((v30 ^ (v35 >> 30) ^ 0x15A16651) - 34428747)) - v26 + 1357201873;
  v36 = (v25 ^ 0xB072063C) & (2 * (v25 & 0xC084A681)) ^ v25 & 0xC084A681;
  v37 = ((2 * (v25 ^ 0x31724E3E)) ^ 0xE3EDD17E) & (v25 ^ 0x31724E3E) ^ (2 * (v25 ^ 0x31724E3E)) & 0xF1F6E8BE;
  v38 = v37 ^ 0x10122881;
  v39 = (v37 ^ 0x24800C) & (4 * v36) ^ v36;
  v40 = ((4 * v38) ^ 0xC7DBA2FC) & v38 ^ (4 * v38) & 0xF1F6E8BC;
  v41 = (v40 ^ 0xC1D2A0B0) & (16 * v39) ^ v39;
  v42 = ((16 * (v40 ^ 0x30244803)) ^ 0x1F6E8BF0) & (v40 ^ 0x30244803) ^ (16 * (v40 ^ 0x30244803)) & 0xF1F6E8B0;
  v43 = v41 ^ 0xF1F6E8BF ^ (v42 ^ 0x11668800) & (v41 << 8);
  v44 = v25 ^ (2 * ((v43 << 16) & 0x71F60000 ^ v43 ^ ((v43 << 16) ^ 0x68BF0000) & (((v42 ^ 0xE090600F) << 8) & 0x71F60000 ^ 0x1160000 ^ (((v42 ^ 0xE090600F) << 8) ^ 0x76E80000) & (v42 ^ 0xE090600F))));
  LODWORD(v27) = v27 ^ v44;
  LODWORD(v25) = v27 ^ 0x8E61A5A4;
  v45 = v27 ^ 0x399F654B;
  v46 = (v27 ^ 0x399F654B) & 0x2FB2F407 ^ (v27 ^ 0xE61A5A4) & (v30 ^ 0x462E81C5);
  v47 = v26 - (v27 ^ 0x8E61A5A4) + 401161169;
  LODWORD(v27) = (v47 ^ 0xB2CA3655) & (2 * (v47 & 0xBAEA3885)) ^ v47 & 0xBAEA3885;
  LODWORD(v26) = ((2 * (v47 ^ LODWORD(STACK[0x6F8]))) ^ 0x71C87DA4) & (v47 ^ LODWORD(STACK[0x6F8])) ^ (2 * (v47 ^ LODWORD(STACK[0x6F8]))) & 0x38E43ED2;
  v48 = v26 ^ 0x8240252;
  LODWORD(v26) = (v26 ^ 0x30C02400) & (4 * v27) ^ v27;
  LODWORD(v27) = ((4 * v48) ^ 0xE390FB48) & v48 ^ (4 * v48) & 0x38E43ED0;
  LODWORD(v26) = (v27 ^ 0x20803A40) & (16 * v26) ^ v26;
  LODWORD(v27) = ((16 * (v27 ^ 0x18640492)) ^ 0x8E43ED20) & (v27 ^ 0x18640492) ^ (16 * (v27 ^ 0x18640492)) & 0x38E43ED0;
  LODWORD(v26) = v26 ^ 0x38E43ED2 ^ (v27 ^ 0x8402C00) & (v26 << 8);
  LODWORD(v27) = (v26 << 16) & 0x38E40000 ^ v26 ^ ((v26 << 16) ^ 0x3ED20000) & (((v27 ^ 0x30A412D2) << 8) & 0x38E40000 ^ 0x18C00000 ^ (((v27 ^ 0x30A412D2) << 8) ^ 0xE43E0000) & (v27 ^ 0x30A412D2));
  v49 = ((2 * v46) ^ 0x4F65800E) + (v30 ^ 0xDE62B52D ^ v45);
  HIDWORD(v35) = v25;
  LODWORD(v35) = v25;
  LODWORD(v25) = v44 ^ v47 ^ (v49 + (v35 >> 30)) ^ (2 * v27) ^ 0xBBAA9A00;
  LODWORD(v26) = v25 + 2132511006;
  v50 = v49 - v25;
  v51 = (v25 + 2132511006) ^ 0x1188988D;
  LODWORD(v25) = (v25 + 2132511006) & 0xA63D46F7;
  v52 = ((2 * v51) ^ 0x6F6BBCF4) & v51 ^ (2 * v51) & 0xB7B5DE7A;
  v53 = v52 ^ 0x9094420A;
  v54 = (v52 ^ 0x21215C72) & (4 * ((2 * v25) & (v26 ^ 0x15B814E7) ^ v25)) ^ (2 * v25) & (v26 ^ 0x15B814E7) ^ v25;
  v55 = ((4 * v53) ^ 0xDED779E8) & v53 ^ (4 * v53) & 0xB7B5DE78;
  v56 = (v55 ^ 0x96955860) & (16 * v54) ^ v54;
  v57 = ((16 * (v55 ^ 0x21208612)) ^ 0x7B5DE7A0) & (v55 ^ 0x21208612) ^ (16 * (v55 ^ 0x21208612)) & 0xB7B5DE70;
  v58 = v56 ^ 0xB7B5DE7A ^ (v57 ^ 0x3315C600) & (v56 << 8);
  LODWORD(v27) = v26 ^ v47 ^ (2 * (v58 ^ v27 ^ (v58 << 16) & 0x37B50000 ^ ((v58 << 16) ^ 0x5E7A0000) & (((v57 ^ 0x84A0185A) << 8) & 0x37B50000 ^ 0x2210000 ^ (((v57 ^ 0x84A0185A) << 8) ^ 0x35DE0000) & (v57 ^ 0x84A0185A))));
  v59 = ((v27 ^ 0x6D7BA85D) + 1416811965) ^ ((v27 ^ 0x67116E2D) + 1578636237) ^ ((v27 ^ 0x55FE7952) + 1828127924);
  LODWORD(v27) = ((2 * (v26 ^ 0xA8E5512A)) ^ 0x1DB02FBA) & (v26 ^ 0xA8E5512A) ^ (2 * (v26 ^ 0xA8E5512A)) & 0xED817DC;
  v60 = v27 ^ 0x2481045;
  LODWORD(v27) = (v27 ^ 0x8900798) & (4 * ((2 * v25) & (v26 ^ 0xA4BD54E6) ^ v25)) ^ (2 * v25) & (v26 ^ 0xA4BD54E6) ^ v25;
  v61 = ((4 * v60) ^ 0x3B605F74) & v60 ^ (4 * v60) & 0xED817DC;
  LODWORD(v27) = (v61 ^ 0xA401750) & (16 * v27) ^ v27;
  v62 = ((16 * (v61 ^ 0x4980089)) ^ 0xED817DD0) & (v61 ^ 0x4980089) ^ (16 * (v61 ^ 0x4980089)) & 0xED817D0;
  LODWORD(v27) = v27 ^ 0xED817DD ^ (v62 ^ 0xC801500) & (v27 << 8);
  v63 = v44 ^ 0x108DF21;
  v64 = (v27 << 16) & 0x6D80000 ^ v27 ^ ((v27 << 16) ^ 0x7DD0000) & (((v62 ^ 0x258020D) << 8) & 0x6D80000 ^ 0x6C80000 ^ (((v62 ^ 0x258020D) << 8) ^ 0x170000) & (v62 ^ 0x258020D));
  LODWORD(v27) = ((2 * (v26 ^ 0xFFDDA89D)) ^ 0xB3C1DCD4) & (v26 ^ 0xFFDDA89D) ^ (2 * (v26 ^ 0xFFDDA89D)) & 0x59E0EE6A;
  v65 = v27 ^ 0x4820222A;
  LODWORD(v27) = (v27 ^ 0x11C00C40) & (4 * ((2 * v25) & (v26 ^ 0xB7BD24F7) ^ v25)) ^ (2 * v25) & (v26 ^ 0xB7BD24F7) ^ v25;
  LODWORD(v25) = ((4 * v65) ^ 0x6783B9A8) & v65 ^ (4 * v65) & 0x59E0EE68;
  LODWORD(v27) = (v25 ^ 0x4180A820) & (16 * v27) ^ v27;
  LODWORD(v25) = ((16 * (v25 ^ 0x18604642)) ^ 0x9E0EE6A0) & (v25 ^ 0x18604642) ^ (16 * (v25 ^ 0x18604642)) & 0x59E0EE60;
  v66 = v27 ^ 0x59E0EE6A ^ (v25 ^ 0x1800E600) & (v27 << 8);
  v67 = ((v66 << 16) ^ 0xEFFFFFFF) & (((v25 ^ 0x41E0084A) << 8) & 0x59E00000 ^ (((v25 ^ 0x41E0084A) << 8) ^ 0xE0EE0000) & (v25 ^ 0x41E0084A) ^ 0x18000000);
  v68 = v26 + v63;
  LODWORD(v26) = ((32 * v64) ^ (16 * v26)) & 0xFFFFFFF0 | ((v26 ^ (2 * ((v66 << 16) & 0xDFFFFFFF ^ v66 ^ v67))) >> 28);
  v69 = ((v50 - 1090728418) ^ 0x130151EC) & (2 * ((v50 - 1090728418) & 0x1BAA61CD)) ^ (v50 - 1090728418) & 0x1BAA61CD;
  v70 = ((2 * ((v50 - 1090728418) ^ 0x1201D3EC)) ^ 0x13576442) & ((v50 - 1090728418) ^ 0x1201D3EC) ^ (2 * ((v50 - 1090728418) ^ 0x1201D3EC)) & 0x9ABB220;
  v71 = v70 ^ 0x8A89221;
  v72 = (v70 ^ 0x1030000) & (4 * v69) ^ v69;
  v73 = ((4 * v71) ^ 0x26AEC884) & v71 ^ (4 * v71) & 0x9ABB220;
  v74 = (v73 ^ 0xAA8000) & (16 * v72) ^ v72;
  v75 = ((16 * (v73 ^ 0x9013221)) ^ 0x9ABB2210) & (v73 ^ 0x9013221) ^ (16 * (v73 ^ 0x9013221)) & 0x9ABB220;
  v76 = v74 ^ 0x9ABB221 ^ (v75 ^ 0x8AB2221) & (v74 << 8);
  v77 = (v76 << 16) & 0x9AB0000 ^ v76 ^ ((v76 << 16) ^ 0x32210000) & (((v75 ^ 0x1009021) << 8) & 0x9AB0000 ^ 0x90000 ^ (((v75 ^ 0x1009021) << 8) ^ 0x2BB20000) & (v75 ^ 0x1009021));
  LODWORD(v26) = ((((v50 - 1090728418) ^ (2 * v77) ^ v26 ^ 0x66404CC6) + 1413298715) ^ (((v50 - 1090728418) ^ (2 * v77) ^ v26 ^ 0xD2B45BBD) - 523686558) ^ (((v50 - 1090728418) ^ (2 * v77) ^ v26 ^ 0xDF9D862C) - 304025359)) - v59 + 1074659636;
  v78 = ((v26 ^ 0xC49DA4AE) + 166166190) ^ v26 ^ ((v26 ^ 0x2D845AC6) - 520191802) ^ ((v26 ^ 0x2441246B) - 381944215) ^ ((v26 ^ 0xFFDDFFFF) + 849815037);
  v80 = v5 > 0x7102A98;
  if (v5 < 0x7102A97)
  {
    v80 = 1;
  }

  v79 = ((v68 ^ 0x21875C2A) - 2017846563) ^ v68 ^ ((v68 ^ 0xAA544EF5) + 208209924) ^ ((v68 ^ 0x2FFE543D) - 1983704372) ^ ((v68 ^ 0xFDEFFFEB) + 1540536606) ^ v78;
  return (*(STACK[0x668] + 8 * (LODWORD(STACK[0x708]) ^ (32 * !v80))))((((v79 ^ 0x15241632) - 272356581) ^ ((v79 ^ 0x18734361) - 493650358) ^ ((v79 ^ 0x8489784) - 223827283)) + 1051129889, 1493434368, (((v78 ^ 0x56D5CE99) - 168342855) ^ ((v78 ^ 0x64B250E) - 1519804112) ^ ((v78 ^ 0xC439049u) - 1352592279)) + 974855215, 3082149498, 1507913322, 1493463960);
}

uint64_t sub_1000E093C()
{
  v4 = v0 - 2224;
  v5 = &STACK[0x830] + STACK[0x718];
  STACK[0x718] += 1072;
  (*(v2 + 8 * (v1 ^ 0x1C68)))(*(v3 + 8 * (v1 - 10805)) - 12, &STACK[0xCF0] + v0 - 2224, 16);
  v6 = (*(v2 + 8 * (v1 + 920)))(*(v3 + 8 * (v1 ^ 0x2E36)) - 8, v5, 560);
  STACK[0x730] = v4;
  STACK[0x758] = &STACK[0x7E0];
  STACK[0x738] = &STACK[0x5AFD71E16DF86525];
  STACK[0x748] = &STACK[0x7E0];
  return (*(v2 + 8 * (((((19 * (v1 ^ 0xA4)) ^ (v5 == 0)) & 1) * (v1 - 11621)) ^ v1)))(v6);
}

uint64_t sub_1000E0A50()
{
  v2 = v0 - 5146;
  v3 = (v0 + 1952213960) & 0x8BA376D7;
  STACK[0x750] = 0;
  v4 = v0 + 4290;
  STACK[0x750] = (*(v1 + 8 * (v0 + 4290)))(1028);
  v5 = (*(v1 + 8 * v4))(1028);
  STACK[0x740] = v5;
  if (v5)
  {
    v6 = STACK[0x750] == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = !v6;
  return (*(v1 + 8 * ((v7 * (v3 ^ 0x2F6)) | v2)))();
}

uint64_t sub_1000E0AD0()
{
  v3 = v1 ^ 0x1658;
  v5 = -1802333311 * (v4 + 2016);
  v6 = *(v2 + 8 * (v1 ^ 0xF7)) - 4;
  STACK[0x4E8] = v6;
  v7 = *(v6 + ((v1 ^ 0x229) & v5 ^ 0xBLL)) + 62;
  v8 = HIBYTE(v5);
  v9 = HIWORD(v5);
  v10 = *(v2 + 8 * (v1 + 142));
  STACK[0x4F0] = v10;
  LODWORD(STACK[0x710]) = ((BYTE1(v5) ^ 0x9E) + *(v10 + (BYTE1(v5) ^ 0x69)) - 122);
  v11 = *(v2 + 8 * (v1 - 502)) - 4;
  STACK[0x4D8] = v11;
  v12 = *(v11 + (BYTE2(v5) ^ 0xALL));
  v13 = *(v2 + 8 * (v1 - 506)) - 4;
  STACK[0x4E0] = v13;
  LODWORD(v8) = *(v13 + (v8 ^ 0xBA));
  v14 = (((v12 ^ (((2 * v9) ^ 0xD2) - 77)) << 16) ^ 0x75C59F60) & (v7 ^ 0x7DFFDFEF) | v7 & 0x9F;
  LODWORD(STACK[0x708]) = v14 ^ 0x8526087;
  LODWORD(STACK[0x700]) = v14 & 0x4AD0058;
  v15 = (v8 ^ 0x2E) << 24;
  v16 = (STACK[0x828] & 1) == 0;
  LODWORD(STACK[0x6F8]) = v15 ^ 0x4CFFFFFF;
  LODWORD(v16) = *(v0 + 8 * (*(v0 + 8 * ((*(v0 + 8 * v16 - 0x5AFD71E16DF85D05) & 1) == 0) - 0x5AFD71E16DF85D05) & 1) - 0x5AFD71E16DF85D05);
  LODWORD(STACK[0x6F0]) = v15 & 0x35000000;
  if (v16)
  {
    v17 = 974732955;
  }

  else
  {
    v17 = 974732954;
  }

  v18 = ((v17 ^ 0x6CDB13BE) + 1455914854) ^ ((v17 ^ 0xA09F2CD3) - 1702674423) ^ ((v17 ^ 0xF65D01F6) - 868127442);
  v19 = v18 == 348736;
  v20 = 8 * (((v3 + 2032510220) & 0x86DA5FF7) + 0x5C2FDEEA8F9B9127) + 0x1E8108AB8322AA38;
  *(&STACK[0x7E0] + v20) = *(&STACK[0x820] + v20) ^ 0x5D5D5D5D5D5D5D5DLL;
  if (v18 != 348736)
  {
    v19 = v18 - 1054039932 > 0xC131F2C6;
  }

  return (*(STACK[0x668] + 8 * ((53 * v19) ^ v3)))();
}

uint64_t sub_1000E1620(int a1, uint64_t a2, int a3)
{
  LODWORD(STACK[0x6F8]) = v5;
  LODWORD(STACK[0x6A8]) = v4;
  LODWORD(STACK[0x3B4]) = a1;
  LODWORD(STACK[0x3E0]) = a3;
  STACK[0x310] = &STACK[0x1500];
  STACK[0x358] = 0;
  STACK[0x5B8] = 0;
  STACK[0x308] = &STACK[0x1550];
  v6 = LODWORD(STACK[0x2FC]) == LODWORD(STACK[0x2F8]);
  STACK[0x2D0] = 0x69103689CFE5B30ELL;
  v7 = *(STACK[0x668] + 8 * ((((38 * (v3 ^ 0x799) - 56040771) & 0x3571F6C ^ 0xCE) * v6) ^ v3));
  LODWORD(STACK[0x5A8]) = 395823424;
  return v7();
}

uint64_t sub_1000E16DC()
{
  STACK[0x358] = 0;
  STACK[0x5B8] = 0;
  v4 = v1 ^ 0x778;
  v5 = LODWORD(STACK[0x2FC]) - 1823215708;
  v6 = -(((v0 ^ 0xF38DF564) + 208800412) ^ ((v0 ^ 0x64C1A0B5) - 1690411189) ^ ((((v4 - 2490) | 0x258) ^ v0 ^ 0x40A75308) - 1084708338)) - 398329065 * ((*STACK[0x390] ^ 0xE97FBF5B) + 1051129889 + ((2 * *STACK[0x390]) & 0xB6) + 1230608515);
  v7 = (v6 - 537859660) ^ LODWORD(STACK[0x5A8]) ^ (((v6 - 537859660) ^ 0xC337CFDF) + 2047377910) ^ (((v6 - 537859660) ^ 0x976D3417) + 777157182) ^ (((v6 - 537859660) ^ 0x6D65B54A) - 732234911) ^ (((v6 - 537859660) ^ 0x7FFFFF57) - 960450178) ^ ((v6 - 1724893217) % 0x101);
  v8 = (((v2 ^ 0xD2375ED4) + 768123180) ^ ((v2 ^ 0xE17F4CC) - 236451020) ^ ((v2 ^ 0x4F542806) - 1330915334)) - v3 + (((v7 ^ 0x52C9C8BA) - 576658871) ^ ((v7 ^ 0xE5D03AB) - 2127287974) ^ ((v7 ^ 0x4DF3D655) - 1030030168));
  v9 = v8 + 1199708191;
  v10 = v3 & 0xAC95572E;
  v11 = 2 * (v3 & 0xAC95572E);
  v12 = v3;
  v13 = ((2 * (v3 ^ 0xB41072F8)) ^ 0x310A4BAC) & (v3 ^ 0xB41072F8) ^ (2 * (v3 ^ 0xB41072F8)) & 0x188525D6;
  v14 = v13 ^ 0x8852452;
  v15 = (v13 ^ 0x18000182) & (4 * (v11 & (v3 ^ 0xAC1056AC) ^ v3 & 0xAC95572E)) ^ v11 & (v3 ^ 0xAC1056AC) ^ v3 & 0xAC95572E;
  v16 = ((4 * v14) ^ 0x62149758) & v14 ^ (4 * v14) & 0x188525D4;
  v17 = (v16 ^ 0x40546) & (16 * v15) ^ v15;
  v18 = ((16 * (v16 ^ 0x18812086)) ^ 0x88525D60) & (v16 ^ 0x18812086) ^ (16 * (v16 ^ 0x18812086)) & 0x188525D0;
  v19 = v17 ^ 0x188525D6 ^ (v18 ^ 0x8000596) & (v17 << 8);
  v20 = v12 ^ (2 * ((v19 << 16) & 0x18850000 ^ v19 ^ ((v19 << 16) ^ 0x25D60000) & (((v18 ^ 0x10852096) << 8) & 0x18850000 ^ 0x18800000 ^ (((v18 ^ 0x10852096) << 8) ^ 0x5250000) & (v18 ^ 0x10852096)))) ^ v9 ^ ((v9 ^ 0x71F1FF71) - 860575467) ^ ((v9 ^ 0xFA61E074) + 1193588242) ^ ((v9 ^ 0xBEC549E0) + 58728326) ^ ((v9 ^ 0x77EFFF7F) - 894785253);
  HIDWORD(v21) = v8 + 1153920645;
  LODWORD(v21) = v8 + 80178821;
  v22 = v8 + 647616723 - (((v20 ^ 0xD69C2A74) + 1163481558) ^ ((v20 ^ 0x17B99CE6) - 2072189112) ^ ((v20 ^ 0x1F08038A) - 1932691412)) + 1326142216;
  v23 = (v22 ^ 0x98E21D64) & (2 * (v22 & 0xDD0B1164)) ^ v22 & 0xDD0B1164;
  v24 = ((2 * (v22 ^ 0xE23D64)) ^ 0xBBD25800) & (v22 ^ 0xE23D64) ^ (2 * (v22 ^ 0xE23D64)) & 0xDDE92C00;
  v25 = v24 ^ 0x44292400;
  v26 = (v24 ^ 0x98400800) & (4 * v23) ^ v23;
  v27 = ((4 * v25) ^ 0x77A4B000) & v25 ^ (4 * v25) & 0xDDE92C00;
  v28 = v26 ^ 0xDDE92C00 ^ (v27 ^ 0x55A02000) & (16 * v26);
  v29 = (16 * (v27 ^ 0x88490C00)) & 0xDDE92C00 ^ 0x1692C00 ^ ((16 * (v27 ^ 0x88490C00)) ^ 0xDE92C000) & (v27 ^ 0x88490C00);
  v30 = (v28 << 8) & 0xDDE92C00 ^ v28 ^ ((v28 << 8) ^ 0xE92C0000) & v29;
  v31 = (v30 << 16) & 0x5DE90000 ^ v30 ^ ((v30 << 16) ^ 0x2C000000) & ((v29 << 8) & 0x5DE90000 ^ 0x14C10000 ^ ((v29 << 8) ^ 0xE92C0000) & v29);
  v32 = v11 & (v12 ^ 0xAEC4472F) ^ v10;
  v33 = ((2 * (v12 ^ 0xA7CCEF3F)) ^ 0x16B37022) & (v12 ^ 0xA7CCEF3F) ^ (2 * (v12 ^ 0xA7CCEF3F)) & 0xB59B810;
  v34 = v33 ^ 0x9488811;
  v35 = (v33 ^ 0xB113000) & (4 * v32) ^ v32;
  v36 = ((4 * v34) ^ 0x2D66E044) & v34 ^ (4 * v34) & 0xB59B810;
  v37 = (v36 ^ 0x940A010) & (16 * v35) ^ v35;
  v38 = ((16 * (v36 ^ 0x2191811)) ^ 0xB59B8110) & (v36 ^ 0x2191811) ^ (16 * (v36 ^ 0x2191811)) & 0xB59B810;
  v39 = v37 ^ 0xB59B811 ^ (v38 ^ 0x1198000) & (v37 << 8);
  v40 = (v39 << 16) & 0xB590000 ^ v39 ^ ((v39 << 16) ^ 0x38110000) & (((v38 ^ 0xA403801) << 8) & 0xB590000 ^ 0x2410000 ^ (((v38 ^ 0xA403801) << 8) ^ 0x59B80000) & (v38 ^ 0xA403801));
  v41 = (((LODWORD(STACK[0x5A8]) ^ 0x2F6DC345) - 795722565) ^ ((LODWORD(STACK[0x5A8]) ^ 0x3A9BF0E8) - 983298280) ^ ((LODWORD(STACK[0x5A8]) ^ 0x42519F3C) - 1112645436)) - (v8 + 647616723);
  v42 = v41 - 2147115713;
  v43 = (1995168904 - v12) ^ v12 ^ (((1995168904 - v12) ^ 0xDC4458F3) + 3839163) ^ (((1995168904 - v12) ^ 0x5564BB60) - 1994754262) ^ (((1995168904 - v12) ^ 0x555C2BDA) - 1994201196) ^ (((1995168904 - v12) ^ 0xFFFDFBFF) + 595802039) ^ (2 * v40) ^ v22 ^ (2 * v31);
  v44 = (v42 ^ 0xFC777DBB) & (2 * (v42 & 0xF97479A0)) ^ v42 & 0xF97479A0;
  v45 = ((2 * (v42 ^ 0x5E7F7DFB)) ^ 0x4E1608B6) & (v42 ^ 0x5E7F7DFB) ^ (2 * (v42 ^ 0x5E7F7DFB)) & 0xA70B045A;
  v46 = v45 ^ 0xA1090449;
  v47 = (v45 ^ 0x6020000) & (4 * v44) ^ v44;
  v48 = ((4 * v46) ^ 0x9C2C116C) & v46 ^ (4 * v46) & 0xA70B0458;
  v49 = v47 ^ 0xA70B045B ^ (v48 ^ 0x84080040) & (16 * v47);
  v50 = (16 * (v48 ^ 0x23030413)) & 0xA70B0450 ^ 0x870B004B ^ ((16 * (v48 ^ 0x23030413)) ^ 0x70B045B0) & (v48 ^ 0x23030413);
  v51 = (v49 << 8) & 0xA70B0400 ^ v49 ^ ((v49 << 8) ^ 0xB045B00) & v50;
  v52 = (((v2 ^ 0xC1E04AD8) + 1042265384) ^ ((v2 ^ 0x7B043EF3) - 2063875827) ^ ((v2 ^ 0x2990F635) - 697366069)) - 1650197048 + v8 + 1199708191;
  v53 = v8 + 360293911 + (((v43 ^ 0xB5427D1C) - 83626760) ^ ((v43 ^ 0xD77C9531) - 1724048165) ^ ((v43 ^ 0x732B5F3) + 1232288793));
  v54 = ((v41 - 2147115713) ^ ((v21 >> 30) - ((2 * (v21 >> 30)) & 0x7CDAA16C) + 1047351478) ^ (2 * ((v51 << 16) & 0x270B0000 ^ v51 ^ ((v51 << 16) ^ 0x45B0000) & ((v50 << 8) & 0xA70B0000 ^ 0x240B0000 ^ ((v50 << 8) ^ 0xB040000) & v50))) ^ 0x871921A0) - v53 + 1006635976;
  v55 = v52 ^ ((v52 ^ 0x1B708059) - 1469752605) ^ ((v52 ^ 0x1468832D) - 1484957289) ^ ((v52 ^ 0x3C8DD98C) - 1885863112) ^ ((v52 ^ 0x7F7FFFBC) - 865458936) ^ 0x9EB489B6 ^ (v54 - ((2 * v54) & 0x62A60858) + 827524140);
  v56 = v41 + 2038044383 + v55;
  v57 = (v54 - ((2 * v54) & 0x8E0B494E) + 1191552167) ^ 0xA4080C79;
  v58 = (v53 - v55) ^ (((v53 - v55) ^ 0x6DBDAC8D) - 1371383621) ^ (((v53 - v55) ^ 0x9558E1AD) + 1453790619) ^ (((v53 - v55) ^ 0x3A1B39B7) - 102445695) ^ (((v53 - v55) ^ 0xFEFE7F5F) + 1023511401) ^ 0x4561720E;
  HIDWORD(v21) = v55;
  LODWORD(v21) = v55;
  v59 = (v58 ^ (((v56 + (v21 >> 30)) ^ v57) - ((2 * ((v56 + (v21 >> 30)) ^ v57)) & 0xF2C2F38C) + 2036431302)) + 1243149514;
  v60 = (v59 ^ 0xD2BFD223) & (2 * (v59 & 0xDB3FDB4B)) ^ v59 & 0xDB3FDB4B;
  v61 = ((2 * (v59 ^ 0x74E0E435)) ^ 0x5FBE7EFC) & (v59 ^ 0x74E0E435) ^ (2 * (v59 ^ 0x74E0E435)) & 0xAFDF3F7E;
  v62 = v61 ^ 0xA0410102;
  v63 = (v61 ^ 0xD9E3E7C) & (4 * v60) ^ v60;
  v64 = ((4 * v62) ^ 0xBF7CFDF8) & v62 ^ (4 * v62) & 0xAFDF3F7C;
  v65 = (v64 ^ 0xAF5C3D70) & (16 * v63) ^ v63;
  v66 = ((16 * (v64 ^ 0x830206)) ^ 0xFDF3F7E0) & (v64 ^ 0x830206) ^ (16 * (v64 ^ 0x830206)) & 0xAFDF3F70;
  v67 = v65 ^ 0xAFDF3F7E ^ (v66 ^ 0xADD33700) & (v65 << 8);
  v68 = v59 ^ (2 * ((v67 << 16) & 0x2FDF0000 ^ v67 ^ ((v67 << 16) ^ 0x3F7E0000) & (((v66 ^ 0x20C081E) << 8) & 0x2FDF0000 ^ 0x20C00000 ^ (((v66 ^ 0x20C081E) << 8) ^ 0x5F3F0000) & (v66 ^ 0x20C081E))));
  v69 = (v68 ^ 0xDA3DA5B7) + v57;
  v70 = v5 < (v4 ^ 0xE120BDEA) || v5 > 0xE120B3B7;
  HIDWORD(v71) = v68 ^ 0xA3DA5B7;
  LODWORD(v71) = v68 ^ 0xD0000000;
  v72 = ((2 * (v56 + (v68 ^ 0xDA3DA5B7) + ((2 * v68) ^ 0x4B84B491) + 1)) & 0xBFAF2FFE) + ((v56 + (v68 ^ 0xDA3DA5B7) + ((2 * v68) ^ 0x4B84B491) + 1) ^ 0x5FD797FF);
  v73 = (((v71 >> 28) - ((2 * (v71 >> 28)) & 0x90D7A7FE) + 1215026175) ^ (v72 - 1107432076) ^ (((v72 - 1107432076) ^ 0x9B843401) + 2041466510) ^ (((v72 - 1107432076) ^ 0xDC7D016A) + 1045920743) ^ (((v72 - 1107432076) ^ 0x25E35EE5) - 943119254) ^ (((v72 - 1107432076) ^ 0x7FCFEEFD) - 1645898638) ^ 0x55BE568C) - (((v68 ^ v58 ^ 0xF81B7BD6) - 161558381) ^ ((v68 ^ v58 ^ 0x5B899569) + 1439448622) ^ ((v68 ^ v58 ^ 0xCE32CE) + 244029835)) - 1129925923;
  v74 = (v73 ^ 0xF7708350) & (2 * (v73 & 0xF072C459)) ^ v73 & 0xF072C459;
  v75 = ((2 * (v73 ^ 0xB79003C0)) ^ 0x8FC58F32) & (v73 ^ 0xB79003C0) ^ (2 * (v73 ^ 0xB79003C0)) & 0x47E2C798;
  v76 = v75 ^ 0x40224089;
  v77 = (v75 ^ 0x3C00300) & (4 * v74) ^ v74;
  v78 = ((4 * v76) ^ 0x1F8B1E64) & v76 ^ (4 * v76) & 0x47E2C798;
  v79 = (v78 ^ 0x7820609) & (16 * v77) ^ v77;
  v80 = ((16 * (v78 ^ 0x4060C199)) ^ 0x7E2C7990) & (v78 ^ 0x4060C199) ^ (16 * (v78 ^ 0x4060C199)) & 0x47E2C790;
  v81 = v79 ^ 0x47E2C799 ^ (v80 ^ 0x46204100) & (v79 << 8);
  v82 = v73 ^ (2 * ((v81 << 16) & 0x47E20000 ^ v81 ^ ((v81 << 16) ^ 0x47990000) & (((v80 ^ 0x1C28609) << 8) & 0x47E20000 ^ 0x5200000 ^ (((v80 ^ 0x1C28609) << 8) ^ 0xE2C70000) & (v80 ^ 0x1C28609)))) ^ v69;
  v83 = v72 - (((v82 ^ 0xAFFD8FA6) + 419849524) ^ ((v82 ^ 0x31401361) - 2017723915) ^ ((v82 ^ 0x52898E) - 1230413028)) + 1174759528;
  v84 = (v83 ^ 0x1AB7FE75) & (2 * (v83 & 0x8237FF76)) ^ v83 & 0x8237FF76;
  v85 = ((2 * (v83 ^ 0x1ABB163D)) ^ 0x3119D296) & (v83 ^ 0x1ABB163D) ^ (2 * (v83 ^ 0x1ABB163D)) & 0x988CE94A;
  v86 = v85 ^ 0x88842949;
  v87 = (v85 ^ 0x1008C000) & (4 * v84) ^ v84;
  v88 = ((4 * v86) ^ 0x6233A52C) & v86 ^ (4 * v86) & 0x988CE948;
  v89 = (v88 ^ 0xA100) & (16 * v87) ^ v87;
  v90 = ((16 * (v88 ^ 0x988C4843)) ^ 0x88CE94B0) & (v88 ^ 0x988C4843) ^ (16 * (v88 ^ 0x988C4843)) & 0x988CE940;
  v91 = v89 ^ 0x988CE94B ^ (v90 ^ 0x888C8000) & (v89 << 8);
  LODWORD(STACK[0x5A8]) = v83 ^ (2 * ((v91 << 16) & 0x188C0000 ^ v91 ^ ((v91 << 16) ^ 0x694B0000) & (((v90 ^ 0x1000694B) << 8) & 0x188C0000 ^ 0x10040000 ^ (((v90 ^ 0x1000694B) << 8) ^ 0xCE90000) & (v90 ^ 0x1000694B)))) ^ 0xF4998171;
  return (*(STACK[0x668] + 8 * ((8537 * v70) ^ v4)))();
}

uint64_t sub_1000E16F0()
{
  v1 = STACK[0x668];
  (*(STACK[0x668] + 8 * (v0 + 9401)))();
  (*(v1 + 8 * (v0 + 9401)))(STACK[0x750]);
  return sub_1000F4524();
}

uint64_t sub_1000E16FC()
{
  v3 = (v2 - 845343187) & 0x3262F97C;
  LODWORD(STACK[0x578]) = ((v3 - 1220979010) ^ (STACK[0x708] & ((LODWORD(STACK[0x710]) << 8) ^ 0x795280A7) | LODWORD(STACK[0x700]))) & LODWORD(STACK[0x6F8]) ^ LODWORD(STACK[0x6F0]);
  v4 = 8 * (((v1 < (19 * (v3 ^ 0x290Du)) + 1090806749) << 32) + v1 - 1090807680);
  *(STACK[0x748] + v4) = *(STACK[0x738] - 0x5AFD71E16DF85D05 + v4) ^ 0x5D5D5D5D5D5D5D5DLL;
  return (*(STACK[0x668] + 8 * ((90 * (v0 > 1)) ^ v3)))();
}

uint64_t sub_1000E20B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v10 = (a6 + 1118) | 0x2002u;
  STACK[0x538] = v10;
  v11 = (a3 + a5) >> 16;
  v12 = (a3 + a5 - v11) >> 8;
  v13 = (a3 + v8 - v12 - v11) >> 26;
  v14 = a3 + v8 + v13;
  v15 = (v14 - v12 - v11) >> 10;
  v16 = (v14 + v15 - v12 - v11) >> 4;
  v17 = v13 - v12 - v11;
  v18 = a3 + v10 + v7 + v15 + v13 + v16;
  v19 = v17 + v7 + a3 + v10 + v16 + v15 + ((v18 - v12 - v11) >> 28) - ((v18 + ((v18 - v12 - v11) >> 28) - ((v18 + ((v18 - v12 - v11) >> 28) - v12 - v11) >> 8) - v12 - v11) >> 1) - ((v18 + ((v18 - v12 - v11) >> 28) - v12 - v11) >> 8);
  v20 = (v19 ^ 0x3A8730727DE19A88) - ((v19 ^ 0x3A8730727DE19A88uLL) >> 27) - (((v19 ^ 0x3A8730727DE19A88) - ((v19 ^ 0x3A8730727DE19A88uLL) >> 27)) >> 8);
  LODWORD(STACK[0x690]) = v19 ^ (v17 + a3 + v15 + v8 + v16) ^ v6 ^ (v20 - (v20 >> 6));
  v21 = v9[73];
  LODWORD(v19) = v9[106];
  LODWORD(v18) = v9[71];
  LODWORD(v16) = v9[31];
  LODWORD(v10) = v9[78];
  LODWORD(v20) = v9[44];
  v22 = v9[45];
  v23 = v9[102];
  v24 = v9[33];
  v25 = v9[25];
  LODWORD(v15) = v9[40];
  v26 = v9[41];
  v27 = v9[1];
  v28 = v9[90];
  v29 = v9[6];
  v30 = v9[12];
  LODWORD(v17) = v9[13];
  v31 = v9[23];
  v33 = v9[28];
  v32 = v9[29];
  v34 = v9[107];
  v35 = v9[75];
  v36 = v9[99];
  v37 = v9[85];
  LODWORD(STACK[0x6F0]) = v37;
  v38 = v19 + v37 + 2074779151;
  LODWORD(STACK[0x6E8]) = v17 - v36;
  LODWORD(STACK[0x600]) = (v36 ^ v34) + 2 * (v36 & v34);
  v39 = v21;
  LODWORD(STACK[0x4D4]) = v21;
  LODWORD(STACK[0x700]) = (v28 ^ v21) + 2 * (v28 & v21);
  LODWORD(STACK[0x638]) = v33 + v28;
  LODWORD(STACK[0x708]) = v33 ^ v17;
  v40 = v18 + v35 + 389284076;
  LODWORD(v17) = v9[110];
  LODWORD(STACK[0x614]) = v27 - v16;
  LODWORD(STACK[0x670]) = v16 - v15;
  LODWORD(STACK[0x6C0]) = v15 - v10;
  LODWORD(STACK[0x6A8]) = v10 - v17;
  LODWORD(STACK[0x6A0]) = v17 + v25;
  LODWORD(STACK[0x648]) = v25 - v24;
  LODWORD(STACK[0x5D0]) = v24 + v23;
  LODWORD(STACK[0x6C8]) = v29 + v23;
  LODWORD(STACK[0x620]) = v31 + v29;
  LODWORD(STACK[0x678]) = v31 + v20;
  v41 = v9[80];
  LODWORD(STACK[0x62C]) = v41 + v20;
  LODWORD(v20) = v9[104];
  LODWORD(STACK[0x660]) = v20 + v41;
  v42 = v9[64];
  LODWORD(STACK[0x6B0]) = v20 ^ v42;
  LODWORD(v20) = v9[97];
  LODWORD(STACK[0x6E0]) = v42 + v20;
  v43 = v9[62];
  LODWORD(v17) = v43 ^ v20;
  LODWORD(v20) = v9[34];
  LODWORD(v16) = v9[35];
  LODWORD(STACK[0x5F0]) = v43 - v16;
  v44 = v9[94];
  LODWORD(STACK[0x6D8]) = v16 - v44;
  LODWORD(v16) = v9[68];
  LODWORD(STACK[0x5D4]) = v44 - v16;
  v45 = v9[72];
  v46 = v16 - v45;
  LODWORD(v16) = v9[51];
  LODWORD(STACK[0x6B8]) = v45 - v16;
  LODWORD(STACK[0x5E8]) = v16 + v18;
  v47 = v27 ^ v34 ^ 0x6A432889;
  LODWORD(STACK[0x640]) = v17;
  LODWORD(STACK[0x6F8]) = v47 ^ (v17 - ((2 * v17) & 0xD4865112) + 1782786185);
  LODWORD(STACK[0x710]) = v47 ^ (v46 - ((2 * v46) & 0xD4865112) + 1782786185);
  v48 = v9[7];
  LODWORD(v18) = v9[8];
  LODWORD(STACK[0x630]) = v48 - v19;
  LODWORD(v16) = v9[69];
  LODWORD(v19) = v16 ^ v48;
  v49 = v9[50];
  LODWORD(STACK[0x688]) = v35 - v49;
  v50 = v9[92];
  LODWORD(STACK[0x5A0]) = v49 + v50;
  v51 = v9[77];
  LODWORD(STACK[0x528]) = v50 - v51;
  v52 = v9[9];
  LODWORD(STACK[0x5A8]) = v51 - v52;
  LODWORD(STACK[0x608]) = v32 ^ v52;
  v53 = v9[18];
  LODWORD(STACK[0x51C]) = v32 + v53;
  LODWORD(v15) = v9[74];
  LODWORD(STACK[0x510]) = v53 - v15;
  v55 = v9[58];
  v54 = v9[59];
  LODWORD(STACK[0x574]) = v55 ^ v15;
  LODWORD(v15) = v9[67];
  LODWORD(STACK[0x5C8]) = v55 - v15;
  LODWORD(STACK[0x5FC]) = v15 - v26;
  v56 = v9[108];
  LODWORD(STACK[0x5CC]) = v56 ^ v26;
  LODWORD(v15) = v9[30];
  LODWORD(STACK[0x554]) = v56 + v15;
  v57 = v22 + v15;
  LODWORD(STACK[0x56C]) = v22 + v15;
  v58 = v9[86];
  LODWORD(STACK[0x4F8]) = v58 + v22;
  LODWORD(v15) = v9[17];
  LODWORD(STACK[0x5B4]) = v9[16];
  LODWORD(STACK[0x558]) = v58 ^ v15;
  LODWORD(STACK[0x658]) = v20 + v15 - v57;
  v59 = v9[2];
  LODWORD(STACK[0x4FC]) = v59 + v20;
  LODWORD(v20) = v9[70];
  LODWORD(STACK[0x540]) = v59 - v20;
  LODWORD(STACK[0x618]) = v20 + v18;
  LODWORD(v20) = v9[53];
  LODWORD(STACK[0x590]) = v18 - v20;
  v60 = v9[46];
  LODWORD(STACK[0x650]) = v20 ^ v60;
  LODWORD(STACK[0x534]) = v30 + v60;
  LODWORD(v20) = v9[105];
  LODWORD(STACK[0x654]) = v30 - v20;
  v61 = v9[100];
  LODWORD(STACK[0x520]) = v20 ^ v61;
  LODWORD(v20) = v9[19];
  LODWORD(STACK[0x59C]) = v61 - v20;
  v62 = v9[98];
  LODWORD(STACK[0x580]) = v20 + v62;
  LODWORD(v20) = v9[15];
  LODWORD(STACK[0x548]) = v20 ^ v62;
  v63 = v9[36];
  v64 = v9[37];
  LODWORD(STACK[0x504]) = v20 ^ v64;
  LODWORD(v17) = v9[54];
  LODWORD(STACK[0x4D0]) = v9[55];
  v65 = v17 ^ v64;
  v66 = -v19 ^ ((v17 ^ v64) - (v19 ^ v17 ^ v64)) ^ 0x96623463 ^ (v19 - ((2 * v19) & 0x2CC468C6) - 1771948957);
  LODWORD(v20) = v9[38];
  LODWORD(STACK[0x518]) = v20 - v16;
  LODWORD(v16) = v9[39];
  LODWORD(STACK[0x570]) = v20 + v16;
  LODWORD(v20) = v9[79];
  v67 = v16 + v20;
  LODWORD(STACK[0x6D0]) = v16 + v20 - 389284076 + v40;
  LODWORD(STACK[0x5D8]) = v38 + v40;
  LODWORD(STACK[0x610]) = v19 - v38 - 458406668;
  LODWORD(v19) = v9[103];
  LODWORD(STACK[0x4C8]) = v19 + v20;
  LODWORD(v20) = v9[24];
  LODWORD(STACK[0x488]) = v19 + v20;
  LODWORD(v19) = v9[83];
  v68 = v19 - v20;
  LODWORD(v20) = v9[87];
  LODWORD(STACK[0x4CC]) = v19 + v20;
  LODWORD(v19) = v9[49];
  LODWORD(STACK[0x4C4]) = v9[48];
  v69 = v19 - v20;
  v70 = v9[101];
  LODWORD(STACK[0x5E0]) = v70 ^ v39 ^ 0x9C591862 ^ (v19 - v20 - ((2 * (v19 - v20)) & 0x38B230C4) - 1671882654);
  v71 = v9[20];
  LODWORD(v10) = v9[21];
  v72 = v9[84] + v71;
  v73 = v9[93];
  LODWORD(STACK[0x430]) = v19 ^ v73;
  LODWORD(v19) = v9[65];
  v74 = v73 ^ v19;
  v75 = v9[56];
  v76 = v9[57];
  v77 = v19 ^ v76;
  LODWORD(v19) = *v9;
  LODWORD(STACK[0x3F4]) = *v9 - v76;
  v78 = v9[88];
  LODWORD(v16) = v78 ^ v19;
  LODWORD(v15) = v9[109];
  v79 = v15 - v78;
  v80 = v9[5];
  LODWORD(STACK[0x468]) = v80 - v15;
  LODWORD(v15) = v9[3];
  v81 = v15 + v80;
  v82 = v9[22];
  v83 = v82 - v15;
  LODWORD(v15) = v9[95];
  LODWORD(STACK[0x4B8]) = v15 + v82;
  LODWORD(STACK[0x42C]) = v63 + v15;
  v84 = v9[63];
  v85 = v84 - v63;
  v86 = v17 - v54;
  LODWORD(v17) = v9[4];
  LODWORD(v20) = v54 + v17;
  v87 = v9[52];
  LODWORD(STACK[0x3F8]) = v87 + v17;
  LODWORD(v17) = v9[42];
  LODWORD(v15) = v9[43];
  v88 = v87 ^ v17;
  v89 = v9[14];
  LODWORD(v17) = v89 ^ v17;
  LODWORD(v19) = v9[61];
  v90 = v19 ^ v89;
  v91 = v9[26];
  LODWORD(v18) = v9[27];
  LODWORD(v19) = v91 ^ v19;
  LODWORD(STACK[0x680]) = v46 + v83;
  LODWORD(STACK[0x5C4]) = v83 + v74;
  LODWORD(STACK[0x698]) = v85 ^ v74;
  v92 = STACK[0x648];
  LODWORD(STACK[0x438]) = LODWORD(STACK[0x648]) ^ v85;
  LODWORD(STACK[0x588]) = v92 + v17;
  LODWORD(STACK[0x560]) = v17 - v19;
  LODWORD(STACK[0x43C]) = v19 - v20;
  LODWORD(STACK[0x648]) = v20 + v16;
  LODWORD(v20) = STACK[0x630];
  LODWORD(STACK[0x634]) = LODWORD(STACK[0x630]) + v16;
  v93 = v20 - LODWORD(STACK[0x6A8]);
  LODWORD(STACK[0x5EC]) = v72 ^ LODWORD(STACK[0x6A8]);
  LODWORD(v20) = STACK[0x638];
  LODWORD(STACK[0x6A8]) = v72 - LODWORD(STACK[0x638]);
  LODWORD(STACK[0x5B8]) = v20 ^ v65;
  LODWORD(STACK[0x630]) = v66 + v65;
  v94 = LODWORD(STACK[0x6F0]) - v10;
  LODWORD(v20) = v9[66];
  LODWORD(v19) = v10 ^ v20 ^ 0xDACE5279;
  LODWORD(v10) = STACK[0x4F8];
  v95 = STACK[0x600];
  v96 = LODWORD(STACK[0x600]) - ((2 * LODWORD(STACK[0x600])) & 0xB59CA4F2) - 624012679;
  LODWORD(STACK[0x524]) = v19 ^ (LODWORD(STACK[0x4F8]) - ((2 * LODWORD(STACK[0x4F8])) & 0xB59CA4F2) - 624012679);
  LODWORD(STACK[0x500]) = v96 ^ v19;
  LODWORD(v19) = v9[81];
  v97 = v19 + v84;
  LODWORD(STACK[0x414]) = v75 - v19;
  v98 = v9[32];
  LODWORD(v16) = v98 - v75;
  LODWORD(v19) = v9[10];
  v99 = v19 + v98;
  v100 = STACK[0x5B4];
  v101 = LODWORD(STACK[0x5B4]) ^ v70;
  LODWORD(v17) = STACK[0x5D0];
  LODWORD(STACK[0x420]) = v67 - LODWORD(STACK[0x5D0]);
  LODWORD(STACK[0x4C0]) = v99 ^ v17;
  LODWORD(v17) = STACK[0x614];
  LODWORD(STACK[0x638]) = v99 + LODWORD(STACK[0x614]);
  v102 = STACK[0x5C8];
  LODWORD(STACK[0x508]) = LODWORD(STACK[0x5C8]) ^ v17;
  LODWORD(STACK[0x490]) = v102 - v101;
  v103 = v15 ^ v20;
  LODWORD(STACK[0x3DC]) = v18 ^ v15;
  LODWORD(v20) = v9[91];
  v104 = v18 - v20;
  v105 = v9[60];
  LODWORD(v18) = v20 ^ v105;
  LODWORD(v20) = v9[89];
  v106 = v20 + v105;
  v107 = v9[96];
  v108 = v20 - v107;
  LODWORD(v20) = v9[82];
  v109 = v107 + v20;
  LODWORD(v15) = v9[76];
  v110 = v15 + v20;
  LODWORD(v20) = v15 ^ v100;
  LODWORD(STACK[0x480]) = v100 ^ LODWORD(STACK[0x4D4]);
  LODWORD(STACK[0x4F8]) = v79 + v10;
  LODWORD(STACK[0x614]) = v79 + v77;
  LODWORD(STACK[0x5C8]) = v16 ^ v77;
  LODWORD(v17) = STACK[0x528];
  LODWORD(STACK[0x5B4]) = v69 ^ LODWORD(STACK[0x528]);
  LODWORD(STACK[0x3F0]) = v16 ^ v17;
  LODWORD(STACK[0x4D4]) = v95 + v81;
  LODWORD(v15) = STACK[0x51C];
  LODWORD(STACK[0x528]) = v81 - LODWORD(STACK[0x51C]);
  LODWORD(v16) = STACK[0x620];
  LODWORD(STACK[0x4A0]) = v15 + LODWORD(STACK[0x620]);
  LODWORD(v15) = STACK[0x510];
  LODWORD(STACK[0x6F0]) = v16 ^ LODWORD(STACK[0x510]);
  LODWORD(v16) = STACK[0x5D4];
  LODWORD(STACK[0x600]) = LODWORD(STACK[0x5D4]) ^ v15;
  LODWORD(v15) = STACK[0x4FC];
  LODWORD(STACK[0x510]) = LODWORD(STACK[0x4FC]) + v16;
  LODWORD(v16) = STACK[0x62C];
  LODWORD(STACK[0x3E0]) = v15 ^ LODWORD(STACK[0x62C]);
  LODWORD(v15) = STACK[0x574];
  LODWORD(STACK[0x4FC]) = LODWORD(STACK[0x574]) + v16;
  LODWORD(STACK[0x4B0]) = v15 - v18;
  LODWORD(v16) = STACK[0x5F0];
  LODWORD(STACK[0x574]) = LODWORD(STACK[0x5F0]) ^ v18;
  LODWORD(v18) = STACK[0x5A8];
  LODWORD(STACK[0x5D0]) = v16 - LODWORD(STACK[0x5A8]);
  LODWORD(STACK[0x5D4]) = v18 - v109;
  LODWORD(STACK[0x434]) = v109 + v68;
  v111 = STACK[0x5E8];
  LODWORD(STACK[0x5A8]) = LODWORD(STACK[0x5E8]) ^ v68;
  LODWORD(v18) = STACK[0x6B0];
  LODWORD(STACK[0x5F0]) = v111 ^ LODWORD(STACK[0x6B0]);
  LODWORD(STACK[0x62C]) = v18 ^ 0xED46B374 ^ (v104 - ((2 * v104) & 0xDA8D66E8) - 314133644);
  LODWORD(v16) = v9[47];
  LODWORD(v10) = v19 + v16;
  LODWORD(v18) = LODWORD(STACK[0x4D0]) + v16;
  LODWORD(v16) = LODWORD(STACK[0x4D0]) + v71;
  v112 = v9[11];
  v113 = v91 + LODWORD(STACK[0x4C4]);
  LODWORD(v15) = LODWORD(STACK[0x4C4]) ^ v112;
  v114 = STACK[0x540];
  LODWORD(STACK[0x6B0]) = v104 - LODWORD(STACK[0x540]);
  LODWORD(v17) = STACK[0x504];
  LODWORD(STACK[0x4D0]) = v114 - LODWORD(STACK[0x504]);
  v115 = STACK[0x554];
  LODWORD(STACK[0x5E8]) = v17 + LODWORD(STACK[0x554]);
  LODWORD(v19) = STACK[0x670];
  LODWORD(STACK[0x51C]) = v115 + LODWORD(STACK[0x670]);
  LODWORD(STACK[0x540]) = v90 ^ v19;
  v116 = LODWORD(STACK[0x534]) + v90;
  LODWORD(STACK[0x400]) = v15 ^ LODWORD(STACK[0x534]);
  LODWORD(STACK[0x554]) = v15 - v20;
  LODWORD(v17) = v20 - v16 - 1552665655;
  LODWORD(v19) = STACK[0x678];
  LODWORD(STACK[0x534]) = v16 - LODWORD(STACK[0x678]);
  LODWORD(v20) = STACK[0x660];
  LODWORD(STACK[0x408]) = v19 - LODWORD(STACK[0x660]);
  LODWORD(STACK[0x3E8]) = v20 - v106;
  LODWORD(STACK[0x4C4]) = v106 - v86;
  LODWORD(v19) = STACK[0x6A0];
  LODWORD(v20) = LODWORD(STACK[0x6A0]) - ((2 * LODWORD(STACK[0x6A0])) & 0xE3148F46) - 242595933;
  LODWORD(STACK[0x478]) = (v86 - ((2 * v86) & 0xE3148F46) - 242595933) ^ v103 ^ 0xF18A47A3;
  LODWORD(STACK[0x498]) = v20 ^ v103 ^ 0xF18A47A3;
  v117 = LODWORD(STACK[0x520]) ^ v19;
  LODWORD(STACK[0x4A8]) = LODWORD(STACK[0x520]) - v88;
  LODWORD(v19) = STACK[0x6E8];
  LODWORD(STACK[0x470]) = v88 - LODWORD(STACK[0x6E8]);
  v118 = v19 - v112;
  v119 = v112 & STACK[0x5A0];
  v120 = v112 ^ LODWORD(STACK[0x5A0]);
  LODWORD(v19) = STACK[0x6C0];
  LODWORD(STACK[0x458]) = LODWORD(STACK[0x5A0]) ^ LODWORD(STACK[0x6C0]);
  v121 = v19 ^ LODWORD(STACK[0x4B8]);
  v122 = LODWORD(STACK[0x558]) + LODWORD(STACK[0x4B8]);
  LODWORD(v16) = STACK[0x3F4];
  v123 = LODWORD(STACK[0x3F4]) + LODWORD(STACK[0x558]) + 1779642342;
  v124 = v120 + 2 * v119 + 1550355698;
  LODWORD(v20) = STACK[0x4C8];
  LODWORD(STACK[0x440]) = LODWORD(STACK[0x56C]) - LODWORD(STACK[0x4C8]);
  v125 = v20 - v108;
  LODWORD(v19) = STACK[0x6C8];
  LODWORD(STACK[0x460]) = v108 ^ LODWORD(STACK[0x6C8]);
  LODWORD(STACK[0x4B8]) = v19 - v10;
  LODWORD(v10) = v10 - v97;
  LODWORD(STACK[0x6C0]) = v97 - v110;
  LODWORD(v19) = STACK[0x6B8];
  LODWORD(STACK[0x4C8]) = LODWORD(STACK[0x6B8]) ^ v110;
  v126 = v19 + LODWORD(STACK[0x488]);
  LODWORD(v19) = STACK[0x700];
  LODWORD(STACK[0x450]) = LODWORD(STACK[0x700]) ^ LODWORD(STACK[0x488]);
  v127 = v19 + LODWORD(STACK[0x5CC]);
  v128 = LODWORD(STACK[0x5CC]) - LODWORD(STACK[0x548]);
  v129 = LODWORD(STACK[0x548]) + 2038069911;
  v130 = STACK[0x430];
  LODWORD(STACK[0x448]) = LODWORD(STACK[0x430]) - LODWORD(STACK[0x640]);
  LODWORD(v20) = STACK[0x4CC];
  LODWORD(STACK[0x3EC]) = LODWORD(STACK[0x4CC]) + v130;
  LODWORD(v15) = LODWORD(STACK[0x590]) - v20;
  v131 = LODWORD(STACK[0x590]) + v18;
  LODWORD(v20) = LODWORD(STACK[0x6D8]) + v18;
  v132 = LODWORD(STACK[0x608]) + LODWORD(STACK[0x6D8]);
  v133 = v113 ^ LODWORD(STACK[0x608]);
  LODWORD(v18) = v94 - v113;
  v134 = v94 + LODWORD(STACK[0x42C]);
  LODWORD(v19) = STACK[0x5FC];
  LODWORD(STACK[0x418]) = LODWORD(STACK[0x42C]) ^ LODWORD(STACK[0x5FC]);
  LODWORD(STACK[0x620]) = v124 - v19 + v129;
  v135 = LODWORD(STACK[0x580]) ^ v16;
  v136 = STACK[0x518];
  LODWORD(STACK[0x430]) = LODWORD(STACK[0x580]) - LODWORD(STACK[0x518]);
  v137 = STACK[0x59C];
  LODWORD(STACK[0x42C]) = v136 - LODWORD(STACK[0x59C]);
  v138 = v137 - LODWORD(STACK[0x6E0]);
  v139 = LODWORD(STACK[0x6E0]) + LODWORD(STACK[0x3F8]);
  LODWORD(v16) = STACK[0x468];
  LODWORD(STACK[0x3F4]) = LODWORD(STACK[0x3F8]) - LODWORD(STACK[0x468]);
  v140 = STACK[0x3DC];
  v141 = v16 + LODWORD(STACK[0x3DC]) + 1302835800;
  LODWORD(STACK[0x520]) = v141;
  LODWORD(STACK[0x640]) = v124 + v17 + 2309957;
  LODWORD(STACK[0x6A0]) = v17 - v116 + 1552665655;
  LODWORD(STACK[0x6D8]) = v116 - v93 + 177683449;
  LODWORD(v16) = STACK[0x438];
  LODWORD(STACK[0x468]) = LODWORD(STACK[0x438]) ^ 0xCEE0B1DD ^ (v93 - ((2 * v93) & 0x9DC163BA) - 824135203);
  LODWORD(STACK[0x3E4]) = v20 ^ v16;
  LODWORD(STACK[0x6C8]) = v20 + v135;
  LODWORD(STACK[0x504]) = v117 + v135;
  LODWORD(v16) = STACK[0x43C];
  LODWORD(STACK[0x678]) = v117 - LODWORD(STACK[0x43C]) + 1763311368;
  v142 = v121 + 1830904069;
  LODWORD(v20) = STACK[0x658];
  LODWORD(STACK[0x6B8]) = LODWORD(STACK[0x658]) + v121;
  v143 = STACK[0x3E0];
  LODWORD(STACK[0x660]) = v20 - LODWORD(STACK[0x3E0]) + 566483989;
  v144 = LODWORD(STACK[0x650]) ^ v140;
  v145 = LODWORD(STACK[0x650]) + LODWORD(STACK[0x570]);
  LODWORD(v17) = LODWORD(STACK[0x570]) - LODWORD(STACK[0x688]);
  v146 = LODWORD(STACK[0x688]) + LODWORD(STACK[0x708]);
  LODWORD(v19) = LODWORD(STACK[0x414]) + LODWORD(STACK[0x708]);
  LODWORD(v20) = LODWORD(STACK[0x654]) + LODWORD(STACK[0x414]);
  v147 = STACK[0x618];
  v148 = LODWORD(STACK[0x618]) + LODWORD(STACK[0x654]) + 418781628;
  LODWORD(STACK[0x3DC]) = v16 + v145;
  LODWORD(v16) = STACK[0x420];
  LODWORD(STACK[0x670]) = v145 ^ LODWORD(STACK[0x420]);
  v149 = STACK[0x600];
  LODWORD(STACK[0x6E8]) = v16 - LODWORD(STACK[0x600]);
  v150 = v149 + 1397111827;
  v151 = STACK[0x5D8];
  LODWORD(STACK[0x600]) = v142 + LODWORD(STACK[0x5D8]);
  v152 = v150 + v151;
  v153 = STACK[0x5D4];
  LODWORD(STACK[0x5CC]) = LODWORD(STACK[0x5D4]) + v143;
  LODWORD(v16) = STACK[0x3F0];
  LODWORD(STACK[0x558]) = v153 + LODWORD(STACK[0x3F0]);
  LODWORD(STACK[0x3BC]) = v17 ^ v16;
  LODWORD(v16) = STACK[0x4C0];
  LODWORD(STACK[0x654]) = v17 + LODWORD(STACK[0x4C0]);
  LODWORD(STACK[0x5D4]) = v16 + v122;
  LODWORD(v16) = STACK[0x490];
  LODWORD(STACK[0x608]) = v122 - LODWORD(STACK[0x490]);
  v154 = STACK[0x510];
  LODWORD(STACK[0x548]) = LODWORD(STACK[0x510]) ^ v16;
  LODWORD(STACK[0x580]) = v154 - v123;
  LODWORD(v17) = STACK[0x480];
  LODWORD(STACK[0x5A0]) = v123 + LODWORD(STACK[0x480]) + 1309927891;
  v155 = STACK[0x3E8];
  v156 = LODWORD(STACK[0x3E8]) - 418781628 + v148;
  LODWORD(v16) = STACK[0x610];
  LODWORD(STACK[0x658]) = LODWORD(STACK[0x610]) - v148;
  LODWORD(STACK[0x700]) = v17 - v16 + 1761781477;
  LODWORD(v17) = STACK[0x500];
  LODWORD(STACK[0x650]) = v126 - LODWORD(STACK[0x500]) + 532455560;
  LODWORD(STACK[0x610]) = v146 + v155;
  LODWORD(STACK[0x510]) = v10 ^ v146;
  v157 = STACK[0x6F8];
  LODWORD(STACK[0x5FC]) = v10 + LODWORD(STACK[0x6F8]);
  LODWORD(v16) = STACK[0x508];
  LODWORD(STACK[0x4C0]) = v157 - LODWORD(STACK[0x508]);
  LODWORD(v10) = STACK[0x434];
  LODWORD(STACK[0x3CC]) = LODWORD(STACK[0x434]) + v16;
  LODWORD(v16) = STACK[0x5E8];
  LODWORD(STACK[0x56C]) = LODWORD(STACK[0x5E8]) + v126;
  LODWORD(STACK[0x518]) = v18 + v16;
  v158 = STACK[0x4F8];
  LODWORD(STACK[0x3B0]) = v10 ^ LODWORD(STACK[0x4F8]);
  LODWORD(v16) = STACK[0x5E0];
  LODWORD(STACK[0x5E8]) = LODWORD(STACK[0x5E0]) + v158;
  LODWORD(v10) = STACK[0x4A0];
  LODWORD(STACK[0x420]) = LODWORD(STACK[0x4A0]) ^ v16;
  LODWORD(STACK[0x3B8]) = v18 ^ v20;
  LODWORD(STACK[0x59C]) = v20 ^ v118;
  v159 = STACK[0x524];
  LODWORD(STACK[0x4CC]) = v10 - LODWORD(STACK[0x524]);
  LODWORD(STACK[0x508]) = v159 - v118;
  v160 = v17 + LODWORD(STACK[0x400]);
  LODWORD(STACK[0x524]) = v125 + LODWORD(STACK[0x400]);
  LODWORD(STACK[0x3C0]) = v125 ^ v139;
  LODWORD(STACK[0x5D8]) = v139 + v127;
  LODWORD(STACK[0x570]) = v133 ^ v127;
  v161 = STACK[0x62C];
  LODWORD(STACK[0x500]) = LODWORD(STACK[0x62C]) + v133;
  LODWORD(STACK[0x590]) = v161 - v19;
  v162 = v19 + v134;
  LODWORD(v20) = STACK[0x560];
  LODWORD(STACK[0x5E0]) = v134 + LODWORD(STACK[0x560]);
  v163 = STACK[0x408];
  LODWORD(STACK[0x62C]) = v20 - LODWORD(STACK[0x408]);
  v164 = v163 - v15;
  LODWORD(STACK[0x3E8]) = v163 - v15;
  LODWORD(v16) = LODWORD(STACK[0x5F0]) ^ 0xAD3D0EBB;
  LODWORD(STACK[0x560]) = (v15 - ((2 * v15) & 0x5A7A1D76) - 1388507461) ^ v16;
  LODWORD(STACK[0x4F8]) = (v128 - ((2 * v128) & 0x5A7A1D76) - 1388507461) ^ v16;
  LODWORD(STACK[0x5F0]) = v147 + v128;
  LODWORD(v19) = LODWORD(STACK[0x4FC]) + v147;
  v165 = STACK[0x588];
  LODWORD(STACK[0x490]) = LODWORD(STACK[0x4FC]) ^ LODWORD(STACK[0x588]);
  LODWORD(STACK[0x438]) = v131 ^ v165;
  LODWORD(v15) = STACK[0x5C4];
  LODWORD(v20) = LODWORD(STACK[0x5C4]) + 833738879 + (~(2 * LODWORD(STACK[0x5C4])) | 0x9C9C4F01);
  LODWORD(STACK[0x4A0]) = v144 ^ 0x31B1D87F ^ (v131 - ((2 * v131) & 0x6363B0FE) + 833738879);
  v166 = v144 ^ 0x31B1D87F ^ (v20 + 1);
  v167 = LODWORD(STACK[0x6C0]) + 647666795;
  v168 = STACK[0x5B8];
  LODWORD(STACK[0x4FC]) = LODWORD(STACK[0x5B8]) - LODWORD(STACK[0x6C0]);
  LODWORD(STACK[0x6C0]) = v168 ^ v138;
  LODWORD(v16) = STACK[0x4B0];
  LODWORD(STACK[0x488]) = LODWORD(STACK[0x4B0]) ^ v138;
  v169 = v16 ^ v132;
  LODWORD(v20) = LODWORD(STACK[0x710]) ^ v132;
  LODWORD(v16) = STACK[0x710] & v132;
  LODWORD(v18) = STACK[0x710];
  v170 = STACK[0x5EC];
  LODWORD(STACK[0x3F8]) = LODWORD(STACK[0x5EC]) + v15;
  LODWORD(v15) = STACK[0x4D4];
  LODWORD(STACK[0x6E0]) = LODWORD(STACK[0x4D4]) ^ v170;
  LODWORD(STACK[0x6F8]) = v15 - v18;
  LODWORD(STACK[0x480]) = v167 - LODWORD(STACK[0x6F0]) - 647666795;
  LODWORD(STACK[0x434]) = v20 + 2 * v16;
  LODWORD(v17) = STACK[0x528];
  LODWORD(STACK[0x5EC]) = v141 - LODWORD(STACK[0x528]) - 1302835800;
  v171 = LODWORD(STACK[0x418]) ^ 0xF2EB5B71;
  v172 = STACK[0x3EC];
  LODWORD(v15) = STACK[0x5B4];
  v173 = (LODWORD(STACK[0x3EC]) - ((2 * LODWORD(STACK[0x3EC])) & 0xE5D6B6E2) - 219456655) ^ v171;
  v174 = (LODWORD(STACK[0x5B4]) - ((2 * LODWORD(STACK[0x5B4])) & 0xE5D6B6E2) - 219456655) ^ v171;
  LODWORD(STACK[0x3B4]) = v174;
  v175 = v17 - LODWORD(STACK[0x448]);
  v176 = LODWORD(STACK[0x448]) - LODWORD(STACK[0x470]);
  LODWORD(v16) = STACK[0x4D0];
  LODWORD(STACK[0x708]) = LODWORD(STACK[0x470]) - LODWORD(STACK[0x4D0]);
  v177 = STACK[0x5C8];
  LODWORD(STACK[0x470]) = v16 - LODWORD(STACK[0x5C8]);
  LODWORD(v16) = STACK[0x574];
  LODWORD(STACK[0x43C]) = LODWORD(STACK[0x574]) + v177;
  v178 = v16 - LODWORD(STACK[0x478]);
  LODWORD(v16) = STACK[0x460];
  LODWORD(STACK[0x3C8]) = LODWORD(STACK[0x460]) ^ LODWORD(STACK[0x478]);
  v179 = v16 - LODWORD(STACK[0x4C4]);
  LODWORD(v20) = STACK[0x634];
  LODWORD(STACK[0x418]) = LODWORD(STACK[0x4C4]) ^ LODWORD(STACK[0x634]);
  LODWORD(v16) = STACK[0x450];
  LODWORD(STACK[0x688]) = v20 - LODWORD(STACK[0x450]);
  v180 = STACK[0x51C];
  LODWORD(STACK[0x400]) = v16 - LODWORD(STACK[0x51C]);
  LODWORD(v20) = STACK[0x6D0];
  LODWORD(STACK[0x414]) = LODWORD(STACK[0x6D0]) ^ v180;
  v181 = LODWORD(STACK[0x648]) + v20;
  LODWORD(v20) = STACK[0x630];
  LODWORD(STACK[0x408]) = LODWORD(STACK[0x648]) ^ LODWORD(STACK[0x630]);
  LODWORD(v16) = STACK[0x458];
  LODWORD(STACK[0x460]) = v20 + LODWORD(STACK[0x458]);
  v182 = LODWORD(STACK[0x498]) + v16;
  LODWORD(v20) = STACK[0x680];
  LODWORD(STACK[0x3F0]) = LODWORD(STACK[0x498]) ^ LODWORD(STACK[0x680]);
  v183 = LODWORD(STACK[0x5A8]) ^ v20;
  LODWORD(v16) = STACK[0x4A8];
  LODWORD(STACK[0x448]) = LODWORD(STACK[0x4A8]) + LODWORD(STACK[0x5A8]);
  LODWORD(v20) = STACK[0x698];
  LODWORD(STACK[0x450]) = v16 - LODWORD(STACK[0x698]);
  v184 = LODWORD(STACK[0x440]) + v20 + 777737659;
  LODWORD(v16) = STACK[0x614];
  LODWORD(STACK[0x4A8]) = LODWORD(STACK[0x614]) + LODWORD(STACK[0x440]);
  LODWORD(STACK[0x3EC]) = v172 + v16;
  v185 = STACK[0x540];
  LODWORD(STACK[0x6D0]) = v15 + LODWORD(STACK[0x540]);
  v186 = LODWORD(STACK[0x430]) ^ v185;
  v187 = STACK[0x534];
  LODWORD(STACK[0x440]) = LODWORD(STACK[0x430]) ^ LODWORD(STACK[0x534]);
  v188 = STACK[0x42C];
  LODWORD(STACK[0x430]) = LODWORD(STACK[0x42C]) ^ v187;
  v189 = v188 - LODWORD(STACK[0x554]);
  LODWORD(v20) = STACK[0x5D0];
  LODWORD(STACK[0x3E0]) = LODWORD(STACK[0x554]) - LODWORD(STACK[0x5D0]);
  v190 = v20 ^ LODWORD(STACK[0x3F4]);
  v191 = LODWORD(STACK[0x638]) + LODWORD(STACK[0x3F4]);
  LODWORD(v20) = STACK[0x4B8];
  LODWORD(STACK[0x4D0]) = LODWORD(STACK[0x638]) ^ LODWORD(STACK[0x4B8]);
  v192 = LODWORD(STACK[0x4C8]) ^ 0xD4091795;
  v193 = STACK[0x6A8];
  LODWORD(STACK[0x42C]) = v192 ^ (v20 - ((2 * v20) & 0xA8122F2A) - 737601643);
  v194 = v192 ^ (v193 - ((2 * v193) & 0xA8122F2A) - 737601643);
  v195 = STACK[0x3E4];
  LODWORD(STACK[0x4D4]) = LODWORD(STACK[0x3E4]) ^ 0xFC421FDA ^ (v19 - ((2 * v19) & 0xF8843FB4) - 62775334);
  v196 = STACK[0x3B0];
  LODWORD(STACK[0x3F4]) = LODWORD(STACK[0x3B0]) - v152 - 433792242;
  LODWORD(v20) = STACK[0x3DC];
  LODWORD(STACK[0x478]) = LODWORD(STACK[0x3DC]) + 433792242 + v152;
  v197 = STACK[0x3BC];
  LODWORD(STACK[0x648]) = LODWORD(STACK[0x3BC]) ^ v195;
  v198 = (v190 - ((2 * v190) & 0x7FD8313C) - 1075046242) ^ v197 ^ 0xBFEC189E;
  LODWORD(STACK[0x3E4]) = v160 - v19;
  LODWORD(STACK[0x4C4]) = v20 - v160;
  v199 = STACK[0x6E8];
  v200 = STACK[0x6E8] & 0x400000;
  if ((v156 & v200) != 0)
  {
    v200 = -v200;
  }

  LODWORD(STACK[0x540]) = v156;
  LODWORD(STACK[0x574]) = (v200 + v156) ^ v199 & 0xFFBFFFFF;
  LODWORD(STACK[0x3BC]) = v162 - 184913307;
  v201 = v164 - v162;
  v202 = STACK[0x3B8];
  LODWORD(STACK[0x634]) = LODWORD(STACK[0x3B8]) - v182 - 925903004;
  v203 = STACK[0x3CC];
  v204 = STACK[0x3C0];
  v205 = LODWORD(STACK[0x3C0]) ^ 0x2B9029F2 ^ (LODWORD(STACK[0x3CC]) - ((2 * LODWORD(STACK[0x3CC])) & 0x572053E4) + 730868210);
  LODWORD(STACK[0x618]) = v201 ^ 0x50C084C;
  LODWORD(STACK[0x588]) = v179 - v166 - 2121059086;
  LODWORD(STACK[0x528]) = v169;
  LODWORD(STACK[0x630]) = (v169 ^ v174) - 884873929;
  v206 = STACK[0x580];
  LODWORD(STACK[0x5B8]) = v189 - LODWORD(STACK[0x580]) - 1879118078;
  v207 = STACK[0x6B0];
  v208 = v193 - LODWORD(STACK[0x6B0]);
  LODWORD(STACK[0x388]) = v208;
  LODWORD(STACK[0x554]) = v179 + v207;
  v209 = LODWORD(STACK[0x5CC]) ^ v207;
  v210 = v183 - LODWORD(STACK[0x5CC]);
  LODWORD(STACK[0x680]) = v181 - v183 - 619885872;
  v211 = STACK[0x420];
  LODWORD(STACK[0x614]) = (v166 ^ LODWORD(STACK[0x420])) + 152505483;
  v212 = STACK[0x468];
  LODWORD(STACK[0x710]) = (v196 ^ LODWORD(STACK[0x468])) + 1874449542;
  v213 = v181 ^ LODWORD(STACK[0x56C]);
  LODWORD(STACK[0x3DC]) = v178 ^ LODWORD(STACK[0x56C]);
  LODWORD(STACK[0x4B8]) = v178 + v186;
  LODWORD(STACK[0x698]) = v175 - v186;
  v214 = STACK[0x524];
  LODWORD(STACK[0x6B0]) = LODWORD(STACK[0x524]) ^ v175;
  v215 = STACK[0x5D4];
  LODWORD(STACK[0x4B0]) = LODWORD(STACK[0x5D4]) - v214;
  LODWORD(STACK[0x498]) = v173 - v215;
  v216 = v173 - 1109494186;
  LODWORD(STACK[0x5CC]) = v205 + 2061516126;
  LODWORD(STACK[0x5B4]) = v198 + 1700234621;
  v217 = STACK[0x59C];
  v218 = STACK[0x678];
  LODWORD(STACK[0x5A8]) = LODWORD(STACK[0x59C]) + 699917152 + LODWORD(STACK[0x678]);
  LODWORD(STACK[0x5C4]) = v189 + v218 - 2 * v189 + 1175328135;
  LODWORD(STACK[0x5D0]) = v213 + 910759373;
  LODWORD(STACK[0x6A8]) = v206 - v191;
  LODWORD(STACK[0x4C8]) = v191 - v194;
  v219 = STACK[0x488];
  LODWORD(STACK[0x458]) = v194 - LODWORD(STACK[0x488]);
  LODWORD(STACK[0x678]) = v219 - LODWORD(STACK[0x654]) - 87176962;
  LODWORD(STACK[0x5D4]) = v209 + 908161492;
  v220 = STACK[0x5E8];
  LODWORD(STACK[0x638]) = LODWORD(STACK[0x5E8]) - v217;
  v221 = STACK[0x3C8];
  LODWORD(STACK[0x534]) = (LODWORD(STACK[0x3C8]) ^ v220) + 90548727;
  LODWORD(STACK[0x51C]) = v204 ^ v176;
  v222 = STACK[0x5D8];
  LODWORD(STACK[0x580]) = v176 ^ LODWORD(STACK[0x5D8]);
  v223 = STACK[0x3F8];
  v224 = v222 + LODWORD(STACK[0x3F8]) - 529870596;
  LODWORD(STACK[0x524]) = v224;
  LODWORD(STACK[0x5C8]) = LODWORD(STACK[0x648]) - 53681059;
  v225 = STACK[0x650];
  LODWORD(STACK[0x5D8]) = v216 + LODWORD(STACK[0x650]);
  v226 = STACK[0x438];
  LODWORD(STACK[0x648]) = LODWORD(STACK[0x438]) - 496538881 + v225;
  v227 = STACK[0x658];
  LODWORD(STACK[0x488]) = LODWORD(STACK[0x6C0]) - 1343002909 + LODWORD(STACK[0x658]);
  LODWORD(STACK[0x56C]) = v184 - v227;
  v228 = STACK[0x62C];
  LODWORD(STACK[0x3C0]) = LODWORD(STACK[0x62C]) ^ v182;
  LODWORD(STACK[0x59C]) = v228 - v184 - 1617097094;
  LODWORD(STACK[0x358]) = v211 + v203 + 1353174168;
  v229 = STACK[0x3F0];
  LODWORD(STACK[0x5E8]) = v202 + LODWORD(STACK[0x3F0]);
  LODWORD(STACK[0x62C]) = LODWORD(STACK[0x6F0]) + v229 - LODWORD(STACK[0x520]) + 367425458;
  v230 = STACK[0x504];
  v231 = STACK[0x3E0];
  LODWORD(STACK[0x658]) = LODWORD(STACK[0x504]) - LODWORD(STACK[0x3E0]) - 1938632612;
  v232 = STACK[0x670];
  LODWORD(STACK[0x3B8]) = v231 + LODWORD(STACK[0x670]);
  v233 = STACK[0x590];
  LODWORD(STACK[0x650]) = v232 - LODWORD(STACK[0x590]);
  v234 = STACK[0x570];
  LODWORD(STACK[0x590]) = v233 ^ LODWORD(STACK[0x570]);
  v235 = STACK[0x3EC];
  LODWORD(STACK[0x520]) = v234 + LODWORD(STACK[0x3EC]);
  v236 = STACK[0x560];
  v237 = v235 - LODWORD(STACK[0x560]);
  LODWORD(STACK[0x390]) = v237;
  v238 = STACK[0x660];
  v239 = v236 + LODWORD(STACK[0x660]) + 989628489;
  LODWORD(STACK[0x3F0]) = v239;
  v240 = STACK[0x434];
  LODWORD(STACK[0x560]) = LODWORD(STACK[0x434]) + LODWORD(STACK[0x3BC]);
  v241 = STACK[0x490];
  v242 = v240 - LODWORD(STACK[0x490]);
  LODWORD(STACK[0x420]) = v242;
  v243 = v241 - 211753062;
  v244 = STACK[0x400];
  v245 = v226 ^ LODWORD(STACK[0x400]);
  LODWORD(STACK[0x3BC]) = v245;
  v246 = STACK[0x5FC];
  v247 = LODWORD(STACK[0x5FC]) + v244;
  LODWORD(STACK[0x400]) = v247;
  v248 = v243 + v246;
  LODWORD(STACK[0x3AC]) = v243 + v246;
  v249 = STACK[0x6A0];
  LODWORD(STACK[0x570]) = LODWORD(STACK[0x6A0]) ^ v223;
  LODWORD(STACK[0x670]) = (v208 ^ v249) - 143290633;
  v250 = v238 - 1400735176;
  v251 = v190 - LODWORD(STACK[0x508]);
  v252 = STACK[0x408];
  v253 = LODWORD(STACK[0x408]) + LODWORD(STACK[0x508]);
  LODWORD(STACK[0x384]) = v253;
  v254 = STACK[0x418];
  v255 = LODWORD(STACK[0x418]) - LODWORD(STACK[0x6E8]);
  LODWORD(STACK[0x380]) = v255;
  v256 = STACK[0x414];
  LODWORD(STACK[0x37C]) = LODWORD(STACK[0x414]) - v254;
  v257 = STACK[0x6D8];
  LODWORD(STACK[0x3E0]) = LODWORD(STACK[0x6D8]) + v252;
  v258 = v257 - v256 + 1924655482;
  LODWORD(STACK[0x508]) = v258;
  LODWORD(STACK[0x660]) = v210 - 1916793577;
  v259 = STACK[0x4A0];
  LODWORD(STACK[0x5FC]) = LODWORD(STACK[0x6C8]) - 631244459 + LODWORD(STACK[0x4A0]);
  v260 = STACK[0x558];
  LODWORD(STACK[0x418]) = LODWORD(STACK[0x558]) + v259;
  v261 = STACK[0x43C];
  LODWORD(STACK[0x6D8]) = v260 + LODWORD(STACK[0x43C]);
  v262 = STACK[0x480];
  LODWORD(STACK[0x39C]) = v261 - LODWORD(STACK[0x480]);
  v263 = STACK[0x6B8];
  LODWORD(STACK[0x338]) = v262 ^ LODWORD(STACK[0x6B8]);
  v264 = v263 - 700956985 + v212;
  LODWORD(STACK[0x414]) = v264;
  v265 = STACK[0x4C0];
  LODWORD(STACK[0x558]) = v230 + LODWORD(STACK[0x4C0]);
  v266 = STACK[0x548];
  v267 = (LODWORD(STACK[0x548]) + v265) ^ 0x2D64D0DB;
  LODWORD(STACK[0x3EC]) = v267;
  v268 = v251 ^ 0xE5A348CF;
  LODWORD(STACK[0x6A0]) = v251 ^ 0xE5A348CF;
  v269 = (LODWORD(STACK[0x6D0]) - v266) ^ 0xBDBC0D9F;
  LODWORD(STACK[0x6B8]) = v269;
  v270 = STACK[0x620];
  v271 = LODWORD(STACK[0x620]) + v221;
  LODWORD(STACK[0x348]) = v271;
  v272 = STACK[0x5A0];
  LODWORD(STACK[0x548]) = LODWORD(STACK[0x5A0]) - v270;
  v273 = STACK[0x510];
  LODWORD(STACK[0x368]) = LODWORD(STACK[0x510]) - v272;
  v274 = STACK[0x4CC];
  v275 = v273 ^ LODWORD(STACK[0x4CC]);
  LODWORD(STACK[0x490]) = v275;
  v276 = STACK[0x600];
  LODWORD(STACK[0x4CC]) = LODWORD(STACK[0x600]) ^ v274;
  v277 = STACK[0x448];
  v278 = v276 ^ LODWORD(STACK[0x448]);
  LODWORD(STACK[0x3F8]) = v278;
  v279 = STACK[0x430];
  v280 = LODWORD(STACK[0x430]) ^ v277 ^ 0x3A0D6C4A;
  LODWORD(STACK[0x6F0]) = v280;
  v281 = STACK[0x470];
  v282 = LODWORD(STACK[0x470]) + LODWORD(STACK[0x3B4]);
  LODWORD(STACK[0x448]) = v282;
  v283 = STACK[0x460];
  LODWORD(STACK[0x480]) = v281 + LODWORD(STACK[0x460]);
  v284 = STACK[0x42C];
  LODWORD(STACK[0x4C0]) = LODWORD(STACK[0x42C]) ^ v283;
  v285 = STACK[0x608];
  LODWORD(STACK[0x43C]) = LODWORD(STACK[0x608]) - v284;
  v286 = STACK[0x518];
  LODWORD(STACK[0x408]) = LODWORD(STACK[0x518]) ^ v285;
  v287 = STACK[0x450];
  LODWORD(STACK[0x460]) = v286 + LODWORD(STACK[0x450]);
  v288 = STACK[0x440];
  v289 = v287 + LODWORD(STACK[0x440]);
  LODWORD(STACK[0x42C]) = v289;
  v290 = (LODWORD(STACK[0x708]) + v288) ^ 0x6EE982E4;
  LODWORD(STACK[0x5A0]) = v290;
  v291 = STACK[0x500];
  v292 = v250 + LODWORD(STACK[0x500]);
  LODWORD(STACK[0x6E8]) = v292;
  v293 = LODWORD(STACK[0x688]) ^ 0x8A127EDC ^ v291;
  v294 = LODWORD(STACK[0x3E4]) ^ 0x8F313595;
  LODWORD(STACK[0x3A0]) = v294;
  LODWORD(STACK[0x360]) = LODWORD(STACK[0x3F4]) ^ 0xC3BA627C;
  v295 = v224 ^ v264 ^ (v245 - 1634589604);
  v296 = STACK[0x4F8];
  v297 = LODWORD(STACK[0x654]) - LODWORD(STACK[0x4F8]);
  LODWORD(STACK[0x654]) = v297;
  LODWORD(STACK[0x620]) = v247 + 837144878;
  v298 = LODWORD(STACK[0x698]) + 2032515242;
  LODWORD(STACK[0x518]) = v237 + 1805433719;
  v297 += 1482361073;
  LODWORD(STACK[0x440]) = v297;
  v299 = LODWORD(STACK[0x580]) - 116579437;
  LODWORD(STACK[0x470]) = v298;
  v300 = v295 ^ v298 ^ (v237 + 1805433719) ^ v258 ^ LODWORD(STACK[0x5C8]) ^ v297 ^ v248;
  LODWORD(STACK[0x3E4]) = v242 - 738078000;
  v301 = v300 ^ (v242 - 738078000) ^ LODWORD(STACK[0x678]);
  LODWORD(STACK[0x33C]) = v275 + 934336762;
  LODWORD(STACK[0x3CC]) = v299;
  v302 = v301 ^ (v275 + 934336762) ^ (v247 + 837144878) ^ v299 ^ v239 ^ v268 ^ (v282 - 407012458);
  v303 = STACK[0x4A8];
  LODWORD(STACK[0x438]) = LODWORD(STACK[0x4A8]) - LODWORD(STACK[0x3E8]);
  v304 = STACK[0x610];
  LODWORD(STACK[0x434]) = LODWORD(STACK[0x610]) - v303;
  v305 = STACK[0x4FC];
  v306 = LODWORD(STACK[0x4FC]) ^ v304;
  LODWORD(STACK[0x3F4]) = v306;
  v307 = LODWORD(STACK[0x388]) + LODWORD(STACK[0x6E0]);
  LODWORD(STACK[0x510]) = v306 - 1373634469;
  v308 = LODWORD(STACK[0x638]) - 506131513;
  v309 = LODWORD(STACK[0x3E0]) - 119104;
  v310 = v289 + 1373507766;
  v311 = LODWORD(STACK[0x6A8]) - 1389213032;
  v312 = v255 + 1590539669;
  LODWORD(STACK[0x610]) = v311;
  v313 = v309;
  LODWORD(STACK[0x370]) = v308;
  LODWORD(STACK[0x468]) = v312;
  LODWORD(STACK[0x3C8]) = v253 - 1198795438;
  v314 = v302 ^ v311 ^ v267 ^ v269 ^ v280 ^ v290 ^ (v289 + 1373507766) ^ v309 ^ v308 ^ v312 ^ (v253 - 1198795438) ^ LODWORD(STACK[0x648]);
  v315 = LODWORD(STACK[0x520]) ^ 0x7981C29E;
  LODWORD(STACK[0x608]) = v315;
  v316 = STACK[0x62C];
  v317 = STACK[0x570];
  v318 = v314 ^ v315 ^ LODWORD(STACK[0x62C]) ^ LODWORD(STACK[0x570]) ^ LODWORD(STACK[0x658]) ^ LODWORD(STACK[0x700]) ^ v294 ^ (v306 - 1373634469) ^ LODWORD(STACK[0x670]) ^ LODWORD(STACK[0x5E8]) ^ (v307 - 504517668) ^ (v278 + 1319004320) ^ (LODWORD(STACK[0x56C]) - 388164958);
  v319 = STACK[0x5E0];
  v320 = LODWORD(STACK[0x6C0]) - LODWORD(STACK[0x5E0]);
  LODWORD(STACK[0x3B4]) = v320;
  v321 = LODWORD(STACK[0x560]) - 916076941;
  LODWORD(STACK[0x450]) = v321;
  v320 -= 1650934871;
  LODWORD(STACK[0x3B0]) = v320;
  v322 = LODWORD(STACK[0x478]) ^ 0x550DEBF1;
  v323 = STACK[0x358];
  v324 = v318 ^ LODWORD(STACK[0x358]) ^ v320 ^ v322 ^ v321 ^ (v271 + 1374096011);
  v325 = LODWORD(STACK[0x6B0]) + 38764066;
  LODWORD(STACK[0x500]) = v325;
  v326 = LODWORD(STACK[0x650]) + 638917997;
  v327 = v324 ^ LODWORD(STACK[0x660]) ^ v325;
  LODWORD(STACK[0x504]) = v293;
  v328 = STACK[0x534];
  v329 = STACK[0x360];
  v330 = __ROR4__(LODWORD(STACK[0x690]) ^ v327 ^ v293 ^ LODWORD(STACK[0x534]) ^ LODWORD(STACK[0x360]) ^ v292 ^ v326 ^ (LODWORD(STACK[0x590]) - 1299404777) ^ 0x6B41D873, 26);
  v331 = v305 + LODWORD(STACK[0x4D0]);
  v332 = v296 ^ LODWORD(STACK[0x4D0]);
  v333 = LODWORD(STACK[0x6F8]) ^ v279;
  v334 = STACK[0x368];
  v335 = LODWORD(STACK[0x368]) - 1476385553;
  v336 = LODWORD(STACK[0x558]) - 694375668;
  v337 = LODWORD(STACK[0x548]) - 1024510895;
  LODWORD(STACK[0x600]) = v337;
  LODWORD(STACK[0x388]) = v332;
  v338 = v332 ^ 0x35036DF9;
  LODWORD(STACK[0x3E0]) = v335;
  LODWORD(STACK[0x3E8]) = v336;
  v339 = v332 ^ 0x35036DF9 ^ v335 ^ v337 ^ v336 ^ v333 ^ 0x54EC859D ^ LODWORD(STACK[0x5D0]);
  v340 = STACK[0x37C];
  v341 = LODWORD(STACK[0x37C]) - 1380516954;
  v342 = STACK[0x3DC];
  v343 = LODWORD(STACK[0x3DC]) + 1432927330;
  v344 = STACK[0x338];
  v345 = LODWORD(STACK[0x338]) + 1144449206;
  LODWORD(STACK[0x340]) = v341;
  v346 = STACK[0x59C];
  v347 = v341 ^ LODWORD(STACK[0x59C]);
  LODWORD(STACK[0x354]) = v345;
  LODWORD(STACK[0x350]) = v343;
  v348 = v339 ^ v347 ^ v345 ^ v343 ^ LODWORD(STACK[0x710]) ^ LODWORD(STACK[0x5D4]);
  v349 = LODWORD(STACK[0x51C]) ^ 0x82C89AE6;
  v350 = v348 ^ v349 ^ __ROR4__(v330 ^ 0xAEA7182F, 6);
  LODWORD(STACK[0x4FC]) = v350 & 0xC232C3D0 ^ 0xBFCFFFAF;
  LODWORD(STACK[0x4A0]) = v350 & 0x3DCD3C2F;
  LODWORD(STACK[0x4F8]) = v350 & 0x40200390;
  LODWORD(STACK[0x6C0]) = LODWORD(STACK[0x460]) + LODWORD(STACK[0x460]) - (LODWORD(STACK[0x460]) ^ 0x608CF6A4) - 16 * ((LODWORD(STACK[0x460]) - (LODWORD(STACK[0x460]) ^ 0x608CF6A4u)) >> 3);
  v351 = LODWORD(STACK[0x480]) ^ 0xE647C91E;
  v352 = LODWORD(STACK[0x640]) ^ LODWORD(STACK[0x688]);
  v353 = LODWORD(STACK[0x6C8]) ^ 0xF668162B ^ LODWORD(STACK[0x640]);
  v354 = v319 ^ LODWORD(STACK[0x5F0]);
  v355 = LODWORD(STACK[0x5EC]) - LODWORD(STACK[0x6D0]);
  v356 = LODWORD(STACK[0x5F0]) ^ 0x7B27073C ^ LODWORD(STACK[0x5EC]);
  v357 = STACK[0x39C];
  LODWORD(STACK[0x430]) = LODWORD(STACK[0x39C]) - 1388809772;
  v358 = v334 - v342 - v357 - v329 - 693862702;
  LODWORD(STACK[0x360]) = v307 - 504517668;
  v359 = STACK[0x458];
  v360 = LODWORD(STACK[0x458]) ^ (v307 - ((2 * (v307 - 504517668)) & 0x25040C94) + 1953477158) ^ 0xEF75F9A7 ^ ((v358 ^ LODWORD(STACK[0x6F0])) - v328);
  LODWORD(STACK[0x3DC]) = v310;
  v361 = (LODWORD(STACK[0x42C]) - ((2 * v310) & 0x89C8585A) - 1765655325) ^ v317 ^ 0x4153DA27 ^ (v360 + LODWORD(STACK[0x5B8]));
  v362 = STACK[0x3C0];
  LODWORD(STACK[0x42C]) = LODWORD(STACK[0x3C0]) + 1539332275;
  v363 = STACK[0x3B8];
  LODWORD(STACK[0x5F0]) = LODWORD(STACK[0x3B8]) + 360977476;
  LODWORD(STACK[0x368]) = v322;
  v364 = v362 - v363 - v322 + 1178354799 + ((v361 + LODWORD(STACK[0x5A0])) ^ LODWORD(STACK[0x5A8]));
  v365 = LODWORD(STACK[0x4C4]) ^ 0x3500960C;
  LODWORD(STACK[0x4A8]) = v365;
  v366 = v365 - LODWORD(STACK[0x6B8]) - LODWORD(STACK[0x348]) - 1374096011;
  LODWORD(STACK[0x480]) = v356;
  v367 = STACK[0x4B0];
  LODWORD(STACK[0x5EC]) = LODWORD(STACK[0x4B0]) - 903838782;
  v368 = (LODWORD(STACK[0x390]) - ((2 * LODWORD(STACK[0x518])) & 0x286428E) + 1826610366) ^ LODWORD(STACK[0x5C4]) ^ 0x1432147 ^ (v367 - LODWORD(STACK[0x380]) - LODWORD(STACK[0x384]) - 1295583013 + ((v366 + (v364 ^ v356)) ^ v316));
  LODWORD(STACK[0x640]) = v354 - 1726028798;
  v369 = STACK[0x418];
  v370 = LODWORD(STACK[0x418]) - 939856531;
  LODWORD(STACK[0x518]) = v370;
  v371 = LODWORD(STACK[0x5E8]) ^ (v369 - ((2 * v370) & 0x1C9614E0) - 700057635) ^ 0x98BE1170 ^ (v368 - (v354 + v313) + 1726028798);
  LODWORD(STACK[0x380]) = v331;
  LODWORD(STACK[0x5E8]) = v331 ^ 0x3CD4D0F4;
  LODWORD(STACK[0x460]) = v349;
  v372 = v323 - LODWORD(STACK[0x5FC]);
  v373 = LODWORD(STACK[0x554]) ^ 0xE4BFA889;
  LODWORD(STACK[0x5E0]) = v373;
  v374 = v372 - v373 + ((v371 - (v331 ^ 0x3CD4D0F4) - ((2 * (v371 - (v331 ^ 0x3CD4D0F4))) & 0xA92CC948) + 1419142308) ^ v349);
  LODWORD(STACK[0x358]) = v333 ^ 0x54EC859D;
  v375 = ((v374 - ((2 * v374) & 0x28F0640) - 2126019808) ^ v333 ^ 0x54EC859D) - LODWORD(STACK[0x56C]);
  LODWORD(STACK[0x348]) = v333 ^ 0x55AB06BD;
  v376 = LODWORD(STACK[0x414]) ^ LODWORD(STACK[0x660]) ^ (LODWORD(STACK[0x654]) - ((2 * LODWORD(STACK[0x440])) & 0x3257D6E4) + 1904669795) ^ 0x192BEB72 ^ (v344 - v340 - 1770001136 + ((v375 + 2 * (v374 & (v333 ^ 0x55AB06BD)) + 388164958) ^ LODWORD(STACK[0x5B4])));
  LODWORD(STACK[0x4D0]) = v353;
  v377 = (v376 + v353) ^ LODWORD(STACK[0x3AC]);
  v378 = LODWORD(STACK[0x3BC]) - LODWORD(STACK[0x448]);
  v379 = STACK[0x43C];
  LODWORD(STACK[0x448]) = LODWORD(STACK[0x43C]) + 538293148;
  LODWORD(STACK[0x654]) = v351;
  v380 = v378 + v351 - v379;
  v381 = STACK[0x4B8];
  LODWORD(STACK[0x56C]) = LODWORD(STACK[0x4B8]) + 1540308406;
  v382 = LODWORD(STACK[0x6C0]) - 8;
  LODWORD(STACK[0x440]) = v382;
  v383 = v380 - v381 - v382 + 988788596 + ((v377 - LODWORD(STACK[0x510])) ^ LODWORD(STACK[0x5CC]));
  v384 = STACK[0x700];
  v385 = LODWORD(STACK[0x6E0]) - LODWORD(STACK[0x700]);
  LODWORD(STACK[0x6C0]) = v385 ^ 0xABBE9FE4;
  v386 = LODWORD(STACK[0x648]) ^ LODWORD(STACK[0x670]) ^ __ROR4__(__ROR4__(LODWORD(STACK[0x6E8]) ^ v385 ^ v383, 12) ^ 0xAA3ED0D6, 20) ^ 0x46B3F547;
  v387 = STACK[0x4D4];
  LODWORD(STACK[0x4B8]) = LODWORD(STACK[0x4D4]) - 382225430;
  LODWORD(STACK[0x43C]) = v352 + 90197513;
  v388 = STACK[0x698];
  v389 = v346 ^ LODWORD(STACK[0x630]) ^ LODWORD(STACK[0x5D8]) ^ LODWORD(STACK[0x3A0]) ^ (v386 - (v387 + LODWORD(STACK[0x698]) + v352 + LODWORD(STACK[0x590])) - 441082548);
  v390 = (LODWORD(STACK[0x560]) - ((2 * LODWORD(STACK[0x450])) & 0x87FB66CC) - 1922860583) ^ 0x3154E604 ^ ((v389 & 0xCB5AA1F ^ 0xA2BD8B61) & (v389 & 0xF34A55E0 ^ 0x8EB5FF5F) | v389 & 0x51425480);
  v391 = LODWORD(STACK[0x434]) ^ 0x87F6299E;
  LODWORD(STACK[0x414]) = v391;
  v392 = v391 - LODWORD(STACK[0x490]) + LODWORD(STACK[0x710]) - 934336762 + v390;
  v393 = v384 ^ LODWORD(STACK[0x500]) ^ (LODWORD(STACK[0x3B4]) - ((2 * LODWORD(STACK[0x3B0])) & 0x83C61306) + 1601946924);
  v394 = LODWORD(STACK[0x4C0]) ^ 0xD2298834;
  LODWORD(STACK[0x4B0]) = v394;
  v395 = v394 ^ v393 ^ 0x41070ED5 ^ v392;
  v396 = STACK[0x498];
  LODWORD(STACK[0x490]) = LODWORD(STACK[0x498]) - 823617604;
  v397 = LODWORD(STACK[0x438]) ^ 0xDBBA126B;
  LODWORD(STACK[0x418]) = v397;
  v398 = LODWORD(STACK[0x400]) - (v397 + v396) + LODWORD(STACK[0x638]) - LODWORD(STACK[0x558]) + LODWORD(STACK[0x680]) + LODWORD(STACK[0x3F8]);
  v399 = STACK[0x408];
  LODWORD(STACK[0x3F8]) = LODWORD(STACK[0x408]) - 773579256;
  v400 = v398 - v399;
  v401 = LODWORD(STACK[0x488]) + 3060;
  LODWORD(STACK[0x2D8]) = v401;
  LODWORD(STACK[0x338]) = v355;
  LODWORD(STACK[0x400]) = v355 ^ 0xC6A718E0;
  LODWORD(STACK[0x638]) = v401 ^ 0xC286ABCD;
  v402 = LODWORD(STACK[0x574]) ^ 0x7B78BB03;
  v403 = (LODWORD(STACK[0x6A8]) - LODWORD(STACK[0x580]) - LODWORD(STACK[0x650]) - 1911551592 + ((v400 + (v355 ^ 0xC6A718E0) - (v401 ^ 0xC286ABCD) + LODWORD(STACK[0x5D4]) - 353377083 + v395) ^ LODWORD(STACK[0x508]))) ^ LODWORD(STACK[0x678]);
  v404 = STACK[0x608];
  v405 = LODWORD(STACK[0x5C8]) - LODWORD(STACK[0x608]);
  LODWORD(STACK[0x5C8]) = v402;
  v406 = v405 - v402 + v403;
  v407 = STACK[0x4C8];
  v408 = LODWORD(STACK[0x4C8]) - 407835423;
  LODWORD(STACK[0x408]) = v408;
  v409 = ((((LODWORD(STACK[0x658]) ^ (v407 - ((2 * v408) & 0x5AE07830) + 354494713) ^ 0x2D703C18 ^ v406) + LODWORD(STACK[0x614])) ^ LODWORD(STACK[0x524])) + LODWORD(STACK[0x5D0])) ^ LODWORD(STACK[0x3F0]);
  v410 = LODWORD(STACK[0x4CC]) ^ 0xFAC9305D;
  LODWORD(STACK[0x4C8]) = v410;
  v411 = STACK[0x548];
  v412 = (LODWORD(STACK[0x548]) - ((2 * LODWORD(STACK[0x600])) & 0x65EA6820) + 1977903201) ^ LODWORD(STACK[0x588]) ^ 0xB2F53410 ^ (((v409 - (v338 + v410)) ^ LODWORD(STACK[0x6A0])) + LODWORD(STACK[0x3EC]));
  v413 = LODWORD(STACK[0x6A0]) - v404 - LODWORD(STACK[0x6B0]) + 43627536;
  v414 = LODWORD(STACK[0x6D8]) ^ 0x5E8E6E4B;
  LODWORD(STACK[0x6D0]) = v414;
  v415 = v412 - (v414 + LODWORD(STACK[0x420])) + 738078000;
  v416 = ((v411 + v404 + LODWORD(STACK[0x620]) + 692013247) >> 1) - 1720969646;
  v417 = 2 * (((v388 + 1393865300 + LODWORD(STACK[0x3F4])) ^ 0x15188FE9) + LODWORD(STACK[0x620])) + 1166848713;
  v418 = *(STACK[0x748] + 8 * (*(STACK[0x748] + 8 * ((*(STACK[0x748] + 8 * (*(STACK[0x748] + 8) & 1)) & 1) == 0)) & 1));
  LODWORD(v418) = (v418 & 1 | 0x15197FB8) - 2 * (v418 & 1) - 11;
  v419 = (((v418 ^ 0xA2F06A34) + 1294545326) ^ ((v418 ^ 0xF6F931D7) + 421554767) ^ ((v418 ^ 0x4110244E) - 1362526248)) - 1927057812;
  LODWORD(STACK[0x420]) = v359 ^ 0xF6DB7FF2;
  LODWORD(STACK[0x6E0]) = v415 ^ LODWORD(STACK[0x618]);
  LODWORD(STACK[0x6C8]) = v416;
  LODWORD(STACK[0x648]) = (v413 >> 1) - 2090056246;
  LODWORD(STACK[0x688]) = LODWORD(STACK[0x690]) ^ 0xB1252B74;
  LODWORD(STACK[0x6B0]) = v417;
  v420 = STACK[0x538];
  STACK[0x700] = 0xA62EDBCFB6ED7434;
  v421 = v419 < 0x87E392A1;
  if (v419 >= 0x87E392A1)
  {
    v421 = v419 > 0x87E392A2;
  }

  return (*(STACK[0x668] + 8 * ((30 * !v421) ^ v420)))(2279838369, 0xB8DC5907FFD19ABALL, 2279838370, 0x7A334B8600000000, 284164418, 0x6CB63B000000000, 148128021);
}

uint64_t sub_1000E4E84()
{
  v2 = (v0 - 77) | 0x23;
  LODWORD(STACK[0x4D4]) = LODWORD(STACK[0x578]) ^ 0x58C06515;
  LODWORD(STACK[0x6A8]) = LODWORD(STACK[0x6F8]) + LODWORD(STACK[0x528]);
  LODWORD(STACK[0x488]) = LODWORD(STACK[0x490]) ^ LODWORD(STACK[0x418]) ^ LODWORD(STACK[0x5B4]) ^ LODWORD(STACK[0x414]) ^ LODWORD(STACK[0x630]) ^ LODWORD(STACK[0x654]) ^ LODWORD(STACK[0x4B8]) ^ LODWORD(STACK[0x680]) ^ LODWORD(STACK[0x5D8]) ^ LODWORD(STACK[0x5A8]) ^ LODWORD(STACK[0x42C]) ^ LODWORD(STACK[0x4D0]) ^ LODWORD(STACK[0x5B8]) ^ LODWORD(STACK[0x5F0]) ^ LODWORD(STACK[0x43C]) ^ LODWORD(STACK[0x5FC]) ^ LODWORD(STACK[0x5E8]) ^ LODWORD(STACK[0x448]) ^ LODWORD(STACK[0x420]) ^ LODWORD(STACK[0x408]) ^ LODWORD(STACK[0x4B0]) ^ LODWORD(STACK[0x4A8]) ^ LODWORD(STACK[0x430]) ^ LODWORD(STACK[0x480]) ^ LODWORD(STACK[0x5C4]) ^ LODWORD(STACK[0x56C]) ^ LODWORD(STACK[0x5C8]) ^ LODWORD(STACK[0x614]) ^ LODWORD(STACK[0x400]) ^ LODWORD(STACK[0x6C0]) ^ LODWORD(STACK[0x634]) ^ LODWORD(STACK[0x618]) ^ LODWORD(STACK[0x3F8]) ^ LODWORD(STACK[0x640]) ^ LODWORD(STACK[0x4C8]) ^ LODWORD(STACK[0x638]) ^ LODWORD(STACK[0x5EC]) ^ LODWORD(STACK[0x5E0]) ^ LODWORD(STACK[0x518]) ^ LODWORD(STACK[0x6D0]) ^ LODWORD(STACK[0x588]) ^ LODWORD(STACK[0x5CC]) ^ LODWORD(STACK[0x440]) ^ ((LODWORD(STACK[0x4A0]) ^ 0xBE52F847 ^ v2) & STACK[0x4FC] | LODWORD(STACK[0x4F8])) ^ 0xDCD1A7E4;
  return (*(STACK[0x668] + 8 * ((110 * (v1 < 2)) ^ v2)))();
}

uint64_t sub_1000E57F8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X6>, uint64_t a3@<X8>)
{
  v12 = v4 ^ 0x1B93;
  LODWORD(STACK[0x4FC]) = LODWORD(STACK[0x540]) ^ LODWORD(STACK[0x708]);
  LODWORD(STACK[0x2D0]) = LODWORD(STACK[0x504]) - LODWORD(STACK[0x6E0]);
  v13 = ((a2 + v3) >> 16) + ((a2 + v3 + ((a2 + v3) >> 16)) >> 8);
  v14 = v7 - ((v13 + a2 + 0x28634BE662EF4982 + v9) >> (v4 ^ 0xB5u)) + a1;
  v15 = v13 + v6 + v14;
  v16 = v15 >> 11;
  v17 = (v15 - (v15 >> 11)) >> 4;
  v18 = v13 - v16;
  v19 = v13 - v16 + v14 + v17 + v6;
  v20 = v13 + v14 + v5 + v17;
  v21 = (v20 - v16) >> 29;
  v22 = (v20 - v21 - v16) >> 12;
  v23 = v14 + v17 + v22;
  v24 = (v20 + v22 - v21 - v16) >> 2;
  v25 = v13 - v16 + v5 + v23 - v24 - v21;
  v26 = v13 + a3 + v23;
  v27 = (v26 - v24 - v21 - v16) >> 31;
  v28 = (v26 - v27 - v24 - v21 - v16) >> 12;
  v29 = v18 + a3 + v23 - ((v26 - v28 - v27 - v24 - v21 - v16) >> 4) - v28 - v27 - v24 - v21;
  v30 = (v29 ^ 0xE3B0EC50283B3A9BLL) - ((v29 ^ 0xE3B0EC50283B3A9BLL) >> 31) + (((v29 ^ 0xE3B0EC50283B3A9BLL) - ((v29 ^ 0xE3B0EC50283B3A9BLL) >> 31)) >> 9);
  v31 = v30 - (v30 >> 6);
  LODWORD(v23) = v31 ^ v19;
  v32 = (v31 ^ 0x1CBB3D2D625F8025) + ((v31 ^ 0x1CBB3D2D625F8025) >> 27) - (((v31 ^ 0x1CBB3D2D625F8025) + ((v31 ^ 0x1CBB3D2D625F8025) >> 27)) >> 8);
  v33 = v32 + (v32 >> 7);
  LODWORD(v24) = v33 ^ v25;
  v34 = v33 - 0x65FB2AD6BDC595DFLL - ((v33 - 0x65FB2AD6BDC595DFLL) >> 30) + ((v33 - 0x65FB2AD6BDC595DFLL - ((v33 - 0x65FB2AD6BDC595DFLL) >> 30)) >> 12);
  v35 = v34 + (v34 >> 3);
  v36 = v35 + 0x608394D4D392467ELL + ((v35 + 0x608394D4D392467ELL) >> 31) - ((v35 + 0x608394D4D392467ELL + ((v35 + 0x608394D4D392467ELL) >> 31)) >> 15);
  v37 = v36 - (v36 >> 5);
  v38 = v23 ^ v8 ^ v37;
  v39 = (v37 ^ 0x601E5F8F690C4A13) + ((v37 ^ 0x601E5F8F690C4A13) >> 31) - (((v37 ^ 0x601E5F8F690C4A13) + ((v37 ^ 0x601E5F8F690C4A13) >> 31)) >> 11);
  v40 = v39 - (v39 >> 8);
  v41 = v24 ^ v10 ^ v40;
  v40 += 0x42275266A1F057E1;
  v42 = ((v40 >> 31) ^ v40) + 2 * ((v40 >> 31) & v40) + ((((v40 >> 31) ^ v40) + 2 * ((v40 >> 31) & v40)) >> 11);
  v43 = v35 ^ v29 ^ v11 ^ ((v42 >> 3) + v42);
  LODWORD(STACK[0x3BC]) = v38 & 0x7F;
  LODWORD(v29) = v38 & 0x7F ^ 0x52;
  LODWORD(STACK[0x548]) = v29;
  LODWORD(v42) = 16843009 * v29;
  v44 = (16843009 * v29) & 0x7365565;
  LODWORD(STACK[0x6F8]) = v42;
  v45 = v42 & 0x78C9AA9A;
  if (v38 == 1057847823)
  {
    v45 = 1566399837;
  }

  LODWORD(STACK[0x708]) = (v45 | 0x2CEACAC5) ^ (v44 ^ 0x2CEACAC5) & ~v45;
  LODWORD(STACK[0x580]) = v43;
  LODWORD(STACK[0x6D0]) = v43 & 7 ^ 7;
  v46 = -(v43 & 7 ^ 7) & 7;
  LODWORD(STACK[0x3B8]) = v43 & 7;
  if ((v43 & 7) == 7)
  {
    v47 = 0;
  }

  else
  {
    v47 = 255;
  }

  LODWORD(STACK[0x6E0]) = v46;
  v48 = v47 << v46;
  v49 = 16843009 * v48;
  LODWORD(STACK[0x538]) = (-1358954496 * v48) & (v41 ^ 0x55000000);
  v50 = v48 ^ 0xFE7AF449;
  if ((v43 & 7) == 7)
  {
    v50 = 25496502;
  }

  v51 = (v50 ^ 0xB6) & (v38 ^ 0xCC) ^ v50 & 0xC3;
  LODWORD(STACK[0x540]) = v49;
  LODWORD(STACK[0x528]) = -(v51 ^ 0x82) ^ (v49 - (v51 ^ 0x82 ^ v49)) ^ ((v51 ^ 0x82) - ((2 * v51) & 0x92) - 164796087) ^ 0xF62D6949;
  LODWORD(STACK[0x698]) = v38;
  v52 = 16843009 * ((v38 ^ BYTE1(v38) ^ BYTE2(v38)) ^ HIBYTE(v38) ^ 0x7C);
  LODWORD(STACK[0x650]) = v41;
  v53 = 16843009 * ((v41 ^ BYTE1(v41) ^ BYTE2(v41)) ^ HIBYTE(v41) ^ 5);
  v54 = *(STACK[0x748] + 8 * (*(STACK[0x748] + 8 * ((*(STACK[0x748] + 8 * ((*(STACK[0x748] + 8) & 1) == 0)) & 1) == 0)) & 1)) & 1;
  v55 = (((v54 ^ 0x4EA645CD) + 138977098) ^ (v54 - 1460739383) ^ (v54 - 1192305319)) - 657398539;
  LODWORD(STACK[0x590]) = v52;
  LODWORD(STACK[0x560]) = v53;
  LODWORD(STACK[0x558]) = v53 ^ v52;
  v56 = v55 < 0x1FBFBF7B;
  if (v55 >= 0x1FBFBF7B)
  {
    v56 = v55 > 0x1FBFBF7C;
  }

  return (*(STACK[0x668] + 8 * ((158 * v56) ^ v12)))();
}

uint64_t sub_1000E6344@<X0>(int a1@<W2>, int a2@<W8>)
{
  LODWORD(STACK[0x2C8]) = LODWORD(STACK[0x6A8]) ^ 0x99F8C893;
  LODWORD(STACK[0x4F8]) = STACK[0x698] & 0xFFFFFF80;
  LODWORD(STACK[0x3C0]) = LODWORD(STACK[0x6C0]) - LODWORD(STACK[0x708]);
  LODWORD(STACK[0x6A8]) = LODWORD(STACK[0x528]) + LODWORD(STACK[0x540]);
  LODWORD(STACK[0x334]) = LODWORD(STACK[0x560]) ^ 0x530D107E;
  LODWORD(STACK[0x37C]) = LODWORD(STACK[0x590]) ^ 0x8D0EEF31;
  STACK[0x708] = (a2 - 4568) | 0xD06u;
  return (*(STACK[0x668] + 8 * ((49 * ((a1 & 0xFFFFFFFE) != 264042194)) ^ a2)))(3797446376);
}

uint64_t sub_1000E6B70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  LODWORD(STACK[0x6C0]) = LODWORD(STACK[0x538]) ^ LODWORD(STACK[0x540]);
  v44 = ((v40 + v43) >> 16) + ((v40 + v43 + ((v40 + v43) >> 16)) >> 8);
  v45 = v44 + v40 + a7;
  v46 = v45 >> 27;
  v47 = (v45 - (v45 >> 27)) >> 11;
  v48 = (v45 - v47 - (v45 >> 27)) >> 4;
  v49 = v44 - (v45 >> 27);
  LODWORD(v45) = v44 - (v45 >> 27) + a7 + v40 + v48 - v47;
  v50 = v40 + a6 + v48;
  v51 = v40 + v48;
  v52 = v44 + v50;
  v53 = (v44 + v50 - v47 - v46) >> 29;
  v54 = (v52 - v53 - v47 - v46) >> 12;
  v55 = v51 + v54;
  v56 = (v52 + v54 - v53 - v47 - v46) >> 2;
  LODWORD(v54) = v44 - v46 + a6 + v55 - v56 - v53 - v47;
  v57 = v44 + v39 + v55;
  v58 = (v57 - v56 - v53 - v47 - v46) >> 31;
  v59 = v57 - v58 - v56 - v53 - v47 - v46;
  v60 = v49 + v39 + v55 - (v59 >> 12) - v58 - v56 - v53 - v47 - ((v59 - (v59 >> 12)) >> 4);
  v61 = (v60 ^ 0xE3B0EC50283B3A9BLL) - ((v60 ^ 0xE3B0EC50283B3A9BLL) >> 31) + (((v60 ^ 0xE3B0EC50283B3A9BLL) - ((v60 ^ 0xE3B0EC50283B3A9BLL) >> 31)) >> 9);
  v62 = v61 - (v61 >> 6);
  LODWORD(v45) = v62 ^ v45 ^ v38;
  v63 = (v62 ^ 0x1CBB3D2D625F8025) + ((v62 ^ 0x1CBB3D2D625F8025) >> 27) - (((v62 ^ 0x1CBB3D2D625F8025) + ((v62 ^ 0x1CBB3D2D625F8025) >> 27)) >> 8);
  v64 = v63 + (v63 >> 7);
  LODWORD(v59) = v64 ^ v54;
  v65 = v64 - 0x65FB2AD6BDC595DFLL - ((v64 - 0x65FB2AD6BDC595DFLL) >> 30) + ((v64 - 0x65FB2AD6BDC595DFLL - ((v64 - 0x65FB2AD6BDC595DFLL) >> 30)) >> 12);
  v66 = v65 + (v65 >> 3);
  v67 = v66 + 0x608394D4D392467ELL + ((v66 + 0x608394D4D392467ELL) >> 31) - ((v66 + 0x608394D4D392467ELL + ((v66 + 0x608394D4D392467ELL) >> 31)) >> 15);
  v68 = v67 - (v67 >> 5);
  LODWORD(v45) = v45 ^ v68;
  v69 = (v68 ^ 0x601E5F8F690C4A13) + ((v68 ^ 0x601E5F8F690C4A13) >> 31) - (((v68 ^ 0x601E5F8F690C4A13) + ((v68 ^ 0x601E5F8F690C4A13) >> 31)) >> 11);
  v70 = v69 - (v69 >> 8);
  v71 = ((v59 ^ v70) - ((2 * (v59 ^ v70)) & 0x853EA7A0) - 1029745712) ^ v41;
  v72 = v45 ^ 0x432AA205;
  v73 = v45 ^ 0x6F3BE6A5;
  v74 = v70 + 0x42275266A1F057E1 + ((v70 + 0x42275266A1F057E1) >> 31) + ((v70 + 0x42275266A1F057E1 + ((v70 + 0x42275266A1F057E1) >> 31)) >> 11);
  if (v74)
  {
    v75 = v72;
  }

  else
  {
    v75 = v73;
  }

  v76 = v75 & 0x532AA20F | v73;
  v77 = 16843009 * ((v75 & 0xF | v73) ^ ((v75 & 0xA20F | v73) >> 8) ^ BYTE2(v76) ^ HIBYTE(v76) ^ 0x91);
  LODWORD(STACK[0x4A0]) = v77;
  LODWORD(STACK[0x540]) = v71;
  v78 = 16843009 * ((v71 ^ BYTE1(v71) ^ BYTE2(v71)) ^ HIBYTE(v71) ^ 0x10);
  LODWORD(STACK[0x498]) = v78;
  v79 = v77 ^ v78 ^ 0x73737373;
  LODWORD(STACK[0x3B4]) = v79;
  v80 = LODWORD(STACK[0x558]) ^ 0x2B2B2B2B;
  LODWORD(STACK[0x528]) = v80;
  LODWORD(STACK[0x3F0]) = LODWORD(STACK[0x6E8]) + 1257346221 * (v79 - v80);
  LODWORD(STACK[0x3EC]) = LODWORD(STACK[0x6F0]) + 1035778971 * (v80 - v79);
  v81 = v66 ^ v60 ^ ((v74 >> 3) + v74);
  v82 = (v81 - ((2 * v81) & 0xD3853AA2) - 373121711) ^ v42;
  v83 = STACK[0x6F8];
  v84 = LODWORD(STACK[0x6F8]);
  v85 = (STACK[0x6F8] & 0xA5 | 0xC9FECB5A) ^ (LODWORD(STACK[0x4F8]) ^ 0x1C8E1EDA) & ~v84;
  v86 = LODWORD(STACK[0x698]) ^ 0xD570D5D2;
  v87 = *(&off_1006B4E30 + (STACK[0x708] ^ 0xC0E)) - 8;
  v88 = STACK[0x708];
  v89 = *(&off_1006B4E30 + (STACK[0x708] ^ 0xF38)) - 4;
  v90 = *&v89[4 * (v85 % 0x101)] - 1553261725;
  v91 = LODWORD(STACK[0x710]) ^ *&v87[4 * (v86 % 0x101)] ^ v90 ^ (v90 >> 4) ^ (v90 >> 6) ^ 0xB117C9AA;
  v92 = v82 ^ 0x5D689086;
  LODWORD(STACK[0x320]) = v91 + 110990351 * ((((v82 & 0xFFFFFFF8 ^ 0x5378EFA5) & (v82 & 7 ^ 0xFFFFFFF9) | v82 & 2) ^ 0xE107F27) - (v82 ^ 0x5D689086));
  LODWORD(STACK[0x3F4]) = LODWORD(STACK[0x4FC]) + 680398782;
  v93 = ((v81 - ((2 * v81) & 0xA2) + 81) ^ v42) & 7 ^ 6;
  v94 = -v93 & 7;
  if ((((v81 - ((2 * v81) & 0xA2) + 81) ^ v42) & 7) == 6)
  {
    v95 = 0;
  }

  else
  {
    v95 = 255;
  }

  v96 = v95 << v94;
  v97 = (v95 << v94) ^ 0x88FF4EEE;
  if ((((v81 - ((2 * v81) & 0xA2) + 81) ^ v42) & 7) == 6)
  {
    v97 = 1996534033;
  }

  LODWORD(STACK[0x3B0]) = v76 ^ 0xB1;
  LODWORD(STACK[0x6F0]) = v93;
  v98 = *(&off_1006B4E30 + (v88 ^ 0xC75)) - 8;
  v99 = STACK[0x6E0];
  LODWORD(STACK[0x710]) = LODWORD(STACK[0x3B8]) ^ LODWORD(STACK[0x6D8]);
  LODWORD(STACK[0x3B8]) = -1526726656 * v96;
  LODWORD(STACK[0x4FC]) = 16843009 * v96;
  LODWORD(STACK[0x384]) = v73 & 0x7F;
  v100 = 16843009 * (v73 & 0x7F);
  v101 = v83 ^ LODWORD(STACK[0x3E0]) ^ v99 ^ v100 ^ ((v100 ^ v83) >> 8);
  LODWORD(STACK[0x6E8]) = v94;
  LODWORD(STACK[0x518]) = v101 ^ v94 ^ ((v94 ^ v99) << 7);
  LODWORD(STACK[0x538]) = v76;
  v102 = v76 & 0xFFFFFF80 ^ 0x5D689080;
  v103 = v76 ^ 0x5D689080;
  v104 = v76 ^ 0x5D689080 ^ LODWORD(STACK[0x510]);
  LODWORD(STACK[0x6D8]) = v100;
  v105 = v100;
  LODWORD(STACK[0x510]) = v104 ^ (v102 + v100);
  v106 = LODWORD(STACK[0x500]) ^ v82 ^ 0x7C37D0F8 ^ (v92 - ((2 * v92) & 0x42BE80FC) + 559890558);
  v107 = STACK[0x580];
  v108 = STACK[0x580] & 0xFFFFFFF8;
  v109 = LODWORD(STACK[0x580]) | 0xFFFFFFF8;
  v110 = LODWORD(STACK[0x580]) ^ 0xC312C5DF;
  LODWORD(STACK[0x3E0]) = (181770483 * v110) ^ LODWORD(STACK[0x504]) ^ (181770483 * (((v108 ^ 0xC2C06685) & v109 | STACK[0x580] & 2) ^ 0x1D2A35F));
  v111 = *&v98[4 * (v103 % 0x101)];
  v112 = v111 ^ (v103 % 0x101 - ((2 * (v103 % 0x101)) & 0x3CE) - 1680110617);
  if ((v111 & 0x2000000) != 0)
  {
    v113 = 0x2000000;
  }

  else
  {
    v113 = -33554432;
  }

  LODWORD(STACK[0x504]) = *&v87[4 * ((v102 ^ v105) % 0x101)] ^ LODWORD(STACK[0x59C]) ^ (v113 + v112);
  v114 = LODWORD(STACK[0x4F8]) ^ 0x804E4872 ^ (v84 - ((2 * LODWORD(STACK[0x3BC])) & 0x1A) - 1430167027);
  v115 = (v102 ^ v105) + (v103 ^ LODWORD(STACK[0x3E8])) - 2 * ((v102 ^ v105) & (v103 ^ LODWORD(STACK[0x3E8])));
  LODWORD(STACK[0x4F8]) = *&v87[4 * (v110 % 0x101)] ^ 0x3CD4258A;
  HIDWORD(v116) = v102 ^ v105;
  LODWORD(v116) = v102;
  LODWORD(STACK[0x59C]) = (v116 >> 13) & 0xFFF87FFF ^ __ROR4__(v115, 17) ^ 0x7AF6F10F;
  LODWORD(STACK[0x3E8]) = v85 ^ v86 ^ (16 * (v85 ^ v86)) ^ (v86 + v114 + v106 + 1);
  v117 = *&v89[4 * ((((v108 ^ 0x9E22E9C) & v109 & 0xFFFFFFFC | v107 & 3) ^ 0xCAF0EB47) % 0x101)] - 1553261725;
  v118 = *&v89[4 * (v110 % 0x101)] - 1553261725;
  LODWORD(STACK[0x3BC]) = LODWORD(STACK[0x3CC]) + ((v110 % 0x101) ^ 0xD53D4D5B ^ *&v98[4 * (v110 % 0x101)]) + (v118 ^ (v118 >> 6) ^ (v118 >> 4) ^ 0x723C13DF);
  v119 = (LODWORD(STACK[0x3C8]) ^ v82 ^ 0x92CEDCBD ^ (v92 - ((2 * v92) & 0x9F4C9876) - 811185093)) + 49752395 * ((v107 ^ 0x6185AAA6) + v82);
  v120 = STACK[0x748];
  v121 = *STACK[0x748];
  v122 = *(STACK[0x748] + 8);
  v123 = 0x3F519381655BDB57 * (v121 ^ 0x5D5D5D5D5D5D5D5DLL);
  v124 = ((v123 ^ 0x9F70F237C236F41BLL) + 0x1A2A0FA279632CF1) ^ ((v123 ^ 0x8DF2AE368A11B1E1) + 0x8A853A33144690BLL) ^ ((v123 ^ 0xB4AC87CEFECA31CELL) + 0x31F67A5B459FE926);
  v125 = ((v124 + 0x2AAA05D8807C4DD3) ^ 0x3DD9C3A869EA0428) & (2 * ((v124 + 0x2AAA05D8807C4DD3) & 0xB1E1D3CD71CB054DLL)) ^ (v124 + 0x2AAA05D8807C4DD3) & 0xB1E1D3CD71CB054DLL;
  v126 = ((2 * ((v124 + 0x2AAA05D8807C4DD3) ^ 0x7C1A6532AAF80E38)) ^ 0x9BF76DFFB66616EALL) & ((v124 + 0x2AAA05D8807C4DD3) ^ 0x7C1A6532AAF80E38) ^ (2 * ((v124 + 0x2AAA05D8807C4DD3) ^ 0x7C1A6532AAF80E38)) & 0xCDFBB6FFDB330B74;
  v127 = (v126 ^ 0x8983047F82200260) & (4 * v125) ^ v125;
  v128 = ((4 * (v126 ^ 0x4408920049110915)) ^ 0x37EEDBFF6CCC2DD4) & (v126 ^ 0x4408920049110915) ^ (4 * (v126 ^ 0x4408920049110915)) & 0xCDFBB6FFDB330B74;
  v129 = (v128 ^ 0x5EA92FF48000950) & (16 * v127) ^ v127;
  v130 = ((16 * (v128 ^ 0xC811240093330221)) ^ 0xDFBB6FFDB330B750) & (v128 ^ 0xC811240093330221) ^ (16 * (v128 ^ 0xC811240093330221)) & 0xCDFBB6FFDB330B70;
  v131 = (v130 ^ 0xCDBB26FD93300300) & (v129 << 8) ^ v129;
  v132 = (((v130 ^ 0x40900248030825) << 8) ^ 0xFBB6FFDB330B7500) & (v130 ^ 0x40900248030825) ^ ((v130 ^ 0x40900248030825) << 8) & 0xCDFBB6FFDB330B00;
  v133 = v131 ^ 0xCDFBB6FFDB330B75 ^ (v132 ^ 0xC9B2B6DB13030000) & (v131 << 16);
  v134 = v124 - 0x2374265A0DB8ACE0 + ((((v124 + 0x2AAA05D8807C4DD3) ^ (2 * ((v133 << 32) & 0x4DFBB6FF00000000 ^ v133 ^ ((v133 << 32) ^ 0x5B330B7500000000) & (((v132 ^ 0x4490024C8300A75) << 16) & 0x4DFBB6FF00000000 ^ 0x490024CC00000000 ^ (((v132 ^ 0x4490024C8300A75) << 16) ^ 0x36FFDB3300000000) & (v132 ^ 0x4490024C8300A75))))) >> 32) ^ 0xB870BAD8);
  v135 = v134 + (v134 >> 16) + ((v134 + (v134 >> 16)) >> 8);
  v136 = (((v135 - 0x58665701DE1FFD7CLL) ^ v123 ^ 0x780D39744FD503C2) + 0x4F813A17022A1475) ^ (((v135 - 0x58665701DE1FFD7CLL) ^ v123 ^ 0xE569AEAC8A1F313ELL) - 0x2D1A5230381FD977) ^ (((v135 - 0x58665701DE1FFD7CLL) ^ v123 ^ 0x9D6497D8C5CA32FCLL) - 0x55176B4477CADAB5);
  v137 = ((v136 + 0x2036BB2A7C476E7) ^ 0x857286C260386C79) & (2 * ((v136 + 0x2036BB2A7C476E7) & 0xC67090EA0A3C7162)) ^ (v136 + 0x2036BB2A7C476E7) & 0xC67090EA0A3C7162;
  v138 = ((2 * ((v136 + 0x2036BB2A7C476E7) ^ 0x85B387C260384EFDLL)) ^ 0x87862E50D4087F3ELL) & ((v136 + 0x2036BB2A7C476E7) ^ 0x85B387C260384EFDLL) ^ (2 * ((v136 + 0x2036BB2A7C476E7) ^ 0x85B387C260384EFDLL)) & 0x43C317286A043F9ELL;
  v139 = (v138 ^ 0x382060040000F18) & (4 * v137) ^ v137;
  v140 = ((4 * (v138 ^ 0x404111282A040081)) ^ 0xF0C5CA1A810FE7CLL) & (v138 ^ 0x404111282A040081) ^ (4 * (v138 ^ 0x404111282A040081)) & 0x43C317286A043F9CLL;
  v141 = (v140 ^ 0x300142028003E00) & (16 * v139) ^ v139;
  v142 = ((16 * (v140 ^ 0x40C3030842040183)) ^ 0x3C317286A043F9F0) & (v140 ^ 0x40C3030842040183) ^ (16 * (v140 ^ 0x40C3030842040183)) & 0x43C317286A043F90;
  v143 = (v142 ^ 0x1120020003900) & (v141 << 8) ^ v141;
  v144 = (((v142 ^ 0x43C205284A04060FLL) << 8) ^ 0xC317286A043F9F00) & (v142 ^ 0x43C205284A04060FLL) ^ ((v142 ^ 0x43C205284A04060FLL) << 8) & 0x43C317286A043F00;
  v145 = v143 ^ 0x43C317286A043F9FLL ^ (v144 ^ 0x4303002800040000) & (v143 << 16);
  v146 = v136 - 0x378C03634DFF17B7 + ((((v136 + 0x2036BB2A7C476E7) ^ (2 * ((v145 << 32) & 0x43C3172800000000 ^ v145 ^ ((v145 << 32) ^ 0x6A043F9F00000000) & (((v144 ^ 0xC017006A00209FLL) << 16) & 0x43C3172800000000 ^ 0x40C3152800000000 ^ (((v144 ^ 0xC017006A00209FLL) << 16) ^ 0x17286A0400000000) & (v144 ^ 0xC017006A00209FLL))))) >> 32) ^ 0xC5F690AA);
  v147 = v146 + (v146 >> 16) + ((v146 + (v146 >> 16)) >> 8);
  v148 = (((v147 - 0x58665701DE1FFD7CLL) ^ v123 ^ 0x6F988DAF1030E409) + 0x3823CF1CF17C33F8) ^ (((v147 - 0x58665701DE1FFD7CLL) ^ v123 ^ 0xA9FE710230F6330BLL) - 0x1BACC4E2E451B0ALL) ^ (((v147 - 0x58665701DE1FFD7CLL) ^ v123 ^ 0xC666FCAD20C6D702) - 0x6E2241E13E75FF03);
  v149 = ((v148 - 0x1366024B985619DDLL) ^ 0xB32ABFD7B6A821DFLL) & (2 * ((v148 - 0x1366024B985619DDLL) & 0xBBAABF97B70941DELL)) ^ (v148 - 0x1366024B985619DDLL) & 0xBBAABF97B70941DELL;
  v150 = ((2 * ((v148 - 0x1366024B985619DDLL) ^ 0xA36F88FC92B8234BLL)) ^ 0x318A6ED64B62C52ALL) & ((v148 - 0x1366024B985619DDLL) ^ 0xA36F88FC92B8234BLL) ^ (2 * ((v148 - 0x1366024B985619DDLL) ^ 0xA36F88FC92B8234BLL)) & 0x18C5376B25B16294;
  v151 = (v150 ^ 0x1080264200200000) & (4 * v149) ^ v149;
  v152 = ((4 * (v150 ^ 0x845112924912295)) ^ 0x6314DDAC96C58A54) & (v150 ^ 0x845112924912295) ^ (4 * (v150 ^ 0x845112924912295)) & 0x18C5376B25B16294;
  v153 = (v152 ^ 0x4152804810200) & (16 * v151) ^ v151;
  v154 = ((16 * (v152 ^ 0x18C1224321306081)) ^ 0x8C5376B25B162950) & (v152 ^ 0x18C1224321306081) ^ (16 * (v152 ^ 0x18C1224321306081)) & 0x18C5376B25B16290;
  v155 = (v154 ^ 0x841362201102000) & (v153 << 8) ^ v153;
  v156 = (((v154 ^ 0x1084014924A14285) << 8) ^ 0xC5376B25B1629500) & (v154 ^ 0x1084014924A14285) ^ ((v154 ^ 0x1084014924A14285) << 8) & 0x18C5376B25B16200;
  v157 = v155 ^ 0x18C5376B25B16295 ^ (v156 ^ 0x5232121200000) & (v155 << 16);
  v158 = v148 - 0x57BB42B3E14CD7FFLL + ((((v148 - 0x1366024B985619DDLL) ^ (2 * ((v157 << 32) & 0x18C5376B00000000 ^ v157 ^ ((v157 << 32) ^ 0x25B1629500000000) & (((v156 ^ 0x18C0144A04916295) << 16) & 0x18C5376B00000000 ^ 0x884124A00000000 ^ (((v156 ^ 0x18C0144A04916295) << 16) ^ 0x376B25B100000000) & (v156 ^ 0x18C0144A04916295))))) >> 32) ^ 0x8B229543);
  v159 = v158 + (v158 >> 16) + ((v158 + (v158 >> 16)) >> 8);
  LODWORD(v158) = ((v159 + 284164418) >> 2) & 0x9B0FEEF ^ (v159 + 284164418);
  LODWORD(v156) = (v147 + 568328836) ^ (v135 + 568328836);
  v160 = v158 - ((2 * v158) & 0xC44AC536) + 1646617243;
  LODWORD(v158) = (v147 + 284164418) ^ (v135 + 284164418);
  LODWORD(STACK[0x2FC]) = v97 & 0xB7;
  LODWORD(STACK[0x2F8]) = (v97 ^ 0x11111111) & STACK[0x3B0];
  v161 = STACK[0x6F0];
  LODWORD(STACK[0x500]) = 266187547 * (LODWORD(STACK[0x6D0]) - LODWORD(STACK[0x6F0]));
  v162 = STACK[0x650];
  v163 = STACK[0x540];
  LODWORD(STACK[0x3E4]) ^= (1520880145 * (LODWORD(STACK[0x650]) ^ 0xE2C18F8B)) ^ (1520880145 * LODWORD(STACK[0x540]));
  LODWORD(STACK[0x654]) = v119 + 49752395;
  LODWORD(v147) = v147 ^ v135 ^ v159;
  v159 -= 0x58665701DE1FFD7CLL;
  v164 = v156 ^ v159;
  v165 = 0x3F519381655BDB57 * (v122 + 0x5D5D5D5D5D5D5D5DLL - ((2 * v122) & 0xBABABABABABABABALL));
  v166 = ((v159 ^ v165 ^ 0xF17EF7893DB81EB4) - 0x90BCD024367E4D3) ^ ((v159 ^ v165 ^ 0x6749D888675B281ALL) + 0x60C31DFCE67B2D83) ^ ((v159 ^ v165 ^ 0x96372F015AE336AELL) - 0x6E42158A243CCCC9);
  v167 = v166 - 0x78AC57481200598 + ((((((v166 + 0x2D600172904884A6) ^ 0x1F886CC6E99DE982) - 0x2B62AA21F8F563BCLL) ^ (v166 + 0x2D600172904884A6) ^ (((v166 + 0x2D600172904884A6) ^ 0x3EC4E128414F2ABFLL) - 0xA2E27CF5027A081) ^ (((v166 + 0x2D600172904884A6) ^ 0x6A78D454664535B8) - 0x5E9212B3772DBF86) ^ (((v166 + 0x2D600172904884A6) ^ 0x7FDE9F5DDFFF7CBBLL) - 0x4B3459BACE97F685)) >> 32) ^ 0x34EAC6E7);
  v168 = v167 + (v167 >> 16) + ((v167 + (v167 >> 16)) >> 8);
  v169 = (((v168 - 0x58665701DE1FFD7CLL) ^ v165 ^ 0x2EB2B75BACBB08A0) - 0x2ED8CE19FF45E78ELL) ^ (((v168 - 0x58665701DE1FFD7CLL) ^ v165 ^ 0x7594C66C4CAC7243) - 0x75FEBF2E1F529D6DLL) ^ (((v168 - 0x58665701DE1FFD7CLL) ^ v165 ^ 0x5B267137E0177AE3) - 0x5B4C0875B3E995CDLL);
  v170 = v169 + 0x6A794253FEEF2FLL + ((((((v169 + 0x3F00725595219140) ^ 0x8BDC207D725561AFLL) + 0x4AB62691CC883C42) ^ (v169 + 0x3F00725595219140) ^ (((v169 + 0x3F00725595219140) ^ 0xD15D0A8077AE7F7ALL) + 0x10370C6CC9732295) ^ (((v169 + 0x3F00725595219140) ^ 0xD9CB6A26936A62AALL) + 0x18A16CCA2DB73F46) ^ (((v169 + 0x3F00725595219140) ^ 0xBDDFB9C8D7B3DE6ELL) + 0x7CB5BF24696E8382)) >> 32) ^ 0x3E95F913);
  v171 = v170 + (v170 >> 16) + ((v170 + (v170 >> 16)) >> 8);
  v172 = (((v171 - 0x58665701DE1FFD7CLL) ^ v165 ^ 0xF9CCC91BF1851E30) + 0x3FA796038C5E12A2) ^ (((v171 - 0x58665701DE1FFD7CLL) ^ v165 ^ 0x1D176916AE9017EBLL) - 0x2483C9F12CB4E485) ^ (((v171 - 0x58665701DE1FFD7CLL) ^ v165 ^ 0xE4DBA00D5F1509DBLL) + 0x22B0FF1522CE054BLL);
  v173 = ((v172 - 0x5ECBCCBD425ECC1BLL) ^ 0xDD484D30B44BBFEBLL) & (2 * ((v172 - 0x5ECBCCBD425ECC1BLL) & 0x98606DA4C483BF8ALL)) ^ (v172 - 0x5ECBCCBD425ECC1BLL) & 0x98606DA4C483BF8ALL;
  v174 = ((2 * ((v172 - 0x5ECBCCBD425ECC1BLL) ^ 0xFD4807303D4BB3FFLL)) ^ 0xCA50D529F39018EALL) & ((v172 - 0x5ECBCCBD425ECC1BLL) ^ 0xFD4807303D4BB3FFLL) ^ (2 * ((v172 - 0x5ECBCCBD425ECC1BLL) ^ 0xFD4807303D4BB3FFLL)) & 0x65286A94F9C80C74;
  v175 = (v174 ^ 0x4000400030000860) & (4 * v173) ^ v173;
  v176 = ((4 * (v174 ^ 0x25282A9408480415)) ^ 0x94A1AA53E72031D4) & (v174 ^ 0x25282A9408480415) ^ (4 * (v174 ^ 0x25282A9408480415)) & 0x65286A94F9C80C74;
  v177 = (v176 ^ 0x4202A10E1000040) & (16 * v175) ^ v175;
  v178 = ((16 * (v176 ^ 0x6108408418C80C21)) ^ 0x5286A94F9C80C750) & (v176 ^ 0x6108408418C80C21) ^ (16 * (v176 ^ 0x6108408418C80C21)) & 0x65286A94F9C80C70;
  v179 = (v178 ^ 0x4000280498800400) & (v177 << 8) ^ v177;
  v180 = (((v178 ^ 0x2528429061480825) << 8) ^ 0x286A94F9C80C7500) & (v178 ^ 0x2528429061480825) ^ ((v178 ^ 0x2528429061480825) << 8) & 0x65286A94F9C80C00;
  v181 = v179 ^ 0x65286A94F9C80C75 ^ (v180 ^ 0x20280090C8080000) & (v179 << 16);
  v182 = (((v172 - 0x5ECBCCBD425ECC1BLL) ^ (2 * ((v181 << 32) & 0x65286A9400000000 ^ v181 ^ ((v181 << 32) ^ 0x79C80C7500000000) & (((v180 ^ 0x45006A0431C00875) << 16) & 0x65286A9400000000 ^ 0x528021400000000 ^ (((v180 ^ 0x45006A0431C00875) << 16) ^ 0x6A94F9C800000000) & (v180 ^ 0x45006A0431C00875))))) >> 32) ^ 0x9020A8A5;
  v183 = v172 + 0x3994A0E78224F36FLL + v182 + ((v172 + 0x3994A0E78224F36FLL + v182) >> 16) + ((v172 + 0x3994A0E78224F36FLL + v182 + ((v172 + 0x3994A0E78224F36FLL + v182) >> 16)) >> 8);
  LODWORD(STACK[0x2F0]) = v147 ^ v168 ^ v171 ^ v183 ^ ((v147 ^ v168 ^ v171 ^ v183) >> 2) & 0x9B0FEEF;
  LODWORD(v147) = v164 ^ (v168 + 568328836) ^ (v171 + 568328836) ^ (v183 + 568328836);
  LODWORD(STACK[0x390]) = v147 ^ (v147 >> 2) & 0x9B0FEEF;
  v184 = ((v183 + 284164418) >> 2) & 0x9B0FEEF ^ (v183 + 284164418);
  v185 = STACK[0x6C8];
  v186 = v158 ^ LODWORD(STACK[0x6C8]) ^ (v158 >> 2) & 0x9B0FEEF ^ v160 ^ ((v168 + 284164418) >> 2) & 0x9B0FEEF ^ (v168 + 284164418) ^ ((v171 + 284164418) >> 2) & 0x9B0FEEF ^ (v171 + 284164418);
  v187 = v184 & 0x80000;
  v188 = (v184 & 0x80000 & v186) == 0;
  v189 = v186 ^ 0xD0D19EB4;
  if (!v188)
  {
    v187 = -v187;
  }

  v190 = ((v187 + (v189 & 0x4C4839FE)) ^ v184 & 0x4C4039FE) + ((v184 ^ v189) & 0xB3B7C601);
  v191 = LODWORD(STACK[0x5A0]) + LODWORD(STACK[0x4F8]) + (v117 ^ (v117 >> 6) ^ (v117 >> 4) ^ 0x723C13DF);
  v192 = v183 - 0x4825CFCD5337B422 - ((v183 - 0x4825CFCD5337B422) >> 27) - ((v183 - 0x4825CFCD5337B422 - ((v183 - 0x4825CFCD5337B422) >> 27)) >> 11);
  v193 = v192 + (v192 >> 4);
  v194 = v193 + 0x6907F131C9989236 - ((v193 + 0x6907F131C9989236) >> 29) + ((v193 + 0x6907F131C9989236 - ((v193 + 0x6907F131C9989236) >> 29)) >> 12);
  v195 = v194 - (v194 >> 2);
  v196 = v195 - 0x4FC0615E016A9007 - ((v195 - 0x4FC0615E016A9007) >> 31) - ((v195 - 0x4FC0615E016A9007 - ((v195 - 0x4FC0615E016A9007) >> 31)) >> 12);
  v197 = v196 - (v196 >> 4);
  v198 = (v197 ^ 0xE3B0EC50283B3A9BLL) - ((v197 ^ 0xE3B0EC50283B3A9BLL) >> 31) + (((v197 ^ 0xE3B0EC50283B3A9BLL) - ((v197 ^ 0xE3B0EC50283B3A9BLL) >> 31)) >> 9);
  v199 = v198 - (v198 >> 6);
  v200 = (v199 ^ 0x1CBB3D2D625F8025) + ((v199 ^ 0x1CBB3D2D625F8025) >> 27) - (((v199 ^ 0x1CBB3D2D625F8025) + ((v199 ^ 0x1CBB3D2D625F8025) >> 27)) >> 8);
  v201 = v200 + (v200 >> 7);
  LODWORD(v195) = v201 ^ v195;
  v202 = v201 - 0x65FB2AD6BDC595DFLL - ((v201 - 0x65FB2AD6BDC595DFLL) >> 30) + ((v201 - 0x65FB2AD6BDC595DFLL - ((v201 - 0x65FB2AD6BDC595DFLL) >> 30)) >> 12);
  v203 = v202 + (v202 >> 3);
  LODWORD(STACK[0x2C4]) = (v203 >> 2) & 0x9B0FEEF ^ v203;
  v204 = v203 + 0x608394D4D392467ELL + ((v203 + 0x608394D4D392467ELL) >> 31) - ((v203 + 0x608394D4D392467ELL + ((v203 + 0x608394D4D392467ELL) >> 31)) >> 15);
  v205 = v204 - (v204 >> 5);
  STACK[0x308] = v205;
  v206 = (v205 ^ 0x601E5F8F690C4A13) + ((v205 ^ 0x601E5F8F690C4A13) >> 31) - (((v205 ^ 0x601E5F8F690C4A13) + ((v205 ^ 0x601E5F8F690C4A13) >> 31)) >> 11);
  v207 = v206 - (v206 >> 8);
  LODWORD(v195) = v195 ^ v207 ^ ((v195 ^ v207) >> 2) & 0x9B0FEEF;
  v208 = v207 + 0x42275266A1F057E1 + ((v207 + 0x42275266A1F057E1) >> 31) + ((v207 + 0x42275266A1F057E1 + ((v207 + 0x42275266A1F057E1) >> 31)) >> 11);
  v209 = (v208 >> 3) + v208;
  v210 = STACK[0x6B8];
  LODWORD(STACK[0x4F8]) = v162 ^ 0x1775254D;
  v211 = v120;
  v212 = *(v120 + 8 * (*(v120 + 8 * ((*(v120 + 8 * (v121 & 1)) & 1) == 0)) & 1));
  v213 = v162 ^ 0x1775254D ^ v210 ^ ((v162 ^ 0x1775254D ^ v185) >> 2) & 0x9B0FEEF ^ v190 ^ v195;
  v214 = ((v212 ^ 0x5AB61B5DC0A68F81) + 0x47865D8A900CE238) ^ ((v212 ^ 0xCEBE487862005082) - 0x2C71F150CD55C2CBLL) ^ ((v212 ^ 0xC9550E78FFFB825ELL) - 0x2B9AB75050AE1017);
  v188 = v214 >> 1 == 0x20368DC4A09F84A5;
  v215 = (v214 & 1 ^ 0x9B8EFFFB) + 2 * (v214 & 1) - 302913363;
  if (v188)
  {
    v215 = (((v212 ^ 0xC0A68F81) - 1878203848) ^ ((v212 ^ 0x62005082) + 850017589) ^ ((v212 ^ 0xFFFB825E) - 1353584663)) + 1212276574;
  }

  v216 = (v215 ^ 0x757F4654) & (2 * (v215 & 0x767F1758)) ^ v215 & 0x767F1758;
  v217 = ((2 * (v215 ^ 0xF9AD68C4)) ^ 0x1FA4FF38) & (v215 ^ 0xF9AD68C4) ^ (2 * (v215 ^ 0xF9AD68C4)) & 0x8FD27F9C;
  v218 = (v217 ^ 0xB807F00) & (4 * v216) ^ v216;
  v219 = ((4 * (v217 ^ 0x80520084)) ^ 0x3F49FE70) & (v217 ^ 0x80520084) ^ (4 * (v217 ^ 0x80520084)) & 0x8FD27F9C;
  v220 = (v219 ^ 0xF407E00) & (16 * v218) ^ v218;
  v221 = ((16 * (v219 ^ 0x8092018C)) ^ 0xFD27F9C0) & (v219 ^ 0x8092018C) ^ (16 * (v219 ^ 0x8092018C)) & 0x8FD27F90;
  v222 = v215 ^ (2 * ((((v221 ^ 0x2D0061C) << 8) & 0xFD20000 ^ 0x2520000 ^ (((v221 ^ 0x2D0061C) << 8) ^ 0xD27F0000) & (v221 ^ 0x2D0061C)) & (((v221 ^ 0x8D027900) & (v220 << 8) ^ v220) << 16) ^ (v221 ^ 0x8D027900) & (v220 << 8) ^ v220));
  v223 = (((v222 ^ 0x1F25C0FF) + 1768177887) ^ ((v222 ^ 0xADF42FCE) - 608849936) ^ ((v222 ^ 0xC4AEF869) - 1292928951)) - 1519538867;
  LODWORD(STACK[0x3CC]) = LODWORD(STACK[0x3C0]) + LODWORD(STACK[0x6F8]);
  v224 = STACK[0x3B8] & v163;
  LODWORD(STACK[0x3B8]) = LODWORD(STACK[0x6E0]) ^ LODWORD(STACK[0x3DC]) ^ LODWORD(STACK[0x6E8]);
  v225 = LODWORD(STACK[0x710]) ^ v161;
  LODWORD(STACK[0x39C]) = 16 * v103;
  LODWORD(STACK[0x3DC]) = LODWORD(STACK[0x3BC]) + 1;
  LODWORD(STACK[0x5A0]) = LODWORD(STACK[0x4A0]) ^ 0x7657A7F5;
  LODWORD(STACK[0x31C]) = v225;
  LODWORD(STACK[0x3C8]) = v225 ^ 0x6C4B4484;
  HIDWORD(v226) = STACK[0x59C];
  LODWORD(v226) = STACK[0x59C];
  LODWORD(STACK[0x2B8]) = v226 >> 15;
  LODWORD(STACK[0x59C]) = LODWORD(STACK[0x498]) ^ 0xD31EF1FA;
  LODWORD(STACK[0x6B8]) = v224 ^ LODWORD(STACK[0x4FC]);
  LODWORD(STACK[0x3C0]) = LODWORD(STACK[0x518]) ^ 0xDE8A143D;
  LODWORD(STACK[0x3B4]) = LODWORD(STACK[0x3E0]) ^ 0x5EA77FEC;
  LODWORD(STACK[0x2B0]) = v191 + 1;
  v227 = STACK[0x698];
  v228 = LODWORD(STACK[0x698]) ^ LODWORD(STACK[0x508]) ^ LODWORD(STACK[0x538]);
  LODWORD(STACK[0x328]) = v228;
  LODWORD(STACK[0x3BC]) = v228 ^ 0x188BEFCA;
  v229 = STACK[0x648];
  v230 = v227 ^ LODWORD(STACK[0x648]);
  STACK[0x310] = v193;
  STACK[0x2E8] = v199;
  LODWORD(STACK[0x2E4]) = v230 ^ v193 ^ v199;
  v231 = v229 ^ 0xBAAC5193;
  LODWORD(STACK[0x324]) = v213;
  LODWORD(STACK[0x3B0]) = v213 ^ 0x220CB6F5;
  v232 = STACK[0x6B0];
  v233 = STACK[0x708] + 4971;
  LODWORD(STACK[0x300]) = -2139062144 * LODWORD(STACK[0x548]);
  LODWORD(STACK[0x2C0]) = v209;
  LODWORD(STACK[0x2A8]) = v209 >> 2;
  STACK[0x508] = v197;
  LODWORD(STACK[0x2A0]) = (v197 >> 2) & 0x9B0FEEF;
  LODWORD(STACK[0x304]) = v107 ^ v232;
  LODWORD(STACK[0x298]) = ((v107 ^ v232) >> 2) & 0x9B0FEEF;
  v234 = (*v211 ^ 0x5D5D5D5D5D5D5D5DLL) * (v233 + 0x3F519381655BB9F6);
  v235 = (((v234 ^ STACK[0x700] ^ 0x270F85CD91FE4C52) + 0x6CB7E419998BBB8CLL) ^ ((v234 ^ STACK[0x700] ^ 0x37A0ED6922EEDA9ELL) + 0x7C188CBD2A9B2D48) ^ ((v234 ^ STACK[0x700] ^ 0x10AF68A4B31096CCLL) + 0x5B170970BB656116)) + 0x1646058B15C7175BLL;
  v236 = v235 - 0x61FE675F1E3D0F35 + (((((v235 ^ 0xCC1F02BAA1613DC0) + 0x521E9A1A40A3CD0BLL) ^ v235 ^ ((v235 ^ 0x789EA49B18D6A759) - 0x1960C3C406EBA86CLL) ^ ((v235 ^ 0xAA807E881835AE7ELL) + 0x3481E628F9F75EB5) ^ ((v235 ^ 0x7FFFBFF6BFBF3BD2) - 0x1E01D8A9A18234E7)) >> 32) ^ 0x61FE675F);
  v237 = v236 + (v236 >> 16) + ((v236 + (v236 >> 16)) >> 8);
  v238 = (2 * v237) & 0xE505DDEE ^ v237 ^ v231;
  v239 = (2 * (v237 + 284164418)) & 0xE505DDEE ^ (v237 + 284164418) ^ v185 ^ 0x81C7EF14;
  v240 = ((((v237 - 0x58665701DE1FFD7CLL) ^ v234 ^ 0x3D8D4CD2E40F7AD9) + 0x797EB53543EC0E34) ^ (((v237 - 0x58665701DE1FFD7CLL) ^ v234 ^ 0x1CCA7AE6CF3FBD23) + 0x5839830168DCC9CALL) ^ (((v237 - 0x58665701DE1FFD7CLL) ^ v234 ^ 0x214736342B30C7FALL) + 0x65B4CFD38CD3B311)) + 0x18809C9B952F0C07;
  v241 = (v240 ^ 0x8A447AF2C87E8FLL) & (2 * (v240 & 0xA28B697CC2ED7F0ELL)) ^ v240 & 0xA28B697CC2ED7F0ELL;
  v242 = ((2 * (v240 ^ 0x8C846BF3C21097)) ^ 0x440FDA2E625EDF32) & (v240 ^ 0x8C846BF3C21097) ^ (2 * (v240 ^ 0x8C846BF3C21097)) & 0xA207ED17312F6F98;
  v243 = v242 ^ 0xA200251111212089;
  v244 = (v242 ^ 0x2007C806000E4C90) & (4 * v241) ^ v241;
  v245 = ((4 * v243) ^ 0x881FB45CC4BDBE64) & v243 ^ (4 * v243) & 0xA207ED17312F6F98;
  v246 = (v245 ^ 0x8007A414002D2E10) & (16 * v244) ^ v244;
  v247 = ((16 * (v245 ^ 0x2200490331024199)) ^ 0x207ED17312F6F990) & (v245 ^ 0x2200490331024199) ^ (16 * (v245 ^ 0x2200490331024199)) & 0xA207ED17312F6F90;
  v248 = (v247 ^ 0x2006C11310266900) & (v246 << 8) ^ v246;
  v249 = (((v247 ^ 0x82012C0421090609) << 8) ^ 0x7ED17312F6F9900) & (v247 ^ 0x82012C0421090609) ^ ((v247 ^ 0x82012C0421090609) << 8) & 0xA207ED17312F6F00;
  v250 = v248 ^ 0xA207ED17312F6F99 ^ (v249 ^ 0x2050511212F0000) & (v248 << 16);
  v251 = v240 - 0x5D7496833D1280F2 + (((v240 ^ (2 * ((v250 << 32) & 0x2207ED1700000000 ^ v250 ^ ((v250 << 32) ^ 0x312F6F9900000000) & (((v249 ^ 0xA002E80610006699) << 16) & 0x2207ED1700000000 ^ 0x200CC1000000000 ^ (((v249 ^ 0xA002E80610006699) << 16) ^ 0x6D17312F00000000) & (v249 ^ 0xA002E80610006699))))) >> 32) ^ 0xA68A6970);
  v252 = v251 + (v251 >> 16) + ((v251 + (v251 >> 16)) >> 8);
  v253 = v238 ^ (2 * v252) & 0xE505DDEE ^ v252;
  v254 = v239 ^ (2 * (v252 + 284164418)) & 0xE505DDEE ^ (v252 + 284164418);
  v255 = ((((v252 - 0x58665701DE1FFD7CLL) ^ v234 ^ 0x82D7B71D75476715) - 0x3EAAF1779700156) ^ (((v252 - 0x58665701DE1FFD7CLL) ^ v234 ^ 0xC70132B0947834ECLL) - 0x463C2ABA984F52AFLL) ^ (((v252 - 0x58665701DE1FFD7CLL) ^ v234 ^ 0x45D685ADE13F53F9) + 0x3B14625812F7CA46)) - 0x633B9A069F8F86A0;
  v256 = (v255 ^ 0xE67222962384CAFALL) & (2 * (v255 & 0xE478B210ABC6ECE3)) ^ v255 & 0xE478B210ABC6ECE3;
  v257 = ((2 * (v255 ^ 0xA61226B63709D2BELL)) ^ 0x84D5294D399E7CBALL) & (v255 ^ 0xA61226B63709D2BELL) ^ (2 * (v255 ^ 0xA61226B63709D2BELL)) & 0x426A94A69CCF3E5CLL;
  v258 = v257 ^ 0x422A94A284410245;
  v259 = (v257 ^ 0x40480424184E3458) & (4 * v256) ^ v256;
  v260 = ((4 * v258) ^ 0x9AA529A733CF974) & v258 ^ (4 * v258) & 0x426A94A69CCF3E5CLL;
  v261 = (v260 ^ 0x2A1082100C3850) & (16 * v259) ^ v259;
  v262 = ((16 * (v260 ^ 0x424084248CC30609)) ^ 0x26A94A69CCF3E5D0) & (v260 ^ 0x424084248CC30609) ^ (16 * (v260 ^ 0x424084248CC30609)) & 0x426A94A69CCF3E50;
  v263 = (v262 ^ 0x22800208CC32400) & (v261 << 8) ^ v261;
  v264 = (((v262 ^ 0x40429486100C1A0DLL) << 8) ^ 0x6A94A69CCF3E5D00) & (v262 ^ 0x40429486100C1A0DLL) ^ ((v262 ^ 0x40429486100C1A0DLL) << 8) & 0x426A94A69CCF3E00;
  v265 = v263 ^ 0x426A94A69CCF3E5DLL ^ (v264 ^ 0x420084848C0E0000) & (v263 << 16);
  v266 = (v265 << 32) ^ 0x1CCF3E5D00000000;
  v267 = ((v255 ^ (2 * ((v265 << 32) & 0x426A94A600000000 ^ v265 ^ v266 & (((v264 ^ 0x6A102210C1225DLL) << 16) & 0x426A94A600000000 ^ 0x4248002000000000 ^ (((v264 ^ 0x6A102210C1225DLL) << 16) ^ 0x14A69CCF00000000) & (v264 ^ 0x6A102210C1225DLL))))) >> 32) ^ 0x6039B355;
  v268 = v255 - 0x1B874DEF5439131DLL + v267 + ((v255 - 0x1B874DEF5439131DLL + v267) >> 16);
  v269 = v268 + (v268 >> 8);
  v270 = v269 + 284164418;
  LODWORD(STACK[0x710]) = v253 ^ (2 * v269) & 0xE505DDEE ^ v269;
  v271 = (v269 + 284164418) ^ 0xD7D1108;
  if (v269 == 0xAC332B80EF0FFEBELL)
  {
    v271 = 1921183479;
  }

  v272 = v269 - 0x58665701DE1FFD7CLL;
  v273 = v223 < 0xA5AC44C7 || v223 > 0xA5AC44C8;
  STACK[0x700] = v272;
  return (*(STACK[0x668] + 8 * ((1017 * !v273) ^ STACK[0x708])))(v266, 0xA799A8FE21E00284, 2779530440, 2779530439, v223, 226300168, v233, v254 ^ v270 ^ (2 * (v271 & v270)), a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38);
}

uint64_t sub_1000E91A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  LODWORD(STACK[0x3AC]) = LODWORD(STACK[0x500]) + LODWORD(STACK[0x534]);
  LODWORD(STACK[0x3A0]) = LODWORD(STACK[0x510]) ^ 0x6DD54CD;
  v9 = LODWORD(STACK[0x2B8]) ^ LODWORD(STACK[0x39C]);
  LODWORD(STACK[0x534]) = v9;
  LODWORD(STACK[0x39C]) = ((a7 ^ 0xA71) - 1716742497) ^ v9;
  v10 = LODWORD(STACK[0x580]) ^ LODWORD(STACK[0x6B0]) ^ LODWORD(STACK[0x298]) ^ LODWORD(STACK[0x2B0]) ^ LODWORD(STACK[0x390]) ^ STACK[0x508] ^ LODWORD(STACK[0x2A0]) ^ LODWORD(STACK[0x2C4]) ^ LODWORD(STACK[0x2C0]) ^ STACK[0x2A8] & 0x9B0FEEF;
  LODWORD(STACK[0x500]) = v10;
  LODWORD(STACK[0x390]) = v10 ^ 0x4623DD3C;
  v11 = ((v7 < 0xA3B5755) << 32) + (((a7 ^ 0xA71u) - 2452) ^ 0x581CF923CDD667E4);
  v12 = 0x3F519381655BDB57 * (*(STACK[0x748] + 8 * (v7 + v11) + 0x3F1836E13F731098) ^ 0x5D5D5D5D5D5D5D5DLL);
  v13 = v11 + (((v12 ^ STACK[0x700] ^ 0xB38081B2831B5D40) - 0x13CD72F55BA8B68FLL) ^ ((v12 ^ STACK[0x700] ^ 0xE26DFE9ED9B8A53ELL) - 0x42200DD9010B4EF1) ^ ((v12 ^ STACK[0x700] ^ 0x51ED7F2C5AA3F87ELL) + 0xE5F73947DEFEC4FLL));
  v14 = v13 + ((((((v7 - 0x5DBD6B0EE3573CEFLL + v13) ^ 0x7C5A1E51F06C5185) - 0x264B849CEC6A24AALL) ^ (v7 - 0x5DBD6B0EE3573CEFLL + v13) ^ (((v7 - 0x5DBD6B0EE3573CEFLL + v13) ^ 0xDABAA49C20F72584) + 0x7F54C1AEC30EAF55) ^ (((v7 - 0x5DBD6B0EE3573CEFLL + v13) ^ 0xB24CF3DD317356D0) + 0x17A296EFD28ADC02) ^ (((v7 - 0x5DBD6B0EE3573CEFLL + v13) ^ 0x4EBDD3DDFDEE57F0) - 0x14AC4910E1E822D0)) >> 32) ^ 0x5A119ACD);
  v15 = (v14 + v7 + 0x4830FA2400A24DE2) >> 16;
  v16 = (v14 + v7 + 0x4830FA2400A24DE2 + v15) >> 8;
  v17 = v8 & (2 * (v7 + 10636770 + v15 + v14 + v16)) ^ (v7 + 10636770 + v15 + v14 + v16) ^ LODWORD(STACK[0x710]);
  v18 = v11 + ((((v7 - 0x10355CDDDD7DAF9ALL + v15 + v14 + v16) ^ v12 ^ 0xA3E458292B2E8E64) - 0x7E3E4880C7610317) ^ (((v7 - 0x10355CDDDD7DAF9ALL + v15 + v14 + v16) ^ v12 ^ 0x77BD9B49089034EBLL) + 0x5598741F1B204668) ^ (((v7 - 0x10355CDDDD7DAF9ALL + v15 + v14 + v16) ^ v12 ^ 0xD459C36023BEBA8FLL) - 0x983D3C9CFF137FCLL));
  v19 = v18 + ((((((v7 - 0x15E10731D4799350 + v18) ^ 0x3D7616477EC00CD3) - 0x5917F70F698871F9) ^ (v7 - 0x15E10731D4799350 + v18) ^ (((v7 - 0x15E10731D4799350 + v18) ^ 0xD840D49EF0E7773DLL) + 0x43DECA291850F5E9) ^ (((v7 - 0x15E10731D4799350 + v18) ^ 0x6EA4D93DE6F0BBF9) - 0xAC53875F1B8C6D3) ^ (((v7 - 0x15E10731D4799350 + v18) ^ 0xEFF3FAAC7F9FBD3DLL) + 0x746DE41B97283FE9)) >> 32) ^ 0x6461E148);
  v20 = (v19 + v7 - 0x7A42E879EBC2107ALL) >> 16;
  v21 = (v19 + v7 - 0x7A42E879EBC2107ALL + v20) >> 8;
  v22 = v17 ^ v8 & (2 * (v7 + 339603334 + v20 + v19 + v21)) ^ (v7 + 339603334 + v20 + v19 + v21);
  v23 = v11 + ((((v7 + 0x2D56C084361DF20ALL + v20 + v19 + v21) ^ v12 ^ 0x46F63C2582C3F3CDLL) - 0x70FC68229E89FB32) ^ (((v7 + 0x2D56C084361DF20ALL + v20 + v19 + v21) ^ v12 ^ 0x25388471A8830ABDLL) - 0x1332D076B4C90242) ^ (((v7 + 0x2D56C084361DF20ALL + v20 + v19 + v21) ^ v12 ^ 0x63CEB8542A40F970) - 0x55C4EC53360AF18FLL));
  v24 = v23 + ((((((v7 + 0x1C3F86AB8C04B117 + v23) ^ 0x8698EAF48C153CCELL) + 0x47353EC334268535) ^ (v7 + 0x1C3F86AB8C04B117 + v23) ^ (((v7 + 0x1C3F86AB8C04B117 + v23) ^ 0xDBDEF79A54C98086) + 0x1A7323ADECFA397DLL) ^ (((v7 + 0x1C3F86AB8C04B117 + v23) ^ 0xDCEBC9B123EC03F0) + 0x1D461D869BDFBA0BLL) ^ (((v7 + 0x1C3F86AB8C04B117 + v23) ^ 0xBFFFFF17BCFCF9B8) + 0x7E522B2004CF4048)) >> 32) ^ 0x3E522BC8);
  v25 = (v24 + v7 - 0x2212A51CBBC794EELL) >> 16;
  LODWORD(STACK[0x710]) = v22 ^ v8 & (2 * (v7 + 1144548114 + v25 + v24 + ((v24 + v7 - 0x2212A51CBBC794EELL + v25) >> 8))) ^ (v7 + 1144548114 + v25 + v24 + ((v24 + v7 - 0x2212A51CBBC794EELL + v25) >> 8));
  return (*(STACK[0x668] + 8 * (((v7 & 0xFFFFFFFE) == 171661140) ^ a7 ^ 0xA71)))();
}

uint64_t sub_1000E997C@<X0>(uint64_t a1@<X3>, int a2@<W7>, uint64_t a3@<X8>)
{
  LODWORD(STACK[0x508]) = v4;
  v9 = LODWORD(STACK[0x2FC]) ^ LODWORD(STACK[0x4FC]) ^ LODWORD(STACK[0x2F8]);
  v10 = LODWORD(STACK[0x2F0]) ^ STACK[0x2E8];
  v11 = STACK[0x308];
  v12 = LODWORD(STACK[0x2E4]) ^ STACK[0x308];
  STACK[0x700] = v5;
  v13 = STACK[0x648];
  v14 = STACK[0x698];
  LODWORD(STACK[0x4FC]) = LODWORD(STACK[0x648]) ^ LODWORD(STACK[0x6A0]) ^ LODWORD(STACK[0x698]) ^ STACK[0x310] ^ v10 ^ v11 ^ (v12 >> (v5 - 122)) & 0x9B0FEEF;
  v15 = ((a3 + v6) >> 16) + ((a3 + v6 + ((a3 + v6) >> 16)) >> 8);
  v16 = v15 + a3 + a1;
  v17 = v16 >> 27;
  v18 = (v16 - (v16 >> 27)) >> 11;
  v19 = (v16 - v18 - (v16 >> 27)) >> 4;
  v20 = v15 - v17;
  v21 = v15 - v17 + a1 + a3 + v19 - v18;
  v22 = a3 + v3 + v19;
  v23 = a3 + v19;
  v24 = v15 + v22;
  v25 = (v15 + v22 - v18 - v17) >> 29;
  v26 = (v24 - v25 - v18 - v17) >> 12;
  v27 = v23 + v26;
  v28 = (v24 + v26 - v25 - v18 - v17) >> 2;
  v29 = v15 - v17 + v3 + v27 - v28 - v25 - v18;
  v30 = v15 + v7 + v27;
  v31 = (v30 - v28 - v25 - v18 - v17) >> 31;
  v32 = v30 - v31 - v28 - v25 - v18 - v17;
  v33 = v20 + v7 + v27 - (v32 >> 12) - v31 - v28 - v25 - v18 - ((v32 - (v32 >> 12)) >> 4);
  v34 = (v33 ^ 0xE3B0EC50283B3A9BLL) - ((v33 ^ 0xE3B0EC50283B3A9BLL) >> 31) + (((v33 ^ 0xE3B0EC50283B3A9BLL) - ((v33 ^ 0xE3B0EC50283B3A9BLL) >> 31)) >> 9);
  v35 = v34 - (v34 >> 6);
  LODWORD(STACK[0x2FC]) = v8 & (2 * v35) ^ v35;
  v36 = (v35 ^ 0x1CBB3D2D625F8025) + ((v35 ^ 0x1CBB3D2D625F8025) >> 27) - (((v35 ^ 0x1CBB3D2D625F8025) + ((v35 ^ 0x1CBB3D2D625F8025) >> 27)) >> 8);
  v37 = v36 + (v36 >> 7);
  LODWORD(v32) = v8 & (2 * v37) ^ v37;
  v38 = v37 - 0x65FB2AD6BDC595DFLL - ((v37 - 0x65FB2AD6BDC595DFLL) >> 30) + ((v37 - 0x65FB2AD6BDC595DFLL - ((v37 - 0x65FB2AD6BDC595DFLL) >> 30)) >> 12);
  v39 = v38 + (v38 >> 3);
  LODWORD(STACK[0x2F8]) = v8 & (2 * v39) ^ v39;
  v40 = v39 + 0x608394D4D392467ELL + ((v39 + 0x608394D4D392467ELL) >> 31) - ((v39 + 0x608394D4D392467ELL + ((v39 + 0x608394D4D392467ELL) >> 31)) >> 15);
  v41 = v40 - (v40 >> 5);
  v42 = (v41 ^ 0x601E5F8F690C4A13) + ((v41 ^ 0x601E5F8F690C4A13) >> 31) - (((v41 ^ 0x601E5F8F690C4A13) + ((v41 ^ 0x601E5F8F690C4A13) >> 31)) >> 11);
  v43 = v42 - (v42 >> 8);
  v44 = v43 + 0x42275266A1F057E1 + ((v43 + 0x42275266A1F057E1) >> 31) + ((v43 + 0x42275266A1F057E1 + ((v43 + 0x42275266A1F057E1) >> 31)) >> 11);
  STACK[0x2F0] = v8 & (2 * (v44 + (v44 >> 3))) ^ (v44 + (v44 >> 3));
  LODWORD(v43) = a2 ^ v29 ^ (2 * v29) & 0xE505DDEE ^ v32 ^ v43 ^ 0xA959296 ^ (2 * v43) & 0xE505DDEE;
  v45 = v14 ^ v13;
  v46 = STACK[0x654];
  LODWORD(v31) = (((v45 ^ LODWORD(STACK[0x654])) & 0x8450467C ^ 0x4A346BB3) & ((v45 ^ LODWORD(STACK[0x654])) & 0x7BAFB983 ^ 0xC472D7FC) | (v45 ^ LODWORD(STACK[0x654])) & 0x318B9000) ^ 0xF2486879;
  v47 = STACK[0x384];
  v48 = STACK[0x6D8];
  v49 = LODWORD(STACK[0x388]) ^ LODWORD(STACK[0x610]) ^ LODWORD(STACK[0x300]) ^ LODWORD(STACK[0x6F8]) ^ (2 * LODWORD(STACK[0x610])) & 0xE505DDEE ^ LODWORD(STACK[0x650]) ^ LODWORD(STACK[0x610]) ^ (2 * (LODWORD(STACK[0x650]) ^ LODWORD(STACK[0x610]) ^ LODWORD(STACK[0x6C8]))) & 0xE505DDEE ^ (-2139062144 * LODWORD(STACK[0x384])) ^ LODWORD(STACK[0x6D8]) ^ 0xC1D69C89;
  LODWORD(STACK[0x300]) = v31;
  LODWORD(STACK[0x310]) = v21;
  LODWORD(STACK[0x2E8]) = (2 * (v31 ^ v46 ^ v21)) & 0xE505DDEE;
  LODWORD(STACK[0x388]) = (-v43 ^ (v49 - (v43 ^ v49)) ^ 0x9D889F9E ^ (v43 - ((2 * v43) & 0x3B113F3C) - 1651990626)) + v49;
  LODWORD(v43) = STACK[0x304];
  STACK[0x308] = v33;
  LODWORD(STACK[0x304]) = (2 * (v33 ^ v43)) & 0xE505DDEE;
  v50 = STACK[0x548];
  v51 = 33686018 * LODWORD(STACK[0x548]);
  v52 = STACK[0x6B8];
  LODWORD(STACK[0x2E4]) = (STACK[0x6B8] & 0x7D67FC4A | (v51 & 0xCE57B9BA ^ 0x9A4C2097) & ~LODWORD(STACK[0x6B8])) ^ 0x7D67FC4A;
  v53 = STACK[0x6C0];
  v54 = STACK[0x6F0];
  v55 = STACK[0x6A8];
  v56 = STACK[0x6E8];
  v57 = 33686018 * v47;
  v58 = STACK[0x6D0];
  v59 = v9 ^ 0x11;
  v60 = STACK[0x6E0];
  LODWORD(STACK[0x2C4]) = v9 & 0x7BE619CB ^ (v9 ^ 0x10) & (v51 & 0xE68F20F6 ^ 0x8A189B0);
  LODWORD(STACK[0x208]) = (v52 & 0x9B6695E5 | (v51 & 0x5B98DA6A ^ 0xB6AAF8D0) & ~v52) ^ 0x9B6695E5;
  v61 = v48 ^ 0x1B4D7981;
  if (!v47)
  {
    v61 = -458062210;
  }

  if (((v52 & 0x8AB1C95C | (v51 & 0xADCB3DFE ^ 0xDC5457A3) & ~v52) ^ 0x8AB1C95C) << v54)
  {
    v62 = ~(v48 ^ v61);
  }

  else
  {
    v62 = v61;
  }

  LODWORD(STACK[0x384]) = (2 * (v62 & v48)) ^ 0xE4B2867E;
  LODWORD(STACK[0x230]) = (v52 & 0xCA070570 | (v51 & 0x667FDBA0 ^ 0xF938E8A0) & ~v52) ^ 0xCA070570;
  LODWORD(STACK[0x228]) = v53 & 0x53B2FFDC ^ 0x53B2FFDC ^ (v57 & 0x7DAE3EC ^ 0xD05F8E2A) & (v53 ^ 0xFFFFEFEE);
  v63 = ((v52 & 0x4256AC36 | (v57 & 0x1AD0307C ^ 0x4F3EB408) & ~v52) ^ 0x4256AC36) << v58;
  v64 = (v9 & 0xF207C6C7 ^ v59 & (v57 & 0x1AD0307C ^ 0xFF6FDEF9) ^ 1) >> v56;
  LODWORD(STACK[0x210]) = ((v64 - ((2 * v64) & 0x8159971C) - 1062417522) ^ 0x3F533471) & ((v63 - ((2 * v63) & 0x938DDCF6) - 909709701) ^ 0xF2D2831F);
  v65 = ((v53 & 0xFD5A4C97 | (v51 & 0x7F84D462 ^ 0xC29826A6) & ~v53) ^ 0xFD5A4C97) << v54;
  v66 = v65 - ((2 * v65) & 0xA672BE9A) - 751214771;
  LODWORD(STACK[0x298]) = v66;
  LODWORD(STACK[0x288]) = (v66 ^ 0x2CC6A0B2) & ((((v55 & (v51 & 0x7F84D462 ^ 0x3FC26A31)) >> v60) - ((2 * ((v55 & (v51 & 0x7F84D462 ^ 0x3FC26A31)) >> v60)) & 0x86E051D4) + 1131423978) ^ 0x6CA5543B);
  v67 = (v53 & 0x81775B3E ^ 0x81775B3E ^ (v57 & 0x3257B816 ^ 0x185C8735) & (v53 ^ 0xFFDFFF77)) << v58;
  v68 = v67 - ((2 * v67) & 0x9495B964) - 901063502;
  LODWORD(STACK[0x244]) = v68;
  LODWORD(STACK[0x250]) = (v68 ^ 0x35B5234D) & (((((v57 & 0x3257B816 ^ 0x992BDC0B) & v55) >> v60) - ((2 * (((v57 & 0x3257B816 ^ 0x992BDC0B) & v55) >> v60)) & 0x7B07EB6E) - 1115425353) ^ 0x46050F91);
  LODWORD(STACK[0x248]) = v9 & 0x7FBC019F ^ 0x11 ^ (v9 ^ 1) & (v51 & 0x7CDE6F6C ^ 0x41D33629);
  v69 = ((v52 & 0xC1910BC8 | (v51 & 0x13D1598A ^ 0xC879A70D) & ~v52) ^ 0xC1910BC8) << v54;
  v70 = (v51 & 0x2105180 ^ 0x82880C1 ^ (v9 ^ 0xA38D1C0) & (v51 & 0x13D1598A ^ 0x9E8ACC5u)) >> v60;
  LODWORD(STACK[0x200]) = ((v70 - ((2 * v70) & 0x16E57C04) + 192069122) ^ 0xF48D41FD) & ((v69 - ((2 * v69) & 0x4CB57610) - 1504003320) ^ 0x8D35DE35);
  LODWORD(STACK[0x2A8]) = v53 & 0xA152D622 ^ 0xA152D622 ^ (v57 & 0x2E42D48 ^ 0x2020C086) & (v53 ^ 0xB6F4FDDE);
  v71 = (131586 * v50) & 0xBFB752;
  LODWORD(STACK[0x2B0]) = v71 ^ 0x805FDBA9;
  LODWORD(STACK[0x2A0]) = (v52 & 0x890F09E1 | (v71 ^ 0x950D248) & ~v52) ^ 0x890F09E1;
  LODWORD(STACK[0x548]) = (2 * ((v53 & 0xF06995EC ^ 0xF06995EC ^ (v57 & 0x3465D758 ^ 0xEA5B7E40) & (v53 ^ 0xFF7FFF5E)) << v58)) & 0x10C32060;
  v72 = ((v53 & 0x40044314 | (v51 & 0xFCC6D6A0 ^ 0xBE672844) & ~v53) ^ 0x40044314) << v54;
  v73 = v57 & 0x3B0A042 ^ 0x81DA0440 ^ (v9 ^ 0x83FAA443) & (v57 & 0x23B4A8C2 ^ 0x91DA5461);
  LODWORD(STACK[0x218]) = v72 - ((2 * v72) & 0x38976B2) - 2117813415;
  v74 = ((v52 & 0x11FEA7BA | (v51 & 0xE6AF46FE ^ 0xE2A904C5) & ~v52) ^ 0x11FEA7BA) << v58;
  v75 = v74 - ((2 * v74) & 0xA6ED31E) + 87517583;
  LODWORD(STACK[0x290]) = v75;
  LODWORD(STACK[0x278]) = (v75 ^ 0xFAC89670) & ((((v55 & (v51 & 0xE6AF46FE ^ 0xF357A37F)) >> v60) - ((2 * ((v55 & (v51 & 0xE6AF46FE ^ 0xF357A37F)) >> v60)) & 0x262DB8B8) + 320265308) ^ 0x188199A9);
  LODWORD(STACK[0x268]) = (v53 & 0x9A49C1EB | (v51 & 0x565E0DBA ^ 0xB166C736) & ~v53) ^ 0x9A49C1EB;
  v76 = ((v52 & 0xC5DD74DE | (v57 & 0x37776E3E ^ 0xDE66C3C1) & ~v52) ^ 0xC5DD74DE) << v58;
  v77 = (((v57 & 0x37776E3E ^ 0x1BBBB71F) & v55) >> v56) - ((2 * (((v57 & 0x37776E3E ^ 0x1BBBB71F) & v55) >> v56)) & 0x40480CE8) - 1608251788;
  LODWORD(STACK[0x270]) = v77;
  LODWORD(STACK[0x2C0]) = ((v76 - ((2 * v76) & 0xAF9FD3A8) - 674240044) ^ 0x4D5B912) & (v77 ^ 0x5FDBF98B);
  LODWORD(STACK[0x708]) = v59;
  v78 = (v53 & 0xD9E19A10 ^ 0xD9E19A10 ^ (v57 & 0x3F3A7B4E ^ 0x467CA7B7) & (v53 ^ 0x7FFEFFFF)) << v58;
  v79 = (v57 & 0x22320206 ^ 0x21100A6 ^ (v9 ^ 0x223302A7) & (v57 & 0x3F3A7B4E ^ 0x9F9D3DA7)) >> v60;
  LODWORD(STACK[0x238]) = ((v79 - ((2 * v79) & 0xE8234FE8) + 1947314164) ^ 0xAA7E1858) & ((v78 - ((2 * v78) & 0x302E248E) - 1743318457) ^ 0x67E8EDB8);
  LODWORD(STACK[0x2B8]) = ((v51 & 0x50607A84 ^ 0x50213C84 ^ (v9 ^ 0x50617E95) & (v51 & 0xF77A7B9E ^ 0xFBBD3DCF)) >> v56) + (((v52 & 0x45C5F220 | (v51 & 0xF77A7B9E ^ 0xBE78CFEF) & ~v52) ^ 0x45C5F220) << v54);
  LODWORD(STACK[0x650]) = v57;
  LODWORD(STACK[0x220]) = v57 & 0x33D97AFE ^ 0x99ECBD7F;
  LODWORD(STACK[0x280]) = v53 & 0xCD27390F ^ 0xCD27390F ^ (v57 & 0x33D97AFE ^ 0x54CB8470) & (v53 ^ 0xFFFBFFFF);
  LODWORD(STACK[0x6A0]) = v51;
  v80 = ((v53 & 0x8A2A135F | (LODWORD(STACK[0x558]) ^ (2 * (STACK[0x528] & LODWORD(STACK[0x6F8]))) ^ 0xA1013874) & ~v53) ^ 0x8A2A135F) << v58;
  LODWORD(STACK[0x558]) = (2 * v80) & 0x29EE8C54;
  LODWORD(STACK[0x528]) = v80 - 1795733974;
  v81 = LODWORD(STACK[0x560]) ^ ((LODWORD(STACK[0x590]) ^ 0xFFFFFFAB) + (~(2 * (LODWORD(STACK[0x590]) ^ 0xFFFFFFAB)) | 0x15) + 118);
  v82 = STACK[0x700] - 13;
  LODWORD(STACK[0x6C8]) = (STACK[0x700] + 1905552738) & 0x8E6B7D3D;
  v83 = v14 ^ LODWORD(STACK[0x4F8]);
  v84 = LODWORD(STACK[0x540]) ^ LODWORD(STACK[0x538]) ^ 0xE70088E0;
  STACK[0x578] = v41;
  STACK[0x538] = v8 & (2 * v41);
  LODWORD(STACK[0x560]) = (2 * (v73 >> v56)) & 0x19F1876;
  LODWORD(STACK[0x540]) = (v73 >> v56) + 13601851;
  LODWORD(STACK[0x384]) = LODWORD(STACK[0x388]) ^ 0xFC06BB93;
  LODWORD(STACK[0x6B0]) = v9;
  LODWORD(STACK[0x700]) = ~v52;
  LODWORD(STACK[0x698]) = ~v53;
  LODWORD(STACK[0x2C4]) = LODWORD(STACK[0x5A0]) ^ LODWORD(STACK[0x59C]);
  v85 = STACK[0x740];
  v86 = *(*(&off_1006B4E30 + (v82 ^ 0x2311)) + 169) ^ 0x79045A0B;
  v87 = v86 ^ (2 * ((v86 ^ 0x2293BC39) & STACK[0x6D8]));
  v88 = (v9 & 0xE869E941 ^ (v87 ^ 0x4AFA5578) & STACK[0x708] ^ 1) >> LODWORD(STACK[0x6E8]);
  v89 = (((v87 ^ 0xA63E9F3C) & STACK[0x700] | v52 & 0x4AD2305) ^ 0x4AD2305) << LODWORD(STACK[0x6F0]);
  v90 = 4 * (v81 ^ (LODWORD(STACK[0x6C8]) - 39));
  *(STACK[0x750] + v90) = v83 ^ (v88 - ((2 * v88) & 0x33AAD5B0) + 433416920) ^ (v89 - ((2 * v89) & 0xCCD8FC6E) - 429097417) ^ 0x66BF211D;
  *(v85 + v90) = v84 ^ (*(*(&off_1006B4E30 + (v82 ^ 0x2007)) + 85) - 4317);
  return (*(STACK[0x668] + 8 * (v82 ^ 0x13)))(0);
}

void sub_1000EB610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, int a33, int a34, int a35, int a36, int a37, int a38, int a39, int a40, int a41, int a42, int a43, int a44, int a45, int a46, int a47, int a48, int a49, int a50, int a51, int a52, int a53, unsigned int a54, int a55, uint64_t a56, int a57, int a58, unsigned int a59, unsigned int a60, int a61, int a62, int a63)
{
  v104 = LODWORD(STACK[0x648]) ^ LODWORD(STACK[0x56C]);
  v105 = LODWORD(STACK[0x310]) ^ LODWORD(STACK[0x2E8]) ^ LODWORD(STACK[0x2FC]) ^ STACK[0x538] ^ STACK[0x578];
  LODWORD(STACK[0x4F8]) = LODWORD(STACK[0x580]) ^ LODWORD(STACK[0x570]) ^ LODWORD(STACK[0x508]) ^ STACK[0x308] ^ LODWORD(STACK[0x304]) ^ LODWORD(STACK[0x2F8]) ^ STACK[0x2F0];
  v1502 = a73 ^ (a75 - a79);
  v1503 = a61 ^ (a69 - a72);
  v1506 = (a51 - a52) ^ (a48 - a50);
  v1507 = a46 ^ (a47 - LODWORD(STACK[0x548]));
  v1508 = (a44 - a45) ^ a43;
  v1509 = (LODWORD(STACK[0x540]) - LODWORD(STACK[0x560])) ^ (a41 - a42);
  v1510 = (a37 - a38) ^ (a39 - a40);
  v1511 = (a34 - a36) ^ a33;
  v1501 = a32 ^ (LODWORD(STACK[0x528]) - LODWORD(STACK[0x558]));
  v106 = v104 ^ LODWORD(STACK[0x654]) ^ LODWORD(STACK[0x300]) ^ LODWORD(STACK[0x710]) ^ v105;
  v107 = STACK[0x6F8];
  v1500 = LODWORD(STACK[0x588]) ^ (2 * (STACK[0x6F8] & LODWORD(STACK[0x588])));
  v108 = STACK[0x6D8];
  v109 = LODWORD(STACK[0x5EC]) ^ (2 * (STACK[0x6D8] & LODWORD(STACK[0x5EC])));
  v110 = STACK[0x698];
  v111 = STACK[0x6C0];
  v112 = STACK[0x6C0];
  v113 = STACK[0x6D0];
  v114 = STACK[0x708];
  v115 = STACK[0x6E8];
  LODWORD(STACK[0x588]) = ((STACK[0x708] & v109) >> LODWORD(STACK[0x6E8])) + ((((v109 ^ 0x9A5EADA2) & STACK[0x698] | STACK[0x6C0] & 0x9A5EADA2) ^ 0x9A5EADA2) << LODWORD(STACK[0x6D0]));
  v116 = LODWORD(STACK[0x3CC]) ^ (2 * (v108 & STACK[0x3CC]));
  v117 = STACK[0x6E0];
  v118 = ((v114 & v116) >> v117) - ((2 * ((v114 & v116) >> v117)) & 0x4E2D0F0A) - 1491695739;
  v119 = STACK[0x6F0];
  v120 = (((v116 ^ 0x880C28F3) & v110 | v111 & 0x880C28F3) ^ 0x880C28F3) << LODWORD(STACK[0x6F0]);
  LODWORD(STACK[0x580]) = (v120 - ((2 * v120) & 0x2704345C) - 1820190162) ^ v118 ^ 0x34949DAB;
  v121 = LODWORD(STACK[0x574]) ^ (2 * (v107 & STACK[0x5C8]));
  v122 = STACK[0x6B0];
  v123 = (STACK[0x6B0] & 0xC6C28201 ^ v114 & (v121 ^ 0xBDBA3902) ^ 1) >> v115;
  v124 = STACK[0x700];
  v125 = STACK[0x6B8];
  v126 = STACK[0x6B8];
  v127 = ((STACK[0x6B8] & 0xD1C6C717 | STACK[0x700] & (v121 ^ 0xAABE7C14)) ^ 0xD1C6C717) << v113;
  LODWORD(STACK[0x578]) = (v123 - ((2 * v123) & 0xDB559936) + 1839910043) & 0xAC879FAC ^ 0x7FFAECDB ^ ((v123 - ((2 * v123) & 0xDB559936) + 1839910043) ^ 0x92553364) & ((v127 - ((2 * v127) & 0x83F7CCD6) + 1107027563) ^ 0x12838638);
  v128 = LODWORD(STACK[0x5F0]) ^ (2 * (v107 & STACK[0x5F0]));
  v129 = ((v111 & 0x190414CC | v110 & (v128 ^ 0x190414CC)) ^ 0x190414CC) << v119;
  v130 = v129 + 1295322090 + (~(2 * v129) | 0x6595E82D);
  v131 = STACK[0x6A8];
  LODWORD(STACK[0x574]) = v130 & 0x8414D4DC ^ 0x7FFF2BEB ^ ((((STACK[0x6A8] & v128) >> v115) - ((2 * ((STACK[0x6A8] & v128) >> v115)) & 0xB1230DB6) + 1485932251) ^ 0x237AADF8) & (v130 ^ 0xB2CAF416);
  v132 = LODWORD(STACK[0x3C8]) ^ (2 * ((LODWORD(STACK[0x31C]) ^ 0x5E8E6E4C) & v107));
  v133 = (((v132 ^ 0xC29E197C) & v110 | v111 & 0xF05B33B4) ^ 0xF05B33B4) << v113;
  LODWORD(STACK[0x570]) = ((((v132 ^ 0x32C52AC8) & v131) >> v117) - ((2 * (((v132 ^ 0x32C52AC8) & v131) >> v117)) & 0x4F95B620) - 1479877872) ^ 0x66FDD5A2 ^ (v133 - ((2 * v133) & 0x826E1D64) - 1053356366);
  v134 = LODWORD(STACK[0x680]) ^ (2 * (v108 & STACK[0x680]));
  LODWORD(STACK[0x56C]) = ((v134 & v131) >> v115) + ((((v134 ^ 0x5B10A819) & v110 | v111 & 0x5B10A819) ^ 0x5B10A819) << v119);
  v135 = LODWORD(STACK[0x39C]) ^ (2 * ((LODWORD(STACK[0x534]) ^ 0x621EF5ED) & v108));
  v136 = (((v135 ^ 0x5CCAB0A3) & v124 | v125 & 0x277884E1) ^ 0x277884E1) << v113;
  v137 = ((v135 ^ 0xBEDE92C8) & v114 ^ v122 & 0xC56CA68A) >> v115;
  LODWORD(STACK[0x560]) = (v137 - ((2 * v137) & 0xFFDFE27A) + 2146431293) ^ 0xF1FD22F7 ^ (v136 - ((2 * v136) & 0x1C25A794) - 1911368758);
  v138 = v122;
  v139 = LODWORD(STACK[0x3A0]) ^ (2 * (STACK[0x510] & v108));
  v140 = (v114 & (v139 ^ 0xEE68FE8B) ^ v122 & 0xE8B5AA46) >> v115;
  v141 = (((v139 ^ 0x79E37E1E) & v110 | v111 & 0x7F3E2AD3) ^ 0x7F3E2AD3) << v113;
  LODWORD(STACK[0x558]) = (v140 - ((2 * v140) & 0x512605C6) + 680723171) & 0xB23E808E ^ 0x6DD37FF3 ^ ((v140 - ((2 * v140) & 0x512605C6) + 680723171) ^ 0xD76CFD1C) & ((v141 - ((2 * v141) & 0x9F7D6F26) - 809584749) ^ 0x827FC8E2);
  v142 = LODWORD(STACK[0x3C0]) ^ (2 * (STACK[0x518] & v107));
  v143 = (v122 & 0xB975CD45 ^ (v142 ^ 0x67FFD978) & v114 ^ 1) >> v115;
  v144 = (((v142 ^ 0xADB25767) & v110 | v111 & 0x7338435A) ^ 0x7338435A) << v119;
  LODWORD(STACK[0x548]) = (v143 - ((2 * v143) & 0x4B21C0A0) - 1517232048) & 0x5DD4D1FF ^ 0xA7BBEE50 ^ ((v144 - ((2 * v144) & 0xC753608A) - 475418555) ^ 0x41829E45) & ((v143 - ((2 * v143) & 0x4B21C0A0) - 1517232048) ^ 0x5A6F1FAF);
  v145 = LODWORD(STACK[0x600]) ^ (2 * (v107 & STACK[0x600]));
  LODWORD(STACK[0x540]) = (((v111 & 0xECB95909 | v110 & (v145 ^ 0xECB95909)) ^ 0xECB95909) << v119) + ((v131 & v145) >> v117);
  v146 = LODWORD(STACK[0x620]) ^ (2 * (v107 & STACK[0x620]));
  v147 = ((v114 & v146) >> v115) - ((2 * ((v114 & v146) >> v115)) & 0xEA9AA5CC) + 1968001766;
  v148 = ((v125 & 0x838E3469 | v124 & (v146 ^ 0x838E3469)) ^ 0x838E3469) << v113;
  LODWORD(STACK[0x648]) = v147 & 0xE822EE7B ^ 0x77DD53E6 ^ (v147 ^ 0x8AB2AD19) & ((v148 - ((2 * v148) & 0x2FED07CC) + 402031590) ^ 0x2B9262);
  v1499 = v106;
  v149 = v106 ^ (2 * ((v106 ^ 0x3DD7A6AF) & v107));
  v150 = (((v149 ^ 0xC0A36D73) & v110 | v111 & 0xFD74CBDC) ^ 0xFD74CBDC) << v113;
  LODWORD(STACK[0x538]) = ((((v149 ^ 0x3DD7A6AF) & v131) >> v117) - ((2 * (((v149 ^ 0x3DD7A6AF) & v131) >> v117)) & 0x64BD5BCC) - 1302417946) ^ 0x974916B2 ^ (v150 - ((2 * v150) & 0x4A2F76A8) + 622312276);
  v151 = LODWORD(STACK[0x380]) ^ (2 * (v107 & STACK[0x5E8]));
  v152 = (v151 & 0x4B9B8770 ^ 0x8908070 ^ (v122 ^ 0x4B9B8761) & (v151 ^ 0x3CD4D0F4u)) >> v115;
  v153 = ((v112 & 0xA7E61268 | v110 & (v151 ^ 0x9B32C29C)) ^ 0xA7E61268) << v113;
  LODWORD(STACK[0x534]) = (v152 - ((2 * v152) & 0xFEE92E12) - 9136375) & 0xF5985DCA ^ 0xFF77B73D ^ ((v152 - ((2 * v152) & 0xFEE92E12) - 9136375) ^ 0x8B68F6) & ((v153 - ((2 * v153) & 0x822E4C00) + 1092036096) ^ 0x4B708435);
  v154 = LODWORD(STACK[0x554]) ^ (2 * (v107 & STACK[0x5E0]));
  v155 = (v154 & 0xFAD37745 ^ 0xE0932001 ^ (v122 ^ 0xFAD37754) & (v154 ^ 0xE4BFA889)) >> v117;
  v156 = ((v125 & 0x28A39717 | v124 & (v154 ^ 0xCC1C3F9E)) ^ 0x28A39717) << v119;
  LODWORD(STACK[0x528]) = (v156 - ((2 * v156) & 0xCEBCDFF4) + 1734242298) ^ (v155 - ((2 * v155) & 0xFE5B8AA6) - 13777581) ^ 0x9873AAA9;
  v157 = LODWORD(STACK[0x520]) ^ (2 * (v108 & STACK[0x608]));
  v158 = ((v125 & 0x43761776 | v124 & (v157 ^ 0x3AF7D5E8)) ^ 0x43761776) << v113;
  v159 = (v157 & 0x58CBF10C ^ 0x5881C00C ^ (v122 ^ 0x58CBF11D) & (v157 ^ 0x7981C29Eu)) >> v115;
  LODWORD(STACK[0x710]) = (v159 - ((2 * v159) & 0x51ABEF20) - 1462372464) ^ (v158 - ((2 * v158) & 0xAB396250) + 1436332328);
  v160 = LODWORD(STACK[0x660]) ^ (2 * (v108 & STACK[0x660]));
  v161 = ((v114 & v160) >> v117) - ((2 * ((v114 & v160) >> v117)) & 0x225C67C2) + 288240609;
  v162 = ((v125 & 0x21834B42 | v124 & (v160 ^ 0x21834B42)) ^ 0x21834B42) << v119;
  LODWORD(STACK[0x380]) = (v161 ^ 0xEED1CC1E) & ((v162 - ((2 * v162) & 0x7CE96422) - 1099648495) ^ 0xCF06634A) ^ v161 & 0x8E8D2EA4;
  v163 = LODWORD(STACK[0x3AC]) ^ (2 * (STACK[0x3AC] & v107));
  v164 = ((v163 & v131) >> v115) - ((2 * ((v163 & v131) >> v115)) & 0xAE1BC6FC) + 1460527998;
  v165 = (((v163 ^ 0x14BA6B8E) & v124 | v125 & 0x14BA6B8E) ^ 0x14BA6B8E) << v119;
  LODWORD(STACK[0x554]) = v164 & 0xBB045CC9 ^ 0x57FFE37E ^ ((v165 - ((2 * v165) & 0xBCF40E10) + 1585055496) ^ 0x1A81A43E) & (v164 ^ 0xA8F21C81);
  v166 = LODWORD(STACK[0x524]) ^ (2 * (v108 & STACK[0x524]));
  v167 = (v122 & 0x9F63360D ^ v114 & (v166 ^ 0x9F63360D) ^ 1) >> v117;
  v168 = (((v166 ^ 0xF66E0BDD) & v110 | v112 & 0xF66E0BDD) ^ 0xF66E0BDD) << v113;
  LODWORD(STACK[0x524]) = (v167 - ((2 * v167) & 0xBB406B1A) + 1570780557) & 0x1DA7C78A ^ 0xFFF83DFD ^ ((v167 - ((2 * v167) & 0xBB406B1A) + 1570780557) ^ 0xA25FCA72) & ((v168 - ((2 * v168) & 0x9E955E26) + 1330294547) ^ 0xAD129766);
  v169 = LODWORD(STACK[0x33C]) ^ (2 * (v107 & STACK[0x33C]));
  v170 = ((v112 & 0x7FBD034E | v110 & (v169 ^ 0x7FBD034E)) ^ 0x7FBD034E) << v113;
  v171 = (v170 - ((2 * v170) & 0x9AEDF424) - 847840750) ^ (((v131 & v169) >> v115) - ((2 * ((v131 & v169) >> v115)) & 0x6011DAD4) - 1341592214) ^ 0x7D7E1778;
  v1498 = STACK[0x758];
  v172 = *(STACK[0x758] + 1);
  v173 = ((*(STACK[0x4D8] + (((v172 ^ 0x97) - (v172 ^ 0xF4)) ^ 0xFFFFFFFE) + (v172 ^ 0x97)) ^ (2 * (v172 ^ 0x97) - ((4 * (v172 ^ 0x97) + 102) & 0x7E) - 14) & 0xFE ^ 2) << 16) | ((*(STACK[0x4D8] + (v1498[2] ^ 0x61)) ^ 0x2E ^ (((2 * v1498[2]) ^ 4) - ((2 * ((2 * v1498[2]) ^ 4) + 102) & 0x7E) - 14) & 0xFE) << 8) | ((*(STACK[0x4E0] + (*v1498 ^ 0xF4)) ^ 0x61) << 24) | *(STACK[0x4E0] + (v1498[3] ^ 0xB1)) ^ 0xAF;
  v174 = *(STACK[0x758] + 4);
  v175 = (*(STACK[0x4F0] + (v1498[7] ^ 0x1ALL)) + (v1498[7] ^ 0xED) - 122) ^ 0xF6 | (((*(STACK[0x4E8] + (v1498[6] ^ 0x4CLL)) + 62) ^ 0x52) << 8) | (((*(STACK[0x4E8] + (v1498[5] ^ 0x28)) + 62) ^ 0x24) << 16) | (((*(STACK[0x4F0] + (v174 ^ 0x2C)) + (v174 ^ 0xDB) - 122) ^ 0xA6) << 24);
  v176 = ((((*(STACK[0x4F0] + (v1498[8] ^ 0x5ELL)) + (v1498[8] ^ 0xA9) - 122) ^ 0x8B) << 24) | (((*(STACK[0x4F0] + (v1498[9] ^ 0xDFLL)) + (v1498[9] ^ 0x28) - 122) ^ 0x29) << 16) | ((*(STACK[0x4D8] + (v1498[10] ^ 0xEDLL)) ^ 0x72 ^ (((2 * v1498[10]) ^ 0x1C) - ((2 * ((2 * v1498[10]) ^ 0x1C) + 102) & 0x7E) - 14) & 0xFE) << 8) | *(STACK[0x4E0] + (v1498[11] ^ 0x51)) ^ 0x49) ^ 0x95;
  v177 = ((((*(STACK[0x4E8] + (v1498[14] ^ 0x9ALL)) + 62) ^ 0x71) << 8) | ((*(STACK[0x4E0] + (v1498[13] ^ 0x52)) ^ 0xBA) << 16) | ((*(STACK[0x4D8] + (v1498[12] ^ 0xDFLL)) ^ 0x36 ^ (((2 * v1498[12]) ^ 0x78) - ((2 * ((2 * v1498[12]) ^ 0x78) + 102) & 0x7E) - 14)) << 24) | (*(STACK[0x4F0] + (v1498[15] ^ 0x8CLL)) + (v1498[15] ^ 0x7B) - 122)) ^ 0xBC;
  v178 = STACK[0x700];
  v1491 = (((v176 ^ (2 * (v176 & v107))) & v114) >> v115) | (((v176 ^ (2 * (v176 & v107))) & STACK[0x700]) << v113);
  v179 = STACK[0x6A0];
  v180 = ((((v173 ^ (2 * (v173 & v108))) & v131) >> v115) | (((v173 ^ (2 * (v173 & v108))) & v110) << v113)) ^ (((STACK[0x6A0] & 0x8268012 ^ 0xB74000 ^ (v138 ^ 0x8B7C003) & (STACK[0x6A0] & 0x296E9312 ^ 0x14B74989u)) >> v117) + ((STACK[0x6A0] & 0x48010 ^ 0x140001 ^ (v112 ^ 0x3DEB5B8A) & (STACK[0x6A0] & 0x296E9312 ^ 0x14B74989)) << v119));
  LODWORD(STACK[0x31C]) = v180;
  v181 = STACK[0x650];
  v182 = ((STACK[0x650] & 0x44A10080 ^ 0x288204D0 ^ (v126 ^ 0x135CF923) & (STACK[0x650] & 0x55BDE9A2 ^ 0x2ADEF4D1)) << v113) ^ (((STACK[0x650] & 0x55BDE9A2 ^ 0x2ADEF4D1) & v131) >> v115) ^ (((v175 ^ (2 * (v175 & v107))) & v178) << v119) ^ (((v175 ^ (2 * (v175 & v107))) & v114) >> v117);
  LODWORD(STACK[0x308]) = v182;
  v1494 = ((v131 & (v179 & 0x902EC608 ^ 0xC8176304)) >> v115) ^ ((v179 & 0x802C4008 ^ 0x80144000 ^ (v112 ^ 0x5803A704) & (v179 & 0x902EC608 ^ 0xC8176304)) << v113);
  v183 = ((((v177 ^ (2 * (v177 & v108))) & v131) >> v117) | (((v177 ^ (2 * (v177 & v108))) & v110) << v119)) ^ (((v181 & 0x1C604000 ^ 0x1E600004 ^ (v138 ^ 0x1E604014) & (v181 & 0x3DE06A38 ^ 0x9EF0351C)) >> v117) + ((v181 & 0x2CA04018 ^ 0xCA01018 ^ (v126 ^ 0x93502F24) & (v181 & 0x3DE06A38 ^ 0x9EF0351C)) << v119));
  LODWORD(STACK[0x310]) = v183;
  v184 = v1494 & 0x10000;
  if ((((((v176 ^ (2 * (v176 & v107))) & v114) >> v115) | (((v176 ^ (2 * (v176 & v107))) & v178) << v113)) & v1494 & 0x10000) != 0)
  {
    v184 = -v184;
  }

  v1488 = v184;
  v321 = v174 == 219;
  v185 = (-960728193 * (v180 ^ (LODWORD(STACK[0x524]) - v171))) ^ ((-960728193 * (v180 ^ (LODWORD(STACK[0x524]) - v171))) >> 16);
  v1480 = v185 ^ v183 ^ (v185 >> 8);
  v186 = LODWORD(STACK[0x380]) ^ 0x717EF3FB;
  LODWORD(STACK[0x33C]) = v186;
  v187 = LODWORD(STACK[0x554]) - v186;
  if (v321)
  {
    v188 = LODWORD(STACK[0x554]) - v186;
  }

  else
  {
    v188 = v187 & 0xF164ADC2;
  }

  v189 = -1674859325 * (v185 ^ v183 ^ (v185 >> 8)) - ((-1674859325 * (v185 ^ v183 ^ (v185 >> 8))) >> 16);
  v1483 = 558781011 * ((v189 - (v189 >> 8)) ^ v182);
  v1486 = v188;
  v1477 = HIWORD(v1483);
  v190 = v1477 + v1483 - 2 * v1477 + ((v1477 + v1483 - 2 * v1477) >> 8);
  if ((v190 & 0x8000000) != 0)
  {
    v191 = -134217728;
  }

  else
  {
    v191 = 0x8000000;
  }

  LODWORD(STACK[0x2E4]) = v191;
  v321 = LODWORD(STACK[0x710]) == -45529416;
  LODWORD(STACK[0x524]) = LODWORD(STACK[0x710]) ^ 0xFD4946B8;
  v1451 = LODWORD(STACK[0x504]) ^ 0xDF8ED6E8;
  LODWORD(STACK[0x520]) = ((((v1451 ^ (2 * ((LODWORD(STACK[0x504]) ^ 0x7032E336) & v107)) ^ 0x8E6F04D3) & v110 | v112 & 0x21D3310D) ^ 0x21D3310D) << v119) + (((v1451 ^ (2 * ((LODWORD(STACK[0x504]) ^ 0x7032E336) & v107)) ^ 0xAFBC35DE) & v131) >> v115);
  v192 = LODWORD(STACK[0x460]) ^ (2 * (v107 & (LODWORD(STACK[0x51C]) ^ 0x565EFE42)));
  v193 = (((v112 & 0xBC9A3B4D | v110 & (v192 ^ 0xE80C5FE9)) ^ 0xBC9A3B4D) << v119) + ((v131 & (v192 ^ 0x549664A4)) >> v117);
  LODWORD(STACK[0x300]) = v193;
  v194 = LODWORD(STACK[0x3F0]) ^ (2 * (STACK[0x3F0] & v108));
  v195 = v112;
  v196 = (((v194 ^ 0x412F05BC) & v110 | v112 & 0x412F05BC) ^ 0x412F05BC) << v113;
  LODWORD(STACK[0x51C]) = (((v194 & v131) >> v117) + 185112529 + (~(2 * ((v194 & v131) >> v117)) | 0xE9EED05F)) ^ 0xB4F121DF ^ (v196 - ((2 * v196) & 0x7FF36C1E) - 1074153969);
  v197 = LODWORD(STACK[0x3E8]) ^ (2 * (STACK[0x3E8] & v107));
  v198 = ((v197 & v131) >> v117) - ((2 * ((v197 & v131) >> v117)) & 0x196510C2) - 1934456735;
  v199 = (((v197 ^ 0xCB3E3055) & v110 | v112 & 0xCB3E3055) ^ 0xCB3E3055) << v119;
  LODWORD(STACK[0x518]) = v198 & 0x7565BCB2 ^ 0x8EBACB6D ^ ((v199 - ((2 * v199) & 0x2977897C) + 347849918) ^ 0x9E2187F3) & (v198 ^ 0x734D779E);
  v200 = LODWORD(STACK[0x658]) ^ (2 * (v108 & STACK[0x658]));
  v201 = (v138 & 0x5736973A ^ v114 & (v200 ^ 0x5736973A) ^ 0x10) >> v115;
  v202 = (((v200 ^ 0x34B17B29) & v110 | v112 & 0x34B17B29) ^ 0x34B17B29) << v113;
  v203 = (v202 - ((2 * v202) & 0xAEFA5A58) - 679662292) ^ (v201 - ((2 * v201) & 0x756B6FFE) + 984987647) ^ 0xEDC89AD3;
  HIDWORD(v204) = STACK[0x470];
  LODWORD(v204) = STACK[0x470];
  LODWORD(v204) = (v204 >> 20) ^ __ROR4__(v107 & STACK[0x470], 19) ^ 0x6297FD40;
  HIDWORD(v204) = v204;
  v205 = v204 >> 12;
  v206 = (v205 & 0x6F09E353 ^ 0x44002153 ^ (v138 ^ 0x6F09E342) & (v205 ^ 0xD406297F)) >> v117;
  v207 = ((v195 & 0x6D36E0F9 | v110 & (v205 ^ 0xB930C986)) ^ 0x6D36E0F9) << v113;
  LODWORD(STACK[0x508]) = (v206 - ((2 * v206) & 0xFD8EFD4A) - 20480347) & 0x198D254D ^ 0xFEF7FEB7 ^ ((v206 - ((2 * v206) & 0xFD8EFD4A) - 20480347) ^ 0x138815A) & ((v207 - ((2 * v207) & 0xC231F216) + 1629026571) ^ 0x876A23B9);
  v1449 = LODWORD(STACK[0x4FC]) ^ 0x47791A8C;
  LODWORD(STACK[0x4F0]) = ((((v1449 ^ (2 * ((LODWORD(STACK[0x4FC]) ^ 0x39063EFA) & v107)) ^ 0x729384DF) & v110 | v195 & 0xCECA0A9) ^ 0xCECA0A9) << v113) + ((v138 & 0x46D9B053 ^ 0x11 ^ (v1449 ^ (2 * ((LODWORD(STACK[0x4FC]) ^ 0x39063EFA) & v107)) ^ 0x38A69425) & v114) >> v115);
  v208 = LODWORD(STACK[0x654]) ^ (2 * (STACK[0x654] & v107));
  v209 = (((v208 ^ 0xAB71ED5B) & v110 | v195 & 0xAB71ED5B) ^ 0xAB71ED5B) << v113;
  LODWORD(STACK[0x504]) = (((v208 & v131) >> v115) - ((2 * ((v208 & v131) >> v115)) & 0xABB5DCC6) - 707072413) ^ 0xA71C6B43 ^ (v209 - ((2 * v209) & 0xE58D0A40) + 1925612832);
  v210 = LODWORD(STACK[0x390]) ^ (2 * ((LODWORD(STACK[0x500]) ^ 0x7AE609C9) & v108));
  LODWORD(STACK[0x510]) = ((((v210 ^ 0x6FDE1B88) & v110 | v195 & 0xD31BCF7D) ^ 0xD31BCF7D) << v113) + ((v138 & 0xA36E69DB ^ 0x11 ^ (v210 ^ 0x1FABBD2E) & v114) >> v115);
  v211 = LODWORD(STACK[0x610]) ^ (2 * (v107 & STACK[0x610]));
  v212 = (v138 & 0x147517F3 ^ 0x11 ^ v114 & (v211 ^ 0x147517F3)) >> v117;
  v213 = ((v195 & 0xBFC291EB | v110 & (v211 ^ 0xBFC291EB)) ^ 0xBFC291EB) << v113;
  LODWORD(STACK[0x4FC]) = (v213 - ((2 * v213) & 0x150916B8) + 176458588) ^ (v212 - ((2 * v212) & 0x36F33F4C) + 460955558) ^ 0x11FD14FA;
  v1447 = LODWORD(STACK[0x4F8]) ^ 0x76F9C5F8;
  v214 = v1447 ^ (2 * ((LODWORD(STACK[0x4F8]) ^ 0x4116FC93) & v108));
  v215 = ((v214 ^ 0x48AE4A21) & v114 ^ v138 & 0xFF41734A) >> v115;
  v216 = (((v214 ^ 0x24933B47) & v178 | v126 & 0x937C022C) ^ 0x937C022C) << v113;
  LODWORD(STACK[0x4F8]) = (v215 - ((2 * v215) & 0x99145ADE) + 1284124015) & 0xDB40807 ^ 0xFECBFFFF ^ ((v216 - ((2 * v216) & 0x2071E28) + 17010452) ^ 0xF34878EC) & ((v215 - ((2 * v215) & 0x99145ADE) + 1284124015) ^ 0xB375D290);
  v217 = LODWORD(STACK[0x468]) ^ (2 * (v107 & STACK[0x468]));
  v218 = ((v114 & v217) >> v117) - ((2 * ((v114 & v217) >> v117)) & 0x81FE42C8) - 1057021596;
  v219 = ((v126 & 0x2D23EC68 | v178 & (v217 ^ 0x2D23EC68)) ^ 0x2D23EC68) << v113;
  LODWORD(STACK[0x500]) = (v219 - ((2 * v219) & 0x4D96CCD4) + 650864234) ^ v218 ^ 0xE634470E;
  v220 = LODWORD(STACK[0x3BC]) ^ (2 * ((LODWORD(STACK[0x328]) ^ 0x8184552) & v108));
  v221 = STACK[0x334];
  v222 = LODWORD(STACK[0x334]) ^ LODWORD(STACK[0x37C]);
  LODWORD(STACK[0x37C]) = v222;
  v1439 = v221 ^ LODWORD(STACK[0x590]) ^ (((v114 & (v220 ^ 0xCABC2E10) ^ v138 & 0x5A2F8488) >> v117) + (((v126 & 0xB0CB948B | v178 & (v220 ^ 0x20583E13)) ^ 0xB0CB948B) << v119));
  v223 = LODWORD(STACK[0x670]) ^ (2 * (v107 & STACK[0x670]));
  v224 = ((v126 & 0x1B31BA92 | v178 & (v223 ^ 0x1B31BA92)) ^ 0x1B31BA92) << v119;
  v225 = (v138 & 0x50BDEAB7 ^ 0x11 ^ v114 & (v223 ^ 0x50BDEAB7)) >> v117;
  v1497 = LODWORD(STACK[0x5A0]) ^ LODWORD(STACK[0x59C]);
  LODWORD(STACK[0x590]) = v1497 ^ (v224 - ((2 * v224) & 0x91866578) - 926731588) & 0xE4B2B374 ^ ((v225 - ((2 * v225) & 0x7886568) - 2084293964) ^ 0x98897E3F) & ((v224 - ((2 * v224) & 0x91866578) - 926731588) ^ 0x373CCD43) ^ 0xDF55BC3;
  v226 = LODWORD(STACK[0x3B8]) ^ (2 * (STACK[0x3B8] & v107));
  v227 = ((v226 & v131) >> v115) - ((2 * ((v226 & v131) >> v115)) & 0xEA9C1722) + 1968049041;
  v228 = (((v226 ^ 0x1A9AF77) & v110 | v195 & 0x1A9AF77) ^ 0x1A9AF77) << v113;
  LODWORD(STACK[0x334]) = v222 ^ v227 & 0xA1AA7258 ^ ((v228 - ((2 * v228) & 0x889BA0) - 2143007280) ^ 0xDE11C077) & (v227 ^ 0x8AB1F46E);
  v229 = LODWORD(STACK[0x3DC]) ^ (2 * (STACK[0x3DC] & v108));
  v230 = ((v229 & v114) >> v117) - ((2 * ((v229 & v114) >> v117)) & 0xEE04EC42) + 1996650017;
  v231 = (((v229 ^ 0xD28C96C7) & v110 | v195 & 0xD28C96C7) ^ 0xD28C96C7) << v113;
  LODWORD(STACK[0x328]) = v1497 ^ v230 & 0x8B3FFCF0 ^ ((v231 - ((2 * v231) & 0xD5465ECC) - 358404250) ^ 0x9E632C69) & (v230 ^ 0x88FD89DE);
  v232 = LODWORD(STACK[0x3EC]) ^ (2 * (STACK[0x3EC] & v108));
  v233 = (((v232 ^ 0x9785EAD7) & v178 | v126 & 0x9785EAD7) ^ 0x9785EAD7) << v119;
  LODWORD(STACK[0x2E8]) = (v233 - ((2 * v233) & 0xEC58BB70) + 1982619064) & 0x8316010F ^ 0x7EEDFFF8 ^ ((v233 - ((2 * v233) & 0xEC58BB70) + 1982619064) ^ 0x89D3A247) & ((((v232 & v131) >> v117) - ((2 * ((v232 & v131) >> v117)) & 0x1323A8E0) - 1986931600) ^ 0xF5782A80);
  v234 = LODWORD(STACK[0x3B0]) ^ (2 * ((LODWORD(STACK[0x324]) ^ 0x67E952BA) & v107));
  v235 = (v138 & 0xC6E02A1 ^ (v234 ^ 0x498BE6EE) & v114 ^ 1) >> v115;
  v236 = (((v234 ^ 0x7F71592A) & v110 | v195 & 0x3A94BD65) ^ 0x3A94BD65) << v113;
  LODWORD(STACK[0x2F8]) = (v235 - ((2 * v235) & 0x7DD2E3D8) - 1091997204) & 0xFCF5459A ^ 0xBFEBFBED ^ ((v236 - ((2 * v236) & 0x3045CCAA) - 1742543275) ^ 0x9B285C30) & ((v235 - ((2 * v235) & 0x7DD2E3D8) - 1091997204) ^ 0x41168E13);
  v237 = LODWORD(STACK[0x678]) ^ (2 * (v107 & STACK[0x678]));
  LODWORD(STACK[0x4D8]) = (((v195 & 0xB143BC05 | v110 & (v237 ^ 0xB143BC05)) ^ 0xB143BC05) << v119) + ((v131 & v237) >> v117);
  v238 = LODWORD(STACK[0x3E4]) ^ (2 * (STACK[0x3E4] & v108));
  v239 = ((v238 & v131) >> v115) - ((2 * ((v238 & v131) >> v115)) & 0xA382B9A8) - 775856940;
  v240 = (((v238 ^ 0xD1B13D90) & v110 | v195 & 0xD1B13D90) ^ 0xD1B13D90) << v113;
  LODWORD(STACK[0x4E0]) = (v240 - 738435759 + (~(2 * v240) | 0x5807455F)) ^ v239 ^ 0x23D0184;
  v241 = LODWORD(STACK[0x62C]) ^ (2 * (v108 & STACK[0x62C]));
  LODWORD(STACK[0x4E8]) = ((v114 & v241) >> v115) + ((((v241 ^ 0x9B4265AA) & v110 | v195 & 0x9B4265AA) ^ 0x9B4265AA) << v113);
  v242 = 2 * (STACK[0x3E0] & v107);
  v243 = v242 ^ LODWORD(STACK[0x3B4]);
  v244 = (((v243 ^ 0x189FC1BD) & v110 | v195 & 0x4638BE51) ^ 0x4638BE51) << v113;
  v245 = (v243 & 0x3EC23821 ^ (v138 ^ 0x3EC23830) & (v242 ^ LODWORD(STACK[0x3E0])) ^ 0x1E823820u) >> v115;
  LODWORD(STACK[0x2F0]) = (v244 - ((2 * v244) & 0x39EB7666) - 1661617357) ^ (v245 - ((2 * v245) & 0x465603A2) - 1557462575) ^ 0x3FDEBAE2;
  v246 = LODWORD(STACK[0x384]) ^ (2 * ((LODWORD(STACK[0x388]) ^ 0x38EEA8E8) & v108));
  v247 = v114;
  LODWORD(STACK[0x2FC]) = ((((v246 ^ 0xC000E2CA) & v110 | v195 & 0x4E8F1B1) ^ 0x4E8F1B1) << v119) + (((v246 ^ 0x6ED168F3) & v114 ^ v138 & 0xAA397B88) >> v115);
  v248 = LODWORD(STACK[0x3F8]) ^ (2 * (v107 & STACK[0x3F8]));
  v1436 = (((v126 & 0x7BB7BE57 | v178 & (v248 ^ 0x7BB7BE57)) ^ 0x7BB7BE57) << v113) + ((v131 & v248) >> v115);
  v1446 = LODWORD(STACK[0x338]) ^ (2 * (v108 & STACK[0x400]));
  v1448 = LODWORD(STACK[0x434]) ^ (2 * (v107 & STACK[0x414]));
  v1440 = LODWORD(STACK[0x42C]) ^ (2 * (v107 & STACK[0x42C]));
  v1441 = LODWORD(STACK[0x5B8]) ^ (2 * (v108 & STACK[0x5B8]));
  v1450 = LODWORD(STACK[0x430]) ^ (2 * (v107 & STACK[0x430]));
  v249 = LODWORD(STACK[0x5A8]) ^ (2 * (v108 & STACK[0x5A8]));
  v250 = v178;
  LODWORD(STACK[0x324]) = ((v138 & 0x50E56BE3 ^ v247 & (v249 ^ 0x50E56BE3) ^ 1) >> v117) + (((v126 & 0xEAB31031 | v178 & (v249 ^ 0xEAB31031)) ^ 0xEAB31031) << v119);
  v251 = LODWORD(STACK[0x5B4]) ^ (2 * (v108 & STACK[0x5B4]));
  v252 = ((v126 & 0x7FFD77F0 | v178 & (v251 ^ 0x7FFD77F0)) ^ 0x7FFD77F0) << v119;
  v1435 = (v252 - ((2 * v252) & 0x6FC64014) - 1209851894) ^ (((v251 & v131) >> v117) - ((2 * ((v251 & v131) >> v117)) & 0x246C6594) + 305541834);
  v253 = LODWORD(STACK[0x408]) ^ (2 * (v107 & STACK[0x408]));
  LODWORD(STACK[0x5B8]) = (((v126 & 0xA366AD94 | v178 & (v253 ^ 0xA366AD94)) ^ 0xA366AD94) << v119) + ((v131 & v253) >> v117);
  v254 = LODWORD(STACK[0x5C4]) ^ (2 * (v108 & STACK[0x5C4]));
  v255 = ((v254 & v131) >> v117) - ((2 * ((v254 & v131) >> v117)) & 0x7E84B428) + 1061313044;
  v256 = (((v254 ^ 0x661643A7) & v110 | v195 & 0x661643A7) ^ 0x661643A7) << v119;
  LODWORD(STACK[0x5C4]) = v255 & 0x898BD41F ^ 0x7F767BF4 ^ ((v256 - ((2 * v256) & 0xB5FC2C1A) + 1526601229) ^ 0x2C8A3DED) & (v255 ^ 0xC0BDA5EB);
  v257 = LODWORD(STACK[0x340]) ^ (2 * (v107 & STACK[0x340]));
  v258 = ((v126 & 0x8676D70D | v178 & (v257 ^ 0x8676D70D)) ^ 0x8676D70D) << v113;
  LODWORD(STACK[0x5B4]) = (((v131 & v257) >> v115) - ((2 * ((v131 & v257) >> v115)) & 0xE991EC6A) + 1959327285) ^ 0xFE7DE29D ^ (v258 - ((2 * v258) & 0x156A2950) - 1967844184);
  v259 = LODWORD(STACK[0x438]) ^ (2 * (v108 & STACK[0x418]));
  v260 = (v247 & (v259 ^ 0x38E6E8EB) ^ v138 & 0xE35CFA80) >> v117;
  v261 = ((v126 & 0xE89DC004 | v178 & (v259 ^ 0x3327D26F)) ^ 0xE89DC004) << v113;
  LODWORD(STACK[0x5A8]) = (v260 - ((2 * v260) & 0xD03D098C) - 400653114) & 0xD3B68508 ^ 0xEC5FFEF7 ^ ((v260 - ((2 * v260) & 0xD03D098C) - 400653114) ^ 0x17E17B39) & ((v261 - ((2 * v261) & 0x1B0D39CC) - 1920557850) ^ 0xA1CFE611);
  v262 = LODWORD(STACK[0x350]) ^ (2 * (v108 & STACK[0x350]));
  v263 = ((v126 & 0xEB10391E | v178 & (v262 ^ 0xEB10391E)) ^ 0xEB10391E) << v119;
  v264 = (v247 & (v262 ^ 0xAFFB88CA) ^ v138 & 0xAFFB88CA) >> v115;
  LODWORD(STACK[0x438]) = (v263 - ((2 * v263) & 0xE8877922) - 196887407) ^ (v264 - ((2 * v264) & 0x7084B634) + 943872794) ^ 0xCC01E78B;
  v265 = LODWORD(STACK[0x5CC]) ^ (2 * (v108 & STACK[0x5CC]));
  v266 = ((v265 & v131) >> v117) - ((2 * ((v265 & v131) >> v117)) & 0x916EDA90) + 1219980616;
  v267 = ((v126 & 0xAB6F7557 | v178 & (v265 ^ 0xAB6F7557)) ^ 0xAB6F7557) << v113;
  LODWORD(STACK[0x5CC]) = v266 ^ 0x8A8F7CEE ^ (v267 - ((2 * v267) & 0x8470234C) - 1036512858);
  v268 = LODWORD(STACK[0x354]) ^ (2 * (v107 & STACK[0x354]));
  v269 = ((v126 & 0xCCAE87A6 | v178 & (v268 ^ 0xCCAE87A6)) ^ 0xCCAE87A6) << v113;
  v270 = v138;
  v271 = (v247 & (v268 ^ 0xB18F4706) ^ v138 & 0xB18F4706) >> v117;
  LODWORD(STACK[0x434]) = (v269 - ((2 * v269) & 0x91AF4CEE) + 1222092407) & 0xDFA97D89 ^ 0x68D7A677 ^ ((v271 - ((2 * v271) & 0x374A252C) - 1683680618) ^ 0xBBF390E0) & ((v269 - ((2 * v269) & 0x91AF4CEE) + 1222092407) ^ 0xB7285988);
  v272 = LODWORD(STACK[0x5D0]) ^ (2 * (v107 & STACK[0x5D0]));
  v273 = ((v126 & 0xDC44889B | v178 & (v272 ^ 0xDC44889B)) ^ 0xDC44889B) << v119;
  LODWORD(STACK[0x5D0]) = (v273 - ((2 * v273) & 0x194584CC) - 1935490458) & 0x9398869D ^ 0xECE7FB66 ^ ((v273 - ((2 * v273) & 0x194584CC) - 1935490458) ^ 0x735D3D99) & ((((v131 & v272) >> v117) - ((2 * ((v131 & v272) >> v117)) & 0xEFCB3328) + 2011535764) ^ 0x1B82E0F6);
  v274 = LODWORD(STACK[0x358]) ^ (2 * (v107 & STACK[0x348]));
  v275 = ((v131 & (v274 ^ 0x81478320)) >> v117) - 1792813098 + (~(2 * ((v131 & (v274 ^ 0x81478320)) >> v117)) | 0xD5B85055);
  v276 = ((v195 & 0xE3070FB4 | v110 & (v274 ^ 0x62408C94)) ^ 0xE3070FB4) << v119;
  LODWORD(STACK[0x430]) = v275 ^ 0xAAB5757 ^ (v276 - ((2 * v276) & 0x3F110104) - 1618444158);
  v277 = LODWORD(STACK[0x5D4]) ^ (2 * (v108 & STACK[0x5D4]));
  v278 = ((v126 & 0x1C342DD1 | v178 & (v277 ^ 0x1C342DD1)) ^ 0x1C342DD1) << v113;
  v279 = (v278 - ((2 * v278) & 0x706AA6D8) + 943018860) ^ (((v247 & v277) >> v115) - ((2 * ((v247 & v277) >> v115)) & 0xA41DF490) + 1376713288) ^ 0x6A3BA924;
  v280 = LODWORD(STACK[0x5D8]) ^ (2 * (v108 & STACK[0x5D8]));
  v281 = v195;
  v282 = ((((v280 ^ 0xCDD2BFCF) & v110 | v195 & 0xCDD2BFCF) ^ 0xCDD2BFCF) << v119) + ((v280 & v131) >> v117);
  v283 = LODWORD(STACK[0x420]) ^ (2 * (v108 & (LODWORD(STACK[0x458]) ^ 0x7DF7FFED)));
  v284 = (v283 & 0x412F2803 ^ 0x12C0003 ^ (v270 ^ 0x412F2812) & (v283 ^ 0x8B2C801F)) >> v115;
  v285 = ((v126 & 0x60D512FF | v178 & (v283 ^ 0xEBF992E0)) ^ 0x60D512FF) << v119;
  v286 = (v284 - ((2 * v284) & 0x61AAAF70) - 1328195656) & 0x46EBD420 ^ 0xB9D57FFF ^ ((v284 - ((2 * v284) & 0x61AAAF70) - 1328195656) ^ 0x4F2AA847) & ((v285 - ((2 * v285) & 0xAC84E338) + 1447195036) ^ 0xEF565A43);
  v287 = LODWORD(STACK[0x360]) ^ (2 * (v108 & STACK[0x360]));
  v288 = v131;
  v289 = (((v126 & 0x48EAAE81 | v178 & (v287 ^ 0x48EAAE81)) ^ 0x48EAAE81) << v119) + ((v287 & v131) >> v117);
  v290 = LODWORD(STACK[0x370]) ^ (2 * (v108 & STACK[0x370]));
  v291 = ((v290 & v288) >> v115) - ((2 * ((v290 & v288) >> v115)) & 0x68C94894) + 879010890;
  v292 = (((v290 ^ 0x5D211E62) & v110 | v281 & 0x5D211E62) ^ 0x5D211E62) << v113;
  v293 = (v292 - ((2 * v292) & 0x5BFFFF90) - 1375731768) ^ v291 ^ 0x999B5B82;
  v294 = LODWORD(STACK[0x450]) ^ (2 * (v107 & STACK[0x450]));
  v295 = ((v288 & v294) >> v117) - ((2 * ((v288 & v294) >> v117)) & 0x8C2B6E48) - 971655388;
  v296 = ((v281 & 0x23953453 | v110 & (v294 ^ 0x23953453)) ^ 0x23953453) << v119;
  v297 = v295 ^ 0x4EDFA0E8 ^ (v296 - ((2 * v296) & 0x11942F98) - 2000021556);
  v298 = LODWORD(STACK[0x478]) ^ (2 * (v108 & STACK[0x368]));
  v299 = ((v126 & 0x3433950A | v250 & (v298 ^ 0x613E7EFB)) ^ 0x3433950A) << v113;
  v300 = (v247 & (v298 ^ 0x426A5CD3) ^ v270 & 0x1767B722) >> v117;
  v301 = (v299 - ((2 * v299) & 0xAE3C7172) - 685885255) & 0x4DE501BE ^ 0xF71EFEF9 ^ ((v300 - ((2 * v300) & 0x7D7A7B30) + 1052589464) ^ 0x8CA7C3D9) & ((v299 - ((2 * v299) & 0xAE3C7172) - 685885255) ^ 0x28E1C746);
  v302 = (v1488 + v1491) ^ v1494 & 0xFFFEFFFF;
  v303 = v1486 | v187 & 0xE9B523D;
  v304 = (-960728193 * (LODWORD(STACK[0x31C]) ^ v187)) ^ ((-960728193 * (LODWORD(STACK[0x31C]) ^ v187)) >> 16);
  v305 = -1674859325 * (v304 ^ LODWORD(STACK[0x310]) ^ (v304 >> 8));
  v306 = 558781011 * ((v305 - HIWORD(v305) - ((v305 - HIWORD(v305)) >> 8)) ^ LODWORD(STACK[0x308]));
  v307 = v306 - HIWORD(v306) + v302 + ((v306 - HIWORD(v306)) >> 8);
  v308 = ((v307 + v193) ^ v307) - 2 * v307 + 2 * ((v307 + v193) & v307);
  v309 = v189 ^ LODWORD(STACK[0x648]) ^ ((v189 | 0x5BDEEBFF) - ((v189 | 0x5BDEEBFF) ^ v189));
  v310 = ((LODWORD(STACK[0x2E4]) + v190) ^ 0x8000000) + (v1439 ^ 0x78263B55) - v190;
  v1433 = v302;
  v311 = STACK[0x750];
  v312 = -57842243 * (v190 + v302) - ((-57842243 * (v190 + v302)) >> 16) + STACK[0x750] - ((-57842243 * (v190 + v302) - ((-57842243 * (v190 + v302)) >> 16)) >> 8);
  v313 = -57842243 * (v1483 - v1477 + v302 + ((v1483 - v1477) >> 8));
  v314 = v303 - LODWORD(STACK[0x554]);
  v315 = v303 + LODWORD(STACK[0x33C]);
  v316 = v315 + v314;
  if (!v321)
  {
    v316 = (v315 + v314) & 0x2C8939C6;
  }

  v317 = v316 | (v315 + v314) & 0xD376C639;
  v318 = v315 - v317;
  LODWORD(STACK[0x304]) = v203;
  v319 = (v1480 ^ v203) - v1480 + 2 * (v1480 & v203);
  STACK[0x710] = v312 + LODWORD(STACK[0x618]);
  v1434 = v313 - HIWORD(v313);
  v320 = v1434 - (v1434 >> 8) + v311;
  LODWORD(STACK[0x2E4]) = v320;
  v321 = (v320 & 1) == 0;
  if (v320)
  {
    v322 = v293;
  }

  else
  {
    v322 = v297;
  }

  LODWORD(STACK[0x450]) = v322;
  if (v321)
  {
    v323 = v293;
  }

  else
  {
    v323 = v289;
  }

  LODWORD(STACK[0x478]) = v323;
  if (v321)
  {
    v324 = v289;
  }

  else
  {
    v324 = v301;
  }

  v1469 = v324;
  if (v321)
  {
    v325 = v301;
  }

  else
  {
    v325 = v297;
  }

  v1471 = v325;
  v326 = STACK[0x430];
  if (v321)
  {
    v327 = STACK[0x430];
  }

  else
  {
    v327 = v286;
  }

  if (v321)
  {
    v326 = v279;
  }

  v1489 = v326;
  if (v321)
  {
    v328 = v286;
  }

  else
  {
    v328 = v282;
  }

  v1481 = v328;
  if (v321)
  {
    v329 = v282;
  }

  else
  {
    v329 = v279;
  }

  v1473 = v329;
  v1475 = v327;
  v330 = STACK[0x438];
  v331 = STACK[0x5D0];
  if (v321)
  {
    v332 = STACK[0x438];
  }

  else
  {
    v332 = STACK[0x5D0];
  }

  LODWORD(STACK[0x458]) = v332;
  if (v321)
  {
    v330 = STACK[0x5CC];
  }

  v1484 = v330;
  v333 = STACK[0x434];
  if (!v321)
  {
    v331 = STACK[0x434];
  }

  v1478 = v331;
  if (!v321)
  {
    v333 = STACK[0x5CC];
  }

  LODWORD(STACK[0x338]) = v333;
  v334 = STACK[0x5B4];
  v335 = STACK[0x5A8];
  if (v321)
  {
    v336 = STACK[0x5A8];
  }

  else
  {
    v336 = STACK[0x5B4];
  }

  v1495 = v336;
  v337 = STACK[0x5C4];
  if (!v321)
  {
    v334 = STACK[0x5C4];
  }

  LODWORD(STACK[0x618]) = v334;
  v338 = STACK[0x5B8];
  if (v321)
  {
    v335 = STACK[0x5B8];
  }

  LODWORD(STACK[0x348]) = v335;
  if (v321)
  {
    v338 = v337;
  }

  v1492 = v338;
  v1442 = LODWORD(STACK[0x320]) ^ (2 * (STACK[0x320] & v108));
  v1444 = LODWORD(STACK[0x440]) ^ (2 * (v108 & STACK[0x440]));
  v1445 = a60 ^ (2 * (a60 & v107));
  v1443 = a59 ^ (2 * (a59 & v108));
  if (v321)
  {
    v339 = STACK[0x320];
  }

  else
  {
    v339 = STACK[0x440];
  }

  v1430 = v339;
  if (v321)
  {
    v340 = STACK[0x440];
  }

  else
  {
    v340 = a60;
  }

  v1452 = v340;
  if (v321)
  {
    v341 = a59;
  }

  else
  {
    v341 = STACK[0x320];
  }

  v1432 = v341;
  if (v321)
  {
    v342 = a60;
  }

  else
  {
    v342 = a59;
  }

  v1428 = v342;
  if (v321)
  {
    v343 = STACK[0x5FC];
  }

  else
  {
    v343 = STACK[0x448];
  }

  v1454 = v343;
  if (v321)
  {
    v344 = STACK[0x43C];
  }

  else
  {
    v344 = STACK[0x5FC];
  }

  v1429 = v344;
  if (v321)
  {
    v345 = STACK[0x614];
  }

  else
  {
    v345 = STACK[0x43C];
  }

  v1431 = v345;
  if (v321)
  {
    v346 = STACK[0x448];
  }

  else
  {
    v346 = STACK[0x614];
  }

  v1427 = v346;
  v347 = LODWORD(STACK[0x334]) ^ 0x8A775BD3;
  v348 = STACK[0x590];
  if (v321)
  {
    v349 = STACK[0x590];
  }

  else
  {
    v349 = v310;
  }

  if (v321)
  {
    v350 = v310;
  }

  else
  {
    v350 = LODWORD(STACK[0x328]) ^ 0xA1F85253;
  }

  v351 = LODWORD(STACK[0x328]) ^ 0xA1F85253;
  v1438 = v351;
  v352 = STACK[0x500];
  if (v321)
  {
    v353 = v315 - v317;
  }

  else
  {
    v353 = STACK[0x500];
  }

  v354 = STACK[0x2E8];
  if (v321)
  {
    v355 = STACK[0x2E8];
  }

  else
  {
    v355 = v318;
  }

  v356 = STACK[0x4F0];
  if (v321)
  {
    v357 = STACK[0x4F0];
  }

  else
  {
    v357 = v319;
  }

  LODWORD(STACK[0x5CC]) = v357;
  v358 = STACK[0x518];
  if (!v321)
  {
    v319 = STACK[0x518];
  }

  LODWORD(STACK[0x614]) = v319;
  v359 = STACK[0x2F0];
  if (v321)
  {
    v360 = STACK[0x2F0];
  }

  else
  {
    v360 = v317 - v314;
  }

  LODWORD(STACK[0x5D8]) = v360;
  v361 = STACK[0x2FC];
  if (v321)
  {
    v362 = v317 - v314;
  }

  else
  {
    v362 = STACK[0x2FC];
  }

  LODWORD(STACK[0x5FC]) = v362;
  if (v321)
  {
    v359 = v308;
  }

  LODWORD(STACK[0x5D4]) = v359;
  if (v321)
  {
    v363 = v361;
  }

  else
  {
    v363 = v308;
  }

  LODWORD(STACK[0x5D0]) = v363;
  v364 = STACK[0x540];
  if (v321)
  {
    v365 = v309;
  }

  else
  {
    v365 = STACK[0x540];
  }

  LODWORD(STACK[0x5B8]) = v365;
  v366 = STACK[0x538];
  if (v321)
  {
    v367 = STACK[0x538];
  }

  else
  {
    v367 = v309;
  }

  LODWORD(STACK[0x5B4]) = v367;
  v1437 = v347;
  if (v321)
  {
    v368 = v351;
  }

  else
  {
    v368 = v347;
  }

  if (v321)
  {
    v369 = v347;
  }

  else
  {
    v369 = v348;
  }

  v370 = STACK[0x2F8];
  if (v321)
  {
    v371 = v352;
  }

  else
  {
    v371 = STACK[0x2F8];
  }

  if (v321)
  {
    v372 = STACK[0x4F8];
  }

  else
  {
    v370 = v354;
    v372 = STACK[0x4FC];
  }

  if (v321)
  {
    v373 = STACK[0x510];
  }

  else
  {
    v373 = STACK[0x4F8];
  }

  if (v321)
  {
    v374 = STACK[0x504];
  }

  else
  {
    v374 = STACK[0x510];
  }

  if (v321)
  {
    v375 = STACK[0x4FC];
  }

  else
  {
    v375 = STACK[0x504];
  }

  if (v321)
  {
    v376 = STACK[0x508];
  }

  else
  {
    v376 = v356;
  }

  if (v321)
  {
    v377 = v358;
  }

  else
  {
    v377 = STACK[0x508];
  }

  if (v321)
  {
    v378 = STACK[0x51C];
  }

  else
  {
    v378 = STACK[0x4E8];
  }

  if (v321)
  {
    v379 = STACK[0x4E0];
  }

  else
  {
    v379 = STACK[0x4D8];
  }

  if (v321)
  {
    v380 = STACK[0x4D8];
  }

  else
  {
    v380 = STACK[0x51C];
  }

  if (v321)
  {
    v381 = STACK[0x4E8];
  }

  else
  {
    v381 = STACK[0x4E0];
  }

  if (v321)
  {
    v382 = STACK[0x520];
  }

  else
  {
    v382 = STACK[0x524];
  }

  if (v321)
  {
    v383 = STACK[0x534];
  }

  else
  {
    v383 = STACK[0x520];
  }

  if (v321)
  {
    v384 = STACK[0x524];
  }

  else
  {
    v384 = STACK[0x528];
  }

  if (v321)
  {
    v385 = STACK[0x528];
  }

  else
  {
    v385 = STACK[0x534];
  }

  v386 = STACK[0x560];
  if (v321)
  {
    v366 = STACK[0x560];
  }

  LODWORD(STACK[0x440]) = v366;
  if (v321)
  {
    v387 = v364;
  }

  else
  {
    v387 = v386;
  }

  v388 = STACK[0x570];
  v389 = STACK[0x548];
  if (v321)
  {
    v390 = STACK[0x548];
  }

  else
  {
    v390 = STACK[0x570];
  }

  LODWORD(STACK[0x350]) = v390;
  v391 = STACK[0x56C];
  v392 = STACK[0x558];
  if (v321)
  {
    v393 = STACK[0x558];
  }

  else
  {
    v393 = STACK[0x56C];
  }

  LODWORD(STACK[0x354]) = v393;
  if (!v321)
  {
    v388 = v392;
  }

  LODWORD(STACK[0x448]) = v388;
  if (v321)
  {
    v394 = v391;
  }

  else
  {
    v394 = v389;
  }

  v1467 = v394;
  if (v321)
  {
    v395 = STACK[0x578];
  }

  else
  {
    v395 = STACK[0x588];
  }

  v1425 = v395;
  if (v321)
  {
    v396 = STACK[0x574];
  }

  else
  {
    v396 = STACK[0x580];
  }

  v1426 = v396;
  if (v321)
  {
    v397 = STACK[0x580];
  }

  else
  {
    v397 = STACK[0x578];
  }

  if (v321)
  {
    v398 = STACK[0x588];
  }

  else
  {
    v398 = STACK[0x574];
  }

  v399 = (STACK[0x2E4] & 2) == 0;
  if ((STACK[0x2E4] & 2) != 0)
  {
    v400 = v368;
  }

  else
  {
    v400 = v349;
  }

  LODWORD(STACK[0x434]) = v400;
  if (v399)
  {
    v349 = v368;
  }

  v1505 = v349;
  if (v399)
  {
    v401 = v350;
  }

  else
  {
    v401 = v369;
  }

  v1504 = v401;
  if (v399)
  {
    v350 = v369;
  }

  v1487 = v350;
  if (v399)
  {
    v402 = v370;
  }

  else
  {
    v402 = v353;
  }

  LODWORD(STACK[0x438]) = v402;
  if (v399)
  {
    v403 = v353;
  }

  else
  {
    v403 = v370;
  }

  LODWORD(STACK[0x414]) = v403;
  if (v399)
  {
    v404 = v355;
  }

  else
  {
    v404 = v371;
  }

  LODWORD(STACK[0x430]) = v404;
  if (v399)
  {
    v405 = v371;
  }

  else
  {
    v405 = v355;
  }

  LODWORD(STACK[0x340]) = v405;
  if (v399)
  {
    v406 = v372;
  }

  else
  {
    v406 = v374;
  }

  LODWORD(STACK[0x42C]) = v406;
  if (v399)
  {
    v407 = v374;
  }

  else
  {
    v407 = v372;
  }

  LODWORD(STACK[0x388]) = v407;
  if (v399)
  {
    v408 = v375;
  }

  else
  {
    v408 = v373;
  }

  LODWORD(STACK[0x418]) = v408;
  if (v399)
  {
    v409 = v373;
  }

  else
  {
    v409 = v375;
  }

  LODWORD(STACK[0x420]) = v409;
  v410 = STACK[0x5CC];
  if (v399)
  {
    v411 = STACK[0x5CC];
  }

  else
  {
    v411 = v377;
  }

  LODWORD(STACK[0x368]) = v411;
  if (v399)
  {
    v412 = v377;
  }

  else
  {
    v412 = v410;
  }

  LODWORD(STACK[0x360]) = v412;
  v413 = STACK[0x614];
  if (v399)
  {
    v414 = v376;
  }

  else
  {
    v414 = STACK[0x614];
  }

  LODWORD(STACK[0x370]) = v414;
  if (v399)
  {
    v415 = v413;
  }

  else
  {
    v415 = v376;
  }

  LODWORD(STACK[0x400]) = v415;
  if (v399)
  {
    v416 = v378;
  }

  else
  {
    v416 = v379;
  }

  LODWORD(STACK[0x358]) = v416;
  if (v399)
  {
    v417 = v379;
  }

  else
  {
    v417 = v378;
  }

  LODWORD(STACK[0x614]) = v417;
  if (v399)
  {
    v418 = v380;
  }

  else
  {
    v418 = v381;
  }

  LODWORD(STACK[0x3F8]) = v418;
  if (v399)
  {
    v419 = v381;
  }

  else
  {
    v419 = v380;
  }

  LODWORD(STACK[0x3E0]) = v419;
  v420 = STACK[0x5FC];
  v421 = STACK[0x5D4];
  if (v399)
  {
    v422 = STACK[0x5FC];
  }

  else
  {
    v422 = STACK[0x5D4];
  }

  LODWORD(STACK[0x408]) = v422;
  if (v399)
  {
    v423 = v421;
  }

  else
  {
    v423 = v420;
  }

  LODWORD(STACK[0x5FC]) = v423;
  v424 = STACK[0x5D8];
  v425 = STACK[0x5D0];
  if (v399)
  {
    v426 = STACK[0x5D8];
  }

  else
  {
    v426 = STACK[0x5D0];
  }

  LODWORD(STACK[0x5D4]) = v426;
  if (v399)
  {
    v427 = v425;
  }

  else
  {
    v427 = v424;
  }

  LODWORD(STACK[0x320]) = v427;
  if (v399)
  {
    v428 = v384;
  }

  else
  {
    v428 = v383;
  }

  LODWORD(STACK[0x5CC]) = v428;
  if (v399)
  {
    v429 = v383;
  }

  else
  {
    v429 = v384;
  }

  LODWORD(STACK[0x5D8]) = v429;
  if (v399)
  {
    v430 = v385;
  }

  else
  {
    v430 = v382;
  }

  LODWORD(STACK[0x5D0]) = v430;
  if (v399)
  {
    v431 = v382;
  }

  else
  {
    v431 = v385;
  }

  LODWORD(STACK[0x5C4]) = v431;
  if (v399)
  {
    v432 = v1469;
  }

  else
  {
    v432 = STACK[0x450];
  }

  v1456 = v432;
  if (v399)
  {
    v433 = STACK[0x450];
  }

  else
  {
    v433 = v1469;
  }

  v1459 = v433;
  if (v399)
  {
    v434 = v1471;
  }

  else
  {
    v434 = STACK[0x478];
  }

  if (v399)
  {
    v435 = STACK[0x478];
  }

  else
  {
    v435 = v1471;
  }

  v1457 = v434;
  v1458 = v435;
  v436 = STACK[0x5B4];
  if (v399)
  {
    v437 = v387;
  }

  else
  {
    v437 = STACK[0x5B4];
  }

  LODWORD(STACK[0x478]) = v437;
  if (v399)
  {
    v438 = v436;
  }

  else
  {
    v438 = v387;
  }

  LODWORD(STACK[0x450]) = v438;
  v439 = STACK[0x5B8];
  v440 = STACK[0x440];
  if (v399)
  {
    v441 = STACK[0x440];
  }

  else
  {
    v441 = STACK[0x5B8];
  }

  LODWORD(STACK[0x5A8]) = v441;
  if (v399)
  {
    v442 = v439;
  }

  else
  {
    v442 = v440;
  }

  LODWORD(STACK[0x440]) = v442;
  if (v399)
  {
    v443 = v1473;
  }

  else
  {
    v443 = v1475;
  }

  if (v399)
  {
    v444 = v1475;
  }

  else
  {
    v444 = v1473;
  }

  v1462 = v444;
  if (v399)
  {
    v445 = v1489;
  }

  else
  {
    v445 = v1481;
  }

  v1463 = v445;
  if (v399)
  {
    v446 = v1481;
  }

  else
  {
    v446 = v1489;
  }

  v1460 = v443;
  v1461 = v446;
  v447 = STACK[0x448];
  if (v399)
  {
    v448 = v1467;
  }

  else
  {
    v448 = STACK[0x448];
  }

  LODWORD(STACK[0x43C]) = v448;
  if (v399)
  {
    v449 = v447;
  }

  else
  {
    v449 = v1467;
  }

  LODWORD(STACK[0x5B8]) = v449;
  if (v399)
  {
    v450 = v1478;
  }

  else
  {
    v450 = v1484;
  }

  if (v399)
  {
    v451 = v1484;
  }

  else
  {
    v451 = v1478;
  }

  v1466 = v451;
  if (v399)
  {
    v452 = STACK[0x338];
  }

  else
  {
    v452 = STACK[0x458];
  }

  v1468 = v452;
  if (v399)
  {
    v453 = STACK[0x458];
  }

  else
  {
    v453 = STACK[0x338];
  }

  v1464 = v450;
  v1465 = v453;
  if (v399)
  {
    v454 = v398;
  }

  else
  {
    v454 = v397;
  }

  LODWORD(STACK[0x5B4]) = v454;
  if (v399)
  {
    v455 = v397;
  }

  else
  {
    v455 = v398;
  }

  LODWORD(STACK[0x458]) = v455;
  if (v399)
  {
    v456 = v1425;
  }

  else
  {
    v456 = v1426;
  }

  LODWORD(STACK[0x448]) = v456;
  if (v399)
  {
    v457 = v1426;
  }

  else
  {
    v457 = v1425;
  }

  LODWORD(STACK[0x338]) = v457;
  if (v399)
  {
    v458 = v1495;
  }

  else
  {
    v458 = v1492;
  }

  if (v399)
  {
    v459 = v1492;
  }

  else
  {
    v459 = v1495;
  }

  v1474 = v459;
  if (v399)
  {
    v460 = STACK[0x618];
  }

  else
  {
    v460 = STACK[0x348];
  }

  v1470 = v458;
  v1472 = v460;
  if (v399)
  {
    v461 = STACK[0x348];
  }

  else
  {
    v461 = STACK[0x618];
  }

  if (v399)
  {
    v462 = v1428;
  }

  else
  {
    v462 = v1430;
  }

  LODWORD(STACK[0x618]) = v462;
  if (v399)
  {
    v463 = v1430;
  }

  else
  {
    v463 = v1428;
  }

  v1482 = v463;
  if (v399)
  {
    v464 = v1452;
  }

  else
  {
    v464 = v1432;
  }

  LODWORD(STACK[0x348]) = v464;
  if (v399)
  {
    v465 = v1432;
  }

  else
  {
    v465 = v1452;
  }

  v1476 = v461;
  v1479 = v465;
  if (v399)
  {
    v466 = v1427;
  }

  else
  {
    v466 = v1429;
  }

  if (v399)
  {
    v467 = v1429;
  }

  else
  {
    v467 = v1427;
  }

  v1490 = v467;
  v1493 = v466;
  if (v399)
  {
    v468 = v1454;
  }

  else
  {
    v468 = v1431;
  }

  v1485 = v468;
  if (v399)
  {
    v469 = v1431;
  }

  else
  {
    v469 = v1454;
  }

  v1496 = v469;
  v470 = STACK[0x350];
  if (v399)
  {
    v471 = STACK[0x350];
  }

  else
  {
    v471 = STACK[0x354];
  }

  if (v399)
  {
    v470 = STACK[0x354];
  }

  v1453 = v470;
  v1455 = v471;
  v472 = STACK[0x710];
  v473 = STACK[0x308];
  v474 = v1433;
  if (STACK[0x710])
  {
    v475 = v1433;
  }

  else
  {
    v475 = STACK[0x308];
  }

  if (STACK[0x710])
  {
    v474 = STACK[0x310];
    v476 = STACK[0x31C];
  }

  else
  {
    v473 = STACK[0x31C];
    v476 = STACK[0x310];
  }

  v477 = STACK[0x6A0];
  v478 = STACK[0x6A0] & 0xE0CED80 ^ 0x70676C0;
  v479 = STACK[0x6B0];
  v480 = STACK[0x6E8];
  v481 = (STACK[0x6A0] & 0x600C080 ^ 0x60242C0 ^ (LODWORD(STACK[0x6B8]) ^ 0x90C3D00) & v478) << LODWORD(STACK[0x6F0]);
  if ((v472 & 2) != 0)
  {
    v483 = v473;
  }

  else
  {
    v483 = v474;
  }

  v484 = STACK[0x324];
  v485 = LODWORD(STACK[0x324]) ^ v1436;
  v482 = (((STACK[0x6A0] & 0x2000000 ^ 0x3001240 ^ (v479 ^ 0x3001240) & v478) >> LODWORD(STACK[0x6E8])) | v481) ^ v349;
  v486 = v485 ^ v1435 ^ ((v483 ^ v482) - ((2 * (v483 ^ v482)) & 0x4BAA2580) - 1512762688);
  LODWORD(STACK[0x310]) = v486;
  STACK[0x750] = v311 + 4 * BYTE1(v486);
  v487 = STACK[0x650];
  v488 = STACK[0x650] & 0xE0CED80 ^ 0x70676C0;
  v489 = STACK[0x6D0];
  v490 = (STACK[0x650] & 0x40CED80 ^ 0x4066480 ^ v488 & (LODWORD(STACK[0x6C0]) ^ 0xB001240)) << LODWORD(STACK[0x6D0]);
  if ((v472 & 2) != 0)
  {
    v492 = v476;
  }

  else
  {
    v492 = v475;
  }

  v491 = v485 ^ (((STACK[0x650] & 0xC088980 ^ 0x50012C0 ^ (v479 ^ 0xD089BC0) & v488) >> v480) + v490) ^ v401;
  v493 = (v491 ^ v492) - ((2 * (v491 ^ v492)) & 0x4BAA2580);
  v494 = *(v311 + 4 * BYTE1(v486));
  v495 = (v493 - 1512762688) ^ v1435;
  v496 = ((v493 - 64) ^ v1435);
  STACK[0x750] = v311 + 4 * v496;
  LODWORD(STACK[0x31C]) = *(v311 + 4 * v496);
  STACK[0x750] = v311 + 4 * BYTE2(v495);
  if ((v472 & 2) == 0)
  {
    v475 = v476;
  }

  v497 = STACK[0x6A8];
  v498 = STACK[0x6E0];
  v499 = v485 ^ v1435 ^ v481 ^ v350 ^ ((v475 ^ ((v497 & v478) >> v498)) - ((2 * (v475 ^ ((v497 & v478) >> v498))) & 0x4BAA2580) - 1512762688);
  v500 = *(v311 + 4 * BYTE2(v495));
  STACK[0x750] = v311 + 4 * BYTE2(v499);
  if ((v472 & 2) != 0)
  {
    v473 = v474;
  }

  v501 = v490 ^ ((v488 & v497) >> v498) ^ v1436 ^ LODWORD(STACK[0x434]) ^ v473;
  v502 = v1435 ^ v484 ^ (v501 - ((2 * v501) & 0x4BAA2580) - 1512762688);
  v503 = *(v311 + 4 * BYTE2(v499));
  STACK[0x750] = v311 + 4 * ((v1435 ^ v484 ^ (v501 - ((2 * v501) & 0x2580) + 4800)) >> 8);
  v504 = LODWORD(STACK[0x600]) ^ LODWORD(STACK[0x470]) ^ LODWORD(STACK[0x678]) ^ LODWORD(STACK[0x468]) ^ LODWORD(STACK[0x608]) ^ LODWORD(STACK[0x5E8]) ^ LODWORD(STACK[0x658]) ^ LODWORD(STACK[0x5EC]) ^ LODWORD(STACK[0x5E0]) ^ LODWORD(STACK[0x3B4]) ^ LODWORD(STACK[0x3E4]) ^ LODWORD(STACK[0x3B8]) ^ LODWORD(STACK[0x3F0]) ^ v1451 ^ LODWORD(STACK[0x3B0]) ^ LODWORD(STACK[0x390]) ^ LODWORD(STACK[0x39C]) ^ LODWORD(STACK[0x384]);
  v505 = *(v311 + 4 * ((v1435 ^ v484 ^ (v501 - ((2 * v501) & 0x2580) + 4800)) >> 8));
  LODWORD(STACK[0x658]) = v504 ^ (2 * ((v504 ^ 0x5EF3FFB2) & STACK[0x6F8]));
  STACK[0x750] = v311 + 4 * HIBYTE(v495);
  v506 = *(v311 + 4 * HIBYTE(v495));
  STACK[0x750] = v311 + 4 * (v1435 ^ v484 ^ (v501 - ((2 * v501) & 0x80) - 64));
  v507 = *(v311 + 4 * (v1435 ^ v484 ^ (v501 - ((2 * v501) & 0x80) - 64)));
  STACK[0x750] = v311 + 4 * BYTE1(v499);
  v508 = LODWORD(STACK[0x620]) ^ LODWORD(STACK[0x460]) ^ 0x437FB6CD ^ v1499;
  v509 = LODWORD(STACK[0x680]) ^ LODWORD(STACK[0x610]) ^ LODWORD(STACK[0x62C]) ^ LODWORD(STACK[0x5F0]) ^ LODWORD(STACK[0x670]) ^ LODWORD(STACK[0x5C8]) ^ LODWORD(STACK[0x660]) ^ LODWORD(STACK[0x3CC]) ^ LODWORD(STACK[0x3BC]) ^ LODWORD(STACK[0x3A0]) ^ LODWORD(STACK[0x3C8]) ^ LODWORD(STACK[0x3AC]) ^ LODWORD(STACK[0x3EC]) ^ LODWORD(STACK[0x654]) ^ LODWORD(STACK[0x3E8]) ^ LODWORD(STACK[0x3C0]) ^ LODWORD(STACK[0x3DC]) ^ v1447 ^ v1449 ^ ((v508 & 0xCD6157AD ^ 0xA4F92691) & (v508 & 0x329EA852 ^ 0xDDE557FD) | v508 & 0x12068842);
  v510 = *(v311 + 4 * BYTE1(v499));
  LODWORD(STACK[0x670]) = v509 ^ (2 * ((v509 ^ 0x74DC0DE9) & STACK[0x6D8]));
  STACK[0x750] = v311 + 4 * HIBYTE(v499);
  v511 = STACK[0x6B8];
  v512 = v477 & 0x83C1EC08 ^ 0x41E0F604;
  v513 = v477;
  v514 = v477 & 0x6408 ^ 0x207400 ^ (v479 ^ 0x207408) & v512;
  v515 = v489;
  v516 = *(v311 + 4 * HIBYTE(v499));
  v517 = ((v514 >> v498) + ((v477 & 0x81C0C008 ^ 0x41C0C204 ^ (LODWORD(STACK[0x6B8]) ^ 0x2213C00) & v512) << v489)) ^ (v494 >> 8) ^ (v494 << 24);
  STACK[0x750] = v311 + 4 * BYTE1(v495);
  v518 = *(v311 + 4 * BYTE1(v495));
  v519 = STACK[0x310];
  v520 = LODWORD(STACK[0x310]);
  STACK[0x750] = v311 + 4 * LODWORD(STACK[0x310]);
  v521 = *(v311 + 4 * v520);
  STACK[0x750] = v311 + 4 * v499;
  v522 = __ROR4__(*(v311 + 4 * v499), 16);
  STACK[0x750] = v311 + 4 * HIBYTE(v519);
  v523 = *(v311 + 4 * HIBYTE(v519));
  v524 = BYTE2(v502);
  STACK[0x750] = v311 + 4 * BYTE2(v502);
  v502 >>= 24;
  v525 = *(v311 + 4 * v524);
  STACK[0x750] = v311 + 4 * v502;
  v526 = STACK[0x710];
  v527 = v517 ^ v500 ^ v522 ^ STACK[0x710] ^ __ROR4__(*(v311 + 4 * v502), 24);
  v528 = v487 & 0x83C1EC08 ^ 0x41E0F604;
  v529 = STACK[0x6C0];
  v530 = STACK[0x6F0];
  v531 = v497;
  v532 = v528 & v497;
  v533 = STACK[0x6E8];
  v534 = ((v532 >> v533) | ((v487 & 0x101A400 ^ 0x120B600 ^ v528 & (LODWORD(STACK[0x6C0]) ^ 0xC2C0480C)) << v530)) ^ HIBYTE(v516) ^ (v516 << 8) ^ __ROR4__(v518, 8) ^ __ROR4__(v521, 16);
  v535 = ((v514 >> v533) + ((v513 & 0x8001C000 ^ 0x4000D204 ^ (LODWORD(STACK[0x6C0]) ^ 0x3E02C08) & v512) << v530)) ^ (v506 << 8) ^ HIBYTE(v506) ^ __ROR4__(v507, 16) ^ __ROR4__(v510, 8);
  v536 = v487 & 0x3014C00 ^ 0x1004400 ^ (v511 ^ 0xC0E0B20C) & v528;
  LOBYTE(v511) = v515;
  LOBYTE(v513) = v498;
  v537 = ((v536 << v515) + (v532 >> v498)) ^ __ROR4__(STACK[0x31C], 16) ^ v503 ^ __ROR4__(v505, 8) ^ __ROR4__(v523, 24);
  v538 = BYTE2(v519);
  STACK[0x750] = v311 + 4 * v538;
  v539 = ((v529 & 0x40725B51 | STACK[0x698] & (v1440 ^ 0x40725B51)) ^ 0x40725B51) << v515;
  v540 = (((v531 & v1440) >> v533) - ((2 * ((v531 & v1440) >> v533)) & 0xBCE1F5E4) - 563021070) ^ (v539 - 1334662816 + (~(2 * v539) | 0x9F1AAD41));
  v541 = STACK[0x698];
  v542 = v529;
  v543 = (((v1441 ^ 0xFBDD7F9F) & STACK[0x698] | v529 & 0xFBDD7F9F) ^ 0xFBDD7F9F) << v511;
  v544 = (((STACK[0x708] & v1441) >> v533) - ((2 * ((STACK[0x708] & v1441) >> v533)) & 0xB99B70F0) + 1556985976) ^ (v543 - ((2 * v543) & 0xF4353702) - 98919551);
  v545 = LODWORD(STACK[0x2E4]) + LODWORD(STACK[0x630]);
  LODWORD(STACK[0x678]) = v545;
  v546 = v545 ^ v540 ^ LODWORD(STACK[0x340]) ^ (((v527 - ((2 * v527) & 0x4DAE47F2) - 1495849991) ^ v544) + 1845646253 + (~(2 * ((v527 - ((2 * v527) & 0x4DAE47F2) - 1495849991) ^ v544)) | 0x23FB58A5) + 1);
  v547 = *(v311 + 4 * v538);
  STACK[0x750] = v311 + 4 * BYTE2(v546);
  v548 = v311 + LODWORD(STACK[0x480]) + v1434 - (v1434 >> 8);
  LODWORD(STACK[0x680]) = v548;
  v549 = v534 ^ v548 ^ v525 ^ v526 ^ LODWORD(STACK[0x414]);
  v550 = (v549 - ((2 * v549) & 0x4DAE47F2) - 1495849991) ^ v544;
  v551 = *(v311 + 4 * BYTE2(v546));
  STACK[0x750] = v311;
  LODWORD(STACK[0x660]) = *(v311 + 4 * v546);
  v552 = (v550 - ((2 * v550) & 0xDC04A75A) + 1845646253) ^ v540;
  STACK[0x750] = v311 + 4 * ((v550 - ((2 * v550) & 0x5A) - 83) ^ v540);
  v553 = (v537 - ((2 * v537) & 0xDC04A75A) + 1845646253) ^ v540 ^ LODWORD(STACK[0x430]);
  v554 = *(v311 + 4 * ((v550 - ((2 * v550) & 0x5A) - 83) ^ v540));
  v555 = (v553 - ((2 * v553) & 0x4DAE47F2) - 1495849991) ^ v544;
  STACK[0x750] = v311 + 4 * BYTE2(v555);
  LODWORD(STACK[0x654]) = *(v311 + 4 * BYTE2(v555));
  STACK[0x750] = v311 + 4 * BYTE1(v552);
  v556 = ((v535 ^ v547) - ((2 * (v535 ^ v547)) & 0xDC04A75A) + 1845646253) ^ v540 ^ LODWORD(STACK[0x438]);
  v557 = (v556 - ((2 * v556) & 0x4DAE47F2) - 1495849991) ^ v544;
  LODWORD(STACK[0x630]) = *(v311 + 4 * BYTE1(v552));
  STACK[0x750] = v311 + 4 * (((v556 - ((2 * v556) & 0x47F2) + 9209) ^ v544) >> 8);
  v558 = *(v311 + 4 * (((v556 - ((2 * v556) & 0x47F2) + 9209) ^ v544) >> 8));
  STACK[0x750] = v311 + 4 * BYTE2(v557);
  v559 = v541;
  v560 = STACK[0x6B0];
  v561 = ((v1446 & 0x75DDC990 ^ 0x44850880 ^ (LODWORD(STACK[0x6B0]) ^ 0x75DDC981) & (v1446 ^ 0xC6A718E0)) >> v513) + ((((v1446 ^ 0x22B391A6) & v541 | v542 & 0xE4148946) ^ 0xE4148946) << v530);
  v562 = v487 & 0xD1FAF4D8 ^ 0x68FD7A6C;
  v563 = v531;
  v564 = ((v562 & v531) >> v533) ^ ((v487 & 0x10B220D0 ^ 0x20B52A44 ^ v562 & (v542 ^ 0xC948D428)) << v511) ^ v561 ^ LODWORD(STACK[0x420]) ^ v551;
  v565 = *(v311 + 4 * BYTE2(v557));
  v566 = v564 ^ __ROR4__(v558, 8);
  STACK[0x750] = v311 + 4 * HIBYTE(v555);
  v567 = *(v311 + 4 * HIBYTE(v555));
  STACK[0x750] = v311 + 4 * v557;
  v568 = *(v311 + 4 * v557);
  STACK[0x750] = v311 + 4 * BYTE1(v546);
  v569 = *(v311 + 4 * BYTE1(v546));
  STACK[0x750] = v311 + 4 * BYTE1(v555);
  v570 = *(v311 + 4 * BYTE1(v555));
  v571 = BYTE2(v552);
  STACK[0x750] = v311 + 4 * BYTE2(v552);
  v552 >>= 24;
  v572 = *(v311 + 4 * v571);
  STACK[0x750] = v311 + 4 * v552;
  v546 >>= 24;
  v573 = *(v311 + 4 * v552);
  STACK[0x750] = v311 + 4 * v546;
  v574 = *(v311 + 4 * v546);
  STACK[0x750] = v311 + 4 * v555;
  v575 = v566 ^ __ROR4__(v573, 24) ^ __ROR4__(*(v311 + 4 * v555), 16);
  v576 = STACK[0x6A0] & 0xD1FAF4D8 ^ 0x68FD7A6C;
  LODWORD(v526) = STACK[0x6A0];
  v577 = STACK[0x6B8];
  v578 = ((STACK[0x6A0] & 0xD0A2F058 ^ 0x48A17048 ^ (v560 ^ 0xD8A3F048) & v576) >> v513) ^ ((STACK[0x6A0] & 0xD04A4090 ^ 0x48484A04 ^ (LODWORD(STACK[0x6B8]) ^ 0x21B5B468) & v576) << v530) ^ __ROR4__(v567, 24) ^ __ROR4__(v568, 16) ^ __ROR4__(v569, 8);
  v579 = v563;
  v580 = (((v563 & v576) >> v533) | ((STACK[0x6A0] & 0xC1181058 ^ 0x60191A48 ^ (v542 ^ 0x18E6E4A4) & v576) << v511)) ^ __ROR4__(v554, 16) ^ v565 ^ __ROR4__(v570, 8) ^ __ROR4__(v574, 24);
  v581 = v560;
  LOBYTE(v554) = v513;
  v582 = (((v487 & 0x12A8090 ^ 0x202C0A20 ^ (v560 ^ 0x212E8AA0) & v562) >> v513) | ((v487 & 0x900AF000 ^ 0x20087204 ^ (LODWORD(STACK[0x6B8]) ^ 0x49F50CF8) & v562) << v530)) ^ __ROR4__(STACK[0x660], 16) ^ LODWORD(STACK[0x654]) ^ __ROR4__(STACK[0x630], 8);
  STACK[0x750] = v311 + 4 * HIBYTE(v557);
  v583 = __ROR4__(*(v311 + 4 * HIBYTE(v557)), 24);
  v584 = v559;
  v585 = ((v542 & 0x85AA5A4E | v559 & (v1448 ^ 0x25C73D0)) ^ 0x85AA5A4E) << v530;
  v586 = (((v579 & (v1448 ^ 0x87F6299E)) >> v533) - ((2 * ((v579 & (v1448 ^ 0x87F6299E)) >> v533)) & 0xADC5259A) - 689794355) ^ (v585 - ((2 * v585) & 0xF5E85EAE) + 2062823255);
  v587 = v561 ^ v586;
  v588 = v561 ^ v586 ^ LODWORD(STACK[0x418]) ^ ((v582 ^ v583) - ((2 * (v582 ^ v583)) & 0x582D7B34) - 1407795814);
  STACK[0x750] = v311 + 4 * HIBYTE(v588);
  v589 = *(v311 + 4 * HIBYTE(v588));
  STACK[0x750] = v311 + 4 * BYTE2(v588);
  v590 = *(v311 + 4 * BYTE2(v588));
  STACK[0x750] = v311;
  v591 = *(v311 + 4 * v588);
  v592 = (v575 - ((2 * v575) & 0x582D7B34) - 1407795814) ^ v586;
  STACK[0x750] = v311 + 4 * BYTE1(v592);
  v593 = v587 ^ LODWORD(STACK[0x388]) ^ ((v578 ^ v572) - ((2 * (v578 ^ v572)) & 0x582D7B34) - 1407795814);
  v594 = *(v311 + 4 * BYTE1(v592));
  STACK[0x750] = v311 + 4 * BYTE1(v593);
  v595 = v590 ^ __ROR4__(*(v311 + 4 * BYTE1(v593)), 8);
  STACK[0x750] = v311 + 4 * BYTE2(v592);
  v596 = *(v311 + 4 * BYTE2(v592)) ^ __ROR4__(v591, 16);
  STACK[0x750] = v311 + 4 * BYTE2(v593);
  v597 = v580 - ((2 * v580) & 0x582D7B34);
  v598 = *(v311 + 4 * BYTE2(v593));
  v599 = v587 ^ LODWORD(STACK[0x42C]) ^ (v597 - 1407795814);
  STACK[0x750] = v311 + 4 * v599;
  v600 = *(v311 + 4 * v599);
  STACK[0x750] = v311 + 4 * v592;
  v601 = v595 ^ __ROR4__(*(v311 + 4 * v592), 16);
  v602 = BYTE1(v588);
  STACK[0x750] = v311 + 4 * v602;
  v603 = *(v311 + 4 * v602);
  STACK[0x750] = v311 + 4 * v593;
  v604 = *(v311 + 4 * v593);
  STACK[0x750] = v311 + 4 * HIBYTE(v599);
  LODWORD(STACK[0x630]) = v601 ^ __ROR4__(*(v311 + 4 * HIBYTE(v599)), 24);
  STACK[0x750] = v311 + 4 * HIBYTE(v593);
  v605 = v596 ^ __ROR4__(*(v311 + 4 * HIBYTE(v593)), 24);
  v606 = LODWORD(STACK[0x688]) ^ __ROR4__(v589, 24) ^ __ROR4__(v594, 8);
  STACK[0x750] = v311 + 4 * BYTE2(v599);
  v607 = *(v311 + 4 * BYTE2(v599));
  LODWORD(STACK[0x608]) = v606 ^ v598 ^ __ROR4__(v600, 16);
  STACK[0x750] = v311 + 4 * BYTE1(v599);
  v608 = v605 ^ __ROR4__(*(v311 + 4 * BYTE1(v599)), 8);
  v609 = v487 & 0x16D6E2D4 ^ 0xB6B716A;
  v610 = v487 & 0x40C014 ^ 0x1404028 ^ (v581 ^ 0x140C02C) & v609;
  v592 >>= 24;
  STACK[0x750] = v311 + 4 * v592;
  LODWORD(STACK[0x62C]) = (v610 >> v533) ^ ((v487 & 0x14544210 ^ 0x1604122 ^ (v577 ^ 0xA8BB0CC) & v609) << v511) ^ __ROR4__(v603, 8) ^ __ROR4__(v604, 16) ^ v607 ^ __ROR4__(*(v311 + 4 * v592), 24);
  v611 = (v487 & 0x96A054 ^ 0x923214A ^ v609 & (v542 ^ 0x164852A0)) << v511;
  LODWORD(STACK[0x5E8]) = ((v610 >> v554) ^ v611) + 2 * ((v610 >> v554) & v611);
  v612 = v579;
  v613 = (v579 & v1450) >> v533;
  LOBYTE(v579) = v533;
  v614 = v584;
  v615 = v542;
  v616 = ((v542 & 0xE3BE5331 | v584 & (v1450 ^ 0xE3BE5331)) ^ 0xE3BE5331) << v511;
  v617 = (v613 - ((2 * v613) & 0x284058C) + 21103302) & 0xF47B76DA ^ 0xF8B4EFFF ^ ((v613 - ((2 * v613) & 0x284058C) + 21103302) ^ 0xFEBDFD39) & ((v616 - ((2 * v616) & 0x395AB904) + 481123458) ^ 0x1729D5A7);
  v618 = v526 & 0x16D6E2D4 ^ 0xB6B716A;
  v619 = v586;
  v620 = (((v608 + LODWORD(STACK[0x634])) ^ LODWORD(STACK[0x360])) - ((2 * ((v608 + LODWORD(STACK[0x634])) ^ LODWORD(STACK[0x360]))) & 0x582D7B34) - 1407795814) ^ v586;
  LODWORD(STACK[0x5EC]) = v618;
  LOBYTE(v616) = STACK[0x6F0];
  LODWORD(STACK[0x5F0]) = v612 & v618;
  v621 = v612;
  LODWORD(STACK[0x600]) = v617 ^ ((v612 & v618) >> v579) ^ ((v526 & 0x16C06280 ^ 0xA697102 ^ (v577 ^ 0x116807C) & v618) << v616) ^ (v620 - ((2 * v620) & 0xE6E4C830) - 210607080);
  v622 = (v617 ^ ((v612 & v618) >> v579) ^ ((v526 & 0x80 ^ 2 ^ (v577 ^ 0x7Cu) & v618) << v616) ^ (v620 - ((2 * v620) & 0x30) + 24));
  STACK[0x750] = v311 + 4 * v622;
  LODWORD(v526) = STACK[0x2F0];
  v623 = STACK[0x554];
  v624 = STACK[0x2E8];
  v625 = STACK[0x2F8];
  v626 = STACK[0x2FC];
  v627 = LODWORD(STACK[0x540]) ^ LODWORD(STACK[0x4D8]) ^ LODWORD(STACK[0x56C]) ^ LODWORD(STACK[0x300]) ^ LODWORD(STACK[0x4E0]) ^ LODWORD(STACK[0x588]) ^ LODWORD(STACK[0x574]) ^ LODWORD(STACK[0x4E8]) ^ LODWORD(STACK[0x570]) ^ v1439 ^ LODWORD(STACK[0x500]) ^ LODWORD(STACK[0x580]) ^ LODWORD(STACK[0x51C]) ^ LODWORD(STACK[0x528]) ^ LODWORD(STACK[0x304]) ^ LODWORD(STACK[0x4FC]) ^ LODWORD(STACK[0x2F0]) ^ LODWORD(STACK[0x380]) ^ LODWORD(STACK[0x524]) ^ LODWORD(STACK[0x648]) ^ LODWORD(STACK[0x554]) ^ LODWORD(STACK[0x2E8]) ^ LODWORD(STACK[0x504]) ^ LODWORD(STACK[0x578]) ^ LODWORD(STACK[0x534]) ^ LODWORD(STACK[0x558]) ^ LODWORD(STACK[0x508]) ^ v1437 ^ LODWORD(STACK[0x590]) ^ LODWORD(STACK[0x548]) ^ LODWORD(STACK[0x518]) ^ LODWORD(STACK[0x520]) ^ v1438 ^ LODWORD(STACK[0x510]) ^ LODWORD(STACK[0x2F8]) ^ LODWORD(STACK[0x560]) ^ LODWORD(STACK[0x538]) ^ LODWORD(STACK[0x2FC]) ^ LODWORD(STACK[0x4F8]) ^ LODWORD(STACK[0x4F0]) ^ 0xBDAD917A;
  LODWORD(STACK[0x654]) = v627;
  v628 = v614;
  v629 = (((LODWORD(STACK[0x658]) ^ 0x8818DF05) & v614 | v615 & 0x56EB20B7) ^ 0x56EB20B7) << v616;
  LOBYTE(v614) = v616;
  v630 = (v629 - ((2 * v629) & 0x8BC745BC) + 1172546270) ^ ((((LODWORD(STACK[0x658]) ^ 0xDEF3FFB2) & v612) >> v579) - 1911615751 + (~(2 * (((LODWORD(STACK[0x658]) ^ 0xDEF3FFB2) & v612) >> v579)) | 0xE3E1E20F));
  LODWORD(STACK[0x660]) = v630;
  v631 = STACK[0x708];
  LOBYTE(v612) = v554;
  v632 = (v581 & 0x457C3A96 ^ (LODWORD(STACK[0x670]) ^ 0x31A0377F) & STACK[0x708] ^ 0x10u) >> v554;
  v633 = STACK[0x700];
  v634 = (((LODWORD(STACK[0x670]) ^ 0x82635196) & STACK[0x700] | v577 & 0xF6BF5C7F) ^ 0xF6BF5C7F) << v511;
  v635 = (v634 - ((2 * v634) & 0x6C1C4F56) - 1240586325) ^ (v632 - ((2 * v632) & 0x116D7A8A) + 146193733);
  LODWORD(STACK[0x658]) = v635;
  v636 = LODWORD(STACK[0x2D0]) + LODWORD(STACK[0x2C8]);
  LODWORD(STACK[0x610]) = v636;
  v637 = (((LODWORD(STACK[0x630]) + v636) ^ LODWORD(STACK[0x5E8])) - ((2 * ((LODWORD(STACK[0x630]) + v636) ^ LODWORD(STACK[0x5E8]))) & 0x97D9584C) - 873681882) ^ v630;
  v638 = (v637 - ((2 * v637) & 0x7D7135DC) - 1095197970) ^ v635;
  v639 = LODWORD(STACK[0x368]) ^ v627 ^ (v638 - ((2 * v638) & 0x69EAB3A8) - 1258989100);
  v640 = v617;
  LODWORD(STACK[0x470]) = v617;
  v641 = (v639 - ((2 * v639) & 0xE6E4C830) - 210607080) ^ v617;
  LODWORD(STACK[0x5E8]) = *(v311 + 4 * v622);
  v642 = v619;
  v643 = (v641 - ((2 * v641) & 0x582D7B34) - 1407795814) ^ v619;
  STACK[0x750] = v311 + 4 * BYTE1(v643);
  LODWORD(STACK[0x480]) = *(v311 + 4 * BYTE1(v643));
  STACK[0x750] = v311 + 4 * BYTE2(v643);
  LODWORD(STACK[0x5C8]) = *(v311 + 4 * BYTE2(v643));
  v644 = ((v641 - ((2 * v641) & 0x34) - 102) ^ v619);
  STACK[0x750] = v311 + 4 * v644;
  v645 = LODWORD(STACK[0x62C]) - ((2 * LODWORD(STACK[0x62C])) & 0x582D7B34) - 1407795814;
  v646 = LODWORD(STACK[0x370]) ^ v619;
  LODWORD(STACK[0x620]) = v619;
  LODWORD(STACK[0x5E0]) = *(v311 + 4 * v644);
  v647 = ((v646 ^ v645) - ((2 * (v646 ^ v645)) & 0xE6E4C830) - 210607080) ^ v640;
  STACK[0x750] = v311 + 4 * HIBYTE(v647);
  v648 = v628;
  v649 = v631;
  v650 = ((v631 & v1500) >> v612) + ((v628 & v1500) << v511);
  LODWORD(STACK[0x670]) = v650;
  v651 = v624 ^ LODWORD(STACK[0x334]) ^ LODWORD(STACK[0x328]) ^ v625;
  v652 = STACK[0x6A0];
  LODWORD(STACK[0x62C]) = STACK[0x6A0] & 0xFCB12CE4;
  v653 = LODWORD(STACK[0x4E0]) ^ LODWORD(STACK[0x4D8]) ^ LODWORD(STACK[0x4E8]) ^ v526 ^ v626 ^ v623;
  LOBYTE(v628) = v612;
  v654 = ((v1443 & v649) >> v612) | ((v1443 & v633) << v614);
  LOBYTE(v626) = v614;
  LOBYTE(v526) = v579;
  v655 = LODWORD(STACK[0x690]) ^ ((v1444 & v648) << v614) ^ LODWORD(STACK[0x540]) ^ LODWORD(STACK[0x56C]) ^ LODWORD(STACK[0x300]) ^ ((v1445 & v648) << v511) ^ ((v1445 & v621) >> v579) ^ ((v649 & v1444) >> v579) ^ LODWORD(STACK[0x574]);
  v656 = ((v577 & 0xE0924A80 | v633 & (v652 & 0xFCB12CE4 ^ 0x9ECADCF2)) ^ 0xE0924A80) << v511;
  LODWORD(STACK[0x630]) = v656;
  v657 = v655 ^ (v656 + ((v621 & (v652 & 0xFCB12CE4 ^ 0x7E589672)) >> v628)) ^ LODWORD(STACK[0x588]) ^ LODWORD(STACK[0x570]) ^ LODWORD(STACK[0x500]) ^ LODWORD(STACK[0x580]) ^ v1439 ^ 0x78263B55 ^ LODWORD(STACK[0x4FC]) ^ LODWORD(STACK[0x304]) ^ LODWORD(STACK[0x51C]) ^ LODWORD(STACK[0x528]) ^ LODWORD(STACK[0x524]) ^ LODWORD(STACK[0x648]) ^ LODWORD(STACK[0x33C]) ^ LODWORD(STACK[0x504]) ^ LODWORD(STACK[0x508]) ^ LODWORD(STACK[0x534]) ^ LODWORD(STACK[0x558]) ^ LODWORD(STACK[0x578]) ^ LODWORD(STACK[0x590]) ^ LODWORD(STACK[0x548]) ^ LODWORD(STACK[0x518]) ^ v654 ^ (((v1442 & v633) << v614) + ((v1442 & v621) >> v579)) ^ LODWORD(STACK[0x520]) ^ LODWORD(STACK[0x510]) ^ ((v651 & 0xEDD77863 ^ 0x138C368E) & (v651 & 0x1228879C ^ 0xFDD7FF7F) | v651 & 0x208110) ^ LODWORD(STACK[0x560]) ^ LODWORD(STACK[0x538]) ^ (v653 - ((2 * v653) & 0xBBA869EC) + 1574188278) ^ LODWORD(STACK[0x4F8]) ^ LODWORD(STACK[0x4F0]) ^ 0xD6FA200C;
  LODWORD(STACK[0x648]) = v657;
  v658 = *(v311 + 4 * HIBYTE(v647));
  v659 = (LODWORD(STACK[0x488]) ^ LODWORD(STACK[0x3F4]) ^ (LODWORD(STACK[0x608]) - ((2 * LODWORD(STACK[0x608])) & 0x7614EE86) + 990541635)) + 1300553775 * (LODWORD(STACK[0x688]) - (v657 ^ v650));
  STACK[0x750] = v311 + 4 * BYTE2(v647);
  v660 = *(v311 + 4 * BYTE2(v647));
  STACK[0x750] = v311 + 4 * HIBYTE(v643);
  v661 = *(v311 + 4 * HIBYTE(v643));
  STACK[0x750] = v311 + 4 * BYTE1(v647);
  v662 = STACK[0x6C0];
  v663 = ((v652 & 0xC20244 ^ 0x8430042 ^ (LODWORD(STACK[0x6C0]) ^ 0x173CF1B8) & STACK[0x5EC]) << v626) ^ (LODWORD(STACK[0x5F0]) >> v628) ^ v659;
  v664 = (v663 - ((2 * v663) & 0xE6E4C830) - 210607080) ^ LODWORD(STACK[0x470]);
  v665 = *(v311 + 4 * BYTE1(v647));
  v666 = LODWORD(STACK[0x400]) ^ v642 ^ (v664 - ((2 * v664) & 0x582D7B34) - 1407795814);
  STACK[0x750] = v311 + 4 * BYTE1(v666);
  v667 = *(v311 + 4 * BYTE1(v666));
  STACK[0x750] = v311 + 4 * v647;
  v668 = *(v311 + 4 * v647);
  STACK[0x750] = v311 + 4 * v666;
  v669 = *(v311 + 4 * v666);
  STACK[0x750] = v311 + 4 * BYTE2(v666);
  v670 = *(v311 + 4 * BYTE2(v666));
  v671 = STACK[0x6D8];
  v672 = LODWORD(STACK[0x4C4]) ^ (2 * (STACK[0x6D8] & LODWORD(STACK[0x4A8])));
  v673 = STACK[0x600];
  v674 = BYTE2(LODWORD(STACK[0x600]));
  STACK[0x750] = v311 + 4 * BYTE2(LODWORD(STACK[0x600]));
  v675 = *(v311 + 4 * v674);
  v666 >>= 24;
  STACK[0x750] = v311 + 4 * v666;
  v676 = *(v311 + 4 * v666);
  v677 = LODWORD(STACK[0x490]) ^ (2 * (STACK[0x6F8] & LODWORD(STACK[0x490])));
  STACK[0x750] = v311 + 4 * BYTE1(v673);
  v678 = (*(v311 + 4 * BYTE1(v673)) >> (STACK[0x618] & 8) >> (STACK[0x618] & 8 ^ 8)) | (*(v311 + 4 * BYTE1(v673)) << 24);
  v679 = STACK[0x650];
  v680 = STACK[0x650] & 0x54C053EC ^ 0x2A6029F6;
  v681 = LODWORD(STACK[0x614]) ^ ((STACK[0x650] & 0x10400208 ^ 0x2400000 ^ v680 & (v662 ^ 0x6CA079F6)) << v626) ^ __ROR4__(STACK[0x480], 8) ^ v660 ^ __ROR4__(v669, 16);
  STACK[0x750] = v311 + 4 * HIBYTE(v673);
  v682 = v681 ^ __ROR4__(*(v311 + 4 * HIBYTE(v673)), 24);
  v683 = v652 & 0x54C053EC ^ 0x2A6029F6;
  v684 = (v621 & v683) >> v526;
  LODWORD(v526) = (((v652 & 0x1440038C ^ 0xA600186 ^ (LODWORD(STACK[0x6B8]) ^ 0x60807870) & v683) << v511) | v684) ^ __ROR4__(STACK[0x5E8], 16) ^ LODWORD(STACK[0x5C8]) ^ __ROR4__(v658, 24) ^ __ROR4__(v667, 8);
  v685 = v684 ^ ((v652 & 0x8003A0 ^ 0x82001A2 ^ (v662 ^ 0x7640785C) & v683) << v626) ^ LODWORD(STACK[0x3E0]) ^ __ROR4__(STACK[0x5E0], 16) ^ __ROR4__(v665, 8) ^ v675 ^ __ROR4__(v676, 24);
  v686 = LODWORD(STACK[0x358]) ^ ((v679 & 0x1E0 ^ 0x9F2 ^ (LODWORD(STACK[0x6B8]) ^ 0x7EE0720C) & v680) << v511) ^ __ROR4__(v661, 24) ^ __ROR4__(v668, 16);
  v687 = STACK[0x6B8];
  v688 = ((STACK[0x6B8] & 0xFDD98F0C | STACK[0x700] & (v672 ^ 0xC8D91900)) ^ 0xFDD98F0C) << v511;
  v689 = STACK[0x6B0];
  v690 = (v672 & 0x27B8A1CA ^ 0x25008008 ^ (LODWORD(STACK[0x6B0]) ^ 0x27B8A1DB) & (v672 ^ 0x3500960Cu)) >> v628;
  v691 = (v690 - ((2 * v690) & 0x2DFCD2F8) + 385771900) ^ (v688 - ((2 * v688) & 0x324CDA02) + 421948673);
  v692 = (v621 & v677) >> v628;
  LOBYTE(v621) = v628;
  v693 = STACK[0x700];
  v694 = ((STACK[0x6B8] & 0xEF257850 | STACK[0x700] & (v677 ^ 0xEF257850)) ^ 0xEF257850) << v626;
  v695 = (v692 - ((2 * v692) & 0xB36E1EA6) + 1505169235) & 0xCC48B874 ^ 0xDAE72B8D ^ ((v694 - ((2 * v694) & 0x6F1F0906) + 932152451) ^ 0x438C308) & ((v692 - ((2 * v692) & 0xB36E1EA6) + 1505169235) ^ 0xA648F0AC);
  v696 = LODWORD(STACK[0x3F8]) ^ v691 ^ (v526 - ((2 * v526) & 0x1FB008FA) + 265815165);
  LODWORD(v526) = (v696 - ((2 * v696) & 0x42A0C8AC) - 1588566954) ^ v695;
  STACK[0x750] = v311 + 4 * BYTE2(v526);
  v697 = ((v686 ^ v670 ^ v678) - ((2 * (v686 ^ v670 ^ v678)) & 0x42A0C8AC) - 1588566954) ^ v695;
  v698 = (v679 & 0x40000220 ^ 0x28202030 ^ (v689 ^ 0x68202220) & v680) >> v628;
  v699 = v691 ^ v698 ^ (v697 - ((2 * v697) & 0x1FB008FA) + 265815165);
  v700 = *(v311 + 4 * BYTE2(v526));
  STACK[0x750] = v311;
  v701 = *(v311 + 4 * HIBYTE(v699));
  STACK[0x750] = v311 + 4 * v526;
  v702 = *(v311 + 4 * v526);
  STACK[0x750] = v311 + 4 * BYTE1(v699);
  v703 = (v682 - ((2 * v682) & 0x1FB008FA) + 265815165) ^ v691;
  v704 = *(v311 + 4 * BYTE1(v699));
  v705 = v695 ^ v698 ^ (v703 - ((2 * v703) & 0x42A0C8AC) - 1588566954);
  STACK[0x750] = v311 + 4 * HIBYTE(v705);
  v706 = *(v311 + 4 * HIBYTE(v705));
  STACK[0x750] = v311 + 4 * BYTE3(v526);
  v707 = (v685 - ((2 * v685) & 0x1FB008FA) + 265815165) ^ v691;
  v708 = v707 - ((2 * v707) & 0x42A0C8AC);
  v709 = *(v311 + 4 * BYTE3(v526));
  v710 = (v708 - 1588566954) ^ v695;
  STACK[0x750] = v311 + 4 * HIBYTE(v710);
  v711 = *(v311 + 4 * HIBYTE(v710));
  STACK[0x750] = v311 + 4 * v710;
  v712 = *(v311 + 4 * v710);
  STACK[0x750] = v311 + 4 * BYTE2(v710);
  HIDWORD(v713) = v702;
  LODWORD(v713) = v702;
  v714 = *(v311 + 4 * BYTE2(v710));
  STACK[0x750] = v311 + 4 * v699;
  v715 = *(v311 + 4 * v699);
  STACK[0x750] = v311 + 4 * BYTE2(v699);
  v716 = *(v311 + 4 * BYTE2(v699));
  v717 = BYTE1(v710);
  STACK[0x750] = v311 + 4 * v717;
  v718 = *(v311 + 4 * v717);
  STACK[0x750] = v311 + 4 * BYTE1(v705);
  v719 = ((v713 >> 16) ^ __ROR4__(v701, 24) ^ v714 ^ __ROR4__(*(v311 + 4 * BYTE1(v705)), 8)) + 1797462039 * LODWORD(STACK[0x610]);
  v720 = LODWORD(STACK[0x4B0]) ^ (2 * (v671 & (LODWORD(STACK[0x4C0]) ^ 0x3DE546B9)));
  v721 = v700 ^ __ROR4__(v704, 8) ^ __ROR4__(v706, 24);
  LODWORD(v713) = __ROR4__(v712, 16);
  v722 = (v721 ^ v713) + LODWORD(STACK[0x634]) - 2 * ((v721 ^ v713) & LODWORD(STACK[0x634]));
  v723 = v679 & 0x90155C08 ^ 0x89266C02;
  v724 = v679;
  v725 = v679 & 0xD2DDDD0C ^ 0xE96EEE86;
  v726 = v723 ^ (v687 ^ 0x62C88384) & v725;
  v727 = STACK[0x6A8];
  v728 = STACK[0x6E8];
  STACK[0x750] = v311 + 4 * BYTE2(v705);
  v729 = *(v311 + 4 * BYTE2(v705));
  STACK[0x750] = v311 + 4 * v705;
  v730 = *(v311 + 4 * v705);
  STACK[0x750] = v311 + 4 * BYTE1(v526);
  LODWORD(v526) = ((v726 << v626) | ((v725 & v727) >> v728)) ^ __ROR4__(v711, 24) ^ __ROR4__(v715, 16) ^ v729 ^ __ROR4__(*(v311 + 4 * BYTE1(v526)), 8);
  v731 = v652 & 0xD2DDDD0C ^ 0xE96EEE86;
  v732 = v652 & 0xC0599D08 ^ 0xE14AAE80 ^ (LODWORD(STACK[0x6C0]) ^ 0x1AA44006) & v731;
  v733 = v727;
  v734 = v727 & v731;
  LOBYTE(v727) = v621;
  v735 = LODWORD(STACK[0x670]) ^ ((v732 << v626) | (v734 >> v621)) ^ __ROR4__(v709, 24) ^ v716 ^ __ROR4__(v718, 8);
  LODWORD(v713) = __ROR4__(v730, 16);
  v736 = v733;
  v737 = v728;
  v738 = (((v720 ^ 0xEFCCCE8D) & v733) >> v728) - ((2 * (((v720 ^ 0xEFCCCE8D) & v733) >> v728)) & 0x79F6A770) + 1023103928;
  v739 = (v687 & 0x59172946 | v693 & (v720 ^ 0xB6DBE7CB)) ^ 0x59172946;
  v740 = STACK[0x6D0];
  v741 = v738 & 0xE74B13B4 ^ 0xBE425323 ^ (((v739 << v740) - ((2 * (v739 << v740)) & 0x5F0EAA08) + 797398276) ^ 0x3733B94F) & (v738 ^ 0xC304AC47);
  v742 = ((v735 ^ v713) - ((2 * (v735 ^ v713)) & 0x69EAB3A8) - 1258989100) ^ LODWORD(STACK[0x654]);
  v743 = STACK[0x688];
  v744 = LODWORD(STACK[0x658]) ^ LODWORD(STACK[0x688]) ^ (v742 - ((2 * v742) & 0x7D7135DC) - 1095197970);
  v745 = LODWORD(STACK[0x648]) ^ LODWORD(STACK[0x660]) ^ (v744 - ((2 * v744) & 0x97D9584C) - 873681882);
  v746 = LODWORD(STACK[0x5FC]) ^ v741 ^ (v745 - ((2 * v745) & 0x57B59B0) - 2101498664);
  v747 = (v746 - ((2 * v746) & 0x42A0C8AC) - 1588566954) ^ v695;
  STACK[0x750] = v311 + 4 * BYTE2(v747);
  v748 = STACK[0x6B0];
  v749 = LODWORD(STACK[0x3F4]) ^ v743 ^ LODWORD(STACK[0x488]) ^ LODWORD(STACK[0x408]) ^ (v526 - ((2 * v526) & 0x7614EE86) + 990541635);
  v750 = (v749 - ((2 * v749) & 0x42A0C8AC) - 1588566954) ^ v695;
  v751 = v750 - ((2 * v750) & 0x57B59B0);
  v752 = (v652 & 0xD2819100 ^ 0xE820A202 ^ (LODWORD(STACK[0x6B0]) ^ 0xFAA1B302) & v731) >> v727;
  v753 = v727;
  v754 = ((v752 ^ (v732 << v740) ^ v719) - ((2 * (v752 ^ (v732 << v740) ^ v719)) & 0x57B59B0) - 2101498664) ^ v741;
  v755 = LODWORD(STACK[0x5D4]) ^ v695 ^ (v754 - ((2 * v754) & 0x42A0C8AC) - 1588566954);
  v756 = *(v311 + 4 * BYTE2(v747));
  STACK[0x750] = v311;
  v757 = *(v311 + 4 * BYTE2(v755));
  LODWORD(STACK[0x608]) = v741;
  v758 = (v751 - 2101498664) ^ v741;
  STACK[0x750] = v311 + 4 * HIBYTE(v758);
  v759 = (v722 - ((2 * v722) & 0x57B59B0) - 2101498664) ^ v741;
  v760 = v740;
  v761 = ((v724 & 0xD2985C04 ^ 0xC10A4E86 ^ (v748 ^ 0xD39A5E86) & v725) >> v737) ^ (v726 << v740) ^ v695 ^ (v759 - ((2 * v759) & 0x42A0C8AC) - 1588566954);
  v762 = STACK[0x320] & 0x4000000;
  if ((v761 & v762) != 0)
  {
    v762 = -v762;
  }

  v763 = *(v311 + 4 * HIBYTE(v758));
  v764 = (v762 + v761) ^ STACK[0x320] & 0xFBFFFFFF;
  STACK[0x750] = v311 + 4 * BYTE2(v764);
  v765 = *(v311 + 4 * BYTE2(v764));
  STACK[0x750] = v311 + 4 * HIBYTE(v755);
  v766 = *(v311 + 4 * HIBYTE(v755));
  v767 = LODWORD(STACK[0x4B8]) ^ (2 * (STACK[0x6F8] & LODWORD(STACK[0x4B8])));
  STACK[0x750] = v311 + 4 * BYTE1(v758);
  v768 = *(v311 + 4 * BYTE1(v758));
  v769 = v765 ^ __ROR4__(v763, 24);
  STACK[0x750] = v311 + 4 * HIBYTE(v764);
  v770 = *(v311 + 4 * HIBYTE(v764));
  v771 = v757 ^ __ROR4__(v768, 8);
  STACK[0x750] = v311 + 4 * BYTE1(v764);
  v772 = *(v311 + 4 * BYTE1(v764));
  v773 = v756 ^ __ROR4__(v770, 24);
  STACK[0x750] = v311 + 4 * v764;
  v774 = v771 ^ __ROR4__(*(v311 + 4 * v764), 16);
  STACK[0x750] = v311 + 4 * v755;
  v775 = v769 ^ __ROR4__(*(v311 + 4 * v755), 16);
  STACK[0x750] = v311 + 4 * HIBYTE(v747);
  v776 = v774 ^ __ROR4__(*(v311 + 4 * HIBYTE(v747)), 24);
  STACK[0x750] = v311 + 4 * BYTE2(v758);
  v777 = *(v311 + 4 * BYTE2(v758));
  STACK[0x750] = v311 + 4 * v747;
  v778 = *(v311 + 4 * v747);
  v779 = BYTE1(v755);
  STACK[0x750] = v311 + 4 * v779;
  v780 = v773 ^ __ROR4__(*(v311 + 4 * v779), 8);
  STACK[0x750] = v311 + 4 * v758;
  v781 = v780 ^ __ROR4__(*(v311 + 4 * v758), 16);
  LODWORD(STACK[0x660]) = v781;
  v782 = STACK[0x710];
  v783 = STACK[0x710] ^ LODWORD(STACK[0x680]) ^ __ROR4__(v766, 24) ^ __ROR4__(v772, 8) ^ v777 ^ __ROR4__(v778, 16);
  LODWORD(STACK[0x654]) = v783;
  v784 = BYTE1(v747);
  STACK[0x750] = v311 + 4 * v784;
  v785 = v775 ^ __ROR4__(*(v311 + 4 * v784), 8);
  LODWORD(STACK[0x658]) = v785;
  LOBYTE(v777) = v737;
  v786 = ((v736 & v767) >> v737) - ((2 * ((v736 & v767) >> v737)) & 0xCB52A2A2) + 1705595217;
  v787 = v687;
  v788 = STACK[0x6F0];
  v789 = ((v687 & 0x79AB2408 | v693 & (v767 ^ 0x79AB2408)) ^ 0x79AB2408) << v788;
  v790 = (v789 - ((2 * v789) & 0xB6F2190A) + 1534659717) ^ v786;
  v791 = LODWORD(STACK[0x640]) ^ (2 * (STACK[0x6D8] & LODWORD(STACK[0x640])));
  v792 = v748;
  v793 = v753;
  v794 = ((STACK[0x708] & (v791 ^ 0x29287286) ^ v748 & 0x29287286u) >> v753) + ((((v791 ^ 0x483CA59) & STACK[0x698] | STACK[0x6C0] & 0x483CA59) ^ 0x483CA59) << v760);
  v795 = v652 & 0xBA6F08DC ^ 0xDD37846E;
  v796 = STACK[0x6C0];
  v797 = (LODWORD(STACK[0x6C0]) ^ 0x417980A4) & v795;
  LODWORD(STACK[0x600]) = v795;
  v798 = v652 & 0xBA060858 ^ 0x9C06044A ^ v797;
  LODWORD(v782) = v776 - LODWORD(STACK[0x678]) + v782;
  LODWORD(STACK[0x648]) = v782;
  v799 = v790 ^ v794 ^ (v782 - ((2 * v782) & 0x7DA0BBA8) + 1053842900);
  LODWORD(STACK[0x5C8]) = v799;
  LODWORD(STACK[0x590]) = v790 ^ v794;
  v800 = v736;
  LODWORD(STACK[0x574]) = v736 & v795;
  v801 = (v736 & v795) >> v777;
  LODWORD(STACK[0x570]) = v798 << v788;
  v802 = LODWORD(STACK[0x5D8]) ^ (v801 + (v798 << v788)) ^ v799;
  STACK[0x750] = v311 + 4 * BYTE1(v802);
  v803 = v760;
  v804 = *(v311 + 4 * BYTE1(v802));
  LODWORD(STACK[0x5EC]) = v794;
  v805 = ((v794 ^ (v801 | (v798 << v760)) ^ LODWORD(STACK[0x5C4]) ^ v783) - ((2 * (v794 ^ (v801 | (v798 << v760)) ^ LODWORD(STACK[0x5C4]) ^ v783)) & 0x7DA0BBA8) + 1053842900) ^ v790;
  LODWORD(STACK[0x680]) = v790;
  STACK[0x750] = v311 + 4 * BYTE1(v805);
  LODWORD(v782) = v724 & 0xBA6F08DC ^ 0xDD37846E;
  LODWORD(STACK[0x610]) = v782;
  v806 = v724 & 0xA8490050 ^ 0x89110060 ^ (v748 ^ 0xA9590060) & v782;
  LODWORD(STACK[0x5E8]) = v806;
  v807 = v724 & 0x282F08C0 ^ 0x48270440 ^ (v687 ^ 0x9750803E) & v782;
  LODWORD(STACK[0x5E0]) = v807 << v760;
  v808 = v790 ^ v794 ^ LODWORD(STACK[0x5D0]) ^ ((v781 ^ ((v806 >> v793) + (v807 << v803))) - ((2 * (v781 ^ ((v806 >> v793) + (v807 << v803)))) & 0x7DA0BBA8) + 1053842900);
  LODWORD(STACK[0x56C]) = *(v311 + 4 * BYTE1(v805));
  STACK[0x750] = v311 + 4 * BYTE1(v808);
  LOBYTE(v791) = v788;
  v809 = v794 ^ ((v806 >> v793) + (v807 << v788)) ^ v785;
  v810 = *(v311 + 4 * BYTE1(v808));
  v811 = LODWORD(STACK[0x5CC]) ^ v790 ^ (v809 - ((2 * v809) & 0x7DA0BBA8) + 1053842900);
  STACK[0x750] = v311 + 4 * BYTE1(v811);
  v812 = *(v311 + 4 * BYTE1(v811));
  STACK[0x750] = v311 + 4 * BYTE2(v802);
  v813 = *(v311 + 4 * BYTE2(v802));
  STACK[0x750] = v311 + 4 * HIBYTE(v811);
  v814 = *(v311 + 4 * HIBYTE(v811));
  STACK[0x750] = v311 + 4 * BYTE2(v808);
  v815 = *(v311 + 4 * BYTE2(v808));
  STACK[0x750] = v311 + 4 * HIBYTE(v802);
  v816 = *(v311 + 4 * HIBYTE(v802));
  STACK[0x750] = v311 + 4 * v808;
  v817 = *(v311 + 4 * v808);
  v818 = STACK[0x324];
  v819 = LODWORD(STACK[0x450]) ^ LODWORD(STACK[0x324]) ^ __ROR4__(v810, 8);
  STACK[0x750] = v311 + 4 * BYTE2(v811);
  v820 = *(v311 + 4 * BYTE2(v811));
  STACK[0x750] = v311 + 4 * HIBYTE(v805);
  v821 = v819 ^ v820 ^ __ROR4__(*(v311 + 4 * HIBYTE(v805)), 24);
  STACK[0x750] = v311 + 4 * v802;
  v822 = v821 ^ __ROR4__(*(v311 + 4 * v802), 16);
  v823 = v724 & 0x474D20C8 ^ 0xA3A69064;
  LODWORD(STACK[0x634]) = v823 & v800;
  STACK[0x750] = v311 + 4 * v805;
  v824 = ((v724 & 0x2012088 ^ 0x2A28020 ^ v823 & (v796 ^ 0xE54C1044)) << v791) ^ ((v823 & v800) >> v793) ^ __ROR4__(v804, 8) ^ __ROR4__(v814, 24) ^ v815 ^ __ROR4__(*(v311 + 4 * v805), 16);
  v825 = v724 & 0x400800C0 ^ 0x80A20064 ^ (v787 ^ 0x2745B008) & v823;
  LODWORD(STACK[0x5F0]) = v825;
  v826 = v724 & 0x47450008 ^ 0x83840024 ^ (v792 ^ 0xC7C5002C) & v823;
  LODWORD(STACK[0x580]) = v826;
  LODWORD(STACK[0x578]) = v825 << v803;
  LOBYTE(v823) = v793;
  v827 = (v826 >> v793) ^ (v825 << v803) ^ LODWORD(STACK[0x5A8]) ^ __ROR4__(v812, 8) ^ __ROR4__(v816, 24) ^ __ROR4__(v817, 16);
  v828 = STACK[0x6A0];
  v829 = STACK[0x6A0] & 0x474D20C8 ^ 0xA3A69064;
  LODWORD(v782) = STACK[0x6A0] & 0x1050088 ^ 0x21A48020 ^ (v796 ^ 0xC64A3044) & v829;
  LODWORD(STACK[0x548]) = v782;
  LODWORD(v782) = v782 << v791;
  LODWORD(STACK[0x588]) = v782;
  LODWORD(STACK[0x560]) = v800 & v829;
  v830 = v800;
  LOBYTE(v815) = STACK[0x6E8];
  v831 = LODWORD(STACK[0x478]) ^ (((v800 & v829) >> v815) | v782) ^ __ROR4__(STACK[0x56C], 8);
  STACK[0x750] = v311 + 4 * v811;
  v832 = v831 ^ v813 ^ __ROR4__(*(v311 + 4 * v811), 16);
  v808 >>= 24;
  STACK[0x750] = v311 + 4 * v808;
  v833 = __ROR4__(*(v311 + 4 * v808), 24);
  v834 = BYTE2(v805);
  STACK[0x750] = v311 + 4 * v834;
  v835 = (v832 ^ v833) - 2101498664 + (~(2 * (v832 ^ v833)) | 0xFA84A64F);
  v836 = *(v311 + 4 * v834);
  v837 = STACK[0x608];
  v838 = LODWORD(STACK[0x608]) ^ v818;
  v839 = v838 ^ (v835 + 1);
  STACK[0x750] = v311 + 4 * BYTE1(v839);
  v840 = v838 ^ LODWORD(STACK[0x440]);
  LODWORD(STACK[0x538]) = v838;
  v841 = v840 ^ (v824 - ((2 * v824) & 0x57B59B0) - 2101498664);
  LODWORD(STACK[0x558]) = *(v311 + 4 * BYTE1(v839));
  STACK[0x750] = v311 + 4 * BYTE1(v841);
  v842 = *(v311 + 4 * BYTE1(v841));
  v843 = v838 ^ ((v827 ^ v836) - ((2 * (v827 ^ v836)) & 0x57B59B0) - 2101498664);
  v844 = (v838 ^ ((v827 ^ v836) - ((2 * (v827 ^ v836)) & 0xB0) - 40));
  STACK[0x750] = v311 + 4 * v844;
  v845 = v828 & 0x5482008 ^ 0xA1221024 ^ (v792 ^ 0xA56A302C) & v829;
  LODWORD(STACK[0x504]) = v845;
  LODWORD(STACK[0x540]) = *(v311 + 4 * v844);
  v846 = (v845 >> v815) ^ ((v828 & 0x6490088 ^ 0x22029004 ^ (v787 ^ 0xC1A42060) & v829) << v803) ^ v837 ^ (v822 - ((2 * v822) & 0x57B59B0) - 2101498664);
  STACK[0x750] = v311 + 4 * BYTE2(v846);
  v847 = *(v311 + 4 * BYTE2(v846));
  STACK[0x750] = v311 + 4 * BYTE2(v841);
  v848 = *(v311 + 4 * BYTE2(v841));
  v849 = LODWORD(STACK[0x2D8]) ^ (2 * (STACK[0x6F8] & LODWORD(STACK[0x638])));
  STACK[0x750] = v311 + 4 * BYTE1(v843);
  v850 = *(v311 + 4 * BYTE1(v843));
  STACK[0x750] = v311 + 4 * v839;
  v851 = *(v311 + 4 * v839);
  STACK[0x750] = v311 + 4 * BYTE2(v843);
  v852 = v724 & 0x4C998820 ^ 0xA64CC410;
  LODWORD(v782) = v724 & 0x44818800 ^ 0x86408010 ^ (v787 ^ 0x281C4420) & v852;
  LODWORD(STACK[0x608]) = v782;
  v853 = *(v311 + 4 * BYTE2(v843));
  STACK[0x750] = v311;
  v854 = *(v311 + 4 * HIBYTE(v841));
  v855 = v830;
  LODWORD(STACK[0x56C]) = v852;
  v856 = v782 << v803;
  v857 = v803;
  STACK[0x750] = v311 + 4 * HIBYTE(v839);
  v858 = *(v311 + 4 * HIBYTE(v839));
  STACK[0x750] = v311 + 4 * BYTE1(v846);
  v859 = *(v311 + 4 * BYTE1(v846));
  v860 = (v782 << v803) ^ ((v852 & v830) >> v823) ^ __ROR4__(v842, 8) ^ v847 ^ __ROR4__(v851, 16);
  STACK[0x750] = v311 + 4 * v841;
  v861 = *(v311 + 4 * v841);
  STACK[0x750] = v311 + 4 * BYTE2(v839);
  v862 = *(v311 + 4 * BYTE2(v839));
  v863 = v846;
  STACK[0x750] = v311 + 4 * v846;
  v846 >>= 24;
  v864 = *(v311 + 4 * v863);
  STACK[0x750] = v311 + 4 * v846;
  v843 >>= 24;
  v865 = *(v311 + 4 * v846);
  STACK[0x750] = v311 + 4 * v843;
  v866 = v860 ^ __ROR4__(*(v311 + 4 * v843), 24);
  LODWORD(v782) = v828 & 0x4C998820 ^ 0xA64CC410;
  v867 = STACK[0x6C0];
  v868 = v828 & 0x8080000 ^ 0x80480000 ^ (LODWORD(STACK[0x6C0]) ^ 0x6695CC30) & v782;
  LODWORD(STACK[0x51C]) = v868;
  v869 = STACK[0x6B0];
  LODWORD(STACK[0x508]) = v782;
  v870 = v868 << LODWORD(STACK[0x6F0]);
  v871 = LODWORD(STACK[0x43C]) ^ (((v828 & 0x40018000 ^ 0x8240C410 ^ (v869 ^ 0xC241C400) & v782) >> v815) | v870) ^ __ROR4__(v850, 8) ^ __ROR4__(v854, 24) ^ v862 ^ __ROR4__(v864, 16);
  LODWORD(v782) = v724 & 0x44008020 ^ 0xA6448400 ^ (v869 ^ 0xE6448430) & v852;
  LODWORD(STACK[0x554]) = v782;
  v872 = v1453 ^ ((v782 >> v815) + v856) ^ __ROR4__(STACK[0x558], 8) ^ __ROR4__(STACK[0x540], 16) ^ v848 ^ __ROR4__(v865, 24);
  LODWORD(v782) = v855 & (v828 & 0x4C998820 ^ 0xA64CC410);
  LODWORD(STACK[0x500]) = v782;
  v873 = v853 ^ (v870 + (v782 >> v823)) ^ __ROR4__(v858, 24) ^ __ROR4__(v859, 8);
  v874 = v869;
  v875 = (v869 & 0x74EEF415 ^ 0x11 ^ STACK[0x708] & (v849 ^ 0xB6685FD8)) >> v815;
  v876 = v867;
  v877 = ((v867 & 0xE504A1A1 | STACK[0x698] & (v849 ^ 0x27820A6C)) ^ 0xE504A1A1) << v857;
  v878 = v857;
  v879 = (v875 - ((2 * v875) & 0xA0631F70) + 1345425336) & 0x2A730D5D ^ 0x456FF3A1 ^ ((v875 - ((2 * v875) & 0xA0631F70) + 1345425336) ^ 0xAFCE7047) & ((v877 - ((2 * v877) & 0xBD7BD998) - 557978420) ^ 0xB311E6E);
  v880 = LODWORD(STACK[0x5B8]) ^ v879 ^ (v866 - ((2 * v866) & 0x21A41836) - 1865282533);
  v881 = STACK[0x680];
  v882 = (v880 - ((2 * v880) & 0x7DA0BBA8) + 1053842900) ^ LODWORD(STACK[0x680]);
  STACK[0x750] = v311 + 4 * BYTE2(v882);
  v883 = (v872 - ((2 * v872) & 0x21A41836) - 1865282533) ^ v879;
  LODWORD(STACK[0x540]) = *(v311 + 4 * BYTE2(v882));
  STACK[0x750] = v311;
  v884 = (v883 - ((2 * v883) & 0x7DA0BBA8) + 1053842900) ^ v881;
  v885 = *(v311 + 4 * ((v883 - ((2 * v883) & 0xA8) - 44) ^ v881));
  STACK[0x750] = v311 + 4 * v882;
  v886 = (v871 - ((2 * v871) & 0x21A41836) - 1865282533) ^ v879;
  v887 = *(v311 + 4 * v882);
  v888 = (v886 - ((2 * v886) & 0x7DA0BBA8) + 1053842900) ^ v881;
  STACK[0x750] = v311 + 4 * BYTE1(v888);
  v889 = *(v311 + 4 * BYTE1(v888));
  v890 = __ROR4__(v861, 16);
  STACK[0x750] = v311 + 4 * BYTE2(v888);
  v891 = *(v311 + 4 * BYTE2(v888));
  STACK[0x750] = v311 + 4 * BYTE2(v884);
  v892 = *(v311 + 4 * BYTE2(v884));
  STACK[0x750] = v311 + 4 * HIBYTE(v888);
  v893 = *(v311 + 4 * HIBYTE(v888));
  STACK[0x750] = v311 + 4 * BYTE1(v884);
  v894 = v1455 ^ v881 ^ ((v873 ^ v890) - ((2 * (v873 ^ v890)) & 0x7DA0BBA8) + 1053842900);
  v895 = *(v311 + 4 * BYTE1(v884));
  v896 = (v894 - ((2 * v894) & 0x21A41836) - 1865282533) ^ v879;
  STACK[0x750] = v311 + 4 * HIBYTE(v896);
  v897 = *(v311 + 4 * HIBYTE(v896));
  v898 = LODWORD(STACK[0x4CC]) ^ (2 * (STACK[0x6D8] & LODWORD(STACK[0x4C8])));
  STACK[0x750] = v311 + 4 * BYTE2(v896);
  v899 = *(v311 + 4 * BYTE2(v896));
  STACK[0x750] = v311 + 4 * HIBYTE(v882);
  v900 = *(v311 + 4 * HIBYTE(v882));
  STACK[0x750] = v311 + 4 * HIBYTE(v884);
  v901 = v891 ^ __ROR4__(v887, 16) ^ __ROR4__(*(v311 + 4 * HIBYTE(v884)), 24);
  v902 = v828 & 0xCA0620A ^ 0x6503105;
  v903 = v828 & 0x4806200 ^ 0x6003100 ^ (v874 ^ 0x6807301) & v902;
  LODWORD(STACK[0x524]) = v903;
  LODWORD(STACK[0x528]) = v902;
  LODWORD(v782) = v828 & 0xCA00208 ^ 0x4101100 ^ (v876 ^ 0x2406007) & v902;
  LODWORD(STACK[0x558]) = v782;
  v904 = v903 >> v815;
  v905 = STACK[0x6F0];
  STACK[0x750] = v311 + 4 * v896;
  v906 = *(v311 + 4 * v896);
  v907 = BYTE1(v882);
  STACK[0x750] = v311 + 4 * v907;
  v908 = ((v903 >> v815) + (v782 << v905)) ^ __ROR4__(v885, 16) ^ __ROR4__(v893, 24) ^ v899 ^ __ROR4__(*(v311 + 4 * v907), 8);
  STACK[0x750] = v311 + 4 * v888;
  v909 = *(v311 + 4 * v888);
  STACK[0x750] = v311 + 4 * BYTE1(v896);
  v910 = STACK[0x338];
  v911 = STACK[0x338] & 0x80000;
  if ((v901 & v911) != 0)
  {
    v911 = -v911;
  }

  v912 = v911 + v901;
  v913 = v724;
  v914 = v724 & 0xCA0620A ^ 0x6503105;
  v915 = STACK[0x6B8];
  v916 = (LODWORD(STACK[0x6B8]) ^ 0x4A06205) & v914 ^ (v913 & 0x800000A | 0x2501100);
  LODWORD(STACK[0x4E8]) = v916;
  v917 = v910 & 0xFFF7FFFF ^ (v916 << v857) ^ v912 ^ __ROR4__(*(v311 + 4 * BYTE1(v896)), 8);
  v918 = v915;
  v919 = (v915 ^ 0x6403203) & v902 ^ (v828 & 0x8A04008 | 0x100104);
  LODWORD(STACK[0x4D8]) = v919;
  v920 = v878;
  v921 = v904 ^ (v919 << v878) ^ (v889 >> 8) ^ (v889 << 24) ^ v892 ^ __ROR4__(v900, 24) ^ __ROR4__(v906, 16);
  v922 = v876;
  LODWORD(STACK[0x4B0]) = v914;
  v923 = v913 & 0xA0600A ^ 0x2002104 ^ v914 & (v876 ^ 0xC501201);
  LODWORD(STACK[0x4E0]) = v923;
  v924 = STACK[0x6A8];
  v925 = v914 & STACK[0x6A8];
  LODWORD(STACK[0x4F0]) = v925;
  LOBYTE(v915) = STACK[0x6E0];
  v926 = v925 >> v915;
  v927 = (v923 << v905) ^ (v925 >> v915) ^ LODWORD(STACK[0x448]) ^ LODWORD(STACK[0x540]) ^ __ROR4__(v895, 8) ^ __ROR4__(v897, 24) ^ __ROR4__(v909, 16);
  STACK[0x750] = v311;
  v928 = (v898 & 0x8920B6D8 ^ 0x88003058 ^ (v874 ^ 0x8920B6C9) & (v898 ^ 0xFAC9305D)) >> v915;
  v929 = v918;
  v930 = ((v918 & 0xCAF6E675 | STACK[0x700] & (v898 ^ 0x303FD628)) ^ 0xCAF6E675) << v905;
  v931 = (v928 - ((2 * v928) & 0x3FEA7D98) + 536166092) ^ (v930 - ((2 * v930) & 0xD19A7494) - 389203382);
  v932 = STACK[0x620];
  v933 = LODWORD(STACK[0x458]) ^ LODWORD(STACK[0x620]) ^ (v908 - ((2 * v908) & 0x582D7B34) - 1407795814);
  v934 = (v933 - ((2 * v933) & 0xEE70090C) - 147323770) ^ v931;
  v935 = STACK[0x740];
  STACK[0x740] += 4 * HIBYTE(v934);
  v936 = v932 ^ v926 ^ (v917 - ((2 * v917) & 0x582D7B34) - 1407795814);
  LODWORD(STACK[0x540]) = *(v935 + 4 * HIBYTE(v934));
  v937 = (v936 - ((2 * v936) & 0xEE70090C) - 147323770) ^ v931;
  STACK[0x740] = v935 + 4 * HIBYTE(v937);
  v938 = (v927 - ((2 * v927) & 0x582D7B34) - 1407795814) ^ v932;
  LODWORD(STACK[0x518]) = *(v935 + 4 * HIBYTE(v937));
  v939 = (v938 - ((2 * v938) & 0xEE70090C) - 147323770) ^ v931;
  LODWORD(STACK[0x490]) = v931;
  STACK[0x740] = v935 + 4 * BYTE2(v939);
  v940 = LODWORD(STACK[0x5B4]) ^ v932 ^ (v921 - ((2 * v921) & 0x582D7B34) - 1407795814);
  LODWORD(STACK[0x534]) = *(v935 + 4 * BYTE2(v939));
  v941 = (v940 - ((2 * v940) & 0xEE70090C) - 147323770) ^ v931;
  STACK[0x740] = v935 + 4 * BYTE2(v941);
  LODWORD(STACK[0x520]) = *(v935 + 4 * BYTE2(v941));
  STACK[0x740] = v935 + 4 * BYTE2(v937);
  LODWORD(STACK[0x4FC]) = *(v935 + 4 * BYTE2(v937));
  STACK[0x740] = v935 + 4 * HIBYTE(v939);
  LODWORD(STACK[0x510]) = *(v935 + 4 * HIBYTE(v939));
  v942 = ((v940 - ((2 * v940) & 0xC) - 122) ^ v931);
  STACK[0x740] = v935 + 4 * v942;
  LODWORD(STACK[0x4F8]) = *(v935 + 4 * v942);
  v943 = BYTE1(v934);
  STACK[0x740] = v935 + 4 * BYTE1(v934);
  v944 = v1456 ^ (LODWORD(STACK[0x570]) + (LODWORD(STACK[0x574]) >> v915));
  LODWORD(STACK[0x4A8]) = *(v935 + 4 * v934);
  LODWORD(STACK[0x570]) = *(v935 + 4 * BYTE1(v937));
  LODWORD(STACK[0x4B8]) = *(v935 + 4 * v937);
  LODWORD(STACK[0x4C0]) = *(v935 + 4 * BYTE2(v934));
  LODWORD(STACK[0x574]) = *(v935 + 4 * BYTE1(v941));
  LODWORD(STACK[0x4C8]) = *(v935 + 4 * HIBYTE(v941));
  LODWORD(STACK[0x4CC]) = *(v935 + 4 * BYTE1(v939));
  v945 = v944 ^ LODWORD(STACK[0x5C8]);
  LODWORD(STACK[0x4C4]) = *(v935 + 4 * v939);
  LODWORD(STACK[0x5C8]) = *(v935 + 4 * v943);
  v946 = STACK[0x750];
  STACK[0x750] += 4 * HIBYTE(v945);
  v947 = *(v946 + 4 * HIBYTE(v945));
  STACK[0x750] = v946 + 4 * v945;
  v948 = ((v828 & 0x184E08D8 ^ 0x59168448 ^ (v874 ^ 0x595E8CC8u) & STACK[0x600]) >> v915) ^ ((v828 & 0x300F0050 ^ 0x50078062 ^ (v929 ^ 0x8F700C8C) & STACK[0x600]) << v905) ^ LODWORD(STACK[0x654]);
  v949 = *(v946 + 4 * v945);
  v950 = STACK[0x590];
  v951 = LODWORD(STACK[0x590]) ^ v1457 ^ (v948 - ((2 * v948) & 0x7DA0BBA8) + 1053842900);
  STACK[0x750] = v946 + 4 * BYTE1(v951);
  v952 = *(v946 + 4 * BYTE1(v951));
  STACK[0x750] = v946 + 4 * v951;
  v953 = STACK[0x6E8];
  v954 = v1458 ^ ((LODWORD(STACK[0x5E8]) >> v953) + LODWORD(STACK[0x5E0])) ^ LODWORD(STACK[0x660]);
  v955 = v950 ^ (v954 - ((2 * v954) & 0x7DA0BBA8) + 1053842900);
  v956 = *(v946 + 4 * v951);
  STACK[0x750] = v946 + 4 * HIBYTE(v955);
  v957 = (v1459 - ((2 * v1459) & 0x7DA0BBA8) + 1053842900) ^ LODWORD(STACK[0x680]) ^ LODWORD(STACK[0x658]);
  v958 = *(v946 + 4 * HIBYTE(v955));
  v959 = ((LODWORD(STACK[0x5EC]) ^ -LODWORD(STACK[0x5EC]) ^ (v957 - (v957 ^ LODWORD(STACK[0x5EC])))) + v957) ^ (((STACK[0x610] & v924) >> v953) + ((v913 & 0x200D0894 ^ 0x44158004 ^ STACK[0x610] & (v922 ^ 0x9B62046A)) << v920));
  STACK[0x750] = v946 + 4 * HIBYTE(v959);
  v960 = *(v946 + 4 * HIBYTE(v959));
  STACK[0x740] = v935;
  STACK[0x750] = v946 + 4 * BYTE2(v955);
  LODWORD(v935) = *(v946 + 4 * BYTE2(v955));
  STACK[0x750] = v946 + 4 * BYTE2(v951);
  v961 = *(v946 + 4 * BYTE2(v951));
  STACK[0x750] = v946 + 4 * v959;
  v962 = *(v946 + 4 * v959);
  STACK[0x750] = v946 + 4 * BYTE2(v959);
  v963 = *(v946 + 4 * BYTE2(v959));
  STACK[0x750] = v946 + 4 * BYTE1(v955);
  v964 = *(v946 + 4 * BYTE1(v955));
  v965 = BYTE1(v959);
  STACK[0x750] = v946 + 4 * v965;
  v966 = *(v946 + 4 * v965);
  v967 = v961 ^ __ROR4__(v947, 24);
  STACK[0x750] = v946 + 4 * BYTE1(v945);
  v968 = *(v946 + 4 * BYTE1(v945));
  STACK[0x750] = v946 + 4 * v955;
  v969 = v967 ^ __ROR4__(v966, 8) ^ __ROR4__(*(v946 + 4 * v955), 16);
  v970 = v915;
  v971 = v1460 ^ ((LODWORD(STACK[0x504]) >> v915) + (LODWORD(STACK[0x548]) << v920)) ^ __ROR4__(v956, 16) ^ __ROR4__(v960, 24) ^ v935 ^ __ROR4__(v968, 8);
  v972 = ((LODWORD(STACK[0x580]) >> v953) | LODWORD(STACK[0x578])) ^ __ROR4__(v952, 8) ^ __ROR4__(v958, 24) ^ __ROR4__(v962, 16);
  LODWORD(v935) = v1461 ^ (LODWORD(STACK[0x560]) >> v915) ^ __ROR4__(v949, 16) ^ v963 ^ __ROR4__(v964, 8);
  STACK[0x750] = v946 + 4 * BYTE2(v945);
  v973 = *(v946 + 4 * BYTE2(v945));
  STACK[0x750] = v946 + 4 * HIBYTE(v951);
  v974 = __ROR4__(*(v946 + 4 * HIBYTE(v951)), 24);
  v975 = STACK[0x538];
  v976 = LODWORD(STACK[0x538]) ^ LODWORD(STACK[0x588]) ^ ((v935 ^ v974) - ((2 * (v935 ^ v974)) & 0x57B59B0) - 2101498664);
  STACK[0x750] = v946 + 4 * BYTE1(v976);
  v977 = v953;
  v978 = *(v946 + 4 * BYTE1(v976));
  v979 = v975 ^ (LODWORD(STACK[0x634]) >> v953) ^ (LODWORD(STACK[0x5F0]) << v905) ^ v1462 ^ (v969 - ((2 * v969) & 0x57B59B0) - 2101498664);
  STACK[0x750] = v946 + 4 * BYTE1(v979);
  v980 = v975 ^ v1463 ^ ((v972 ^ v973) - ((2 * (v972 ^ v973)) & 0x57B59B0) - 2101498664);
  LODWORD(v935) = *(v946 + 4 * BYTE1(v979));
  v981 = (v975 ^ v1463 ^ ((v972 ^ v973) - ((2 * (v972 ^ v973)) & 0xB0) - 40));
  STACK[0x750] = v946 + 4 * v981;
  v982 = *(v946 + 4 * v981);
  STACK[0x750] = v946 + 4 * BYTE2(v979);
  v983 = *(v946 + 4 * BYTE2(v979));
  STACK[0x750] = v946 + 4 * BYTE1(v980);
  v984 = *(v946 + 4 * BYTE1(v980));
  v985 = v975 ^ (v971 - ((2 * v971) & 0x57B59B0) - 2101498664);
  STACK[0x750] = v946 + 4 * HIBYTE(v985);
  v986 = *(v946 + 4 * HIBYTE(v985));
  STACK[0x750] = v946 + 4 * HIBYTE(v976);
  v987 = *(v946 + 4 * HIBYTE(v976));
  STACK[0x750] = v946 + 4 * HIBYTE(v980);
  v988 = *(v946 + 4 * HIBYTE(v980));
  STACK[0x750] = v946 + 4 * v976;
  v989 = *(v946 + 4 * v976);
  STACK[0x750] = v946 + 4 * (v975 ^ (v971 - ((2 * v971) & 0xB0) - 40));
  v990 = *(v946 + 4 * (v975 ^ (v971 - ((2 * v971) & 0xB0) - 40)));
  v991 = BYTE2(v976);
  STACK[0x750] = v946 + 4 * v991;
  v992 = *(v946 + 4 * v991);
  STACK[0x750] = v946 + 4 * HIBYTE(v979);
  v993 = *(v946 + 4 * HIBYTE(v979));
  STACK[0x750] = v946 + 4 * v979;
  HIDWORD(v995) = v987;
  LODWORD(v995) = v987;
  v994 = v995 >> 24;
  HIDWORD(v995) = *(v946 + 4 * v979);
  LODWORD(v995) = HIDWORD(v995);
  v996 = v995 >> 16;
  LODWORD(v995) = __ROR4__(v984, 8);
  v997 = v996 + (v994 ^ v995) - 2 * (v996 & (v994 ^ v995));
  STACK[0x750] = v946 + 4 * BYTE2(v985);
  v998 = *(v946 + 4 * BYTE2(v985));
  v999 = LODWORD(STACK[0x500]) >> v953;
  v1000 = (v999 | (LODWORD(STACK[0x51C]) << v920)) ^ __ROR4__(v982, 16);
  v1001 = BYTE2(v980);
  STACK[0x750] = v946 + 4 * v1001;
  v1002 = *(v946 + 4 * v1001);
  STACK[0x750] = v946 + 4 * BYTE1(v985);
  v1003 = v1000 ^ v992 ^ __ROR4__(v993, 24) ^ __ROR4__(*(v946 + 4 * BYTE1(v985)), 8);
  v1004 = v1464 ^ (((LODWORD(STACK[0x6B8]) ^ 0xC4198830) & STACK[0x508] ^ ((v828 & 0x8800000 | 0x22444028) + 984)) << v920) ^ v998 ^ v997;
  v1005 = STACK[0x680];
  v1006 = (v1004 - ((2 * v1004) & 0x7DA0BBA8) + 1053842900) ^ LODWORD(STACK[0x680]);
  v1007 = v879 ^ v999 ^ (v1006 - ((2 * v1006) & 0x21A41836) - 1865282533);
  STACK[0x750] = v946 + 4 * BYTE2(v1007);
  v1008 = v1465 ^ v879 ^ (v1003 - ((2 * v1003) & 0x21A41836) - 1865282533);
  LODWORD(STACK[0x634]) = *(v946 + 4 * BYTE2(v1007));
  STACK[0x750] = v946;
  v1009 = (v1008 - ((2 * v1008) & 0x7DA0BBA8) + 1053842900) ^ v1005;
  v1010 = *(v946 + 4 * (v879 ^ v999 ^ (v1006 - ((2 * v1006) & 0x36) + 27)));
  STACK[0x750] = v946 + 4 * BYTE1(v1009);
  v1011 = *(v946 + 4 * BYTE1(v1009));
  STACK[0x750] = v946 + 4 * HIBYTE(v1009);
  LOBYTE(v999) = v905;
  v1012 = v1466 ^ (LODWORD(STACK[0x608]) << v905) ^ __ROR4__(v978, 8) ^ v983 ^ __ROR4__(v988, 24);
  LODWORD(v995) = __ROR4__(v990, 16);
  v1013 = ((v1012 ^ v995) - ((2 * (v1012 ^ v995)) & 0x21A41836) - 1865282533) ^ v879;
  v1014 = LODWORD(STACK[0x554]) >> v915;
  v1015 = v1005 ^ v1014 ^ (v1013 - ((2 * v1013) & 0x7DA0BBA8) + 1053842900);
  v1016 = *(v946 + 4 * HIBYTE(v1009));
  STACK[0x750] = v946 + 4 * v1015;
  v1017 = STACK[0x650];
  v1018 = v1468 ^ (v1014 + ((STACK[0x650] & 0x80000 ^ 0x20480410 ^ STACK[0x56C] & (LODWORD(STACK[0x6C0]) ^ 0xCE95C820)) << v999)) ^ __ROR4__(v935, 8) ^ __ROR4__(v986, 24);
  LODWORD(v995) = __ROR4__(v989, 16);
  v1019 = ((v1018 ^ v995 ^ v1002) - ((2 * (v1018 ^ v995 ^ v1002)) & 0x21A41836) - 1865282533) ^ v879;
  v1020 = (v1019 - ((2 * v1019) & 0x7DA0BBA8) + 1053842900) ^ v1005;
  v1021 = *(v946 + 4 * v1015);
  STACK[0x750] = v946 + 4 * BYTE2(v1020);
  v1022 = *(v946 + 4 * BYTE2(v1020));
  STACK[0x750] = v946;
  v1023 = *(v946 + 4 * HIBYTE(v1020));
  STACK[0x750] = v946 + 4 * BYTE1(v1007);
  LODWORD(v935) = *(v946 + 4 * BYTE1(v1007));
  STACK[0x750] = v946 + 4 * HIBYTE(v1007);
  v1024 = *(v946 + 4 * HIBYTE(v1007));
  STACK[0x750] = v946 + 4 * BYTE1(v1015);
  v1025 = *(v946 + 4 * BYTE1(v1015));
  STACK[0x750] = v946 + 4 * ((v1008 - ((2 * v1008) & 0xA8) - 44) ^ v1005);
  v1026 = *(v946 + 4 * ((v1008 - ((2 * v1008) & 0xA8) - 44) ^ v1005));
  STACK[0x750] = v946 + 4 * BYTE2(v1015);
  v1027 = *(v946 + 4 * BYTE2(v1015));
  STACK[0x750] = v946 + 4 * BYTE2(v1009);
  v1028 = *(v946 + 4 * BYTE2(v1009));
  STACK[0x750] = v946 + 4 * v1020;
  v1015 >>= 24;
  v1029 = *(v946 + 4 * v1020);
  STACK[0x750] = v946 + 4 * v1015;
  v1030 = *(v946 + 4 * v1015);
  v1031 = BYTE1(v1020);
  STACK[0x750] = v946 + 4 * v1031;
  v1032 = *(v946 + 4 * v1031);
  STACK[0x750] = v946;
  v1033 = v1022 ^ v1470 ^ __ROR4__(v1024, 24) ^ __ROR4__(v1025, 8);
  LODWORD(v995) = __ROR4__(v1026, 16);
  v1034 = ((v1033 ^ v995) - ((2 * (v1033 ^ v995)) & 0x582D7B34) - 1407795814) ^ v932;
  v1035 = STACK[0x490];
  v1036 = ((v1017 & 0x8202000 ^ 0x2003001 ^ (LODWORD(STACK[0x6B0]) ^ 0xA203000u) & STACK[0x4B0]) >> v977) ^ (LODWORD(STACK[0x4E8]) << v999) ^ LODWORD(STACK[0x490]) ^ (v1034 - ((2 * v1034) & 0xEE70090C) - 147323770);
  v1037 = STACK[0x740];
  v1038 = ((((v1017 & 0x8202000 ^ 0x2003001 ^ (LODWORD(STACK[0x6B0]) ^ 0xA203000u) & STACK[0x4B0]) >> v977) ^ (LOWORD(STACK[0x4E8]) << v999) ^ LOWORD(STACK[0x490]) ^ (v1034 - ((2 * v1034) & 0x90C) + 1158)) >> 8);
  STACK[0x740] += 4 * ((((v1017 & 0x8202000 ^ 0x2003001 ^ (LODWORD(STACK[0x6B0]) ^ 0xA203000u) & STACK[0x4B0]) >> v977) ^ (LOWORD(STACK[0x4E8]) << v999) ^ LOWORD(STACK[0x490]) ^ (v1034 - ((2 * v1034) & 0x90C) + 1158)) >> 8);
  v1039 = ((LODWORD(STACK[0x524]) >> v970) | (LODWORD(STACK[0x4D8]) << v999)) ^ __ROR4__(v1010, 16) ^ __ROR4__(v1011, 8);
  LODWORD(v995) = __ROR4__(v1023, 24);
  v1040 = v1472 ^ v1035 ^ ((v1039 ^ v995 ^ v1027) - ((2 * (v1039 ^ v995 ^ v1027)) & 0xEE70090C) - 147323770);
  LODWORD(v946) = (v1040 - ((2 * v1040) & 0x582D7B34) - 1407795814) ^ v932;
  LODWORD(STACK[0x6A0]) = *(v1037 + 4 * v1038);
  STACK[0x740] = v1037 + 4 * BYTE1(v946);
  LODWORD(v935) = (LODWORD(STACK[0x4F0]) >> v977) ^ (LODWORD(STACK[0x4E0]) << v920) ^ v1474 ^ __ROR4__(v935, 8) ^ v1028 ^ __ROR4__(v1029, 16);
  v1041 = __PAIR64__(v1032, __ROR4__(v1030, 24));
  LODWORD(v935) = ((v935 ^ v1041) - ((2 * (v935 ^ v1041)) & 0xEE70090C) - 147323770) ^ v1035;
  LODWORD(STACK[0x6B8]) = *(v1037 + 4 * BYTE1(v946));
  v1042 = (v935 - ((2 * v935) & 0x582D7B34) - 1407795814) ^ v932;
  STACK[0x740] = v1037 + 4 * ((v935 - ((2 * v935) & 0x34) - 102) ^ v932);
  LODWORD(STACK[0x680]) = *(v1037 + 4 * ((v935 - ((2 * v935) & 0x34) - 102) ^ v932));
  STACK[0x740] = v1037 + 4 * HIBYTE(v1036);
  LODWORD(v1041) = v1032;
  v1043 = v1041 >> 8;
  v1044 = ((v1043 - ((2 * v1043) & 0xEE70090C) - 147323770) ^ v1035) & 0xA021F7CD;
  v1045 = v1035 & 0x5FDE0832 ^ (((STACK[0x6A8] & LODWORD(STACK[0x528])) >> v970) + (LODWORD(STACK[0x558]) << v920)) ^ v1476 ^ LODWORD(STACK[0x634]) ^ __ROR4__(v1016, 24);
  LODWORD(v1041) = __ROR4__(v1021, 16);
  v1046 = *(v1037 + 4 * HIBYTE(v1036));
  v1047 = ((v1045 ^ v1041 ^ v1043 & 0x5FDE0832 ^ v1044 ^ 0x57180002) - 2 * ((v1045 ^ v1041 ^ v1043 & 0x5FDE0832 ^ v1044 ^ 0x57180002) & 0x2C16BD9F ^ (v1045 ^ v1041 ^ v1043 & 0x5FDE0832 ^ v1044) & 5) - 1407795814) ^ v932;
  v1048 = (((v1045 ^ v1041 ^ v1043 & 0x32 ^ v1044 ^ 2) - 2 * ((v1045 ^ v1041 ^ v1043 & 0x32 ^ v1044 ^ 2) & 0x9F ^ (v1045 ^ v1041 ^ v1043 & 0x32 ^ v1044) & 5) - 102) ^ v932);
  STACK[0x740] = v1037 + 4 * v1048;
  v1049 = *(v1037 + 4 * v1048);
  STACK[0x740] = v1037 + 4 * BYTE1(v1042);
  LODWORD(STACK[0x650]) = *(v1037 + 4 * BYTE1(v1042));
  STACK[0x740] = v1037 + 4 * v1036;
  v1050 = *(v1037 + 4 * v1036);
  v1051 = BYTE2(v946);
  STACK[0x740] = v1037 + 4 * BYTE2(v946);
  HIDWORD(v1041) = LODWORD(STACK[0x4A8]) ^ 7;
  LODWORD(v1041) = LODWORD(STACK[0x4A8]) ^ 0xED1F8F00;
  v1052 = (v1041 >> 8) - 316698873 - ((2 * (v1041 >> 8)) & 0xDA3F1E0E);
  HIDWORD(v1041) = LODWORD(STACK[0x4B8]) ^ 7;
  LODWORD(v1041) = LODWORD(STACK[0x4B8]) ^ 0xED1F8F00;
  v1053 = (v1041 >> 8) - 316698873 - ((2 * (v1041 >> 8)) & 0xDA3F1E0E);
  HIDWORD(v1041) = LODWORD(STACK[0x4C0]) ^ 0x1F8F07;
  LODWORD(v1041) = LODWORD(STACK[0x4C0]) ^ 0xED000000;
  v1054 = (v1041 >> 24) - 316698873 - ((2 * (v1041 >> 24)) & 0xDA3F1E0E);
  HIDWORD(v1041) = LODWORD(STACK[0x4C8]) ^ 0x8F07;
  LODWORD(v1041) = LODWORD(STACK[0x4C8]) ^ 0xED1F0000;
  v1055 = v1041 >> 16;
  HIDWORD(v1041) = LODWORD(STACK[0x4C4]) ^ 7;
  LODWORD(v1041) = LODWORD(STACK[0x4C4]) ^ 0xED1F8F00;
  v1056 = (v1041 >> 8) ^ v1055;
  HIDWORD(v1041) = LODWORD(STACK[0x4FC]) ^ 0x1F8F07;
  LODWORD(v1041) = LODWORD(STACK[0x4FC]) ^ 0xED000000;
  v1057 = v1056 ^ (v1041 >> 24);
  v1058 = LODWORD(STACK[0x640]) ^ LODWORD(STACK[0x4D0]) ^ LODWORD(STACK[0x638]);
  HIDWORD(v1041) = LODWORD(STACK[0x4F8]) ^ 7;
  LODWORD(v1041) = LODWORD(STACK[0x4F8]) ^ 0xED1F8F00;
  v1059 = v1058 ^ LODWORD(STACK[0x4CC]) ^ v1054 ^ (v1041 >> 8);
  HIDWORD(v1041) = LODWORD(STACK[0x518]) ^ 0x8F07;
  LODWORD(v1041) = LODWORD(STACK[0x518]) ^ 0xED1F0000;
  v1060 = (LODWORD(STACK[0x348]) ^ -LODWORD(STACK[0x348]) ^ ((v1059 ^ (v1041 >> 16)) - (v1059 ^ (v1041 >> 16) ^ LODWORD(STACK[0x348])))) + (v1059 ^ (v1041 >> 16));
  v1061 = (LODWORD(STACK[0x654]) ^ 0x756B8818) - 1641137690;
  HIDWORD(v1041) = LODWORD(STACK[0x520]) ^ 0x1F8F07;
  LODWORD(v1041) = LODWORD(STACK[0x520]) ^ 0xED000000;
  v1062 = v1041 >> 24;
  HIDWORD(v1041) = LODWORD(STACK[0x510]) ^ 0x8F07;
  LODWORD(v1041) = LODWORD(STACK[0x510]) ^ 0xED1F0000;
  v1063 = v1058 ^ 0xDE14CF3B ^ v1479 ^ LODWORD(STACK[0x570]) ^ v1052 ^ v1062 ^ (v1041 >> 16);
  HIDWORD(v1041) = LODWORD(STACK[0x540]) ^ 0x8F07;
  LODWORD(v1041) = LODWORD(STACK[0x540]) ^ 0xED1F0000;
  v1064 = v1058 ^ 0xDE14CF3B ^ LODWORD(STACK[0x618]) ^ LODWORD(STACK[0x574]) ^ (v1041 >> 16);
  HIDWORD(v1041) = LODWORD(STACK[0x534]) ^ 0x1F8F07;
  LODWORD(v1041) = LODWORD(STACK[0x534]) ^ 0xED000000;
  v1065 = *(v1037 + 4 * BYTE2(v1036));
  v1066 = v1064 ^ (v1041 >> 24);
  HIDWORD(v1041) = v1065 ^ 0x1F8F07;
  LODWORD(v1041) = v1065 ^ 0xED000000;
  v1067 = v1041 >> 24;
  v1068 = *(v1037 + 4 * HIBYTE(v1047));
  HIDWORD(v1041) = v1068 ^ 0x8F07;
  LODWORD(v1041) = v1068 ^ 0xED1F0000;
  v1069 = v1066 ^ v1053;
  v1070 = (v1041 >> 16) ^ v1067;
  v1071 = *(v1037 + 4 * HIBYTE(v1042));
  HIDWORD(v1041) = v1071 ^ 0x8F07;
  LODWORD(v1041) = v1071 ^ 0xED1F0000;
  v1072 = v1041 >> 16;
  v1073 = *(v1037 + 4 * BYTE3(v946));
  HIDWORD(v1041) = v1073 ^ 0x8F07;
  LODWORD(v1041) = v1073 ^ 0xED1F0000;
  v1074 = (v1041 >> 16) - 316698873 - ((2 * (v1041 >> 16)) & 0xDA3F1E0E);
  LODWORD(v946) = *(v1037 + 4 * ((v1040 - ((2 * v1040) & 0x34) - 102) ^ v932));
  HIDWORD(v1041) = v946 ^ 7;
  LODWORD(v1041) = v946 ^ 0xED1F8F00;
  LODWORD(v946) = (v1041 >> 8) ^ v1072;
  v1075 = *(v1037 + 4 * BYTE2(v1047));
  HIDWORD(v1041) = v1075 ^ 0x1F8F07;
  LODWORD(v1041) = v1075 ^ 0xED000000;
  LODWORD(STACK[0x6C0]) = -316698873;
  v1076 = (v946 ^ (v1041 >> 24)) - 316698873 - ((2 * (v946 ^ (v1041 >> 24))) & 0xDA3F1E0E);
  HIDWORD(v1041) = v1046 ^ 0x8F07;
  LODWORD(v1041) = v1046 ^ 0xED1F0000;
  LODWORD(v946) = v1041 >> 16;
  HIDWORD(v1041) = v1049 ^ 7;
  LODWORD(v1041) = v1049 ^ 0xED1F8F00;
  v1077 = v1070 - 316698873 - ((2 * v1070) & 0xDA3F1E0E);
  v1078 = ((v1041 >> 8) ^ v946) - 316698873 - ((2 * ((v1041 >> 8) ^ v946)) & 0xDA3F1E0E);
  v1079 = v1060 ^ 0xDE14CF3B;
  v1080 = v1058 ^ 0xDE14CF3B ^ v1482 ^ LODWORD(STACK[0x5C8]) ^ (v1057 - 316698873 - ((2 * v1057) & 0xDA3F1E0E));
  v1081 = STACK[0x678];
  if (STACK[0x678])
  {
    v1082 = v1069;
  }

  else
  {
    v1082 = v1063;
  }

  if (v1081)
  {
    v1083 = v1079;
  }

  else
  {
    v1083 = v1069;
  }

  if (v1081)
  {
    v1084 = v1080;
  }

  else
  {
    v1084 = v1079;
  }

  if (v1081)
  {
    v1080 = v1063;
  }

  v1085 = (((v1061 ^ LODWORD(STACK[0x658]) ^ 0xC287FF92) + LODWORD(STACK[0x660])) ^ 0x99F2F407) + LODWORD(STACK[0x648]);
  v1086 = v1058 ^ 0xA1940921;
  v1087 = v1085 ^ 0x73212D66;
  v1088 = *(v1037 + 4 * BYTE2(v1042));
  HIDWORD(v1089) = v1088 ^ 0x1F8F07;
  LODWORD(v1089) = v1088 ^ 0xED000000;
  v1090 = v1086 ^ v1490 ^ v1085 ^ 0x73212D66 ^ *(v1037 + 4 * BYTE1(v1047)) ^ (v1089 >> 24) ^ (__PAIR64__(v1050 ^ 7u, v1050 ^ 0xED1F8F00) >> 8) ^ v1074;
  HIDWORD(v1089) = LODWORD(STACK[0x680]) ^ 7;
  LODWORD(v1089) = LODWORD(STACK[0x680]) ^ 0xED1F8F00;
  v1091 = v1086 ^ v1493 ^ v1085 ^ 0x73212D66 ^ LODWORD(STACK[0x6B8]) ^ (v1089 >> 8) ^ v1077;
  v1092 = *(v1037 + 4 * v1051);
  HIDWORD(v1089) = v1092 ^ 0x1F8F07;
  LODWORD(v1089) = v1092 ^ 0xED000000;
  v1093 = v1086 ^ v1496 ^ v1085 ^ 0x73212D66 ^ LODWORD(STACK[0x650]) ^ (v1089 >> 24) ^ v1078;
  if (v1081)
  {
    v1094 = v1090;
  }

  else
  {
    v1094 = v1086 ^ v1485 ^ v1085 ^ 0x73212D66 ^ LODWORD(STACK[0x6A0]) ^ v1076;
  }

  if (v1081)
  {
    v1095 = v1093;
  }

  else
  {
    v1095 = v1090;
  }

  if (v1081)
  {
    v1093 = v1091;
    v1096 = v1086 ^ v1485 ^ v1085 ^ 0x73212D66 ^ LODWORD(STACK[0x6A0]) ^ v1076;
  }

  else
  {
    v1096 = v1091;
  }

  if ((v1081 & 2) != 0)
  {
    v1097 = v1084;
  }

  else
  {
    v1097 = v1082;
  }

  if ((v1081 & 2) != 0)
  {
    v1084 = v1082;
    v1098 = v1080;
  }

  else
  {
    v1098 = v1083;
  }

  if ((v1081 & 2) != 0)
  {
    v1099 = v1083;
  }

  else
  {
    v1099 = v1080;
  }

  if ((v1081 & 2) != 0)
  {
    v1100 = v1093;
  }

  else
  {
    v1100 = v1094;
  }

  if ((v1081 & 2) != 0)
  {
    v1101 = v1094;
  }

  else
  {
    v1101 = v1093;
  }

  if ((v1081 & 2) != 0)
  {
    v1102 = v1096;
  }

  else
  {
    v1102 = v1095;
  }

  if ((v1081 & 2) != 0)
  {
    v1096 = v1095;
  }

  v1103 = v1098 + 1953466063 * ((v1099 ^ 0x807F39E5) + (v1096 ^ v1087)) + 1953466063;
  v1104 = v1085 ^ 0xCA1EB7C;
  v1105 = v1103 ^ v1102;
  v1106 = v1084 ^ (861902345 * v1104) ^ (861902345 * (v1103 ^ v1102));
  v1107 = v1101 ^ v1097 ^ 0x7F80C61A;
  LODWORD(STACK[0x6B8]) = v1105 ^ v1099 ^ v1101 ^ (862943833 * (v1100 ^ 0x7F80C61A)) ^ v1106 ^ (862943833 * (v1106 ^ v1107));
  v1108 = v1106 ^ v1107 ^ v1087;
  v1109 = v1096 ^ v1100 ^ v1108 ^ v1106;
  v1110 = STACK[0x688];
  v1111 = (((a71 & (LODWORD(STACK[0x62C]) ^ 0xE505DB4) ^ STACK[0x6B0] & 0x7008CBC6) >> LODWORD(STACK[0x6E0])) + LODWORD(STACK[0x630])) ^ LODWORD(STACK[0x688]) ^ LODWORD(STACK[0x360]) ^ LODWORD(STACK[0x368]) ^ LODWORD(STACK[0x388]) ^ LODWORD(STACK[0x370]) ^ LODWORD(STACK[0x358]) ^ v1505 ^ LODWORD(STACK[0x414]) ^ v1487 ^ LODWORD(STACK[0x434]) ^ v1504 ^ LODWORD(STACK[0x430]) ^ LODWORD(STACK[0x340]) ^ LODWORD(STACK[0x438]) ^ LODWORD(STACK[0x42C]) ^ LODWORD(STACK[0x418]) ^ LODWORD(STACK[0x400]) ^ LODWORD(STACK[0x420]) ^ LODWORD(STACK[0x3E0]) ^ LODWORD(STACK[0x3F8]);
  v1112 = STACK[0x6D8];
  v1113 = LODWORD(STACK[0x348]) ^ (2 * (STACK[0x348] & LODWORD(STACK[0x6D8])));
  v1114 = STACK[0x698];
  v1115 = STACK[0x6F0];
  v1116 = STACK[0x6A8];
  v1117 = STACK[0x6E8];
  v1118 = LODWORD(STACK[0x618]) ^ (2 * (STACK[0x618] & LODWORD(STACK[0x6D8])));
  v1119 = STACK[0x6D0];
  v1120 = LODWORD(STACK[0x350]) ^ LODWORD(STACK[0x354]) ^ LODWORD(STACK[0x450]) ^ LODWORD(STACK[0x478]) ^ LODWORD(STACK[0x440]) ^ LODWORD(STACK[0x5A8]) ^ LODWORD(STACK[0x338]) ^ LODWORD(STACK[0x43C]) ^ LODWORD(STACK[0x5C4]) ^ LODWORD(STACK[0x5CC]) ^ LODWORD(STACK[0x320]) ^ LODWORD(STACK[0x5D4]) ^ LODWORD(STACK[0x614]) ^ LODWORD(STACK[0x5FC]) ^ LODWORD(STACK[0x5D0]) ^ LODWORD(STACK[0x5B8]) ^ LODWORD(STACK[0x5D8]) ^ LODWORD(STACK[0x458]) ^ LODWORD(STACK[0x448]) ^ LODWORD(STACK[0x5B4]) ^ ((v1118 & v1116) >> v1117) ^ ((v1118 & STACK[0x700]) << LODWORD(STACK[0x6D0])) ^ (((v1113 & v1116) >> v1117) | ((v1113 & STACK[0x698]) << v1115)) ^ ((((v1479 ^ (2 * (v1479 & STACK[0x6F8]))) & STACK[0x708]) >> LODWORD(STACK[0x6E0])) + (((v1479 ^ (2 * (v1479 & STACK[0x6F8]))) & STACK[0x698]) << LODWORD(STACK[0x6F0]))) ^ ((((v1482 ^ (2 * (v1482 & STACK[0x6D8]))) & STACK[0x698]) << v1115) + (((v1482 ^ (2 * (v1482 & STACK[0x6D8]))) & STACK[0x6A8]) >> v1117)) ^ ((v1111 ^ -v1111 ^ (LODWORD(STACK[0x408]) - (v1111 ^ LODWORD(STACK[0x408])))) + LODWORD(STACK[0x408]));
  v1121 = v1104 ^ v1096;
  v1122 = STACK[0x6B8];
  v1123 = LODWORD(STACK[0x6B8]) ^ v1109;
  v1124 = STACK[0x670];
  v1125 = (a54 >> LODWORD(STACK[0x6E8])) + (a55 << LODWORD(STACK[0x6D0]));
  v1126 = v1108 ^ v1101 ^ v1105;
  v1127 = ((v1121 ^ LODWORD(STACK[0x6B8]) ^ v1123) + 1336763915 * (v1120 - (LODWORD(STACK[0x670]) ^ LODWORD(STACK[0x688])))) ^ 0xD5E3DD54;
  v1128 = v1120 ^ LODWORD(STACK[0x670]);
  v1129 = v1126 ^ v1128 ^ LODWORD(STACK[0x690]) ^ v1123;
  v1130 = STACK[0x6A8];
  v1131 = STACK[0x6E0];
  v1132 = (((v1129 ^ v1087 ^ v1100 ^ v1103 ^ 0xBD5CA9E6 ^ (2 * ((v1129 ^ v1087 ^ v1100 ^ v1103 ^ 0xBD5CA9E6) & STACK[0x6F8]))) & STACK[0x698]) << LODWORD(STACK[0x6F0])) ^ (((v1129 ^ v1087 ^ v1100 ^ v1103 ^ 0xBD5CA9E6 ^ (2 * ((v1129 ^ v1087 ^ v1100 ^ v1103 ^ 0xBD5CA9E6) & STACK[0x6F8]))) & STACK[0x6A8]) >> LODWORD(STACK[0x6E0]));
  v1133 = v1129 ^ 0xE9A2541F ^ (2 * ((v1129 ^ 0xE9A2541F) & STACK[0x6D8]));
  v1134 = (((v1133 & STACK[0x708]) >> LODWORD(STACK[0x6E8])) + ((v1133 & STACK[0x700]) << LODWORD(STACK[0x6D0]))) ^ v1125;
  v1135 = (v1134 - ((2 * v1134) & 0xDBC61FB0) - 303886376) ^ v1501;
  v1136 = ((((v1127 ^ (2 * (v1127 & STACK[0x6F8]))) & STACK[0x6A8]) >> LODWORD(STACK[0x6E0])) + (((v1127 ^ (2 * (v1127 & STACK[0x6F8]))) & STACK[0x698]) << LODWORD(STACK[0x6D0]))) ^ v1132 ^ v1135;
  v1137 = LODWORD(STACK[0x4A0]) ^ LODWORD(STACK[0x498]) ^ ((a80 >> LODWORD(STACK[0x6E0])) + a53) ^ 0x2E092415 ^ (v1136 - ((2 * v1136) & 0xBAF4AECC) + 1568298854);
  v1138 = STACK[0x750];
  STACK[0x750] += 4 * HIBYTE(v1137);
  v1139 = (-292825075 * v1110) ^ (-292825075 * v1128) ^ 0xD6732A61 ^ v1122;
  v1140 = (((v1139 ^ (2 * (v1139 & v1112))) & v1130) >> v1117) | (((v1139 ^ (2 * (v1139 & v1112))) & v1114) << v1115);
  v1141 = v1140 - ((2 * v1140) & 0xDBC61FB0) - 303886376;
  v1142 = v1141 ^ (v1132 - ((2 * v1132) & 0xDBC61FB0) - 303886376) ^ v1135;
  v1143 = v1497 ^ a89 ^ a84 & 0x276AEE6 ^ 0x4CF1DB91 ^ (v1142 - ((2 * v1142) & 0xCE401F20) + 1730154384);
  v1144 = *(v1138 + 4 * HIBYTE(v1137));
  STACK[0x750] = v1138 + 4 * BYTE2(v1143);
  v1145 = STACK[0x6C8];
  v1146 = v1125 ^ v1501 ^ v1141;
  v1147 = *(v1138 + 4 * BYTE2(v1143));
  v1148 = LODWORD(STACK[0x37C]) ^ a83 ^ ((LODWORD(STACK[0x6C8]) - 1977) ^ 0x3E3895D3) & a87 ^ v1146 ^ v1136 ^ 0xE5F2724A ^ (v1135 - ((2 * v1135) & 0xFE0B92E2) - 16397967);
  STACK[0x750] = v1138 + 4 * BYTE1(v1148);
  v1149 = a81 & 0x26047916 ^ a82 ^ (v1146 - ((2 * v1146) & 0xB8C961E4) - 597380878) ^ v1136 ^ 0x79F661D;
  v1150 = (v1149 - ((2 * v1149) & 0x4ED50B1C) - 1486191218) ^ LODWORD(STACK[0x59C]);
  v1151 = *(v1138 + 4 * BYTE1(v1148));
  v1152 = v1142 ^ LODWORD(STACK[0x5A0]) ^ (v1150 - ((2 * v1150) & 0xE2A141E4) + 1901109490);
  STACK[0x750] = v1138 + 4 * v1152;
  v1153 = *(v1138 + 4 * v1152);
  STACK[0x750] = v1138 + 4 * HIBYTE(v1143);
  v1154 = *(v1138 + 4 * HIBYTE(v1143));
  STACK[0x750] = v1138 + 4 * BYTE2(v1148);
  v1155 = *(v1138 + 4 * BYTE2(v1148));
  STACK[0x740] = v1037;
  STACK[0x750] = v1138 + 4 * BYTE1(v1152);
  v1156 = *(v1138 + 4 * BYTE1(v1152));
  STACK[0x750] = v1138 + 4 * v1137;
  v1157 = *(v1138 + 4 * v1137);
  STACK[0x750] = v1138 + 4 * HIBYTE(v1148);
  v1158 = *(v1138 + 4 * HIBYTE(v1148));
  STACK[0x750] = v1138 + 4 * BYTE2(v1152);
  v1159 = *(v1138 + 4 * BYTE2(v1152));
  STACK[0x750] = v1138 + 4 * BYTE1(v1137);
  v1160 = *(v1138 + 4 * BYTE1(v1137));
  STACK[0x750] = v1138 + 4 * v1143;
  v1152 >>= 24;
  v1161 = *(v1138 + 4 * v1143);
  STACK[0x750] = v1138 + 4 * v1152;
  v1162 = *(v1138 + 4 * v1152);
  v1163 = BYTE2(v1137);
  STACK[0x750] = v1138 + 4 * v1163;
  v1164 = *(v1138 + 4 * v1163);
  STACK[0x750] = v1138 + 4 * BYTE1(v1143);
  v1165 = *(v1138 + 4 * BYTE1(v1143));
  STACK[0x750] = v1138 + 4 * v1148;
  v1166 = v1147 ^ __ROR4__(v1144, 24) ^ __ROR4__(v1151, 8);
  v1167 = __ROR4__(v1153, 16);
  v1168 = a96 & 0xD452038C ^ a94 ^ 0x3DE0DEF1 ^ ((v1166 ^ v1167) - ((2 * (v1166 ^ v1167)) & 0x8CBA4314) + 1180508554);
  v1169 = *(v1138 + 4 * v1148);
  STACK[0x750] = v1138 + 4 * HIBYTE(v1168);
  v1170 = v1155 ^ __ROR4__(v1154, 24) ^ __ROR4__(v1156, 8);
  v1171 = __ROR4__(v1157, 16);
  v1172 = *(v1138 + 4 * HIBYTE(v1168));
  v1173 = v1502 ^ ((v1170 ^ v1171) - ((2 * (v1170 ^ v1171)) & 0xA7894324) + 1405395346);
  STACK[0x750] = v1138 + 4 * BYTE2(v1173);
  v1174 = v1159 ^ __ROR4__(v1158, 24) ^ __ROR4__(v1160, 8);
  v1175 = __ROR4__(v1161, 16);
  v1176 = a88 & 0x2306E58A ^ a86 ^ 0xEA9585CF ^ ((v1174 ^ v1175) - ((2 * (v1174 ^ v1175)) & 0x28D5F574) + 342555322);
  v1177 = *(v1138 + 4 * BYTE2(v1173));
  v1178 = ((a88 & 0xE58A ^ a86 ^ 0x85CF ^ ((v1174 ^ v1175) - ((2 * (v1174 ^ v1175)) & 0xF574) - 1350)) >> 8);
  STACK[0x750] = v1138 + 4 * v1178;
  v1179 = (a57 + (a85 << v1119)) ^ __ROR4__(v1162, 24) ^ v1164 ^ __ROR4__(v1165, 8);
  v1180 = *(v1138 + 4 * v1178);
  v1182 = __ROR4__(v1169, 16);
  v1181 = v1179 ^ v1182;
  v1183 = (v1179 ^ v1182);
  STACK[0x750] = v1138 + 4 * v1183;
  v1184 = *(v1138 + 4 * v1183);
  STACK[0x750] = v1138 + 4 * HIBYTE(v1173);
  v1185 = *(v1138 + 4 * HIBYTE(v1173));
  STACK[0x750] = v1138 + 4 * BYTE2(v1176);
  v1186 = *(v1138 + 4 * BYTE2(v1176));
  STACK[0x750] = v1138 + 4 * BYTE1(v1181);
  v1187 = *(v1138 + 4 * BYTE1(v1181));
  STACK[0x750] = v1138 + 4 * v1168;
  v1188 = *(v1138 + 4 * v1168);
  STACK[0x750] = v1138 + 4 * HIBYTE(v1176);
  v1189 = *(v1138 + 4 * HIBYTE(v1176));
  STACK[0x750] = v1138 + 4 * BYTE2(v1181);
  v1190 = *(v1138 + 4 * BYTE2(v1181));
  STACK[0x750] = v1138 + 4 * BYTE1(v1168);
  v1191 = *(v1138 + 4 * BYTE1(v1168));
  STACK[0x750] = v1138 + 4 * v1173;
  v1181 >>= 24;
  v1192 = *(v1138 + 4 * v1173);
  STACK[0x750] = v1138 + 4 * v1181;
  v1193 = *(v1138 + 4 * v1181);
  v1194 = BYTE2(v1168);
  STACK[0x750] = v1138 + 4 * v1194;
  v1195 = *(v1138 + 4 * v1194);
  STACK[0x750] = v1138 + 4 * BYTE1(v1173);
  v1196 = *(v1138 + 4 * BYTE1(v1173));
  STACK[0x750] = v1138 + 4 * v1176;
  v1197 = ((a97 << v1115) + ((a100 & v1130) >> v1131)) ^ __ROR4__(v1172, 24) ^ v1177 ^ __ROR4__(v1180, 8) ^ __ROR4__(v1184, 16);
  v1198 = *(v1138 + 4 * v1176);
  STACK[0x750] = v1138 + 4 * HIBYTE(v1197);
  v1199 = v1186 ^ __ROR4__(v1185, 24) ^ __ROR4__(v1187, 8);
  v1200 = __ROR4__(v1188, 16);
  v1201 = a95 & 0x47668FCF ^ a90 ^ 0xC4EAA1F8 ^ ((v1199 ^ v1200) - ((2 * (v1199 ^ v1200)) & 0xFAA6B716) + 2102614923);
  v1202 = *(v1138 + 4 * HIBYTE(v1197));
  STACK[0x750] = v1138 + 4 * BYTE2(v1201);
  v1203 = ((a93 << v1115) + a58) ^ HIBYTE(v1189) ^ (v1189 << 8) ^ v1190 ^ __ROR4__(v1191, 8) ^ __ROR4__(v1192, 16);
  v1204 = *(v1138 + 4 * BYTE2(v1201));
  STACK[0x750] = v1138 + 4 * BYTE1(v1203);
  v1205 = v1195 ^ __ROR4__(v1193, 24);
  v1206 = __ROR4__(v1196, 8);
  v1207 = *(v1138 + 4 * BYTE1(v1203));
  v1208 = v1503 ^ __ROR4__(v1198, 16) ^ ((v1205 ^ v1206) - 766585244 - ((2 * (v1205 ^ v1206)) & 0xA49DB372) + 853);
  STACK[0x750] = v1138 + 4 * v1208;
  v1209 = *(v1138 + 4 * v1208);
  STACK[0x750] = v1138 + 4 * HIBYTE(v1201);
  v1210 = *(v1138 + 4 * HIBYTE(v1201));
  STACK[0x750] = v1138 + 4 * BYTE2(v1203);
  v1211 = *(v1138 + 4 * BYTE2(v1203));
  STACK[0x750] = v1138 + 4 * BYTE1(v1208);
  v1212 = *(v1138 + 4 * BYTE1(v1208));
  STACK[0x750] = v1138 + 4 * v1197;
  v1213 = *(v1138 + 4 * v1197);
  STACK[0x750] = v1138 + 4 * HIBYTE(v1203);
  v1214 = *(v1138 + 4 * HIBYTE(v1203));
  STACK[0x750] = v1138 + 4 * BYTE2(v1208);
  v1215 = *(v1138 + 4 * BYTE2(v1208));
  STACK[0x750] = v1138 + 4 * BYTE1(v1197);
  v1216 = *(v1138 + 4 * BYTE1(v1197));
  STACK[0x750] = v1138 + 4 * v1201;
  v1208 >>= 24;
  v1217 = *(v1138 + 4 * v1201);
  STACK[0x750] = v1138 + 4 * v1208;
  v1218 = *(v1138 + 4 * v1208);
  v1219 = BYTE2(v1197);
  STACK[0x750] = v1138 + 4 * v1219;
  v1220 = *(v1138 + 4 * v1219);
  STACK[0x750] = v1138 + 4 * BYTE1(v1201);
  v1221 = *(v1138 + 4 * BYTE1(v1201));
  STACK[0x750] = v1138 + 4 * v1203;
  v1222 = ((LODWORD(STACK[0x208]) << v1119) + a62) ^ __ROR4__(v1202, 24) ^ v1204 ^ __ROR4__(v1207, 8) ^ __ROR4__(v1209, 16);
  v1223 = *(v1138 + 4 * v1203);
  STACK[0x750] = v1138 + 4 * HIBYTE(v1222);
  v1224 = ((a102 >> v1131) + a101) ^ __ROR4__(v1210, 24) ^ v1211 ^ __ROR4__(v1212, 8) ^ __ROR4__(v1213, 16);
  v1225 = *(v1138 + 4 * HIBYTE(v1222));
  STACK[0x750] = v1138 + 4 * BYTE2(v1224);
  v1226 = *(v1138 + 4 * BYTE2(v1224));
  v1227 = (a63 + (a64 >> v1117)) ^ __ROR4__(v1214, 24) ^ v1215 ^ __ROR4__(v1216, 8) ^ __ROR4__(v1217, 16);
  STACK[0x750] = v1138 + 4 * BYTE1(v1227);
  v1228 = *(v1138 + 4 * BYTE1(v1227));
  v1229 = ((a66 >> v1117) + a65) ^ (v1218 << 8) ^ HIBYTE(v1218) ^ v1220 ^ __ROR4__(v1221, 8) ^ __ROR4__(v1223, 16);
  STACK[0x750] = v1138 + 4 * v1229;
  v1230 = *(v1138 + 4 * v1229);
  STACK[0x750] = v1138 + 4 * HIBYTE(v1224);
  v1231 = *(v1138 + 4 * HIBYTE(v1224));
  STACK[0x750] = v1138 + 4 * BYTE2(v1227);
  v1232 = *(v1138 + 4 * BYTE2(v1227));
  STACK[0x750] = v1138 + 4 * BYTE1(v1229);
  v1233 = *(v1138 + 4 * BYTE1(v1229));
  STACK[0x750] = v1138 + 4 * v1222;
  v1234 = *(v1138 + 4 * v1222);
  STACK[0x750] = v1138 + 4 * HIBYTE(v1227);
  v1235 = *(v1138 + 4 * HIBYTE(v1227));
  STACK[0x750] = v1138 + 4 * BYTE2(v1229);
  v1236 = *(v1138 + 4 * BYTE2(v1229));
  STACK[0x750] = v1138 + 4 * BYTE1(v1222);
  v1237 = *(v1138 + 4 * BYTE1(v1222));
  STACK[0x750] = v1138 + 4 * v1224;
  v1229 >>= 24;
  v1238 = *(v1138 + 4 * v1224);
  STACK[0x750] = v1138 + 4 * v1229;
  v1239 = *(v1138 + 4 * v1229);
  v1240 = BYTE2(v1222);
  STACK[0x750] = v1138 + 4 * v1240;
  v1241 = *(v1138 + 4 * v1240);
  STACK[0x750] = v1138 + 4 * BYTE1(v1224);
  v1242 = *(v1138 + 4 * BYTE1(v1224));
  STACK[0x750] = v1138 + 4 * v1227;
  v1243 = v1226 ^ __ROR4__(v1225, 24) ^ __ROR4__(v1228, 8);
  v1244 = __ROR4__(v1230, 16);
  v1245 = v1506 ^ ((v1243 ^ v1244) - ((2 * (v1243 ^ v1244)) & 0x181BF5D6) - 1945240853);
  v1246 = *(v1138 + 4 * v1227);
  STACK[0x750] = v1138 + 4 * HIBYTE(v1245);
  v1247 = ((LODWORD(STACK[0x230]) << v1119) + (a67 >> v1117)) ^ __ROR4__(v1231, 24) ^ v1232 ^ __ROR4__(v1233, 8) ^ __ROR4__(v1234, 16);
  v1248 = *(v1138 + 4 * HIBYTE(v1245));
  STACK[0x750] = v1138 + 4 * BYTE2(v1247);
  v1249 = ((a68 >> v1131) + (LODWORD(STACK[0x228]) << v1115)) ^ __ROR4__(v1235, 24) ^ v1236 ^ __ROR4__(v1237, 8) ^ __ROR4__(v1238, 16);
  v1250 = *(v1138 + 4 * BYTE2(v1247));
  STACK[0x750] = v1138 + 4 * BYTE1(v1249);
  v1251 = v1241 ^ __ROR4__(v1239, 24) ^ __ROR4__(v1242, 8);
  v1252 = __ROR4__(v1246, 16);
  v1253 = *(v1138 + 4 * BYTE1(v1249));
  v1254 = a104 & 0xC4EB929B ^ LODWORD(STACK[0x210]) ^ 0x48EB6292 ^ ((v1251 ^ v1252) - ((2 * (v1251 ^ v1252)) & 0x66AF1AF8) - 1286107780);
  STACK[0x750] = v1138 + 4 * v1254;
  v1255 = *(v1138 + 4 * v1254);
  STACK[0x750] = v1138 + 4 * HIBYTE(v1247);
  v1256 = *(v1138 + 4 * HIBYTE(v1247));
  STACK[0x750] = v1138 + 4 * BYTE2(v1249);
  v1257 = *(v1138 + 4 * BYTE2(v1249));
  STACK[0x750] = v1138 + 4 * BYTE1(v1254);
  v1258 = *(v1138 + 4 * BYTE1(v1254));
  STACK[0x750] = v1138 + 4 * v1245;
  v1259 = *(v1138 + 4 * v1245);
  STACK[0x750] = v1138 + 4 * HIBYTE(v1249);
  v1260 = *(v1138 + 4 * HIBYTE(v1249));
  STACK[0x750] = v1138 + 4 * BYTE2(v1254);
  v1261 = *(v1138 + 4 * BYTE2(v1254));
  STACK[0x750] = v1138 + 4 * BYTE1(v1245);
  v1262 = *(v1138 + 4 * BYTE1(v1245));
  STACK[0x750] = v1138 + 4 * v1247;
  v1263 = *(v1138 + 4 * v1247);
  v1254 >>= 24;
  STACK[0x750] = v1138 + 4 * v1254;
  v1264 = *(v1138 + 4 * v1254);
  STACK[0x750] = v1138 + 4 * BYTE2(v1245);
  v1265 = *(v1138 + 4 * BYTE2(v1245));
  STACK[0x750] = v1138 + 4 * BYTE1(v1247);
  v1266 = *(v1138 + 4 * BYTE1(v1247));
  STACK[0x750] = v1138 + 4 * v1249;
  v1267 = v1250 ^ __ROR4__(v1248, 24) ^ __ROR4__(v1253, 8);
  v1268 = __ROR4__(v1255, 16);
  v1269 = STACK[0x298] & 0xD02A832E ^ LODWORD(STACK[0x288]) ^ 0xEB8F06F1 ^ ((v1267 ^ v1268) - ((2 * (v1267 ^ v1268)) & 0x28E4F258) + 343046444);
  v1270 = *(v1138 + 4 * v1249);
  STACK[0x750] = v1138 + 4 * HIBYTE(v1269);
  v1271 = v1257 ^ __ROR4__(v1256, 24) ^ __ROR4__(v1258, 8);
  v1272 = __ROR4__(v1259, 16);
  v1273 = STACK[0x244] & 0x47905D9 ^ LODWORD(STACK[0x250]) ^ 0xF6E73199 ^ ((v1271 ^ v1272) - ((2 * (v1271 ^ v1272)) & 0x1A539E5E) + 220843823);
  v1274 = *(v1138 + 4 * HIBYTE(v1269));
  STACK[0x750] = v1138 + 4 * BYTE2(v1273);
  v1276 = __PAIR64__(v1264, __ROR4__(v1263, 16));
  v1275 = ((LODWORD(STACK[0x248]) >> v1117) + a70) ^ __ROR4__(v1260, 24) ^ v1261 ^ __ROR4__(v1262, 8) ^ v1276;
  v1277 = *(v1138 + 4 * BYTE2(v1273));
  STACK[0x750] = v1138 + 4 * BYTE1(v1275);
  LODWORD(v1276) = v1264;
  v1278 = a103 & 0xD4909AC2 ^ LODWORD(STACK[0x200]) ^ v1265 ^ ((v1276 >> 24) - ((2 * (v1276 >> 24)) & 0x632E1786) - 1315501117) ^ __ROR4__(v1266, 8);
  LODWORD(v1276) = __ROR4__(v1270, 16);
  v1279 = *(v1138 + 4 * BYTE1(v1275));
  v1280 = v1278 ^ v1276 ^ 0x9AE8F4FC;
  v1281 = (v1278 ^ v1276) ^ 0xFC;
  STACK[0x750] = v1138 + 4 * v1281;
  v1282 = *(v1138 + 4 * v1281);
  STACK[0x750] = v1138 + 4 * HIBYTE(v1273);
  v1283 = *(v1138 + 4 * HIBYTE(v1273));
  STACK[0x750] = v1138 + 4 * BYTE2(v1275);
  v1284 = *(v1138 + 4 * BYTE2(v1275));
  STACK[0x750] = v1138 + 4 * BYTE1(v1280);
  v1285 = *(v1138 + 4 * BYTE1(v1280));
  STACK[0x750] = v1138 + 4 * v1269;
  v1286 = *(v1138 + 4 * v1269);
  STACK[0x750] = v1138 + 4 * HIBYTE(v1275);
  v1287 = *(v1138 + 4 * HIBYTE(v1275));
  STACK[0x750] = v1138 + 4 * BYTE2(v1280);
  v1288 = *(v1138 + 4 * BYTE2(v1280));
  STACK[0x750] = v1138 + 4 * BYTE1(v1269);
  v1289 = *(v1138 + 4 * BYTE1(v1269));
  STACK[0x750] = v1138 + 4 * v1273;
  v1280 >>= 24;
  v1290 = *(v1138 + 4 * v1273);
  STACK[0x750] = v1138 + 4 * v1280;
  v1291 = *(v1138 + 4 * v1280);
  v1292 = BYTE2(v1269);
  STACK[0x750] = v1138 + 4 * v1292;
  v1293 = *(v1138 + 4 * v1292);
  STACK[0x750] = v1138 + 4 * BYTE1(v1273);
  v1294 = *(v1138 + 4 * BYTE1(v1273));
  STACK[0x750] = v1138 + 4 * v1275;
  v1295 = (a74 + (LODWORD(STACK[0x2A8]) << v1119)) ^ __ROR4__(v1274, 24) ^ v1277 ^ __ROR4__(v1279, 8) ^ __ROR4__(v1282, 16);
  v1296 = *(v1138 + 4 * v1275);
  STACK[0x750] = v1138 + 4 * HIBYTE(v1295);
  v1297 = ((LODWORD(STACK[0x2A0]) << v1115) + ((v1130 & STACK[0x2B0]) >> v1131)) ^ __ROR4__(v1283, 24) ^ v1284 ^ __ROR4__(v1285, 8) ^ __ROR4__(v1286, 16);
  v1298 = *(v1138 + 4 * HIBYTE(v1295));
  STACK[0x750] = v1138 + 4 * (v1297 >> (v1124 & 0x10) >> (v1124 & 0x10 ^ 0x10));
  v1299 = v1288 ^ __ROR4__(v1287, 24) ^ __ROR4__(v1289, 8);
  LODWORD(v1276) = __ROR4__(v1290, 16);
  v1300 = v1507 ^ ((v1299 ^ v1276) - ((2 * (v1299 ^ v1276)) & 0x3FD7EDA4) + 535557842);
  v1301 = *(v1138 + 4 * (v1297 >> (v1124 & 0x10) >> (v1124 & 0x10 ^ 0x10)));
  STACK[0x750] = v1138 + 4 * BYTE1(v1300);
  v1302 = v1293 ^ __ROR4__(v1291, 24) ^ __ROR4__(v1294, 8);
  LODWORD(v1276) = __ROR4__(v1296, 16);
  v1303 = *(v1138 + 4 * BYTE1(v1300));
  v1304 = STACK[0x218] & 0x35FE80BD ^ a98 ^ 0x5757539B ^ ((v1302 ^ v1276) - ((2 * (v1302 ^ v1276)) & 0x39255980) - 1668109120);
  STACK[0x750] = v1138 + 4 * v1304;
  v1305 = *(v1138 + 4 * v1304);
  STACK[0x750] = v1138 + 4 * HIBYTE(v1297);
  v1306 = *(v1138 + 4 * HIBYTE(v1297));
  STACK[0x750] = v1138 + 4 * BYTE2(v1300);
  v1307 = *(v1138 + 4 * BYTE2(v1300));
  STACK[0x750] = v1138 + 4 * BYTE1(v1304);
  v1308 = *(v1138 + 4 * BYTE1(v1304));
  STACK[0x750] = v1138 + 4 * v1295;
  v1309 = *(v1138 + 4 * v1295);
  STACK[0x750] = v1138 + 4 * HIBYTE(v1300);
  v1310 = *(v1138 + 4 * HIBYTE(v1300));
  STACK[0x750] = v1138 + 4 * BYTE2(v1304);
  v1311 = *(v1138 + 4 * BYTE2(v1304));
  STACK[0x750] = v1138 + 4 * BYTE1(v1295);
  v1312 = v1297 - 1;
  if ((v1297 & 1) == 0)
  {
    v1312 = v1297 + 1;
  }

  v1313 = *(v1138 + 4 * BYTE1(v1295));
  v1314 = v1312 ^ 1;
  STACK[0x750] = v1138 + 4 * v1314;
  v1315 = *(v1138 + 4 * v1314);
  v1316 = HIBYTE(v1304);
  STACK[0x750] = v1138 + 4 * v1316;
  v1317 = *(v1138 + 4 * v1316);
  v1318 = BYTE2(v1295);
  STACK[0x750] = v1138 + 4 * v1318;
  v1319 = *(v1138 + 4 * v1318);
  STACK[0x750] = v1138 + 4 * BYTE1(v1297);
  v1320 = *(v1138 + 4 * BYTE1(v1297));
  STACK[0x750] = v1138 + 4 * v1300;
  v1321 = v1301 ^ __ROR4__(v1298, 24) ^ __ROR4__(v1303, 8);
  v1322 = __ROR4__(v1305, 16);
  v1323 = v1508 ^ ((v1321 ^ v1322) - ((2 * (v1321 ^ v1322)) & 0x25678978) - 1833712452);
  v1324 = *(v1138 + 4 * v1300);
  STACK[0x750] = v1138 + 4 * HIBYTE(v1323);
  v1325 = v1307 ^ __ROR4__(v1306, 24) ^ __ROR4__(v1308, 8);
  v1326 = __ROR4__(v1309, 16);
  v1327 = *(v1138 + 4 * HIBYTE(v1323));
  v1328 = v1509 ^ ((v1325 ^ v1326) - ((2 * (v1325 ^ v1326)) & 0x8ADEBB8) + 72807900);
  STACK[0x750] = v1138 + 4 * BYTE2(v1328);
  v1329 = v1311 ^ __ROR4__(v1310, 24) ^ __ROR4__(v1313, 8);
  v1330 = __ROR4__(v1315, 16);
  v1331 = STACK[0x290] & 0xF468BA0A ^ LODWORD(STACK[0x278]) ^ 0xCFBAB501 ^ ((v1329 ^ v1330) - ((2 * (v1329 ^ v1330)) & 0x801BB1FC) - 1072834306);
  v1332 = *(v1138 + 4 * BYTE2(v1328));
  STACK[0x750] = v1138 + 4 * BYTE1(v1331);
  v1333 = *(v1138 + 4 * BYTE1(v1331));
  v1334 = (a76 + (LODWORD(STACK[0x268]) << v1115)) ^ __ROR4__(v1317, 24) ^ v1319 ^ __ROR4__(v1320, 8) ^ __ROR4__(v1324, 16);
  STACK[0x750] = v1138 + 4 * v1334;
  v1335 = *(v1138 + 4 * v1334);
  STACK[0x750] = v1138 + 4 * HIBYTE(v1328);
  v1336 = *(v1138 + 4 * HIBYTE(v1328));
  STACK[0x750] = v1138 + 4 * BYTE2(v1331);
  v1337 = *(v1138 + 4 * BYTE2(v1331));
  STACK[0x750] = v1138 + 4 * BYTE1(v1334);
  v1338 = *(v1138 + 4 * BYTE1(v1334));
  STACK[0x750] = v1138 + 4 * v1323;
  v1339 = *(v1138 + 4 * v1323);
  STACK[0x750] = v1138 + 4 * HIBYTE(v1331);
  v1340 = *(v1138 + 4 * HIBYTE(v1331));
  STACK[0x750] = v1138 + 4 * BYTE2(v1334);
  v1341 = STACK[0x270] & 0x2CE5AF39;
  v1342 = v1332 ^ __ROR4__(v1327, 24) ^ __ROR4__(v1333, 8) ^ __ROR4__(v1335, 16);
  v1343 = v1337 ^ __ROR4__(v1338, 8) ^ ((v1336 >> (STACK[0x710] & 0x18) >> (STACK[0x710] & 0x18 ^ 0x18)) | (v1336 << 8)) ^ __ROR4__(v1339, 16);
  v1344 = *(v1138 + 4 * BYTE2(v1334));
  STACK[0x750] = v1138 + 4 * BYTE1(v1323);
  v1345 = *(v1138 + 4 * BYTE1(v1323));
  STACK[0x750] = v1138 + 4 * v1328;
  v1334 >>= 24;
  LODWORD(v1336) = *(v1138 + 4 * v1328);
  STACK[0x750] = v1138 + 4 * v1334;
  v1346 = *(v1138 + 4 * v1334);
  v1347 = BYTE2(v1323);
  STACK[0x750] = v1138 + 4 * v1347;
  v1348 = *(v1138 + 4 * v1347) ^ __ROR4__(v1346, 24);
  STACK[0x750] = v1138 + 4 * BYTE1(v1328);
  v1349 = *(v1138 + 4 * BYTE1(v1328));
  STACK[0x750] = v1138 + 4 * v1331;
  v1350 = v1341 ^ LODWORD(STACK[0x2C0]) ^ 0xE32FD9BD ^ (v1342 - ((2 * v1342) & 0x20231E96) + 269586251);
  v1351 = v1348 ^ __ROR4__(v1349, 8) ^ __ROR4__(*(v1138 + 4 * v1331), 16);
  v1352 = v1510 ^ (v1343 - ((2 * v1343) & 0x1E0ACA62) + 252011825);
  v1353 = (a77 + (a78 >> v1117)) ^ __ROR4__(v1340, 24) ^ v1344 ^ __ROR4__(v1345, 8) ^ __ROR4__(v1336, 16);
  v1354 = a99 & 0x21904053 ^ LODWORD(STACK[0x238]);
  STACK[0x750] = v1138 + 4 * HIBYTE(v1350);
  v1355 = *(v1138 + 4 * HIBYTE(v1350));
  STACK[0x750] = v1138 + 4 * BYTE2(v1352);
  v1356 = *(v1138 + 4 * BYTE2(v1352));
  STACK[0x750] = v1138 + 4 * BYTE1(v1353);
  v1357 = *(v1138 + 4 * BYTE1(v1353));
  v1358 = v1354 ^ 0x8F6407CC ^ (v1351 - ((2 * v1351) & 0xA2377046) + 1360771107);
  STACK[0x750] = v1138 + 4 * v1358;
  v1359 = *(v1138 + 4 * v1358);
  STACK[0x750] = v1138 + 4 * HIBYTE(v1352);
  v1360 = *(v1138 + 4 * HIBYTE(v1352));
  v1361 = STACK[0x220] & v1130;
  STACK[0x750] = v1138 + 4 * BYTE2(v1353);
  v1362 = *(v1138 + 4 * BYTE2(v1353));
  STACK[0x750] = v1138 + 4 * BYTE1(v1358);
  v1363 = *(v1138 + 4 * BYTE1(v1358));
  STACK[0x750] = v1138 + 4 * v1350;
  LODWORD(v1336) = *(v1138 + 4 * v1350);
  STACK[0x750] = v1138 + 4 * HIBYTE(v1353);
  v1364 = *(v1138 + 4 * HIBYTE(v1353));
  STACK[0x750] = v1138 + 4 * BYTE2(v1358);
  v1365 = *(v1138 + 4 * BYTE2(v1358));
  STACK[0x750] = v1138 + 4 * BYTE1(v1350);
  v1366 = *(v1138 + 4 * BYTE1(v1350));
  STACK[0x750] = v1138 + 4 * v1352;
  v1358 >>= 24;
  v1367 = *(v1138 + 4 * v1352);
  STACK[0x750] = v1138 + 4 * v1358;
  v1368 = *(v1138 + 4 * v1358);
  v1369 = LODWORD(STACK[0x280]) << v1119;
  v1370 = BYTE2(v1350);
  STACK[0x750] = v1138 + 4 * v1370;
  v1371 = *(v1138 + 4 * v1370);
  v1372 = v1369 + (v1361 >> v1131);
  STACK[0x750] = v1138 + 4 * BYTE1(v1352);
  v1373 = *(v1138 + 4 * BYTE1(v1352));
  v1374 = v1371 ^ __ROR4__(v1368, 24);
  v1375 = v1353;
  STACK[0x750] = v1138 + 4 * v1353;
  v1376 = LODWORD(STACK[0x2B8]) ^ __ROR4__(v1360, 24) ^ v1362 ^ __ROR4__(v1363, 8) ^ __ROR4__(v1336, 16);
  v1377 = ((a91 << v1115) + ((v1130 & a92) >> v1117)) ^ __ROR4__(v1355, 24) ^ v1356 ^ __ROR4__(v1357, 8) ^ __ROR4__(v1359, 16);
  v1378 = *(v1138 + 4 * v1375);
  v1379 = __ROR4__(v1373, 8);
  STACK[0x750] = v1138;
  v1380 = (v1374 ^ v1379) - ((2 * (v1374 ^ v1379)) & 0x498F4C20) + 617063952;
  v1381 = STACK[0x740];
  v1382 = v1372 ^ __ROR4__(v1364, 24) ^ v1365 ^ __ROR4__(v1366, 8) ^ __ROR4__(v1367, 16);
  v1383 = v1511 ^ __ROR4__(v1378, 16) ^ v1380;
  v1384 = *(STACK[0x740] + 4 * HIBYTE(v1377));
  v1385 = HIBYTE(v1383);
  HIDWORD(v1387) = v1384 ^ 0x8F07;
  LODWORD(v1387) = v1384 ^ 0xED1F0000;
  v1386 = v1387 >> 16;
  v1388 = *(STACK[0x740] + 4 * BYTE2(v1376));
  HIDWORD(v1387) = v1388 ^ 0x1F8F07;
  LODWORD(v1387) = v1388 ^ 0xED000000;
  v1389 = (v1387 >> 24) ^ v1386;
  v1390 = *(STACK[0x740] + 4 * v1383);
  HIDWORD(v1387) = v1390 ^ 7;
  LODWORD(v1387) = v1390 ^ 0xED1F8F00;
  v1391 = *(STACK[0x740] + 4 * HIBYTE(v1376));
  v1392 = (v1387 >> 8) ^ *(STACK[0x740] + 4 * BYTE1(v1382)) ^ (v1389 + LODWORD(STACK[0x6C0]) - ((2 * v1389) & 0xDA3F1E0E));
  v1393 = *(STACK[0x740] + 4 * BYTE2(v1382));
  HIDWORD(v1387) = v1391 ^ 0x8F07;
  LODWORD(v1387) = v1391 ^ 0xED1F0000;
  v1394 = v1387 >> 16;
  HIDWORD(v1387) = v1393 ^ 0x1F8F07;
  LODWORD(v1387) = v1393 ^ 0xED000000;
  v1395 = STACK[0x6C0];
  v1396 = ((v1387 >> 24) ^ v1394) + LODWORD(STACK[0x6C0]) - ((2 * ((v1387 >> 24) ^ v1394)) & 0xDA3F1E0E);
  v1397 = *(STACK[0x740] + 4 * v1377);
  v1398 = *(STACK[0x740] + 4 * HIBYTE(v1382));
  HIDWORD(v1387) = v1397 ^ 7;
  LODWORD(v1387) = v1397 ^ 0xED1F8F00;
  v1399 = (v1387 >> 8) ^ *(STACK[0x740] + 4 * BYTE1(v1383)) ^ v1396;
  v1400 = *(STACK[0x740] + 4 * BYTE2(v1383));
  v1401 = *(STACK[0x740] + 4 * BYTE1(v1377));
  HIDWORD(v1387) = v1398 ^ 0x8F07;
  LODWORD(v1387) = v1398 ^ 0xED1F0000;
  v1402 = v1387 >> 16;
  HIDWORD(v1387) = v1400 ^ 0x1F8F07;
  LODWORD(v1387) = v1400 ^ 0xED000000;
  v1403 = (v1387 >> 24) ^ v1402;
  STACK[0x740] += 4 * v1376;
  v1404 = *(v1381 + 4 * v1376);
  STACK[0x740] = v1381 + 4 * v1385;
  HIDWORD(v1387) = v1404 ^ 7;
  LODWORD(v1387) = v1404 ^ 0xED1F8F00;
  v1405 = v1387 >> 8;
  v1406 = *(v1381 + 4 * v1385);
  HIDWORD(v1387) = v1406 ^ 0x8F07;
  LODWORD(v1387) = v1406 ^ 0xED1F0000;
  v1407 = v1387 >> 16;
  v1408 = BYTE2(v1377);
  STACK[0x740] = v1381 + 4 * v1408;
  v1409 = *(v1381 + 4 * v1408);
  v1410 = BYTE1(v1376);
  STACK[0x740] = v1381 + 4 * v1410;
  v1411 = *(v1381 + 4 * v1410);
  STACK[0x740] = v1381 + 4 * v1382;
  HIDWORD(v1387) = v1409 ^ 0x1F8F07;
  LODWORD(v1387) = v1409 ^ 0xED000000;
  v1412 = ((v1387 >> 24) ^ v1407) + v1395 - ((2 * ((v1387 >> 24) ^ v1407)) & 0xDA3F1E0E);
  v1413 = *(v1381 + 4 * v1382);
  HIDWORD(v1387) = v1413 ^ 7;
  LODWORD(v1387) = v1413 ^ 0xED1F8F00;
  STACK[0x740] = v1381;
  LODWORD(v1381) = v1412 ^ v1411 ^ (v1387 >> 8);
  v1414 = LODWORD(STACK[0x37C]) ^ 0xCAFAAFB2 ^ ((v1405 ^ v1401 ^ (v1403 + v1395 - ((2 * v1403) & 0xDA3F1E0E))) - ((2 * (v1405 ^ v1401 ^ (v1403 + v1395 - ((2 * v1403) & 0xDA3F1E0E)))) & 0xEA51A8C8) - 181873564);
  v1415 = LODWORD(STACK[0x2C4]) ^ (v1399 - ((2 * v1399) & 0xAC744AF8) - 700832388) ^ 0xB59161A1 ^ v1414;
  v1416 = (v1392 - ((2 * v1392) & 0xEA51A8C8) - 181873564) ^ LODWORD(STACK[0x37C]);
  v1417 = LODWORD(STACK[0x2C4]) ^ 0xC7B35482 ^ (v1381 - ((2 * v1381) & 0xAC744AF8) - 700832388);
  v1418 = v1417 ^ v1415;
  LODWORD(v1381) = ((v1415 ^ v1416 ^ 0x20F134E0) - 1557135540 - ((2 * (v1415 ^ v1416 ^ 0x20F134E0)) & 0x465FFE98)) ^ LODWORD(STACK[0x4D4]);
  v1419 = v1381 ^ v1414 ^ v1417;
  v1420 = ((v1416 ^ 0x20F134E0) - 1557135540 - 2 * ((v1416 ^ 0x20F134E0) & 0x232FFF5E ^ v1416 & 0x12)) ^ LODWORD(STACK[0x4D4]);
  v1421 = (v1418 - 1557135540 - ((2 * v1418) & 0x465FFE98)) ^ LODWORD(STACK[0x4D4]);
  v1498[3] = *(*(&off_1006B4E30 + v1145 - 2088) + (BYTE1(v1381) ^ 0xCCLL)) ^ 0x72;
  v1498[13] = (v1420 - ((2 * v1420) & 0xA8) + 84) ^ 0xAD ^ *(*(&off_1006B4E30 + (v1145 ^ 0xC2E)) + (v1420 ^ 0x42) - 12);
  v1498[2] = (*(*(&off_1006B4E30 + v1145 - 2939) + (v1421 ^ 0x43)) + 91) ^ 0x7F;
  v1498[11] = (*(*(&off_1006B4E30 + (v1145 ^ 0xC55)) + (HIBYTE(v1421) ^ 0x71) - 4) + (HIBYTE(v1421) ^ 0x23) - 56) ^ 0xB6;
  v1498[1] = *(*(&off_1006B4E30 + (v1145 ^ 0xF88)) + (BYTE2(v1421) ^ 0x99) - 12) ^ 0x28;
  v1422 = *(*(&off_1006B4E30 + (v1145 ^ 0xF39)) + (BYTE2(v1419) ^ 0x6DLL) - 8);
  HIDWORD(v1387) = v1422 ^ 3;
  LODWORD(v1387) = (v1422 ^ 0x90) << 24;
  v1498[9] = (((((32 * BYTE2(v1419)) | (BYTE2(v1419) >> 3)) ^ 0x69 ^ (v1387 >> 27)) >> 5) | (8 * (((32 * BYTE2(v1419)) | (BYTE2(v1419) >> 3)) ^ 0x69 ^ (v1387 >> 27)))) ^ 0xD1;
  v1498[7] = (*(*(&off_1006B4E30 + (v1145 ^ 0x804)) + (HIBYTE(v1419) ^ 0xBFLL) - 8) - 86) ^ 0x20;
  LOBYTE(v1407) = *(*(&off_1006B4E30 + (v1145 ^ 0xD62)) + (v1419 ^ 0x73) - 4);
  *v1498 = v1407 ^ (-50 * (v1407 ^ 0x68)) ^ 3;
  LOBYTE(v1392) = *(*(&off_1006B4E30 + (v1145 ^ 0xD4A)) + (BYTE3(v1381) ^ 0x18) - 8);
  v1498[15] = v1392 ^ (16 * v1392) ^ 0xFE;
  v1498[8] = *(*(&off_1006B4E30 + v1145 - 2061) + (BYTE1(v1420) ^ 0xADLL) - 4) ^ 0xB6;
  v1423 = STACK[0x758];
  v1423[12] = *(*(&off_1006B4E30 + v1145 - 3051) + (v1381 ^ 0x33) - 4) ^ 0x9A ^ (52 - ((*(*(&off_1006B4E30 + v1145 - 3051) + (v1381 ^ 0x33) - 4) >> 4) & 4));
  v1423[6] = ((BYTE1(v1419) ^ 0xAB) + *(*(&off_1006B4E30 + (v1145 ^ 0xDDA)) + (BYTE1(v1419) ^ 0x65) - 4) - 61) ^ 0x14;
  v1424 = (HIWORD(v1420) ^ 0xC5) + (HIWORD(v1420) ^ 0xF2);
  v1423[14] = (v1424 - ((2 * v1424) & 0xF7) - 5) ^ *(*(&off_1006B4E30 + v1145 - 1920) + (BYTE2(v1420) ^ 0x2FLL)) ^ 0x81;
  v1423[4] = *(*(&off_1006B4E30 + v1145 - 2860) + (BYTE2(v1381) ^ 0x93)) ^ 0x64;
  v1423[10] = *(*(&off_1006B4E30 + (v1145 ^ 0xD33)) + (BYTE1(v1421) ^ 0xD7) - 12) ^ 0x73;
  LOBYTE(v1381) = *(*(&off_1006B4E30 + v1145 - 2039) + (HIBYTE(v1420) ^ 0xB5));
  v1423[5] = v1381 ^ 0xE6 ^ (((8 * v1381) & 0x70 ^ 0x2F) + ((4 * (v1381 & 0xF)) ^ 0xE8) - 5);
  JUMPOUT(0x1000F44F4);
}

uint64_t sub_1000F458C()
{
  v4 = &STACK[0x830] + v0 - 1072;
  STACK[0x718] = v0;
  v5 = STACK[0x730];
  (*(v2 + 8 * (v1 ^ 0x31C6)))(*(v3 + 8 * (v1 ^ 0x2D)) - 12, &STACK[0xCF0] + STACK[0x730], 16);
  v6 = (*(v2 + 8 * (v1 + 12346)))(*(v3 + 8 * (v1 ^ 0x147)), v4, 560);
  STACK[0x730] = v5;
  STACK[0x778] = &STACK[0x7F0];
  STACK[0x780] = &STACK[0x351CD512C7937695];
  STACK[0x760] = &STACK[0x191D46A275AD145D];
  v7 = *(v2 + 8 * (v1 | (32 * (v4 != 0))));
  LODWORD(STACK[0x710]) = -42900;
  return v7(v6);
}

uint64_t sub_1000F4678@<X0>(uint64_t a1@<X8>)
{
  v5 = a1 == -16 || v1 == 0;
  v6 = *(v3 + 8 * ((((((33 * ((v2 + 8893) ^ 0x23AE)) ^ v5) & 1) == 0) * ((1017 * ((v2 + 8893) ^ 0x2387)) ^ 0xBE6)) ^ (v2 + 8893)));
  LODWORD(STACK[0x710]) = -42900;
  return v6();
}

uint64_t sub_1000F46D8()
{
  STACK[0x768] = 0;
  v2 = (*(v1 + 8 * (v0 ^ 0x3B13)))(1028);
  STACK[0x768] = v2;
  v3 = (*(v1 + 8 * (v0 + 9485)))(1028);
  STACK[0x770] = v3;
  if (v2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = !v4;
  return (*(v1 + 8 * ((v5 * (((v0 - 483) | 0x72) ^ 0xD90)) ^ v0)))();
}

uint64_t sub_1000F474C()
{
  v2 = (v1 - 1311578748) & 0x4E2D1A77;
  v4 = -1802333311 * (v3 + 2032);
  v5 = *(&off_1006B4E30 + (v1 ^ 0xA9F));
  v6 = *(v5 + (v4 ^ 0xC6));
  v7 = *(&off_1006B4E30 + v1 - 2247) - 8;
  STACK[0x360] = v7;
  v8 = v7[(v2 ^ 0xA89) & (v4 >> 8) ^ 0xA9] ^ 0x59;
  v9 = HIBYTE(v4);
  v10 = *(&off_1006B4E30 + v1 - 1818) - 12;
  STACK[0x368] = v10;
  LOBYTE(v4) = v10[BYTE2(v4) ^ 0x54] ^ BYTE2(v4);
  v11 = (((v8 ^ (4 * v8) ^ (2 * v8)) << 8) ^ 0x66B4AA2E) & (v6 ^ 0x66B4FFFA) | v6 & 0xD1;
  STACK[0x370] = v5;
  v12 = *(v5 + (v9 ^ 0xF5));
  v13 = (v11 ^ 0x1EFE12BE) & ((v4 << 16) ^ 0xFE51FFFF) ^ (v4 << 16) & 0xB50000;
  v14 = *(v0 - 0x351CD512C7936E75);
  LODWORD(STACK[0x708]) = (v12 ^ 0xD1) << 24;
  LODWORD(STACK[0x710]) = v13 ^ 0x87110026;
  LODWORD(STACK[0x700]) = v13 & 0x2CEE3599;
  v15 = -(*(v0 - 0x351CD512C7936E75 + 8 * ((*(v0 - 0x351CD512C7936E75 + 8 * ((*(v0 - 0x351CD512C7936E75 + 8 * (v14 & 1)) & 1) == 0)) & 1) == 0)) & 1) - 726836389;
  v16 = (((v15 ^ 0xF1408F97) + 1324575603) ^ ((v15 ^ 0xD5CEEE64) + 1786579586) ^ ((v15 ^ 0xF0233AA8) + 1334894158)) - 1373775338;
  v17 = v16 < 0x193C99D5;
  STACK[0x7F0] = STACK[0x820] ^ 0x3030303030303030;
  if (v16 >= 0x193C99D5)
  {
    v17 = v16 > 0x193C99D6;
  }

  return (*(STACK[0x668] + 8 * (((4 * v17) | (8 * v17)) ^ v2)))();
}

uint64_t sub_1000F5218(uint64_t a1)
{
  LODWORD(STACK[0x710]) = -42885;
  v3 = (v1 - 2852) ^ 0x3012;
  v4 = STACK[0x668];
  (*(STACK[0x668] + 8 * v3))(STACK[0x768]);
  (*(v4 + 8 * v3))(a1);
  return sub_100108830();
}

uint64_t sub_1000F522C()
{
  LODWORD(STACK[0x688]) = (LODWORD(STACK[0x708]) ^ (v1 + 10053) ^ 0xE511E3CC) & STACK[0x710] ^ LODWORD(STACK[0x700]);
  v2 = 8 * (((v0 < 0x5359B245) << 32) + v0 - 1398387269);
  *(STACK[0x760] - 0x191D46A275AD0C6DLL + v2) = *(STACK[0x780] - 0x351CD512C7936E75 + v2) ^ 0x3030303030303030;
  return (*(STACK[0x668] + 8 * ((v1 + 10053) | (16 * ((v0 & 0xFFFFFFFE) == 1398387268)))))(0x8A4E5A4BF6A12DCELL);
}

uint64_t sub_1000F5A54()
{
  v6 = (v2 + 4536);
  STACK[0x450] = v6;
  v7 = v1 - (((v1 + v3) >> 16) + ((v1 + v3 - ((v1 + v3) >> 16)) >> 8)) + v5 + 0x141A3F54585D25A5;
  v8 = ((v6 ^ 0xA951057D81930754) & (2 * v7)) + (v7 ^ 0x54A882BEC0C997FDLL);
  v9 = v8 - (v8 >> 24) - ((v8 - (v8 >> 24)) >> 11);
  v10 = v9 + (v9 >> 6);
  v11 = (v10 ^ 0x7405B03A949BBC22) - ((v10 ^ 0x7405B03A949BBC22) >> 31) - (((v10 ^ 0x7405B03A949BBC22) - ((v10 ^ 0x7405B03A949BBC22) >> 31)) >> 14);
  v12 = v11 - (v11 >> 8);
  v13 = v12 + 0x5B97CA6975A726E9 + ((v12 + 0x5B97CA6975A726E9) >> 28) - ((v12 + 0x5B97CA6975A726E9 + ((v12 + 0x5B97CA6975A726E9) >> 28)) >> 10);
  v14 = *v4;
  v15 = v4[1];
  LODWORD(STACK[0x640]) = v12 ^ v10 ^ v0 ^ (v13 - (v13 >> 7));
  v17 = v4[56];
  v16 = v4[57];
  v18 = v16 & 2;
  v19 = v4[93];
  v20 = v4[97];
  v21 = v4[8];
  v22 = v4[9];
  v23 = v4[85];
  v24 = v4[88];
  v25 = v4[63];
  LODWORD(STACK[0x678]) = v4[62];
  v26 = v4[89];
  v27 = v4[65];
  v28 = v4[99];
  LODWORD(STACK[0x660]) = v28;
  v29 = v4[59];
  v30 = v4[15];
  LODWORD(STACK[0x6C0]) = v4[14];
  v31 = v4[82];
  v32 = v4[20];
  v33 = v4[34];
  LODWORD(STACK[0x708]) = v4[35];
  v35 = v4[16];
  v34 = v4[17];
  if ((v22 & v16 & 2) != 0)
  {
    v18 = -v18;
  }

  LODWORD(STACK[0x6D8]) = (v18 + v22) ^ v16 & 0xFFFFFFFD;
  LODWORD(STACK[0x610]) = v28 + v34 + 56876381;
  v36 = v4[3];
  LODWORD(STACK[0x670]) = v32 - v16;
  LODWORD(STACK[0x654]) = v32 ^ v19;
  LODWORD(STACK[0x620]) = v21 ^ v19;
  LODWORD(STACK[0x5F0]) = v20 - v21;
  LODWORD(STACK[0x630]) = v30 - v20;
  LODWORD(STACK[0x5FC]) = v33 ^ v30;
  LODWORD(STACK[0x6C8]) = v23 - v33;
  LODWORD(STACK[0x648]) = v31 + v23;
  LODWORD(STACK[0x6B8]) = v31 + v26;
  LODWORD(STACK[0x658]) = v25 - v26;
  LODWORD(STACK[0x5D4]) = v24 + v25;
  LODWORD(STACK[0x638]) = v27 ^ v24;
  LODWORD(STACK[0x618]) = v29 - v27;
  LODWORD(STACK[0x6A0]) = v36 - v35;
  v37 = v4[110];
  LODWORD(STACK[0x5E0]) = v36 + v37;
  v39 = v4[24];
  v38 = v4[25];
  LODWORD(STACK[0x608]) = v37 + v38;
  v40 = v4[47];
  LODWORD(STACK[0x6B0]) = v14 ^ v40;
  v41 = v4[81];
  LODWORD(STACK[0x5D0]) = v40 ^ v41;
  v42 = v4[40];
  LODWORD(STACK[0x680]) = v41 - v42;
  v43 = v42 - v38;
  v44 = v4[32];
  LODWORD(STACK[0x5D8]) = v4[33];
  LODWORD(STACK[0x580]) = v44 + v22;
  v45 = v44 - v39;
  v46 = v4[18];
  LODWORD(STACK[0x5C4]) = v46 ^ v39;
  v47 = v4[78];
  LODWORD(STACK[0x62C]) = v46 ^ v47;
  v48 = v4[69];
  v49 = v48 + v47;
  v50 = v4[86];
  v51 = v48 ^ v50;
  v52 = v4[104];
  v53 = v50 ^ v52;
  v54 = v4[42];
  v55 = v4[43];
  v56 = v54 + v52;
  v57 = v4[53];
  LODWORD(STACK[0x590]) = v34 + v57;
  v58 = v4[64];
  LODWORD(STACK[0x538]) = v58 - v57;
  v59 = v4[91];
  v60 = v58 + v59;
  v61 = v4[4];
  LODWORD(STACK[0x5B4]) = v59 ^ v61;
  LODWORD(STACK[0x5CC]) = v61 ^ v55;
  v62 = v4[70];
  LODWORD(STACK[0x578]) = v62 + v55;
  v63 = v4[71];
  LODWORD(STACK[0x5B8]) = v43 - v45;
  LODWORD(STACK[0x710]) = v35 - v29 + v45;
  LODWORD(STACK[0x6E8]) = v35 - v29 - v60;
  LODWORD(STACK[0x700]) = v60 - (v63 - v62);
  LODWORD(STACK[0x6F8]) = v63 - v62 + v56;
  v64 = v4[106];
  v65 = v4[10];
  v66 = v64 - v65;
  LODWORD(STACK[0x6A8]) = v56 - (v64 - v65) + 1020894634;
  LODWORD(STACK[0x650]) = v15 % 0x13;
  v67 = v4[48];
  LODWORD(STACK[0x600]) = v54 - v67;
  v68 = v4[39];
  v69 = v68 + v67;
  v70 = v4[54];
  LODWORD(STACK[0x518]) = v68 ^ v70;
  v71 = v4[95];
  LODWORD(STACK[0x5A8]) = v70 - v71;
  v73 = v4[30];
  v72 = v4[31];
  LODWORD(STACK[0x588]) = v71 - v73;
  v74 = v4[61];
  LODWORD(STACK[0x558]) = v73 + v74;
  v76 = v4[50];
  v75 = v4[51];
  v77 = v75 ^ v74;
  v78 = v4[66];
  v79 = v75 - v78;
  v80 = v4[27];
  LODWORD(STACK[0x534]) = v80 ^ v78;
  v81 = v4[28];
  LODWORD(STACK[0x4E8]) = v81 ^ v80;
  v82 = v4[84];
  LODWORD(STACK[0x540]) = v81 - v82;
  v83 = v4[107];
  v84 = v83 + v82;
  LODWORD(STACK[0x56C]) = v83 + v15;
  v86 = v4[22];
  v85 = v4[23];
  v87 = v15 - v86;
  LODWORD(STACK[0x574]) = v86 - v76;
  v88 = v4[29];
  LODWORD(STACK[0x560]) = v76 ^ v88;
  v89 = v4[96];
  LODWORD(STACK[0x520]) = v88 ^ v89;
  v91 = v4[44];
  v90 = v4[45];
  LODWORD(STACK[0x4B8]) = v89 + v91;
  v92 = v4[100];
  v93 = v92 + v91;
  v94 = v4[55];
  LODWORD(STACK[0x508]) = v92 + v94;
  v95 = v4[73];
  LODWORD(STACK[0x4B0]) = v94 - v95;
  v96 = v17 + v95;
  v97 = v4[77];
  v98 = v17 ^ v97;
  v99 = v4[102];
  LODWORD(STACK[0x4F8]) = v99 ^ v97;
  v100 = v4[75];
  LODWORD(STACK[0x570]) = v99 ^ v100;
  v101 = v4[11];
  LODWORD(STACK[0x4C8]) = v101 + v100;
  v102 = v4[76];
  LODWORD(STACK[0x4D8]) = v101 ^ v102;
  v103 = v4[67];
  LODWORD(STACK[0x500]) = v102 ^ v103;
  v104 = v4[12];
  v105 = v103 - v104;
  LODWORD(STACK[0x6F0]) = v103 - v104 - v49 + 444897167;
  v106 = v4[26];
  v107 = v104 - v106;
  v108 = v4[21];
  v109 = v106 + v108;
  v110 = v4[94];
  v111 = v110 - v63;
  v113 = v4[36];
  v112 = v4[37];
  v114 = v113 - v110;
  LODWORD(STACK[0x4A8]) = v65 + v112;
  v115 = v4[13];
  v116 = v112 + v115;
  v117 = v4[5];
  v118 = v117 - v64;
  LODWORD(STACK[0x548]) = v66 ^ v118;
  LODWORD(STACK[0x5E8]) = v118 - v109;
  LODWORD(STACK[0x6E0]) = v109 + v87;
  v119 = STACK[0x6A0];
  LODWORD(STACK[0x6D0]) = v87 - LODWORD(STACK[0x6A0]);
  LODWORD(STACK[0x528]) = v119 - v111;
  LODWORD(STACK[0x4CC]) = v114 - v105;
  LODWORD(STACK[0x690]) = v111 ^ v116;
  LODWORD(STACK[0x6A0]) = v116 + v114;
  v120 = v4[6];
  v121 = v4[7];
  LODWORD(STACK[0x478]) = v108 - v120;
  v122 = v4[103];
  v123 = v122 + v120;
  v124 = v4[41];
  v125 = v122 - v124;
  v126 = v4[2];
  LODWORD(STACK[0x448]) = v124 - v126;
  v127 = v126 - LODWORD(STACK[0x6C0]);
  v128 = LODWORD(STACK[0x708]) + LODWORD(STACK[0x6C0]);
  v129 = v4[79];
  v130 = v129 - v117;
  v131 = v121 + v129;
  v132 = v4[83];
  v133 = v132 - v121;
  v134 = v4[87];
  v135 = v134 - v132;
  v136 = v4[108];
  LODWORD(STACK[0x490]) = v136 - v134;
  v137 = v85 - v136;
  LODWORD(STACK[0x468]) = v72 - v85;
  v138 = v4[80];
  v139 = v72 ^ v138;
  LODWORD(STACK[0x634]) = v49 + v98;
  LODWORD(STACK[0x614]) = v69 ^ v98;
  v140 = STACK[0x680];
  LODWORD(STACK[0x698]) = v69 + LODWORD(STACK[0x680]);
  LODWORD(STACK[0x59C]) = v53 + v140;
  LODWORD(STACK[0x5C8]) = v131 ^ v53;
  LODWORD(STACK[0x6C0]) = v128 + v131;
  v141 = STACK[0x6B8];
  LODWORD(STACK[0x680]) = v128 ^ LODWORD(STACK[0x6B8]);
  LODWORD(STACK[0x6B8]) = v141 + v139;
  LODWORD(STACK[0x51C]) = v77 ^ v139;
  LODWORD(STACK[0x5A0]) = v51 + v77;
  v142 = v51 - ((2 * v51) & 0x1B085336);
  v143 = v4[72];
  v144 = v115 ^ v143;
  v145 = v4[68];
  LODWORD(STACK[0x470]) = v143 ^ v145;
  LODWORD(STACK[0x4C4]) = v90 ^ v145;
  v146 = v4[98];
  LODWORD(STACK[0x440]) = v146 ^ v90;
  v147 = v4[101];
  v148 = v147 + v146;
  v149 = v4[105];
  v150 = v147 + v149;
  v151 = v149 - LODWORD(STACK[0x678]);
  v152 = v4[52];
  v153 = v152 ^ LODWORD(STACK[0x678]);
  v154 = v4[58];
  v155 = v152 ^ v154;
  v156 = v4[90];
  LODWORD(STACK[0x480]) = v154 - v156;
  v157 = v4[46];
  v158 = v157 ^ v156 ^ 0x8D84299B;
  v159 = v142 - 1920718437;
  v160 = v4[19 - LODWORD(STACK[0x650]) + LODWORD(STACK[0x650])];
  LODWORD(STACK[0x554]) = (v79 - ((2 * v79) & 0x1B085336) - 1920718437) ^ v158;
  LODWORD(STACK[0x650]) = v159 ^ v158;
  LODWORD(STACK[0x488]) = v107 + v79;
  LODWORD(STACK[0x4C0]) = v107 - v127;
  LODWORD(STACK[0x524]) = v137 + v127;
  v161 = STACK[0x574];
  LODWORD(STACK[0x5EC]) = LODWORD(STACK[0x574]) ^ v137;
  LODWORD(STACK[0x678]) = v161 + v96;
  LODWORD(STACK[0x4E0]) = v93 + v96;
  v162 = STACK[0x590];
  LODWORD(STACK[0x510]) = LODWORD(STACK[0x590]) ^ v93;
  v163 = STACK[0x670];
  LODWORD(STACK[0x4FC]) = v162 - LODWORD(STACK[0x670]);
  v164 = STACK[0x560];
  LODWORD(STACK[0x574]) = LODWORD(STACK[0x560]) + v163;
  v165 = STACK[0x62C];
  LODWORD(STACK[0x504]) = v164 - LODWORD(STACK[0x62C]);
  v166 = STACK[0x630];
  LODWORD(STACK[0x4D4]) = v165 ^ LODWORD(STACK[0x630]);
  v167 = STACK[0x648];
  LODWORD(STACK[0x4F0]) = LODWORD(STACK[0x648]) ^ v166;
  LODWORD(STACK[0x670]) = v167 - v155;
  v168 = STACK[0x4B0];
  LODWORD(STACK[0x4D0]) = (((v155 ^ LODWORD(STACK[0x4B0])) & 0x73C14495 ^ 0x4E26A024) & ((v155 ^ LODWORD(STACK[0x4B0])) & 0x8C3EBB6A ^ 0x7FFFFFB5) | (v155 ^ LODWORD(STACK[0x4B0])) & 0x80181B4A) ^ 0x9E33E538;
  v169 = v4[109];
  v170 = v169 ^ v138;
  v171 = v160 + v169;
  v172 = v4[92];
  v173 = v4[60];
  v174 = v157 + v173;
  v175 = v4[38];
  v176 = v175 ^ v173;
  v177 = v4[49];
  v178 = v175 + v177;
  LODWORD(STACK[0x498]) = v168 - v177;
  LODWORD(STACK[0x62C]) = v177 - (v160 + v172);
  LODWORD(STACK[0x560]) = v160 + v172 - v130;
  LODWORD(STACK[0x648]) = v130 - v84;
  LODWORD(STACK[0x420]) = (v123 ^ v84) + 2 * (v123 & v84);
  v179 = STACK[0x4D8];
  LODWORD(STACK[0x460]) = v123 ^ LODWORD(STACK[0x4D8]);
  v180 = STACK[0x570];
  LODWORD(STACK[0x590]) = v179 - LODWORD(STACK[0x570]);
  v181 = STACK[0x5C4];
  LODWORD(STACK[0x570]) = v180 ^ LODWORD(STACK[0x5C4]);
  v182 = v181 - LODWORD(STACK[0x638]);
  v183 = LODWORD(STACK[0x588]) ^ LODWORD(STACK[0x638]);
  v184 = STACK[0x56C];
  LODWORD(STACK[0x458]) = LODWORD(STACK[0x588]) + LODWORD(STACK[0x56C]);
  LODWORD(STACK[0x4B0]) = v148 + v184;
  LODWORD(STACK[0x56C]) = v148 - v133;
  LODWORD(STACK[0x638]) = v133 ^ v171;
  LODWORD(STACK[0x588]) = v171 - v125;
  LODWORD(STACK[0x3F8]) = v144 ^ 0xFA41D967 ^ (v125 - ((2 * v125) & 0xF483B2CE) - 96347801);
  v185 = (v150 - ((2 * v150) & 0xF483B2CE) - 96347801) ^ v144 ^ 0xFA41D967;
  v186 = LODWORD(STACK[0x708]) + 686631955;
  LODWORD(STACK[0x630]) = v113 - LODWORD(STACK[0x708]);
  v187 = LODWORD(STACK[0x5D8]) + v113;
  v188 = STACK[0x4B8];
  LODWORD(STACK[0x4D8]) = LODWORD(STACK[0x5D8]) - LODWORD(STACK[0x4B8]) + v186;
  v189 = STACK[0x558];
  LODWORD(STACK[0x4A0]) = v150 - LODWORD(STACK[0x558]);
  LODWORD(STACK[0x5C4]) = v189 - v178;
  v190 = v135 + v178;
  LODWORD(STACK[0x42C]) = v135 ^ v151;
  v191 = STACK[0x448];
  LODWORD(STACK[0x708]) = v151 - LODWORD(STACK[0x448]);
  v192 = LODWORD(STACK[0x540]) ^ v191;
  v193 = v153 ^ 0x4DCC156E ^ (LODWORD(STACK[0x540]) - ((2 * LODWORD(STACK[0x540])) & 0x9B982ADC) + 1305220462);
  v194 = STACK[0x4F8];
  LODWORD(STACK[0x540]) = v188 - LODWORD(STACK[0x4F8]);
  v195 = STACK[0x5CC];
  LODWORD(STACK[0x558]) = v194 + LODWORD(STACK[0x5CC]);
  v196 = STACK[0x468];
  LODWORD(STACK[0x4F8]) = LODWORD(STACK[0x468]) ^ v195;
  v197 = STACK[0x4E8];
  LODWORD(STACK[0x5D8]) = LODWORD(STACK[0x4E8]) + v196;
  v198 = STACK[0x4C8];
  LODWORD(STACK[0x4E8]) = v197 - LODWORD(STACK[0x4C8]);
  LODWORD(STACK[0x408]) = v153 ^ v187;
  v199 = LODWORD(STACK[0x440]) ^ 0xEF7BCBE4;
  v200 = v199 ^ (v198 - ((2 * v198) & 0xDEF797C8) - 277099548);
  v201 = (LODWORD(STACK[0x4A8]) - ((2 * LODWORD(STACK[0x4A8])) & 0xDEF797C8) - 277099548) ^ v199;
  v202 = STACK[0x518];
  LODWORD(STACK[0x5CC]) = LODWORD(STACK[0x518]) ^ LODWORD(STACK[0x4A8]);
  LODWORD(STACK[0x43C]) = v202 + v176;
  v203 = v176 - LODWORD(STACK[0x5D4]);
  v204 = LODWORD(STACK[0x658]) ^ LODWORD(STACK[0x5D4]);
  v205 = LODWORD(STACK[0x580]) ^ LODWORD(STACK[0x658]);
  v206 = LODWORD(STACK[0x580]) - v174;
  v207 = STACK[0x5F0];
  LODWORD(STACK[0x658]) = LODWORD(STACK[0x5F0]) ^ v174;
  v208 = STACK[0x478];
  LODWORD(STACK[0x3EC]) = LODWORD(STACK[0x478]) ^ v207;
  v209 = v208 - LODWORD(STACK[0x5D0]);
  v210 = STACK[0x610];
  LODWORD(STACK[0x4A8]) = LODWORD(STACK[0x5D0]) + 2002535259 + LODWORD(STACK[0x610]);
  v211 = LODWORD(STACK[0x5FC]) + 1764817312 + v210;
  v212 = STACK[0x538];
  LODWORD(STACK[0x434]) = LODWORD(STACK[0x538]) + LODWORD(STACK[0x5FC]);
  v213 = STACK[0x5E0];
  LODWORD(STACK[0x580]) = v212 - LODWORD(STACK[0x5E0]);
  v214 = LODWORD(STACK[0x470]) ^ v213;
  v215 = STACK[0x620];
  LODWORD(STACK[0x478]) = LODWORD(STACK[0x620]) ^ LODWORD(STACK[0x470]);
  v216 = STACK[0x578];
  LODWORD(STACK[0x468]) = v215 ^ 0x5E53DB3E ^ (LODWORD(STACK[0x578]) - ((2 * LODWORD(STACK[0x578])) & 0xBCA7B67C) + 1582553918);
  v217 = LODWORD(STACK[0x608]) + 1572259204;
  v218 = v216 - LODWORD(STACK[0x490]);
  LODWORD(STACK[0x418]) = LODWORD(STACK[0x490]) - v217;
  v219 = STACK[0x508];
  LODWORD(STACK[0x448]) = v217 + LODWORD(STACK[0x508]) + 87956095;
  v220 = v4[74];
  v221 = v219 ^ LODWORD(STACK[0x534]);
  v222 = STACK[0x500];
  LODWORD(STACK[0x470]) = LODWORD(STACK[0x534]) - LODWORD(STACK[0x500]);
  v223 = STACK[0x520];
  LODWORD(STACK[0x4C8]) = v222 - LODWORD(STACK[0x520]);
  v224 = LODWORD(STACK[0x654]) + v223;
  v225 = STACK[0x5B4];
  LODWORD(STACK[0x440]) = LODWORD(STACK[0x654]) + LODWORD(STACK[0x5B4]);
  v226 = STACK[0x660];
  LODWORD(STACK[0x4B8]) = v225 - (LODWORD(STACK[0x660]) ^ v220);
  v227 = v172 ^ v226;
  LODWORD(STACK[0x534]) = v172 ^ v220 ^ v170;
  v228 = STACK[0x618];
  v229 = 2 * LODWORD(STACK[0x618]);
  LODWORD(STACK[0x438]) = v170 ^ 0xFEDF9296 ^ (LODWORD(STACK[0x618]) - (v229 & 0xFDBF252C) - 18902378);
  v214 ^= 0x300BB401u;
  v230 = STACK[0x4CC];
  v231 = STACK[0x5B8];
  v232 = 2 * LODWORD(STACK[0x5B8]);
  v233 = LODWORD(STACK[0x5B8]) - (v232 & 0x60176802) + 806073345;
  LODWORD(STACK[0x620]) = v214 ^ (LODWORD(STACK[0x4CC]) - ((2 * LODWORD(STACK[0x4CC])) & 0x60176802) + 806073345);
  LODWORD(STACK[0x5B4]) = v214 ^ v233;
  v234 = STACK[0x6D8];
  LODWORD(STACK[0x430]) = LODWORD(STACK[0x6D8]) ^ (v228 - (v229 & 0x742738F4) - 1173119878) ^ 0xBA139C7A;
  v235 = STACK[0x6B0];
  LODWORD(STACK[0x490]) = LODWORD(STACK[0x6B0]) ^ v234;
  v236 = STACK[0x5A8];
  v237 = v235 ^ 0xF600BE9A ^ (LODWORD(STACK[0x5A8]) - ((2 * LODWORD(STACK[0x5A8])) & 0xEC017D34) - 167723366);
  v227 ^= 0x13574A7Bu;
  LODWORD(STACK[0x610]) = v227 ^ (v231 - (v232 & 0x26AE94F6) + 324487803);
  LODWORD(STACK[0x578]) = v227 ^ (v203 - ((2 * v203) & 0x26AE94F6) + 324487803);
  v238 = STACK[0x488];
  LODWORD(STACK[0x660]) = LODWORD(STACK[0x488]) ^ v203;
  LODWORD(STACK[0x5D4]) = (v238 - ((2 * v238) & 0x49C3A728) + 618779540) ^ v221 ^ 0x24E1D394;
  LODWORD(STACK[0x6B0]) = (v190 - ((2 * v190) & 0x49C3A728) + 618779540) ^ v221 ^ 0x24E1D394;
  v239 = v236 ^ LODWORD(STACK[0x600]);
  v240 = LODWORD(STACK[0x4C4]) + LODWORD(STACK[0x600]);
  v241 = STACK[0x6C8];
  LODWORD(STACK[0x488]) = LODWORD(STACK[0x4C4]) - LODWORD(STACK[0x6C8]);
  v242 = STACK[0x480];
  v243 = v241 + LODWORD(STACK[0x480]);
  LODWORD(STACK[0x414]) = v190 + v204;
  LODWORD(STACK[0x608]) = v204 - v183;
  LODWORD(STACK[0x5FC]) = v183 - v242;
  v244 = STACK[0x420];
  LODWORD(STACK[0x600]) = LODWORD(STACK[0x420]) ^ v242;
  v245 = STACK[0x528];
  LODWORD(STACK[0x518]) = LODWORD(STACK[0x528]) + v244;
  LODWORD(STACK[0x508]) = v245 ^ v182;
  LODWORD(STACK[0x520]) = v182 - v192;
  v246 = STACK[0x548];
  LODWORD(STACK[0x6C8]) = v192 - LODWORD(STACK[0x548]);
  v247 = LODWORD(STACK[0x408]) ^ 0xBAAA0833;
  v248 = (v246 - ((2 * v246) & 0x75541066) - 1163261901) ^ v247;
  LODWORD(STACK[0x618]) = (v185 - ((2 * v185) & 0x75541066) - 1163261901) ^ v247;
  v249 = STACK[0x51C];
  LODWORD(STACK[0x528]) = LODWORD(STACK[0x51C]) + LODWORD(STACK[0x708]);
  v250 = v249 - LODWORD(STACK[0x4C0]);
  LODWORD(STACK[0x5B8]) = LODWORD(STACK[0x4C0]) - v230;
  LODWORD(STACK[0x5D0]) = v185 - v193;
  v251 = STACK[0x458];
  LODWORD(STACK[0x500]) = v193 ^ LODWORD(STACK[0x458]);
  v252 = v251 - LODWORD(STACK[0x460]);
  LODWORD(STACK[0x4CC]) = ((LODWORD(STACK[0x460]) ^ LODWORD(STACK[0x710])) & 0xDA3B1EBE ^ 0x90950AA4) & ((LODWORD(STACK[0x460]) ^ LODWORD(STACK[0x710])) & 0x25C4E141 ^ 0xFAFF3EBF) | (LODWORD(STACK[0x460]) ^ LODWORD(STACK[0x710])) & 0x2540E141;
  v253 = STACK[0x3EC];
  LODWORD(STACK[0x5E0]) = LODWORD(STACK[0x3EC]) ^ 0xDBD49F4A ^ (v200 - ((2 * v200) & 0xB7A93E94) - 606822582);
  v254 = v201 + v200;
  v255 = STACK[0x59C];
  LODWORD(STACK[0x51C]) = v201 - LODWORD(STACK[0x59C]);
  v256 = STACK[0x504];
  LODWORD(STACK[0x59C]) = LODWORD(STACK[0x504]) + v255;
  v257 = STACK[0x524];
  LODWORD(STACK[0x504]) = v256 - LODWORD(STACK[0x524]);
  v258 = STACK[0x4D4];
  LODWORD(STACK[0x420]) = v257 ^ LODWORD(STACK[0x4D4]);
  v259 = STACK[0x4E0];
  LODWORD(STACK[0x708]) = LODWORD(STACK[0x4E0]) + v258;
  v260 = STACK[0x4B0];
  v261 = LODWORD(STACK[0x4B0]) - ((2 * LODWORD(STACK[0x4B0])) & 0xA02A8A38) - 803912420;
  v262 = STACK[0x4D0];
  LODWORD(STACK[0x4D4]) = (v259 - ((2 * v259) & 0xA02A8A38) - 803912420) ^ LODWORD(STACK[0x4D0]);
  LODWORD(STACK[0x538]) = v261 ^ v262;
  LODWORD(STACK[0x5F0]) = v260 + v237;
  v263 = STACK[0x43C];
  LODWORD(STACK[0x4C4]) = LODWORD(STACK[0x43C]) ^ v237;
  v264 = STACK[0x4F0];
  LODWORD(STACK[0x524]) = v263 - LODWORD(STACK[0x4F0]);
  v265 = v264 - LODWORD(STACK[0x4FC]);
  v266 = LODWORD(STACK[0x4FC]) ^ v206;
  v267 = STACK[0x510];
  LODWORD(STACK[0x4C0]) = LODWORD(STACK[0x510]) + v206;
  LODWORD(STACK[0x460]) = v267 ^ v209;
  LODWORD(STACK[0x4D0]) = v240 + v209;
  LODWORD(STACK[0x510]) = v240 ^ v239;
  LODWORD(STACK[0x43C]) = v239 - v243;
  LODWORD(STACK[0x458]) = v243 - v218;
  v268 = v211 + v218 + 783654714;
  LODWORD(STACK[0x3F0]) = v268;
  v269 = STACK[0x580];
  LODWORD(STACK[0x408]) = v211 - LODWORD(STACK[0x580]) - 1821693693;
  v270 = STACK[0x5E8];
  LODWORD(STACK[0x6D8]) = v269 - LODWORD(STACK[0x5E8]);
  v271 = STACK[0x6A8];
  LODWORD(STACK[0x580]) = v270 - 1020894634 + LODWORD(STACK[0x6A8]);
  v272 = STACK[0x498];
  LODWORD(STACK[0x4F0]) = LODWORD(STACK[0x498]) - 1020894634 + v271;
  v273 = STACK[0x42C];
  LODWORD(STACK[0x5A8]) = v224 + LODWORD(STACK[0x42C]) - 150801656;
  v274 = STACK[0x5A0];
  LODWORD(STACK[0x548]) = LODWORD(STACK[0x5A0]) ^ v224;
  v275 = LODWORD(STACK[0x478]) ^ 0x5054FB0F;
  v276 = STACK[0x554];
  v277 = (v274 - ((2 * v274) & 0xA0A9F61E) + 1347746575) ^ v275;
  LODWORD(STACK[0x654]) = (LODWORD(STACK[0x554]) - ((2 * LODWORD(STACK[0x554])) & 0xA0A9F61E) + 1347746575) ^ v275;
  v278 = STACK[0x434];
  LODWORD(STACK[0x478]) = v276 + LODWORD(STACK[0x434]);
  v279 = v278 - LODWORD(STACK[0x5C8]);
  v280 = STACK[0x418];
  LODWORD(STACK[0x5E8]) = LODWORD(STACK[0x5C8]) - LODWORD(STACK[0x418]) - 1572259204;
  v281 = STACK[0x4A0];
  LODWORD(STACK[0x4B0]) = v280 - LODWORD(STACK[0x4A0]) + 1572259204;
  LODWORD(STACK[0x4E0]) = v281 + v205;
  v282 = LODWORD(STACK[0x690]) ^ 0x9772831E;
  v283 = STACK[0x574];
  v284 = v282 ^ (v205 - ((2 * v205) & 0x2EE5063C) - 1754103010);
  LODWORD(STACK[0x400]) = (LODWORD(STACK[0x574]) - ((2 * LODWORD(STACK[0x574])) & 0x2EE5063C) - 1754103010) ^ v282;
  v285 = LODWORD(STACK[0x614]) ^ v283;
  v286 = STACK[0x448];
  LODWORD(STACK[0x554]) = LODWORD(STACK[0x448]) + LODWORD(STACK[0x614]) - 1660215299;
  v287 = STACK[0x4D8];
  LODWORD(STACK[0x480]) = v286 + LODWORD(STACK[0x4D8]) + 1948120042;
  v288 = STACK[0x6F8];
  LODWORD(STACK[0x574]) = LODWORD(STACK[0x6F8]) - 686631955 + v287;
  v289 = STACK[0x634];
  v290 = -LODWORD(STACK[0x634]) ^ (LODWORD(STACK[0x634]) - ((2 * LODWORD(STACK[0x634])) & 0x8AA5C5F0) - 984423688) ^ 0xC552E2F8;
  v291 = STACK[0x438];
  LODWORD(STACK[0x4D8]) = v288 + LODWORD(STACK[0x438]);
  v292 = v289 ^ v291;
  v293 = (v290 ^ (LODWORD(STACK[0x3F8]) - (v289 ^ LODWORD(STACK[0x3F8])))) + LODWORD(STACK[0x3F8]);
  v294 = LODWORD(STACK[0x3F8]) + LODWORD(STACK[0x560]);
  v295 = STACK[0x4F8];
  LODWORD(STACK[0x434]) = LODWORD(STACK[0x4F8]) + LODWORD(STACK[0x560]);
  v296 = v295 - LODWORD(STACK[0x4E8]);
  v297 = STACK[0x570];
  LODWORD(STACK[0x448]) = LODWORD(STACK[0x570]) ^ 0x67760B90 ^ (LODWORD(STACK[0x4E8]) - ((2 * LODWORD(STACK[0x4E8])) & 0xCEEC1720) + 1735789456);
  v298 = LODWORD(STACK[0x698]) ^ v297;
  v299 = LODWORD(STACK[0x698]) + LODWORD(STACK[0x6A0]);
  v300 = STACK[0x5EC];
  LODWORD(STACK[0x4A0]) = LODWORD(STACK[0x6A0]) - LODWORD(STACK[0x5EC]);
  v301 = v300 - LODWORD(STACK[0x56C]);
  v302 = LODWORD(STACK[0x56C]) - LODWORD(STACK[0x468]);
  v303 = STACK[0x590];
  LODWORD(STACK[0x438]) = LODWORD(STACK[0x468]) ^ LODWORD(STACK[0x590]);
  v304 = LODWORD(STACK[0x700]) ^ v303;
  v305 = STACK[0x440];
  LODWORD(STACK[0x3CC]) = LODWORD(STACK[0x700]) - LODWORD(STACK[0x440]);
  v306 = STACK[0x4A8];
  LODWORD(STACK[0x3E4]) = v305 - LODWORD(STACK[0x4A8]);
  v307 = STACK[0x6F0];
  LODWORD(STACK[0x634]) = v306 + LODWORD(STACK[0x6F0]) + 1790658489;
  v308 = v307 + 666857317;
  v309 = LODWORD(STACK[0x6D0]) - v273;
  v310 = STACK[0x470];
  LODWORD(STACK[0x468]) = LODWORD(STACK[0x6D0]) ^ LODWORD(STACK[0x470]);
  v311 = STACK[0x588];
  v312 = LODWORD(STACK[0x588]) - v310;
  LODWORD(STACK[0x418]) = v298 ^ v266;
  LODWORD(STACK[0x560]) = v266 + v279;
  LODWORD(STACK[0x4A8]) = v292 ^ v279;
  LODWORD(STACK[0x6D0]) = v292 - v248;
  LODWORD(STACK[0x470]) = v248 ^ v312;
  LODWORD(STACK[0x698]) = v250 ^ v312;
  LODWORD(STACK[0x700]) = v296 ^ v250;
  LODWORD(STACK[0x6A8]) = v296 - v284;
  v313 = STACK[0x414];
  LODWORD(STACK[0x6A0]) = LODWORD(STACK[0x414]) + v284;
  v314 = STACK[0x528];
  LODWORD(STACK[0x590]) = v313 ^ LODWORD(STACK[0x528]);
  LODWORD(STACK[0x6F8]) = v314 - v254;
  LODWORD(STACK[0x3F4]) = v254 ^ v252;
  LODWORD(STACK[0x690]) = v302 ^ v252;
  LODWORD(STACK[0x4FC]) = v302 + v268 + 1689618889;
  v315 = LODWORD(STACK[0x540]) + 1435687937;
  v316 = STACK[0x430];
  v317 = LODWORD(STACK[0x430]) + v272;
  v318 = STACK[0x4C8];
  LODWORD(STACK[0x540]) = v311 + LODWORD(STACK[0x4C8]);
  v319 = STACK[0x4B8];
  LODWORD(STACK[0x3F8]) = LODWORD(STACK[0x4B8]) + v318;
  v320 = LODWORD(STACK[0x558]) - v319;
  v321 = v315 - LODWORD(STACK[0x558]);
  v322 = v316 - v315 + 1435687937;
  LODWORD(STACK[0x5C8]) = v321 - LODWORD(STACK[0x6C8]) - 1435687937;
  v323 = STACK[0x490];
  LODWORD(STACK[0x430]) = LODWORD(STACK[0x490]) + v308;
  v324 = STACK[0x62C];
  LODWORD(STACK[0x440]) = v323 ^ LODWORD(STACK[0x62C]);
  v325 = STACK[0x650];
  LODWORD(STACK[0x3C8]) = LODWORD(STACK[0x650]) + v324;
  v326 = v325 + LODWORD(STACK[0x5C4]);
  v327 = STACK[0x658];
  v328 = LODWORD(STACK[0x5C4]) + LODWORD(STACK[0x658]);
  LODWORD(STACK[0x62C]) = v285 ^ 0xFC673726 ^ (v328 - ((2 * v328) & 0xF8CE6E4C) - 60344538);
  LODWORD(STACK[0x6F0]) = (v309 - ((2 * v309) & 0xF8CE6E4C) - 60344538) ^ v285 ^ 0xFC673726;
  v329 = v328 - ((2 * v328) & 0x95EB1462);
  v330 = STACK[0x488];
  v331 = LODWORD(STACK[0x488]) ^ LODWORD(STACK[0x710]);
  v332 = LODWORD(STACK[0x5D8]) ^ v253;
  v333 = LODWORD(STACK[0x670]) - LODWORD(STACK[0x5D8]);
  v334 = LODWORD(STACK[0x680]) + LODWORD(STACK[0x670]);
  v335 = LODWORD(STACK[0x680]) + LODWORD(STACK[0x630]);
  v336 = LODWORD(STACK[0x630]) + LODWORD(STACK[0x6E8]);
  v337 = STACK[0x678];
  LODWORD(STACK[0x42C]) = LODWORD(STACK[0x678]) ^ LODWORD(STACK[0x6E8]);
  v338 = STACK[0x6B8];
  LODWORD(STACK[0x528]) = LODWORD(STACK[0x6B8]) - v337;
  v339 = LODWORD(STACK[0x6E0]) + v338;
  v340 = STACK[0x638];
  LODWORD(STACK[0x710]) = LODWORD(STACK[0x638]) ^ LODWORD(STACK[0x6E0]);
  v341 = LODWORD(STACK[0x5CC]) - v340;
  v342 = STACK[0x534];
  LODWORD(STACK[0x414]) = LODWORD(STACK[0x5CC]) ^ LODWORD(STACK[0x534]);
  v343 = STACK[0x6C0];
  v344 = LODWORD(STACK[0x6C0]) - v342;
  v345 = STACK[0x648];
  v346 = v330 ^ LODWORD(STACK[0x648]);
  LODWORD(STACK[0x4C8]) = LODWORD(STACK[0x6C0]) ^ v330;
  LODWORD(STACK[0x678]) = v345 ^ v343 ^ 0xCAF58A31 ^ (v329 - 889877967);
  v347 = STACK[0x420];
  LODWORD(STACK[0x650]) = LODWORD(STACK[0x420]) ^ 0x1828419A ^ (v294 - ((2 * v294) & 0x30508334) + 405291418);
  v348 = STACK[0x508];
  LODWORD(STACK[0x680]) = LODWORD(STACK[0x508]) ^ v347;
  LODWORD(STACK[0x588]) = v348 ^ v265;
  LODWORD(STACK[0x56C]) = (v332 ^ 0x9304DCBC ^ (v265 - ((2 * v265) & 0x2609B978) - 1828397892)) + 2 * (v332 & v265);
  v349 = v332 ^ 0x9304DCBC ^ (LODWORD(STACK[0x5B4]) - ((2 * LODWORD(STACK[0x5B4])) & 0x2609B978) - 1828397892);
  v350 = STACK[0x4CC];
  v351 = LODWORD(STACK[0x4CC]) ^ 0x90950AA4;
  v352 = STACK[0x500];
  LODWORD(STACK[0x534]) = LODWORD(STACK[0x500]) + LODWORD(STACK[0x5B4]);
  LODWORD(STACK[0x5A0]) = v352 ^ v350;
  LODWORD(STACK[0x4E8]) = v277 + v309;
  v353 = STACK[0x578];
  LODWORD(STACK[0x420]) = v277 - LODWORD(STACK[0x578]);
  v354 = STACK[0x408];
  LODWORD(STACK[0x558]) = LODWORD(STACK[0x408]) + v353;
  LODWORD(STACK[0x4F8]) = v293 ^ v354;
  v355 = STACK[0x43C];
  LODWORD(STACK[0x638]) = v293 - LODWORD(STACK[0x43C]);
  LODWORD(STACK[0x5D8]) = v355 - v334;
  v356 = STACK[0x518];
  LODWORD(STACK[0x500]) = LODWORD(STACK[0x518]) + v334;
  v357 = STACK[0x460];
  LODWORD(STACK[0x578]) = v356 - LODWORD(STACK[0x460]);
  LODWORD(STACK[0x570]) = v357 - v341;
  LODWORD(STACK[0x518]) = v341 + v304;
  v358 = STACK[0x458];
  LODWORD(STACK[0x630]) = (LODWORD(STACK[0x458]) ^ v304) - 377398797;
  v359 = v339 ^ 0x5F16D4CE;
  LODWORD(STACK[0x6C0]) = v339 + v322;
  v360 = STACK[0x4D4];
  LODWORD(STACK[0x488]) = LODWORD(STACK[0x4D4]) + v322;
  v361 = STACK[0x5E8];
  LODWORD(STACK[0x4CC]) = LODWORD(STACK[0x5E8]) ^ v360;
  LODWORD(STACK[0x4D4]) = v361 + v317;
  LODWORD(STACK[0x3DC]) = v317 - v299;
  v362 = v299 - LODWORD(STACK[0x620]);
  v363 = STACK[0x4C0];
  LODWORD(STACK[0x5C4]) = (LODWORD(STACK[0x620]) ^ LODWORD(STACK[0x4C0])) + 704011226;
  LODWORD(STACK[0x490]) = v358 - v301;
  LODWORD(STACK[0x508]) = v344 + v301 - 56851624;
  v364 = STACK[0x400];
  LODWORD(STACK[0x3E0]) = v351 - LODWORD(STACK[0x400]);
  v365 = v364 - v326;
  v366 = v326 - LODWORD(STACK[0x504]);
  v367 = STACK[0x4C4];
  LODWORD(STACK[0x504]) = (LODWORD(STACK[0x504]) ^ LODWORD(STACK[0x4C4])) - 104815192;
  v368 = STACK[0x3CC];
  LODWORD(STACK[0x4C0]) = v363 - LODWORD(STACK[0x3CC]) + 716772226;
  LODWORD(STACK[0x5E8]) = v327 - 2038141281 + LODWORD(STACK[0x3F0]);
  v369 = STACK[0x478];
  LODWORD(STACK[0x5EC]) = v359 ^ LODWORD(STACK[0x478]);
  v370 = STACK[0x3E4];
  LODWORD(STACK[0x5B4]) = v369 + LODWORD(STACK[0x3E4]) + 1511890514;
  LODWORD(STACK[0x4B8]) = v349 + 1766272972;
  v371 = STACK[0x4D0];
  LODWORD(STACK[0x498]) = v367 - LODWORD(STACK[0x4D0]);
  v372 = v371 - LODWORD(STACK[0x618]);
  v373 = STACK[0x5B8];
  LODWORD(STACK[0x614]) = LODWORD(STACK[0x618]) - LODWORD(STACK[0x5B8]);
  LODWORD(STACK[0x3F0]) = v373 - v336;
  v374 = v336 ^ v320;
  LODWORD(STACK[0x4C4]) = v320 - v335;
  LODWORD(STACK[0x43C]) = v335 - 2011385421;
  LODWORD(STACK[0x3E8]) = LODWORD(STACK[0x62C]) - 958231447;
  LODWORD(STACK[0x620]) = LODWORD(STACK[0x4A8]) - 1390775400;
  v375 = STACK[0x5D4];
  LODWORD(STACK[0x618]) = LODWORD(STACK[0x5D4]) - v346 + 1428955066;
  v376 = STACK[0x524];
  LODWORD(STACK[0x6B8]) = v294 + LODWORD(STACK[0x524]);
  v377 = STACK[0x510];
  LODWORD(STACK[0x6E0]) = v376 ^ LODWORD(STACK[0x510]);
  v378 = STACK[0x574];
  LODWORD(STACK[0x62C]) = LODWORD(STACK[0x574]) + v377;
  v379 = STACK[0x5D0];
  LODWORD(STACK[0x574]) = LODWORD(STACK[0x5D0]) - v378;
  v380 = STACK[0x480];
  LODWORD(STACK[0x4A8]) = LODWORD(STACK[0x480]) - v379;
  v381 = STACK[0x4F0];
  LODWORD(STACK[0x460]) = v380 ^ LODWORD(STACK[0x4F0]);
  v382 = LODWORD(STACK[0x538]) - v381;
  LODWORD(STACK[0x3C0]) = v333 - LODWORD(STACK[0x538]);
  LODWORD(STACK[0x648]) = v331 - v333;
  v383 = STACK[0x608];
  LODWORD(STACK[0x510]) = v331 + LODWORD(STACK[0x608]);
  v384 = STACK[0x3C8];
  LODWORD(STACK[0x3EC]) = (LODWORD(STACK[0x3C8]) ^ v383) - 1853909113;
  v385 = STACK[0x4B0];
  v386 = STACK[0x434];
  LODWORD(STACK[0x4D0]) = LODWORD(STACK[0x434]) - LODWORD(STACK[0x4B0]) + 731240182;
  LODWORD(STACK[0x5CC]) = v321 + v368 + 1069042507;
  v387 = STACK[0x59C];
  v388 = STACK[0x4E0];
  LODWORD(STACK[0x6E8]) = LODWORD(STACK[0x4E0]) - LODWORD(STACK[0x59C]) - 1512013766;
  v389 = STACK[0x3F8];
  LODWORD(STACK[0x458]) = LODWORD(STACK[0x3F8]) - 1961719085;
  v390 = STACK[0x610];
  LODWORD(STACK[0x5B8]) = v389 ^ LODWORD(STACK[0x610]);
  v391 = v390 - LODWORD(STACK[0x438]);
  v392 = STACK[0x600];
  v393 = LODWORD(STACK[0x438]) - LODWORD(STACK[0x600]) + 55303624;
  LODWORD(STACK[0x3F8]) = v393;
  LODWORD(STACK[0x678]) -= 1049435663;
  v394 = STACK[0x660];
  LODWORD(STACK[0x524]) = v388 + LODWORD(STACK[0x660]);
  v395 = STACK[0x548];
  LODWORD(STACK[0x480]) = LODWORD(STACK[0x548]) - v394;
  v396 = STACK[0x448];
  LODWORD(STACK[0x5D0]) = LODWORD(STACK[0x448]) - v395 - 716348639;
  v397 = v344 - 358418669;
  v398 = LODWORD(STACK[0x580]) - v375;
  v399 = STACK[0x4D8];
  LODWORD(STACK[0x478]) = LODWORD(STACK[0x580]) ^ LODWORD(STACK[0x4D8]);
  v400 = LODWORD(STACK[0x5E0]) + v399;
  v401 = LODWORD(STACK[0x468]) ^ LODWORD(STACK[0x5E0]);
  LODWORD(STACK[0x468]) = LODWORD(STACK[0x468]) + v387 - 1381214488;
  v402 = STACK[0x4A0];
  LODWORD(STACK[0x670]) = LODWORD(STACK[0x4A0]) - 744318337 + v396;
  LODWORD(STACK[0x5E0]) = v372 + 687610517;
  LODWORD(STACK[0x3B8]) = v400;
  v403 = v400 ^ 0x50054A6;
  v404 = STACK[0x470];
  LODWORD(STACK[0x3B4]) = v372 + (v400 ^ 0x50054A6) + LODWORD(STACK[0x470]);
  LODWORD(STACK[0x610]) = v404 + 2008598429;
  LODWORD(STACK[0x5D4]) = v382 + 657072363;
  v391 -= 610365239;
  LODWORD(STACK[0x388]) = v391;
  v405 = STACK[0x430];
  LODWORD(STACK[0x660]) = v397 + LODWORD(STACK[0x430]);
  v406 = STACK[0x5FC];
  LODWORD(STACK[0x470]) = v405 - LODWORD(STACK[0x5FC]) + 765787787;
  v407 = LODWORD(STACK[0x6C8]) - 380508083;
  v408 = STACK[0x554];
  v409 = v402 ^ LODWORD(STACK[0x554]);
  LODWORD(STACK[0x3BC]) = v409;
  v410 = STACK[0x440];
  LODWORD(STACK[0x554]) = v408 + LODWORD(STACK[0x440]);
  LODWORD(STACK[0x328]) = v410 + v407;
  v411 = v398 - 1131231495;
  LODWORD(STACK[0x3B0]) = v398 - 1131231495;
  LODWORD(STACK[0x6C8]) = v365 + 694622759;
  v412 = STACK[0x414];
  LODWORD(STACK[0x59C]) = LODWORD(STACK[0x414]) + 1977015288;
  v413 = STACK[0x42C];
  LODWORD(STACK[0x608]) = v412 - LODWORD(STACK[0x42C]);
  v414 = v413 - 949628246;
  v415 = STACK[0x5A8];
  v416 = v370 + LODWORD(STACK[0x5A8]);
  LODWORD(STACK[0x384]) = v416;
  v417 = v415 + v414;
  LODWORD(STACK[0x354]) = v415 + v414;
  v418 = v374 + 2109510666;
  LODWORD(STACK[0x400]) = v374 + 2109510666;
  v419 = v401 + 280378341;
  LODWORD(STACK[0x304]) = v401 + 280378341;
  v420 = LODWORD(STACK[0x4FC]) ^ 0x9D1A3452;
  LODWORD(STACK[0x2F8]) = v366 ^ 0x32D4A1C0;
  v421 = STACK[0x5F0];
  v422 = LODWORD(STACK[0x5F0]) ^ 0x33018FAA ^ v384;
  LODWORD(STACK[0x308]) = v422;
  v362 ^= 0x80760C54;
  v423 = LODWORD(STACK[0x560]) ^ 0xA8B60D09;
  LODWORD(STACK[0x37C]) = v423;
  v424 = STACK[0x710];
  v425 = (LODWORD(STACK[0x710]) + v386) ^ 0x4085E2FF;
  LODWORD(STACK[0x390]) = v425;
  v426 = (v385 - LODWORD(STACK[0x528])) ^ 0x69FA67F4;
  LODWORD(STACK[0x39C]) = v426;
  v427 = STACK[0x540];
  v428 = v392 ^ LODWORD(STACK[0x540]);
  LODWORD(STACK[0x538]) = v428;
  v429 = (v427 - LODWORD(STACK[0x6D8])) ^ 0x98236F30;
  LODWORD(STACK[0x310]) = v429;
  v430 = LODWORD(STACK[0x420]) ^ 0xBCCFCC3F;
  LODWORD(STACK[0x300]) = v430;
  v431 = LODWORD(STACK[0x534]) ^ 0x8626FBC5;
  LODWORD(STACK[0x540]) = v431;
  v432 = LODWORD(STACK[0x658]) ^ 0xC37AB002 ^ v424;
  LODWORD(STACK[0x580]) = v432;
  v433 = LODWORD(STACK[0x460]) + 106317025;
  v434 = LODWORD(STACK[0x488]) + 765314795;
  LODWORD(STACK[0x324]) = v434;
  v435 = LODWORD(STACK[0x6F8]) + 1938711919;
  v436 = LODWORD(STACK[0x6C0]) - 340878864;
  LODWORD(STACK[0x600]) = v428 ^ 0x8E8C83E8;
  LODWORD(STACK[0x438]) = v436;
  LODWORD(STACK[0x4FC]) = v403;
  v437 = v391 ^ v436 ^ v432 ^ v425 ^ v428 ^ 0x8E8C83E8 ^ v403 ^ v393 ^ v434 ^ v418;
  v438 = LODWORD(STACK[0x62C]) ^ 0x4C195389;
  LODWORD(STACK[0x548]) = v438;
  LODWORD(STACK[0x340]) = v433;
  v439 = v437 ^ v438 ^ v433 ^ LODWORD(STACK[0x678]) ^ v435 ^ (LODWORD(STACK[0x5D8]) - 849479718);
  v440 = LODWORD(STACK[0x6B0]) ^ v406;
  LODWORD(STACK[0x3AC]) = v440;
  v441 = v421 ^ LODWORD(STACK[0x708]);
  LODWORD(STACK[0x3A0]) = v441;
  v442 = LODWORD(STACK[0x500]) + 1001566884;
  v443 = LODWORD(STACK[0x570]) - 1698910673;
  v444 = v409 - 737691385;
  LODWORD(STACK[0x5A8]) = v409 - 737691385;
  v445 = LODWORD(STACK[0x680]) - 472545971;
  v446 = LODWORD(STACK[0x578]) + 698592286;
  LODWORD(STACK[0x710]) = v446;
  v447 = v416 + 1155603402;
  v448 = v441 + 1543080580;
  v449 = v440 + 818825966;
  v450 = LODWORD(STACK[0x498]) - 935732923;
  v451 = STACK[0x51C];
  v452 = LODWORD(STACK[0x51C]) + LODWORD(STACK[0x59C]);
  LODWORD(STACK[0x358]) = v452;
  v453 = LODWORD(STACK[0x690]) - 1130484636;
  LODWORD(STACK[0x59C]) = v453;
  v454 = LODWORD(STACK[0x6B8]) + 1417898270;
  v455 = LODWORD(STACK[0x698]) - 1980405039;
  LODWORD(STACK[0x5FC]) = v455;
  v456 = LODWORD(STACK[0x588]) ^ 0xBFDB1AA4;
  LODWORD(STACK[0x534]) = v456;
  v457 = LODWORD(STACK[0x6A0]) ^ 0xB1509034;
  v458 = v439 ^ v452 ^ LODWORD(STACK[0x610]);
  LODWORD(STACK[0x3CC]) = v450;
  LODWORD(STACK[0x440]) = v448;
  LODWORD(STACK[0x4F0]) = v454;
  LODWORD(STACK[0x348]) = v443;
  v459 = v458 ^ v450 ^ v455 ^ v448 ^ v453 ^ v454 ^ v411 ^ v423 ^ v443 ^ LODWORD(STACK[0x558]);
  LODWORD(STACK[0x430]) = v447;
  v460 = v459 ^ v447 ^ LODWORD(STACK[0x5D4]);
  LODWORD(STACK[0x408]) = v457;
  v461 = LODWORD(STACK[0x590]) ^ 0x376691CA;
  LODWORD(STACK[0x658]) = v461;
  LODWORD(STACK[0x448]) = v445;
  LODWORD(STACK[0x420]) = v362;
  v462 = v460 ^ v457 ^ v461 ^ v445 ^ v417 ^ v419 ^ v362 ^ v446 ^ v456 ^ LODWORD(STACK[0x468]) ^ v429;
  LODWORD(STACK[0x338]) = v442;
  LODWORD(STACK[0x3E4]) = v420;
  v463 = LODWORD(STACK[0x480]) - 2068552062;
  v464 = LODWORD(STACK[0x6D0]) + 1383725712;
  v465 = LODWORD(STACK[0x6A8]) + 1674748156;
  v466 = STACK[0x328];
  v467 = v462 ^ v442 ^ v420 ^ v444 ^ v426 ^ LODWORD(STACK[0x6E8]) ^ v449 ^ LODWORD(STACK[0x328]) ^ LODWORD(STACK[0x660]) ^ LODWORD(STACK[0x5E0]);
  LODWORD(STACK[0x33C]) = v463;
  LODWORD(STACK[0x350]) = v464;
  v468 = v467 ^ v463 ^ v464 ^ v465;
  v469 = STACK[0x654];
  v470 = LODWORD(STACK[0x43C]) + LODWORD(STACK[0x654]);
  LODWORD(STACK[0x4E0]) = v470;
  v471 = STACK[0x520];
  v472 = LODWORD(STACK[0x520]) + v469;
  LODWORD(STACK[0x380]) = v472;
  v473 = LODWORD(STACK[0x6F0]) + 401417835;
  LODWORD(STACK[0x560]) = v473;
  v474 = LODWORD(STACK[0x4A8]) + 1207897637;
  v475 = LODWORD(STACK[0x5A0]) ^ 0x528E4886;
  v476 = LODWORD(STACK[0x574]) ^ 0x21DF2E02;
  LODWORD(STACK[0x654]) = v476;
  v477 = LODWORD(STACK[0x700]) ^ 0xEEB6187E;
  LODWORD(STACK[0x2FC]) = v477;
  v478 = v468 ^ LODWORD(STACK[0x470]);
  LODWORD(STACK[0x414]) = v472 ^ 0xF87FB091;
  v479 = STACK[0x2F8];
  v480 = v478 ^ v472 ^ 0xF87FB091 ^ v477 ^ v473 ^ v422 ^ LODWORD(STACK[0x6C8]) ^ LODWORD(STACK[0x2F8]) ^ LODWORD(STACK[0x670]) ^ v430;
  LODWORD(STACK[0x5F0]) = v474;
  LODWORD(STACK[0x4D8]) = v475;
  v481 = LODWORD(STACK[0x640]) ^ v480 ^ v474 ^ v475 ^ v476 ^ LODWORD(STACK[0x5D0]) ^ v431 ^ 0x7306BA0D;
  LODWORD(STACK[0x2F0]) = (v481 & 0x56CE3F03 ^ 0x85A3B6C2) & (v481 & 0xA931C0FC ^ 0x7EFE3FFF) | v481 & 0x2810403C;
  v482 = LODWORD(STACK[0x4D4]) ^ 0x38580470;
  v483 = LODWORD(STACK[0x4C4]) ^ 0xC954DDEF;
  LODWORD(STACK[0x4A0]) = v483;
  v484 = v451 ^ LODWORD(STACK[0x528]) ^ 0xA42CD5C5;
  v485 = LODWORD(STACK[0x478]) + 158993883;
  v486 = LODWORD(STACK[0x510]) + 46472358;
  v487 = LODWORD(STACK[0x5B8]) ^ 0x2F383CCD;
  v488 = LODWORD(STACK[0x4C8]) ^ 0xF472B0E6;
  LODWORD(STACK[0x4B0]) = v488;
  LODWORD(STACK[0x3C8]) = v486;
  v489 = v486 ^ LODWORD(STACK[0x5CC]);
  LODWORD(STACK[0x4D4]) = v487;
  LODWORD(STACK[0x51C]) = v485;
  v490 = LODWORD(STACK[0x6E0]) + 7762773;
  v491 = LODWORD(STACK[0x3F4]) ^ 0x7395FAE5;
  LODWORD(STACK[0x320]) = v490;
  v492 = LODWORD(STACK[0x518]) - 887342556;
  v493 = STACK[0x3DC];
  v494 = LODWORD(STACK[0x3DC]) ^ 0x40BE306B;
  v495 = LODWORD(STACK[0x554]) ^ 0x96E672C2;
  LODWORD(STACK[0x434]) = v494;
  v496 = v489 ^ v487 ^ v485 ^ v488 ^ v491 ^ v483 ^ v490 ^ v494 ^ v495 ^ v492 ^ LODWORD(STACK[0x5EC]);
  v497 = LODWORD(STACK[0x4D0]) + 2686;
  v498 = LODWORD(STACK[0x4CC]) - 10901852;
  v499 = STACK[0x3F0];
  v500 = LODWORD(STACK[0x524]) ^ 0x7A9E6C60;
  LODWORD(STACK[0x334]) = LODWORD(STACK[0x3F0]) ^ 0xB473214F;
  v501 = STACK[0x4C0];
  v502 = v499 ^ 0xB473214F ^ v500 ^ v470 ^ LODWORD(STACK[0x5B4]) ^ LODWORD(STACK[0x4C0]) ^ LODWORD(STACK[0x618]) ^ LODWORD(STACK[0x5E8]) ^ LODWORD(STACK[0x630]) ^ v498;
  LODWORD(STACK[0x528]) = v482;
  v503 = LODWORD(STACK[0x4F8]) + 926723955;
  v504 = LODWORD(STACK[0x650]) + 1935267298;
  v505 = STACK[0x3C0];
  v506 = LODWORD(STACK[0x56C]) + 1205822926;
  v507 = v471 - LODWORD(STACK[0x634]) + 1176395212;
  v508 = LODWORD(STACK[0x490]) + 1717100219;
  v509 = LODWORD(STACK[0x648]) ^ 0x25FE4AF7;
  v510 = LODWORD(STACK[0x5C8]) ^ 0xC1DFB963;
  v511 = LODWORD(STACK[0x4E8]) ^ 0x2599DFD0;
  LODWORD(STACK[0x4C4]) = v511;
  v512 = LODWORD(STACK[0x608]) ^ 0x8D50B2D4;
  v513 = STACK[0x638];
  v514 = v496 ^ v502 ^ v482 ^ v497 ^ LODWORD(STACK[0x5C4]);
  LODWORD(STACK[0x2C8]) = v504;
  v515 = v514 ^ v504;
  v516 = STACK[0x508];
  LODWORD(STACK[0x4CC]) = v508;
  v517 = STACK[0x3E8];
  LODWORD(STACK[0x2C4]) = v512;
  v518 = STACK[0x504];
  v519 = v484 ^ v516 ^ v508 ^ v517 ^ v512 ^ LODWORD(STACK[0x614]) ^ LODWORD(STACK[0x504]) ^ LODWORD(STACK[0x620]) ^ v507;
  LODWORD(STACK[0x42C]) = v505 + 71847681;
  LODWORD(STACK[0x31C]) = v510;
  v520 = STACK[0x4B8];
  v521 = v519 ^ (v505 + 71847681) ^ v509 ^ v510 ^ LODWORD(STACK[0x4B8]);
  LODWORD(STACK[0x43C]) = v506;
  v522 = v521 ^ v506;
  v523 = STACK[0x3EC];
  v524 = v522 ^ LODWORD(STACK[0x3EC]) ^ v511;
  LODWORD(STACK[0x2B8]) = v503;
  LODWORD(STACK[0x520]) = v513 ^ 0x10F4B5E1;
  v525 = v515 ^ v524 ^ v503 ^ v513 ^ 0x10F4B5E1 ^ LODWORD(STACK[0x2F0]);
  v526 = (v493 ^ 0x7C332CC7) - v466;
  v527 = LODWORD(STACK[0x418]) ^ 0xA8357969;
  v528 = v525 & 0x2000000;
  v529 = v525;
  v530 = (v525 & 0x2000000 & STACK[0x418]) == 0;
  v531 = STACK[0x3E0];
  LODWORD(STACK[0x2C0]) = LODWORD(STACK[0x3E0]) ^ 0x6852C177;
  v532 = ((v526 - ((2 * v526) & 0xE85EC7F6) + 1949262843) ^ v479) - (v527 + (v531 ^ 0x6852C177));
  LODWORD(STACK[0x328]) = v491;
  v533 = v491 - LODWORD(STACK[0x548]) + LODWORD(STACK[0x354]);
  LODWORD(STACK[0x354]) = v509;
  LODWORD(STACK[0x418]) = v484;
  LODWORD(STACK[0x4D0]) = v497;
  v534 = LODWORD(STACK[0x400]) + LODWORD(STACK[0x580]) + LODWORD(STACK[0x310]) + v516 - LODWORD(STACK[0x2FC]) + ((LODWORD(STACK[0x460]) - LODWORD(STACK[0x478]) - 52676858 + ((LODWORD(STACK[0x690]) - v495 - v505 - 1202332317 + ((LODWORD(STACK[0x698]) - ((2 * LODWORD(STACK[0x5FC])) & 0xF9D9B1CC) + 115491767) ^ v520 ^ 0x7CECD8E6 ^ (((LODWORD(STACK[0x488]) - ((2 * LODWORD(STACK[0x324])) & 0xE1DEBE0E) - 1634916878) ^ LODWORD(STACK[0x4E0]) ^ LODWORD(STACK[0x558]) ^ 0x9F293100 ^ ((v499 ^ v497 ^ 0x4C7A40BC ^ (v533 - v509 + (v532 ^ v484) + 2 * (v532 & v484))) - LODWORD(STACK[0x3B4]) + 1598758350)) + LODWORD(STACK[0x678])))) ^ LODWORD(STACK[0x304]))) ^ v501);
  LODWORD(STACK[0x324]) = v498;
  LODWORD(STACK[0x310]) = v500;
  v535 = (((v498 ^ 0xDF4AAF6D ^ v513 ^ v534) - v500) ^ LODWORD(STACK[0x358])) - LODWORD(STACK[0x300]);
  LODWORD(STACK[0x358]) = v492;
  v536 = (LODWORD(STACK[0x388]) ^ (LODWORD(STACK[0x518]) - 2 * (v492 & 0x1455FC5F ^ STACK[0x518] & 2) - 546163071) ^ 0x1455FC5D ^ ((v535 ^ v518) - LODWORD(STACK[0x6C8]))) + LODWORD(STACK[0x468]);
  v537 = LODWORD(STACK[0x480]) - LODWORD(STACK[0x490]);
  LODWORD(STACK[0x490]) = v507;
  v538 = LODWORD(STACK[0x510]) - LODWORD(STACK[0x390]) + LODWORD(STACK[0x600]) + LODWORD(STACK[0x5D8]) + LODWORD(STACK[0x570]) - LODWORD(STACK[0x384]) + LODWORD(STACK[0x658]) - LODWORD(STACK[0x6D0]) - LODWORD(STACK[0x6A8]) - LODWORD(STACK[0x4A8]) + 666041652 + (LODWORD(STACK[0x6A0]) ^ __ROR4__(__ROR4__(LODWORD(STACK[0x4B0]) ^ LODWORD(STACK[0x3F8]) ^ (v537 + v507 - LODWORD(STACK[0x4F8]) - 417408940 + (((v536 ^ LODWORD(STACK[0x618])) + LODWORD(STACK[0x5E8])) ^ v523)), 27) ^ 0x5C90CE78, 5) ^ 0xBA60A1DB);
  v539 = STACK[0x634];
  v540 = LODWORD(STACK[0x37C]) + v517;
  LODWORD(STACK[0x2B0]) = LODWORD(STACK[0x634]) ^ 0xED09B321;
  v541 = v540 - (v539 ^ 0xED09B321) - LODWORD(STACK[0x56C]) - LODWORD(STACK[0x540]) - 1205822926 + (((v538 ^ LODWORD(STACK[0x5D0])) + LODWORD(STACK[0x6E8])) ^ LODWORD(STACK[0x710]));
  v542 = ((v541 & 0x4DB5702C | (LODWORD(STACK[0x5B8]) ^ 0x1418CE76) & ~v541) ^ 0xB24A8FD3) - LODWORD(STACK[0x620]) + (v541 & (LODWORD(STACK[0x5B8]) ^ 0xA65241A5));
  v543 = STACK[0x3A0];
  v544 = LODWORD(STACK[0x650]) - (LODWORD(STACK[0x6F8]) + LODWORD(STACK[0x498]) + LODWORD(STACK[0x4A0]) + LODWORD(STACK[0x3A0])) + LODWORD(STACK[0x680]) - LODWORD(STACK[0x500]) - LODWORD(STACK[0x3BC]) + LODWORD(STACK[0x3AC]) + ((v542 - ((2 * v542) & 0x25303D6) - 2127986197) ^ LODWORD(STACK[0x534]));
  v545 = (LODWORD(STACK[0x3B0]) ^ LODWORD(STACK[0x5C8]) ^ LODWORD(STACK[0x660]) ^ 0xD24ED664 ^ ((LODWORD(STACK[0x380]) ^ LODWORD(STACK[0x5A0]) ^ 0xCCF000D6 ^ (((v544 - ((2 * v544 - 1056775564) & 0x92A0A13E) - 1445871143) ^ LODWORD(STACK[0x308])) + LODWORD(STACK[0x5D4]))) + LODWORD(STACK[0x5CC]))) + LODWORD(STACK[0x470]);
  v546 = ((v545 - ((2 * v545) & 0x57C420F2) - 1411248007) ^ LODWORD(STACK[0x39C])) + LODWORD(STACK[0x670]);
  v547 = ((v546 - ((2 * v546) & 0x20FC6894) - 1870777270) ^ LODWORD(STACK[0x4C4])) - LODWORD(STACK[0x5C4]);
  LODWORD(STACK[0x6A8]) = v547 - ((2 * v547) & 0x72C644EC) - 1184685450;
  v548 = (((LODWORD(STACK[0x538]) ^ 0x422845DFu) - v543 + LODWORD(STACK[0x654]) + 2058375528) >> 1) - 1937987216;
  v549 = LODWORD(STACK[0x5A8]) ^ LODWORD(STACK[0x59C]) ^ ((LODWORD(STACK[0x560]) ^ 0x8511DE46) + 1181450048);
  v550 = ((((LODWORD(STACK[0x560]) + (LODWORD(STACK[0x648]) ^ 0x58C77701u) - 2 * LODWORD(STACK[0x560])) ^ LODWORD(STACK[0x700])) >> 1) ^ 0x4E168C8B) + 1443464731;
  if (v530)
  {
    v551 = v528;
  }

  else
  {
    v551 = -v528;
  }

  LODWORD(STACK[0x308]) = v527;
  LODWORD(STACK[0x500]) = v539 ^ v531 ^ v529 & 0xFDFFFFFF ^ 0x9C9D1285 ^ (v551 + v527);
  v552 = *(STACK[0x760] - 0x191D46A275AD0C65);
  v553 = (STACK[0x760] - 0x191D46A275AD0C6DLL);
  v554 = 0xE3B3A55BC3914BCBLL * (*v553 ^ 0x3030303030303030);
  v555 = ((v554 ^ 0xA6D03C100D7D283ALL) + 0x276AB1D0A5CF201ALL) ^ ((v554 ^ 0xBF39053128F3DF97) + 0x3E8388F18041D7B5) ^ ((v554 ^ 0x3CEE6B50040C16F2) - 0x42AB196F5341E12ELL);
  v556 = ((2 * ((v555 + 0x69403419D0EE133CLL) ^ 0x5A22D4B1929031F8)) ^ 0x5046710A6EE2657ELL) & ((v555 + 0x69403419D0EE133CLL) ^ 0x5A22D4B1929031F8) ^ (2 * ((v555 + 0x69403419D0EE133CLL) ^ 0x5A22D4B1929031F8)) & 0xA8233885377132BELL;
  v557 = ((4 * (v556 ^ 0xA821088511111281)) ^ 0xA08CE214DDC4CAFCLL) & (v556 ^ 0xA821088511111281) ^ (4 * (v556 ^ 0xA821088511111281)) & 0xA8233885377132BCLL;
  v558 = ((16 * (v557 ^ 0x823188122313003)) ^ 0x8233885377132BF0) & (v557 ^ 0x823188122313003) ^ (16 * (v557 ^ 0x823188122313003)) & 0xA8233885377132B0;
  v559 = (((v558 ^ 0x280030840060100FLL) << 8) ^ 0x233885377132BF00) & (v558 ^ 0x280030840060100FLL) ^ ((v558 ^ 0x280030840060100FLL) << 8) & 0xA823388537713200;
  v560 = ((v555 + 0x69403419D0EE133CLL) ^ 0xFA21CCB091D03376) & (2 * ((v555 + 0x69403419D0EE133CLL) & 0xF201EC34A5E10347)) ^ (v555 + 0x69403419D0EE133CLL) & 0xF201EC34A5E10347;
  v561 = (v557 ^ 0xA0002004154002B0) & (16 * ((v556 ^ 0x230002600003CLL) & (4 * v560) ^ v560)) ^ (v556 ^ 0x230002600003CLL) & (4 * v560) ^ v560;
  v562 = (v558 ^ 0x8023080137112200) & (v561 << 8) ^ v561 ^ 0xA8233885377132BFLL ^ (v559 ^ 0x2020000531300000) & (((v558 ^ 0x8023080137112200) & (v561 << 8) ^ v561) << 16);
  v563 = v555 + 0x5B42204E76CF1684 + ((((v555 + 0x69403419D0EE133CLL) ^ (2 * ((v562 << 32) & 0x2823388500000000 ^ v562 ^ ((v562 << 32) ^ 0x377132BF00000000) & (((v559 ^ 0x88033880064100BFLL) << 16) & 0x2823388500000000 ^ 0x22088400000000 ^ (((v559 ^ 0x88033880064100BFLL) << 16) ^ 0x3885377100000000) & (v559 ^ 0x88033880064100BFLL))))) >> 32) ^ 0xFFFFFFFF1DFA03CBLL);
  v564 = v563 + (v563 >> 16) + ((v563 + (v563 >> 16)) >> 8);
  v565 = (((v564 + 0x1B55B96A12EF301CLL) ^ v554 ^ 0x480C187BD4F9ED08) - 0x414C4A5F9A138356) ^ (((v564 + 0x1B55B96A12EF301CLL) ^ v554 ^ 0xC62316673C12C891) + 0x309CBBBC8D075931) ^ (((v564 + 0x1B55B96A12EF301CLL) ^ v554 ^ 0x8E2F0E1CE8EB2599) + 0x7890A3C759FEB439);
  v566 = ((2 * ((v565 + 0x1EA669A96519FA34) ^ 0x2BCEABEBFDD34CDDLL)) ^ 0x82AE8722280671EELL) & ((v565 + 0x1EA669A96519FA34) ^ 0x2BCEABEBFDD34CDDLL) ^ (2 * ((v565 + 0x1EA669A96519FA34) ^ 0x2BCEABEBFDD34CDDLL)) & 0xC1574391140338F6;
  v567 = ((4 * (v566 ^ 0x4151409114010811)) ^ 0x55D0E44500CE3DCLL) & (v566 ^ 0x4151409114010811) ^ (4 * (v566 ^ 0x4151409114010811)) & 0xC1574391140338F4;
  v568 = ((16 * (v567 ^ 0xC002419104031823)) ^ 0x1574391140338F70) & (v567 ^ 0xC002419104031823) ^ (16 * (v567 ^ 0xC002419104031823)) & 0xC1574391140338F0;
  v569 = (((v568 ^ 0xC003428014003087) << 8) ^ 0x574391140338F700) & (v568 ^ 0xC003428014003087) ^ ((v568 ^ 0xC003428014003087) << 8) & 0xC157439114033800;
  v570 = ((v565 + 0x1EA669A96519FA34) ^ 0xEADDEB7AEDD36489) & (2 * ((v565 + 0x1EA669A96519FA34) & 0xEA99E87AE9D0742ALL)) ^ (v565 + 0x1EA669A96519FA34) & 0xEA99E87AE9D0742ALL;
  v571 = (v567 ^ 0x1550200100020C0) & (16 * ((v566 ^ 0x80060300000230E0) & (4 * v570) ^ v570)) ^ (v566 ^ 0x80060300000230E0) & (4 * v570) ^ v570;
  v572 = (v568 ^ 0x154011100030800) & (v571 << 8) ^ v571 ^ 0xC1574391140338F7 ^ (v569 ^ 0x4143011000000000) & (((v568 ^ 0x154011100030800) & (v571 << 8) ^ v571) << 16);
  v573 = v565 + 0x94052244EEA6E5FLL + ((((v565 + 0x1EA669A96519FA34) ^ (2 * ((v572 << 32) & 0x4157439100000000 ^ v572 ^ ((v572 << 32) ^ 0x140338F700000000) & (((v569 ^ 0x80144281140308F7) << 16) & 0x4157439100000000 ^ 0x46439000000000 ^ (((v569 ^ 0x80144281140308F7) << 16) ^ 0x4391140300000000) & (v569 ^ 0x80144281140308F7))))) >> 32) ^ 0xFFFFFFFF97CE9185);
  v574 = v573 + (v573 >> 16) + ((v573 + (v573 >> 16)) >> 8);
  v575 = (((v574 + 0x1B55B96A12EF301CLL) ^ v554 ^ 0x8A8386060AB2ADB7) - 0x9C8128D7C2541D7) ^ (((v574 + 0x1B55B96A12EF301CLL) ^ v554 ^ 0x4AEF67C3B4EC880DLL) + 0x365B0CB73D849B93) ^ (((v574 + 0x1B55B96A12EF301CLL) ^ v554 ^ 0xC06CE1C5BE5E25BALL) - 0x4327754EC8C9C9DALL);
  v576 = v575 - 0x7CB46B748968139FLL + ((((((v575 - 0x5322964F7D66A837) ^ 0xE23389F3936753A9) + 0x345DA3296099C740) ^ (v575 - 0x5322964F7D66A837) ^ (((v575 - 0x5322964F7D66A837) ^ 0x7ECF20EE1C09BEE3) - 0x575EF5CB1008D58ALL) ^ (((v575 - 0x5322964F7D66A837) ^ 0xE2D0DBE3719050D0) + 0x34BEF139826EC450) ^ (((v575 - 0x5322964F7D66A837) ^ 0x57BDA7DBF2FFD6FALL) - 0x7E2C72FEFEFEBD93)) >> 32) ^ 0xFFFFFFFFD66E2ADALL);
  v577 = 0xE3B3A55BC3914BCBLL * (v552 ^ 0x3030303030303030);
  v578 = v576 + (v576 >> 16) + ((v576 + (v576 >> 16)) >> 8);
  v579 = (((v578 + 0x1B55B96A12EF301CLL) ^ v577 ^ 0xF8A8EE3F0AABDD11) + 0x3DEE2F43E90478D4) ^ (((v578 + 0x1B55B96A12EF301CLL) ^ v577 ^ 0xF00F147758088817) + 0x3549D50BBBA72DD6) ^ (((v578 + 0x1B55B96A12EF301CLL) ^ v577 ^ 0x8A7FA4852A35506) - 0x321EC4CB4EF30F3BLL);
  v580 = v579 + 0x3AB93E831C505A3FLL + ((((((v579 - 0x724F21A6105299CALL) ^ 0x905B74D830C1EBB5) + 0x3D5314F11C631FB3) ^ (v579 - 0x724F21A6105299CALL) ^ (((v579 - 0x724F21A6105299CALL) ^ 0x71BF369C867311DFLL) - 0x2348A94A552E1A27) ^ (((v579 - 0x724F21A6105299CALL) ^ 0xFEEB2048FA98AE4DLL) + 0x53E34061D63A5A4BLL) ^ (((v579 - 0x724F21A6105299CALL) ^ 0x4DF8FDDA9F775FDFLL) - 0x1F0F620C4C2A5427)) >> 32) ^ 0xFFFFFFFFAD086029);
  v581 = v580 + (v580 >> 16) + ((v580 + (v580 >> 16)) >> 8);
  v582 = (((v581 + 0x1B55B96A12EF301CLL) ^ v577 ^ 0x83915F94C81F961ALL) + 0x797071E92774CA50) ^ (((v581 + 0x1B55B96A12EF301CLL) ^ v577 ^ 0xBA8246B6CFF23A69) + 0x406368CB2099663DLL) ^ (((v581 + 0x1B55B96A12EF301CLL) ^ v577 ^ 0x3913192207EDAC73) - 0x3C0DC8A017790FD9);
  v583 = v582 + 0x51ED1821094A3ACLL + ((((((v582 + 0x704BB989BFC5590) ^ 0x75D63FC7054F860CLL) - 0x7433D5D18E2837E9) ^ (v582 + 0x704BB989BFC5590) ^ (((v582 + 0x704BB989BFC5590) ^ 0x60474881590395CBLL) - 0x61A2A297D264242ELL) ^ (((v582 + 0x704BB989BFC5590) ^ 0xEA8A6AEFD8F2C99ELL) + 0x14907F06AC6A8786) ^ (((v582 + 0x704BB989BFC5590) ^ 0xFEFEF7BF0FD96BB8) + 0xE4E2567B4125A8)) >> 32) ^ 0xFFFFFFFFFE1A15E9);
  v584 = v583 + (v583 >> 16) + ((v583 + (v583 >> 16)) >> 8);
  v585 = (((v584 + 0x1B55B96A12EF301CLL) ^ v577 ^ 0x334087ED4D1A18F3) + 0x12C93647BD56854BLL) ^ (((v584 + 0x1B55B96A12EF301CLL) ^ v577 ^ 0x709507D01562A9ADLL) + 0x511CB67AE52E3415) ^ (((v584 + 0x1B55B96A12EF301CLL) ^ v577 ^ 0x43D5803D5878B15ELL) + 0x625C3197A8342CE8);
  v586 = ((2 * ((v585 - 0x8AF4625EF73AEELL) ^ 0x59AF8108134003B9)) ^ 0xD5D877EFBD53D18) & ((v585 - 0x8AF4625EF73AEELL) ^ 0x59AF8108134003B9) ^ (2 * ((v585 - 0x8AF4625EF73AEELL) ^ 0x59AF8108134003B9)) & 0x86AEC3BF7DEA9E8CLL;
  v587 = ((4 * (v586 ^ 0x82A24081042A8284)) ^ 0x1ABB0EFDF7AA7A30) & (v586 ^ 0x82A24081042A8284) ^ (4 * (v586 ^ 0x82A24081042A8284)) & 0x86AEC3BF7DEA9E8CLL;
  v588 = ((16 * (v587 ^ 0x8404C1020840848CLL)) ^ 0x6AEC3BF7DEA9E8C0) & (v587 ^ 0x8404C1020840848CLL) ^ (16 * (v587 ^ 0x8404C1020840848CLL)) & 0x86AEC3BF7DEA9E80;
  v589 = (((v588 ^ 0x8402C0082142160CLL) << 8) ^ 0xAEC3BF7DEA9E8C00) & (v588 ^ 0x8402C0082142160CLL) ^ ((v588 ^ 0x8402C0082142160CLL) << 8) & 0x86AEC3BF7DEA9E00;
  v590 = ((v585 - 0x8AF4625EF73AEELL) ^ 0xDFAD00264E0019B1) & (2 * ((v585 - 0x8AF4625EF73AEELL) & 0xDF0142B76EAA9D35)) ^ (v585 - 0x8AF4625EF73AEELL) & 0xDF0142B76EAA9D35;
  v591 = (v588 ^ 0x2AC03B75CA88800) & (((v587 ^ 0x2AA02BD75AA1A00) & (16 * ((v586 ^ 0x40C033E79C01C08) & (4 * v590) ^ v590)) ^ (v586 ^ 0x40C033E79C01C08) & (4 * v590) ^ v590) << 8) ^ (v587 ^ 0x2AA02BD75AA1A00) & (16 * ((v586 ^ 0x40C033E79C01C08) & (4 * v590) ^ v590)) ^ (v586 ^ 0x40C033E79C01C08) & (4 * v590) ^ v590;
  v592 = v591 ^ 0x86AEC3BF7DEA9E8CLL ^ (v589 ^ 0x8682833D688A0000) & (v591 << 16);
  v593 = v585 - 0x2189B1AAF04C9DB8 + ((((v585 - 0x8AF4625EF73AEELL) ^ (2 * ((v592 << 32) & 0x6AEC3BF00000000 ^ v592 ^ ((v592 << 32) ^ 0x7DEA9E8C00000000) & (((v589 ^ 0x2C40821560128CLL) << 16) & 0x6AEC3BF00000000 ^ 0x400821500000000 ^ (((v589 ^ 0x2C40821560128CLL) << 16) ^ 0x43BF7DEA00000000) & (v589 ^ 0x2C40821560128CLL))))) >> 32) ^ 0xFFFFFFFF24F63F2ELL);
  v594 = v593 + (v593 >> 16) + ((v593 + (v593 >> 16)) >> 8);
  LODWORD(v562) = (v574 + 317665308) ^ (v564 + 317665308) ^ (v578 + 317665308) ^ (v581 + 317665308) ^ (v584 + 317665308) ^ (v594 + 317665308);
  v595 = ((v594 + 0x1B55B96A12EF301CLL) ^ 0x178BA3899D0693BALL) - (((v594 + 0x1B55B96A12EF301CLL) ^ 0x178BA3899D0693BALL) >> 27);
  v596 = v595 - (v595 >> 13) - ((v595 - (v595 >> 13)) >> 4);
  v597 = v596 + 0xAAD58D0AA3058D4 + ((v596 + 0xAAD58D0AA3058D4) >> 29) + ((v596 + 0xAAD58D0AA3058D4 + ((v596 + 0xAAD58D0AA3058D4) >> 29)) >> 13);
  v598 = v597 + (v597 >> 3);
  v599 = v598 + 0x78B441CC10A7101ELL - ((v598 + 0x78B441CC10A7101ELL) >> 25) - ((v598 + 0x78B441CC10A7101ELL - ((v598 + 0x78B441CC10A7101ELL) >> 25)) >> 9);
  v600 = v599 - (v599 >> 8);
  v601 = (v600 ^ 0x8D3D78C50297EA22) - ((v600 ^ 0x8D3D78C50297EA22) >> 24) + (((v600 ^ 0x8D3D78C50297EA22) - ((v600 ^ 0x8D3D78C50297EA22) >> 24)) >> 12);
  v602 = ((v601 >> 5) ^ v601) + 2 * ((v601 >> 5) & v601);
  LODWORD(v596) = v574 ^ v564 ^ v578 ^ v581 ^ v584 ^ v594 ^ v596;
  LODWORD(v574) = (v574 + 158832654) ^ (v564 + 158832654) ^ (v578 + 158832654) ^ (v581 + 158832654) ^ (v584 + 158832654) ^ (v594 + 158832654);
  v603 = (v602 ^ 0xB59605CD444982DDLL) - ((v602 ^ 0xB59605CD444982DDLL) >> 27) + (((v602 ^ 0xB59605CD444982DDLL) - ((v602 ^ 0xB59605CD444982DDLL) >> 27)) >> 11);
  v604 = v603 - (v603 >> 8);
  LODWORD(v581) = v604 ^ v598;
  v605 = (v604 ^ 0xDAA5AEBC38E92BBALL) + ((v604 ^ 0xDAA5AEBC38E92BBALL) >> 27) + (((v604 ^ 0xDAA5AEBC38E92BBALL) + ((v604 ^ 0xDAA5AEBC38E92BBALL) >> 27)) >> 10);
  v606 = v605 - (v605 >> 5);
  v607 = v606 + 0x67FF7C7C25D27FB6 - ((v606 + 0x67FF7C7C25D27FB6) >> 25) - ((v606 + 0x67FF7C7C25D27FB6 - ((v606 + 0x67FF7C7C25D27FB6) >> 25)) >> 12);
  v608 = v607 + (v607 >> 3);
  LODWORD(v584) = v596 ^ v602 ^ v608;
  v609 = (v608 ^ 0x3B783D573409650ELL) - ((v608 ^ 0x3B783D573409650ELL) >> 24) - (((v608 ^ 0x3B783D573409650ELL) - ((v608 ^ 0x3B783D573409650ELL) >> 24)) >> 8);
  v610 = v609 - (v609 >> 4);
  v611 = v574 ^ v581 ^ v610;
  v612 = v610 - 0x5739349762CC2F68 + ((v610 - 0x5739349762CC2F68) >> 29) - ((v610 - 0x5739349762CC2F68 + ((v610 - 0x5739349762CC2F68) >> 29)) >> 15);
  LODWORD(v612) = v606 ^ v600 ^ (v612 - (v612 >> 3));
  LODWORD(v562) = (v612 - ((2 * v612) & 0xDA9581DC) - 313868050) ^ v562;
  LODWORD(STACK[0x648]) = v584;
  v613 = v584 ^ v548;
  v614 = (v584 ^ v548) & 0xFE ^ 0x28;
  LODWORD(STACK[0x3DC]) = v562;
  v615 = v562 ^ v550;
  LODWORD(STACK[0x56C]) = 883750955 - ((v562 ^ v550) & 7 ^ 6);
  v616 = (48 - ((v562 ^ v550) & 7 ^ 6)) & 7;
  if ((v615 & 7) != 6)
  {
    v617 = 255;
  }

  else
  {
    v617 = 0;
  }

  LODWORD(STACK[0x6F8]) = v616;
  v618 = v617 << v616;
  if ((v615 & 7) != 6)
  {
    v619 = v618 ^ 0xC873791A;
  }

  else
  {
    v619 = 931956453;
  }

  LODWORD(STACK[0x690]) = v613 ^ 0xD3;
  LODWORD(STACK[0x6D0]) = v613;
  LODWORD(STACK[0x680]) = v611;
  v620 = v611 ^ (v549 >> 1);
  v621 = v553[(v553[(v553[v552 & 1] & 1) == 0] & 1) == 0] & 1;
  v622 = ((((~(2 * v621) + v621 - 1581947376) ^ 0xDA0804C3) - 2076288023) ^ (((~(2 * v621) + v621 - 1581947376) ^ 0xBE23DDFA) - 535461166) ^ (((~(2 * v621) + v621 - 1581947376) ^ 0xC59EBF36) - 1683431394)) + 287249068;
  LODWORD(STACK[0x558]) = -LODWORD(STACK[0x6C0]);
  LODWORD(STACK[0x488]) = -LODWORD(STACK[0x6E0]);
  LODWORD(STACK[0x480]) = -LODWORD(STACK[0x6B8]);
  LODWORD(STACK[0x510]) = -LODWORD(STACK[0x6F0]);
  LODWORD(STACK[0x498]) = LODWORD(STACK[0x654]) - ((2 * LODWORD(STACK[0x654])) & 0x957AE6B2) - 893553831;
  LODWORD(STACK[0x518]) = v615;
  LODWORD(STACK[0x6F0]) = 16843009 * v614;
  v623 = -385875968 * v618;
  LODWORD(STACK[0x4F8]) = 16843009 * v618;
  LODWORD(STACK[0x6B8]) = v620;
  LODWORD(STACK[0x470]) = v623 & (v620 ^ 0x27000000);
  LODWORD(STACK[0x468]) = v623 & 0x6000000;
  LODWORD(STACK[0x698]) = v619;
  LODWORD(STACK[0x478]) = v619 & 0xD;
  v624 = 16843009 * ((v613 ^ BYTE1(v613) ^ BYTE2(v613)) ^ HIBYTE(v613) ^ 0xF9);
  v625 = 16843009 * ((v620 ^ BYTE1(v620) ^ BYTE2(v620)) ^ HIBYTE(v620) ^ 0x36);
  LODWORD(STACK[0x6E0]) = v550;
  LODWORD(STACK[0x6C0]) = v549 >> 1;
  LODWORD(STACK[0x650]) = v548;
  v626 = STACK[0x450];
  v627 = STACK[0x450] + 1025055764;
  LODWORD(STACK[0x6A0]) = v615 ^ 0xD0F44278;
  LODWORD(STACK[0x460]) = (v615 ^ 0xD0F44278) & 0xFFFFFFF8;
  LODWORD(STACK[0x634]) = v624;
  LODWORD(STACK[0x570]) = v625;
  LODWORD(STACK[0x5D8]) = v625 ^ v624;
  v628 = ((4 * (v627 & 0x85CD7674 ^ 0xC7EFFF72)) ^ 0xF4651308) & (v627 & 0x85CD7674 ^ 0xC7EFFF72) ^ (4 * (v627 & 0x85CD7674 ^ 0xC7EFFF72)) & 0x3D1944C0;
  v629 = (v628 ^ 0x34010000) & (16 * ((v627 & 0x85CD7674 ^ 0xDAF6BBB0) & 0x30 ^ 0xC)) ^ (v627 & 0x85CD7674 ^ 0xDAF6BBB0) & 0x30 ^ 0xC;
  v630 = ((16 * (v628 ^ 0x91844C2)) ^ 0xD1944C20) & (v628 ^ 0x91844C2) ^ (16 * (v628 ^ 0x91844C2)) & 0x3D1944C0;
  v631 = v629 ^ 0x3D1944C2 ^ (v630 ^ 0x11104400) & (v629 << 8);
  v632 = (2 * ((v631 << 16) & 0x3D190000 ^ v631 ^ ((v631 << 16) ^ 0x44C20000) & (((v630 ^ 0x2C0900C2) << 8) & 0x3D190000 ^ 0x24190000 ^ (((v630 ^ 0x2C0900C2) << 8) ^ 0x19440000) & (v630 ^ 0x2C0900C2)))) ^ 0x6C341444;
  v633 = 0xE3B3A55BC3914BCBLL * (v553[(2 * ((v631 << 16) & 0x3D190000 ^ v631 ^ ((v631 << 16) ^ 0x44C20000) & (((v630 ^ 0x2C0900C2) << 8) & 0x3D190000 ^ 0x24190000 ^ (((v630 ^ 0x2C0900C2) << 8) ^ 0x19440000) & (v630 ^ 0x2C0900C2)))) ^ 0x8DCD767CLL] ^ 0x3030303030303030);
  v634 = (((v632 ^ 0xAF6DD98D4AA3AC61) - 0x64C736A8155EB8B4) ^ ((v632 ^ 0x64304D9AB730AFA5) + 0x50655D4017324490) ^ ((v632 ^ 0xCB5D94171C6A61FCLL) - 0xF77B3243977529)) + (((v633 ^ 0x4EF1DBC820674A9BLL) + 0x784588F4C2BB7EFALL) ^ ((v633 ^ 0xFC5EE0884513BCEELL) - 0x35154C4B58307773) ^ ((v633 ^ 0x97A8693144F6172ALL) - 0x5EE3C5F259D5DCB7));
  v635 = v634 - 0x48081228055A5E50 + ((((((v634 - 0x222ED2B131C5764ELL) ^ 0x32912168ABAA0823) - 0x17481E1E783EE020) ^ (v634 - 0x222ED2B131C5764ELL) ^ (((v634 - 0x222ED2B131C5764ELL) ^ 0x3B6081DBCCA88DC3) - 0x1EB9BEAD1F3C65C0) ^ (((v634 - 0x222ED2B131C5764ELL) ^ 0xE742655B4B690008) + 0x3D64A5D2670217F5) ^ (((v634 - 0x222ED2B131C5764ELL) ^ 0xCB6AFA9EFFFF6DE8) + 0x114C3A17D3947A18)) >> 32) ^ 0xFFFFFFFFDA26C089);
  v636 = v635 + (v635 >> 16) + ((v635 + (v635 >> 16)) >> 8);
  v637 = v636 ^ v548 ^ 0xA3F1D41;
  v638 = (v636 + 158832654) ^ (v549 >> 1) ^ 0x2FBC9D43;
  v636 += 0x1B55B96A12EF301CLL;
  v639 = v636 ^ v550 ^ 0xDC06D668;
  v640 = ((2 * ((v636 ^ v633 ^ 0x1BA79AEA) & (v632 ^ 0xE1F96238) ^ v632 & 0x1BA79AEA)) ^ 0x3420450) + (v632 ^ 0xE1F96238 ^ v636 ^ v633);
  v641 = v640 - HIDWORD(v640) + ((v640 - HIDWORD(v640)) >> 16);
  v642 = v641 + (v641 >> 8);
  v643 = v638 ^ (v642 + 158832654);
  v644 = v637 ^ v642;
  v642 += 0x1B55B96A12EF301CLL;
  v645 = v639 ^ v642;
  v646 = v642 ^ v633;
  v647 = (v646 ^ 0x1F53F9A9) & (v632 ^ 0xE1F96238) ^ v632 & 0x1F53F9A9;
  v648 = ((2 * v647) ^ 0x2A2C050) + (v632 ^ 0xE1F96238 ^ v646) - ((((2 * v647) ^ 0x2A2C050) + (v632 ^ 0xE1F96238 ^ v646)) >> 32);
  v649 = v648 + (v648 >> 16) + ((v648 + (v648 >> 16)) >> 8);
  v650 = v643 ^ (v649 + 158832654);
  v651 = v622 < 0x10A24BD1 || v622 > 0x10A24BD2;
  return (*(STACK[0x668] + 8 * ((98 * v651) ^ v626)))(v645 ^ (v649 + 317665308), v644 ^ v649, v650);
}