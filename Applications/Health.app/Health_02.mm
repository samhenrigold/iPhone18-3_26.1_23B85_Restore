void sub_100036544(uint64_t a1)
{
  if (!qword_1000DB7A0)
  {
    sub_1000373BC(255, &qword_1000DB7A8, &type metadata accessor for _ConditionalContent);
    sub_100036B1C();
    v1 = type metadata accessor for List();
    if (!v2)
    {
      atomic_store(v1, &qword_1000DB7A0);
    }
  }
}

void sub_1000365E0(uint64_t a1)
{
  if (!qword_1000DB7B8)
  {
    sub_100039900(255, &qword_1000DB7C0, &type metadata for String, &type metadata accessor for Array);
    sub_100039D04(255, &qword_1000DB7C8, sub_1000366B4);
    sub_100036AA0();
    v1 = type metadata accessor for ForEach();
    if (!v2)
    {
      atomic_store(v1, &qword_1000DB7B8);
    }
  }
}

void sub_1000366B4(uint64_t a1)
{
  if (!qword_1000DB7D0)
  {
    sub_100039A2C(255, &qword_1000DA868, sub_10003677C, &type metadata accessor for Array);
    sub_1000367C8(255);
    sub_100036A18();
    v1 = type metadata accessor for ForEach();
    if (!v2)
    {
      atomic_store(v1, &qword_1000DB7D0);
    }
  }
}

unint64_t sub_10003677C()
{
  result = qword_1000DA870;
  if (!qword_1000DA870)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000DA870);
  }

  return result;
}

void sub_1000367C8(uint64_t a1)
{
  if (!qword_1000DB7D8)
  {
    sub_100036880(255);
    sub_100039E88(&qword_1000DB800, sub_100036880, &protocol conformance descriptor for VStack<A>);
    sub_1000369C4();
    v1 = type metadata accessor for NavigationLink();
    if (!v2)
    {
      atomic_store(v1, &qword_1000DB7D8);
    }
  }
}

void sub_100036880(uint64_t a1)
{
  if (!qword_1000DB7E0)
  {
    sub_1000368FC(255, &qword_1000DB7E8, &qword_1000DB7F0, &type metadata for Text);
    sub_100036954();
    v1 = type metadata accessor for VStack();
    if (!v2)
    {
      atomic_store(v1, &qword_1000DB7E0);
    }
  }
}

void sub_1000368FC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_100039BB8(255, a3, a4);
    v5 = type metadata accessor for TupleView();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_100036954()
{
  result = qword_1000DB7F8;
  if (!qword_1000DB7F8)
  {
    sub_1000368FC(255, &qword_1000DB7E8, &qword_1000DB7F0, &type metadata for Text);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DB7F8);
  }

  return result;
}

unint64_t sub_1000369C4()
{
  result = qword_1000DB808;
  if (!qword_1000DB808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DB808);
  }

  return result;
}

unint64_t sub_100036A18()
{
  result = qword_1000DB810;
  if (!qword_1000DB810)
  {
    sub_100039A2C(255, &qword_1000DA868, sub_10003677C, &type metadata accessor for Array);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DB810);
  }

  return result;
}

unint64_t sub_100036AA0()
{
  result = qword_1000DB818;
  if (!qword_1000DB818)
  {
    sub_100039900(255, &qword_1000DB7C0, &type metadata for String, &type metadata accessor for Array);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DB818);
  }

  return result;
}

unint64_t sub_100036B1C()
{
  result = qword_1000DB820;
  if (!qword_1000DB820)
  {
    sub_1000373BC(255, &qword_1000DB7A8, &type metadata accessor for _ConditionalContent);
    sub_100036BB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DB820);
  }

  return result;
}

unint64_t sub_100036BB8()
{
  result = qword_1000DB828;
  if (!qword_1000DB828)
  {
    sub_100037440(255, &qword_1000DB7B0, &type metadata accessor for _ConditionalContent);
    sub_100036C54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DB828);
  }

  return result;
}

unint64_t sub_100036C54()
{
  result = qword_1000DB830;
  if (!qword_1000DB830)
  {
    sub_1000365E0(255);
    sub_100036CCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DB830);
  }

  return result;
}

unint64_t sub_100036CCC()
{
  result = qword_1000DB838;
  if (!qword_1000DB838)
  {
    sub_100039D04(255, &qword_1000DB7C8, sub_1000366B4);
    sub_100036D74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DB838);
  }

  return result;
}

unint64_t sub_100036D74()
{
  result = qword_1000DB840;
  if (!qword_1000DB840)
  {
    sub_1000366B4(255);
    sub_100039E88(&qword_1000DB848, sub_1000367C8, &protocol conformance descriptor for NavigationLink<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DB840);
  }

  return result;
}

void sub_100036E1C(uint64_t a1)
{
  if (!qword_1000DB850)
  {
    sub_100036544(255);
    type metadata accessor for InsetGroupedListStyle();
    sub_100039E88(&qword_1000DB858, sub_100036544, &protocol conformance descriptor for List<A, B>);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1000DB850);
    }
  }
}

void sub_100036EF0(uint64_t a1)
{
  if (!qword_1000DB860)
  {
    sub_100036E1C(255);
    sub_100036544(255);
    type metadata accessor for InsetGroupedListStyle();
    sub_100039E88(&qword_1000DB858, sub_100036544, &protocol conformance descriptor for List<A, B>);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1000DB860);
    }
  }
}

void sub_100036FF4(uint64_t a1)
{
  if (!qword_1000DB868)
  {
    sub_100037054(255);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &qword_1000DB868);
    }
  }
}

void sub_100037054(uint64_t a1)
{
  if (!qword_1000DB870)
  {
    sub_100036EF0(255);
    sub_100036E1C(255);
    sub_100036544(255);
    type metadata accessor for InsetGroupedListStyle();
    sub_100039E88(&qword_1000DB858, sub_100036544, &protocol conformance descriptor for List<A, B>);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1000DB870);
    }
  }
}

uint64_t sub_1000371BC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100018D6C;

  return sub_100036224(v2, v3);
}

unint64_t sub_100037254()
{
  result = qword_1000DB878;
  if (!qword_1000DB878)
  {
    sub_100036FF4(255);
    sub_100036EF0(255);
    sub_100036E1C(255);
    sub_100036544(255);
    type metadata accessor for InsetGroupedListStyle();
    sub_100039E88(&qword_1000DB858, sub_100036544, &protocol conformance descriptor for List<A, B>);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DB878);
  }

  return result;
}

void sub_1000373BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void *))
{
  if (!*a2)
  {
    sub_100037440(255, &qword_1000DB7B0, &type metadata accessor for _ConditionalContent);
    v7 = a3(a1, v6, &type metadata for Text);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_100037440(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *, uint64_t))
{
  if (!*a2)
  {
    sub_1000365E0(255);
    v7 = a3(a1, &type metadata for Text, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1000374A8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v60 = a2;
  sub_100039D04(0, &qword_1000DB8E0, sub_100039D68);
  v68 = v3;
  v69 = *(v3 - 8);
  v4 = __chkstk_darwin(v3);
  v67 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v70 = &v56 - v6;
  sub_100039C0C(0);
  v66 = v7;
  v61 = *(v7 - 8);
  v8 = __chkstk_darwin(v7);
  v71 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v56 - v10;
  sub_100039B38(0);
  v64 = v12;
  v57 = *(v12 - 8);
  v13 = v57;
  v14 = __chkstk_darwin(v12);
  v65 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v63 = &v56 - v17;
  v18 = __chkstk_darwin(v16);
  v62 = &v56 - v19;
  __chkstk_darwin(v18);
  v21 = &v56 - v20;
  v75 = a1;
  LocalizedStringKey.init(stringLiteral:)();
  v76 = Text.init(_:tableName:bundle:comment:)();
  v77 = v22;
  v78 = v23 & 1;
  v79 = v24;
  sub_1000368FC(0, &qword_1000DB8B8, &qword_1000DB8C0, &type metadata for TitleSpacerDetailCell);
  sub_100039ED8();
  v59 = v21;
  Section<>.init(header:content:)();
  v74 = a1;
  LocalizedStringKey.init(stringLiteral:)();
  v76 = Text.init(_:tableName:bundle:comment:)();
  v77 = v25;
  v78 = v26 & 1;
  v79 = v27;
  sub_100039A2C(0, &qword_1000DB8D0, sub_100039CA4, &type metadata accessor for TupleView);
  sub_100039F50();
  v58 = v11;
  Section<>.init(header:content:)();
  v73 = a1;
  LocalizedStringKey.init(stringLiteral:)();
  v76 = Text.init(_:tableName:bundle:comment:)();
  v77 = v28;
  v78 = v29 & 1;
  v79 = v30;
  sub_100039D68(0);
  sub_100039FE0();
  Section<>.init(header:content:)();
  v72 = a1;
  LocalizedStringKey.init(stringLiteral:)();
  v76 = Text.init(_:tableName:bundle:comment:)();
  v77 = v31;
  v78 = v32 & 1;
  v79 = v33;
  v34 = v62;
  Section<>.init(header:content:)();
  v35 = *(v13 + 16);
  v36 = v63;
  v37 = v21;
  v38 = v64;
  v35(v63, v37, v64);
  v56 = *(v61 + 16);
  v39 = v11;
  v40 = v66;
  v56(v71, v39, v66);
  v41 = *(v69 + 16);
  v42 = v67;
  v41(v67, v70, v68);
  v43 = v34;
  v44 = v38;
  v35(v65, v43, v38);
  v45 = v60;
  v35(v60, v36, v44);
  sub_100039A90(0);
  v47 = v46;
  v56(&v45[*(v46 + 48)], v71, v40);
  v48 = v68;
  v41(&v45[*(v47 + 64)], v42, v68);
  v49 = v65;
  v50 = v64;
  v35(&v45[*(v47 + 80)], v65, v64);
  v51 = *(v57 + 8);
  v51(v62, v50);
  v52 = *(v69 + 8);
  v52(v70, v48);
  v53 = *(v61 + 8);
  v54 = v66;
  v53(v58, v66);
  v51(v59, v50);
  v51(v49, v50);
  v52(v67, v48);
  v53(v71, v54);
  return (v51)(v63, v50);
}

uint64_t sub_100037CA0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 messageIdentifier];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = [a1 clientIdentifier];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  *a2 = 0xD000000000000012;
  *(a2 + 8) = 0x80000001000A6310;
  *(a2 + 16) = v5;
  *(a2 + 24) = v7;
  *(a2 + 32) = 1;
  *(a2 + 40) = 0xD000000000000011;
  *(a2 + 48) = 0x80000001000A6330;
  *(a2 + 56) = v9;
  *(a2 + 64) = v11;
  *(a2 + 72) = 0;
}

uint64_t sub_100037D90@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 action];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = [a1 categoryIdentifier];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12 = [a1 criteria];
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  *a2 = 0xD000000000000013;
  *(a2 + 8) = 0x80000001000A62D0;
  *(a2 + 16) = v5;
  *(a2 + 24) = v7;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0xD000000000000013;
  *(a2 + 48) = 0x80000001000A62F0;
  *(a2 + 56) = v9;
  *(a2 + 64) = v11;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0x6169726574697243;
  *(a2 + 88) = 0xE800000000000000;
  *(a2 + 96) = v13;
  *(a2 + 104) = v15;
  *(a2 + 112) = 0;
}

uint64_t sub_100037EF0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [a1 sendingDeviceInfo];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  *&v44[0] = 59;
  *(&v44[0] + 1) = 0xE100000000000000;
  v31 = v44;

  v8 = sub_1000341C8(0x7FFFFFFFFFFFFFFFLL, 1, sub_10003A0BC, v30, v4, v6, v7);
  v9 = v8[2];
  if (v9)
  {
    v29 = v4;
    *&v44[0] = _swiftEmptyArrayStorage;
    sub_10007C57C(0, v9, 0);
    v10 = *&v44[0];
    v11 = v8 + 7;
    do
    {

      v12 = static String._fromSubstring(_:)();
      v14 = v13;

      *&v44[0] = v10;
      v16 = v10[2];
      v15 = v10[3];
      if (v16 >= v15 >> 1)
      {
        sub_10007C57C((v15 > 1), v16 + 1, 1);
        v10 = *&v44[0];
      }

      v10[2] = v16 + 1;
      v17 = &v10[2 * v16];
      v17[4] = v12;
      v17[5] = v14;
      v11 += 4;
      --v9;
    }

    while (v9);

    v4 = v29;
  }

  else
  {

    v10 = _swiftEmptyArrayStorage;
  }

  if (v10[2] != 3)
  {

    *&v37[16] = v40;
    *&v37[32] = v41;
    *&v37[48] = v42;
    *&v37[64] = v43;
    v38 = 1;
    v32 = 1868983881;
    v33 = 0xE400000000000000;
    v34 = v4;
    v35 = v6;
    v36 = 0;
    *v37 = v39;
    v37[80] = 1;
    goto LABEL_14;
  }

  v19 = v10[2];
  if (!v19)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v19 == 1)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v19 >= 3)
  {
    v21 = v10[4];
    v20 = v10[5];
    v23 = v10[6];
    v22 = v10[7];
    v25 = v10[8];
    v24 = v10[9];
    swift_bridgeObjectRetain_n();

    LOBYTE(v39) = 0;
    v32 = 0x4E20656369766544;
    v33 = 0xEB00000000656D61;
    v34 = v21;
    v35 = v20;
    v36 = 0;
    strcpy(&v37[7], "Product Type");
    v37[20] = 0;
    *&v37[21] = -5120;
    *&v37[23] = v23;
    *&v37[31] = v22;
    v37[39] = 0;
    *&v37[47] = 0x646C697542;
    *&v37[55] = 0xE500000000000000;
    *&v37[63] = v25;
    *&v37[71] = v24;
    *&v37[79] = 0;
LABEL_14:
    sub_100039A2C(0, &qword_1000DB8D0, sub_100039CA4, &type metadata accessor for TupleView);
    sub_100039F50();
    sub_10003A060();
    result = _ConditionalContent<>.init(storage:)();
    v26 = v44[5];
    *(a2 + 64) = v44[4];
    *(a2 + 80) = v26;
    *(a2 + 96) = v44[6];
    *(a2 + 112) = v45;
    v27 = v44[1];
    *a2 = v44[0];
    *(a2 + 16) = v27;
    v28 = v44[3];
    *(a2 + 32) = v44[2];
    *(a2 + 48) = v28;
    return result;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_10003827C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 creationDate];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = sub_10009ACA0(v5, v7);
  v10 = v9;

  v11 = [a1 expirationDate];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v15 = sub_10009ACA0(v12, v14);
  v17 = v16;

  strcpy(a2, "Creation Date");
  *(a2 + 14) = -4864;
  *(a2 + 16) = v8;
  *(a2 + 24) = v10;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0x6974617269707845;
  *(a2 + 48) = 0xEF65746144206E6FLL;
  *(a2 + 56) = v15;
  *(a2 + 64) = v17;
  *(a2 + 72) = 0;
}

uint64_t sub_1000383A8()
{
  v1 = type metadata accessor for InsetGroupedListStyle();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10003997C(0);
  v6 = v5;
  v7 = *(v5 - 8);
  __chkstk_darwin(v5);
  v9 = &v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *v0;
  sub_100039A2C(0, &qword_1000DB8A0, sub_100039A90, &type metadata accessor for TupleView);
  sub_100039DF8();
  List<>.init(content:)();
  InsetGroupedListStyle.init()();
  sub_100039E88(&qword_1000DB8F8, sub_10003997C, &protocol conformance descriptor for List<A, B>);
  View.listStyle<A>(_:)();
  (*(v2 + 8))(v4, v1);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1000385D8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1000385E8(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_1000385F4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100038604(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1000341B0(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_100038680(v6);
  return specialized ContiguousArray._endMutation()();
}

Swift::Int sub_100038680(unint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_10003677C();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_100038900(v8, v9, a1, v4);
      *(v7 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_100038784(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100038784(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v26 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = result - a3;
LABEL_6:
    v24 = v4;
    v25 = a3;
    v6 = *(v26 + 8 * a3);
    v23 = v5;
    while (1)
    {
      v7 = *v4;
      v8 = v6;
      v9 = v7;
      v10 = [v8 creationDate];
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      v14 = [v9 creationDate];
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;

      if (v15 == v11 && v17 == v13)
      {

LABEL_5:
        a3 = v25 + 1;
        v4 = v24 + 8;
        v5 = v23 - 1;
        if (v25 + 1 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v19 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v26)
      {
        break;
      }

      v20 = *v4;
      v6 = *(v4 + 8);
      *v4 = v6;
      *(v4 + 8) = v20;
      v4 -= 8;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_100038900(void ***a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v6 = a3;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = _swiftEmptyArrayStorage;
LABEL_106:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_145;
    }

    v4 = v9;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v107 = v4;
LABEL_109:
      v4 = *(v107 + 2);
      if (v4 >= 2)
      {
        do
        {
          v108 = *v6;
          if (!*v6)
          {
            goto LABEL_143;
          }

          v6 = (v4 - 1);
          v109 = *&v107[16 * v4];
          v110 = v107;
          v111 = *&v107[16 * v4 + 24];
          sub_1000390F8((v108 + 8 * v109), (v108 + 8 * *&v107[16 * v4 + 16]), (v108 + 8 * v111), v5);
          if (v126)
          {
            break;
          }

          if (v111 < v109)
          {
            goto LABEL_132;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v110 = sub_100033330(v110);
          }

          if (v4 - 2 >= *(v110 + 2))
          {
            goto LABEL_133;
          }

          v112 = &v110[16 * v4];
          *v112 = v109;
          *(v112 + 1) = v111;
          sub_1000332A4(v4 - 1);
          v107 = v110;
          v4 = *(v110 + 2);
          v6 = a3;
        }

        while (v4 > 1);
      }

LABEL_117:

      return;
    }

LABEL_139:
    v107 = sub_100033330(v4);
    goto LABEL_109;
  }

  v8 = 0;
  v9 = _swiftEmptyArrayStorage;
  while (1)
  {
    v10 = v8++;
    if (v8 < v7)
    {
      v122 = v7;
      v114 = v9;
      v116 = v10;
      v4 = *v6;
      v11 = *(*v6 + 8 * v8);
      v12 = *(*v6 + 8 * v10);
      v13 = v11;
      v14 = v12;
      v15 = [v13 creationDate];
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;

      v18 = [v14 creationDate];
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      if (v19 == v5 && v21 == v17)
      {
        v127 = 0;
      }

      else
      {
        v127 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      v10 = v116;
      v8 = v116 + 2;
      if (v116 + 2 < v122)
      {
        v4 += 8 * v116 + 16;
        do
        {
          v124 = v8;
          v24 = *(v4 - 8);
          v25 = *v4;
          v26 = v24;
          v27 = [v25 creationDate];
          v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v29 = v28;

          v30 = [v26 creationDate];
          v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v33 = v32;

          if (v31 == v5 && v33 == v29)
          {

            v8 = v124;
            if (v127)
            {
              v6 = a3;
              v9 = v114;
              v10 = v116;
              goto LABEL_25;
            }
          }

          else
          {
            v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

            v8 = v124;
            if ((v127 ^ v23))
            {
              goto LABEL_23;
            }
          }

          ++v8;
          v4 += 8;
        }

        while (v122 != v8);
        v8 = v122;
LABEL_23:
        v10 = v116;
      }

      v6 = a3;
      v9 = v114;
      if (v127)
      {
LABEL_25:
        if (v8 < v10)
        {
          goto LABEL_136;
        }

        if (v10 < v8)
        {
          v35 = 8 * v8 - 8;
          v36 = 8 * v10;
          v37 = v8;
          v38 = v10;
          do
          {
            if (v38 != --v37)
            {
              v39 = *v6;
              if (!*v6)
              {
                goto LABEL_142;
              }

              v40 = *(v39 + v36);
              *(v39 + v36) = *(v39 + v35);
              *(v39 + v35) = v40;
            }

            ++v38;
            v35 -= 8;
            v36 += 8;
          }

          while (v38 < v37);
        }
      }
    }

    v41 = v6[1];
    if (v8 < v41)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_135;
      }

      if (v8 - v10 < a4)
      {
        break;
      }
    }

LABEL_54:
    if (v8 < v10)
    {
      goto LABEL_134;
    }

    v60 = v9;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v9 = v60;
    }

    else
    {
      v9 = sub_100031644(0, *(v60 + 2) + 1, 1, v60);
    }

    v4 = *(v9 + 2);
    v61 = *(v9 + 3);
    v62 = v4 + 1;
    if (v4 >= v61 >> 1)
    {
      v9 = sub_100031644((v61 > 1), v4 + 1, 1, v9);
    }

    *(v9 + 2) = v62;
    v63 = &v9[16 * v4];
    *(v63 + 4) = v10;
    *(v63 + 5) = v8;
    v64 = *a1;
    if (!*a1)
    {
      goto LABEL_144;
    }

    if (v4)
    {
      while (1)
      {
        v65 = v62 - 1;
        if (v62 >= 4)
        {
          break;
        }

        if (v62 == 3)
        {
          v66 = *(v9 + 4);
          v67 = *(v9 + 5);
          v76 = __OFSUB__(v67, v66);
          v68 = v67 - v66;
          v69 = v76;
LABEL_74:
          if (v69)
          {
            goto LABEL_123;
          }

          v82 = &v9[16 * v62];
          v84 = *v82;
          v83 = *(v82 + 1);
          v85 = __OFSUB__(v83, v84);
          v86 = v83 - v84;
          v87 = v85;
          if (v85)
          {
            goto LABEL_126;
          }

          v88 = &v9[16 * v65 + 32];
          v90 = *v88;
          v89 = *(v88 + 1);
          v76 = __OFSUB__(v89, v90);
          v91 = v89 - v90;
          if (v76)
          {
            goto LABEL_129;
          }

          if (__OFADD__(v86, v91))
          {
            goto LABEL_130;
          }

          if (v86 + v91 >= v68)
          {
            if (v68 < v91)
            {
              v65 = v62 - 2;
            }

            goto LABEL_95;
          }

          goto LABEL_88;
        }

        v92 = &v9[16 * v62];
        v94 = *v92;
        v93 = *(v92 + 1);
        v76 = __OFSUB__(v93, v94);
        v86 = v93 - v94;
        v87 = v76;
LABEL_88:
        if (v87)
        {
          goto LABEL_125;
        }

        v95 = &v9[16 * v65];
        v97 = *(v95 + 4);
        v96 = *(v95 + 5);
        v76 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v76)
        {
          goto LABEL_128;
        }

        if (v98 < v86)
        {
          goto LABEL_3;
        }

LABEL_95:
        v4 = v65 - 1;
        if (v65 - 1 >= v62)
        {
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
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
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
          goto LABEL_138;
        }

        if (!*v6)
        {
          goto LABEL_141;
        }

        v5 = v8;
        v103 = v9;
        v104 = *&v9[16 * v4 + 32];
        v105 = *&v9[16 * v65 + 40];
        sub_1000390F8((*v6 + 8 * v104), (*v6 + 8 * *&v9[16 * v65 + 32]), (*v6 + 8 * v105), v64);
        if (v126)
        {
          goto LABEL_117;
        }

        if (v105 < v104)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v103 = sub_100033330(v103);
        }

        if (v4 >= *(v103 + 2))
        {
          goto LABEL_120;
        }

        v106 = &v103[16 * v4];
        *(v106 + 4) = v104;
        *(v106 + 5) = v105;
        sub_1000332A4(v65);
        v9 = v103;
        v62 = *(v103 + 2);
        v8 = v5;
        if (v62 <= 1)
        {
          goto LABEL_3;
        }
      }

      v70 = &v9[16 * v62 + 32];
      v71 = *(v70 - 64);
      v72 = *(v70 - 56);
      v76 = __OFSUB__(v72, v71);
      v73 = v72 - v71;
      if (v76)
      {
        goto LABEL_121;
      }

      v75 = *(v70 - 48);
      v74 = *(v70 - 40);
      v76 = __OFSUB__(v74, v75);
      v68 = v74 - v75;
      v69 = v76;
      if (v76)
      {
        goto LABEL_122;
      }

      v77 = &v9[16 * v62];
      v79 = *v77;
      v78 = *(v77 + 1);
      v76 = __OFSUB__(v78, v79);
      v80 = v78 - v79;
      if (v76)
      {
        goto LABEL_124;
      }

      v76 = __OFADD__(v68, v80);
      v81 = v68 + v80;
      if (v76)
      {
        goto LABEL_127;
      }

      if (v81 >= v73)
      {
        v99 = &v9[16 * v65 + 32];
        v101 = *v99;
        v100 = *(v99 + 1);
        v76 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v76)
        {
          goto LABEL_131;
        }

        if (v68 < v102)
        {
          v65 = v62 - 2;
        }

        goto LABEL_95;
      }

      goto LABEL_74;
    }

LABEL_3:
    v7 = v6[1];
    if (v8 >= v7)
    {
      goto LABEL_106;
    }
  }

  v42 = v10 + a4;
  if (__OFADD__(v10, a4))
  {
    goto LABEL_137;
  }

  if (v42 >= v41)
  {
    v42 = v6[1];
  }

  if (v42 < v10)
  {
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  if (v8 == v42)
  {
    goto LABEL_54;
  }

  v115 = v9;
  v117 = v10;
  v128 = *v6;
  v4 = *v6 + 8 * v8 - 8;
  v43 = v10 - v8;
  v120 = v42;
LABEL_43:
  v123 = v4;
  v125 = v8;
  v44 = *(v128 + 8 * v8);
  v121 = v43;
  v45 = v43;
  while (1)
  {
    v46 = *v4;
    v47 = v44;
    v48 = v46;
    v49 = [v47 creationDate];
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v51 = v50;

    v52 = [v48 creationDate];
    v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v55 = v54;

    if (v53 == v5 && v55 == v51)
    {

LABEL_42:
      v8 = v125 + 1;
      v4 = v123 + 8;
      v43 = v121 - 1;
      if ((v125 + 1) == v120)
      {
        v8 = v120;
        v6 = a3;
        v9 = v115;
        v10 = v117;
        goto LABEL_54;
      }

      goto LABEL_43;
    }

    v57 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v57 & 1) == 0)
    {
      goto LABEL_42;
    }

    if (!v128)
    {
      break;
    }

    v58 = *v4;
    v44 = *(v4 + 8);
    *v4 = v44;
    *(v4 + 8) = v58;
    v4 -= 8;
    if (__CFADD__(v45++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
}

uint64_t sub_1000390F8(void **__dst, void **__src, char *a3, void **a4)
{
  v4 = a3;
  v5 = __dst;
  v6 = __src - __dst;
  v7 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v7 = __src - __dst;
  }

  v8 = v7 >> 3;
  v9 = a3 - __src;
  v10 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v10 = a3 - __src;
  }

  v11 = v10 >> 3;
  if (v8 >= v10 >> 3)
  {
    v5 = __src;
    if (a4 != __src || &__src[v11] <= a4)
    {
      v30 = a4;
      memmove(a4, __src, 8 * v11);
      a4 = v30;
    }

    v55 = &a4[v11];
    v13 = a4;
    if (v9 >= 8 && v5 > __dst)
    {
      v50 = a4;
LABEL_31:
      v54 = v5;
      v31 = v5 - 1;
      v32 = v4;
      v33 = v55;
      v52 = v31;
      do
      {
        v34 = *--v33;
        v35 = *v31;
        v36 = v34;
        v37 = v35;
        v38 = [v36 creationDate];
        v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v41 = v40;

        v42 = [v37 creationDate];
        v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v45 = v44;

        if (v43 == v39 && v45 == v41)
        {

          v4 = v32 - 8;
        }

        else
        {
          v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v4 = v32 - 8;
          if (v47)
          {
            v13 = v50;
            if (v32 != v54)
            {
              *v4 = *v52;
            }

            if (v55 <= v50 || (v5 = v52, v52 <= __dst))
            {
              v5 = v52;
              goto LABEL_48;
            }

            goto LABEL_31;
          }
        }

        v13 = v50;
        v31 = v52;
        if (v55 != v32)
        {
          *v4 = *v33;
        }

        v55 = v33;
        v32 = v4;
      }

      while (v33 > v50);
      v55 = v33;
      v5 = v54;
    }
  }

  else
  {
    v13 = a4;
    if (a4 != __dst || &__dst[v8] <= a4)
    {
      memmove(a4, __dst, 8 * v8);
    }

    v55 = &v13[v8];
    if (v6 >= 8 && __src < v4)
    {
      v14 = __src;
      v51 = v4;
      while (1)
      {
        v53 = v14;
        v15 = *v13;
        v16 = *v14;
        v17 = v15;
        v18 = [v16 creationDate];
        v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v21 = v20;

        v22 = [v17 creationDate];
        v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v25 = v24;

        v26 = v23 == v19 && v25 == v21;
        if (v26)
        {
          break;
        }

        v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v27 & 1) == 0)
        {
          goto LABEL_20;
        }

        v28 = v53;
        v14 = v53 + 1;
        v29 = v51;
        if (v5 != v53)
        {
          goto LABEL_21;
        }

LABEL_22:
        ++v5;
        if (v13 >= v55 || v14 >= v29)
        {
          goto LABEL_48;
        }
      }

LABEL_20:
      v28 = v13;
      v26 = v5 == v13++;
      v14 = v53;
      v29 = v51;
      if (v26)
      {
        goto LABEL_22;
      }

LABEL_21:
      *v5 = *v28;
      goto LABEL_22;
    }
  }

