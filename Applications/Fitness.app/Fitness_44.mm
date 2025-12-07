unint64_t sub_1004F6630()
{
  result = qword_1008E53E0;
  if (!qword_1008E53E0)
  {
    sub_1000059F8(255, &qword_1008E1750, NSNumber_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E53E0);
  }

  return result;
}

uint64_t sub_1004F66C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  static Axis.Set.vertical.getter();
  sub_100140278(&qword_1008F0C78, &qword_1006F6160);
  sub_1004F716C();
  return ScrollView.init(_:showsIndicators:content:)();
}

__n128 sub_1004F6750@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v22 = a4;
  v25 = a5;
  v7 = sub_100140278(&qword_1008F0C88, &qword_1006F6168);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v22 - v9;
  v11 = sub_100140278(&qword_1008F0CA0, &qword_1006F6178);
  v23 = *(v11 - 8);
  v24 = v11;
  __chkstk_darwin(v11);
  v13 = &v22 - v12;
  v14 = static HorizontalAlignment.center.getter();
  v28 = 0;
  sub_1004F6B4C(a1, a2, v31);
  memcpy(v29, v31, 0x119uLL);
  memcpy(v30, v31, 0x119uLL);
  sub_10001B104(v29, v26, &qword_1008F0CA8, &qword_1006F6180);
  sub_10000EA04(v30, &qword_1008F0CA8, &qword_1006F6180);
  memcpy(&v27[7], v29, 0x119uLL);
  *v26 = v14;
  *&v26[8] = 0;
  v26[16] = v28;
  memcpy(&v26[17], v27, 0x120uLL);
  v15 = sub_100140278(&qword_1008F0C90, &qword_1006F6170);
  v16 = sub_10014A6B0(&qword_1008F0C98, &qword_1008F0C90, &qword_1006F6170, &protocol conformance descriptor for VStack<A>);
  View.scrollContentBackground(_:)();
  memcpy(v31, v26, 0x131uLL);
  sub_10000EA04(v31, &qword_1008F0C90, &qword_1006F6170);
  static Edge.Set.horizontal.getter();
  *v26 = v15;
  *&v26[8] = v16;
  swift_getOpaqueTypeConformance2();
  View.scenePadding(_:)();
  (*(v8 + 8))(v10, v7);
  GeometryProxy.size.getter();
  GeometryProxy.size.getter();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v17 = v25;
  (*(v23 + 32))(v25, v13, v24);
  v18 = v17 + *(sub_100140278(&qword_1008F0C78, &qword_1006F6160) + 36);
  v19 = *&v26[80];
  *(v18 + 64) = *&v26[64];
  *(v18 + 80) = v19;
  *(v18 + 96) = *&v26[96];
  v20 = *&v26[16];
  *v18 = *v26;
  *(v18 + 16) = v20;
  result = *&v26[48];
  *(v18 + 32) = *&v26[32];
  *(v18 + 48) = result;
  return result;
}

uint64_t sub_1004F6B4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (a2)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    v5 = *(v69[0] + 16);

    type metadata accessor for ActivitySharingFriendListDataProvider(0);
    sub_1004F72AC(&qword_1008DC038, type metadata accessor for ActivitySharingFriendListDataProvider, &unk_1006D8268);
    v37 = EnvironmentObject.init()();
    v44 = v6;
    type metadata accessor for ActivitySharingNavigationCoordinator();
    sub_1004F72AC(&qword_1008DC018, type metadata accessor for ActivitySharingNavigationCoordinator, &unk_1006E8E38);
    v38 = EnvironmentObject.init()();
    v43 = v7;
    v8 = static Edge.Set.all.getter();
    LOBYTE(v69[0]) = 0;
    if (v5)
    {
      type metadata accessor for ReachableContactsDataSource(0);
      sub_1004F72AC(&qword_1008DC048, type metadata accessor for ReachableContactsDataSource, &unk_100703518);

      v9 = EnvironmentObject.init()();
      v5 = v10;
      v11 = static Edge.Set.all.getter();
      EdgeInsets.init(_all:)();
      v41 = v13;
      v42 = v12;
      v39 = v15;
      v40 = v14;
      LOBYTE(v69[0]) = 0;
      v16 = v11;
    }

    else
    {
      v9 = 0;
      a1 = 0;
      v16 = 0;
      v41 = 0;
      v42 = 0;
      v39 = 0;
      v40 = 0;
    }

    v17 = static Edge.Set.top.getter();
    EdgeInsets.init(_all:)();
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v84 = 0;
    v26 = static Edge.Set.horizontal.getter();
    EdgeInsets.init(_all:)();
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v85 = 0;
    *&v53 = v37;
    *(&v53 + 1) = v44;
    *&v54 = v38;
    *(&v54 + 1) = v43;
    v55[0] = v8;
    *&v55[1] = v86[0];
    *&v55[4] = *(v86 + 3);
    *&v55[8] = xmmword_1006E6740;
    *&v55[24] = xmmword_1006D46A0;
    v55[40] = 0;
    *(&__src[3] + 9) = *&v55[25];
    __src[2] = *v55;
    __src[3] = *&v55[16];
    __src[0] = v53;
    __src[1] = v54;
    *&v56 = v9;
    *(&v56 + 1) = v5;
    *&v57 = a1;
    *(&v57 + 1) = v16;
    *&v58 = v42;
    *(&v58 + 1) = v41;
    *&v59 = v40;
    *(&v59 + 1) = v39;
    v60 = 0;
    LOBYTE(__src[9]) = 0;
    __src[7] = v58;
    __src[8] = v59;
    __src[5] = v56;
    __src[6] = v57;
    *&v61 = 0x403E000000000000;
    *(&v61 + 1) = 0xD00000000000001DLL;
    *&v62 = 0x800000010074F390;
    BYTE8(v62) = v17;
    *&v63 = v19;
    *(&v63 + 1) = v21;
    *&v64 = v23;
    *(&v64 + 1) = v25;
    LOBYTE(v65) = 0;
    BYTE8(v65) = v26;
    *&v66 = v27;
    *(&v66 + 1) = v29;
    *&v67 = v31;
    *(&v67 + 1) = v33;
    v68 = 0;
    *(&__src[12] + 8) = v64;
    *(&__src[11] + 8) = v63;
    *(&__src[10] + 8) = v62;
    *(&__src[9] + 8) = v61;
    BYTE8(__src[16]) = 0;
    *(&__src[15] + 8) = v67;
    *(&__src[14] + 8) = v66;
    *(&__src[13] + 8) = v65;
    v51 = 1;
    memcpy(a4, __src, 0x110uLL);
    *(a4 + 272) = 0;
    *(a4 + 280) = 1;
    v69[0] = 0x403E000000000000;
    v69[1] = 0xD00000000000001DLL;
    v69[2] = 0x800000010074F390;
    v70 = v17;
    v71 = v19;
    v72 = v21;
    v73 = v23;
    v74 = v25;
    v75 = 0;
    v76 = v26;
    v77 = v28;
    v78 = v30;
    v79 = v32;
    v80 = v34;
    v81 = 0;
    sub_10001B104(&v53, v45, &qword_1008F0CB0, &qword_1006F61D0);
    sub_10001B104(&v56, v45, &qword_1008F0CB8, &qword_1006F61D8);
    sub_10001B104(&v61, v45, &qword_1008F0CC0, &qword_1006F61E0);
    sub_10000EA04(v69, &qword_1008F0CC0, &qword_1006F61E0);
    v82[0] = v9;
    v82[1] = v5;
    v82[2] = a1;
    v82[3] = v16;
    v82[4] = v42;
    v82[5] = v41;
    v82[6] = v40;
    v82[7] = v39;
    v83 = 0;
    sub_10000EA04(v82, &qword_1008F0CB8, &qword_1006F61D8);
    v45[0] = v37;
    v45[1] = v44;
    v45[2] = v38;
    v45[3] = v43;
    v46 = v8;
    *v47 = v86[0];
    *&v47[3] = *(v86 + 3);
    v48 = xmmword_1006E6740;
    v49 = xmmword_1006D46A0;
    v50 = 0;
    return sub_10000EA04(v45, &qword_1008F0CB0, &qword_1006F61D0);
  }

  else
  {
    type metadata accessor for ReachableContactsDataSource(0);
    sub_1004F72AC(&qword_1008DC048, type metadata accessor for ReachableContactsDataSource, &unk_100703518);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

double sub_1004F70D8@<D0>(uint64_t (**a1)(uint64_t a1)@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = swift_allocObject();
  *(v6 + 2) = v3;
  *(v6 + 3) = v4;
  *(v6 + 4) = v5;
  *a1 = sub_1004F7154;
  a1[1] = v6;

  return result;
}

unint64_t sub_1004F716C()
{
  result = qword_1008F0C80;
  if (!qword_1008F0C80)
  {
    sub_100141EEC(&qword_1008F0C78, &qword_1006F6160);
    sub_100141EEC(&qword_1008F0C88, &qword_1006F6168);
    sub_100141EEC(&qword_1008F0C90, &qword_1006F6170);
    sub_10014A6B0(&qword_1008F0C98, &qword_1008F0C90, &qword_1006F6170, &protocol conformance descriptor for VStack<A>);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F0C80);
  }

  return result;
}

uint64_t sub_1004F72AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1004F72F4(void *a1, __n128 a2)
{
  v101 = type metadata accessor for ImpressionMetrics.ID();
  v4 = *(v101 - 8);
  __chkstk_darwin(v101);
  v100 = &v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ImpressionMetrics();
  v106 = *(v6 - 8);
  __chkstk_darwin(v6);
  v110 = &v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v109 = &v92 - v9;
  __chkstk_darwin(v10);
  v105 = &v92 - v11;
  __chkstk_darwin(v12);
  v99 = &v92 - v13;
  v14 = type metadata accessor for ScalarDictionary();
  __chkstk_darwin(v14 - 8);
  v98 = &v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = type metadata accessor for MetricClickElement();
  v16 = *(v103 - 8);
  __chkstk_darwin(v103);
  v97 = &v92 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100140278(&qword_1008E9A30, &unk_1006F50F0);
  __chkstk_darwin(v18 - 8);
  v122 = &v92 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v104 = &v92 - v21;
  __chkstk_darwin(v22);
  v24 = &v92 - v23;
  __chkstk_darwin(v25);
  v118 = &v92 - v26;
  v27 = type metadata accessor for IndexPath();
  v129 = *(v27 - 8);
  __chkstk_darwin(v27);
  v114 = &v92 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v31 = &v92 - v30;
  swift_beginAccess();
  *(v2 + 40) = &_swiftEmptyDictionarySingleton;

  swift_beginAccess();
  *(v2 + 48) = &_swiftEmptyDictionarySingleton;

  v117 = v2;
  sub_1004F941C();
  ImpressionsCalculator.removeAllElements()();

  v132 = a1;
  result = [a1 indexPathsForVisibleRows];
  if (!result)
  {
    return result;
  }

  v33 = result;
  v34 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v130 = v34;
  v35 = *(v34 + 16);
  v36 = v118;
  v127 = v35;
  if (!v35)
  {
  }

  v37 = 0;
  v126 = v130 + ((*(v129 + 80) + 32) & ~*(v129 + 80));
  v131 = v129 + 16;
  v102 = enum case for MetricClickElement.swoosh(_:);
  v94 = (v16 + 104);
  v116 = (v106 + 56);
  v111 = (v106 + 8);
  v93 = (v4 + 8);
  v121 = (v106 + 48);
  v113 = (v106 + 32);
  v107 = (v106 + 16);
  v38 = (v129 + 8);
  v96 = v106 + 40;
  v112 = v24;
  v124 = v31;
  v115 = v6;
  v108 = v27;
  v123 = (v129 + 8);
  while (v37 < *(v130 + 16))
  {
    v128 = *(v129 + 72);
    v39 = *(v129 + 16);
    v39(v31, v126 + v128 * v37, v27);
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v41 = [v132 cellForRowAtIndexPath:isa];

    if (!v41)
    {
      goto LABEL_5;
    }

    v125 = v39;
    swift_getObjectType();
    v42 = swift_conformsToProtocol2();
    if (!v42)
    {

      v38 = v123;
LABEL_5:
      (*v38)(v31, v27);
      goto LABEL_6;
    }

    v43 = v42;
    v44 = IndexPath.section.getter();
    if (v44 > 5)
    {
      v38 = v123;
      (*v123)(v31, v27);
    }

    else
    {
      if (v44 == 2)
      {
        sub_100145788(2);
        v119 = v84;
        v120 = *v94;
        v85 = v97;
        v120(v97, v102, v103);
        static MetricConstants.itemIdentifierType.getter();
        sub_1002FC244(_swiftEmptyArrayStorage);
        ScalarDictionary.init()();
        ImpressionMetrics.init(parentId:elementId:name:clickElement:index:idType:additionalFields:custom:)();
        v45 = *v116;
        v46 = v115;
        (*v116)(v118, 0, 1, v115);
        v119 = sub_100145788(2);
        v95 = v86;
        v120(v85, v102, v103);
        static MetricConstants.itemIdentifierType.getter();
        sub_1002FC244(_swiftEmptyArrayStorage);
        ScalarDictionary.init()();
        v24 = v112;
        v87 = v99;
        v31 = v124;
        ImpressionMetrics.init(parentId:elementId:name:clickElement:index:idType:additionalFields:custom:)();
        v88 = v100;
        ImpressionMetrics.id.getter();
        (*v111)(v87, v46);
        v119 = ImpressionMetrics.ID.element.getter();
        v120 = v89;
        v90 = v88;
        v36 = v118;
        (*v93)(v90, v101);
      }

      else
      {
        v45 = *v116;
        v46 = v115;
        (*v116)(v36, 1, 1, v115);
        v119 = 0;
        v120 = 0;
      }

      sub_1004F979C(v36, v24);
      v47 = *v121;
      if ((*v121)(v24, 1, v46) == 1)
      {
        sub_10000EA04(v24, &qword_1008E9A30, &unk_1006F50F0);
      }

      else
      {
        v48 = v105;
        (*v113)(v105, v24, v46);
        [v132 rectForSection:IndexPath.section.getter()];
        v49 = IndexPath.section.getter();
        v50 = v104;
        (*v107)(v104, v48, v46);
        v45(v50, 0, 1, v46);
        swift_beginAccess();
        sub_100559CDC(v50, v49);
        swift_endAccess();

        ImpressionsCalculator.addElement(_:at:)();

        v51 = v48;
        v31 = v124;
        (*v111)(v51, v46);
      }

      v52 = v46;
      ObjectType = swift_getObjectType();
      v54 = IndexPath.row.getter();
      v55 = v122;
      (*(v43 + 16))(v119, v120, v54, ObjectType, v43);

      v56 = v47(v55, 1, v52);
      v27 = v108;
      if (v56 == 1)
      {

        v36 = v118;
        sub_10000EA04(v118, &qword_1008E9A30, &unk_1006F50F0);
        v38 = v123;
        (*v123)(v31, v27);
        sub_10000EA04(v122, &qword_1008E9A30, &unk_1006F50F0);
        v24 = v112;
      }

      else
      {
        v57 = v52;
        v58 = *v113;
        v59 = v109;
        (*v113)(v109, v122, v57);
        v60 = IndexPath._bridgeToObjectiveC()().super.isa;
        [v132 rectForRowAtIndexPath:v60];

        v61 = v31;
        v62 = v114;
        v125(v114, v61, v27);
        v63 = v117;
        swift_beginAccess();
        (*v107)(v110, v59, v57);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v133 = *(v63 + 48);
        v65 = v133;
        *(v63 + 48) = 0x8000000000000000;
        v66 = sub_1004C5CD4(v62);
        v68 = v65[2];
        v69 = (v67 & 1) == 0;
        v70 = __OFADD__(v68, v69);
        v71 = v68 + v69;
        if (v70)
        {
          goto LABEL_34;
        }

        v72 = v67;
        if (v65[3] >= v71)
        {
          v31 = v124;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v91 = v66;
            sub_1004932C0();
            v66 = v91;
          }
        }

        else
        {
          sub_100489A48(v71, isUniquelyReferenced_nonNull_native);
          v66 = sub_1004C5CD4(v114);
          v31 = v124;
          if ((v72 & 1) != (v73 & 1))
          {
            goto LABEL_36;
          }
        }

        v74 = v115;
        v75 = v133;
        v76 = v123;
        if (v72)
        {
          (*(v106 + 40))(v133[7] + *(v106 + 72) * v66, v110, v115);
          v77 = *v76;
          (*v76)(v114, v27);
          v78 = v27;
        }

        else
        {
          v133[(v66 >> 6) + 8] |= 1 << v66;
          v79 = v66;
          v80 = v114;
          v125(v75[6] + v66 * v128, v114, v27);
          v58((v75[7] + *(v106 + 72) * v79), v110, v74);
          v77 = *v76;
          (*v76)(v80, v27);
          v81 = v75[2];
          v70 = __OFADD__(v81, 1);
          v82 = v81 + 1;
          if (v70)
          {
            goto LABEL_35;
          }

          v75[2] = v82;
          v78 = v27;
          v31 = v124;
        }

        *(v117 + 48) = v75;

        swift_endAccess();

        v83 = v109;
        ImpressionsCalculator.addElement(_:at:)();

        (*v111)(v83, v74);
        v36 = v118;
        sub_10000EA04(v118, &qword_1008E9A30, &unk_1006F50F0);
        v77(v31, v78);
        v24 = v112;
        v27 = v78;
        v38 = v123;
      }
    }

LABEL_6:
    if (v127 == ++v37)
    {
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_1004F8250(void *a1)
{
  v2 = v1;
  v79 = a1;
  v72 = sub_100140278(&qword_1008F00E0, qword_1006F5100);
  __chkstk_darwin(v72);
  v71 = &v70 - v3;
  v4 = sub_100140278(&qword_1008E9A30, &unk_1006F50F0);
  __chkstk_darwin(v4 - 8);
  v70 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v73 = &v70 - v7;
  v75 = sub_100140278(&qword_1008F0DD8, qword_1006F6278);
  __chkstk_darwin(v75);
  v78 = (&v70 - v8);
  swift_beginAccess();
  v9 = *(v1 + 40);
  v12 = *(v9 + 64);
  v11 = v9 + 64;
  v10 = v12;
  v13 = 1 << *(*(v1 + 40) + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;
  v77 = *(v1 + 40);
  swift_bridgeObjectRetain_n();
  v17 = 0;
  v80 = v1;
  while (v15)
  {
LABEL_11:
    v19 = __clz(__rbit64(v15)) | (v17 << 6);
    v20 = *(v77 + 56);
    v21 = *(*(v77 + 48) + 8 * v19);
    v22 = type metadata accessor for ImpressionMetrics();
    v23 = *(v22 - 8);
    v76 = *(v23 + 72);
    v24 = v20 + v76 * v19;
    v25 = *(v75 + 48);
    v26 = v78;
    (*(v23 + 16))(v78 + v25, v24, v22);
    *v26 = v21;
    v27 = v79;
    if (v21 < [v79 numberOfSections])
    {
      [v27 rectForSection:v21];
      v2 = v80;
      sub_1004F941C();
      ImpressionsCalculator.addElement(_:at:)();
    }

    else
    {
      v74 = v25;
      v28 = v80;
      swift_beginAccess();
      v29 = sub_1004C5998(v21);
      if (v30)
      {
        v31 = v29;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v33 = *(v28 + 40);
        v82 = v33;
        *(v28 + 40) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_100493614();
          v33 = v82;
        }

        v34 = v73;
        (*(v23 + 32))(v73, *(v33 + 56) + v31 * v76, v22);
        sub_10056DB70(v31, v33);
        *(v28 + 40) = v33;

        v35 = v34;
        v36 = 0;
        v2 = v28;
      }

      else
      {
        v36 = 1;
        v2 = v28;
        v35 = v73;
      }

      (*(v23 + 56))(v35, v36, 1, v22);
      sub_10000EA04(v35, &qword_1008E9A30, &unk_1006F50F0);
      swift_endAccess();
      sub_1004F941C();
      v26 = v78;
      ImpressionsCalculator.removeElement(_:)();
    }

    v15 &= v15 - 1;

    sub_10000EA04(v26, &qword_1008F0DD8, qword_1006F6278);
  }

  while (1)
  {
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
      goto LABEL_39;
    }

    if (v18 >= v16)
    {
      break;
    }

    v15 = *(v11 + 8 * v18);
    ++v17;
    if (v15)
    {
      v17 = v18;
      goto LABEL_11;
    }
  }

  swift_beginAccess();
  v37 = *(v2 + 48);
  v40 = *(v37 + 64);
  v39 = v37 + 64;
  v38 = v40;
  v41 = 1 << *(*(v2 + 48) + 32);
  v42 = -1;
  if (v41 < 64)
  {
    v42 = ~(-1 << v41);
  }

  v43 = v42 & v38;
  v44 = (v41 + 63) >> 6;
  v77 = *(v2 + 48);
  swift_bridgeObjectRetain_n();
  v45 = 0;
  v46 = v79;
  v47 = v71;
  while (v43)
  {
    v50 = v46;
LABEL_30:
    v52 = __clz(__rbit64(v43)) | (v45 << 6);
    v53 = v77;
    v54 = *(v77 + 48);
    v55 = type metadata accessor for IndexPath();
    v75 = *(v55 - 8);
    v74 = *(v75 + 72);
    v56 = *(v75 + 16);
    v76 = v55;
    v56(v47, v54 + v74 * v52);
    v57 = *(v53 + 56);
    v58 = type metadata accessor for ImpressionMetrics();
    v59 = *(v58 - 8);
    v73 = *(v59 + 72);
    v60 = *(v59 + 16);
    v78 = *(v72 + 48);
    v60(v78 + v47, v57 + v73 * v52, v58);
    v61 = IndexPath.section.getter();
    v46 = v50;
    if (v61 >= [v50 numberOfSections] || (v62 = IndexPath.row.getter(), v62 >= objc_msgSend(v46, "numberOfRowsInSection:", IndexPath.section.getter())))
    {
      v64 = v80;
      swift_beginAccess();
      v65 = sub_1004C5CD4(v47);
      if (v66)
      {
        v67 = v65;
        v68 = swift_isUniquelyReferenced_nonNull_native();
        v69 = *(v64 + 48);
        v81 = v69;
        *(v64 + 48) = 0x8000000000000000;
        if (!v68)
        {
          sub_1004932C0();
          v69 = v81;
        }

        (*(v75 + 8))(*(v69 + 48) + v67 * v74, v76);
        v49 = v70;
        (*(v59 + 32))(v70, *(v69 + 56) + v67 * v73, v58);
        sub_10056D82C(v67, v69);
        *(v64 + 48) = v69;

        v48 = 0;
      }

      else
      {
        v48 = 1;
        v49 = v70;
      }

      (*(v59 + 56))(v49, v48, 1, v58);
      sub_10000EA04(v49, &qword_1008E9A30, &unk_1006F50F0);
      swift_endAccess();
      sub_1004F941C();
      v47 = v71;
      ImpressionsCalculator.removeElement(_:)();
      v46 = v79;
    }

    else
    {
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      [v46 rectForRowAtIndexPath:isa];

      sub_1004F941C();
      ImpressionsCalculator.addElement(_:at:)();
    }

    v43 &= v43 - 1;

    sub_10000EA04(v47, &qword_1008F00E0, qword_1006F5100);
  }

  while (1)
  {
    v51 = v45 + 1;
    if (__OFADD__(v45, 1))
    {
      break;
    }

    if (v51 >= v44)
    {

      return;
    }

    v43 = *(v39 + 8 * v51);
    ++v45;
    if (v43)
    {
      v50 = v46;
      v45 = v51;
      goto LABEL_30;
    }
  }

LABEL_39:
  __break(1u);
}

uint64_t sub_1004F8AB4(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, void *a5)
{
  v73 = a4;
  v71 = a2;
  v72 = a5;
  v70 = a1;
  v5 = a3;
  v65 = type metadata accessor for IndexPath();
  v63 = *(v65 - 8);
  __chkstk_darwin(v65);
  v66 = v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ImpressionMetrics.ID();
  v61 = *(v7 - 8);
  __chkstk_darwin(v7);
  v60 = v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ImpressionMetrics();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v64 = v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v62 = v56 - v13;
  __chkstk_darwin(v14);
  v59 = v56 - v15;
  v16 = type metadata accessor for ScalarDictionary();
  __chkstk_darwin(v16 - 8);
  v17 = type metadata accessor for MetricClickElement();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100140278(&qword_1008E9A30, &unk_1006F50F0);
  __chkstk_darwin(v21 - 8);
  __chkstk_darwin(v22);
  v69 = v56 - v23;
  __chkstk_darwin(v24);
  v26 = v56 - v25;
  v29 = __chkstk_darwin(v27);
  v30 = v56 - v28;
  v74 = v10;
  v75 = v56 - v28;
  v68 = v31;
  if (v5 == 2)
  {
    v67 = sub_100145788(2);
    v56[1] = v32;
    v33 = enum case for MetricClickElement.swoosh(_:);
    v58 = v7;
    v57 = *(v18 + 104);
    v57(v20, enum case for MetricClickElement.swoosh(_:), v17);
    static MetricConstants.itemIdentifierType.getter();
    sub_1002FC244(_swiftEmptyArrayStorage);
    ScalarDictionary.init()();
    ImpressionMetrics.init(parentId:elementId:name:clickElement:index:idType:additionalFields:custom:)();
    v67 = *(v74 + 56);
    (v67)(v75, 0, 1, v9);
    sub_100145788(2);
    v57(v20, v33, v17);
    static MetricConstants.itemIdentifierType.getter();
    sub_1002FC244(_swiftEmptyArrayStorage);
    ScalarDictionary.init()();
    v10 = v74;
    v34 = v59;
    ImpressionMetrics.init(parentId:elementId:name:clickElement:index:idType:additionalFields:custom:)();
    v35 = v60;
    ImpressionMetrics.id.getter();
    (*(v10 + 8))(v34, v9);
    v36 = ImpressionMetrics.ID.element.getter();
    v30 = v75;
    v37 = v36;
    v39 = v38;
    (*(v61 + 8))(v35, v58);
  }

  else
  {
    v67 = *(v10 + 56);
    v67(v56 - v28, 1, 1, v9, v29);
    v37 = 0;
    v39 = 0;
  }

  v40 = v9;
  sub_1004F979C(v30, v26);
  v41 = *(v10 + 48);
  if (v41(v26, 1, v40) == 1)
  {
    sub_10000EA04(v26, &qword_1008E9A30, &unk_1006F50F0);
    v42 = v73;
  }

  else
  {
    v43 = *(v10 + 32);
    v61 = v39;
    v44 = v62;
    v43(v62, v26, v40);
    v42 = v73;
    [v72 rectForSection:IndexPath.section.getter()];
    v60 = IndexPath.section.getter();
    v45 = v69;
    (*(v10 + 16))(v69, v44, v40);
    (v67)(v45, 0, 1, v40);
    swift_beginAccess();
    sub_100559CDC(v45, v60);
    swift_endAccess();
    sub_1004F941C();
    ImpressionsCalculator.addElement(_:at:)();

    v46 = v44;
    v39 = v61;
    (*(v10 + 8))(v46, v40);
  }

  v47 = v68;
  ObjectType = swift_getObjectType();
  v49 = IndexPath.row.getter();
  (*(v71 + 16))(v37, v39, v49, ObjectType);

  if (v41(v47, 1, v40) == 1)
  {
    sub_10000EA04(v75, &qword_1008E9A30, &unk_1006F50F0);
  }

  else
  {
    v50 = v74;
    v51 = v64;
    (*(v74 + 32))(v64, v47, v40);
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    [v72 rectForRowAtIndexPath:isa];

    v53 = v66;
    (*(v63 + 16))(v66, v42, v65);
    v54 = v69;
    (*(v50 + 16))(v69, v51, v40);
    (v67)(v54, 0, 1, v40);
    swift_beginAccess();
    sub_100559F2C(v54, v53);
    swift_endAccess();
    sub_1004F941C();
    ImpressionsCalculator.addElement(_:at:)();

    (*(v50 + 8))(v51, v40);
    v47 = v75;
  }

  return sub_10000EA04(v47, &qword_1008E9A30, &unk_1006F50F0);
}

uint64_t sub_1004F941C()
{
  v1 = type metadata accessor for ImpressionsCalculator.Configuration();
  __chkstk_darwin(v1 - 8);
  if (*(v0 + 32))
  {
    v2 = *(v0 + 32);
  }

  else
  {
    type metadata accessor for ImpressionsCalculator();
    static ImpressionsCalculator.Configuration.half.getter();
    swift_unknownObjectRetain();
    v2 = ImpressionsCalculator.__allocating_init(configuration:tracker:)();
    *(v0 + 32) = v2;
  }

  return v2;
}

uint64_t sub_1004F94F8()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_1004F956C(uint64_t a1)
{
  v3 = sub_100140278(&qword_1008E9A30, &unk_1006F50F0);
  __chkstk_darwin(v3 - 8);
  v5 = &v16[-v4];
  v6 = type metadata accessor for ImpressionMetrics();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v12 = &v16[-v11];
  swift_beginAccess();
  v13 = *(v1 + 48);
  if (*(v13 + 16))
  {

    v14 = sub_1004C5CD4(a1);
    if (v15)
    {
      (*(v7 + 16))(v9, *(v13 + 56) + *(v7 + 72) * v14, v6);

      (*(v7 + 32))(v12, v9, v6);
      swift_beginAccess();
      sub_1004D902C(a1, v5);
      sub_10000EA04(v5, &qword_1008E9A30, &unk_1006F50F0);
      swift_endAccess();
      sub_1004F941C();
      ImpressionsCalculator.removeElement(_:)();

      (*(v7 + 8))(v12, v6);
    }

    else
    {
    }
  }
}

uint64_t sub_1004F979C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008E9A30, &unk_1006F50F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004F980C()
{
  sub_100140278(&unk_1008E4E20, &qword_1006D5040);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1006D9800;
  v2 = [v0 mondayGoal];
  v3 = [v0 goalType];
  v4 = type metadata accessor for GoalDay();
  v5 = objc_allocWithZone(v4);
  v5[OBJC_IVAR____TtC10FitnessApp7GoalDay_day] = 0;
  *&v5[OBJC_IVAR____TtC10FitnessApp7GoalDay_goal] = v2;
  *&v5[OBJC_IVAR____TtC10FitnessApp7GoalDay_goalType] = v3;
  v31.receiver = v5;
  v31.super_class = v4;
  *(v1 + 32) = objc_msgSendSuper2(&v31, "init");
  v6 = [v0 tuesdayGoal];
  v7 = [v0 goalType];
  v8 = objc_allocWithZone(v4);
  v8[OBJC_IVAR____TtC10FitnessApp7GoalDay_day] = 1;
  *&v8[OBJC_IVAR____TtC10FitnessApp7GoalDay_goal] = v6;
  *&v8[OBJC_IVAR____TtC10FitnessApp7GoalDay_goalType] = v7;
  v30.receiver = v8;
  v30.super_class = v4;
  *(v1 + 40) = objc_msgSendSuper2(&v30, "init");
  v9 = [v0 wednesdayGoal];
  v10 = [v0 goalType];
  v11 = objc_allocWithZone(v4);
  v11[OBJC_IVAR____TtC10FitnessApp7GoalDay_day] = 2;
  *&v11[OBJC_IVAR____TtC10FitnessApp7GoalDay_goal] = v9;
  *&v11[OBJC_IVAR____TtC10FitnessApp7GoalDay_goalType] = v10;
  v29.receiver = v11;
  v29.super_class = v4;
  *(v1 + 48) = objc_msgSendSuper2(&v29, "init");
  v12 = [v0 thursdayGoal];
  v13 = [v0 goalType];
  v14 = objc_allocWithZone(v4);
  v14[OBJC_IVAR____TtC10FitnessApp7GoalDay_day] = 3;
  *&v14[OBJC_IVAR____TtC10FitnessApp7GoalDay_goal] = v12;
  *&v14[OBJC_IVAR____TtC10FitnessApp7GoalDay_goalType] = v13;
  v28.receiver = v14;
  v28.super_class = v4;
  *(v1 + 56) = objc_msgSendSuper2(&v28, "init");
  v15 = [v0 fridayGoal];
  v16 = [v0 goalType];
  v17 = objc_allocWithZone(v4);
  v17[OBJC_IVAR____TtC10FitnessApp7GoalDay_day] = 4;
  *&v17[OBJC_IVAR____TtC10FitnessApp7GoalDay_goal] = v15;
  *&v17[OBJC_IVAR____TtC10FitnessApp7GoalDay_goalType] = v16;
  v27.receiver = v17;
  v27.super_class = v4;
  *(v1 + 64) = objc_msgSendSuper2(&v27, "init");
  v18 = [v0 saturdayGoal];
  v19 = [v0 goalType];
  v20 = objc_allocWithZone(v4);
  v20[OBJC_IVAR____TtC10FitnessApp7GoalDay_day] = 5;
  *&v20[OBJC_IVAR____TtC10FitnessApp7GoalDay_goal] = v18;
  *&v20[OBJC_IVAR____TtC10FitnessApp7GoalDay_goalType] = v19;
  v26.receiver = v20;
  v26.super_class = v4;
  *(v1 + 72) = objc_msgSendSuper2(&v26, "init");
  v21 = [v0 sundayGoal];
  v22 = [v0 goalType];
  v23 = objc_allocWithZone(v4);
  v23[OBJC_IVAR____TtC10FitnessApp7GoalDay_day] = 6;
  *&v23[OBJC_IVAR____TtC10FitnessApp7GoalDay_goal] = v21;
  *&v23[OBJC_IVAR____TtC10FitnessApp7GoalDay_goalType] = v22;
  v25.receiver = v23;
  v25.super_class = v4;
  *(v1 + 80) = objc_msgSendSuper2(&v25, "init");
  return v1;
}

id sub_1004F9B64(char a1)
{
  v2 = [v1 *(&off_10085D8D8)[a1]];

  return v2;
}

id sub_1004F9C0C(uint64_t a1, uint64_t a2)
{
  v19 = type metadata accessor for Date();
  v2 = *(v19 - 8);
  __chkstk_darwin(v19);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Calendar();
  v5 = *(v18 - 8);
  __chkstk_darwin(v18);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DateComponents();
  __chkstk_darwin(v8 - 8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Calendar.current.getter();
  sub_100140278(&unk_1008E51B0, &unk_1006D8360);
  v11 = type metadata accessor for Calendar.Component();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1006D46C0;
  (*(v12 + 104))(v14 + v13, enum case for Calendar.Component.weekday(_:), v11);
  sub_10001C970(v14);
  swift_setDeallocating();
  (*(v12 + 8))(v14 + v13, v11);
  swift_deallocClassInstance();
  Date.init()();
  Calendar.dateComponents(_:from:)();

  (*(v2 + 8))(v4, v19);
  (*(v5 + 8))(v7, v18);
  v15 = sub_10016C8B4(v10);
  result = 0;
  if (v15 != 7)
  {
    return sub_1004F9B64(v15);
  }

  return result;
}

void sub_1004F9F44(unint64_t a1, char *a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  j = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_80;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v6 = v36)
  {
    v44 = a2;
    v45 = j;
    v46 = v5;
    v47 = v6;
    j = 0;
    v5 = a1 & 0xC000000000000001;
    while (1)
    {
      if (v5)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_75;
        }

        v6 = *(a1 + 8 * j + 32);
      }

      a2 = v6;
      v10 = (j + 1);
      if (__OFADD__(j, 1))
      {
        __break(1u);
LABEL_75:
        __break(1u);
        goto LABEL_76;
      }

      if (!v6[OBJC_IVAR____TtC10FitnessApp7GoalDay_day])
      {
        break;
      }

      ++j;
      if (v10 == i)
      {
        return;
      }
    }

    for (j = 0; ; ++j)
    {
      if (v5)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_78;
        }

        v6 = *(a1 + 8 * j + 32);
      }

      v11 = v6;
      v12 = (j + 1);
      if (__OFADD__(j, 1))
      {
        break;
      }

      if (v6[OBJC_IVAR____TtC10FitnessApp7GoalDay_day] == 1)
      {
        for (j = 0; ; ++j)
        {
          if (v5)
          {
            v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
LABEL_83:
              __break(1u);
LABEL_84:
              __break(1u);
LABEL_85:
              __break(1u);
LABEL_86:
              __break(1u);
LABEL_87:
              __break(1u);
LABEL_88:
              __break(1u);
LABEL_89:
              __break(1u);
              return;
            }

            v6 = *(a1 + 8 * j + 32);
          }

          v13 = v6;
          v14 = (j + 1);
          if (__OFADD__(j, 1))
          {
            goto LABEL_77;
          }

          if (v6[OBJC_IVAR____TtC10FitnessApp7GoalDay_day] == 2)
          {
            break;
          }

          if (v14 == i)
          {

            return;
          }
        }

        for (j = 0; ; ++j)
        {
          if (v5)
          {
            v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v15 = (j + 1);
            if (__OFADD__(j, 1))
            {
              goto LABEL_79;
            }
          }

          else
          {
            if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_84;
            }

            v6 = *(a1 + 8 * j + 32);
            v15 = (j + 1);
            if (__OFADD__(j, 1))
            {
              goto LABEL_79;
            }
          }

          if (v6[OBJC_IVAR____TtC10FitnessApp7GoalDay_day] == 3)
          {
            break;
          }

          if (v15 == i)
          {

            return;
          }
        }

        v16 = 0;
        v48 = v6;
        while (1)
        {
          if (v5)
          {
            v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v18 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              goto LABEL_83;
            }
          }

          else
          {
            if (v16 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_86;
            }

            v17 = *(a1 + 8 * v16 + 32);
            v18 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              goto LABEL_83;
            }
          }

          if (v17[OBJC_IVAR____TtC10FitnessApp7GoalDay_day] == 4)
          {
            break;
          }

          ++v16;
          if (v18 == i)
          {
            v19 = v48;

LABEL_71:
            return;
          }
        }

        v20 = 0;
        v43 = v17;
        while (1)
        {
          if (v5)
          {
            v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v22 = v20 + 1;
            if (__OFADD__(v20, 1))
            {
              goto LABEL_85;
            }
          }

          else
          {
            if (v20 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_88;
            }

            v21 = *(a1 + 8 * v20 + 32);
            v22 = v20 + 1;
            if (__OFADD__(v20, 1))
            {
              goto LABEL_85;
            }
          }

          if (v21[OBJC_IVAR____TtC10FitnessApp7GoalDay_day] == 5)
          {
            break;
          }

          ++v20;
          if (v22 == i)
          {
            v19 = v43;

            v23 = v48;
LABEL_70:

            goto LABEL_71;
          }
        }

        v24 = 0;
        v42 = v21;
        while (1)
        {
          if (v5)
          {
            v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v26 = v24 + 1;
            if (__OFADD__(v24, 1))
            {
              goto LABEL_87;
            }
          }

          else
          {
            if (v24 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_89;
            }

            v25 = *(a1 + 8 * v24 + 32);
            v26 = v24 + 1;
            if (__OFADD__(v24, 1))
            {
              goto LABEL_87;
            }
          }

          if (v25[OBJC_IVAR____TtC10FitnessApp7GoalDay_day] == 6)
          {
            break;
          }

          ++v24;
          if (v26 == i)
          {
            v19 = v42;

            v23 = v43;
            goto LABEL_70;
          }
        }

        v27 = v45;
        v28 = v25;
        v41 = v25;
        Date.init()();
        v29 = *&a2[OBJC_IVAR____TtC10FitnessApp7GoalDay_goal];
        v39 = *&v11[OBJC_IVAR____TtC10FitnessApp7GoalDay_goal];
        v40 = v29;
        v30 = *&v13[OBJC_IVAR____TtC10FitnessApp7GoalDay_goal];
        v38 = *&v48[OBJC_IVAR____TtC10FitnessApp7GoalDay_goal];
        v31 = *&v43[OBJC_IVAR____TtC10FitnessApp7GoalDay_goal];
        v32 = *&v42[OBJC_IVAR____TtC10FitnessApp7GoalDay_goal];
        v33 = *&v28[OBJC_IVAR____TtC10FitnessApp7GoalDay_goal];
        v34 = [objc_opt_self() localDevice];
        isa = Date._bridgeToObjectiveC()().super.isa;
        [objc_opt_self() activityGoalScheduleWithDate:isa goalType:v44 mondayGoal:v40 tuesdayGoal:v39 wednesdayGoal:v30 thursdayGoal:v38 fridayGoal:v31 saturdayGoal:v32 sundayGoal:v33 device:v34 metadata:0];

        (*(v46 + 8))(v27, v47);
        return;
      }

      if (v12 == i)
      {

        return;
      }
    }

LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    v36 = v6;
    i = _CocoaArrayWrapper.endIndex.getter();
  }
}

unint64_t sub_1004FA4DC()
{
  result = qword_1008F0DE0;
  if (!qword_1008F0DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F0DE0);
  }

  return result;
}

void *sub_1004FA57C(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RemoteParticipant();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    RemoteParticipantDiscovered.participant.getter();
    static Log.default.getter();
    v12._object = 0x8000000100760120;
    v13._countAndFlagsBits = 0xD000000000000025;
    v13._object = 0x8000000100760260;
    v12._countAndFlagsBits = 0xD000000000000024;
    Logger.trace(file:function:)(v12, v13);
    v14.n128_f64[0] = (*(v3 + 8))(v5, v2);
    sub_1004FCA2C(v9, v14);
    sub_1004FDEE0();

    return (*(v7 + 8))(v9, v6);
  }

  return result;
}

void *sub_1004FA764(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(void), void (*a5)(char *))
{
  v7 = a3(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v13 - v9;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = result;
    a4();
    a5(v10);

    return (*(v8 + 8))(v10, v7);
  }

  return result;
}

uint64_t sub_1004FA8E4()
{
  v1 = sub_100140278(&qword_1008F0F18, &qword_1006F63D8);
  __chkstk_darwin(v1 - 8);
  v3 = &v18 - v2;
  v4 = type metadata accessor for TVConnectionManager.State(0);
  __chkstk_darwin(v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.default.getter();
  v11._countAndFlagsBits = 0xD000000000000024;
  v11._object = 0x8000000100760120;
  v12._object = 0x8000000100760220;
  v12._countAndFlagsBits = 0xD00000000000001ELL;
  Logger.trace(file:function:)(v11, v12);
  (*(v8 + 8))(v10, v7);
  v13 = OBJC_IVAR___NLTVConnectionManager_state;
  swift_beginAccess();
  sub_1004FE8AC(v0 + v13, v6);
  v14 = *(v0 + OBJC_IVAR___NLTVConnectionManager_isDiscoveryAllowed);
  sub_1004FE96C(v6, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    if ((v14 & 1) == 0)
    {
      sub_1004FB17C();
    }
  }

  else if (EnumCaseMultiPayload == 2 && v14 != 0)
  {
    sub_1004FAB54();
  }

  return sub_1004FE910(v3);
}

uint64_t sub_1004FAB54()
{
  v1 = v0;
  v2 = sub_100140278(&unk_1008F2010, &unk_1006D6780);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v40 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v40 - v6;
  __chkstk_darwin(v8);
  v43 = &v40 - v9;
  v10 = type metadata accessor for TVConnectionManager.State(0);
  __chkstk_darwin(v10);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v41 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v40 - v17;
  static Log.default.getter();
  v19._countAndFlagsBits = 0xD000000000000024;
  v19._object = 0x8000000100760120;
  v20._object = 0x8000000100760200;
  v20._countAndFlagsBits = 0xD000000000000010;
  Logger.trace(file:function:)(v19, v20);
  v21 = *(v14 + 8);
  v44 = v13;
  v42 = v21;
  v21(v18, v13);
  v22 = OBJC_IVAR___NLTVConnectionManager_state;
  swift_beginAccess();
  sub_1004FE8AC(&v1[v22], v12);
  LODWORD(v22) = swift_getEnumCaseMultiPayload();
  result = sub_1004FE910(v12);
  if (v22 == 2)
  {
    sub_1000066AC(&v1[OBJC_IVAR___NLTVConnectionManager_participantClient], *&v1[OBJC_IVAR___NLTVConnectionManager_participantClient + 24]);
    dispatch thunk of RemoteParticipantClientProtocol.beginDiscoveringParticipantsWithRole(_:)();
    v24 = swift_allocObject();
    *(v24 + 16) = v1;
    v25 = swift_allocObject();
    *(v25 + 16) = sub_1004FEC94;
    *(v25 + 24) = v24;
    v26 = swift_allocObject();
    *(v26 + 16) = sub_1004FF344;
    *(v26 + 24) = v25;
    v27 = v40;
    (*(v3 + 16))(v40, v7, v2);
    v28 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v29 = swift_allocObject();
    (*(v3 + 32))(v29 + v28, v27, v2);
    v30 = (v29 + ((v4 + v28 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v30 = sub_1004FF334;
    v30[1] = v26;
    v31 = v1;
    v32 = v43;
    Promise.init(asyncOperation:)();
    v33 = *(v3 + 8);
    v33(v7, v2);
    v34 = Promise.operation.getter();
    v35 = swift_allocObject();
    *(v35 + 16) = 0;
    *(v35 + 24) = 0;
    v34(sub_100173F20, v35);

    v33(v32, v2);
    v36 = v41;
    static Log.default.getter();
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "[TV Connection] Began discovering advertising TVs", v39, 2u);
    }

    return v42(v36, v44);
  }

  return result;
}

uint64_t sub_1004FB07C(uint64_t a1, __n128 a2)
{
  v3 = type metadata accessor for TVConnectionManager.State(0);
  __chkstk_darwin(v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  v6 = OBJC_IVAR___NLTVConnectionManager_state;
  swift_beginAccess();
  sub_1004FEA48(v5, a1 + v6);
  return swift_endAccess();
}

uint64_t sub_1004FB17C()
{
  v1 = v0;
  v53 = sub_100140278(&unk_1008F2010, &unk_1006D6780);
  v2 = *(v53 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v53);
  v48 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v47 - v5;
  __chkstk_darwin(v7);
  v50 = &v47 - v8;
  v9 = type metadata accessor for TVConnectionManager.State(0);
  __chkstk_darwin(v9);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v47 - v13;
  v15 = type metadata accessor for Logger();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v51 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v47 - v19;
  static Log.default.getter();
  v21._countAndFlagsBits = 0x6F63736944646E65;
  v21._object = 0xEE00292879726576;
  v22._object = 0x8000000100760120;
  v22._countAndFlagsBits = 0xD000000000000024;
  Logger.trace(file:function:)(v22, v21);
  v23 = *(v16 + 8);
  v52 = v15;
  v49 = v23;
  v23(v20, v15);
  v24 = OBJC_IVAR___NLTVConnectionManager_state;
  swift_beginAccess();
  sub_1004FE8AC(&v1[v24], v14);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v20) = sub_1004FE50C(v14, v11, v25);
  sub_1004FE910(v11);
  result = sub_1004FE910(v14);
  if ((v20 & 1) == 0)
  {
    sub_1004FE8AC(&v1[v24], v14);
    swift_storeEnumTagMultiPayload();
    v28 = sub_1004FE50C(v14, v11, v27);
    sub_1004FE910(v11);
    result = sub_1004FE910(v14);
    if ((v28 & 1) == 0)
    {
      sub_1000066AC(&v1[OBJC_IVAR___NLTVConnectionManager_participantClient], *&v1[OBJC_IVAR___NLTVConnectionManager_participantClient + 24]);
      v29 = v6;
      v47 = v6;
      dispatch thunk of RemoteParticipantClientProtocol.endDiscoveringParticipants()();
      v30 = swift_allocObject();
      *(v30 + 16) = v1;
      v31 = swift_allocObject();
      *(v31 + 16) = sub_1004FEC8C;
      *(v31 + 24) = v30;
      v32 = swift_allocObject();
      *(v32 + 16) = sub_1001CE888;
      *(v32 + 24) = v31;
      v33 = v48;
      v34 = v53;
      (*(v2 + 16))(v48, v29, v53);
      v35 = (*(v2 + 80) + 16) & ~*(v2 + 80);
      v36 = swift_allocObject();
      (*(v2 + 32))(v36 + v35, v33, v34);
      v37 = (v36 + ((v3 + v35 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v37 = sub_1004FF334;
      v37[1] = v32;
      v38 = v1;
      v39 = v50;
      Promise.init(asyncOperation:)();
      v40 = *(v2 + 8);
      v40(v47, v34);
      v41 = Promise.operation.getter();
      v42 = swift_allocObject();
      *(v42 + 16) = 0;
      *(v42 + 24) = 0;
      v41(sub_100173F20, v42);

      v40(v39, v34);
      v43 = v51;
      static Log.default.getter();
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&_mh_execute_header, v44, v45, "[TV Connection] Ended discovering advertising TVs", v46, 2u);
      }

      return v49(v43, v52);
    }
  }

  return result;
}

uint64_t sub_1004FB728(uint64_t a1, __n128 a2)
{
  v3 = type metadata accessor for TVConnectionManager.State(0);
  __chkstk_darwin(v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  v6 = OBJC_IVAR___NLTVConnectionManager_state;
  swift_beginAccess();
  sub_1004FEA48(v5, a1 + v6);
  swift_endAccess();
  dispatch thunk of GuestPairingNotificationCoordinator.remove()();
  return sub_1004FA8E4();
}

uint64_t sub_1004FB840(__n128 a1)
{
  v2 = v1;
  v3 = type metadata accessor for TVConnectionManager.State(0);
  __chkstk_darwin(v3);
  v60 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v51 - v6;
  v64 = type metadata accessor for RemoteParticipant();
  v61 = *(v64 - 8);
  v8 = v61[8];
  __chkstk_darwin(v64);
  __chkstk_darwin(v9);
  v62 = &v51 - v10;
  __chkstk_darwin(v11);
  v13 = &v51 - v12;
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v63 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v51 - v18;
  static Log.default.getter();
  v20._countAndFlagsBits = 0xD000000000000024;
  v20._object = 0x8000000100760120;
  v21._object = 0x80000001007601E0;
  v21._countAndFlagsBits = 0xD000000000000016;
  Logger.trace(file:function:)(v20, v21);
  v22 = *(v15 + 8);
  v22(v19, v14);
  v23 = OBJC_IVAR___NLTVConnectionManager_state;
  swift_beginAccess();
  sub_1004FE8AC(v2 + v23, v7);
  if (swift_getEnumCaseMultiPayload())
  {
    return sub_1004FE910(v7);
  }

  v57 = v22;
  v58 = v14;
  v59 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v61;
  v26 = v61[4];
  v27 = v64;
  v55 = v61 + 4;
  v56 = v26;
  v26(v13, v7, v64);
  v28 = v60;
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  sub_1004FEA48(v28, v2 + v23);
  swift_endAccess();
  static Log.default.getter();
  v29 = v25[2];
  v60 = v13;
  v53 = v29;
  v54 = v25 + 2;
  v29(v62, v13, v27);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v52 = v2;
    v33 = v32;
    v34 = swift_slowAlloc();
    aBlock[0] = v34;
    *v33 = 136315138;
    v35 = v62;
    v36 = RemoteParticipant.description.getter();
    v38 = v37;
    v39 = v61[1];
    v39(v35, v64);
    v40 = sub_10000AFDC(v36, v38, aBlock);

    *(v33 + 4) = v40;
    v41 = v39;
    _os_log_impl(&_mh_execute_header, v30, v31, "[TV Connection] User allowed TV connection for remote participant %s", v33, 0xCu);
    sub_100005A40(v34);

    v42 = v61;
    v2 = v52;
    v27 = v64;
  }

  else
  {
    v42 = v25;

    v41 = v25[1];
    v41(v62, v27);
  }

  v57(v63, v58);
  v43 = v59;
  Strong = swift_unknownObjectWeakLoadStrong();
  v45 = v60;
  if (Strong)
  {
    v46 = Strong;
    v53(v43, v60, v27);
    v47 = (*(v42 + 80) + 24) & ~*(v42 + 80);
    v48 = swift_allocObject();
    *(v48 + 16) = v2;
    v56(v48 + v47, v43, v27);
    aBlock[4] = sub_1004FEAC8;
    aBlock[5] = v48;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10043B93C;
    aBlock[3] = &unk_10085DAE0;
    v49 = _Block_copy(aBlock);
    v50 = v2;

    [v46 presentBrowsingConsentAlertWithCompletion:v49];
    _Block_release(v49);
    swift_unknownObjectRelease();
  }

  return (v41)(v45, v27);
}

uint64_t sub_1004FBE08(char a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v73 = a3;
  v64 = type metadata accessor for TVConnectionManager.State(0);
  __chkstk_darwin(v64);
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for RemoteParticipant();
  v71 = *(v8 - 8);
  v72 = v8;
  __chkstk_darwin(v8);
  v68 = v9;
  v69 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100140278(&unk_1008F2010, &unk_1006D6780);
  v66 = *(v10 - 8);
  v11 = *(v66 + 64);
  __chkstk_darwin(v10);
  v65 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v59 - v13;
  __chkstk_darwin(v15);
  v67 = &v59 - v16;
  __chkstk_darwin(v17);
  v70 = &v59 - v18;
  v19 = type metadata accessor for Logger();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v59 - v24;
  if (a1)
  {
    static Log.default.getter();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "[TV Connection] Consent granted", v28, 2u);
    }

    (*(v20 + 8))(v25, v19);
    v29 = a2;
    sub_1000066AC((a2 + OBJC_IVAR___NLTVConnectionManager_browsingClient), *(a2 + OBJC_IVAR___NLTVConnectionManager_browsingClient + 24));
    v60 = v14;
    dispatch thunk of RemoteBrowsingClientProtocol.requestGuestAuthentication(to:)();
    v30 = swift_allocObject();
    *(v30 + 16) = sub_1004FA530;
    *(v30 + 24) = 0;
    v32 = v65;
    v31 = v66;
    v63 = *(v66 + 16);
    v63(v65, v14, v10);
    v33 = (*(v31 + 80) + 16) & ~*(v31 + 80);
    v62 = v33;
    v34 = (v11 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
    v35 = swift_allocObject();
    v64 = v29;
    v61 = *(v31 + 32);
    v61(v35 + v33, v32, v10);
    v36 = (v35 + v34);
    *v36 = sub_1001CE8A4;
    v36[1] = v30;
    v37 = v67;
    Promise.init(asyncOperation:)();
    v66 = *(v31 + 8);
    v38 = v60;
    (v66)(v60, v10);
    v39 = swift_allocObject();
    *(v39 + 16) = sub_1004FC69C;
    *(v39 + 24) = 0;
    v40 = v38;
    v63(v38, v37, v10);
    v41 = swift_allocObject();
    v61(v41 + v62, v40, v10);
    v42 = (v41 + v34);
    *v42 = sub_100173A14;
    v42[1] = v39;
    v43 = v70;
    Promise.init(asyncOperation:)();
    v44 = v66;
    (v66)(v37, v10);
    v46 = v71;
    v45 = v72;
    v47 = v69;
    (*(v71 + 16))(v69, v73, v72);
    v48 = (*(v46 + 80) + 24) & ~*(v46 + 80);
    v49 = swift_allocObject();
    v50 = v64;
    *(v49 + 16) = v64;
    (*(v46 + 32))(v49 + v48, v47, v45);
    v51 = v50;
    v52 = Promise.operation.getter();
    v53 = swift_allocObject();
    *(v53 + 16) = sub_1004FEC18;
    *(v53 + 24) = v49;

    v52(sub_100173F20, v53);

    return v44(v43, v10);
  }

  else
  {
    static Log.default.getter();
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&_mh_execute_header, v55, v56, "[TV Connection] Consent declined", v57, 2u);
    }

    (*(v20 + 8))(v22, v19);
    swift_storeEnumTagMultiPayload();
    v58 = OBJC_IVAR___NLTVConnectionManager_state;
    swift_beginAccess();
    sub_1004FEA48(v7, a2 + v58);
    swift_endAccess();
    dispatch thunk of GuestPairingNotificationCoordinator.remove()();
    return sub_1004FA8E4();
  }
}

uint64_t sub_1004FC568()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.default.getter();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "[TV Connection] requestGuestAuthentication succeeded!", v6, 2u);
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1004FC69C(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.default.getter();
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v15[1] = v1;
    v9 = v8;
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = Error.localizedDescription.getter();
    v13 = sub_10000AFDC(v11, v12, &v16);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v6, v7, "[TV Connection] requestGuestAuthentication failed with error %s", v9, 0xCu);
    sub_100005A40(v10);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1004FC878(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v7 = type metadata accessor for TVConnectionManager.State(0);
  __chkstk_darwin(v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 8))
  {
    swift_storeEnumTagMultiPayload();
    v10 = OBJC_IVAR___NLTVConnectionManager_state;
    swift_beginAccess();
    sub_1004FEA48(v9, a2 + v10);
    swift_endAccess();
    dispatch thunk of GuestPairingNotificationCoordinator.remove()();
  }

  else
  {
    v11 = type metadata accessor for RemoteParticipant();
    (*(*(v11 - 8) + 16))(v9, a3, v11);
    swift_storeEnumTagMultiPayload();
    v12 = OBJC_IVAR___NLTVConnectionManager_state;
    swift_beginAccess();
    sub_1004FEA48(v9, a2 + v12);
    swift_endAccess();
  }

  return sub_1004FA8E4();
}

uint64_t sub_1004FCA2C(uint64_t a1, __n128 a2)
{
  v3 = v2;
  v5 = type metadata accessor for TVConnectionManager.State(0);
  __chkstk_darwin(v5);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v20[-v9];
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v20[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static Log.default.getter();
  v15._object = 0x8000000100760120;
  v16._countAndFlagsBits = 0xD000000000000025;
  v16._object = 0x80000001007601B0;
  v15._countAndFlagsBits = 0xD000000000000024;
  Logger.trace(file:function:)(v15, v16);
  (*(v12 + 8))(v14, v11);
  v17 = OBJC_IVAR___NLTVConnectionManager_state;
  swift_beginAccess();
  sub_1004FE8AC(v3 + v17, v10);
  result = swift_getEnumCaseMultiPayload();
  if (result > 2)
  {
    if ((result - 4) < 2)
    {
      return result;
    }

    goto LABEL_8;
  }

  if (!result)
  {
    sub_1004FE910(v10);
LABEL_8:
    v19 = type metadata accessor for RemoteParticipant();
    (*(*(v19 - 8) + 16))(v7, a1, v19);
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_1004FEA48(v7, v3 + v17);
    return swift_endAccess();
  }

  if (result == 1)
  {
    return sub_1004FE910(v10);
  }

  return result;
}

uint64_t sub_1004FCC8C(uint64_t a1, __n128 a2)
{
  v3 = v2;
  v27 = a1;
  v4 = type metadata accessor for RemoteParticipant();
  v28 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v27 - v8;
  v10 = type metadata accessor for TVConnectionManager.State(0);
  __chkstk_darwin(v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v27 - v14;
  v16 = type metadata accessor for Logger();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.default.getter();
  v20._countAndFlagsBits = 0xD000000000000024;
  v20._object = 0x8000000100760120;
  v21._object = 0x8000000100760190;
  v21._countAndFlagsBits = 0xD00000000000001FLL;
  Logger.trace(file:function:)(v20, v21);
  (*(v17 + 8))(v19, v16);
  v22 = OBJC_IVAR___NLTVConnectionManager_state;
  swift_beginAccess();
  sub_1004FE8AC(v3 + v22, v15);
  result = swift_getEnumCaseMultiPayload();
  if (result > 3)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong cleanupGuestAuthentication];
      swift_unknownObjectRelease();
    }

    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_1004FEA48(v12, v3 + v22);
    swift_endAccess();
    dispatch thunk of GuestPairingNotificationCoordinator.remove()();
    return sub_1004FA8E4();
  }

  else if ((result - 2) >= 2)
  {
    if (result)
    {
      v26 = v28;
      (*(v28 + 32))(v9, v15, v4);
      if (static RemoteParticipant.== infix(_:_:)())
      {
        swift_storeEnumTagMultiPayload();
        swift_beginAccess();
        sub_1004FEA48(v12, v3 + v22);
        swift_endAccess();
        sub_1004FA8E4();
      }

      return (*(v26 + 8))(v9, v4);
    }

    else
    {
      v24 = v28;
      (*(v28 + 32))(v6, v15, v4);
      if (static RemoteParticipant.== infix(_:_:)())
      {
        dispatch thunk of GuestPairingNotificationCoordinator.remove()();
        swift_storeEnumTagMultiPayload();
        swift_beginAccess();
        sub_1004FEA48(v12, v3 + v22);
        swift_endAccess();
        sub_1004FA8E4();
      }

      return (*(v24 + 8))(v6, v4);
    }
  }

  return result;
}

void sub_1004FD0A4(uint64_t a1, __n128 a2)
{
  v3 = v2;
  v29 = a1;
  v4 = type metadata accessor for TVConnectionManager.State(0);
  __chkstk_darwin(v4);
  v6 = &aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &aBlock[-1] - v8;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &aBlock[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &aBlock[-1] - v15;
  static Log.default.getter();
  v17._countAndFlagsBits = 0xD000000000000024;
  v17._object = 0x8000000100760120;
  v18._object = 0x8000000100760150;
  v18._countAndFlagsBits = 0xD00000000000001BLL;
  Logger.trace(file:function:)(v17, v18);
  v19 = *(v11 + 8);
  v19(v16, v10);
  v20 = OBJC_IVAR___NLTVConnectionManager_state;
  swift_beginAccess();
  sub_1004FE8AC(v3 + v20, v9);
  LODWORD(v16) = swift_getEnumCaseMultiPayload();
  sub_1004FE910(v9);
  if (v16 == 4)
  {
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_1004FEA48(v6, v3 + v20);
    swift_endAccess();
    static Log.default.getter();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "[TV Connection] Presenting passcode prompt", v23, 2u);
    }

    v19(v13, v10);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v25 = Strong;
      v26 = RemoteParticipantPasswordChallenge.passwordLength.getter();
      v27 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_1004FEAAC;
      aBlock[5] = v27;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1004FDE64;
      aBlock[3] = &unk_10085D9F0;
      v28 = _Block_copy(aBlock);

      [v25 promptForPasscodeWithLength:v26 completion:{v28, v29}];
      swift_unknownObjectRelease();
      _Block_release(v28);
    }
  }
}

