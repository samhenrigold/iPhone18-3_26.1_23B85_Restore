uint64_t sub_1004D8AC4(uint64_t a1, uint64_t a2, void *a3)
{
  v29 = a3;
  v30 = a2;
  v5 = type metadata accessor for IndexPath();
  v28 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100140278(&qword_1008E9A30, &unk_1006F50F0);
  __chkstk_darwin(v8 - 8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v25 - v12;
  v14 = type metadata accessor for ImpressionMetrics();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR____TtC10FitnessApp25ActivityDashboardCardCell_card;
  swift_beginAccess();
  sub_1004D9430(a1 + v18, v34);
  if (!v35)
  {
    sub_10000EA04(v34, &qword_1008DCC60, &qword_1006DEBC0);
    (*(v15 + 56))(v13, 1, 1, v14);
    return sub_10000EA04(v13, &qword_1008E9A30, &unk_1006F50F0);
  }

  v26 = v5;
  v27 = v3;
  sub_100007C5C(v34, v31);
  sub_10000EA04(v34, &qword_1008DCC60, &qword_1006DEBC0);
  v19 = v32;
  v20 = v33;
  sub_1000066AC(v31, v32);
  v21 = IndexPath.item.getter();
  (*(v20 + 64))(0, 0, v21, v19, v20);
  sub_100005A40(v31);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    return sub_10000EA04(v13, &qword_1008E9A30, &unk_1006F50F0);
  }

  (*(v15 + 32))(v17, v13, v14);
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v23 = [v29 layoutAttributesForItemAtIndexPath:isa];

  if (v23)
  {
    [v23 frame];
    (*(v28 + 16))(v7, v30, v26);
    (*(v15 + 16))(v10, v17, v14);
    (*(v15 + 56))(v10, 0, 1, v14);
    swift_beginAccess();
    sub_100559F2C(v10, v7);
    swift_endAccess();
    sub_1004D8F08();
    ImpressionsCalculator.addElement(_:at:)();
  }

  return (*(v15 + 8))(v17, v14);
}

uint64_t sub_1004D8F08()
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

uint64_t sub_1004D8FE4()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1004D902C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1004C5CD4(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1004932C0();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for IndexPath();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = type metadata accessor for ImpressionMetrics();
    v20 = *(v13 - 8);
    (*(v20 + 32))(a2, v12 + *(v20 + 72) * v7, v13);
    sub_10056D82C(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for ImpressionMetrics();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

void sub_1004D9200(uint64_t a1)
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
  v13 = *(v1 + 40);
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
      sub_1004D8F08();
      ImpressionsCalculator.removeElement(_:)();

      (*(v7 + 8))(v12, v6);
    }

    else
    {
    }
  }
}

uint64_t sub_1004D9430(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008DCC60, &qword_1006DEBC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1004D9574(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for AdvancedGoalViewFactory();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_1004D95CC(uint64_t a1)
{
  v2 = type metadata accessor for Calendar();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return EnvironmentValues.calendar.setter();
}

uint64_t sub_1004D9694(void *a1, int a2, uint64_t a3, uint64_t a4, int a5)
{
  v27 = a5;
  v28 = a4;
  v25 = a3;
  v24 = a2;
  v23 = a1;
  v5 = type metadata accessor for AdvancedChangeGoalView(0);
  __chkstk_darwin(v5);
  v7 = (&v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = sub_100140278(&qword_1008F0110, &qword_1006F5138);
  v8 = *(v26 - 8);
  __chkstk_darwin(v26);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v23 - v12;
  *v7 = swift_getKeyPath();
  sub_100140278(&qword_1008E2280, &qword_1006F5170);
  swift_storeEnumTagMultiPayload();
  v14 = v7 + v5[5];
  sub_10046440C();
  sub_1004D99C4(&qword_1008F0118, sub_10046440C, &protocol conformance descriptor for FIUIFormattingManager);
  *v14 = Environment.init<A>(_:)();
  v14[8] = v15 & 1;
  v16 = (v7 + v5[6]);
  type metadata accessor for GoalDaysModel(0);
  sub_1004D99C4(&unk_1008E2210, type metadata accessor for GoalDaysModel, &unk_1006DF680);
  v17 = v23;
  *v16 = ObservedObject.init(wrappedValue:)();
  v16[1] = v18;
  *(v7 + v5[7]) = v24;
  *(v7 + v5[8]) = v25;
  *(v7 + v5[9]) = v27;
  sub_1004D99C4(&qword_1008F0120, type metadata accessor for AdvancedChangeGoalView, &unk_1006DF008);
  View.environment<A>(_:)();
  sub_1004D9A0C(v7);
  v19 = v26;
  (*(v8 + 16))(v10, v13, v26);
  v20 = objc_allocWithZone(sub_100140278(&qword_1008F0128, &unk_1006F5178));
  v21 = _UIHostingView.init(rootView:)();
  (*(v8 + 8))(v13, v19);
  return v21;
}

uint64_t sub_1004D99C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1004D9A0C(uint64_t a1)
{
  v2 = type metadata accessor for AdvancedChangeGoalView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1004D9A68@<X0>(uint64_t *a1@<X8>)
{
  result = AnyRegexOutput.count.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1004D9AD8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10057F680(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = &v5[5 * a1];
    sub_100006260(v9 + 2, a2);
    result = memmove(v9 + 2, v9 + 72, 40 * (v8 - a1));
    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1004D9B74(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10057F6BC(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1004D9C00@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10057F6A8(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(sub_100140278(&qword_1008DF158, &qword_1006D8EC8) - 8);
    v10 = *(v9 + 72);
    v11 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v10 * a1;
    result = sub_100015E80(v11, a2, &qword_1008DF158, &qword_1006D8EC8);
    if (v10 > 0 || v11 >= v11 + v10 + v10 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

id sub_1004D9D44()
{
  result = [objc_allocWithZone(type metadata accessor for Navigator()) init];
  qword_100925BA8 = result;
  return result;
}

void sub_1004D9E10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  isa = Array._bridgeToObjectiveC()().super.isa;
  URL._bridgeToObjectiveC()(v5);
  v7 = v6;
  (*(a3 + 16))(a3, isa, v6);
}

void sub_1004D9E8C(uint64_t a1, uint64_t a2)
{
  v5 = sub_100140278(&qword_1008DF158, &qword_1006D8EC8);
  __chkstk_darwin(v5);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v20[-v9];
  v11 = OBJC_IVAR___CHNavigator_urlKeys;
  swift_beginAccess();
  v12 = *(v2 + v11);
  v13 = *(v12 + 16);
  if (v13)
  {
    v14 = 0;
    for (i = (v12 + 40); ; i += 2)
    {
      v16 = *(i - 1) == a1 && *i == a2;
      if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      if (v13 == ++v14)
      {
        return;
      }
    }

    swift_beginAccess();
    sub_1004D9B74(v14);
    swift_endAccess();

    swift_beginAccess();
    sub_1004D9C00(v14, v10);
    swift_endAccess();
    v17 = *(v5 + 48);
    v18 = sub_100140278(&qword_1008E8FD8, &qword_1006E9A00);
    v19 = *(v18 - 8);
    (*(v19 + 32))(v7, v10, v18);

    (*(v19 + 8))(v7, v18);
  }
}

void sub_1004DA120(uint64_t a1, void *a2)
{
  v3 = v2;
  v105 = a2;
  v104 = type metadata accessor for DispatchWorkItemFlags();
  v103 = *(v104 - 8);
  __chkstk_darwin(v104);
  v102 = &v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for DispatchQoS();
  v100 = *(v101 - 8);
  __chkstk_darwin(v101);
  v99 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for URL();
  v96 = *(v97 - 8);
  __chkstk_darwin(v97);
  v94 = v7;
  v95 = &v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for AnyRegexOutput.Element();
  v93 = *(v108 - 8);
  __chkstk_darwin(v108);
  v107 = &v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100140278(&qword_1008E8FC0, &qword_1006E99E8);
  __chkstk_darwin(v9 - 8);
  v131 = &v91 - v10;
  v123 = sub_100140278(&qword_1008E8FC8, &qword_1006E99F0);
  v11 = *(v123 - 8);
  __chkstk_darwin(v123);
  v109 = &v91 - v12;
  v13 = sub_100140278(&qword_1008E8FD8, &qword_1006E9A00);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v91 - v15;
  v17 = sub_100140278(&qword_1008DF158, &qword_1006D8EC8);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v112 = &v91 - v19;
  v20 = sub_100140278(&qword_1008F0168, &qword_1006F5198);
  __chkstk_darwin(v20 - 8);
  v22 = &v91 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v126 = &v91 - v24;
  __chkstk_darwin(v25);
  v120 = &v91 - v26;
  v98 = a1;
  v121 = URL.absoluteString.getter();
  v122 = v27;
  v28 = OBJC_IVAR___CHNavigator_urlHandlers;
  swift_beginAccess();
  v29 = *(v3 + v28);
  v130 = (v18 + 56);
  v111 = v18;
  v129 = (v18 + 48);
  v30 = *(v29 + 16);
  v124 = (v14 + 32);
  v119 = (v14 + 8);
  v115 = (v11 + 56);
  v106 = v11;
  v110 = (v11 + 48);
  v114 = v29;

  v31 = 0;
  v128 = 0;
  v118 = v30;
  v113 = v16;
  v125 = v22;
  while (1)
  {
    if (v31 == v30)
    {
      v32 = 1;
      v127 = v30;
    }

    else
    {
      if ((v31 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      if (v31 >= *(v114 + 16))
      {
        goto LABEL_33;
      }

      sub_1004DB320(v114 + ((*(v111 + 80) + 32) & ~*(v111 + 80)) + *(v111 + 72) * v31, v22);
      v32 = 0;
      v127 = v31 + 1;
    }

    v33 = *v130;
    v34 = 1;
    (*v130)(v22, v32, 1, v17);
    v35 = *v129;
    if ((*v129)(v22, 1, v17) != 1)
    {
      v36 = *(v17 + 48);
      v37 = *(v17 + 64);
      v38 = v125;
      v39 = *v124;
      v40 = v35;
      v41 = v112;
      (*v124)(v112, v125, v13);
      v117 = *&v38[v36];
      v42 = swift_allocObject();
      *(v42 + 16) = *&v38[v37];
      v116 = *(v17 + 48);
      v43 = v126;
      v44 = &v126[*(v17 + 64)];
      v45 = v41;
      v35 = v40;
      v39(v126, v45, v13);
      v34 = 0;
      *&v43[v116] = v117;
      v16 = v113;
      *v44 = sub_1004DB3FC;
      v44[1] = v42;
    }

    v46 = v126;
    v33(v126, v34, 1, v17);
    v47 = v46;
    v48 = v120;
    sub_100015E80(v47, v120, &qword_1008F0168, &qword_1006F5198);
    if (v35(v48, 1, v17) == 1)
    {

      return;
    }

    v49 = *(v48 + *(v17 + 48));
    v50 = (v48 + *(v17 + 64));
    v51 = *v50;
    v52 = v50[1];
    (*v124)(v16, v48, v13);
    v53 = v128;
    Regex.firstMatch(in:)();
    if (v53)
    {

      (*v119)(v16, v13);
      (*v115)(v131, 1, 1, v123);
      v128 = 0;
      v22 = v125;
      goto LABEL_3;
    }

    v117 = v49;
    v54 = (*v110)(v131, 1, v123);
    v22 = v125;
    if (v54 != 1)
    {
      break;
    }

    v128 = 0;
    (*v119)(v16, v13);

LABEL_3:
    sub_10000EA04(v131, &qword_1008E8FC0, &qword_1006E99E8);
    v30 = v118;
    v31 = v127;
  }

  (*(v106 + 32))(v109, v131, v123);
  v55 = v105;
  v56 = v117;
  if (*(v105 + OBJC_IVAR___CHNavigatorContext_hasActiveWorkout) == 1 && *(v117 + OBJC_IVAR___CHNavigatorBehavior_allowedDuringWorkout) != 1)
  {

    v82 = static os_log_type_t.default.getter();
    v83 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, v82))
    {
      v84 = v83;
      v85 = swift_slowAlloc();
      v86 = v13;
      v87 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      aBlock[0] = v88;
      *v85 = 136315650;
      *(v85 + 4) = sub_10000AFDC(0xD000000000000019, 0x800000010075FB40, aBlock);
      *(v85 + 12) = 2112;
      *(v85 + 14) = v56;
      *(v85 + 22) = 2112;
      *(v85 + 24) = v55;
      *v87 = v56;
      v87[1] = v55;
      v89 = v56;
      v90 = v55;
      _os_log_impl(&_mh_execute_header, v84, v82, "%s behavior=%@ denied navigating to url with context=%@", v85, 0x20u);
      sub_100140278(&unk_1008DB8B0, &unk_1006DBD30);
      swift_arrayDestroy();

      sub_100005A40(v88);

      (*(v106 + 8))(v109, v123);
      (*v119)(v16, v86);
    }

    else
    {

      (*(v106 + 8))(v109, v123);
      (*v119)(v16, v13);
    }

    return;
  }

  swift_getKeyPath();
  Regex.Match.subscript.getter();

  v58 = aBlock[0];
  if (aBlock[0] < 0)
  {
LABEL_34:
    __break(1u);
    return;
  }

  v131 = v13;
  v59 = _swiftEmptyArrayStorage;
  v116 = v52;
  v92 = v51;
  if (aBlock[0])
  {
    v60 = 0;
    v61 = (v93 + 8);
    do
    {
      __chkstk_darwin(isUniquelyReferenced_nonNull_native);
      *(&v91 - 2) = v60;
      swift_getKeyPath();
      v63 = v107;
      Regex.Match.subscript.getter();

      AnyRegexOutput.Element.range.getter();
      v65 = v64;
      isUniquelyReferenced_nonNull_native = (*v61)(v63, v108);
      if ((v65 & 1) == 0)
      {
        String.subscript.getter();
        v66 = static String._fromSubstring(_:)();
        v68 = v67;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = sub_100042744(0, *(v59 + 2) + 1, 1, v59);
          v59 = isUniquelyReferenced_nonNull_native;
        }

        v70 = *(v59 + 2);
        v69 = *(v59 + 3);
        if (v70 >= v69 >> 1)
        {
          isUniquelyReferenced_nonNull_native = sub_100042744((v69 > 1), v70 + 1, 1, v59);
          v59 = isUniquelyReferenced_nonNull_native;
        }

        *(v59 + 2) = v70 + 1;
        v62 = &v59[16 * v70];
        *(v62 + 4) = v66;
        *(v62 + 5) = v68;
      }

      ++v60;
    }

    while (v58 != v60);
  }

  sub_1000078CC();
  v71 = static OS_dispatch_queue.main.getter();
  v72 = v96;
  v73 = v95;
  v74 = v97;
  (*(v96 + 16))(v95, v98, v97);
  v75 = (*(v72 + 80) + 40) & ~*(v72 + 80);
  v76 = swift_allocObject();
  v77 = v116;
  *(v76 + 2) = v92;
  *(v76 + 3) = v77;
  *(v76 + 4) = v59;
  (*(v72 + 32))(&v76[v75], v73, v74);
  aBlock[4] = sub_1004DB390;
  aBlock[5] = v76;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000449A8;
  aBlock[3] = &unk_10085D228;
  v78 = _Block_copy(aBlock);

  v79 = v99;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000261C4();
  sub_100140278(&unk_1008E7F50, &qword_1006D8190);
  sub_10002621C();
  v80 = v102;
  v81 = v104;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v78);

  (*(v103 + 8))(v80, v81);
  (*(v100 + 8))(v79, v101);
  (*(v106 + 8))(v109, v123);
  (*v119)(v113, v131);
}

id sub_1004DB27C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Navigator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1004DB320(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008DF158, &qword_1006D8EC8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004DB3FC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

unint64_t sub_1004DB474()
{
  result = qword_1008F0170;
  if (!qword_1008F0170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F0170);
  }

  return result;
}

unint64_t sub_1004DB4CC()
{
  result = qword_1008F0178;
  if (!qword_1008F0178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F0178);
  }

  return result;
}

uint64_t sub_1004DB524(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100202054;

  return sub_1004DB928(a1);
}

uint64_t sub_1004DB5CC(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100202050;

  return sub_1004DBABC();
}

unint64_t sub_1004DB674()
{
  result = qword_1008F0180;
  if (!qword_1008F0180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F0180);
  }

  return result;
}

unint64_t sub_1004DB6D0()
{
  result = qword_1008F0188;
  if (!qword_1008F0188)
  {
    sub_100141EEC(&qword_1008F0190, qword_1006F5288);
    sub_10036FD5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F0188);
  }

  return result;
}

uint64_t sub_1004DB754(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1004DB80C();
  *v5 = v2;
  v5[1] = sub_10002BACC;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_1004DB80C()
{
  result = qword_1008F0198;
  if (!qword_1008F0198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F0198);
  }

  return result;
}

uint64_t sub_1004DB860(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_10016200C;

  return sub_1004DBD18(a2, a3);
}

uint64_t sub_1004DB948()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = _swiftEmptyArrayStorage;
    v4 = (v1 + 32);
    do
    {
      v7 = *v4++;
      v6 = v7;
      if (v7 <= 8)
      {
        sub_100140278(&qword_1008DD148, &unk_1006D5CD0);
        type metadata accessor for AppDependencyManager();
        static AppDependencyManager.shared.getter();
        v8 = AppDependency.__allocating_init(key:manager:)();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = sub_1001A35D8(0, *(v3 + 2) + 1, 1, v3);
        }

        v10 = *(v3 + 2);
        v9 = *(v3 + 3);
        if (v10 >= v9 >> 1)
        {
          v3 = sub_1001A35D8((v9 > 1), v10 + 1, 1, v3);
        }

        *(v3 + 2) = v10 + 1;
        v5 = &v3[16 * v10];
        *(v5 + 4) = v8;
        v5[40] = v6;
      }

      --v2;
    }

    while (v2);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  v11 = *(v0 + 8);

  return v11(v3);
}

uint64_t sub_1004DBAD8()
{
  sub_100140278(&qword_1008DE608, &unk_1006D9010);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1006D4140;
  sub_100140278(&qword_1008DD148, &unk_1006D5CD0);
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  *(v1 + 32) = AppDependency.__allocating_init(key:manager:)();
  *(v1 + 40) = 1;
  static AppDependencyManager.shared.getter();
  *(v1 + 48) = AppDependency.__allocating_init(key:manager:)();
  *(v1 + 56) = 5;
  static AppDependencyManager.shared.getter();
  *(v1 + 64) = AppDependency.__allocating_init(key:manager:)();
  *(v1 + 72) = 0;
  static AppDependencyManager.shared.getter();
  *(v1 + 80) = AppDependency.__allocating_init(key:manager:)();
  *(v1 + 88) = 2;
  static AppDependencyManager.shared.getter();
  *(v1 + 96) = AppDependency.__allocating_init(key:manager:)();
  *(v1 + 104) = 6;
  static AppDependencyManager.shared.getter();
  *(v1 + 112) = AppDependency.__allocating_init(key:manager:)();
  *(v1 + 120) = 4;
  static AppDependencyManager.shared.getter();
  *(v1 + 128) = AppDependency.__allocating_init(key:manager:)();
  *(v1 + 136) = 3;
  static AppDependencyManager.shared.getter();
  *(v1 + 144) = AppDependency.__allocating_init(key:manager:)();
  *(v1 + 152) = 7;
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1004DBD18(uint64_t a1, uint64_t a2)
{
  v2[14] = a1;
  v2[15] = a2;
  v3 = swift_task_alloc();
  v2[16] = v3;
  *v3 = v2;
  v3[1] = sub_1004DBDE8;

  return sub_1004DBABC();
}

uint64_t sub_1004DBDE8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 136) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_1004DBF60, 0, 0);
  }
}

uint64_t sub_1004DBF60()
{
  v1 = v0[17];
  v2 = *(v1 + 16);
  v3 = &selRef_initWithLayer_;
  if (v2)
  {
    v4 = 0;
    v45 = -v2;
    v5 = v1 + 40;
    v6 = _swiftEmptyArrayStorage;
    do
    {
      v44 = v6;
      v7 = (v5 + 16 * v4++);
      while (1)
      {
        if ((v4 - 1) >= *(v1 + 16))
        {
          __break(1u);
LABEL_32:
          __break(1u);
        }

        v8 = *(v7 - 1);
        v9 = *v7;

        AppDependency.wrappedValue.getter();
        v10 = v0[10];
        v0[11] = 0;
        v11 = [v10 v3[33]];

        v12 = v0[11];
        if (v11)
        {
          v13 = v12;
          [v11 wheelchairUse];

          v14 = sub_10007C29C();
          v16 = v15;
        }

        else
        {
          v17 = v12;
          _convertNSErrorToError(_:)();

          swift_willThrow();
          v14 = sub_10007C29C();
          v16 = v18;
          v3 = &selRef_initWithLayer_;
        }

        v20 = v0[14];
        v19 = v0[15];
        v0[2] = v14;
        v0[3] = v16;
        v0[4] = v20;
        v0[5] = v19;
        sub_10000FCBC();
        v21 = StringProtocol.localizedCaseInsensitiveContains<A>(_:)();

        if (v21)
        {
          break;
        }

        ++v4;
        v7 += 16;
        if (v45 + v4 == 1)
        {
          v6 = v44;
          goto LABEL_18;
        }
      }

      v6 = v44;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100186448(0, v44[2] + 1, 1);
        v6 = v44;
      }

      v23 = v6[2];
      v22 = v6[3];
      if (v23 >= v22 >> 1)
      {
        sub_100186448((v22 > 1), v23 + 1, 1);
        v6 = v44;
      }

      v6[2] = v23 + 1;
      v24 = &v6[2 * v23];
      v24[4] = v8;
      *(v24 + 40) = v9;
      v5 = v1 + 40;
    }

    while (v45 + v4);
  }

  else
  {
    v6 = _swiftEmptyArrayStorage;
  }

LABEL_18:

  v46 = v6[2];
  if (v46)
  {
    v25 = 0;
    v26 = v6 + 5;
    while (1)
    {
      if (v25 >= v6[2])
      {
        goto LABEL_32;
      }

      v27 = v6;
      v28 = *(v26 - 1);
      v29 = *v26;

      AppDependency.wrappedValue.getter();
      v30 = v0[12];
      v0[13] = 0;
      v31 = [v30 v3[33]];

      v32 = v0[13];
      if (v31)
      {
        v33 = v32;
        [v31 wheelchairUse];

        v34 = sub_10007C29C();
        v36 = v35;
      }

      else
      {
        v37 = v32;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        v34 = sub_10007C29C();
        v36 = v38;
        v3 = &selRef_initWithLayer_;
      }

      v40 = v0[14];
      v39 = v0[15];
      v0[6] = v34;
      v0[7] = v36;
      v0[8] = v40;
      v0[9] = v39;
      sub_10000FCBC();
      v41 = StringProtocol.localizedCaseInsensitiveCompare<A>(_:)();

      if (!v41)
      {
        break;
      }

      ++v25;

      v26 += 16;
      v6 = v27;
      if (v46 == v25)
      {
        goto LABEL_28;
      }
    }

    sub_100140278(&qword_1008DE608, &unk_1006D9010);
    v6 = swift_allocObject();
    *(v6 + 1) = xmmword_1006D46C0;
    v6[4] = v28;
    *(v6 + 40) = v29;
  }

LABEL_28:
  v42 = v0[1];

  return v42(v6);
}

id sub_1004DC3AC(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 16))(a2, a1);

  return v2;
}

uint64_t sub_1004DC3EC(uint64_t a1, uint64_t (*a2)(id))
{
  v4 = type metadata accessor for WorkoutSummaryDataSourceBridge();
  v5 = objc_allocWithZone(v4);
  v6 = OBJC_IVAR___CHWorkoutSummaryDataSourceBridge_observers;
  *&v5[v6] = [objc_opt_self() weakObjectsHashTable];
  *&v5[OBJC_IVAR___CHWorkoutSummaryDataSourceBridge_bridgedValue] = a1;
  v10.receiver = v5;
  v10.super_class = v4;

  v7 = objc_msgSendSuper2(&v10, "init");
  sub_1004DCAAC();
  dispatch thunk of WorkoutSummaryDataSource.add(observer:)();
  v8 = a2(v7);

  return v8;
}

id sub_1004DC61C(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for WorkoutUIControllerFactory();
  return objc_msgSendSuper2(&v4, "dealloc");
}

id sub_1004DC674()
{
  v1 = (*(*(v0 + 16) + 16))();

  return v1;
}

uint64_t sub_1004DC6B0(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v43 = a7;
  v44 = a8;
  v42 = a5;
  v46 = a3;
  v47 = a2;
  v45 = a1;
  v9 = type metadata accessor for SnapshotClient();
  v40 = *(v9 - 8);
  v41 = v9;
  __chkstk_darwin(v9);
  v39 = v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v38 - v12;
  v14 = type metadata accessor for FitnessIntelligenceConnection();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for InferenceClient();
  v49 = *(v18 - 8);
  v50 = v18;
  __chkstk_darwin(v18);
  v48 = v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v20);
  v23 = v38 - v22;
  v24 = OBJC_IVAR___CHFitnessIntelligenceConnection_bridgedValue;
  v25 = *(v15 + 16);
  v25(v17, a4 + OBJC_IVAR___CHFitnessIntelligenceConnection_bridgedValue, v14, v21);
  InferenceClient.init(connection:)();
  (v25)(v17, a4 + v24, v14);
  v38[0] = v13;
  SnapshotClient.init(connection:)();
  v26 = objc_allocWithZone(type metadata accessor for SeymourSubscriptionProvider());

  v38[1] = SeymourSubscriptionProvider.init(dependencies:)();
  (v25)(v17, a4 + v24, v14);
  (*(v49 + 16))(v48, v23, v50);
  v27 = v40;
  v28 = v41;
  (*(v40 + 16))(v39, v13, v41);
  v29 = *(v42 + OBJC_IVAR___CHWorkoutVoiceAvailabilityProvider_bridgedValue);
  v30 = swift_allocObject();
  v31 = v44;
  *(v30 + 16) = v43;
  *(v30 + 24) = v31;
  type metadata accessor for WorkoutUIController();
  swift_allocObject();
  v32 = v29;

  v33 = v45;
  v34 = v46;
  v35 = v47;
  v36 = WorkoutUIController.init(rootViewController:unitManager:workoutController:fitnessIntelligenceConnection:inferenceClient:snapshotClient:seymourSubscriptionProvider:workoutVoiceAvailabilityProvider:summaryViewControllerCompletion:)();
  (*(v27 + 8))(v38[0], v28);
  (*(v49 + 8))(v23, v50);
  return v36;
}

unint64_t sub_1004DCAAC()
{
  result = qword_1008EE188;
  if (!qword_1008EE188)
  {
    type metadata accessor for WorkoutSummaryDataSourceBridge();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EE188);
  }

  return result;
}

void sub_1004DCB2C()
{
  LocalizedStringKey.init(stringLiteral:)();
  LOWORD(v8) = 256;
  v0 = Text.init(_:tableName:bundle:comment:)();
  v2 = v1;
  v4 = v3;
  v5 = [objc_opt_self() keyColors];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 nonGradientTextColor];

    if (v7)
    {
      Color.init(uiColor:)();
      Text.foregroundStyle<A>(_:)();
      sub_10004642C(v0, v2, v4 & 1);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1004DCD48()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  return Image.init(_internalSystemName:)();
}

void *sub_1004DCD7C()
{
  v0 = type metadata accessor for Tips.Action();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  Tips.Action.init(id:perform:_:)();
  sub_100140278(&qword_1008EBCE0, &qword_1006EDDC0);
  v4 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1006D46C0;
  (*(v1 + 32))(v5 + v4, v3, v0);
  v6 = sub_1003D9D48(v5);
  swift_setDeallocating();
  (*(v1 + 8))(v5 + v4, v0);
  swift_deallocClassInstance();
  return v6;
}

uint64_t sub_1004DCF28@<X0>(uint64_t *a2@<X8>)
{
  sub_1004DCFB8(&unk_1008EE7F0, &unk_1006F546C);
  result = Tip.id.getter();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1004DCFB8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CustomizeSummaryTip(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1004DCFFC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

void sub_1004DD284(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = static os_log_type_t.default.getter();
  v5 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, v4))
  {
    log = v5;
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 67109378;
    *(v6 + 4) = v3 & 1;
    *(v6 + 8) = 2112;
    if (a2)
    {
      swift_errorRetain();
      v8 = _swift_stdlib_bridgeErrorToNSError();
      v9 = v8;
    }

    else
    {
      v8 = 0;
      v9 = 0;
    }

    *(v6 + 10) = v8;
    *v7 = v9;
    _os_log_impl(&_mh_execute_header, log, v4, "Notification authorization granted: %{BOOL}d, error: %@", v6, 0x12u);
    sub_1001F3454(v7);
  }
}