LABEL_48:
  if (v5 != v13 || v5 >= (v13 + ((v55 - v13 + (v55 - v13 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v5, v13, 8 * (v55 - v13));
  }

  return 1;
}

uint64_t sub_1000394F8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100033388(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_100033658(v16, a4 & 1);
      v11 = sub_100033388(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_100033A44();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

void *sub_100039674(unint64_t a1)
{
  v9 = &_swiftEmptyDictionarySingleton;
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v8 = v4;
      sub_100036320(&v9, &v8);

      if (v6 == i)
      {
        return v9;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

  return &_swiftEmptyDictionarySingleton;
}

uint64_t sub_100039794(uint64_t a1, uint64_t a2)
{
  sub_100037440(0, &qword_1000DB7B0, &type metadata accessor for _ConditionalContent);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100039814(uint64_t a1)
{
  sub_100037440(0, &qword_1000DB7B0, &type metadata accessor for _ConditionalContent);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100039898()
{
  result = qword_1000DB890;
  if (!qword_1000DB890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DB890);
  }

  return result;
}

void sub_100039900(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_10003997C(uint64_t a1)
{
  if (!qword_1000DB898)
  {
    sub_100039A2C(255, &qword_1000DB8A0, sub_100039A90, &type metadata accessor for TupleView);
    sub_100039DF8();
    v1 = type metadata accessor for List();
    if (!v2)
    {
      atomic_store(v1, &qword_1000DB898);
    }
  }
}

void sub_100039A2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_100039A90(uint64_t a1)
{
  if (!qword_1000DB8A8)
  {
    sub_100039B38(255);
    sub_100039C0C(255);
    sub_100039D04(255, &qword_1000DB8E0, sub_100039D68);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1000DB8A8);
    }
  }
}

void sub_100039B38(uint64_t a1)
{
  if (!qword_1000DB8B0)
  {
    sub_1000368FC(255, &qword_1000DB8B8, &qword_1000DB8C0, &type metadata for TitleSpacerDetailCell);
    v1 = type metadata accessor for Section();
    if (!v2)
    {
      atomic_store(v1, &qword_1000DB8B0);
    }
  }
}

void sub_100039BB8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_100039C0C(uint64_t a1)
{
  if (!qword_1000DB8C8)
  {
    sub_100039A2C(255, &qword_1000DB8D0, sub_100039CA4, &type metadata accessor for TupleView);
    v1 = type metadata accessor for Section();
    if (!v2)
    {
      atomic_store(v1, &qword_1000DB8C8);
    }
  }
}

void sub_100039CA4()
{
  if (!qword_1000DB8D8)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1000DB8D8);
    }
  }
}

void sub_100039D04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Section();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100039D68(uint64_t a1)
{
  if (!qword_1000DB8E8)
  {
    sub_100039A2C(255, &qword_1000DB8D0, sub_100039CA4, &type metadata accessor for TupleView);
    v1 = type metadata accessor for _ConditionalContent();
    if (!v2)
    {
      atomic_store(v1, &qword_1000DB8E8);
    }
  }
}

unint64_t sub_100039DF8()
{
  result = qword_1000DB8F0;
  if (!qword_1000DB8F0)
  {
    sub_100039A2C(255, &qword_1000DB8A0, sub_100039A90, &type metadata accessor for TupleView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DB8F0);
  }

  return result;
}

uint64_t sub_100039E88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100039ED8()
{
  result = qword_1000DB900;
  if (!qword_1000DB900)
  {
    sub_1000368FC(255, &qword_1000DB8B8, &qword_1000DB8C0, &type metadata for TitleSpacerDetailCell);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DB900);
  }

  return result;
}

unint64_t sub_100039F50()
{
  result = qword_1000DB908;
  if (!qword_1000DB908)
  {
    sub_100039A2C(255, &qword_1000DB8D0, sub_100039CA4, &type metadata accessor for TupleView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DB908);
  }

  return result;
}

unint64_t sub_100039FE0()
{
  result = qword_1000DB910;
  if (!qword_1000DB910)
  {
    sub_100039D68(255);
    sub_100039F50();
    sub_10003A060();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DB910);
  }

  return result;
}

unint64_t sub_10003A060()
{
  result = qword_1000DB918;
  if (!qword_1000DB918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DB918);
  }

  return result;
}

void sub_10003A0E8(void *a1)
{
  v8.receiver = v1;
  v8.super_class = type metadata accessor for AppDelegate();
  objc_msgSendSuper2(&v8, "buildMenuWithBuilder:", a1);
  sub_100003DDC(0, &qword_1000DB920, UIMenuSystem_ptr);
  v3 = [a1 system];
  v4 = [objc_opt_self() mainSystem];
  v5 = static NSObject.== infix(_:_:)();

  if (v5)
  {
    [a1 removeMenuForIdentifier:UIMenuFormat];
    v7[4] = sub_10003A410;
    v7[5] = 0;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 1107296256;
    v7[2] = sub_10003A414;
    v7[3] = &unk_1000CDBE0;
    v6 = _Block_copy(v7);

    [a1 replaceChildrenOfMenuForIdentifier:UIMenuStandardEdit fromChildrenBlock:v6];
    _Block_release(v6);
    if (swift_isEscapingClosureAtFileLocation())
    {
      __break(1u);
    }
  }
}

void *sub_10003A298(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      objc_opt_self();
      v7 = swift_dynamicCastObjCClass();
      if (v7 && (v8 = v7, v9 = v5, [v8 action], LOBYTE(v8) = static Selector.== infix(_:_:)(), v9, (v8 & 1) != 0))
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      if (v6 == i)
      {
        return _swiftEmptyArrayStorage;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  return _swiftEmptyArrayStorage;
}

Class sub_10003A414(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_100003DDC(0, &qword_1000DB928, UIMenuElement_ptr);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v2();

  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

uint64_t type metadata accessor for AuxiliaryProfilesDataSource(uint64_t a1)
{
  result = qword_1000DB938;
  if (!qword_1000DB938)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10003A5B0(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + qword_1000DB930) = a1;
  sub_100015EA0(0, &qword_1000DABF8, &type metadata accessor for ArrayDataSourceSection, &type metadata accessor for _ContiguousArrayStorage);
  type metadata accessor for ArrayDataSourceSection();
  *(swift_allocObject() + 16) = xmmword_1000AE100;
  v8 = a1;
  _typeName(_:qualified:)();
  ArrayDataSourceSection.init(title:arrangedItems:identifier:)();
  v16[0] = 0;
  v16[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(16);

  strcpy(v16, "MutableArray<");
  HIWORD(v16[1]) = -4864;
  UUID.init()();
  v9 = UUID.uuidString.getter();
  v11 = v10;
  (*(v5 + 8))(v7, v4);
  v12._countAndFlagsBits = v9;
  v12._object = v11;
  String.append(_:)(v12);

  v13._countAndFlagsBits = 62;
  v13._object = 0xE100000000000000;
  String.append(_:)(v13);
  v14 = MutableArrayDataSource.init(arrangedSections:identifier:)();

  sub_10008AB04();

  return v14;
}

void sub_10003A854(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_10003A8B8(uint64_t a1, void *a2)
{
  v3 = [objc_allocWithZone(HKNavigationController) initWithRootViewController:a1];
  [a2 presentViewController:v3 animated:1 completion:0];
}

uint64_t sub_10003A974()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10003A9CC@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for UIListContentConfiguration();
  __chkstk_darwin(v2 - 8);
  static UIListContentConfiguration.header()();
  v3 = type metadata accessor for HeaderItem();
  swift_allocObject();
  v4 = HeaderItem.init(title:buttonText:buttonWasTapped:configuration:automationIdentifier:)();
  a1[3] = v3;
  result = sub_10003AD8C(&qword_1000DAE78, &type metadata accessor for HeaderItem, &protocol conformance descriptor for HeaderItem);
  a1[4] = result;
  *a1 = v4;
  return result;
}

id sub_10003ACAC(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for InternalProfileCharacteristicsViewController();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_10003AD08(uint64_t a1)
{
  *(a1 + 8) = sub_10003AD8C(&qword_1000DB9B0, type metadata accessor for AuxiliaryProfilesDataSource, &unk_1000AEC90);
  result = sub_10003AD8C(&qword_1000DB9B8, type metadata accessor for AuxiliaryProfilesDataSource, &unk_1000AECC0);
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_10003AD8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10003ADD4(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v8 = *(v21 - 8);
  __chkstk_darwin(v21);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for InternalProfileCharacteristicsViewController();
  v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithHealthStore:a1 inEditMode:1];
  [v11 setAccessType:2];
  v12 = [v11 navigationItem];
  sub_100003DDC(0, &qword_1000DB9C8, UIBarButtonItem_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v12 setLeftBarButtonItems:isa];

  sub_100003DDC(0, &qword_1000DBAE0, OS_dispatch_queue_ptr);
  v14 = static OS_dispatch_queue.main.getter();
  v15 = swift_allocObject();
  *(v15 + 16) = v11;
  *(v15 + 24) = a2;
  aBlock[4] = sub_10003B7FC;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100008310;
  aBlock[3] = &unk_1000CDCC8;
  v16 = _Block_copy(aBlock);
  v17 = v11;
  v18 = a2;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10003AD8C(&qword_1000DAD40, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100015EA0(0, &qword_1000DBAF0, &type metadata accessor for DispatchWorkItemFlags, &type metadata accessor for Array);
  sub_100028B74();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);

  (*(v5 + 8))(v7, v4);
  return (*(v8 + 8))(v10, v21);
}

uint64_t sub_10003B168(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  v44 = v4;
  v45 = v5;
  __chkstk_darwin(v4);
  v41 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v42 = *(v7 - 8);
  v43 = v7;
  __chkstk_darwin(v7);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v38 - v15;
  type metadata accessor for MedicalIDCache();
  v40 = static MedicalIDCache.globalCache(for:)();
  v17 = dispatch thunk of MedicalIDCache.medicalIDDataResult.getter();
  v18 = v17;
  if (v17 >= 3)
  {
    static Logger.view.getter();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Found cached Medical ID for MedicalIDViewController", v24, 2u);
    }

    (*(v11 + 8))(v16, v10);
  }

  else
  {
    sub_10003B7E4(v17);
    static Logger.view.getter();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "No Medical ID found for MedicalIDViewController", v21, 2u);
    }

    (*(v11 + 8))(v14, v10);
    v18 = 0;
  }

  v38 = v18;
  v25 = [objc_opt_self() standardConfiguration];
  [v25 setIsDeletionAvailable:1];
  [v25 setSuggestHealthData:1];
  v26 = [objc_allocWithZone(MIUIMedicalIDViewController) initWithHealthStore:a1 medicalIDData:v18 displayConfiguration:v25];
  sub_100003DDC(0, &qword_1000DB9C0, UIAction_ptr);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v27 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  sub_100003DDC(0, &qword_1000DB9C8, UIBarButtonItem_ptr);
  v39 = v27;
  v47.value.super.super.isa = v27;
  v47.is_nil = 0;
  isa = UIBarButtonItem.init(systemItem:primaryAction:menu:)(UIBarButtonSystemItemDone, v47, v48).super.super.isa;
  v29 = [v26 navigationItem];
  [v29 setRightBarButtonItem:isa];

  sub_100003DDC(0, &qword_1000DBAE0, OS_dispatch_queue_ptr);
  v30 = static OS_dispatch_queue.main.getter();
  v31 = swift_allocObject();
  *(v31 + 16) = v26;
  *(v31 + 24) = a2;
  aBlock[4] = sub_10003B81C;
  aBlock[5] = v31;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100008310;
  aBlock[3] = &unk_1000CDC78;
  v32 = _Block_copy(aBlock);
  v33 = v26;
  v34 = a2;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10003AD8C(&qword_1000DAD40, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100015EA0(0, &qword_1000DBAF0, &type metadata accessor for DispatchWorkItemFlags, &type metadata accessor for Array);
  sub_100028B74();
  v35 = v41;
  v36 = v44;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v32);

  (*(v45 + 8))(v35, v36);
  return (*(v42 + 8))(v9, v43);
}

void sub_10003B7E4(id a1)
{
  if (a1 >= 3)
  {
  }
}

uint64_t sub_10003B824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CompoundSectionedDataSource();
  v14 = method lookup function for CompoundSectionedDataSource();
  v14(a1, a2, a3, a4);
  if (PrimarySecondaryDataSource.identifier.getter() == a1 && v15 == a2)
  {

LABEL_8:
    v19 = sub_100014D3C();
    static Logger.pinnedContent.getter();
    swift_bridgeObjectRetain_n();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v50 = v21;
      v52 = v20;
      v22 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v54 = v49;
      *v22 = 136315650;
      v23 = _typeName(_:qualified:)();
      v25 = sub_1000036D0(v23, v24, &v54);

      *(v22 + 4) = v25;
      *(v22 + 12) = 2048;
      if (v19 >> 62)
      {
        v26 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v26 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v22 + 14) = v26;

      *(v22 + 22) = 2080;
      if (v19 >> 62)
      {
        v27 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v27 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v51 = v22;
      if (v27)
      {
        v45 = v13;
        v46 = v11;
        v47 = v10;
        v48 = v5;
        v53 = _swiftEmptyArrayStorage;
        result = sub_10007C57C(0, v27 & ~(v27 >> 63), 0);
        if (v27 < 0)
        {
          __break(1u);
          return result;
        }

        v28 = 0;
        v29 = v53;
        do
        {
          if ((v19 & 0xC000000000000001) != 0)
          {
            v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v30 = *(v19 + 8 * v28 + 32);
          }

          v31 = v30;
          v32 = [v30 uniqueIdentifier];
          v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v35 = v34;

          v53 = v29;
          v37 = v29[2];
          v36 = v29[3];
          if (v37 >= v36 >> 1)
          {
            sub_10007C57C((v36 > 1), v37 + 1, 1);
            v29 = v53;
          }

          ++v28;
          v29[2] = v37 + 1;
          v38 = &v29[2 * v37];
          v38[4] = v33;
          v38[5] = v35;
        }

        while (v27 != v28);
        v10 = v47;
        v13 = v45;
        v11 = v46;
      }

      v39 = Array.description.getter();
      v41 = v40;

      v42 = sub_1000036D0(v39, v41, &v54);

      v44 = v51;
      v43 = v52;
      *(v51 + 24) = v42;
      _os_log_impl(&_mh_execute_header, v43, v50, "[%s]: Received updates to pinned content, sending update with %ld items: %s", v44, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    (*(v11 + 8))(v13, v10);
    v54 = v19;

    CurrentValueSubject.send(_:)();
  }

  v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v17)
  {
    goto LABEL_8;
  }

  return result;
}

uint64_t sub_10003BCB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_10002ACA0();
  v7 = v6;
  v8 = *(v6 - 8);
  __chkstk_darwin(v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  static NSDiffableDataSourceSnapshot._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10003B824(v11, v13, v10, a5);

  return (*(v8 + 8))(v10, v7);
}

void sub_10003BDEC(void *a1, uint64_t a2, uint64_t a3)
{
  sub_10000ACE8(a2, v12);
  sub_10003C16C();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1000AE100;
  *(v5 + 32) = static SourceProfile.primary.getter();
  sub_10000ACE8(a3, &v11);
  v6 = objc_allocWithZone(type metadata accessor for EditFavoritesCollectionViewController());
  v7 = EditFavoritesCollectionViewController.init(pinnedContentManager:sourceProfiles:healthExperienceStore:)();
  v8 = [objc_allocWithZone(HKNavigationController) initWithRootViewController:v7];
  v9 = [a1 viewController];
  if (v9)
  {
    v10 = v9;
    [v9 presentViewController:v8 animated:1 completion:0];
  }
}

void sub_10003BEF0(void *a1, void *a2, uint64_t a3)
{
  sub_10000ACE8(a3, v11);
  v5 = objc_allocWithZone(type metadata accessor for AllHealthDataViewController(0));
  v6 = qword_1000E3F58;
  v7 = enum case for Presentation.showAllData(_:);
  v8 = type metadata accessor for Presentation();
  (*(*(v8 - 8) + 104))(&v5[v6], v7, v8);
  *&v5[qword_1000DDE98] = a2;
  sub_10000ACE8(v11, &v5[qword_1000DDEA0]);
  sub_10000ACE8(v11, v10);
  type metadata accessor for AllHealthDataDataSource(0);
  swift_allocObject();
  sub_100030B28(a2, v10);
  v9 = CompoundDataSourceCollectionViewController.init(dataSource:)();
  sub_100003B90(v11);
  [a1 showViewController:v9 sender:a1];
}

uint64_t sub_10003C058()
{
}

uint64_t sub_10003C0B8()
{
  CompoundSectionedDataSource.deinit();

  return swift_deallocClassInstance();
}

void sub_10003C16C()
{
  if (!qword_1000DBA98)
  {
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DBA98);
    }
  }
}