uint64_t sub_1004FD434(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v27 = *(v10 - 8);
  v28 = v10;
  __chkstk_darwin(v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    sub_1000059F8(0, &qword_1008E3FD0, OS_dispatch_queue_ptr);

    v17 = static OS_dispatch_queue.main.getter();
    v18 = swift_allocObject();
    v18[2] = a3;
    v18[3] = a1;
    v18[4] = a2;
    v33 = sub_1004FEABC;
    v34 = v18;
    aBlock = _NSConcreteStackBlock;
    v30 = 1107296256;
    v19 = &unk_10085DA68;
  }

  else
  {
    static Log.default.getter();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v26 = v7;
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "[TV Connection] User cancelled pairing passcode prompt", v22, 2u);
      v7 = v26;
    }

    (*(v14 + 8))(v16, v13);
    sub_1000059F8(0, &qword_1008E3FD0, OS_dispatch_queue_ptr);
    v17 = static OS_dispatch_queue.main.getter();
    v33 = sub_1004FEAB4;
    v34 = a3;
    aBlock = _NSConcreteStackBlock;
    v30 = 1107296256;
    v19 = &unk_10085DA18;
  }

  v31 = sub_1000449A8;
  v32 = v19;
  v23 = _Block_copy(&aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock = _swiftEmptyArrayStorage;
  sub_1000261C4();
  sub_100140278(&unk_1008E7F50, &qword_1006D8190);
  sub_10002621C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);

  (*(v7 + 8))(v9, v6);
  return (*(v27 + 8))(v12, v28);
}

void sub_1004FD868(uint64_t a1, __n128 a2)
{
  v2 = type metadata accessor for TVConnectionManager.State(0);
  __chkstk_darwin(v2);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    swift_storeEnumTagMultiPayload();
    v7 = OBJC_IVAR___NLTVConnectionManager_state;
    swift_beginAccess();
    sub_1004FEA48(v4, v6 + v7);
    swift_endAccess();
    dispatch thunk of GuestPairingNotificationCoordinator.remove()();
    sub_1004FA8E4();
  }
}

void *sub_1004FD964(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_100140278(&unk_1008F2010, &unk_1006D6780);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18[-1] - v5;
  v7 = type metadata accessor for TVConnectionManager.State(0);
  __chkstk_darwin(v7);
  v9 = &v18[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    swift_storeEnumTagMultiPayload();
    v12 = OBJC_IVAR___NLTVConnectionManager_state;
    swift_beginAccess();
    sub_1004FEA48(v9, v11 + v12);
    swift_endAccess();
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = result;
    sub_100007C5C(result + OBJC_IVAR___NLTVConnectionManager_browsingClient, v18);

    sub_1000066AC(v18, v18[3]);
    dispatch thunk of RemoteBrowsingClientProtocol.tryPassword(_:)();
    v15 = Promise.operation.getter();
    v16 = swift_allocObject();
    *(v16 + 16) = sub_1004FDBE4;
    *(v16 + 24) = 0;
    v15(sub_100173A1C, v16);

    (*(v4 + 8))(v6, v3);
    return sub_100005A40(v18);
  }

  return result;
}

uint64_t sub_1004FDBE4(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v21 - v7;
  if (*(a1 + 8) == 1)
  {
    v9 = *a1;
    static Log.default.getter();
    swift_errorRetain();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    sub_1000A7360(v9, 1);
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v22 = v13;
      *v12 = 136315138;
      swift_getErrorValue();
      v14 = Error.localizedDescription.getter();
      v16 = sub_10000AFDC(v14, v15, &v22);

      *(v12 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v10, v11, "[TV Connection] Passcode entry failed with error %s", v12, 0xCu);
      sub_100005A40(v13);
    }

    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    static Log.default.getter();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "[TV Connection] Passcode entry succeeded", v20, 2u);
    }

    return (*(v3 + 8))(v8, v2);
  }
}

uint64_t sub_1004FDE64(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v2(v3, v5);
}

uint64_t sub_1004FDEE0()
{
  v1 = sub_100140278(&qword_1008ED098, &qword_1006F07E8);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v16 - v3;
  v5 = type metadata accessor for TVConnectionManager.State(0);
  __chkstk_darwin(v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v16 - v9;
  v11 = OBJC_IVAR___NLTVConnectionManager_state;
  swift_beginAccess();
  sub_1004FE8AC(v0 + v11, v10);
  sub_1004FE96C(v10, v7);
  result = swift_getEnumCaseMultiPayload();
  if (result <= 3)
  {
    if ((result - 2) < 2)
    {
LABEL_5:
      sub_1000066AC((v0 + OBJC_IVAR___NLTVConnectionManager_sessionClient), *(v0 + OBJC_IVAR___NLTVConnectionManager_sessionClient + 24));
      dispatch thunk of SessionClientProtocol.queryActiveSession()();
      v13 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v14 = Promise.operation.getter();
      v15 = swift_allocObject();
      *(v15 + 16) = sub_1004FE9D0;
      *(v15 + 24) = v13;

      v14(sub_1001C870C, v15);

      return (*(v2 + 8))(v4, v1);
    }

    if (!result)
    {
      sub_1004FE910(v7);
      goto LABEL_5;
    }

    return sub_1004FE910(v7);
  }

  return result;
}

void sub_1004FE160(uint64_t a1, uint64_t a2)
{
  v3 = sub_100140278(&qword_1008ED0A0, &unk_1006F07F0);
  __chkstk_darwin(v3);
  v5 = &v8 - v4;
  sub_1004FE9D8(a1, &v8 - v4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10000EA04(v5, &qword_1008ED0A0, &unk_1006F07F0);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;

      dispatch thunk of GuestPairingNotificationCoordinator.post()();
    }
  }

  else
  {
    sub_10000EA04(v5, &qword_1008ED0A0, &unk_1006F07F0);
  }
}

id sub_1004FE2A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TVConnectionManager(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1004FE3C0(uint64_t a1, __n128 a2)
{
  result = type metadata accessor for TVConnectionManager.State(319);
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1004FE4AC(uint64_t a1, __n128 a2)
{
  result = type metadata accessor for RemoteParticipant();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1004FE50C(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for RemoteParticipant();
  v30 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v29 - v9;
  v11 = type metadata accessor for TVConnectionManager.State(0);
  __chkstk_darwin(v11);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v29 - v15;
  v17 = sub_100140278(&qword_1008F0F10, &qword_1006F63D0);
  __chkstk_darwin(v17 - 8);
  v19 = &v29 - v18;
  v21 = *(v20 + 56);
  sub_1004FE8AC(a1, &v29 - v18);
  sub_1004FE8AC(a2, &v19[v21]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_18;
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_18;
      }
    }

    else if (swift_getEnumCaseMultiPayload() != 5)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      sub_1004FE8AC(v19, v16);
      if (!swift_getEnumCaseMultiPayload())
      {
        v26 = v30;
        (*(v30 + 32))(v10, &v19[v21], v5);
        v24 = static RemoteParticipant.== infix(_:_:)();
        v27 = *(v26 + 8);
        v27(v10, v5);
        v27(v16, v5);
        goto LABEL_20;
      }

      v13 = v16;
      goto LABEL_12;
    }

    if (EnumCaseMultiPayload == 1)
    {
      sub_1004FE8AC(v19, v13);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v23 = v30;
        (*(v30 + 32))(v7, &v19[v21], v5);
        v24 = static RemoteParticipant.== infix(_:_:)();
        v25 = *(v23 + 8);
        v25(v7, v5);
        v25(v13, v5);
LABEL_20:
        sub_1004FE910(v19);
        return v24 & 1;
      }

LABEL_12:
      (*(v30 + 8))(v13, v5);
LABEL_18:
      sub_10000EA04(v19, &qword_1008F0F10, &qword_1006F63D0);
      v24 = 0;
      return v24 & 1;
    }

    if (swift_getEnumCaseMultiPayload() != 2)
    {
      goto LABEL_18;
    }
  }

  sub_1004FE910(v19);
  v24 = 1;
  return v24 & 1;
}

uint64_t sub_1004FE8AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TVConnectionManager.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004FE910(uint64_t a1)
{
  v2 = type metadata accessor for TVConnectionManager.State(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1004FE96C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TVConnectionManager.State(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004FE9D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008ED0A0, &unk_1006F07F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004FEA48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TVConnectionManager.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004FEAC8(char a1, __n128 a2)
{
  v4 = *(type metadata accessor for RemoteParticipant() - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v4 + 80) + 24) & ~*(v4 + 80));

  return sub_1004FBE08(a1, v6, v7, v5);
}

uint64_t sub_1004FEB54(__n128 a1)
{
  v2 = type metadata accessor for RemoteParticipant();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);

  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

uint64_t sub_1004FEC18(uint64_t a1, __n128 a2)
{
  v4 = *(type metadata accessor for RemoteParticipant() - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v4 + 80) + 24) & ~*(v4 + 80));

  return sub_1004FC878(a1, v6, v7, v5);
}