id sub_1004DD4F8(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for NotificationConsentController();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_1004DD5BC(uint64_t a1)
{
  sub_1004DD940(319, &qword_1008F03A0, &type metadata accessor for TrainingLoadDataType, &type metadata accessor for Binding);
  if (v1 <= 0x3F)
  {
    sub_1004DD940(319, &qword_1008F03A8, type metadata accessor for LoadDetailViewControllerCoordinator, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_1004DD9A4(319);
      if (v3 <= 0x3F)
      {
        sub_1004F3F20(319, &qword_1008F03B0, &unk_1008E4010, &unk_1006DCBA0, &type metadata accessor for State);
        if (v4 <= 0x3F)
        {
          sub_1004F3F20(319, &qword_1008F03B8, &qword_1008F03C0, &qword_1006F5588, &type metadata accessor for State);
          if (v5 <= 0x3F)
          {
            sub_10014C794(319, &qword_1008DDD48, &type metadata for Bool);
            if (v6 <= 0x3F)
            {
              sub_1004DD940(319, &qword_1008F03C8, &type metadata accessor for DayIndex, &type metadata accessor for State);
              if (v7 <= 0x3F)
              {
                sub_1004F3F20(319, &qword_1008F03D0, &qword_1008F03D8, &qword_1006F5590, &type metadata accessor for State);
                if (v8 <= 0x3F)
                {
                  sub_10014C794(319, &qword_1008F03E0, &type metadata for DayRangeForStackedLoadCharts);
                  if (v9 <= 0x3F)
                  {
                    sub_1000059F8(319, &qword_1008F03E8, UISelectionFeedbackGenerator_ptr);
                    if (v10 <= 0x3F)
                    {
                      type metadata accessor for DayIndex();
                      if (v11 <= 0x3F)
                      {
                        sub_1004DD940(319, &qword_1008E0B78, type metadata accessor for BalanceDataProvider, &type metadata accessor for Environment);
                        if (v12 <= 0x3F)
                        {
                          sub_1004DD940(319, &qword_1008DDD50, &type metadata accessor for DismissAction, &type metadata accessor for Environment);
                          if (v13 <= 0x3F)
                          {
                            sub_1004DD940(319, &qword_1008F03F0, &type metadata accessor for LayoutDirection, &type metadata accessor for Environment);
                            if (v14 <= 0x3F)
                            {
                              swift_cvw_initStructMetadataWithLayoutString();
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
    }
  }
}

void sub_1004DD940(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1004DD9A4(uint64_t a1)
{
  if (!qword_1008E30A0)
  {
    sub_1000059F8(255, &qword_1008F24B0, FIUIFormattingManager_ptr);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1008E30A0);
    }
  }
}

void *sub_1004DDA28()
{
  v79 = type metadata accessor for Logger();
  v1 = *(v79 - 8);
  __chkstk_darwin(v79);
  v92 = v69 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for EnvironmentValues();
  v3 = *(v81 - 8);
  __chkstk_darwin(v81);
  v80 = v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100140278(&qword_1008F08C0, &qword_1006F5AC8);
  __chkstk_darwin(v5 - 8);
  v82 = v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v69 - v8;
  v10 = type metadata accessor for SleepingSampleViewModel();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v91 = v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v90 = v69 - v14;
  v99 = type metadata accessor for SleepingSampleDataType();
  v15 = *(v99 - 8);
  __chkstk_darwin(v99);
  v78 = v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v93 = v69 - v18;
  DetailsStackedChartView = type metadata accessor for LoadDetailsStackedChartView(0);
  v20 = (v0 + *(DetailsStackedChartView + 52));
  v22 = *v20;
  v21 = v20[1];
  v101 = v22;
  v102 = v21;
  sub_100140278(&qword_1008F0550, &qword_1006F5728);
  State.wrappedValue.getter();
  if (*(v100 + 16))
  {
    v24 = *(v100 + 16);
    v25 = v1;
    v26 = 0;
    v27 = v0 + *(DetailsStackedChartView + 68);
    v88 = *v27;
    v87 = *(v27 + 8);
    v29 = *(v15 + 16);
    v28 = v15 + 16;
    v96 = v29;
    v30 = (*(v28 + 64) + 32) & ~*(v28 + 64);
    v69[1] = v100;
    v31 = (v100 + v30);
    v86 = *(v28 + 56);
    v75 = (v3 + 8);
    v32 = (v11 + 48);
    v84 = (v11 + 56);
    v94 = (v28 - 8);
    v95 = (v11 + 32);
    v74 = (v25 + 8);
    v73 = (v11 + 16);
    v77 = v11;
    v72 = v11 + 8;
    *&v23 = 134217984;
    v70 = v23;
    v98 = _swiftEmptyArrayStorage;
    v33 = v82;
    v89 = v9;
    v34 = v93;
    v35 = v24;
    v85 = v32;
    v97 = v28;
    v76 = v10;
    v29(v93, (v100 + v30), v99);
    while (1)
    {
      if (v87)
      {
        v37 = v88;
      }

      else
      {
        v38 = v88;

        v39 = static os_log_type_t.fault.getter();
        v40 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)(v39, &_mh_execute_header, v40, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

        v41 = v80;
        EnvironmentValues.init()();
        swift_getAtKeyPath();
        v42 = sub_1000A73A4(v38, 0);
        (*v75)(v41, v81, v42);
        v37 = v101;
      }

      sub_1001D427C();
      v43 = dispatch thunk of SleepingSampleViewModelProvider.viewModels.getter();

      __chkstk_darwin(v44);
      v69[-2] = v34;
      sub_100415374(sub_1004F326C, v43, v33);

      v45 = v34;
      v46 = *v32;
      if ((*v32)(v33, 1, v10) == 1)
      {
        sub_10000EA04(v33, &qword_1008F08C0, &qword_1006F5AC8);
        static WOLog.trainingLoad.getter();
        v47 = v78;
        v48 = v99;
        v96(v78, v45, v99);
        v49 = Logger.logObject.getter();
        v50 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          v71 = v26;
          v52 = v35;
          v53 = v51;
          *v51 = v70;
          v54 = SleepingSampleDataType.rawValue.getter();
          (*v94)(v47, v48);
          *(v53 + 1) = v54;
          _os_log_impl(&_mh_execute_header, v49, v50, "Didn't find sleeping sample view model for data type: %ld", v53, 0xCu);
          v35 = v52;
          v26 = v71;
        }

        else
        {
          (*v94)(v47, v48);
        }

        v55 = v89;

        (*v74)(v92, v79);
        v56 = 1;
        v33 = v82;
        v10 = v76;
        v32 = v85;
      }

      else
      {
        v55 = v89;
        (*v95)(v89, v33, v10);
        v56 = 0;
      }

      (*v84)(v55, v56, 1, v10);

      if (v46(v55, 1, v10) == 1)
      {
        v34 = v93;
        v36 = v99;
        (*v94)(v93, v99);
        sub_10000EA04(v55, &qword_1008F08C0, &qword_1006F5AC8);
      }

      else
      {
        v57 = *v95;
        v58 = v90;
        (*v95)(v90, v55, v10);
        (*v73)(v91, v58, v10);
        v59 = v98;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v36 = v99;
        v83 = v35;
        v61 = v26;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v59 = sub_1001A3700(0, v59[2] + 1, 1, v59);
        }

        v63 = v59[2];
        v62 = v59[3];
        v64 = v77;
        if (v63 >= v62 >> 1)
        {
          v67 = sub_1001A3700((v62 > 1), v63 + 1, 1, v59);
          v64 = v77;
          v98 = v67;
        }

        else
        {
          v98 = v59;
        }

        v65 = v64;
        (*(v64 + 8))(v90, v10);
        v34 = v93;
        (*v94)(v93, v36);
        v66 = v98;
        v98[2] = v63 + 1;
        v57(&v66[((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v63], v91, v10);
        v26 = v61;
        v35 = v83;
        v32 = v85;
      }

      v31 += v86;
      if (!--v35)
      {
        break;
      }

      v96(v34, v31, v36);
    }

    return v98;
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }
}

uint64_t sub_1004DE358()
{
  v1 = type metadata accessor for WarmupProgress();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v35 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OvernightMetricsViewModel();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for EnvironmentValues();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100140278(&qword_1008F08B8, &qword_1006F5AC0);
  __chkstk_darwin(v12 - 8);
  v14 = &v33 - v13;
  v15 = v0 + *(type metadata accessor for LoadDetailsStackedChartView(0) + 68);
  v16 = *v15;
  if (*(v15 + 8) == 1)
  {
    v17 = v16;
  }

  else
  {

    v18 = static os_log_type_t.fault.getter();
    v33 = v8;
    v19 = v4;
    v20 = v1;
    v21 = v18;
    v22 = static Log.runtimeIssuesLog.getter();
    v34 = v5;
    v23 = v2;
    v24 = v22;
    v25 = v21;
    v1 = v20;
    v4 = v19;
    os_log(_:dso:log:_:_:)(v25, &_mh_execute_header, v24, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    v2 = v23;
    v5 = v34;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v26 = sub_1000A73A4(v16, 0);
    (*(v9 + 8))(v11, v33, v26);
    v17 = v36;
  }

  sub_1001D427C();

  dispatch thunk of SleepingSampleViewModelProvider.overnightMetricsModel.getter();

  OvernightMetricsViewModel.warmupProgress.getter();
  (*(v5 + 8))(v7, v4);
  v27 = type metadata accessor for OvernightMetricsWarmupProgress();
  v28 = *(v27 - 8);
  if ((*(v28 + 48))(v14, 1, v27) == 1)
  {
    sub_10000EA04(v14, &qword_1008F08B8, &qword_1006F5AC0);
    v29 = 0;
  }

  else
  {
    v30 = v35;
    OvernightMetricsWarmupProgress.overallProgress.getter();
    (*(v28 + 8))(v14, v27);
    v31 = WarmupProgress.isComplete.getter();
    (*(v2 + 8))(v30, v1);
    v29 = v31 ^ 1;
  }

  return v29 & 1;
}

uint64_t sub_1004DE740()
{
  v1 = sub_100140278(&qword_1008E04A8, &unk_1006EA860);
  __chkstk_darwin(v1);
  v3 = &v35 - v2;
  v4 = type metadata accessor for GregorianDayRange();
  v38 = *(v4 - 8);
  v39 = v4;
  __chkstk_darwin(v4);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for EnvironmentValues();
  v35 = *(v7 - 8);
  v36 = v7;
  __chkstk_darwin(v7);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DayIndex();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v37 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v35 - v14;
  DetailsStackedChartView = type metadata accessor for LoadDetailsStackedChartView(0);
  v17 = (v0 + *(DetailsStackedChartView + 56));
  v18 = *v17;
  v19 = *(v17 + 1);
  LOBYTE(v41) = v18;
  v42 = v19;
  sub_100140278(&qword_1008F0518, &unk_1006F56A0);
  State.wrappedValue.getter();
  v40 = v1;
  if (v43)
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v21 = 0;
    if ((v20 & 1) == 0)
    {
      return v21 & 1;
    }
  }

  else
  {
  }

  sub_100140278(&qword_1008F0328, qword_1006F5548);
  State.wrappedValue.getter();
  v22 = v0 + *(DetailsStackedChartView + 68);
  v23 = *v22;
  if (*(v22 + 8) == 1)
  {
    v24 = v23;
  }

  else
  {

    v25 = static os_log_type_t.fault.getter();
    v26 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v25, &_mh_execute_header, v26, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v27 = sub_1000A73A4(v23, 0);
    (*(v35 + 8))(v9, v36, v27);
    v24 = v41;
  }

  swift_getKeyPath();
  v41 = v24;
  sub_1004EFA78(&qword_1008DCD90, type metadata accessor for BalanceDataProvider, &unk_1006DBB08);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v28 = OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider__dayRange;
  swift_beginAccess();
  v30 = v38;
  v29 = v39;
  (*(v38 + 16))(v6, &v24[v28], v39);

  GregorianDayRange.dayIndexRange.getter();
  (*(v30 + 8))(v6, v29);
  v31 = v37;
  (*(v11 + 16))(v37, &v3[*(v40 + 36)], v10);
  sub_10000EA04(v3, &qword_1008E04A8, &unk_1006EA860);
  sub_1004EFA78(&qword_1008E04B0, &type metadata accessor for DayIndex, &protocol conformance descriptor for DayIndex);
  v32 = dispatch thunk of static Equatable.== infix(_:_:)();
  v33 = *(v11 + 8);
  v33(v31, v10);
  v33(v15, v10);
  v21 = v32 ^ 1;
  return v21 & 1;
}

uint64_t sub_1004DEC98()
{
  v29 = type metadata accessor for SleepingSampleViewModelProvider.DataFreshness();
  v1 = *(v29 - 8);
  __chkstk_darwin(v29);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v27 - v5;
  v7 = type metadata accessor for EnvironmentValues();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v0 + *(type metadata accessor for LoadDetailsStackedChartView(0) + 68);
  v12 = *v11;
  v13 = *(v11 + 8);
  v28 = v8;
  if (v13 == 1)
  {
    v14 = v12;
  }

  else
  {

    v15 = static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v15, &_mh_execute_header, v16, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v17 = sub_1000A73A4(v12, 0);
    (*(v8 + 8))(v10, v7, v17);
    v14 = v30;
  }

  sub_1001D467C();

  ViewModel = dispatch thunk of TrainingLoadViewModelProvider.isFetchingDataForNewDateRange.getter();

  if (ViewModel)
  {
    v19 = 1;
  }

  else
  {
    if (v13)
    {
      v20 = v12;
    }

    else
    {

      v21 = static os_log_type_t.fault.getter();
      v22 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)(v21, &_mh_execute_header, v22, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      v23 = sub_1000A73A4(v12, 0);
      (*(v28 + 8))(v10, v7, v23);
      v20 = v30;
    }

    sub_1001D427C();

    dispatch thunk of SleepingSampleViewModelProvider.dataFreshness.getter();

    v24 = v29;
    (*(v1 + 104))(v3, enum case for SleepingSampleViewModelProvider.DataFreshness.receivedFromPreviousDayRange(_:), v29);
    v19 = static SleepingSampleViewModelProvider.DataFreshness.== infix(_:_:)();
    v25 = *(v1 + 8);
    v25(v3, v24);
    v25(v6, v24);
  }

  return v19 & 1;
}

uint64_t sub_1004DEFF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v140 = a2;
  v141 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v139 = *(v141 - 8);
  __chkstk_darwin(v141);
  v138 = &v112 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = type metadata accessor for EnvironmentValues();
  v117 = *(v118 - 8);
  __chkstk_darwin(v118);
  v120 = &v112 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = type metadata accessor for DayIndex();
  v116 = *(v115 - 8);
  __chkstk_darwin(v115);
  v114 = &v112 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  DetailsStackedChartView = type metadata accessor for LoadDetailsStackedChartView(0);
  v6 = *(DetailsStackedChartView - 8);
  __chkstk_darwin(DetailsStackedChartView);
  v8 = v7;
  v9 = &v112 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = sub_100140278(&qword_1008F04A8, &qword_1006F5638);
  __chkstk_darwin(v147);
  v11 = &v112 - v10;
  v144 = sub_100140278(&qword_1008F0498, &qword_1006F5628);
  v119 = *(v144 - 1);
  __chkstk_darwin(v144);
  v142 = (&v112 - v12);
  v123 = sub_100140278(&qword_1008F0490, &qword_1006F5620);
  v121 = *(v123 - 8);
  __chkstk_darwin(v123);
  v145 = &v112 - v13;
  v126 = sub_100140278(&qword_1008F0488, &qword_1006F5618);
  v124 = *(v126 - 8);
  __chkstk_darwin(v126);
  v122 = &v112 - v14;
  v128 = sub_100140278(&qword_1008F0480, &qword_1006F5610);
  v127 = *(v128 - 8);
  __chkstk_darwin(v128);
  v125 = &v112 - v15;
  v132 = sub_100140278(&qword_1008F0470, &unk_1006F5600);
  v130 = *(v132 - 8);
  __chkstk_darwin(v132);
  v129 = &v112 - v16;
  v135 = sub_100140278(&qword_1008F0468, &qword_1006F55F8);
  v133 = *(v135 - 8);
  __chkstk_darwin(v135);
  v131 = &v112 - v17;
  v137 = sub_100140278(&qword_1008F0460, &qword_1006F55F0);
  v136 = *(v137 - 8);
  __chkstk_darwin(v137);
  v134 = &v112 - v18;
  *v11 = static HorizontalAlignment.leading.getter();
  *(v11 + 1) = 0;
  v11[16] = 0;
  v19 = sub_100140278(&qword_1008F0510, &unk_1006F5660);
  sub_1004E02E4(a1, &v11[*(v19 + 44)]);
  sub_1004F2EE8(a1, v9, type metadata accessor for LoadDetailsStackedChartView);
  v20 = *(v6 + 80);
  v21 = (v20 + 16) & ~v20;
  v22 = swift_allocObject();
  sub_1004F4200(v9, v22 + v21, type metadata accessor for LoadDetailsStackedChartView);
  v23 = *(sub_100140278(&qword_1008F04C0, &qword_1006F5640) + 36);
  v113 = v11;
  v24 = &v11[v23];
  *v24 = sub_1004EFAC0;
  v24[1] = v22;
  v24[2] = 0;
  v24[3] = 0;
  sub_1004F2EE8(a1, v9, type metadata accessor for LoadDetailsStackedChartView);
  v25 = v8;
  v26 = swift_allocObject();
  sub_1004F4200(v9, v26 + v21, type metadata accessor for LoadDetailsStackedChartView);
  v27 = DetailsStackedChartView;
  v28 = &v11[*(v147 + 9)];
  *v28 = 0;
  *(v28 + 1) = 0;
  *(v28 + 2) = sub_1004EFAEC;
  *(v28 + 3) = v26;
  sub_100140278(&qword_1008F0328, qword_1006F5548);
  v29 = v114;
  State.wrappedValue.getter();
  sub_1004F2EE8(a1, v9, type metadata accessor for LoadDetailsStackedChartView);
  v149 = v20;
  v150 = v25;
  v30 = swift_allocObject();
  v143 = v21;
  v146 = v9;
  sub_1004F4200(v9, v30 + v21, type metadata accessor for LoadDetailsStackedChartView);
  v31 = sub_1004EF710();
  v32 = sub_1004EFA78(&qword_1008E04B0, &type metadata accessor for DayIndex, &protocol conformance descriptor for DayIndex);
  v33 = v115;
  v34 = v113;
  View.onChange<A>(of:initial:_:)();

  v35 = v33;
  (*(v116 + 8))(v29, v33);
  sub_10000EA04(v34, &qword_1008F04A8, &qword_1006F5638);
  v36 = *(v27 + 68);
  v151 = a1;
  v37 = a1 + v36;
  v38 = *v37;
  v39 = *(v37 + 8);
  if (v39 == 1)
  {
    v40 = v38;
    v41 = v117;
  }

  else
  {

    v42 = static os_log_type_t.fault.getter();
    v43 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v42, &_mh_execute_header, v43, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    v44 = v120;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v45 = sub_1000A73A4(v38, 0);
    v41 = v117;
    (*(v117 + 8))(v44, v118, v45);
    v40 = v154;
  }

  swift_getKeyPath();
  v154 = v40;
  sub_1004EFA78(&qword_1008DCD90, type metadata accessor for BalanceDataProvider, &unk_1006DBB08);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v46 = OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider__workoutsWithEffortQuantities;
  swift_beginAccess();
  v47 = *&v40[v46];

  v152 = v47;
  v48 = v146;
  sub_1004F2EE8(v151, v146, type metadata accessor for LoadDetailsStackedChartView);
  v49 = v143;
  v50 = swift_allocObject();
  sub_1004F4200(v48, v50 + v49, type metadata accessor for LoadDetailsStackedChartView);
  v51 = sub_100140278(&qword_1008F04A0, &qword_1006F5630);
  v154 = v147;
  v155 = v35;
  v52 = v51;
  v156 = v31;
  v157 = v32;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v54 = sub_1004EF854();
  v55 = v144;
  v56 = v142;
  View.onChange<A>(of:initial:_:)();

  (*(v119 + 8))(v56, v55);
  if (v39)
  {
    v57 = v38;
  }

  else
  {

    v58 = static os_log_type_t.fault.getter();
    v59 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v58, &_mh_execute_header, v59, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    v60 = v120;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v61 = sub_1000A73A4(v38, 0);
    (*(v41 + 8))(v60, v118, v61);
    v57 = v154;
  }

  v62 = sub_1001D3C20();

  v152 = v62;
  v147 = type metadata accessor for LoadDetailsStackedChartView;
  v63 = v146;
  sub_1004F2EE8(v151, v146, type metadata accessor for LoadDetailsStackedChartView);
  v64 = v143;
  v65 = swift_allocObject();
  v142 = type metadata accessor for LoadDetailsStackedChartView;
  sub_1004F4200(v63, v65 + v64, type metadata accessor for LoadDetailsStackedChartView);
  v66 = sub_100140278(&qword_1008F03D8, &qword_1006F5590);
  v154 = v144;
  v155 = v52;
  v156 = OpaqueTypeConformance2;
  v157 = v54;
  v144 = &opaque type descriptor for <<opaque return type of View.onChange<A>(of:initial:_:)>>;
  v67 = swift_getOpaqueTypeConformance2();
  v68 = sub_1004EF9C4();
  v69 = v122;
  v70 = v123;
  v71 = v145;
  View.onChange<A>(of:initial:_:)();

  (*(v121 + 8))(v71, v70);
  v72 = v151;
  v73 = (v151 + *(DetailsStackedChartView + 56));
  v74 = *v73;
  v75 = *(v73 + 1);
  LOBYTE(v154) = v74;
  v155 = v75;
  sub_100140278(&qword_1008F0518, &unk_1006F56A0);
  State.wrappedValue.getter();
  sub_1004F2EE8(v72, v63, v147);
  v76 = swift_allocObject();
  sub_1004F4200(v63, v76 + v64, v142);
  v154 = v70;
  v155 = v66;
  v156 = v67;
  v157 = v68;
  v77 = swift_getOpaqueTypeConformance2();
  v78 = sub_10034D2BC();
  v79 = v125;
  v80 = v126;
  View.onChange<A>(of:initial:_:)();

  (*(v124 + 8))(v69, v80);
  v81 = v151;
  v82 = (v151 + *(DetailsStackedChartView + 48));
  v83 = *v82;
  v84 = *(v82 + 1);
  LOBYTE(v154) = v83;
  v155 = v84;
  sub_100140278(&qword_1008DDBB8, &qword_1006D6FD0);
  State.wrappedValue.getter();
  sub_1004F2EE8(v81, v63, v147);
  v85 = swift_allocObject();
  sub_1004F4200(v63, v85 + v64, v142);
  v154 = v80;
  v155 = &type metadata for DayRangeForStackedLoadCharts;
  v156 = v77;
  v157 = v78;
  v86 = swift_getOpaqueTypeConformance2();
  v87 = v129;
  v88 = v128;
  View.onChange<A>(of:initial:_:)();

  v89 = (*(v127 + 8))(v79, v88);
  v150 = &v112;
  __chkstk_darwin(v89);
  *(&v112 - 2) = v81;
  v90 = sub_100140278(&qword_1008F0478, &unk_1006FE8A0);
  v154 = v88;
  v155 = &type metadata for Bool;
  v156 = v86;
  v157 = &protocol witness table for Bool;
  v91 = swift_getOpaqueTypeConformance2();
  v92 = sub_100141EEC(&qword_1008F0500, &qword_1006F5658);
  v93 = sub_10014A6B0(&qword_1008F0508, &qword_1008F0500, &qword_1006F5658, &protocol conformance descriptor for ToolbarItem<A, B>);
  v154 = v92;
  v155 = v93;
  v94 = swift_getOpaqueTypeConformance2();
  v95 = v131;
  v96 = v132;
  View.toolbar<A>(content:)();
  (*(v130 + 8))(v87, v96);
  v97 = [objc_opt_self() mainBundle];
  v98 = String._bridgeToObjectiveC()();
  v99 = [v97 localizedStringForKey:v98 value:0 table:0];

  v100 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v102 = v101;

  v152 = v100;
  v153 = v102;
  v154 = v96;
  v155 = v90;
  v156 = v91;
  v157 = v94;
  v103 = swift_getOpaqueTypeConformance2();
  v104 = sub_10000FCBC();
  v105 = v134;
  v106 = v135;
  View.navigationTitle<A>(_:)();

  (*(v133 + 8))(v95, v106);
  v107 = v139;
  v108 = v138;
  v109 = v141;
  (*(v139 + 104))(v138, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v141);
  v154 = v106;
  v155 = &type metadata for String;
  v156 = v103;
  v157 = v104;
  swift_getOpaqueTypeConformance2();
  v110 = v137;
  View.navigationBarTitleDisplayMode(_:)();
  (*(v107 + 8))(v108, v109);
  return (*(v136 + 8))(v105, v110);
}

uint64_t sub_1004E02E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v136 = a2;
  v137 = a1;
  v130 = sub_100140278(&qword_1008F0568, &qword_1006F5798);
  __chkstk_darwin(v130);
  v133 = (&v110 - v3);
  v134 = sub_100140278(&qword_1008F0570, &qword_1006F57A0);
  v112 = *(v134 - 8);
  __chkstk_darwin(v134);
  v111 = &v110 - v4;
  v128 = type metadata accessor for OvernightMetricsViewModel();
  v127 = *(v128 - 8);
  __chkstk_darwin(v128);
  v126 = &v110 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = type metadata accessor for EnvironmentValues();
  v114 = *(v115 - 8);
  __chkstk_darwin(v115);
  v113 = &v110 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100140278(&qword_1008F0578, &qword_1006F57A8);
  __chkstk_darwin(v7 - 8);
  v135 = &v110 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v132 = &v110 - v10;
  v125 = type metadata accessor for Divider();
  v124 = *(v125 - 8);
  __chkstk_darwin(v125);
  v123 = &v110 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v138 = &v110 - v13;
  v14 = sub_100140278(&qword_1008F0580, &qword_1006F57B0);
  __chkstk_darwin(v14 - 8);
  v131 = &v110 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v142 = (&v110 - v17);
  v141 = (sub_100140278(&qword_1008F0588, &qword_1006F57B8) - 8);
  __chkstk_darwin(v141);
  v129 = &v110 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v110 - v20;
  v121 = type metadata accessor for SegmentedPickerStyle();
  v139 = *(v121 - 8);
  __chkstk_darwin(v121);
  v23 = &v110 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_100140278(&qword_1008F0590, &qword_1006F57C0);
  v120 = *(v119 - 8);
  __chkstk_darwin(v119);
  v25 = &v110 - v24;
  v26 = sub_100140278(&qword_1008F0598, &qword_1006F57C8);
  v27 = v26 - 8;
  __chkstk_darwin(v26);
  v140 = &v110 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v31 = (&v110 - v30);
  v118 = LocalizedStringKey.init(stringLiteral:)();
  v117 = v32;
  v116 = v33;
  DetailsStackedChartView = type metadata accessor for LoadDetailsStackedChartView(0);
  v34 = (a1 + *(DetailsStackedChartView + 56));
  v35 = *v34;
  v36 = *(v34 + 1);
  LOBYTE(v145) = v35;
  v146 = v36;
  sub_100140278(&qword_1008F0518, &unk_1006F56A0);
  State.projectedValue.getter();
  sub_100140278(&qword_1008F05A0, &qword_1006F57D0);
  sub_10034C648();
  sub_10014A6B0(&qword_1008F05A8, &qword_1008F05A0, &qword_1006F57D0, &protocol conformance descriptor for TupleView<A>);
  Picker<>.init(_:selection:content:)();
  SegmentedPickerStyle.init()();
  sub_10014A6B0(&qword_1008F05B0, &qword_1008F0590, &qword_1006F57C0, &protocol conformance descriptor for Picker<A, B, C>);
  v37 = v119;
  v38 = v121;
  View.pickerStyle<A>(_:)();
  v139[1](v23, v38);
  (*(v120 + 8))(v25, v37);
  LOBYTE(v38) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v47 = v31 + *(sub_100140278(&qword_1008F05B8, &qword_1006F57D8) + 36);
  *v47 = v38;
  *(v47 + 1) = v40;
  *(v47 + 2) = v42;
  *(v47 + 3) = v44;
  *(v47 + 4) = v46;
  v47[40] = 0;
  LOBYTE(v38) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v56 = v31 + *(sub_100140278(&qword_1008F05C0, &qword_1006F57E0) + 36);
  *v56 = v38;
  *(v56 + 1) = v49;
  *(v56 + 2) = v51;
  *(v56 + 3) = v53;
  *(v56 + 4) = v55;
  v56[40] = 0;
  v57 = static Edge.Set.bottom.getter();
  v58 = *(v27 + 44);
  v139 = v31;
  v59 = v31 + v58;
  *v59 = v57;
  *(v59 + 8) = 0u;
  *(v59 + 24) = 0u;
  v59[40] = 1;
  *v21 = static HorizontalAlignment.leading.getter();
  *(v21 + 1) = 0x4028000000000000;
  v21[16] = 0;
  v60 = sub_100140278(&qword_1008F05C8, &qword_1006F57E8);
  sub_1004E1724(v137, &v21[*(v60 + 44)]);
  LOBYTE(v38) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v61 = *(v141 + 11);
  v141 = v21;
  v62 = &v21[v61];
  *v62 = v38;
  *(v62 + 1) = v63;
  *(v62 + 2) = v64;
  *(v62 + 3) = v65;
  *(v62 + 4) = v66;
  v62[40] = 0;
  v67 = static HorizontalAlignment.center.getter();
  v68 = v142;
  *v142 = v67;
  v68[1] = 0;
  *(v68 + 16) = 0;
  v69 = v68 + *(sub_100140278(&qword_1008F05D0, &qword_1006F57F0) + 44);
  v70 = v138;
  Divider.init()();
  v71 = static Color.black.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v121 = v147;
  LOBYTE(v37) = v148;
  v120 = v149;
  LOBYTE(v31) = v150;
  v72 = v152;
  v119 = v151;
  v73 = v124;
  v74 = *(v124 + 16);
  v75 = v123;
  v76 = v70;
  v77 = v125;
  v74(v123, v76, v125);
  v144 = v37;
  v143 = v31;
  v78 = v75;
  v74(v69, v75, v77);
  v79 = &v69[*(sub_100140278(&qword_1008F05D8, &qword_1006F57F8) + 48)];
  v80 = v144;
  v81 = v143;
  v82 = v121;
  *v79 = v71;
  *(v79 + 1) = v82;
  v79[16] = v80;
  *(v79 + 3) = v120;
  v83 = v137;
  v79[32] = v81;
  *(v79 + 5) = v119;
  *(v79 + 6) = v72;
  v84 = *(v73 + 8);

  v84(v138, v77);

  v84(v78, v77);
  v85 = v83 + *(DetailsStackedChartView + 68);
  v86 = *v85;
  if (*(v85 + 8) == 1)
  {
    v87 = v86;
  }

  else
  {

    v88 = static os_log_type_t.fault.getter();
    v89 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v88, &_mh_execute_header, v89, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    v90 = v113;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v91 = sub_1000A73A4(v86, 0);
    (*(v114 + 8))(v90, v115, v91);
    v87 = v145;
  }

  v92 = v126;
  dispatch thunk of SleepingSampleViewModelProvider.overnightMetricsModel.getter();
  v93 = OvernightMetricsViewModel.isWatchExperienceAvailable.getter();

  v94 = (*(v127 + 8))(v92, v128);
  v95 = v132;
  if (v93 == 2 || (v93 & 1) == 0)
  {
    v99 = v133;
    *v133 = 0;
    *(v99 + 8) = 1;
    swift_storeEnumTagMultiPayload();
    sub_10014A6B0(&qword_1008F05E0, &qword_1008F0570, &qword_1006F57A0, &protocol conformance descriptor for ScrollView<A>);
    _ConditionalContent<>.init(storage:)();
  }

  else
  {
    __chkstk_darwin(v94);
    static Axis.Set.vertical.getter();
    sub_100140278(&qword_1008F05F0, &qword_1006F5808);
    sub_1004F299C();
    v96 = v111;
    ScrollView.init(_:showsIndicators:content:)();
    v97 = v112;
    v98 = v134;
    (*(v112 + 16))(v133, v96, v134);
    swift_storeEnumTagMultiPayload();
    sub_10014A6B0(&qword_1008F05E0, &qword_1008F0570, &qword_1006F57A0, &protocol conformance descriptor for ScrollView<A>);
    _ConditionalContent<>.init(storage:)();
    (*(v97 + 8))(v96, v98);
  }

  v100 = v140;
  sub_10001B104(v139, v140, &qword_1008F0598, &qword_1006F57C8);
  v101 = v129;
  sub_10001B104(v141, v129, &qword_1008F0588, &qword_1006F57B8);
  v102 = v142;
  v103 = v131;
  sub_10001B104(v142, v131, &qword_1008F0580, &qword_1006F57B0);
  v104 = v135;
  sub_10001B104(v95, v135, &qword_1008F0578, &qword_1006F57A8);
  v105 = v100;
  v106 = v95;
  v107 = v136;
  sub_10001B104(v105, v136, &qword_1008F0598, &qword_1006F57C8);
  v108 = sub_100140278(&qword_1008F05E8, &qword_1006F5800);
  sub_10001B104(v101, v107 + v108[12], &qword_1008F0588, &qword_1006F57B8);
  sub_10001B104(v103, v107 + v108[16], &qword_1008F0580, &qword_1006F57B0);
  sub_10001B104(v104, v107 + v108[20], &qword_1008F0578, &qword_1006F57A8);
  sub_10000EA04(v106, &qword_1008F0578, &qword_1006F57A8);
  sub_10000EA04(v102, &qword_1008F0580, &qword_1006F57B0);
  sub_10000EA04(v141, &qword_1008F0588, &qword_1006F57B8);
  sub_10000EA04(v139, &qword_1008F0598, &qword_1006F57C8);
  sub_10000EA04(v104, &qword_1008F0578, &qword_1006F57A8);
  sub_10000EA04(v103, &qword_1008F0580, &qword_1006F57B0);
  sub_10000EA04(v101, &qword_1008F0588, &qword_1006F57B8);
  return sub_10000EA04(v140, &qword_1008F0598, &qword_1006F57C8);
}

uint64_t sub_1004E1230@<X0>(char *a1@<X8>)
{
  v62 = a1;
  v1 = sub_100140278(&qword_1008F0A48, &qword_1006F5C98);
  v59 = *(v1 - 8);
  __chkstk_darwin(v1);
  v61 = &v56 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v60 = &v56 - v4;
  __chkstk_darwin(v5);
  v63 = &v56 - v6;
  __chkstk_darwin(v7);
  v58 = (&v56 - v8);
  __chkstk_darwin(v9);
  v11 = &v56 - v10;
  __chkstk_darwin(v12);
  v14 = &v56 - v13;
  v15 = objc_opt_self();
  v16 = [v15 mainBundle];
  v17 = String._bridgeToObjectiveC()();
  v18 = [v16 localizedStringForKey:v17 value:0 table:0];

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  v64 = v19;
  v65 = v21;
  sub_10000FCBC();
  *v14 = Text.init<A>(_:)();
  *(v14 + 1) = v22;
  v14[16] = v23 & 1;
  *(v14 + 3) = v24;
  *(v14 + 16) = 256;
  v56 = v14;
  v25 = [v15 mainBundle];
  v26 = String._bridgeToObjectiveC()();
  v27 = [v25 localizedStringForKey:v26 value:0 table:0];

  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;

  v64 = v28;
  v65 = v30;
  v31 = Text.init<A>(_:)();
  v57 = v11;
  *v11 = v31;
  *(v11 + 1) = v32;
  v11[16] = v33 & 1;
  *(v11 + 3) = v34;
  *(v11 + 16) = 257;
  v35 = [v15 mainBundle];
  v36 = String._bridgeToObjectiveC()();
  v37 = [v35 localizedStringForKey:v36 value:0 table:0];

  v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v40 = v39;

  v64 = v38;
  v65 = v40;
  v41 = Text.init<A>(_:)();
  v43 = v58;
  v42 = v59;
  *v58 = v41;
  v43[1] = v44;
  *(v43 + 16) = v45 & 1;
  v43[3] = v46;
  *(v43 + 16) = 258;
  v47 = *(v42 + 16);
  v48 = v63;
  v47(v63, v14, v1);
  v49 = v60;
  v50 = v57;
  v47(v60, v57, v1);
  v51 = v61;
  v47(v61, v43, v1);
  v52 = v62;
  v47(v62, v48, v1);
  v53 = sub_100140278(&qword_1008F0A50, &qword_1006F5CA0);
  v47(&v52[*(v53 + 48)], v49, v1);
  v47(&v52[*(v53 + 64)], v51, v1);
  v54 = *(v42 + 8);
  v54(v43, v1);
  v54(v50, v1);
  v54(v56, v1);
  v54(v51, v1);
  v54(v49, v1);
  return (v54)(v63, v1);
}

uint64_t sub_1004E1724@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100140278(&qword_1008F08C8, &qword_1006F5AD0);
  __chkstk_darwin(v4 - 8);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v30 - v8;
  v10 = sub_100140278(&qword_1008F08D0, &qword_1006F5AD8);
  __chkstk_darwin(v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = (&v30 - v14);
  if (qword_1008DA608 != -1)
  {
    swift_once();
  }

  *v15 = xmmword_100925200;
  v16 = sub_100140278(&qword_1008F08D8, &qword_1006F5AE0);
  sub_1004E1A1C(a1, v15 + *(v16 + 44));
  v17 = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = v15 + *(sub_100140278(&qword_1008F08E0, &qword_1006F5AE8) + 36);
  *v26 = v17;
  *(v26 + 1) = v19;
  *(v26 + 2) = v21;
  *(v26 + 3) = v23;
  *(v26 + 4) = v25;
  v26[40] = 0;
  *(v15 + *(v10 + 36)) = 0x3FF0000000000000;
  *v9 = static VerticalAlignment.center.getter();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v27 = sub_100140278(&qword_1008F08E8, &qword_1006F5AF0);
  sub_1004E4188(a1, &v9[*(v27 + 44)]);
  sub_10001B104(v15, v12, &qword_1008F08D0, &qword_1006F5AD8);
  sub_10001B104(v9, v6, &qword_1008F08C8, &qword_1006F5AD0);
  sub_10001B104(v12, a2, &qword_1008F08D0, &qword_1006F5AD8);
  v28 = sub_100140278(&qword_1008F08F0, &qword_1006F5AF8);
  sub_10001B104(v6, a2 + *(v28 + 48), &qword_1008F08C8, &qword_1006F5AD0);
  sub_10000EA04(v9, &qword_1008F08C8, &qword_1006F5AD0);
  sub_10000EA04(v15, &qword_1008F08D0, &qword_1006F5AD8);
  sub_10000EA04(v6, &qword_1008F08C8, &qword_1006F5AD0);
  return sub_10000EA04(v12, &qword_1008F08D0, &qword_1006F5AD8);
}

uint64_t sub_1004E1A1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v185 = a2;
  v160 = type metadata accessor for DayIndex();
  v159 = *(v160 - 8);
  __chkstk_darwin(v160);
  v158 = &v157 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = sub_100140278(&qword_1008F09D8, &qword_1006F5C40);
  v182 = *(v183 - 8);
  __chkstk_darwin(v183);
  v157 = &v157 - v5;
  v6 = sub_100140278(&qword_1008F09E0, &qword_1006F5C48);
  __chkstk_darwin(v6 - 8);
  v184 = &v157 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v187 = &v157 - v9;
  v179 = sub_100140278(&qword_1008F09E8, &qword_1006F5C50);
  __chkstk_darwin(v179);
  v166 = &v157 - v10;
  DataType = type metadata accessor for TrainingLoadDataType();
  v170 = *(DataType - 8);
  __chkstk_darwin(DataType);
  v169 = &v157 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  ViewModel = type metadata accessor for TrainingLoadViewModel();
  v162 = *(ViewModel - 8);
  __chkstk_darwin(ViewModel);
  v13 = &v157 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = sub_100140278(&qword_1008F09F0, &qword_1006F5C58);
  v165 = *(v178 - 8);
  __chkstk_darwin(v178);
  v164 = &v157 - v14;
  v176 = sub_100140278(&qword_1008F09F8, &unk_1006F5C60);
  __chkstk_darwin(v176);
  v177 = &v157 - v15;
  v16 = sub_100140278(&qword_1008F0A00, &qword_1006F9700);
  __chkstk_darwin(v16 - 8);
  v18 = &v157 - v17;
  v189 = type metadata accessor for GregorianDayRange();
  v188 = *(v189 - 8);
  __chkstk_darwin(v189);
  v20 = &v157 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v157 - v22;
  v174 = type metadata accessor for EnvironmentValues();
  v173 = *(v174 - 8);
  __chkstk_darwin(v174);
  v172 = &v157 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for TrainingLoadChart.Configuration();
  __chkstk_darwin(v25 - 8);
  v27 = &v157 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v161 = &v157 - v29;
  v175 = sub_100140278(&qword_1008F0A08, &qword_1006F5C70);
  __chkstk_darwin(v175);
  v31 = &v157 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v34 = &v157 - v33;
  v35 = sub_100140278(&qword_1008F0A10, &qword_1006F5C78);
  __chkstk_darwin(v35 - 8);
  v180 = &v157 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v186 = &v157 - v38;
  v39 = sub_1004DEC98();
  DetailsStackedChartView = type metadata accessor for LoadDetailsStackedChartView(0);
  v40 = *(DetailsStackedChartView + 68);
  v181 = a1;
  v41 = a1 + v40;
  v42 = *v41;
  v43 = *(v41 + 8);
  v191 = v42;
  v168 = v43;
  if (v39)
  {
    if (v43)
    {
      v44 = v42;
      v45 = v44;
    }

    else
    {

      v47 = static os_log_type_t.fault.getter();
      v48 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)(v47, &_mh_execute_header, v48, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

      v167 = v18;
      v49 = v42;
      v50 = v172;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      v51 = sub_1000A73A4(v49, 0);
      v52 = *(v173 + 8);
      v53 = v174;
      v52(v50, v174, v51);
      v45 = v197;

      v54 = static os_log_type_t.fault.getter();
      v55 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)(v54, &_mh_execute_header, v55, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      v56 = v49;
      v18 = v167;
      v57 = sub_1000A73A4(v56, 0);
      v52(v50, v53, v57);
      v44 = v197;
    }

    v58 = DetailsStackedChartView;
    swift_getKeyPath();
    *&v197 = v44;
    sub_1004EFA78(&qword_1008DCD90, type metadata accessor for BalanceDataProvider, &unk_1006DBB08);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v59 = OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider__dayRange;
    swift_beginAccess();
    v60 = v188;
    v61 = v189;
    (*(v188 + 16))(v23, &v44[v59], v189);

    sub_1001DB2C4(v23, v161);
    (*(v60 + 8))(v23, v61);
    v62 = v58;
    sub_100140278(&qword_1008F0328, qword_1006F5548);
    v63 = v181;
    State.projectedValue.getter();
    v64 = sub_100140278(&qword_1008F0A18, &qword_1006F5C80);
    (*(*(v64 - 8) + 56))(v18, 0, 1, v64);
    LOBYTE(v194) = 0;
    static Binding.constant(_:)();
    TrainingLoadChart.init(configuration:selectedDay:inSelectionMode:)();
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v65 = v175;
    v66 = &v34[*(v175 + 36)];
    v67 = v195;
    *v66 = v194;
    *(v66 + 1) = v67;
    *(v66 + 2) = v196;
    sub_10001B104(v34, v177, &qword_1008F0A08, &qword_1006F5C70);
    swift_storeEnumTagMultiPayload();
    v68 = sub_1004F3684();
    v69 = sub_1004F3740();
    *&v197 = v65;
    *(&v197 + 1) = v179;
    *&v198 = v68;
    *(&v198 + 1) = v69;
    swift_getOpaqueTypeConformance2();
    v70 = v186;
    _ConditionalContent<>.init(storage:)();
    sub_10000EA04(v34, &qword_1008F0A08, &qword_1006F5C70);
    v71 = v62;
  }

  else
  {
    v167 = v18;
    if (v43)
    {
      v46 = v42;
      v161 = v46;
    }

    else
    {

      v72 = static os_log_type_t.fault.getter();
      v73 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)(v72, &_mh_execute_header, v73, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

      v74 = v172;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      v75 = sub_1000A73A4(v191, 0);
      v76 = *(v173 + 8);
      v77 = v174;
      v76(v74, v174, v75);
      v161 = v197;

      v78 = static os_log_type_t.fault.getter();
      v79 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)(v78, &_mh_execute_header, v79, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      v80 = sub_1000A73A4(v191, 0);
      v81 = v74;
      v42 = v191;
      v76(v81, v77, v80);
      v46 = v197;
    }

    v82 = DetailsStackedChartView;
    swift_getKeyPath();
    *&v197 = v46;
    sub_1004EFA78(&qword_1008DCD90, type metadata accessor for BalanceDataProvider, &unk_1006DBB08);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v83 = OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider__dayRange;
    swift_beginAccess();
    (*(v188 + 16))(v20, &v46[v83], v189);

    if (v168)
    {
      v84 = v42;
    }

    else
    {

      v85 = static os_log_type_t.fault.getter();
      v86 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)(v85, &_mh_execute_header, v86, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

      v87 = v172;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      v88 = sub_1000A73A4(v42, 0);
      (*(v173 + 8))(v87, v174, v88);
      v84 = v197;
    }

    sub_1001D467C();

    sub_100140278(&qword_1008F0320, &qword_1006F5540);
    v89 = v169;
    v90 = v181;
    Binding.wrappedValue.getter();
    dispatch thunk of TrainingLoadViewModelProvider.viewModel(for:)();

    (*(v170 + 8))(v89, DataType);
    v91 = v161;
    sub_1001DAAE8(v20, v13, v27);

    (*(v162 + 8))(v13, ViewModel);
    (*(v188 + 8))(v20, v189);
    sub_100140278(&qword_1008F0328, qword_1006F5548);
    v92 = v167;
    State.projectedValue.getter();
    v93 = sub_100140278(&qword_1008F0A18, &qword_1006F5C80);
    v94 = 1;
    (*(*(v93 - 8) + 56))(v92, 0, 1, v93);
    v95 = v90 + *(v82 + 48);
    v96 = *v95;
    v97 = *(v95 + 8);
    LOBYTE(v194) = v96;
    *(&v194 + 1) = v97;
    sub_100140278(&qword_1008DDBB8, &qword_1006D6FD0);
    State.projectedValue.getter();
    v63 = v90;
    TrainingLoadChart.init(configuration:selectedDay:inSelectionMode:)();
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v98 = v175;
    v99 = &v31[*(v175 + 36)];
    v100 = v195;
    *v99 = v194;
    *(v99 + 1) = v100;
    *(v99 + 2) = v196;
    v101 = sub_1004DEC98();
    v102 = v166;
    if ((v101 & 1) == 0)
    {
      sub_1004E317C(v166);
      v94 = 0;
    }

    v103 = sub_100140278(&qword_1008F0780, &qword_1006F5998);
    (*(*(v103 - 8) + 56))(v102, v94, 1, v103);
    static GestureMask.all.getter();
    v104 = sub_1004F3684();
    v105 = sub_1004F3740();
    v106 = v164;
    v107 = v179;
    View.gesture<A>(_:including:)();
    sub_10000EA04(v102, &qword_1008F09E8, &qword_1006F5C50);
    sub_10000EA04(v31, &qword_1008F0A08, &qword_1006F5C70);
    v108 = v165;
    v109 = v178;
    (*(v165 + 16))(v177, v106, v178);
    swift_storeEnumTagMultiPayload();
    *&v197 = v98;
    *(&v197 + 1) = v107;
    *&v198 = v104;
    *(&v198 + 1) = v105;
    swift_getOpaqueTypeConformance2();
    v70 = v186;
    _ConditionalContent<>.init(storage:)();
    (*(v108 + 8))(v106, v109);
    v71 = DetailsStackedChartView;
  }

  type metadata accessor for LoadDetailsStackedChartView(0);
  v110 = *(v63 + v71[6]);
  if (!v110)
  {
    goto LABEL_19;
  }

  v111 = v71;
  v112 = v63 + v71[12];
  v113 = *v112;
  v114 = *(v112 + 8);
  LOBYTE(v197) = *v112;
  *(&v197 + 1) = v114;
  v115 = v110;
  sub_100140278(&qword_1008DDBB8, &qword_1006D6FD0);
  State.wrappedValue.getter();
  if (v192 != 1 || (sub_1004DEC98() & 1) != 0)
  {

LABEL_19:
    v116 = 1;
    v117 = v183;
    goto LABEL_20;
  }

  if (v168)
  {
    v124 = v191;
  }

  else
  {
    v125 = v191;

    v126 = static os_log_type_t.fault.getter();
    v127 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v126, &_mh_execute_header, v127, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    v128 = v172;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v129 = sub_1000A73A4(v125, 0);
    (*(v173 + 8))(v128, v174, v129);
    v124 = v197;
  }

  sub_1001D467C();

  sub_100140278(&qword_1008F0320, &qword_1006F5540);
  v130 = v169;
  Binding.wrappedValue.getter();
  v131 = v157;
  dispatch thunk of TrainingLoadViewModelProvider.viewModel(for:)();

  (*(v170 + 8))(v130, DataType);
  v132 = v111;
  v189 = v111[11];
  v133 = v63;
  ChartLollipopView = type metadata accessor for TrainingLoadChartLollipopView(0);
  v191 = sub_100140278(&qword_1008F0328, qword_1006F5548);
  State.wrappedValue.getter();
  v135 = (v133 + v111[14]);
  v136 = *v135;
  v137 = *(v135 + 1);
  LOBYTE(v197) = v136;
  *(&v197 + 1) = v137;
  sub_100140278(&qword_1008F0518, &unk_1006F56A0);
  State.wrappedValue.getter();
  LODWORD(v188) = v192;
  v138 = (v133 + v111[7]);
  v140 = *v138;
  v139 = v138[1];
  *&v197 = v140;
  *(&v197 + 1) = v139;
  sub_100140278(&qword_1008F0558, &qword_1006F5758);
  State.wrappedValue.getter();
  v141 = v192;
  v197 = *(v133 + v132[8]);
  sub_100140278(&qword_1008F0560, &unk_1006F5788);
  State.wrappedValue.getter();
  v142 = v192;
  LOBYTE(v192) = v113;
  v193 = v114;
  State.projectedValue.getter();
  v143 = v197;
  v144 = v198;
  *(v131 + ChartLollipopView[6]) = v188;
  *(v131 + ChartLollipopView[7]) = v141;
  *(v131 + ChartLollipopView[8]) = v142;
  *(v131 + ChartLollipopView[9]) = v115;
  v145 = v131 + ChartLollipopView[10];
  *v145 = v143;
  *(v145 + 16) = v144;
  v146 = v131 + ChartLollipopView[11];
  type metadata accessor for BalanceDataProvider(0);
  sub_1004EFA78(&qword_1008DCD90, type metadata accessor for BalanceDataProvider, &unk_1006DBB08);
  *v146 = Environment.init<A>(_:)();
  *(v146 + 8) = v147 & 1;
  v148 = ChartLollipopView[12];
  *(v131 + v148) = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleLargeTitle];
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v149 = (v131 + *(sub_100140278(&qword_1008F0A40, &qword_1006F5C90) + 36));
  v150 = v198;
  *v149 = v197;
  v149[1] = v150;
  v149[2] = v199;
  v151 = v158;
  State.wrappedValue.getter();
  v152.n128_u64[0] = 0x4060800000000000;
  sub_1004E38E0(v152);
  v154 = v153;
  (*(v159 + 8))(v151, v160);
  v155 = v183;
  v156 = (v131 + *(v183 + 36));
  *v156 = v154;
  v156[1] = 0x4051C00000000000;
  sub_100015E80(v131, v187, &qword_1008F09D8, &qword_1006F5C40);
  v117 = v155;
  v116 = 0;
  v70 = v186;
LABEL_20:
  v118 = v187;
  (*(v182 + 56))(v187, v116, 1, v117);
  v119 = v180;
  sub_10001B104(v70, v180, &qword_1008F0A10, &qword_1006F5C78);
  v120 = v184;
  sub_10001B104(v118, v184, &qword_1008F09E0, &qword_1006F5C48);
  v121 = v185;
  sub_10001B104(v119, v185, &qword_1008F0A10, &qword_1006F5C78);
  v122 = sub_100140278(&qword_1008F0A38, &qword_1006F5C88);
  sub_10001B104(v120, v121 + *(v122 + 48), &qword_1008F09E0, &qword_1006F5C48);
  sub_10000EA04(v118, &qword_1008F09E0, &qword_1006F5C48);
  sub_10000EA04(v70, &qword_1008F0A10, &qword_1006F5C78);
  sub_10000EA04(v120, &qword_1008F09E0, &qword_1006F5C48);
  return sub_10000EA04(v119, &qword_1008F0A10, &qword_1006F5C78);
}

uint64_t sub_1004E317C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v55 = a1;
  v3 = type metadata accessor for DelayedLongPressGesture();
  v4 = *(v3 - 8);
  v57 = v3;
  v58 = v4;
  __chkstk_darwin(v3);
  v56 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for SpatialTapGesture();
  v54 = *(v52 - 8);
  __chkstk_darwin(v52);
  v51 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_100140278(&qword_1008F0808, &qword_1006F59F8);
  v61 = *(v53 - 8);
  __chkstk_darwin(v53);
  v60 = &v41 - v7;
  DetailsStackedChartView = type metadata accessor for LoadDetailsStackedChartView(0);
  v9 = *(DetailsStackedChartView - 8);
  __chkstk_darwin(DetailsStackedChartView - 8);
  v11 = v10;
  v12 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for LocalCoordinateSpace();
  __chkstk_darwin(v42);
  v13 = type metadata accessor for DragGesture();
  v14 = *(v13 - 8);
  v47 = v13;
  v48 = v14;
  __chkstk_darwin(v13);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100140278(&qword_1008F0810, &qword_1006F5A00);
  v49 = *(v17 - 8);
  v50 = v17;
  __chkstk_darwin(v17);
  v46 = &v41 - v18;
  static CoordinateSpaceProtocol<>.local.getter();
  DragGesture.init<A>(minimumDistance:coordinateSpace:)();
  v19 = v2;
  v20 = v12;
  v41 = v12;
  v45 = type metadata accessor for LoadDetailsStackedChartView;
  sub_1004F2EE8(v19, v12, type metadata accessor for LoadDetailsStackedChartView);
  v21 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v44 = v11;
  v22 = swift_allocObject();
  v43 = type metadata accessor for LoadDetailsStackedChartView;
  sub_1004F4200(v20, v22 + v21, type metadata accessor for LoadDetailsStackedChartView);
  sub_1004EFA78(&qword_1008EDA18, &type metadata accessor for DragGesture, &protocol conformance descriptor for DragGesture);
  sub_1004EFA78(&qword_1008EDA20, &type metadata accessor for DragGesture.Value, &protocol conformance descriptor for DragGesture.Value);
  v23 = v47;
  Gesture<>.onChanged(_:)();

  (*(v48 + 8))(v16, v23);
  static CoordinateSpaceProtocol<>.local.getter();
  v24 = v51;
  SpatialTapGesture.init<A>(count:coordinateSpace:)();
  v25 = v41;
  sub_1004F2EE8(v59, v41, type metadata accessor for LoadDetailsStackedChartView);
  v26 = swift_allocObject();
  sub_1004F4200(v25, v26 + v21, type metadata accessor for LoadDetailsStackedChartView);
  sub_1004EFA78(&qword_1008F0818, &type metadata accessor for SpatialTapGesture, &protocol conformance descriptor for SpatialTapGesture);
  v27 = v60;
  v28 = v52;
  Gesture.onEnded(_:)();

  (*(v54 + 8))(v24, v28);
  v29 = sub_100140278(&qword_1008F0780, &qword_1006F5998);
  v30 = v55 + *(v29 + 52);
  v31 = v27;
  v32 = v53;
  (*(v61 + 16))(v30, v31, v53);
  v33 = sub_100140278(&qword_1008F0820, &qword_1006F5A08);
  v34 = v49;
  v35 = v50;
  v36 = v46;
  (*(v49 + 16))(v30 + *(v33 + 52), v46, v50);
  v37 = v56;
  DelayedLongPressGesture.init(minimumDuration:maximumDistance:)();
  sub_1004F2EE8(v59, v25, v45);
  v38 = swift_allocObject();
  sub_1004F4200(v25, v38 + v21, v43);
  sub_1004EFA78(&qword_1008F0828, &type metadata accessor for DelayedLongPressGesture, &protocol conformance descriptor for DelayedLongPressGesture);
  v39 = v57;
  Gesture.onEnded(_:)();

  (*(v58 + 8))(v37, v39);
  (*(v61 + 8))(v60, v32);
  return (*(v34 + 8))(v36, v35);
}

uint64_t sub_1004E38E0(__n128 a1)
{
  v70 = type metadata accessor for DayIndex();
  v2 = *(v70 - 8);
  __chkstk_darwin(v70);
  v58 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v69 = &v53 - v5;
  v55 = sub_100140278(&qword_1008E04A8, &unk_1006EA860);
  __chkstk_darwin(v55);
  v54 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v68 = &v53 - v8;
  v9 = type metadata accessor for GregorianDayRange();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v53 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v53 - v13;
  v15 = type metadata accessor for EnvironmentValues();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  DetailsStackedChartView = type metadata accessor for LoadDetailsStackedChartView(0);
  v59 = DayIndex.value.getter();
  v20 = v1 + *(DetailsStackedChartView + 68);
  v21 = *v20;
  v65 = *(v20 + 8);
  v57 = v15;
  v56 = v16;
  if (v65 == 1)
  {
    v25 = v21;
  }

  else
  {

    v22 = static os_log_type_t.fault.getter();
    v23 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v22, &_mh_execute_header, v23, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v24 = sub_1000A73A4(v21, 0);
    (*(v16 + 8))(v18, v15, v24);
    v25 = v73;
  }

  swift_getKeyPath();
  v73 = v25;
  v64 = sub_1004EFA78(&qword_1008DCD90, type metadata accessor for BalanceDataProvider, &unk_1006DBB08);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v26 = OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider__dayRange;
  swift_beginAccess();
  v63 = *(v10 + 16);
  v63(v14, &v25[v26], v9);

  v27 = v68;
  GregorianDayRange.dayIndexRange.getter();
  v28 = *(v10 + 8);
  v66 = v10 + 8;
  v62 = v28;
  v28(v14, v9);
  v29 = v69;
  v30 = v70;
  v61 = *(v2 + 16);
  v61(v69, v27, v70);
  sub_10000EA04(v27, &qword_1008E04A8, &unk_1006EA860);
  v31 = DayIndex.value.getter();
  v32 = *(v2 + 8);
  v67 = v2 + 8;
  v60 = v32;
  result = (v32)(v29, v30);
  if (__OFSUB__(v59, v31))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  v59 -= v31;
  if (v65)
  {
    v34 = v21;
  }

  else
  {

    v35 = static os_log_type_t.fault.getter();
    v36 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v35, &_mh_execute_header, v36, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v37 = sub_1000A73A4(v21, 0);
    (*(v56 + 8))(v18, v57, v37);
    v34 = v72;
  }

  swift_getKeyPath();
  v72 = v34;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v38 = OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider__dayRange;
  swift_beginAccess();
  v39 = v53;
  v63(v53, &v34[v38], v9);

  v40 = v54;
  GregorianDayRange.dayIndexRange.getter();
  v62(v39, v9);
  v41 = v58;
  v42 = v70;
  v61(v58, v40 + *(v55 + 36), v70);
  sub_10000EA04(v40, &qword_1008E04A8, &unk_1006EA860);
  v43 = DayIndex.value.getter();
  v60(v41, v42);
  if (v65)
  {
    v44 = v21;
  }

  else
  {

    v45 = static os_log_type_t.fault.getter();
    v46 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v45, &_mh_execute_header, v46, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v47 = sub_1000A73A4(v21, 0);
    (*(v56 + 8))(v18, v57, v47);
    v44 = v71;
  }

  swift_getKeyPath();
  v71 = v44;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v48 = OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider__dayRange;
  swift_beginAccess();
  v63(v14, &v44[v48], v9);

  v49 = v68;
  GregorianDayRange.dayIndexRange.getter();
  v62(v14, v9);
  v50 = v69;
  v51 = v70;
  v61(v69, v49, v70);
  sub_10000EA04(v49, &qword_1008E04A8, &unk_1006EA860);
  v52 = DayIndex.value.getter();
  result = (v60)(v50, v51);
  if (__OFSUB__(v43, v52))
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_1004E4188@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v3 = sub_100140278(&qword_1008F08F8, &qword_1006F5B00);
  v59 = *(v3 - 8);
  v60 = v3;
  __chkstk_darwin(v3);
  v57 = (&v53 - v4);
  v54 = sub_100140278(&qword_1008F0900, &qword_1006F5B08);
  __chkstk_darwin(v54);
  v56 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v55 = &v53 - v7;
  v8 = sub_100140278(&qword_1008F0908, &qword_1006F5B10);
  __chkstk_darwin(v8 - 8);
  v58 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v53 - v11;
  v13 = sub_100140278(&qword_1008F0910, &qword_1006F5B18);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = &v53 - v15;
  v17 = sub_100140278(&qword_1008F0918, &qword_1006F5B20);
  v18 = v17 - 8;
  __chkstk_darwin(v17);
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v53 - v22;
  __chkstk_darwin(v24);
  v26 = &v53 - v25;
  *v16 = static HorizontalAlignment.leading.getter();
  *(v16 + 1) = 0;
  v27 = 1;
  v16[16] = 1;
  v28 = sub_100140278(&qword_1008F0920, &qword_1006F5B28);
  sub_1004E4700(a1, &v16[*(v28 + 44)]);
  v29 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v30 = &v16[*(v14 + 44)];
  *v30 = v29;
  *(v30 + 1) = v31;
  *(v30 + 2) = v32;
  *(v30 + 3) = v33;
  *(v30 + 4) = v34;
  v30[40] = 0;
  v35 = (a1 + *(type metadata accessor for LoadDetailsStackedChartView(0) + 48));
  v36 = *v35;
  v37 = *(v35 + 1);
  v63 = v36;
  v64 = v37;
  sub_100140278(&qword_1008DDBB8, &qword_1006D6FD0);
  State.wrappedValue.getter();
  if (v62)
  {
    v38 = 0.6;
  }

  else
  {
    v38 = 1.0;
  }

  sub_100015E80(v16, v23, &qword_1008F0910, &qword_1006F5B18);
  *&v23[*(v18 + 44)] = v38;
  sub_100015E80(v23, v26, &qword_1008F0918, &qword_1006F5B20);
  if (sub_1004DEC98())
  {
    v39 = v55;
    ProgressView<>.init<>()();
    v40 = static Edge.Set.trailing.getter();
    EdgeInsets.init(_all:)();
    v41 = v39 + *(v54 + 36);
    *v41 = v40;
    *(v41 + 8) = v42;
    *(v41 + 16) = v43;
    *(v41 + 24) = v44;
    *(v41 + 32) = v45;
    *(v41 + 40) = 0;
    v46 = v56;
    sub_10001B104(v39, v56, &qword_1008F0900, &qword_1006F5B08);
    v47 = v57;
    *v57 = 0;
    *(v47 + 8) = 1;
    v48 = sub_100140278(&qword_1008F0930, &qword_1006F5B38);
    sub_10001B104(v46, v47 + *(v48 + 48), &qword_1008F0900, &qword_1006F5B08);
    sub_10000EA04(v39, &qword_1008F0900, &qword_1006F5B08);
    sub_10000EA04(v46, &qword_1008F0900, &qword_1006F5B08);
    sub_100015E80(v47, v12, &qword_1008F08F8, &qword_1006F5B00);
    v27 = 0;
  }

  (*(v59 + 56))(v12, v27, 1, v60);
  sub_10001B104(v26, v20, &qword_1008F0918, &qword_1006F5B20);
  v49 = v58;
  sub_10001B104(v12, v58, &qword_1008F0908, &qword_1006F5B10);
  v50 = v61;
  sub_10001B104(v20, v61, &qword_1008F0918, &qword_1006F5B20);
  v51 = sub_100140278(&qword_1008F0928, &qword_1006F5B30);
  sub_10001B104(v49, v50 + *(v51 + 48), &qword_1008F0908, &qword_1006F5B10);
  sub_10000EA04(v12, &qword_1008F0908, &qword_1006F5B10);
  sub_10000EA04(v26, &qword_1008F0918, &qword_1006F5B20);
  sub_10000EA04(v49, &qword_1008F0908, &qword_1006F5B10);
  return sub_10000EA04(v20, &qword_1008F0918, &qword_1006F5B20);
}

uint64_t sub_1004E4700@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v92 = a2;
  v3 = sub_100140278(&qword_1008DC448, &qword_1006D48C0);
  __chkstk_darwin(v3 - 8);
  v86 = &v81 - v4;
  DataType = type metadata accessor for TrainingLoadDataType();
  v96 = *(DataType - 8);
  v97 = DataType;
  __chkstk_darwin(DataType);
  v95 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for EnvironmentValues();
  v83 = *(v84 - 8);
  __chkstk_darwin(v84);
  v82 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  ViewModel = type metadata accessor for TrainingLoadViewModel();
  v93 = *(ViewModel - 8);
  v94 = ViewModel;
  __chkstk_darwin(ViewModel);
  v87 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v81 - v11;
  v91 = sub_100140278(&qword_1008F0938, &qword_1006F5B40);
  v90 = *(v91 - 8);
  __chkstk_darwin(v91);
  v89 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v81 - v15;
  v100 = a1;
  v99 = a1;
  sub_100140278(&qword_1008F0940, &qword_1006F5B48);
  sub_100140278(&qword_1008F0948, &qword_1006F5B50);
  v17 = sub_100141EEC(&qword_1008F0950, &qword_1006F5B58);
  v18 = sub_10014A6B0(&qword_1008F0958, &qword_1008F0950, &qword_1006F5B58, &protocol conformance descriptor for Label<A, B>);
  v19 = sub_100264AB4();
  v102 = v17;
  v103 = &type metadata for PickerLabelStyle;
  v104 = v18;
  v105 = v19;
  swift_getOpaqueTypeConformance2();
  sub_10014A6B0(&qword_1008F0960, &qword_1008F0948, &qword_1006F5B50, &protocol conformance descriptor for Picker<A, B, C>);
  v88 = v16;
  Menu.init(content:label:)();
  DetailsStackedChartView = type metadata accessor for LoadDetailsStackedChartView(0);
  v20 = (a1 + *(DetailsStackedChartView + 56));
  v21 = *v20;
  v22 = *(v20 + 1);
  LOBYTE(v102) = v21;
  v103 = v22;
  sub_100140278(&qword_1008F0518, &unk_1006F56A0);
  State.wrappedValue.getter();
  v85 = a1;
  if (v101)
  {
    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v23 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  if (sub_1004DEC98())
  {
LABEL_6:
    v24 = 0;
    v25 = 0xE000000000000000;
    goto LABEL_11;
  }

  v26 = a1 + *(DetailsStackedChartView + 68);
  v27 = *v26;
  if (*(v26 + 8) == 1)
  {
    v28 = v27;
  }

  else
  {

    v29 = static os_log_type_t.fault.getter();
    v30 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v29, &_mh_execute_header, v30, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    v31 = v82;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v32 = sub_1000A73A4(v27, 0);
    (*(v83 + 8))(v31, v84, v32);
    v28 = v102;
  }

  sub_1001D467C();

  sub_100140278(&qword_1008F0320, &qword_1006F5540);
  v33 = v95;
  Binding.wrappedValue.getter();
  dispatch thunk of TrainingLoadViewModelProvider.viewModel(for:)();

  (*(v96 + 8))(v33, v97);
  v24 = TrainingLoadViewModel.localizedDescription(onDay:)();
  v25 = v34;
  (*(v93 + 8))(v12, v94);
LABEL_11:
  v102 = v24;
  v103 = v25;
  sub_10000FCBC();
  v35 = Text.init<A>(_:)();
  v37 = v36;
  v39 = v38;
  static Font.body.getter();
  v40 = Text.font(_:)();
  v42 = v41;
  v44 = v43;

  sub_10004642C(v35, v37, v39 & 1);

  v45 = enum case for Font.Design.rounded(_:);
  v46 = type metadata accessor for Font.Design();
  v47 = *(v46 - 8);
  v48 = v86;
  (*(v47 + 104))(v86, v45, v46);
  (*(v47 + 56))(v48, 0, 1, v46);
  v49 = Text.fontDesign(_:)();
  v51 = v50;
  v53 = v52;
  sub_10004642C(v40, v42, v44 & 1);

  sub_10000EA04(v48, &qword_1008DC448, &qword_1006D48C0);
  v54 = v85 + *(DetailsStackedChartView + 68);
  v55 = *v54;
  if (*(v54 + 8) == 1)
  {
    v56 = v55;
  }

  else
  {

    v57 = static os_log_type_t.fault.getter();
    v58 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v57, &_mh_execute_header, v58, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    v59 = v82;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v60 = sub_1000A73A4(v55, 0);
    (*(v83 + 8))(v59, v84, v60);
    v56 = v102;
  }

  sub_1001D467C();

  sub_100140278(&qword_1008F0320, &qword_1006F5540);
  v61 = v95;
  Binding.wrappedValue.getter();
  v62 = v87;
  dispatch thunk of TrainingLoadViewModelProvider.viewModel(for:)();

  (*(v96 + 8))(v61, v97);
  v63 = TrainingLoadViewModel.color(onDay:)();
  (*(v93 + 8))(v62, v94);
  v102 = v63;
  v64 = Text.foregroundStyle<A>(_:)();
  v66 = v65;
  LODWORD(DetailsStackedChartView) = v67;
  v69 = v68;
  sub_10004642C(v49, v51, v53 & 1);

  v70 = v90;
  v71 = *(v90 + 16);
  v72 = v89;
  v73 = v88;
  v74 = v91;
  v71(v89, v88, v91);
  v75 = v92;
  v71(v92, v72, v74);
  v76 = &v75[*(sub_100140278(&qword_1008F0968, &qword_1006F5B60) + 48)];
  *v76 = v64;
  *(v76 + 1) = v66;
  v77 = DetailsStackedChartView;
  v78 = DetailsStackedChartView & 1;
  v76[16] = DetailsStackedChartView & 1;
  *(v76 + 3) = v69;
  sub_10006965C(v64, v66, v77 & 1);
  v79 = *(v70 + 8);

  v79(v73, v74);
  sub_10004642C(v64, v66, v78);

  return (v79)(v72, v74);
}

uint64_t sub_1004E516C(uint64_t a1)
{
  v1 = sub_100140278(&qword_1008F0320, &qword_1006F5540);
  __chkstk_darwin(v1);
  LocalizedStringKey.init(stringLiteral:)();
  Binding.projectedValue.getter();
  type metadata accessor for TrainingLoadDataType();
  sub_100140278(&qword_1008F09A0, &qword_1006F5BE8);
  sub_1004EFA78(&qword_1008F09A8, &type metadata accessor for TrainingLoadDataType, &protocol conformance descriptor for TrainingLoadDataType);
  sub_1004F34D4();
  return Picker<>.init(_:selection:content:)();
}

uint64_t sub_1004E52E0(uint64_t a1)
{
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1 + *(type metadata accessor for LoadDetailsStackedChartView(0) + 68);
  v7 = *v6;
  if (*(v6 + 8) == 1)
  {
    v8 = v7;
  }

  else
  {

    v9 = static os_log_type_t.fault.getter();
    v10 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v9, &_mh_execute_header, v10, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v11 = sub_1000A73A4(v7, 0);
    (*(v3 + 8))(v5, v2, v11);
    v8 = v15;
  }

  sub_1001D467C();

  ViewModel = dispatch thunk of TrainingLoadViewModelProvider.viewModels.getter();

  v15 = ViewModel;
  swift_getKeyPath();
  sub_100140278(&qword_1008F09C8, &qword_1006F9400);
  sub_100140278(&qword_1008F09C0, &qword_1006F5BF0);
  sub_10014A6B0(&qword_1008F09D0, &qword_1008F09C8, &qword_1006F9400, &protocol conformance descriptor for [A]);
  sub_1004EFA78(&qword_1008F09A8, &type metadata accessor for TrainingLoadDataType, &protocol conformance descriptor for TrainingLoadDataType);
  sub_1004F3558();
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_1004E5588@<X0>(uint64_t a1@<X8>)
{
  DataType = type metadata accessor for TrainingLoadDataType();
  v3 = *(DataType - 8);
  __chkstk_darwin(DataType);
  v5 = &View - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  View = TrainingLoadViewModel.localizedName()();
  sub_10000FCBC();
  v6 = Text.init<A>(_:)();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  TrainingLoadViewModel.dataType.getter();
  v13 = a1 + *(sub_100140278(&qword_1008DB058, &unk_1006F5C30) + 36);
  (*(v3 + 32))(v13, v5, DataType);
  *(v13 + *(sub_100140278(&qword_1008DB060, &qword_1006D1FD0) + 36)) = 1;
  *a1 = v6;
  *(a1 + 8) = v8;
  *(a1 + 16) = v10 & 1;
  *(a1 + 24) = v12;
  v14 = static Color.white.getter();
  KeyPath = swift_getKeyPath();
  result = sub_100140278(&qword_1008F09C0, &qword_1006F5BF0);
  v17 = (a1 + *(result + 36));
  *v17 = KeyPath;
  v17[1] = v14;
  return result;
}

uint64_t sub_1004E5724(uint64_t a1)
{
  v2 = sub_100140278(&qword_1008F0950, &qword_1006F5B58);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7[-v4];
  v8 = a1;
  sub_100140278(&qword_1008F0970, &qword_1006F5B68);
  sub_100140278(&qword_1008F0978, &unk_1006F5B70);
  sub_1004F32A4();
  sub_1004F335C();
  Label.init(title:icon:)();
  sub_10014A6B0(&qword_1008F0958, &qword_1008F0950, &qword_1006F5B58, &protocol conformance descriptor for Label<A, B>);
  sub_100264AB4();
  View.labelStyle<A>(_:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1004E58E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  DataType = type metadata accessor for TrainingLoadDataType();
  v5 = *(DataType - 8);
  __chkstk_darwin(DataType);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for EnvironmentValues();
  v42 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  ViewModel = type metadata accessor for TrainingLoadViewModel();
  v11 = *(ViewModel - 8);
  __chkstk_darwin(ViewModel);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(type metadata accessor for LoadDetailsStackedChartView(0) + 68);
  v44 = a1;
  v15 = a1 + v14;
  v16 = *v15;
  if (*(v15 + 8) == 1)
  {
    countAndFlagsBits = v16;
  }

  else
  {

    v18 = DataType;
    v19 = static os_log_type_t.fault.getter();
    v20 = static Log.runtimeIssuesLog.getter();
    v41 = v8;
    v21 = v20;
    v22 = v19;
    DataType = v18;
    os_log(_:dso:log:_:_:)(v22, &_mh_execute_header, v21, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v23 = sub_1000A73A4(v16, 0);
    (*(v42 + 8))(v10, v41, v23);
    countAndFlagsBits = v45._countAndFlagsBits;
  }

  sub_1001D467C();

  sub_100140278(&qword_1008F0320, &qword_1006F5540);
  Binding.wrappedValue.getter();
  dispatch thunk of TrainingLoadViewModelProvider.viewModel(for:)();

  (*(v5 + 8))(v7, DataType);
  View = TrainingLoadViewModel.localizedName()();
  (*(v11 + 8))(v13, ViewModel);
  v45 = View;
  sub_10000FCBC();
  v25 = Text.init<A>(_:)();
  v27 = v26;
  v29 = v28;
  static Font.body.getter();
  v30 = Text.font(_:)();
  v32 = v31;
  v34 = v33;
  v36 = v35;

  sub_10004642C(v25, v27, v29 & 1);

  v37 = static Color.white.getter();
  KeyPath = swift_getKeyPath();
  v45._countAndFlagsBits = v37;
  result = AnyShapeStyle.init<A>(_:)();
  *a2 = v30;
  *(a2 + 8) = v32;
  *(a2 + 16) = v34 & 1;
  *(a2 + 24) = v36;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = result;
  return result;
}

uint64_t sub_1004E5CA4@<X0>(uint64_t *a1@<X8>)
{
  v2 = Image.init(systemName:)();
  v3 = static Font.body.getter();
  KeyPath = swift_getKeyPath();
  v5 = (a1 + *(sub_100140278(&qword_1008F0998, &qword_1006F5B80) + 36));
  v6 = *(sub_100140278(&qword_1008E97F8, &qword_1006EA330) + 28);
  v7 = enum case for Image.Scale.small(_:);
  v8 = type metadata accessor for Image.Scale();
  (*(*(v8 - 8) + 104))(v5 + v6, v7, v8);
  *v5 = swift_getKeyPath();
  *a1 = v2;
  a1[1] = KeyPath;
  a1[2] = v3;
  v9 = static Color.white.getter();
  v10 = swift_getKeyPath();
  result = sub_100140278(&qword_1008F0978, &unk_1006F5B70);
  v12 = (a1 + *(result + 36));
  *v12 = v10;
  v12[1] = v9;
  return result;
}

uint64_t sub_1004E5DE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = static HorizontalAlignment.center.getter();
  *(a2 + 8) = 0x4028000000000000;
  *(a2 + 16) = 0;
  v4 = sub_100140278(&qword_1008F0650, &qword_1006F5838);
  sub_1004E5FE0(a1, (a2 + *(v4 + 44)));
  v5 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = a2 + *(sub_100140278(&qword_1008F0628, &qword_1006F5820) + 36);
  *v14 = v5;
  *(v14 + 8) = v7;
  *(v14 + 16) = v9;
  *(v14 + 24) = v11;
  *(v14 + 32) = v13;
  *(v14 + 40) = 0;
  v15 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = a2 + *(sub_100140278(&qword_1008F0618, &qword_1006F5818) + 36);
  *v24 = v15;
  *(v24 + 8) = v17;
  *(v24 + 16) = v19;
  *(v24 + 24) = v21;
  *(v24 + 32) = v23;
  *(v24 + 40) = 0;
  v25 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = a2 + *(sub_100140278(&qword_1008F0608, &qword_1006F5810) + 36);
  *v34 = v25;
  *(v34 + 8) = v27;
  *(v34 + 16) = v29;
  *(v34 + 24) = v31;
  *(v34 + 32) = v33;
  *(v34 + 40) = 0;
  v35 = static Alignment.center.getter();
  v37 = v36;
  type metadata accessor for LoadDetailsStackedChartView(0);
  sub_100140278(&qword_1008DDBB8, &qword_1006D6FD0);
  State.wrappedValue.getter();
  v38 = 0;
  if (v41 == 1)
  {
    static Color.black.getter();
    v38 = Color.opacity(_:)();
  }

  result = sub_100140278(&qword_1008F05F0, &qword_1006F5808);
  v40 = (a2 + *(result + 36));
  *v40 = v38;
  v40[1] = v35;
  v40[2] = v37;
  return result;
}

uint64_t sub_1004E5FE0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v215 = a2;
  v214 = sub_100140278(&qword_1008F0658, &qword_1006F5840);
  __chkstk_darwin(v214);
  v174 = &v172 - v3;
  v179 = type metadata accessor for Divider();
  v205 = *(v179 - 8);
  __chkstk_darwin(v179);
  v176 = &v172 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v178 = &v172 - v6;
  v177 = sub_100140278(&qword_1008F0660, &qword_1006F5848);
  v204 = *(v177 - 8);
  __chkstk_darwin(v177);
  v175 = &v172 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v180 = &v172 - v9;
  v211 = sub_100140278(&qword_1008F0668, &qword_1006F5850);
  __chkstk_darwin(v211);
  v213 = &v172 - v10;
  v212 = sub_100140278(&qword_1008F0670, &qword_1006F5858);
  __chkstk_darwin(v212);
  v203 = &v172 - v11;
  v12 = type metadata accessor for PlainButtonStyle();
  v199 = *(v12 - 8);
  v200 = v12;
  __chkstk_darwin(v12);
  v197 = &v172 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  DetailsStackedChartView = type metadata accessor for LoadDetailsStackedChartView(0);
  v208 = *(DetailsStackedChartView - 8);
  __chkstk_darwin(DetailsStackedChartView);
  v209 = v15;
  *&v210 = &v172 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = sub_100140278(&qword_1008F0678, &qword_1006F5860);
  v188 = *(v191 - 8);
  __chkstk_darwin(v191);
  v185 = &v172 - v16;
  v17 = sub_100140278(&qword_1008F0680, &qword_1006F5868);
  v193 = *(v17 - 8);
  v194 = v17;
  __chkstk_darwin(v17);
  v187 = &v172 - v18;
  v186 = sub_100140278(&qword_1008F0688, &qword_1006F5870);
  __chkstk_darwin(v186);
  v192 = &v172 - v19;
  v190 = sub_100140278(&qword_1008F0690, &qword_1006F5878);
  __chkstk_darwin(v190);
  v196 = &v172 - v20;
  v195 = sub_100140278(&qword_1008F0698, &qword_1006F5880);
  __chkstk_darwin(v195);
  v201 = &v172 - v21;
  v189 = sub_100140278(&qword_1008F06A0, &qword_1006F5888);
  __chkstk_darwin(v189);
  v202 = &v172 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v198 = &v172 - v24;
  __chkstk_darwin(v25);
  v216 = &v172 - v26;
  v27 = type metadata accessor for Font.Leading();
  v183 = *(v27 - 8);
  v184 = v27;
  __chkstk_darwin(v27);
  v182 = &v172 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for Image.ResizingMode();
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v181 = &v172 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v207 = type metadata accessor for OvernightMetricsViewModel();
  *&v206 = *(v207 - 8);
  __chkstk_darwin(v207);
  v33 = &v172 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for EnvironmentValues();
  v35 = *(v34 - 8);
  __chkstk_darwin(v34);
  v37 = &v172 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = DetailsStackedChartView;
  v38 = a1 + *(DetailsStackedChartView + 68);
  v39 = *v38;
  if (*(v38 + 8) == 1)
  {
    v40 = v39;
  }

  else
  {

    v41 = static os_log_type_t.fault.getter();
    v42 = static Log.runtimeIssuesLog.getter();
    v172 = v30;
    v43 = v29;
    v44 = a1;
    v45 = v42;
    os_log(_:dso:log:_:_:)(v41, &_mh_execute_header, v42, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    a1 = v44;
    v29 = v43;
    v30 = v172;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v46 = sub_1000A73A4(v39, 0);
    (*(v35 + 8))(v37, v34, v46);
    v40 = *&v243[0];
  }

  sub_1001D427C();

  dispatch thunk of SleepingSampleViewModelProvider.overnightMetricsModel.getter();

  v47 = OvernightMetricsViewModel.watchExperienceRequiresSetup.getter();
  (*(v206 + 8))(v33, v207);
  if ((v47 == 2 || (v47 & 1) == 0) && (v48 = sub_1004DDA28()[2], , v48) && (sub_1004DE358() & 1) == 0)
  {
    *&v243[0] = sub_1004DDA28();
    *&v207 = swift_getKeyPath();
    v134 = v210;
    sub_1004F2EE8(a1, v210, type metadata accessor for LoadDetailsStackedChartView);
    v135 = (*(v208 + 80) + 16) & ~*(v208 + 80);
    v136 = swift_allocObject();
    sub_1004F4200(v134, v136 + v135, type metadata accessor for LoadDetailsStackedChartView);
    sub_100140278(&qword_1008F06A8, &qword_1006F58C0);
    sub_100140278(&qword_1008F06B0, &qword_1006F58C8);
    sub_10014A6B0(&qword_1008F06B8, &qword_1008F06A8, &qword_1006F58C0, &protocol conformance descriptor for [A]);
    sub_1004EFA78(&qword_1008F06C0, &type metadata accessor for SleepingSampleDataType, &protocol conformance descriptor for SleepingSampleDataType);
    v216 = &protocol conformance descriptor for TupleView<A>;
    sub_10014A6B0(&qword_1008F06C8, &qword_1008F06B0, &qword_1006F58C8, &protocol conformance descriptor for TupleView<A>);
    ForEach<>.init(_:id:content:)();
    v137 = v173;
    v138 = (a1 + *(v173 + 40));
    v139 = *v138;
    v140 = *(v138 + 1);
    LOBYTE(v239) = v139;
    *(&v239 + 1) = v140;
    sub_100140278(&qword_1008DDBB8, &qword_1006D6FD0);
    State.projectedValue.getter();
    v141 = v243[0];
    v142 = v243[1];
    v143 = (a1 + *(v137 + 52));
    v145 = *v143;
    v144 = v143[1];
    *&v239 = v145;
    *(&v239 + 1) = v144;
    sub_100140278(&qword_1008F0550, &qword_1006F5728);
    State.projectedValue.getter();
    v146 = *&v243[0];
    type metadata accessor for BalanceDataProvider(0);
    sub_1004EFA78(&qword_1008DCD90, type metadata accessor for BalanceDataProvider, &unk_1006DBB08);
    v210 = *(v243 + 8);
    v147 = Environment.init<A>(_:)();
    v231 = v141;
    LOBYTE(v232) = v142;
    *(&v232 + 1) = v146;
    v233[0] = v210;
    *&v233[1] = v147;
    BYTE8(v233[1]) = v148 & 1;
    v149 = v178;
    Divider.init()();
    v208 = *(a1 + *(v137 + 20));

    *&v207 = Environment.init<A>(_:)();
    v151 = v150;
    v152 = *(v204 + 16);
    v153 = v175;
    v154 = v177;
    v152(v175, v180, v177);
    v223 = v231;
    v224 = v232;
    v225[0] = v233[0];
    *(v225 + 9) = *(v233 + 9);
    v155 = *(v205 + 16);
    v156 = v149;
    v157 = v179;
    v155(v176, v156, v179);
    v158 = v151 & 1;
    LOBYTE(v263) = v151 & 1;
    LODWORD(v210) = v151 & 1;
    v159 = v174;
    v152(v174, v153, v154);
    v160 = sub_100140278(&qword_1008F06D0, &qword_1006F58D0);
    v161 = (v159 + v160[12]);
    v162 = *(v225 + 9);
    *(v241 + 9) = *(v225 + 9);
    v163 = v224;
    v239 = v223;
    v240 = v224;
    v164 = v225[0];
    v241[0] = v225[0];
    *v161 = v223;
    v161[1] = v163;
    v161[2] = v164;
    *(v161 + 41) = v162;
    v165 = v176;
    v155((v159 + v160[16]), v176, v157);
    v166 = v159 + v160[20];
    LOBYTE(v160) = v263;
    v167 = v207;
    *v166 = v208;
    *(v166 + 8) = v167;
    *(v166 + 16) = v160;

    sub_1004F2C6C(&v231, v243);
    sub_1000A72F0(v167, v158);
    sub_1004F2C6C(&v239, v243);

    sub_1000A72F0(v167, v160);

    v168 = sub_1000A73A4(v167, v160);
    v169 = *(v205 + 8);
    v205 += 8;
    v209 = v169;
    (v169)(v165, v157, v168);
    v243[0] = v223;
    v243[1] = v224;
    v244[0] = v225[0];
    *(v244 + 9) = *(v225 + 9);
    sub_1004F2CA4(v243);
    v170 = *(v204 + 8);
    v204 += 8;
    v170(v175, v154);
    sub_10001B104(v159, v213, &qword_1008F0658, &qword_1006F5840);
    swift_storeEnumTagMultiPayload();
    v171 = v216;
    sub_10014A6B0(&qword_1008F06D8, &qword_1008F0670, &qword_1006F5858, v216);
    sub_10014A6B0(&qword_1008F06E0, &qword_1008F0658, &qword_1006F5840, v171);
    _ConditionalContent<>.init(storage:)();

    sub_1000A73A4(v167, v210);
    sub_1004F2CA4(&v231);
    sub_10000EA04(v159, &qword_1008F0658, &qword_1006F5840);
    v209(v178, v179);
    return (v170)(v180, v177);
  }

  else
  {
    Image.init(_:bundle:)();
    v49 = v181;
    (*(v30 + 104))(v181, enum case for Image.ResizingMode.stretch(_:), v29);
    v50 = Image.resizable(capInsets:resizingMode:)();

    (*(v30 + 8))(v49, v29);
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v205 = a1;
    v51 = v257;
    v52 = v258;
    v53 = v259;
    v54 = v260;
    v55 = v261;
    v56 = v262;
    LOBYTE(v239) = v258;
    LOBYTE(v231) = v260;
    v57 = static Edge.Set.top.getter();
    EdgeInsets.init(_all:)();
    v59 = v58;
    v61 = v60;
    v63 = v62;
    v65 = v64;
    LOBYTE(v243[0]) = 0;
    LOBYTE(v49) = static Edge.Set.bottom.getter();
    EdgeInsets.init(_all:)();
    LOBYTE(v223) = 0;
    *&v243[0] = v50;
    *(&v243[0] + 1) = v51;
    LOBYTE(v243[1]) = v52;
    *(&v243[1] + 1) = v53;
    LOBYTE(v244[0]) = v54;
    *(&v244[0] + 1) = v55;
    *&v244[1] = v56;
    WORD4(v244[1]) = 256;
    LOBYTE(v245) = v57;
    *(&v245 + 1) = v59;
    *&v246 = v61;
    *(&v246 + 1) = v63;
    *&v247 = v65;
    BYTE8(v247) = 0;
    HIDWORD(v247) = *(&v239 + 3);
    *(&v247 + 9) = v239;
    LOBYTE(v248) = v49;
    DWORD1(v248) = *(&v231 + 3);
    *(&v248 + 1) = v231;
    *(&v248 + 1) = v66;
    *&v249[0] = v67;
    *(&v249[0] + 1) = v68;
    *&v249[1] = v69;
    BYTE8(v249[1]) = 0;
    v70 = v205;
    sub_1004E7928(&v239);
    LOBYTE(v51) = v241[0];
    v206 = v240;
    v207 = v239;
    static Font.body.getter();
    v72 = v182;
    v71 = v183;
    v73 = v184;
    (*(v183 + 104))(v182, enum case for Font.Leading.tight(_:), v184);
    v74 = Font.leading(_:)();

    (*(v71 + 8))(v72, v73);
    KeyPath = swift_getKeyPath();
    v76 = [objc_opt_self() secondaryLabelColor];
    v77 = Color.init(_:)();
    v250 = v51;
    LOBYTE(v51) = static Edge.Set.bottom.getter();
    EdgeInsets.init(_all:)();
    LOBYTE(v231) = 0;
    v252 = v206;
    v251 = v207;
    LOBYTE(v253) = v250;
    *(&v253 + 1) = KeyPath;
    *&v254 = v74;
    *(&v254 + 1) = v77;
    LOBYTE(v255) = v51;
    *(&v255 + 1) = v239;
    DWORD1(v255) = *(&v239 + 3);
    *(&v255 + 1) = v78;
    *&v256[0] = v79;
    *(&v256[0] + 1) = v80;
    *&v256[1] = v81;
    BYTE8(v256[1]) = 0;
    v82 = v210;
    sub_1004F2EE8(v70, v210, type metadata accessor for LoadDetailsStackedChartView);
    v83 = (*(v208 + 80) + 16) & ~*(v208 + 80);
    v84 = swift_allocObject();
    v85 = sub_1004F4200(v82, v84 + v83, type metadata accessor for LoadDetailsStackedChartView);
    __chkstk_darwin(v85);
    sub_100140278(&qword_1008F06E8, &qword_1006F5908);
    v86 = sub_100141EEC(&qword_1008F06F0, &unk_1006F5910);
    v87 = sub_1004F2D08();
    *&v239 = v86;
    *(&v239 + 1) = v87;
    swift_getOpaqueTypeConformance2();
    v88 = v185;
    Button.init(action:label:)();
    v89 = v197;
    PlainButtonStyle.init()();
    sub_10014A6B0(&qword_1008F0700, &qword_1008F0678, &qword_1006F5860, &protocol conformance descriptor for Button<A>);
    sub_1004EFA78(&qword_1008F0708, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
    v90 = v187;
    v91 = v191;
    v92 = v200;
    View.buttonStyle<A>(_:)();
    (*(v199 + 8))(v89, v92);
    (*(v188 + 8))(v88, v91);
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v93 = v192;
    (*(v193 + 32))(v192, v90, v194);
    v94 = (v93 + *(v186 + 36));
    v95 = v268;
    v94[4] = v267;
    v94[5] = v95;
    v94[6] = v269;
    v96 = v264;
    *v94 = v263;
    v94[1] = v96;
    v97 = v266;
    v94[2] = v265;
    v94[3] = v97;
    LOBYTE(v88) = static Edge.Set.all.getter();
    v98 = v196;
    sub_100015E80(v93, v196, &qword_1008F0688, &qword_1006F5870);
    v99 = v98 + *(v190 + 36);
    *v99 = v88;
    *(v99 + 8) = 0u;
    *(v99 + 24) = 0u;
    *(v99 + 40) = 1;
    v100 = sub_100046170();
    v101 = Color.init(uiColor:)();
    LOBYTE(v93) = static Edge.Set.all.getter();
    v102 = v201;
    sub_100015E80(v98, v201, &qword_1008F0690, &qword_1006F5878);
    v103 = v102 + *(v195 + 36);
    *v103 = v101;
    *(v103 + 8) = v93;
    v104 = v198;
    v105 = &v198[*(v189 + 36)];
    v106 = *(type metadata accessor for RoundedRectangle() + 20);
    v107 = enum case for RoundedCornerStyle.continuous(_:);
    v108 = type metadata accessor for RoundedCornerStyle();
    (*(*(v108 - 8) + 104))(&v105[v106], v107, v108);
    __asm { FMOV            V0.2D, #10.0 }

    *v105 = _Q0;
    *&v105[*(sub_100140278(&qword_1008DE1E0, &unk_1006DC6E0) + 36)] = 256;
    sub_100015E80(v102, v104, &qword_1008F0698, &qword_1006F5880);
    v114 = v216;
    sub_100015E80(v104, v216, &qword_1008F06A0, &qword_1006F5888);
    v228 = v247;
    v229 = v248;
    v230[0] = v249[0];
    *(v230 + 9) = *(v249 + 9);
    v225[0] = v244[0];
    v225[1] = v244[1];
    v226 = v245;
    v227 = v246;
    v223 = v243[0];
    v224 = v243[1];
    v221 = v255;
    v222[0] = v256[0];
    *(v222 + 9) = *(v256 + 9);
    v217 = v251;
    v218 = v252;
    v219 = v253;
    v220 = v254;
    v115 = v114;
    v116 = v202;
    sub_10001B104(v115, v202, &qword_1008F06A0, &qword_1006F5888);
    v117 = v229;
    v233[4] = v228;
    v233[5] = v229;
    v118 = v230[0];
    v234[0] = v230[0];
    *(v234 + 9) = *(v230 + 9);
    v119 = v225[0];
    v120 = v225[1];
    v233[0] = v225[0];
    v233[1] = v225[1];
    v121 = v226;
    v122 = v227;
    v233[2] = v226;
    v233[3] = v227;
    v123 = v223;
    v124 = v224;
    v231 = v223;
    v232 = v224;
    v125 = v203;
    *(v203 + 6) = v228;
    v125[7] = v117;
    v125[8] = v118;
    *(v125 + 137) = *(v230 + 9);
    v125[2] = v119;
    v125[3] = v120;
    v125[4] = v121;
    v125[5] = v122;
    *v125 = v123;
    v125[1] = v124;
    v126 = v221;
    v127 = v222[0];
    v235[4] = v221;
    v236[0] = v222[0];
    v128 = *(v222 + 9);
    *(v236 + 9) = *(v222 + 9);
    v129 = v218;
    v235[0] = v217;
    v235[1] = v218;
    v131 = v219;
    v130 = v220;
    v235[2] = v219;
    v235[3] = v220;
    v125[10] = v217;
    v125[11] = v129;
    v125[12] = v131;
    v125[13] = v130;
    v125[14] = v126;
    v125[15] = v127;
    *(v125 + 249) = v128;
    v132 = sub_100140278(&qword_1008F0710, &qword_1006F5928);
    sub_10001B104(v116, v125 + *(v132 + 64), &qword_1008F06A0, &qword_1006F5888);
    sub_10001B104(v243, &v239, &qword_1008F0718, &qword_1006F5930);
    sub_10001B104(&v251, &v239, &qword_1008F0720, &qword_1006F5938);
    sub_10001B104(&v231, &v239, &qword_1008F0718, &qword_1006F5930);
    sub_10001B104(v235, &v239, &qword_1008F0720, &qword_1006F5938);
    sub_10000EA04(v116, &qword_1008F06A0, &qword_1006F5888);
    v237[4] = v221;
    v238[0] = v222[0];
    *(v238 + 9) = *(v222 + 9);
    v237[0] = v217;
    v237[1] = v218;
    v237[2] = v219;
    v237[3] = v220;
    sub_10000EA04(v237, &qword_1008F0720, &qword_1006F5938);
    v241[4] = v228;
    v241[5] = v229;
    v242[0] = v230[0];
    *(v242 + 9) = *(v230 + 9);
    v241[0] = v225[0];
    v241[1] = v225[1];
    v241[2] = v226;
    v241[3] = v227;
    v239 = v223;
    v240 = v224;
    sub_10000EA04(&v239, &qword_1008F0718, &qword_1006F5930);
    sub_10001B104(v125, v213, &qword_1008F0670, &qword_1006F5858);
    swift_storeEnumTagMultiPayload();
    sub_10014A6B0(&qword_1008F06D8, &qword_1008F0670, &qword_1006F5858, &protocol conformance descriptor for TupleView<A>);
    sub_10014A6B0(&qword_1008F06E0, &qword_1008F0658, &qword_1006F5840, &protocol conformance descriptor for TupleView<A>);
    _ConditionalContent<>.init(storage:)();
    sub_10000EA04(&v251, &qword_1008F0720, &qword_1006F5938);
    sub_10000EA04(v243, &qword_1008F0718, &qword_1006F5930);
    sub_10000EA04(v125, &qword_1008F0670, &qword_1006F5858);
    return sub_10000EA04(v216, &qword_1008F06A0, &qword_1006F5888);
  }
}

double sub_1004E7928@<D0>(uint64_t a1@<X8>)
{
  sub_1004DE358();
  LocalizedStringKey.init(stringLiteral:)();
  Text.init(_:tableName:bundle:comment:)();
  _ConditionalContent<>.init(storage:)();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_1004E7A44(uint64_t a1)
{
  v32 = type metadata accessor for OvernightMetricsViewModel();
  v2 = *(v32 - 8);
  __chkstk_darwin(v32);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for EffortUtilities.OvernightVitalsState();
  v9 = *(v31 - 8);
  __chkstk_darwin(v31);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v30 - v13;
  v15 = sub_1004DE358();
  result = type metadata accessor for LoadDetailsStackedChartView(0);
  v17 = *(a1 + *(result + 20));
  if (v15)
  {
    if (!v17)
    {
      return result;
    }

    v18 = a1 + *(result + 68);
    v19 = *v18;
    if (*(v18 + 8) == 1)
    {
      v20 = v19;
    }

    else
    {

      v24 = static os_log_type_t.fault.getter();
      v25 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)(v24, &_mh_execute_header, v25, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      v26 = sub_1000A73A4(v19, 0);
      (*(v6 + 8))(v8, v5, v26);
      v20 = v33;
    }

    sub_1001D427C();

    dispatch thunk of SleepingSampleViewModelProvider.overnightMetricsModel.getter();

    OvernightMetricsViewModel.overnightVitalsState.getter();
    (*(v2 + 8))(v4, v32);
    sub_10043DB74(v14);
  }

  else
  {
    if (!v17)
    {
      return result;
    }

    v21 = a1 + *(result + 68);
    v22 = *v21;
    if (*(v21 + 8) == 1)
    {
      v23 = v22;
    }

    else
    {

      v27 = static os_log_type_t.fault.getter();
      v28 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)(v27, &_mh_execute_header, v28, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      v29 = sub_1000A73A4(v22, 0);
      (*(v6 + 8))(v8, v5, v29);
      v23 = v33;
    }

    sub_1001D427C();

    dispatch thunk of SleepingSampleViewModelProvider.overnightMetricsModel.getter();

    OvernightMetricsViewModel.overnightVitalsState.getter();
    (*(v2 + 8))(v4, v32);
    sub_10043DBA4(v11);
    v14 = v11;
  }

  return (*(v9 + 8))(v14, v31);
}

double sub_1004E7E48@<D0>(uint64_t a2@<X8>)
{
  v14 = a2;
  v2 = type metadata accessor for Font.Leading();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004E800C(&v15);
  v6 = v15;
  v7 = v16;
  v8 = v17;
  v9 = v18;
  v10 = v19;
  static Font.body.getter();
  (*(v3 + 104))(v5, enum case for Font.Leading.tight(_:), v2);
  v11 = Font.leading(_:)();

  (*(v3 + 8))(v5, v2);
  KeyPath = swift_getKeyPath();
  v15 = v6;
  v16 = v7;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v20 = KeyPath;
  v21 = v11;
  static Font.Weight.semibold.getter();
  sub_100140278(&qword_1008F06F0, &unk_1006F5910);
  sub_1004F2D08();
  View.fontWeight(_:)();
  sub_10017A8F0(v6, v7, v8);

  return result;
}

double sub_1004E800C@<D0>(uint64_t a1@<X8>)
{
  sub_1004DE358();
  LocalizedStringKey.init(stringLiteral:)();
  Text.init(_:tableName:bundle:comment:)();
  _ConditionalContent<>.init(storage:)();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_1004E8128(uint64_t a1)
{
  v2 = type metadata accessor for SleepingSampleDataType();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return SleepingSampleViewModel.dataType.setter();
}

uint64_t sub_1004E81F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a3;
  v5 = type metadata accessor for Divider();
  v25 = *(v5 - 8);
  v6 = v25;
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v25 - v10;
  v12 = sub_100140278(&qword_1008F0728, &qword_1006F5940);
  __chkstk_darwin(v12 - 8);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v25 - v16;
  *v17 = static HorizontalAlignment.leading.getter();
  *(v17 + 1) = 0x4028000000000000;
  v17[16] = 0;
  v18 = sub_100140278(&qword_1008F0730, &qword_1006F5948);
  sub_1004E846C(a1, a2, &v17[*(v18 + 44)]);
  Divider.init()();
  sub_10001B104(v17, v14, &qword_1008F0728, &qword_1006F5940);
  v19 = *(v6 + 16);
  v20 = v5;
  v19(v8, v11, v5);
  v21 = v26;
  sub_10001B104(v14, v26, &qword_1008F0728, &qword_1006F5940);
  v22 = v21 + *(sub_100140278(&qword_1008F0738, &qword_1006F5950) + 48);
  v19(v22, v8, v20);
  v23 = *(v25 + 8);
  v23(v11, v20);
  sub_10000EA04(v17, &qword_1008F0728, &qword_1006F5940);
  v23(v8, v20);
  return sub_10000EA04(v14, &qword_1008F0728, &qword_1006F5940);
}

uint64_t sub_1004E846C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100140278(&qword_1008F0740, &qword_1006F5958);
  __chkstk_darwin(v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = (&v28 - v10);
  v12 = sub_100140278(&qword_1008F0748, &qword_1006F5960);
  __chkstk_darwin(v12 - 8);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v28 - v16;
  *v17 = static VerticalAlignment.center.getter();
  *(v17 + 1) = 0x4010000000000000;
  v17[16] = 0;
  v18 = sub_100140278(&qword_1008F0750, &qword_1006F5968);
  sub_1004E8730(a1, a2, &v17[*(v18 + 44)]);
  if (qword_1008DA608 != -1)
  {
    swift_once();
  }

  *v11 = xmmword_100925200;
  v19 = sub_100140278(&qword_1008F0758, &qword_1006F5970);
  sub_1004E9EF8(a1, a2, (v11 + *(v19 + 44)));
  v20 = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v21 = v11 + *(v6 + 36);
  *v21 = v20;
  *(v21 + 1) = v22;
  *(v21 + 2) = v23;
  *(v21 + 3) = v24;
  *(v21 + 4) = v25;
  v21[40] = 0;
  sub_10001B104(v17, v14, &qword_1008F0748, &qword_1006F5960);
  sub_10001B104(v11, v8, &qword_1008F0740, &qword_1006F5958);
  sub_10001B104(v14, a3, &qword_1008F0748, &qword_1006F5960);
  v26 = sub_100140278(&qword_1008F0760, &qword_1006F5978);
  sub_10001B104(v8, a3 + *(v26 + 48), &qword_1008F0740, &qword_1006F5958);
  sub_10000EA04(v11, &qword_1008F0740, &qword_1006F5958);
  sub_10000EA04(v17, &qword_1008F0748, &qword_1006F5960);
  sub_10000EA04(v8, &qword_1008F0740, &qword_1006F5958);
  return sub_10000EA04(v14, &qword_1008F0748, &qword_1006F5960);
}

uint64_t sub_1004E8730@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v121 = a2;
  v130 = a3;
  v4 = sub_100140278(&qword_1008DC448, &qword_1006D48C0);
  __chkstk_darwin(v4 - 8);
  v118 = &v111 - v5;
  v6 = sub_100140278(&qword_1008F0830, &qword_1006F5A10);
  v114 = *(v6 - 8);
  v115 = v6;
  __chkstk_darwin(v6);
  v112 = &v111 - v7;
  v113 = sub_100140278(&qword_1008F0838, &qword_1006F5A18);
  __chkstk_darwin(v113);
  v119 = &v111 - v8;
  v9 = sub_100140278(&qword_1008F0840, &qword_1006F5A20);
  v127 = *(v9 - 8);
  v128 = v9;
  __chkstk_darwin(v9);
  v117 = &v111 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v116 = &v111 - v12;
  v13 = sub_100140278(&qword_1008F0848, &qword_1006F5A28);
  __chkstk_darwin(v13 - 8);
  v129 = &v111 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v132 = &v111 - v16;
  v17 = type metadata accessor for SleepingSampleDataType();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v123 = &v111 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v111 - v21;
  v23 = sub_100140278(&qword_1008E9840, &qword_1006F5A30);
  v24 = v23 - 8;
  __chkstk_darwin(v23);
  v26 = (&v111 - v25);
  v125 = sub_100140278(&qword_1008F0850, &unk_1006F5A38) - 8;
  __chkstk_darwin(v125);
  v126 = &v111 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v124 = &v111 - v29;
  __chkstk_darwin(v30);
  v131 = &v111 - v31;
  SleepingSampleViewModel.dataType.getter();
  v120 = SleepingSampleDataType.preferredImage.getter();
  v122 = *(v18 + 8);
  v122(v22, v17);
  v32 = (v26 + *(v24 + 44));
  v33 = v26;
  v34 = *(sub_100140278(&qword_1008E97F8, &qword_1006EA330) + 28);
  v35 = enum case for Image.Scale.small(_:);
  v36 = type metadata accessor for Image.Scale();
  v37 = v32 + v34;
  v38 = a1;
  (*(*(v36 - 8) + 104))(v37, v35, v36);
  *v32 = swift_getKeyPath();
  v39 = v33;
  *v33 = v120;
  LOBYTE(v35) = static Edge.Set.trailing.getter();
  SleepingSampleViewModel.dataType.getter();
  v40 = v123;
  (*(v18 + 104))(v123, enum case for SleepingSampleDataType.bloodOxygen(_:), v17);
  sub_1004EFA78(&qword_1008E0510, &type metadata accessor for SleepingSampleDataType, &protocol conformance descriptor for SleepingSampleDataType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v41 = v40;
  v42 = v122;
  v122(v41, v17);
  v42(v22, v17);
  EdgeInsets.init(_all:)();
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v51 = v124;
  sub_100015E80(v39, v124, &qword_1008E9840, &qword_1006F5A30);
  v52 = v51 + *(v125 + 44);
  *v52 = v35;
  *(v52 + 8) = v44;
  *(v52 + 16) = v46;
  *(v52 + 24) = v48;
  *(v52 + 32) = v50;
  *(v52 + 40) = 0;
  sub_100015E80(v51, v131, &qword_1008F0850, &unk_1006F5A38);
  SleepingSampleViewModel.dataType.getter();
  v53 = SleepingSampleDataType.localizedName.getter();
  v55 = v54;
  v56 = v17;
  v57 = v121;
  v42(v22, v56);
  *&v148 = v53;
  *(&v148 + 1) = v55;
  sub_10000FCBC();
  v58 = Text.init<A>(_:)();
  v60 = v59;
  LOBYTE(v55) = v61;
  static Font.body.getter();
  v62 = Text.font(_:)();
  v123 = v63;
  v124 = v62;
  LODWORD(v122) = v64;
  v125 = v65;

  sub_10004642C(v58, v60, v55 & 1);

  DetailsStackedChartView = type metadata accessor for LoadDetailsStackedChartView(0);
  v67 = v57 + *(DetailsStackedChartView + 56);
  v68 = *v67;
  v69 = *(v67 + 8);
  LOBYTE(v148) = v68;
  *(&v148 + 1) = v69;
  sub_100140278(&qword_1008F0518, &unk_1006F56A0);
  State.wrappedValue.getter();
  if (v133)
  {
    v70 = v132;
    v71 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v71 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else
  {

    v70 = v132;
  }

  if (sub_1004DEC98())
  {
LABEL_6:
    (*(v127 + 56))(v70, 1, 1, v128);
    goto LABEL_11;
  }

  v120 = DetailsStackedChartView;
  v72 = static VerticalAlignment.firstTextBaseline.getter();
  LOBYTE(v138) = 0;
  sub_1004E9424(v38, &v148);
  v143 = v152;
  v144 = v153;
  v145 = v154;
  v139 = v148;
  v140 = v149;
  v141 = v150;
  v142 = v151;
  v146[0] = v148;
  v146[1] = v149;
  v146[2] = v150;
  v146[3] = v151;
  v146[4] = v152;
  v146[5] = v153;
  v147 = v154;
  sub_10001B104(&v139, &v133, &qword_1008F0860, &qword_1006F5A80);
  sub_10000EA04(v146, &qword_1008F0860, &qword_1006F5A80);
  *(&v137[3] + 7) = v142;
  *(&v137[4] + 7) = v143;
  *(&v137[5] + 7) = v144;
  *(v137 + 7) = v139;
  *(&v137[1] + 7) = v140;
  *(&v137[6] + 7) = v145;
  *(&v137[2] + 7) = v141;
  v73 = v138;
  v74 = SleepingSampleViewModel.primaryTintColor.getter();
  v75 = static Font.body.getter();
  KeyPath = swift_getKeyPath();
  *(&v134[3] + 1) = v137[3];
  *(&v134[4] + 1) = v137[4];
  *(&v134[5] + 1) = v137[5];
  v134[6] = *(&v137[5] + 15);
  *(v134 + 1) = v137[0];
  *(&v134[1] + 1) = v137[1];
  *&v133 = v72;
  *(&v133 + 1) = 0x4000000000000000;
  LOBYTE(v134[0]) = v73;
  *(&v134[2] + 1) = v137[2];
  *&v135 = v74;
  *(&v135 + 1) = KeyPath;
  v136 = v75;
  static Font.Weight.medium.getter();
  v77 = sub_100140278(&qword_1008F0868, &qword_1006F5A88);
  v78 = sub_1004F30D0();
  v79 = v112;
  View.fontWeight(_:)();
  v154 = v134[5];
  v155 = v134[6];
  v156 = v135;
  v157 = v136;
  v150 = v134[1];
  v151 = v134[2];
  v152 = v134[3];
  v153 = v134[4];
  v148 = v133;
  v149 = v134[0];
  sub_10000EA04(&v148, &qword_1008F0868, &qword_1006F5A88);
  v80 = enum case for Font.Design.rounded(_:);
  v81 = type metadata accessor for Font.Design();
  v82 = *(v81 - 8);
  v83 = v118;
  (*(v82 + 104))(v118, v80, v81);
  (*(v82 + 56))(v83, 0, 1, v81);
  *&v133 = v77;
  *(&v133 + 1) = v78;
  swift_getOpaqueTypeConformance2();
  v84 = v119;
  v85 = v115;
  View.fontDesign(_:)();
  sub_10000EA04(v83, &qword_1008DC448, &qword_1006D48C0);
  (*(v114 + 8))(v79, v85);
  LOBYTE(v80) = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v86 = v84 + *(v113 + 36);
  *v86 = v80;
  *(v86 + 8) = v87;
  *(v86 + 16) = v88;
  *(v86 + 24) = v89;
  *(v86 + 32) = v90;
  *(v86 + 40) = 0;
  v91 = v57 + *(v120 + 48);
  v92 = *v91;
  v93 = *(v91 + 8);
  LOBYTE(v133) = v92;
  *(&v133 + 1) = v93;
  sub_100140278(&qword_1008DDBB8, &qword_1006D6FD0);
  State.wrappedValue.getter();
  if (v138)
  {
    v94 = 0.6;
  }

  else
  {
    v94 = 1.0;
  }

  v95 = v117;
  sub_100015E80(v84, v117, &qword_1008F0838, &qword_1006F5A18);
  v96 = v128;
  *(v95 + *(v128 + 36)) = v94;
  v97 = v95;
  v98 = v116;
  sub_100015E80(v97, v116, &qword_1008F0840, &qword_1006F5A20);
  sub_100015E80(v98, v70, &qword_1008F0840, &qword_1006F5A20);
  (*(v127 + 56))(v70, 0, 1, v96);
LABEL_11:
  v99 = v131;
  v100 = v126;
  sub_10001B104(v131, v126, &qword_1008F0850, &unk_1006F5A38);
  v101 = v70;
  v102 = v129;
  sub_10001B104(v101, v129, &qword_1008F0848, &qword_1006F5A28);
  v103 = v130;
  sub_10001B104(v100, v130, &qword_1008F0850, &unk_1006F5A38);
  v104 = sub_100140278(&qword_1008F0858, &qword_1006F5A78);
  v105 = v103 + v104[12];
  v107 = v123;
  v106 = v124;
  *v105 = v124;
  *(v105 + 8) = v107;
  v108 = v122 & 1;
  *(v105 + 16) = v122 & 1;
  *(v105 + 24) = v125;
  v109 = v103 + v104[16];
  *v109 = 0;
  *(v109 + 8) = 0;
  sub_10001B104(v102, v103 + v104[20], &qword_1008F0848, &qword_1006F5A28);
  sub_10006965C(v106, v107, v108);

  sub_10000EA04(v132, &qword_1008F0848, &qword_1006F5A28);
  sub_10000EA04(v99, &qword_1008F0850, &unk_1006F5A38);
  sub_10000EA04(v102, &qword_1008F0848, &qword_1006F5A28);
  sub_10004642C(v106, v107, v108);

  return sub_10000EA04(v100, &qword_1008F0850, &unk_1006F5A38);
}

uint64_t sub_1004E9424@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v95 = a2;
  v3 = type metadata accessor for Text.Scale();
  v90 = *(v3 - 8);
  v91 = v3;
  __chkstk_darwin(v3);
  v89 = &v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SleepingSampleDataType();
  v93 = *(v5 - 8);
  v94 = v5;
  __chkstk_darwin(v5);
  v88 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v80 - v8;
  v87 = type metadata accessor for LocalizationFeature();
  v10 = *(v87 - 8);
  __chkstk_darwin(v87);
  v12 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100140278(&unk_1008EE8E0, qword_1006E2D40);
  __chkstk_darwin(v13 - 8);
  v15 = &v80 - v14;
  v16 = type metadata accessor for AttributedString();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v80 - v21;
  SleepingSampleViewModel.formattedCurrentAggregateValue.getter();
  v23 = (*(v17 + 48))(v15, 1, v16);
  v92 = v9;
  if (v23 == 1)
  {
    sub_10000EA04(v15, &unk_1008EE8E0, qword_1006E2D40);
    v24 = v87;
    (*(v10 + 104))(v12, enum case for LocalizationFeature.workout(_:), v87);
    v25 = static Localization.workoutUILocalizedString(_:feature:)();
    v27 = v26;
    (*(v10 + 8))(v12, v24);
    v98.value._countAndFlagsBits = v25;
    v98.value._object = v27;
    sub_10000FCBC();
    v28 = Text.init<A>(_:)();
    v109 = v29 & 1;
    v108 = 1;
    v115.value._countAndFlagsBits = v28;
    v115.value._object = v30;
    LOBYTE(v116) = v29 & 1;
    *(&v116 + 1) = v96[0];
    DWORD1(v116) = *(v96 + 3);
    *(&v116 + 1) = v31;
    v117 = v103;
    v118 = v104;
    v119 = 1;
    sub_100140278(&qword_1008F0898, &qword_1006F5AA8);
    sub_10014A6B0(&qword_1008F08A0, &qword_1008F0898, &qword_1006F5AA8, &protocol conformance descriptor for TupleView<A>);
    _ConditionalContent<>.init(storage:)();
    v112 = v100;
    v113 = v101;
    v114 = v102;
    v110 = v98;
    v111 = v99;
    v117 = v100;
    v118 = v101;
    v119 = v102;
    v115 = v98;
    v116 = v99;
    v32 = v95;
  }

  else
  {
    (*(v17 + 32))(v22, v15, v16);
    (*(v17 + 16))(v19, v22, v16);
    v82 = Text.init(_:)();
    v83 = v33;
    v81 = v34;
    v80 = v35;
    v87 = a1;
    SleepingSampleViewModel.dataType.getter();
    v36 = v93;
    v37 = v94;
    v38 = v88;
    (*(v93 + 104))(v88, enum case for SleepingSampleDataType.wristTemperature(_:), v94);
    sub_1004EFA78(&qword_1008E0510, &type metadata accessor for SleepingSampleDataType, &protocol conformance descriptor for SleepingSampleDataType);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v39 = *(v36 + 8);
    v39(v38, v37);
    v39(v9, v37);
    v85 = v17;
    v86 = v16;
    v84 = v22;
    if (v98.value._countAndFlagsBits == v115.value._countAndFlagsBits)
    {
      LocalizedStringKey.init(stringLiteral:)();
      v40 = Text.init(_:tableName:bundle:comment:)();
      v42 = v41;
      v44 = v43;
      v45 = v89;
      static Text.Scale.secondary.getter();
      v46 = Text.textScale(_:isEnabled:)();
      v48 = v47;
      v50 = v49;
      v52 = v51;
      sub_10004642C(v40, v42, v44 & 1);

      (*(v90 + 8))(v45, v91);
      v53 = v50 & 1;
      sub_10006965C(v46, v48, v50 & 1);
    }

    else
    {
      v46 = 0;
      v48 = 0;
      v53 = 0;
      v52 = 0;
    }

    v54 = v81 & 1;
    LOBYTE(v96[0]) = v81 & 1;
    v56 = v82;
    v55 = v83;
    sub_10006965C(v82, v83, v81 & 1);
    v57 = v80;

    sub_10006965C(v56, v55, v54);

    sub_1001E53F8(v46, v48, v53, v52);
    sub_1001E543C(v46, v48, v53, v52);
    sub_10004642C(v56, v55, v54);

    LOBYTE(v103.value._countAndFlagsBits) = 0;
    v98.value._countAndFlagsBits = v56;
    v98.value._object = v55;
    LOBYTE(v99) = v96[0];
    *(&v99 + 1) = v57;
    v100.value._countAndFlagsBits = v46;
    v100.value._object = v48;
    *&v101 = v53;
    *(&v101 + 1) = v52;
    LOBYTE(v102) = 0;
    sub_10006965C(v56, v55, v54);

    sub_1001E53F8(v46, v48, v53, v52);
    sub_10006965C(v56, v55, v54);

    sub_1001E53F8(v46, v48, v53, v52);
    sub_100140278(&qword_1008F0898, &qword_1006F5AA8);
    sub_10014A6B0(&qword_1008F08A0, &qword_1008F0898, &qword_1006F5AA8, &protocol conformance descriptor for TupleView<A>);
    _ConditionalContent<>.init(storage:)();
    sub_1001E543C(v46, v48, v53, v52);
    sub_10004642C(v56, v55, v54);

    sub_1001E543C(v46, v48, v53, v52);
    sub_10004642C(v56, v55, v54);

    sub_1001E543C(v46, v48, v53, v52);
    sub_10004642C(v56, v55, v54);

    (*(v85 + 8))(v84, v86);
    LOBYTE(v102) = v119;
    v100 = v117;
    v101 = v118;
    v98 = v115;
    v99 = v116;
    v112 = v117;
    v113 = v118;
    v114 = v119;
    v110 = v115;
    v111 = v116;
    v32 = v95;
  }

  v58 = v94;
  sub_10001B104(&v115, &v98, &qword_1008F08A8, &qword_1006F5AB0);
  v59 = v92;
  SleepingSampleViewModel.dataType.getter();
  v60 = SleepingSampleViewModel.preferredAggregateValueUnit.getter();
  v61 = SleepingSampleDataType.localizedUnitString(for:)(v60);
  object = v61.value._object;

  (*(v93 + 8))(v59, v58);
  if (v61.value._object)
  {
    v98 = v61;
    sub_10000FCBC();
    v63 = Text.init<A>(_:)();
    v65 = v64;
    v67 = v66;
    v68 = v89;
    static Text.Scale.secondary.getter();
    v69 = Text.textScale(_:isEnabled:)();
    object = v70;
    v72 = v71;
    v74 = v73;
    sub_10004642C(v63, v65, v67 & 1);
    v32 = v95;

    (*(v90 + 8))(v68, v91);
    v75 = v72 & 1;
    sub_10006965C(v69, object, v72 & 1);
  }

  else
  {
    v69 = 0;
    v75 = 0;
    v74 = 0;
  }

  v96[2] = v112;
  v96[3] = v113;
  v97 = v114;
  v96[0] = v110;
  v96[1] = v111;
  v100 = v112;
  v101 = v113;
  LOBYTE(v102) = v114;
  v98 = v110;
  v99 = v111;
  sub_10001B104(v96, &v103, &qword_1008F08B0, &qword_1006F5AB8);
  sub_1001E53F8(v69, object, v75, v74);
  sub_10000EA04(&v115, &qword_1008F08A8, &qword_1006F5AB0);
  sub_1001E543C(v69, object, v75, v74);
  v76 = v101;
  *(v32 + 32) = v100;
  *(v32 + 48) = v76;
  v77 = v102;
  v78 = v99;
  *v32 = v98;
  *(v32 + 16) = v78;
  *(v32 + 64) = v77;
  *(v32 + 72) = v69;
  *(v32 + 80) = object;
  *(v32 + 88) = v75;
  *(v32 + 96) = v74;
  sub_1001E543C(v69, object, v75, v74);
  v105 = v112;
  v106 = v113;
  v107 = v114;
  v103 = v110;
  v104 = v111;
  return sub_10000EA04(&v103, &qword_1008F08A8, &qword_1006F5AB0);
}

uint64_t sub_1004E9EF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v105 = a3;
  v106 = a1;
  v104 = sub_100140278(&qword_1008F0768, &qword_1006F5980);
  __chkstk_darwin(v104);
  v97 = v79 - v4;
  v94 = sub_100140278(&qword_1008F0770, &qword_1006F5988);
  v93 = *(v94 - 8);
  __chkstk_darwin(v94);
  v85 = (v79 - v5);
  v6 = sub_100140278(&qword_1008F0778, &qword_1006F5990);
  __chkstk_darwin(v6 - 8);
  v95 = v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v96 = v79 - v9;
  v88 = sub_100140278(&qword_1008F0780, &qword_1006F5998);
  __chkstk_darwin(v88);
  v86 = v79 - v10;
  v91 = sub_100140278(&qword_1008F0788, &qword_1006F59A0);
  v90 = *(v91 - 8);
  __chkstk_darwin(v91);
  v87 = v79 - v11;
  v89 = sub_100140278(&qword_1008F0790, &qword_1006F59A8);
  __chkstk_darwin(v89);
  v92 = v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v102 = v79 - v14;
  v103 = sub_100140278(&qword_1008F0798, &qword_1006F59B0);
  __chkstk_darwin(v103);
  v16 = v79 - v15;
  v17 = sub_100140278(&qword_1008F07A0, &qword_1006F59B8);
  __chkstk_darwin(v17);
  v19 = v79 - v18;
  v20 = type metadata accessor for DayIndex();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = v79 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  DetailsStackedChartView = type metadata accessor for LoadDetailsStackedChartView(0);
  v25 = DetailsStackedChartView[11];
  v26 = sub_100140278(&qword_1008F0328, qword_1006F5548);
  v82 = v25;
  v81 = v26;
  State.wrappedValue.getter();
  v27 = (a2 + DetailsStackedChartView[12]);
  v28 = *v27;
  v29 = *(v27 + 1);
  v101 = v28;
  LOBYTE(v108) = v28;
  v100 = v29;
  *(&v108 + 1) = v29;
  v99 = sub_100140278(&qword_1008DDBB8, &qword_1006D6FD0);
  State.wrappedValue.getter();
  v30 = v112;
  v31 = (a2 + DetailsStackedChartView[14]);
  v32 = *v31;
  v33 = *(v31 + 1);
  LOBYTE(v108) = v32;
  *(&v108 + 1) = v33;
  sub_100140278(&qword_1008F0518, &unk_1006F56A0);
  State.wrappedValue.getter();
  v35 = sub_100553BAC(v23, v30, v34);
  v36 = *(v21 + 8);
  v84 = v20;
  v83 = v21 + 8;
  v36(v23, v20);
  v98 = a2;
  if (sub_1004DEC98())
  {

    *&v108 = _swiftEmptyArrayStorage;
    *(&v108 + 1) = _swiftEmptyArrayStorage;
    v109 = 0uLL;
    LOBYTE(v110) = 1;
    *(&v110 + 1) = _swiftEmptyArrayStorage;
    v111 = 0;
    sub_1004F2DDC();
    View.chartXAxis(_:)();
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v37 = &v19[*(v17 + 36)];
    v38 = v109;
    *v37 = v108;
    *(v37 + 1) = v38;
    *(v37 + 2) = v110;
    v39 = &qword_1008F07A0;
    v40 = &qword_1006F59B8;
    sub_10001B104(v19, v16, &qword_1008F07A0, &qword_1006F59B8);
    swift_storeEnumTagMultiPayload();
    sub_1004F2E30();
    sub_10014A6B0(&qword_1008F07C8, &qword_1008F0768, &qword_1006F5980, &protocol conformance descriptor for TupleView<A>);
    _ConditionalContent<>.init(storage:)();
    v41 = v19;
  }

  else
  {
    v79[0] = v36;
    v79[2] = v17;
    v80 = v16;
    v42 = v106;
    v43 = SleepingSampleViewModel.chronologicalBaselineComparisons.getter();
    __chkstk_darwin(v43);
    v79[-2] = v42;
    v44 = sub_100666FD4(sub_1004F2DC0, &v79[-4], v43);
    v79[1] = v44;

    SleepingSampleViewModel.chartableMedialRange.getter();
    v46 = v45;
    v48 = v47;
    v49 = v35;
    v50 = SleepingSampleViewModel.keyDatesForTimeAxis.getter();
    LOBYTE(v108) = v101;
    *(&v108 + 1) = v100;
    State.wrappedValue.getter();
    *&v108 = v44;
    *(&v108 + 1) = v49;
    *&v109 = v46;
    *(&v109 + 1) = v48;
    LOBYTE(v110) = 0;
    *(&v110 + 1) = v50;
    v111 = v112;
    v51 = v86;
    sub_1004E317C(v86);
    static GestureMask.all.getter();
    v52 = sub_1004F2DDC();
    v53 = sub_10014A6B0(&qword_1008F07B0, &qword_1008F0780, &qword_1006F5998, &protocol conformance descriptor for SimultaneousGesture<A, B>);
    v54 = v87;
    v55 = v88;
    View.gesture<A>(_:including:)();
    sub_10000EA04(v51, &qword_1008F0780, &qword_1006F5998);

    *&v108 = &type metadata for SleepingSampleMetricChartView;
    *(&v108 + 1) = v55;
    *&v109 = v52;
    *(&v109 + 1) = v53;
    swift_getOpaqueTypeConformance2();
    v56 = v102;
    v57 = v91;
    View.chartXAxis(_:)();
    (*(v90 + 8))(v54, v57);
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v58 = (v56 + *(v89 + 36));
    v59 = v113;
    *v58 = v112;
    v58[1] = v59;
    v58[2] = v114;
    LOBYTE(v108) = v101;
    *(&v108 + 1) = v100;
    State.wrappedValue.getter();
    if (v107 == 1)
    {
      v60 = v98;
      if (sub_1004DE740())
      {
        v61 = 171.6;
      }

      else
      {
        v61 = 83.8;
      }

      v62 = static VerticalAlignment.center.getter();
      v63 = v85;
      *v85 = v62;
      *(v63 + 8) = 0x4000000000000000;
      *(v63 + 16) = 0;
      v64 = sub_100140278(&qword_1008F07D0, &qword_1006F59C8);
      sub_1004EAB60(v49, v106, v60, v63 + *(v64 + 44));

      static Alignment.center.getter();
      _FrameLayout.init(width:height:alignment:)();
      v65 = (v63 + *(sub_100140278(&qword_1008F07D8, &qword_1006F59D0) + 36));
      v66 = v109;
      *v65 = v108;
      v65[1] = v66;
      v65[2] = v110;
      State.wrappedValue.getter();
      v67.n128_f64[0] = v61;
      sub_1004E38E0(v67);
      v69 = v68;
      (v79[0])(v23, v84);
      v70 = v94;
      v71 = (v63 + *(v94 + 36));
      *v71 = v69;
      v71[1] = 0xC049000000000000;
      v72 = v96;
      sub_100015E80(v63, v96, &qword_1008F0770, &qword_1006F5988);
      v73 = 0;
    }

    else
    {

      v73 = 1;
      v72 = v96;
      v70 = v94;
    }

    (*(v93 + 56))(v72, v73, 1, v70);
    v39 = &qword_1008F0790;
    v40 = &qword_1006F59A8;
    v74 = v92;
    sub_10001B104(v56, v92, &qword_1008F0790, &qword_1006F59A8);
    v75 = v95;
    sub_10001B104(v72, v95, &qword_1008F0778, &qword_1006F5990);
    v76 = v97;
    sub_10001B104(v74, v97, &qword_1008F0790, &qword_1006F59A8);
    v77 = sub_100140278(&qword_1008F07B8, &qword_1006F59C0);
    sub_10001B104(v75, v76 + *(v77 + 48), &qword_1008F0778, &qword_1006F5990);
    sub_10000EA04(v75, &qword_1008F0778, &qword_1006F5990);
    sub_10000EA04(v74, &qword_1008F0790, &qword_1006F59A8);
    sub_10001B104(v76, v80, &qword_1008F0768, &qword_1006F5980);
    swift_storeEnumTagMultiPayload();
    sub_1004F2E30();
    sub_10014A6B0(&qword_1008F07C8, &qword_1008F0768, &qword_1006F5980, &protocol conformance descriptor for TupleView<A>);
    _ConditionalContent<>.init(storage:)();
    sub_10000EA04(v76, &qword_1008F0768, &qword_1006F5980);
    sub_10000EA04(v72, &qword_1008F0778, &qword_1006F5990);
    v41 = v102;
  }

  return sub_10000EA04(v41, v39, v40);
}

uint64_t sub_1004EAB60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v120 = a4;
  v8 = type metadata accessor for DayIndex();
  v116 = *(v8 - 8);
  v117 = v8;
  __chkstk_darwin(v8);
  v114 = &v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v115 = &v98 - v11;
  v12 = sub_100140278(&qword_1008F07E0, &qword_1006F59D8);
  __chkstk_darwin(v12 - 8);
  v124 = &v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v127 = &v98 - v15;
  v125 = sub_100140278(&qword_1008F07E8, &qword_1006F59E0);
  __chkstk_darwin(v125);
  v126 = &v98 - v16;
  v17 = type metadata accessor for SleepingSampleChartLollipopView(0);
  __chkstk_darwin(v17);
  v19 = &v98 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100140278(&qword_1008F07F0, &qword_1006F59E8);
  v121 = *(v20 - 8);
  v122 = v20;
  __chkstk_darwin(v20);
  v123 = &v98 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v118 = &v98 - v23;
  __chkstk_darwin(v24);
  v119 = &v98 - v25;
  v26 = *(a1 + 16);
  v113 = a2;
  if (v26)
  {
    v104 = v26;
    v27 = type metadata accessor for SleepingSampleBaselineRelativeChartPoint(0);
    v100 = *(v27 - 8);
    v103 = v27 - 8;
    v28 = v100;
    v112 = (*(v28 + 80) + 32) & ~*(v28 + 80);
    v29 = type metadata accessor for SleepingSampleViewModel();
    v99 = *(v29 - 8);
    v102 = v29 - 8;
    v30 = *(v99 + 16);
    v108 = v29;
    v30(v19, a2);
    DetailsStackedChartView = type metadata accessor for LoadDetailsStackedChartView(0);
    v32 = (a3 + *(DetailsStackedChartView + 56));
    v33 = *v32;
    v34 = *(v32 + 1);
    v107 = v33;
    LOBYTE(v128) = v33;
    v106 = v34;
    v129 = v34;
    sub_100140278(&qword_1008F0518, &unk_1006F56A0);
    State.wrappedValue.getter();
    v35 = v131;
    sub_100140278(&qword_1008F0328, qword_1006F5548);
    State.wrappedValue.getter();
    v36 = v17[7];
    v101 = a1;
    sub_1004F2EE8(a1 + v112, &v19[v36], type metadata accessor for SleepingSampleBaselineRelativeChartPoint);
    v37 = *(v28 + 56);
    v38 = 1;
    v112 = v27;
    v37(&v19[v36], 0, 1, v27);
    v111 = DetailsStackedChartView;
    v39 = (a3 + *(DetailsStackedChartView + 48));
    v40 = *v39;
    v41 = *(v39 + 1);
    v110 = v40;
    LOBYTE(v131) = v40;
    v109 = v41;
    v132 = v41;
    sub_100140278(&qword_1008DDBB8, &qword_1006D6FD0);
    State.projectedValue.getter();
    v42 = v128;
    v43 = v129;
    v19[v17[5]] = v35;
    v44 = v130;
    v19[v17[8]] = 1;
    v45 = &v19[v17[9]];
    *v45 = v42;
    *(v45 + 1) = v43;
    v45[16] = v44;
    v46 = v17[10];
    *&v19[v46] = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleLargeTitle];
    sub_1004F2EE8(v19, v126, type metadata accessor for SleepingSampleChartLollipopView);
    swift_storeEnumTagMultiPayload();
    sub_1004EFA78(&qword_1008F07F8, type metadata accessor for SleepingSampleChartLollipopView, &unk_1006DBFD0);
    v47 = v119;
    _ConditionalContent<>.init(storage:)();
    sub_1004F2F50(v19);
    if (sub_1004DE740())
    {
      v105 = UIFontTextStyleLargeTitle;
      if (v104 != 1)
      {
        v80 = v100;
        v104 = (*(v80 + 80) + 32) & ~*(v80 + 80);
        v103 = v101 + *(v100 + 72);
        (*(v99 + 16))(v19, v113, v108);
        LOBYTE(v128) = v107;
        v129 = v106;
        sub_100140278(&qword_1008F0518, &unk_1006F56A0);
        State.wrappedValue.getter();
        LODWORD(v113) = v131;
        sub_100140278(&qword_1008F0328, qword_1006F5548);
        v81 = v115;
        State.wrappedValue.getter();
        v82 = v114;
        DayIndex.init(integerLiteral:)();
        static DayIndex.+ infix(_:_:)();
        v83 = *(v116 + 8);
        v84 = v82;
        v85 = v117;
        v83(v84, v117);
        v83(v81, v85);
        v86 = v17[7];
        sub_1004F2EE8(v103 + v104, &v19[v86], type metadata accessor for SleepingSampleBaselineRelativeChartPoint);
        (*(v80 + 56))(&v19[v86], 0, 1, v112);
        LOBYTE(v131) = v110;
        v132 = v109;
        sub_100140278(&qword_1008DDBB8, &qword_1006D6FD0);
        State.projectedValue.getter();
        v87 = v128;
        v88 = v129;
        v89 = v130;
        v19[v17[5]] = v113;
        v19[v17[8]] = 0;
        v90 = &v19[v17[9]];
        *v90 = v87;
        *(v90 + 1) = v88;
        v90[16] = v89;
        v91 = v17[10];
        *&v19[v91] = [objc_opt_self() preferredFontForTextStyle:v105];
        sub_1004F2EE8(v19, v126, type metadata accessor for SleepingSampleChartLollipopView);
        swift_storeEnumTagMultiPayload();
        v79 = v118;
        goto LABEL_8;
      }

LABEL_6:
      type metadata accessor for SleepingSampleViewModel();
      (*(*(v108 - 8) + 16))(v19, v113);
      LOBYTE(v128) = v107;
      v129 = v106;
      sub_100140278(&qword_1008F0518, &unk_1006F56A0);
      State.wrappedValue.getter();
      v67 = v131;
      type metadata accessor for LoadDetailsStackedChartView(0);
      sub_100140278(&qword_1008F0328, qword_1006F5548);
      v68 = v115;
      State.wrappedValue.getter();
      v69 = v114;
      DayIndex.init(integerLiteral:)();
      static DayIndex.+ infix(_:_:)();
      v70 = *(v116 + 8);
      v71 = v69;
      v72 = v117;
      v70(v71, v117);
      v70(v68, v72);
      v73 = v17[7];
      type metadata accessor for SleepingSampleBaselineRelativeChartPoint(0);
      (*(*(v112 - 8) + 56))(&v19[v73], 1, 1);
      LOBYTE(v131) = v110;
      v132 = v109;
      sub_100140278(&qword_1008DDBB8, &qword_1006D6FD0);
      State.projectedValue.getter();
      v74 = v128;
      v75 = v129;
      v19[v17[5]] = v67;
      v76 = v130;
      v19[v17[8]] = 0;
      v77 = &v19[v17[9]];
      *v77 = v74;
      *(v77 + 1) = v75;
      v77[16] = v76;
      v78 = v17[10];
      *&v19[v78] = [objc_opt_self() preferredFontForTextStyle:v105];
      sub_1004F2EE8(v19, v126, type metadata accessor for SleepingSampleChartLollipopView);
      swift_storeEnumTagMultiPayload();
      sub_1004EFA78(&qword_1008F07F8, type metadata accessor for SleepingSampleChartLollipopView, &unk_1006DBFD0);
      v79 = v118;
LABEL_8:
      _ConditionalContent<>.init(storage:)();
      sub_1004F2F50(v19);
      sub_100015E80(v79, v127, &qword_1008F07F0, &qword_1006F59E8);
      v38 = 0;
    }
  }

  else
  {
    v48 = type metadata accessor for SleepingSampleViewModel();
    v49 = *(*(v48 - 8) + 16);
    v108 = v48;
    v49(v19, a2);
    v50 = type metadata accessor for LoadDetailsStackedChartView(0);
    v51 = (a3 + *(v50 + 56));
    v52 = *v51;
    v53 = *(v51 + 1);
    v107 = v52;
    LOBYTE(v128) = v52;
    v106 = v53;
    v129 = v53;
    sub_100140278(&qword_1008F0518, &unk_1006F56A0);
    State.wrappedValue.getter();
    v54 = v131;
    sub_100140278(&qword_1008F0328, qword_1006F5548);
    State.wrappedValue.getter();
    v55 = v17[7];
    v56 = type metadata accessor for SleepingSampleBaselineRelativeChartPoint(0);
    v57 = *(*(v56 - 8) + 56);
    v38 = 1;
    v112 = v56;
    v57(&v19[v55], 1, 1);
    v111 = v50;
    v58 = (a3 + *(v50 + 48));
    v59 = *v58;
    v60 = *(v58 + 1);
    v110 = v59;
    LOBYTE(v131) = v59;
    v109 = v60;
    v132 = v60;
    sub_100140278(&qword_1008DDBB8, &qword_1006D6FD0);
    State.projectedValue.getter();
    v61 = v128;
    v62 = v129;
    v19[v17[5]] = v54;
    v63 = v130;
    v19[v17[8]] = 1;
    v64 = &v19[v17[9]];
    *v64 = v61;
    *(v64 + 1) = v62;
    v64[16] = v63;
    v65 = v17[10];
    v66 = objc_opt_self();
    v105 = UIFontTextStyleLargeTitle;
    *&v19[v65] = [v66 preferredFontForTextStyle:?];
    sub_1004F2EE8(v19, v126, type metadata accessor for SleepingSampleChartLollipopView);
    swift_storeEnumTagMultiPayload();
    sub_1004EFA78(&qword_1008F07F8, type metadata accessor for SleepingSampleChartLollipopView, &unk_1006DBFD0);
    v47 = v119;
    _ConditionalContent<>.init(storage:)();
    sub_1004F2F50(v19);
    if (sub_1004DE740())
    {
      goto LABEL_6;
    }
  }

  v92 = v127;
  (*(v121 + 56))(v127, v38, 1, v122);
  v93 = v123;
  sub_10001B104(v47, v123, &qword_1008F07F0, &qword_1006F59E8);
  v94 = v124;
  sub_10001B104(v92, v124, &qword_1008F07E0, &qword_1006F59D8);
  v95 = v120;
  sub_10001B104(v93, v120, &qword_1008F07F0, &qword_1006F59E8);
  v96 = sub_100140278(&qword_1008F0800, &qword_1006F59F0);
  sub_10001B104(v94, v95 + *(v96 + 48), &qword_1008F07E0, &qword_1006F59D8);
  sub_10000EA04(v92, &qword_1008F07E0, &qword_1006F59D8);
  sub_10000EA04(v47, &qword_1008F07F0, &qword_1006F59E8);
  sub_10000EA04(v94, &qword_1008F07E0, &qword_1006F59D8);
  return sub_10000EA04(v93, &qword_1008F07F0, &qword_1006F59E8);
}

void sub_1004EB9E4(uint64_t a1)
{
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004EBC8C();
  DetailsStackedChartView = type metadata accessor for LoadDetailsStackedChartView(0);
  v7 = (a1 + *(DetailsStackedChartView + 52));
  v9 = *v7;
  v8 = v7[1];
  v27 = *v7;
  v28 = v8;
  sub_100140278(&qword_1008F0550, &qword_1006F5728);
  State.wrappedValue.getter();
  v10 = v26[2];

  if (!v10)
  {
    v11 = a1 + *(DetailsStackedChartView + 68);
    v12 = *v11;
    if (*(v11 + 8) == 1)
    {
      v13 = v12;
    }

    else
    {

      v14 = static os_log_type_t.fault.getter();
      v15 = static Log.runtimeIssuesLog.getter();
      v25 = v2;
      v16 = v15;
      os_log(_:dso:log:_:_:)(v14, &_mh_execute_header, v15, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

      v2 = v25;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      v17 = sub_1000A73A4(v12, 0);
      (*(v3 + 8))(v5, v2, v17);
      v13 = v27;
    }

    v18 = sub_1001D3C20();

    v27 = v9;
    v28 = v8;
    v26 = v18;
    State.wrappedValue.setter();
  }

  v19 = a1 + *(DetailsStackedChartView + 68);
  v20 = *v19;
  if (*(v19 + 8) == 1)
  {
    v21 = v20;
  }

  else
  {

    v22 = static os_log_type_t.fault.getter();
    v23 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v22, &_mh_execute_header, v23, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v24 = sub_1000A73A4(v20, 0);
    (*(v3 + 8))(v5, v2, v24);
    v21 = v27;
  }

  sub_1001D9610();
}

uint64_t sub_1004EBC8C()
{
  v1 = v0;
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  DetailsStackedChartView = type metadata accessor for LoadDetailsStackedChartView(0);
  v7 = v0 + DetailsStackedChartView[17];
  v8 = *v7;
  v9 = *(v7 + 8);
  v29 = v3;
  v30 = v2;
  if (v9 == 1)
  {
    v10 = v8;
  }

  else
  {

    v11 = static os_log_type_t.fault.getter();
    v12 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, v12, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v13 = sub_1000A73A4(v8, 0);
    (*(v3 + 8))(v5, v2, v13);
    v10 = v32;
  }

  swift_getKeyPath();
  *&v32 = v10;
  sub_1004EFA78(&qword_1008DCD90, type metadata accessor for BalanceDataProvider, &unk_1006DBB08);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v14 = *&v10[OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider__historyItemsInDayRange];

  __chkstk_darwin(v15);
  *(&v28 - 2) = v1;
  v16 = sub_10066682C(sub_1004F2958, (&v28 - 4), v14);

  v17 = (v1 + DetailsStackedChartView[7]);
  v19 = *v17;
  v18 = v17[1];
  *&v32 = v19;
  *(&v32 + 1) = v18;
  v31 = v16;
  sub_100140278(&qword_1008F0558, &qword_1006F5758);
  State.wrappedValue.setter();
  if (v9)
  {
    v20 = v8;
  }

  else
  {

    v21 = static os_log_type_t.fault.getter();
    v22 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v21, &_mh_execute_header, v22, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v23 = sub_1000A73A4(v8, 0);
    (*(v29 + 8))(v5, v30, v23);
    v20 = v32;
  }

  swift_getKeyPath();
  *&v32 = v20;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v24 = *&v20[OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider__activitySummaries];

  __chkstk_darwin(v25);
  *(&v28 - 2) = v1;
  v26 = sub_10042C650(sub_1004F2974, (&v28 - 4), v24);

  v32 = *(v1 + DetailsStackedChartView[8]);
  v31 = v26;
  sub_100140278(&qword_1008F0560, &unk_1006F5788);
  return State.wrappedValue.setter();
}

void sub_1004EC094(uint64_t a1)
{
  DataType = type metadata accessor for TrainingLoadDataType();
  v3 = *(DataType - 8);
  __chkstk_darwin(DataType);
  v30 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v28 - v6;
  v8 = type metadata accessor for GregorianDayRange();
  __chkstk_darwin(v8 - 8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for EnvironmentValues();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1 + *(type metadata accessor for LoadDetailsStackedChartView(0) + 68);
  v16 = *v15;
  v29 = *(v15 + 8);
  if (v29 == 1)
  {
    v17 = v16;
  }

  else
  {

    v18 = static os_log_type_t.fault.getter();
    v19 = static Log.runtimeIssuesLog.getter();
    v28 = DataType;
    v20 = v11;
    v21 = v19;
    os_log(_:dso:log:_:_:)(v18, &_mh_execute_header, v19, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    v11 = v20;
    DataType = v28;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v22 = sub_1000A73A4(v16, 0);
    (*(v12 + 8))(v14, v20, v22);
    v17 = v31;
  }

  sub_10034C69C(0, v10);
  sub_1001D4BC0(v10);

  (*(v3 + 104))(v7, enum case for TrainingLoadDataType.workout(_:), DataType);
  (*(v3 + 16))(v30, v7, DataType);
  sub_100140278(&qword_1008F0320, &qword_1006F5540);
  Binding.wrappedValue.setter();
  (*(v3 + 8))(v7, DataType);
  if (v29)
  {
    v23 = v16;
  }

  else
  {

    v25 = static os_log_type_t.fault.getter();
    v26 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v25, &_mh_execute_header, v26, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v27 = sub_1000A73A4(v16, 0);
    (*(v12 + 8))(v14, v11, v27);
    v23 = v31;
  }

  sub_1001D9ED4(v24);
}

uint64_t sub_1004EC454(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  type metadata accessor for DayIndex();
  sub_1004EFA78(&qword_1008E04B0, &type metadata accessor for DayIndex, &protocol conformance descriptor for DayIndex);
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    [*(a3 + *(type metadata accessor for LoadDetailsStackedChartView(0) + 60)) selectionChanged];
  }

  return sub_1004EBC8C();
}

uint64_t sub_1004EC504(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  type metadata accessor for LoadDetailsStackedChartView(0);

  sub_100140278(&qword_1008F0550, &qword_1006F5728);
  return State.wrappedValue.setter();
}

void sub_1004EC578(uint64_t a1, char *a2, uint64_t a3)
{
  v5 = type metadata accessor for GregorianDayRange();
  __chkstk_darwin(v5 - 8);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for EnvironmentValues();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *a2;
  DetailsStackedChartView = type metadata accessor for LoadDetailsStackedChartView(0);
  v14 = (a3 + *(DetailsStackedChartView + 48));
  v15 = *v14;
  v16 = *(v14 + 1);
  LOBYTE(v24) = v15;
  v25 = v16;
  v23[15] = 0;
  sub_100140278(&qword_1008DDBB8, &qword_1006D6FD0);
  State.wrappedValue.setter();
  v17 = a3 + *(DetailsStackedChartView + 68);
  v18 = *v17;
  if (*(v17 + 8) == 1)
  {
    v19 = v18;
  }

  else
  {

    v20 = static os_log_type_t.fault.getter();
    v21 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v20, &_mh_execute_header, v21, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v22 = sub_1000A73A4(v18, 0);
    (*(v9 + 8))(v11, v8, v22);
    v19 = v24;
  }

  sub_10034C69C(v12, v7);
  sub_1001D4BC0(v7);
}

void sub_1004EC78C(_BYTE *a1, _BYTE *a2, uint64_t a3, __n128 a4)
{
  v41 = a3;
  v6 = type metadata accessor for DayIndex();
  v39 = *(v6 - 8);
  v40 = v6;
  __chkstk_darwin(v6);
  v38 = &v34[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v34[-v9];
  v11 = sub_100140278(&qword_1008E04A8, &unk_1006EA860);
  __chkstk_darwin(v11);
  v13 = &v34[-v12];
  v14 = type metadata accessor for GregorianDayRange();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v34[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = type metadata accessor for EnvironmentValues();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v22 = &v34[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*a1 == 1)
  {
    if ((*a2 & 1) == 0)
    {
      v36 = v20;
      DetailsStackedChartView = type metadata accessor for LoadDetailsStackedChartView(0);
      v23 = v41 + *(DetailsStackedChartView + 68);
      v24 = *v23;
      if (*(v23 + 8) == 1)
      {
        v25 = v24;
      }

      else
      {

        v35 = static os_log_type_t.fault.getter();
        v27 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)(v35, &_mh_execute_header, v27, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

        EnvironmentValues.init()();
        swift_getAtKeyPath();
        v28 = sub_1000A73A4(v24, 0);
        (*(v19 + 8))(v22, v36, v28);
        v25 = v42;
      }

      swift_getKeyPath();
      v42 = v25;
      sub_1004EFA78(&qword_1008DCD90, type metadata accessor for BalanceDataProvider, &unk_1006DBB08);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v29 = OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider__dayRange;
      swift_beginAccess();
      (*(v15 + 16))(v17, &v25[v29], v14);

      GregorianDayRange.dayIndexRange.getter();
      (*(v15 + 8))(v17, v14);
      v30 = *(v11 + 36);
      v32 = v39;
      v31 = v40;
      v33 = *(v39 + 16);
      v33(v10, &v13[v30], v40);
      sub_10000EA04(v13, &qword_1008E04A8, &unk_1006EA860);
      v33(v38, v10, v31);
      sub_100140278(&qword_1008F0328, qword_1006F5548);
      State.wrappedValue.setter();
      (*(v32 + 8))(v10, v31);
    }
  }

  else if (*a2)
  {
    v26 = *(v41 + *(type metadata accessor for LoadDetailsStackedChartView(0) + 60));

    [v26 selectionChanged];
  }
}

uint64_t sub_1004ECC48(uint64_t a1)
{
  v2 = type metadata accessor for ToolbarItemPlacement();
  __chkstk_darwin(v2 - 8);
  v3 = sub_100140278(&qword_1008F0500, &qword_1006F5658);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  static ToolbarItemPlacement.confirmationAction.getter();
  v9 = a1;
  sub_100140278(&qword_1008F0520, &unk_1006F56B0);
  sub_1004EFDC4();
  ToolbarItem<>.init(placement:content:)();
  sub_10014A6B0(&qword_1008F0508, &qword_1008F0500, &qword_1006F5658, &protocol conformance descriptor for ToolbarItem<A, B>);
  static ToolbarContentBuilder.buildBlock<A>(_:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1004ECE00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  DetailsStackedChartView = type metadata accessor for LoadDetailsStackedChartView(0);
  v5 = *(DetailsStackedChartView - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(DetailsStackedChartView - 8);
  sub_1004F2EE8(a1, &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LoadDetailsStackedChartView);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_1004F4200(&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for LoadDetailsStackedChartView);
  Button.init(action:label:)();
  v9 = (a2 + *(sub_100140278(&qword_1008F0538, &qword_1006FE8D0) + 36));
  v10 = *(sub_100140278(&qword_1008E9848, &qword_1006EA390) + 28);
  static SymbolRenderingMode.hierarchical.getter();
  v11 = type metadata accessor for SymbolRenderingMode();
  (*(*(v11 - 8) + 56))(v9 + v10, 0, 1, v11);
  *v9 = swift_getKeyPath();
  v12 = [objc_opt_self() secondaryLabelColor];
  v13 = Color.init(_:)();
  result = sub_100140278(&qword_1008F0520, &unk_1006F56B0);
  *(a2 + *(result + 36)) = v13;
  return result;
}

uint64_t sub_1004ED024()
{
  v0 = type metadata accessor for DismissAction();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  DataType = type metadata accessor for TrainingLoadDataType();
  v5 = *(DataType - 8);
  __chkstk_darwin(DataType);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v8);
  v11 = &v13 - v10;
  (*(v5 + 104))(&v13 - v10, enum case for TrainingLoadDataType.workout(_:), DataType, v9);
  (*(v5 + 16))(v7, v11, DataType);
  sub_100140278(&qword_1008F0320, &qword_1006F5540);
  Binding.wrappedValue.setter();
  (*(v5 + 8))(v11, DataType);
  type metadata accessor for LoadDetailsStackedChartView(0);
  sub_100487CFC(v3);
  DismissAction.callAsFunction()();
  return (*(v1 + 8))(v3, v0);
}

void *sub_1004ED228(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for LayoutDirection();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v20[-v8];
  DetailsStackedChartView = type metadata accessor for LoadDetailsStackedChartView(0);
  v11 = (a2 + *(DetailsStackedChartView + 48));
  v12 = *v11;
  v13 = *(v11 + 1);
  v20[16] = v12;
  v21 = v13;
  sub_100140278(&qword_1008DDBB8, &qword_1006D6FD0);
  result = State.wrappedValue.getter();
  if (v20[15] == 1)
  {
    sub_100487D24(v9);
    (*(v4 + 104))(v6, enum case for LayoutDirection.leftToRight(_:), v3);
    v15 = static LayoutDirection.== infix(_:_:)();
    v16 = *(v4 + 8);
    v16(v6, v3);
    v16(v9, v3);
    if (v15)
    {
      DragGesture.Value.location.getter();
    }

    else
    {
      v18 = *(a2 + *(DetailsStackedChartView + 36));
      DragGesture.Value.location.getter();
      v17 = v18 - v19;
    }

    return sub_1004ED404(v17);
  }

  return result;
}

uint64_t sub_1004ED404(double a1)
{
  v3 = type metadata accessor for DayIndex();
  v131 = *(v3 - 8);
  __chkstk_darwin(v3);
  v111 = &v106 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v112 = &v106 - v6;
  __chkstk_darwin(v7);
  v107 = &v106 - v8;
  __chkstk_darwin(v9);
  v122 = &v106 - v10;
  __chkstk_darwin(v11);
  v113 = &v106 - v12;
  __chkstk_darwin(v13);
  v129 = &v106 - v14;
  __chkstk_darwin(v15);
  v130 = &v106 - v16;
  v17 = sub_100140278(&qword_1008E0490, &qword_1006DBB30);
  __chkstk_darwin(v17 - 8);
  v119 = &v106 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v106 - v20;
  v121 = sub_100140278(&qword_1008E04A8, &unk_1006EA860);
  __chkstk_darwin(v121);
  v109 = &v106 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v106 - v24;
  v115 = type metadata accessor for GregorianDayRange();
  v132 = *(v115 - 8);
  __chkstk_darwin(v115);
  v108 = &v106 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v106 - v28;
  v30 = type metadata accessor for EnvironmentValues();
  v31 = *(v30 - 8);
  __chkstk_darwin(v30);
  v33 = &v106 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  DetailsStackedChartView = type metadata accessor for LoadDetailsStackedChartView(0);
  v35 = *(v1 + *(DetailsStackedChartView + 36));
  v36 = v35 + -9.0;
  if (v35 + -9.0 >= a1)
  {
    v37 = a1;
  }

  else
  {
    v37 = v35 + -9.0;
  }

  v38 = fmin(v36, 0.0);
  if (a1 < 0.0)
  {
    v39 = v38;
  }

  else
  {
    v39 = v37;
  }

  v110 = DetailsStackedChartView;
  v40 = *(DetailsStackedChartView + 68);
  v114 = v1;
  v41 = v1 + v40;
  v42 = *v41;
  v127 = *(v41 + 8);
  v116 = v33;
  v120 = v42;
  v118 = v30;
  v117 = v31;
  if (v127 == 1)
  {
    v46 = v42;
  }

  else
  {

    v43 = static os_log_type_t.fault.getter();
    v44 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v43, &_mh_execute_header, v44, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v45 = sub_1000A73A4(v42, 0);
    (*(v31 + 8))(v33, v30, v45);
    v46 = v136;
  }

  swift_getKeyPath();
  v136 = v46;
  v126 = sub_1004EFA78(&qword_1008DCD90, type metadata accessor for BalanceDataProvider, &unk_1006DBB08);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v47 = OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider__dayRange;
  swift_beginAccess();
  v48 = v132;
  v49 = *(v132 + 16);
  v50 = v115;
  v125 = v132 + 16;
  v124 = v49;
  v49(v29, &v46[v47], v115);

  GregorianDayRange.dayIndexRange.getter();
  v51 = *(v48 + 8);
  v132 = v48 + 8;
  v123 = v51;
  v51(v29, v50);
  v52 = v131;
  v128 = *(v131 + 16);
  v128(v21, v25, v3);
  v53 = *(v52 + 56);
  v53(v21, 0, 1, v3);
  v54 = v119;
  v55.n128_f64[0] = v53(v119, 1, 1, v3);
  v56 = sub_1003EE600(v21, v54, v55);
  sub_10000EA04(v54, &qword_1008E0490, &qword_1006DBB30);
  sub_10000EA04(v21, &qword_1008E0490, &qword_1006DBB30);
  result = sub_10000EA04(v25, &qword_1008E04A8, &unk_1006EA860);
  if (__OFSUB__(v56, 1))
  {
    __break(1u);
    goto LABEL_34;
  }

  v58 = (v36 - v39) * (v56 - 1) / v36;
  if (COERCE__INT64(fabs(v58)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v58 <= -9.22337204e18)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v58 >= 9.22337204e18)
  {
LABEL_36:
    __break(1u);
    return result;
  }

  v59 = v120;
  if (v127)
  {
    v60 = v120;
  }

  else
  {

    v61 = static os_log_type_t.fault.getter();
    v62 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v61, &_mh_execute_header, v62, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    v63 = v116;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v64 = sub_1000A73A4(v59, 0);
    (*(v117 + 8))(v63, v118, v64);
    v60 = v135;
  }

  swift_getKeyPath();
  v135 = v60;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v65 = OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider__dayRange;
  swift_beginAccess();
  v124(v29, &v60[v65], v50);

  GregorianDayRange.dayIndexRange.getter();
  v123(v29, v50);
  v66 = v129;
  v128(v129, &v25[*(v121 + 36)], v3);
  sub_10000EA04(v25, &qword_1008E04A8, &unk_1006EA860);
  static DayIndex.- infix(_:_:)();
  v67 = (v131 + 8);
  v119 = *(v131 + 8);
  (v119)(v66, v3);
  if (v127)
  {
    v68 = v59;
  }

  else
  {

    v69 = static os_log_type_t.fault.getter();
    v70 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v69, &_mh_execute_header, v70, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    v71 = v116;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v72 = sub_1000A73A4(v59, 0);
    (*(v117 + 8))(v71, v118, v72);
    v68 = v134;
  }

  swift_getKeyPath();
  v134 = v68;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v73 = OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider__dayRange;
  swift_beginAccess();
  v124(v29, &v68[v73], v50);

  GregorianDayRange.dayIndexRange.getter();
  v123(v29, v50);
  v74 = v129;
  v128(v129, v25, v3);
  sub_10000EA04(v25, &qword_1008E04A8, &unk_1006EA860);
  v75 = v107;
  DayIndex.init(integerLiteral:)();
  static DayIndex.+ infix(_:_:)();
  v76 = v75;
  v77 = v3;
  v78 = v3;
  v79 = v119;
  (v119)(v76, v77);
  v80 = v67;
  v81 = v78;
  v107 = v80;
  v79(v74, v78);
  if (v127)
  {
    v82 = v120;
  }

  else
  {
    v83 = v120;

    v84 = static os_log_type_t.fault.getter();
    v85 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v84, &_mh_execute_header, v85, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    v86 = v116;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v87 = sub_1000A73A4(v83, 0);
    (*(v117 + 8))(v86, v118, v87);
    v82 = v133;
  }

  v88 = v130;
  v89 = v112;
  v90 = v111;
  swift_getKeyPath();
  v133 = v82;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v91 = OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider__dayRange;
  swift_beginAccess();
  v92 = &v82[v91];
  v93 = v108;
  v124(v108, v92, v50);

  v94 = v109;
  GregorianDayRange.dayIndexRange.getter();
  v123(v93, v50);
  v95 = v128;
  v128(v90, (v94 + *(v121 + 36)), v81);
  sub_10000EA04(v94, &qword_1008E04A8, &unk_1006EA860);
  sub_1004EFA78(&qword_1008E04C0, &type metadata accessor for DayIndex, &protocol conformance descriptor for DayIndex);
  if (dispatch thunk of static Comparable.< infix(_:_:)())
  {
    v96 = v119;
    (v119)(v90, v81);
    v95(v89, v88, v81);
    v97 = v95;
    v98 = v131;
  }

  else
  {
    v99 = v90;
    v97 = v95;
    v98 = v131;
    (*(v131 + 32))(v89, v99, v81);
    v96 = v119;
  }

  v100 = v122;
  v101 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v102 = (v101 & 1) == 0;
  if (v101)
  {
    v103 = v100;
  }

  else
  {
    v103 = v89;
  }

  if (v102)
  {
    v104 = v100;
  }

  else
  {
    v104 = v89;
  }

  v96(v103, v81);
  v105 = v113;
  (*(v98 + 32))(v113, v104, v81);
  v97(v129, v105, v81);
  sub_100140278(&qword_1008F0328, qword_1006F5548);
  State.wrappedValue.setter();
  v96(v105, v81);
  return (v96)(v130, v81);
}

void sub_1004EE268(uint64_t a1, uint64_t a2)
{
  v29 = a1;
  v3 = type metadata accessor for LayoutDirection();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v27 - v8;
  v10 = type metadata accessor for DayIndex();
  v30 = *(v10 - 8);
  v31 = v10;
  __chkstk_darwin(v10);
  v28 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v27 - v13;
  DetailsStackedChartView = type metadata accessor for LoadDetailsStackedChartView(0);
  v16 = DetailsStackedChartView[11];
  sub_100140278(&qword_1008F0328, qword_1006F5548);
  v27 = v16;
  State.wrappedValue.getter();
  sub_100487D24(v9);
  (*(v4 + 104))(v6, enum case for LayoutDirection.leftToRight(_:), v3);
  LOBYTE(v16) = static LayoutDirection.== infix(_:_:)();
  v17 = *(v4 + 8);
  v17(v6, v3);
  v17(v9, v3);
  if (v16)
  {
    SpatialTapGesture.Value.location.getter();
  }

  else
  {
    v19 = *(a2 + DetailsStackedChartView[9]);
    SpatialTapGesture.Value.location.getter();
    v18 = v19 - v20;
  }

  sub_1004ED404(v18);
  v21 = (a2 + DetailsStackedChartView[12]);
  v22 = *v21;
  v23 = *(v21 + 1);
  LOBYTE(v33) = *v21;
  v34 = v23;
  sub_100140278(&qword_1008DDBB8, &qword_1006D6FD0);
  State.wrappedValue.getter();
  v24 = v31;
  if (v32)
  {
    v25 = v28;
    State.wrappedValue.getter();
    sub_1004EFA78(&qword_1008E04B8, &type metadata accessor for DayIndex, &protocol conformance descriptor for DayIndex);
    dispatch thunk of Strideable.distance(to:)();
    v26 = *(v30 + 8);
    v26(v25, v24);
    if (v33)
    {
      v26(v14, v24);
      return;
    }

    v33 = v22;
    v34 = v23;
    v32 = 0;

    State.wrappedValue.setter();
    v26(v14, v24);
  }

  else
  {
    LOBYTE(v33) = v22;
    v34 = v23;
    v32 = 1;

    State.wrappedValue.setter();
    (*(v30 + 8))(v14, v24);
  }
}

uint64_t sub_1004EE62C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for LoadDetailsStackedChartView(0);
  sub_100140278(&qword_1008DDBB8, &qword_1006D6FD0);
  return State.wrappedValue.setter();
}

void sub_1004EE6A0(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = type metadata accessor for Calendar();
  v55 = *(v7 - 8);
  __chkstk_darwin(v7);
  v54 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for GregorianDayRange();
  v47 = *(v53 - 8);
  __chkstk_darwin(v53);
  v52 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for EnvironmentValues();
  v45 = *(v10 - 8);
  v46 = v10;
  __chkstk_darwin(v10);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DayIndex();
  v50 = *(v13 - 8);
  v51 = v13;
  __chkstk_darwin(v13);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Date();
  v48 = *(v16 - 8);
  v49 = v16;
  __chkstk_darwin(v16);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v41 - v20;
  sub_100007C5C(a1, v56);
  sub_100140278(&unk_1008E4E60, &qword_1006D8F30);
  sub_1000059F8(0, &qword_1008ED7C0, HKWorkout_ptr);
  if (swift_dynamicCast())
  {
    v42 = v7;
    v43 = a3;
    v22 = v57;
    v23 = [v57 endDate];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    DetailsStackedChartView = type metadata accessor for LoadDetailsStackedChartView(0);
    sub_100140278(&qword_1008F0328, qword_1006F5548);
    State.wrappedValue.getter();
    v25 = a2 + *(DetailsStackedChartView + 68);
    v26 = *v25;
    LODWORD(v25) = *(v25 + 8);
    v44 = v3;
    if (v25 == 1)
    {
      v27 = v26;
    }

    else
    {

      v28 = static os_log_type_t.fault.getter();
      v29 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)(v28, &_mh_execute_header, v29, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      v30 = sub_1000A73A4(v26, 0);
      (*(v45 + 8))(v12, v46, v30);
      v27 = v56[0];
    }

    swift_getKeyPath();
    v56[0] = v27;
    sub_1004EFA78(&qword_1008DCD90, type metadata accessor for BalanceDataProvider, &unk_1006DBB08);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v31 = OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider__dayRange;
    swift_beginAccess();
    v32 = v47;
    v33 = &v27[v31];
    v34 = v52;
    v35 = v53;
    (*(v47 + 16))(v52, v33, v53);

    v36 = v54;
    GregorianDayRange.gregorianCalendar.getter();
    (*(v32 + 8))(v34, v35);
    DayIndex.startDate(in:)();
    (*(v55 + 8))(v36, v42);
    (*(v50 + 8))(v15, v51);
    v37 = Date.isSameDay(as:)();
    v38 = *(v48 + 8);
    v39 = v18;
    v40 = v49;
    v38(v39, v49);
    v38(v21, v40);
    a3 = v43;
    if ((v37 & 1) == 0)
    {

      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  *a3 = v22;
}

uint64_t sub_1004EEC54(id *a1, uint64_t a2)
{
  v68 = type metadata accessor for Calendar();
  v72 = *(v68 - 8);
  __chkstk_darwin(v68);
  v66 = v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for GregorianDayRange();
  v69 = *(v67 - 8);
  __chkstk_darwin(v67);
  v7 = v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for EnvironmentValues();
  v63 = *(v8 - 8);
  v64 = v8;
  __chkstk_darwin(v8);
  v62 = v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DayIndex();
  v60 = *(v10 - 8);
  v61 = v10;
  __chkstk_darwin(v10);
  v12 = v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v65 = v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v54 - v17;
  *&v20 = __chkstk_darwin(v19).n128_u64[0];
  v22 = v54 - v21;
  v23 = [*a1 _startDate];
  if (v23)
  {
    v24 = v23;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v25 = *(v14 + 32);
    v56 = v22;
    v25(v22, v18, v13);
    DetailsStackedChartView = type metadata accessor for LoadDetailsStackedChartView(0);
    sub_100140278(&qword_1008F0328, qword_1006F5548);
    State.wrappedValue.getter();
    v27 = a2 + *(DetailsStackedChartView + 68);
    v28 = *v27;
    v55 = *(v27 + 8);
    v58 = v13;
    v59 = v2;
    v57 = v14;
    if (v55 == 1)
    {
      v29 = v28;
    }

    else
    {

      v31 = static os_log_type_t.fault.getter();
      v32 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)(v31, &_mh_execute_header, v32, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

      v33 = v62;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      v34 = sub_1000A73A4(v28, 0);
      (*(v63 + 8))(v33, v64, v34);
      v29 = v71;
    }

    swift_getKeyPath();
    v71 = v29;
    v54[1] = sub_1004EFA78(&qword_1008DCD90, type metadata accessor for BalanceDataProvider, &unk_1006DBB08);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v35 = OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider__dayRange;
    swift_beginAccess();
    v36 = v69;
    v37 = v67;
    v54[0] = *(v69 + 16);
    (v54[0])(v7, &v29[v35], v67);

    v38 = v66;
    GregorianDayRange.gregorianCalendar.getter();
    v39 = *(v36 + 8);
    v69 = v36 + 8;
    v39(v7, v37);
    v40 = v65;
    DayIndex.startDate(in:)();
    v41 = *(v72 + 8);
    v72 += 8;
    v41(v38, v68);
    (*(v60 + 8))(v12, v61);
    if (v55)
    {
      v42 = v28;
    }

    else
    {

      v43 = static os_log_type_t.fault.getter();
      v44 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)(v43, &_mh_execute_header, v44, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

      v45 = v62;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      v46 = sub_1000A73A4(v28, 0);
      (*(v63 + 8))(v45, v64, v46);
      v42 = v70;
    }

    swift_getKeyPath();
    v70 = v42;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v47 = OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider__dayRange;
    swift_beginAccess();
    v48 = v67;
    (v54[0])(v7, &v42[v47], v67);

    v49 = v66;
    GregorianDayRange.gregorianCalendar.getter();
    v39(v7, v48);
    v50 = v56;
    v30 = Calendar.isDate(_:inSameDayAs:)();
    v41(v49, v68);
    v51 = v58;
    v52 = *(v57 + 8);
    v52(v40, v58);
    v52(v50, v51);
  }

  else
  {
    v30 = 0;
  }

  return v30 & 1;
}

uint64_t sub_1004EF374()
{
  sub_100140278(&qword_1008F0458, &qword_1006F55E8);
  sub_100141EEC(&qword_1008F0460, &qword_1006F55F0);
  sub_100141EEC(&qword_1008F0468, &qword_1006F55F8);
  sub_100141EEC(&qword_1008F0470, &unk_1006F5600);
  sub_100141EEC(&qword_1008F0478, &unk_1006FE8A0);
  sub_100141EEC(&qword_1008F0480, &qword_1006F5610);
  sub_100141EEC(&qword_1008F0488, &qword_1006F5618);
  sub_100141EEC(&qword_1008F0490, &qword_1006F5620);
  sub_100141EEC(&qword_1008F03D8, &qword_1006F5590);
  sub_100141EEC(&qword_1008F0498, &qword_1006F5628);
  sub_100141EEC(&qword_1008F04A0, &qword_1006F5630);
  sub_100141EEC(&qword_1008F04A8, &qword_1006F5638);
  type metadata accessor for DayIndex();
  sub_1004EF710();
  sub_1004EFA78(&qword_1008E04B0, &type metadata accessor for DayIndex, &protocol conformance descriptor for DayIndex);
  swift_getOpaqueTypeConformance2();
  sub_1004EF854();
  swift_getOpaqueTypeConformance2();
  sub_1004EF9C4();
  swift_getOpaqueTypeConformance2();
  sub_10034D2BC();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_100141EEC(&qword_1008F0500, &qword_1006F5658);
  sub_10014A6B0(&qword_1008F0508, &qword_1008F0500, &qword_1006F5658, &protocol conformance descriptor for ToolbarItem<A, B>);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_10000FCBC();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return NavigationView.init(content:)();
}

unint64_t sub_1004EF710()
{
  result = qword_1008F04B0;
  if (!qword_1008F04B0)
  {
    sub_100141EEC(&qword_1008F04A8, &qword_1006F5638);
    sub_1004EF79C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F04B0);
  }

  return result;
}

unint64_t sub_1004EF79C()
{
  result = qword_1008F04B8;
  if (!qword_1008F04B8)
  {
    sub_100141EEC(&qword_1008F04C0, &qword_1006F5640);
    sub_10014A6B0(&qword_1008F04C8, &qword_1008F04D0, &qword_1006F5648, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F04B8);
  }

  return result;
}

unint64_t sub_1004EF854()
{
  result = qword_1008F04D8;
  if (!qword_1008F04D8)
  {
    sub_100141EEC(&qword_1008F04A0, &qword_1006F5630);
    sub_1004EF8D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F04D8);
  }

  return result;
}

unint64_t sub_1004EF8D8()
{
  result = qword_1008F04E0;
  if (!qword_1008F04E0)
  {
    sub_100141EEC(&qword_1008F04E8, &qword_1006F5650);
    sub_1004EF95C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F04E0);
  }

  return result;
}

unint64_t sub_1004EF95C()
{
  result = qword_1008F04F0;
  if (!qword_1008F04F0)
  {
    sub_1000059F8(255, &unk_1008DEED8, HKQuantity_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F04F0);
  }

  return result;
}

unint64_t sub_1004EF9C4()
{
  result = qword_1008F04F8;
  if (!qword_1008F04F8)
  {
    sub_100141EEC(&qword_1008F03D8, &qword_1006F5590);
    sub_1004EFA78(&qword_1008E0508, &type metadata accessor for SleepingSampleDataType, &protocol conformance descriptor for SleepingSampleDataType);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F04F8);
  }

  return result;
}

uint64_t sub_1004EFA78(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1004EFB18(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

uint64_t sub_1004EFB94(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for LoadDetailsStackedChartView(0) - 8);
  v7 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1004EC454(a1, a2, v7, v6);
}

uint64_t sub_1004EFC70(uint64_t a1, uint64_t *a2)
{
  v5 = *(type metadata accessor for LoadDetailsStackedChartView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1004EC504(a1, a2, v6);
}

uint64_t sub_1004EFD20(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for LoadDetailsStackedChartView(0) - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

unint64_t sub_1004EFDC4()
{
  result = qword_1008F0528;
  if (!qword_1008F0528)
  {
    sub_100141EEC(&qword_1008F0520, &unk_1006F56B0);
    sub_1004EFE7C();
    sub_10014A6B0(&qword_1008E0740, &qword_1008E0748, &unk_1006DC070, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F0528);
  }

  return result;
}

unint64_t sub_1004EFE7C()
{
  result = qword_1008F0530;
  if (!qword_1008F0530)
  {
    sub_100141EEC(&qword_1008F0538, &qword_1006FE8D0);
    sub_10014A6B0(&qword_1008F0540, &qword_1008F0548, &qword_1006F56C0, &protocol conformance descriptor for Button<A>);
    sub_10014A6B0(&qword_1008E9860, &qword_1008E9848, &qword_1006EA390, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F0530);
  }

  return result;
}

uint64_t sub_1004EFF8C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v76 = a1;
  v3 = type metadata accessor for DynamicTypeSize();
  v72 = *(v3 - 8);
  v73 = v3;
  __chkstk_darwin(v3);
  v71 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for AccessibilityTraits();
  v67 = *(v68 - 8);
  __chkstk_darwin(v68);
  v64 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for AccessibilityChildBehavior();
  v62 = *(v63 - 8);
  __chkstk_darwin(v63);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_100140278(&qword_1008F0A68, &unk_1006F5EA0);
  __chkstk_darwin(v57);
  v9 = &v56 - v8;
  v59 = sub_100140278(&qword_1008F0A70, &unk_1006FC550);
  v61 = *(v59 - 8);
  __chkstk_darwin(v59);
  v11 = &v56 - v10;
  v60 = sub_100140278(&qword_1008F0A78, &qword_1006F5EB0);
  __chkstk_darwin(v60);
  v13 = &v56 - v12;
  v65 = sub_100140278(&qword_1008F0A80, &qword_1006F5EB8);
  v66 = *(v65 - 8);
  __chkstk_darwin(v65);
  v58 = &v56 - v14;
  v69 = sub_100140278(&qword_1008F0A88, &qword_1006F5EC0);
  __chkstk_darwin(v69);
  v16 = &v56 - v15;
  v17 = sub_100140278(&qword_1008F0AE8, &unk_1006F5F00);
  v18 = *(v17 - 8);
  v74 = v17;
  v75 = v18;
  __chkstk_darwin(v17);
  v70 = &v56 - v19;
  *v9 = static VerticalAlignment.center.getter();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v20 = sub_100140278(&qword_1008F0A90, &qword_1006F5EC8);
  sub_1004F098C(&v9[*(v20 + 44)]);
  static AccessibilityChildBehavior.combine.getter();
  v21 = sub_10014A6B0(&qword_1008F0A98, &qword_1008F0A68, &unk_1006F5EA0, &protocol conformance descriptor for HStack<A>);
  v22 = v57;
  View.accessibilityElement(children:)();
  (*(v62 + 8))(v7, v63);
  sub_10000EA04(v9, &qword_1008F0A68, &unk_1006F5EA0);
  v23 = v64;
  static AccessibilityTraits.isButton.getter();
  *&v77 = v22;
  *(&v77 + 1) = v21;
  swift_getOpaqueTypeConformance2();
  v24 = v59;
  View.accessibilityAddTraits(_:)();
  (*(v67 + 8))(v23, v68);
  (*(v61 + 8))(v11, v24);
  v13[*(sub_100140278(&qword_1008F0AA0, &qword_1006F5ED0) + 36)] = 0;
  v25 = static Font.subheadline.getter();
  KeyPath = swift_getKeyPath();
  v27 = v60;
  v28 = &v13[*(v60 + 36)];
  *v28 = KeyPath;
  v28[1] = v25;
  static Font.Weight.semibold.getter();
  v29 = sub_1004F39AC();
  v30 = v58;
  v31 = v27;
  View.fontWeight(_:)();
  sub_10000EA04(v13, &qword_1008F0A78, &qword_1006F5EB0);
  v32 = v71;
  v33 = v72;
  v34 = v73;
  (*(v72 + 104))(v71, enum case for DynamicTypeSize.large(_:), v73);
  *&v77 = v31;
  *(&v77 + 1) = v29;
  swift_getOpaqueTypeConformance2();
  v35 = v65;
  View.dynamicTypeSize(_:)();
  (*(v33 + 8))(v32, v34);
  (*(v66 + 8))(v30, v35);
  v36 = [objc_opt_self() secondaryLabelColor];
  v37 = Color.init(_:)();
  v38 = swift_getKeyPath();
  v39 = &v16[*(sub_100140278(&qword_1008F0AC8, &qword_1006F5EE8) + 36)];
  *v39 = v38;
  v39[1] = v37;
  LOBYTE(v37) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v40 = v69;
  v41 = &v16[*(v69 + 36)];
  *v41 = v37;
  *(v41 + 1) = v42;
  *(v41 + 2) = v43;
  *(v41 + 3) = v44;
  *(v41 + 4) = v45;
  v41[40] = 0;
  v46 = swift_allocObject();
  v47 = v2[1];
  v46[1] = *v2;
  v46[2] = v47;
  v46[3] = v2[2];
  *(v46 + 57) = *(v2 + 41);
  sub_1004F2C6C(v2, &v77);
  v48 = sub_1004F2AB0(&qword_1008F0AD0, &qword_1008F0A88, &qword_1006F5EC0, sub_1004F3C54);
  v49 = v70;
  View.onTapGesture(count:perform:)();

  sub_10000EA04(v16, &qword_1008F0A88, &qword_1006F5EC0);
  v77 = *v2;
  v78 = *(v2 + 16);
  sub_100140278(&qword_1008DDE80, &unk_1006DC080);
  Binding.projectedValue.getter();
  v50 = swift_allocObject();
  v51 = v2[1];
  v50[1] = *v2;
  v50[2] = v51;
  v50[3] = v2[2];
  *(v50 + 57) = *(v2 + 41);
  v52 = swift_allocObject();
  v53 = v2[1];
  v52[1] = *v2;
  v52[2] = v53;
  v52[3] = v2[2];
  *(v52 + 57) = *(v2 + 41);
  sub_1004F2C6C(v2, &v77);
  sub_1004F2C6C(v2, &v77);
  type metadata accessor for OvernightMetricsReorderingView(0);
  *&v77 = v40;
  *(&v77 + 1) = v48;
  swift_getOpaqueTypeConformance2();
  sub_1004EFA78(&qword_1008F0AF0, type metadata accessor for OvernightMetricsReorderingView, &unk_1006F5F70);
  v54 = v74;
  View.sheet<A>(isPresented:onDismiss:content:)();

  return (*(v75 + 8))(v49, v54);
}

uint64_t sub_1004F098C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100140278(&qword_1008E76A0, &unk_1006F5EF0);
  __chkstk_darwin(v2 - 8);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v17 - v6;
  LocalizedStringKey.init(stringLiteral:)();
  v8 = Text.init(_:tableName:bundle:comment:)();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v17[0] = Image.init(systemName:)();
  View.accessibilityHidden(_:)();

  sub_10001B104(v7, v4, &qword_1008E76A0, &unk_1006F5EF0);
  *a1 = v8;
  *(a1 + 8) = v10;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v14;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  v15 = sub_100140278(&qword_1008F0AE0, &qword_1006FC630);
  sub_10001B104(v4, a1 + *(v15 + 64), &qword_1008E76A0, &unk_1006F5EF0);
  sub_10006965C(v8, v10, v12 & 1);

  sub_10000EA04(v7, &qword_1008E76A0, &unk_1006F5EF0);
  sub_10000EA04(v4, &qword_1008E76A0, &unk_1006F5EF0);
  sub_10004642C(v8, v10, v12 & 1);
}

double sub_1004F0BA0(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(a1 + 16);
  v10 = v2;
  v7 = v2;
  v8 = v1;
  v9 = v3;
  sub_100265000(&v10, v5);

  sub_100140278(&qword_1008DDE80, &unk_1006DC080);
  Binding.wrappedValue.getter();
  v5[0] = v2;
  v5[1] = v1;
  v6 = v3;
  Binding.wrappedValue.setter();
  sub_1004F3DC4(&v10);

  return result;
}

uint64_t sub_1004F0C58()
{
  sub_100140278(&qword_1008F0AF8, &qword_1006F5F10);
  Binding.wrappedValue.getter();
  sub_1002E1CA4(v1);
}

__n128 sub_1004F0CC0@<Q0>(uint64_t *a2@<X8>)
{
  sub_100140278(&qword_1008F0AF8, &qword_1006F5F10);
  Binding.projectedValue.getter();
  *a2 = swift_getKeyPath();
  sub_100140278(&qword_1008EE800, &qword_1006D7580);
  swift_storeEnumTagMultiPayload();
  v3 = a2 + *(type metadata accessor for OvernightMetricsReorderingView(0) + 20);
  *v3 = v5;
  result = v6;
  *(v3 + 8) = v6;
  return result;
}

uint64_t sub_1004F0DB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a1;
  v51 = a2;
  v3 = type metadata accessor for OvernightMetricsReorderingView(0);
  v48 = *(v3 - 8);
  v47 = *(v48 + 64);
  __chkstk_darwin(v3 - 8);
  v45 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100140278(&qword_1008E62D8, &unk_1006E5D10);
  v6 = *(v5 - 8);
  v49 = v5;
  v50 = v6;
  __chkstk_darwin(v5);
  v46 = &v41 - v7;
  v42 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v8 = *(v42 - 8);
  __chkstk_darwin(v42);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for EditMode();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100140278(&qword_1008F0BA8, &qword_1006F5FD8);
  __chkstk_darwin(v15);
  v17 = &v41 - v16;
  v18 = sub_100140278(&qword_1008F0BA0, &unk_1006F5FC8);
  v19 = *(v18 - 8);
  v43 = v18;
  v44 = v19;
  __chkstk_darwin(v18);
  v52 = &v41 - v20;
  v53 = a1;
  sub_100140278(&qword_1008F0BD8, &qword_1006F5FF0);
  sub_1004F4094();
  List<>.init(content:)();
  KeyPath = swift_getKeyPath();
  v22 = v15;
  v23 = &v17[*(v15 + 36)];
  v24 = *(sub_100140278(&qword_1008F0BD0, &qword_1006F5FE8) + 28);
  (*(v12 + 104))(v14, enum case for EditMode.active(_:), v11);
  static Binding.constant(_:)();
  (*(v12 + 8))(v14, v11);
  v25 = sub_100140278(&qword_1008F0C08, &qword_1006F73E0);
  (*(*(v25 - 8) + 56))(v23 + v24, 0, 1, v25);
  *v23 = KeyPath;
  LocalizedStringKey.init(stringLiteral:)();
  v26 = Text.init(_:tableName:bundle:comment:)();
  v28 = v27;
  LOBYTE(v12) = v29;
  v30 = v42;
  (*(v8 + 104))(v10, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v42);
  v31 = sub_1004F3FA8();
  View.navigationBarTitle(_:displayMode:)();
  sub_10004642C(v26, v28, v12 & 1);

  (*(v8 + 8))(v10, v30);
  sub_10000EA04(v17, &qword_1008F0BA8, &qword_1006F5FD8);
  LocalizedStringKey.init(stringLiteral:)();
  v32 = v45;
  sub_1004F2EE8(v41, v45, type metadata accessor for OvernightMetricsReorderingView);
  v33 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v34 = swift_allocObject();
  sub_1004F4200(v32, v34 + v33, type metadata accessor for OvernightMetricsReorderingView);
  v35 = v46;
  Button<>.init(_:action:)();
  v54 = v22;
  v55 = v31;
  swift_getOpaqueTypeConformance2();
  sub_10014A6B0(&qword_1008E62E0, &qword_1008E62D8, &unk_1006E5D10, &protocol conformance descriptor for Button<A>);
  v36 = v52;
  v37 = v35;
  v38 = v43;
  v39 = v49;
  View.navigationBarItems<A>(trailing:)();
  (*(v50 + 8))(v37, v39);
  return (*(v44 + 8))(v36, v38);
}

uint64_t sub_1004F1464@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for OvernightMetricsReorderingView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v8 = a1 + *(v7 + 28);
  v15 = *v8;
  v16 = *(v8 + 8);
  sub_100140278(&qword_1008F0AF8, &qword_1006F5F10);
  Binding.wrappedValue.getter();
  swift_getKeyPath();
  sub_100140278(&qword_1008F03D8, &qword_1006F5590);
  sub_100140278(&qword_1008F0C10, &qword_1006F6070);
  sub_10014A6B0(&qword_1008F0C18, &qword_1008F03D8, &qword_1006F5590, &protocol conformance descriptor for [A]);
  v15 = &type metadata for Text;
  *&v16 = &protocol witness table for Text;
  swift_getOpaqueTypeConformance2();
  ForEach<>.init(_:id:content:)();
  sub_1004F2EE8(a1, &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for OvernightMetricsReorderingView);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  sub_1004F4200(&v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v10 + v9, type metadata accessor for OvernightMetricsReorderingView);
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1004F43C8;
  *(v11 + 24) = v10;
  result = sub_100140278(&qword_1008F0BD8, &qword_1006F5FF0);
  v13 = (a2 + *(result + 36));
  *v13 = sub_1004F4448;
  v13[1] = v11;
  return result;
}

uint64_t sub_1004F1704(uint64_t a1)
{
  SleepingSampleDataType.localizedName.getter();
  sub_10000FCBC();
  v1 = Text.init<A>(_:)();
  v3 = v2;
  v5 = v4;
  static Font.headline.getter();
  v6 = Text.font(_:)();
  v8 = v7;
  v10 = v9;

  sub_10004642C(v1, v3, v5 & 1);

  static VerticalEdge.Set.all.getter();
  View.listRowSeparator(_:edges:)();
  sub_10004642C(v6, v8, v10 & 1);
}

double sub_1004F181C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for OvernightMetricsReorderingView(0);

  sub_100140278(&qword_1008F0AF8, &qword_1006F5F10);
  Binding.wrappedValue.getter();
  sub_100140278(&qword_1008F03D8, &qword_1006F5590);
  sub_10014A6B0(&qword_1008F0C20, &qword_1008F03D8, &qword_1006F5590, &protocol conformance descriptor for [A]);
  MutableCollection.move(fromOffsets:toOffset:)();
  Binding.wrappedValue.setter();

  return result;
}

uint64_t sub_1004F1960(uint64_t a1)
{
  v16 = type metadata accessor for EnvironmentValues();
  v2 = *(v16 - 8);
  __chkstk_darwin(v16);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100140278(&qword_1008EE800, &qword_1006D7580);
  __chkstk_darwin(v5);
  v7 = &v15 - v6;
  v8 = type metadata accessor for DismissAction();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001B104(a1, v7, &qword_1008EE800, &qword_1006D7580);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    v12 = static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v12, &_mh_execute_header, v13, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v16);
  }

  DismissAction.callAsFunction()();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1004F1BDC()
{
  sub_100140278(&qword_1008F0B98, &qword_1006F5FC0);
  sub_100141EEC(&qword_1008F0BA0, &unk_1006F5FC8);
  sub_100141EEC(&qword_1008E62D8, &unk_1006E5D10);
  sub_100141EEC(&qword_1008F0BA8, &qword_1006F5FD8);
  sub_1004F3FA8();
  swift_getOpaqueTypeConformance2();
  sub_10014A6B0(&qword_1008E62E0, &qword_1008E62D8, &unk_1006E5D10, &protocol conformance descriptor for Button<A>);
  swift_getOpaqueTypeConformance2();
  return NavigationView.init(content:)();
}

uint64_t sub_1004F1D2C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v66 = a3;
  v64 = a1;
  v65 = a2;
  v67 = a4;
  v4 = type metadata accessor for DynamicTypeSize();
  v62 = *(v4 - 8);
  v63 = v4;
  __chkstk_darwin(v4);
  v61 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AccessibilityTraits();
  v58 = *(v6 - 8);
  v59 = v6;
  __chkstk_darwin(v6);
  v52 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AccessibilityChildBehavior();
  v54 = *(v8 - 8);
  v55 = v8;
  __chkstk_darwin(v8);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100140278(&qword_1008F0A68, &unk_1006F5EA0);
  __chkstk_darwin(v11);
  v13 = &v49 - v12;
  v50 = sub_100140278(&qword_1008F0A70, &unk_1006FC550);
  v53 = *(v50 - 8);
  __chkstk_darwin(v50);
  v15 = &v49 - v14;
  v51 = sub_100140278(&qword_1008F0A78, &qword_1006F5EB0);
  __chkstk_darwin(v51);
  v17 = &v49 - v16;
  v18 = sub_100140278(&qword_1008F0A80, &qword_1006F5EB8);
  v19 = *(v18 - 8);
  v56 = v18;
  v57 = v19;
  __chkstk_darwin(v18);
  v21 = &v49 - v20;
  v60 = sub_100140278(&qword_1008F0A88, &qword_1006F5EC0);
  __chkstk_darwin(v60);
  v23 = &v49 - v22;
  *v13 = static VerticalAlignment.center.getter();
  *(v13 + 1) = 0;
  v13[16] = 1;
  v24 = sub_100140278(&qword_1008F0A90, &qword_1006F5EC8);
  sub_1004F2474(&v13[*(v24 + 44)]);
  static AccessibilityChildBehavior.combine.getter();
  v25 = sub_10014A6B0(&qword_1008F0A98, &qword_1008F0A68, &unk_1006F5EA0, &protocol conformance descriptor for HStack<A>);
  View.accessibilityElement(children:)();
  (*(v54 + 8))(v10, v55);
  sub_10000EA04(v13, &qword_1008F0A68, &unk_1006F5EA0);
  v26 = v52;
  static AccessibilityTraits.isLink.getter();
  v68 = v11;
  v69 = v25;
  swift_getOpaqueTypeConformance2();
  v27 = v50;
  View.accessibilityAddTraits(_:)();
  (*(v58 + 8))(v26, v59);
  (*(v53 + 8))(v15, v27);
  v17[*(sub_100140278(&qword_1008F0AA0, &qword_1006F5ED0) + 36)] = 0;
  v28 = static Font.subheadline.getter();
  KeyPath = swift_getKeyPath();
  v30 = v51;
  v31 = &v17[*(v51 + 36)];
  *v31 = KeyPath;
  v31[1] = v28;
  static Font.Weight.semibold.getter();
  v32 = sub_1004F39AC();
  View.fontWeight(_:)();
  sub_10000EA04(v17, &qword_1008F0A78, &qword_1006F5EB0);
  v33 = v61;
  v34 = v62;
  v35 = v63;
  (*(v62 + 104))(v61, enum case for DynamicTypeSize.large(_:), v63);
  v68 = v30;
  v69 = v32;
  swift_getOpaqueTypeConformance2();
  v36 = v56;
  View.dynamicTypeSize(_:)();
  (*(v34 + 8))(v33, v35);
  (*(v57 + 8))(v21, v36);
  v37 = [objc_opt_self() secondaryLabelColor];
  v38 = Color.init(_:)();
  v39 = swift_getKeyPath();
  v40 = &v23[*(sub_100140278(&qword_1008F0AC8, &qword_1006F5EE8) + 36)];
  *v40 = v39;
  v40[1] = v38;
  LOBYTE(v38) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v41 = &v23[*(v60 + 36)];
  *v41 = v38;
  *(v41 + 1) = v42;
  *(v41 + 2) = v43;
  *(v41 + 3) = v44;
  *(v41 + 4) = v45;
  v41[40] = 0;
  v46 = swift_allocObject();
  v47 = v65;
  *(v46 + 16) = v64;
  *(v46 + 24) = v47;
  LOBYTE(v38) = v66 & 1;
  *(v46 + 32) = v66 & 1;

  sub_1000A72F0(v47, v38);
  sub_1004F2AB0(&qword_1008F0AD0, &qword_1008F0A88, &qword_1006F5EC0, sub_1004F3C54);
  View.onTapGesture(count:perform:)();

  return sub_10000EA04(v23, &qword_1008F0A88, &qword_1006F5EC0);
}

uint64_t sub_1004F2474@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100140278(&qword_1008E76A0, &unk_1006F5EF0);
  __chkstk_darwin(v2 - 8);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v17 - v6;
  LocalizedStringKey.init(stringLiteral:)();
  v8 = Text.init(_:tableName:bundle:comment:)();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v17[0] = Image.init(systemName:)();
  View.accessibilityHidden(_:)();

  sub_10001B104(v7, v4, &qword_1008E76A0, &unk_1006F5EF0);
  *a1 = v8;
  *(a1 + 8) = v10;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v14;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  v15 = sub_100140278(&qword_1008F0AE0, &qword_1006FC630);
  sub_10001B104(v4, a1 + *(v15 + 64), &qword_1008E76A0, &unk_1006F5EF0);
  sub_10006965C(v8, v10, v12 & 1);

  sub_10000EA04(v7, &qword_1008E76A0, &unk_1006F5EF0);
  sub_10000EA04(v4, &qword_1008E76A0, &unk_1006F5EF0);
  sub_10004642C(v8, v10, v12 & 1);
}

void sub_1004F2684(uint64_t a1, void *a2, char a3)
{
  v23 = a2;
  v24 = type metadata accessor for OvernightMetricsViewModel();
  v5 = *(v24 - 8);
  __chkstk_darwin(v24);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for EnvironmentValues();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for EffortUtilities.OvernightVitalsState();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (a3)
    {
      v16 = v23;
    }

    else
    {
      v22 = v5;
      v17 = v23;

      v18 = static os_log_type_t.fault.getter();
      v19 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)(v18, &_mh_execute_header, v19, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      v20 = v17;
      v5 = v22;
      v21 = sub_1000A73A4(v20, 0);
      (*(v9 + 8))(v11, v8, v21);
      v16 = v25;
    }

    sub_1001D427C();

    dispatch thunk of SleepingSampleViewModelProvider.overnightMetricsModel.getter();

    OvernightMetricsViewModel.overnightVitalsState.getter();
    (*(v5 + 8))(v7, v24);
    sub_10043DB74(v15);
    (*(v13 + 8))(v15, v12);
  }
}

unint64_t sub_1004F299C()
{
  result = qword_1008F05F8;
  if (!qword_1008F05F8)
  {
    sub_100141EEC(&qword_1008F05F0, &qword_1006F5808);
    sub_1004F2AB0(&qword_1008F0600, &qword_1008F0608, &qword_1006F5810, sub_1004F2A80);
    sub_10014A6B0(&qword_1008F0640, &qword_1008F0648, &qword_1006F5830, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F05F8);
  }

  return result;
}

uint64_t sub_1004F2AB0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100141EEC(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1004F2B34()
{
  result = qword_1008F0620;
  if (!qword_1008F0620)
  {
    sub_100141EEC(&qword_1008F0628, &qword_1006F5820);
    sub_10014A6B0(&qword_1008F0630, &qword_1008F0638, &qword_1006F5828, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F0620);
  }

  return result;
}

uint64_t sub_1004F2BEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for LoadDetailsStackedChartView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1004E81F0(a1, v6, a2);
}

unint64_t sub_1004F2D08()
{
  result = qword_1008F06F8;
  if (!qword_1008F06F8)
  {
    sub_100141EEC(&qword_1008F06F0, &unk_1006F5910);
    sub_100336064();
    sub_10014A6B0(&qword_1008DC4C8, &qword_1008DC4D0, &qword_1006DC0F0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F06F8);
  }

  return result;
}

unint64_t sub_1004F2DDC()
{
  result = qword_1008F07A8;
  if (!qword_1008F07A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F07A8);
  }

  return result;
}

unint64_t sub_1004F2E30()
{
  result = qword_1008F07C0;
  if (!qword_1008F07C0)
  {
    sub_100141EEC(&qword_1008F07A0, &qword_1006F59B8);
    sub_1004F2DDC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F07C0);
  }

  return result;
}

uint64_t sub_1004F2EE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1004F2F50(uint64_t a1)
{
  v2 = type metadata accessor for SleepingSampleChartLollipopView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1004F2FDC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for LoadDetailsStackedChartView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_1004F3060(uint64_t a1)
{
  v3 = *(type metadata accessor for LoadDetailsStackedChartView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1004EE62C(a1, v4);
}

unint64_t sub_1004F30D0()
{
  result = qword_1008F0870;
  if (!qword_1008F0870)
  {
    sub_100141EEC(&qword_1008F0868, &qword_1006F5A88);
    sub_1004F3188();
    sub_10014A6B0(&qword_1008DC4C8, &qword_1008DC4D0, &qword_1006DC0F0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F0870);
  }

  return result;
}

unint64_t sub_1004F3188()
{
  result = qword_1008F0878;
  if (!qword_1008F0878)
  {
    sub_100141EEC(&qword_1008F0880, &qword_1006F5A90);
    sub_10014A6B0(&qword_1008F0888, &qword_1008F0890, &unk_1006F5A98, &protocol conformance descriptor for HStack<A>);
    sub_10014A6B0(&qword_1008E0740, &qword_1008E0748, &unk_1006DC070, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F0878);
  }

  return result;
}

unint64_t sub_1004F32A4()
{
  result = qword_1008F0980;
  if (!qword_1008F0980)
  {
    sub_100141EEC(&qword_1008F0970, &qword_1006F5B68);
    sub_10014A6B0(&qword_1008E2BB8, &qword_1008E2BC0, &qword_1006FFC00, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F0980);
  }

  return result;
}

unint64_t sub_1004F335C()
{
  result = qword_1008F0988;
  if (!qword_1008F0988)
  {
    sub_100141EEC(&qword_1008F0978, &unk_1006F5B70);
    sub_1004F3414();
    sub_10014A6B0(&qword_1008E44F8, &qword_1008E4500, &qword_1006E1D10, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F0988);
  }

  return result;
}

unint64_t sub_1004F3414()
{
  result = qword_1008F0990;
  if (!qword_1008F0990)
  {
    sub_100141EEC(&qword_1008F0998, &qword_1006F5B80);
    sub_1002397DC();
    sub_10014A6B0(&qword_1008E9820, &qword_1008E97F8, &qword_1006EA330, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F0990);
  }

  return result;
}

unint64_t sub_1004F34D4()
{
  result = qword_1008F09B0;
  if (!qword_1008F09B0)
  {
    sub_100141EEC(&qword_1008F09A0, &qword_1006F5BE8);
    sub_1004F3558();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F09B0);
  }

  return result;
}

unint64_t sub_1004F3558()
{
  result = qword_1008F09B8;
  if (!qword_1008F09B8)
  {
    sub_100141EEC(&qword_1008F09C0, &qword_1006F5BF0);
    type metadata accessor for TrainingLoadDataType();
    sub_1004EFA78(&qword_1008F09A8, &type metadata accessor for TrainingLoadDataType, &protocol conformance descriptor for TrainingLoadDataType);
    swift_getOpaqueTypeConformance2();
    sub_10014A6B0(&qword_1008E44F8, &qword_1008E4500, &qword_1006E1D10, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F09B8);
  }

  return result;
}

unint64_t sub_1004F3684()
{
  result = qword_1008F0A20;
  if (!qword_1008F0A20)
  {
    sub_100141EEC(&qword_1008F0A08, &qword_1006F5C70);
    sub_1004EFA78(&qword_1008F0A28, &type metadata accessor for TrainingLoadChart, &protocol conformance descriptor for TrainingLoadChart);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F0A20);
  }

  return result;
}

unint64_t sub_1004F3740()
{
  result = qword_1008F0A30;
  if (!qword_1008F0A30)
  {
    sub_100141EEC(&qword_1008F09E8, &qword_1006F5C50);
    sub_10014A6B0(&qword_1008F07B0, &qword_1008F0780, &qword_1006F5998, &protocol conformance descriptor for SimultaneousGesture<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F0A30);
  }

  return result;
}

uint64_t sub_1004F37F0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 17))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1004F384C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

__n128 sub_1004F38B0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1004F38CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_1004F3914(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1004F39AC()
{
  result = qword_1008F0AA8;
  if (!qword_1008F0AA8)
  {
    sub_100141EEC(&qword_1008F0A78, &qword_1006F5EB0);
    sub_1004F3A64();
    sub_10014A6B0(&qword_1008DC4C8, &qword_1008DC4D0, &qword_1006DC0F0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F0AA8);
  }

  return result;
}

unint64_t sub_1004F3A64()
{
  result = qword_1008F0AB0;
  if (!qword_1008F0AB0)
  {
    sub_100141EEC(&qword_1008F0AA0, &qword_1006F5ED0);
    sub_1004F3B1C();
    sub_10014A6B0(&qword_1008DC838, &qword_1008DC840, &qword_1006D4FF0, &protocol conformance descriptor for _ContentShapeModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F0AB0);
  }

  return result;
}

unint64_t sub_1004F3B1C()
{
  result = qword_1008F0AB8;
  if (!qword_1008F0AB8)
  {
    sub_100141EEC(&qword_1008F0AC0, &unk_1006F5ED8);
    sub_100141EEC(&qword_1008F0A68, &unk_1006F5EA0);
    sub_10014A6B0(&qword_1008F0A98, &qword_1008F0A68, &unk_1006F5EA0, &protocol conformance descriptor for HStack<A>);
    swift_getOpaqueTypeConformance2();
    sub_1004EFA78(&qword_1008DCEF8, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F0AB8);
  }

  return result;
}

unint64_t sub_1004F3C54()
{
  result = qword_1008F0AD8;
  if (!qword_1008F0AD8)
  {
    sub_100141EEC(&qword_1008F0AC8, &qword_1006F5EE8);
    sub_100141EEC(&qword_1008F0A80, &qword_1006F5EB8);
    sub_100141EEC(&qword_1008F0A78, &qword_1006F5EB0);
    sub_1004F39AC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_10014A6B0(&qword_1008E44F8, &qword_1008E4500, &qword_1006E1D10, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F0AD8);
  }

  return result;
}

void sub_1004F3E40(uint64_t a1)
{
  sub_1004DD940(319, &qword_1008DDD50, &type metadata accessor for DismissAction, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_1004F3F20(319, &unk_1008F0B68, &qword_1008F03D8, &qword_1006F5590, &type metadata accessor for Binding);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1004F3F20(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_100141EEC(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1004F3FA8()
{
  result = qword_1008F0BB0;
  if (!qword_1008F0BB0)
  {
    sub_100141EEC(&qword_1008F0BA8, &qword_1006F5FD8);
    sub_10014A6B0(&qword_1008F0BB8, &qword_1008F0BC0, &qword_1006F5FE0, &protocol conformance descriptor for List<A, B>);
    sub_10014A6B0(&qword_1008F0BC8, &qword_1008F0BD0, &qword_1006F5FE8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F0BB0);
  }

  return result;
}

unint64_t sub_1004F4094()
{
  result = qword_1008F0BE0;
  if (!qword_1008F0BE0)
  {
    sub_100141EEC(&qword_1008F0BD8, &qword_1006F5FF0);
    sub_1004F414C();
    sub_10014A6B0(&qword_1008F0BF8, &qword_1008F0C00, &qword_1006F6000, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F0BE0);
  }

  return result;
}

unint64_t sub_1004F414C()
{
  result = qword_1008F0BE8;
  if (!qword_1008F0BE8)
  {
    sub_100141EEC(&qword_1008F0BF0, &qword_1006F5FF8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F0BE8);
  }

  return result;
}

uint64_t sub_1004F4200(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1004F4294()
{
  v1 = *(type metadata accessor for OvernightMetricsReorderingView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  sub_100140278(&qword_1008EE800, &qword_1006D7580);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for DismissAction();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

double sub_1004F43C8(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for OvernightMetricsReorderingView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1004F181C(a1, a2, v6);
}

void *sub_1004F4450(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = __CocoaDictionary.lookup(_:)();

    if (v4)
    {
      sub_1000059F8(0, &qword_1008E9FF8, _HKFitnessFriendActivitySnapshot_ptr);
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = sub_1004C5AA8(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

id sub_1004F4514(uint64_t a1)
{
  v3 = [objc_allocWithZone(NSNumber) initWithLongLong:a1];
  v4 = *(v1 + OBJC_IVAR____TtC10FitnessApp50ActivitySharingFriendDetailActivitySummaryProvider_friend);
  result = [v4 snapshots];
  if (result)
  {
    v6 = result;
    sub_1000059F8(0, &qword_1008E1750, NSNumber_ptr);
    sub_1000059F8(0, &qword_1008E9FF8, _HKFitnessFriendActivitySnapshot_ptr);
    sub_1004F6630();
    v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v8 = sub_1004F4450(v3, v7);

    if (v8)
    {
      v9 = [v8 activitySummary];
      if (v9)
      {
        if ([v4 isMe])
        {
          v10 = [*(v1 + OBJC_IVAR____TtC10FitnessApp50ActivitySharingFriendDetailActivitySummaryProvider_pauseRingsCoordinator) isPausedForActivitySummaryCacheIndex:a1];
        }

        else
        {
          v10 = 0;
        }

        [v9 setDeprecatedPauseForInternalSwiftClient:v10];
      }

      v3 = v8;
    }

    else
    {
      v9 = 0;
    }

    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1004F46E0()
{
  result = [*(v0 + OBJC_IVAR____TtC10FitnessApp50ActivitySharingFriendDetailActivitySummaryProvider_friend) snapshots];
  if (result)
  {
    v2 = result;
    sub_1000059F8(0, &qword_1008E1750, NSNumber_ptr);
    sub_1000059F8(0, &qword_1008E9FF8, _HKFitnessFriendActivitySnapshot_ptr);
    sub_1004F6630();
    v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if ((v3 & 0xC000000000000001) != 0)
    {
      v4 = __CocoaDictionary.count.getter();
    }

    else
    {
      v4 = *(v3 + 16);
    }

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1004F4878(void (*a1)(void *, _BYTE *, uint64_t, Swift::Int), uint64_t (*a2)(void, Swift::Int, uint64_t, uint64_t))
{
  v5 = [*(v2 + OBJC_IVAR____TtC10FitnessApp50ActivitySharingFriendDetailActivitySummaryProvider_friend) snapshots];
  if (!v5)
  {
LABEL_14:
    __break(1u);

    __break(1u);
    return;
  }

  v6 = v5;
  sub_1000059F8(0, &qword_1008E1750, NSNumber_ptr);
  sub_1000059F8(0, &qword_1008E9FF8, _HKFitnessFriendActivitySnapshot_ptr);
  sub_1004F6630();
  v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v11 = sub_10031164C(v7);
  sub_1004F4FF0(&v11, a1, a2);

  v8 = v11;
  if (v11 < 0 || (v11 & 0x4000000000000000) != 0)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_5;
    }
  }

  else if (*(v11 + 16))
  {
LABEL_5:
    if ((v8 & 0xC000000000000001) != 0)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_8;
    }

    if (*(v8 + 16))
    {
      v9 = *(v8 + 32);
LABEL_8:
      v10 = v9;

      [v10 longLongValue];

      return;
    }

    __break(1u);
    goto LABEL_14;
  }
}

uint64_t sub_1004F4A30()
{
  v1 = type metadata accessor for DateComponents();
  v35 = *(v1 - 8);
  v36 = v1;
  __chkstk_darwin(v1);
  v32 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Calendar();
  v33 = *(v3 - 8);
  v34 = v3;
  __chkstk_darwin(v3);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v31 - v11;
  *&v14 = __chkstk_darwin(v13).n128_u64[0];
  v16 = &v31 - v15;
  v17 = [*(v0 + OBJC_IVAR____TtC10FitnessApp50ActivitySharingFriendDetailActivitySummaryProvider_friend) currentSnapshot];
  if (v17 && (v18 = v17, [v17 snapshotIndex], v18, (v19 = _HKStartDateForSnapshotIndex()) != 0))
  {
    v20 = v19;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v7 + 32))(v16, v12, v6);
  }

  else
  {
    Date.init()();
  }

  static Calendar.current.getter();
  Date.startOfFitnessWeek(for:)();
  sub_100140278(&unk_1008E51B0, &unk_1006D8360);
  v21 = type metadata accessor for Calendar.Component();
  v22 = *(v21 - 8);
  v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1006D46C0;
  (*(v22 + 104))(v24 + v23, enum case for Calendar.Component.day(_:), v21);
  sub_10001C970(v24);
  swift_setDeallocating();
  (*(v22 + 8))(v24 + v23, v21);
  swift_deallocClassInstance();
  v25 = v32;
  Calendar.dateComponents(_:from:to:)();

  v26 = DateComponents.day.getter();
  LOBYTE(v21) = v27;
  (*(v35 + 8))(v25, v36);
  v28 = *(v7 + 8);
  v28(v9, v6);
  (*(v33 + 8))(v5, v34);
  v28(v16, v6);
  if (v21)
  {
    v29 = 0;
  }

  else
  {
    v29 = v26;
  }

  result = 6 - v29;
  if (__OFSUB__(6, v29))
  {
    __break(1u);
  }

  return result;
}

id sub_1004F4F4C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ActivitySharingFriendDetailActivitySummaryProvider();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1004F4FF0(uint64_t *a1, void (*a2)(void *, _BYTE *, uint64_t, Swift::Int), uint64_t (*a3)(void, Swift::Int, uint64_t, uint64_t))
{
  v6 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_1001AB738(v6);
    *a1 = v6;
  }

  v8 = *(v6 + 16);
  v10[0] = v6 + 32;
  v10[1] = v8;
  sub_1004F5084(v10, a2, a3);
  return specialized ContiguousArray._endMutation()();
}

Swift::Int sub_1004F5084(uint64_t a1, void (*a2)(void *, _BYTE *, uint64_t, Swift::Int), uint64_t (*a3)(void, Swift::Int, uint64_t, uint64_t))
{
  v6 = *(a1 + 8);
  result = _minimumMergeRunLength(_:)(v6);
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_1000059F8(0, &qword_1008E1750, NSNumber_ptr);
        v10 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) = v9;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFF8;
      v12[0] = (v10 & 0xFFFFFFFFFFFFFF8) + 32;
      v12[1] = v9;
      a2(v12, v13, a1, v8);
      *(v11 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    return a3(0, v6, 1, a1);
  }

  return result;
}

void sub_1004F51A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v17 = v7;
    v18 = v6;
    while (1)
    {
      v9 = *v6;
      v10 = v8;
      v11 = v9;
      v12 = [v10 longLongValue];
      v13 = [v11 longLongValue];

      if (v12 >= v13)
      {
LABEL_4:
        ++v4;
        v6 = v18 + 8;
        v7 = v17 - 1;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v14 = *v6;
      v8 = *(v6 + 8);
      *v6 = v8;
      *(v6 + 8) = v14;
      v6 -= 8;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1004F52A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v17 = v7;
    v18 = v6;
    while (1)
    {
      v9 = *v6;
      v10 = v8;
      v11 = v9;
      v12 = [v10 longLongValue];
      v13 = [v11 longLongValue];

      if (v13 >= v12)
      {
LABEL_4:
        ++v4;
        v6 = v18 + 8;
        v7 = v17 - 1;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v14 = *v6;
      v8 = *(v6 + 8);
      *v6 = v8;
      *(v6 + 8) = v14;
      v6 -= 8;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1004F5398(id *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_90:
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v8 = sub_1001A99A4(v8);
    }

    v91 = *(v8 + 2);
    if (v91 >= 2)
    {
      while (*a3)
      {
        v92 = v8;
        v8 = (v91 - 1);
        v93 = *&v92[16 * v91];
        v94 = *&v92[16 * v91 + 24];
        sub_1004F6068((*a3 + 8 * v93), (*a3 + 8 * *&v92[16 * v91 + 16]), (*a3 + 8 * v94), v7);
        if (v5)
        {
          goto LABEL_100;
        }

        if (v94 < v93)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v92 = sub_1001A99A4(v92);
        }

        if (v91 - 2 >= *(v92 + 2))
        {
          goto LABEL_116;
        }

        v95 = &v92[16 * v91];
        *v95 = v93;
        *(v95 + 1) = v94;
        sub_1001A9918(v91 - 1);
        v8 = v92;
        v91 = *(v92 + 2);
        if (v91 <= 1)
        {
          goto LABEL_100;
        }
      }

      goto LABEL_126;
    }

LABEL_100:

    return;
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7;
    v7 = (v7 + 1);
    if (v7 < v6)
    {
      v101 = v5;
      v97 = 8 * v9;
      v10 = (*a3 + 8 * v9);
      v12 = *v10;
      v11 = v10 + 2;
      v13 = *(*a3 + 8 * v7);
      v14 = v12;
      v106 = [v13 longLongValue];
      v104 = [v14 longLongValue];

      v99 = v9;
      v15 = v9 + 2;
      while (v6 != v15)
      {
        v16 = *(v11 - 1);
        v17 = *v11;
        v18 = v16;
        v19 = v8;
        v20 = [v17 longLongValue];
        v7 = [v18 longLongValue];

        v21 = v20 < v7;
        v8 = v19;
        v22 = !v21;
        ++v15;
        ++v11;
        if ((((v106 < v104) ^ v22) & 1) == 0)
        {
          v6 = v15 - 1;
          break;
        }
      }

      v9 = v99;
      v5 = v101;
      v23 = v97;
      if (v106 < v104)
      {
        if (v6 < v99)
        {
          goto LABEL_119;
        }

        if (v99 < v6)
        {
          v24 = 8 * v6 - 8;
          v25 = v6;
          v26 = v99;
          do
          {
            if (v26 != --v25)
            {
              v28 = *a3;
              if (!*a3)
              {
                goto LABEL_125;
              }

              v27 = *(v28 + v23);
              *(v28 + v23) = *(v28 + v24);
              *(v28 + v24) = v27;
            }

            ++v26;
            v24 -= 8;
            v23 += 8;
          }

          while (v26 < v25);
        }
      }

      v7 = v6;
    }

    v29 = a3[1];
    if (v7 < v29)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        v30 = v9 + a4;
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v30 >= v29)
        {
          v30 = a3[1];
        }

        if (v30 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v30)
        {
          break;
        }
      }
    }

LABEL_39:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1001A1D54(0, *(v8 + 2) + 1, 1, v8);
    }

    v45 = *(v8 + 2);
    v44 = *(v8 + 3);
    v46 = v45 + 1;
    if (v45 >= v44 >> 1)
    {
      v8 = sub_1001A1D54((v44 > 1), v45 + 1, 1, v8);
    }

    *(v8 + 2) = v46;
    v47 = &v8[16 * v45];
    *(v47 + 4) = v9;
    *(v47 + 5) = v7;
    v48 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v45)
    {
      while (1)
      {
        v49 = v46 - 1;
        if (v46 >= 4)
        {
          break;
        }

        if (v46 == 3)
        {
          v50 = *(v8 + 4);
          v51 = *(v8 + 5);
          v60 = __OFSUB__(v51, v50);
          v52 = v51 - v50;
          v53 = v60;
LABEL_59:
          if (v53)
          {
            goto LABEL_106;
          }

          v66 = &v8[16 * v46];
          v68 = *v66;
          v67 = *(v66 + 1);
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_109;
          }

          v72 = &v8[16 * v49 + 32];
          v74 = *v72;
          v73 = *(v72 + 1);
          v60 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v60)
          {
            goto LABEL_112;
          }

          if (__OFADD__(v70, v75))
          {
            goto LABEL_113;
          }

          if (v70 + v75 >= v52)
          {
            if (v52 < v75)
            {
              v49 = v46 - 2;
            }

            goto LABEL_80;
          }

          goto LABEL_73;
        }

        v76 = &v8[16 * v46];
        v78 = *v76;
        v77 = *(v76 + 1);
        v60 = __OFSUB__(v77, v78);
        v70 = v77 - v78;
        v71 = v60;
LABEL_73:
        if (v71)
        {
          goto LABEL_108;
        }

        v79 = &v8[16 * v49];
        v81 = *(v79 + 4);
        v80 = *(v79 + 5);
        v60 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v60)
        {
          goto LABEL_111;
        }

        if (v82 < v70)
        {
          goto LABEL_3;
        }

LABEL_80:
        v87 = v49 - 1;
        if (v49 - 1 >= v46)
        {
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

        v88 = *&v8[16 * v87 + 32];
        v89 = *&v8[16 * v49 + 40];
        sub_1004F6068((*a3 + 8 * v88), (*a3 + 8 * *&v8[16 * v49 + 32]), (*a3 + 8 * v89), v48);
        if (v5)
        {
          goto LABEL_100;
        }

        if (v89 < v88)
        {
          goto LABEL_102;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1001A99A4(v8);
        }

        if (v87 >= *(v8 + 2))
        {
          goto LABEL_103;
        }

        v90 = &v8[16 * v87];
        *(v90 + 4) = v88;
        *(v90 + 5) = v89;
        sub_1001A9918(v49);
        v46 = *(v8 + 2);
        if (v46 <= 1)
        {
          goto LABEL_3;
        }
      }

      v54 = &v8[16 * v46 + 32];
      v55 = *(v54 - 64);
      v56 = *(v54 - 56);
      v60 = __OFSUB__(v56, v55);
      v57 = v56 - v55;
      if (v60)
      {
        goto LABEL_104;
      }

      v59 = *(v54 - 48);
      v58 = *(v54 - 40);
      v60 = __OFSUB__(v58, v59);
      v52 = v58 - v59;
      v53 = v60;
      if (v60)
      {
        goto LABEL_105;
      }

      v61 = &v8[16 * v46];
      v63 = *v61;
      v62 = *(v61 + 1);
      v60 = __OFSUB__(v62, v63);
      v64 = v62 - v63;
      if (v60)
      {
        goto LABEL_107;
      }

      v60 = __OFADD__(v52, v64);
      v65 = v52 + v64;
      if (v60)
      {
        goto LABEL_110;
      }

      if (v65 >= v57)
      {
        v83 = &v8[16 * v49 + 32];
        v85 = *v83;
        v84 = *(v83 + 1);
        v60 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v60)
        {
          goto LABEL_114;
        }

        if (v52 < v86)
        {
          v49 = v46 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_59;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_90;
    }
  }

  v98 = v8;
  v100 = v9;
  v102 = v5;
  v31 = *a3;
  v32 = *a3 + 8 * v7 - 8;
  v33 = v9 - v7;
  v105 = v30;
LABEL_32:
  v107 = v7;
  v34 = *(v31 + 8 * v7);
  v35 = v33;
  v36 = v32;
  while (1)
  {
    v37 = *v36;
    v38 = v34;
    v39 = v37;
    v40 = [v38 longLongValue];
    v41 = [v39 longLongValue];

    if (v40 >= v41)
    {
LABEL_31:
      v7 = (v107 + 1);
      v32 += 8;
      --v33;
      if ((v107 + 1) != v105)
      {
        goto LABEL_32;
      }

      v7 = v105;
      v9 = v100;
      v5 = v102;
      v8 = v98;
      goto LABEL_39;
    }

    if (!v31)
    {
      break;
    }

    v42 = *v36;
    v34 = *(v36 + 8);
    *v36 = v34;
    *(v36 + 8) = v42;
    v36 -= 8;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_31;
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
}

void sub_1004F5A00(id *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_90:
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v8 = sub_1001A99A4(v8);
    }

    v91 = *(v8 + 2);
    if (v91 >= 2)
    {
      while (*a3)
      {
        v92 = v8;
        v8 = (v91 - 1);
        v93 = *&v92[16 * v91];
        v94 = *&v92[16 * v91 + 24];
        sub_1004F634C((*a3 + 8 * v93), (*a3 + 8 * *&v92[16 * v91 + 16]), (*a3 + 8 * v94), v7);
        if (v5)
        {
          goto LABEL_100;
        }

        if (v94 < v93)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v92 = sub_1001A99A4(v92);
        }

        if (v91 - 2 >= *(v92 + 2))
        {
          goto LABEL_116;
        }

        v95 = &v92[16 * v91];
        *v95 = v93;
        *(v95 + 1) = v94;
        sub_1001A9918(v91 - 1);
        v8 = v92;
        v91 = *(v92 + 2);
        if (v91 <= 1)
        {
          goto LABEL_100;
        }
      }

      goto LABEL_126;
    }

LABEL_100:

    return;
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7;
    v7 = (v7 + 1);
    if (v7 < v6)
    {
      v101 = v5;
      v97 = 8 * v9;
      v10 = (*a3 + 8 * v9);
      v12 = *v10;
      v11 = v10 + 2;
      v13 = *(*a3 + 8 * v7);
      v14 = v12;
      v106 = [v13 longLongValue];
      v104 = [v14 longLongValue];

      v99 = v9;
      v15 = v9 + 2;
      while (v6 != v15)
      {
        v16 = *(v11 - 1);
        v17 = *v11;
        v18 = v16;
        v19 = v8;
        v20 = [v17 longLongValue];
        v7 = [v18 longLongValue];

        v21 = v7 < v20;
        v8 = v19;
        v22 = !v21;
        ++v15;
        ++v11;
        if ((((v104 < v106) ^ v22) & 1) == 0)
        {
          v6 = v15 - 1;
          break;
        }
      }

      v9 = v99;
      v5 = v101;
      v23 = v97;
      if (v104 < v106)
      {
        if (v6 < v99)
        {
          goto LABEL_119;
        }

        if (v99 < v6)
        {
          v24 = 8 * v6 - 8;
          v25 = v6;
          v26 = v99;
          do
          {
            if (v26 != --v25)
            {
              v28 = *a3;
              if (!*a3)
              {
                goto LABEL_125;
              }

              v27 = *(v28 + v23);
              *(v28 + v23) = *(v28 + v24);
              *(v28 + v24) = v27;
            }

            ++v26;
            v24 -= 8;
            v23 += 8;
          }

          while (v26 < v25);
        }
      }

      v7 = v6;
    }

    v29 = a3[1];
    if (v7 < v29)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        v30 = v9 + a4;
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v30 >= v29)
        {
          v30 = a3[1];
        }

        if (v30 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v30)
        {
          break;
        }
      }
    }

LABEL_39:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1001A1D54(0, *(v8 + 2) + 1, 1, v8);
    }

    v45 = *(v8 + 2);
    v44 = *(v8 + 3);
    v46 = v45 + 1;
    if (v45 >= v44 >> 1)
    {
      v8 = sub_1001A1D54((v44 > 1), v45 + 1, 1, v8);
    }

    *(v8 + 2) = v46;
    v47 = &v8[16 * v45];
    *(v47 + 4) = v9;
    *(v47 + 5) = v7;
    v48 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v45)
    {
      while (1)
      {
        v49 = v46 - 1;
        if (v46 >= 4)
        {
          break;
        }

        if (v46 == 3)
        {
          v50 = *(v8 + 4);
          v51 = *(v8 + 5);
          v60 = __OFSUB__(v51, v50);
          v52 = v51 - v50;
          v53 = v60;
LABEL_59:
          if (v53)
          {
            goto LABEL_106;
          }

          v66 = &v8[16 * v46];
          v68 = *v66;
          v67 = *(v66 + 1);
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_109;
          }

          v72 = &v8[16 * v49 + 32];
          v74 = *v72;
          v73 = *(v72 + 1);
          v60 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v60)
          {
            goto LABEL_112;
          }

          if (__OFADD__(v70, v75))
          {
            goto LABEL_113;
          }

          if (v70 + v75 >= v52)
          {
            if (v52 < v75)
            {
              v49 = v46 - 2;
            }

            goto LABEL_80;
          }

          goto LABEL_73;
        }

        v76 = &v8[16 * v46];
        v78 = *v76;
        v77 = *(v76 + 1);
        v60 = __OFSUB__(v77, v78);
        v70 = v77 - v78;
        v71 = v60;