unint64_t sub_10003C1BC(char a1)
{
  result = 0xD000000000000016;
  switch(a1)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 6:
    case 11:
    case 30:
      result = 0xD00000000000001FLL;
      break;
    case 5:
    case 32:
      result = 0xD000000000000023;
      break;
    case 7:
    case 17:
    case 40:
      result = 0xD000000000000015;
      break;
    case 8:
    case 12:
    case 25:
    case 39:
      result = 0xD000000000000014;
      break;
    case 9:
    case 10:
    case 13:
    case 15:
    case 27:
      result = 0xD000000000000018;
      break;
    case 14:
    case 21:
    case 37:
      result = 0xD000000000000017;
      break;
    case 18:
    case 23:
      result = 0xD00000000000001BLL;
      break;
    case 19:
    case 26:
      result = 0xD000000000000012;
      break;
    case 20:
      result = 0xD000000000000019;
      break;
    case 24:
    case 29:
      result = 0xD000000000000021;
      break;
    case 28:
    case 31:
      result = 0xD00000000000001DLL;
      break;
    case 33:
      result = 0xD00000000000001ELL;
      break;
    case 34:
    case 38:
      result = 0xD00000000000001CLL;
      break;
    case 35:
    case 42:
      result = 0xD000000000000022;
      break;
    case 41:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

void sub_10003C4B4(void *a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  LODWORD(v80) = a4;
  v76 = a3;
  v87 = a2;
  v95 = type metadata accessor for DispatchWorkItemFlags();
  v94 = *(v95 - 8);
  __chkstk_darwin(v95);
  v92 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for DispatchQoS();
  v91 = *(v93 - 8);
  __chkstk_darwin(v93);
  v90 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for DispatchTime();
  v89 = *(v97 - 8);
  v9 = __chkstk_darwin(v97);
  v86 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v88 = &v71 - v11;
  v85 = type metadata accessor for DeepLinkActivityType();
  v84 = *(v85 - 8);
  __chkstk_darwin(v85);
  v96 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for Presentation();
  v78 = *(v79 - 8);
  __chkstk_darwin(v79);
  v14 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100042B2C(0, &qword_1000DBB80, &type metadata accessor for Presentation, &type metadata accessor for Optional);
  __chkstk_darwin(v15 - 8);
  v17 = &v71 - v16;
  v75 = type metadata accessor for DataTypeDetailConfiguration.Context();
  v74 = *(v75 - 8);
  __chkstk_darwin(v75);
  v19 = &v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for HKTDataTypeDetailFactory();
  v72 = *(v73 - 8);
  __chkstk_darwin(v73);
  v21 = &v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = [objc_allocWithZone(HKHealthStore) init];
  v23 = type metadata accessor for PinnedContentManager();
  v24 = v22;
  v25 = PinnedContentManager.__allocating_init(healthStore:domain:)();
  sub_100069650(&aBlock);
  if (!v101)
  {
    sub_100042AB0(&aBlock, &qword_1000DBAB0, &qword_1000DBAB8, &protocol descriptor for RootViewControllerProviding);
    sub_1000687A4(_swiftEmptyArrayStorage);
    sub_10003C1BC(a5);
    v33 = String._bridgeToObjectiveC()();

    v34 = String._bridgeToObjectiveC()();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [a1 failedTest:v33 withFailure:v34 withResults:isa];

    return;
  }

  v83 = v24;
  v82 = a1;
  sub_100014D24(&aBlock, &v105);
  sub_10000BFFC(&v105, v106);
  UIViewController.resolvedHealthExperienceStore.getter();
  v26 = 0;
  v81 = v25;
  v77 = a5;
  if (a5 <= 0x13u)
  {
    v31 = v82;
    v32 = v96;
    if (a5 == 7)
    {
      sub_10000ACE8(&v104, &aBlock);
      v44 = objc_allocWithZone(type metadata accessor for AllHealthDataViewController(0));
      (*(v78 + 104))(&v44[qword_1000E3F58], enum case for Presentation.showAllData(_:), v79);
      v45 = v83;
      *&v44[qword_1000DDE98] = v83;
      sub_10000ACE8(&aBlock, &v44[qword_1000DDEA0]);
      sub_10000ACE8(&aBlock, v98);
      type metadata accessor for AllHealthDataDataSource(0);
      swift_allocObject();
      sub_100030B28(v45, v98);
      v26 = CompoundDataSourceCollectionViewController.init(dataSource:)();
      sub_100003B90(&aBlock);
      goto LABEL_17;
    }

    if (a5 == 18)
    {
      sub_100042B2C(0, &qword_1000DBAA8, &type metadata accessor for ContentKind, &type metadata accessor for _ContiguousArrayStorage);
      v36 = type metadata accessor for ContentKind();
      v37 = *(v36 - 8);
      v38 = (*(v37 + 80) + 32) & ~*(v37 + 80);
      v39 = swift_allocObject();
      *(v39 + 16) = xmmword_1000AE100;
      (*(v37 + 104))(v39 + v38, enum case for ContentKind.highlight(_:), v36);
      v40 = objc_allocWithZone(type metadata accessor for InternalFeedItemListViewController());
      v41 = InternalFeedItemListViewController.init(contentKinds:)();
LABEL_15:
      v26 = v41;
LABEL_17:
      v46 = v26;
    }
  }

  else
  {
    if (a5 - 20 < 3)
    {
      if ((v80 & 1) != 0 || (v27 = [objc_opt_self() dataTypeWithCode:v76], v28 = v83, !v27))
      {
        v26 = 0;
      }

      else
      {
        v29 = v27;
        HKTDataTypeDetailFactory.init()();
        sub_10000ACE8(&v104, &aBlock);
        v30 = [v28 profileIdentifier];
        (*(v78 + 56))(v17, 1, 1, v79);
        static DataTypeDetailMode.defaultMode(for:presentation:)();

        sub_100043454(v17);
        v98[3] = v23;
        v98[4] = &protocol witness table for PinnedContentManager;
        v98[0] = v81;

        DataTypeDetailConfiguration.Context.init(healthExperienceStore:healthStore:mode:pinnedContentManager:chartContext:restorationUserActivity:)();
        v26 = HKTDataTypeDetailFactory.makeViewController(hkType:context:)();

        (*(v74 + 8))(v19, v75);
        (*(v72 + 8))(v21, v73);
        v70 = v26;
      }

      v31 = v82;
      v32 = v96;
      goto LABEL_18;
    }

    v31 = v82;
    v32 = v96;
    if (a5 == 41)
    {
      sub_10000ACE8(&v104, &aBlock);
      (*(v78 + 104))(v14, enum case for Presentation.summaryFeed(_:), v79);
      v42 = objc_allocWithZone(type metadata accessor for AllTrendsViewController());
      v43 = v83;
      v41 = AllTrendsViewController.init(healthStore:healthExperienceStore:additionalPredicates:presentation:customProvenance:)();
      goto LABEL_15;
    }
  }

LABEL_18:
  v47 = v84;
  v48 = v85;
  (*(v84 + 104))(v32, enum case for DeepLinkActivityType.summary(_:), v85);
  v49 = &unk_1000AD000;
  if (v26)
  {
    v50 = objc_opt_self();
    v80 = v26;
    v51 = v26;
    [v50 begin];
    sub_10000BFFC(&v105, v106);
    dispatch thunk of ViewControllerRouterProtocol.prepareForAppActivity(_:)();
    [v50 commit];
    v52 = [*sub_10000BFFC(&v105 v106)];
    if (v52)
    {
      v53 = v52;
      objc_opt_self();
      v54 = swift_dynamicCastObjCClass();
      if (v54)
      {
        v55 = v54;
        [v50 begin];
        v56 = swift_allocObject();
        v56[2] = 0;
        v56[3] = 0;
        v56[4] = v51;
        v102 = sub_100043448;
        v103 = v56;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        v100 = sub_100008310;
        v101 = &unk_1000CE320;
        v57 = _Block_copy(&aBlock);
        v58 = v51;

        [v50 setCompletionBlock:v57];
        _Block_release(v57);
        v59 = v58;
        v31 = v82;
        [v55 pushViewController:v59 animated:0];
        [v50 commit];
      }
    }

    else
    {
      v53 = v51;
    }

    v32 = v96;
    v26 = v80;
    v49 = &unk_1000AD000;
  }

  (*(v47 + 8))(v32, v48);
  sub_100003DDC(0, &qword_1000DBAE0, OS_dispatch_queue_ptr);
  v60 = static OS_dispatch_queue.main.getter();
  v61 = v86;
  static DispatchTime.now()();
  v62 = v88;
  + infix(_:_:)();
  v96 = *(v89 + 8);
  (v96)(v61, v97);
  v63 = swift_allocObject();
  *(v63 + 16) = v77;
  *(v63 + 24) = v87;
  *(v63 + 32) = v26;
  *(v63 + 40) = v31;
  v102 = sub_100043438;
  v103 = v63;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = v49[497];
  v100 = sub_100008310;
  v101 = &unk_1000CE2D0;
  v64 = _Block_copy(&aBlock);

  v65 = v31;
  v66 = v90;
  static DispatchQoS.unspecified.getter();
  v98[0] = _swiftEmptyArrayStorage;
  sub_100007C74(&qword_1000DAD40, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100042B2C(0, &qword_1000DBAF0, &type metadata accessor for DispatchWorkItemFlags, &type metadata accessor for Array);
  sub_100028B74();
  v67 = v92;
  v68 = v26;
  v69 = v95;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v64);

  (*(v94 + 8))(v67, v69);
  (*(v91 + 8))(v66, v93);
  (v96)(v62, v97);
  sub_100003B90(&v104);

  sub_100003B90(&v105);
}

uint64_t sub_10003D3E4(void *a1, char a2)
{
  v4 = type metadata accessor for DarwinNotificationPublisher.DarwinNotificationName();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.general.getter();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v20[0] = v5;
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Starting foreground generation test", v14, 2u);
    v5 = v20[0];
  }

  (*(v9 + 8))(v11, v8);
  sub_10003C1BC(a2);
  v15 = String._bridgeToObjectiveC()();

  [a1 startedTest:v15];

  type metadata accessor for DarwinNotificationPublisher();
  (*(v5 + 104))(v7, enum case for DarwinNotificationPublisher.DarwinNotificationName.userInteractiveFeedItemGenerationIdleOrComplete(_:), v4);
  v20[1] = DarwinNotificationPublisher.__allocating_init(name:queue:)();
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1000434E0;
  *(v17 + 24) = v16;
  sub_100007C74(&qword_1000DBB88, &type metadata accessor for DarwinNotificationPublisher, &protocol conformance descriptor for DarwinNotificationPublisher);
  v18 = a1;
  Publisher.retainingSink(receiveValue:)();
}

void sub_10003D714(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v57 = a2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v55 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for DispatchQoS();
  v54 = *(v56 - 8);
  __chkstk_darwin(v56);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchTime();
  v58 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v49 - v15;
  sub_100069650(&aBlock);
  if (!*(&v60 + 1))
  {
    sub_100042AB0(&aBlock, &qword_1000DBAB0, &qword_1000DBAB8, &protocol descriptor for RootViewControllerProviding);
    sub_1000687A4(_swiftEmptyArrayStorage);
    sub_10003C1BC(v4);
    v27 = String._bridgeToObjectiveC()();

    v28 = String._bridgeToObjectiveC()();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [a1 failedTest:v27 withFailure:v28 withResults:isa];

    return;
  }

  v52 = v7;
  v53 = v6;
  sub_100014D24(&aBlock, v66);
  sub_10000BFFC(v66, v67);
  dispatch thunk of ViewControllerRouterProtocol.prepareForAppActivity(_:)();
  v17 = [*sub_10000BFFC(v66 v67)];
  if (!v17)
  {
    goto LABEL_20;
  }

  v18 = v17;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

LABEL_20:
    *&aBlock = 0;
    *(&aBlock + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(43);

    *&aBlock = 0xD000000000000029;
    *(&aBlock + 1) = 0x80000001000A6760;
    v65[0] = [*sub_10000BFFC(v66 v67)];
    sub_100042A54(0, &unk_1000DBAC0, &unk_1000DC3C0, UIViewController_ptr, sub_100003DDC);
    v34._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v34);

    sub_1000687A4(_swiftEmptyArrayStorage);
    sub_10003C1BC(v4);
    v31 = String._bridgeToObjectiveC()();

    v32 = String._bridgeToObjectiveC()();

    v33.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [a1 failedTest:v31 withFailure:v32 withResults:v33.super.isa];
    goto LABEL_21;
  }

  v19 = UINavigationController.rootViewController()();
  if (v19 && (v64 = v19, sub_100003DDC(0, &unk_1000DC3C0, UIViewController_ptr), sub_100009630(0, &qword_1000DBAD8, &protocol descriptor for PPTScrollViewProviding), (swift_dynamicCast() & 1) != 0))
  {
    if (*(&v60 + 1))
    {
      sub_100014D24(&aBlock, v65);
      sub_10000BFFC(v65, v65[3]);
      v20 = dispatch thunk of PPTScrollViewProviding.scrollViewToTest()();
      if (v20)
      {
        v21 = v20;
        strcpy(&v63, "feedVariation");
        HIWORD(v63._object) = -4864;
        AnyHashable.init<A>(_:)();
        v22 = v57;
        if (*(v57 + 16) && (v23 = sub_100033344(&aBlock), (v24 & 1) != 0))
        {
          sub_100003B34(*(v22 + 56) + 32 * v23, &v64);
          sub_10002E508(&aBlock);
          if (swift_dynamicCast())
          {
            v25 = sub_100084B18(v63);
            if (v25 <= 2)
            {
              v45 = &off_1000CC818;
              if (v25 != 1)
              {
                v45 = &off_1000CC840;
              }

              if (v25)
              {
                v26 = v45;
              }

              else
              {
                v26 = &off_1000CC7E8;
              }

              goto LABEL_35;
            }

            if (v25 <= 4)
            {
              if (v25 == 3)
              {
                v26 = &off_1000CC868;
              }

              else
              {
                v26 = &off_1000CC890;
              }

              goto LABEL_35;
            }

            if (v25 == 5)
            {
              v26 = &off_1000CC8B8;
LABEL_35:
              v46 = sub_100084714(v26);

              v47 = swift_allocObject();
              *(v47 + 16) = v4;
              *(v47 + 24) = v21;
              *(v47 + 32) = v22;
              v48 = v21;

              sub_10006C6C0(v46, sub_100042BDC, v47, v4);

              goto LABEL_27;
            }
          }
        }

        else
        {
          sub_10002E508(&aBlock);
        }

        sub_100003DDC(0, &qword_1000DBAE0, OS_dispatch_queue_ptr);
        v50 = static OS_dispatch_queue.main.getter();
        static DispatchTime.now()();
        + infix(_:_:)();
        v35 = *(v58 + 8);
        v58 += 8;
        v51 = v35;
        v35(v14, v11);
        v36 = swift_allocObject();
        *(v36 + 16) = v4;
        *(v36 + 24) = v21;
        *(v36 + 32) = v22;
        v61 = sub_100042B20;
        v62 = v36;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        *&v60 = sub_100008310;
        *(&v60 + 1) = &unk_1000CDFD8;
        v37 = _Block_copy(&aBlock);
        v38 = v21;

        static DispatchQoS.unspecified.getter();
        v64 = _swiftEmptyArrayStorage;
        sub_100007C74(&qword_1000DAD40, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_100042B2C(0, &qword_1000DBAF0, &type metadata accessor for DispatchWorkItemFlags, &type metadata accessor for Array);
        sub_100028B74();
        v39 = v55;
        v40 = v53;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v41 = v50;
        OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();

        _Block_release(v37);
        (*(v52 + 8))(v39, v40);
        (*(v54 + 8))(v10, v56);
        v51(v16, v11);
      }

      else
      {
        sub_1000687A4(_swiftEmptyArrayStorage);
        sub_10003C1BC(v4);
        v42 = String._bridgeToObjectiveC()();

        v43 = String._bridgeToObjectiveC()();
        v44 = Dictionary._bridgeToObjectiveC()().super.isa;

        [a1 failedTest:v42 withFailure:v43 withResults:v44];
      }

LABEL_27:
      sub_100003B90(v65);
      goto LABEL_22;
    }
  }

  else
  {
    v61 = 0;
    v60 = 0u;
    aBlock = 0u;
  }

  sub_100042AB0(&aBlock, &qword_1000DBAD0, &qword_1000DBAD8, &protocol descriptor for PPTScrollViewProviding);
  *&aBlock = 0;
  *(&aBlock + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(34);

  *&aBlock = 0xD000000000000020;
  *(&aBlock + 1) = 0x80000001000A6790;
  v65[0] = UINavigationController.rootViewController()();
  sub_100042A54(0, &unk_1000DBAC0, &unk_1000DC3C0, UIViewController_ptr, sub_100003DDC);
  v30._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v30);

  sub_1000687A4(_swiftEmptyArrayStorage);
  sub_10003C1BC(v4);
  v31 = String._bridgeToObjectiveC()();

  v32 = String._bridgeToObjectiveC()();

  v33.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [a1 failedTest:v31 withFailure:v32 withResults:v33.super.isa];

LABEL_21:
LABEL_22:
  sub_100003B90(v66);
}

uint64_t sub_10003E2EC(void *a1, uint64_t a2, char a3)
{
  v6 = sub_100041CF4(3u, a2);
  v7 = sub_100041CF4(4u, a2);
  v8 = sub_100041CF4(5u, a2);
  setenv("MEASURE_CHART_STARTUP_TIME", "true", 1);
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = v7;
  *(v9 + 32) = 0;
  *(v9 + 40) = v8;
  *(v9 + 48) = 0;
  *(v9 + 56) = a1;
  *(v9 + 64) = 0xD00000000000001ALL;
  *(v9 + 72) = 0x80000001000A68E0;
  *(v9 + 80) = v6;
  sub_10006D3CC(a1, v6, 0, sub_1000432FC, v9);
}

