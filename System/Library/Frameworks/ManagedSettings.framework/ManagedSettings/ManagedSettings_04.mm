uint64_t sub_100059A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5)
{
  v10 = sub_10000637C(&qword_10007ACF8, &qword_1000665F0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v32 - v12;
  v39 = swift_allocObject();
  *(v39 + 16) = a5;
  _Block_copy(a5);
  sub_100056024(a2, v42);
  v36 = a2;
  v37 = a3;
  v33 = a1;
  v38 = v13;
  v34 = v11;
  v35 = v10;
  v14 = sub_100055A58();
  v16 = v15;
  v17 = v42[0];
  v18 = v42[1];
  v19 = *(v15 + 8);
  v41[3] = v14;
  v41[4] = v15;
  sub_1000067BC(v41);

  v19(v17, v18, v14, v16);
  sub_100008578((a4 + 120), *(a4 + 144));
  v20 = swift_allocObject();
  *(v20 + 16) = sub_100031528;
  *(v20 + 24) = v39;

  v21 = sub_1000248D4(v41, sub_10005BF84, v20);
  v23 = v22;

  sub_100055A80(aBlock);
  type metadata accessor for TokenEncoder();
  swift_allocObject();
  TokenEncoder.init(teamIdentifier:keyRetriever:)();

  v24 = v38;
  dispatch thunk of TokenEncoder.encode(categoryIdentifier:)();
  v26 = v35;
  v27 = Token.data.getter();
  v29 = v28;
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_1000543C8(v27, v29);
  aBlock[4] = sub_100031528;
  aBlock[5] = v39;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100055788;
  aBlock[3] = &unk_100076FC0;
  v31 = _Block_copy(aBlock);

  [v21 handleWithAction:v33 categoryTokenData:isa replyHandler:v31];
  _Block_release(v31);

  if (v23)
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    OS_dispatch_source.cancel()();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease_n();
    (*(v34 + 8))(v24, v26);
  }

  else
  {
    (*(v34 + 8))(v24, v26);
    swift_unknownObjectRelease();
  }

  sub_10000210C(v41);
}

uint64_t sub_100059ED4(uint64_t a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6, const void *a7)
{
  v47 = a1;
  v49 = sub_10000637C(&qword_10007ACF8, &qword_1000665F0);
  v48 = *(v49 - 8);
  v13 = __chkstk_darwin(v49);
  v15 = v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v43 - v16;
  v50 = swift_allocObject();
  *(v50 + 16) = a7;
  v58 = 0;
  _Block_copy(a7);
  sub_1000563A8(a4, a5, &v58, v59);
  v43[1] = a2;
  v46 = a7;
  v43[2] = a4;
  v43[3] = a3;
  v43[4] = a5;
  v44 = v17;
  v45 = v15;
  v18 = a6;
  v19 = sub_100055A58();
  v21 = v20;
  v23 = v59[0];
  v22 = v59[1];
  v24 = *(v20 + 8);
  v57[3] = v19;
  v57[4] = v20;
  sub_1000067BC(v57);

  v24(v23, v22, v19, v21);
  sub_100008578((v18 + 120), *(v18 + 144));
  v25 = swift_allocObject();
  *(v25 + 16) = sub_10001FE48;
  *(v25 + 24) = v50;

  v26 = sub_1000248D4(v57, sub_10005BF84, v25);
  v28 = v27;
  v43[0] = v26;

  sub_100055A80(&aBlock);
  type metadata accessor for TokenEncoder();
  swift_allocObject();
  TokenEncoder.init(teamIdentifier:keyRetriever:)();

  if (v58)
  {
    v29 = v44;
    dispatch thunk of TokenEncoder.encode(categoryIdentifier:)();
    v30 = v49;
    v31 = v48;
    v32 = v47;
    v33 = Token.data.getter();
    v35 = v34;
    v36.super.isa = Data._bridgeToObjectiveC()().super.isa;
    sub_1000543C8(v33, v35);
    v55 = sub_10001FE48;
    v56 = v50;
    aBlock = _NSConcreteStackBlock;
    aBlock_8 = 1107296256;
    v53 = sub_100055788;
    v54 = &unk_100076F48;
    v37 = _Block_copy(&aBlock);

    [v43[0] handleWithAction:v32 categoryTokenData:v36.super.isa replyHandler:v37];
  }

  else
  {
    v29 = v45;
    dispatch thunk of TokenEncoder.encode(webDomain:)();
    v30 = v49;
    v31 = v48;
    v38 = v47;
    v40 = Token.data.getter();
    v42 = v41;
    v36.super.isa = Data._bridgeToObjectiveC()().super.isa;
    sub_1000543C8(v40, v42);
    v55 = sub_10001FE48;
    v56 = v50;
    aBlock = _NSConcreteStackBlock;
    aBlock_8 = 1107296256;
    v53 = sub_100055788;
    v54 = &unk_100076F20;
    v37 = _Block_copy(&aBlock);

    [v43[0] handleWithAction:v38 webDomainTokenData:v36.super.isa replyHandler:v37];
  }

  _Block_release(v37);

  (*(v31 + 8))(v29, v30);
  if (v28)
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    OS_dispatch_source.cancel()();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease_n();
  }

  else
  {
    swift_unknownObjectRelease();
  }

  sub_10000210C(v57);
}

uint64_t sub_10005A4E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, const void *a8)
{
  v70 = a6;
  v69 = a5;
  v73 = sub_10000637C(&qword_10007ACF8, &qword_1000665F0);
  v71 = *(v73 - 8);
  v14 = __chkstk_darwin(v73);
  v72 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v60 - v16;
  v18 = swift_allocObject();
  *(v18 + 16) = a8;
  v81 = 0;
  _Block_copy(a8);
  sub_100055B50(a3, a4, &v81, v82);
  v63 = a3;
  v64 = a4;
  v66 = a1;
  v67 = a2;
  v65 = v17;
  v68 = v18;
  v19 = a7;
  v20 = sub_100055A58();
  v22 = v21;
  v23 = v82[0];
  v24 = v82[1];
  v25 = *(v21 + 8);
  v80[3] = v20;
  v80[4] = v21;
  sub_1000067BC(v80);

  v25(v23, v24, v20, v22);
  sub_100008578(v19 + 15, v19[18]);
  v26 = swift_allocObject();
  *(v26 + 16) = sub_100031524;
  *(v26 + 24) = v68;

  v27 = sub_1000249B4(v80, sub_10005BF80, v26);
  v62 = v29;
  v61 = v27;

  sub_100055A80(&aBlock);
  type metadata accessor for TokenEncoder();
  swift_allocObject();
  TokenEncoder.init(teamIdentifier:keyRetriever:)();

  v60 = &v60;
  v32 = v19[2];
  v31 = v19[3];
  v33 = *(v32 - 8);
  __chkstk_darwin(v30);
  v35 = &v60 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = *(v31 + 8);
  v37 = v67;

  v36(v66, v37, v32, v31);
  (*(v31 + 56))(v32, v31);
  (*(v33 + 8))(v35, v32);
  v38 = v62;
  if ((v81 & 1) == 0)
  {
    v41 = v72;
    dispatch thunk of TokenEncoder.encode(bundleIdentifier:)();
    v42 = v68;
    v51 = String._bridgeToObjectiveC()();
    v52 = v73;
    v53 = v42;
    v54 = Token.data.getter();
    v56 = v55;
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_1000543C8(v54, v56);
    v58 = String._bridgeToObjectiveC()();

    v78 = sub_100031524;
    v79 = v53;
    aBlock = _NSConcreteStackBlock;
    aBlock_8 = 1107296256;
    v76 = sub_100055884;
    v77 = &unk_100076E80;
    v59 = _Block_copy(&aBlock);

    [v61 fetchConfigurationDataForApplication:v51 tokenData:isa localizedDisplayName:v58 replyHandler:{v59, v60}];
    _Block_release(v59);

    (*(v71 + 8))(v41, v52);
    if (!v62)
    {
      goto LABEL_5;
    }

LABEL_7:
    swift_getObjectType();
    swift_unknownObjectRetain();
    OS_dispatch_source.cancel()();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease_n();
    goto LABEL_8;
  }

  v39 = v65;
  dispatch thunk of TokenEncoder.encode(categoryIdentifier:)();
  v40 = v68;
  v43 = String._bridgeToObjectiveC()();
  v44 = String._bridgeToObjectiveC()();

  v45 = Token.data.getter();
  v47 = v46;
  v48 = Data._bridgeToObjectiveC()().super.isa;
  sub_1000543C8(v45, v47);
  v49 = String._bridgeToObjectiveC()();
  v78 = sub_100031524;
  v79 = v40;
  aBlock = _NSConcreteStackBlock;
  aBlock_8 = 1107296256;
  v76 = sub_100055884;
  v77 = &unk_100076EA8;
  v50 = _Block_copy(&aBlock);

  [v61 fetchConfigurationDataForApplication:v43 localizedApplicationDisplayName:v44 categoryTokenData:v48 localizedCategoryDisplayName:v49 replyHandler:{v50, v60}];
  _Block_release(v50);

  (*(v71 + 8))(v39, v73);
  if (v38)
  {
    goto LABEL_7;
  }

LABEL_5:
  swift_unknownObjectRelease();

LABEL_8:
  sub_10000210C(v80);
}

uint64_t sub_10005ADA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const void *a6)
{
  v44 = a4;
  v11 = sub_10000637C(&qword_10007ACF8, &qword_1000665F0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v38 - v13;
  v45 = swift_allocObject();
  *(v45 + 16) = a6;
  _Block_copy(a6);
  v15 = a5;
  sub_100056024(a1, v48);
  v41 = a1;
  v42 = a2;
  v38 = a3;
  v43 = v14;
  v39 = v12;
  v40 = v11;
  v16 = sub_100055A58();
  v18 = v17;
  v19 = v48[0];
  v20 = v48[1];
  v21 = *(v17 + 8);
  v47[3] = v16;
  v47[4] = v17;
  sub_1000067BC(v47);

  v21(v19, v20, v16, v18);

  sub_100055A80(aBlock);
  type metadata accessor for TokenEncoder();
  swift_allocObject();
  v22 = TokenEncoder.init(teamIdentifier:keyRetriever:)();

  v23 = v43;
  dispatch thunk of TokenEncoder.encode(categoryIdentifier:)();
  v42 = v22;
  sub_100008578((v15 + 120), *(v15 + 144));
  v24 = swift_allocObject();
  *(v24 + 16) = sub_100031524;
  *(v24 + 24) = v45;

  v25 = sub_1000249B4(v47, sub_10005BF80, v24);
  v27 = v26;

  v29 = String._bridgeToObjectiveC()();
  v30 = v23;
  v31 = v40;
  v32 = Token.data.getter();
  v34 = v33;
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_1000543C8(v32, v34);
  v36 = String._bridgeToObjectiveC()();
  aBlock[4] = sub_100031524;
  aBlock[5] = v45;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100055884;
  aBlock[3] = &unk_100076E08;
  v37 = _Block_copy(aBlock);

  [v25 fetchConfigurationDataForApplication:v29 localizedApplicationDisplayName:0 categoryTokenData:isa localizedCategoryDisplayName:v36 replyHandler:v37];
  _Block_release(v37);

  if (v27)
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    OS_dispatch_source.cancel()();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease_n();

    (*(v39 + 8))(v30, v31);
  }

  else
  {
    (*(v39 + 8))(v30, v31);
    swift_unknownObjectRelease();
  }

  sub_10000210C(v47);
}