LABEL_73:
        if (v71)
        {
          goto LABEL_108;
        }

        v79 = &v8[16 * v49];
        v81 = *(v79 + 4);
        v80 = *(v79 + 5);
        v60 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v60)
        {
          goto LABEL_111;
        }

        if (v82 < v70)
        {
          goto LABEL_3;
        }

LABEL_80:
        v87 = v49 - 1;
        if (v49 - 1 >= v46)
        {
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

        v88 = *&v8[16 * v87 + 32];
        v89 = *&v8[16 * v49 + 40];
        sub_1004F634C((*a3 + 8 * v88), (*a3 + 8 * *&v8[16 * v49 + 32]), (*a3 + 8 * v89), v48);
        if (v5)
        {
          goto LABEL_100;
        }

        if (v89 < v88)
        {
          goto LABEL_102;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1001A99A4(v8);
        }

        if (v87 >= *(v8 + 2))
        {
          goto LABEL_103;
        }

        v90 = &v8[16 * v87];
        *(v90 + 4) = v88;
        *(v90 + 5) = v89;
        sub_1001A9918(v49);
        v46 = *(v8 + 2);
        if (v46 <= 1)
        {
          goto LABEL_3;
        }
      }

      v54 = &v8[16 * v46 + 32];
      v55 = *(v54 - 64);
      v56 = *(v54 - 56);
      v60 = __OFSUB__(v56, v55);
      v57 = v56 - v55;
      if (v60)
      {
        goto LABEL_104;
      }

      v59 = *(v54 - 48);
      v58 = *(v54 - 40);
      v60 = __OFSUB__(v58, v59);
      v52 = v58 - v59;
      v53 = v60;
      if (v60)
      {
        goto LABEL_105;
      }

      v61 = &v8[16 * v46];
      v63 = *v61;
      v62 = *(v61 + 1);
      v60 = __OFSUB__(v62, v63);
      v64 = v62 - v63;
      if (v60)
      {
        goto LABEL_107;
      }

      v60 = __OFADD__(v52, v64);
      v65 = v52 + v64;
      if (v60)
      {
        goto LABEL_110;
      }

      if (v65 >= v57)
      {
        v83 = &v8[16 * v49 + 32];
        v85 = *v83;
        v84 = *(v83 + 1);
        v60 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v60)
        {
          goto LABEL_114;
        }

        if (v52 < v86)
        {
          v49 = v46 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_59;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_90;
    }
  }

  v98 = v8;
  v100 = v9;
  v102 = v5;
  v31 = *a3;
  v32 = *a3 + 8 * v7 - 8;
  v33 = v9 - v7;
  v105 = v30;