uint64_t sub_1004FEC9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v6 = *(sub_100140278(&unk_1008F2010, &unk_1006D6780) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = (v3 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  return a3(a1, a2, v3 + v7, v9, v10);
}

char *sub_1004FED6C(uint64_t a1, void *a2)
{
  v3 = v2;
  swift_unknownObjectWeakInit();
  v5 = OBJC_IVAR___NLTVConnectionManager_dependencies;
  type metadata accessor for Dependencies();
  sub_1000059F8(0, &qword_1008E3FD0, OS_dispatch_queue_ptr);
  v6 = static OS_dispatch_queue.main.getter();
  v7 = static Dependencies.standard(queue:)();

  *&v3[v5] = v7;

  sub_100140278(&qword_1008F0F20, &qword_1006F63E0);
  Dependencies.resolve<A>(failureHandler:)();

  sub_100006260(&v15, &v3[OBJC_IVAR___NLTVConnectionManager_participantClient]);

  sub_100140278(&qword_1008F0F28, &qword_1006F63E8);
  Dependencies.resolve<A>(failureHandler:)();

  sub_100006260(&v15, &v3[OBJC_IVAR___NLTVConnectionManager_browsingClient]);

  sub_100140278(&qword_1008F0F30, &unk_1006F63F0);
  Dependencies.resolve<A>(failureHandler:)();

  sub_100006260(&v15, &v3[OBJC_IVAR___NLTVConnectionManager_sessionClient]);

  sub_100140278(&qword_1008E4F20, &unk_1006F1470);
  Dependencies.resolve<A>(failureHandler:)();

  v8 = *(&v15 + 1);
  v9 = &v3[OBJC_IVAR___NLTVConnectionManager_eventHub];
  *v9 = v15;
  v9[1] = v8;
  type metadata accessor for SubscriptionToken();
  swift_allocObject();
  swift_unknownObjectRetain();
  *&v3[OBJC_IVAR___NLTVConnectionManager_subscriptionToken] = SubscriptionToken.init(eventHub:)();
  swift_unknownObjectWeakAssign();
  type metadata accessor for TVConnectionManager.State(0);
  swift_storeEnumTagMultiPayload();
  v3[OBJC_IVAR___NLTVConnectionManager_isDiscoveryAllowed] = 0;
  v16 = sub_1000059F8(0, &qword_1008F0F38, UNUserNotificationCenter_ptr);
  v17 = &protocol witness table for UNUserNotificationCenter;
  *&v15 = a2;
  type metadata accessor for GuestPairingNotificationCoordinator();
  swift_allocObject();
  v10 = a2;
  *&v3[OBJC_IVAR___NLTVConnectionManager_guestPairingNotificationCoordinator] = GuestPairingNotificationCoordinator.init(userNotificationCenter:)();
  v14.receiver = v3;
  v14.super_class = type metadata accessor for TVConnectionManager(0);
  v11 = objc_msgSendSuper2(&v14, "init");
  swift_getObjectType();
  type metadata accessor for RemoteParticipantDiscovered();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = v11;
  swift_unknownObjectRetain();

  dispatch thunk of EventHubProtocol.subscribe<A>(_:subscriptionToken:handler:)();
  swift_unknownObjectRelease();

  sub_100005A40(&v15);
  swift_getObjectType();
  type metadata accessor for RemoteParticipantLost();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectRetain();

  dispatch thunk of EventHubProtocol.subscribe<A>(_:subscriptionToken:handler:)();
  swift_unknownObjectRelease();

  sub_100005A40(&v15);
  swift_getObjectType();
  type metadata accessor for RemoteParticipantPasswordRequired();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectRetain();

  dispatch thunk of EventHubProtocol.subscribe<A>(_:subscriptionToken:handler:)();
  swift_unknownObjectRelease();

  sub_100005A40(&v15);
  return v12;
}

void static ShapeStyle<>.timeYellow.getter()
{
  v0 = [objc_opt_self() elapsedTimeColors];
  if (!v0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v1 = v0;
  v2 = [v0 nonGradientTextColor];

  if (!v2)
  {
LABEL_7:
    __break(1u);
    return;
  }

  Color.init(uiColor:)();
}

uint64_t sub_1004FF408@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100140278(&qword_1008F0F48, &qword_1006F64B8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v15[-v9];
  v16 = a1;
  static Axis.Set.vertical.getter();
  sub_100140278(&qword_1008F0F50, &qword_1006F64C0);
  sub_10014A6B0(&qword_1008F0F58, &qword_1008F0F50, &qword_1006F64C0, &protocol conformance descriptor for VStack<A>);
  ScrollView.init(_:showsIndicators:content:)();
  v11 = *(v5 + 16);
  v11(v7, v10, v4);
  *a2 = 0x4014000000000000;
  *(a2 + 8) = 0;
  v12 = sub_100140278(&qword_1008F0F60, &qword_1006F64C8);
  v11((a2 + *(v12 + 48)), v7, v4);
  v13 = *(v5 + 8);
  v13(v10, v4);
  return (v13)(v7, v4);
}

double sub_1004FF604@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static HorizontalAlignment.leading.getter();
  v15 = 1;
  sub_1004FF708(a1, &v10);
  v17 = v11;
  v18 = v12;
  v19[0] = v13[0];
  *(v19 + 9) = *(v13 + 9);
  v16 = v10;
  v20[2] = v12;
  v21[0] = v13[0];
  *(v21 + 9) = *(v13 + 9);
  v20[0] = v10;
  v20[1] = v11;
  sub_1004FFA90(&v16, v9);
  sub_1004FFB00(v20);
  *&v14[7] = v16;
  *&v14[64] = *(v19 + 9);
  *&v14[55] = v19[0];
  *&v14[39] = v18;
  *&v14[23] = v17;
  v5 = *v14;
  *(a2 + 33) = *&v14[16];
  v6 = *&v14[48];
  *(a2 + 49) = *&v14[32];
  *(a2 + 65) = v6;
  result = *&v14[64];
  *(a2 + 81) = *&v14[64];
  v8 = v15;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v8;
  *(a2 + 17) = v5;
  return result;
}

void sub_1004FF708(void *a1@<X0>, uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v39[8] = v36;
  v39[9] = v37;
  v40[0] = *v38;
  *(v40 + 9) = *&v38[9];
  v39[4] = v32;
  v39[5] = v33;
  v39[6] = v34;
  v39[7] = v35;
  v39[0] = v28;
  v39[1] = v29;
  v39[2] = v30;
  v39[3] = v31;

  sub_10021D28C(v39);
  sub_10000FCBC();
  v4 = Text.init<A>(_:)();
  v6 = v5;
  v8 = v7;
  v9 = [objc_opt_self() elapsedTimeColors];
  if (v9)
  {
    v10 = v9;
    v27 = a1;
    v11 = [v9 nonGradientTextColor];

    if (v11)
    {
      Color.init(uiColor:)();
      v12 = Text.foregroundStyle<A>(_:)();
      v14 = v13;
      v16 = v15;
      sub_10004642C(v4, v6, v8 & 1);

      static Font.title3.getter();
      v17 = Text.font(_:)();
      v19 = v18;
      v21 = v20;
      v23 = v22;

      sub_10004642C(v12, v14, v16 & 1);

      v24 = swift_allocObject();
      v24[2] = v27;
      v25 = swift_allocObject();
      v25[2] = v27;
      *a2 = v17;
      *(a2 + 8) = v19;
      *(a2 + 16) = v21 & 1;
      *(a2 + 24) = v23;
      *(a2 + 32) = sub_1004FFB68;
      *(a2 + 40) = v24;
      *(a2 + 48) = 0;
      *(a2 + 49) = 0;
      *(a2 + 56) = sub_100192CBC;
      *(a2 + 64) = v25;
      *(a2 + 72) = 0;
      v26 = v27;
      sub_10006965C(v17, v19, v21 & 1);

      sub_10021D48C(sub_1004FFB68, v24, 0);
      sub_10021D48C(sub_100192CBC, v25, 0);
      sub_10021D470(sub_100192CBC, v25, 0);
      sub_10021D470(sub_1004FFB68, v24, 0);
      sub_10004642C(v17, v19, v21 & 1);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1004FFA30@<X0>(uint64_t a2@<X8>)
{
  v4 = *v2;
  *a2 = static VerticalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v5 = sub_100140278(&qword_1008F0F40, &qword_1006F64B0);
  return sub_1004FF408(v4, a2 + *(v5 + 44));
}

uint64_t sub_1004FFA90(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008F0F68, &qword_1006F64D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004FFB00(uint64_t a1)
{
  v2 = sub_100140278(&qword_1008F0F68, &qword_1006F64D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1004FFB6C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1004FFBB4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1004FFC2C@<X0>(uint64_t a1@<X8>)
{
  v16 = a1;
  v15 = type metadata accessor for SegmentedPickerStyle();
  v2 = *(v15 - 8);
  __chkstk_darwin(v15);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100140278(&qword_1008F0F80, &unk_1006F65D8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v14 - v7;
  v9 = LocalizedStringKey.init(stringLiteral:)();
  v14[2] = v10;
  v14[3] = v9;
  v14[1] = v11;
  *v21 = *v1;
  *&v21[9] = *(v1 + 9);
  sub_100140278(&qword_1008E0E68, &qword_1006DCAC0);
  Binding.projectedValue.getter();
  *v21 = v18;
  *&v21[16] = v19;
  v21[24] = v20;
  v17 = v1;
  sub_100140278(&qword_1008F0F88, &qword_1006F65E8);
  sub_1002650B8();
  sub_10014A6B0(&qword_1008F0F90, &qword_1008F0F88, &qword_1006F65E8, &protocol conformance descriptor for TupleView<A>);
  Picker<>.init(_:selection:content:)();
  SegmentedPickerStyle.init()();
  sub_10014A6B0(&qword_1008F0F98, &qword_1008F0F80, &unk_1006F65D8, &protocol conformance descriptor for Picker<A, B, C>);
  v12 = v15;
  View.pickerStyle<A>(_:)();
  (*(v2 + 8))(v4, v12);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1004FFEF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v122 = a2;
  v3 = sub_100140278(&qword_1008F0FA0, &qword_1006F65F0);
  v130 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v116 - v4;
  v6 = sub_100140278(&qword_1008F0FA8, &qword_1006F65F8);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v121 = &v116 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v120 = &v116 - v10;
  __chkstk_darwin(v11);
  v119 = &v116 - v12;
  __chkstk_darwin(v13);
  v118 = &v116 - v14;
  __chkstk_darwin(v15);
  v126 = &v116 - v16;
  __chkstk_darwin(v17);
  v19 = &v116 - v18;
  v20 = sub_100140278(&qword_1008F0FB0, &qword_1006F6600);
  __chkstk_darwin(v20 - 8);
  v127 = &v116 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v25 = *(a1 + 40);
  v26 = &selRef_initWithFitnessAppContext_activitySharingClient_;
  v27 = &selRef_initWithFitnessAppContext_activitySharingClient_;
  v128 = &v116 - v23;
  v129 = v3;
  v117 = a1;
  v125 = v19;
  if (v25 == 1 && !*(a1 + 32))
  {
    OpaqueTypeConformance2 = objc_opt_self();
    v98 = [OpaqueTypeConformance2 mainBundle];
    v99 = String._bridgeToObjectiveC()();
    v100 = [v98 localizedStringForKey:v99 value:0 table:0];

    v101 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v103 = v102;

    v131 = v101;
    v132 = v103;
    v124 = sub_10000FCBC();
    *v5 = Text.init<A>(_:)();
    *(v5 + 1) = v104;
    v5[16] = v105 & 1;
    *(v5 + 3) = v106;
    *(v5 + 4) = 0;
    *(v5 + 20) = 257;
    v107 = [OpaqueTypeConformance2 mainBundle];
    v108 = String._bridgeToObjectiveC()();
    v109 = [v107 localizedStringForKey:v108 value:0 table:0];

    v110 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v112 = v111;

    v27 = &selRef_initWithFitnessAppContext_activitySharingClient_;
    v135 = v110;
    v136 = v112;
    v26 = &selRef_initWithFitnessAppContext_activitySharingClient_;
    v113 = sub_1002650B8();
    v131 = &type metadata for Text;
    v132 = &type metadata for MetricDataProviderTimeScale;
    v133 = &protocol witness table for Text;
    v134 = v113;
    swift_getOpaqueTypeConformance2();
    View.accessibilityLabel<A>(_:)();

    (*(v130 + 8))(v5, v3);
    v114 = v128;
    sub_10009ACF0(v19, v128);
    (*(v7 + 56))(v114, 0, 1, v6, v115);
  }

  else
  {
    (*(v7 + 56))(&v116 - v23, 1, 1, v6, v24);
  }

  v28 = objc_opt_self();
  v29 = [v28 v26[290]];
  v30 = String._bridgeToObjectiveC()();
  v31 = v27;
  v32 = [v29 v27[265]];

  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v34 = v26;
  v36 = v35;

  v131 = v33;
  v132 = v36;
  sub_10000FCBC();
  *v5 = Text.init<A>(_:)();
  *(v5 + 1) = v37;
  v5[16] = v38 & 1;
  *(v5 + 3) = v39;
  *(v5 + 4) = 1;
  *(v5 + 20) = 257;
  v40 = [v28 v34[290]];
  v41 = String._bridgeToObjectiveC()();
  v42 = v31;
  v43 = [v40 v31[265]];

  v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v46 = v45;

  v135 = v44;
  v136 = v46;
  v47 = sub_1002650B8();
  v131 = &type metadata for Text;
  v132 = &type metadata for MetricDataProviderTimeScale;
  v133 = &protocol witness table for Text;
  v134 = v47;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v48 = v129;
  View.accessibilityLabel<A>(_:)();

  v49 = *(v130 + 8);
  v130 += 8;
  v124 = v49;
  v49(v5, v48);
  v50 = v34;
  v51 = [v28 v34[290]];
  v52 = String._bridgeToObjectiveC()();
  v53 = [v51 v42[265]];

  v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v56 = v55;

  v131 = v54;
  v132 = v56;
  *v5 = Text.init<A>(_:)();
  *(v5 + 1) = v57;
  v5[16] = v58 & 1;
  *(v5 + 3) = v59;
  *(v5 + 4) = 2;
  *(v5 + 20) = 257;
  v60 = [v28 v50[290]];
  v61 = String._bridgeToObjectiveC()();
  v62 = [v60 v42[265]];

  v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v65 = v64;

  v131 = v63;
  v132 = v65;
  v66 = v129;
  View.accessibilityLabel<A>(_:)();

  v124(v5, v66);
  v67 = [v28 v50[290]];
  v68 = String._bridgeToObjectiveC()();
  v69 = [v67 v42[265]];

  v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v72 = v71;

  v131 = v70;
  v132 = v72;
  v73 = Text.init<A>(_:)();
  v75 = v74;
  LOBYTE(v69) = v76;
  v78 = v77;
  v79 = sub_1004ABC14(*(v117 + 48));
  *v5 = v73;
  *(v5 + 1) = v75;
  v5[16] = v69 & 1;
  *(v5 + 3) = v78;
  *(v5 + 4) = v79;
  v5[40] = v80 & 1;
  v5[41] = 1;
  v81 = [v28 v50[290]];
  v82 = String._bridgeToObjectiveC()();
  v83 = [v81 v42[265]];

  v84 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v86 = v85;

  v131 = v84;
  v132 = v86;
  v87 = v118;
  v88 = v129;
  View.accessibilityLabel<A>(_:)();

  v124(v5, v88);
  v89 = v127;
  sub_10001B104(v128, v127, &qword_1008F0FB0, &qword_1006F6600);
  v90 = v125;
  v91 = v119;
  sub_10001B104(v125, v119, &qword_1008F0FA8, &qword_1006F65F8);
  v92 = v126;
  v93 = v120;
  sub_10001B104(v126, v120, &qword_1008F0FA8, &qword_1006F65F8);
  v94 = v121;
  sub_10001B104(v87, v121, &qword_1008F0FA8, &qword_1006F65F8);
  v95 = v122;
  sub_10001B104(v89, v122, &qword_1008F0FB0, &qword_1006F6600);
  v96 = sub_100140278(&qword_1008F0FB8, qword_1006F6608);
  sub_10001B104(v91, v95 + v96[12], &qword_1008F0FA8, &qword_1006F65F8);
  sub_10001B104(v93, v95 + v96[16], &qword_1008F0FA8, &qword_1006F65F8);
  sub_10001B104(v94, v95 + v96[20], &qword_1008F0FA8, &qword_1006F65F8);
  sub_10000EA04(v87, &qword_1008F0FA8, &qword_1006F65F8);
  sub_10000EA04(v92, &qword_1008F0FA8, &qword_1006F65F8);
  sub_10000EA04(v90, &qword_1008F0FA8, &qword_1006F65F8);
  sub_10000EA04(v128, &qword_1008F0FB0, &qword_1006F6600);
  sub_10000EA04(v94, &qword_1008F0FA8, &qword_1006F65F8);
  sub_10000EA04(v93, &qword_1008F0FA8, &qword_1006F65F8);
  sub_10000EA04(v91, &qword_1008F0FA8, &qword_1006F65F8);
  return sub_10000EA04(v127, &qword_1008F0FB0, &qword_1006F6600);
}

void sub_100500AA4(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v3;
}

uint64_t sub_100500B24(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return static Published.subscript.setter();
}

id sub_100500B94()
{
  v0 = [objc_allocWithZone(NSLengthFormatter) init];
  result = [v0 setUnitStyle:1];
  qword_1008F0FC0 = v0;
  return result;
}

uint64_t sub_100500BE4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

void sub_100500C58()
{
  v1 = *&v0[OBJC_IVAR___WorkoutDetailSwimmingActivityDataSource_dataCalculator];
  v2 = *&v0[OBJC_IVAR___WorkoutDetailSwimmingActivityDataSource_workout];
  v3 = *&v0[OBJC_IVAR___WorkoutDetailSwimmingActivityDataSource_workoutActivity];
  v4 = swift_allocObject();
  *(v4 + 16) = v0;
  v7[4] = sub_100503CD4;
  v7[5] = v4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_1005016CC;
  v7[3] = &unk_10085DF00;
  v5 = _Block_copy(v7);
  v6 = v0;

  [v1 swimmingSplitsForWorkout:v2 workoutActivity:v3 completion:v5];
  _Block_release(v5);
}

void sub_100500D6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    swift_errorRetain();
    v3 = static os_log_type_t.error.getter();
    v4 = HKLogWorkouts;
    if (os_log_type_enabled(HKLogWorkouts, v3))
    {
      v5 = v4;
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v100[0] = v7;
      *v6 = 136315138;
      swift_getErrorValue();
      v8 = Error.localizedDescription.getter();
      v10 = sub_10000AFDC(v8, v9, v100);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v5, v3, "Error loading swimming splits: %s", v6, 0xCu);
      sub_100005A40(v7);
    }

    else
    {
    }

    return;
  }

  if (!a1)
  {
    goto LABEL_75;
  }

  v12 = a1 + 64;
  v13 = 1 << *(a1 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a1 + 64);
  v16 = (v13 + 63) >> 6;
  v90 = OBJC_IVAR___CHWorkoutDetailSwimmingSplitDataSource_averagePaces;

  v18 = 0;
  v97 = a3;
  v84 = v16;
  v85 = v12;
  v86 = v17;
  while (1)
  {
    if (!v15)
    {
      while (1)
      {
        v19 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          goto LABEL_81;
        }

        if (v19 >= v16)
        {
          break;
        }

        v15 = *(v12 + 8 * v19);
        ++v18;
        if (v15)
        {
          goto LABEL_15;
        }
      }

LABEL_75:
      sub_100502508();
      return;
    }

    v19 = v18;
LABEL_15:
    v20 = v15;
    v89 = v19;
    v21 = (v19 << 9) | (8 * __clz(__rbit64(v15)));
    v22 = *(*(v17 + 56) + v21);
    v23 = *(*(v17 + 48) + v21);

    v88 = v23;
    v24 = [v23 integerValue];
    v25 = v24;
    if (v22 >> 62)
    {
      v26 = _CocoaArrayWrapper.endIndex.getter();
      v95 = v25;
      if (v26)
      {
LABEL_17:
        v100[0] = _swiftEmptyArrayStorage;
        specialized ContiguousArray.reserveCapacity(_:)();
        if (v26 < 0)
        {
          goto LABEL_82;
        }

        v27 = 0;
        v28 = *(a3 + OBJC_IVAR___WorkoutDetailSwimmingActivityDataSource_workout);
        do
        {
          if ((v22 & 0xC000000000000001) != 0)
          {
            v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v29 = *(v22 + 8 * v27 + 32);
          }

          v30 = v29;
          ++v27;
          type metadata accessor for WorkoutDurationMetrics();
          v31 = swift_allocObject();
          *(v31 + 24) = 0;
          *(v31 + 32) = 0;
          *(v31 + 16) = 0;
          *(v31 + 40) = 1;
          *(v31 + 48) = 0;
          *(v31 + 56) = 1;
          *(v31 + 72) = 0;
          *(v31 + 80) = 1;
          *(v31 + 88) = 0u;
          *(v31 + 104) = 0u;
          *(v31 + 120) = 0;
          *(v31 + 128) = 1;
          *(v31 + 144) = 0;
          *(v31 + 152) = 0;
          *(v31 + 136) = 0;
          v32 = v28;
          *(v31 + 32) = [v30 splitDelimiterDistance];
          *(v31 + 40) = 0;
          [v30 durationScaledToFillSplit];
          *(v31 + 64) = v33;
          v34 = [v30 strokeCountScaledToFillSplit];

          *(v31 + 120) = v34;
          *(v31 + 128) = 0;
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        while (v26 != v27);

        v35 = v100[0];
        goto LABEL_26;
      }
    }

    else
    {
      v26 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v95 = v24;
      if (v26)
      {
        goto LABEL_17;
      }
    }

    v35 = _swiftEmptyArrayStorage;
LABEL_26:
    v87 = (v20 - 1) & v20;
    swift_getKeyPath();
    swift_getKeyPath();
    v36 = static Published.subscript.modify();
    v38 = v37;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v98 = *v38;
    *v38 = 0x8000000000000000;
    sub_1004919C4(v35, v95, isUniquelyReferenced_nonNull_native);
    *v38 = v98;
    v36(v100, 0);

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v40 = 0;
    v41 = v100[0] + 64;
    v92 = v100[0] + 64;
    v93 = v100[0];
    v42 = 1 << *(v100[0] + 32);
    v43 = v42 < 64 ? ~(-1 << v42) : -1;
    v44 = v43 & *(v100[0] + 64);
    v45 = (v42 + 63) >> 6;
    v91 = v45;
LABEL_32:
    if (v44)
    {
      goto LABEL_37;
    }

LABEL_33:
    v57 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      goto LABEL_80;
    }

    if (v57 < v45)
    {
      break;
    }

    v18 = v89;
    a3 = v97;
    v12 = v85;
    v17 = v86;
    v16 = v84;
    v15 = v87;
  }

  v44 = *(v41 + 8 * v57);
  ++v40;
  if (!v44)
  {
    goto LABEL_33;
  }

  v40 = v57;
LABEL_37:
  v58 = (v40 << 9) | (8 * __clz(__rbit64(v44)));
  v96 = *(*(v93 + 48) + v58);
  v59 = *(*(v93 + 56) + v58);
  if (v59 >> 62)
  {
    v60 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v60 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v60)
  {
    v62 = 0.0;
LABEL_50:
    if (v59 >> 62)
    {
      v66 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v66 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v67 = v66;
    v68 = round(v62 / v66);
    v69 = [*(v97 + OBJC_IVAR___WorkoutDetailSwimmingActivityDataSource_formattingManager) fitnessUIFormattingManager];
    v70 = [v69 stringWithDuration:1 durationFormat:v68];

    if (v70)
    {
      v94 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v72 = v71;

      if (v60)
      {
        goto LABEL_55;
      }
    }

    else
    {
      v94 = 0;
      v72 = 0xE000000000000000;
      if (v60)
      {
LABEL_55:
        v73 = 0;
        v74 = 0.0;
        while (1)
        {
          if ((v59 & 0xC000000000000001) != 0)
          {
            v75 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v76 = v73 + 1;
            if (__OFADD__(v73, 1))
            {
              goto LABEL_78;
            }
          }

          else
          {
            if (v73 >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_79;
            }

            v76 = v73 + 1;
            if (__OFADD__(v73, 1))
            {
              goto LABEL_78;
            }
          }

          v77 = *(v75 + 128);
          v78 = *(v75 + 120);

          v79 = v78;
          if (v77)
          {
            v79 = 0.0;
          }

          v74 = v74 + v79;
          ++v73;
          if (v76 == v60)
          {
            goto LABEL_68;
          }
        }
      }
    }

    v74 = 0.0;
LABEL_68:

    v80 = [objc_allocWithZone(NSNumber) initWithDouble:v74 / v67];
    v81 = [objc_opt_self() stringWithNumber:v80 decimalPrecision:1];
    if (v81)
    {
      v82 = v81;
      v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v47 = v83;
    }

    else
    {
      v46 = 0;
      v47 = 0xE000000000000000;
    }

    v44 &= v44 - 1;
    v48 = [objc_opt_self() mainBundle];
    v49 = String._bridgeToObjectiveC()();
    v50 = [v48 localizedStringForKey:v49 value:0 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100140278(&unk_1008E4E50, &qword_1006D4A60);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_1006D1F70;
    *(v51 + 56) = &type metadata for String;
    v52 = sub_10000A788();
    *(v51 + 32) = v94;
    *(v51 + 40) = v72;
    *(v51 + 96) = &type metadata for String;
    *(v51 + 104) = v52;
    *(v51 + 64) = v52;
    *(v51 + 72) = v46;
    *(v51 + 80) = v47;
    v53 = String.init(format:_:)();
    v55 = v54;

    swift_beginAccess();
    v56 = swift_isUniquelyReferenced_nonNull_native();
    v99 = *(v97 + v90);
    *(v97 + v90) = 0x8000000000000000;
    sub_100491864(v53, v55, v96, v56);
    *(v97 + v90) = v99;
    swift_endAccess();

    v45 = v91;
    v41 = v92;
    goto LABEL_32;
  }

  v61 = 0;
  v62 = 0.0;
  while ((v59 & 0xC000000000000001) != 0)
  {
    v63 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v64 = v61 + 1;
    if (__OFADD__(v61, 1))
    {
      goto LABEL_76;
    }

LABEL_44:
    v65 = *(v63 + 64);

    v62 = v62 + v65;
    ++v61;
    if (v64 == v60)
    {
      goto LABEL_50;
    }
  }

  if (v61 >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_77;
  }

  v64 = v61 + 1;
  if (!__OFADD__(v61, 1))
  {
    goto LABEL_44;
  }

LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
}

uint64_t sub_1005016CC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_1000059F8(0, &qword_1008E1750, NSNumber_ptr);
    sub_100140278(&qword_1008F1060, &qword_1006F66D8);
    sub_1004F6630();
    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t sub_100501798()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (*(v5 + 16) && (v0 = sub_1004C5998(v5), (v1 & 1) != 0))
  {
    v2 = *(*(v5 + 56) + 8 * v0);

    if (v2 >> 62)
    {
      v3 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    return v3;
  }

  else
  {

    return 0;
  }
}

void sub_1005018C4(unint64_t a1)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v2 = *(v1 + OBJC_IVAR___CHWorkoutDetailSwimmingSplitDataSource_columns);
  if (*(v2 + 16) <= a1)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v3 = *(v2 + a1 + 32);
  v4 = OBJC_IVAR___CHWorkoutDetailSwimmingSplitDataSource_columnSizes;
  swift_beginAccess();
  if (*(*(v1 + v4) + 16))
  {

    sub_1004C5C04(v3);
    if (v5)
    {
    }

    else
    {
    }
  }
}

void sub_10050198C(unint64_t a1)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(v1 + OBJC_IVAR___CHWorkoutDetailSwimmingSplitDataSource_columns);
  if (*(v2 + 16) <= a1)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v3 = v2 + a1;
  v4 = *(v1 + OBJC_IVAR___WorkoutDetailSwimmingActivityDataSource_formattingManager);
  v5 = *(v3 + 32);
  v6 = [v4 fitnessUIFormattingManager];
  sub_100209CE0(v6, v5);
}

void sub_100501A28(unint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for DynamicTypeSize();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100140278(&qword_1008DDBE0, &qword_1006D7F60);
  __chkstk_darwin(v9);
  v11 = &v45 - v10;
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = *(v2 + OBJC_IVAR___CHWorkoutDetailSwimmingSplitDataSource_columns);
  if (*(v12 + 16) <= a2)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = *(v12 + a2 + 32);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v49 = v5;
  v50 = v9;
  v47 = v11;
  v48 = v6;
  v46 = v8;
  if (v13 == 3)
  {
    v24 = sub_1005021BC(a1, v51);
    goto LABEL_11;
  }

  if (v13 == 1)
  {
    sub_100501EE0(a1, v51);
    goto LABEL_11;
  }

  if (v13)
  {
    v24 = 0;
    v23 = 0xE000000000000000;
    goto LABEL_11;
  }

  v14 = objc_opt_self();
  v15 = __OFADD__(a1, 1);
  v16 = a1 + 1;
  if (!v15)
  {
    v17 = v14;
    v18 = [objc_allocWithZone(NSNumber) initWithInteger:v16];
    v19 = [v17 localizedStringFromNumber:v18 numberStyle:0];

    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    v23 = v22;
    v24 = v20;
LABEL_11:
    v51 = v24;
    v52 = v23;
    sub_10000FCBC();
    v25 = Text.init<A>(_:)();
    v27 = v26;
    v29 = v28;
    static Font.body.getter();
    v30 = Text.font(_:)();
    v32 = v31;
    v34 = v33;

    sub_10004642C(v25, v27, v29 & 1);

    sub_10020A2B4(v13);
    v35 = Text.foregroundColor(_:)();
    v37 = v36;
    v39 = v38;
    v41 = v40;

    sub_10004642C(v30, v32, v34 & 1);

    v51 = v35;
    v52 = v37;
    LOBYTE(v30) = v39 & 1;
    v53 = v39 & 1;
    v54 = v41;
    v43 = v48;
    v42 = v49;
    v44 = v46;
    (*(v48 + 104))(v46, enum case for DynamicTypeSize.large(_:), v49);
    View.dynamicTypeSize(_:)();
    (*(v43 + 8))(v44, v42);
    sub_10004642C(v35, v37, v30);

    v51 = &type metadata for Text;
    v52 = &protocol witness table for Text;
    swift_getOpaqueTypeConformance2();
    AnyView.init<A>(_:)();
    return;
  }

LABEL_14:
  __break(1u);
}

uint64_t sub_100501E14()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v1 = OBJC_IVAR___CHWorkoutDetailSwimmingSplitDataSource_averagePaces;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!*(v2 + 16))
  {
    return 0;
  }

  v3 = sub_1004C5998(v7);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(v2 + 56) + 16 * v3);

  return v5;
}

void sub_100501EE0(uint64_t a1, uint64_t a2)
{
  v5 = [*(v2 + OBJC_IVAR___WorkoutDetailSwimmingActivityDataSource_formattingManager) fitnessUIFormattingManager];
  v6 = [v5 unitManager];

  if (!v6)
  {
    goto LABEL_12;
  }

  v7 = [v6 userDistanceHKUnitForDistanceType:3];

  if (qword_1008DACC8 != -1)
  {
    swift_once();
  }

  v8 = [qword_1008F0FC0 unitStringFromValue:objc_msgSend(objc_opt_self() unit:{"lengthFormatterUnitFromUnit:", v7), 1.0}];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12 = objc_opt_self();
  v13 = a1 + 1;
  if (__OFADD__(a1, 1))
  {
    __break(1u);
    goto LABEL_11;
  }

  if ((a2 * v13) >> 64 != (a2 * v13) >> 63)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  v14 = v12;
  v15 = [objc_allocWithZone(NSNumber) initWithInteger:a2 * v13];
  v16 = [v14 stringWithNumber:v15 decimalPrecision:1];

  if (v16)
  {
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0xE000000000000000;
  }

  v20 = [objc_opt_self() mainBundle];
  v21 = String._bridgeToObjectiveC()();
  v22 = [v20 localizedStringForKey:v21 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100140278(&unk_1008E4E50, &qword_1006D4A60);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1006D1F70;
  *(v23 + 56) = &type metadata for String;
  v24 = sub_10000A788();
  *(v23 + 32) = v17;
  *(v23 + 40) = v19;
  *(v23 + 96) = &type metadata for String;
  *(v23 + 104) = v24;
  *(v23 + 64) = v24;
  *(v23 + 72) = v9;
  *(v23 + 80) = v11;
  String.init(format:_:)();
}

uint64_t sub_1005021BC(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (!*(v29 + 16) || (v6 = sub_1004C5998(a2), (v7 & 1) == 0))
  {

    return 0;
  }

  v8 = *(*(v29 + 56) + 8 * v6);

  if ((v8 & 0xC000000000000001) != 0)
  {
    v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_7;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  v10 = *(v8 + 8 * a1 + 32);

LABEL_7:

  if ((*(v10 + 40) & 1) != 0 || (*(v10 + 128) & 1) != 0 || *(v10 + 32) <= 0.0)
  {

    return 0;
  }

  v11 = *(v10 + 120);
  v12 = [*(v3 + OBJC_IVAR___WorkoutDetailSwimmingActivityDataSource_formattingManager) fitnessUIFormattingManager];
  v13 = [v12 stringWithDuration:1 durationFormat:*(v10 + 64)];

  if (v13)
  {
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0xE000000000000000;
  }

  v17 = objc_opt_self();
  v18 = [objc_allocWithZone(NSNumber) initWithInteger:v11];
  v19 = [v17 stringWithNumber:v18 decimalPrecision:1];

  if (v19)
  {
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;
  }

  else
  {
    v20 = 0;
    v22 = 0xE000000000000000;
  }

  v23 = [objc_opt_self() mainBundle];
  v24 = String._bridgeToObjectiveC()();
  v25 = [v23 localizedStringForKey:v24 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100140278(&unk_1008E4E50, &qword_1006D4A60);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1006D1F70;
  *(v26 + 56) = &type metadata for String;
  v27 = sub_10000A788();
  *(v26 + 32) = v14;
  *(v26 + 40) = v16;
  *(v26 + 96) = &type metadata for String;
  *(v26 + 104) = v27;
  *(v26 + 64) = v27;
  *(v26 + 72) = v20;
  *(v26 + 80) = v22;
  v28 = String.init(format:_:)();

  return v28;
}

void sub_100502508()
{
  v1 = v0;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v2 = 0;
  v3 = v81;
  v4 = v81 + 64;
  v5 = 1 << *(v81 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = OBJC_IVAR___CHWorkoutDetailSwimmingSplitDataSource_columnSizes;
  v72 = OBJC_IVAR___CHWorkoutDetailSwimmingSplitDataSource_columns;
  v73 = (v5 + 63) >> 6;
  v8 = v6 & *(v81 + 64);
  v68 = v81 + 64;
  v69 = v81;
  do
  {
LABEL_4:
    if (!v8)
    {
      do
      {
        v9 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
          goto LABEL_63;
        }

        if (v9 >= v73)
        {

          return;
        }

        ++v2;
      }

      while (!*(v4 + 8 * v9));
      v2 = v9;
      v8 = *(v4 + 8 * v9);
    }

    v10 = v8;
    v11 = (v2 << 9) | (8 * __clz(__rbit64(v8)));
    v76 = *(*(v3 + 48) + v11);
    v12 = *(*(v3 + 56) + v11);
    if (v12 >> 62)
    {
      v66 = v3;
      v67 = _CocoaArrayWrapper.endIndex.getter();
      if (v67 < 0)
      {
        goto LABEL_64;
      }

      v13 = v67;
      v3 = v66;
    }

    else
    {
      v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 = (v10 - 1) & v10;
    v74 = v13;
  }

  while (!v13);
  v70 = (v10 - 1) & v10;
  v71 = v2;
  v14 = 0;
  v15 = *(v1 + v72);
  v80 = *(v15 + 16);
  v79 = v15;
  v78 = v15 + 32;
  while (1)
  {
    v77 = v14;
    v75 = v14 + 1;
    if (v80)
    {
      break;
    }

LABEL_13:
    v14 = v75;
    if (v75 == v74)
    {
      v4 = v68;
      v3 = v69;
      v8 = v70;
      v2 = v71;
      goto LABEL_4;
    }
  }

  sub_100140278(&qword_1008E2568, qword_1006E3D40);
  swift_beginAccess();
  v16 = 0;
  while (v16 < *(v79 + 16))
  {
    v17 = *(v78 + v16);
    if (*(v78 + v16) <= 5u && !*(v78 + v16))
    {

LABEL_23:
      v19 = &qword_100925298;
      if (qword_1008DA660 != -1)
      {
        swift_once();
        v19 = &qword_100925298;
      }

      goto LABEL_27;
    }

    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v18)
    {
      goto LABEL_23;
    }

    v19 = &qword_1009252A0;
    if (qword_1008DA668 != -1)
    {
      swift_once();
      v19 = &qword_1009252A0;
    }

LABEL_27:
    v20 = *v19;
    if (v17 == 3)
    {
      v27 = v20;
      sub_1005021BC(v77, v76);
    }

    else if (v17 == 1)
    {
      v26 = v20;
      sub_100501EE0(v77, v76);
    }

    else if (v17)
    {
      v28 = v20;
    }

    else
    {
      v21 = objc_opt_self();
      v22 = objc_allocWithZone(NSNumber);
      v23 = v20;
      v24 = [v22 initWithInteger:v75];
      v25 = [v21 localizedStringFromNumber:v24 numberStyle:0];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v29 = String._bridgeToObjectiveC()();

    v83[0] = NSFontAttributeName;
    v83[4] = sub_1000059F8(0, &qword_1008F73C0, UIFont_ptr);
    v83[1] = v20;
    v30 = static _DictionaryStorage.allocate(capacity:)();
    sub_10022EF60(v83, &v81);
    v31 = v20;
    v32 = NSFontAttributeName;
    sub_100198304(v83);
    v33 = v81;
    v34 = sub_1004C53E8(v81);
    if (v35)
    {
      goto LABEL_59;
    }

    v30[(v34 >> 6) + 8] |= 1 << v34;
    *(v30[6] + 8 * v34) = v33;
    sub_1001AA76C(&v82, (v30[7] + 32 * v34));
    v36 = v30[2];
    v37 = __OFADD__(v36, 1);
    v38 = v36 + 1;
    if (v37)
    {
      goto LABEL_60;
    }

    v30[2] = v38;
    type metadata accessor for Key(0);
    sub_100503DD4(&qword_1008E7FD0, type metadata accessor for Key, &unk_1006D3C84);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v29 boundingRectWithSize:1 options:isa attributes:0 context:{1.79769313e308, 1.79769313e308}];
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v47 = v46;

    v84.origin.x = v41;
    v84.origin.y = v43;
    v84.size.width = v45;
    v84.size.height = v47;
    v48 = ceil(CGRectGetWidth(v84));
    v49 = *(v1 + v7);
    if (!*(v49 + 16))
    {
      goto LABEL_41;
    }

    v50 = sub_1004C5C04(v17);
    if ((v51 & 1) == 0)
    {

LABEL_41:
      if (v48 <= 0.0)
      {
        goto LABEL_18;
      }

      goto LABEL_42;
    }

    v52 = *(*(v49 + 56) + 8 * v50);

    if (v52 >= v48)
    {
      goto LABEL_18;
    }

LABEL_42:
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v54 = *(v1 + v7);
    *(v1 + v7) = 0x8000000000000000;
    v56 = sub_1004C5C04(v17);
    v57 = v54[2];
    v58 = (v55 & 1) == 0;
    v59 = v57 + v58;
    if (__OFADD__(v57, v58))
    {
      goto LABEL_61;
    }

    v60 = v55;
    if (v54[3] >= v59)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v63 = v54;
        if ((v55 & 1) == 0)
        {
          goto LABEL_49;
        }
      }

      else
      {
        sub_100493170();
        v63 = v54;
        if ((v60 & 1) == 0)
        {
          goto LABEL_49;
        }
      }
    }

    else
    {
      sub_10048964C(v59, isUniquelyReferenced_nonNull_native);
      v61 = sub_1004C5C04(v17);
      if ((v60 & 1) != (v62 & 1))
      {
        goto LABEL_65;
      }

      v56 = v61;
      v63 = v54;
      if ((v60 & 1) == 0)
      {
LABEL_49:
        v63[(v56 >> 6) + 8] |= 1 << v56;
        *(v63[6] + v56) = v17;
        *(v63[7] + 8 * v56) = v48;
        v64 = v63[2];
        v37 = __OFADD__(v64, 1);
        v65 = v64 + 1;
        if (v37)
        {
          goto LABEL_62;
        }

        v63[2] = v65;
        goto LABEL_17;
      }
    }

    *(v63[7] + 8 * v56) = v48;
LABEL_17:
    *(v1 + v7) = v63;
    swift_endAccess();
LABEL_18:
    ++v16;

    if (v80 == v16)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void *sub_100502D44(void *a1, void *a2, void *a3, void *a4)
{
  v28 = a4;
  v29 = a1;
  v30 = a2;
  v6 = sub_100140278(&qword_1008DBEE8, &qword_1006DB7C0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - v8;
  v10 = sub_100140278(&qword_1008F1058, qword_1006F8BC0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v28 - v12;
  v14 = OBJC_IVAR___CHWorkoutDetailSwimmingSplitDataSource__metrics;
  v32 = &_swiftEmptyDictionarySingleton;
  sub_100140278(&qword_1008F1018, &qword_1006F6648);
  Published.init(initialValue:)();
  (*(v11 + 32))(&v4[v14], v13, v10);
  *&v4[OBJC_IVAR___CHWorkoutDetailSwimmingSplitDataSource_averagePaces] = &_swiftEmptyDictionarySingleton;
  *&v4[OBJC_IVAR___CHWorkoutDetailSwimmingSplitDataSource_columns] = &off_100845E40;
  *&v4[OBJC_IVAR___CHWorkoutDetailSwimmingSplitDataSource_columnSizes] = &_swiftEmptyDictionarySingleton;
  *&v4[OBJC_IVAR___WorkoutDetailSwimmingActivityDataSource_supportedPaceDistances] = &off_100845E68;
  v15 = OBJC_IVAR___WorkoutDetailSwimmingActivityDataSource__paceDistance;
  v32 = 100;
  Published.init(initialValue:)();
  (*(v7 + 32))(&v4[v15], v9, v6);
  *&v4[OBJC_IVAR___WorkoutDetailSwimmingActivityDataSource_dataCalculator] = a3;
  v16 = v28;
  v17 = v29;
  *&v4[OBJC_IVAR___WorkoutDetailSwimmingActivityDataSource_formattingManager] = v28;
  *&v4[OBJC_IVAR___WorkoutDetailSwimmingActivityDataSource_workout] = v17;
  v18 = v30;
  *&v4[OBJC_IVAR___WorkoutDetailSwimmingActivityDataSource_workoutActivity] = v30;
  v19 = type metadata accessor for WorkoutDetailSwimmingActivityDataSource(0);
  v31.receiver = v4;
  v31.super_class = v19;
  v20 = a3;
  v21 = v16;
  v22 = v17;
  v23 = v18;
  v24 = objc_msgSendSuper2(&v31, "init");
  v25 = *((swift_isaMask & *v24) + 0xC0);
  v26 = v24;
  v25();

  return v26;
}

uint64_t sub_1005030B4()
{
  v1 = OBJC_IVAR___CHWorkoutDetailSwimmingSplitDataSource__metrics;
  v2 = sub_100140278(&qword_1008F1058, qword_1006F8BC0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
}

void sub_100503240(uint64_t a1)
{
  sub_1005032E0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1005032E0(uint64_t a1)
{
  if (!qword_1008F1010)
  {
    sub_100141EEC(&qword_1008F1018, &qword_1006F6648);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &qword_1008F1010);
    }
  }
}

uint64_t sub_100503404@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for WorkoutDetailSwimmingSplitDataSource(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

unint64_t sub_10050344C@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = result;
  v5 = *(v2 + OBJC_IVAR____TtC10FitnessApp50WorkoutDetailColumnMetricSwimmingPreviewDataSource_titles);
  if (*(v5 + 16) <= result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = type metadata accessor for AttributedString();
  v7 = *(v6 - 8);
  v8 = *(v7 + 16);
  v9 = v5 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v3;

  return v8(a2, v9, v6);
}

uint64_t sub_1005034F8(uint64_t result, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (*(*(v2 + OBJC_IVAR____TtC10FitnessApp50WorkoutDetailColumnMetricSwimmingPreviewDataSource_values) + 16) <= a2)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v4 = result;
  sub_100140278(&unk_1008E4E50, &qword_1006D4A60);
  result = swift_allocObject();
  *(result + 16) = xmmword_1006D46C0;
  if (__OFADD__(v4, 1))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  *(result + 56) = &type metadata for Int;
  *(result + 64) = &protocol witness table for Int;
  *(result + 32) = v4 + 1;

  String.init(format:_:)();

  sub_10000FCBC();
  result = Text.init<A>(_:)();
  v7 = *(v2 + OBJC_IVAR___CHWorkoutDetailSwimmingSplitDataSource_columns);
  if (*(v7 + 16) > a2)
  {
    v8 = result;
    v9 = v5;
    v10 = v6;
    sub_10020A2B4(*(v7 + a2 + 32));
    Text.foregroundColor(_:)();

    v11 = AnyView.init<A>(_:)();
    sub_10004642C(v8, v9, v10 & 1);

    return v11;
  }

LABEL_9:
  __break(1u);
  return result;
}

void *sub_1005036D0(void *a1, void *a2, void *a3, void *a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a1;
  v35 = a2;
  v5 = sub_100140278(&qword_1008DBEE8, &qword_1006DB7C0);
  v30 = *(v5 - 8);
  v31 = v5;
  __chkstk_darwin(v5);
  v7 = &v29 - v6;
  v8 = sub_100140278(&qword_1008F1058, qword_1006F8BC0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v29 - v10;
  v12 = OBJC_IVAR____TtC10FitnessApp50WorkoutDetailColumnMetricSwimmingPreviewDataSource_titles;
  sub_100140278(&qword_1008DE580, &qword_1006D7D00);
  type metadata accessor for AttributedString();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1006D64F0;
  AttributedString.init(stringLiteral:)();
  AttributedString.init(stringLiteral:)();
  AttributedString.init(stringLiteral:)();
  *&v4[v12] = v13;
  *&v4[OBJC_IVAR____TtC10FitnessApp50WorkoutDetailColumnMetricSwimmingPreviewDataSource_values] = &off_100843970;
  v14 = OBJC_IVAR___CHWorkoutDetailSwimmingSplitDataSource__metrics;
  v37 = &_swiftEmptyDictionarySingleton;
  sub_100140278(&qword_1008F1018, &qword_1006F6648);
  Published.init(initialValue:)();
  (*(v9 + 32))(&v4[v14], v11, v8);
  *&v4[OBJC_IVAR___CHWorkoutDetailSwimmingSplitDataSource_averagePaces] = &_swiftEmptyDictionarySingleton;
  *&v4[OBJC_IVAR___CHWorkoutDetailSwimmingSplitDataSource_columns] = &off_1008439C0;
  *&v4[OBJC_IVAR___CHWorkoutDetailSwimmingSplitDataSource_columnSizes] = &_swiftEmptyDictionarySingleton;
  *&v4[OBJC_IVAR___WorkoutDetailSwimmingActivityDataSource_supportedPaceDistances] = &off_1008439E8;
  v15 = OBJC_IVAR___WorkoutDetailSwimmingActivityDataSource__paceDistance;
  v37 = 100;
  Published.init(initialValue:)();
  (*(v30 + 32))(&v4[v15], v7, v31);
  v17 = v32;
  v16 = v33;
  *&v4[OBJC_IVAR___WorkoutDetailSwimmingActivityDataSource_dataCalculator] = v32;
  *&v4[OBJC_IVAR___WorkoutDetailSwimmingActivityDataSource_formattingManager] = v16;
  v18 = v34;
  v19 = v35;
  *&v4[OBJC_IVAR___WorkoutDetailSwimmingActivityDataSource_workout] = v34;
  *&v4[OBJC_IVAR___WorkoutDetailSwimmingActivityDataSource_workoutActivity] = v19;
  v20 = type metadata accessor for WorkoutDetailSwimmingActivityDataSource(0);
  v36.receiver = v4;
  v36.super_class = v20;
  v21 = v17;
  v22 = v16;
  v23 = v18;
  v24 = v19;
  v25 = objc_msgSendSuper2(&v36, "init");
  v26 = *((swift_isaMask & *v25) + 0xC0);
  v27 = v25;
  v26();

  return v27;
}

uint64_t sub_100503B28()
{
}

id sub_100503B80(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100503C7C(uint64_t a1)
{
  result = sub_100503DD4(&qword_1008E4B28, type metadata accessor for WorkoutDetailSwimmingSplitDataSource, &unk_1006F6684);
  *(a1 + 8) = result;
  return result;
}

void sub_100503CDC(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v3;
}

uint64_t sub_100503D5C(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return static Published.subscript.setter();
}

uint64_t sub_100503DD4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_100503E1C@<D0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 32) = v6;
  return result;
}

uint64_t sub_100503EA4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_100507648(v2, v3, v4, v5, v6);
  return static Published.subscript.setter();
}

double sub_100503F50@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

void sub_100503FD4(char **a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v5 = type metadata accessor for Alert.Button();
  v474 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v451 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v451 - v9;
  __chkstk_darwin(v11);
  v13 = &v451 - v12;
  __chkstk_darwin(v14);
  v469 = &v451 - v15;
  __chkstk_darwin(v16);
  v470 = &v451 - v17;
  __chkstk_darwin(v18);
  v472 = &v451 - v19;
  v20 = sub_100140278(&qword_1008F1170, &unk_1006F6830);
  *&v21 = __chkstk_darwin(v20 - 8).n128_u64[0];
  v23 = &v451 - v22;
  v24 = *a1;
  v25 = a1[2];
  v26 = a1[3];
  v27 = *(a1 + 32);
  v473 = a2;
  switch(v27)
  {
    case 1:
      v471 = v5;
      v292 = v24;
      [v24 isMuted];
      v293 = ActivitySharingBundle();
      v294 = String._bridgeToObjectiveC()();
      v295 = [v293 localizedStringForKey:v294 value:0 table:0];

      v296 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v298 = v297;

      v475 = v296;
      v476 = v298;
      sub_10000FCBC();
      v472 = Text.init<A>(_:)();
      v439 = [objc_opt_self() mainBundle];
      v440 = String._bridgeToObjectiveC()();
      v441 = [v439 localizedStringForKey:v440 value:0 table:0];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_100140278(&unk_1008E4E50, &qword_1006D4A60);
      v442 = swift_allocObject();
      *(v442 + 16) = xmmword_1006D46C0;
      v443 = [v292 displayName];
      if (!v443)
      {
        goto LABEL_46;
      }

      v444 = v443;
      v445 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v447 = v446;

      *(v442 + 56) = &type metadata for String;
      *(v442 + 64) = sub_10000A788();
      *(v442 + 32) = v445;
      *(v442 + 40) = v447;
      v448 = String.init(format:_:)();
      v450 = v449;

      v475 = v448;
      v476 = v450;
      sub_10000FCBC();
      Text.init<A>(_:)();
      (*(v474 + 56))(v23, 1, 1, v471);
      goto LABEL_38;
    case 2:
      v472 = v23;
      v471 = v5;
      v182 = ActivitySharingBundle();
      v183 = String._bridgeToObjectiveC()();
      v184 = v24;
      v185 = [v182 localizedStringForKey:v183 value:0 table:0];

      v186 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v188 = v187;

      v475 = v186;
      v476 = v188;
      v5 = sub_10000FCBC();
      v470 = Text.init<A>(_:)();
      v469 = v189;
      LODWORD(v467) = v190;
      v468 = v191;
      v192 = ActivitySharingBundle();
      v193 = String._bridgeToObjectiveC()();
      v194 = [v192 localizedStringForKey:v193 value:0 table:0];

      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_100140278(&unk_1008E4E50, &qword_1006D4A60);
      v195 = swift_allocObject();
      *(v195 + 16) = xmmword_1006D1F70;
      v196 = [v184 displayName];
      if (!v196)
      {
        goto LABEL_43;
      }

      v197 = v196;
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v4 = v198;

      *(v195 + 56) = &type metadata for String;
      v199 = sub_10000A788();
      *(v195 + 64) = v199;
      *(v195 + 32) = v24;
      *(v195 + 40) = v4;
      v200 = [v184 displayName];
      if (v200)
      {
        goto LABEL_22;
      }

      __break(1u);
      goto LABEL_18;
    case 3:
      v472 = v23;
      v471 = v5;
      v254 = ActivitySharingBundle();
      v255 = String._bridgeToObjectiveC()();
      v256 = v24;
      v257 = [v254 localizedStringForKey:v255 value:0 table:0];

      v258 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v260 = v259;

      v475 = v258;
      v476 = v260;
      sub_10000FCBC();
      v470 = Text.init<A>(_:)();
      v469 = v261;
      LODWORD(v467) = v262;
      v468 = v263;
      v264 = ActivitySharingBundle();
      v265 = String._bridgeToObjectiveC()();
      v266 = [v264 localizedStringForKey:v265 value:0 table:0];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_100140278(&unk_1008E4E50, &qword_1006D4A60);
      v195 = swift_allocObject();
      *(v195 + 16) = xmmword_1006D1F70;
      v267 = [v256 displayName];
      if (!v267)
      {
        goto LABEL_45;
      }

      v268 = v267;
      v269 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v271 = v270;

      *(v195 + 56) = &type metadata for String;
      v199 = sub_10000A788();
      *(v195 + 64) = v199;
      *(v195 + 32) = v269;
      *(v195 + 40) = v271;
      v200 = [v256 displayName];
      if (!v200)
      {
        goto LABEL_53;
      }

LABEL_22:
      v272 = v200;
      v273 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v275 = v274;

      *(v195 + 96) = &type metadata for String;
      *(v195 + 104) = v199;
      *(v195 + 72) = v273;
      *(v195 + 80) = v275;
      v276 = String.init(format:_:)();
      v278 = v277;

      v475 = v276;
      v476 = v278;
      Text.init<A>(_:)();
      (*(v474 + 56))(v472, 1, 1, v471);
      goto LABEL_38;
    case 4:
      v471 = v5;
      v110 = objc_opt_self();
      v111 = [v110 mainBundle];
      v112 = String._bridgeToObjectiveC()();
      v7 = v24;
      v113 = [v111 localizedStringForKey:v112 value:0 table:0];

      v114 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v116 = v115;

      v475 = v114;
      v476 = v116;
      v5 = sub_10000FCBC();
      v4 = &type metadata for String;
      v472 = Text.init<A>(_:)();
      v470 = v117;
      LODWORD(v468) = v118;
      v469 = v119;
      [v7 isMyActivityDataCurrentlyHidden];
      v26 = [v110 mainBundle];
      v120 = String._bridgeToObjectiveC()();
      v24 = [v26 localizedStringForKey:v120 value:0 table:0];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_100140278(&unk_1008E4E50, &qword_1006D4A60);
      v121 = swift_allocObject();
      *(v121 + 16) = xmmword_1006D46C0;
      v122 = [v7 displayName];
      if (v122)
      {
        goto LABEL_32;
      }

      __break(1u);
      goto LABEL_10;
    case 5:
      v299 = ActivitySharingBundle();
      v300 = String._bridgeToObjectiveC()();
      v301 = [v299 localizedStringForKey:v300 value:0 table:0];

      v302 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v304 = v303;

      v475 = v302;
      v476 = v304;
      sub_10000FCBC();
      v471 = Text.init<A>(_:)();
      v468 = v305;
      LODWORD(v466) = v306;
      v467 = v307;
      v308 = ActivitySharingBundle();
      *&v465 = v24;
      v309 = String._bridgeToObjectiveC()();
      v310 = [v308 localizedStringForKey:v309 value:0 table:0];

      v311 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v313 = v312;

      v475 = v311;
      v476 = v313;
      v463 = Text.init<A>(_:)();
      v462 = v314;
      LODWORD(v457) = v315;
      v464 = v316;
      v317 = ActivitySharingBundle();
      v318 = String._bridgeToObjectiveC()();
      v319 = [v317 localizedStringForKey:v318 value:0 table:0];

      v320 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v322 = v321;

      v475 = v320;
      v476 = v322;
      v459 = Text.init<A>(_:)();
      v458 = v323;
      LODWORD(v460) = v324;
      v461 = v325;
      static Alert.Button.cancel(_:action:)();
      v326 = ActivitySharingBundle();
      v327 = String._bridgeToObjectiveC()();
      v328 = [v326 localizedStringForKey:v327 value:0 table:0];

      v329 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v331 = v330;

      v475 = v329;
      v476 = v331;
      v454 = Text.init<A>(_:)();
      v453 = v332;
      LODWORD(v455) = v333;
      v456 = v334;
      v335 = swift_allocObject();
      *(v335 + 16) = v465;
      *(v335 + 24) = v4;

      v336 = v470;
      static Alert.Button.destructive(_:action:)();
      v337 = v457 & 1;
      v338 = v474;
      v339 = *(v474 + 16);
      v339(v469, v472, v5);
      v339(v13, v336, v5);
      v340 = v463;
      v341 = v462;
      sub_10006965C(v463, v462, v337);

      Alert.init(title:message:primaryButton:secondaryButton:)();
      sub_10004642C(v454, v453, v455 & 1);

      sub_10004642C(v459, v458, v460 & 1);

      sub_10004642C(v340, v341, v337);

      v342 = *(v338 + 8);
      v342(v336, v5);
      v342(v472, v5);
      return;
    case 6:
      v471 = v5;
      v354 = objc_opt_self();
      v355 = [v354 mainBundle];
      v356 = String._bridgeToObjectiveC()();
      v357 = v24;
      v358 = [v355 localizedStringForKey:v356 value:0 table:0];

      v359 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v361 = v360;

      v475 = v359;
      v476 = v361;
      sub_10000FCBC();
      v472 = Text.init<A>(_:)();
      v470 = v362;
      LODWORD(v468) = v363;
      v469 = v364;
      v365 = [v354 mainBundle];
      v366 = String._bridgeToObjectiveC()();
      v367 = [v365 localizedStringForKey:v366 value:0 table:0];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_100140278(&unk_1008E4E50, &qword_1006D4A60);
      v121 = swift_allocObject();
      *(v121 + 16) = xmmword_1006D46C0;
      v122 = [v357 displayName];
      if (v122)
      {
        goto LABEL_32;
      }

      goto LABEL_48;
    case 7:
      v279 = [v24 as_competitionSendConfirmationTitle];
      v280 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v282 = v281;

      v475 = v280;
      v476 = v282;
      sub_10000FCBC();
      v283 = v474;
      v472 = Text.init<A>(_:)();
      v471 = v284;
      v285 = v5;
      v286 = [objc_opt_self() mainBundle];
      v287 = String._bridgeToObjectiveC()();
      v288 = [v286 localizedStringForKey:v287 value:0 table:0];

      v289 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v291 = v290;

      v475 = v289;
      v476 = v291;
      Text.init<A>(_:)();
      (*(v283 + 56))(v23, 1, 1, v285);
      goto LABEL_38;
    case 8:
      v468 = v25;
      v384 = [v24 as_competitionSendConfirmationTitle];
      v385 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v387 = v386;

      v475 = v385;
      v476 = v387;
      v467 = sub_10000FCBC();
      v464 = Text.init<A>(_:)();
      v463 = v388;
      LODWORD(v461) = v389;
      v462 = v390;
      v391 = [v24 as_competitionSendConfirmationMessageForExperienceType:v4];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v393 = v392;

      v466 = sub_100140278(&unk_1008E4E50, &qword_1006D4A60);
      v394 = swift_allocObject();
      v465 = xmmword_1006D46C0;
      *(v394 + 16) = xmmword_1006D46C0;
      v395 = [v24 displayName];
      if (!v395)
      {
        goto LABEL_50;
      }

      v396 = v395;
      v471 = v5;
      v397 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v399 = v398;

      *(v394 + 56) = &type metadata for String;
      v451 = sub_10000A788();
      *(v394 + 64) = v451;
      *(v394 + 32) = v397;
      *(v394 + 40) = v399;
      v457 = v393;
      v475 = String.init(format:_:)();
      v476 = v400;
      v459 = Text.init<A>(_:)();
      v458 = v401;
      LODWORD(v456) = v402;
      v460 = v403;
      v404 = [objc_opt_self() mainBundle];
      v405 = String._bridgeToObjectiveC()();
      v406 = [v404 localizedStringForKey:v405 value:0 table:0];

      v407 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v409 = v408;

      v475 = v407;
      v476 = v409;
      v410 = Text.init<A>(_:)();
      LODWORD(v452) = v411;
      v454 = v410;
      v453 = v412;
      v455 = v413;
      static Alert.Button.cancel(_:action:)();
      v414 = ActivitySharingBundle();
      v415 = String._bridgeToObjectiveC()();
      v416 = [v414 localizedStringForKey:v415 value:0 table:0];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v417 = swift_allocObject();
      *(v417 + 16) = v465;
      v418 = [v24 displayName];
      if (!v418)
      {
        goto LABEL_54;
      }

      v419 = v418;

      v420 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v422 = v421;

      v423 = v451;
      *(v417 + 56) = &type metadata for String;
      *(v417 + 64) = v423;
      *(v417 + 32) = v420;
      *(v417 + 40) = v422;
      v424 = String.init(format:_:)();
      v426 = v425;

      v475 = v424;
      v476 = v426;
      *&v465 = Text.init<A>(_:)();
      v457 = v427;
      LODWORD(v466) = v428;
      v467 = v429;
      v430 = swift_allocObject();
      *(v430 + 16) = v468;
      *(v430 + 24) = v26;

      v431 = v472;
      static Alert.Button.default(_:action:)();
      v432 = v456 & 1;
      v433 = v474;
      v434 = *(v474 + 16);
      v435 = v471;
      v434(v470, v10, v471);
      v434(v469, v431, v435);
      v436 = v459;
      v437 = v458;
      sub_10006965C(v459, v458, v432);

      Alert.init(title:message:primaryButton:secondaryButton:)();
      sub_10004642C(v465, v457, v466 & 1);

      sub_10004642C(v454, v453, v452 & 1);

      sub_10004642C(v436, v437, v432);

      v438 = *(v433 + 8);
      v438(v472, v435);
      v438(v10, v435);
      return;
    case 9:
      v471 = v5;
      v169 = ActivitySharingBundle();
      v170 = String._bridgeToObjectiveC()();
      v171 = [v169 localizedStringForKey:v170 value:0 table:0];

      v172 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v173 = v24;
      v175 = v174;

      v475 = v172;
      v476 = v175;
      sub_10000FCBC();
      v472 = Text.init<A>(_:)();
      v470 = v176;
      LODWORD(v468) = v177;
      v469 = v178;
      v179 = ActivitySharingBundle();
      v180 = String._bridgeToObjectiveC()();
      v181 = [v179 localizedStringForKey:v180 value:0 table:0];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_100140278(&unk_1008E4E50, &qword_1006D4A60);
      v121 = swift_allocObject();
      *(v121 + 16) = xmmword_1006D46C0;
      v122 = [v173 displayName];
      if (v122)
      {
        goto LABEL_32;
      }

      goto LABEL_42;
    case 10:
      v471 = v5;
      v368 = [v24 as_competitionSendConfirmationTitle];
      v369 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v371 = v370;

      v475 = v369;
      v476 = v371;
      sub_10000FCBC();
      v472 = Text.init<A>(_:)();
      v470 = v372;
      v469 = v373;
      v374 = ActivitySharingBundle();
      v375 = String._bridgeToObjectiveC()();
      v376 = [v374 localizedStringForKey:v375 value:0 table:0];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_100140278(&unk_1008E4E50, &qword_1006D4A60);
      v121 = swift_allocObject();
      *(v121 + 16) = xmmword_1006D46C0;
      v122 = [v24 displayName];
      if (!v122)
      {
        goto LABEL_49;
      }

LABEL_32:
      v377 = v122;
      v378 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v380 = v379;

      *(v121 + 56) = &type metadata for String;
      *(v121 + 64) = sub_10000A788();
      *(v121 + 32) = v378;
      *(v121 + 40) = v380;
      v381 = String.init(format:_:)();
      v383 = v382;

      v475 = v381;
      v476 = v383;
      Text.init<A>(_:)();
      (*(v474 + 56))(v23, 1, 1, v471);
      goto LABEL_38;
    case 11:
      v468 = v25;
      v53 = [v24 as_competitionSendConfirmationTitle];
      v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v56 = v55;

      v475 = v54;
      v476 = v56;
      v463 = sub_10000FCBC();
      v467 = Text.init<A>(_:)();
      v466 = v57;
      LODWORD(v464) = v58;
      *&v465 = v59;
      v462 = objc_opt_self();
      v60 = [v462 mainBundle];
      v61 = String._bridgeToObjectiveC()();
      v62 = v24;
      v63 = [v60 localizedStringForKey:v61 value:0 table:0];

      v461 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_100140278(&unk_1008E4E50, &qword_1006D4A60);
      v64 = swift_allocObject();
      *(v64 + 16) = xmmword_1006D1F70;
      v65 = [v62 displayName];
      if (v65)
      {
        v66 = v65;
        v471 = v5;
        v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v69 = v68;

        *(v64 + 56) = &type metadata for String;
        v70 = sub_10000A788();
        *(v64 + 64) = v70;
        *(v64 + 32) = v67;
        *(v64 + 40) = v69;
        v71 = [v62 displayName];
        if (v71)
        {
          v72 = v71;
          v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v75 = v74;

          *(v64 + 96) = &type metadata for String;
          *(v64 + 104) = v70;
          *(v64 + 72) = v73;
          *(v64 + 80) = v75;
          v76 = String.init(format:_:)();
          v78 = v77;

          v475 = v76;
          v476 = v78;
          v460 = Text.init<A>(_:)();
          v459 = v79;
          LODWORD(v458) = v80;
          v461 = v81;
          v82 = [v462 mainBundle];
          v83 = String._bridgeToObjectiveC()();
          v84 = [v82 localizedStringForKey:v83 value:0 table:0];

          v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v87 = v86;

          v475 = v85;
          v476 = v87;
          v456 = Text.init<A>(_:)();
          v455 = v88;
          LODWORD(v457) = v89;
          v462 = v90;
          v91 = v472;
          static Alert.Button.cancel(_:action:)();
          v92 = ActivitySharingBundle();
          v93 = String._bridgeToObjectiveC()();
          v94 = [v92 localizedStringForKey:v93 value:0 table:0];

          v95 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v97 = v96;

          v475 = v95;
          v476 = v97;
          v453 = Text.init<A>(_:)();
          v452 = v98;
          LODWORD(v454) = v99;
          v463 = v100;
          v101 = swift_allocObject();
          *(v101 + 16) = v4;
          *(v101 + 24) = v468;

          v102 = v470;
          static Alert.Button.default(_:action:)();
          LOBYTE(v97) = v458 & 1;
          v103 = v474;
          v104 = *(v474 + 16);
          v105 = v91;
          v106 = v471;
          v104(v469, v105, v471);
          v104(v13, v102, v106);
          v107 = v460;
          v108 = v459;
          sub_10006965C(v460, v459, v97);

          Alert.init(title:message:primaryButton:secondaryButton:)();
          sub_10004642C(v453, v452, v454 & 1);

          sub_10004642C(v456, v455, v457 & 1);

          sub_10004642C(v107, v108, v97);

          v109 = *(v103 + 8);
          v109(v102, v106);
          v109(v472, v106);
          return;
        }
      }

      else
      {
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
      }

      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
      return;
    case 12:
LABEL_10:
      v468 = v25;
      v123 = [v24 as_competitionReceivedNotificationTitle];
      v124 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v126 = v125;

      v475 = v124;
      v476 = v126;
      sub_10000FCBC();
      v467 = Text.init<A>(_:)();
      v466 = v127;
      LODWORD(v464) = v128;
      *&v465 = v129;
      v130 = [v24 as_competitionReceivedNotificationMessageForExperienceType:v4];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100140278(&unk_1008E4E50, &qword_1006D4A60);
      v131 = swift_allocObject();
      *(v131 + 16) = xmmword_1006D46C0;
      v132 = [v24 displayName];
      if (!v132)
      {
        goto LABEL_41;
      }

      v133 = v132;
      v471 = v5;
      v134 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v136 = v135;

      *(v131 + 56) = &type metadata for String;
      *(v131 + 64) = sub_10000A788();
      *(v131 + 32) = v134;
      *(v131 + 40) = v136;
      v475 = String.init(format:_:)();
      v476 = v137;
      v462 = Text.init<A>(_:)();
      v461 = v138;
      v140 = v139;
      v463 = v141;
      v142 = [objc_opt_self() mainBundle];
      v143 = String._bridgeToObjectiveC()();
      v144 = [v142 localizedStringForKey:v143 value:0 table:0];

      v145 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v147 = v146;

      v475 = v145;
      v476 = v147;
      v148 = Text.init<A>(_:)();
      LODWORD(v457) = v149;
      v459 = v148;
      v458 = v150;
      v460 = v151;
      static Alert.Button.cancel(_:action:)();
      v152 = String._bridgeToObjectiveC()();
      v153 = ActivitySharingBundle();
      v154 = FIRandomStringForPrefixWithTableName();

      if (!v154)
      {
        goto LABEL_52;
      }

      v155 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v157 = v156;

      v475 = v155;
      v476 = v157;
      v454 = Text.init<A>(_:)();
      v453 = v158;
      LODWORD(v455) = v159;
      v456 = v160;
      v161 = swift_allocObject();
      *(v161 + 16) = v468;
      *(v161 + 24) = v26;

      v162 = v472;
      static Alert.Button.default(_:action:)();
      v163 = v474;
      v164 = *(v474 + 16);
      v165 = v471;
      v164(v470, v7, v471);
      v164(v469, v162, v165);
      v166 = v462;
      v167 = v461;
      sub_10006965C(v462, v461, v140 & 1);

      Alert.init(title:message:primaryButton:secondaryButton:)();
      sub_10004642C(v454, v453, v455 & 1);

      sub_10004642C(v459, v458, v457 & 1);

      sub_10004642C(v166, v167, v140 & 1);

      v168 = *(v163 + 8);
      v168(v472, v165);
      v168(v7, v165);
      return;
    case 13:
      v471 = v5;
      v343 = v474;
      v344 = [v24 as_competitionAcceptConfirmationTitle];
      v345 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v347 = v346;

      v475 = v345;
      v476 = v347;
      sub_10000FCBC();
      v472 = Text.init<A>(_:)();
      v348 = [v24 competitionPendingAcceptance];
      if (!v348)
      {
        goto LABEL_47;
      }

      v349 = v348;
      v350 = [v24 as_competitionAcceptConfirmationMessageForCompetition:v348 experienceType:v4];

      v351 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v353 = v352;

      v475 = v351;
      v476 = v353;
      Text.init<A>(_:)();
      (*(v343 + 56))(v23, 1, 1, v471);
LABEL_38:
      Alert.init(title:message:dismissButton:)();
      return;
    case 14:
      v472 = v23;
      v40 = ActivitySharingBundle();
      v41 = String._bridgeToObjectiveC()();
      v42 = [v40 localizedStringForKey:v41 value:0 table:0];

      v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v44 = v24;
      v46 = v45;

      v475 = v43;
      v476 = v46;
      sub_10000FCBC();
      v47 = v474;
      v471 = Text.init<A>(_:)();
      v470 = v48;
      v49 = [v44 as_competitionAcceptErrorMessage];
      v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v52 = v51;

      v475 = v50;
      v476 = v52;
      Text.init<A>(_:)();
      (*(v47 + 56))(v472, 1, 1, v5);
      goto LABEL_38;
    case 15:
LABEL_18:
      v468 = v25;
      v471 = v5;
      v201 = [v24 as_competitionReceivedNotificationTitle];
      v202 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v204 = v203;

      v475 = v202;
      v476 = v204;
      v463 = sub_10000FCBC();
      v467 = Text.init<A>(_:)();
      v466 = v205;
      LODWORD(v464) = v206;
      *&v465 = v207;
      v208 = objc_opt_self();
      v209 = [v208 mainBundle];
      v210 = String._bridgeToObjectiveC()();
      v211 = v24;
      v212 = [v209 localizedStringForKey:v210 value:0 table:0];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_100140278(&unk_1008E4E50, &qword_1006D4A60);
      v213 = swift_allocObject();
      *(v213 + 16) = xmmword_1006D46C0;
      v214 = [v211 displayName];
      if (!v214)
      {
        goto LABEL_44;
      }

      v215 = v214;
      v216 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v218 = v217;

      *(v213 + 56) = &type metadata for String;
      *(v213 + 64) = sub_10000A788();
      *(v213 + 32) = v216;
      *(v213 + 40) = v218;
      v219 = String.init(format:_:)();
      v221 = v220;

      v475 = v219;
      v476 = v221;
      v461 = Text.init<A>(_:)();
      v460 = v222;
      v224 = v223;
      v462 = v225;
      v226 = [v208 mainBundle];
      v227 = String._bridgeToObjectiveC()();
      v228 = [v226 localizedStringForKey:v227 value:0 table:0];

      v229 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v231 = v230;

      v475 = v229;
      v476 = v231;
      v457 = Text.init<A>(_:)();
      v456 = v232;
      LODWORD(v458) = v233;
      v459 = v234;
      v235 = v472;
      static Alert.Button.cancel(_:action:)();
      v236 = ActivitySharingBundle();
      v237 = String._bridgeToObjectiveC()();
      v238 = [v236 localizedStringForKey:v237 value:0 table:0];

      v239 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v241 = v240;

      v475 = v239;
      v476 = v241;
      v454 = Text.init<A>(_:)();
      v453 = v242;
      LODWORD(v455) = v243;
      v463 = v244;
      v245 = swift_allocObject();
      *(v245 + 16) = v4;
      *(v245 + 24) = v468;

      v246 = v470;
      static Alert.Button.default(_:action:)();
      v224 &= 1u;
      v247 = v474;
      v248 = *(v474 + 16);
      v249 = v235;
      v250 = v471;
      v248(v469, v249, v471);
      v248(v13, v246, v250);
      v251 = v461;
      v252 = v460;
      sub_10006965C(v461, v460, v224);

      Alert.init(title:message:primaryButton:secondaryButton:)();
      sub_10004642C(v454, v453, v455 & 1);

      sub_10004642C(v457, v456, v458 & 1);

      sub_10004642C(v251, v252, v224);

      v253 = *(v247 + 8);
      v253(v246, v250);
      v253(v472, v250);
      return;
    case 16:
      v471 = v5;
      v39 = v474;
      LocalizedStringKey.init(stringLiteral:)();
      Text.init(_:tableName:bundle:comment:)();
      LocalizedStringKey.init(stringLiteral:)();
      Text.init(_:tableName:bundle:comment:)();
      (*(v39 + 56))(v23, 1, 1, v471);
      goto LABEL_38;
    default:
      v28 = [v24 as_competitionLearnMoreTitleForExperienceType:{v4, v21}];
      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v24;
      v32 = v31;

      v475 = v29;
      v476 = v32;
      sub_10000FCBC();
      v472 = Text.init<A>(_:)();
      v471 = v33;
      v34 = v474;
      v35 = [v30 as_competitionLearnMoreFullDescriptionForExperienceType:1];
      v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v38 = v37;

      v475 = v36;
      v476 = v38;
      Text.init<A>(_:)();
      (*(v34 + 56))(v23, 1, 1, v5);
      goto LABEL_38;
  }
}

uint64_t sub_100507324()
{
  type metadata accessor for MainActor();
  *(v0 + 64) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1005073B8, v2, v1);
}

uint64_t sub_1005073B8()
{

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 48) = -1;

  static Published.subscript.setter();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100507474()
{
  v1 = OBJC_IVAR____TtC10FitnessApp43ActivitySharingFriendDetailAlertCoordinator__presentedAlertType;
  v2 = sub_100140278(&qword_1008E0398, "f\a\v");
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

void sub_100507500(uint64_t a1)
{
  sub_10050759C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10050759C(uint64_t a1)
{
  if (!qword_1008F10A8)
  {
    sub_100141EEC(&qword_1008E03A0, qword_1006DBA70);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &qword_1008F10A8);
    }
  }
}

uint64_t sub_100507600@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for ActivitySharingFriendDetailAlertCoordinator(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

id sub_100507648(id result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_1002EFD8C(result, a2, a3, a4, a5);
  }

  return result;
}

uint64_t type metadata accessor for FitnessPlusStackItemView(uint64_t a1)
{
  result = qword_1008F11D8;
  if (!qword_1008F11D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1005076D4(uint64_t a1)
{
  type metadata accessor for FitnessPlusStackViewModel(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for StackFormattingManager();
    if (v2 <= 0x3F)
    {
      type metadata accessor for SeymourCatalogItemDataProvider();
      if (v3 <= 0x3F)
      {
        sub_1001E76CC(319);
        if (v4 <= 0x3F)
        {
          sub_1001E7730(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1005077C4(uint64_t a1)
{
  result = static Font.body.getter();
  qword_1008F1178 = result;
  return result;
}

uint64_t sub_1005077E4@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for FitnessPlusStackItemView(0);
  v5 = v4 - 8;
  v35 = *(v4 - 8);
  __chkstk_darwin(v4);
  v36 = v6;
  v37 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AttributedString();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v34 - v12;
  v14 = *(v2 + *(v5 + 36));
  sub_100140278(&qword_1008E09C0, qword_1006DC5C0);
  State.wrappedValue.getter();
  sub_100409544(v2);
  AttributedString.init(_:)();
  v15 = objc_opt_self();
  v16.super.isa = Date._bridgeToObjectiveC()().super.isa;
  if (qword_1008DAAD8 != -1)
  {
    swift_once();
  }

  v17 = [v15 formattedListStringForDate:v16.super.isa font:qword_1008ECA68];

  v18 = [v17 string];
  v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  *a1 = swift_getKeyPath();
  sub_100140278(&qword_1008EE6A0, &unk_1006D5790);
  swift_storeEnumTagMultiPayload();
  v21 = sub_100140278(&qword_1008F1220, &qword_1006F6960);
  v22 = a1 + v21[15];
  *v22 = xmmword_1006DC5B0;
  *(v22 + 2) = 0;
  *(v22 + 3) = 0;
  *(a1 + v21[9]) = v14;
  v23 = *(v8 + 16);
  v23(a1 + v21[10], v13, v7);
  v23(a1 + v21[11], v10, v7);
  v24 = (a1 + v21[12]);
  *v24 = v34;
  v24[1] = v20;
  *(a1 + v21[13]) = 0;
  sub_100507C14(v2, (a1 + v21[14]));
  v25 = *(v8 + 8);
  v25(v10, v7);
  v25(v13, v7);
  v26 = *(type metadata accessor for FitnessPlusStackViewModel(0) + 36);
  v27 = *(sub_100140278(&qword_1008F1228, &qword_1006F6968) + 52);
  v28 = type metadata accessor for UUID();
  (*(*(v28 - 8) + 16))(a1 + v27, v2 + v26, v28);
  v29 = v37;
  sub_100508BF8(v2, v37);
  v30 = (*(v35 + 80) + 16) & ~*(v35 + 80);
  v31 = swift_allocObject();
  sub_100508C5C(v29, v31 + v30);
  v32 = (a1 + *(sub_100140278(&qword_1008F1230, &unk_1006F6980) + 36));
  type metadata accessor for _TaskModifier();
  result = static TaskPriority.userInitiated.getter();
  *v32 = &unk_1006F6978;
  v32[1] = v31;
  return result;
}

void sub_100507C14(uint64_t a1@<X0>, void *a2@<X8>)
{
  v44 = sub_100140278(&qword_1008F1238, &qword_1006F6990);
  __chkstk_darwin(v44);
  v5 = &v38 - v4;
  v6 = sub_100140278(&qword_1008F1240, &qword_1006F6998);
  __chkstk_darwin(v6);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v38 - v10;
  v12 = sub_100140278(&qword_1008F1248, &unk_1006F69A0);
  __chkstk_darwin(v12);
  v14 = &v38 - v13;
  v48 = *(a1 + *(type metadata accessor for FitnessPlusStackItemView(0) + 32));
  sub_100140278(&qword_1008E0038, &qword_1006DB620);
  State.wrappedValue.getter();
  v15 = v47;
  if (v47)
  {
    v42 = a1;
    v43 = v12;
    v16 = objc_opt_self();

    v17 = [v16 briskColors];
    if (v17)
    {
      v18 = v17;
      v39 = v11;
      v40 = v6;
      v41 = a2;
      v19 = [v17 nonGradientTextColor];

      if (v19)
      {
        v20 = Color.init(_:)();
        KeyPath = swift_getKeyPath();
        v22 = &v5[*(v44 + 36)];
        v23 = *(type metadata accessor for RoundedRectangle() + 20);
        v24 = enum case for RoundedCornerStyle.continuous(_:);
        v25 = type metadata accessor for RoundedCornerStyle();
        (*(*(v25 - 8) + 104))(&v22[v23], v24, v25);
        __asm { FMOV            V0.2D, #4.0 }

        *v22 = _Q0;
        *&v22[*(sub_100140278(&qword_1008DE1E0, &unk_1006DC6E0) + 36)] = 256;
        *v5 = v15;
        *(v5 + 1) = 0;
        *(v5 + 8) = 1;
        *(v5 + 3) = KeyPath;
        *(v5 + 4) = v20;
        static Alignment.center.getter();
        _FrameLayout.init(width:height:alignment:)();
        sub_100015E80(v5, v8, &qword_1008F1238, &qword_1006F6990);
        v31 = v39;
        v32 = &v8[*(v40 + 36)];
        v33 = v49;
        *v32 = v48;
        *(v32 + 1) = v33;
        *(v32 + 2) = v50;
        sub_100015E80(v8, v31, &qword_1008F1240, &qword_1006F6998);
        sub_100509074(v31, v14);
        swift_storeEnumTagMultiPayload();
        sub_100140278(&qword_1008E0090, &unk_1006F7A00);
        sub_100508E78();
        sub_1001D1144();
        _ConditionalContent<>.init(storage:)();

        sub_10000EA04(v31, &qword_1008F1240, &qword_1006F6998);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v34 = v48;
    v35 = BYTE8(v48);
    v36 = v49;
    v37 = BYTE8(v49);
    LOBYTE(v47) = 1;
    v46 = BYTE8(v48);
    v45 = BYTE8(v49);
    *v14 = 0;
    v14[8] = 1;
    *(v14 + 2) = v34;
    v14[24] = v35;
    *(v14 + 4) = v36;
    v14[40] = v37;
    *(v14 + 3) = v50;
    swift_storeEnumTagMultiPayload();
    sub_100140278(&qword_1008E0090, &unk_1006F7A00);
    sub_100508E78();
    sub_1001D1144();
    _ConditionalContent<>.init(storage:)();
  }
}

uint64_t sub_1005080C0(uint64_t a1)
{
  v1[5] = a1;
  v2 = type metadata accessor for FitnessPlusStackItemView(0);
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v1[8] = *(v3 + 64);
  v1[9] = swift_task_alloc();
  sub_100140278(&qword_1008E0AD8, &qword_1006EE320);
  v1[10] = swift_task_alloc();
  v4 = type metadata accessor for Image.ResizingMode();
  v1[11] = v4;
  v1[12] = *(v4 - 8);
  v1[13] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[14] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100508250, v6, v5);
}

uint64_t sub_100508250()
{

  v1 = String._bridgeToObjectiveC()();
  v2 = [objc_opt_self() smm_systemImageNamed:v1];

  if (v2)
  {
    v4 = v0[12];
    v3 = v0[13];
    v5 = v0[10];
    v6 = v0[11];
    v8 = v0[5];
    v7 = v0[6];
    v9 = v2;
    Image.init(uiImage:)();
    (*(v4 + 104))(v3, enum case for Image.ResizingMode.stretch(_:), v6);
    Image.resizable(capInsets:resizingMode:)();

    (*(v4 + 8))(v3, v6);
    v10 = enum case for Image.TemplateRenderingMode.template(_:);
    v11 = type metadata accessor for Image.TemplateRenderingMode();
    v12 = *(v11 - 8);
    (*(v12 + 104))(v5, v10, v11);
    (*(v12 + 56))(v5, 0, 1, v11);
    v13 = Image.renderingMode(_:)();

    sub_10000EA04(v5, &qword_1008E0AD8, &qword_1006EE320);
    v14 = (v8 + *(v7 + 32));
    v15 = *v14;
    v16 = v14[1];
    v0[4] = v13;
    v0[2] = v15;
    v0[3] = v16;

    sub_100140278(&qword_1008E0038, &qword_1006DB620);
    State.wrappedValue.setter();
  }

  v17 = v0[9];
  v18 = v0[7];
  v19 = v0[5];
  sub_100508BF8(v19, v17);
  v20 = (*(v18 + 80) + 16) & ~*(v18 + 80);
  v21 = swift_allocObject();
  sub_100508C5C(v17, v21 + v20);
  sub_100417014(v19, sub_100508D8C, v21);

  v22 = v0[1];

  return v22();
}

uint64_t sub_100508564(char *a1, uint64_t a2)
{
  v4 = type metadata accessor for FitnessPlusStackItemView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = type metadata accessor for AttributedString();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v26 = v5;
    v27 = v9;
    v12 = *&a1[OBJC_IVAR___CHCatalogItemViewModel_title];
    v25 = a1;
    v13 = v12;
    AttributedString.init(_:)();
    v28 = static Color.white.getter();
    sub_10005FAB0();
    AttributedString.subscript.setter();
    if (qword_1008DACD0 != -1)
    {
      swift_once();
    }

    v28 = qword_1008F1178;
    sub_10005F988();

    v14 = AttributedString.subscript.setter();
    __chkstk_darwin(v14);
    *(&v24 - 2) = a2;
    *(&v24 - 1) = v11;
    static Animation.default.getter();
    withAnimation<A>(_:_:)();

    if (*(a2 + *(v4 + 28)))
    {
      v15 = 48.0;
    }

    else
    {
      v15 = 34.0;
    }

    sub_100508BF8(a2, &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    v16 = (*(v26 + 80) + 16) & ~*(v26 + 80);
    v17 = swift_allocObject();
    sub_100508C5C(&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
    v18 = v25;
    sub_100419358(v25, sub_100508DC0, v17, v15, v15);

    return (*(v8 + 8))(v11, v27);
  }

  else
  {
    v20 = static os_log_type_t.error.getter();
    v21 = HKLogActivity;
    sub_100140278(&unk_1008E4E50, &qword_1006D4A60);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1006D46C0;
    *(v22 + 56) = &type metadata for String;
    *(v22 + 64) = sub_10000A788();
    *(v22 + 32) = 0xD000000000000019;
    *(v22 + 40) = 0x80000001007607F0;
    v23 = v21;
    os_log(_:dso:log:_:_:)(v20, &_mh_execute_header, v23, "%@ failed to fetch catalog item view model for stack", 52, 2, v22);
  }
}

uint64_t sub_10050895C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AttributedString();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v7);
  v10 = v13 - v9;
  v11 = *(v4 + 16);
  v11(v13 - v9, a2, v3, v8);
  type metadata accessor for FitnessPlusStackItemView(0);
  (v11)(v6, v10, v3);
  sub_100140278(&qword_1008E09C0, qword_1006DC5C0);
  State.wrappedValue.setter();
  return (*(v4 + 8))(v10, v3);
}

double sub_100508AC4(uint64_t a1)
{
  if (a1)
  {
    __chkstk_darwin(a1);
    v2 = v1;
    static Animation.default.getter();
    withAnimation<A>(_:_:)();
  }

  return result;
}

uint64_t sub_100508B74(uint64_t a1, void *a2)
{
  v2 = a2;
  Image.init(uiImage:)();
  type metadata accessor for FitnessPlusStackItemView(0);
  sub_100140278(&qword_1008E0038, &qword_1006DB620);
  return State.wrappedValue.setter();
}

uint64_t sub_100508BF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FitnessPlusStackItemView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100508C5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FitnessPlusStackItemView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100508CC0()
{
  v2 = *(type metadata accessor for FitnessPlusStackItemView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10002BACC;

  return sub_1005080C0(v0 + v3);
}

uint64_t sub_100508DD8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for FitnessPlusStackItemView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

unint64_t sub_100508E78()
{
  result = qword_1008F1250;
  if (!qword_1008F1250)
  {
    sub_100141EEC(&qword_1008F1240, &qword_1006F6998);
    sub_100508F04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F1250);
  }

  return result;
}

unint64_t sub_100508F04()
{
  result = qword_1008F1258;
  if (!qword_1008F1258)
  {
    sub_100141EEC(&qword_1008F1238, &qword_1006F6990);
    sub_100508FBC();
    sub_10014A6B0(&qword_1008E0760, &qword_1008DE1E0, &unk_1006DC6E0, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F1258);
  }

  return result;
}

unint64_t sub_100508FBC()
{
  result = qword_1008F1260;
  if (!qword_1008F1260)
  {
    sub_100141EEC(&qword_1008F1268, &unk_1006F69B0);
    sub_10024504C();
    sub_10014A6B0(&qword_1008E44F8, &qword_1008E4500, &qword_1006E1D10, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F1260);
  }

  return result;
}

uint64_t sub_100509074(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008F1240, &qword_1006F6998);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1005090E4()
{
  result = qword_1008F1270;
  if (!qword_1008F1270)
  {
    sub_100141EEC(&qword_1008F1230, &unk_1006F6980);
    sub_10014A6B0(&qword_1008F1278, &qword_1008F1228, &qword_1006F6968, &protocol conformance descriptor for IDView<A, B>);
    sub_100358B68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F1270);
  }

  return result;
}

Class sub_1005091DC(void *a1, uint64_t a2, void (*a3)(void))
{
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1;
  a3();

  v10.super.isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v6 + 8))(v8, v5);

  return v10.super.isa;
}

id sub_100509664(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DownhillRunBridge();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10050970C(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v5 = type metadata accessor for UIListContentConfiguration();
  sub_100163368(v5, a2);
  sub_10001AC90(v5, a2);
  return a3();
}

void sub_100509764()
{
  v0 = objc_opt_self();
  v1 = UIFontTextStyleBody;
  v2 = [v0 _preferredFontForTextStyle:v1 variant:256];

  qword_1008F12E0 = v2;
}

void sub_1005097D4()
{
  v0 = [objc_opt_self() briskColors];
  if (v0)
  {
    v1 = v0;
    v2 = [v0 nonGradientTextColor];

    if (v2)
    {
      qword_1008F12E8 = v2;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_100509848(uint64_t a1)
{
  result = _UISolariumEnabled();
  v2 = 9.0;
  if (result)
  {
    v2 = 2.0;
  }

  qword_1008F12F0 = *&v2;
  return result;
}

char *sub_100509878(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v46 = a2;
  v43 = a1;
  v4 = type metadata accessor for UIListContentConfiguration.TextProperties();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = OBJC_IVAR____TtC10FitnessApp25ActivityTileSectionHeader_titleLabel;
  v8 = objc_allocWithZone(UILabel);
  v9 = [v8 initWithFrame:{0.0, 0.0, 0.0, 0.0, v43}];
  if (qword_1008DACD8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for UIListContentConfiguration();
  v45 = sub_10001AC90(v10, qword_1008F12B0);
  UIListContentConfiguration.textProperties.getter();
  v11 = UIListContentConfiguration.TextProperties.font.getter();
  v12 = *(v5 + 8);
  v12(v7, v4);
  v13 = UILabel.withFont(_:)();

  v14 = objc_opt_self();
  v15 = [v14 labelColor];
  v16 = UILabel.withTextColor(_:)();

  [v16 setLineBreakMode:0];
  [v16 setNumberOfLines:0];
  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v3[v44] = v16;
  v44 = OBJC_IVAR____TtC10FitnessApp25ActivityTileSectionHeader_subtitleLabel;
  v17 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  if (qword_1008DACE0 != -1)
  {
    swift_once();
  }

  sub_10001AC90(v10, qword_1008F12C8);
  UIListContentConfiguration.textProperties.getter();
  v18 = UIListContentConfiguration.TextProperties.font.getter();
  v12(v7, v4);
  v19 = UILabel.withFont(_:)();

  v20 = [v14 secondaryLabelColor];
  v21 = UILabel.withTextColor(_:)();

  [v21 setLineBreakMode:0];
  [v21 setNumberOfLines:0];
  [v21 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v3[v44] = v21;
  v22 = OBJC_IVAR____TtC10FitnessApp25ActivityTileSectionHeader_button;
  v23 = [objc_opt_self() buttonWithType:1];
  v24 = qword_1008DACF0;
  v25 = v23;
  if (v24 != -1)
  {
    swift_once();
  }

  [v25 setTintColor:qword_1008F12E8];
  if (qword_1008DACE8 != -1)
  {
    swift_once();
  }

  v26 = qword_1008F12E0;
  v27 = [v25 titleLabel];
  [v27 setFont:v26];

  [v25 setHidden:1];
  [v25 setTranslatesAutoresizingMaskIntoConstraints:0];

  *&v3[v22] = v25;
  v28 = &v3[OBJC_IVAR____TtC10FitnessApp25ActivityTileSectionHeader_buttonAction];
  *v28 = 0;
  *(v28 + 1) = 0;
  *&v3[OBJC_IVAR____TtC10FitnessApp25ActivityTileSectionHeader_activeConstraints] = _swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR____TtC10FitnessApp25ActivityTileSectionHeader_titleTapGestureRecognizer] = 0;
  if (v46)
  {
    v29 = String._bridgeToObjectiveC()();
  }

  else
  {
    v29 = 0;
  }

  v30 = type metadata accessor for ActivityTileSectionHeader();
  v47.receiver = v3;
  v47.super_class = v30;
  v31 = objc_msgSendSuper2(&v47, "initWithReuseIdentifier:", v29);

  v32 = v31;
  UIListContentConfiguration.directionalLayoutMargins.getter();
  [v32 setDirectionalLayoutMargins:?];
  [v32 setIsAccessibilityElement:0];
  v33 = [v32 contentView];
  v34 = OBJC_IVAR____TtC10FitnessApp25ActivityTileSectionHeader_titleLabel;
  [v33 addSubview:*&v32[OBJC_IVAR____TtC10FitnessApp25ActivityTileSectionHeader_titleLabel]];

  v35 = [v32 contentView];
  [v35 addSubview:*&v32[OBJC_IVAR____TtC10FitnessApp25ActivityTileSectionHeader_subtitleLabel]];

  if (_UISolariumEnabled())
  {
    v36 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v32 action:"didTapButton"];
    v37 = *&v32[OBJC_IVAR____TtC10FitnessApp25ActivityTileSectionHeader_titleTapGestureRecognizer];
    *&v32[OBJC_IVAR____TtC10FitnessApp25ActivityTileSectionHeader_titleTapGestureRecognizer] = v36;
    v38 = v36;

    [v38 setEnabled:0];
    [*&v32[v34] addGestureRecognizer:v38];
  }

  else
  {
    v39 = OBJC_IVAR____TtC10FitnessApp25ActivityTileSectionHeader_button;
    v40 = *&v32[OBJC_IVAR____TtC10FitnessApp25ActivityTileSectionHeader_button];
    v41 = v32;
    [v40 addTarget:v41 action:"didTapButton" forControlEvents:64];
    v38 = [v41 contentView];

    [v38 addSubview:*&v32[v39]];
  }

  return v32;
}

void sub_100509EF8(uint64_t a1, double a2)
{
  v3 = v2;
  if (_UISolariumEnabled())
  {
    v5 = *&v2[OBJC_IVAR____TtC10FitnessApp25ActivityTileSectionHeader_titleLabel];
    v6 = [v5 text];
    v7 = v6;
    if (v6)
    {
    }

    v122 = v7;
    v123 = *&v2[OBJC_IVAR____TtC10FitnessApp25ActivityTileSectionHeader_subtitleLabel];
    v8 = [v123 text];
    v9 = v8;
    if (v8)
    {
    }

    sub_100140278(&unk_1008E4E20, &qword_1006D5040);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1006D68B0;
    v11 = [v5 leadingAnchor];
    v12 = [v3 contentView];
    v13 = [v12 leadingAnchor];

    v14 = [v11 constraintEqualToAnchor:v13 constant:a2];
    *(v10 + 32) = v14;
    v15 = [v5 trailingAnchor];
    v16 = [v3 contentView];
    v17 = [v16 trailingAnchor];

    v18 = [v15 constraintEqualToAnchor:v17 constant:-a2];
    *(v10 + 40) = v18;
    v19 = [v5 topAnchor];
    v20 = [v3 contentView];
    v21 = [v20 topAnchor];

    v22 = [v19 constraintEqualToAnchor:v21 constant:25.0];
    *(v10 + 48) = v22;
    v23 = [v5 bottomAnchor];
    if (v9)
    {
      v24 = v123;
      v25 = [v123 topAnchor];
      if (qword_1008DACF8 != -1)
      {
        swift_once();
      }

      v26 = -*&qword_1008F12F0;
    }

    else
    {
      v73 = [v3 contentView];
      v25 = [v73 bottomAnchor];

      v26 = -9.0;
      v24 = v123;
    }

    v74 = [v23 constraintEqualToAnchor:v25 constant:v26];

    *(v10 + 56) = v74;
    v75 = [v24 topAnchor];
    if (v122)
    {
      v76 = [v5 bottomAnchor];
      if (qword_1008DACF8 != -1)
      {
        swift_once();
      }

      v77 = *&qword_1008F12F0;
    }

    else
    {
      v104 = [v3 contentView];
      v76 = [v104 topAnchor];

      v77 = 25.0;
    }

    v105 = objc_opt_self();
    v106 = [v75 constraintEqualToAnchor:v76 constant:v77];

    *(v10 + 64) = v106;
    v107 = [v24 leadingAnchor];
    v108 = [v3 contentView];
    v109 = [v108 leadingAnchor];

    v110 = [v107 constraintEqualToAnchor:v109 constant:a2];
    *(v10 + 72) = v110;
    v111 = [v24 trailingAnchor];
    v112 = [v3 contentView];
    v113 = [v112 trailingAnchor];

    v114 = [v111 constraintEqualToAnchor:v113 constant:-a2];
    *(v10 + 80) = v114;
    v115 = [v24 bottomAnchor];
    v116 = [v3 contentView];
    v117 = [v116 bottomAnchor];

    v118 = [v115 constraintEqualToAnchor:v117 constant:-9.0];
    *(v10 + 88) = v118;
    sub_1000059F8(0, &qword_1008DC980, NSLayoutConstraint_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v105 activateConstraints:isa];
  }

  else
  {
    sub_100140278(&unk_1008E4E20, &qword_1006D5040);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1006D5300;
    v28 = *&v2[OBJC_IVAR____TtC10FitnessApp25ActivityTileSectionHeader_titleLabel];
    v29 = [v28 leadingAnchor];
    v30 = [v2 contentView];
    v31 = [v30 leadingAnchor];

    v32 = [v29 constraintEqualToAnchor:v31 constant:a2];
    *(v27 + 32) = v32;
    v33 = [v28 topAnchor];
    v34 = [v2 contentView];
    v35 = [v34 topAnchor];

    v36 = [v33 constraintEqualToAnchor:v35 constant:25.0];
    *(v27 + 40) = v36;
    v124 = *&v2[OBJC_IVAR____TtC10FitnessApp25ActivityTileSectionHeader_subtitleLabel];
    v37 = [v124 leadingAnchor];
    v38 = [v28 leadingAnchor];
    v39 = [v37 constraintEqualToAnchor:v38];

    *(v27 + 48) = v39;
    v119 = *&v2[OBJC_IVAR____TtC10FitnessApp25ActivityTileSectionHeader_button];
    v40 = [v119 trailingAnchor];
    v41 = [v2 contentView];
    v42 = [v41 trailingAnchor];

    v43 = [v40 constraintEqualToAnchor:v42 constant:-a2];
    v121 = v27;
    *(v27 + 56) = v43;
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_1006D9810;
    v45 = [v28 leadingAnchor];
    v46 = [v2 contentView];
    v47 = [v46 leadingAnchor];

    v48 = [v45 constraintEqualToAnchor:v47 constant:a2];
    *(v44 + 32) = v48;
    v49 = [v28 topAnchor];
    v50 = [v2 contentView];
    v51 = [v50 topAnchor];

    v52 = [v49 constraintEqualToAnchor:v51 constant:25.0];
    *(v44 + 40) = v52;
    v53 = [v28 trailingAnchor];
    v54 = [v2 contentView];
    v55 = [v54 trailingAnchor];

    v56 = [v53 constraintEqualToAnchor:v55 constant:-a2];
    *(v44 + 48) = v56;
    v57 = [v124 leadingAnchor];
    v58 = [v28 leadingAnchor];
    v59 = [v57 constraintEqualToAnchor:v58];

    *(v44 + 56) = v59;
    v60 = [v119 leadingAnchor];
    v61 = [v28 leadingAnchor];
    v62 = [v60 constraintEqualToAnchor:v61];

    *(v44 + 64) = v62;
    [v28 systemLayoutSizeFittingSize:{1.79769313e308, 1.79769313e308}];
    v64 = v63;
    [v119 systemLayoutSizeFittingSize:{1.79769313e308, 1.79769313e308}];
    v66 = v65;
    v67 = [objc_opt_self() mainScreen];
    [v67 bounds];
    v69 = v68;

    v70 = [v28 text];
    if (v70)
    {

      v71 = [v28 bottomAnchor];
      v72 = &selRef_setNavigationBarHidden_animated_;
    }

    else
    {
      v78 = [v2 contentView];
      v72 = &selRef_setNavigationBarHidden_animated_;
      v79 = [v78 topAnchor];

      v71 = v79;
    }

    v80 = [v124 v72[477]];
    if (qword_1008DACF8 != -1)
    {
      swift_once();
    }

    v81 = v64 + v66;
    v120 = v71;
    v82 = [v80 constraintEqualToAnchor:v71 constant:*&qword_1008F12F0];

    v83 = [v124 text];
    v84 = v28;
    if (v83)
    {

      v84 = v124;
    }

    v85 = v84;
    v125 = v85;
    if (v81 <= v69 + -36.0)
    {
      v90 = [v119 lastBaselineAnchor];
      v91 = [v28 lastBaselineAnchor];
      v88 = [v90 constraintEqualToAnchor:v91];

      v89 = v121;
    }

    else
    {
      v86 = [v119 v72[477]];
      v87 = [v85 bottomAnchor];
      v88 = [v86 constraintEqualToAnchor:v87];

      if (![v119 isHidden])
      {
        v85 = v119;
      }

      v89 = v44;
    }

    v92 = v85;
    v93 = [v92 bottomAnchor];
    v94 = [v3 contentView];
    v95 = [v94 bottomAnchor];

    v96 = [v93 constraintEqualToAnchor:v95 constant:-9.0];
    LODWORD(v97) = 1132068864;
    [v96 setPriority:v97];
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1006D68C0;
    *(inited + 32) = v82;
    *(inited + 40) = v88;
    *(inited + 48) = v96;
    v99 = v82;
    v100 = v88;
    v101 = v96;

    sub_10019EF10(inited);
    *&v3[OBJC_IVAR____TtC10FitnessApp25ActivityTileSectionHeader_activeConstraints] = v89;

    v102 = objc_opt_self();
    sub_1000059F8(0, &qword_1008DC980, NSLayoutConstraint_ptr);

    v103 = Array._bridgeToObjectiveC()().super.isa;

    [v102 activateConstraints:v103];
  }
}

void sub_10050ADC0(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, double a7)
{
  v91 = a3;
  v14 = type metadata accessor for UIListContentConfiguration.TextProperties();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = &selRef_setNavigationBarHidden_animated_;
  if (_UISolariumEnabled())
  {
    if (a2 && a5)
    {
      v87 = a1;
      v88 = a5;
      v89 = a6;
      v86 = a4;
      v90 = v7;
      if (qword_1008DACD8 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for UIListContentConfiguration();
      sub_10001AC90(v19, qword_1008F12B0);
      UIListContentConfiguration.textProperties.getter();
      v20 = UIListContentConfiguration.TextProperties.font.getter();
      (*(v15 + 8))(v17, v14);
      sub_100140278(&unk_1008E7FB0, &unk_1006D6940);
      inited = swift_initStackObject();
      v85 = xmmword_1006D46C0;
      *(inited + 16) = xmmword_1006D46C0;
      *(inited + 32) = NSFontAttributeName;
      v22 = sub_1000059F8(0, &qword_1008F73C0, UIFont_ptr);
      *(inited + 64) = v22;
      *(inited + 40) = v20;
      v84 = NSFontAttributeName;
      v23 = v20;

      sub_1004C9200(inited);
      swift_setDeallocating();
      sub_100198304(inited + 32);
      v24 = objc_allocWithZone(NSMutableAttributedString);
      v25 = String._bridgeToObjectiveC()();

      type metadata accessor for Key(0);
      sub_10017597C();
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v27 = [v24 initWithString:v25 attributes:isa];

      v28 = swift_initStackObject();
      *(v28 + 16) = v85;
      *(v28 + 32) = v84;
      *(v28 + 64) = v22;
      *(v28 + 40) = v23;
      v29 = v23;
      sub_1004C9200(v28);
      swift_setDeallocating();
      sub_100198304(v28 + 32);
      v30 = objc_allocWithZone(NSAttributedString);
      v31 = String._bridgeToObjectiveC()();
      v32 = Dictionary._bridgeToObjectiveC()().super.isa;

      v33 = [v30 initWithString:v31 attributes:v32];

      v34 = v27;
      v84 = v33;
      [v27 appendAttributedString:v33];
      v35 = [objc_allocWithZone(NSTextAttachment) init];
      v36 = objc_opt_self();
      *&v85 = v29;
      v37 = [v36 configurationWithFont:v29 scale:1];
      v38 = String._bridgeToObjectiveC()();
      v39 = [objc_opt_self() systemImageNamed:v38];

      v83 = v37;
      if (v39)
      {
        v40 = [objc_opt_self() secondaryLabelColor];
        v41 = [v39 imageWithTintColor:v40];

        v42 = [v41 imageWithConfiguration:v37];
      }

      else
      {
        v42 = 0;
      }

      v7 = v90;
      a4 = v86;
      [v35 setImage:{v42, v83}];

      v71 = [objc_opt_self() attributedStringWithAttachment:v35];
      [v34 appendAttributedString:v71];
      v72 = *(v7 + OBJC_IVAR____TtC10FitnessApp25ActivityTileSectionHeader_titleLabel);
      v18 = &selRef_setNavigationBarHidden_animated_;
      [v72 setText:0];
      [v72 setAttributedText:v34];
      [v72 setUserInteractionEnabled:1];
      v73 = *(v7 + OBJC_IVAR____TtC10FitnessApp25ActivityTileSectionHeader_titleTapGestureRecognizer);
      if (v73)
      {
        [v73 setEnabled:1];
      }

      v74 = String._bridgeToObjectiveC()();
      [v72 setAccessibilityIdentifier:v74];

      v75 = String._bridgeToObjectiveC()();
      [v72 setAccessibilityLabel:v75];

      v76 = (v7 + OBJC_IVAR____TtC10FitnessApp25ActivityTileSectionHeader_buttonAction);
      v77 = *(v7 + OBJC_IVAR____TtC10FitnessApp25ActivityTileSectionHeader_buttonAction);
      v78 = *(v7 + OBJC_IVAR____TtC10FitnessApp25ActivityTileSectionHeader_buttonAction + 8);
      v79 = v89;
      *v76 = v88;
      v76[1] = v79;

      sub_1000245E0(v77, v78);
    }

    else
    {
      v45 = *(v7 + OBJC_IVAR____TtC10FitnessApp25ActivityTileSectionHeader_titleLabel);
      [v45 setAttributedText:0];
      if (a2)
      {
        v46 = String._bridgeToObjectiveC()();
      }

      else
      {
        v46 = 0;
      }

      [v45 setText:v46];

      [v45 setUserInteractionEnabled:0];
      v70 = *(v7 + OBJC_IVAR____TtC10FitnessApp25ActivityTileSectionHeader_titleTapGestureRecognizer);
      if (v70)
      {
        [v70 setEnabled:0];
      }
    }
  }

  else
  {
    v43 = *(v7 + OBJC_IVAR____TtC10FitnessApp25ActivityTileSectionHeader_titleLabel);
    if (a2)
    {
      v44 = String._bridgeToObjectiveC()();
    }

    else
    {
      v44 = 0;
    }

    [v43 setText:v44];

    if (a5)
    {
      v88 = a5;
      v89 = a6;
      v90 = v7;
      v47 = *(v7 + OBJC_IVAR____TtC10FitnessApp25ActivityTileSectionHeader_button);
      v48 = objc_opt_self();
      v49 = [v48 mainBundle];
      v50 = String._bridgeToObjectiveC()();
      v51 = [v49 localizedStringForKey:v50 value:0 table:0];

      if (!v51)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v51 = String._bridgeToObjectiveC()();
      }

      [v47 setTitle:v51 forState:0];
      [v47 setHidden:0];
      if (a2)
      {
        v52 = a1;
      }

      else
      {
        v52 = 0;
      }

      if (a2)
      {
        v53 = a2;
      }

      else
      {
        v53 = 0xE000000000000000;
      }

      if (a4)
      {
        v54 = v91;
      }

      else
      {
        v54 = 0;
      }

      if (a4)
      {
        v55 = a4;
      }

      else
      {
        v55 = 0xE000000000000000;
      }

      v92[0] = 0;
      v92[1] = 0xE000000000000000;

      _StringGuts.grow(_:)(17);

      strcpy(v92, "Show More - ");
      BYTE5(v92[1]) = 0;
      HIWORD(v92[1]) = -5120;
      v56._countAndFlagsBits = v52;
      v56._object = v53;
      String.append(_:)(v56);
      v57._countAndFlagsBits = 32;
      v57._object = 0xE100000000000000;
      String.append(_:)(v57);
      v58._countAndFlagsBits = v54;
      v58._object = v55;
      String.append(_:)(v58);
      v59 = String._bridgeToObjectiveC()();

      [v47 setAccessibilityIdentifier:v59];

      v60 = [v48 mainBundle];
      v61 = String._bridgeToObjectiveC()();
      v62 = [v60 localizedStringForKey:v61 value:0 table:0];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_100140278(&unk_1008E4E50, &qword_1006D4A60);
      v63 = swift_allocObject();
      *(v63 + 16) = xmmword_1006D1F70;
      *(v63 + 56) = &type metadata for String;
      v64 = sub_10000A788();
      *(v63 + 32) = v52;
      *(v63 + 40) = v53;
      *(v63 + 96) = &type metadata for String;
      *(v63 + 104) = v64;
      *(v63 + 64) = v64;
      *(v63 + 72) = v54;
      *(v63 + 80) = v55;
      String.init(format:_:)();

      v65 = String._bridgeToObjectiveC()();

      [v47 setAccessibilityLabel:v65];

      v7 = v90;
      v66 = (v90 + OBJC_IVAR____TtC10FitnessApp25ActivityTileSectionHeader_buttonAction);
      v67 = *(v90 + OBJC_IVAR____TtC10FitnessApp25ActivityTileSectionHeader_buttonAction);
      v68 = *(v90 + OBJC_IVAR____TtC10FitnessApp25ActivityTileSectionHeader_buttonAction + 8);
      v69 = v89;
      *v66 = v88;
      v66[1] = v69;

      sub_1000245E0(v67, v68);
      v18 = &selRef_setNavigationBarHidden_animated_;
    }
  }

  v80 = *(v7 + OBJC_IVAR____TtC10FitnessApp25ActivityTileSectionHeader_subtitleLabel);
  if (a4)
  {
    v81 = String._bridgeToObjectiveC()();
  }

  else
  {
    v81 = 0;
  }

  [v80 v18[168]];

  sub_100509EF8(v82, a7);
}

double sub_10050B968(uint64_t a1)
{
  v11.receiver = v1;
  v11.super_class = type metadata accessor for ActivityTileSectionHeader();
  objc_msgSendSuper2(&v11, "prepareForReuse");
  v2 = objc_opt_self();
  sub_1000059F8(0, &qword_1008DC980, NSLayoutConstraint_ptr);

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 deactivateConstraints:isa];

  v4 = *&v1[OBJC_IVAR____TtC10FitnessApp25ActivityTileSectionHeader_titleLabel];
  [v4 setText:0];
  [v4 setAttributedText:0];
  [*&v1[OBJC_IVAR____TtC10FitnessApp25ActivityTileSectionHeader_subtitleLabel] setText:0];
  if (_UISolariumEnabled())
  {
    [v4 setUserInteractionEnabled:0];
    v6 = *&v1[OBJC_IVAR____TtC10FitnessApp25ActivityTileSectionHeader_titleTapGestureRecognizer];
    if (v6)
    {
      [v6 setEnabled:0];
    }
  }

  else
  {
    v7 = *&v1[OBJC_IVAR____TtC10FitnessApp25ActivityTileSectionHeader_button];
    [v7 setTitle:0 forState:0];
    [v7 setHidden:1];
    v8 = &v1[OBJC_IVAR____TtC10FitnessApp25ActivityTileSectionHeader_buttonAction];
    v9 = *&v1[OBJC_IVAR____TtC10FitnessApp25ActivityTileSectionHeader_buttonAction];
    v10 = *&v1[OBJC_IVAR____TtC10FitnessApp25ActivityTileSectionHeader_buttonAction + 8];
    *v8 = 0;
    *(v8 + 1) = 0;
    return sub_1000245E0(v9, v10);
  }

  return result;
}

id sub_10050BBEC(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ActivityTileSectionHeader();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_10050BD30()
{
  v1 = v0;
  v2 = type metadata accessor for UIListContentConfiguration.TextProperties();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = OBJC_IVAR____TtC10FitnessApp25ActivityTileSectionHeader_titleLabel;
  v6 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  if (qword_1008DACD8 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for UIListContentConfiguration();
  sub_10001AC90(v7, qword_1008F12B0);
  UIListContentConfiguration.textProperties.getter();
  v8 = UIListContentConfiguration.TextProperties.font.getter();
  v9 = *(v3 + 8);
  v9(v5, v2);
  v10 = UILabel.withFont(_:)();

  v11 = objc_opt_self();
  v12 = [v11 labelColor];
  v13 = UILabel.withTextColor(_:)();

  [v13 setLineBreakMode:0];
  [v13 setNumberOfLines:0];
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v1 + v28) = v13;
  v14 = OBJC_IVAR____TtC10FitnessApp25ActivityTileSectionHeader_subtitleLabel;
  v15 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  if (qword_1008DACE0 != -1)
  {
    swift_once();
  }

  sub_10001AC90(v7, qword_1008F12C8);
  UIListContentConfiguration.textProperties.getter();
  v16 = UIListContentConfiguration.TextProperties.font.getter();
  v9(v5, v2);
  v17 = UILabel.withFont(_:)();

  v18 = [v11 secondaryLabelColor];
  v19 = UILabel.withTextColor(_:)();

  [v19 setLineBreakMode:0];
  [v19 setNumberOfLines:0];
  [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v1 + v14) = v19;
  v20 = OBJC_IVAR____TtC10FitnessApp25ActivityTileSectionHeader_button;
  v21 = [objc_opt_self() buttonWithType:1];
  v22 = qword_1008DACF0;
  v23 = v21;
  if (v22 != -1)
  {
    swift_once();
  }

  [v23 setTintColor:qword_1008F12E8];
  if (qword_1008DACE8 != -1)
  {
    swift_once();
  }

  v24 = qword_1008F12E0;
  v25 = [v23 titleLabel];
  [v25 setFont:v24];

  [v23 setHidden:1];
  [v23 setTranslatesAutoresizingMaskIntoConstraints:0];

  *(v1 + v20) = v23;
  v26 = (v1 + OBJC_IVAR____TtC10FitnessApp25ActivityTileSectionHeader_buttonAction);
  *v26 = 0;
  v26[1] = 0;
  *(v1 + OBJC_IVAR____TtC10FitnessApp25ActivityTileSectionHeader_activeConstraints) = _swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR____TtC10FitnessApp25ActivityTileSectionHeader_titleTapGestureRecognizer) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_10050C1C4()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_dataProvider];
  v3 = *&v2[OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_queryExecutor];
  v4 = *&v3[OBJC_IVAR____TtC10FitnessApp21ActivityQueryExecutor_chartQuery];
  if (v4)
  {
    v5 = *&v3[OBJC_IVAR____TtC10FitnessApp21ActivityQueryExecutor_healthStore];
    v6 = v2;
    v7 = v3;
    [v5 stopQuery:v4];
  }

  else
  {
    v8 = v2;
    v9 = v3;
  }

  v10 = *&v3[OBJC_IVAR____TtC10FitnessApp21ActivityQueryExecutor_basalEnergyQuery];
  if (v10)
  {
    v11 = *&v3[OBJC_IVAR____TtC10FitnessApp21ActivityQueryExecutor_healthStore];
    v12 = v10;
    [v11 stopQuery:v12];
  }

  v13 = OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_wheelchairListener;
  swift_beginAccess();
  sub_1002E12DC(&v1[v13], &v27);
  if (v28)
  {
    sub_1001AA76C(&v27, &v29);
    v14 = [objc_opt_self() defaultCenter];
    sub_1000066AC(&v29, v30);
    [v14 removeObserver:_bridgeAnythingToObjectiveC<A>(_:)()];

    swift_unknownObjectRelease();
    sub_100005A40(&v29);
  }

  else
  {
    sub_1001B3EEC(&v27);
  }

  v15 = OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_fontListener;
  swift_beginAccess();
  sub_1002E12DC(&v1[v15], &v27);
  if (v28)
  {
    sub_1001AA76C(&v27, &v29);
    v16 = [objc_opt_self() defaultCenter];
    sub_1000066AC(&v29, v30);
    [v16 removeObserver:_bridgeAnythingToObjectiveC<A>(_:)()];

    swift_unknownObjectRelease();
    sub_100005A40(&v29);
  }

  else
  {
    sub_1001B3EEC(&v27);
  }

  v17 = OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_dateChangeListener;
  swift_beginAccess();
  sub_1002E12DC(&v1[v17], &v27);
  if (v28)
  {
    sub_1001AA76C(&v27, &v29);
    v18 = [objc_opt_self() defaultCenter];
    sub_1000066AC(&v29, v30);
    [v18 removeObserver:_bridgeAnythingToObjectiveC<A>(_:)()];

    swift_unknownObjectRelease();
    sub_100005A40(&v29);
  }

  else
  {
    sub_1001B3EEC(&v27);
  }

  v19 = OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_mindfulnessSessionsListener;
  swift_beginAccess();
  sub_1002E12DC(&v1[v19], &v27);
  if (v28)
  {
    sub_1001AA76C(&v27, &v29);
    v20 = [objc_opt_self() defaultCenter];
    sub_1000066AC(&v29, v30);
    [v20 removeObserver:_bridgeAnythingToObjectiveC<A>(_:)()];

    swift_unknownObjectRelease();
    sub_100005A40(&v29);
  }

  else
  {
    sub_1001B3EEC(&v27);
  }

  v21 = *&v1[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_awardsQuery];
  if (v21)
  {
    v22 = v21;
    dispatch thunk of ActivityAwardsDateQuery.deactivate()();
  }

  v23 = OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_protectedAppsSubscription;
  v24 = *&v1[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_protectedAppsSubscription];
  if (v24)
  {
    [v24 invalidate];
  }

  *&v1[v23] = 0;
  swift_unknownObjectRelease();
  v26.receiver = v1;
  v26.super_class = type metadata accessor for HistoryDayViewController(0);
  return objc_msgSendSuper2(&v26, "dealloc");
}

uint64_t type metadata accessor for HistoryDayViewController(uint64_t a1)
{
  result = qword_1008F1398;
  if (!qword_1008F1398)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10050C9B0(void *a1)
{
  v2 = v1 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_delegate;
  *(v1 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v3 = OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_activitySummary;
  *(v1 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_activitySummary) = 0;
  v4 = OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_ringCell;
  *(v1 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_ringCell) = 0;
  v5 = OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_moveCell;
  *(v1 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_moveCell) = 0;
  v13 = OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_exerciseCell;
  *(v1 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_exerciseCell) = 0;
  v14 = OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_standCell;
  *(v1 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_standCell) = 0;
  v17 = OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_stepsAndDistanceCell;
  *(v1 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_stepsAndDistanceCell) = 0;
  v20 = OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_flightsCell;
  *(v1 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_flightsCell) = 0;
  v25 = OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_ringsConfigurationCell;
  *(v1 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_ringsConfigurationCell) = 0;
  *(v1 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_protectedAppsSubscription) = 0;
  v6 = (v1 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_fontListener);
  *v6 = 0u;
  v6[1] = 0u;
  v7 = (v1 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_dateChangeListener);
  *v7 = 0u;
  v7[1] = 0u;
  v8 = (v1 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_mindfulnessSessionsListener);
  *v8 = 0u;
  v8[1] = 0u;
  v24 = OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_awardsQuery;
  *(v1 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_awardsQuery) = 0;
  v9 = (v1 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_wheelchairListener);
  *v9 = 0u;
  v9[1] = 0u;
  *(v1 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_viewAppeared) = 0;
  *(v1 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_workouts) = 0;
  *(v1 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_mindfulnessSessionViewModels) = 0;
  v10 = OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_awards;

  *(v1 + v10) = _swiftEmptyArrayStorage;
  v19 = OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_addToYourRingViewController;
  *(v1 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_addToYourRingViewController) = 0;
  v23 = OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_chartData;
  *(v1 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_chartData) = 0;
  *(v1 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_didSetInitialChartData) = 0;
  *(v1 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_didInitialChartAnimation) = 0;
  v16 = OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_totalEnergy;
  *(v1 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_totalEnergy) = 0;
  *(v1 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_shareWhenDataLoads) = 0;
  v15 = OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_sharingImage;
  *(v1 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_sharingImage) = 0;
  v11 = (v1 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_sharingText);
  *v11 = 0;
  v11[1] = 0;
  v18 = OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_awardsTransitionAnimator;
  *(v1 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_awardsTransitionAnimator) = 0;
  v21 = OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_fromVC;
  *(v1 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_fromVC) = 0;
  sub_1000A7304(v2);

  swift_unknownObjectRelease();
  sub_1001B3EEC(v6);
  sub_1001B3EEC(v7);
  sub_1001B3EEC(v8);

  sub_1001B3EEC(v9);

  type metadata accessor for HistoryDayViewController(0);
  swift_deallocPartialClassInstance();
  return 0;
}

id sub_10050CD54()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for HistoryDayViewController(0);
  objc_msgSendSuper2(&v7, "viewDidLoad");
  [*(*(*&v0[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_dataProvider] + OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_activitySummaryListener) + OBJC_IVAR____TtC10FitnessApp29ActivitySummaryChangeListener_observers) addObject:v0];
  result = [v0 view];
  if (result)
  {
    v2 = result;
    v3 = *&v0[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_tableView];
    [result addSubview:v3];

    [v3 setDataSource:v0];
    [v3 setDelegate:v0];
    [v3 _setPocketStyle:1 forEdge:1];
    v4 = [objc_opt_self() systemBackgroundColor];
    [v3 setBackgroundColor:v4];

    [v3 setSeparatorStyle:0];
    [v3 setRowHeight:UITableViewAutomaticDimension];
    [v3 setEstimatedRowHeight:100.0];
    [v3 setSectionHeaderTopPadding:0.0];
    [v3 contentInset];
    [v3 setContentInset:?];
    [v3 contentInset];
    [v3 setContentInset:?];
    [v3 contentInset];
    v5 = [v3 setContentInset:?];
    sub_10051030C(v5, v6);
    sub_1001E5C38(v3);
    return sub_10050CFA8();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10050CFA8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v79 = type metadata accessor for Date();
  v78 = *(v79 - 8);
  __chkstk_darwin(v79);
  v77 = &v74 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for DateComponents();
  v81 = *(v84 - 8);
  __chkstk_darwin(v84);
  v80 = &v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v83 = &v74 - v5;
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = *(v0 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_dataProvider);
  v8 = OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_workoutDataProvider;
  v9 = *(v7 + OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_workoutDataProvider);
  v89 = sub_100513C28;
  v90 = v6;
  aBlock = _NSConcreteStackBlock;
  v86 = 1107296256;
  v87 = sub_1000449A8;
  v88 = &unk_10085E348;
  v10 = _Block_copy(&aBlock);
  v11 = v9;

  [v11 addUpdateHandler:v10];
  _Block_release(v10);

  v12 = *(v7 + v8);
  v89 = sub_100513C28;
  v90 = v6;
  aBlock = _NSConcreteStackBlock;
  v86 = 1107296256;
  v87 = sub_1000449A8;
  v88 = &unk_10085E370;
  v13 = _Block_copy(&aBlock);
  v76 = v6;

  v14 = v12;

  [v14 addAnimatedUpdateHandler:v13];
  _Block_release(v13);

  v82 = objc_opt_self();
  v15 = [v82 defaultCenter];
  if (qword_1008DA5A0 != -1)
  {
    swift_once();
  }

  v16 = qword_100925168;
  v17 = objc_opt_self();
  v18 = v16;
  v19 = [v17 mainQueue];
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v89 = sub_100513C30;
  v90 = v20;
  aBlock = _NSConcreteStackBlock;
  v86 = 1107296256;
  v87 = sub_100026F8C;
  v88 = &unk_10085E398;
  v21 = _Block_copy(&aBlock);

  v22 = [v15 addObserverForName:v18 object:0 queue:v19 usingBlock:v21];
  _Block_release(v21);

  v88 = swift_getObjectType();
  aBlock = v22;
  v23 = OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_wheelchairListener;
  swift_beginAccess();
  sub_1002885B8(&aBlock, v1 + v23);
  swift_endAccess();
  v24 = v82;
  v25 = [v82 defaultCenter];
  v26 = [v17 mainQueue];
  v27 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v89 = sub_100513C38;
  v90 = v27;
  aBlock = _NSConcreteStackBlock;
  v86 = 1107296256;
  v87 = sub_100026F8C;
  v88 = &unk_10085E3C0;
  v28 = _Block_copy(&aBlock);

  v29 = [v25 addObserverForName:UIApplicationSignificantTimeChangeNotification object:0 queue:v26 usingBlock:v28];
  _Block_release(v28);

  v88 = swift_getObjectType();
  aBlock = v29;
  v30 = OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_dateChangeListener;
  swift_beginAccess();
  sub_1002885B8(&aBlock, v1 + v30);
  swift_endAccess();
  v31 = [v24 defaultCenter];
  v32 = kFIMindfulnessSessionDataProviderDidUpdateNotification;
  v74 = v17;
  v33 = [v17 mainQueue];
  v34 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v89 = sub_100513C40;
  v90 = v34;
  aBlock = _NSConcreteStackBlock;
  v86 = 1107296256;
  v87 = sub_100026F8C;
  v88 = &unk_10085E3E8;
  v35 = _Block_copy(&aBlock);

  v36 = [v31 addObserverForName:v32 object:0 queue:v33 usingBlock:v35];
  _Block_release(v35);

  v88 = swift_getObjectType();
  aBlock = v36;
  v37 = OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_mindfulnessSessionsListener;
  swift_beginAccess();
  sub_1002885B8(&aBlock, v1 + v37);
  swift_endAccess();
  if (qword_1008DA540 != -1)
  {
    swift_once();
  }

  v38 = type metadata accessor for Calendar();
  sub_10001AC90(v38, qword_100924FE8);
  sub_100140278(&unk_1008E51B0, &unk_1006D8360);
  v39 = type metadata accessor for Calendar.Component();
  v40 = *(v39 - 8);
  v41 = *(v40 + 72);
  v42 = (*(v40 + 80) + 32) & ~*(v40 + 80);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_1006D64F0;
  v44 = v43 + v42;
  v45 = *(v40 + 104);
  v45(v44, enum case for Calendar.Component.day(_:), v39);
  v45(v44 + v41, enum case for Calendar.Component.month(_:), v39);
  v45(v44 + 2 * v41, enum case for Calendar.Component.year(_:), v39);
  sub_10001C970(v43);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v46 = v78;
  v47 = v77;
  v48 = v79;
  (*(v78 + 16))(v77, v1 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_date, v79);
  v49 = v83;
  Calendar.dateComponents(_:from:)();

  (*(v46 + 8))(v47, v48);
  v50 = v81;
  (v81[2])(v80, v49, v84);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v51 = objc_allocWithZone(type metadata accessor for ActivityAwardsDateQuery());
  v52 = ActivityAwardsDateQuery.init(dateComponents:initialAwardsHandler:updateHandler:)();
  v53 = static os_log_type_t.default.getter();
  result = ACHLogUI();
  if (result)
  {
    v55 = result;
    os_log(_:dso:log:_:_:)(v53, &_mh_execute_header, result, "Activating awards date query", 28, 2, _swiftEmptyArrayStorage);

    dispatch thunk of ActivityAwardsDateQuery.activate()();
    v56 = *(v1 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_awardsQuery);
    *(v1 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_awardsQuery) = v52;
    v81 = v52;

    v57 = v82;
    v58 = [v82 defaultCenter];
    v59 = v74;
    v60 = [v74 mainQueue];
    v61 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v89 = sub_100513C64;
    v90 = v61;
    aBlock = _NSConcreteStackBlock;
    v86 = 1107296256;
    v87 = sub_100026F8C;
    v88 = &unk_10085E410;
    v62 = _Block_copy(&aBlock);

    v63 = [v58 addObserverForName:UIContentSizeCategoryDidChangeNotification object:0 queue:v60 usingBlock:v62];
    _Block_release(v62);

    v88 = swift_getObjectType();
    aBlock = v63;
    v64 = OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_fontListener;
    swift_beginAccess();
    sub_1002885B8(&aBlock, v1 + v64);
    swift_endAccess();
    v65 = [v57 defaultCenter];
    v66 = [objc_opt_self() didUpdatePauseStateNotification];
    v67 = [v59 mainQueue];
    v68 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v69 = swift_allocObject();
    v70 = ObjectType;
    *(v69 + 16) = v68;
    *(v69 + 24) = v70;
    v89 = sub_100513C6C;
    v90 = v69;
    aBlock = _NSConcreteStackBlock;
    v86 = 1107296256;
    v87 = sub_100026F8C;
    v88 = &unk_10085E460;
    v71 = _Block_copy(&aBlock);

    v72 = [v65 addObserverForName:v66 object:0 queue:v67 usingBlock:v71];
    _Block_release(v71);
    swift_unknownObjectRelease();

    v73 = [objc_msgSend(objc_opt_self() "subjectMonitorRegistry")];

    swift_unknownObjectRelease();
    v50[1](v83, v84);
    *(v1 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_protectedAppsSubscription) = v73;
    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
    __break(1u);
  }

  return result;
}

void sub_10050DE1C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_10050F01C(Strong, v2);
  }
}

void sub_10050DE70(__n128 a1, uint64_t a2, uint64_t a3)
{
  v3 = Notification.userInfo.getter();
  if (v3)
  {
    v4 = v3;
    AnyHashable.init<A>(_:)();
    if (*(v4 + 16) && (v5 = sub_1004C5BC0(v21), (v6 & 1) != 0))
    {
      sub_10000B1B4(*(v4 + 56) + 32 * v5, v22);
      sub_100282EF8(v21);

      if (swift_dynamicCast())
      {
        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v8 = *(Strong + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_ringCell);
          v9 = Strong;
          v10 = v8;

          if (v8)
          {
            v10[OBJC_IVAR____TtC10FitnessApp33DayViewActivityRingsTableViewCell_isWheelchair] = 16;
            sub_1003551F0();
          }
        }

        swift_beginAccess();
        v11 = swift_unknownObjectWeakLoadStrong();
        if (v11)
        {
          v12 = *(v11 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_standCell);
          v13 = v11;
          v14 = v12;

          if (v12)
          {
            v14[OBJC_IVAR____TtC10FitnessApp30DayViewStandChartTableViewCell_isWheelchair] = 16;
            sub_1001ED708();
          }
        }

        swift_beginAccess();
        v15 = swift_unknownObjectWeakLoadStrong();
        if (v15)
        {
          v16 = *(v15 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_stepsAndDistanceCell);
          v17 = v15;
          v18 = v16;

          if (v16)
          {
            v18[OBJC_IVAR____TtC10FitnessApp36DayViewStepsAndDistanceTableViewCell_isWheelchair] = 16;
            sub_10059A490();
          }
        }

        swift_beginAccess();
        v19 = swift_unknownObjectWeakLoadStrong();
        if (v19)
        {
          v20 = v19;
          sub_10050EB2C(&off_100845F20, 1u);
        }
      }
    }

    else
    {

      sub_100282EF8(v21);
    }
  }
}

void sub_10050E0A4(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if (qword_1008DA550 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Calendar();
    sub_10001AC90(v8, qword_100925018);
    (*(v3 + 16))(v5, &v7[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_date], v2);
    v9 = Calendar.isDateInToday(_:)();
    (*(v3 + 8))(v5, v2);
    v10 = OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_isToday;
    if ((v9 & 1) != v7[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_isToday])
    {
      v11 = static os_log_type_t.default.getter();
      v12 = ACHLogUI();
      if (!v12)
      {
        __break(1u);
        return;
      }

      v13 = v12;
      os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, v12, "[HistoryDayViewController] Updating isToday", 43, 2, _swiftEmptyArrayStorage);

      v7[v10] = v9 & 1;
      sub_10050EB2C(&off_100845F48, 1u);
    }
  }
}

void sub_10050E294(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_mindfulnessSessionDataProvider);
    v4 = Strong;
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_100513D30;
    aBlock[5] = v5;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1004476B0;
    aBlock[3] = &unk_10085E4D8;
    v6 = _Block_copy(aBlock);

    [v3 allMindfulnessSessionsWithCompletion:v6];
    _Block_release(v6);
  }
}

void sub_10050E3A8(unint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_10050F920(a1);
  }
}

void sub_10050E404(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [*(Strong + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_tableView) reloadData];
  }
}

void *sub_10050E470(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v32 = *(v7 - 8);
  v33 = v7;
  __chkstk_darwin(v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = static os_log_type_t.default.getter();
  v11 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, v10))
  {
    v30 = v11;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v31 = v4;
    aBlock[0] = v13;
    *v12 = 136315394;
    v14 = _typeName(_:qualified:)();
    v16 = sub_10000AFDC(v14, v15, aBlock);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    v17 = [objc_opt_self() didUpdatePauseStateNotification];
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    v21 = sub_10000AFDC(v18, v20, aBlock);

    *(v12 + 14) = v21;
    v22 = v30;
    _os_log_impl(&_mh_execute_header, v30, v10, "%s received notification %s", v12, 0x16u);
    swift_arrayDestroy();
    v4 = v31;
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v24 = result;
    sub_1000059F8(0, &qword_1008E3FD0, OS_dispatch_queue_ptr);
    v25 = static OS_dispatch_queue.main.getter();
    v26 = swift_allocObject();
    *(v26 + 16) = v24;
    aBlock[4] = sub_100513C74;
    aBlock[5] = v26;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000449A8;
    aBlock[3] = &unk_10085E4B0;
    v27 = _Block_copy(aBlock);
    v28 = v24;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1000261C4();
    sub_100140278(&unk_1008E7F50, &qword_1006D8190);
    sub_10002621C();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v27);

    (*(v4 + 8))(v6, v3);
    return (*(v32 + 8))(v9, v33);
  }

  return result;
}

double sub_10050E958(char a1)
{
  v9.receiver = v1;
  v9.super_class = type metadata accessor for HistoryDayViewController(0);
  objc_msgSendSuper2(&v9, "viewDidAppear:", a1 & 1);
  v3 = [v1 navigationController];
  if (v3)
  {
    v4 = v3;
    [v3 setDelegate:v1];
  }

  v5 = *&v1[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_awardsTransitionAnimator];
  *&v1[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_awardsTransitionAnimator] = 0;

  v1[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_viewAppeared] = 1;
  sub_1005113C8();
  v6 = swift_allocObject();
  *(v6 + 16) = v1;
  v7 = v1;
  sub_1001B1314(sub_100513CA4, v6, 0.2);

  return result;
}

uint64_t sub_10050EA48(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_didSetInitialChartData) == 1 && (*(a1 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_didInitialChartAnimation) & 1) == 0)
  {
    *(a1 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_didInitialChartAnimation) = 1;
    sub_100510C30(1);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_100286DB4();

    return swift_unknownObjectRelease();
  }

  return result;
}

NSObject *sub_10050EB2C(uint64_t a1, unsigned int a2)
{
  v5 = type metadata accessor for IndexSet();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v41 - v10;
  __chkstk_darwin(v12);
  v14 = &v41 - v13;
  __chkstk_darwin(v15);
  v17 = &v41 - v16;
  __chkstk_darwin(v18);
  v45 = &v41 - v19;
  LODWORD(v47) = static os_log_type_t.default.getter();
  result = ACHLogUI();
  if (result)
  {
    v21 = result;
    v22 = os_log_type_enabled(result, v47);
    v44 = a2;
    v43 = v2;
    v46 = v17;
    if (v22)
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v48 = v24;
      *v23 = 136315138;
      v25 = Array.description.getter();
      v42 = a1;
      v27 = v6;
      v28 = sub_10000AFDC(v25, v26, &v48);
      a1 = v42;

      *(v23 + 4) = v28;
      v6 = v27;
      _os_log_impl(&_mh_execute_header, v21, v47, "[HistoryDayViewController] Reloading sectinos [%s]", v23, 0xCu);
      sub_100005A40(v24);

      v17 = v46;
    }

    IndexSet.init()();
    (*(v6 + 16))(v14, v17, v5);
    v29 = *(a1 + 16);
    if (v29)
    {
      v30 = a1 + 32;
      v31 = (v6 + 8);
      v47 = v6;
      v32 = (v6 + 32);
      v42 = v31 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      do
      {
        ++v30;
        IndexSet.init(integer:)();
        IndexSet.union(_:)();
        v33 = *v31;
        (*v31)(v8, v5);
        v33(v14, v5);
        (*v32)(v14, v11, v5);
        --v29;
      }

      while (v29);
      v17 = v46;
      v6 = v47;
    }

    else
    {
      v33 = *(v6 + 8);
    }

    v33(v17, v5);
    v34 = v45;
    (*(v6 + 32))(v45, v14, v5);
    v35 = *(v43 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_tableView);
    if (v44)
    {
      v36 = [*(v43 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_tableView) window];
      if (!v36)
      {
        [v35 reloadData];
        return (v33)(v34, v5);
      }

      IndexSet._bridgeToObjectiveC()(v37);
      v39 = v38;
      [v35 reloadSections:v38 withRowAnimation:100];
    }

    else
    {
      IndexSet._bridgeToObjectiveC()(v44);
      v39 = v40;
      [v35 reloadSections:v40 withRowAnimation:5];
    }

    return (v33)(v34, v5);
  }

  __break(1u);
  return result;
}

void sub_10050F01C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000059F8(0, &qword_1008E3FD0, OS_dispatch_queue_ptr);
  *v11 = static OS_dispatch_queue.main.getter();
  (*(v9 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v8);
  v12 = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v11, v8);
  if ((v12 & 1) == 0)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return;
  }

  (*(v5 + 16))(v7, v3 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_date, v4);
  v13 = sub_1001F725C();
  (*(v5 + 8))(v7, v4);
  v14 = OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_workouts;
  if (*(v3 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_workouts))
  {

    v16 = sub_1001E5510(v15, v13);

    if (v16)
    {

      return;
    }
  }

  v17 = static os_log_type_t.default.getter();
  v18 = ACHLogUI();
  if (!v18)
  {
    goto LABEL_10;
  }

  v19 = v18;
  os_log(_:dso:log:_:_:)(v17, &_mh_execute_header, v18, "[HistoryDayViewController] Updating workouts", 44, 2, _swiftEmptyArrayStorage);

  *(v3 + v14) = v13;

  sub_10050EB2C(&off_100845ED0, 1u);
  v20 = *(v3 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_chartData);
  if (v20)
  {
    v21 = v20;
    sub_100510874(v21);
  }
}