uint64_t sub_10003E3F0(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_10003C1BC(*a1);
  v5 = v4;
  if (v3 == sub_10003C1BC(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_10003E478()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10003C1BC(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10003E4DC(uint64_t a1)
{
  sub_10003C1BC(*v1);
  String.hash(into:)();
}

Swift::Int sub_10003E530(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  sub_10003C1BC(v2);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10003E590@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100041430(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_10003E5C0@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10003C1BC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10003E5F8(uint64_t a1, uint64_t a2, int a3, void *a4, uint64_t a5)
{
  v28 = a4;
  v29 = a5;
  v27 = a3;
  v26 = a1;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v34 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v32 = *(v9 - 8);
  v33 = v9;
  __chkstk_darwin(v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchTime();
  v31 = v12;
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v26 - v17;
  sub_100003DDC(0, &qword_1000DBAE0, OS_dispatch_queue_ptr);
  v19 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v30 = *(v13 + 8);
  v30(v16, v12);
  v20 = swift_allocObject();
  *(v20 + 16) = v26;
  *(v20 + 24) = a2;
  *(v20 + 32) = v27;
  v22 = v28;
  v21 = v29;
  *(v20 + 40) = v28;
  *(v20 + 48) = v21;
  aBlock[4] = sub_100042BE8;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100008310;
  aBlock[3] = &unk_1000CE050;
  v23 = _Block_copy(aBlock);

  v24 = v22;

  static DispatchQoS.unspecified.getter();
  v35 = _swiftEmptyArrayStorage;
  sub_100007C74(&qword_1000DAD40, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100042B2C(0, &qword_1000DBAF0, &type metadata accessor for DispatchWorkItemFlags, &type metadata accessor for Array);
  sub_100028B74();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v23);

  (*(v34 + 8))(v8, v6);
  (*(v32 + 8))(v11, v33);
  v30(v18, v31);
}

void sub_10003E9F0(void *a1, uint64_t a2, char a3)
{
  v6 = sub_100042C40(6u, a2);
  sub_10003C1BC(a3);
  if (v6)
  {
    v7 = objc_allocWithZone(RPTScrollViewTestParameters);
    v8 = String._bridgeToObjectiveC()();

    v10 = [v7 initWithTestName:v8 scrollView:a1 completionHandler:0];

    [objc_opt_self() runTestWithParameters:v10];
  }

  else
  {
    v10 = String._bridgeToObjectiveC()();

    v9 = sub_100041CF4(0, a2);
    [a1 _performScrollTest:v10 iterations:v9 delta:{sub_100041CF4(1u, a2)}];
  }
}

void sub_10003EB18(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = a1;
  v7 = sub_10006EB68(a2);
  if (!v7)
  {
    goto LABEL_7;
  }

  v8 = v7;
  v9 = [v7 chartController];
  if (!v9)
  {

LABEL_7:
    _StringGuts.grow(_:)(47);
    v12._object = 0x80000001000A67E0;
    v12._countAndFlagsBits = 0xD00000000000002DLL;
    String.append(_:)(v12);
    type metadata accessor for _HKDataTypeCode(0);
    _print_unlocked<A, B>(_:_:)();
    sub_1000687A4(_swiftEmptyArrayStorage);
    sub_10003C1BC(v6);
    v13 = String._bridgeToObjectiveC()();

    v14 = String._bridgeToObjectiveC()();

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [a3 failedTest:v13 withFailure:v14 withResults:isa];

    return;
  }

  v10 = v9;
  [v8 _showAllFilters];
  v11 = [v10 primaryGraphViewController];
  v16 = [v11 graphView];

  sub_100042E7C(a3, v16, v6);
}

uint64_t sub_10003ED1C(void *a1, int a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v38 = a7;
  v39 = a8;
  v31 = a6;
  v34 = a4;
  v35 = a5;
  v33 = a3;
  v32 = a2;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v42 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v40 = *(v12 - 8);
  v41 = v12;
  __chkstk_darwin(v12);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchTime();
  v37 = v15;
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v31 - v20;
  sub_100003DDC(0, &qword_1000DBAE0, OS_dispatch_queue_ptr);
  v22 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v36 = *(v16 + 8);
  v36(v19, v15);
  v23 = swift_allocObject();
  *(v23 + 16) = v32;
  v25 = v33;
  v24 = v34;
  *(v23 + 24) = a1;
  *(v23 + 32) = v25;
  v26 = v35;
  *(v23 + 40) = v24;
  *(v23 + 48) = v26;
  aBlock[4] = v38;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100008310;
  aBlock[3] = v39;
  v27 = _Block_copy(aBlock);
  v28 = a1;
  v29 = v25;

  static DispatchQoS.unspecified.getter();
  v43 = _swiftEmptyArrayStorage;
  sub_100007C74(&qword_1000DAD40, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100042B2C(0, &qword_1000DBAF0, &type metadata accessor for DispatchWorkItemFlags, &type metadata accessor for Array);
  sub_100028B74();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v27);

  (*(v42 + 8))(v11, v9);
  (*(v40 + 8))(v14, v41);
  v36(v21, v37);
}

void sub_10003F104(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_10006EE1C(a2);
  if (v8)
  {
    v9 = v8;
    v10 = [v8 primaryGraphViewController];
    v15 = [v10 graphView];

    sub_10003F2D8(a3, v15, a4, a1);
  }

  else
  {
    _StringGuts.grow(_:)(47);
    v11._object = 0x80000001000A67E0;
    v11._countAndFlagsBits = 0xD00000000000002DLL;
    String.append(_:)(v11);
    type metadata accessor for _HKDataTypeCode(0);
    _print_unlocked<A, B>(_:_:)();
    sub_1000687A4(_swiftEmptyArrayStorage);
    sub_10003C1BC(a1);
    v12 = String._bridgeToObjectiveC()();

    v13 = String._bridgeToObjectiveC()();

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [a3 failedTest:v12 withFailure:v13 withResults:isa];
  }
}

void sub_10003F2D8(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if ((sub_100042C40(6u, a3) & 1) != 0 && [objc_opt_self() isRecapAvailable])
  {

    sub_100042E7C(a1, a2, v4);
  }

  else
  {
    v8 = sub_100041CF4(0, a3);
    v9 = sub_100041CF4(1u, a3);
    v10 = sub_100041CF4(2u, a3);
    sub_10003C1BC(v4);
    v11 = String._bridgeToObjectiveC()();

    [a2 testScrollPerformanceWithTestName:v11 iterations:v8 delta:v9 length:v10];
  }
}

void sub_10003F3FC(uint64_t a1, void *a2, char a3)
{
  sub_1000687A4(_swiftEmptyArrayStorage);
  sub_10003C1BC(a3);
  v5 = String._bridgeToObjectiveC()();

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [a2 finishedTest:v5 extraResults:isa];
}

void sub_10003F4BC(char a1, uint64_t a2, void *a3, void *a4)
{
  v8 = sub_100041CF4(0, a2);
  v9 = sub_100041CF4(1u, a2);
  v10 = sub_100042C40(6u, a2);
  if (a3 && (v11 = v10, (v12 = [a3 contentScrollViewForEdge:1]) != 0))
  {
    isa = v12;
    sub_10003C1BC(a1);
    if (v11)
    {
      v13 = objc_allocWithZone(RPTScrollViewTestParameters);
      isa = isa;
      v14 = String._bridgeToObjectiveC()();

      v15 = [v13 initWithTestName:v14 scrollView:isa completionHandler:0];

      v16 = objc_opt_self();
      v17 = v15;
      [v16 runTestWithParameters:v17];
    }

    else
    {
      v17 = String._bridgeToObjectiveC()();

      [(objc_class *)isa _performScrollTest:v17 iterations:v8 delta:v9];
    }
  }

  else
  {
    sub_1000687A4(_swiftEmptyArrayStorage);
    sub_10003C1BC(a1);
    v18 = String._bridgeToObjectiveC()();

    v17 = String._bridgeToObjectiveC()();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [a4 failedTest:v18 withFailure:v17 withResults:isa];
  }
}

uint64_t sub_10003F6E8(void *a1, void *a2, char a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  *(v10 + 32) = a1;
  *(v10 + 40) = a4;
  *(v10 + 48) = a5;
  sub_10003C1BC(a3);
  v11 = a2;
  v12 = a1;

  v13 = String._bridgeToObjectiveC()();

  [v11 startedTest:v13];

  v14 = swift_allocObject();
  *(v14 + 16) = sub_100043398;
  *(v14 + 24) = v10;
  v17[4] = sub_1000433AC;
  v17[5] = v14;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 1107296256;
  v17[2] = sub_10003FAA8;
  v17[3] = &unk_1000CE280;
  v15 = _Block_copy(v17);

  [v12 reportStartupTime:v15];
  _Block_release(v15);
}

uint64_t sub_10003F87C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5, void *a6, uint64_t a7, uint64_t a8)
{
  sub_100042B2C(0, &qword_1000DBB70, sub_1000433D4, &type metadata accessor for _ContiguousArrayStorage);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000AE110;
  AnyHashable.init<A>(_:)();
  *(inited + 96) = &type metadata for Double;
  *(inited + 72) = a3 * 0.001;
  AnyHashable.init<A>(_:)();
  *(inited + 168) = &type metadata for String;
  *(inited + 144) = 29549;
  *(inited + 152) = 0xE200000000000000;
  sub_1000687A4(inited);
  swift_setDeallocating();
  sub_1000433D4();
  swift_arrayDestroy();
  sub_10003C1BC(a5);
  v13 = String._bridgeToObjectiveC()();

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [a4 finishedTest:v13 waitForCommit:0 extraResults:{isa, 0xD000000000000010, 0x80000001000A6950}];

  [a6 reportStartupTime:0];
  v15 = String.utf8CString.getter();
  setenv((v15 + 32), "", 1);
}

uint64_t sub_10003FAA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v4(v5, v7, a3);
}

void sub_10003FB24(void *a1, int a2, uint64_t a3, char a4, uint64_t a5, char a6, void *a7, uint64_t a8, uint64_t a9, char *a10)
{
  v60 = a7;
  v58 = a5;
  v59 = a2;
  v56 = a10;
  v15 = type metadata accessor for DispatchWorkItemFlags();
  v54 = *(v15 - 8);
  v55 = v15;
  __chkstk_darwin(v15);
  v51 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v52 = *(v17 - 8);
  v53 = v17;
  __chkstk_darwin(v17);
  v19 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for DispatchTime();
  v20 = *(v50 - 8);
  v21 = __chkstk_darwin(v50);
  v23 = &v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v47 - v24;
  v26 = sub_10006EE1C(a1);
  if (v26)
  {
    v56 = v19;
    v57 = v26;
    v27 = v59;
    v28 = v60;
    if ((a4 & 1) != 0 || (a6 & 1) != 0 || a3 == v58)
    {
      sub_10003F6E8(v26, v60, v59, a8, a9);
      v46 = v57;
    }

    else
    {
      [v26 selectTimeScope:a3];
      sub_100003DDC(0, &qword_1000DBAE0, OS_dispatch_queue_ptr);
      v48 = static OS_dispatch_queue.main.getter();
      static DispatchTime.now()();
      + infix(_:_:)();
      v49 = *(v20 + 8);
      v29 = v50;
      v49(v23, v50);
      v30 = swift_allocObject();
      v31 = v28;
      *(v30 + 16) = v28;
      *(v30 + 24) = v27;
      *(v30 + 32) = a8;
      *(v30 + 40) = a9;
      v32 = v58;
      *(v30 + 48) = v57;
      *(v30 + 56) = v32;
      v65 = sub_10004333C;
      v66 = v30;
      aBlock = _NSConcreteStackBlock;
      v62 = 1107296256;
      v63 = sub_100008310;
      v64 = &unk_1000CE208;
      v33 = _Block_copy(&aBlock);
      v34 = v31;

      v35 = v57;
      v36 = v56;
      static DispatchQoS.unspecified.getter();
      v67 = _swiftEmptyArrayStorage;
      sub_100007C74(&qword_1000DAD40, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_100042B2C(0, &qword_1000DBAF0, &type metadata accessor for DispatchWorkItemFlags, &type metadata accessor for Array);
      sub_100028B74();
      v37 = v51;
      v38 = v55;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v39 = v48;
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v33);

      (*(v54 + 8))(v37, v38);
      (*(v52 + 8))(v36, v53);
      v49(v25, v29);
    }
  }

  else
  {
    v40 = String.utf8CString.getter();
    setenv((v40 + 32), "", 1);

    aBlock = 0;
    v62 = 0xE000000000000000;
    _StringGuts.grow(_:)(48);
    v41._object = 0x80000001000A6900;
    v41._countAndFlagsBits = 0xD00000000000002DLL;
    String.append(_:)(v41);
    v67 = v56;
    type metadata accessor for _HKDataTypeCode(0);
    _print_unlocked<A, B>(_:_:)();
    v42._countAndFlagsBits = 46;
    v42._object = 0xE100000000000000;
    String.append(_:)(v42);
    sub_1000687A4(_swiftEmptyArrayStorage);
    sub_10003C1BC(v59);
    v43 = String._bridgeToObjectiveC()();

    v44 = String._bridgeToObjectiveC()();

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v60 failedTest:v43 withFailure:v44 withResults:isa];
  }
}

void sub_10004011C(void *a1, char a2, uint64_t a3, void *a4)
{
  if (!a1)
  {
    sub_1000687A4(_swiftEmptyArrayStorage);
    sub_10003C1BC(a2);
    v8 = String._bridgeToObjectiveC()();

    v9 = String._bridgeToObjectiveC()();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [a4 failedTest:v8 withFailure:v9 withResults:isa];
    goto LABEL_9;
  }

  isa = a1;
  v7 = [(objc_class *)isa tableView];
  if (!v7)
  {
    sub_1000687A4(_swiftEmptyArrayStorage);
    sub_10003C1BC(a2);
    v8 = String._bridgeToObjectiveC()();

    v9 = String._bridgeToObjectiveC()();
    v13 = Dictionary._bridgeToObjectiveC()().super.isa;

    [a4 failedTest:v8 withFailure:v9 withResults:v13];

    isa = v13;
    goto LABEL_9;
  }

  v8 = v7;
  sub_10003C1BC(a2);
  v9 = String._bridgeToObjectiveC()();

  v10 = sub_100041CF4(0, a3);
  v11 = sub_100041CF4(1u, a3);
  [v8 contentSize];
  if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v12 <= -2147483650.0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v12 >= 2147483650.0)
  {
LABEL_14:
    __break(1u);
    return;
  }

  [v8 _performScrollTest:v9 iterations:v10 delta:v11 length:v12];
LABEL_9:
}

void sub_100040398(void *a1, char a2)
{
  sub_10003C1BC(a2);
  v3 = String._bridgeToObjectiveC()();

  [a1 finishedTest:v3 waitForCommit:1 extraResults:0];
}

void sub_10004040C(void *a1, void *a2, char a3, uint64_t a4)
{
  if (a1 && (type metadata accessor for InternalFeedItemListViewController(), (v8 = swift_dynamicCastClass()) != 0))
  {
    v9 = v8;
    v10 = a1;
    v11 = [v9 collectionView];
    if (!v11)
    {
      __break(1u);
      return;
    }

    isa = v11;
    sub_10003E9F0(v11, a4, a3);
  }

  else
  {
    sub_1000687A4(_swiftEmptyArrayStorage);
    sub_10003C1BC(a3);
    v12 = String._bridgeToObjectiveC()();

    v10 = String._bridgeToObjectiveC()();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [a2 failedTest:v12 withFailure:v10 withResults:isa];
  }
}

uint64_t sub_100040560(void *a1, char a2)
{
  v24 = a1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for DispatchQoS();
  v6 = *(v25 - 8);
  __chkstk_darwin(v25);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.general.getter();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v23 = v8;
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Foreground generation idle notification received", v15, 2u);
    v8 = v23;
  }

  (*(v10 + 8))(v12, v9);
  sub_100003DDC(0, &qword_1000DBAE0, OS_dispatch_queue_ptr);
  v16 = static OS_dispatch_queue.main.getter();
  v17 = swift_allocObject();
  v18 = v24;
  *(v17 + 16) = v24;
  *(v17 + 24) = a2;
  aBlock[4] = sub_100043540;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100008310;
  aBlock[3] = &unk_1000CE3C0;
  v19 = _Block_copy(aBlock);
  v20 = v18;
  static DispatchQoS.unspecified.getter();
  v27 = _swiftEmptyArrayStorage;
  sub_100007C74(&qword_1000DAD40, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100042B2C(0, &qword_1000DBAF0, &type metadata accessor for DispatchWorkItemFlags, &type metadata accessor for Array);
  sub_100028B74();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);

  (*(v26 + 8))(v5, v3);
  (*(v6 + 8))(v8, v25);
}

void sub_100040980(void *a1, char a2)
{
  sub_1000687A4(_swiftEmptyArrayStorage);
  sub_10003C1BC(a2);
  v4 = String._bridgeToObjectiveC()();

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [a1 finishedTest:v4 extraResults:isa];
}

unsigned __int8 *sub_100040A40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v70 = a1;
  v71 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_100040FBC(result, v5);
    v40 = v39;

    v5 = v40;
    if ((v40 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v69;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v22 = v7 - 1;
        if (v22)
        {
          v23 = a3 + 48;
          v24 = a3 + 55;
          v25 = a3 + 87;
          if (a3 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v13 = 0;
            v26 = result + 1;
            v15 = 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v18 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_127;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v13 * a3;
              if (v29 != v29)
              {
                goto LABEL_126;
              }

              v30 = v27 + v28;
              v21 = __OFADD__(v29, v30);
              v13 = v29 + v30;
              if (v21)
              {
                goto LABEL_126;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_46:
            v15 = 0;
            v18 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v18 = 0;
        v15 = 1;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v31 = a3 + 48;
        v32 = a3 + 55;
        v33 = a3 + 87;
        if (a3 > 10)
        {
          v31 = 58;
        }

        else
        {
          v33 = 97;
          v32 = 65;
        }

        if (result)
        {
          v34 = 0;
          v15 = 1;
          do
          {
            v35 = *result;
            if (v35 < 0x30 || v35 >= v31)
            {
              if (v35 < 0x41 || v35 >= v32)
              {
                v18 = 0;
                if (v35 < 0x61 || v35 >= v33)
                {
                  goto LABEL_127;
                }

                v36 = -87;
              }

              else
              {
                v36 = -55;
              }
            }

            else
            {
              v36 = -48;
            }

            v37 = v34 * a3;
            if (v37 != v37)
            {
              goto LABEL_126;
            }

            v38 = v35 + v36;
            v21 = __OFADD__(v37, v38);
            v34 = v37 + v38;
            if (v21)
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v15 = 0;
          v18 = v34;
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          v15 = 1;
          while (1)
          {
            v16 = *v14;
            if (v16 < 0x30 || v16 >= v10)
            {
              if (v16 < 0x41 || v16 >= v11)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v12)
                {
                  goto LABEL_127;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v13 * a3;
            if (v19 != v19)
            {
              goto LABEL_126;
            }

            v20 = v16 + v17;
            v21 = __OFSUB__(v19, v20);
            v13 = v19 - v20;
            if (v21)
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v18 = 0;
        v15 = 0;
LABEL_127:

        LOBYTE(v70) = v15;
        return (v18 | (v15 << 32));
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v41 = HIBYTE(v5) & 0xF;
  v70 = v6;
  v71 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v41)
      {
        v43 = 0;
        v61 = a3 + 48;
        v62 = a3 + 55;
        v63 = a3 + 87;
        if (a3 > 10)
        {
          v61 = 58;
        }

        else
        {
          v63 = 97;
          v62 = 65;
        }

        v64 = &v70;
        v15 = 1;
        while (1)
        {
          v65 = *v64;
          if (v65 < 0x30 || v65 >= v61)
          {
            if (v65 < 0x41 || v65 >= v62)
            {
              v18 = 0;
              if (v65 < 0x61 || v65 >= v63)
              {
                goto LABEL_127;
              }

              v66 = -87;
            }

            else
            {
              v66 = -55;
            }
          }

          else
          {
            v66 = -48;
          }

          v67 = v43 * a3;
          if (v67 != v67)
          {
            goto LABEL_126;
          }

          v68 = v65 + v66;
          v21 = __OFADD__(v67, v68);
          v43 = v67 + v68;
          if (v21)
          {
            goto LABEL_126;
          }

          v64 = (v64 + 1);
          if (!--v41)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v43 = 0;
        v44 = a3 + 48;
        v45 = a3 + 55;
        v46 = a3 + 87;
        if (a3 > 10)
        {
          v44 = 58;
        }

        else
        {
          v46 = 97;
          v45 = 65;
        }

        v47 = &v70 + 1;
        v15 = 1;
        while (1)
        {
          v48 = *v47;
          if (v48 < 0x30 || v48 >= v44)
          {
            if (v48 < 0x41 || v48 >= v45)
            {
              v18 = 0;
              if (v48 < 0x61 || v48 >= v46)
              {
                goto LABEL_127;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          v50 = v43 * a3;
          if (v50 != v50)
          {
            goto LABEL_126;
          }

          v51 = v48 + v49;
          v21 = __OFSUB__(v50, v51);
          v43 = v50 - v51;
          if (v21)
          {
            goto LABEL_126;
          }

          ++v47;
          if (!--v42)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v41)
  {
    v52 = v41 - 1;
    if (v52)
    {
      v43 = 0;
      v53 = a3 + 48;
      v54 = a3 + 55;
      v55 = a3 + 87;
      if (a3 > 10)
      {
        v53 = 58;
      }

      else
      {
        v55 = 97;
        v54 = 65;
      }

      v56 = &v70 + 1;
      v15 = 1;
      do
      {
        v57 = *v56;
        if (v57 < 0x30 || v57 >= v53)
        {
          if (v57 < 0x41 || v57 >= v54)
          {
            v18 = 0;
            if (v57 < 0x61 || v57 >= v55)
            {
              goto LABEL_127;
            }

            v58 = -87;
          }

          else
          {
            v58 = -55;
          }
        }

        else
        {
          v58 = -48;
        }

        v59 = v43 * a3;
        if (v59 != v59)
        {
          goto LABEL_126;
        }

        v60 = v57 + v58;
        v21 = __OFADD__(v59, v60);
        v43 = v59 + v60;
        if (v21)
        {
          goto LABEL_126;
        }

        ++v56;
        --v52;
      }

      while (v52);
LABEL_125:
      v15 = 0;
      v18 = v43;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_100040FBC(uint64_t a1, unint64_t a2)
{
  v2 = String.subscript.getter();
  v6 = sub_10004103C(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_10004103C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = Substring.UTF8View.distance(from:to:)();
    if (!v9 || (v10 = v9, v11 = sub_10000379C(v9, 0), v12 = sub_100041194(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = static String._uncheckedFromUTF8(_:)();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t sub_100041194(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1000413B4(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1000413B4(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_1000413B4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unint64_t sub_100041430(uint64_t a1, uint64_t a2)
{
  v2 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v2 >= 0x2B)
  {
    return 43;
  }

  else
  {
    return v2;
  }
}

uint64_t getEnumTagSinglePayload for HealthAppPPT(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD6)
  {
    goto LABEL_17;
  }

  if (a2 + 42 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 42) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 42;
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

      return (*a1 | (v4 << 8)) - 42;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 42;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x2B;
  v8 = v6 - 43;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HealthAppPPT(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 42 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 42) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xD6)
  {
    v4 = 0;
  }

  if (a2 > 0xD5)
  {
    v5 = ((a2 - 214) >> 8) + 1;
    *result = a2 + 42;
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
    *result = a2 + 42;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000415D8()
{
  result = qword_1000DBAA0;
  if (!qword_1000DBAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DBAA0);
  }

  return result;
}

void sub_10004162C(void *a1, uint64_t a2, char a3)
{
  sub_100069650(&aBlock);
  if (v14)
  {
    sub_100014D24(&aBlock, v17);
    sub_10003C1BC(a3);
    v5 = String._bridgeToObjectiveC()();

    [a1 startedTest:v5];

    sub_10000BFFC(v17, v17[3]);
    dispatch thunk of ViewControllerRouterProtocol.prepareForAppActivity(_:)();
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = a3;
    v15 = sub_1000432D0;
    v16 = v6;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v13 = sub_100008310;
    v14 = &unk_1000CE140;
    v7 = _Block_copy(&aBlock);
    v8 = a1;

    [v8 installCACommitCompletionBlock:v7];
    _Block_release(v7);
    sub_100003B90(v17);
  }

  else
  {
    sub_100042AB0(&aBlock, &qword_1000DBAB0, &qword_1000DBAB8, &protocol descriptor for RootViewControllerProviding);
    sub_1000687A4(_swiftEmptyArrayStorage);
    sub_10003C1BC(a3);
    v9 = String._bridgeToObjectiveC()();

    v10 = String._bridgeToObjectiveC()();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [a1 failedTest:v9 withFailure:v10 withResults:isa];
  }
}

void sub_10004186C(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = type metadata accessor for DeepLinkActivityType();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100069650(&aBlock);
  if (!v30)
  {
    sub_100042AB0(&aBlock, &qword_1000DBAB0, &qword_1000DBAB8, &protocol descriptor for RootViewControllerProviding);
    sub_1000687A4(_swiftEmptyArrayStorage);
    sub_10003C1BC(a4);
    v21 = String._bridgeToObjectiveC()();

    v22 = String._bridgeToObjectiveC()();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [a1 failedTest:v21 withFailure:v22 withResults:isa];

    return;
  }

  sub_100014D24(&aBlock, v33);
  sub_10000BFFC(v33, v34);
  (*(v7 + 104))(v9, enum case for DeepLinkActivityType.browse(_:), v6);
  dispatch thunk of ViewControllerRouterProtocol.prepareForAppActivity(_:)();
  (*(v7 + 8))(v9, v6);
  v10 = [*sub_10000BFFC(v33 v34)];
  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = v10;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass() || (v12 = UINavigationController.rootViewController()()) == 0)
  {
LABEL_9:

LABEL_10:
    sub_1000687A4(_swiftEmptyArrayStorage);
    sub_10003C1BC(a4);
    v24 = String._bridgeToObjectiveC()();

    v25 = String._bridgeToObjectiveC()();
    v26 = Dictionary._bridgeToObjectiveC()().super.isa;

    [a1 failedTest:v24 withFailure:v25 withResults:v26];

    goto LABEL_11;
  }

  v13 = v12;
  type metadata accessor for SearchViewController();
  if (!swift_dynamicCastClass())
  {

    v11 = v13;
    goto LABEL_9;
  }

  sub_10003C1BC(a4);
  v14 = String._bridgeToObjectiveC()();

  [a1 startedTest:v14];

  v15 = dispatch thunk of SearchViewController.searchController.getter();
  v16 = [v15 searchBar];

  v17 = String._bridgeToObjectiveC()();
  [v16 setText:v17];

  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a4;
  v31 = sub_1000432F0;
  v32 = v18;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v29 = sub_100008310;
  v30 = &unk_1000CE190;
  v19 = _Block_copy(&aBlock);
  v20 = a1;

  [v20 installCACommitCompletionBlock:v19];
  _Block_release(v19);

LABEL_11:
  sub_100003B90(v33);
}

uint64_t sub_100041CF4(unsigned __int8 a1, uint64_t a2)
{
  if (a1 > 3u)
  {
    v4 = 0xE600000000000000;
    v9 = 0x545052657375;
    if (a1 != 6)
    {
      v9 = 0x7365676170;
      v4 = 0xE500000000000000;
    }

    v10 = 0xED000065706F6353;
    v11 = 0x656D69546D6F7266;
    if (a1 != 4)
    {
      v11 = 0x6353656D69546F74;
      v10 = 0xEB0000000065706FLL;
    }

    if (a1 <= 5u)
    {
      v8 = v11;
    }

    else
    {
      v8 = v9;
    }

    if (a1 <= 5u)
    {
      v4 = v10;
    }
  }

  else
  {
    v4 = 0xEA0000000000736ELL;
    v5 = 0x6F69746172657469;
    v6 = 0xEC0000006874676ELL;
    v7 = 0x654C6C6C6F726373;
    if (a1 != 2)
    {
      v7 = 0x6570795461746164;
      v6 = 0xEC00000065646F43;
    }

    if (a1)
    {
      v5 = 0x65446C6C6F726373;
      v4 = 0xEB0000000061746CLL;
    }

    if (a1 <= 1u)
    {
      v8 = v5;
    }

    else
    {
      v8 = v7;
    }

    if (a1 > 1u)
    {
      v4 = v6;
    }
  }

  v25 = v8;
  v26 = v4;
  AnyHashable.init<A>(_:)();
  if (!*(a2 + 16) || (v12 = sub_100033344(v27), (v13 & 1) == 0))
  {
    sub_10002E508(v27);
    goto LABEL_27;
  }

  sub_100003B34(*(a2 + 56) + 32 * v12, v28);
  sub_10002E508(v27);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_27;
  }

  v14 = HIBYTE(v26) & 0xF;
  if (!v14)
  {

LABEL_27:
    if (a1 > 7u)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return dword_1000AEE58[a1];
    }
  }

  v27[0] = v25;
  v27[1] = v26 & 0xFFFFFFFFFFFFFFLL;
  if (v25 == 43)
  {
    v17 = v14 - 1;
    if (v14 != 1)
    {
      LODWORD(v15) = 0;
      v18 = v27 + 1;
      while (1)
      {
        v19 = *v18 - 48;
        if (v19 > 9)
        {
          break;
        }

        v20 = 10 * v15;
        if (v20 != v20)
        {
          break;
        }

        v15 = v20 + v19;
        if (__OFADD__(v20, v19))
        {
          break;
        }

        ++v18;
        if (!--v17)
        {
          goto LABEL_46;
        }
      }
    }
  }

  else
  {
    LODWORD(v15) = 0;
    v21 = v27;
    while (1)
    {
      v22 = *v21 - 48;
      if (v22 > 9)
      {
        break;
      }

      v23 = 10 * v15;
      if (v23 != v23)
      {
        break;
      }

      v15 = v23 + v22;
      if (__OFADD__(v23, v22))
      {
        break;
      }

      ++v21;
      if (!--v14)
      {
        LOBYTE(v17) = 0;
        goto LABEL_46;
      }
    }
  }

  v15 = 0;
  LOBYTE(v17) = 1;
LABEL_46:
  v28[0] = v17;
  v24 = v17;

  if (v24)
  {
    goto LABEL_27;
  }

  return v15;
}

uint64_t sub_100042194(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DeepLinkActivityType();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch(a3)
  {
    case 7:
      sub_10003C4B4(a1, a2, 0, 1, 7);
      return 1;
    case 8:
    case 9:
      v11 = &enum case for DeepLinkActivityType.browse(_:);
      goto LABEL_5;
    case 10:
      v21 = swift_allocObject();
      *(v21 + 16) = 10;
      *(v21 + 24) = a1;
      *(v21 + 32) = a2;
      *(v21 + 40) = 248;
      v33 = a1;

      v34 = sub_10004353C;
      goto LABEL_18;
    case 11:
      v21 = swift_allocObject();
      *(v21 + 16) = 11;
      *(v21 + 24) = a1;
      *(v21 + 32) = a2;
      *(v21 + 40) = 248;
      v33 = a1;

      v34 = sub_100042A0C;
LABEL_18:
      v23 = v34;
      v24 = v33;
      v25 = 248;
      goto LABEL_23;
    case 12:
    case 13:
      v13 = swift_allocObject();
      *(v13 + 16) = a3;
      *(v13 + 24) = a1;
      *(v13 + 32) = a2;
      *(v13 + 40) = 7;
      v14 = a1;

      sub_10006D3CC(v14, 7, 0, sub_10004353C, v13);
      goto LABEL_30;
    case 14:
      v21 = swift_allocObject();
      *(v21 + 16) = 14;
      *(v21 + 24) = a1;
      *(v21 + 32) = a2;
      *(v21 + 40) = 100;
      v36 = a1;

      v23 = sub_10004353C;
      v24 = v36;
      v25 = 100;
      goto LABEL_23;
    case 15:
      v21 = swift_allocObject();
      *(v21 + 16) = 15;
      *(v21 + 24) = a1;
      *(v21 + 32) = a2;
      *(v21 + 40) = 5;
      v22 = a1;

      v23 = sub_10004353C;
      v24 = v22;
      v25 = 5;
      goto LABEL_23;
    case 16:
      v21 = swift_allocObject();
      *(v21 + 16) = 16;
      *(v21 + 24) = a1;
      *(v21 + 32) = a2;
      *(v21 + 40) = 125;
      v38 = a1;

      v23 = sub_10004353C;
      v24 = v38;
      v25 = 125;
      goto LABEL_23;
    case 17:
      v21 = swift_allocObject();
      *(v21 + 16) = 17;
      *(v21 + 24) = a1;
      *(v21 + 32) = a2;
      *(v21 + 40) = 3;
      v35 = a1;

      v23 = sub_1000429C4;
      v24 = v35;
      v25 = 3;
LABEL_23:
      sub_10006D3CC(v24, v25, 0, v23, v21);
      goto LABEL_30;
    case 18:
      sub_10003C4B4(a1, a2, 0, 1, 18);
      return 1;
    case 19:
      v37 = v8;
      (*(v7 + 104))(v10, enum case for DeepLinkActivityType.browse(_:), v8);
      sub_10004162C(a1, v10, 19);
      (*(v7 + 8))(v10, v37);
      return 1;
    case 20:
      sub_10003C4B4(a1, a2, 7, 0, 20);
      return 1;
    case 21:
      sub_10003C4B4(a1, a2, 172, 0, 21);
      return 1;
    case 22:
      sub_10003C4B4(a1, a2, 5, 0, 22);
      return 1;
    case 23:
      v26 = static KeywordFeatureTag.CommonIdentifier.fitness.getter();
      v28 = v39;
      v40 = String._bridgeToObjectiveC()();

      [a1 startedTest:v40];

      v30 = swift_allocObject();
      *(v30 + 16) = a1;
      *(v30 + 24) = 23;
      v31 = a1;
      v32 = sub_10004356C;
      goto LABEL_28;
    case 24:
      v26 = static KeywordFeatureTag.CommonIdentifier.hearing.getter();
      v28 = v27;
      v29 = String._bridgeToObjectiveC()();

      [a1 startedTest:v29];

      v30 = swift_allocObject();
      *(v30 + 16) = a1;
      *(v30 + 24) = 24;
      v31 = a1;
      v32 = sub_1000429B8;
LABEL_28:
      sub_10006DE7C(v31, v26, v28, 0, v32, v30);
      goto LABEL_29;
    case 25:
    case 26:
    case 27:
    case 28:
    case 29:
    case 30:
    case 31:
    case 32:
    case 33:
    case 34:
    case 35:
    case 39:
      sub_10003E2EC(a1, a2, a3);
      return 1;
    case 36:
      v42 = swift_allocObject();
      *(v42 + 16) = 36;
      *(v42 + 24) = a2;
      *(v42 + 32) = a1;
      v43 = a1;

      sub_10006E474(v43, 7, 0, sub_1000429AC, v42);
      goto LABEL_30;
    case 37:
      sub_10004186C(a1, 1918985544, 0xE400000000000000, 37);
      return 1;
    case 38:
      sub_10004186C(a1, 6709603, 0xE300000000000000, 38);
      return 1;
    case 40:
      sub_100042B2C(0, &qword_1000DBAA8, &type metadata accessor for ContentKind, &type metadata accessor for _ContiguousArrayStorage);
      v15 = type metadata accessor for ContentKind();
      v16 = *(v15 - 8);
      v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1000AE100;
      (*(v16 + 104))(v18 + v17, enum case for ContentKind.dataSummary(_:), v15);
      v19 = swift_allocObject();
      *(v19 + 16) = a1;
      *(v19 + 24) = 40;
      *(v19 + 32) = a2;
      v20 = a1;

      sub_10006E8A4(v20, v18, 0, sub_10004299C, v19);
LABEL_29:

LABEL_30:

      break;
    case 41:
      sub_10003C4B4(a1, a2, 0, 1, 41);
      break;
    case 42:
      sub_10003D3E4(a1, 42);
      break;
    default:
      v11 = &enum case for DeepLinkActivityType.summary(_:);
LABEL_5:
      v12 = v8;
      (*(v7 + 104))(v10, *v11, v8);
      sub_10003D714(a1, a2, v10, a3);
      (*(v7 + 8))(v10, v12);
      break;
  }

  return 1;
}

void sub_100042A54(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = type metadata accessor for Optional();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_100042AB0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  sub_100042A54(0, a2, a3, a4, sub_100009630);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_100042B2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_100042B90(uint64_t a1)
{

  return _swift_deallocObject(v1, a1, 7);
}

void sub_100042BE8()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 32);
  (*(v0 + 16))();

  sub_10003E9F0(v1, v2, v3);
}

uint64_t sub_100042C40(unsigned __int8 a1, uint64_t a2)
{
  AnyHashable.init<A>(_:)();
  if (!*(a2 + 16) || (v3 = sub_100033344(v7), (v4 & 1) == 0))
  {
    sub_10002E508(v7);
    goto LABEL_6;
  }

  sub_100003B34(*(a2 + 56) + 32 * v3, v8);
  sub_10002E508(v7);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    v6 = 0;
    return v6 & 1;
  }

  v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

  return v6 & 1;
}

void sub_100042E7C(void *a1, void *a2, char a3)
{
  v5 = sub_10003C1BC(a3);
  v7 = v6;
  v8 = [a2 window];
  if (v8)
  {
    v9 = v8;
    [v8 bounds];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;

    v18 = objc_allocWithZone(RPTScrollViewTestParameters);
    v19 = String._bridgeToObjectiveC()();
    v20 = [v18 initWithTestName:v19 scrollBounds:2 scrollContentLength:0 direction:v11 completionHandler:{v13, v15, v17, 250.0}];

    [v20 setShouldFlick:1];
    [v20 setIterationDurationFactor:0.4];
    v21 = objc_allocWithZone(RPTScrollViewTestParameters);
    v22 = String._bridgeToObjectiveC()();
    v23 = [v21 initWithTestName:v22 scrollBounds:3 scrollContentLength:0 direction:v11 completionHandler:{v13, v15, v17, 250.0}];

    [v23 setShouldFlick:1];
    [v23 setIterationDurationFactor:0.8];
    v24 = objc_opt_self();
    v25 = String._bridgeToObjectiveC()();

    sub_1000157F8();
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1000AED70;
    *(v26 + 32) = v20;
    *(v26 + 40) = v23;
    sub_1000431F4();
    v27 = v20;
    v28 = v23;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v31 = [v24 newWithTestName:v25 parameters:isa completionHandler:0];

    [objc_opt_self() runTestWithParameters:v31];
  }

  else
  {
    _StringGuts.grow(_:)(39);

    v30._countAndFlagsBits = v5;
    v30._object = v7;
    String.append(_:)(v30);

    sub_1000687A4(_swiftEmptyArrayStorage);
    v27 = String._bridgeToObjectiveC()();

    v28 = String._bridgeToObjectiveC()();

    v31 = Dictionary._bridgeToObjectiveC()().super.isa;

    [a1 failedTest:v27 withFailure:v28 withResults:v31];
  }
}

unint64_t sub_1000431F4()
{
  result = qword_1000DBB08;
  if (!qword_1000DBB08)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1000DBB08);
  }

  return result;
}

uint64_t sub_100043258()
{

  return _swift_deallocObject(v0, 56, 7);
}

id sub_10004333C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  sub_10003F6E8(v1, *(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));

  return [v1 selectTimeScope:v2];
}

void sub_1000433D4()
{
  if (!qword_1000DD0B0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1000DD0B0);
    }
  }
}

uint64_t sub_100043454(uint64_t a1)
{
  sub_100042B2C(0, &qword_1000DBB80, &type metadata accessor for Presentation, &type metadata accessor for Optional);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100043570(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC6Health28HealthAppPPTFeedItemListener_changesMade);
  v3 = [a1 fetchedObjects];
  if (!v3)
  {
    goto LABEL_12;
  }

  v4 = v3;
  sub_1000437EC();
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v5 >> 62))
  {
    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_10:

    goto LABEL_11;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_10;
  }

LABEL_4:
  if ((v5 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    swift_unknownObjectRetain();
  }

  type metadata accessor for FeedItem();
  v3 = swift_dynamicCastClass();
  if (!v3)
  {
    swift_unknownObjectRelease();
LABEL_11:
    v3 = 0;
  }

LABEL_12:
  v6 = v3;
  v2();
}

id sub_100043734()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HealthAppPPTFeedItemListener();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1000437EC()
{
  result = qword_1000DBC30;
  if (!qword_1000DBC30)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1000DBC30);
  }

  return result;
}

void sub_100043850()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = [objc_opt_self() alertControllerWithTitle:v1 message:v2 preferredStyle:1];

  v4 = swift_allocObject();
  *(v4 + 16) = v0;
  v5 = v0;
  v6 = String._bridgeToObjectiveC()();
  v12[4] = sub_100043B70;
  v12[5] = v4;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_100087848;
  v12[3] = &unk_1000CE438;
  v7 = _Block_copy(v12);

  v8 = objc_opt_self();
  v9 = [v8 actionWithTitle:v6 style:0 handler:v7];
  _Block_release(v7);

  [v3 addAction:v9];
  v10 = String._bridgeToObjectiveC()();
  v11 = [v8 actionWithTitle:v10 style:1 handler:0];

  [v3 addAction:v11];
  [v5 presentViewController:v3 animated:1 completion:0];
}

void sub_100043A88(void *a1)
{
  *(swift_allocObject() + 16) = a1;
  type metadata accessor for SummaryFeedViewController(0);
  v2 = a1;
  TapToRadarButtonDisplaying<>.showDisambiguationTriageAlert(featureName:userConfirmed:)();
}

void sub_100043B9C(uint64_t a1, uint64_t a2)
{
  v17 = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  [v17 startAnimating];
  v5 = [v2 navigationItem];
  v6 = [v5 rightBarButtonItem];

  v7 = [v2 navigationItem];
  v8 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v17];
  [v7 setRightBarButtonItem:v8];

  v9 = [objc_allocWithZone(type metadata accessor for CollectFeedItemCacheDiagnosticsOperation()) init];
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  v12[2] = v10;
  v12[3] = v11;
  v12[4] = v6;
  v12[5] = a1;
  v12[6] = a2;
  aBlock[4] = sub_1000441EC;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100008310;
  aBlock[3] = &unk_1000CE4D8;
  v13 = _Block_copy(aBlock);
  v14 = v9;

  v15 = v6;
  sub_10001EC44(a1, a2);
  sub_10001EC44(sub_1000441EC, v12);

  [v14 setCompletionBlock:v13];
  _Block_release(v13);

  sub_100003DDC(0, &qword_1000DBC38, NSOperationQueue_ptr);
  v16 = static NSOperationQueue.userInitiated.getter();
  [v16 addOperation:v14];
}

uint64_t sub_100043E5C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v25 = a4;
  v26 = a5;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for DispatchQoS();
  v9 = *(v27 - 8);
  __chkstk_darwin(v27);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = dispatch thunk of CollectFeedItemCacheDiagnosticsOperation.logURLs.getter();
  }

  else
  {
    v14 = 0;
  }

  sub_100003DDC(0, &qword_1000DBAE0, OS_dispatch_queue_ptr);
  v15 = static OS_dispatch_queue.main.getter();
  v16 = swift_allocObject();
  swift_beginAccess();
  v17 = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v18 = swift_allocObject();
  v18[2] = v14;
  v18[3] = v16;
  v20 = v25;
  v19 = v26;
  v18[4] = a3;
  v18[5] = v20;
  v18[6] = v19;
  aBlock[4] = sub_1000445A4;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100008310;
  aBlock[3] = &unk_1000CE528;
  v21 = _Block_copy(aBlock);
  v22 = a3;
  sub_10001EC44(v20, v19);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100007CBC(&qword_1000DAD40, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000445D4(0);
  sub_100007CBC(&qword_1000DAD48, sub_1000445D4, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);

  (*(v24 + 8))(v8, v6);
  return (*(v9 + 8))(v11, v27);
}

uint64_t sub_100044204(Class isa, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v27 = a3;
  v28 = a5;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = String._bridgeToObjectiveC()();
  v12 = String._bridgeToObjectiveC()();

  sub_1000157F8();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1000AE610;
  *(v13 + 32) = [objc_allocWithZone(NSNumber) initWithInteger:1148476];
  sub_100003DDC(0, &qword_1000DBC40, NSNumber_ptr);
  v14.super.isa = Array._bridgeToObjectiveC()().super.isa;

  if (isa)
  {
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  v15 = [objc_opt_self() hk_tapToHealthRadarURLWithTitle:v11 description:v12 classification:5 reproducibility:0 keywords:v14.super.isa autoDiagnostics:2 attachments:isa];

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = [objc_opt_self() defaultWorkspace];
  if (v16)
  {
    v18 = v16;
    URL._bridgeToObjectiveC()(v17);
    v20 = v19;
    sub_1000689C0(_swiftEmptyArrayStorage);
    v21 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v18 openSensitiveURL:v20 withOptions:v21];
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v23 = Strong;
    v24 = [Strong navigationItem];

    [v24 setRightBarButtonItem:v27];
  }

  if (a4)
  {
    a4();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_100044544(void (*a1)(void))
{
  a1(*(v1 + 16));

  if (*(v1 + 40))
  {
  }

  return _swift_deallocObject(v1, 56, 7);
}

void sub_1000445D4(uint64_t a1)
{
  if (!qword_1000DBAF0)
  {
    type metadata accessor for DispatchWorkItemFlags();
    v1 = type metadata accessor for Array();
    if (!v2)
    {
      atomic_store(v1, &qword_1000DBAF0);
    }
  }
}

void *sub_10004463C(uint64_t a1)
{
  v40 = type metadata accessor for AdvertisableFeature.Identifier();
  v3 = *(v40 - 8);
  __chkstk_darwin(v40);
  v39 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v5 = __CocoaSet.count.getter();
  }

  else
  {
    v5 = *(a1 + 16);
  }

  result = _swiftEmptyArrayStorage;
  if (v5)
  {
    v48 = _swiftEmptyArrayStorage;
    sub_10007C57C(0, v5 & ~(v5 >> 63), 0);
    v43 = v48;
    if (v41)
    {
      result = __CocoaSet.startIndex.getter();
    }

    else
    {
      result = _HashTable.startBucket.getter();
      v7 = *(a1 + 36);
    }

    v45 = result;
    v46 = v7;
    v47 = v41 != 0;
    if ((v5 & 0x8000000000000000) == 0)
    {
      v8 = 0;
      v37 = v5;
      v38 = (v3 + 8);
      v9 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v9 = a1;
      }

      v35 = a1 + 56;
      v36 = v9;
      v33 = v1;
      v34 = a1 + 64;
      while (v8 < v5)
      {
        if (__OFADD__(v8++, 1))
        {
          goto LABEL_37;
        }

        v12 = v45;
        v13 = v47;
        v42 = v46;
        v14 = a1;
        sub_1000564EC(v45, v46, v47, a1);
        v15 = v39;
        AdvertisableFeatureModel.identifier.getter();
        v16 = AdvertisableFeature.Identifier.rawValue.getter();
        v18 = v17;
        (*v38)(v15, v40);

        v19 = v43;
        v48 = v43;
        v21 = v43[2];
        v20 = v43[3];
        if (v21 >= v20 >> 1)
        {
          result = sub_10007C57C((v20 > 1), v21 + 1, 1);
          v19 = v48;
        }

        v19[2] = v21 + 1;
        v22 = &v19[2 * v21];
        v22[4] = v16;
        v22[5] = v18;
        v43 = v19;
        if (v41)
        {
          if (!v13)
          {
            goto LABEL_42;
          }

          a1 = v14;
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v5 = v37;
          sub_100048C98(0, &qword_1000DBDB8, &type metadata accessor for Set.Index);
          v10 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          result = v10(v44, 0);
          if (v8 == v5)
          {
LABEL_34:
            sub_10000F210(v45, v46, v47);
            return v43;
          }
        }

        else
        {
          if (v13)
          {
            goto LABEL_43;
          }

          if ((v12 & 0x8000000000000000) != 0)
          {
            goto LABEL_38;
          }

          a1 = v14;
          v23 = (1 << *(v14 + 32));
          if (v12 >= v23)
          {
            goto LABEL_38;
          }

          v24 = v12 >> 6;
          v25 = *(v35 + 8 * (v12 >> 6));
          if (((v25 >> v12) & 1) == 0)
          {
            goto LABEL_39;
          }

          if (*(v14 + 36) != v42)
          {
            goto LABEL_40;
          }

          v26 = v25 & (-2 << (v12 & 0x3F));
          if (v26)
          {
            v23 = (__clz(__rbit64(v26)) | v12 & 0x7FFFFFFFFFFFFFC0);
            v5 = v37;
          }

          else
          {
            v27 = v24 << 6;
            v28 = v24 + 1;
            v29 = (v34 + 8 * v24);
            v5 = v37;
            while (v28 < (v23 + 63) >> 6)
            {
              v31 = *v29++;
              v30 = v31;
              v27 += 64;
              ++v28;
              if (v31)
              {
                result = sub_10000F210(v12, v42, 0);
                v23 = (__clz(__rbit64(v30)) + v27);
                goto LABEL_33;
              }
            }

            result = sub_10000F210(v12, v42, 0);
          }

LABEL_33:
          v32 = *(v14 + 36);
          v45 = v23;
          v46 = v32;
          v47 = 0;
          if (v8 == v5)
          {
            goto LABEL_34;
          }
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }

  return result;
}

id sub_100044A4C()
{
  type metadata accessor for HealthNotificationsWelcomeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_1000E3DF0 = result;
  return result;
}

uint64_t sub_100044AA0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      return sub_100048380(v3, *a2);
    }

    return 0;
  }

  v7 = a1[1];
  v8 = a2[1];
  if (*(a1 + 16) == 1)
  {
    if (v5 == 1)
    {
      if (v3 != v4 || v7 != v8)
      {
        return _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      return 1;
    }

    return 0;
  }

  if (!(v3 | v7))
  {
    return v5 == 2 && (v8 | v4) == 0;
  }

  if (v3 ^ 1 | v7)
  {
    if (v5 != 2 || v4 != 2)
    {
      return 0;
    }
  }

  else if (v5 != 2 || v4 != 1)
  {
    return 0;
  }

  return !v8;
}

uint64_t sub_100044B50()
{
  v1 = type metadata accessor for AdvertisableFeature.Location();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v0[13])
  {
    v5 = v0[13];
  }

  else
  {
    sub_10000BFFC(v0 + 7, v0[10]);
    (*(v2 + 104))(v4, enum case for AdvertisableFeature.Location.healthWelcomeFlow(_:), v1);
    static AdvertisableFeature.Identifier.healthWelcomeFlowIdentifiers.getter();
    v6 = v0;
    v5 = dispatch thunk of HealthPluginAdvertisableFeatureManagerProviding.makeAdvertisableFeatureManager(location:featureIdentifiers:includeFeaturesMadeAvailableByBuddy:)();
    v8 = v7;

    (*(v2 + 8))(v4, v1);
    v6[13] = v5;
    v6[14] = v8;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v5;
}

uint64_t sub_100044CD0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.general.getter();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v27 = a2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v26 = a1;
    v16 = v15;
    v28 = v15;
    *v14 = 136315138;
    v17 = _typeName(_:qualified:)();
    v25 = v6;
    v19 = sub_1000036D0(v17, v18, &v28);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v11, v12, "[%s] [TCC] Fetching notification authorization status", v14, 0xCu);
    sub_100003B90(v16);
    a1 = v26;

    a2 = v27;

    (*(v8 + 8))(v10, v7);
    v20 = v25;
  }

  else
  {

    (*(v8 + 8))(v10, v7);
    v20 = v6;
  }

  sub_10000BFFC(v3 + 2, v3[5]);
  v21 = swift_allocObject();
  swift_weakInit();
  v22 = swift_allocObject();
  v22[2] = a1;
  v22[3] = a2;
  v22[4] = v21;
  v22[5] = v20;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_100048ACC;
  *(v23 + 24) = v22;

  dispatch thunk of HealthAppNotificationManager.getNotificationSettings(completion:)();
}

uint64_t sub_100044FB4(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, void *a4, uint64_t a5)
{
  v42 = a2;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v39 - v14;
  static Logger.general.getter();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v39[1] = a4;
    v19 = v18;
    v20 = swift_slowAlloc();
    v40 = v10;
    v39[0] = v20;
    v43[0] = v20;
    *v19 = 136315395;
    v21 = _typeName(_:qualified:)();
    v41 = v9;
    v23 = a1;
    v24 = v13;
    v25 = a5;
    v26 = sub_1000036D0(v21, v22, v43);
    v9 = v41;

    *(v19 + 4) = v26;
    a5 = v25;
    v13 = v24;
    a1 = v23;
    *(v19 + 12) = 2049;
    *(v19 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v16, v17, "[%s] [TCC] Received authorization status: %{private}ld", v19, 0x16u);
    sub_100003B90(v39[0]);
    v10 = v40;
  }

  v27 = *(v10 + 8);
  v27(v15, v9);
  if (a1)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      sub_100044B50();

      swift_getObjectType();
      v29 = swift_allocObject();
      v29[2] = v42;
      v29[3] = a3;
      v29[4] = a5;

      dispatch thunk of AdvertisableFeatureManaging.determineCurrentAdvertisedFeatures(completion:)();

      return swift_unknownObjectRelease();
    }
  }

  else
  {
    static Logger.general.getter();
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v43[0] = v33;
      *v32 = 136315138;
      v34 = _typeName(_:qualified:)();
      v41 = v9;
      v36 = sub_1000036D0(v34, v35, v43);

      *(v32 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v30, v31, "[%s] Authorization status not determined, showing Health Notifications page", v32, 0xCu);
      sub_100003B90(v33);

      v37 = v13;
      v38 = v41;
    }

    else
    {

      v37 = v13;
      v38 = v9;
    }

    v27(v37, v38);
    return v42(1);
  }

  return result;
}

uint64_t sub_1000453AC(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, char *a4)
{
  v67 = a4;
  v70 = a3;
  v71 = a2;
  v5 = type metadata accessor for AdvertisableFeatureError();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v66 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = &v63 - v10;
  __chkstk_darwin(v9);
  v13 = &v63 - v12;
  v14 = type metadata accessor for Logger();
  v68 = *(v14 - 8);
  v69 = v14;
  v15 = __chkstk_darwin(v14);
  v17 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v20 = &v63 - v19;
  __chkstk_darwin(v18);
  v22 = &v63 - v21;
  sub_100048B18(0);
  __chkstk_darwin(v23);
  v25 = (&v63 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100048BE0(a1, v25, sub_100048B18);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v41 = *v25;
    if ((*v25 & 0xC000000000000001) != 0)
    {
      v42 = v20;
      if (__CocoaSet.count.getter())
      {
LABEL_6:
        static Logger.general.getter();

        v43 = Logger.logObject.getter();
        v44 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          v73 = swift_slowAlloc();
          *v45 = 136315394;
          v46 = _typeName(_:qualified:)();
          v48 = sub_1000036D0(v46, v47, &v73);

          *(v45 + 4) = v48;
          *(v45 + 12) = 2080;
          v49 = sub_10004463C(v41);

          v72 = v49;
          sub_100048C48();
          sub_100048E18(&qword_1000DBDB0, sub_100048C48, &protocol conformance descriptor for [A]);
          v50 = BidirectionalCollection<>.joined(separator:)();
          v52 = v51;

          v53 = sub_1000036D0(v50, v52, &v73);

          *(v45 + 14) = v53;
          _os_log_impl(&_mh_execute_header, v43, v44, "[%s] Authorization status is correct but there are advertisable features %s, showing Health Notifications page", v45, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
        }

        (*(v68 + 8))(v42, v69);
        v62 = 1;
        return v71(v62);
      }
    }

    else
    {
      v42 = v20;
      if (*(v41 + 16))
      {
        goto LABEL_6;
      }
    }

    static Logger.general.getter();
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v73 = v58;
      *v57 = 136315138;
      v59 = _typeName(_:qualified:)();
      v61 = sub_1000036D0(v59, v60, &v73);

      *(v57 + 4) = v61;
      _os_log_impl(&_mh_execute_header, v55, v56, "[%s] Authorization status is correct and there are no advertisable features, skipping Health Notifications page", v57, 0xCu);
      sub_100003B90(v58);
    }

    (*(v68 + 8))(v22, v69);
    v62 = 0;
    return v71(v62);
  }

  (*(v6 + 32))(v13, v25, v5);
  static Logger.general.getter();
  v26 = *(v6 + 16);
  v26(v11, v13, v5);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();
  v29 = v13;
  if (os_log_type_enabled(v27, v28))
  {
    v30 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v73 = v65;
    *v30 = 136315394;
    v31 = _typeName(_:qualified:)();
    v67 = v29;
    v33 = sub_1000036D0(v31, v32, &v73);
    v64 = v27;
    v34 = v33;

    *(v30 + 4) = v34;
    *(v30 + 12) = 2080;
    v26(v66, v11, v5);
    v35 = String.init<A>(describing:)();
    v37 = v36;
    v38 = *(v6 + 8);
    v38(v11, v5);
    v39 = sub_1000036D0(v35, v37, &v73);
    v29 = v67;

    *(v30 + 14) = v39;
    v40 = v64;
    _os_log_impl(&_mh_execute_header, v64, v28, "[%s] Error when determining advertised features, will not show Health Notifications page: %s", v30, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v38 = *(v6 + 8);
    v38(v11, v5);
  }

  (*(v68 + 8))(v17, v69);
  v71(0);
  return (v38)(v29, v5);
}

uint64_t sub_100045B08(int a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.general.getter();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v32 = v10;
    v16 = v15;
    v17 = swift_slowAlloc();
    v31 = v9;
    v18 = v17;
    v34 = v17;
    *v16 = 136315138;
    v19 = _typeName(_:qualified:)();
    v33 = a1;
    v21 = sub_1000036D0(v19, v20, &v34);
    v30 = v8;
    v22 = a3;
    v23 = v21;
    LOBYTE(a1) = v33;

    *(v16 + 4) = v23;
    a3 = v22;
    _os_log_impl(&_mh_execute_header, v13, v14, "[%s] [TCC] Fetching notification authorization status", v16, 0xCu);
    sub_100003B90(v18);

    v24 = v30;
    (*(v32 + 8))(v12, v31);
  }

  else
  {

    (*(v10 + 8))(v12, v9);
    v24 = v8;
  }

  sub_10000BFFC(v4 + 2, v4[5]);
  v25 = swift_allocObject();
  swift_weakInit();
  v26 = swift_allocObject();
  *(v26 + 16) = v25;
  *(v26 + 24) = a1 & 1;
  *(v26 + 32) = a2;
  *(v26 + 40) = a3;
  *(v26 + 48) = v24;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_100048A58;
  *(v27 + 24) = v26;

  dispatch thunk of HealthAppNotificationManager.getNotificationSettings(completion:)();
}