uint64_t sub_10005B294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const void *a8)
{
  v59 = a6;
  v58 = a5;
  v61 = sub_10000637C(&qword_10007ACF8, &qword_1000665F0);
  v60 = *(v61 - 8);
  v14 = __chkstk_darwin(v61);
  v16 = v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = v52 - v17;
  v62 = swift_allocObject();
  *(v62 + 16) = a8;
  v70 = 0;
  _Block_copy(a8);
  sub_1000563A8(a3, a4, &v70, v71);
  v52[0] = a3;
  v57 = a8;
  v52[1] = a4;
  v55 = a1;
  v56 = a2;
  v53 = v16;
  v54 = v18;
  v19 = a7;
  v20 = sub_100055A58();
  v22 = v21;
  v23 = v71[0];
  v24 = v71[1];
  v25 = *(v21 + 8);
  v69[3] = v20;
  v69[4] = v21;
  sub_1000067BC(v69);

  v25(v23, v24, v20, v22);
  sub_100008578((v19 + 120), *(v19 + 144));
  v26 = swift_allocObject();
  *(v26 + 16) = sub_100031464;
  *(v26 + 24) = v62;

  v27 = sub_1000249B4(v69, sub_10005BE64, v26);
  v29 = v28;
  v30 = v27;

  sub_100055A80(&aBlock);
  type metadata accessor for TokenEncoder();
  swift_allocObject();
  v31 = TokenEncoder.init(teamIdentifier:keyRetriever:)();

  if (v70)
  {
    v32 = v54;
    dispatch thunk of TokenEncoder.encode(categoryIdentifier:)();
    v33 = v61;
    v57 = v31;
    v34 = String._bridgeToObjectiveC()();
    v35 = Token.data.getter();
    v36 = v30;
    v38 = v37;
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_1000543C8(v35, v38);
    v40 = String._bridgeToObjectiveC()();
    v67 = sub_100031464;
    v68 = v62;
    aBlock = _NSConcreteStackBlock;
    aBlock_8 = 1107296256;
    v65 = sub_100055884;
    v66 = &unk_100076D90;
    v41 = _Block_copy(&aBlock);

    [v36 fetchConfigurationDataForWebDomain:v34 categoryTokenData:isa localizedDisplayName:v40 replyHandler:v41];
    _Block_release(v41);

    (*(v60 + 8))(v32, v33);
  }

  else
  {
    v42 = v53;
    dispatch thunk of TokenEncoder.encode(webDomain:)();
    v43 = v61;
    v57 = v31;
    v45 = String._bridgeToObjectiveC()();
    v46 = Token.data.getter();
    v47 = v30;
    v49 = v48;
    v50 = Data._bridgeToObjectiveC()().super.isa;
    sub_1000543C8(v46, v49);
    v67 = sub_100031464;
    v68 = v62;
    aBlock = _NSConcreteStackBlock;
    aBlock_8 = 1107296256;
    v65 = sub_100055884;
    v66 = &unk_100076D68;
    v51 = _Block_copy(&aBlock);

    [v47 fetchConfigurationDataForWebDomain:v45 tokenData:v50 replyHandler:v51];
    _Block_release(v51);

    (*(v60 + 8))(v42, v43);
  }

  if (v29)
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    OS_dispatch_source.cancel()();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease_n();
  }

  else
  {
    swift_unknownObjectRelease();
  }

  sub_10000210C(v69);
}

uint64_t sub_10005B930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t, char *))
{
  a7(&v11, a1, a2, a3, a4, &v10);

  v8 = String._bridgeToObjectiveC()();
  (*(a6 + 16))(a6, v8, 0);
  swift_bridgeObjectRelease_n();

  v13 = v12;
  return sub_100020EA0(&v13);
}

unint64_t sub_10005BA30()
{
  result = qword_10007BA08;
  if (!qword_10007BA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007BA08);
  }

  return result;
}

unint64_t sub_10005BA84()
{
  result = qword_10007BA28;
  if (!qword_10007BA28)
  {
    sub_100006914(&qword_10007ACA0, &unk_1000665B0);
    sub_10005BCB0(&qword_10007ACE0, &type metadata accessor for WebDomain, &protocol conformance descriptor for WebDomain);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007BA28);
  }

  return result;
}

unint64_t sub_10005BB4C()
{
  result = qword_10007BA58;
  if (!qword_10007BA58)
  {
    sub_100006914(&qword_10007ACC0, &qword_1000665D0);
    sub_10005BE10(&qword_10007BA60, &qword_10007AD30, &qword_100066628);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007BA58);
  }

  return result;
}

unint64_t sub_10005BBE8()
{
  result = qword_10007BA88;
  if (!qword_10007BA88)
  {
    sub_100006914(&qword_10007AC98, &unk_1000671E0);
    sub_10005BCB0(&qword_10007ACE8, &type metadata accessor for Application, &protocol conformance descriptor for Application);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007BA88);
  }

  return result;
}

uint64_t sub_10005BCB0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10005BCF8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100006914(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10005BD74()
{
  result = qword_10007BAB0;
  if (!qword_10007BAB0)
  {
    sub_100006914(&qword_10007ACB0, &qword_1000665C0);
    sub_10005BE10(&qword_10007BAB8, &qword_10007AD08, &qword_100066600);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007BAB0);
  }

  return result;
}