uint64_t sub_10050F2E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v8 = *(v16 - 8);
  __chkstk_darwin(v16);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000059F8(0, &qword_1008E3FD0, OS_dispatch_queue_ptr);
  v11 = static OS_dispatch_queue.main.getter();
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a1;
  aBlock[4] = sub_100513BF8;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000449A8;
  aBlock[3] = &unk_10085E2D0;
  v13 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000261C4();
  sub_100140278(&unk_1008E7F50, &qword_1006D8190);
  sub_10002621C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v5 + 8))(v7, v4);
  return (*(v8 + 8))(v10, v16);
}

char *sub_10050F58C(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Calendar();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;
    static Calendar.current.getter();
    type metadata accessor for MindfulnessSessionViewModel();
    v8 = static MindfulnessSessionViewModel.makeMindfulnessSessionViewModels(from:)();
    __chkstk_darwin(v8);
    *(&v16 - 2) = v5;
    *(&v16 - 1) = v7;
    v10 = sub_1005AD40C(sub_100513C00, &v16 - 4, v9);
    v11 = OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_mindfulnessSessionViewModels;
    if (*&v7[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_mindfulnessSessionViewModels])
    {

      v13 = sub_10031B418(v12, v10);

      if (v13)
      {

        swift_bridgeObjectRelease_n();
        return (*(v3 + 8))(v5, v2);
      }
    }

    else
    {
    }

    v14 = static os_log_type_t.default.getter();
    result = ACHLogUI();
    if (!result)
    {
      __break(1u);
      return result;
    }

    v15 = result;

    os_log(_:dso:log:_:_:)(v14, &_mh_execute_header, v15, "[HistoryDayViewController] Updating mindfulness sessions", 56, 2, _swiftEmptyArrayStorage);

    *&v7[v11] = v10;

    sub_10050EB2C(&off_100845F98, 1u);

    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

uint64_t sub_10050F7C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  MindfulnessSessionViewModel.endDate.getter();
  (*(v5 + 16))(v7, a3 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_date, v4);
  v11 = Calendar.isDate(_:inSameDayAs:)();
  v12 = *(v5 + 8);
  v12(v7, v4);
  v12(v10, v4);
  return v11 & 1;
}