uint64_t sub_100045E0C(uint64_t a1, uint64_t a2, int a3, uint64_t (*a4)(uint64_t, void, uint64_t), uint64_t a5, uint64_t a6)
{
  LODWORD(v8) = a3;
  v11 = type metadata accessor for Logger();
  v34 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.general.getter();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v32 = v8;
    v8 = v16;
    v17 = swift_slowAlloc();
    v33 = a5;
    v18 = v17;
    v35[0] = v17;
    *v8 = 136315395;
    v19 = _typeName(_:qualified:)();
    v21 = sub_1000036D0(v19, v20, v35);
    v31 = v11;
    v22 = a1;
    v23 = a2;
    v24 = a4;
    v25 = v21;

    *(v8 + 4) = v25;
    a4 = v24;
    a2 = v23;
    a1 = v22;
    *(v8 + 12) = 2049;
    *(v8 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v14, v15, "[%s] [TCC] Received authorization status: %{private}ld", v8, 0x16u);
    sub_100003B90(v18);
    a5 = v33;

    LOBYTE(v8) = v32;

    (*(v34 + 8))(v13, v31);
  }

  else
  {

    (*(v34 + 8))(v13, v11);
  }

  if (a1)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (!result)
    {
      return result;
    }

    sub_100046C0C(a1 == 1, v8 & 1, a4, a5);
  }

  else
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (!result)
    {
      return result;
    }

    v27 = swift_allocObject();
    v28 = a4;
    v29 = v27;
    *(v27 + 16) = v28;
    *(v27 + 24) = a5;
    *(v27 + 32) = a2;
    *(v27 + 40) = v8 & 1;

    sub_1000461A0(v8 & 1, sub_100048A70, v29);
  }
}