LABEL_32:
  v107 = v7;
  v34 = *(v31 + 8 * v7);
  v35 = v33;
  v36 = v32;
  while (1)
  {
    v37 = *v36;
    v38 = v34;
    v39 = v37;
    v40 = [v38 longLongValue];
    v41 = [v39 longLongValue];

    if (v41 >= v40)
    {
LABEL_31:
      v7 = (v107 + 1);
      v32 += 8;
      --v33;
      if ((v107 + 1) != v105)
      {
        goto LABEL_32;
      }

      v7 = v105;
      v9 = v100;
      v5 = v102;
      v8 = v98;
      goto LABEL_39;
    }

    if (!v31)
    {
      break;
    }

    v42 = *v36;
    v34 = *(v36 + 8);
    *v36 = v34;
    *(v36 + 8) = v42;
    v36 -= 8;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_31;
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
}

uint64_t sub_1004F6068(void **__dst, void **a2, id *a3, void **__src)
{
  v4 = a3;
  v5 = __dst;
  v6 = a2 - __dst;
  v7 = a2 - __dst + 7;
  if (a2 - __dst >= 0)
  {
    v7 = a2 - __dst;
  }

  v8 = v7 >> 3;
  v9 = a3 - a2;
  v10 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v10 = a3 - a2;
  }

  v11 = v10 >> 3;
  if (v8 >= v10 >> 3)
  {
    if (__src != a2 || &a2[v11] <= __src)
    {
      v23 = a2;
      v24 = __src;
      memmove(__src, a2, 8 * v11);
      __src = v24;
      a2 = v23;
    }

    v41 = __src;
    v14 = &__src[v11];
    if (v9 < 8)
    {
      v13 = __src;
    }

    else
    {
      v13 = __src;
      if (a2 > v5)
      {
        v38 = v5;
LABEL_27:
        v39 = a2;
        v25 = a2 - 1;
        --v4;
        v26 = v14;
        do
        {
          v27 = v14;
          v28 = v4 + 1;
          v29 = *(v26 - 1);
          v26 -= 8;
          v30 = v25;
          v31 = *v25;
          v32 = v29;
          v33 = v31;
          v34 = [v32 longLongValue];
          v35 = [v33 longLongValue];

          if (v34 < v35)
          {
            if (v28 != v39)
            {
              *v4 = *v30;
            }

            v13 = v41;
            v14 = v27;
            if (v27 <= v41 || (a2 = v30, v30 <= v38))
            {
              a2 = v30;
              goto LABEL_40;
            }

            goto LABEL_27;
          }

          if (v28 != v27)
          {
            *v4 = *v26;
          }

          --v4;
          v14 = v26;
          v13 = v41;
          v25 = v30;
        }

        while (v26 > v41);
        v14 = v26;
        a2 = v39;
      }
    }
  }

  else
  {
    v12 = a2;
    v13 = __src;
    if (__src != __dst || &__dst[v8] <= __src)
    {
      memmove(__src, __dst, 8 * v8);
    }

    v14 = &v13[v8];
    if (v6 < 8)
    {
      a2 = v5;
    }

    else
    {
      v40 = &v13[v8];
      if (v12 < v4)
      {
        v15 = v12;
        while (1)
        {
          v16 = *v13;
          v17 = *v15;
          v18 = v16;
          v19 = [v17 longLongValue];
          v20 = [v18 longLongValue];

          if (v19 >= v20)
          {
            break;
          }

          v21 = v15;
          v22 = v5 == v15++;
          if (!v22)
          {
            goto LABEL_17;
          }

LABEL_18:
          ++v5;
          if (v13 >= v40 || v15 >= v4)
          {
            goto LABEL_20;
          }
        }

        v21 = v13;
        v22 = v5 == v13++;
        if (v22)
        {
          goto LABEL_18;
        }

LABEL_17:
        *v5 = *v21;
        goto LABEL_18;
      }

LABEL_20:
      a2 = v5;
      v14 = v40;
    }
  }