uint64_t sub_10050F920(unint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v27 = *(v8 - 8);
  __chkstk_darwin(v8);
  v26 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock[0] = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v21 = v2;
    v22 = v7;
    v23 = v8;
    v24 = v5;
    v25 = v4;
    v7 = 0;
    v2 = (a1 & 0xC000000000000001);
    v5 = &selRef_initWithLayer_;
    while (1)
    {
      if (v2)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v11 = *(a1 + 8 * v7 + 32);
      }

      v12 = v11;
      v8 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if ([v11 hasClientRequiredURLs])
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v4 = *(aBlock[0] + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v7;
      if (v8 == i)
      {
        v13 = aBlock[0];
        v5 = v24;
        v4 = v25;
        v7 = v22;
        v8 = v23;
        v2 = v21;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  v13 = _swiftEmptyArrayStorage;
LABEL_16:
  sub_1000059F8(0, &qword_1008E3FD0, OS_dispatch_queue_ptr);
  v14 = static OS_dispatch_queue.main.getter();
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  *(v15 + 24) = v2;
  aBlock[4] = sub_100513C20;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000449A8;
  aBlock[3] = &unk_10085E320;
  v16 = _Block_copy(aBlock);
  v17 = v2;

  v18 = v26;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000261C4();
  sub_100140278(&unk_1008E7F50, &qword_1006D8190);
  sub_10002621C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);

  (v5[1])(v7, v4);
  return (*(v27 + 8))(v18, v8);
}

NSObject *sub_10050FCC8(unint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_awards;
  v5 = *(a2 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_awards);

  v6 = sub_10031B658(a1, v5);

  if ((v6 & 1) == 0)
  {
    v8 = *(a2 + v4);
    if (v8 >> 62)
    {
      v9 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v10 = static os_log_type_t.default.getter();
    result = ACHLogUI();
    if (result)
    {
      v11 = result;
      os_log(_:dso:log:_:_:)(v10, &_mh_execute_header, result, "[HistoryDayViewController] Updating awards", 42, 2, _swiftEmptyArrayStorage);

      *(a2 + v4) = a1;

      return sub_10050EB2C(&off_100845FC0, v9 == 0);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_10050FDD8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v41[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for Calendar();
  v8 = *(v40 - 8);
  __chkstk_darwin(v40);
  v10 = &v41[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v41[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000059F8(0, &qword_1008E3FD0, OS_dispatch_queue_ptr);
  *v14 = static OS_dispatch_queue.main.getter();
  (*(v12 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v11);
  v15 = _dispatchPreconditionTest(_:)();
  (*(v12 + 8))(v14, v11);
  if ((v15 & 1) == 0)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return;
  }

  static Calendar.current.getter();
  (*(v5 + 16))(v7, v3 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_date, v4);
  v16 = Calendar.isDateInToday(_:)();
  (*(v5 + 8))(v7, v4);
  (*(v8 + 8))(v10, v40);
  v17 = OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_addToYourRingViewController;
  v18 = *(v3 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_addToYourRingViewController);
  v19 = v3;
  if (v16)
  {
    if (!v18)
    {
      sub_100007C5C(v3 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_appRecommendationDataProvider, v43);
      v20 = *(v3 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_fitnessAppContext);
      sub_100007C5C(v3 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_seymourRecommendationDataProvider, v42);
      sub_100007C5C(v3 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_walkSuggestionDataProvider, v41);
      v21 = sub_1001DF03C(v43, v43[3]);
      v22 = __chkstk_darwin(v21);
      v24 = (&v41[-1] - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v25 + 16))(v24, v22);
      v26 = sub_1001DF03C(v42, v42[3]);
      v27 = __chkstk_darwin(v26);
      v29 = (&v41[-1] - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v30 + 16))(v29, v27);
      sub_1001DF03C(v41, v41[3]);
      v31 = *v24;
      v32 = *v29;
      v33 = v20;
      v34 = sub_100512A20(v31, v33, v32);

      sub_100005A40(v41);
      sub_100005A40(v42);
      sub_100005A40(v43);
      v35 = *(v19 + v17);
      *(v19 + v17) = v34;
      v36 = v34;

      *&v36[OBJC_IVAR____TtC10FitnessApp37AddToYourRingCollectionViewController_delegate + 8] = &off_10085E0A8;
      swift_unknownObjectWeakAssign();
    }

    v37 = static os_log_type_t.default.getter();
    v38 = ACHLogUI();
    if (v38)
    {
      v39 = v38;
      os_log(_:dso:log:_:_:)(v37, &_mh_execute_header, v38, "[HistoryDayViewController] Updating add to your rings", 53, 2, _swiftEmptyArrayStorage);

      sub_10050EB2C(&off_100845EF8, v18 == 0);
      return;
    }

    goto LABEL_10;
  }

  *(v3 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_addToYourRingViewController) = 0;
}

void sub_10051030C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000059F8(0, &qword_1008E3FD0, OS_dispatch_queue_ptr);
  *v11 = static OS_dispatch_queue.main.getter();
  (*(v9 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v8);
  v12 = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v11, v8);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v13 = static os_log_type_t.default.getter();
  v14 = ACHLogUI();
  if (!v14)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v15 = v14;
  os_log(_:dso:log:_:_:)(v13, &_mh_execute_header, v14, "[HistoryDayViewController] Fetching data", 40, 2, _swiftEmptyArrayStorage);

  v16 = *(v3 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_activitySummary);
  if (v16)
  {
    v31 = v16;
    v17 = [v31 activityMoveMode];
    sub_10050F01C(v17, v18);
    v19 = *(v3 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_mindfulnessSessionDataProvider);
    v20 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_100513BE8;
    aBlock[5] = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1004476B0;
    aBlock[3] = &unk_10085E280;
    v21 = _Block_copy(aBlock);

    [v19 allMindfulnessSessionsWithCompletion:v21];
    _Block_release(v21);
    sub_10050FDD8(v22, v23);
    v24 = *(v3 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_dataProvider);
    v25 = OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_date;
    v26 = *(v5 + 16);
    v26(v7, v3 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_date, v4);
    v27 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1001FA14C(v7, v17, v24, v27);
    v28 = *(v5 + 8);
    v28(v7, v4);

    v26(v7, v3 + v25, v4);
    v29 = swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_1001F8568(v7, sub_100513BF0, v29);

    v28(v7, v4);
  }
}

void sub_100510718(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      v6 = a1;
      sub_100510874(v6);
    }
  }
}

void sub_100510784(void *a1, uint64_t a2)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      v5 = *(Strong + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_activitySummary);
      if (v5)
      {
        v6 = a1;
        v7 = v5;
        v8 = [v7 activeEnergyBurned];
        v9 = [v8 _quantityByAddingQuantity:v6];
        v10 = *&v4[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_totalEnergy];
        *&v4[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_totalEnergy] = v9;
        v11 = v9;

        sub_1005114E0();
        v4 = v6;
      }
    }
  }
}