uint64_t sub_1000460E4(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t), uint64_t a6, uint64_t a7, char a8)
{
  if (a4 < 2u || (a2 | a3) != 0)
  {
    return a5(a2, a3, a4);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100046C0C((a1 & 1) == 0, a8 & 1, a5, a6);
  }

  return result;
}

uint64_t sub_1000461A0(int a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v26 = a2;
  v27 = a1;
  v6 = *v3;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.general.getter();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v25 = a3;
    v14 = v13;
    v15 = swift_slowAlloc();
    v28 = v15;
    *v14 = 136315138;
    v16 = _typeName(_:qualified:)();
    v24 = v6;
    v18 = sub_1000036D0(v16, v17, &v28);

    *(v14 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v11, v12, "%s [TCC] Showing TCC notification prompt", v14, 0xCu);
    sub_100003B90(v15);

    a3 = v25;

    (*(v8 + 8))(v10, v7);
    v19 = v24;
  }

  else
  {

    (*(v8 + 8))(v10, v7);
    v19 = v6;
  }

  sub_100048594();
  sub_10000BFFC(v4 + 2, v4[5]);
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = swift_allocObject();
  *(v21 + 16) = v26;
  *(v21 + 24) = a3;
  *(v21 + 32) = v27 & 1;
  *(v21 + 40) = v20;
  *(v21 + 48) = v19;

  dispatch thunk of HealthAppNotificationManager.requestAuthorization(addCriticalAlerts:completionHandler:)();
}

uint64_t sub_100046460(int a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v64 = a4;
  v65 = a3;
  v63 = a1;
  v9 = type metadata accessor for Locale();
  __chkstk_darwin(v9 - 8);
  v10 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for Logger();
  v12 = __chkstk_darwin(v11);
  v14 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v60 - v16;
  __chkstk_darwin(v15);
  v20 = &v60 - v19;
  if (a2)
  {
    if ((a5 & 1) == 0)
    {
      v23 = 0;
      v25 = 0;
      v26 = 2;
      v21 = v63;
      goto LABEL_10;
    }

    String.LocalizationValue.init(stringLiteral:)();
    v21 = v63;
    if (qword_1000DA540 == -1)
    {
LABEL_4:
      v22 = qword_1000E3DF0;
      static Locale.current.getter();
      v23 = String.init(localized:table:bundle:locale:comment:)();
      v25 = v24;
      v26 = 1;
LABEL_10:
      v65(v21 & 1, v23, v25, v26);
      return sub_1000489F0(v23, v25, v26);
    }

LABEL_15:
    swift_once();
    goto LABEL_4;
  }

  v62 = v18;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    static Logger.general.getter();
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v66[0] = v61;
      *v41 = 136315138;
      v42 = _typeName(_:qualified:)();
      v44 = sub_1000036D0(v42, v43, v66);

      *(v41 + 4) = v44;
      _os_log_impl(&_mh_execute_header, v39, v40, "%s Somehow deallocated while waiting for authorization callback", v41, 0xCu);
      sub_100003B90(v61);
    }

    (*(v62 + 8))(v14, v11);
    v21 = v63;
    if ((a5 & 1) == 0)
    {
      v23 = 0;
      v25 = 0;
      v26 = 2;
      goto LABEL_10;
    }

    String.LocalizationValue.init(stringLiteral:)();
    if (qword_1000DA540 == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_15;
  }

  sub_10000BFFC((Strong + 16), *(Strong + 40));
  v28 = dispatch thunk of HealthAppNotificationManager.getNotificationSettings()();
  v29 = [v28 authorizationStatus];

  if (v29)
  {
    static Logger.general.getter();
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v66[0] = v33;
      *v32 = 136315394;
      v34 = _typeName(_:qualified:)();
      v36 = sub_1000036D0(v34, v35, v66);

      *(v32 + 4) = v36;
      *(v32 + 12) = 1024;
      v37 = v63;
      *(v32 + 14) = v63 & 1;
      _os_log_impl(&_mh_execute_header, v30, v31, "%s [TCC] Did select notification authorization: %{BOOL}d", v32, 0x12u);
      sub_100003B90(v33);

      (*(v62 + 8))(v20, v11);
    }

    else
    {

      (*(v62 + 8))(v20, v11);
      v37 = v63;
    }

    v54 = static NSNotificationName.healthAppNotificationSettingsDidChange.getter();
    v55 = [objc_opt_self() defaultCenter];
    [v55 postNotificationName:v54 object:0];

    v56 = objc_allocWithZone(type metadata accessor for PostNotificationOperation());
    v57 = v54;
    v58 = PostNotificationOperation.init(name:userInfo:)();
    sub_100048A0C();
    v59 = static NSOperationQueue.userInitiated.getter();
    [v59 addOperation:v58];

    sub_10009A9B8(v37 & 1);
    v52 = v37 & 1;
    v53 = 0;
  }

  else
  {
    static Logger.general.getter();
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v66[0] = v48;
      *v47 = 136315138;
      v49 = _typeName(_:qualified:)();
      v51 = sub_1000036D0(v49, v50, v66);

      *(v47 + 4) = v51;
      _os_log_impl(&_mh_execute_header, v45, v46, "%s [TCC] Did not select valid authorization. Remaining in buddy flow", v47, 0xCu);
      sub_100003B90(v48);
    }

    (*(v62 + 8))(v17, v11);
    v52 = v63 & 1;
    v53 = 2;
  }

  v65(v52, v53, 0, 2);
}

uint64_t sub_100046B60(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = AdvertisableFeatureModel.shouldEnable.getter();
  if (v5)
  {
    AdvertisableFeatureModel.shouldEnable.setter();

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*a4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  return v5 & 1;
}

uint64_t sub_100046C0C(char a1, char a2, uint64_t (*a3)(uint64_t, void, uint64_t), uint64_t a4)
{
  v7 = *v4;
  if (a2 & 1) != 0 && (a1)
  {
    sub_100044B50();
    ObjectType = swift_getObjectType();
    __chkstk_darwin(ObjectType);
    dispatch thunk of AdvertisableFeatureManaging.modifyAdvertisedModels(modifierBlock:)();
    swift_unknownObjectRelease();
    if (_swiftEmptyArrayStorage >> 62)
    {
      v11 = _CocoaArrayWrapper.endIndex.getter();

      if (v11)
      {
        return a3(1, 0, 2);
      }
    }

    else
    {
      v9 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v9)
      {
        return a3(1, 0, 2);
      }
    }
  }

  sub_100044B50();
  swift_getObjectType();
  dispatch thunk of AdvertisableFeatureManaging.freezeAdvertisementState()();
  swift_unknownObjectRelease();
  swift_getObjectType();
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = a3;
  v13[4] = a4;
  v13[5] = v7;
  swift_unknownObjectRetain();

  dispatch thunk of AdvertisableFeatureManaging.commitEnablement(completion:)();
  swift_unknownObjectRelease();
}

uint64_t sub_100046E28(uint64_t a1, void (*a2)(uint64_t), void (*a3)(uint64_t), uint64_t a4, _BYTE *a5)
{
  v61 = a5;
  v62 = a2;
  v68 = a4;
  v7 = type metadata accessor for Locale();
  __chkstk_darwin(v7 - 8);
  v64 = &v58[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v9 - 8);
  v63 = &v58[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for AdvertisableFeatureError();
  v65 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v14 = &v58[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = __chkstk_darwin(v12);
  v17 = &v58[-v16];
  __chkstk_darwin(v15);
  v19 = &v58[-v18];
  v20 = type metadata accessor for Logger();
  v66 = *(v20 - 8);
  v67 = v20;
  v21 = __chkstk_darwin(v20);
  v23 = &v58[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v21);
  v25 = &v58[-v24];
  sub_10004881C(0);
  __chkstk_darwin(v26);
  v28 = &v58[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100048BE0(a1, v28, sub_10004881C);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v62 = a3;
    v29 = v65;
    (*(v65 + 32))(v19, v28, v11);
    static Logger.advertisableFeatures.getter();
    v30 = *(v29 + 16);
    v30(v17, v19, v11);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    v33 = v19;
    if (os_log_type_enabled(v31, v32))
    {
      v34 = swift_slowAlloc();
      v59 = v32;
      v35 = v34;
      v60 = swift_slowAlloc();
      v69[0] = v60;
      *v35 = 136315394;
      v36 = _typeName(_:qualified:)();
      v38 = sub_1000036D0(v36, v37, v69);
      v61 = v19;
      v39 = v38;

      *(v35 + 4) = v39;
      *(v35 + 12) = 2080;
      v30(v14, v17, v11);
      v40 = String.init<A>(describing:)();
      v42 = v41;
      v43 = *(v65 + 8);
      v43(v17, v11);
      v44 = sub_1000036D0(v40, v42, v69);
      v33 = v61;

      *(v35 + 14) = v44;
      _os_log_impl(&_mh_execute_header, v31, v59, "[%s] Error when committing features, presenting alert then continuing: %s", v35, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v43 = *(v65 + 8);
      v43(v17, v11);
    }

    (*(v66 + 8))(v23, v67);
    String.LocalizationValue.init(stringLiteral:)();
    v55 = v62;
    if (qword_1000DA540 != -1)
    {
      swift_once();
    }

    v56 = qword_1000E3DF0;
    static Locale.current.getter();
    v57 = String.init(localized:table:bundle:locale:comment:)();
    v55(v57);

    return (v43)(v33, v11);
  }

  else
  {
    v45 = a3;
    v46 = v68;
    static Logger.advertisableFeatures.getter();
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v69[0] = v50;
      *v49 = 136315138;
      v51 = _typeName(_:qualified:)();
      v53 = sub_1000036D0(v51, v52, v69);

      *(v49 + 4) = v53;
      _os_log_impl(&_mh_execute_header, v47, v48, "[%s] Successfully committed enablement of features", v49, 0xCu);
      sub_100003B90(v50);
    }

    (*(v66 + 8))(v25, v67);
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      sub_1000474E4(v45, v46);
    }
  }

  return result;
}

uint64_t sub_1000474E4(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_100044B50();
  swift_getObjectType();
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = v5;

  dispatch thunk of AdvertisableFeatureManaging.determinePostCommitWorkItems(completion:)();
  swift_unknownObjectRelease();
}

uint64_t sub_1000475C4(uint64_t a1, void (*a2)(uint64_t, void, uint64_t), uint64_t a3, uint64_t a4)
{
  v53 = a4;
  v56 = a3;
  v57 = a2;
  v5 = type metadata accessor for AdvertisableFeatureError();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v49 - v11;
  __chkstk_darwin(v10);
  v14 = &v49 - v13;
  v15 = type metadata accessor for Logger();
  v54 = *(v15 - 8);
  v55 = v15;
  v16 = __chkstk_darwin(v15);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v49 - v19;
  sub_1000488C8(0);
  __chkstk_darwin(v21);
  v23 = (&v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100048BE0(a1, v23, sub_1000488C8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v6 + 32))(v14, v23, v5);
    static Logger.advertisableFeatures.getter();
    v24 = *(v6 + 16);
    v24(v12, v14, v5);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v52 = v14;
      v50 = v25;
      v28 = v27;
      v51 = swift_slowAlloc();
      v58 = v51;
      *v28 = 136315394;
      v29 = _typeName(_:qualified:)();
      v31 = sub_1000036D0(v29, v30, &v58);
      LODWORD(v53) = v26;
      v32 = v31;

      *(v28 + 4) = v32;
      *(v28 + 12) = 2080;
      v24(v9, v12, v5);
      v33 = String.init<A>(describing:)();
      v35 = v34;
      v36 = *(v6 + 8);
      v36(v12, v5);
      v37 = sub_1000036D0(v33, v35, &v58);

      *(v28 + 14) = v37;
      v38 = v50;
      _os_log_impl(&_mh_execute_header, v50, v53, "[%s] Error when determining post work items, continuing as commit succeeded: %s", v28, 0x16u);
      swift_arrayDestroy();

      v14 = v52;
    }

    else
    {

      v36 = *(v6 + 8);
      v36(v12, v5);
    }

    (*(v54 + 8))(v18, v55);
    v57(0, 0, 2);
    return (v36)(v14, v5);
  }

  else
  {
    v39 = *v23;
    static Logger.advertisableFeatures.getter();
    swift_bridgeObjectRetain_n();
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v58 = v43;
      *v42 = 136315394;
      v44 = _typeName(_:qualified:)();
      v46 = sub_1000036D0(v44, v45, &v58);

      *(v42 + 4) = v46;
      *(v42 + 12) = 2048;
      v47 = *(v39 + 16);

      *(v42 + 14) = v47;

      _os_log_impl(&_mh_execute_header, v40, v41, "[%s] Retrieved %ld post commit work items", v42, 0x16u);
      sub_100003B90(v43);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    (*(v54 + 8))(v20, v55);
    if (*(v39 + 16))
    {
      v57(v39, 0, 0);
    }

    else
    {

      return (v57)(0, 0, 2);
    }
  }
}