LABEL_40:
  v36 = v14 - v13 + (v14 - v13 < 0 ? 7uLL : 0);
  if (a2 != v13 || a2 >= (v13 + (v36 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a2, v13, 8 * (v36 >> 3));
  }

  return 1;
}

uint64_t sub_1004F634C(void **__dst, void **a2, id *a3, void **__src)
{
  v4 = a3;
  v5 = __dst;
  v6 = a2 - __dst;
  v7 = a2 - __dst + 7;
  if (a2 - __dst >= 0)
  {
    v7 = a2 - __dst;
  }

  v8 = v7 >> 3;
  v9 = a3 - a2;
  v10 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v10 = a3 - a2;
  }

  v11 = v10 >> 3;
  if (v8 >= v10 >> 3)
  {
    if (__src != a2 || &a2[v11] <= __src)
    {
      v23 = a2;
      v24 = __src;
      memmove(__src, a2, 8 * v11);
      __src = v24;
      a2 = v23;
    }

    v41 = __src;
    v14 = &__src[v11];
    if (v9 < 8)
    {
      v13 = __src;
    }

    else
    {
      v13 = __src;
      if (a2 > v5)
      {
        v38 = v5;
LABEL_27:
        v39 = a2;
        v25 = a2 - 1;
        --v4;
        v26 = v14;
        do
        {
          v27 = v14;
          v28 = v4 + 1;
          v29 = *(v26 - 1);
          v26 -= 8;
          v30 = v25;
          v31 = *v25;
          v32 = v29;
          v33 = v31;
          v34 = [v32 longLongValue];
          v35 = [v33 longLongValue];

          if (v35 < v34)
          {
            if (v28 != v39)
            {
              *v4 = *v30;
            }

            v13 = v41;
            v14 = v27;
            if (v27 <= v41 || (a2 = v30, v30 <= v38))
            {
              a2 = v30;
              goto LABEL_40;
            }

            goto LABEL_27;
          }

          if (v28 != v27)
          {
            *v4 = *v26;
          }

          --v4;
          v14 = v26;
          v13 = v41;
          v25 = v30;
        }

        while (v26 > v41);
        v14 = v26;
        a2 = v39;
      }
    }
  }

  else
  {
    v12 = a2;
    v13 = __src;
    if (__src != __dst || &__dst[v8] <= __src)
    {
      memmove(__src, __dst, 8 * v8);
    }

    v14 = &v13[v8];
    if (v6 < 8)
    {
      a2 = v5;
    }

    else
    {
      v40 = &v13[v8];
      if (v12 < v4)
      {
        v15 = v12;
        while (1)
        {
          v16 = *v13;
          v17 = *v15;
          v18 = v16;
          v19 = [v17 longLongValue];
          v20 = [v18 longLongValue];

          if (v20 >= v19)
          {
            break;
          }

          v21 = v15;
          v22 = v5 == v15++;
          if (!v22)
          {
            goto LABEL_17;
          }

LABEL_18:
          ++v5;
          if (v13 >= v40 || v15 >= v4)
          {
            goto LABEL_20;
          }
        }

        v21 = v13;
        v22 = v5 == v13++;
        if (v22)
        {
          goto LABEL_18;
        }

LABEL_17:
        *v5 = *v21;
        goto LABEL_18;
      }

LABEL_20:
      a2 = v5;
      v14 = v40;
    }
  }

LABEL_40:
  v36 = v14 - v13 + (v14 - v13 < 0 ? 7uLL : 0);
  if (a2 != v13 || a2 >= (v13 + (v36 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a2, v13, 8 * (v36 >> 3));
  }

  return 1;
}