void sub_100510874(char *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_chartData;
  v5 = *&v1[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_chartData];
  if (v5)
  {
    *&v2[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_chartData] = a1;
    v6 = a1;

    sub_100510C30(0);
    return;
  }

  v2[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_didSetInitialChartData] = 1;
  *&v2[v4] = a1;
  v7 = OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_moveCell;
  v8 = *&v2[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_moveCell];
  if (v8)
  {
    *&v8[OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_workouts] = *&v2[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_workouts];
    v9 = a1;
    v10 = v8;
  }

  else
  {
    v11 = a1;
  }

  v12 = OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_exerciseCell;
  v13 = *&v2[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_exerciseCell];
  if (v13)
  {
    *&v13[OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_workouts] = *&v2[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_workouts];
    v14 = v13;

    v15 = *&v2[v12];
    if (v15)
    {
      v16 = objc_opt_self();
      v17 = v15;
      v18 = [v16 minuteUnit];
      v19 = [objc_opt_self() quantityWithUnit:v18 doubleValue:*&a1[OBJC_IVAR____TtC10FitnessApp17ActivityChartData_numberOfActiveMinutes]];

      v20 = *&v17[OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_auxiliaryValue];
      *&v17[OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_auxiliaryValue] = v19;
      v21 = v19;

      if (v17[OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_chartViewType])
      {
        if (v17[OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_chartViewType] == 1)
        {
          v22 = *&v17[OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_auxiliaryLabel];
          v23 = String._bridgeToObjectiveC()();
          [v22 setText:v23];

          v17 = v21;
LABEL_16:

          goto LABEL_17;
        }

        sub_100381DF0(v21);
      }

      else
      {
        sub_100381AE8(v21);
      }

      v23 = v21;
      goto LABEL_16;
    }
  }

LABEL_17:
  v24 = *&v2[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_standCell];
  if (v24)
  {
    *&v24[OBJC_IVAR____TtC10FitnessApp30DayViewStandChartTableViewCell_chartData] = *&a1[OBJC_IVAR____TtC10FitnessApp17ActivityChartData_standData];
    v25 = v24;

    sub_1001ED8BC();
  }

  v26 = *&v2[v7];
  if (v26 && *&v26[OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_chartData])
  {
    v27 = v26;
    sub_100386C2C();
  }

  v28 = *&v2[v12];
  if (v28 && *&v28[OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_chartData])
  {
    v29 = v28;
    sub_100386C2C();
  }

  if (v2[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_viewAppeared] == 1)
  {
    v2[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_didInitialChartAnimation] = 1;
    v30 = swift_allocObject();
    *(v30 + 16) = v2;
    v31 = v2;
    sub_1001B1314(sub_100513BC0, v30, 0.2);
  }
}