uint64_t sub_10005BE10(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100006914(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10005BEE4()
{
  result = qword_10007BAC8;
  if (!qword_10007BAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007BAC8);
  }

  return result;
}

uint64_t Dictionary<>.sanitize(isInternalClient:)(int a1, uint64_t a2)
{
  v48 = a1;
  v53 = type metadata accessor for Logger();
  v3 = *(v53 - 8);
  v4 = __chkstk_darwin(v53);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v49 = &v45 - v7;
  sub_100009638();
  v46 = Dictionary.init(minimumCapacity:)();
  v8 = a2 + 64;
  v9 = 1 << *(a2 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a2 + 64);
  v12 = (v9 + 63) >> 6;
  v52 = v3 + 8;

  v13 = 0;
  v14.n128_u64[0] = 136446466;
  v45 = v14;
  v14.n128_u64[0] = 136446210;
  v47 = v14;
  v50 = a2;
  v51 = v6;
  v54 = v12;
  while (1)
  {
    v15 = v13;
    if (!v11)
    {
      break;
    }

LABEL_8:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v17 = v16 | (v13 << 6);
    v18 = (*(a2 + 48) + 16 * v17);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(*(a2 + 56) + 8 * v17);

    v22 = v21;
    v55 = v19;
    static SettingMetadataDirectory.metadata(for:)();
    v56 = v22;
    sub_100003AA0(&v57, v58);
    v23 = v59;
    v24 = v60;
    sub_100008578(v58, v59);
    v25 = sub_100060E78(v22, v48 & 1, v23, v24);
    v26 = v46;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v57 = v26;
    v28 = sub_1000182E8(v55, v20);
    v30 = *(v26 + 16);
    v31 = (v29 & 1) == 0;
    v32 = __OFADD__(v30, v31);
    v33 = v30 + v31;
    if (v32)
    {
      goto LABEL_21;
    }

    v34 = v29;
    if (*(v26 + 24) < v33)
    {
      sub_10001B190(v33, isUniquelyReferenced_nonNull_native);
      v28 = sub_1000182E8(v55, v20);
      if ((v34 & 1) != (v35 & 1))
      {
        goto LABEL_23;
      }

LABEL_13:
      if (v34)
      {
        goto LABEL_14;
      }

      goto LABEL_16;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_13;
    }

    v39 = v28;
    sub_10001DD34();
    v28 = v39;
    if (v34)
    {
LABEL_14:
      v36 = v28;

      v46 = v57;
      v37 = *(v57 + 56);
      v38 = *(v37 + 8 * v36);
      *(v37 + 8 * v36) = v25;

      goto LABEL_18;
    }

LABEL_16:
    v40 = v57;
    *(v57 + 8 * (v28 >> 6) + 64) |= 1 << v28;
    v41 = (v40[6] + 16 * v28);
    *v41 = v55;
    v41[1] = v20;
    *(v40[7] + 8 * v28) = v25;

    v42 = v40[2];
    v32 = __OFADD__(v42, 1);
    v43 = v42 + 1;
    if (v32)
    {
      goto LABEL_22;
    }

    v46 = v40;
    v40[2] = v43;
LABEL_18:
    a2 = v50;
    v12 = v54;
    sub_10000210C(v58);
  }

  while (1)
  {
    v13 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v13 >= v12)
    {

      return v46;
    }

    v11 = *(v8 + 8 * v13);
    ++v15;
    if (v11)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10005C67C(uint64_t a1, uint64_t a2, __n128 a3)
{
  v4 = type metadata accessor for Application();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_100063564(&qword_10007ACE8, &type metadata accessor for Application, &protocol conformance descriptor for Application), v8 = dispatch thunk of Hashable._rawHashValue(seed:)(), v9 = -1 << *(a2 + 32), v10 = v8 & ~v9, v19 = a2 + 56, ((*(a2 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0))
  {
    v18 = a2;
    v11 = ~v9;
    v12 = v5 + 16;
    v13 = *(v5 + 16);
    v14 = *(v12 + 56);
    v15 = (v12 - 8);
    do
    {
      v13(v7, *(v18 + 48) + v14 * v10, v4);
      sub_100063564(&qword_10007AD70, &type metadata accessor for Application, &protocol conformance descriptor for Application);
      v16 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v15)(v7, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_10005C8AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = a1;
  v4 = v3;
  swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for SettingMetadata();
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v28 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v6 - 8);
  __chkstk_darwin(v12);
  v17 = &v28 - v16;
  (*(v18 + 16))(v14, v4, a2);
  v19 = swift_dynamicCast();
  v20 = *(v15 + 56);
  if (v19)
  {
    v20(v11, 0, 1, v6);
    (*(v15 + 32))(v17, v11, v6);
    v21 = SettingMetadata.maximumCount.getter();
    if ((v22 & 1) == 0 && (v23 = v21, objc_opt_self(), swift_dynamicCastObjCClass()) && (v29 = 0, sub_100009638(), static Array._conditionallyBridgeFromObjectiveC(_:result:)(), v29) && (v29 >> 62 ? (v24 = _CocoaArrayWrapper.endIndex.getter()) : (v24 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10)), , v23 < v24))
    {
      sub_1000635AC();
      swift_allocError();
      *v25 = 1;
      swift_willThrow();
      return (*(v15 + 8))(v17, v6);
    }

    else
    {
      return (*(v15 + 8))(v17, v6);
    }
  }

  else
  {
    v20(v11, 1, 1, v6);
    (*(v8 + 8))(v11, v7);
    sub_1000635AC();
    swift_allocError();
    *v27 = 1;
    return swift_willThrow();
  }
}

uint64_t sub_10005CC58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(char *, char *))
{
  v28 = a4;
  v6 = a3(0);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = v27 - v12;
  result = __chkstk_darwin(v11);
  v16 = v27 - v15;
  v17 = 0;
  v29 = a1;
  v30 = a2;
  v20 = *(a1 + 56);
  v19 = a1 + 56;
  v18 = v20;
  v21 = 1 << *(v19 - 24);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v18;
  v24 = (v21 + 63) >> 6;
  v27[1] = v7 + 32;
  v27[2] = v7 + 16;
  v27[0] = v7 + 8;
  if ((v22 & v18) != 0)
  {
    do
    {
      v25 = v17;
LABEL_9:
      v26 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
      (*(v7 + 16))(v16, *(v29 + 48) + *(v7 + 72) * (v26 | (v25 << 6)), v6);
      (*(v7 + 32))(v10, v16, v6);
      v28(v13, v10);
      result = (*(v7 + 8))(v13, v6);
    }

    while (v23);
  }

  while (1)
  {
    v25 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v25 >= v24)
    {

      return v30;
    }

    v23 = *(v19 + 8 * v25);
    ++v17;
    if (v23)
    {
      v17 = v25;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

Swift::Int sub_10005CE84(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_10000637C(&qword_10007AF20, &unk_1000668E0);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v19 = -1 << v9[32];
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 6) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 2);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_10005D0A8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = type metadata accessor for WebDomain();
  v8 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return &_swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_10000637C(&qword_10007B890, &qword_100067070);
  result = static _SetStorage.allocate(capacity:)();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_100063564(&qword_10007ACE0, &type metadata accessor for WebDomain, &protocol conformance descriptor for WebDomain);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_10005D3D0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  v36 = type metadata accessor for Application();
  v9 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return &_swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_10000637C(&qword_10007B888, &unk_100067350);
  result = static _SetStorage.allocate(capacity:)();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v31 = (v9 + 32);
  v32 = v9 + 16;
  v30 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v33 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v34 = *(v9 + 72);
    (*(v9 + 16))(v35, v19 + v34 * (v16 | (v14 << 6)), v36);
    sub_100063564(&qword_10007ACE8, &type metadata accessor for Application, &protocol conformance descriptor for Application);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v20 = -1 << *(v11 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = (*v31)(*(v11 + 48) + v23 * v34, v35, v36);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v30;
    v13 = v33;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v33 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void sub_10005D6F8(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), void (*a5)(char *))
{
  v24 = a3;
  v25 = a5;
  v23 = a2;
  v8 = sub_10000637C(a2, a3);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  v11 = a4(0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v22 - v13;
  if (*(*v5 + 16))
  {
    v15 = 1 << *(a1 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(a1 + 56);
    v18 = (v15 + 63) >> 6;
    v22[1] = v12 + 8;
    v22[2] = v12 + 16;

    v19 = 0;
    while (v17)
    {
      v20 = v19;
LABEL_10:
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      (*(v12 + 16))(v14, *(a1 + 48) + *(v12 + 72) * (v21 | (v20 << 6)), v11);
      v25(v14);
      (*(v12 + 8))(v14, v11);
      sub_100008630(v10, v23, v24);
    }

    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v20 >= v18)
      {

        return;
      }

      v17 = *(a1 + 56 + 8 * v20);
      ++v19;
      if (v17)
      {
        v19 = v20;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void *sub_10005D914(uint64_t a1, void *a2)
{
  v5 = sub_10000637C(&qword_10007B9F0, "6N");
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = (&v65 - v9);
  v11 = type metadata accessor for WebDomain();
  v12 = __chkstk_darwin(v11);
  v85 = (&v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __chkstk_darwin(v12);
  v16 = (&v65 - v15);
  __chkstk_darwin(v14);
  v80 = (&v65 - v18);
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v66 = v10;
  v68 = v8;
  v20 = a1 + 56;
  v19 = *(a1 + 56);
  v21 = -1 << *(a1 + 32);
  v79 = ~v21;
  if (-v21 < 64)
  {
    v22 = ~(-1 << -v21);
  }

  else
  {
    v22 = -1;
  }

  v87 = (v22 & v19);
  v72 = (63 - v21) >> 6;
  v86 = v17 + 16;
  v77 = (v17 + 48);
  v78 = (v17 + 56);
  v76 = (v17 + 32);
  v82 = a2 + 7;
  v67 = v17;
  v88 = (v17 + 8);

  v24 = 0;
  v69 = a1;
  for (i = a1 + 56; ; v20 = i)
  {
    v25 = v87;
    v26 = v24;
    if (v87)
    {
LABEL_14:
      v2 = (v25 - 1) & v25;
      v30 = v66;
      (*(v67 + 16))(v66, *(a1 + 48) + *(v67 + 72) * (__clz(__rbit64(v25)) | (v26 << 6)), v11);
      v31 = 0;
      v28 = v26;
    }

    else
    {
      v27 = v72 <= (v24 + 1) ? v24 + 1 : v72;
      v28 = v27 - 1;
      v29 = v24;
      while (1)
      {
        v26 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          goto LABEL_58;
        }

        if (v26 >= v72)
        {
          break;
        }

        v25 = *(v20 + 8 * v26);
        ++v29;
        if (v25)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v31 = 1;
      v30 = v66;
    }

    v74 = *v78;
    v74(v30, v31, 1, v11);
    v89 = a1;
    v90 = v20;
    v91 = v79;
    v92 = v28;
    v93 = v2;
    v73 = *v77;
    if (v73(v30, 1, v11) == 1)
    {
      sub_100008630(v30, &qword_10007B9F0, "6N");
      v59 = a1;
      goto LABEL_53;
    }

    v71 = *v76;
    v71(v80, v30, v11);
    v70 = sub_100063564(&qword_10007ACE0, &type metadata accessor for WebDomain, &protocol conformance descriptor for WebDomain);
    v32 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v33 = -1 << *(a2 + 32);
    v24 = v32 & ~v33;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v82[v24 >> 6]) != 0)
    {
      break;
    }

    (*v88)(v80, v11);
LABEL_22:
    v24 = v28;
    v87 = v2;
  }

  v65 = v88 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v81 = ~v33;
  v34 = *(v67 + 72);
  v83 = *(v67 + 16);
  v84 = v34;
  while (1)
  {
    v83(v16, a2[6] + v84 * v24, v11);
    v35 = sub_100063564(&qword_10007AD98, &type metadata accessor for WebDomain, &protocol conformance descriptor for WebDomain);
    v36 = dispatch thunk of static Equatable.== infix(_:_:)();
    v87 = *v88;
    v87(v16, v11);
    if (v36)
    {
      break;
    }

    v24 = (v24 + 1) & v81;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v82[v24 >> 6]) == 0)
    {
      a1 = v69;
      v87(v80, v11);
      goto LABEL_22;
    }
  }

  v81 = v35;
  v37 = (v87)(v80, v11);
  v38 = *(a2 + 32);
  v65 = ((1 << v38) + 63) >> 6;
  v23 = 8 * v65;
  a1 = v69;
  if ((v38 & 0x3Fu) > 0xD)
  {
    goto LABEL_59;
  }

  while (2)
  {
    v66 = &v65;
    __chkstk_darwin(v37);
    v40 = &v65 - ((v39 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v40, v82, v39);
    v41 = *&v40[8 * v26] & ~v20;
    v42 = a2[2];
    v80 = v40;
    *&v40[8 * v26] = v41;
    v43 = v42 - 1;
    v24 = v68;
    v44 = i;
    v45 = v72;
LABEL_26:
    v67 = v43;
    while (v2)
    {
      v46 = v28;
LABEL_38:
      v49 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v83(v24, *(a1 + 48) + (v49 | (v46 << 6)) * v84, v11);
      v50 = 0;
LABEL_39:
      v74(v24, v50, 1, v11);
      v89 = a1;
      v90 = v44;
      v91 = v79;
      v92 = v28;
      v93 = v2;
      if (v73(v24, 1, v11) == 1)
      {
        sub_100008630(v24, &qword_10007B9F0, "6N");
        a2 = sub_10005D0A8(v80, v65, v67, a2);
        goto LABEL_52;
      }

      v71(v85, v24, v11);
      v51 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v52 = a2;
      v53 = -1 << *(a2 + 32);
      v54 = v51 & ~v53;
      v26 = v54 >> 6;
      v20 = 1 << v54;
      if (((1 << v54) & v82[v54 >> 6]) != 0)
      {
        v83(v16, v52[6] + v54 * v84, v11);
        v55 = dispatch thunk of static Equatable.== infix(_:_:)();
        v87(v16, v11);
        if ((v55 & 1) == 0)
        {
          v56 = ~v53;
          do
          {
            v54 = (v54 + 1) & v56;
            v26 = v54 >> 6;
            v20 = 1 << v54;
            if (((1 << v54) & v82[v54 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v83(v16, v52[6] + v54 * v84, v11);
            v57 = dispatch thunk of static Equatable.== infix(_:_:)();
            v87(v16, v11);
          }

          while ((v57 & 1) == 0);
        }

        v87(v85, v11);
        v58 = v80[v26];
        v80[v26] = v58 & ~v20;
        a2 = v52;
        a1 = v69;
        v24 = v68;
        v44 = i;
        v45 = v72;
        if ((v58 & v20) != 0)
        {
          v43 = v67 - 1;
          if (__OFSUB__(v67, 1))
          {
            __break(1u);
          }

          if (v67 == 1)
          {

            a2 = &_swiftEmptySetSingleton;
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v87(v85, v11);
        a2 = v52;
        a1 = v69;
        v24 = v68;
        v44 = i;
        v45 = v72;
      }
    }

    if (v45 <= (v28 + 1))
    {
      v47 = v28 + 1;
    }

    else
    {
      v47 = v45;
    }

    v48 = v47 - 1;
    while (1)
    {
      v46 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v46 >= v45)
      {
        v2 = 0;
        v50 = 1;
        v28 = v48;
        goto LABEL_39;
      }

      v2 = *(v44 + 8 * v46);
      ++v28;
      if (v2)
      {
        v28 = v46;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    v61 = v23;

    v80 = a2;
    v62 = v61;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v63 = v80;

      a2 = v63;
      continue;
    }

    break;
  }

  v64 = swift_slowAlloc();
  memcpy(v64, v82, v62);
  a2 = sub_10005F3B4(v64, v65, v80, v24, &v89);

LABEL_52:
  v59 = v89;
LABEL_53:
  sub_100003AB8(v59);
  return a2;
}

void *sub_10005E378(uint64_t a1, void *a2)
{
  v5 = sub_10000637C(&qword_10007AC90, &unk_1000665A0);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = (&v66 - v9);
  v11 = type metadata accessor for Application();
  v12 = __chkstk_darwin(v11);
  v86 = (&v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __chkstk_darwin(v12);
  v16 = (&v66 - v15);
  __chkstk_darwin(v14);
  v81 = (&v66 - v18);
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v67 = v10;
  v69 = v8;
  v20 = a1 + 56;
  v19 = *(a1 + 56);
  v21 = -1 << *(a1 + 32);
  v80 = ~v21;
  if (-v21 < 64)
  {
    v22 = ~(-1 << -v21);
  }

  else
  {
    v22 = -1;
  }

  v88 = (v22 & v19);
  v73 = (63 - v21) >> 6;
  v87 = v17 + 16;
  v78 = (v17 + 48);
  v79 = (v17 + 56);
  v77 = (v17 + 32);
  v83 = a2 + 7;
  v68 = v17;
  v89 = (v17 + 8);

  v24 = 0;
  v70 = a1;
  for (i = a1 + 56; ; v20 = i)
  {
    v25 = v88;
    v26 = v24;
    if (v88)
    {
LABEL_14:
      v2 = (v25 - 1) & v25;
      v30 = v67;
      (*(v68 + 16))(v67, *(a1 + 48) + *(v68 + 72) * (__clz(__rbit64(v25)) | (v26 << 6)), v11);
      v31 = 0;
      v28 = v26;
    }

    else
    {
      v27 = v73 <= (v24 + 1) ? v24 + 1 : v73;
      v28 = v27 - 1;
      v29 = v24;
      while (1)
      {
        v26 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          goto LABEL_58;
        }

        if (v26 >= v73)
        {
          break;
        }

        v25 = *(v20 + 8 * v26);
        ++v29;
        if (v25)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v31 = 1;
      v30 = v67;
    }

    v75 = *v79;
    v75(v30, v31, 1, v11);
    v90 = a1;
    v91 = v20;
    v92 = v80;
    v93 = v28;
    v94 = v2;
    v74 = *v78;
    if (v74(v30, 1, v11) == 1)
    {
      sub_100008630(v30, &qword_10007AC90, &unk_1000665A0);
      v60 = a1;
      goto LABEL_53;
    }

    v72 = *v77;
    v72(v81, v30, v11);
    v71 = sub_100063564(&qword_10007ACE8, &type metadata accessor for Application, &protocol conformance descriptor for Application);
    v32 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v33 = -1 << *(a2 + 32);
    v24 = v32 & ~v33;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v83[v24 >> 6]) != 0)
    {
      break;
    }

    (*v89)(v81, v11);
LABEL_22:
    v24 = v28;
    v88 = v2;
  }

  v66 = v89 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v82 = ~v33;
  v34 = *(v68 + 72);
  v84 = *(v68 + 16);
  v85 = v34;
  while (1)
  {
    v84(v16, a2[6] + v85 * v24, v11);
    v35 = sub_100063564(&qword_10007AD70, &type metadata accessor for Application, &protocol conformance descriptor for Application);
    v36 = dispatch thunk of static Equatable.== infix(_:_:)();
    v88 = *v89;
    v88(v16, v11);
    if (v36)
    {
      break;
    }

    v24 = (v24 + 1) & v82;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v83[v24 >> 6]) == 0)
    {
      a1 = v70;
      v88(v81, v11);
      goto LABEL_22;
    }
  }

  v82 = v35;
  v37 = (v88)(v81, v11);
  v38 = *(a2 + 32);
  v66 = ((1 << v38) + 63) >> 6;
  v23 = 8 * v66;
  a1 = v70;
  if ((v38 & 0x3Fu) > 0xD)
  {
    goto LABEL_59;
  }

  while (2)
  {
    v67 = &v66;
    __chkstk_darwin(v37);
    v40 = &v66 - ((v39 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v40, v83, v39);
    v41 = *&v40[8 * v26] & ~v20;
    v42 = a2[2];
    v81 = v40;
    *&v40[8 * v26] = v41;
    v43 = v42 - 1;
    v24 = v69;
    v44 = i;
    v45 = v73;
LABEL_26:
    v68 = v43;
    while (v2)
    {
      v46 = v28;
LABEL_38:
      v49 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v84(v24, *(a1 + 48) + (v49 | (v46 << 6)) * v85, v11);
      v50 = 0;
LABEL_39:
      v75(v24, v50, 1, v11);
      v90 = a1;
      v91 = v44;
      v92 = v80;
      v93 = v28;
      v94 = v2;
      if (v74(v24, 1, v11) == 1)
      {
        sub_100008630(v24, &qword_10007AC90, &unk_1000665A0);
        a2 = sub_10005D3D0(v81, v66, v68, a2, v59);
        goto LABEL_52;
      }

      v72(v86, v24, v11);
      v51 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v52 = a2;
      v53 = -1 << *(a2 + 32);
      v54 = v51 & ~v53;
      v26 = v54 >> 6;
      v20 = 1 << v54;
      if (((1 << v54) & v83[v54 >> 6]) != 0)
      {
        v84(v16, v52[6] + v54 * v85, v11);
        v55 = dispatch thunk of static Equatable.== infix(_:_:)();
        v88(v16, v11);
        if ((v55 & 1) == 0)
        {
          v56 = ~v53;
          do
          {
            v54 = (v54 + 1) & v56;
            v26 = v54 >> 6;
            v20 = 1 << v54;
            if (((1 << v54) & v83[v54 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v84(v16, v52[6] + v54 * v85, v11);
            v57 = dispatch thunk of static Equatable.== infix(_:_:)();
            v88(v16, v11);
          }

          while ((v57 & 1) == 0);
        }

        v88(v86, v11);
        v58 = v81[v26];
        v81[v26] = v58 & ~v20;
        a2 = v52;
        a1 = v70;
        v24 = v69;
        v44 = i;
        v45 = v73;
        if ((v58 & v20) != 0)
        {
          v43 = v68 - 1;
          if (__OFSUB__(v68, 1))
          {
            __break(1u);
          }

          if (v68 == 1)
          {

            a2 = &_swiftEmptySetSingleton;
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v88(v86, v11);
        a2 = v52;
        a1 = v70;
        v24 = v69;
        v44 = i;
        v45 = v73;
      }
    }

    if (v45 <= (v28 + 1))
    {
      v47 = v28 + 1;
    }

    else
    {
      v47 = v45;
    }

    v48 = v47 - 1;
    while (1)
    {
      v46 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v46 >= v45)
      {
        v2 = 0;
        v50 = 1;
        v28 = v48;
        goto LABEL_39;
      }

      v2 = *(v44 + 8 * v46);
      ++v28;
      if (v2)
      {
        v28 = v46;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    v62 = v23;

    v81 = a2;
    v63 = v62;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v64 = v81;

      a2 = v64;
      continue;
    }

    break;
  }

  v65 = swift_slowAlloc();
  memcpy(v65, v83, v63);
  a2 = sub_10005F888(v65, v66, v81, v24, &v90);

LABEL_52:
  v60 = v90;
LABEL_53:
  sub_100003AB8(v60);
  return a2;
}

uint64_t sub_10005EDDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for WebDomain();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_100063564(&qword_10007ACE0, &type metadata accessor for WebDomain, &protocol conformance descriptor for WebDomain);
  v31 = a1;
  v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_100063564(&qword_10007AD98, &type metadata accessor for WebDomain, &protocol conformance descriptor for WebDomain);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_10004B4B4();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_10005FD5C(v13, &type metadata accessor for WebDomain, &qword_10007ACE0, &type metadata accessor for WebDomain, &protocol conformance descriptor for WebDomain);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_10005F0C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = type metadata accessor for Application();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  sub_100063564(&qword_10007ACE8, &type metadata accessor for Application, &protocol conformance descriptor for Application);
  v32 = a1;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v30 = v10 + 56;
  v31 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v27 = v3;
    v28 = v7;
    v29 = a2;
    v15 = ~v13;
    v18 = *(v7 + 16);
    v17 = v7 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    while (1)
    {
      v16(v9, *(v31 + 48) + v19 * v14, v6);
      sub_100063564(&qword_10007AD70, &type metadata accessor for Application, &protocol conformance descriptor for Application);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v17 - 8))(v9, v6);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
      if (((*(v30 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v21 = 1;
        v7 = v28;
        a2 = v29;
        return (*(v7 + 56))(a2, v21, 1, v6);
      }
    }

    v22 = v27;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v22;
    v33 = *v22;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_10004B4DC();
      v24 = v33;
    }

    v7 = v28;
    a2 = v29;
    (*(v28 + 32))(v29, *(v24 + 48) + v19 * v14, v6);
    sub_10005FD5C(v14, &type metadata accessor for Application, &qword_10007ACE8, &type metadata accessor for Application, &protocol conformance descriptor for Application);
    v21 = 0;
    *v22 = v33;
  }

  else
  {
    v21 = 1;
  }

  return (*(v7 + 56))(a2, v21, 1, v6);
}

void *sub_10005F3B4(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v47 = a2;
  v9 = sub_10000637C(&qword_10007B9F0, "6N");
  __chkstk_darwin(v9 - 8);
  v11 = &v46 - v10;
  v12 = type metadata accessor for WebDomain();
  v13 = __chkstk_darwin(v12);
  v57 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v13);
  v63 = &v46 - v16;
  v17 = *(a3 + 16);
  v18 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v19 = *(a1 + v18);
  v49 = a1;
  v50 = v11;
  *(a1 + v18) = v19 & ((-1 << a4) - 1);
  v20 = v17 - 1;
  v60 = v21 + 16;
  v61 = a3;
  v54 = (v21 + 48);
  v55 = (v21 + 56);
  v53 = (v21 + 32);
  v59 = a3 + 56;
  v56 = v21;
  v62 = (v21 + 8);
  v51 = a5;
  while (2)
  {
    v48 = v20;
    do
    {
      while (1)
      {
        v23 = *a5;
        v24 = a5[1];
        v26 = a5[2];
        v25 = a5[3];
        v27 = a5[4];
        if (!v27)
        {
          v29 = (v26 + 64) >> 6;
          if (v29 <= v25 + 1)
          {
            v30 = v25 + 1;
          }

          else
          {
            v30 = (v26 + 64) >> 6;
          }

          v31 = v30 - 1;
          while (1)
          {
            v28 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
              break;
            }

            if (v28 >= v29)
            {
              v32 = 0;
              v33 = 1;
              goto LABEL_15;
            }

            v27 = *(v24 + 8 * v28);
            ++v25;
            if (v27)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_30;
        }

        v28 = a5[3];
LABEL_14:
        v32 = (v27 - 1) & v27;
        (*(v56 + 16))(v11, *(v23 + 48) + *(v56 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v12);
        v33 = 0;
        v31 = v28;
LABEL_15:
        (*v55)(v11, v33, 1, v12);
        *a5 = v23;
        a5[1] = v24;
        a5[2] = v26;
        a5[3] = v31;
        a5[4] = v32;
        if ((*v54)(v11, 1, v12) == 1)
        {
          sub_100008630(v11, &qword_10007B9F0, "6N");
          v45 = v61;

          return sub_10005D0A8(v49, v47, v48, v45);
        }

        (*v53)(v63, v11, v12);
        v34 = v61;
        sub_100063564(&qword_10007ACE0, &type metadata accessor for WebDomain, &protocol conformance descriptor for WebDomain);
        v35 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v36 = -1 << *(v34 + 32);
        v37 = v35 & ~v36;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) != 0)
        {
          break;
        }

        v22 = *v62;
LABEL_4:
        result = (v22)(v63, v12);
      }

      v52 = v62 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v58 = ~v36;
      v40 = *(v56 + 72);
      v41 = *(v56 + 16);
      while (1)
      {
        v42 = v57;
        v41(v57, *(v61 + 48) + v40 * v37, v12);
        sub_100063564(&qword_10007AD98, &type metadata accessor for WebDomain, &protocol conformance descriptor for WebDomain);
        v43 = dispatch thunk of static Equatable.== infix(_:_:)();
        v22 = *v62;
        (*v62)(v42, v12);
        if (v43)
        {
          break;
        }

        v37 = (v37 + 1) & v58;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) == 0)
        {
          v11 = v50;
          a5 = v51;
          goto LABEL_4;
        }
      }

      result = (v22)(v63, v12);
      v11 = v50;
      v44 = v49[v38];
      v49[v38] = v44 & ~v39;
      a5 = v51;
    }

    while ((v44 & v39) == 0);
    v20 = v48 - 1;
    if (__OFSUB__(v48, 1))
    {
LABEL_30:
      __break(1u);
      return result;
    }

    if (v48 != 1)
    {
      continue;
    }

    return &_swiftEmptySetSingleton;
  }
}

void *sub_10005F888(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v48 = a2;
  v9 = sub_10000637C(&qword_10007AC90, &unk_1000665A0);
  __chkstk_darwin(v9 - 8);
  v11 = &v47 - v10;
  v12 = type metadata accessor for Application();
  v13 = __chkstk_darwin(v12);
  v58 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v13);
  v64 = &v47 - v16;
  v17 = *(a3 + 16);
  v18 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v19 = *(a1 + v18);
  v50 = a1;
  v51 = v11;
  *(a1 + v18) = v19 & ((-1 << a4) - 1);
  v20 = v17 - 1;
  v61 = v21 + 16;
  v62 = a3;
  v55 = (v21 + 48);
  v56 = (v21 + 56);
  v54 = (v21 + 32);
  v60 = a3 + 56;
  v57 = v21;
  v63 = (v21 + 8);
  v52 = a5;
  while (2)
  {
    v49 = v20;
    do
    {
      while (1)
      {
        v23 = *a5;
        v24 = a5[1];
        v26 = a5[2];
        v25 = a5[3];
        v27 = a5[4];
        if (!v27)
        {
          v29 = (v26 + 64) >> 6;
          if (v29 <= v25 + 1)
          {
            v30 = v25 + 1;
          }

          else
          {
            v30 = (v26 + 64) >> 6;
          }

          v31 = v30 - 1;
          while (1)
          {
            v28 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
              break;
            }

            if (v28 >= v29)
            {
              v32 = 0;
              v33 = 1;
              goto LABEL_15;
            }

            v27 = *(v24 + 8 * v28);
            ++v25;
            if (v27)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_30;
        }

        v28 = a5[3];
LABEL_14:
        v32 = (v27 - 1) & v27;
        (*(v57 + 16))(v11, *(v23 + 48) + *(v57 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v12);
        v33 = 0;
        v31 = v28;
LABEL_15:
        (*v56)(v11, v33, 1, v12);
        *a5 = v23;
        a5[1] = v24;
        a5[2] = v26;
        a5[3] = v31;
        a5[4] = v32;
        if ((*v55)(v11, 1, v12) == 1)
        {
          sub_100008630(v11, &qword_10007AC90, &unk_1000665A0);
          v45 = v62;

          return sub_10005D3D0(v50, v48, v49, v45, v46);
        }

        (*v54)(v64, v11, v12);
        v34 = v62;
        sub_100063564(&qword_10007ACE8, &type metadata accessor for Application, &protocol conformance descriptor for Application);
        v35 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v36 = -1 << *(v34 + 32);
        v37 = v35 & ~v36;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v60 + 8 * (v37 >> 6))) != 0)
        {
          break;
        }

        v22 = *v63;
LABEL_4:
        result = (v22)(v64, v12);
      }

      v53 = v63 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v59 = ~v36;
      v40 = *(v57 + 72);
      v41 = *(v57 + 16);
      while (1)
      {
        v42 = v58;
        v41(v58, *(v62 + 48) + v40 * v37, v12);
        sub_100063564(&qword_10007AD70, &type metadata accessor for Application, &protocol conformance descriptor for Application);
        v43 = dispatch thunk of static Equatable.== infix(_:_:)();
        v22 = *v63;
        (*v63)(v42, v12);
        if (v43)
        {
          break;
        }

        v37 = (v37 + 1) & v59;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v60 + 8 * (v37 >> 6))) == 0)
        {
          v11 = v51;
          a5 = v52;
          goto LABEL_4;
        }
      }

      result = (v22)(v64, v12);
      v11 = v51;
      v44 = v50[v38];
      v50[v38] = v44 & ~v39;
      a5 = v52;
    }

    while ((v44 & v39) == 0);
    v20 = v49 - 1;
    if (__OFSUB__(v49, 1))
    {
LABEL_30:
      __break(1u);
      return result;
    }

    if (v49 != 1)
    {
      continue;
    }

    return &_swiftEmptySetSingleton;
  }
}

uint64_t sub_10005FD5C(int64_t a1, uint64_t (*a2)(void), unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v42 = a4;
  v43 = a5;
  v41 = a3;
  v7 = a2(0);
  v8 = *(v7 - 8);
  result = __chkstk_darwin(v7);
  v11 = &v37 - v10;
  v12 = *v5;
  v13 = *v5 + 56;
  v14 = -1 << *(*v5 + 32);
  v15 = (a1 + 1) & ~v14;
  if (((1 << v15) & *(v13 + 8 * (v15 >> 6))) != 0)
  {
    v16 = ~v14;

    v17 = _HashTable.previousHole(before:)();
    if ((*(v13 + 8 * (v15 >> 6)) & (1 << v15)) != 0)
    {
      v39 = (v17 + 1) & v16;
      v38 = *(v8 + 16);
      v44 = *(v8 + 72);
      v40 = v8 + 16;
      v18 = (v8 + 8);
      v19 = v12;
      v20 = v16;
      while (1)
      {
        v21 = v13;
        v22 = v44 * v15;
        v23 = v20;
        v38(v11, *(v19 + 48) + v44 * v15, v7);
        v24 = v19;
        sub_100063564(v41, v42, v43);
        v25 = dispatch thunk of Hashable._rawHashValue(seed:)();
        (*v18)(v11, v7);
        v20 = v23;
        v26 = v25 & v23;
        if (a1 >= v39)
        {
          if (v26 < v39 || a1 < v26)
          {
LABEL_4:
            v19 = v24;
            goto LABEL_5;
          }
        }

        else if (v26 < v39 && a1 < v26)
        {
          goto LABEL_4;
        }

        v19 = v24;
        v29 = *(v24 + 48);
        v30 = v44 * a1;
        v31 = v29 + v44 * a1;
        v32 = v29 + v22 + v44;
        if (v44 * a1 < v22 || v31 >= v32)
        {
          swift_arrayInitWithTakeFrontToBack();
LABEL_24:
          v20 = v23;
          a1 = v15;
          goto LABEL_5;
        }

        a1 = v15;
        if (v30 != v22)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_24;
        }

LABEL_5:
        v15 = (v15 + 1) & v20;
        v13 = v21;
        if (((*(v21 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
        {

          goto LABEL_28;
        }
      }
    }

    v19 = v12;
LABEL_28:
    *(v13 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v13 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
    v19 = v12;
  }

  v34 = *(v19 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v19 + 16) = v36;
    ++*(v19 + 36);
  }

  return result;
}

uint64_t sub_100060058(char a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of SettingMetadataProtocol.isPublic.getter();
  if ((result & 1) == 0 && (a1 & 1) == 0)
  {
    sub_1000635AC();
    swift_allocError();
    *v5 = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1000600C0(uint64_t a1)
{
  v1 = sub_10000637C(&qword_10007AC88, &unk_1000671D0);
  __chkstk_darwin(v1 - 8);
  v3 = &v22 - v2;
  v4 = sub_10000637C(&qword_10007AC80, &unk_100066590);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v22 - v9;
  type metadata accessor for Application();
  sub_100063564(&qword_10007ACE8, &type metadata accessor for Application, &protocol conformance descriptor for Application);
  static ShieldSettings.EffectiveActivityCategoryPolicy<>.value(from:)();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return sub_100008630(v3, &qword_10007AC88, &unk_1000671D0);
  }

  (*(v5 + 32))(v10, v3, v4);
  (*(v5 + 16))(v8, v10, v4);
  v12 = (*(v5 + 88))(v8, v4);
  if (v12 == enum case for ShieldSettings.EffectiveActivityCategoryPolicy.specific<A>(_:))
  {
    (*(v5 + 96))(v8, v4);
    v13 = *v8;
    v14 = *(v8 + 1);
    v15 = *(v13 + 16);

    if (static ShieldSettings.ActivityCategoryPolicy.maximumSpecificCategoriesCount.getter() >= v15)
    {
      v18 = *(v14 + 16);

      if (static ShieldSettings.ActivityCategoryPolicy.maximumSpecificExceptionsCount.getter() >= v18)
      {
        return (*(v5 + 8))(v10, v4);
      }
    }

    else
    {
    }

    goto LABEL_8;
  }

  if (v12 == enum case for ShieldSettings.EffectiveActivityCategoryPolicy.all<A>(_:))
  {
    (*(v5 + 96))(v8, v4);
    v16 = *(*v8 + 16);

    if (static ShieldSettings.ActivityCategoryPolicy.maximumAllExceptionsCount.getter() >= v16)
    {
      return (*(v5 + 8))(v10, v4);
    }

LABEL_8:
    sub_1000635AC();
    swift_allocError();
    *v17 = 1;
    swift_willThrow();
    return (*(v5 + 8))(v10, v4);
  }

  v19 = enum case for ShieldSettings.EffectiveActivityCategoryPolicy.none<A>(_:);
  v20 = *(v5 + 8);
  v21 = v12;
  result = v20(v10, v4);
  if (v21 != v19)
  {
    return v20(v8, v4);
  }

  return result;
}

uint64_t sub_10006044C(uint64_t a1)
{
  v1 = sub_10000637C(&qword_10007AC78, &unk_100067310);
  __chkstk_darwin(v1 - 8);
  v3 = &v22 - v2;
  v4 = sub_10000637C(&qword_10007AC70, &unk_100066580);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v22 - v9;
  type metadata accessor for WebDomain();
  sub_100063564(&qword_10007ACE0, &type metadata accessor for WebDomain, &protocol conformance descriptor for WebDomain);
  static ShieldSettings.EffectiveActivityCategoryPolicy<>.value(from:)();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return sub_100008630(v3, &qword_10007AC78, &unk_100067310);
  }

  (*(v5 + 32))(v10, v3, v4);
  (*(v5 + 16))(v8, v10, v4);
  v12 = (*(v5 + 88))(v8, v4);
  if (v12 == enum case for ShieldSettings.EffectiveActivityCategoryPolicy.specific<A>(_:))
  {
    (*(v5 + 96))(v8, v4);
    v13 = *v8;
    v14 = *(v8 + 1);
    v15 = *(v13 + 16);

    if (static ShieldSettings.ActivityCategoryPolicy.maximumSpecificCategoriesCount.getter() >= v15)
    {
      v18 = *(v14 + 16);

      if (static ShieldSettings.ActivityCategoryPolicy.maximumSpecificExceptionsCount.getter() >= v18)
      {
        return (*(v5 + 8))(v10, v4);
      }
    }

    else
    {
    }

    goto LABEL_8;
  }

  if (v12 == enum case for ShieldSettings.EffectiveActivityCategoryPolicy.all<A>(_:))
  {
    (*(v5 + 96))(v8, v4);
    v16 = *(*v8 + 16);

    if (static ShieldSettings.ActivityCategoryPolicy.maximumAllExceptionsCount.getter() >= v16)
    {
      return (*(v5 + 8))(v10, v4);
    }

LABEL_8:
    sub_1000635AC();
    swift_allocError();
    *v17 = 1;
    swift_willThrow();
    return (*(v5 + 8))(v10, v4);
  }

  v19 = enum case for ShieldSettings.EffectiveActivityCategoryPolicy.none<A>(_:);
  v20 = *(v5 + 8);
  v21 = v12;
  result = v20(v10, v4);
  if (v21 != v19)
  {
    return v20(v8, v4);
  }

  return result;
}

uint64_t sub_1000607D8(uint64_t a1)
{
  v1 = sub_10000637C(&qword_10007AC68, &unk_100067360);
  __chkstk_darwin(v1 - 8);
  v3 = &v20 - v2;
  v4 = type metadata accessor for UserSafetySettings.ScanningPolicy();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v20 - v9;
  static UserSafetySettings.ScanningPolicy.value(from:)();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return sub_100008630(v3, &qword_10007AC68, &unk_100067360);
  }

  (*(v5 + 32))(v10, v3, v4);
  (*(v5 + 16))(v8, v10, v4);
  v12 = (*(v5 + 88))(v8, v4);
  if (v12 == enum case for UserSafetySettings.ScanningPolicy.nudityDetection(_:))
  {
    (*(v5 + 96))(v8, v4);
    v13 = *(v8 + 1);

    v14 = *(v13 + 16);

    if (static UserSafetySettings.ScanningPolicy.maximumNudityDetectionApplicationsCount.getter() < v14)
    {
      sub_1000635AC();
      swift_allocError();
      *v15 = 1;
      swift_willThrow();
    }

    return (*(v5 + 8))(v10, v4);
  }

  else if (v12 == enum case for UserSafetySettings.ScanningPolicy.communicationSafety(_:))
  {
    (*(v5 + 8))(v10, v4);
    (*(v5 + 96))(v8, v4);
    v16 = type metadata accessor for UserSafetySettings.InterventionType();
    return (*(*(v16 - 8) + 8))(v8, v16);
  }

  else
  {
    v17 = enum case for UserSafetySettings.ScanningPolicy.none(_:);
    v18 = *(v5 + 8);
    v19 = v12;
    result = v18(v10, v4);
    if (v19 != v17)
    {
      return v18(v8, v4);
    }
  }

  return result;
}

uint64_t sub_100060B10(uint64_t a1)
{
  v1 = sub_10000637C(&qword_10007AC60, &unk_100066570);
  __chkstk_darwin(v1 - 8);
  v3 = &v23 - v2;
  v4 = type metadata accessor for WebContentSettings.FilterPolicy();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v23 - v9;
  static WebContentSettings.FilterPolicy.value(from:)();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return sub_100008630(v3, &qword_10007AC60, &unk_100066570);
  }

  (*(v5 + 32))(v10, v3, v4);
  (*(v5 + 16))(v8, v10, v4);
  v12 = (*(v5 + 88))(v8, v4);
  if (v12 == enum case for WebContentSettings.FilterPolicy.specific(_:))
  {
    (*(v5 + 96))(v8, v4);
    v13 = *(*v8 + 16);

    if (static WebContentSettings.FilterPolicy.maximumSpecificDomainsCount.getter() >= v13)
    {
      return (*(v5 + 8))(v10, v4);
    }

    goto LABEL_13;
  }

  if (v12 == enum case for WebContentSettings.FilterPolicy.auto(_:))
  {
    (*(v5 + 96))(v8, v4);
    v14 = *v8;
    v15 = *(v8 + 1);
    v16 = *(v14 + 16);

    if (static WebContentSettings.FilterPolicy.maximumAutoDomainsCount.getter() >= v16)
    {
      v18 = *(v15 + 16);

      if (static WebContentSettings.FilterPolicy.maximumAutoExceptionsCount.getter() >= v18)
      {
        return (*(v5 + 8))(v10, v4);
      }
    }

    else
    {
    }

LABEL_13:
    sub_1000635AC();
    swift_allocError();
    *v19 = 1;
    swift_willThrow();
    return (*(v5 + 8))(v10, v4);
  }

  if (v12 == enum case for WebContentSettings.FilterPolicy.all(_:))
  {
    (*(v5 + 96))(v8, v4);
    v17 = *(*v8 + 16);

    if (static WebContentSettings.FilterPolicy.maximumAllExceptionsCount.getter() >= v17)
    {
      return (*(v5 + 8))(v10, v4);
    }

    goto LABEL_13;
  }

  v20 = enum case for WebContentSettings.FilterPolicy.none(_:);
  v21 = *(v5 + 8);
  v22 = v12;
  result = v21(v10, v4);
  if (v22 != v20)
  {
    return v21(v8, v4);
  }

  return result;
}

uint64_t sub_100060E78(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  sub_100060058(a2, a3, a4);
  if (!v4 && (a2 & 1) == 0)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    sub_10000637C(&qword_10007AC98, &unk_1000671E0);
    if (swift_dynamicCastMetatype())
    {
      sub_1000600C0(a1);
    }

    else
    {
      sub_10000637C(&qword_10007ACA0, &unk_1000665B0);
      if (swift_dynamicCastMetatype())
      {
        sub_10006044C(a1);
      }

      else
      {
        type metadata accessor for UserSafetySettings.ScanningPolicy();
        if (swift_dynamicCastMetatype())
        {
          sub_1000607D8(a1);
        }

        else
        {
          type metadata accessor for WebContentSettings.FilterPolicy();
          if (swift_dynamicCastMetatype())
          {
            sub_100060B10(a1);
          }

          else if (!swift_dynamicCastMetatype() && swift_conformsToProtocol2() && AssociatedTypeWitness)
          {
            sub_10005C8AC(a1, a3, a4);
          }
        }
      }
    }
  }

  return a1;
}

uint64_t sub_10006100C(void *a1)
{
  v310 = sub_10000637C(&qword_10007BAE0, &qword_1000672F0);
  v309 = *(v310 - 8);
  __chkstk_darwin(v310);
  v308 = &v289 - v2;
  v307 = type metadata accessor for GameCenterSettings.OtherPlayerTypes();
  v306 = *(v307 - 8);
  __chkstk_darwin(v307);
  v304 = &v289 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v316 = sub_10000637C(&qword_10007BAE8, &qword_1000672F8);
  v305 = *(v316 - 8);
  __chkstk_darwin(v316);
  v315 = &v289 - v4;
  v331 = sub_10000637C(&qword_10007B5A0, &unk_100067300);
  v334 = *(v331 - 8);
  v5 = __chkstk_darwin(v331);
  v335 = &v289 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v319 = &v289 - v8;
  v9 = __chkstk_darwin(v7);
  v318 = &v289 - v10;
  v11 = __chkstk_darwin(v9);
  v317 = &v289 - v12;
  v13 = __chkstk_darwin(v11);
  v338 = &v289 - v14;
  __chkstk_darwin(v13);
  v340 = &v289 - v15;
  v327 = sub_10000637C(&qword_10007BA00, "DN");
  v314 = *(v327 - 8);
  __chkstk_darwin(v327);
  v326 = &v289 - v16;
  v17 = sub_10000637C(&qword_10007AC78, &unk_100067310);
  __chkstk_darwin(v17 - 8);
  v298 = &v289 - v18;
  v300 = sub_10000637C(&qword_10007AC70, &unk_100066580);
  v299 = *(v300 - 8);
  v19 = __chkstk_darwin(v300);
  v291 = (&v289 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = __chkstk_darwin(v19);
  v293 = (&v289 - v22);
  __chkstk_darwin(v21);
  v295 = &v289 - v23;
  v323 = sub_10000637C(&qword_10007B9F8, &qword_100067320);
  v313 = *(v323 - 8);
  __chkstk_darwin(v323);
  v322 = &v289 - v24;
  v347 = sub_10000637C(&qword_10007BAF0, &qword_100067328);
  v330 = *(v347 - 8);
  __chkstk_darwin(v347);
  v346 = &v289 - v25;
  v325 = sub_10000637C(&qword_10007BA90, &qword_100067330);
  v312 = *(v325 - 8);
  __chkstk_darwin(v325);
  v324 = &v289 - v26;
  v27 = sub_10000637C(&qword_10007AC88, &unk_1000671D0);
  __chkstk_darwin(v27 - 8);
  v296 = &v289 - v28;
  v301 = sub_10000637C(&qword_10007AC80, &unk_100066590);
  v302 = *(v301 - 8);
  v29 = __chkstk_darwin(v301);
  v292 = (&v289 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = __chkstk_darwin(v29);
  v294 = &v289 - v32;
  __chkstk_darwin(v31);
  v297 = &v289 - v33;
  v321 = sub_10000637C(&qword_10007BA68, &qword_1000671B8);
  v311 = *(v321 - 8);
  __chkstk_darwin(v321);
  v320 = &v289 - v34;
  v35 = sub_10000637C(&qword_10007AC90, &unk_1000665A0);
  v36 = __chkstk_darwin(v35);
  __chkstk_darwin(v36);
  v38 = &v289 - v37;
  v348 = type metadata accessor for Application();
  v328 = *(v348 - 1);
  v39 = __chkstk_darwin(v348);
  v303 = &v289 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __chkstk_darwin(v39);
  v43 = &v289 - v42;
  __chkstk_darwin(v41);
  v45 = &v289 - v44;
  v345 = sub_10000637C(&qword_10007B5B0, &qword_100066F50);
  v329 = *(v345 - 8);
  __chkstk_darwin(v345);
  v344 = &v289 - v46;
  v47 = sub_10000637C(&qword_10007B598, &unk_100066F30);
  v341 = *(v47 - 8);
  v48 = __chkstk_darwin(v47);
  v343 = &v289 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __chkstk_darwin(v48);
  v52 = &v289 - v51;
  v53 = __chkstk_darwin(v50);
  v339 = &v289 - v54;
  __chkstk_darwin(v53);
  v56 = &v289 - v55;
  static ManagedSettingsSettings.allowedClients.getter();
  v350 = v47;
  v333 = v56;
  v57 = SettingMetadata.name.getter();
  v332 = a1;
  v59 = *a1;
  if (!*(*a1 + 16))
  {

    goto LABEL_5;
  }

  v60 = sub_1000182E8(v57, v58);
  v62 = v61;

  if ((v62 & 1) == 0)
  {
LABEL_5:
    v63 = 0;
    goto LABEL_6;
  }

  v63 = *(*(v59 + 56) + 8 * v60);
  v64 = v63;
LABEL_6:
  v342 = sub_100063564(&qword_10007ACE8, &type metadata accessor for Application, &protocol conformance descriptor for Application);
  v65 = static Set<>.value(from:)();

  v352 = v65;
  v66 = sub_10000637C(&qword_10007B880, &qword_100067058);
  v336 = sub_10000637C(&qword_10007ACA8, &unk_100067060);
  v337 = v66;
  if ((swift_dynamicCast() & 1) == 0 || (v67 = v353) == 0)
  {
    v67 = &_swiftEmptySetSingleton;
  }

  v349 = v67;
  v353 = v67;
  static AllowedClientSettings.allowedClient.getter();
  v68 = SettingMetadata.name.getter();
  if (!*(v59 + 16))
  {

    goto LABEL_14;
  }

  v70 = sub_1000182E8(v68, v69);
  v72 = v71;

  if ((v72 & 1) == 0)
  {
LABEL_14:
    v77 = v332;
    v78 = v331;
    v79 = v335;
LABEL_15:
    v80 = v338;
    goto LABEL_16;
  }

  v73 = *(*(v59 + 56) + 8 * v70);
  v74 = v348;
  dispatch thunk of static Persistable.value(from:)();
  v75 = swift_dynamicCast();
  v76 = v328;
  (*(v328 + 56))(v38, v75 ^ 1u, 1, v74);
  if ((*(v76 + 48))(v38, 1, v74) == 1)
  {

    sub_100008630(v38, &qword_10007AC90, &unk_1000665A0);
    goto LABEL_14;
  }

  (*(v76 + 32))(v45, v38, v74);
  static Application.none.getter();
  sub_100063564(&qword_10007AD70, &type metadata accessor for Application, &protocol conformance descriptor for Application);
  v90 = dispatch thunk of static Equatable.== infix(_:_:)();
  v91 = *(v76 + 8);
  v91(v43, v74);
  v78 = v331;
  v79 = v335;
  if (v90)
  {
    v91(v45, v74);

    v77 = v332;
    goto LABEL_15;
  }

  v290 = v73;
  v93 = sub_10005C67C(v45, v349, v92);
  v80 = v338;
  if (v93)
  {
    v91(v45, v348);

    v77 = v332;
  }

  else
  {
    v94 = v303;
    v95 = v348;
    v96.n128_f64[0] = (*(v328 + 16))(v303, v45, v348);
    v97 = v94;
    v80 = v338;
    sub_10004A558(v43, v97, v96);
    v91(v43, v95);
    v98 = SettingMetadata.name.getter();
    v100 = v99;
    v349 = v353;
    v101 = Set<>.persistableValue()();
    v102 = v100;
    v77 = v332;
    sub_100017854(v101, v98, v102);

    v91(v45, v95);
  }

LABEL_16:
  v81 = v350;
  v82 = v340;
  if (v349[2])
  {
    static ApplicationSettings.blockedApplications.getter();
    v83 = SettingMetadata.name.getter();
    v85 = *v77;
    if (*(*v77 + 16))
    {
      v86 = sub_1000182E8(v83, v84);
      v88 = v87;

      if (v88)
      {
        v89 = *(*(v85 + 56) + 8 * v86);
        v351 = static Set<>.value(from:)();
        if ((swift_dynamicCast() & 1) != 0 && v352)
        {
          if (v349[2] <= v352[2] >> 3)
          {
            sub_10005D6F8(v349, &qword_10007AC90, &unk_1000665A0, &type metadata accessor for Application, sub_10005F0C8);
          }

          else
          {
            sub_10005E378(v349, v352);
          }

          v103 = SettingMetadata.name.getter();
          v105 = v104;
          v106 = Set<>.persistableValue()();

          sub_100017854(v106, v103, v105);

          v82 = v340;
        }

        else
        {
        }
      }
    }

    else
    {
    }

    static ShieldSettings.unshieldableApplications.getter();
    v107 = SettingMetadata.name.getter();
    v109 = *v77;
    if (*(*v77 + 16))
    {
      v110 = sub_1000182E8(v107, v108);
      v112 = v111;

      if (v112)
      {
        v113 = *(*(v109 + 56) + 8 * v110);
        v114 = v113;
      }

      else
      {
        v113 = 0;
      }
    }

    else
    {

      v113 = 0;
    }

    v115 = static Set<>.value(from:)();

    v351 = v115;
    if ((swift_dynamicCast() & 1) == 0 || (v116 = v352) == 0)
    {
      v116 = &_swiftEmptySetSingleton;
    }

    v352 = v116;

    sub_100036870(v117, v118);
    v119 = SettingMetadata.name.getter();
    v121 = v120;
    v122 = Set<>.persistableValue()();

    v123 = v122;
    v81 = v350;
    sub_100017854(v123, v119, v121);
    v124 = *(v341 + 8);
    v124(v52, v81);
    v124(v339, v81);
  }

  static ShieldSettings.unshieldableApplications.getter();
  v125 = SettingMetadata.name.getter();
  v127 = *v77;
  if (!*(*v77 + 16))
  {
    goto LABEL_50;
  }

  v128 = sub_1000182E8(v125, v126);
  v130 = v129;

  if ((v130 & 1) == 0)
  {
    goto LABEL_73;
  }

  v131 = *(*(v127 + 56) + 8 * v128);
  v351 = static Set<>.value(from:)();
  if ((swift_dynamicCast() & 1) == 0 || (v132 = v352) == 0)
  {

    goto LABEL_73;
  }

  if (!v352[2])
  {

LABEL_50:

    goto LABEL_73;
  }

  static ShieldSettings.applicationCategories.getter();
  v133 = SettingMetadata.name.getter();
  if (!*(v127 + 16))
  {

    goto LABEL_61;
  }

  v135 = sub_1000182E8(v133, v134);
  v137 = v136;
  v81 = v350;

  if ((v137 & 1) == 0)
  {
    goto LABEL_61;
  }

  v339 = *(*(v127 + 56) + 8 * v135);
  v138 = v296;
  static ShieldSettings.EffectiveActivityCategoryPolicy<>.value(from:)();
  v139 = v302;
  v140 = v301;
  if ((*(v302 + 48))(v138, 1, v301) == 1)
  {

    sub_100008630(v138, &qword_10007AC88, &unk_1000671D0);
    goto LABEL_61;
  }

  v141 = v138;
  v142 = v297;
  (*(v139 + 32))(v297, v141, v140);
  v143 = *(v139 + 16);
  v144 = v294;
  v143(v294, v142, v140);
  v145 = v302;
  v146 = (*(v302 + 88))(v144, v140);
  v147 = v146;
  v148 = v140;
  v149 = v145;
  if (v146 == enum case for ShieldSettings.EffectiveActivityCategoryPolicy.specific<A>(_:))
  {
    v150 = v294;
    (*(v145 + 96))(v294, v148);
    v151 = *v150;
    v152 = v150[1];
    v337 = v151;

    v154 = sub_10005CC58(v153, v152, &type metadata accessor for Application, sub_10004A558);
    v155 = v292;
    *v292 = v337;
    v155[1] = v154;
    (*(v145 + 104))(v155, v147, v301);
    v156 = SettingMetadata.name.getter();
    v337 = v157;
    v158 = ShieldSettings.EffectiveActivityCategoryPolicy<>.persistableValue()();
    v81 = v350;
    sub_100017854(v158, v156, v337);

    v159 = *(v302 + 8);
    v160 = v155;
    v161 = v301;
    v159(v160, v301);
LABEL_58:
    v159(v297, v161);
    goto LABEL_61;
  }

  if (v146 == enum case for ShieldSettings.EffectiveActivityCategoryPolicy.all<A>(_:))
  {
    v162 = *(v145 + 96);
    LODWORD(v337) = v146;
    v163 = v294;
    v164 = v148;
    v162(v294);
    v165 = *v163;

    v167 = sub_10005CC58(v166, v165, &type metadata accessor for Application, sub_10004A558);
    v168 = v292;
    *v292 = v167;
    (*(v149 + 104))(v168, v337, v164);
    v337 = SettingMetadata.name.getter();
    v169 = v149;
    v161 = v301;
    v336 = v170;
    v171 = ShieldSettings.EffectiveActivityCategoryPolicy<>.persistableValue()();
    v81 = v350;
    sub_100017854(v171, v337, v336);

    v159 = *(v169 + 8);
    v159(v292, v161);
    goto LABEL_58;
  }

  v172 = v339;
  if (v146 != enum case for ShieldSettings.EffectiveActivityCategoryPolicy.none<A>(_:))
  {
    goto LABEL_135;
  }

  (*(v149 + 8))(v297, v148);

LABEL_61:
  static ShieldSettings.applications.getter();
  v173 = SettingMetadata.name.getter();
  v175 = *v77;
  if (*(*v77 + 16))
  {
    v176 = sub_1000182E8(v173, v174);
    v178 = v177;

    if ((v178 & 1) == 0)
    {

LABEL_71:
      v82 = v340;
      v81 = v350;
      goto LABEL_72;
    }

    v179 = *(*(v175 + 56) + 8 * v176);
    v180 = static Set<>.value(from:)();
    v81 = v350;
    if (v180)
    {
      if (v132[2] <= v180[2] >> 3)
      {
        v352 = v180;
        sub_10005D6F8(v132, &qword_10007AC90, &unk_1000665A0, &type metadata accessor for Application, sub_10005F0C8);
      }

      else
      {
        sub_10005E378(v132, v180);
      }

      v181 = SettingMetadata.name.getter();
      v183 = v182;
      v184 = Set<>.persistableValue()();

      sub_100017854(v184, v181, v183);

      goto LABEL_71;
    }

    v82 = v340;
  }

  else
  {

    v82 = v340;
  }

LABEL_72:
  v185 = v311;
  (*(v312 + 8))(v324, v325);
  (*(v185 + 8))(v320, v321);
LABEL_73:
  static ShieldSettings.unshieldableWebDomains.getter();
  v186 = SettingMetadata.name.getter();
  v188 = *v77;
  if (*(*v77 + 16))
  {
    v189 = sub_1000182E8(v186, v187);
    v191 = v190;

    if (v191)
    {
      v192 = *(*(v188 + 56) + 8 * v189);
      type metadata accessor for WebDomain();
      sub_100063564(&qword_10007ACE0, &type metadata accessor for WebDomain, &protocol conformance descriptor for WebDomain);
      v193 = v192;
      v351 = static Set<>.value(from:)();
      sub_10000637C(&qword_10007BB00, &unk_100067340);
      sub_10000637C(&qword_10007ACB8, &qword_1000665C8);
      if ((swift_dynamicCast() & 1) != 0 && (v194 = v352) != 0)
      {
        if (v352[2])
        {
          v348 = v193;
          static ShieldSettings.webDomainCategories.getter();
          v195 = SettingMetadata.name.getter();
          if (!*(v188 + 16))
          {

            v80 = v338;
            goto LABEL_95;
          }

          v197 = sub_1000182E8(v195, v196);
          v199 = v198;

          if ((v199 & 1) == 0)
          {

LABEL_88:
            v79 = v335;
            v80 = v338;
            goto LABEL_95;
          }

          v342 = *(*(v188 + 56) + 8 * v197);
          v200 = v298;
          static ShieldSettings.EffectiveActivityCategoryPolicy<>.value(from:)();
          v201 = v299;
          v202 = v300;
          v203 = (*(v299 + 48))(v200, 1, v300);
          v80 = v338;
          if (v203 == 1)
          {

            sub_100008630(v200, &qword_10007AC78, &unk_100067310);
LABEL_94:
            v79 = v335;
LABEL_95:
            v222 = v348;
            static ShieldSettings.webDomains.getter();
            v223 = SettingMetadata.name.getter();
            v225 = *v77;
            if (*(*v77 + 16))
            {
              v226 = sub_1000182E8(v223, v224);
              v228 = v227;

              if (v228)
              {
                v229 = *(*(v225 + 56) + 8 * v226);
                v230 = static Set<>.value(from:)();
                v80 = v338;
                if (v230)
                {
                  v231 = v229;
                  if (v194[2] <= v230[2] >> 3)
                  {
                    v352 = v230;
                    sub_10005D6F8(v194, &qword_10007B9F0, "6N", &type metadata accessor for WebDomain, sub_10005EDDC);
                  }

                  else
                  {
                    sub_10005D914(v194, v230);
                  }

                  v284 = v335;
                  v285 = SettingMetadata.name.getter();
                  v287 = v286;
                  v288 = Set<>.persistableValue()();

                  sub_100017854(v288, v285, v287);

                  v80 = v338;
                  v232 = v314;
                  v233 = v313;
                  v79 = v284;
                  goto LABEL_104;
                }

                v79 = v335;
              }

              else
              {

                v79 = v335;
                v80 = v338;
              }
            }

            else
            {
            }

            v232 = v314;
            v233 = v313;
LABEL_104:
            (*(v232 + 8))(v326, v327);
            (*(v233 + 8))(v322, v323);
            goto LABEL_105;
          }

          v204 = v295;
          (*(v201 + 32))(v295, v200, v202);
          v205 = v293;
          (*(v201 + 16))(v293, v204, v202);
          v206 = (*(v201 + 88))(v205, v202);
          v207 = v206;
          if (v206 == enum case for ShieldSettings.EffectiveActivityCategoryPolicy.specific<A>(_:))
          {

            (*(v201 + 96))(v205, v202);
            v208 = v205[1];
            v349 = *v205;

            v210 = sub_10005CC58(v209, v208, &type metadata accessor for WebDomain, sub_10004A278);
            v211 = v291;
            *v291 = v349;
            v211[1] = v210;
LABEL_93:
            (*(v201 + 104))(v211, v207, v202);
            v215 = SettingMetadata.name.getter();
            v349 = v216;
            v217 = ShieldSettings.EffectiveActivityCategoryPolicy<>.persistableValue()();
            v218 = v215;
            v219 = v338;
            sub_100017854(v217, v218, v349);

            v220 = *(v201 + 8);
            v221 = v211;
            v80 = v219;
            v220(v221, v202);
            v220(v295, v202);
            goto LABEL_94;
          }

          if (v206 == enum case for ShieldSettings.EffectiveActivityCategoryPolicy.all<A>(_:))
          {

            (*(v201 + 96))(v205, v202);
            v212 = *v205;

            v214 = sub_10005CC58(v213, v212, &type metadata accessor for WebDomain, sub_10004A278);
            v211 = v291;
            *v291 = v214;
            goto LABEL_93;
          }

          if (v206 == enum case for ShieldSettings.EffectiveActivityCategoryPolicy.none<A>(_:))
          {
            (*(v201 + 8))(v204, v202);

            goto LABEL_88;
          }

LABEL_135:
          result = _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
          return result;
        }
      }

      else
      {
      }

LABEL_105:
      v82 = v340;
      v81 = v350;
      goto LABEL_106;
    }
  }

  else
  {
  }

LABEL_106:
  static GameCenterSettings.denyMultiplayerGaming.getter();
  v234 = SettingMetadata.name.getter();
  v236 = *v77;
  if (*(*v77 + 16))
  {
    v237 = sub_1000182E8(v234, v235);
    v239 = v238;

    if (v239)
    {
      v240 = *(*(v236 + 56) + 8 * v237);
      LOBYTE(v351) = static Bool.value(from:)();
      sub_10000637C(&qword_10007BAF8, &qword_100067338);
      if (swift_dynamicCast() & 1) != 0 && v352 != 2 && (v352)
      {
        static GameCenterSettings.allowedOtherPlayerTypes.getter();
        v241 = SettingMetadata.name.getter();
        v348 = v242;
        v349 = v241;
        v243 = v306;
        v244 = v304;
        v245 = v307;
        (*(v306 + 104))(v304, enum case for GameCenterSettings.OtherPlayerTypes.none(_:), v307);
        v246 = v79;
        v247 = GameCenterSettings.OtherPlayerTypes.persistableValue()();
        (*(v243 + 8))(v244, v245);
        v248 = v247;
        v79 = v246;
        sub_100017854(v248, v349, v348);

        v80 = v338;
        (*(v305 + 8))(v315, v316);
      }

      else
      {
      }
    }
  }

  else
  {
  }

  static ApplicationSettings.denyAppInstallation.getter();
  v249 = SettingMetadata.name.getter();
  v251 = *v77;
  if (*(*v77 + 16))
  {
    v252 = sub_1000182E8(v249, v250);
    v254 = v253;

    if (v254)
    {
      v255 = *(v251[7] + 8 * v252);
      LOBYTE(v351) = static Bool.value(from:)();
      sub_10000637C(&qword_10007BAF8, &qword_100067338);
      if (swift_dynamicCast() & 1) != 0 && v352 != 2 && (v352)
      {
        static AppStoreSettings.denyAppStoreAppInstallation.getter();
        static AppStoreSettings.denyMarketplaceAppInstallation.getter();
        static AppStoreSettings.denyWebDistributionAppInstallation.getter();
        v256 = SettingMetadata.name.getter();
        v258 = v257;
        v259 = v255;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v352 = *v77;
        sub_10001C868(v259, v256, v258, isUniquelyReferenced_nonNull_native);

        *v77 = v352;
        v261 = SettingMetadata.name.getter();
        v263 = v262;
        v264 = v259;
        v265 = swift_isUniquelyReferenced_nonNull_native();
        v352 = *v77;
        sub_10001C868(v264, v261, v263, v265);
        v81 = v350;

        *v77 = v352;
        v266 = SettingMetadata.name.getter();
        v268 = v267;
        v269 = swift_isUniquelyReferenced_nonNull_native();
        v352 = *v77;
        sub_10001C868(v264, v266, v268, v269);

        v251 = v352;
        *v77 = v352;
        v270 = *(v334 + 8);
        v270(v319, v78);
        v270(v318, v78);
        v270(v317, v78);
      }

      else
      {
      }
    }
  }

  else
  {
  }

  static AudioAccessorySettings.denyTemporaryPairing.getter();
  v271 = SettingMetadata.name.getter();
  if (v251[2])
  {
    v273 = sub_1000182E8(v271, v272);
    v275 = v274;

    if (v275)
    {
      v276 = *(v251[7] + 8 * v273);
      LOBYTE(v351) = static Bool.value(from:)();
      sub_10000637C(&qword_10007BAF8, &qword_100067338);
      if (swift_dynamicCast() & 1) != 0 && v352 != 2 && (v352)
      {
        v277 = v308;
        static AudioAccessorySettings.temporaryPairingConfiguration.getter();
        v278 = v310;
        v279 = SettingMetadata.name.getter();
        sub_100017854(0, v279, v280);

        (*(v309 + 8))(v277, v278);
      }

      else
      {
      }
    }
  }

  else
  {
  }

  v281 = *(v334 + 8);
  v281(v79, v78);
  v281(v80, v78);
  v281(v82, v78);
  (*(v330 + 8))(v346, v347);
  v282 = *(v341 + 8);
  v282(v343, v81);
  (*(v329 + 8))(v344, v345);
  return (v282)(v333, v81);
}

uint64_t sub_100063564(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000635AC()
{
  result = qword_10007BB08;
  if (!qword_10007BB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007BB08);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SanitizerError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SanitizerError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100063760()
{
  result = qword_10007BB10;
  if (!qword_10007BB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007BB10);
  }

  return result;
}

Swift::String __swiftcall URL.path(percentEncoded:)(Swift::Bool percentEncoded)
{
  v1 = URL.path(percentEncoded:)(percentEncoded);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

NSObject_optional __swiftcall GameCenterSettings.OtherPlayerTypes.persistableValue()()
{
  v0 = GameCenterSettings.OtherPlayerTypes.persistableValue()();
  result.value.isa = v0;
  result.is_nil = v1;
  return result;
}

NSObject_optional __swiftcall UserSafetySettings.ScanningPolicy.persistableValue()()
{
  v0 = UserSafetySettings.ScanningPolicy.persistableValue()();
  result.value.isa = v0;
  result.is_nil = v1;
  return result;
}

NSObject_optional __swiftcall WebContentSettings.FilterPolicy.persistableValue()()
{
  v0 = WebContentSettings.FilterPolicy.persistableValue()();
  result.value.isa = v0;
  result.is_nil = v1;
  return result;
}

NSObject_optional __swiftcall Application.persistableValue()()
{
  v0 = Application.persistableValue()();
  result.value.isa = v0;
  result.is_nil = v1;
  return result;
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = String.lowercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

NSObject_optional __swiftcall String.persistableValue()()
{
  v0 = String.persistableValue()();
  result.value.isa = v0;
  result.is_nil = v1;
  return result;
}

NSObject_optional __swiftcall Bool.persistableValue()()
{
  v0 = Bool.persistableValue()();
  result.value.isa = v0;
  result.is_nil = v1;
  return result;
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}