uint64_t sub_100047B74()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  result = __chkstk_darwin(v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((v1[12] & 1) == 0)
  {
    v15 = v1;
    *(v1 + 96) = 1;
    static Logger.advertisableFeatures.getter();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v16 = v11;
      *v10 = 136315138;
      v12 = _typeName(_:qualified:)();
      v14 = sub_1000036D0(v12, v13, &v16);

      *(v10 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v8, v9, "[%s] Performing prerequisite work", v10, 0xCu);
      sub_100003B90(v11);
    }

    (*(v4 + 8))(v7, v3);
    sub_100044B50();
    swift_getObjectType();
    *(swift_allocObject() + 16) = v2;
    dispatch thunk of AdvertisableFeatureManaging.performPrerequisiteWork(completion:)();
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100047DC0(uint64_t a1, uint64_t a2)
{
  v49 = a2;
  v3 = type metadata accessor for AdvertisableFeatureError();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v48 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v9 = &v44 - v8;
  __chkstk_darwin(v7);
  v50 = &v44 - v10;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v44 - v16;
  sub_10004881C(0);
  __chkstk_darwin(v18);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100048BE0(a1, v20, sub_10004881C);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v46 = v12;
    v47 = v11;
    v21 = v50;
    (*(v4 + 32))(v50, v20, v3);
    static Logger.advertisableFeatures.getter();
    v22 = *(v4 + 16);
    v22(v9, v21, v3);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v51 = v45;
      *v25 = 136315394;
      v26 = _typeName(_:qualified:)();
      LODWORD(v49) = v24;
      v28 = sub_1000036D0(v26, v27, &v51);

      *(v25 + 4) = v28;
      *(v25 + 12) = 2080;
      v22(v48, v9, v3);
      v29 = String.init<A>(describing:)();
      v31 = v30;
      v32 = *(v4 + 8);
      v32(v9, v3);
      v33 = sub_1000036D0(v29, v31, &v51);

      *(v25 + 14) = v33;
      _os_log_impl(&_mh_execute_header, v23, v49, "[%s] Prerequisite work failed to complete with error: %s", v25, 0x16u);
      swift_arrayDestroy();

      (*(v46 + 8))(v15, v47);
      return (v32)(v50, v3);
    }

    else
    {

      v43 = *(v4 + 8);
      v43(v9, v3);
      (*(v46 + 8))(v15, v47);
      return (v43)(v50, v3);
    }
  }

  else
  {
    static Logger.advertisableFeatures.getter();
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v51 = v38;
      *v37 = 136315138;
      v39 = _typeName(_:qualified:)();
      v41 = v12;
      v42 = sub_1000036D0(v39, v40, &v51);

      *(v37 + 4) = v42;
      _os_log_impl(&_mh_execute_header, v35, v36, "[%s] Prerequisite work completed", v37, 0xCu);
      sub_100003B90(v38);

      return (*(v41 + 8))(v17, v11);
    }

    else
    {

      return (*(v12 + 8))(v17, v11);
    }
  }
}

uint64_t sub_100048314()
{
  sub_100003B90((v0 + 16));
  sub_100003B90((v0 + 56));
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_100048380(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AdvertisableFeaturePostCommitWorkItem();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v24 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    v21 = 0;
    return v21 & 1;
  }

  if (!v11 || a1 == a2)
  {
    v21 = 1;
    return v21 & 1;
  }

  v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v13 = a1 + v12;
  v14 = a2 + v12;
  v16 = *(v5 + 16);
  v15 = v5 + 16;
  v17 = (v15 - 8);
  v24 = *(v15 + 56);
  v25 = v16;
  while (1)
  {
    v18 = v25;
    result = (v25)(v10, v13, v4);
    if (!v11)
    {
      break;
    }

    v20 = v15;
    v18(v8, v14, v4);
    sub_100048E18(&qword_1000DBDC0, &type metadata accessor for AdvertisableFeaturePostCommitWorkItem, &protocol conformance descriptor for AdvertisableFeaturePostCommitWorkItem);
    v21 = dispatch thunk of static Equatable.== infix(_:_:)();
    v22 = *v17;
    (*v17)(v8, v4);
    v22(v10, v4);
    if (v21)
    {
      v14 += v24;
      v13 += v24;
      v23 = v11-- == 1;
      v15 = v20;
      if (!v23)
      {
        continue;
      }
    }

    return v21 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_100048594()
{
  type metadata accessor for FoundationPluginBundleProvider();
  static FoundationPluginBundleProvider.sharedInstance.getter();
  v0 = dispatch thunk of PluginBundleProvider.notificationDelegateProvidingPluginBundles.getter();

  if (!(v0 >> 62))
  {
    v1 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v1)
    {
      goto LABEL_3;
    }

LABEL_22:
    v3 = _swiftEmptyArrayStorage;
    goto LABEL_23;
  }

LABEL_21:
  v1 = _CocoaArrayWrapper.endIndex.getter();
  if (!v1)
  {
    goto LABEL_22;
  }

LABEL_3:
  v2 = 0;
  v3 = _swiftEmptyArrayStorage;
  do
  {
    v4 = v2;
    while (1)
    {
      if ((v0 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v5 = *(v0 + 8 * v4 + 32);
      }

      v6 = v5;
      v2 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      sub_1000487B4();
      NSBundle.getPluginAppDelegateObject<A>(as:)();

      if (v18)
      {
        break;
      }

      ++v4;
      if (v2 == v1)
      {
        goto LABEL_23;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_100031A6C(0, v3[2] + 1, 1, v3);
    }

    v8 = v3[2];
    v7 = v3[3];
    v9 = v18;
    if (v8 >= v7 >> 1)
    {
      v10 = sub_100031A6C((v7 > 1), v8 + 1, 1, v3);
      v9 = v18;
      v3 = v10;
    }

    v3[2] = v8 + 1;
    *&v3[2 * v8 + 4] = v9;
  }

  while (v2 != v1);
LABEL_23:

  v12 = v3 + 5;
  v13 = -v3[2];
  v14 = -1;
  while (1)
  {
    v15 = v13 + v14;
    if (v13 + v14 == -1)
    {
LABEL_27:

      return v15 != -1;
    }

    if (++v14 >= v3[2])
    {
      break;
    }

    v16 = v12 + 2;
    swift_getObjectType();
    swift_unknownObjectRetain();
    v17 = dispatch thunk of PluginNotificationCenterDelegateProviding.providesCriticalAlerts()();
    result = swift_unknownObjectRelease();
    v12 = v16;
    if (v17)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1000487B4()
{
  result = qword_1000DB6F8;
  if (!qword_1000DB6F8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1000DB6F8);
  }

  return result;
}

void sub_10004881C(uint64_t a1)
{
  if (!qword_1000DBD78)
  {
    type metadata accessor for AdvertisableFeatureError();
    sub_100048E18(&qword_1000DBD80, &type metadata accessor for AdvertisableFeatureError, &protocol conformance descriptor for AdvertisableFeatureError);
    v1 = type metadata accessor for Result();
    if (!v2)
    {
      atomic_store(v1, &qword_1000DBD78);
    }
  }
}

void sub_1000488C8(uint64_t a1)
{
  if (!qword_1000DBD88)
  {
    sub_100048974(255);
    type metadata accessor for AdvertisableFeatureError();
    sub_100048E18(&qword_1000DBD80, &type metadata accessor for AdvertisableFeatureError, &protocol conformance descriptor for AdvertisableFeatureError);
    v1 = type metadata accessor for Result();
    if (!v2)
    {
      atomic_store(v1, &qword_1000DBD88);
    }
  }
}

void sub_100048974(uint64_t a1)
{
  if (!qword_1000DBD90)
  {
    type metadata accessor for AdvertisableFeaturePostCommitWorkItem();
    v1 = type metadata accessor for Array();
    if (!v2)
    {
      atomic_store(v1, &qword_1000DBD90);
    }
  }
}

uint64_t sub_1000489F0(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return v3;
}

unint64_t sub_100048A0C()
{
  result = qword_1000DBC38;
  if (!qword_1000DBC38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000DBC38);
  }

  return result;
}

uint64_t sub_100048A80(uint64_t a1)
{

  return _swift_deallocObject(v1, a1, 7);
}

void sub_100048B18(uint64_t a1)
{
  if (!qword_1000DBD98)
  {
    sub_100048C98(255, &qword_1000DBDA0, &type metadata accessor for Set);
    type metadata accessor for AdvertisableFeatureError();
    sub_100048E18(&qword_1000DBD80, &type metadata accessor for AdvertisableFeatureError, &protocol conformance descriptor for AdvertisableFeatureError);
    v1 = type metadata accessor for Result();
    if (!v2)
    {
      atomic_store(v1, &qword_1000DBD98);
    }
  }
}

uint64_t sub_100048BE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_100048C48()
{
  if (!qword_1000DB7C0)
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DB7C0);
    }
  }
}

void sub_100048C98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for AdvertisableFeatureModel();
    v7 = sub_100048E18(&qword_1000DBDA8, &type metadata accessor for AdvertisableFeatureModel, &protocol conformance descriptor for AdvertisableFeatureModel);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_100048D34(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 sub_100048D50(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_100048D64(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100048DAC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_100048DF0(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_100048E18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 sub_100048E64(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100048E78(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_100048EC0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100048F30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100039898();

  v4 = Text.init<A>(_:)();
  v25 = v5;
  v26 = v4;
  v24 = v6;
  v27 = v7;
  v28 = *(a1 + 16);
  if (*(a1 + 32))
  {

    v8 = Text.init<A>(_:)();
    v10 = v9;
    v12 = v11;
    static Color.secondary.getter();
    v13 = Text.foregroundColor(_:)();
    v15 = v14;
    v17 = v16;

    sub_1000385F4(v8, v10, v12 & 1);

    Text.monospaced(_:)();
    sub_1000385F4(v13, v15, v17 & 1);
  }

  else
  {

    v18 = Text.init<A>(_:)();
    v20 = v19;
    v22 = v21;
    static Color.secondary.getter();
    Text.foregroundColor(_:)();

    sub_1000385F4(v18, v20, v22 & 1);
  }

  _ConditionalContent<>.init(storage:)();
  *a2 = v26;
  *(a2 + 8) = v25;
  *(a2 + 16) = v24 & 1;
  *(a2 + 24) = v27;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v28;
  *(a2 + 64) = v29;
  *(a2 + 80) = v30;
  sub_1000385D8(v26, v25, v24 & 1);

  sub_1000494D8(v28, *(&v28 + 1), v29, *(&v29 + 1));
  sub_100049514(v28, *(&v28 + 1), v29, *(&v29 + 1));
  sub_1000385F4(v26, v25, v24 & 1);
}

double sub_1000491F8@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v18[0] = *v1;
  v18[1] = v3;
  v19 = *(v1 + 32);
  v4 = static VerticalAlignment.firstTextBaseline.getter();
  v17 = 1;
  sub_100048F30(v18, &v10);
  v22 = v12;
  v23 = v13;
  v24 = v14;
  v25 = v15;
  v20 = v10;
  v21 = v11;
  v27 = v15;
  v26[2] = v12;
  v26[3] = v13;
  v26[4] = v14;
  v26[0] = v10;
  v26[1] = v11;
  sub_1000492FC(&v20, &v9);
  sub_10004947C(v26);
  *&v16[39] = v22;
  *&v16[55] = v23;
  *&v16[71] = v24;
  *&v16[7] = v20;
  *&v16[23] = v21;
  v5 = *&v16[48];
  *(a1 + 49) = *&v16[32];
  *(a1 + 65) = v5;
  *(a1 + 81) = *&v16[64];
  v7 = *v16;
  result = *&v16[16];
  *(a1 + 33) = *&v16[16];
  v16[87] = v25;
  v8 = v17;
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = v8;
  *(a1 + 97) = *&v16[80];
  *(a1 + 17) = v7;
  return result;
}

uint64_t sub_1000492FC(uint64_t a1, uint64_t a2)
{
  sub_100049360(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_100049360(uint64_t a1)
{
  if (!qword_1000DBDC8)
  {
    sub_1000493B8(255);
    v1 = type metadata accessor for TupleView();
    if (!v2)
    {
      atomic_store(v1, &qword_1000DBDC8);
    }
  }
}

void sub_1000493B8(uint64_t a1)
{
  if (!qword_1000DBDD0)
  {
    sub_100049428();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1000DBDD0);
    }
  }
}

void sub_100049428()
{
  if (!qword_1000DBDD8)
  {
    v0 = type metadata accessor for _ConditionalContent();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DBDD8);
    }
  }
}

uint64_t sub_10004947C(uint64_t a1)
{
  sub_100049360(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000494D8(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_1000385D8(a1, a2, a3 & 1);
}

uint64_t sub_100049514(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_1000385F4(a1, a2, a3 & 1);
}

void sub_100049550(uint64_t a1)
{
  if (!qword_1000DBDE8)
  {
    sub_100049360(255);
    sub_1000495E4(&qword_1000DBDF0, sub_100049360, &protocol conformance descriptor for TupleView<A>);
    v1 = type metadata accessor for HStack();
    if (!v2)
    {
      atomic_store(v1, &qword_1000DBDE8);
    }
  }
}

uint64_t sub_1000495E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10004962C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_1000496A0(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void sub_100049710(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = dispatch thunk of HealthAppNotificationManager.getNotificationSettings()();
  if ([v10 authorizationStatus] == 2 || objc_msgSend(v10, "authorizationStatus") == 1)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {

      v11 = static NSNotificationName.healthAppNotificationSettingsDidChange.getter();
      v12 = [objc_opt_self() defaultCenter];
      [v12 postNotificationName:v11 object:0];

      v13 = objc_allocWithZone(type metadata accessor for PostNotificationOperation());
      v14 = v11;
      v15 = PostNotificationOperation.init(name:userInfo:)();
      sub_100048A0C();
      v16 = static NSOperationQueue.userInitiated.getter();
      [v16 addOperation:v15];
    }

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {

      sub_10009A9B8(a1 & 1);
    }

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v31 = 0;
      static Published.subscript.setter();
    }
  }

  else
  {
    static Logger.notifications.getter();
    v17 = v10;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v29 = v17;
      v21 = v20;
      v30 = swift_slowAlloc();
      v33[0] = v30;
      *v21 = 136315650;
      v22 = _typeName(_:qualified:)();
      v24 = sub_1000036D0(v22, v23, v33);

      *(v21 + 4) = v24;
      *(v21 + 12) = 2080;
      *(v21 + 14) = sub_1000036D0(0xD00000000000002FLL, 0x80000001000A70D0, v33);
      *(v21 + 22) = 2080;
      v25 = v29;
      v32 = [v29 authorizationStatus];
      type metadata accessor for UNAuthorizationStatus(0);
      v26 = String.init<A>(describing:)();
      v28 = sub_1000036D0(v26, v27, v33);

      *(v21 + 24) = v28;
      _os_log_impl(&_mh_execute_header, v18, v19, "%s %s Unexpected notification authorization status: %s", v21, 0x20u);
      swift_arrayDestroy();

      (*(v7 + 8))(v9, v6);
    }

    else
    {

      (*(v7 + 8))(v9, v6);
      v25 = v17;
    }

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v32) = 0;
      static Published.subscript.setter();
    }
  }
}

void sub_100049B5C(char a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    v4 = 3;
  }

  else
  {
    v4 = 4;
  }

  v8 = 4;
  v9 = v4;
  v7[3] = type metadata accessor for AnalyticsSender();
  v7[4] = &protocol witness table for AnalyticsSender;
  v7[0] = static AnalyticsSender.shared.getter();
  sub_10004B810();
  AnalyticsSubmitting.submit(sender:)();
  sub_100003B90(v7);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v5 = objc_allocWithZone(HKHealthStore);
    v6 = [v5 init];
    sub_100049C98(a3, v6);
  }
}

uint64_t sub_100049C44(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_100049C98(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  sub_10004BA8C(0, &unk_1000DD0E0, &type metadata accessor for TaskPriority, &type metadata accessor for Optional);
  __chkstk_darwin(v7 - 8);
  v9 = &v31 - v8;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.general.getter();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v34 = v11;
    v17 = v16;
    v18 = swift_slowAlloc();
    v35 = a2;
    v36 = v18;
    v32 = v18;
    *v17 = 136446210;
    v19 = _typeName(_:qualified:)();
    v33 = v10;
    v21 = v9;
    v22 = v3;
    v23 = v6;
    v24 = a1;
    v25 = sub_1000036D0(v19, v20, &v36);

    *(v17 + 4) = v25;
    a1 = v24;
    v6 = v23;
    v3 = v22;
    v9 = v21;
    _os_log_impl(&_mh_execute_header, v14, v15, "[%{public}s]: Checking IHR intro flow step", v17, 0xCu);
    sub_100003B90(v32);
    a2 = v35;

    (*(v34 + 8))(v13, v33);
  }

  else
  {

    (*(v11 + 8))(v13, v10);
  }

  v26 = type metadata accessor for TaskPriority();
  (*(*(v26 - 8) + 56))(v9, 1, 1, v26);
  v27 = swift_allocObject();
  v27[2] = 0;
  v27[3] = 0;
  v27[4] = a2;
  v27[5] = v3;
  v27[6] = a1;
  v27[7] = v6;
  v28 = a2;

  v29 = a1;
  sub_100084B64(0, 0, v9, &unk_1000AF140, v27);
}

uint64_t sub_100049FD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[20] = a6;
  v7[21] = a7;
  v7[18] = a4;
  v7[19] = a5;
  v8 = type metadata accessor for Logger();
  v7[22] = v8;
  v7[23] = *(v8 - 8);
  v7[24] = swift_task_alloc();
  v7[25] = swift_task_alloc();
  v7[26] = swift_task_alloc();

  return _swift_task_switch(sub_10004A0AC, 0, 0);
}

uint64_t sub_10004A0AC()
{
  v0[27] = [objc_allocWithZone(HKHealthRecordsStore) initWithHealthStore:v0[18]];
  v1 = swift_task_alloc();
  v0[28] = v1;
  *v1 = v0;
  v1[1] = sub_10004A164;

  return HKHealthRecordsStore.shouldPromptForImproveHealthRecordsDataSubmission()();
}

uint64_t sub_10004A164(char a1)
{
  *(*v1 + 290) = a1;

  return _swift_task_switch(sub_10004A264, 0, 0);
}

uint64_t sub_10004A264(uint64_t a1)
{
  v20 = v1;
  if (*(v1 + 290) == 1)
  {
    v2 = [objc_allocWithZone(HKClinicalAccountStore) initWithHealthStore:*(v1 + 144)];
    *(v1 + 232) = v2;
    *(v1 + 16) = v1;
    *(v1 + 56) = v1 + 288;
    *(v1 + 24) = sub_10004A52C;
    v3 = swift_continuation_init();
    sub_10004B938();
    *(v1 + 136) = v4;
    *(v1 + 80) = _NSConcreteStackBlock;
    *(v1 + 88) = 1107296256;
    *(v1 + 96) = sub_10004AC34;
    *(v1 + 104) = &unk_1000CE8C8;
    *(v1 + 112) = v3;
    [v2 hasAnyHealthRecordsAccountWithCompletion:v1 + 80];

    return _swift_continuation_await(v1 + 16);
  }

  else
  {
    static Logger.general.getter();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    v7 = os_log_type_enabled(v5, v6);
    v9 = *(v1 + 184);
    v8 = *(v1 + 192);
    v10 = *(v1 + 176);
    if (v7)
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v19 = v12;
      *v11 = 136446210;
      v13 = _typeName(_:qualified:)();
      v15 = sub_1000036D0(v13, v14, &v19);

      *(v11 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v5, v6, "[%{public}s]: IHR prompting is not needed, continuing to Improve Safety", v11, 0xCu);
      sub_100003B90(v12);
    }

    (*(v9 + 8))(v8, v10);
    type metadata accessor for MainActor();
    *(v1 + 280) = static MainActor.shared.getter();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_10004AB44, v17, v16);
  }
}

uint64_t sub_10004A52C()
{

  return _swift_task_switch(sub_10004A60C, 0, 0);
}

uint64_t sub_10004A60C(uint64_t a1)
{
  v35 = v1;
  if (*(v1 + 288) == 1)
  {
    static Logger.general.getter();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v1 + 208);
    v6 = *(v1 + 176);
    v7 = *(v1 + 184);
    if (v4)
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v34 = v9;
      *v8 = 136446210;
      v10 = _typeName(_:qualified:)();
      v12 = sub_1000036D0(v10, v11, &v34);

      *(v8 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v2, v3, "[%{public}s]: IHR needs prompting, presenting flow", v8, 0xCu);
      sub_100003B90(v9);
    }

    (*(v7 + 8))(v5, v6);
    v13 = *(v1 + 160);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v1 + 289) = 1;

    static Published.subscript.setter();
    *(v1 + 240) = type metadata accessor for ImprovementDataCollectionOptInViewController();
    v14 = swift_allocObject();
    *(v1 + 248) = v14;
    swift_weakInit();
    v15 = swift_allocObject();
    *(v1 + 256) = v15;
    *(v15 + 16) = v13;
    *(v15 + 24) = v14;
    type metadata accessor for MainActor();
    v16 = v13;

    *(v1 + 264) = static MainActor.shared.getter();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    v20 = sub_10004A9A4;
  }

  else
  {
    static Logger.general.getter();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    v23 = os_log_type_enabled(v21, v22);
    v24 = *(v1 + 200);
    v25 = *(v1 + 176);
    v26 = *(v1 + 184);
    if (v23)
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v34 = v28;
      *v27 = 136446210;
      v29 = _typeName(_:qualified:)();
      v31 = sub_1000036D0(v29, v30, &v34);

      *(v27 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v21, v22, "[%{public}s]: User has no accounts, not displaying IHR", v27, 0xCu);
      sub_100003B90(v28);
    }

    (*(v26 + 8))(v24, v25);
    type metadata accessor for MainActor();
    *(v1 + 272) = static MainActor.shared.getter();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v32;
    v20 = sub_10004AAD0;
  }

  return _swift_task_switch(v20, v17, v19);
}

uint64_t sub_10004A9A4()
{

  static ImprovementDataCollectionOptInViewController.present(in:completion:)();

  return _swift_task_switch(sub_10004AA4C, 0, 0);
}