void sub_100510C30(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *&v2[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_chartData];
  if (v12)
  {
    v13 = *&v2[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_workouts];
    if (v13)
    {
      v33 = v9;
      v34 = v5;
      v14 = qword_100925000;
      if (a1)
      {
        v15 = *&v2[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_moveCell];
        if (v15)
        {
          *&v15[OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_chartData] = *&v12[OBJC_IVAR____TtC10FitnessApp17ActivityChartData_moveData];
          v16 = v12;

          v17 = v15;

          *&v17[OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_workouts] = v13;

          sub_10038230C();
          if (v17[OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_chartViewType] == 2)
          {
            sub_100383088();
          }

          [v17 setNeedsLayout];
          sub_100385598(0, 0);
        }

        else
        {
          v19 = v12;
        }

        v20 = *&v2[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_exerciseCell];
        if (v20)
        {
          v32 = v8;
          *&v20[OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_chartData] = *&v12[OBJC_IVAR____TtC10FitnessApp17ActivityChartData_exerciseData];
          v21 = v20;

          *&v21[OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_workouts] = v13;

          sub_10038230C();
          if (v21[OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_chartViewType] == 2)
          {
            sub_100383088();
          }

          [v21 setNeedsLayout];
          sub_100385598(0, 0);

          v8 = v32;
        }

        v14 = qword_100925000;
        v22 = *&v2[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_standCell];
        if (v22)
        {
          *&v22[OBJC_IVAR____TtC10FitnessApp30DayViewStandChartTableViewCell_chartData] = *&v12[OBJC_IVAR____TtC10FitnessApp17ActivityChartData_standData];
          v23 = v22;

          sub_1001ED8BC();

          v14 = qword_100925000;
        }
      }

      else
      {
        v18 = v12;
      }

      v24 = *&v2[v14[401]];
      if (v24)
      {
        *&v24[OBJC_IVAR____TtC10FitnessApp30DayViewStandChartTableViewCell_chartData] = *&v12[OBJC_IVAR____TtC10FitnessApp17ActivityChartData_standData];
        v25 = v24;

        sub_1001ED8BC();
      }

      sub_1000059F8(0, &qword_1008E3FD0, OS_dispatch_queue_ptr);
      v26 = static OS_dispatch_queue.main.getter();
      v27 = swift_allocObject();
      v27[2] = v2;
      v27[3] = v12;
      v27[4] = v13;
      aBlock[4] = sub_100513BB4;
      aBlock[5] = v27;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000449A8;
      aBlock[3] = &unk_10085E208;
      v28 = _Block_copy(aBlock);
      v29 = v12;
      v30 = v2;

      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_1000261C4();
      sub_100140278(&unk_1008E7F50, &qword_1006D8190);
      sub_10002621C();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v28);

      (*(v34 + 8))(v7, v4);
      (*(v33 + 8))(v11, v8);
    }
  }
}

id sub_1005111A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_opt_self();
  [v6 begin];
  [v6 setAnimationDuration:0.25];
  v7 = *(a1 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_moveCell);
  if (v7)
  {
    *&v7[OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_chartData] = *(a2 + OBJC_IVAR____TtC10FitnessApp17ActivityChartData_moveData);
    v8 = v7;

    *&v8[OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_workouts] = a3;

    sub_10038230C();
    if (v8[OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_chartViewType] == 2)
    {
      sub_100383088();
    }

    [v8 setNeedsLayout];
    sub_100385598(1, 1);
  }

  v9 = *(a1 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_exerciseCell);
  if (v9)
  {
    *&v9[OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_chartData] = *(a2 + OBJC_IVAR____TtC10FitnessApp17ActivityChartData_exerciseData);
    v10 = v9;

    *&v10[OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_workouts] = a3;

    sub_10038230C();
    if (v10[OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_chartViewType] == 2)
    {
      sub_100383088();
    }

    [v10 setNeedsLayout];
    sub_100385598(1, 1);
  }

  return [v6 commit];
}

void sub_1005113C8()
{
  v1 = *(v0 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_ringCell);
  if (*(v0 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_activitySummary))
  {
    if (!v1)
    {
      return;
    }

    v2 = OBJC_IVAR____TtC10FitnessApp33DayViewActivityRingsTableViewCell_ringsView;
    v3 = *&v1[OBJC_IVAR____TtC10FitnessApp33DayViewActivityRingsTableViewCell_ringsView];
    v4 = *&v1[OBJC_IVAR____TtC10FitnessApp33DayViewActivityRingsTableViewCell_activitySummary];
    v5 = v1;
    [v3 hk_configureWithActivitySummary:v4 animated:1];
    v6 = [*&v1[v2] ringGroup];
    [v6 setIsPaused:v5[OBJC_IVAR____TtC10FitnessApp33DayViewActivityRingsTableViewCell_isPaused]];
  }

  else
  {
    if (!v1)
    {
      return;
    }

    v5 = v1;
    v6 = ARUIRingsView.emptyRings()();
  }
}

void sub_1005114E0()
{
  v1 = *(v0 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_moveCell);
  if (!v1)
  {
    return;
  }

  v2 = *(v0 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_totalEnergy);
  v3 = *&v1[OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_auxiliaryValue];
  *&v1[OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_auxiliaryValue] = v2;
  v4 = v2;
  v7 = v1;

  if (v2)
  {
    if (v7[OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_chartViewType])
    {
      if (v7[OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_chartViewType] == 1)
      {
        v5 = *&v7[OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_auxiliaryLabel];
        v6 = String._bridgeToObjectiveC()();
        [v5 setText:v6];

        v7 = v4;
LABEL_10:

        goto LABEL_11;
      }

      sub_100381DF0(v4);
    }

    else
    {
      sub_100381AE8(v4);
    }

    v6 = v4;
    goto LABEL_10;
  }

LABEL_11:
}

void sub_100511674(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *&v2[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_activitySummary];
  if (v8)
  {
    v9 = OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_date;
    v10 = *(v4 + 16);
    v10(v7, &v2[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_date], v3, v5);
    v11 = v8;
    v12 = v2;
    isa = Date._bridgeToObjectiveC()().super.isa;
    v14 = *(v4 + 8);
    v14(v7, v3);
    v15 = *(*&v12[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_dataProvider] + OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_isWheelchairUser);
    v34 = v11;
    v16 = sub_1000B841C(v11, isa, v15);

    (v10)(v7, &v12[v9], v3);
    v17 = Date._bridgeToObjectiveC()().super.isa;
    v14(v7, v3);
    v18 = sub_1000B86E8(v17);

    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    sub_100140278(&qword_1008E7590, qword_1006D5360);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1006D64F0;
    *(v22 + 56) = type metadata accessor for HistoryDayViewController(0);
    *(v22 + 32) = v12;
    v23 = sub_1000059F8(0, &qword_1008DD8C0, UIImage_ptr);
    *(v22 + 64) = v16;
    *(v22 + 120) = &type metadata for String;
    *(v22 + 88) = v23;
    *(v22 + 96) = v19;
    *(v22 + 104) = v21;
    v24 = *&v12[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_sharingImage];
    *&v12[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_sharingImage] = v16;
    v25 = v16;
    v26 = v12;

    v27 = &v26[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_sharingText];
    *v27 = v19;
    v27[1] = v21;

    v28 = objc_allocWithZone(UIActivityViewController);
    v29 = Array._bridgeToObjectiveC()().super.isa;

    v30 = [v28 initWithActivityItems:v29 applicationActivities:0];

    v31 = sub_1000B882C();
    if (!v31)
    {
      type metadata accessor for ActivityType(0);
      static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = Array._bridgeToObjectiveC()().super.isa;
    }

    [v30 setExcludedActivityTypes:v31];

    aBlock[4] = ASFriendListDisplayMode.id.getter;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000449A8;
    aBlock[3] = &unk_10085E1B8;
    v32 = _Block_copy(aBlock);
    [v26 presentViewController:v30 animated:1 completion:v32];
    _Block_release(v32);
  }
}

uint64_t sub_100511A30(void *a1, char *a2, double a3, double a4, double a5, double a6)
{
  v76 = a2;
  if (AAUIShouldUseNewTrophyCase())
  {
    v75 = type metadata accessor for TrophyCaseAwardDetailViewController();
    v12 = *(*&v6[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_dataProvider] + OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_healthStore);
    v13 = *&v6[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_friendListManager];
    sub_100007C5C(&v6[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_awardsDataProvider], &aBlock);
    v14 = *&v6[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_badgeImageFactory];
    v15 = *&v6[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_achievementResourceProvider];
    v16 = *&v6[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_fiuiFormattingManager];
    v17 = *&v6[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_achievementLocalizationProvider];
    v18 = *&v6[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_pauseRingsCoordinator];
    v67 = a1;
    v19 = *&v6[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_fitnessAppContext];
    v66 = *&v6[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_workoutFormattingManager];
    v73 = *&v6[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_workoutDataProvider];
    v74 = v12;
    v72 = v13;
    v71 = v14;
    v70 = v15;
    v69 = v16;
    v68 = v17;
    v20 = v18;
    v21 = v19;
    v64 = v21;
    v22 = v66;
    v65 = v22;
    v23 = v73;
    v66 = v23;
    v24 = v67;
    LOBYTE(v19) = [v67 unearned] ^ 1;
    v26 = v80;
    v25 = v81;
    v27 = sub_1001DF03C(&aBlock, v80);
    v73 = &v64;
    v28 = __chkstk_darwin(v27);
    v30 = &v64 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v31 + 16))(v30, v28);
    v32 = v24;
    v62 = v26;
    v63 = v25;
    v60 = v22;
    v61 = v23;
    v58 = v20;
    v59 = v21;
    v33 = v20;
    v34 = v74;
    v35 = v72;
    v36 = v30;
    v37 = v70;
    v38 = v71;
    v40 = v68;
    v39 = v69;
    sub_1006524C4(v32, v74, v72, v36, v71, v70, v69, v68, v58, v59, v60, v61, 0, 0, v19, 1, 0, v75, v62, v63);
    v42 = v41;

    sub_100005A40(&aBlock);
  }

  else
  {
    v42 = [objc_allocWithZone(CHAchievementDetailViewController) initWithAchievement:a1 locProvider:*&v6[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_achievementLocalizationProvider] formatsForFriend:0 forDayView:1 forModalPresentation:0 shouldShowCelebration:0];
  }

  v43 = swift_allocObject();
  v44 = v76;
  *(v43 + 16) = v76;
  v45 = swift_allocObject();
  *(v45 + 16) = v44;
  v46 = *&v44[OBJC_IVAR____TtC10FitnessApp29AchievementsListTableViewCell_insetContentView];
  v75 = objc_allocWithZone(AAUIAchievementDetailTransitionAnimator);
  v81 = sub_100513B6C;
  v82 = v43;
  aBlock = _NSConcreteStackBlock;
  v78 = 1107296256;
  v79 = sub_1000449A8;
  v80 = &unk_10085E168;
  v47 = _Block_copy(&aBlock);
  swift_unknownObjectRetain_n();
  v48 = v44;
  v49 = v46;

  v81 = sub_100513B74;
  v82 = v45;
  aBlock = _NSConcreteStackBlock;
  v78 = 1107296256;
  v79 = sub_1000449A8;
  v80 = &unk_10085E190;
  v50 = _Block_copy(&aBlock);

  v51 = [v75 initWithPresentingViewController:v6 detailViewController:v42 shouldPlayFlipInAnimation:1 initialBadgeFrame:v49 conversionView:v47 didStartAnimationBlock:v50 didFinishAnimationBlock:{a3, a4, a5, a6}];
  _Block_release(v50);
  _Block_release(v47);
  swift_unknownObjectRelease();

  v52 = *&v6[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_awardsTransitionAnimator];
  *&v6[OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_awardsTransitionAnimator] = v51;
  v53 = v51;

  if (v53)
  {
    [v53 setShouldAdjustForInset:0];
  }

  objc_opt_self();
  v54 = swift_dynamicCastObjCClass();
  if (v54)
  {
    v55 = v54;
    v56 = [v6 navigationController];
    [v56 pushViewController:v55 animated:1];
  }

  return swift_unknownObjectRelease_n();
}

uint64_t sub_100512020(uint64_t a1, uint64_t a2)
{
  result = type metadata accessor for Date();
  if (v3 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

NSObject *sub_1005122BC(uint64_t a1)
{
  v1 = static os_log_type_t.default.getter();
  v2 = HKLogActivity;
  os_log(_:dso:log:_:_:)(v1, &_mh_execute_header, v2, "[HistoryDayViewController] appProtectionSubjectsChanged, refreshing workout icons", 81, 2, _swiftEmptyArrayStorage);

  return sub_10050EB2C(&off_100846010, 1u);
}

void sub_1005123A0(uint64_t a1, void *a2, uint64_t a3, char *a4)
{
  v46[3] = type metadata accessor for AppRecommendationDataProvider();
  v46[4] = &off_10085F1A0;
  v46[0] = a1;
  v45[3] = type metadata accessor for SeymourWorkoutRecommendationDataProvider(0);
  v45[4] = &off_100848248;
  v45[0] = a3;
  *&a4[OBJC_IVAR____TtC10FitnessApp37AddToYourRingCollectionViewController_lastCollectionViewContentHeight] = 0;
  v44[3] = &type metadata for WalkSuggestionDataProvider;
  v44[4] = &off_1008624A8;
  *&a4[OBJC_IVAR____TtC10FitnessApp37AddToYourRingCollectionViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&a4[OBJC_IVAR____TtC10FitnessApp37AddToYourRingCollectionViewController_protectedAppsSubscription] = 0;
  v8 = &a4[OBJC_IVAR____TtC10FitnessApp37AddToYourRingCollectionViewController_suggestedMinutesToWalk];
  *v8 = 0;
  v8[8] = 1;
  *&a4[OBJC_IVAR____TtC10FitnessApp37AddToYourRingCollectionViewController_walkSuggestionCell] = 0;
  *&a4[OBJC_IVAR____TtC10FitnessApp37AddToYourRingCollectionViewController_seymourWorkoutRecommendations] = _swiftEmptyArrayStorage;
  *&a4[OBJC_IVAR____TtC10FitnessApp37AddToYourRingCollectionViewController_appStoreRecommendations] = _swiftEmptyArrayStorage;
  *&a4[OBJC_IVAR____TtC10FitnessApp37AddToYourRingCollectionViewController_recentWorkoutAppRecommendations] = _swiftEmptyArrayStorage;
  sub_100007C5C(v46, &a4[OBJC_IVAR____TtC10FitnessApp37AddToYourRingCollectionViewController_appRecommendationDataProvider]);
  *&a4[OBJC_IVAR____TtC10FitnessApp37AddToYourRingCollectionViewController_fitnessAppContext] = a2;
  sub_100007C5C(v45, &a4[OBJC_IVAR____TtC10FitnessApp37AddToYourRingCollectionViewController_seymourWorkoutRecommendationDataProvider]);
  sub_100007C5C(v44, &a4[OBJC_IVAR____TtC10FitnessApp37AddToYourRingCollectionViewController_walkSuggestionDataProvider]);
  type metadata accessor for BasicImpressionsTracker();
  a2;
  *&a4[OBJC_IVAR____TtC10FitnessApp37AddToYourRingCollectionViewController_impressionsTracker] = BasicImpressionsTracker.__allocating_init(threshold:)();

  sub_100140278(&unk_1008F13B0, &qword_1006EE0B0);
  Dependencies.resolve<A>(failureHandler:)();

  sub_100006260(v43, &a4[OBJC_IVAR____TtC10FitnessApp37AddToYourRingCollectionViewController_artworkImageLoader]);

  sub_100140278(&qword_1008E4F20, &unk_1006F1470);
  Dependencies.resolve<A>(failureHandler:)();

  v9 = *(&v43[0] + 1);
  v10 = &a4[OBJC_IVAR____TtC10FitnessApp37AddToYourRingCollectionViewController_eventHub];
  *v10 = *&v43[0];
  *(v10 + 1) = v9;
  type metadata accessor for SubscriptionToken();
  swift_allocObject();
  swift_unknownObjectRetain();
  *&a4[OBJC_IVAR____TtC10FitnessApp37AddToYourRingCollectionViewController_subscriptionToken] = SubscriptionToken.init(eventHub:)();

  sub_100140278(&qword_1008F13C0, &qword_1006F08B0);
  Dependencies.resolve<A>(failureHandler:)();

  sub_100006260(v43, &a4[OBJC_IVAR____TtC10FitnessApp37AddToYourRingCollectionViewController_networkEvaluator]);
  v11 = [objc_allocWithZone(UICollectionViewLayout) init];
  v42.receiver = a4;
  v42.super_class = type metadata accessor for AddToYourRingCollectionViewController();
  v12 = objc_msgSendSuper2(&v42, "initWithCollectionViewLayout:", v11);

  v13 = v12;
  v14 = [v13 collectionView];
  if (!v14)
  {
    __break(1u);
    goto LABEL_10;
  }

  v15 = v14;
  v16 = sub_100671764();
  [v15 setCollectionViewLayout:v16];

  v17 = [v13 collectionView];
  if (!v17)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v18 = v17;
  type metadata accessor for WalkSuggestionCollectionViewCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v20 = String._bridgeToObjectiveC()();
  [v18 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v20];

  v21 = [v13 collectionView];
  if (!v21)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v22 = v21;
  type metadata accessor for WorkoutAppRecommendationCollectionViewCell();
  v23 = swift_getObjCClassFromMetadata();
  v24 = String._bridgeToObjectiveC()();
  [v22 registerClass:v23 forCellWithReuseIdentifier:v24];

  v25 = [v13 collectionView];
  if (!v25)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v26 = v25;
  type metadata accessor for SeymourWorkoutRecommendationCollectionViewCell();
  v27 = swift_getObjCClassFromMetadata();
  v28 = String._bridgeToObjectiveC()();
  [v26 registerClass:v27 forCellWithReuseIdentifier:v28];

  v29 = [v13 collectionView];
  if (!v29)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v30 = v29;
  type metadata accessor for AppStoreAppRecommendationCollectionViewCell();
  v31 = swift_getObjCClassFromMetadata();
  v32 = String._bridgeToObjectiveC()();
  [v30 registerClass:v31 forCellWithReuseIdentifier:v32];

  v33 = [v13 collectionView];
  if (!v33)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v34 = v33;
  type metadata accessor for AddToYourRingSectionHeaderView();
  v35 = swift_getObjCClassFromMetadata();
  v36 = UICollectionElementKindSectionHeader;
  v37 = String._bridgeToObjectiveC()();
  [v34 registerClass:v35 forSupplementaryViewOfKind:v36 withReuseIdentifier:v37];

  v38 = [v13 collectionView];
  if (v38)
  {
    type metadata accessor for AddToYourRingSectionSeparatorView();
    v39 = swift_getObjCClassFromMetadata();
    v40 = UICollectionElementKindSectionFooter;
    v41 = String._bridgeToObjectiveC()();
    [v38 registerClass:v39 forSupplementaryViewOfKind:v40 withReuseIdentifier:v41];

    sub_10065E6D4();
    sub_10065EE00();

    sub_100005A40(v44);
    sub_100005A40(v45);
    sub_100005A40(v46);
    return;
  }

LABEL_15:
  __break(1u);
}

uint64_t sub_100512A20(uint64_t a1, void *a2, uint64_t a3)
{
  v28 = type metadata accessor for AppRecommendationDataProvider();
  v29 = &off_10085F1A0;
  v27[0] = a1;
  v25 = type metadata accessor for SeymourWorkoutRecommendationDataProvider(0);
  v26 = &off_100848248;
  v24[0] = a3;
  v22 = &type metadata for WalkSuggestionDataProvider;
  v23 = &off_1008624A8;
  v6 = objc_allocWithZone(type metadata accessor for AddToYourRingCollectionViewController());
  v7 = sub_1001DF03C(v27, v28);
  v8 = __chkstk_darwin(v7);
  v10 = (&v21[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v10, v8);
  v12 = sub_1001DF03C(v24, v25);
  v13 = __chkstk_darwin(v12);
  v15 = (&v21[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15, v13);
  sub_1001DF03C(v21, v22);
  sub_1005123A0(*v10, a2, *v15, v6);
  v18 = v17;
  sub_100005A40(v21);
  sub_100005A40(v24);
  sub_100005A40(v27);
  return v18;
}

id sub_100512C24()
{
  v1 = [objc_allocWithZone(LPLinkMetadata) init];
  v2 = *(v0 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_sharingImage);
  if (v2)
  {
    v3 = v2;
    v4 = UIImagePNGRepresentation(v3);
    if (v4)
    {
      v5 = v4;
      v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;

      v9 = objc_allocWithZone(LPImage);
      sub_100215414(v6, v8);
      isa = Data._bridgeToObjectiveC()().super.isa;
      v11 = String._bridgeToObjectiveC()();
      v12 = [v9 initWithData:isa MIMEType:v11];

      sub_10000AF88(v6, v8);
      [v1 setImage:v12];

      if (*(v0 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_sharingText + 8))
      {

        v13 = String._bridgeToObjectiveC()();
      }

      else
      {
        v13 = 0;
      }

      [v1 setSummary:v13];

      sub_10000AF88(v6, v8);
    }
  }

  return v1;
}

void *sub_100512DB0(void *result, void *a2, void *a3)
{
  if (result)
  {
    if (result == 2)
    {
      v9 = *(v3 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_fromVC);
      if (!v9)
      {
        return 0;
      }

      v10 = v3;
      sub_1000059F8(0, &qword_1008E4DD0, UIViewController_ptr);
      v11 = v9;
      v12 = a3;
      v13 = static NSObject.== infix(_:_:)();

      if ((v13 & 1) == 0)
      {
        return 0;
      }

      v8 = *(v10 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_awardsTransitionAnimator);
      if (!v8)
      {
        return 0;
      }
    }

    else
    {
      if (result != 1)
      {
        v16 = static os_log_type_t.fault.getter();
        v17 = HKLogActivity;
        if (os_log_type_enabled(HKLogActivity, v16))
        {
          v18 = v17;
          v19 = swift_slowAlloc();
          v20 = swift_slowAlloc();
          v21 = v20;
          *v19 = 136315138;
          *(v19 + 4) = sub_10000AFDC(0xD000000000000037, 0x8000000100750B90, &v21);
          _os_log_impl(&_mh_execute_header, v18, v16, "%s found unexpected UINavigationController.Operation; skipping transition", v19, 0xCu);
          sub_100005A40(v20);
        }

        return 0;
      }

      type metadata accessor for TrophyCaseAwardDetailViewController();
      if (![a3 isKindOfClass:swift_getObjCClassFromMetadata()])
      {
        return 0;
      }

      type metadata accessor for HistoryPagingViewController(0);
      if (![a2 isKindOfClass:swift_getObjCClassFromMetadata()])
      {
        return 0;
      }

      v6 = *(v3 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_fromVC);
      *(v3 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_fromVC) = a2;
      v7 = a2;

      v8 = *(v3 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_awardsTransitionAnimator);
      if (!v8)
      {
        return 0;
      }
    }

    v14 = v8;
    v15 = v8;
    return v14;
  }

  return result;
}