uint64_t sub_10004AA4C()
{
  v1 = *(v0 + 216);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10004AAD0()
{
  v1 = *(v0 + 160);

  sub_10004AF90(v1);

  return _swift_task_switch(sub_10004BB08, 0, 0);
}

uint64_t sub_10004AB44()
{
  v1 = *(v0 + 160);

  sub_10004AF90(v1);

  return _swift_task_switch(sub_10004ABB8, 0, 0);
}

uint64_t sub_10004ABB8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10004AC34(uint64_t a1, char a2)
{
  **(*(*sub_10000BFFC((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;

  return _swift_continuation_resume();
}

uint64_t sub_10004AC90(char a1, void *a2, uint64_t a3)
{
  sub_10004BA8C(0, &unk_1000DD0E0, &type metadata accessor for TaskPriority, &type metadata accessor for Optional);
  __chkstk_darwin(v6 - 8);
  v8 = v17 - v7;
  if (a1)
  {
    v9 = 3;
  }

  else
  {
    v9 = 4;
  }

  v18 = 5;
  v19 = v9;
  v10 = type metadata accessor for AnalyticsSender();
  v11 = static AnalyticsSender.shared.getter();
  v17[3] = v10;
  v17[4] = &protocol witness table for AnalyticsSender;
  v17[0] = v11;
  sub_10004B810();
  AnalyticsSubmitting.submit(sender:)();
  sub_100003B90(v17);
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
  type metadata accessor for MainActor();
  v13 = a2;

  v14 = static MainActor.shared.getter();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = &protocol witness table for MainActor;
  v15[4] = v13;
  v15[5] = a3;
  sub_100084B64(0, 0, v8, &unk_1000AF150, v15);
}

uint64_t sub_10004AE48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  type metadata accessor for MainActor();
  v5[7] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10004AEE0, v7, v6);
}

uint64_t sub_10004AEE0()
{
  v1 = *(v0 + 40);

  [v1 dismissViewControllerAnimated:1 completion:0];
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_10004AF90(*(v0 + 40));
  }

  v2 = *(v0 + 8);

  return v2();
}

void sub_10004AF90(uint64_t a1)
{
  v60 = a1;
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v56 - v7;
  v9 = __chkstk_darwin(v6);
  v11 = &v56 - v10;
  __chkstk_darwin(v9);
  v13 = &v56 - v12;
  static Logger.general.getter();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v59 = v11;
    v17 = v16;
    v57 = swift_slowAlloc();
    v58 = v8;
    aBlock[0] = v57;
    *v17 = 136446210;
    v18 = _typeName(_:qualified:)();
    v20 = v2;
    v21 = v1;
    v22 = sub_1000036D0(v18, v19, aBlock);

    *(v17 + 4) = v22;
    v1 = v21;
    v2 = v20;
    _os_log_impl(&_mh_execute_header, v14, v15, "[%{public}s]: Checking whether to show Improve Safety view controller", v17, 0xCu);
    sub_100003B90(v57);
    v8 = v58;

    v11 = v59;
  }

  v23 = *(v2 + 8);
  v23(v13, v1);
  v24 = [objc_opt_self() sharedBehavior];
  if (!v24)
  {
    __break(1u);
    return;
  }

  v25 = v24;
  v26 = [v24 isIPhone];

  if (!v26)
  {
    static Logger.general.getter();
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      aBlock[0] = v40;
      *v39 = 136446210;
      v41 = _typeName(_:qualified:)();
      v43 = sub_1000036D0(v41, v42, aBlock);

      *(v39 + 4) = v43;
      _os_log_impl(&_mh_execute_header, v37, v38, "[%{public}s]: We only want to show Improve Safety on iPhone, continuing to notification authorization", v39, 0xCu);
      sub_100003B90(v40);

      v44 = v5;
      v45 = v1;
LABEL_17:
      v23(v44, v45);
      sub_10000EAC4();
      return;
    }

    v44 = v5;
LABEL_16:
    v45 = v1;
    goto LABEL_17;
  }

  v27 = objc_opt_self();
  if (![v27 needsRequestedPermission])
  {
    static Logger.general.getter();
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      aBlock[0] = v49;
      *v48 = 136446210;
      v50 = _typeName(_:qualified:)();
      v52 = v8;
      v53 = sub_1000036D0(v50, v51, aBlock);

      *(v48 + 4) = v53;
      _os_log_impl(&_mh_execute_header, v46, v47, "[%{public}s]: Improve Safety prompting is not needed, continuing to notification authorization", v48, 0xCu);
      sub_100003B90(v49);

      v44 = v52;
      v45 = v1;
      goto LABEL_17;
    }

    v44 = v8;
    goto LABEL_16;
  }

  static Logger.general.getter();
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v59 = v11;
    v31 = v30;
    v32 = swift_slowAlloc();
    aBlock[0] = v32;
    *v31 = 136446210;
    v33 = _typeName(_:qualified:)();
    v35 = sub_1000036D0(v33, v34, aBlock);

    *(v31 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v28, v29, "[%{public}s]: Showing Improve Safety view controller", v31, 0xCu);
    sub_100003B90(v32);

    v36 = v59;
  }

  else
  {

    v36 = v11;
  }

  v23(v36, v1);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(aBlock[0]) = 1;

  static Published.subscript.setter();
  v54 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_10004B808;
  aBlock[5] = v54;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100049C44;
  aBlock[3] = &unk_1000CE878;
  v55 = _Block_copy(aBlock);

  [v27 presentInViewController:v60 completion:v55];
  _Block_release(v55);
}

uint64_t sub_10004B66C(char a1, uint64_t a2)
{
  if (a1)
  {
    v2 = 3;
  }

  else
  {
    v2 = 4;
  }

  v5 = 6;
  v6 = v2;
  v4[3] = type metadata accessor for AnalyticsSender();
  v4[4] = &protocol witness table for AnalyticsSender;
  v4[0] = static AnalyticsSender.shared.getter();
  sub_10004B810();
  AnalyticsSubmitting.submit(sender:)();
  sub_100003B90(v4);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10000EAC4();
  }

  return result;
}

uint64_t sub_10004B720()
{
  v1 = OBJC_IVAR____TtC6Health16IntroFlowManager__isPresentingContent;
  sub_10000C98C(0, &qword_1000DD100, &type metadata for Bool, &type metadata accessor for Published);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

unint64_t sub_10004B810()
{
  result = qword_1000DD540;
  if (!qword_1000DD540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DD540);
  }

  return result;
}

uint64_t sub_10004B864(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100018D6C;

  return sub_100049FD0(a1, v4, v5, v6, v7, v9, v8);
}

void sub_10004B938()
{
  if (!qword_1000DBF68)
  {
    v0 = type metadata accessor for UnsafeContinuation();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DBF68);
    }
  }
}

uint64_t sub_10004B9CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10004BB0C;

  return sub_10004AE48(a1, v4, v5, v7, v6);
}

void sub_10004BA8C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for HKKeyValueDataSource(uint64_t a1)
{
  result = qword_1000DBF80;
  if (!qword_1000DBF80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10004BBA0(uint64_t a1, unsigned __int8 a2)
{
  String.hash(into:)();
}

uint64_t sub_10004BCEC(uint64_t a1, unsigned __int8 a2)
{
  String.hash(into:)();
}

Swift::Int sub_10004BE64(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_10004BFA4(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

id sub_10004C104(char a1)
{
  v2 = [objc_allocWithZone(HKHealthStore) init];
  v3 = [objc_opt_self() *off_1000CEC70[a1]];

  return v3;
}

uint64_t sub_10004C17C(char a1)
{
  if ((a1 - 2) > 4u)
  {
    return 0;
  }

  else
  {
    return static String._unconditionallyBridgeFromObjectiveC(_:)();
  }
}

uint64_t sub_10004C1C8(char a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004EBD8(0, &qword_1000DB158, &type metadata accessor for Date, &type metadata accessor for Optional);
  __chkstk_darwin(v6 - 8);
  v8 = v44 - v7;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 - 2 >= 3)
  {
    if (a1 == 5)
    {
      v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v26;
      v19 = sub_10004C104(5);
      v28._countAndFlagsBits = v25;
      v28._object = v27;
      v47 = HKKeyValueDomain.integer(for:)(v28);
      if (!v29)
      {
        is_nil = v47.is_nil;
        value = v47.value;

        if (is_nil)
        {
          return 0;
        }

        v24 = value;
        if (value <= 1)
        {
          if (!value)
          {
            return 0x656C706D6F636E49;
          }

LABEL_23:
          if (v24 == 1)
          {
            return 0x6574656C706D6F43;
          }

          return 6369134;
        }

LABEL_25:
        if (v24 == 2)
        {
          return 0x657373696D736944;
        }

        if (v24 == 3)
        {
          return 0xD000000000000012;
        }

        return 6369134;
      }
    }

    else
    {
      if (a1 != 6)
      {
        return 0;
      }

      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;
      v19 = sub_10004C104(6);
      v20._countAndFlagsBits = v16;
      v20._object = v18;
      v46 = HKKeyValueDomain.integer(for:)(v20);
      if (!v21)
      {
        v22 = v46.is_nil;
        v23 = v46.value;

        if (!v22)
        {
          v24 = v23;
          if (v23 <= 1)
          {
            if (!v23)
            {
              return 0x656C706D6F636E49;
            }

            goto LABEL_23;
          }

          goto LABEL_25;
        }

        return 0;
      }
    }

    static Logger.view.getter();
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 136315138;
      v44[1] = &type metadata for HKKeyValueDataSource.Identifier;
      v45 = v33;
      sub_10004EB90();
      v34 = String.init<A>(describing:)();
      v36 = sub_1000036D0(v34, v35, &v45);

      *(v32 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v30, v31, "[%s] Could not get kvdomain value", v32, 0xCu);
      sub_100003B90(v33);
    }

    (*(v3 + 8))(v5, v2);
    return 0;
  }

  v44[0] = v5;
  v13 = sub_10004C104(a1);
  result = sub_10004C17C(a1);
  if (v15)
  {
    HKKeyValueDomain.date(for:)();

    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      sub_100015978(v8);
      return 0;
    }

    (*(v10 + 32))(v12, v8, v9);
    v37 = [objc_allocWithZone(NSDateFormatter) init];
    v38 = String._bridgeToObjectiveC()();
    [v37 setDateFormat:v38];

    isa = Date._bridgeToObjectiveC()().super.isa;
    v40 = [v37 stringFromDate:isa];

    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v10 + 8))(v12, v9);
    return v41;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10004C7A0(void *a1)
{
  if (a1 <= 1u)
  {
    v21 = v1;
    v22 = v2;
    if (a1)
    {
      v10 = objc_opt_self();
      v11 = [objc_allocWithZone(HKHealthStore) init];
      v5 = [v10 healthArticlesDefaultsDomainWithHealthStore:v11];

      v12 = swift_allocObject();
      *(v12 + 16) = 1;
      *(v12 + 24) = v5;
      v19 = sub_10004EADC;
      v20 = v12;
      v15 = _NSConcreteStackBlock;
      v16 = 1107296256;
      v7 = &unk_1000CEA78;
    }

    else
    {
      v3 = objc_opt_self();
      v4 = [objc_allocWithZone(HKHealthStore) init];
      v5 = [v3 healthArticlesDefaultsDomainWithHealthStore:v4];

      v6 = swift_allocObject();
      *(v6 + 16) = 0;
      *(v6 + 24) = v5;
      v19 = sub_10004EB04;
      v20 = v6;
      v15 = _NSConcreteStackBlock;
      v16 = 1107296256;
      v7 = &unk_1000CEAC8;
    }

    v17 = sub_10004CDEC;
    v18 = v7;
    v13 = _Block_copy(&v15);
    v14 = v5;

    [v14 allValuesWithCompletion:{v13, v15, v16}];
    _Block_release(v13);
  }

  else if (a1 - 2 >= 3)
  {
    if (a1 == 5)
    {
      v8 = 0;
      v9 = 5;
    }

    else
    {
      v8 = 1;
      v9 = 6;
    }

    sub_10004C9FC(v8, v9);
  }

  else
  {

    sub_10004CB50(a1);
  }
}

void sub_10004C9FC(uint64_t a1, char a2)
{
  if ((a2 - 2) <= 4u)
  {
    v11[12] = v2;
    v11[13] = v3;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = sub_10004C104(a2);
    isa = Int._bridgeToObjectiveC()().super.super.isa;
    v8 = String._bridgeToObjectiveC()();

    v9 = swift_allocObject();
    *(v9 + 16) = a1;
    v11[4] = sub_10004EB88;
    v11[5] = v9;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 1107296256;
    v11[2] = sub_1000099BC;
    v11[3] = &unk_1000CEBB8;
    v10 = _Block_copy(v11);

    [v6 setNumber:isa forKey:v8 completion:v10];
    _Block_release(v10);
  }
}

id sub_10004CB50(id result)
{
  if ((result - 2) <= 4u)
  {
    v1 = result;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v2 = sub_10004C104(v1);
    v3 = String._bridgeToObjectiveC()();

    v7 = 0;
    v4 = [v2 setDate:0 forKey:v3 error:&v7];

    v5 = v7;
    if (v4)
    {

      return v5;
    }

    else
    {
      v6 = v7;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  return result;
}

void sub_10004CCA0(uint64_t a1, void *a2, char a3)
{
  if (*(a1 + 16))
  {

    v6 = sub_10004D268(1, a1);
    v7 = String._bridgeToObjectiveC()();

    v8 = swift_allocObject();
    *(v8 + 16) = a3;
    *(v8 + 24) = v6;
    *(v8 + 32) = a2;
    v11[4] = sub_10004EB3C;
    v11[5] = v8;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 1107296256;
    v11[2] = sub_1000099BC;
    v11[3] = &unk_1000CEB18;
    v9 = _Block_copy(v11);
    v10 = a2;

    [v10 setDate:0 forKey:v7 completion:v9];
    _Block_release(v9);
  }
}

uint64_t sub_10004CDEC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

uint64_t sub_10004CE98(uint64_t result, uint64_t a2, char a3, void *a4, uint64_t a5)
{
  if (result)
  {
    v5 = result;
    v6 = *(result + 16);
    v7 = _swiftEmptyArrayStorage;
    if (v6)
    {
      v51 = _swiftEmptyArrayStorage;
      sub_10007C57C(0, v6, 0);
      v7 = _swiftEmptyArrayStorage;
      v8 = v5 + 64;
      result = _HashTable.startBucket.getter();
      v9 = result;
      v10 = 0;
      v42 = v6;
      while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(v5 + 32))
      {
        v12 = v9 >> 6;
        if ((*(v8 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
        {
          goto LABEL_38;
        }

        v43 = *(v5 + 36);
        v13 = (*(v5 + 48) + 16 * v9);
        v15 = *v13;
        v14 = v13[1];
        sub_100003B34(*(v5 + 56) + 32 * v9, v50);
        *&v46 = v15;
        *(&v46 + 1) = v14;
        sub_10004EB2C(v50, v47);
        v45[0] = v47[0];
        v45[1] = v47[1];
        v16 = v46;

        result = sub_100003B90(v45);
        v51 = v7;
        v17 = v7;
        v18 = v7[2];
        v19 = v17[3];
        if (v18 >= v19 >> 1)
        {
          result = sub_10007C57C((v19 > 1), v18 + 1, 1);
          v17 = v51;
        }

        v17[2] = v18 + 1;
        *&v17[2 * v18 + 4] = v16;
        v11 = 1 << *(v5 + 32);
        if (v9 >= v11)
        {
          goto LABEL_39;
        }

        v8 = v5 + 64;
        v20 = *(v5 + 64 + 8 * v12);
        if ((v20 & (1 << v9)) == 0)
        {
          goto LABEL_40;
        }

        v7 = v17;
        if (v43 != *(v5 + 36))
        {
          goto LABEL_41;
        }

        v21 = v20 & (-2 << (v9 & 0x3F));
        if (v21)
        {
          v11 = __clz(__rbit64(v21)) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v22 = v12 << 6;
          v23 = v12 + 1;
          v24 = (v5 + 72 + 8 * v12);
          while (v23 < (v11 + 63) >> 6)
          {
            v26 = *v24++;
            v25 = v26;
            v22 += 64;
            ++v23;
            if (v26)
            {
              result = sub_10000F210(v9, v43, 0);
              v11 = __clz(__rbit64(v25)) + v22;
              goto LABEL_5;
            }
          }

          result = sub_10000F210(v9, v43, 0);
        }

LABEL_5:
        ++v10;
        v9 = v11;
        if (v10 == v42)
        {
          goto LABEL_20;
        }
      }

LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
    }

    else
    {
LABEL_20:
      v27 = v7[2];
      if (v27)
      {
        v28 = 0;
        v29 = v7 + 5;
        v30 = _swiftEmptyArrayStorage;
        do
        {
          v44 = v30;
          v31 = &v29[2 * v28];
          v32 = v28;
          while (1)
          {
            if (v32 >= v7[2])
            {
              __break(1u);
              goto LABEL_37;
            }

            v33 = *(v31 - 1);
            v34 = *v31;
            v28 = v32 + 1;
            v48 = v33;
            v49 = v34;
            *&v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            *(&v46 + 1) = v35;
            sub_100039898();

            v36 = StringProtocol.contains<A>(_:)();

            if (v36)
            {
              break;
            }

            v31 += 2;
            ++v32;
            if (v27 == v28)
            {
              v30 = v44;
              goto LABEL_34;
            }
          }

          v30 = v44;
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_10007C57C(0, v44[2] + 1, 1);
            v30 = v44;
          }

          v38 = v30[2];
          v37 = v30[3];
          if (v38 >= v37 >> 1)
          {
            result = sub_10007C57C((v37 > 1), v38 + 1, 1);
            v30 = v44;
          }

          v30[2] = v38 + 1;
          v39 = &v30[2 * v38];
          v39[4] = v33;
          v39[5] = v34;
          v29 = v7 + 5;
        }

        while (v27 - 1 != v32);
      }

      else
      {
        v30 = _swiftEmptyArrayStorage;
      }

LABEL_34:

      sub_10004CCA0(v30, a4, a3);
    }
  }

  return result;
}

uint64_t sub_10004D268(uint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) == 0)
  {
    v2 = a2;
    v3 = result;
    if (result)
    {
      v4 = *(a2 + 16);
      if (v4)
      {
        v5 = 0;
        v6 = 0;
        v7 = a2 + 40;
        v31 = *(a2 + 16);
        v27 = v4 - 1;
        v8 = _swiftEmptyArrayStorage;
        v30 = _swiftEmptyArrayStorage;
        v28 = a2 + 40;
        while (1)
        {
          v29 = v6;
          v9 = (v7 + 16 * v5);
          while (1)
          {
            if (v5 >= *(v2 + 16))
            {
              __break(1u);
              goto LABEL_32;
            }

            v10 = *(v9 - 1);
            v11 = *v9;
            v12 = v5 + 1;
            v13 = v8[2];
            if (v13 >= v3)
            {
              break;
            }

            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = sub_10007C57C(0, v13 + 1, 1);
            }

            v15 = v8[2];
            v14 = v8[3];
            if (v15 >= v14 >> 1)
            {
              result = sub_10007C57C((v14 > 1), v15 + 1, 1);
            }

            v8[2] = v15 + 1;
            v16 = &v8[2 * v15];
            v16[4] = v10;
            v16[5] = v11;
            v9 += 2;
            v5 = v12;
            if (v31 == v12)
            {
              goto LABEL_29;
            }
          }

          if (v29 >= v13)
          {
            goto LABEL_33;
          }

          v17 = &v8[2 * v29];
          v18 = v17[5];
          v25 = v17[4];

          v26 = v18;

          v19 = v30;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_10007C57C(0, v30[2] + 1, 1);
            v19 = v30;
          }

          v21 = v19[2];
          v20 = v19[3];
          if (v21 >= v20 >> 1)
          {
            sub_10007C57C((v20 > 1), v21 + 1, 1);
            v19 = v30;
          }

          v19[2] = v21 + 1;
          v30 = v19;
          v22 = &v19[2 * v21];
          v22[4] = v25;
          v22[5] = v26;
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_100033BA8(v8);
            v8 = result;
          }

          v7 = v28;
          if (v29 >= v8[2])
          {
            goto LABEL_34;
          }

          v23 = &v8[2 * v29];
          v23[4] = v10;
          v23[5] = v11;

          if ((v29 + 1) < v3)
          {
            v6 = v29 + 1;
          }

          else
          {
            v6 = 0;
          }

          if (v27 == v5++)
          {
            goto LABEL_29;
          }
        }
      }

      v30 = _swiftEmptyArrayStorage;
LABEL_29:

      return v30;
    }

    return v2;
  }

LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

void sub_10004D4C4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void *a5)
{
  if (*(a4 + 16))
  {

    v8 = sub_10004D268(1, a4);
    v9 = String._bridgeToObjectiveC()();

    v10 = swift_allocObject();
    *(v10 + 16) = a3;
    *(v10 + 24) = v8;
    *(v10 + 32) = a5;
    v13[4] = sub_10004EF24;
    v13[5] = v10;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 1107296256;
    v13[2] = sub_1000099BC;
    v13[3] = &unk_1000CEB68;
    v11 = _Block_copy(v13);
    v12 = a5;

    [v12 setDate:0 forKey:v9 completion:v11];
    _Block_release(v11);
  }
}

uint64_t sub_10004D610(char a1, ValueMetadata *a2, ValueMetadata *a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v40 - v11;
  if (a2 || (a1 & 1) == 0)
  {
    static Logger.plugin.getter();
    swift_errorRetain();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 136315650;
      v42 = &type metadata for HKKeyValueDataSource.Identifier;
      v43 = v28;
      sub_10004EB90();
      v29 = String.init<A>(describing:)();
      v31 = sub_1000036D0(v29, v30, &v43);
      v41 = v6;
      v32 = v31;

      *(v27 + 4) = v32;
      *(v27 + 12) = 2080;
      v42 = a3;
      type metadata accessor for HKEmergencyOnboardingStatus(0);
      v33 = String.init<A>(describing:)();
      v35 = sub_1000036D0(v33, v34, &v43);

      *(v27 + 14) = v35;
      *(v27 + 22) = 2080;
      v42 = a2;
      swift_errorRetain();
      sub_10004EBD8(0, &qword_1000DD580, sub_100008C14, &type metadata accessor for Optional);
      v36 = String.init<A>(describing:)();
      v38 = sub_1000036D0(v36, v37, &v43);

      *(v27 + 24) = v38;
      _os_log_impl(&_mh_execute_header, v25, v26, "[%s] Could not set emergency onboarding status to %s: %s", v27, 0x20u);
      swift_arrayDestroy();

      return (*(v7 + 8))(v10, v41);
    }

    v23 = *(v7 + 8);
    v24 = v10;
  }

  else
  {
    static Logger.plugin.getter();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 136315394;
      v42 = &type metadata for HKKeyValueDataSource.Identifier;
      v43 = v16;
      sub_10004EB90();
      v17 = String.init<A>(describing:)();
      v19 = sub_1000036D0(v17, v18, &v43);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2080;
      v42 = a3;
      type metadata accessor for HKEmergencyOnboardingStatus(0);
      v20 = String.init<A>(describing:)();
      v22 = sub_1000036D0(v20, v21, &v43);

      *(v15 + 14) = v22;
      _os_log_impl(&_mh_execute_header, v13, v14, "[%s] Set emergency onboarding status to %s", v15, 0x16u);
      swift_arrayDestroy();
    }

    v23 = *(v7 + 8);
    v24 = v12;
  }

  return v23(v24, v6);
}