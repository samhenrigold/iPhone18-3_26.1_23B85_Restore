void sub_10022063C(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, int a4@<W3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, void *a8@<X7>, uint64_t a9@<X8>, int *a10)
{
  v66 = a8;
  v67 = a5;
  v69 = a7;
  v76 = a4;
  v77 = a6;
  v13 = a3;
  v74 = type metadata accessor for UUID();
  v72 = *(v74 - 8);
  __chkstk_darwin(v74);
  v71 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for ActivityRingsCard(0);
  __chkstk_darwin(v75);
  v73 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100140278(&unk_1008DB8A0, qword_1006DBA20);
  __chkstk_darwin(v16 - 8);
  v70 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v68 = &v63 - v19;
  v20 = sub_100140278(&unk_1008F73A0, &unk_1006DB450);
  __chkstk_darwin(v20 - 8);
  v78 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v63 - v23;
  __chkstk_darwin(v25);
  v79 = &v63 - v26;
  v27 = type metadata accessor for Calendar();
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v30 = &v63 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for Date();
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v34 = &v63 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  if (v13 < 3 || a1 | a2)
  {
    *(a9 + 32) = 0;
    *a9 = 0u;
    *(a9 + 16) = 0u;
  }

  else
  {
    v38 = v36;
    v39 = &v63 - v37;
    static Calendar.current.getter();
    Date.init()();
    Calendar.startOfDay(for:)();
    v40 = *(v32 + 8);
    v65 = v38;
    v63 = v40;
    v40(v34, v38);
    (*(v28 + 8))(v30, v27);
    v64 = v39;
    v41 = sub_1001E9F44();
    v42 = v69;
    v43 = [*(v69 + OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_summaryCache) activitySummaryForCacheIndex:v41];
    v44 = v66;
    v45 = [v66 resumeDate];
    if (v45)
    {
      v46 = v45;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v47 = 0;
    }

    else
    {
      v47 = 1;
    }

    v48 = v75;
    v49 = v73;
    v75 = a10;
    (*(v32 + 56))(v24, v47, 1, v65);
    sub_100015E80(v24, v79, &unk_1008F73A0, &unk_1006DB450);
    v50 = [v44 isPaused];
    v73 = v43;
    [v43 setDeprecatedPauseForInternalSwiftClient:v50];
    sub_10001B104(v67, v80, &qword_1008DCC60, &qword_1006DEBC0);
    v51 = v81;
    if (v81)
    {
      v52 = v82;
      sub_1000066AC(v80, v81);
      v53 = v51;
      v54 = v68;
      (*(v52 + 8))(v53, v52);
      v55 = v72;
      v56 = v74;
      (v72[7])(v54, 0, 1, v74);
      sub_100005A40(v80);
    }

    else
    {
      sub_10000EA04(v80, &qword_1008DCC60, &qword_1006DEBC0);
      v55 = v72;
      v54 = v68;
      v56 = v74;
      (v72[7])(v68, 1, 1, v74);
    }

    sub_10001B104(v79, v78, &unk_1008F73A0, &unk_1006DB450);
    LODWORD(v74) = *(v42 + OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_isWheelchairUser);
    *(a9 + 24) = v48;
    *(a9 + 32) = &off_1008552C8;
    v72 = sub_100005994(a9);
    v57 = v49 + v48[5];
    *v57 = 0;
    *(v57 + 8) = 0;
    *(v57 + 16) = 3;
    v58 = v70;
    sub_10001B104(v54, v70, &unk_1008DB8A0, qword_1006DBA20);
    v59 = v55[6];
    v60 = v59(v58, 1, v56);
    v61 = v75;
    if (v60 == 1)
    {
      v62 = v71;
      UUID.init()();
      sub_10000EA04(v54, &unk_1008DB8A0, qword_1006DBA20);
      if (v59(v58, 1, v56) != 1)
      {
        sub_10000EA04(v58, &unk_1008DB8A0, qword_1006DBA20);
      }
    }

    else
    {
      sub_10000EA04(v54, &unk_1008DB8A0, qword_1006DBA20);
      v62 = v71;
      (v55[4])(v71, v58, v56);
    }

    (v55[4])(v49, v62, v56);
    *(v49 + v48[6]) = v76 & 1;
    *(v49 + v48[7]) = v77 & 1;
    *(v49 + v48[8]) = 1;
    *(v49 + v48[9]) = v73;
    sub_100015E80(v78, v49 + v48[10], &unk_1008F73A0, &unk_1006DB450);
    *(v49 + v48[12]) = v74;
    *(v49 + v48[11]) = v75;
    sub_100221070(v49, v72, type metadata accessor for ActivityRingsCard);
    sub_10000EA04(v79, &unk_1008F73A0, &unk_1006DB450);
    v63(v64, v65);
  }
}

void sub_100220EB8(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X4>, char a5@<W5>, uint64_t a6@<X8>)
{
  if (a3 == 1)
  {
    sub_1004BEE80(result, a2, a4, a5 & 1, a6);
  }

  else if (a3 == 3 && result == 4 && !a2)
  {
    sub_1004BF854(a4, a5 & 1, a6);
  }

  else
  {
    *(a6 + 32) = 0;
    *a6 = 0u;
    *(a6 + 16) = 0u;
  }
}

void sub_100220F48(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v4;
}

uint64_t sub_100220FC8(unint64_t *a1, void **a2, __n128 a3)
{
  v3 = *a1;
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100221040(v3);
  v5 = v4;
  return static Published.subscript.setter();
}

double sub_100221040(unint64_t a1)
{
  if (a1 >= 4)
  {
  }

  return result;
}

uint64_t sub_100221070(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_1002210DC(void *a1)
{
  v2 = v1;
  v43 = type metadata accessor for AttributedString();
  v47 = *(v43 - 8);
  __chkstk_darwin(v43);
  v42 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v41 - v6;
  if (qword_1008DA658 != -1)
  {
    swift_once();
  }

  v45 = qword_100925290;
  v8 = UILabel.withFont(_:)();
  v9 = objc_opt_self();
  v44 = v9;
  v10 = [v9 secondaryLabelColor];
  v11 = UILabel.withTextColor(_:)();

  v12 = String._bridgeToObjectiveC()();
  [v11 setText:v12];

  v13 = UILabel.withFont(_:)();
  v14 = [v9 secondaryLabelColor];
  v15 = UILabel.withTextColor(_:)();

  v46 = v2;
  v50 = objc_opt_self();
  v16 = [v50 mainBundle];
  v17 = String._bridgeToObjectiveC()();
  v18 = [v16 localizedStringForKey:v17 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = a1;

  AttributedString.init(stringLiteral:)();
  v20 = sub_1002226E0();
  v21 = v47;
  v41 = *(v47 + 16);
  v48 = v47 + 16;
  v49 = v20;
  v22 = v42;
  v23 = v43;
  v41(v42, v7, v43);
  v24 = NSAttributedString.init(_:)();
  [v15 setAttributedText:v24];

  v47 = *(v21 + 8);
  (v47)(v7, v23);
  v25 = UILabel.withFont(_:)();
  v26 = [v44 secondaryLabelColor];
  v27 = UILabel.withTextColor(_:)();

  v28 = [v50 mainBundle];
  v29 = String._bridgeToObjectiveC()();
  v30 = [v28 localizedStringForKey:v29 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AttributedString.init(stringLiteral:)();
  v31 = v41;
  v41(v22, v7, v23);
  v32 = NSAttributedString.init(_:)();
  [v27 setAttributedText:v32];

  (v47)(v7, v23);
  v33 = [v44 secondaryLabelColor];
  v34 = UILabel.withTextColor(_:)();

  v35 = UILabel.withFont(_:)();
  v36 = [v50 mainBundle];
  v37 = String._bridgeToObjectiveC()();
  v38 = [v36 localizedStringForKey:v37 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AttributedString.init(stringLiteral:)();
  v31(v22, v7, v23);
  v39 = NSAttributedString.init(_:)();
  [v35 setAttributedText:v39];

  (v47)(v7, v23);
  [*(v46 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_separatorView) setHidden:1];
  return sub_1002251BC();
}

void sub_100221750(int a1, uint64_t a2, id a3)
{
  v4 = v3;
  v6 = [a3 fitnessUIFormattingManager];
  sub_100221E24(0);
  v7 = *(v3 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnOneLabel);
  v8 = [objc_opt_self() mainBundle];
  v9 = String._bridgeToObjectiveC()();
  v10 = [v8 localizedStringForKey:v9 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = String._bridgeToObjectiveC()();
  [v7 setText:v11];

  DownhillRunsStats.duration.getter();
  if (round(v12) < 3600.0)
  {
    v13 = 3;
  }

  else
  {
    v13 = 2;
  }

  v14 = [v6 stringWithDuration:v13 durationFormat:?];
  if (v14)
  {
    v15 = v14;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v16 = *(v4 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnTwoLabel);
    v17 = String._bridgeToObjectiveC()();
  }

  else
  {
    v17 = 0;
    v16 = *(v4 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnTwoLabel);
  }

  [v16 setText:v17];

  v18 = DownhillRunsStats.distance.getter();
  v19 = sub_100222314(v18, a2, v6);

  [*(v4 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnThreeLabel) setAttributedText:v19];
  v20 = DownhillRunsStats.elevationDescended.getter();
  v21 = sub_1002224FC(v20, v6);

  [*(v4 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnFourLabel) setAttributedText:v21];
  v22 = *(v4 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_separatorView);
  v23 = [objc_opt_self() grayColor];
  [v22 setBackgroundColor:v23];
}

void sub_100221AB8(void *a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v6 = v5;
  if (a1)
  {
    v11 = a1;
    v12 = [a5 fitnessUIFormattingManager];
    sub_100221E24(a4 & 1);
    v13 = objc_opt_self();
    v14 = [objc_allocWithZone(NSNumber) initWithInteger:a2];
    v15 = [v13 localizedStringFromNumber:v14 numberStyle:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = *(v6 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnOneLabel);
    v17 = String._bridgeToObjectiveC()();
    [v16 setText:v17];

    dispatch thunk of DownhillRun.workoutTime.getter();
    if (round(v18) < 3600.0)
    {
      v19 = 3;
    }

    else
    {
      v19 = 2;
    }

    v20 = [v12 stringWithDuration:v19 durationFormat:?];
    if (v20)
    {
      v21 = v20;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v22 = *(v6 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnTwoLabel);
      v23 = String._bridgeToObjectiveC()();
    }

    else
    {
      v23 = 0;
      v22 = *(v6 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnTwoLabel);
    }

    [v22 setText:v23];

    v24 = dispatch thunk of DownhillRun.distance.getter();
    v25 = sub_100222314(v24, a3, v12);

    [*(v6 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnThreeLabel) setAttributedText:v25];
    v26 = DownhillRun.elevationDescended.getter();
    v27 = sub_1002224FC(v26, v12);

    [*(v6 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnFourLabel) setAttributedText:v27];
  }

  else
  {

    sub_1002210DC(a5);
  }
}

id sub_100221E24(char a1)
{
  v2 = v1;
  if (qword_1008DA660 != -1)
  {
    swift_once();
  }

  v4 = UILabel.withFont(_:)();
  v5 = [objc_opt_self() secondaryLabelColor];
  v6 = UILabel.withTextColor(_:)();

  v7 = String._bridgeToObjectiveC()();
  [v6 setText:v7];

  if (qword_1008DA668 != -1)
  {
    swift_once();
  }

  v8 = UILabel.withFont(_:)();
  v9 = objc_opt_self();
  result = [v9 elapsedTimeColors];
  if (!result)
  {
    __break(1u);
    goto LABEL_18;
  }

  v11 = result;
  v12 = [result nonGradientTextColor];

  [v8 setTextColor:v12];
  v13 = String._bridgeToObjectiveC()();
  [v8 setText:v13];

  v14 = UILabel.withFont(_:)();
  result = [v9 distanceColors];
  if (!result)
  {
LABEL_18:
    __break(1u);
    return result;
  }

  v15 = result;
  v16 = [result nonGradientTextColor];

  [v14 setTextColor:v16];
  v17 = String._bridgeToObjectiveC()();
  [v14 setText:v17];

  v18 = UILabel.withFont(_:)();
  v19 = [v9 elevationColors];
  v20 = [v19 nonGradientTextColor];

  [v18 setTextColor:v20];
  v21 = String._bridgeToObjectiveC()();
  [v18 setText:v21];

  result = [*(v2 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_separatorView) setHidden:a1 & 1];
  if (a1)
  {
    v22 = *(v2 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_separatorViewBottomAnchorStandard);
    if (v22)
    {
      [v22 setActive:0];
    }

    v23 = *(v2 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_separatorViewBottomAnchorLastRow);
    if (v23)
    {
      [v23 setActive:1];
    }

    result = *(v2 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_heightAnchorHeaderFooterRow);
    if (result)
    {

      return [result setActive:1];
    }
  }

  return result;
}

id sub_1002222BC(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for WorkoutDetailFourColumnDownhillRunTableViewCell();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_100222314(id result, uint64_t a2, void *a3)
{
  if (result)
  {
    v4 = result;
    v5 = FIUIDistanceTypeForActivityType();
    v19 = 1;
    v6 = [objc_opt_self() meterUnit];
    [v4 doubleValueForUnit:v6];
    v8 = v7;

    v9 = [a3 localizedNaturalScaleStringWithDistanceInMeters:v5 distanceType:0 unitStyle:&v19 usedUnit:v8];
    if (v9)
    {
      v10 = v9;
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      result = [a3 localizedShortUnitStringForDistanceUnit:v19];
      if (result)
      {
        v14 = result;
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        sub_10000FCBC();
        v15 = StringProtocol.localizedUppercase.getter();
        v17 = v16;

        if (qword_1008DA668 != -1)
        {
          swift_once();
        }

        v18 = sub_1004C154C(v11, v13, v15, v17, qword_1009252A0);

        return v18;
      }

      else
      {
        __break(1u);
      }
    }

    else
    {

      return 0;
    }
  }

  return result;
}

id sub_1002224FC(id result, void *a2)
{
  if (!result)
  {
    return result;
  }

  v3 = result;
  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 meterUnit];
  [v5 doubleValueForUnit:v6];
  v8 = v7;

  v9 = [a2 localizedStringWithDistanceInMeters:5 distanceType:0 unitStyle:v8];
  if (!v9)
  {

    return 0;
  }

  v10 = v9;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  result = [a2 unitManager];
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v14 = result;
  v15 = [result userDistanceElevationUnit];

  result = [a2 localizedShortUnitStringForDistanceUnit:v15];
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v16 = result;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10000FCBC();
  v17 = StringProtocol.localizedUppercase.getter();
  v19 = v18;

  if (qword_1008DA668 != -1)
  {
    swift_once();
  }

  v20 = sub_1004C154C(v11, v13, v17, v19, qword_1009252A0);

  return v20;
}

unint64_t sub_1002226E0()
{
  result = qword_1008DD230;
  if (!qword_1008DD230)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1008DD230);
  }

  return result;
}

id sub_1002228CC(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ActivitySharingNavigationController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id *sub_100222AA4()
{
  sub_1000A7304((v0 + 4));

  v1 = OBJC_IVAR____TtC10FitnessApp22WorkoutDetailDataStore__inWorkoutData;
  v2 = sub_100140278(&qword_1008DD4B0, &qword_1006D5E08);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC10FitnessApp22WorkoutDetailDataStore__inWorkoutProperties;
  v4 = sub_100140278(&qword_1008DD4A8, &qword_1006D5E00);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

double sub_100222B8C(__n128 a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return result;
}

uint64_t (*sub_100222C04(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return sub_100222CA8;
}

void sub_100222CA8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_100222D10(__n128 a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v2;
}

void *sub_100222D84(uint64_t a1)
{
  v2 = v1;
  v99 = a1;
  v83 = type metadata accessor for WorkoutChartDataElement(0);
  v82 = *(v83 - 8);
  __chkstk_darwin(v83);
  v81 = &v76 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for DateInterval();
  v4 = *(v98 - 8);
  __chkstk_darwin(v98);
  v6 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v84 = &v76 - v8;
  v9 = sub_100140278(&unk_1008F73A0, &unk_1006DB450);
  __chkstk_darwin(v9 - 8);
  v93 = (&v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v95 = &v76 - v12;
  __chkstk_darwin(v13);
  v97 = &v76 - v14;
  v15 = type metadata accessor for Date();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v80 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v90 = &v76 - v19;
  __chkstk_darwin(v20);
  v96 = &v76 - v21;
  __chkstk_darwin(v22);
  v92 = &v76 - v23;
  __chkstk_darwin(v24);
  v26 = &v76 - v25;
  __chkstk_darwin(v27);
  v31 = &v76 - v30;
  v32 = *(v1 + 24);
  v100 = v28;
  v78 = &v76 - v30;
  v91 = v26;
  v94 = v2;
  if (v32)
  {
    v33 = sub_100655C20(v28, v29);
    v34 = v16;
    v35 = v15;
    v36 = [v32 startDate];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v37 = v34[4];
    v38 = v97;
    v37(v97, v26, v35);
    v77 = v34;
    v89 = v34[7];
    (v89)(v38, 0, 1, v35);
    v39 = v38;
    v40 = v37;
    v37(v31, v39, v35);
    v41 = [v32 endDate];
    if (v41)
    {
      v42 = v93;
      v43 = v41;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v44 = 0;
      v45 = v95;
    }

    else
    {
      v45 = v95;
      v42 = v93;
      v44 = 1;
    }

    v48 = v100;
    (v89)(v42, v44, 1, v100);
    sub_1002239C4(v42, v45);
    v16 = v77;
    v49 = *(v77 + 48);
    if (v49(v45, 1, v48) != 1)
    {
      v40(v92, v45, v48);
      goto LABEL_12;
    }
  }

  else
  {
    v33 = sub_1003AB20C(v28, v29);
    v46 = v97;
    v93 = v16[7];
    v93(v97, 1, 1, v15);
    v47 = [*(v2 + 16) startDate];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v48 = v100;
    v49 = v16[6];
    if (v49(v46, 1, v100) != 1)
    {
      sub_1001F145C(v97);
    }

    v45 = v95;
    v93(v95, 1, 1, v48);
  }

  v50 = v48;
  v51 = [*(v94 + 16) endDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v48 = v50;
  if (v49(v45, 1, v50) != 1)
  {
    sub_1001F145C(v45);
  }

LABEL_12:
  v52 = v96;
  v53 = v78;
  v94 = v16[2];
  v95 = (v16 + 2);
  (v94)(v96, v78, v48);
  if (static Date.< infix(_:_:)())
  {
    v54 = v33[2];
    v97 = OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_bucketDuration;
    v79 = OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_workoutDuration;
    v87 = (v16 + 4);
    v89 = _swiftEmptyArrayStorage;
    v93 = (v16 + 1);
    v77 = (v16 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v55 = v84;
    v56 = v91;
    v88 = v4 + 16;
    v86 = v33;
    while (2)
    {
      (v94)(v56, v52, v100);
      result = DateInterval.init(start:duration:)();
      v62 = 0;
      v63 = v98;
      do
      {
        if (v54 == v62)
        {
          v57 = v93;
          goto LABEL_15;
        }

        if (v62 >= v33[2])
        {
          __break(1u);
          return result;
        }

        (*(v4 + 16))(v6, v33 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v62++, v63);
        v64 = DateInterval.intersects(_:)();
        result = (*(v4 + 8))(v6, v63);
      }

      while ((v64 & 1) == 0);
      swift_getKeyPath();
      swift_getKeyPath();
      v65 = v80;
      static Published.subscript.getter();

      Date.timeIntervalSince(_:)();
      v66 = v90;
      Date.addingTimeInterval(_:)();
      v67 = v100;
      v85 = *v93;
      v85(v65, v100);
      v68 = v81;
      (v94)(v81, v66, v67);
      v69 = v83;
      *(v68 + *(v83 + 20)) = 0;
      *(v68 + *(v69 + 24)) = 0;
      *(v68 + *(v69 + 28)) = 0;
      v70 = v89;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v70 = sub_1001A1EB4(0, v70[2] + 1, 1, v70);
      }

      v72 = v70[2];
      v71 = v70[3];
      v57 = v93;
      if (v72 >= v71 >> 1)
      {
        v74 = sub_1001A1EB4((v71 > 1), v72 + 1, 1, v70);
        v57 = v93;
        v70 = v74;
      }

      v85(v90, v100);
      v70[2] = v72 + 1;
      v73 = (*(v82 + 80) + 32) & ~*(v82 + 80);
      v89 = v70;
      sub_100223960(v68, v70 + v73 + *(v82 + 72) * v72);
      v55 = v84;
LABEL_15:
      v56 = v91;
      v52 = v96;
      Date.addingTimeInterval(_:)();
      v58 = *v57;
      v59 = v100;
      (*v57)(v52, v100);
      (*v87)(v52, v56, v59);
      (*(v4 + 8))(v55, v98);
      v60 = static Date.< infix(_:_:)();
      v33 = v86;
      if (v60)
      {
        continue;
      }

      break;
    }

    v48 = v100;
    v53 = v78;
    v75 = v89;
    v58(v52, v100);
  }

  else
  {

    v58 = v16[1];
    v75 = _swiftEmptyArrayStorage;
    v58(v52, v48);
  }

  v58(v92, v48);
  v58(v53, v48);
  return v75;
}

uint64_t sub_100223788()
{
  sub_100222AA4();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WorkoutDetailDataStore(uint64_t a1)
{
  result = qword_1008E1E98;
  if (!qword_1008E1E98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100223834(uint64_t a1)
{
  sub_100144538(319, &qword_1008DD248, &qword_1008DD250, &qword_1006D63D0);
  if (v1 <= 0x3F)
  {
    sub_100144538(319, &qword_1008DD258, &unk_1008DD260, &qword_1006D5DA0);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_100223960(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutChartDataElement(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002239C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&unk_1008F73A0, &unk_1006DB450);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100223A54()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_100223AEC;

  return AppCoordinator.onAppActive()();
}

uint64_t sub_100223AEC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100223BE0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for Logger();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_100223CA0, 0, 0);
}

uint64_t sub_100223CA0(uint64_t a1)
{
  v3 = v1[5];
  v2 = v1[6];
  v4 = v1[4];
  static Log.default.getter();
  v5._countAndFlagsBits = 0xD00000000000002BLL;
  v5._object = 0x800000010074E480;
  v6._object = 0x800000010074E4B0;
  v6._countAndFlagsBits = 0xD000000000000016;
  Logger.trace(file:function:)(v5, v6);
  (*(v3 + 8))(v2, v4);
  v1[7] = objc_opt_self();
  v1[8] = type metadata accessor for MainActor();
  v1[9] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100223DB0, v8, v7);
}

uint64_t sub_100223DB0()
{
  v1 = *(v0 + 56);

  *(v0 + 80) = [v1 mainSystem];

  return _swift_task_switch(sub_100223E38, 0, 0);
}

uint64_t sub_100223E38(uint64_t a1)
{
  *(v1 + 88) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100223EC4, v3, v2);
}

uint64_t sub_100223EC4()
{
  v1 = *(v0 + 80);

  [v1 setNeedsRebuild];

  return _swift_task_switch(sub_100223F40, 0, 0);
}

uint64_t sub_100223F40()
{
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_100223FE0;
  v2 = *(v0 + 16);

  return AppCoordinator.activate(with:)(v2);
}

uint64_t sub_100223FE0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1002240F0(uint64_t a1)
{
  swift_allocObject();
  swift_weakInit();
  v2 = *(a1 + 16);

  os_unfair_lock_lock((v2 + 32));
  sub_10022438C((v2 + 16));
  os_unfair_lock_unlock((v2 + 32));
}

double sub_100224190(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    AppCoordinator.configureMenuBarBuilder(_:)();
  }

  return result;
}

uint64_t sub_10022420C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1002243A8(uint64_t a1)
{
  v2 = sub_100140278(&qword_1008E2080, &qword_1006DEF18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_100224410(uint64_t a1)
{
  if (_UISolariumEnabled())
  {
    v2 = [v1 contentView];
    v3 = [v2 heightAnchor];

    v4 = [v3 constraintGreaterThanOrEqualToConstant:42.0];
    v5 = &OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_heightAnchorHeaderFooterRow;
  }

  else
  {
    v6 = [*&v1[OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_separatorView] bottomAnchor];
    v7 = [v1 contentView];
    v8 = [v7 bottomAnchor];

    v9 = [v6 constraintEqualToAnchor:v8 constant:-8.0];
    v10 = *&v1[OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_separatorViewBottomAnchorLastRow];
    *&v1[OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_separatorViewBottomAnchorLastRow] = v9;

    v11 = [*&v1[OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnOneLabel] topAnchor];
    v12 = [v1 contentView];
    v3 = [v12 topAnchor];

    v4 = [v11 constraintEqualToAnchor:v3 constant:8.0];
    v5 = &OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_topAnchorHeaderRow;
  }

  v13 = *&v1[*v5];
  *&v1[*v5] = v4;

  v14 = *&v1[OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_separatorView];
  v15 = [v14 bottomAnchor];
  v16 = [v1 contentView];
  v17 = [v16 bottomAnchor];

  v18 = [v15 constraintEqualToAnchor:v17];
  v19 = *&v1[OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_separatorViewBottomAnchorStandard];
  v122 = OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_separatorViewBottomAnchorStandard;
  *&v1[OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_separatorViewBottomAnchorStandard] = v18;

  v20 = [v14 topAnchor];
  v21 = *&v1[OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnTwoLabel];
  v22 = [v21 bottomAnchor];
  v23 = [v20 constraintEqualToAnchor:v22 constant:4.0];

  v24 = *&v1[OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_separatorViewTopAnchorStandard];
  v121 = OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_separatorViewTopAnchorStandard;
  *&v1[OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_separatorViewTopAnchorStandard] = v23;

  v25 = [v14 topAnchor];
  v26 = [v21 bottomAnchor];
  v27 = [v25 constraintEqualToAnchor:v26];

  v28 = *&v1[OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_separatorViewTopAnchorHeader];
  *&v1[OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_separatorViewTopAnchorHeader] = v27;

  v29 = *&v1[OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnOneLabel];
  v30 = [v29 topAnchor];
  v31 = [v1 contentView];
  v32 = [v31 topAnchor];

  v33 = [v30 constraintEqualToAnchor:v32 constant:4.0];
  v34 = *&v1[OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_topAnchorStandardRow];
  v120 = OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_topAnchorStandardRow;
  *&v1[OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_topAnchorStandardRow] = v33;

  v35 = [v29 widthAnchor];
  v36 = [v35 constraintEqualToConstant:22.0];

  v119 = OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnOneWidthAnchorStandard;
  v37 = *&v1[OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnOneWidthAnchorStandard];
  *&v1[OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnOneWidthAnchorStandard] = v36;

  v38 = [v21 widthAnchor];
  v39 = [v29 widthAnchor];
  v40 = [v38 constraintEqualToAnchor:v39];

  v41 = *&v1[OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnTwoWidthAnchorCustom];
  *&v1[OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnTwoWidthAnchorCustom] = v40;

  v42 = *&v1[OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnThreeLabel];
  v43 = [v42 widthAnchor];
  v44 = [v21 widthAnchor];
  v45 = [v43 constraintEqualToAnchor:v44];

  v46 = *&v1[OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnThreeWidthAnchorStandard];
  v118 = OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnThreeWidthAnchorStandard;
  *&v1[OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnThreeWidthAnchorStandard] = v45;

  v47 = [v42 widthAnchor];
  v48 = [v21 widthAnchor];
  v49 = [v47 constraintEqualToAnchor:v48 constant:-40.0];

  v50 = *&v1[OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnThreeWidthAnchorSwimSet];
  *&v1[OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnThreeWidthAnchorSwimSet] = v49;

  v51 = *&v1[OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnFourLabel];
  v52 = [v51 widthAnchor];
  v53 = [v42 widthAnchor];
  v54 = [v52 constraintEqualToAnchor:v53];

  v55 = *&v1[OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnFourWidthAnchorStandard];
  v117 = OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnFourWidthAnchorStandard;
  *&v1[OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnFourWidthAnchorStandard] = v54;

  v56 = [v51 widthAnchor];
  v57 = [v42 widthAnchor];
  v58 = [v56 constraintEqualToAnchor:v57 constant:20.0];

  v59 = *&v1[OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnFourWidthAnchorSwimSet];
  *&v1[OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnFourWidthAnchorSwimSet] = v58;

  v116 = objc_opt_self();
  sub_100140278(&unk_1008E4E20, &qword_1006D5040);
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_1006D9830;
  v61 = [v29 leadingAnchor];
  v62 = [v1 contentView];
  v63 = [v62 leadingAnchor];

  v64 = [v61 constraintEqualToAnchor:v63 constant:16.0];
  *(v60 + 32) = v64;
  v65 = [v29 lastBaselineAnchor];
  v66 = [v21 lastBaselineAnchor];
  v67 = [v65 constraintEqualToAnchor:v66];

  *(v60 + 40) = v67;
  v68 = [v29 heightAnchor];
  v69 = [v21 heightAnchor];
  v70 = [v68 constraintGreaterThanOrEqualToAnchor:v69];

  *(v60 + 48) = v70;
  v71 = [v29 heightAnchor];
  v72 = [v42 heightAnchor];
  v73 = [v71 constraintGreaterThanOrEqualToAnchor:v72];

  *(v60 + 56) = v73;
  v74 = [v29 heightAnchor];
  v75 = [v51 heightAnchor];
  v76 = [v74 constraintGreaterThanOrEqualToAnchor:v75];

  *(v60 + 64) = v76;
  v77 = [v21 leadingAnchor];
  v78 = [v29 trailingAnchor];
  v79 = [v77 constraintEqualToAnchor:v78 constant:8.0];

  *(v60 + 72) = v79;
  v80 = [v21 lastBaselineAnchor];
  v81 = [v42 lastBaselineAnchor];
  v82 = [v80 constraintEqualToAnchor:v81];

  *(v60 + 80) = v82;
  v83 = [v42 leadingAnchor];
  v84 = [v21 trailingAnchor];
  v85 = [v83 constraintEqualToAnchor:v84 constant:8.0];

  *(v60 + 88) = v85;
  v86 = [v42 lastBaselineAnchor];
  v87 = [v51 lastBaselineAnchor];
  v88 = [v86 constraintEqualToAnchor:v87];

  *(v60 + 96) = v88;
  v89 = [v51 leadingAnchor];
  v90 = [v42 trailingAnchor];
  v91 = [v89 constraintEqualToAnchor:v90 constant:8.0];

  *(v60 + 104) = v91;
  v92 = [v51 trailingAnchor];
  v93 = [v1 contentView];
  v94 = [v93 trailingAnchor];

  v95 = [v92 constraintEqualToAnchor:v94 constant:-16.0];
  *(v60 + 112) = v95;
  v96 = [v14 leadingAnchor];
  v97 = [v1 contentView];
  v98 = [v97 leadingAnchor];

  v99 = [v96 constraintEqualToAnchor:v98 constant:16.0];
  *(v60 + 120) = v99;
  v100 = [v14 trailingAnchor];
  v101 = [v1 contentView];
  v102 = [v101 trailingAnchor];

  v103 = [v100 constraintEqualToAnchor:v102 constant:-16.0];
  *(v60 + 128) = v103;
  v104 = [v14 heightAnchor];
  v105 = [objc_opt_self() mainScreen];
  [v105 scale];
  v107 = v106;

  v108 = [v104 constraintEqualToConstant:1.0 / v107];
  *(v60 + 136) = v108;
  sub_10019EC5C();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v116 activateConstraints:isa];

  v110 = *&v1[v119];
  if (v110)
  {
    [v110 setActive:1];
  }

  v111 = *&v1[v118];
  if (v111)
  {
    [v111 setActive:1];
  }

  v112 = *&v1[v117];
  if (v112)
  {
    [v112 setActive:1];
  }

  v113 = *&v1[v121];
  if (v113)
  {
    [v113 setActive:1];
  }

  v114 = *&v1[v122];
  if (v114)
  {
    [v114 setActive:1];
  }

  result = *&v1[v120];
  if (result)
  {

    return [result setActive:1];
  }

  return result;
}

id sub_1002251BC()
{
  v1 = *(v0 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_topAnchorStandardRow);
  if (v1)
  {
    [v1 setActive:0];
  }

  v2 = *(v0 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_topAnchorHeaderRow);
  if (v2)
  {
    [v2 setActive:1];
  }

  v3 = *(v0 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_heightAnchorHeaderFooterRow);
  if (v3)
  {
    [v3 setActive:1];
  }

  v4 = *(v0 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnOneLabel);
  [v4 setNumberOfLines:2];
  [v4 setLineBreakMode:4];
  v5 = *(v0 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnTwoLabel);
  [v5 setNumberOfLines:2];
  [v5 setLineBreakMode:4];
  v6 = *(v0 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnThreeLabel);
  [v6 setNumberOfLines:2];
  [v6 setLineBreakMode:4];
  v7 = *(v0 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnFourLabel);
  [v7 setNumberOfLines:2];
  [v7 setLineBreakMode:4];
  v8 = *(v0 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_separatorViewTopAnchorStandard);
  if (v8)
  {
    [v8 setActive:0];
  }

  result = *(v0 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_separatorViewTopAnchorHeader);
  if (result)
  {

    return [result setActive:1];
  }

  return result;
}

id sub_100225350()
{
  v1 = *(v0 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnThreeWidthAnchorStandard);
  if (v1)
  {
    [v1 setActive:0];
  }

  v2 = *(v0 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnThreeWidthAnchorSwimSet);
  if (v2)
  {
    [v2 setActive:1];
  }

  v3 = *(v0 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnFourWidthAnchorStandard);
  if (v3)
  {
    [v3 setActive:0];
  }

  result = *(v0 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnFourWidthAnchorSwimSet);
  if (result)
  {

    return [result setActive:1];
  }

  return result;
}

id sub_1002253F8()
{
  [*(v0 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnOneLabel) setNumberOfLines:1];
  [*(v0 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnTwoLabel) setNumberOfLines:1];
  [*(v0 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnThreeLabel) setNumberOfLines:1];
  [*(v0 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnFourLabel) setNumberOfLines:1];
  v1 = *(v0 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnOneWidthAnchorStandard);
  if (v1)
  {
    [v1 setActive:1];
  }

  v2 = *(v0 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnThreeWidthAnchorStandard);
  if (v2)
  {
    [v2 setActive:1];
  }

  v3 = *(v0 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnFourWidthAnchorStandard);
  if (v3)
  {
    [v3 setActive:1];
  }

  v4 = *(v0 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_separatorViewTopAnchorStandard);
  if (v4)
  {
    [v4 setActive:1];
  }

  v5 = *(v0 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_separatorViewBottomAnchorStandard);
  if (v5)
  {
    [v5 setActive:1];
  }

  v6 = *(v0 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_topAnchorStandardRow);
  if (v6)
  {
    [v6 setActive:1];
  }

  v7 = *(v0 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_heightAnchorHeaderFooterRow);
  if (v7)
  {
    [v7 setActive:0];
  }

  v8 = *(v0 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_separatorViewBottomAnchorLastRow);
  if (v8)
  {
    [v8 setActive:0];
  }

  v9 = *(v0 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_separatorViewTopAnchorHeader);
  if (v9)
  {
    [v9 setActive:0];
  }

  v10 = *(v0 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_topAnchorHeaderRow);
  if (v10)
  {
    [v10 setActive:0];
  }

  v11 = *(v0 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnTwoWidthAnchorCustom);
  if (v11)
  {
    [v11 setActive:0];
  }

  v12 = *(v0 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnThreeWidthAnchorSwimSet);
  if (v12)
  {
    [v12 setActive:0];
  }

  result = *(v0 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnFourWidthAnchorSwimSet);
  if (result)
  {

    return [result setActive:0];
  }

  return result;
}

char *sub_1002256D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnOneLabel;
  v7 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v3[v6] = v7;
  v8 = OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnTwoLabel;
  v9 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v3[v8] = v9;
  v10 = OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnThreeLabel;
  v11 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v3[v10] = v11;
  v12 = OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnFourLabel;
  v13 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v3[v12] = v13;
  v14 = OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_separatorView;
  v15 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v3[v14] = v15;
  *&v3[OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_separatorViewBottomAnchorStandard] = 0;
  *&v3[OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_separatorViewBottomAnchorLastRow] = 0;
  *&v3[OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_separatorViewTopAnchorStandard] = 0;
  *&v3[OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_separatorViewTopAnchorHeader] = 0;
  *&v3[OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_topAnchorStandardRow] = 0;
  *&v3[OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_topAnchorHeaderRow] = 0;
  *&v3[OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_heightAnchorHeaderFooterRow] = 0;
  *&v3[OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnOneWidthAnchorStandard] = 0;
  *&v3[OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnTwoWidthAnchorCustom] = 0;
  *&v3[OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnThreeWidthAnchorStandard] = 0;
  *&v3[OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnThreeWidthAnchorSwimSet] = 0;
  *&v3[OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnFourWidthAnchorStandard] = 0;
  *&v3[OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnFourWidthAnchorSwimSet] = 0;
  if (a3)
  {
    v16 = String._bridgeToObjectiveC()();
  }

  else
  {
    v16 = 0;
  }

  v31.receiver = v3;
  v31.super_class = type metadata accessor for WorkoutDetailFourColumnTableViewCell();
  v17 = objc_msgSendSuper2(&v31, "initWithStyle:reuseIdentifier:", a1, v16);

  v18 = v17;
  v19 = [v18 contentView];
  [v19 addSubview:*&v18[OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnOneLabel]];

  v20 = [v18 contentView];
  [v20 addSubview:*&v18[OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnTwoLabel]];

  v21 = [v18 contentView];
  [v21 addSubview:*&v18[OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnThreeLabel]];

  v22 = [v18 contentView];
  [v22 addSubview:*&v18[OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnFourLabel]];

  v23 = OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_separatorView;
  v24 = *&v18[OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_separatorView];
  v25 = objc_opt_self();
  v26 = v24;
  v27 = [v25 separatorColor];
  [v26 setBackgroundColor:v27];

  [*&v18[v23] setTranslatesAutoresizingMaskIntoConstraints:0];
  v28 = [v18 contentView];

  [v28 addSubview:*&v18[v23]];
  sub_100224410(v29);

  return v18;
}

id sub_100225B80(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for WorkoutDetailFourColumnTableViewCell();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_100225D24()
{
  v1 = OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnOneLabel;
  v2 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v0 + v1) = v2;
  v3 = OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnTwoLabel;
  v4 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v0 + v3) = v4;
  v5 = OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnThreeLabel;
  v6 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v0 + v5) = v6;
  v7 = OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnFourLabel;
  v8 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v0 + v7) = v8;
  v9 = OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_separatorView;
  v10 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v0 + v9) = v10;
  *(v0 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_separatorViewBottomAnchorStandard) = 0;
  *(v0 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_separatorViewBottomAnchorLastRow) = 0;
  *(v0 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_separatorViewTopAnchorStandard) = 0;
  *(v0 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_separatorViewTopAnchorHeader) = 0;
  *(v0 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_topAnchorStandardRow) = 0;
  *(v0 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_topAnchorHeaderRow) = 0;
  *(v0 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_heightAnchorHeaderFooterRow) = 0;
  *(v0 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnOneWidthAnchorStandard) = 0;
  *(v0 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnTwoWidthAnchorCustom) = 0;
  *(v0 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnThreeWidthAnchorStandard) = 0;
  *(v0 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnThreeWidthAnchorSwimSet) = 0;
  *(v0 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnFourWidthAnchorStandard) = 0;
  *(v0 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnFourWidthAnchorSwimSet) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_100226050()
{
  v1 = v0;
  if (qword_1008DA658 != -1)
  {
    swift_once();
  }

  v2 = UILabel.withFont(_:)();
  v3 = objc_opt_self();
  v4 = [v3 secondaryLabelColor];
  v5 = UILabel.withTextColor(_:)();

  v6 = String._bridgeToObjectiveC()();
  [v5 setText:v6];

  v7 = UILabel.withFont(_:)();
  v8 = [v3 secondaryLabelColor];
  v9 = UILabel.withTextColor(_:)();

  v10 = objc_opt_self();
  v11 = [v10 mainBundle];
  v12 = String._bridgeToObjectiveC()();
  v13 = [v11 localizedStringForKey:v12 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = String._bridgeToObjectiveC()();
  [v9 setText:v14];

  v15 = UILabel.withFont(_:)();
  v16 = [v3 secondaryLabelColor];
  v17 = UILabel.withTextColor(_:)();

  v18 = [v10 mainBundle];
  v19 = String._bridgeToObjectiveC()();
  v20 = [v18 localizedStringForKey:v19 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = String._bridgeToObjectiveC()();
  [v17 setText:v21];

  v22 = UILabel.withFont(_:)();
  v23 = [v3 secondaryLabelColor];
  v24 = UILabel.withTextColor(_:)();

  v25 = [v10 mainBundle];
  v26 = String._bridgeToObjectiveC()();
  v27 = [v25 localizedStringForKey:v26 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = String._bridgeToObjectiveC()();
  [v24 setText:v28];

  [*(v1 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_separatorView) setHidden:1];

  return sub_1002251BC();
}

void sub_1002264C8(void *a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_100225350();
  if (a1)
  {
    v9 = a1;
    sub_100226974(a3 & 1);
    v10 = objc_opt_self();
    v11 = [objc_allocWithZone(NSNumber) initWithInteger:a2];
    v12 = [v10 localizedStringFromNumber:v11 numberStyle:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = *(v4 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnOneLabel);
    v14 = String._bridgeToObjectiveC()();
    [v13 setText:v14];

    v15 = *(v4 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnTwoLabel);
    v16 = [v9 formattedDominantStrokeStyle];
    if (v16)
    {
      v17 = v16;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v18 = String._bridgeToObjectiveC()();
    }

    else
    {
      v18 = 0;
    }

    [v15 setText:v18];

    v19 = *(v4 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnThreeLabel);
    v20 = [v9 formattedDistanceValueWithFormattingManager:a4];
    if (v20)
    {
      v21 = v20;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v22 = String._bridgeToObjectiveC()();
    }

    else
    {
      v22 = 0;
    }

    [v19 setText:v22];

    v23 = [v9 formattedPaceUsingFormatType:100 formattingManager:a4];
    if (v23)
    {
      v24 = v23;
      v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;
    }

    else
    {
      v38 = 0;
      v26 = 0xE000000000000000;
    }

    v27 = [v9 formattedStrokeCountUsingFormatType:100 formattingManager:a4];
    if (v27)
    {
      v28 = v27;
      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v30;
    }

    else
    {
      v29 = 0;
      v31 = 0xE000000000000000;
    }

    v32 = [objc_opt_self() mainBundle];
    v33 = String._bridgeToObjectiveC()();
    v34 = [v32 localizedStringForKey:v33 value:0 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100140278(&unk_1008E4E50, &qword_1006D4A60);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1006D1F70;
    *(v35 + 56) = &type metadata for String;
    v36 = sub_10000A788();
    *(v35 + 32) = v38;
    *(v35 + 40) = v26;
    *(v35 + 96) = &type metadata for String;
    *(v35 + 104) = v36;
    *(v35 + 64) = v36;
    *(v35 + 72) = v29;
    *(v35 + 80) = v31;
    String.init(format:_:)();

    v37 = *(v4 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnFourLabel);
    v39 = String._bridgeToObjectiveC()();
    [v37 setText:v39];
  }

  else
  {

    sub_100226050();
  }
}

id sub_100226974(char a1)
{
  v2 = v1;
  if (qword_1008DA660 != -1)
  {
    swift_once();
  }

  v4 = UILabel.withFont(_:)();
  v5 = objc_opt_self();
  v6 = [v5 secondaryLabelColor];
  v7 = UILabel.withTextColor(_:)();

  v8 = String._bridgeToObjectiveC()();
  [v7 setText:v8];

  if (qword_1008DA668 != -1)
  {
    swift_once();
  }

  v9 = UILabel.withFont(_:)();
  v10 = [v5 whiteColor];
  v11 = UILabel.withTextColor(_:)();

  v12 = String._bridgeToObjectiveC()();
  [v11 setText:v12];

  v13 = UILabel.withFont(_:)();
  v14 = objc_opt_self();
  result = [v14 distanceColors];
  if (!result)
  {
    __break(1u);
    goto LABEL_18;
  }

  v16 = result;
  v17 = [result nonGradientTextColor];

  [v13 setTextColor:v17];
  v18 = String._bridgeToObjectiveC()();
  [v13 setText:v18];

  v19 = UILabel.withFont(_:)();
  result = [v14 paceColors];
  if (!result)
  {
LABEL_18:
    __break(1u);
    return result;
  }

  v20 = result;
  v21 = [result nonGradientTextColor];

  [v19 setTextColor:v21];
  v22 = String._bridgeToObjectiveC()();
  [v19 setText:v22];

  result = [*(v2 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_separatorView) setHidden:a1 & 1];
  if (a1)
  {
    v23 = *(v2 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_separatorViewBottomAnchorStandard);
    if (v23)
    {
      [v23 setActive:0];
    }

    v24 = *(v2 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_separatorViewBottomAnchorLastRow);
    if (v24)
    {
      [v24 setActive:1];
    }

    result = *(v2 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_heightAnchorHeaderFooterRow);
    if (result)
    {

      return [result setActive:1];
    }
  }

  return result;
}

id sub_100226DF4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for WorkoutDetailFourColumnSwimmingSetTableViewCell();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t type metadata accessor for AdvancedChangeGoalView(uint64_t a1)
{
  result = qword_1008E21E8;
  if (!qword_1008E21E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100226EC0(uint64_t a1)
{
  sub_100226F7C(319);
  if (v1 <= 0x3F)
  {
    sub_100226FD4(319);
    if (v2 <= 0x3F)
    {
      sub_10022703C(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for HKActivityGoalType(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100226F7C(uint64_t a1)
{
  if (!qword_1008E21F8)
  {
    type metadata accessor for Calendar();
    v1 = type metadata accessor for Environment();
    if (!v2)
    {
      atomic_store(v1, &qword_1008E21F8);
    }
  }
}

void sub_100226FD4(uint64_t a1)
{
  if (!qword_1008E2200)
  {
    sub_1000059F8(255, &qword_1008F24B0, FIUIFormattingManager_ptr);
    v1 = type metadata accessor for Environment();
    if (!v2)
    {
      atomic_store(v1, &qword_1008E2200);
    }
  }
}

void sub_10022703C(uint64_t a1)
{
  if (!qword_1008E2208)
  {
    type metadata accessor for GoalDaysModel(255);
    sub_10022890C(&unk_1008E2210, type metadata accessor for GoalDaysModel, &unk_1006DF680);
    v1 = type metadata accessor for ObservedObject();
    if (!v2)
    {
      atomic_store(v1, &qword_1008E2208);
    }
  }
}

uint64_t sub_1002270EC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100140278(&qword_1008E2280, &qword_1006F5170);
  __chkstk_darwin(v8);
  v10 = &v15 - v9;
  sub_10001B104(v2, &v15 - v9, &qword_1008E2280, &qword_1006F5170);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for Calendar();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    v13 = static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v13, &_mh_execute_header, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1002272EC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100140278(&qword_1008E2250, &qword_1006DF058);
  __chkstk_darwin(v4 - 8);
  v6 = &v35 - v5;
  v7 = sub_100140278(&qword_1008E2258, &qword_1006DF060);
  __chkstk_darwin(v7);
  v9 = &v35 - v8;
  *v6 = static HorizontalAlignment.center.getter();
  *(v6 + 1) = 0x4014000000000000;
  v6[16] = 0;
  v10 = sub_100140278(&qword_1008E2260, &unk_1006DF068);
  sub_10022756C(v2, &v6[*(v10 + 44)]);
  sub_100140278(&qword_1008E0700, &unk_1006DC060);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006D1F70;
  v12 = static Edge.Set.leading.getter();
  *(inited + 32) = v12;
  v13 = static Edge.Set.trailing.getter();
  *(inited + 33) = v13;
  v14 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v12)
  {
    v14 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v13)
  {
    v14 = Edge.Set.init(rawValue:)();
  }

  EdgeInsets.init(_all:)();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  sub_100015E80(v6, v9, &qword_1008E2250, &qword_1006DF058);
  v23 = &v9[*(v7 + 36)];
  *v23 = v14;
  *(v23 + 1) = v16;
  *(v23 + 2) = v18;
  *(v23 + 3) = v20;
  *(v23 + 4) = v22;
  v23[40] = 0;
  v24 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  sub_100015E80(v9, a1, &qword_1008E2258, &qword_1006DF060);
  result = sub_100140278(&qword_1008E2268, &qword_1006DF078);
  v34 = a1 + *(result + 36);
  *v34 = v24;
  *(v34 + 8) = v26;
  *(v34 + 16) = v28;
  *(v34 + 24) = v30;
  *(v34 + 32) = v32;
  *(v34 + 40) = 0;
  return result;
}

uint64_t sub_10022756C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a2;
  v3 = type metadata accessor for AdvancedChangeGoalView(0);
  v76 = *(v3 - 8);
  __chkstk_darwin(v3);
  v77 = v4;
  KeyPath = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_100140278(&qword_1008E2270, &qword_1006DF080);
  v80 = *(v81 - 8);
  __chkstk_darwin(v81);
  v79 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v85 = &v70 - v7;
  v8 = type metadata accessor for EnvironmentValues();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100140278(&qword_1008E2278, qword_1006DF088);
  __chkstk_darwin(v12);
  v84 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v70 - v15;
  sub_100349310(*(a1 + *(v3 + 32)));
  v83 = v17;
  v18 = type metadata accessor for ActivityDailyGoalChartView(0);
  v19 = v18[5];
  v86 = v16;
  sub_1002270EC(&v16[v19]);
  v20 = a1 + *(v3 + 20);
  v21 = *v20;
  if (*(v20 + 8) == 1)
  {
    v22 = v21;
  }

  else
  {

    v23 = static os_log_type_t.fault.getter();
    v24 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v23, &_mh_execute_header, v24, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v25 = sub_1000A73A4(v21, 0);
    (*(v9 + 8))(v11, v8, v25);
    v22 = v92;
  }

  v26 = v3;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  sub_100227F6C(v92);
  v28 = v27;

  v29 = v86;
  *v86 = v83;
  *(v29 + v18[6]) = v22;
  *(v29 + v18[7]) = v28;
  v30 = static Edge.Set.all.getter();
  v31 = v29 + *(v12 + 36);
  *v31 = v30;
  *(v31 + 8) = xmmword_1006DEFB0;
  *(v31 + 24) = xmmword_1006DEFC0;
  v31[40] = 0;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v92 >> 62)
  {
    v32 = _CocoaArrayWrapper.endIndex.getter();

    if (v32 < 0)
    {
      __break(1u);
      return result;
    }
  }

  else
  {
    v32 = *((v92 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v92 = 0;
  v93 = v32;
  swift_getKeyPath();
  v33 = KeyPath;
  sub_1002287C4(a1, KeyPath);
  v34 = (*(v76 + 80) + 16) & ~*(v76 + 80);
  v35 = swift_allocObject();
  sub_100228828(v33, v35 + v34);
  sub_100140278(&qword_1008DE078, &qword_1006D7670);
  type metadata accessor for ScheduleDayRowView(0);
  sub_100182FB4();
  sub_10022890C(&qword_1008E2288, type metadata accessor for ScheduleDayRowView, &unk_1006DFB24);
  ForEach<>.init(_:id:content:)();
  if (*(a1 + *(v26 + 36)) == 1)
  {
    sub_1000059F8(0, &qword_1008DC998, off_1008327F8);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v37 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v38 = String._bridgeToObjectiveC()();
    v39 = String._bridgeToObjectiveC()();
    v40 = [v37 localizedStringForKey:v38 value:0 table:v39];

    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;

    v92 = v41;
    v93 = v43;
    sub_10000FCBC();
    v77 = Text.init<A>(_:)();
    v76 = v44;
    LOBYTE(v37) = v45;
    v75 = v46;
    LOBYTE(v43) = static Edge.Set.all.getter();
    LOBYTE(v92) = v37 & 1;
    LOBYTE(v87) = 1;
    v83 = v37 & 1;
    v47 = 1;
    v48 = static HierarchicalShapeStyle.secondary.getter();
    v74 = static Font.footnote.getter();
    KeyPath = swift_getKeyPath();
    v72 = v43;
    v49 = v48 << 32;
    v73 = 256;
  }

  else
  {
    v77 = 0;
    v76 = 0;
    v75 = 0;
    KeyPath = 0;
    v74 = 0;
    v73 = 0;
    v47 = 0;
    v49 = 0;
    v72 = 0;
    v83 = 0;
  }

  v50 = v84;
  sub_10001B104(v86, v84, &qword_1008E2278, qword_1006DF088);
  v51 = v80;
  v52 = *(v80 + 16);
  v53 = v79;
  v54 = v81;
  v52(v79, v85, v81);
  v55 = v49 | v47;
  v71 = v55;
  v56 = v50;
  v57 = v78;
  sub_10001B104(v56, v78, &qword_1008E2278, qword_1006DF088);
  v58 = sub_100140278(&qword_1008E2290, &qword_1006DF108);
  v52((v57 + *(v58 + 48)), v53, v54);
  v59 = v57 + *(v58 + 64);
  v60 = v77;
  *&v87 = v77;
  v61 = v76;
  *(&v87 + 1) = v76;
  *&v88 = v83;
  v62 = v75;
  *(&v88 + 1) = v75;
  v63 = v72;
  *v89 = v72;
  memset(&v89[8], 0, 32);
  *&v89[40] = v55;
  *&v90 = KeyPath;
  v64 = v74;
  *(&v90 + 1) = v74;
  LOWORD(v55) = v73;
  v91 = v73;
  *(v59 + 96) = v73;
  v65 = v88;
  *v59 = v87;
  *(v59 + 16) = v65;
  v66 = *&v89[16];
  *(v59 + 32) = *v89;
  *(v59 + 48) = v66;
  v67 = v90;
  *(v59 + 64) = *&v89[32];
  *(v59 + 80) = v67;
  sub_10001B104(&v87, &v92, &qword_1008E2298, &qword_1006DF110);
  v68 = *(v51 + 8);
  v68(v85, v54);
  sub_10000EA04(v86, &qword_1008E2278, qword_1006DF088);
  v92 = v60;
  v93 = v61;
  v94 = v83;
  v95 = v62;
  v97 = 0u;
  v98 = 0u;
  v96 = v63;
  v99 = v71;
  v100 = KeyPath;
  v101 = v64;
  v102 = v55;
  sub_10000EA04(&v92, &qword_1008E2298, &qword_1006DF110);
  v68(v53, v54);
  return sub_10000EA04(v84, &qword_1008E2278, qword_1006DF088);
}

void sub_100227F6C(unint64_t a1)
{
  v58 = sub_100140278(&qword_1008E2280, &qword_1006F5170);
  __chkstk_darwin(v58);
  v3 = &v49 - v2;
  v4 = type metadata accessor for Calendar();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for EnvironmentValues();
  v8 = *(v60 - 8);
  __chkstk_darwin(v60);
  v59 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
LABEL_36:
    v10 = _CocoaArrayWrapper.endIndex.getter();
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
LABEL_3:
      v53 = v4;
      v11 = type metadata accessor for AdvancedChangeGoalView(0);
      v12 = a1;
      v13 = 0;
      v14 = v61 + *(v11 + 20);
      v56 = *v14;
      v57 = a1 & 0xC000000000000001;
      v15 = (v8 + 1);
      v49 = a1 & 0xFFFFFFFFFFFFFF8;
      v50 = v5 + 4;
      a1 = (v5 + 1);
      v55 = *(v14 + 8);
      v8 = &selRef_unitFormatString;
      v54 = v12;
      v62 = v3;
      v51 = v10;
      v52 = v7;
      v16 = _swiftEmptyArrayStorage;
      while (1)
      {
        if (v57)
        {
          v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v18 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            goto LABEL_31;
          }
        }

        else
        {
          if (v13 >= *(v49 + 16))
          {
            goto LABEL_35;
          }

          v17 = *(v12 + 8 * v13 + 32);
          v18 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
LABEL_31:
            __break(1u);
LABEL_32:
            __break(1u);
LABEL_33:
            __break(1u);
LABEL_34:
            __break(1u);
LABEL_35:
            __break(1u);
            goto LABEL_36;
          }
        }

        v63 = v18;
        v5 = *&v17[OBJC_IVAR____TtC10FitnessApp7GoalDay_goal];
        v64 = v17;
        v19 = *&v17[OBJC_IVAR____TtC10FitnessApp7GoalDay_goalType];
        if (v55)
        {
          v20 = v56;
          v65 = v56;
          v21 = v5;
          sub_1000A72F0(v20, 1);
        }

        else
        {
          v22 = v5;
          v23 = v16;
          v24 = v8;
          v25 = a1;
          v26 = v15;
          v27 = v56;
          sub_1000A72F0(v56, 0);
          v28 = static os_log_type_t.fault.getter();
          v29 = static Log.runtimeIssuesLog.getter();
          os_log(_:dso:log:_:_:)(v28, &_mh_execute_header, v29, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

          v30 = v59;
          EnvironmentValues.init()();
          swift_getAtKeyPath();
          v31 = v27;
          v15 = v26;
          a1 = v25;
          v8 = v24;
          v16 = v23;
          v3 = v62;
          v32 = sub_1000A73A4(v31, 0);
          (*v15)(v30, v60, v32);
        }

        v33 = v65;
        v34 = [v65 v8[2]];

        if (!v34)
        {
          __break(1u);
          return;
        }

        v35 = [v34 v8[2]];

        v36 = &selRef_minuteUnit;
        if ((v19 - 1) < 2)
        {
          goto LABEL_17;
        }

        if (v19)
        {
          break;
        }

        v36 = &selRef_userActiveEnergyBurnedUnit;
        v37 = v35;
LABEL_19:
        v7 = [v37 *v36];

        [v5 doubleValueForUnit:v7];
        v39 = v38;
        v4 = *&v38;

        if ((v4 & 0x7FFFFFFFFFFFFFFFLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_32;
        }

        if (v39 <= -9.22337204e18)
        {
          goto LABEL_33;
        }

        if (v39 >= 9.22337204e18)
        {
          goto LABEL_34;
        }

        sub_10001B104(v61, v3, &qword_1008E2280, &qword_1006F5170);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v41 = v52;
          v40 = v53;
          (*v50)(v52, v3, v53);
        }

        else
        {
          v42 = static os_log_type_t.fault.getter();
          v43 = static Log.runtimeIssuesLog.getter();
          os_log(_:dso:log:_:_:)(v42, &_mh_execute_header, v43, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

          v44 = v59;
          EnvironmentValues.init()();
          v41 = v52;
          swift_getAtKeyPath();

          (*v15)(v44, v60);
          v40 = v53;
        }

        v5 = sub_1003D8648(v64[OBJC_IVAR____TtC10FitnessApp7GoalDay_day]);
        v46 = v45;
        (*a1)(v41, v40);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_1001A24FC(0, *(v16 + 2) + 1, 1, v16);
        }

        v4 = *(v16 + 2);
        v47 = *(v16 + 3);
        v7 = (v4 + 1);
        if (v4 >= v47 >> 1)
        {
          v16 = sub_1001A24FC((v47 > 1), v4 + 1, 1, v16);
        }

        *(v16 + 2) = v7;
        v48 = &v16[40 * v4];
        *(v48 + 4) = v5;
        *(v48 + 5) = v46;
        *(v48 + 6) = v39;
        *(v48 + 7) = v39;
        v48[64] = 0;
        ++v13;
        v3 = v62;
        v12 = v54;
        if (v63 == v51)
        {
          return;
        }
      }

      v36 = &selRef_countUnit;
LABEL_17:
      v37 = objc_opt_self();
      goto LABEL_19;
    }
  }
}

uint64_t sub_1002285B0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  sub_1002270EC(a3);
  v11 = type metadata accessor for AdvancedChangeGoalView(0);
  v12 = a2 + *(v11 + 20);
  v13 = *v12;
  if (*(v12 + 8) == 1)
  {
    v14 = v13;
  }

  else
  {

    v15 = static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v15, &_mh_execute_header, v16, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v17 = sub_1000A73A4(v13, 0);
    (*(v7 + 8))(v9, v6, v17);
    v14 = v24[1];
  }

  v18 = *(a2 + *(v11 + 24) + 8);
  v19 = type metadata accessor for ScheduleDayRowView(0);
  *(a3 + v19[5]) = v14;
  *(a3 + v19[6]) = v10;
  v20 = (a3 + v19[7]);
  type metadata accessor for GoalDaysModel(0);
  sub_10022890C(&unk_1008E2210, type metadata accessor for GoalDaysModel, &unk_1006DF680);
  v21 = v18;
  result = ObservedObject.init(wrappedValue:)();
  *v20 = result;
  v20[1] = v23;
  return result;
}

uint64_t sub_1002287C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AdvancedChangeGoalView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100228828(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AdvancedChangeGoalView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10022888C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AdvancedChangeGoalView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1002285B0(a1, v6, a2);
}

uint64_t sub_10022890C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100228984(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_100228A08()
{
  result = qword_1008E22B0;
  if (!qword_1008E22B0)
  {
    sub_100141EEC(&qword_1008E2250, &qword_1006DF058);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E22B0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CelebrationContext(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for CelebrationContext(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
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

uint64_t sub_100228C04()
{
  sub_100228D78();
  result = HorizontalAlignment.init(_:)();
  qword_100925320 = result;
  return result;
}

uint64_t sub_100228C5C()
{
  sub_100228C8C();
  result = VerticalAlignment.init(_:)();
  qword_100925328 = result;
  return result;
}

unint64_t sub_100228C8C()
{
  result = qword_1008E22B8;
  if (!qword_1008E22B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E22B8);
  }

  return result;
}

uint64_t sub_100228CE0()
{
  if (qword_1008DA6C8 != -1)
  {
    result = swift_once();
  }

  v0 = qword_100925320;
  if (qword_1008DA6D0 != -1)
  {
    result = swift_once();
  }

  *&xmmword_100925330 = v0;
  *(&xmmword_100925330 + 1) = qword_100925328;
  return result;
}

unint64_t sub_100228D78()
{
  result = qword_1008E22C0;
  if (!qword_1008E22C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E22C0);
  }

  return result;
}

double sub_100228E0C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_100229604();
  }

  return result;
}

uint64_t sub_100228E64()
{
  v1 = *(v0 + 56);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = objc_opt_self();
    v4 = v1 + 32;

    do
    {
      sub_10000B1B4(v4, v7);
      v5 = [v3 defaultCenter];
      sub_1000066AC(v7, v7[3]);
      [v5 removeObserver:_bridgeAnythingToObjectiveC<A>(_:)()];

      swift_unknownObjectRelease();
      sub_100005A40(v7);
      v4 += 32;
      --v2;
    }

    while (v2);
  }

  sub_1000245E0(*(v0 + 40), *(v0 + 48));

  return v0;
}

uint64_t sub_100228F7C()
{
  sub_100228E64();

  return swift_deallocClassInstance();
}

uint64_t sub_100228FD4()
{
  v1 = *v0;
  result = sub_10013AA50();
  if ((result & 1) == 0)
  {
    v3 = objc_opt_self();
    v4 = [v3 defaultCenter];
    v5 = objc_opt_self();
    v6 = [v5 mainQueue];
    v7 = swift_allocObject();
    swift_weakInit();
    v28 = sub_10022A1EC;
    v29 = v7;
    v25 = 1107296256;
    aBlock = _NSConcreteStackBlock;
    v26 = sub_100026F8C;
    v27 = &unk_10084D1B0;
    v8 = _Block_copy(&aBlock);

    v9 = [v4 addObserverForName:UIApplicationSignificantTimeChangeNotification object:0 queue:v6 usingBlock:v8];
    _Block_release(v8);

    v10 = [v3 defaultCenter];
    v11 = kFIUIFitnessUnitPreferencesDidChangeNotification;
    v12 = [v5 mainQueue];
    v13 = swift_allocObject();
    swift_weakInit();
    v28 = sub_10022A214;
    v29 = v13;
    aBlock = _NSConcreteStackBlock;
    v25 = 1107296256;
    v26 = sub_100026F8C;
    v27 = &unk_10084D1D8;
    v14 = _Block_copy(&aBlock);

    v15 = [v10 addObserverForName:v11 object:0 queue:v12 usingBlock:v14];
    _Block_release(v14);

    v16 = [v3 defaultCenter];
    v17 = kFIMindfulnessSessionDataProviderDidUpdateNotification;
    v18 = [v5 mainQueue];
    v19 = swift_allocObject();
    swift_weakInit();
    v20 = swift_allocObject();
    *(v20 + 16) = v19;
    *(v20 + 24) = v1;
    v28 = sub_10022A23C;
    v29 = v20;
    aBlock = _NSConcreteStackBlock;
    v25 = 1107296256;
    v26 = sub_100026F8C;
    v27 = &unk_10084D228;
    v21 = _Block_copy(&aBlock);

    v22 = [v16 addObserverForName:v17 object:0 queue:v18 usingBlock:v21];
    _Block_release(v21);

    sub_100140278(&qword_1008E7590, qword_1006D5360);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1006D64F0;
    *(v23 + 56) = swift_getObjectType();
    *(v23 + 32) = v9;
    *(v23 + 88) = swift_getObjectType();
    *(v23 + 64) = v15;
    *(v23 + 120) = swift_getObjectType();
    *(v23 + 96) = v22;
    v0[7] = v23;
  }

  return result;
}

double sub_100229404(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4)
{
  v6 = static os_log_type_t.default.getter();
  v7 = HKLogActivity;
  os_log(_:dso:log:_:_:)(v6, &_mh_execute_header, v7, a3, a4, 2, _swiftEmptyArrayStorage);

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_100229604();
  }

  return result;
}

double sub_1002294BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = static os_log_type_t.default.getter();
  v4 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, v3))
  {
    v5 = v4;
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12[0] = v7;
    *v6 = 136315138;
    v8 = _typeName(_:qualified:)();
    v10 = sub_10000AFDC(v8, v9, v12);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v5, v3, "%s did receive FIMindfulnessSessionDataProviderDidUpdate notification", v6, 0xCu);
    sub_100005A40(v7);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_100229604();
  }

  return result;
}

uint64_t sub_100229604()
{
  v34 = *v0;
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v29[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v29[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v33 = v0;
  v9 = *(v0[2] + OBJC_IVAR___CHHistoryDataProvider_lock);
  v38 = v0[2];
  v35 = sub_1001DF08C;
  v36 = &v37;
  os_unfair_lock_lock(v9 + 4);
  sub_1001DF0A8(aBlock);
  os_unfair_lock_unlock(v9 + 4);
  v10 = aBlock[0];
  v11 = static os_log_type_t.default.getter();
  v12 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, v11))
  {
    swift_bridgeObjectRetain_n();
    v31 = v12;
    v13 = swift_slowAlloc();
    v32 = v8;
    v14 = v13;
    v15 = swift_slowAlloc();
    v30 = v11;
    v16 = v15;
    aBlock[0] = v15;
    *v14 = 136315394;
    v17 = _typeName(_:qualified:)();
    v19 = sub_10000AFDC(v17, v18, aBlock);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2048;
    v20 = *(v10 + 16);

    *(v14 + 14) = v20;

    v21 = v31;
    _os_log_impl(&_mh_execute_header, v31, v30, "%s historyItems count: %ld", v14, 0x16u);
    sub_100005A40(v16);

    v8 = v32;
  }

  v22 = sub_100229F40(v10);
  sub_1000078CC();
  v23 = static OS_dispatch_queue.main.getter();
  v24 = swift_allocObject();
  swift_weakInit();
  v25 = swift_allocObject();
  v25[2] = v24;
  v25[3] = v10;
  v26 = v34;
  v25[4] = v22;
  v25[5] = v26;
  aBlock[4] = sub_10022A1C0;
  aBlock[5] = v25;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000449A8;
  aBlock[3] = &unk_10084D188;
  v27 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000261C4();
  sub_100140278(&unk_1008E7F50, &qword_1006D8190);
  sub_10002621C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v27);

  (*(v2 + 8))(v4, v1);
  return (*(v6 + 8))(v8, v5);
}

double sub_100229A6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + 32) = a2;
  }

  swift_beginAccess();
  v7 = swift_weakLoadStrong();
  if (v7)
  {
    *(v7 + 24) = a3;
  }

  v8 = static os_log_type_t.default.getter();
  v9 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, v8))
  {
    v10 = v9;
    v11 = swift_slowAlloc();
    v24[0] = swift_slowAlloc();
    *v11 = 136315394;
    v12 = _typeName(_:qualified:)();
    v14 = sub_10000AFDC(v12, v13, v24);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2080;
    v16 = sub_100071958(a2, v15);
    v18 = sub_10000AFDC(v16, v17, v24);

    *(v11 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v10, v8, "%s did update keyHistoryItems: %s", v11, 0x16u);
    swift_arrayDestroy();
  }

  swift_beginAccess();
  v19 = swift_weakLoadStrong();
  if (v19)
  {
    v21 = *(v19 + 40);
    v22 = *(v19 + 48);
    sub_10000B210(v21, v22);

    if (v21)
    {
      v21(v23);
      return sub_1000245E0(v21, v22);
    }
  }

  return result;
}

uint64_t sub_100229CA4(void *a1, uint64_t a2)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[3];
  v8 = a1[4];
  sub_1000066AC(a1, v7);
  (*(v8 + 24))(v7, v8);
  LOBYTE(a1) = static Date.< infix(_:_:)();
  (*(v4 + 8))(v6, v3);
  return a1 & 1;
}

void *sub_100229DC4(char *a1)
{
  v1[4] = _swiftEmptyArrayStorage;
  v1[5] = 0;
  v1[6] = 0;
  v1[7] = _swiftEmptyArrayStorage;
  v1[2] = a1;
  v1[3] = _swiftEmptyArrayStorage;
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = sub_100229F38;
  *(v4 + 24) = v3;
  v5 = OBJC_IVAR___CHHistoryDataProvider_onChangeHandlers;
  swift_beginAccess();
  v6 = *&a1[v5];
  v7 = a1;
  swift_retain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&a1[v5] = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_1001A1E7C(0, v6[2] + 1, 1, v6);
    *&a1[v5] = v6;
  }

  v10 = v6[2];
  v9 = v6[3];
  if (v10 >= v9 >> 1)
  {
    v6 = sub_1001A1E7C((v9 > 1), v10 + 1, 1, v6);
  }

  v6[2] = v10 + 1;
  v11 = &v6[2 * v10];
  v11[4] = sub_100077508;
  v11[5] = v4;
  *&a1[v5] = v6;
  swift_endAccess();

  sub_100228FD4();
  return v1;
}

uint64_t (*sub_100229F40(uint64_t (*a1)(__int128 *)))(__int128 *)
{
  v2 = type metadata accessor for Calendar();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v12 = &v20[-v11];
  if (*(a1 + 2) < 2uLL)
  {
  }

  else
  {
    static Calendar.current.getter();
    Date.init()();
    Calendar.startOfDay(for:)();
    v13 = *(v7 + 8);
    v13(v9, v6);
    v14 = (*(v3 + 8))(v5, v2);
    __chkstk_darwin(v14);
    *&v20[-16] = v12;

    v15 = sub_1005AAE28(sub_10022A1CC, &v20[-32], a1);
    v16 = *(v15 + 2);
    if (v16 >= 0x65)
    {
      sub_100311340(v15, v15 + 32, 0, 0xC9uLL);
      v18 = v17;

      v16 = *(v18 + 16);
      v15 = v18;
    }

    if (!v16)
    {

      sub_100311340(a1, a1 + 32, 0, 3uLL);
    }

    a1 = v15;
    v13(v12, v6);
  }

  return a1;
}

unint64_t sub_10022A24C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10022E554(*a1);
  *a2 = result;
  return result;
}

id sub_10022A278()
{
  v0 = [objc_allocWithZone(NSNumberFormatter) init];
  [v0 setMinimumIntegerDigits:2];
  result = [v0 setMaximumFractionDigits:0];
  qword_1008E2400 = v0;
  return result;
}

uint64_t sub_10022A2DC(__n128 a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v2;
}

void sub_10022A350()
{
  v1 = *&v0[OBJC_IVAR___WorkoutDetailSwimmingActivityDataSource_dataCalculator];
  v2 = *&v0[OBJC_IVAR___WorkoutDetailSwimmingActivityDataSource_workout];
  v3 = *&v0[OBJC_IVAR___WorkoutDetailSwimmingActivityDataSource_workoutActivity];
  v4 = swift_allocObject();
  *(v4 + 16) = v0;
  v7[4] = sub_10022EF58;
  v7[5] = v4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_10022A5A4;
  v7[3] = &unk_10084D358;
  v5 = _Block_copy(v7);
  v6 = v0;

  [v1 swimmingSetsForWorkout:v2 workoutActivity:v3 completion:v5];
  _Block_release(v5);
}

uint64_t sub_10022A464(uint64_t a1, uint64_t a2, void *a3, __n128 a4)
{
  if (a2)
  {
    sub_100140278(&qword_1008E7590, qword_1006D5360);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1006D46C0;
    swift_getErrorValue();
    *(v4 + 56) = v9;
    v5 = sub_100005994((v4 + 32));
    (*(*(v9 - 8) + 16))(v5);
    swift_errorRetain();
    print(_:separator:terminator:)();
  }

  else
  {
    if (a1)
    {
      swift_getKeyPath();
      swift_getKeyPath();

      v8 = a3;
      static Published.subscript.setter();
    }

    return sub_10022CB7C(a4);
  }
}

uint64_t sub_10022A5A4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_1000059F8(0, &qword_1008E2560, off_100832840);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a3;
  v5(v4, a3);
}

unint64_t sub_10022A648(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v2 = *(v1 + OBJC_IVAR___CHWorkoutDetailSwimmingSetDataSource_columns);
  if (*(v2 + 16) <= result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  if (*(v2 + result + 32) >= 3u)
  {
    v3 = [objc_opt_self() mainBundle];
    v4 = String._bridgeToObjectiveC()();
    v5 = [v3 localizedStringForKey:v4 value:0 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return AttributedString.init(stringLiteral:)();
}

unint64_t sub_10022A75C(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(v1 + OBJC_IVAR___CHWorkoutDetailSwimmingSetDataSource_columns);
  if (*(v2 + 16) <= result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v3 = *(v2 + result + 32);
  v4 = OBJC_IVAR___CHWorkoutDetailSwimmingSetDataSource_columnSizes;
  result = swift_beginAccess();
  if (*(*(v1 + v4) + 16))
  {
    return sub_1004CD4B0(v3);
  }

  return result;
}

void *sub_10022A808@<X0>(uint64_t a1@<X1>, char *a2@<X8>)
{
  v4 = type metadata accessor for DynamicTypeSize();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100140278(&qword_1008DDBE0, &qword_1006D7F60);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v50 - v13;
  result = objc_opt_self();
  v16 = __OFADD__(a1, 1);
  v17 = a1 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    v18 = result;
    v19 = [objc_allocWithZone(NSNumber) initWithInteger:v17];
    v20 = [v18 localizedStringFromNumber:v19 numberStyle:0];

    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v56 = v14;
    v23 = v22;

    v58 = v21;
    v59 = v23;
    sub_10000FCBC();
    v24 = Text.init<A>(_:)();
    v26 = v25;
    LOBYTE(v23) = v27;
    v52 = v7;
    static Font.body.getter();
    v57 = a2;
    v28 = Text.font(_:)();
    v54 = v11;
    v55 = v8;
    v29 = v28;
    v53 = v9;
    v31 = v30;
    v51 = v4;
    v33 = v32;

    sub_10004642C(v24, v26, v23 & 1);

    static Color.gray.getter();
    v34 = Text.foregroundColor(_:)();
    v36 = v35;
    LOBYTE(v24) = v37;
    v39 = v38;

    sub_10004642C(v29, v31, v33 & 1);

    v58 = v34;
    v59 = v36;
    v60 = v24 & 1;
    v61 = v39;
    v41 = v51;
    v40 = v52;
    (*(v5 + 104))(v52, enum case for DynamicTypeSize.large(_:), v51);
    v42 = v56;
    View.dynamicTypeSize(_:)();
    (*(v5 + 8))(v40, v41);
    sub_10004642C(v34, v36, v24 & 1);

    v44 = v53;
    v43 = v54;
    v45 = *(v53 + 16);
    v46 = v55;
    v45(v54, v42, v55);
    v47 = v57;
    v45(v57, v43, v46);
    v48 = &v47[*(sub_100140278(&qword_1008E2538, &qword_1006DF4C0) + 48)];
    *v48 = 0;
    v48[8] = 1;
    v49 = *(v44 + 8);
    v49(v42, v46);
    return (v49)(v43, v46);
  }

  return result;
}

uint64_t sub_10022ABF4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v39 = a1;
  v46 = a3;
  v44 = type metadata accessor for DynamicTypeSize();
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v41 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_100140278(&qword_1008DDBE0, &qword_1006D7F60);
  v5 = *(v45 - 8);
  __chkstk_darwin(v45);
  v43 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v7);
  v40 = &v39 - v9;
  v47 = sub_10022C918(a2, v8);
  v48 = v10;
  sub_10000FCBC();
  v11 = Text.init<A>(_:)();
  v13 = v12;
  v15 = v14;
  static Font.body.getter();
  v16 = Text.font(_:)();
  v18 = v17;
  v20 = v19;

  sub_10004642C(v11, v13, v15 & 1);

  v21 = Text.foregroundColor(_:)();
  v23 = v22;
  LOBYTE(v11) = v24;
  v26 = v25;
  sub_10004642C(v16, v18, v20 & 1);

  v47 = v21;
  v48 = v23;
  v27 = v11 & 1;
  v49 = v11 & 1;
  v50 = v26;
  v29 = v41;
  v28 = v42;
  v30 = v44;
  (*(v42 + 104))(v41, enum case for DynamicTypeSize.large(_:), v44);
  v31 = v40;
  View.dynamicTypeSize(_:)();
  (*(v28 + 8))(v29, v30);
  sub_10004642C(v21, v23, v27);

  v32 = *(v5 + 16);
  v33 = v43;
  v34 = v45;
  v32(v43, v31, v45);
  v35 = v46;
  v32(v46, v33, v34);
  v36 = &v35[*(sub_100140278(&qword_1008E2538, &qword_1006DF4C0) + 48)];
  *v36 = 0;
  v36[8] = 1;
  v37 = *(v5 + 8);
  v37(v31, v34);
  return (v37)(v33, v34);
}

id sub_10022AF6C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v148 = a2;
  v137 = a3;
  v4 = sub_100140278(&qword_1008E2540, &qword_1006DF4C8);
  __chkstk_darwin(v4 - 8);
  v138 = &v131 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v135 = &v131 - v7;
  v8 = type metadata accessor for DynamicTypeSize();
  v9 = *(v8 - 8);
  v153 = v8;
  v154 = v9;
  __chkstk_darwin(v8);
  v149 = &v131 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = sub_100140278(&qword_1008E2548, &qword_1006DF4D0);
  v134 = *(v136 - 8);
  __chkstk_darwin(v136);
  v133 = &v131 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v132 = &v131 - v13;
  __chkstk_darwin(v14);
  v140 = &v131 - v15;
  __chkstk_darwin(v16);
  v150 = &v131 - v17;
  __chkstk_darwin(v18);
  v152 = &v131 - v19;
  *&v21 = __chkstk_darwin(v20).n128_u64[0];
  v151 = &v131 - v22;
  v131 = a1;
  result = [a1 formattedDominantStrokeStyle];
  if (result)
  {
    v24 = result;
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    v155 = v25;
    v156 = v27;
    v147 = sub_10000FCBC();
    v28 = Text.init<A>(_:)();
    v30 = v29;
    LOBYTE(v27) = v31;
    static Font.body.getter();
    v32 = Text.font(_:)();
    v34 = v33;
    v36 = v35;

    sub_10004642C(v28, v30, v27 & 1);

    static Color.white.getter();
    v37 = Text.foregroundColor(_:)();
    v39 = v38;
    LOBYTE(v30) = v40;
    v42 = v41;

    sub_10004642C(v32, v34, v36 & 1);

    KeyPath = swift_getKeyPath();
    v155 = v37;
    v156 = v39;
    v157 = v30 & 1;
    v158 = v42;
    v159 = KeyPath;
    v160 = 1;
    v161 = 0;
    v145 = enum case for DynamicTypeSize.large(_:);
    v44 = v154;
    v45 = *(v154 + 104);
    v146 = v154 + 104;
    v144 = v45;
    v46 = v149;
    v47 = v153;
    v45(v149);
    v143 = sub_100140278(&qword_1008DCB38, &qword_1006D5528);
    v142 = sub_10015EE70();
    View.dynamicTypeSize(_:)();
    v48 = *(v44 + 8);
    v154 = v44 + 8;
    v141 = v48;
    v48(v46, v47);
    sub_10004642C(v37, v39, v30 & 1);

    v139 = objc_opt_self();
    v49 = [v139 mainBundle];
    v50 = String._bridgeToObjectiveC()();
    v51 = [v49 localizedStringForKey:v50 value:0 table:0];

    v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v54 = v53;

    v155 = v52;
    v156 = v54;
    v55 = Text.init<A>(_:)();
    v57 = v56;
    LOBYTE(v51) = v58;
    static Font.body.getter();
    v59 = Text.font(_:)();
    v61 = v60;
    LOBYTE(v44) = v62;

    sub_10004642C(v55, v57, v51 & 1);

    v63 = Text.foregroundColor(_:)();
    v65 = v64;
    LOBYTE(v55) = v66;
    v68 = v67;
    sub_10004642C(v59, v61, v44 & 1);

    v69 = swift_getKeyPath();
    v155 = v63;
    v156 = v65;
    v157 = v55 & 1;
    v158 = v68;
    v159 = v69;
    v160 = 1;
    v161 = 0;
    v70 = v153;
    v144(v46, v145, v153);
    View.dynamicTypeSize(_:)();
    v141(v46, v70);
    sub_10004642C(v63, v65, v55 & 1);

    v71 = [v139 mainBundle];
    v72 = String._bridgeToObjectiveC()();
    v73 = [v71 localizedStringForKey:v72 value:0 table:0];

    v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v76 = v75;

    v155 = v74;
    v156 = v76;
    v77 = Text.init<A>(_:)();
    v79 = v78;
    LOBYTE(v73) = v80;
    static Font.body.getter();
    v81 = Text.font(_:)();
    v83 = v82;
    LOBYTE(v61) = v84;

    sub_10004642C(v77, v79, v73 & 1);

    v85 = Text.foregroundColor(_:)();
    v87 = v86;
    LOBYTE(v79) = v88;
    v90 = v89;
    sub_10004642C(v81, v83, v61 & 1);

    v91 = swift_getKeyPath();
    v155 = v85;
    v156 = v87;
    v157 = v79 & 1;
    v158 = v90;
    v159 = v91;
    v160 = 1;
    v161 = 0;
    v92 = v149;
    v93 = v153;
    v144(v149, v145, v153);
    View.dynamicTypeSize(_:)();
    v141(v92, v93);
    sub_10004642C(v85, v87, v79 & 1);

    if ([v131 swolfScore] < 1)
    {
      v121 = v136;
      v120 = v135;
      v119 = v134;
      v118 = v140;
      v122 = 1;
    }

    else
    {
      v94 = [v139 mainBundle];
      v95 = String._bridgeToObjectiveC()();
      v96 = [v94 localizedStringForKey:v95 value:0 table:0];

      v97 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v99 = v98;

      v155 = v97;
      v156 = v99;
      v100 = Text.init<A>(_:)();
      v102 = v101;
      LOBYTE(v96) = v103;
      static Font.body.getter();
      v104 = Text.font(_:)();
      v106 = v105;
      v108 = v107;

      sub_10004642C(v100, v102, v96 & 1);

      v109 = Text.foregroundColor(_:)();
      v111 = v110;
      LOBYTE(v102) = v112;
      v114 = v113;
      sub_10004642C(v104, v106, v108 & 1);

      v115 = swift_getKeyPath();
      v155 = v109;
      v156 = v111;
      v157 = v102 & 1;
      v158 = v114;
      v159 = v115;
      v160 = 1;
      v161 = 0;
      v116 = v149;
      v117 = v153;
      v144(v149, v145, v153);
      v118 = v140;
      View.dynamicTypeSize(_:)();
      v141(v116, v117);
      sub_10004642C(v109, v111, v102 & 1);

      v119 = v134;
      v120 = v135;
      v121 = v136;
      (*(v134 + 32))(v135, v118, v136);
      v122 = 0;
    }

    (*(v119 + 56))(v120, v122, 1, v121);
    v123 = *(v119 + 16);
    v123(v118, v151, v121);
    v124 = v132;
    v123(v132, v152, v121);
    v125 = v118;
    v126 = v133;
    v123(v133, v150, v121);
    v127 = v138;
    sub_100088CCC(v120, v138);
    v128 = v137;
    v123(v137, v125, v121);
    v129 = sub_100140278(&qword_1008E2550, &unk_1006DF508);
    v123(&v128[v129[12]], v124, v121);
    v123(&v128[v129[16]], v126, v121);
    sub_100088CCC(v127, &v128[v129[20]]);
    sub_10000EA04(v120, &qword_1008E2540, &qword_1006DF4C8);
    v130 = *(v119 + 8);
    v130(v150, v121);
    v130(v152, v121);
    v130(v151, v121);
    sub_10000EA04(v127, &qword_1008E2540, &qword_1006DF4C8);
    v130(v126, v121);
    v130(v124, v121);
    return (v130)(v140, v121);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10022BC94(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v137 = a3;
  v5 = sub_100140278(&qword_1008E2540, &qword_1006DF4C8);
  __chkstk_darwin(v5 - 8);
  v138 = &v131 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v135 = &v131 - v8;
  v9 = type metadata accessor for DynamicTypeSize();
  v10 = *(v9 - 8);
  v153 = v9;
  v154 = v10;
  __chkstk_darwin(v9);
  v152 = &v131 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = sub_100140278(&qword_1008E2548, &qword_1006DF4D0);
  v134 = *(v136 - 8);
  __chkstk_darwin(v136);
  v133 = &v131 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v132 = &v131 - v14;
  __chkstk_darwin(v15);
  v139 = &v131 - v16;
  __chkstk_darwin(v17);
  v147 = &v131 - v18;
  __chkstk_darwin(v19);
  v148 = &v131 - v20;
  *&v22 = __chkstk_darwin(v21).n128_u64[0];
  v149 = &v131 - v23;
  v151 = a2;
  v140 = *(a2 + OBJC_IVAR___WorkoutDetailSwimmingActivityDataSource_formattingManager);
  v24 = [v140 fitnessUIFormattingManager];
  v150 = a1;
  v25 = [a1 formattedDistanceValueWithFormattingManager:v24];

  if (!v25)
  {
    __break(1u);
    goto LABEL_9;
  }

  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  v155 = v26;
  v156 = v28;
  v146 = sub_10000FCBC();
  v29 = Text.init<A>(_:)();
  v31 = v30;
  LOBYTE(v28) = v32;
  static Font.body.getter();
  v33 = Text.font(_:)();
  v35 = v34;
  v37 = v36;

  sub_10004642C(v29, v31, v28 & 1);

  v38 = Text.foregroundColor(_:)();
  v40 = v39;
  LOBYTE(v31) = v41;
  v43 = v42;
  sub_10004642C(v33, v35, v37 & 1);

  KeyPath = swift_getKeyPath();
  v155 = v38;
  v156 = v40;
  v157 = v31 & 1;
  v158 = v43;
  v159 = KeyPath;
  v160 = 1;
  v161 = 0;
  v45 = v154;
  v46 = *(v154 + 104);
  v47 = v152;
  v145 = enum case for DynamicTypeSize.large(_:);
  v48 = v153;
  v144 = v46;
  v131 = v154 + 104;
  v46(v152);
  v49 = sub_100140278(&qword_1008DCB38, &qword_1006D5528);
  v50 = sub_10015EE70();
  v143 = v49;
  v142 = v50;
  View.dynamicTypeSize(_:)();
  v51 = *(v45 + 8);
  v154 = v45 + 8;
  v141 = v51;
  v51(v47, v48);
  sub_10004642C(v38, v40, v31 & 1);

  v52 = [v140 fitnessUIFormattingManager];
  v53 = [v150 formattedActiveDurationWithFormattingManager:v52];

  if (!v53)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v56 = v55;

  v155 = v54;
  v156 = v56;
  v57 = Text.init<A>(_:)();
  v59 = v58;
  LOBYTE(v56) = v60;
  static Font.body.getter();
  v61 = Text.font(_:)();
  v63 = v62;
  v65 = v64;

  sub_10004642C(v57, v59, v56 & 1);

  v66 = Text.foregroundColor(_:)();
  v68 = v67;
  LOBYTE(v59) = v69;
  v71 = v70;
  sub_10004642C(v61, v63, v65 & 1);

  v72 = swift_getKeyPath();
  v155 = v66;
  v156 = v68;
  v157 = v59 & 1;
  v158 = v71;
  v159 = v72;
  v160 = 1;
  v161 = 0;
  v74 = v152;
  v73 = v153;
  v144(v152, v145, v153);
  View.dynamicTypeSize(_:)();
  v141(v74, v73);
  sub_10004642C(v66, v68, v59 & 1);

  v75 = [v140 fitnessUIFormattingManager];
  v76 = [v150 formattedRestDurationWithFormattingManager:v75];

  if (!v76)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v79 = v78;

  v155 = v77;
  v156 = v79;
  v80 = Text.init<A>(_:)();
  v82 = v81;
  LOBYTE(v79) = v83;
  static Font.body.getter();
  v84 = Text.font(_:)();
  v86 = v85;
  v88 = v87;

  sub_10004642C(v80, v82, v79 & 1);

  v89 = Text.foregroundColor(_:)();
  v91 = v90;
  LOBYTE(v82) = v92;
  v94 = v93;
  sub_10004642C(v84, v86, v88 & 1);

  v95 = swift_getKeyPath();
  v155 = v89;
  v156 = v91;
  v157 = v82 & 1;
  v158 = v94;
  v159 = v95;
  v96 = 1;
  v160 = 1;
  v161 = 0;
  v98 = v152;
  v97 = v153;
  v144(v152, v145, v153);
  View.dynamicTypeSize(_:)();
  v141(v98, v97);
  sub_10004642C(v89, v91, v82 & 1);

  if ([v150 swolfScore] < 1)
  {
    v122 = v136;
    v121 = v135;
    v120 = v134;
    v119 = v139;
  }

  else
  {
    v155 = sub_10022E564(v150);
    v156 = v99;
    v100 = Text.init<A>(_:)();
    v102 = v101;
    v104 = v103;
    static Font.body.getter();
    v105 = Text.font(_:)();
    v107 = v106;
    v109 = v108;

    sub_10004642C(v100, v102, v104 & 1);

    v110 = Text.foregroundColor(_:)();
    v112 = v111;
    LOBYTE(v102) = v113;
    v115 = v114;
    sub_10004642C(v105, v107, v109 & 1);

    v116 = swift_getKeyPath();
    v155 = v110;
    v156 = v112;
    v157 = v102 & 1;
    v158 = v115;
    v159 = v116;
    v160 = 1;
    v161 = 0;
    v118 = v152;
    v117 = v153;
    v144(v152, v145, v153);
    v119 = v139;
    View.dynamicTypeSize(_:)();
    v141(v118, v117);
    sub_10004642C(v110, v112, v102 & 1);

    v120 = v134;
    v121 = v135;
    v122 = v136;
    (*(v134 + 32))(v135, v119, v136);
    v96 = 0;
  }

  (*(v120 + 56))(v121, v96, 1, v122);
  v123 = *(v120 + 16);
  v123(v119, v149, v122);
  v124 = v119;
  v125 = v132;
  v123(v132, v148, v122);
  v126 = v133;
  v123(v133, v147, v122);
  v127 = v138;
  sub_100088CCC(v121, v138);
  v128 = v137;
  v123(v137, v124, v122);
  v129 = sub_100140278(&qword_1008E2550, &unk_1006DF508);
  v123(&v128[v129[12]], v125, v122);
  v123(&v128[v129[16]], v126, v122);
  sub_100088CCC(v127, &v128[v129[20]]);
  sub_10000EA04(v121, &qword_1008E2540, &qword_1006DF4C8);
  v130 = *(v120 + 8);
  v130(v147, v122);
  v130(v148, v122);
  v130(v149, v122);
  sub_10000EA04(v127, &qword_1008E2540, &qword_1006DF4C8);
  v130(v126, v122);
  v130(v125, v122);
  v130(v139, v122);
}

uint64_t sub_10022C918(void *a1, __n128 a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v4 = *(v2 + OBJC_IVAR___WorkoutDetailSwimmingActivityDataSource_formattingManager);
  v5 = [v4 fitnessUIFormattingManager];
  v6 = [a1 formattedPaceUsingFormatType:v22 formattingManager:v5];

  if (v6)
  {
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0xE000000000000000;
  }

  v10 = [v4 fitnessUIFormattingManager];
  v11 = [a1 formattedStrokeCountUsingFormatType:v22 formattingManager:v10];

  if (v11)
  {
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0xE000000000000000;
  }

  v15 = [objc_opt_self() mainBundle];
  v16 = String._bridgeToObjectiveC()();
  v17 = [v15 localizedStringForKey:v16 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100140278(&unk_1008E4E50, &qword_1006D4A60);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1006D1F70;
  *(v18 + 56) = &type metadata for String;
  v19 = sub_10000A788();
  *(v18 + 32) = v7;
  *(v18 + 40) = v9;
  *(v18 + 96) = &type metadata for String;
  *(v18 + 104) = v19;
  *(v18 + 64) = v19;
  *(v18 + 72) = v12;
  *(v18 + 80) = v14;
  v20 = String.init(format:_:)();

  return v20;
}

uint64_t sub_10022CB7C(__n128 a1)
{
  v2 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v3 = v108;
  if (v108 >> 62)
  {
    goto LABEL_60;
  }

  for (i = *((v108 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v5 = 0;
    v106 = OBJC_IVAR___CHWorkoutDetailSwimmingSetDataSource_columnSizes;
    v96 = OBJC_IVAR___CHWorkoutDetailSwimmingSetDataSource_columns;
    v97 = v3 & 0xFFFFFFFFFFFFFF8;
    v95 = v3 + 32;
    v98 = v3 & 0xC000000000000001;
    v101 = v2;
    v93 = i;
    v94 = v3;
LABEL_5:
    while (v98)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v7 = __OFADD__(v5++, 1);
      if (v7)
      {
        goto LABEL_53;
      }

LABEL_8:
      v8 = *(v2 + v96);
      v103 = *(v8 + 16);
      if (v103)
      {
        v99 = v5;
        v104 = v6;

        swift_beginAccess();
        v10 = 0;
        v102 = v8;
        while (1)
        {
          if (v10 >= *(v8 + 16))
          {
            goto LABEL_54;
          }

          v105 = *(v8 + v10 + 32);
          if (v105 > 1)
          {
            if (*(v8 + v10 + 32) == 2)
            {
              sub_100140278(&unk_1008E4E50, &qword_1006D4A60);
              v15 = swift_allocObject();
              *(v15 + 16) = xmmword_1006D64F0;
              v16 = *(v2 + OBJC_IVAR___WorkoutDetailSwimmingActivityDataSource_formattingManager);
              v17 = [v16 fitnessUIFormattingManager];
              v18 = [v104 formattedDistanceValueWithFormattingManager:v17];

              if (!v18)
              {
                goto LABEL_64;
              }

              v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v21 = v20;

              *(v15 + 56) = &type metadata for String;
              v22 = sub_10000A788();
              *(v15 + 64) = v22;
              *(v15 + 32) = v19;
              *(v15 + 40) = v21;
              v23 = [v16 fitnessUIFormattingManager];
              v24 = [v104 formattedActiveDurationWithFormattingManager:v23];

              if (!v24)
              {
                __break(1u);
LABEL_63:
                __break(1u);
LABEL_64:
                __break(1u);
LABEL_65:
                __break(1u);
LABEL_66:
                result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
                __break(1u);
                return result;
              }

              v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v27 = v26;

              *(v15 + 96) = &type metadata for String;
              *(v15 + 104) = v22;
              *(v15 + 72) = v25;
              *(v15 + 80) = v27;
              v28 = [v16 fitnessUIFormattingManager];
              v29 = [v104 formattedRestDurationWithFormattingManager:v28];

              if (!v29)
              {
                goto LABEL_63;
              }

              v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v32 = v31;

              *(v15 + 136) = &type metadata for String;
              *(v15 + 144) = v22;
              *(v15 + 112) = v30;
              *(v15 + 120) = v32;
              String.init(format:_:)();
              v2 = v101;
              v8 = v102;
            }

            else
            {
              sub_10022C918(v104, v9);
            }
          }

          else
          {
            if (!*(v8 + v10 + 32))
            {
              v11 = objc_opt_self();
              v12 = [objc_allocWithZone(NSNumber) initWithInteger:v99];
              v13 = [v11 localizedStringFromNumber:v12 numberStyle:0];

              static String._unconditionallyBridgeFromObjectiveC(_:)();
              if (qword_1008DA660 != -1)
              {
                swift_once();
              }

              v14 = &qword_100925298;
              goto LABEL_33;
            }

            sub_100140278(&unk_1008E4E50, &qword_1006D4A60);
            v33 = swift_allocObject();
            *(v33 + 16) = xmmword_1006D6950;
            v34 = [v104 formattedDominantStrokeStyle];
            if (!v34)
            {
              goto LABEL_65;
            }

            v35 = v34;
            v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v38 = v37;

            *(v33 + 56) = &type metadata for String;
            v39 = sub_10000A788();
            *(v33 + 64) = v39;
            *(v33 + 32) = v36;
            *(v33 + 40) = v38;
            v40 = objc_opt_self();
            v41 = [v40 mainBundle];
            v42 = String._bridgeToObjectiveC()();
            v43 = [v41 localizedStringForKey:v42 value:0 table:0];

            v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v46 = v45;

            *(v33 + 96) = &type metadata for String;
            *(v33 + 104) = v39;
            *(v33 + 72) = v44;
            *(v33 + 80) = v46;
            v47 = [v40 mainBundle];
            v48 = String._bridgeToObjectiveC()();
            v49 = [v47 localizedStringForKey:v48 value:0 table:0];

            v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v52 = v51;

            *(v33 + 136) = &type metadata for String;
            *(v33 + 144) = v39;
            v100 = v39;
            *(v33 + 112) = v50;
            *(v33 + 120) = v52;
            if ([v104 swolfScore] < 1)
            {
              v56 = 0;
              v58 = 0xE000000000000000;
            }

            else
            {
              v53 = [v40 mainBundle];
              v54 = String._bridgeToObjectiveC()();
              v55 = [v53 localizedStringForKey:v54 value:0 table:0];

              v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v58 = v57;
            }

            v2 = v101;
            *(v33 + 176) = &type metadata for String;
            *(v33 + 184) = v100;
            *(v33 + 152) = v56;
            *(v33 + 160) = v58;
            String.init(format:_:)();
            v8 = v102;
          }

          if (qword_1008DA668 != -1)
          {
            swift_once();
          }

          v14 = &qword_1009252A0;
LABEL_33:
          v59 = *v14;
          v60 = String._bridgeToObjectiveC()();

          v110[0] = NSFontAttributeName;
          v110[4] = sub_1000059F8(0, &qword_1008F73C0, UIFont_ptr);
          v110[1] = v59;
          sub_100140278(&qword_1008E2568, qword_1006E3D40);
          v3 = static _DictionaryStorage.allocate(capacity:)();
          sub_10022EF60(v110, &v108);
          v61 = v108;
          v62 = v59;
          v63 = NSFontAttributeName;
          v64 = sub_1004C53E8(v61);
          if (v65)
          {
            goto LABEL_55;
          }

          *(v3 + 8 * (v64 >> 6) + 64) |= 1 << v64;
          *(*(v3 + 48) + 8 * v64) = v61;
          sub_1001AA76C(&v109, (*(v3 + 56) + 32 * v64));
          v66 = *(v3 + 16);
          v7 = __OFADD__(v66, 1);
          v67 = v66 + 1;
          if (v7)
          {
            goto LABEL_56;
          }

          *(v3 + 16) = v67;
          sub_100198304(v110);
          type metadata accessor for Key(0);
          sub_10022EFD0(&qword_1008E7FD0, type metadata accessor for Key, &unk_1006D3C84);
          isa = Dictionary._bridgeToObjectiveC()().super.isa;

          [v60 boundingRectWithSize:1 options:isa attributes:0 context:{1.79769313e308, 1.79769313e308}];
          v70 = v69;
          v72 = v71;
          v74 = v73;
          v76 = v75;

          v111.origin.x = v70;
          v111.origin.y = v72;
          v111.size.width = v74;
          v111.size.height = v76;
          v77 = ceil(CGRectGetWidth(v111));
          v3 = *(v2 + v106);
          if (*(v3 + 16) && (v78 = sub_1004CD4B0(v105), (v79 & 1) != 0))
          {
            if (*(*(v3 + 56) + 8 * v78) < v77)
            {
              goto LABEL_40;
            }
          }

          else if (v77 > 0.0)
          {
LABEL_40:
            swift_beginAccess();
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v107 = *(v2 + v106);
            v3 = v107;
            *(v2 + v106) = 0x8000000000000000;
            v82 = sub_1004CD4B0(v105);
            v83 = *(v3 + 16);
            v84 = (v81 & 1) == 0;
            v85 = v83 + v84;
            if (__OFADD__(v83, v84))
            {
              goto LABEL_57;
            }

            v86 = v81;
            if (*(v3 + 24) >= v85)
            {
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v3 = &v107;
                sub_10049315C();
              }
            }

            else
            {
              sub_1004893C8(v85, isUniquelyReferenced_nonNull_native);
              v3 = v107;
              v87 = sub_1004CD4B0(v105);
              if ((v86 & 1) != (v88 & 1))
              {
                goto LABEL_66;
              }

              v82 = v87;
            }

            v89 = v107;
            if (v86)
            {
              *(v107[7] + 8 * v82) = v77;
            }

            else
            {
              v107[(v82 >> 6) + 8] |= 1 << v82;
              *(v89[6] + v82) = v105;
              *(v89[7] + 8 * v82) = v77;
              v90 = v89[2];
              v7 = __OFADD__(v90, 1);
              v91 = v90 + 1;
              if (v7)
              {
                goto LABEL_58;
              }

              v89[2] = v91;
            }

            *(v2 + v106) = v89;
            swift_endAccess();
          }

          ++v10;

          if (v103 == v10)
          {

            i = v93;
            v3 = v94;
            v5 = v99;
            if (v99 == v93)
            {
            }

            goto LABEL_5;
          }
        }
      }

      if (v5 == i)
      {
      }
    }

    if (v5 >= *(v97 + 16))
    {
      goto LABEL_59;
    }

    v6 = *(v95 + 8 * v5);
    v7 = __OFADD__(v5++, 1);
    if (!v7)
    {
      goto LABEL_8;
    }

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
LABEL_59:
    __break(1u);
LABEL_60:
    ;
  }
}

void sub_10022D604(void *a1, void *a2, void *a3, void *a4)
{
  v50 = a3;
  v51 = a4;
  v52 = a1;
  v53 = a2;
  v49 = sub_100140278(&qword_1008DBEE8, &qword_1006DB7C0);
  v5 = *(v49 - 8);
  __chkstk_darwin(v49);
  v7 = &v49 - v6;
  v8 = type metadata accessor for Color.RGBColorSpace();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100140278(&qword_1008E2558, &qword_1006DF518);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v49 - v14;
  v16 = OBJC_IVAR___CHWorkoutDetailSwimmingSetDataSource__swimmingSets;
  v55 = _swiftEmptyArrayStorage;
  sub_100140278(&qword_1008E2490, &qword_1006DF2E8);
  Published.init(initialValue:)();
  (*(v13 + 32))(&v4[v16], v15, v12);
  *&v4[OBJC_IVAR___CHWorkoutDetailSwimmingSetDataSource_columns] = &off_100842618;
  *&v4[OBJC_IVAR___CHWorkoutDetailSwimmingSetDataSource_columnSizes] = &_swiftEmptyDictionarySingleton;
  v17 = objc_opt_self();
  v18 = [v17 distanceColors];
  if (!v18)
  {
    __break(1u);
    goto LABEL_11;
  }

  v19 = v18;
  v20 = [v18 nonGradientTextColor];

  if (!v20)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v21 = OBJC_IVAR___CHWorkoutDetailSwimmingSetDataSource_distanceColor;
  *&v4[v21] = Color.init(_:)();
  v22 = [v17 paceColors];
  if (!v22)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v23 = v22;
  v24 = [v22 nonGradientTextColor];

  if (!v24)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v25 = OBJC_IVAR___CHWorkoutDetailSwimmingSetDataSource_paceColor;
  *&v4[v25] = Color.init(_:)();
  v26 = OBJC_IVAR___CHWorkoutDetailSwimmingSetDataSource_restColor;
  (*(v9 + 104))(v11, enum case for Color.RGBColorSpace.sRGB(_:), v8);
  *&v4[v26] = Color.init(_:red:green:blue:opacity:)();
  v27 = [v17 elapsedTimeColors];
  if (!v27)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v28 = v27;
  v29 = [v27 nonGradientTextColor];

  if (!v29)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v30 = OBJC_IVAR___CHWorkoutDetailSwimmingSetDataSource_timeColor;
  *&v4[v30] = Color.init(_:)();
  v31 = [v17 paceColors];
  if (!v31)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v32 = v31;
  v33 = [v31 nonGradientTextColor];

  if (v33)
  {
    v34 = OBJC_IVAR___CHWorkoutDetailSwimmingSetDataSource_swolfColor;
    *&v4[v34] = Color.init(_:)();
    v35 = &v4[OBJC_IVAR___CHWorkoutDetailSwimmingSetDataSource_cellPadding];
    *v35 = xmmword_1006DB530;
    *(v35 + 1) = xmmword_1006DB530;
    *&v4[OBJC_IVAR___WorkoutDetailSwimmingActivityDataSource_supportedPaceDistances] = &off_100842640;
    v36 = OBJC_IVAR___WorkoutDetailSwimmingActivityDataSource__paceDistance;
    v55 = 100;
    Published.init(initialValue:)();
    (*(v5 + 32))(&v4[v36], v7, v49);
    v38 = v50;
    v37 = v51;
    *&v4[OBJC_IVAR___WorkoutDetailSwimmingActivityDataSource_dataCalculator] = v50;
    *&v4[OBJC_IVAR___WorkoutDetailSwimmingActivityDataSource_formattingManager] = v37;
    v39 = v52;
    v40 = v53;
    *&v4[OBJC_IVAR___WorkoutDetailSwimmingActivityDataSource_workout] = v52;
    *&v4[OBJC_IVAR___WorkoutDetailSwimmingActivityDataSource_workoutActivity] = v40;
    v41 = type metadata accessor for WorkoutDetailSwimmingActivityDataSource(0);
    v54.receiver = v4;
    v54.super_class = v41;
    v42 = v38;
    v43 = v37;
    v44 = v39;
    v45 = v40;
    v46 = objc_msgSendSuper2(&v54, "init");
    v47 = *((swift_isaMask & *v46) + 0xC0);
    v48 = v46;
    v47();

    return;
  }

LABEL_17:
  __break(1u);
}

double sub_10022DB5C()
{
  v1 = OBJC_IVAR___CHWorkoutDetailSwimmingSetDataSource__swimmingSets;
  v2 = sub_100140278(&qword_1008E2558, &qword_1006DF518);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return result;
}

void sub_10022DD68(uint64_t a1)
{
  sub_10022DE28(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10022DE28(uint64_t a1)
{
  if (!qword_1008E2488)
  {
    sub_100141EEC(&qword_1008E2490, &qword_1006DF2E8);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &qword_1008E2488);
    }
  }
}

uint64_t sub_10022DEA0(__n128 a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v3 >> 62)
  {
    v1 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v1 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v1;
}

uint64_t sub_10022DF5C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for WorkoutDetailSwimmingSetDataSource(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t sub_10022DF9C(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v23 - v7;
  __chkstk_darwin(v9);
  v11 = &v23 - v10;
  Date.init()();
  Date.addingTimeInterval(_:)();
  v12 = *(v3 + 8);
  v27 = v2;
  v25 = v12;
  v12(v8, v2);
  Date.addingTimeInterval(_:)();
  v26 = v3 + 8;
  v24 = (v3 + 32);
  v13 = 8;
  do
  {
    sub_10022ECDC(v11, v5);
    swift_getKeyPath();
    swift_getKeyPath();
    v14 = static Published.subscript.modify();
    v16 = v15;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v14(v28, 0);

    Date.addingTimeInterval(_:)();
    v17 = v27;
    v18 = v25;
    v25(v11, v27);
    v19 = *v24;
    (*v24)(v11, v8, v17);
    Date.addingTimeInterval(_:)();
    v18(v5, v17);
    v19(v5, v8, v17);
    --v13;
  }

  while (v13);
  v20 = v27;
  v21 = v25;
  v25(v5, v27);
  return v21(v11, v20);
}

id sub_10022E298(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_10022E34C()
{
  result = qword_1008E24D0;
  if (!qword_1008E24D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E24D0);
  }

  return result;
}

uint64_t sub_10022E3A0(uint64_t a1)
{
  result = sub_10022EFD0(&qword_1008E24D8, type metadata accessor for WorkoutDetailSwimmingSetDataSource, &unk_1006DF3E4);
  *(a1 + 8) = result;
  return result;
}

void sub_10022E3F8(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v4;
}

uint64_t sub_10022E478(uint64_t *a1, void **a2, __n128 a3)
{
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v4 = v3;
  return static Published.subscript.setter();
}

uint64_t sub_10022E4F0@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

unint64_t sub_10022E554(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

uint64_t sub_10022E564(void *a1)
{
  if ([a1 swolfScore] < 1)
  {
    return 0;
  }

  if (qword_1008DA6E0 != -1)
  {
    swift_once();
  }

  v2 = qword_1008E2400;
  v3 = [objc_allocWithZone(NSNumber) initWithInteger:{objc_msgSend(a1, "swolfScore")}];
  v4 = [v2 stringFromNumber:v3];

  if (!v4)
  {
    return 0;
  }

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v5;
}

uint64_t sub_10022E658(unint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DynamicTypeSize();
  v34 = *(v5 - 8);
  v35 = v5;
  __chkstk_darwin(v5);
  v7 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100140278(&qword_1008E24E0, &qword_1006DF438);
  __chkstk_darwin(v8);
  v10 = v32 - v9;
  v33 = sub_100140278(&qword_1008E24E8, &qword_1006DF440);
  __chkstk_darwin(v33);
  v32[1] = v32 - v11;
  v12 = sub_100140278(&qword_1008E24F0, &qword_1006DF448);
  __chkstk_darwin(v12);
  v14 = v32 - v13;
  swift_getKeyPath();
  swift_getKeyPath();
  v36 = v2;
  static Published.subscript.getter();

  if ((v37 & 0xC000000000000001) == 0)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
    {
      v15 = *(v37 + 8 * a1 + 32);
      goto LABEL_5;
    }

    __break(1u);
    goto LABEL_19;
  }

  v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_5:
  v16 = v15;

  if (a2 > 1)
  {
    if (a2 == 2)
    {
      *v10 = static HorizontalAlignment.leading.getter();
      *(v10 + 1) = 0;
      v10[16] = 1;
      v18 = sub_100140278(&qword_1008E2518, &qword_1006DF4A8);
      sub_10022BC94(v16, v36, &v10[*(v18 + 44)]);
      v19 = static Edge.Set.all.getter();
      v20 = &v10[*(v8 + 36)];
      *v20 = v19;
      *(v20 + 8) = xmmword_1006DB530;
      *(v20 + 24) = xmmword_1006DB530;
      v20[40] = 0;
      sub_10022EC24();
LABEL_15:
      v30 = AnyView.init<A>(_:)();

      return v30;
    }

    if (a2 == 3)
    {
      *v14 = static HorizontalAlignment.center.getter();
      *(v14 + 1) = 0;
      v14[16] = 1;
      v27 = sub_100140278(&qword_1008E24F8, &qword_1006DF498);
      sub_10022ABF4(v36, v16, &v14[*(v27 + 44)]);
      goto LABEL_14;
    }
  }

  else
  {
    if (!a2)
    {
      *v14 = static HorizontalAlignment.center.getter();
      *(v14 + 1) = 0;
      v14[16] = 1;
      v17 = sub_100140278(&qword_1008E24F8, &qword_1006DF498);
      sub_10022A808(a1, &v14[*(v17 + 44)]);
LABEL_14:
      v28 = static Edge.Set.all.getter();
      v29 = &v14[*(v12 + 36)];
      *v29 = v28;
      *(v29 + 8) = xmmword_1006DB530;
      *(v29 + 24) = xmmword_1006DB530;
      v29[40] = 0;
      sub_10022EB6C();
      goto LABEL_15;
    }

    if (a2 == 1)
    {
      *v10 = static HorizontalAlignment.leading.getter();
      *(v10 + 1) = 0;
      v10[16] = 1;
      v21 = sub_100140278(&qword_1008E2518, &qword_1006DF4A8);
      sub_10022AF6C(v16, v36, &v10[*(v21 + 44)]);
      v22 = static Edge.Set.all.getter();
      v23 = &v10[*(v8 + 36)];
      *v23 = v22;
      *(v23 + 8) = xmmword_1006DB530;
      *(v23 + 24) = xmmword_1006DB530;
      v23[40] = 0;
      v25 = v34;
      v24 = v35;
      (*(v34 + 104))(v7, enum case for DynamicTypeSize.large(_:), v35);
      v26 = sub_10022EC24();
      View.dynamicTypeSize(_:)();
      (*(v25 + 8))(v7, v24);
      sub_10000EA04(v10, &qword_1008E24E0, &qword_1006DF438);
      v37 = v8;
      v38 = v26;
      swift_getOpaqueTypeConformance2();
      goto LABEL_15;
    }
  }

LABEL_19:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

unint64_t sub_10022EB6C()
{
  result = qword_1008E2500;
  if (!qword_1008E2500)
  {
    sub_100141EEC(&qword_1008E24F0, &qword_1006DF448);
    sub_10014A6B0(&qword_1008E2508, &qword_1008E2510, &qword_1006DF4A0, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E2500);
  }

  return result;
}

unint64_t sub_10022EC24()
{
  result = qword_1008E2520;
  if (!qword_1008E2520)
  {
    sub_100141EEC(&qword_1008E24E0, &qword_1006DF438);
    sub_10014A6B0(&qword_1008E2528, &qword_1008E2530, &unk_1006DF4B0, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E2520);
  }

  return result;
}

unint64_t sub_10022ECDC(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(CHWorkoutSwimmingSet) init];
  isa = Date._bridgeToObjectiveC()().super.isa;
  [v6 setStartDate:isa];

  sub_100315684(0x20000000000001);
  Date.addingTimeInterval(_:)();
  v8 = Date._bridgeToObjectiveC()().super.isa;
  (*(v3 + 8))(v5, v2);
  [v6 setMovementEndDate:v8];

  v9 = Date._bridgeToObjectiveC()().super.isa;
  [v6 setEndDate:v9];

  [v6 setDominantStrokeStyle:sub_100315684(5) + 1];
  [v6 setStrokeCount:sub_100315684(21) + 10];
  v10 = [objc_opt_self() yardUnit];
  result = sub_1001A99B8(3uLL);
  if (result > 2)
  {
    __break(1u);
  }

  else
  {
    v12 = [objc_opt_self() quantityWithUnit:v10 doubleValue:*(&off_1008425E0 + result + 4)];

    [v6 setDistance:v12];
    [v6 setSwolfScore:sub_100315684(26) + 25];
    return v6;
  }

  return result;
}

uint64_t sub_10022EF60(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&unk_1008EE730, &unk_1006D8460);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10022EFD0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t SleepingSampleBaselineRelativeChartPoint.init(date:value:color:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  v9 = type metadata accessor for SleepingSampleBaselineRelativeChartPoint(0);
  v10 = *(v9 + 20);
  v11 = type metadata accessor for BaselineRelativeValue();
  result = (*(*(v11 - 8) + 32))(a4 + v10, a2, v11);
  *(a4 + *(v9 + 24)) = a3;
  return result;
}

uint64_t type metadata accessor for SleepingSampleBaselineRelativeChartPoint(uint64_t a1)
{
  result = qword_1008E25C8;
  if (!qword_1008E25C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SleepingSampleBaselineRelativeChartPoint.id.getter@<X0>(uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

uint64_t static SleepingSampleBaselineRelativeChartPoint.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for SleepingSampleBaselineRelativeChartPoint(0);
  if ((static BaselineRelativeValue.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  return static Color.== infix(_:_:)();
}

uint64_t sub_10022F224(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((static Date.== infix(_:_:)() & 1) == 0 || (static BaselineRelativeValue.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  return static Color.== infix(_:_:)();
}

unint64_t sub_10022F2A4(uint64_t a1, uint64_t a2)
{
  result = qword_1008DEF18;
  if (!qword_1008DEF18)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DEF18);
  }

  return result;
}

uint64_t sub_10022F324(uint64_t a1, uint64_t a2)
{
  result = type metadata accessor for Date();
  if (v3 <= 0x3F)
  {
    result = type metadata accessor for BaselineRelativeValue();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_10022F3B0(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabelText);
  *v3 = a1;
  v3[1] = a2;

  v4 = *(v2 + OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabel);
  [v4 setAttributedText:0];
  if (v3[1])
  {

    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  [v4 setText:v5];
}

char *sub_10022F474(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleLabelTextColor;
  v11 = objc_opt_self();
  *&v5[v10] = [v11 labelColor];
  v12 = OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabelTextColor;
  *&v5[v12] = [v11 labelColor];
  v13 = &v5[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleText];
  *v13 = 0;
  *(v13 + 1) = 0;
  *&v5[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueAttributedText] = 0;
  v14 = &v5[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabelText];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleLabel;
  v16 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v16 setAdjustsFontForContentSizeCategory:1];
  v17 = objc_opt_self();
  v18 = [v17 preferredFontForTextStyle:UIFontTextStyleBody];
  v19 = UILabel.withFont(_:)();

  *&v5[v15] = v19;
  v20 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v20 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v20 setAdjustsFontForContentSizeCategory:1];
  result = [v17 systemFontOfSize:UIFontSystemFontDesignRounded weight:30.0 design:UIFontWeightMedium];
  if (result)
  {
    v22 = result;
    v23 = OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabel;
    v24 = UILabel.withFont(_:)();

    *&v5[v23] = v24;
    v25 = OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleBaseline;
    v26 = [v17 preferredFontForTextStyle:UIFontTextStyleBody];
    [v26 _scaledValueForValue:15.0];
    v28 = v27;

    *&v5[v25] = v28;
    *&v5[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleBaselineConstraint] = 0;
    if (FIUICurrentLanguageRequiresTallScript())
    {
      v29 = 32.0;
    }

    else
    {
      v30 = [objc_opt_self() sharedApplication];
      v31 = [v30 preferredContentSizeCategory];

      LOBYTE(v30) = UIContentSizeCategory.isAccessibilityCategory.getter();
      v29 = 32.0;
      if ((v30 & 1) == 0)
      {
        v29 = 29.0;
      }
    }

    *&v5[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueBaseline] = v29;
    *&v5[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueBaselineConstraint] = 0;
    *&v5[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_intrinsicContentSizeBottomPadding] = 0x4030000000000000;
    v38.receiver = v5;
    v38.super_class = type metadata accessor for DayViewTitleAndValueLabelPair();
    v32 = objc_msgSendSuper2(&v38, "initWithFrame:", a1, a2, a3, a4);
    v33 = OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleLabel;
    v34 = *&v32[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleLabel];
    v35 = v32;
    [v35 addSubview:v34];
    v36 = OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabel;
    [v35 addSubview:*&v35[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabel]];
    [*&v32[v33] setTextColor:*&v35[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleLabelTextColor]];
    [*&v35[v36] setTextColor:*&v35[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabelTextColor]];
    sub_10022F8A8();
    v37 = [objc_opt_self() defaultCenter];
    [v37 addObserver:v35 selector:"updateFonts" name:UIContentSizeCategoryDidChangeNotification object:0];

    return v35;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10022F8A8()
{
  v1 = *&v0[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleLabel];
  v2 = [v1 leadingAnchor];
  v3 = [v0 leadingAnchor];
  v32 = [v2 constraintEqualToAnchor:v3];

  v4 = [v1 trailingAnchor];
  v5 = [v0 trailingAnchor];
  v31 = [v4 constraintEqualToAnchor:v5];

  v6 = [v1 firstBaselineAnchor];
  v7 = [v0 topAnchor];
  v8 = [v6 constraintEqualToAnchor:v7 constant:*&v0[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleBaseline]];

  v9 = *&v0[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleBaselineConstraint];
  *&v0[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleBaselineConstraint] = v8;
  v10 = v8;

  v11 = *&v0[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabel];
  v12 = [v11 leadingAnchor];
  v13 = [v0 leadingAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];

  v15 = [v11 trailingAnchor];
  v16 = [v0 trailingAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];

  v18 = [v11 firstBaselineAnchor];
  v19 = [v1 firstBaselineAnchor];
  v20 = [v18 constraintEqualToAnchor:v19 constant:*&v0[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueBaseline]];

  v21 = *&v0[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueBaselineConstraint];
  *&v0[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueBaselineConstraint] = v20;
  v22 = v20;

  v23 = objc_opt_self();
  sub_100140278(&unk_1008E4E20, &qword_1006D5040);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1006DF610;
  *(v24 + 32) = v32;
  *(v24 + 40) = v31;
  *(v24 + 48) = v10;
  *(v24 + 56) = v14;
  *(v24 + 64) = v17;
  *(v24 + 72) = v22;
  sub_10019EC5C();
  v25 = v10;
  v26 = v22;
  v27 = v32;
  v28 = v31;
  v29 = v14;
  v30 = v17;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v23 activateConstraints:isa];
}

id sub_10022FC4C()
{
  v1 = *&v0[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleBaselineConstraint];
  if (v1)
  {
    [v1 setConstant:*&v0[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleBaseline]];
  }

  v2 = *&v0[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueBaselineConstraint];
  if (v2)
  {
    [v2 setConstant:*&v0[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueBaseline]];
  }

  [v0 setNeedsLayout];

  return [v0 invalidateIntrinsicContentSize];
}

void sub_10022FD6C()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;

  v9.origin.x = v2;
  v9.origin.y = v4;
  v9.size.width = v6;
  v9.size.height = v8;
  CGRectGetWidth(v9);
}

id sub_10022FE1C(void *a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleLabelTextColor;
  v4 = objc_opt_self();
  v30 = v3;
  *(v2 + v3) = [v4 labelColor];
  v29 = OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabelTextColor;
  *(v2 + v29) = [v4 labelColor];
  v5 = (v2 + OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleText);
  *v5 = 0;
  v5[1] = 0;
  v26 = OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueAttributedText;
  *(v2 + OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueAttributedText) = 0;
  v6 = (v2 + OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabelText);
  *v6 = 0;
  v6[1] = 0;
  v7 = OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleLabel;
  v8 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v8 setAdjustsFontForContentSizeCategory:1];
  v9 = objc_opt_self();
  v10 = [v9 preferredFontForTextStyle:UIFontTextStyleBody];
  v11 = UILabel.withFont(_:)();

  v27 = v7;
  *(v2 + v7) = v11;
  v12 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v12 setAdjustsFontForContentSizeCategory:1];
  result = [v9 systemFontOfSize:UIFontSystemFontDesignRounded weight:30.0 design:UIFontWeightMedium];
  if (result)
  {
    v14 = result;
    v15 = OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabel;
    v16 = UILabel.withFont(_:)();

    *(v2 + v15) = v16;
    v17 = OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleBaseline;
    v18 = [v9 preferredFontForTextStyle:UIFontTextStyleBody];
    [v18 _scaledValueForValue:15.0];
    v20 = v19;

    *(v2 + v17) = v20;
    v21 = OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleBaselineConstraint;
    *(v2 + OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleBaselineConstraint) = 0;
    if (FIUICurrentLanguageRequiresTallScript())
    {

      v22 = 32.0;
    }

    else
    {
      v23 = [objc_opt_self() sharedApplication];
      v24 = [v23 preferredContentSizeCategory];

      LOBYTE(v23) = UIContentSizeCategory.isAccessibilityCategory.getter();
      v22 = 32.0;
      if ((v23 & 1) == 0)
      {
        v22 = 29.0;
      }
    }

    *(v2 + OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueBaseline) = v22;
    v25 = OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueBaselineConstraint;
    *(v2 + OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueBaselineConstraint) = 0;
    *(v2 + OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_intrinsicContentSizeBottomPadding) = 0x4030000000000000;

    type metadata accessor for DayViewTitleAndValueLabelPair();
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1002301F0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DayViewTitleAndValueLabelPair();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1002303C0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

void sub_1002304BC(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v3;
}

uint64_t sub_10023053C(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return static Published.subscript.setter();
}

id sub_1002306D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GoalDaysModel(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for GoalDaysModel(uint64_t a1)
{
  result = qword_1008E26C0;
  if (!qword_1008E26C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002307D8(uint64_t a1)
{
  sub_100230874(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100230874(uint64_t a1)
{
  if (!qword_1008E26D0)
  {
    sub_100141EEC(&qword_1008E26D8, &qword_1006DF678);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &qword_1008E26D0);
    }
  }
}

uint64_t sub_1002308D8@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for GoalDaysModel(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

id sub_100230918()
{
  result = sub_100230938();
  qword_1008E26E8 = result;
  return result;
}

id sub_100230938()
{
  v0 = sub_100140278(&unk_1008E3FB0, &unk_1006DCB80);
  __chkstk_darwin(v0 - 8);
  v2 = &v11 - v1;
  v3 = [objc_allocWithZone(NSDateFormatter) init];
  v4 = String._bridgeToObjectiveC()();
  [v3 setLocalizedDateFormatFromTemplate:v4];

  TimeZone.init(secondsFromGMT:)();
  v5 = type metadata accessor for TimeZone();
  v6 = *(v5 - 8);
  isa = 0;
  if ((*(v6 + 48))(v2, 1, v5) != 1)
  {
    isa = TimeZone._bridgeToObjectiveC()().super.isa;
    (*(v6 + 8))(v2, v5);
  }

  [v3 setTimeZone:isa];

  if (qword_1008DA548 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Calendar();
  sub_10001AC90(v8, qword_100925000);
  v9 = Calendar._bridgeToObjectiveC()().super.isa;
  [v3 setCalendar:v9];

  return v3;
}

Swift::Int sub_100230B10()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1 + 1);
  return Hasher._finalize()();
}

Swift::Int sub_100230B88(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2 + 1);
  return Hasher._finalize()();
}

uint64_t sub_100230BCC@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100230C18(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100230C18(unint64_t a1)
{
  if (a1 >= 8)
  {
    return 7;
  }

  else
  {
    return (0x605040302010007uLL >> (8 * a1));
  }
}

unint64_t sub_100230C54()
{
  result = qword_1008E26F0;
  if (!qword_1008E26F0)
  {
    sub_100141EEC(&qword_1008E26F8, ">\a\v");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E26F0);
  }

  return result;
}

unint64_t sub_100230CBC()
{
  result = qword_1008E2700;
  if (!qword_1008E2700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E2700);
  }

  return result;
}

__n128 sub_100230D10(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100230D34(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100230D7C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100230DFC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v38 = a1;
  v31 = sub_100140278(&qword_1008E2708, &qword_1006DF8E0);
  v33 = *(v31 - 8);
  __chkstk_darwin(v31);
  v4 = &v28 - v3;
  v34 = sub_100140278(&qword_1008E2710, &qword_1006DF8E8);
  v35 = *(v34 - 8);
  __chkstk_darwin(v34);
  v30 = &v28 - v5;
  v36 = sub_100140278(&qword_1008E2718, &qword_1006DF8F0);
  v37 = *(v36 - 8);
  __chkstk_darwin(v36);
  v32 = &v28 - v6;
  v50 = *v2;
  v41 = v50;
  v7 = swift_allocObject();
  v8 = *(v2 + 48);
  v7[3] = *(v2 + 32);
  v7[4] = v8;
  *(v7 + 73) = *(v2 + 57);
  v9 = *(v2 + 16);
  v7[1] = *v2;
  v7[2] = v9;
  sub_10001B104(&v50, &v45, &qword_1008E2720, &qword_1006DF8F8);
  sub_10014C204(v2, &v45);
  v29 = sub_100140278(&qword_1008E2720, &qword_1006DF8F8);
  v28 = type metadata accessor for Date();
  v10 = sub_100140278(&qword_1008E2728, &qword_1006DF900);
  v11 = sub_10014A6B0(&qword_1008E2730, &qword_1008E2720, &qword_1006DF8F8, &protocol conformance descriptor for [A]);
  v12 = sub_100141EEC(&qword_1008E2738, &qword_1006DF908);
  v13 = sub_100141EEC(&qword_1008E2740, &qword_1006DF910);
  v45 = type metadata accessor for LineMark();
  *&v46 = &protocol witness table for LineMark;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v15 = sub_10014A6B0(&qword_1008E2748, &qword_1008E2740, &qword_1006DF910, &protocol conformance descriptor for ZStack<A>);
  v45 = v12;
  *&v46 = v13;
  *(&v46 + 1) = OpaqueTypeConformance2;
  *&v47 = v15;
  v16 = swift_getOpaqueTypeConformance2();
  v17 = sub_10023253C();
  ForEach<>.init(_:content:)(&v41, sub_100232534, v7, v29, v28, v10, v11, v16, v17);
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v18 = sub_100232594();
  v19 = v30;
  v20 = v31;
  ChartContent.lineStyle(_:)();
  sub_10021D934(v49);
  (*(v33 + 8))(v4, v20);
  sub_100232308(&v45);
  v41 = v45;
  v42 = v46;
  v43 = v47;
  v44 = v48;
  v21 = sub_100140278(&qword_1008E2760, &qword_1006DF918);
  v39 = v20;
  v40 = v18;
  v22 = swift_getOpaqueTypeConformance2();
  v23 = sub_10014A6B0(&qword_1008E2768, &qword_1008E2760, &qword_1006DF918, &protocol conformance descriptor for _OpacityShapeStyle<A>);
  v24 = v32;
  v25 = v34;
  ChartContent.foregroundStyle<A>(_:)();

  (*(v35 + 8))(v19, v25);
  v45 = v25;
  *&v46 = v21;
  *(&v46 + 1) = v22;
  *&v47 = v23;
  swift_getOpaqueTypeConformance2();
  v26 = v36;
  ChartContent.interpolationMethod(_:)();
  return (*(v37 + 8))(v24, v26);
}

uint64_t sub_1002313C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a2;
  v34 = a3;
  v28 = a1;
  v3 = sub_100140278(&qword_1008E1DE8, &qword_1006DF920);
  __chkstk_darwin(v3 - 8);
  v30 = &v25 - v4;
  v5 = sub_100140278(&unk_1008E51A0, &unk_1006E09C0);
  __chkstk_darwin(v5 - 8);
  v7 = &v25 - v6;
  v8 = type metadata accessor for Calendar.Component();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100140278(&qword_1008E1DF0, &qword_1006DEB40);
  __chkstk_darwin(v12 - 8);
  v27 = type metadata accessor for LineMark();
  v29 = *(v27 - 8);
  __chkstk_darwin(v27);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100140278(&qword_1008E2738, &qword_1006DF908);
  v16 = *(v15 - 8);
  v31 = v15;
  v32 = v16;
  __chkstk_darwin(v15);
  v26 = &v25 - v17;
  LocalizedStringKey.init(stringLiteral:)();
  (*(v9 + 104))(v11, enum case for Calendar.Component.day(_:), v8);
  v18 = type metadata accessor for Calendar();
  (*(*(v18 - 8) + 56))(v7, 1, 1, v18);
  v19 = v28;
  static PlottableValue.value<>(_:_:unit:calendar:)();

  sub_10000EA04(v7, &unk_1008E51A0, &unk_1006E09C0);
  (*(v9 + 8))(v11, v8);
  LocalizedStringKey.init(stringLiteral:)();
  v37 = *(v19 + *(type metadata accessor for SleepingSampleSingleMetricChartPoint(0) + 20));
  static PlottableValue.value(_:_:)();

  type metadata accessor for Date();
  LineMark.init<A, B>(x:y:)();
  v20 = v33;
  v22 = v26;
  v21 = v27;
  ChartContent.opacity(_:)();
  (*(v29 + 8))(v14, v21);
  v35 = v20;
  v36 = v19;
  sub_100140278(&qword_1008E2740, &qword_1006DF910);
  v37 = v21;
  v38 = &protocol witness table for LineMark;
  swift_getOpaqueTypeConformance2();
  sub_10014A6B0(&qword_1008E2748, &qword_1008E2740, &qword_1006DF910, &protocol conformance descriptor for ZStack<A>);
  v23 = v31;
  ChartContent.symbol<A>(symbol:)();
  return (*(v32 + 8))(v22, v23);
}

uint64_t sub_10023193C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = static Alignment.center.getter();
  a3[1] = v6;
  v7 = sub_100140278(&qword_1008E2770, &qword_1006DF928);
  return sub_10023199C(a1, a2, (a3 + *(v7 + 44)));
}

uint64_t sub_10023199C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v62 = a3;
  v61 = sub_100140278(&qword_1008E2778, &qword_1006DF930);
  __chkstk_darwin(v61);
  v6 = &v57 - v5;
  v58 = sub_100140278(&qword_1008E2780, &qword_1006DF938);
  __chkstk_darwin(v58);
  v60 = &v57 - v7;
  v59 = sub_100140278(&qword_1008E2788, &qword_1006DF940);
  __chkstk_darwin(v59);
  v9 = (&v57 - v8);
  v10 = sub_100140278(&qword_1008E2790, &qword_1006DF948);
  __chkstk_darwin(v10);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v57 - v14;
  __chkstk_darwin(v16);
  v18 = &v57 - v17;
  if (sub_1003573D0(a2, *(a1 + 8)))
  {
    v19 = *(a2 + *(type metadata accessor for SleepingSampleSingleMetricChartPoint(0) + 24));
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    *&v69[6] = v87;
    *&v69[22] = v88;
    *&v69[38] = v89;

    v20 = Color.opacity(_:)();
    v21 = *(a1 + 64);
    *&v70[0] = v19;
    WORD4(v70[0]) = 256;
    *(v70 + 10) = *v69;
    *(&v70[1] + 10) = *&v69[16];
    *(&v70[2] + 10) = *&v69[32];
    *(&v70[3] + 1) = *&v69[46];
    *&v71 = v20;
    *(&v71 + 1) = v21;
    v72 = 0uLL;
    v22 = static Color.black.getter();
    v23 = *(sub_100140278(&qword_1008E27A0, &qword_1006DF958) + 36);
    v24 = enum case for BlendMode.destinationOut(_:);
    v25 = type metadata accessor for BlendMode();
    (*(*(v25 - 8) + 104))(&v18[v23], v24, v25);
    *v18 = v22;
    *(v18 + 4) = 256;
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v26 = &v18[*(v10 + 36)];
    v27 = v85[1];
    *v26 = v85[0];
    *(v26 + 1) = v27;
    *(v26 + 2) = v85[2];
    v65 = v70[2];
    v66 = v70[3];
    v67 = v71;
    v68 = v72;
    v63 = v70[0];
    v64 = v70[1];
    sub_10001B104(v18, v15, &qword_1008E2790, &qword_1006DF948);
    v28 = v66;
    v75 = v65;
    v76 = v66;
    v29 = v67;
    v30 = v68;
    v77 = v67;
    v78 = v68;
    v31 = v63;
    v32 = v64;
    v73 = v63;
    v74 = v64;
    v9[2] = v65;
    v9[3] = v28;
    v9[4] = v29;
    v9[5] = v30;
    *v9 = v31;
    v9[1] = v32;
    v33 = sub_100140278(&qword_1008E27C8, &qword_1006DF970);
    sub_10001B104(v15, v9 + *(v33 + 48), &qword_1008E2790, &qword_1006DF948);
    sub_10001B104(v70, &v79, &qword_1008E27D0, &qword_1006DF978);
    sub_10001B104(&v73, &v79, &qword_1008E27D0, &qword_1006DF978);
    sub_10000EA04(v15, &qword_1008E2790, &qword_1006DF948);
    v81 = v65;
    v82 = v66;
    v83 = v67;
    v84 = v68;
    v79 = v63;
    v80 = v64;
    sub_10000EA04(&v79, &qword_1008E27D0, &qword_1006DF978);
    sub_10001B104(v9, v60, &qword_1008E2788, &qword_1006DF940);
    swift_storeEnumTagMultiPayload();
    sub_10014A6B0(&qword_1008E27B8, &qword_1008E2788, &qword_1006DF940, &protocol conformance descriptor for TupleView<A>);
    sub_10014A6B0(&qword_1008E27C0, &qword_1008E2778, &qword_1006DF930, &protocol conformance descriptor for TupleView<A>);
    v34 = v62;
    _ConditionalContent<>.init(storage:)();
    sub_10000EA04(v70, &qword_1008E27D0, &qword_1006DF978);
    sub_10000EA04(v9, &qword_1008E2788, &qword_1006DF940);
    sub_10000EA04(v18, &qword_1008E2790, &qword_1006DF948);
    v35 = sub_100140278(&qword_1008E2798, &qword_1006DF950);
    return (*(*(v35 - 8) + 56))(v34, 0, 1, v35);
  }

  else if (*(a1 + 16))
  {
    v37 = static Color.black.getter();
    v38 = *(sub_100140278(&qword_1008E27A0, &qword_1006DF958) + 36);
    v39 = enum case for BlendMode.destinationOut(_:);
    v40 = type metadata accessor for BlendMode();
    (*(*(v40 - 8) + 104))(&v12[v38], v39, v40);
    *v12 = v37;
    *(v12 + 4) = 256;
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v41 = &v12[*(v10 + 36)];
    v42 = *&v86[35];
    *v41 = *&v86[27];
    *(v41 + 1) = v42;
    *(v41 + 2) = *&v86[43];
    v43 = *(a2 + *(type metadata accessor for SleepingSampleSingleMetricChartPoint(0) + 24));
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    *&v86[19] = v89;
    *&v86[11] = v88;
    *&v86[3] = v87;
    v44 = 0.6;
    if ((*(a1 + 72) & 1) == 0)
    {
      v44 = 1.0;
    }

    *&v70[0] = v43;
    WORD4(v70[0]) = 256;
    *(v70 + 10) = *v86;
    *(&v70[1] + 10) = *&v86[8];
    *(&v70[2] + 10) = *&v86[16];
    *(&v70[3] + 1) = *&v86[23];
    *&v71 = v44;
    sub_10001B104(v12, v18, &qword_1008E2790, &qword_1006DF948);
    v65 = v70[2];
    v66 = v70[3];
    *&v67 = v71;
    v63 = v70[0];
    v64 = v70[1];
    sub_10001B104(v18, v6, &qword_1008E2790, &qword_1006DF948);
    v45 = &v6[*(sub_100140278(&qword_1008E27A8, &qword_1006DF960) + 48)];
    v46 = v67;
    *&v77 = v67;
    v48 = v65;
    v47 = v66;
    v75 = v65;
    v76 = v66;
    v50 = v63;
    v49 = v64;
    v73 = v63;
    v74 = v64;
    *(v45 + 2) = v65;
    *(v45 + 3) = v47;
    *(v45 + 8) = v46;
    *v45 = v50;
    *(v45 + 1) = v49;
    *&v83 = v46;
    v81 = v48;
    v82 = v47;
    v79 = v50;
    v80 = v49;

    sub_10001B104(v70, v85, &qword_1008E27B0, &qword_1006DF968);
    sub_10001B104(&v73, v85, &qword_1008E27B0, &qword_1006DF968);
    sub_10000EA04(&v79, &qword_1008E27B0, &qword_1006DF968);
    sub_10000EA04(v18, &qword_1008E2790, &qword_1006DF948);
    sub_10001B104(v6, v60, &qword_1008E2778, &qword_1006DF930);
    swift_storeEnumTagMultiPayload();
    sub_10014A6B0(&qword_1008E27B8, &qword_1008E2788, &qword_1006DF940, &protocol conformance descriptor for TupleView<A>);
    sub_10014A6B0(&qword_1008E27C0, &qword_1008E2778, &qword_1006DF930, &protocol conformance descriptor for TupleView<A>);
    v51 = v62;
    _ConditionalContent<>.init(storage:)();
    sub_10000EA04(v70, &qword_1008E27B0, &qword_1006DF968);
    sub_10000EA04(v6, &qword_1008E2778, &qword_1006DF930);
    sub_10000EA04(v12, &qword_1008E2790, &qword_1006DF948);
    v52 = sub_100140278(&qword_1008E2798, &qword_1006DF950);
    return (*(*(v52 - 8) + 56))(v51, 0, 1, v52);
  }

  else
  {
    v53 = sub_100140278(&qword_1008E2798, &qword_1006DF950);
    v54 = *(*(v53 - 8) + 56);
    v55 = v53;
    v56 = v62;

    return v54(v56, 1, 1, v55);
  }
}

__n128 sub_100232308@<Q0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SleepingSampleSingleMetricChartPoint(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *(*v1 + 16);
  if (v8)
  {
    v13 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v9 = v7 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v10 = *(v4 + 72);
    do
    {
      sub_1002326E4(v9, v6);

      sub_100232748(v6);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v9 += v10;
      --v8;
    }

    while (v8);
  }

  static UnitPoint.leading.getter();
  static UnitPoint.trailing.getter();
  Gradient.init(colors:)();
  LinearGradient.init(gradient:startPoint:endPoint:)();
  *a1 = v13;
  result = v15;
  *(a1 + 8) = v14;
  *(a1 + 24) = result;
  *(a1 + 40) = 1053609165;
  return result;
}

unint64_t sub_10023253C()
{
  result = qword_1008E2750;
  if (!qword_1008E2750)
  {
    type metadata accessor for SleepingSampleSingleMetricChartPoint(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E2750);
  }

  return result;
}

unint64_t sub_100232594()
{
  result = qword_1008E2758;
  if (!qword_1008E2758)
  {
    sub_100141EEC(&qword_1008E2708, &qword_1006DF8E0);
    sub_100141EEC(&qword_1008E2738, &qword_1006DF908);
    sub_100141EEC(&qword_1008E2740, &qword_1006DF910);
    type metadata accessor for LineMark();
    swift_getOpaqueTypeConformance2();
    sub_10014A6B0(&qword_1008E2748, &qword_1008E2740, &qword_1006DF910, &protocol conformance descriptor for ZStack<A>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E2758);
  }

  return result;
}

uint64_t sub_1002326E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepingSampleSingleMetricChartPoint(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100232748(uint64_t a1)
{
  v2 = type metadata accessor for SleepingSampleSingleMetricChartPoint(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1002327D4(uint64_t a1)
{
  sub_100232980(319, &qword_1008DC720, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_100232980(319, &qword_1008E2840, type metadata accessor for MetricChartData, &type metadata accessor for Array);
    if (v2 <= 0x3F)
    {
      type metadata accessor for MetricFormattingHelper(319);
      if (v3 <= 0x3F)
      {
        sub_10005C818();
        if (v4 <= 0x3F)
        {
          type metadata accessor for Date();
          if (v5 <= 0x3F)
          {
            type metadata accessor for Calendar.Component();
            if (v6 <= 0x3F)
            {
              type metadata accessor for Date.FormatStyle();
              if (v7 <= 0x3F)
              {
                sub_1002329E4();
                if (v8 <= 0x3F)
                {
                  type metadata accessor for AxisMarkValues();
                  if (v9 <= 0x3F)
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

void sub_100232980(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1002329E4()
{
  result = qword_1008E2848;
  if (!qword_1008E2848)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1008E2848);
  }

  return result;
}

uint64_t sub_100232A4C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for DynamicTypeSize();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100140278(&qword_1008E1DE8, &qword_1006DF920);
  __chkstk_darwin(v10 - 8);
  v65 = (&v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v64 = &v60 - v13;
  v14 = sub_100140278(&unk_1008E51A0, &unk_1006E09C0);
  __chkstk_darwin(v14 - 8);
  v16 = &v60 - v15;
  v17 = sub_100140278(&qword_1008E1DF0, &qword_1006DEB40);
  __chkstk_darwin(v17 - 8);
  v63 = &v60 - v18;
  v69 = type metadata accessor for RuleMark();
  v67 = *(v69 - 8);
  __chkstk_darwin(v69);
  v66 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_100140278(&qword_1008E28F0, &qword_1006DFA50);
  v70 = *(v74 - 8);
  __chkstk_darwin(v74);
  v68 = &v60 - v20;
  v75 = sub_100140278(&qword_1008E28E8, &qword_1006DFA48);
  v73 = *(v75 - 8);
  __chkstk_darwin(v75);
  v72 = &v60 - v21;
  v22 = sub_100140278(&qword_1008E29C8, qword_1006DFAF8);
  v23 = *(v22 - 8);
  v77 = v22;
  v78 = v23;
  __chkstk_darwin(v22);
  v71 = &v60 - v24;
  [*(a1 + *(type metadata accessor for MetricChartData(0) + 24)) doubleValueForUnit:*a1];
  v26 = v25;
  v27 = type metadata accessor for MetricCardBarChartView(0);
  sub_1004D41D4(*(a2 + *(v27 + 20)), v26);
  if (v28 == 0.0)
  {
    v29 = v77;
    v30 = *(v78 + 56);

    return v30(a3, 1, 1, v29);
  }

  else
  {
    v32 = v28;
    LocalizedStringKey.init(stringLiteral:)();
    v61 = a3;
    v76 = v7;
    v62 = v6;
    v60 = v9;
    v33 = type metadata accessor for Calendar();
    (*(*(v33 - 8) + 56))(v16, 1, 1, v33);
    static PlottableValue.value<>(_:_:unit:calendar:)();

    sub_10000EA04(v16, &unk_1008E51A0, &unk_1006E09C0);
    LocalizedStringKey.init(stringLiteral:)();
    v84[0] = 0.0;
    static PlottableValue.value(_:_:)();

    LocalizedStringKey.init(stringLiteral:)();
    v84[0] = v32;
    static PlottableValue.value(_:_:)();

    type metadata accessor for Date();
    v34 = v66;
    RuleMark.init<A, B>(x:yStart:yEnd:)();
    v35 = (a2 + *(v27 + 40));
    v36 = v35[3];
    v37 = v35[4];
    sub_1000066AC(v35, v36);
    v38 = (*(v37 + 16))(v36, v37);
    v40 = v39;
    v42 = v41;
    v43 = v60;
    sub_10005491C(v60);
    sub_10001DEC8(v43, v38, v40, v42);
    sub_10001D4F8(v38, v40, v42);
    v44 = *(v76 + 8);
    v76 += 8;
    v65 = v44;
    v44(v43, v62);
    StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
    v45 = v68;
    v46 = v69;
    ChartContent.lineStyle(_:)();
    sub_10021D934(v84);
    (*(v67 + 8))(v34, v46);
    v83 = Color.gradient.getter();
    v79 = v46;
    v80 = &protocol witness table for RuleMark;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v48 = v72;
    v49 = v74;
    ChartContent.foregroundStyle<A>(_:)();

    (*(v70 + 8))(v45, v49);
    v50 = v35[3];
    v51 = v35[4];
    sub_1000066AC(v35, v50);
    v52 = (*(v51 + 16))(v50, v51);
    v54 = v53;
    LOBYTE(v51) = v55;
    sub_10005491C(v43);
    sub_10001DEC8(v43, v52, v54, v51);
    sub_10001D4F8(v52, v54, v51);
    v65(v43, v62);
    v79 = v49;
    v80 = &type metadata for AnyGradient;
    v81 = OpaqueTypeConformance2;
    v82 = &protocol witness table for AnyGradient;
    swift_getOpaqueTypeConformance2();
    v56 = v71;
    v57 = v75;
    ChartContent.offset(x:y:)();
    (*(v73 + 8))(v48, v57);
    v58 = v77;
    v59 = v61;
    (*(v78 + 32))(v61, v56, v77);
    return (*(v78 + 56))(v59, 0, 1, v58);
  }
}

void sub_100233410(void *a1@<X0>, uint64_t a2@<X1>, double *a3@<X8>)
{
  [*(a1 + *(type metadata accessor for MetricChartData(0) + 24)) doubleValueForUnit:*a1];
  v6 = v5;
  v7 = type metadata accessor for MetricCardBarChartView(0);
  sub_1004D41D4(*(a2 + *(v7 + 20)), v6);
  *a3 = v8;
}

unint64_t sub_100233498()
{
  result = qword_1008E28D0;
  if (!qword_1008E28D0)
  {
    sub_100141EEC(&qword_1008E28C8, &qword_1006DFA38);
    sub_1000622E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E28D0);
  }

  return result;
}

unint64_t sub_10023353C()
{
  result = qword_1008E2908;
  if (!qword_1008E2908)
  {
    sub_100141EEC(&qword_1008E2900, &unk_1006DFA58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E2908);
  }

  return result;
}

unint64_t sub_1002335B8()
{
  result = qword_1008E1D08;
  if (!qword_1008E1D08)
  {
    sub_100141EEC(&qword_1008E1D00, &qword_1006DEAA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E1D08);
  }

  return result;
}

unint64_t sub_100233634()
{
  result = qword_1008E2968;
  if (!qword_1008E2968)
  {
    sub_100141EEC(&qword_1008E2960, &qword_1006DFA98);
    sub_100069CA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E2968);
  }

  return result;
}

unint64_t sub_1002336B8()
{
  result = qword_1008E2990;
  if (!qword_1008E2990)
  {
    sub_100141EEC(&qword_1008E2998, &unk_1006DFAB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E2990);
  }

  return result;
}

unint64_t sub_10023374C()
{
  result = qword_1008E29D0;
  if (!qword_1008E29D0)
  {
    sub_100141EEC(&qword_1008E2950, &qword_1006DFA88);
    sub_100141EEC(&qword_1008E28B8, &qword_1006DFA28);
    sub_100141EEC(&qword_1008E2910, &qword_1006DFA68);
    sub_100141EEC(&qword_1008E28B0, &qword_1006DFA20);
    sub_100141EEC(&qword_1008E1D00, &qword_1006DEAA0);
    sub_100141EEC(&qword_1008E28A8, &qword_1006DFA18);
    sub_100141EEC(&qword_1008E2900, &unk_1006DFA58);
    sub_100141EEC(&qword_1008E28A0, &qword_1006DFA10);
    sub_10014A6B0(&qword_1008E28F8, &qword_1008E28A0, &qword_1006DFA10, &protocol conformance descriptor for Chart<A>);
    swift_getOpaqueTypeConformance2();
    sub_10023353C();
    swift_getOpaqueTypeConformance2();
    sub_1002335B8();
    swift_getOpaqueTypeConformance2();
    sub_10006468C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E29D0);
  }

  return result;
}

uint64_t type metadata accessor for ScheduleDayRowView(uint64_t a1)
{
  result = qword_1008E2A30;
  if (!qword_1008E2A30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100233A08(uint64_t a1)
{
  type metadata accessor for Calendar();
  if (v1 <= 0x3F)
  {
    sub_1000059F8(319, &qword_1008F24B0, FIUIFormattingManager_ptr);
    if (v2 <= 0x3F)
    {
      sub_10022703C(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100233AD8(uint64_t a1@<X8>)
{
  v123 = a1;
  v2 = type metadata accessor for ScheduleDayRowView(0);
  v3 = *(v2 - 1);
  OpaqueTypeConformance2 = v3[8];
  __chkstk_darwin(v2);
  v5 = &v111 - ((OpaqueTypeConformance2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AttributedString();
  __chkstk_darwin(v6 - 8);
  v121 = &v111 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AccessibilityChildBehavior();
  v135 = *(v8 - 8);
  v136 = v8;
  __chkstk_darwin(v8);
  v131 = &v111 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100140278(&qword_1008E2A70, &qword_1006DFB78);
  __chkstk_darwin(v10 - 8);
  v12 = &v111 - v11;
  v124 = sub_100140278(&qword_1008E2A78, &qword_1006DFB80);
  __chkstk_darwin(v124);
  v126 = &v111 - v13;
  v125 = sub_100140278(&qword_1008E2A80, &qword_1006DFB88);
  __chkstk_darwin(v125);
  v127 = &v111 - v14;
  v129 = sub_100140278(&qword_1008E2A88, &qword_1006DFB90);
  __chkstk_darwin(v129);
  v128 = &v111 - v15;
  v134 = sub_100140278(&qword_1008E2A90, &qword_1006DFB98);
  v132 = *(v134 - 8);
  __chkstk_darwin(v134);
  v130 = &v111 - v16;
  v17 = sub_100140278(&qword_1008E2A98, &qword_1006DFBA0);
  v116 = *(v17 - 8);
  v117 = v17;
  __chkstk_darwin(v17);
  v133 = &v111 - v18;
  v120 = sub_100140278(&qword_1008E2AA0, qword_1006DFBA8);
  __chkstk_darwin(v120);
  v118 = &v111 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v119 = &v111 - v21;
  v22 = v2[6];
  v23 = *(v1 + v2[7] + 8);
  v138 = v1;
  v24 = *(v1 + v22);
  swift_getKeyPath();
  swift_getKeyPath();
  v137 = v23;
  static Published.subscript.getter();

  v122 = v3;
  if ((*&v149[0] & 0xC000000000000001) != 0)
  {
    v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if ((v24 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_34;
    }

    if (v24 >= *((*&v149[0] & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_36;
    }

    v25 = *(*&v149[0] + 8 * v24 + 32);
  }

  v26 = v25;

  v3 = *&v26[OBJC_IVAR____TtC10FitnessApp7GoalDay_goal];

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v114 = OpaqueTypeConformance2;
  v115 = v24;
  if ((*&v149[0] & 0xC000000000000001) == 0)
  {
    if ((v24 & 0x8000000000000000) == 0)
    {
      if (v24 < *((*&v149[0] & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v27 = *(*&v149[0] + 8 * v24 + 32);
        goto LABEL_9;
      }

LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

LABEL_34:
  v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_9:
  v28 = v27;

  v29 = *&v28[OBJC_IVAR____TtC10FitnessApp7GoalDay_goalType];

  v30 = [*(v138 + v2[5]) unitManager];
  if (!v30)
  {
    goto LABEL_44;
  }

  v31 = v30;
  v32 = [v30 unitManager];

  if ((v29 - 1) < 2)
  {
    OpaqueTypeConformance2 = &selRef_minuteUnit;
    goto LABEL_14;
  }

  if (v29)
  {
    OpaqueTypeConformance2 = &selRef_countUnit;
LABEL_14:
    v33 = objc_opt_self();
    goto LABEL_16;
  }

  OpaqueTypeConformance2 = &selRef_userActiveEnergyBurnedUnit;
  v33 = v32;
LABEL_16:
  v34 = [v33 *OpaqueTypeConformance2];

  [v3 doubleValueForUnit:v34];
  v36 = v35;

  v37 = floor(v36);
  if ((*&v37 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v37 <= -9.22337204e18)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v37 >= 9.22337204e18)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    v85 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_31;
  }

  v112 = v5;
  v38 = v37;
  v39 = v138;
  sub_100234914();
  v41 = v40;
  *v12 = static VerticalAlignment.center.getter();
  *(v12 + 1) = 0;
  v12[16] = 1;
  v42 = &v12[*(sub_100140278(&qword_1008E2AA8, &unk_1006DFC08) + 44)];
  v111 = v38;
  sub_100234BDC(v39, v38, v41, v42);
  sub_100140278(&qword_1008E0700, &unk_1006DC060);
  inited = swift_initStackObject();
  v113 = xmmword_1006D1F70;
  *(inited + 16) = xmmword_1006D1F70;
  v44 = static Edge.Set.leading.getter();
  *(inited + 32) = v44;
  v45 = static Edge.Set.trailing.getter();
  *(inited + 33) = v45;
  v46 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v44)
  {
    v46 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  v47 = Edge.Set.init(rawValue:)();
  v48 = v126;
  if (v47 != v45)
  {
    v46 = Edge.Set.init(rawValue:)();
  }

  EdgeInsets.init(_all:)();
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v56 = v55;
  sub_100015E80(v12, v48, &qword_1008E2A70, &qword_1006DFB78);
  v57 = v48 + *(v124 + 36);
  *v57 = v46;
  *(v57 + 8) = v50;
  *(v57 + 16) = v52;
  *(v57 + 24) = v54;
  *(v57 + 32) = v56;
  *(v57 + 40) = 0;
  v58 = swift_initStackObject();
  *(v58 + 16) = v113;
  v59 = static Edge.Set.top.getter();
  *(v58 + 32) = v59;
  v60 = static Edge.Set.bottom.getter();
  *(v58 + 33) = v60;
  v61 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v59)
  {
    v61 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v60)
  {
    v61 = Edge.Set.init(rawValue:)();
  }

  EdgeInsets.init(_all:)();
  v63 = v62;
  v65 = v64;
  v67 = v66;
  v69 = v68;
  v70 = v48;
  v71 = v127;
  sub_100015E80(v70, v127, &qword_1008E2A78, &qword_1006DFB80);
  v72 = v71 + *(v125 + 36);
  *v72 = v61;
  *(v72 + 8) = v63;
  *(v72 + 16) = v65;
  *(v72 + 24) = v67;
  *(v72 + 32) = v69;
  *(v72 + 40) = 0;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v73 = v128;
  sub_100015E80(v71, v128, &qword_1008E2A80, &qword_1006DFB88);
  v74 = v129;
  v75 = (v73 + *(v129 + 36));
  v76 = v149[5];
  v75[4] = v149[4];
  v75[5] = v76;
  v75[6] = v149[6];
  v77 = v149[1];
  *v75 = v149[0];
  v75[1] = v77;
  v78 = v149[3];
  v75[2] = v149[2];
  v75[3] = v78;
  Solarium.init()();
  v79 = sub_100140278(&qword_1008E2AB0, &qword_1006DFC18);
  v80 = sub_100140278(&qword_1008E2AB8, &qword_1006DFC20);
  v81 = sub_1002390E0();
  v82 = sub_1002392B0();
  v110 = sub_100239368();
  v83 = v130;
  View.staticIf<A, B, C>(_:then:else:)();
  sub_10000EA04(v73, &qword_1008E2A88, &qword_1006DFB90);
  v84 = v131;
  static AccessibilityChildBehavior.ignore.getter();
  v141 = v74;
  v142 = &type metadata for Solarium;
  v143 = v79;
  v144 = v80;
  v145 = v81;
  v146 = &protocol witness table for Solarium;
  v147 = v82;
  v148 = v110;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v12 = v133;
  v5 = v134;
  View.accessibilityElement(children:)();
  (*(v135 + 8))(v84, v136);
  (*(v132 + 8))(v83, v5);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((v141 & 0xC000000000000001) != 0)
  {
    goto LABEL_41;
  }

  if ((v115 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v115 < *((v141 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v85 = *(v141 + 8 * v115 + 32);
LABEL_31:
    v86 = v85;

    v87 = v138;
    v88 = sub_1003D876C(v86);
    v90 = v89;

    v141 = v88;
    v142 = v90;
    v139 = v5;
    v140 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    sub_10000FCBC();
    v91 = v117;
    v92 = v118;
    View.accessibilityLabel<A>(_:)();

    (*(v116 + 8))(v12, v91);
    sub_100140278(&unk_1008E4E50, &qword_1006D4A60);
    v93 = swift_allocObject();
    *(v93 + 16) = xmmword_1006D46C0;
    *(v93 + 56) = &type metadata for Int;
    *(v93 + 64) = &protocol witness table for Int;
    *(v93 + 32) = v111;
    v94 = static String.localizedStringWithFormat(_:_:)();
    v96 = v95;

    sub_100237904();
    v141 = v97;
    v142 = v98;
    v99 = StringProtocol.localizedUppercase.getter();
    v101 = v100;

    sub_100237B08(v94, v96, v99, v101, v121);

    v102 = Text.init(_:)();
    v104 = v103;
    LOBYTE(v94) = v105;
    v106 = v119;
    ModifiedContent<>.accessibilityValue(_:)();
    sub_10004642C(v102, v104, v94 & 1);

    sub_10000EA04(v92, &qword_1008E2AA0, qword_1006DFBA8);
    v107 = v112;
    sub_100239420(v87, v112);
    v108 = (*(v122 + 80) + 16) & ~*(v122 + 80);
    v109 = swift_allocObject();
    sub_1002394F4(v107, v109 + v108, type metadata accessor for ScheduleDayRowView);
    ModifiedContent<>.accessibilityAdjustableAction(_:)();

    sub_10000EA04(v106, &qword_1008E2AA0, qword_1006DFBA8);
    return;
  }

  __break(1u);
LABEL_44:
  __break(1u);
}

void sub_100234914()
{
  v2 = type metadata accessor for ScheduleDayRowView(0);
  v3 = *(v0 + v2[6]);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((v16 & 0xC000000000000001) == 0)
  {
    if ((v3 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v3 < *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v4 = *(v16 + 8 * v3 + 32);
      goto LABEL_5;
    }

    __break(1u);
LABEL_20:
    v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    v15 = *(v14 + *v1);
    swift_unknownObjectRelease();
    if (v15)
    {
LABEL_22:

      return;
    }

LABEL_21:
    FIUIHKUnitIsCalorieUnit();

    return;
  }

  v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_5:
  v5 = v4;

  v1 = &OBJC_IVAR____TtC10FitnessApp7GoalDay_goalType;
  v6 = *&v5[OBJC_IVAR____TtC10FitnessApp7GoalDay_goalType];

  v7 = [*(v0 + v2[5]) unitManager];
  if (!v7)
  {
    goto LABEL_25;
  }

  v8 = v7;
  v9 = [v7 unitManager];

  if ((v6 - 1) < 2)
  {
    v10 = &selRef_minuteUnit;
    goto LABEL_10;
  }

  if (v6)
  {
    v10 = &selRef_countUnit;
LABEL_10:
    v11 = objc_opt_self();
    goto LABEL_12;
  }

  v10 = &selRef_userActiveEnergyBurnedUnit;
  v11 = v9;
LABEL_12:
  v2 = [v11 *v10];

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((v16 & 0xC000000000000001) != 0)
  {
    goto LABEL_20;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v3 < *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v12 = *(v16 + 8 * v3 + 32);

    v13 = *&v12[OBJC_IVAR____TtC10FitnessApp7GoalDay_goalType];

    if (v13)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

void sub_100234BDC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v100 = a3;
  v99 = a2;
  v106 = a4;
  v5 = sub_100140278(&qword_1008E2B30, &qword_1006DFC68);
  __chkstk_darwin(v5 - 8);
  v102 = &v86[-v6];
  v101 = sub_100140278(&qword_1008E2B38, &unk_1006DFC70);
  __chkstk_darwin(v101);
  v8 = &v86[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v86[-v10];
  __chkstk_darwin(v12);
  v14 = &v86[-v13];
  v95 = sub_100140278(&qword_1008E2B40, &qword_100702440);
  __chkstk_darwin(v95);
  v94 = &v86[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v91 = &v86[-v17];
  v18 = type metadata accessor for DynamicTypeSize();
  v109 = *(v18 - 8);
  __chkstk_darwin(v18);
  v108 = &v86[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v20);
  v107 = &v86[-v21];
  v93 = sub_100140278(&qword_1008E2B48, &unk_1006DFC80);
  __chkstk_darwin(v93);
  v92 = &v86[-v22];
  v23 = sub_100140278(&qword_1008DC448, &qword_1006D48C0);
  __chkstk_darwin(v23 - 8);
  v25 = &v86[-v24];
  v98 = sub_100140278(&qword_1008E2B50, &qword_1006DFC90);
  v97 = *(v98 - 8);
  __chkstk_darwin(v98);
  v96 = &v86[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v27);
  v110 = &v86[-v28];
  v29 = a1;
  v30 = *(a1 + *(type metadata accessor for ScheduleDayRowView(0) + 24));
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v105 = v8;
  v104 = v14;
  v103 = v11;
  if ((v111 & 0xC000000000000001) != 0)
  {
    v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_5:
    v32 = v31;

    v90 = v29;
    v33 = sub_1003D876C(v32);
    v35 = v34;

    *&v111 = v33;
    *(&v111 + 1) = v35;
    sub_10000FCBC();
    v36 = Text.init<A>(_:)();
    v38 = v37;
    v40 = v39;
    v41 = enum case for Font.Design.rounded(_:);
    v42 = type metadata accessor for Font.Design();
    v43 = *(v42 - 8);
    (*(v43 + 104))(v25, v41, v42);
    (*(v43 + 56))(v25, 0, 1, v42);
    v44 = Text.fontDesign(_:)();
    v46 = v45;
    v48 = v47;
    sub_10004642C(v36, v38, v40 & 1);

    sub_10000EA04(v25, &qword_1008DC448, &qword_1006D48C0);
    static Font.body.getter();
    v49 = Text.font(_:)();
    v51 = v50;
    LOBYTE(v38) = v52;
    v54 = v53;

    sub_10004642C(v44, v46, v48 & 1);

    v89 = v49;
    *&v111 = v49;
    *(&v111 + 1) = v51;
    v88 = v51;
    v55 = v38 & 1;
    LOBYTE(v112) = v55;
    *(&v112 + 1) = v54;
    v56 = v109;
    v57 = *(v109 + 104);
    v58 = v107;
    v57(v107, enum case for DynamicTypeSize.xSmall(_:), v18);
    v59 = v108;
    v57(v108, enum case for DynamicTypeSize.xLarge(_:), v18);
    sub_100239A3C(&qword_1008DC898, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
    if (dispatch thunk of static Comparable.<= infix(_:_:)())
    {
      v60 = *(v56 + 32);
      v87 = v55;
      v61 = v91;
      v60(v91, v58, v18);
      v62 = v95;
      v60((v61 + *(v95 + 48)), v59, v18);
      v108 = v54;
      v63 = v94;
      sub_10023955C(v61, v94);
      v64 = *(v62 + 48);
      v65 = v92;
      v60(v92, v63, v18);
      v66 = *(v56 + 8);
      v66(&v63[v64], v18);
      sub_100015E80(v61, v63, &qword_1008E2B40, &qword_100702440);
      v60((v65 + *(v93 + 36)), &v63[*(v62 + 48)], v18);
      v66(v63, v18);
      sub_10014A6B0(&qword_1008E2B58, &qword_1008E2B48, &unk_1006DFC80, &protocol conformance descriptor for ClosedRange<A>);
      v67 = v110;
      View.dynamicTypeSize<A>(_:)();
      sub_10000EA04(v65, &qword_1008E2B48, &unk_1006DFC80);
      sub_10004642C(v89, v88, v87);

      v68 = static VerticalAlignment.center.getter();
      v69 = v102;
      *v102 = v68;
      *(v69 + 8) = 0;
      *(v69 + 16) = 1;
      v70 = sub_100140278(&qword_1008E2B60, &qword_1006DFC98);
      sub_100235674(v90, v99, v100, v69 + *(v70 + 44));
      static Alignment.trailing.getter();
      _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
      v71 = v103;
      sub_100015E80(v69, v103, &qword_1008E2B30, &qword_1006DFC68);
      v72 = (v71 + *(v101 + 36));
      v73 = v116;
      v72[4] = v115;
      v72[5] = v73;
      v72[6] = v117;
      v74 = v112;
      *v72 = v111;
      v72[1] = v74;
      v75 = v114;
      v72[2] = v113;
      v72[3] = v75;
      v76 = v104;
      sub_100015E80(v71, v104, &qword_1008E2B38, &unk_1006DFC70);
      v77 = v97;
      v78 = *(v97 + 16);
      v79 = v96;
      v80 = v98;
      v78(v96, v67, v98);
      v81 = v105;
      sub_10001B104(v76, v105, &qword_1008E2B38, &unk_1006DFC70);
      v82 = v106;
      v78(v106, v79, v80);
      v83 = sub_100140278(&qword_1008E2B68, &qword_1006DFCA0);
      v84 = &v82[*(v83 + 48)];
      *v84 = 0;
      v84[8] = 1;
      sub_10001B104(v81, &v82[*(v83 + 64)], &qword_1008E2B38, &unk_1006DFC70);
      sub_10000EA04(v76, &qword_1008E2B38, &unk_1006DFC70);
      v85 = *(v77 + 8);
      v85(v110, v80);
      sub_10000EA04(v81, &qword_1008E2B38, &unk_1006DFC70);
      v85(v79, v80);
      return;
    }

    goto LABEL_9;
  }

  if ((v30 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v30 < *((v111 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v31 = *(v111 + 8 * v30 + 32);
    goto LABEL_5;
  }

LABEL_10:
  __break(1u);
}

void sub_100235674(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v124 = a3;
  v130 = a2;
  v116 = a4;
  v5 = sub_100140278(&qword_1008E2B70, &qword_1006DFCA8);
  __chkstk_darwin(v5 - 8);
  v117 = &v108 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v129 = (&v108 - v8);
  v9 = type metadata accessor for ScheduleDayRowView(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = sub_100140278(&qword_1008E2B78, &qword_1006DFCB0);
  __chkstk_darwin(v12);
  v125 = (&v108 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v14);
  v16 = (&v108 - v15);
  v17 = sub_100140278(&qword_1008E2B80, &qword_1006DFCB8);
  __chkstk_darwin(v17);
  v111 = &v108 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v108 - v20;
  v127 = sub_100140278(&qword_1008E2B88, &qword_1006DFCC0);
  __chkstk_darwin(v127);
  v112 = &v108 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v118 = &v108 - v24;
  v25 = sub_100140278(&qword_1008E2B90, &qword_1006DFCC8);
  __chkstk_darwin(v25 - 8);
  v114 = &v108 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v115 = &v108 - v28;
  __chkstk_darwin(v29);
  v113 = &v108 - v30;
  __chkstk_darwin(v31);
  v128 = &v108 - v32;
  sub_100239420(a1, &v108 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = *(v10 + 80);
  v34 = (v33 + 16) & ~v33;
  v122 = v11;
  v120 = v33;
  v35 = swift_allocObject();
  v121 = v34;
  v36 = v35 + v34;
  v37 = a1;
  v123 = &v108 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002394F4(v123, v36, type metadata accessor for ScheduleDayRowView);
  v38 = v12[10];
  v131 = 0;
  v39 = sub_100140278(&qword_1008E2B98, &qword_1006DFCD0);
  State.init(wrappedValue:)();
  *(v16 + v38) = v132;
  v40 = v12[11];
  v131 = 1;
  State.init(wrappedValue:)();
  *(v16 + v40) = v132;
  *v16 = sub_1002395CC;
  v16[1] = v35;
  sub_100236618(v16 + v12[9]);
  sub_100236A10();
  v126 = v17;
  v108 = v9;
  v119 = v39;
  if (v41 == v130)
  {
    v42 = static Color.gray.getter();
  }

  else
  {
    v43 = *(a1 + *(v9 + 24));
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if ((v132 & 0xC000000000000001) != 0)
    {
      v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if ((v43 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      if (v43 >= *((v132 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v44 = *(v132 + 8 * v43 + 32);
    }

    v45 = v44;

    v46 = *&v45[OBJC_IVAR____TtC10FitnessApp7GoalDay_goalType];

    sub_100349310(v46);
    v42 = v47;
    v17 = v126;
  }

  KeyPath = swift_getKeyPath();
  *&v132 = v42;
  v49 = AnyShapeStyle.init<A>(_:)();
  sub_100015E80(v16, v21, &qword_1008E2B78, &qword_1006DFCB0);
  v50 = &v21[*(v17 + 36)];
  *v50 = KeyPath;
  v50[1] = v49;
  sub_100236A10();
  v51 = v130;
  v53 = v52 == v130;
  v54 = swift_getKeyPath();
  v55 = swift_allocObject();
  *(v55 + 16) = v53;
  v56 = v118;
  sub_100015E80(v21, v118, &qword_1008E2B80, &qword_1006DFCB8);
  v57 = (v56 + *(v127 + 36));
  *v57 = v54;
  v57[1] = sub_1000526D4;
  v57[2] = v55;
  sub_1000059F8(0, &qword_1008DC998, off_1008327F8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v109 = objc_opt_self();
  v110 = ObjCClassFromMetadata;
  v59 = [v109 bundleForClass:ObjCClassFromMetadata];
  v60 = String._bridgeToObjectiveC()();
  v61 = String._bridgeToObjectiveC()();
  v62 = [v59 localizedStringForKey:v60 value:0 table:v61];

  v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v65 = v64;

  *&v132 = v63;
  *(&v132 + 1) = v65;
  sub_1002395D4();
  sub_10000FCBC();
  View.accessibilityLabel<A>(_:)();

  sub_10000EA04(v56, &qword_1008E2B88, &qword_1006DFCC0);
  v66 = static Alignment.center.getter();
  v67 = v129;
  *v129 = v66;
  *(v67 + 1) = v68;
  v69 = sub_100140278(&qword_1008E2BD8, &qword_1006DFD48);
  sub_100236CD8(v51, v124, &v67[*(v69 + 44)]);
  v70 = v123;
  sub_100239420(v37, v123);
  v71 = v37;
  v72 = v121;
  v73 = swift_allocObject();
  sub_1002394F4(v70, v73 + v72, type metadata accessor for ScheduleDayRowView);
  v74 = v12[10];
  v131 = 0;
  State.init(wrappedValue:)();
  v75 = v125;
  *(v125 + v74) = v132;
  v76 = v12[11];
  v131 = 1;
  State.init(wrappedValue:)();
  *(v75 + v76) = v132;
  *v75 = sub_100239770;
  v75[1] = v73;
  sub_1002370D4(v75 + v12[9]);
  sub_100234914();
  if (v77 == v51)
  {
    v78 = static Color.gray.getter();
    v79 = v126;
LABEL_16:
    v84 = swift_getKeyPath();
    *&v132 = v78;
    v85 = AnyShapeStyle.init<A>(_:)();
    v86 = v111;
    sub_100015E80(v75, v111, &qword_1008E2B78, &qword_1006DFCB0);
    v87 = (v86 + *(v79 + 36));
    *v87 = v84;
    v87[1] = v85;
    sub_100234914();
    LOBYTE(v84) = v88 == v130;
    v89 = swift_getKeyPath();
    v90 = swift_allocObject();
    *(v90 + 16) = v84;
    v91 = v112;
    sub_100015E80(v86, v112, &qword_1008E2B80, &qword_1006DFCB8);
    v92 = (v91 + *(v127 + 36));
    *v92 = v89;
    v92[1] = sub_100239A84;
    v92[2] = v90;
    v93 = [v109 bundleForClass:v110];
    v94 = String._bridgeToObjectiveC()();
    v95 = String._bridgeToObjectiveC()();
    v96 = [v93 localizedStringForKey:v94 value:0 table:v95];

    v97 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v99 = v98;

    *&v132 = v97;
    *(&v132 + 1) = v99;
    v100 = v113;
    View.accessibilityLabel<A>(_:)();

    sub_10000EA04(v91, &qword_1008E2B88, &qword_1006DFCC0);
    v101 = v128;
    v102 = v115;
    sub_10001B104(v128, v115, &qword_1008E2B90, &qword_1006DFCC8);
    v103 = v129;
    v104 = v117;
    sub_10001B104(v129, v117, &qword_1008E2B70, &qword_1006DFCA8);
    v105 = v114;
    sub_10001B104(v100, v114, &qword_1008E2B90, &qword_1006DFCC8);
    v106 = v116;
    sub_10001B104(v102, v116, &qword_1008E2B90, &qword_1006DFCC8);
    v107 = sub_100140278(&qword_1008E2BE0, &qword_1006DFD50);
    sub_10001B104(v104, v106 + *(v107 + 48), &qword_1008E2B70, &qword_1006DFCA8);
    sub_10001B104(v105, v106 + *(v107 + 64), &qword_1008E2B90, &qword_1006DFCC8);
    sub_10000EA04(v100, &qword_1008E2B90, &qword_1006DFCC8);
    sub_10000EA04(v103, &qword_1008E2B70, &qword_1006DFCA8);
    sub_10000EA04(v101, &qword_1008E2B90, &qword_1006DFCC8);
    sub_10000EA04(v105, &qword_1008E2B90, &qword_1006DFCC8);
    sub_10000EA04(v104, &qword_1008E2B70, &qword_1006DFCA8);
    sub_10000EA04(v102, &qword_1008E2B90, &qword_1006DFCC8);
    return;
  }

  v80 = *(v71 + *(v108 + 24));
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((v132 & 0xC000000000000001) != 0)
  {
    v81 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v79 = v126;
    goto LABEL_15;
  }

  v79 = v126;
  if ((v80 & 0x8000000000000000) != 0)
  {
    goto LABEL_20;
  }

  if (v80 < *((v132 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v81 = *(v132 + 8 * v80 + 32);
LABEL_15:

    v82 = *&v81[OBJC_IVAR____TtC10FitnessApp7GoalDay_goalType];

    sub_100349310(v82);
    v78 = v83;
    goto LABEL_16;
  }

LABEL_22:
  __break(1u);
}

void sub_100236314(char a1)
{
  v3 = type metadata accessor for ScheduleDayRowView(0);
  v4 = *(v1 + *(v3 + 24));
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v5 = v25;
  if ((v25 & 0xC000000000000001) != 0)
  {
    v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if ((v4 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_30;
    }

    if (v4 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_32;
    }

    v6 = *(v25 + 8 * v4 + 32);
  }

  v7 = v6;

  v5 = *&v7[OBJC_IVAR____TtC10FitnessApp7GoalDay_goal];

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((v25 & 0xC000000000000001) == 0)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      if (v4 < *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v8 = *(v25 + 8 * v4 + 32);
        goto LABEL_9;
      }

LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

LABEL_30:
  v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_9:
  v9 = v8;

  v10 = *&v9[OBJC_IVAR____TtC10FitnessApp7GoalDay_goalType];

  v11 = [*(v1 + *(v3 + 20)) unitManager];
  if (!v11)
  {
LABEL_38:
    __break(1u);
    return;
  }

  v12 = v11;
  v13 = [v11 unitManager];

  if ((v10 - 1) < 2)
  {
    v14 = &selRef_minuteUnit;
    goto LABEL_14;
  }

  if (v10)
  {
    v14 = &selRef_countUnit;
LABEL_14:
    v15 = objc_opt_self();
    goto LABEL_16;
  }

  v14 = &selRef_userActiveEnergyBurnedUnit;
  v15 = v13;
LABEL_16:
  v16 = [v15 *v14];

  [v5 doubleValueForUnit:v16];
  v18 = v17;

  v19 = floor(v18);
  if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v19 <= -9.22337204e18)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v19 >= 9.22337204e18)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v20 = v19;
  sub_1002389D0();
  if ((a1 & 1) == 0)
  {
    goto LABEL_23;
  }

  v22 = (v20 + v21);
  if (__OFADD__(v20, v21))
  {
    __break(1u);
LABEL_23:
    v22 = (v20 - v21);
    if (!__OFSUB__(v20, v21))
    {
      goto LABEL_24;
    }

    goto LABEL_37;
  }

LABEL_24:
  sub_100236A10();
  if (v22 >= v23)
  {
    sub_100234914();
    if (v24 >= v22)
    {
      sub_100238C94(v22);
    }
  }
}

void sub_100236618(uint64_t a1@<X8>)
{
  v25 = a1;
  v1 = sub_100140278(&qword_1008E2B40, &qword_100702440);
  __chkstk_darwin(v1);
  v3 = v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v23 - v5;
  v7 = type metadata accessor for DynamicTypeSize();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v23 - v12;
  v24 = sub_100140278(&qword_1008E2B48, &unk_1006DFC80);
  __chkstk_darwin(v24);
  v15 = v23 - v14;
  v16 = Image.init(systemName:)();
  v17 = static Font.title2.getter();
  KeyPath = swift_getKeyPath();
  v23[1] = v17;
  v23[2] = v16;
  v26 = v16;
  v27 = KeyPath;
  v23[0] = KeyPath;
  v28 = v17;
  v19 = v8[13];
  v19(v13, enum case for DynamicTypeSize.xSmall(_:), v7);
  v19(v10, enum case for DynamicTypeSize.xLarge(_:), v7);
  sub_100239A3C(&qword_1008DC898, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  if (dispatch thunk of static Comparable.<= infix(_:_:)())
  {
    v20 = v8[4];
    v20(v6, v13, v7);
    v20(&v6[*(v1 + 48)], v10, v7);
    sub_10023955C(v6, v3);
    v21 = *(v1 + 48);
    v20(v15, v3, v7);
    v22 = v8[1];
    v22(&v3[v21], v7);
    sub_100015E80(v6, v3, &qword_1008E2B40, &qword_100702440);
    v20(&v15[*(v24 + 36)], &v3[*(v1 + 48)], v7);
    v22(v3, v7);
    sub_100140278(&qword_1008E2BE8, &unk_1006E1D00);
    sub_1002397DC();
    sub_10014A6B0(&qword_1008E2B58, &qword_1008E2B48, &unk_1006DFC80, &protocol conformance descriptor for ClosedRange<A>);
    View.dynamicTypeSize<A>(_:)();
    sub_10000EA04(v15, &qword_1008E2B48, &unk_1006DFC80);
  }

  else
  {
    __break(1u);
  }
}

void sub_100236A10()
{
  v2 = type metadata accessor for ScheduleDayRowView(0);
  v3 = *(v0 + v2[6]);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((v16 & 0xC000000000000001) == 0)
  {
    if ((v3 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v3 < *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v4 = *(v16 + 8 * v3 + 32);
      goto LABEL_5;
    }

    __break(1u);
LABEL_20:
    v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    v15 = *(v14 + *v1);
    swift_unknownObjectRelease();
    if (v15)
    {
LABEL_22:

      return;
    }

LABEL_21:
    FIUIHKUnitIsCalorieUnit();

    return;
  }

  v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_5:
  v5 = v4;

  v1 = &OBJC_IVAR____TtC10FitnessApp7GoalDay_goalType;
  v6 = *&v5[OBJC_IVAR____TtC10FitnessApp7GoalDay_goalType];

  v7 = [*(v0 + v2[5]) unitManager];
  if (!v7)
  {
    goto LABEL_25;
  }

  v8 = v7;
  v9 = [v7 unitManager];

  if ((v6 - 1) < 2)
  {
    v10 = &selRef_minuteUnit;
    goto LABEL_10;
  }

  if (v6)
  {
    v10 = &selRef_countUnit;
LABEL_10:
    v11 = objc_opt_self();
    goto LABEL_12;
  }

  v10 = &selRef_userActiveEnergyBurnedUnit;
  v11 = v9;
LABEL_12:
  v2 = [v11 *v10];

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((v16 & 0xC000000000000001) != 0)
  {
    goto LABEL_20;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v3 < *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v12 = *(v16 + 8 * v3 + 32);

    v13 = *&v12[OBJC_IVAR____TtC10FitnessApp7GoalDay_goalType];

    if (v13)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

uint64_t sub_100236CD8@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v36 = a3;
  v37 = a4;
  v33 = a2;
  v34 = sub_100140278(&qword_1008E2BF8, &qword_1006DFD88) - 8;
  __chkstk_darwin(v34);
  v35 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v28 - v6;
  v32 = type metadata accessor for AccessibilityChildBehavior();
  v8 = *(v32 - 8);
  __chkstk_darwin(v32);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_100140278(&qword_1008E2C00, &qword_1006DFD90);
  __chkstk_darwin(v30);
  v12 = &v28 - v11;
  v31 = sub_100140278(&qword_1008E2C08, &qword_1006DFD98);
  v13 = *(v31 - 8);
  __chkstk_darwin(v31);
  v29 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v28 - v16;
  *v12 = static VerticalAlignment.firstTextBaseline.getter();
  *(v12 + 1) = 0;
  v12[16] = 0;
  v18 = sub_100140278(&qword_1008E2C10, &qword_1006DFDA0);
  sub_1002381A8(v33, &v12[*(v18 + 44)]);
  static AccessibilityChildBehavior.combine.getter();
  sub_10014A6B0(&qword_1008E2C18, &qword_1008E2C00, &qword_1006DFD90, &protocol conformance descriptor for HStack<A>);
  v28 = v17;
  View.accessibilityElement(children:)();
  (*(v8 + 8))(v10, v32);
  sub_10000EA04(v12, &qword_1008E2C00, &qword_1006DFD90);
  *v7 = static VerticalAlignment.firstTextBaseline.getter();
  *(v7 + 1) = 0;
  v7[16] = 0;
  sub_1002381A8(v36, &v7[*(v18 + 44)]);
  *&v7[*(v34 + 44)] = 0;
  v19 = *(v13 + 16);
  v20 = v29;
  v21 = v17;
  v22 = v31;
  v19(v29, v21, v31);
  v23 = v35;
  sub_10001B104(v7, v35, &qword_1008E2BF8, &qword_1006DFD88);
  v24 = v37;
  v19(v37, v20, v22);
  v25 = sub_100140278(&qword_1008E2C20, &qword_1006DFDA8);
  sub_10001B104(v23, &v24[*(v25 + 48)], &qword_1008E2BF8, &qword_1006DFD88);
  sub_10000EA04(v7, &qword_1008E2BF8, &qword_1006DFD88);
  v26 = *(v13 + 8);
  v26(v28, v22);
  sub_10000EA04(v23, &qword_1008E2BF8, &qword_1006DFD88);
  return (v26)(v20, v22);
}

void sub_1002370D4(uint64_t a1@<X8>)
{
  v25 = a1;
  v1 = sub_100140278(&qword_1008E2B40, &qword_100702440);
  __chkstk_darwin(v1);
  v3 = v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v23 - v5;
  v7 = type metadata accessor for DynamicTypeSize();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v23 - v12;
  v24 = sub_100140278(&qword_1008E2B48, &unk_1006DFC80);
  __chkstk_darwin(v24);
  v15 = v23 - v14;
  v16 = Image.init(systemName:)();
  v17 = static Font.title2.getter();
  KeyPath = swift_getKeyPath();
  v23[1] = v17;
  v23[2] = v16;
  v26 = v16;
  v27 = KeyPath;
  v23[0] = KeyPath;
  v28 = v17;
  v19 = v8[13];
  v19(v13, enum case for DynamicTypeSize.xSmall(_:), v7);
  v19(v10, enum case for DynamicTypeSize.xLarge(_:), v7);
  sub_100239A3C(&qword_1008DC898, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  if (dispatch thunk of static Comparable.<= infix(_:_:)())
  {
    v20 = v8[4];
    v20(v6, v13, v7);
    v20(&v6[*(v1 + 48)], v10, v7);
    sub_10023955C(v6, v3);
    v21 = *(v1 + 48);
    v20(v15, v3, v7);
    v22 = v8[1];
    v22(&v3[v21], v7);
    sub_100015E80(v6, v3, &qword_1008E2B40, &qword_100702440);
    v20(&v15[*(v24 + 36)], &v3[*(v1 + 48)], v7);
    v22(v3, v7);
    sub_100140278(&qword_1008E2BE8, &unk_1006E1D00);
    sub_1002397DC();
    sub_10014A6B0(&qword_1008E2B58, &qword_1008E2B48, &unk_1006DFC80, &protocol conformance descriptor for ClosedRange<A>);
    View.dynamicTypeSize<A>(_:)();
    sub_10000EA04(v15, &qword_1008E2B48, &unk_1006DFC80);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1002374CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static Alignment.center.getter();
  v6 = v5;
  v7 = a2 + *(sub_100140278(&qword_1008E2AB0, &qword_1006DFC18) + 36);
  v8 = enum case for RoundedCornerStyle.continuous(_:);
  v9 = type metadata accessor for RoundedCornerStyle();
  (*(*(v9 - 8) + 104))(v7, v8, v9);
  v10 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  v11 = Color.init(uiColor:)();
  v12 = sub_100140278(&qword_1008E2B20, &unk_1006EBF00);
  *(v7 + *(v12 + 52)) = v11;
  *(v7 + *(v12 + 56)) = 256;
  LOBYTE(v11) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = v7 + *(sub_100140278(&qword_1008E2B28, &qword_1006DFC60) + 36);
  *v21 = v11;
  *(v21 + 8) = v14;
  *(v21 + 16) = v16;
  *(v21 + 24) = v18;
  *(v21 + 32) = v20;
  *(v21 + 40) = 0;
  v22 = (v7 + *(sub_100140278(&qword_1008E2AF0, &qword_1006DFC28) + 36));
  *v22 = v4;
  v22[1] = v6;
  return sub_10001B104(a1, a2, &qword_1008E2A88, &qword_1006DFB90);
}

uint64_t sub_100237658@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static Alignment.center.getter();
  v6 = v5;
  v7 = a2 + *(sub_100140278(&qword_1008E2AB8, &qword_1006DFC20) + 36);
  sub_1002376F8(v7);
  v8 = (v7 + *(sub_100140278(&qword_1008E2B08, &unk_1006DFC30) + 36));
  *v8 = v4;
  v8[1] = v6;
  return sub_10001B104(a1, a2, &qword_1008E2A88, &qword_1006DFB90);
}

uint64_t sub_1002376F8@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for RoundedRectangle();
  v3 = v2 - 8;
  __chkstk_darwin(v2);
  v5 = (&v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_100140278(&qword_1008E2B10, &unk_1006E0A00);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v27 - v8;
  if (static Solarium.isEnabled.getter())
  {
    v10 = 16.0;
  }

  else
  {
    v10 = 14.0;
  }

  v11 = *(v3 + 28);
  v12 = enum case for RoundedCornerStyle.continuous(_:);
  v13 = type metadata accessor for RoundedCornerStyle();
  (*(*(v13 - 8) + 104))(v5 + v11, v12, v13);
  *v5 = v10;
  v5[1] = v10;
  v14 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  v15 = Color.init(uiColor:)();
  sub_1002394F4(v5, v9, &type metadata accessor for RoundedRectangle);
  *&v9[*(v7 + 60)] = v15;
  *&v9[*(v7 + 64)] = 256;
  v16 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  sub_100015E80(v9, a1, &qword_1008E2B10, &unk_1006E0A00);
  result = sub_100140278(&qword_1008E2B18, &unk_1006DFC50);
  v26 = a1 + *(result + 36);
  *v26 = v16;
  *(v26 + 8) = v18;
  *(v26 + 16) = v20;
  *(v26 + 24) = v22;
  *(v26 + 32) = v24;
  *(v26 + 40) = 0;
  return result;
}

void sub_100237904()
{
  v1 = type metadata accessor for ScheduleDayRowView(0);
  v2 = *(v0 + *(v1 + 24));
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((v8 & 0xC000000000000001) != 0)
  {
    goto LABEL_9;
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v2 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v3 = *(v8 + 8 * v2 + 32);

  v4 = *&v3[OBJC_IVAR____TtC10FitnessApp7GoalDay_goalType];

  if (v4 > 1)
  {
    goto LABEL_13;
  }

  if (!v4)
  {
LABEL_11:
    v5 = [*(v0 + *(v1 + 20)) localizedShortActiveEnergyUnitString];
    if (v5)
    {
      goto LABEL_18;
    }

    __break(1u);
LABEL_13:
    if (v4 != 2)
    {
      if (v4 != 3)
      {
        return;
      }

      v5 = [*(v0 + *(v1 + 20)) localizedShortActiveHoursUnitString];
      if (v5)
      {
        goto LABEL_18;
      }

      __break(1u);
    }

    v5 = [*(v0 + *(v1 + 20)) localizedShortBriskMinutesUnitString];
    if (v5)
    {
LABEL_18:
      v7 = v5;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      return;
    }

LABEL_22:
    __break(1u);
    return;
  }

  while (v4 == 1)
  {
    v5 = [*(v0 + *(v1 + 20)) localizedShortBriskMinutesUnitString];
    if (v5)
    {
      goto LABEL_18;
    }

    __break(1u);
LABEL_9:
    v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    v4 = *(v6 + OBJC_IVAR____TtC10FitnessApp7GoalDay_goalType);
    swift_unknownObjectRelease();
    if (v4 > 1)
    {
      goto LABEL_13;
    }

    if (!v4)
    {
      goto LABEL_11;
    }
  }
}

uint64_t sub_100237B08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v33 = a1;
  v34 = a3;
  v35 = a5;
  v7 = sub_100140278(&qword_1008EB540, &unk_1006D5E20);
  __chkstk_darwin(v7 - 8);
  v9 = &v32 - v8;
  v10 = sub_100140278(&qword_1008E1900, &unk_1006E8990);
  __chkstk_darwin(v10 - 8);
  v12 = &v32 - v11;
  v13 = sub_100140278(&qword_1008E1908, &unk_1006DFC40);
  v36 = *(v13 - 8);
  __chkstk_darwin(v13);
  v32 = &v32 - v14;
  v15 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v15 - 8);
  sub_1000059F8(0, &qword_1008DC998, off_1008327F8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v18 = String._bridgeToObjectiveC()();
  v19 = String._bridgeToObjectiveC()();
  v20 = [v17 localizedStringForKey:v18 value:0 table:v19];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100140278(&unk_1008E4E50, &qword_1006D4A60);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1006D1F70;
  *(v21 + 56) = &type metadata for String;
  v22 = sub_10000A788();
  *(v21 + 32) = v33;
  *(v21 + 40) = a2;
  *(v21 + 96) = &type metadata for String;
  *(v21 + 104) = v22;
  v23 = v34;
  *(v21 + 64) = v22;
  *(v21 + 72) = v23;
  *(v21 + 80) = a4;

  String.init(format:_:)();

  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  v38[0] = static Font.title.getter();
  sub_10005F988();
  AttributedString.subscript.setter();
  v38[0] = v23;
  v38[1] = a4;
  v24 = type metadata accessor for Locale();
  (*(*(v24 - 8) + 56))(v9, 1, 1, v24);
  type metadata accessor for AttributedString();
  sub_100239A3C(&qword_1008E1918, &type metadata accessor for AttributedString, &protocol conformance descriptor for AttributedString);
  sub_10000FCBC();
  AttributedStringProtocol.range<A>(of:options:locale:)();
  sub_10000EA04(v9, &qword_1008EB540, &unk_1006D5E20);
  if ((*(v36 + 48))(v12, 1, v13) == 1)
  {
    v25 = &qword_1008E1900;
    v26 = &unk_1006E8990;
    v27 = v12;
  }

  else
  {
    v28 = v32;
    sub_100015E80(v12, v32, &qword_1008E1908, &unk_1006DFC40);
    static Font.title2.getter();
    v29 = Font.smallCaps()();

    sub_10014A6B0(&qword_1008E1920, &qword_1008E1908, &unk_1006DFC40, &protocol conformance descriptor for Range<A>);
    v30 = AttributedString.subscript.modify();
    v37 = v29;
    AttributedSubstring.subscript.setter();
    v30(v38, 0);
    v27 = v28;
    v25 = &qword_1008E1908;
    v26 = &unk_1006DFC40;
  }

  return sub_10000EA04(v27, v25, v26);
}

void sub_10023803C(uint64_t a1)
{
  v2 = type metadata accessor for AccessibilityAdjustmentDirection();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for AccessibilityAdjustmentDirection.increment(_:) || v7 == enum case for AccessibilityAdjustmentDirection.decrement(_:))
  {
    sub_100236314(v7 == enum case for AccessibilityAdjustmentDirection.increment(_:));
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

uint64_t sub_1002381A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v79 = a2;
  v77 = sub_100140278(&qword_1008E2B40, &qword_100702440);
  __chkstk_darwin(v77);
  v76 = &v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v72 = &v68 - v5;
  v6 = type metadata accessor for DynamicTypeSize();
  v83 = *(v6 - 8);
  __chkstk_darwin(v6);
  v82 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v81 = &v68 - v9;
  v78 = sub_100140278(&qword_1008E2B48, &unk_1006DFC80);
  __chkstk_darwin(v78);
  v73 = &v68 - v10;
  v11 = sub_100140278(&qword_1008DC448, &qword_1006D48C0);
  __chkstk_darwin(v11 - 8);
  v80 = &v68 - v12;
  v13 = sub_100140278(&qword_1008E2B50, &qword_1006DFC90);
  v74 = *(v13 - 8);
  v75 = v13;
  __chkstk_darwin(v13);
  v70 = &v68 - v14;
  v15 = type metadata accessor for AttributedString();
  v84 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v68 - v19;
  sub_100140278(&unk_1008E4E50, &qword_1006D4A60);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1006D46C0;
  *(v21 + 56) = &type metadata for Int;
  *(v21 + 64) = &protocol witness table for Int;
  *(v21 + 32) = a1;
  v22 = static String.localizedStringWithFormat(_:_:)();
  v24 = v23;

  sub_100237904();
  v85 = v25;
  v86 = v26;
  sub_10000FCBC();
  v27 = StringProtocol.localizedUppercase.getter();
  v29 = v28;

  sub_100237B08(v22, v24, v27, v29, v20);

  v30 = *(v84 + 16);
  v69 = v20;
  v71 = v15;
  v30(v17, v20, v15);
  v31 = Text.init(_:)();
  v33 = v32;
  LOBYTE(v22) = v34;
  v35 = enum case for Font.Design.rounded(_:);
  v36 = type metadata accessor for Font.Design();
  v37 = *(v36 - 8);
  v38 = v80;
  (*(v37 + 104))(v80, v35, v36);
  (*(v37 + 56))(v38, 0, 1, v36);
  v39 = Text.fontDesign(_:)();
  v41 = v40;
  LOBYTE(v20) = v42;
  sub_10004642C(v31, v33, v22 & 1);

  v43 = v38;
  v44 = v81;
  sub_10000EA04(v43, &qword_1008DC448, &qword_1006D48C0);
  static Font.Weight.bold.getter();
  v45 = Text.fontWeight(_:)();
  v47 = v46;
  v49 = v48;
  v51 = v50;
  sub_10004642C(v39, v41, v20 & 1);
  v52 = v82;

  v80 = v45;
  v85 = v45;
  v86 = v47;
  v68 = v47;
  LOBYTE(v87) = v49 & 1;
  v88 = v51;
  v53 = v83;
  v54 = *(v83 + 104);
  v54(v44, enum case for DynamicTypeSize.xSmall(_:), v6);
  v54(v52, enum case for DynamicTypeSize.xLarge(_:), v6);
  sub_100239A3C(&qword_1008DC898, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v56 = *(v53 + 32);
    v57 = v72;
    v56(v72, v44, v6);
    v58 = v77;
    v56((v57 + *(v77 + 48)), v52, v6);
    v59 = v76;
    sub_10023955C(v57, v76);
    v60 = *(v58 + 48);
    v82 = v51;
    v61 = v73;
    v56(v73, v59, v6);
    LODWORD(v81) = v49 & 1;
    v62 = *(v53 + 8);
    v62(v59 + v60, v6);
    sub_100015E80(v57, v59, &qword_1008E2B40, &qword_100702440);
    v63 = *(v58 + 48);
    v64 = v78;
    v56((v61 + *(v78 + 36)), (v59 + v63), v6);
    v62(v59, v6);
    v65 = sub_10014A6B0(&qword_1008E2B58, &qword_1008E2B48, &unk_1006DFC80, &protocol conformance descriptor for ClosedRange<A>);
    v66 = v70;
    View.dynamicTypeSize<A>(_:)();
    sub_10000EA04(v61, &qword_1008E2B48, &unk_1006DFC80);
    sub_10004642C(v80, v68, v81);

    v85 = &type metadata for Text;
    v86 = v64;
    v87 = &protocol witness table for Text;
    v88 = v65;
    swift_getOpaqueTypeConformance2();
    v67 = v75;
    View.monospacedDigit()();
    (*(v74 + 8))(v66, v67);
    return (*(v84 + 8))(v69, v71);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1002389D0()
{
  v2 = type metadata accessor for ScheduleDayRowView(0);
  v3 = *(v0 + v2[6]);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((v16 & 0xC000000000000001) == 0)
  {
    if ((v3 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v3 < *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v4 = *(v16 + 8 * v3 + 32);
      goto LABEL_5;
    }

    __break(1u);
LABEL_20:
    v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    v15 = *(v14 + *v1);
    swift_unknownObjectRelease();
    if (v15)
    {
LABEL_22:

      return;
    }

LABEL_21:
    FIUIHKUnitIsCalorieUnit();

    return;
  }

  v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_5:
  v5 = v4;

  v1 = &OBJC_IVAR____TtC10FitnessApp7GoalDay_goalType;
  v6 = *&v5[OBJC_IVAR____TtC10FitnessApp7GoalDay_goalType];

  v7 = [*(v0 + v2[5]) unitManager];
  if (!v7)
  {
    goto LABEL_25;
  }

  v8 = v7;
  v9 = [v7 unitManager];

  if ((v6 - 1) < 2)
  {
    v10 = &selRef_minuteUnit;
    goto LABEL_10;
  }

  if (v6)
  {
    v10 = &selRef_countUnit;
LABEL_10:
    v11 = objc_opt_self();
    goto LABEL_12;
  }

  v10 = &selRef_userActiveEnergyBurnedUnit;
  v11 = v9;
LABEL_12:
  v2 = [v11 *v10];

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((v16 & 0xC000000000000001) != 0)
  {
    goto LABEL_20;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v3 < *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v12 = *(v16 + 8 * v3 + 32);

    v13 = *&v12[OBJC_IVAR____TtC10FitnessApp7GoalDay_goalType];

    if (v13)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

void sub_100238C94(id a1)
{
  v3 = type metadata accessor for ScheduleDayRowView(0);
  v4 = *(v1 + *(v3 + 24));
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v5 = v30;
  if ((v30 & 0xC000000000000001) == 0)
  {
    if ((v4 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v4 < *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v6 = v30[v4 + 4];
      goto LABEL_5;
    }

    __break(1u);
    goto LABEL_30;
  }

  v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_5:
  v7 = v6;

  v5 = &OBJC_IVAR____TtC10FitnessApp7GoalDay_goalType;
  v8 = *(v7 + OBJC_IVAR____TtC10FitnessApp7GoalDay_goalType);

  v9 = [*(v1 + *(v3 + 20)) unitManager];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 unitManager];

    if ((v8 - 1) < 2)
    {
      v12 = &selRef_minuteUnit;
    }

    else
    {
      if (!v8)
      {
        v12 = &selRef_userActiveEnergyBurnedUnit;
        v13 = v11;
LABEL_12:
        v14 = [v13 *v12];

        a1 = [objc_opt_self() quantityWithUnit:v14 doubleValue:a1];
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        if ((v30 & 0xC000000000000001) == 0)
        {
          if ((v4 & 0x8000000000000000) != 0)
          {
            __break(1u);
            goto LABEL_32;
          }

          if (v4 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_34;
          }

          v15 = v30[v4 + 4];
LABEL_16:
          v16 = v15;

          v7 = &OBJC_IVAR____TtC10FitnessApp7GoalDay_day;
          LOBYTE(v8) = v16[OBJC_IVAR____TtC10FitnessApp7GoalDay_day];

          swift_getKeyPath();
          swift_getKeyPath();
          a1 = a1;
          static Published.subscript.getter();

          if ((v30 & 0xC000000000000001) == 0)
          {
            if ((v4 & 0x8000000000000000) == 0)
            {
              if (v4 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
LABEL_36:
                __break(1u);
LABEL_37:
                __break(1u);
                goto LABEL_38;
              }

              v17 = v30[v4 + 4];
              goto LABEL_20;
            }

LABEL_34:
            __break(1u);
LABEL_35:
            __break(1u);
            goto LABEL_36;
          }

LABEL_32:
          v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_20:
          v18 = v17;

          v19 = *&v18[*v5];

          v20 = type metadata accessor for GoalDay();
          v21 = objc_allocWithZone(v20);
          v21[*v7] = v8;
          *&v21[OBJC_IVAR____TtC10FitnessApp7GoalDay_goal] = a1;
          *&v21[*v5] = v19;
          v31.receiver = v21;
          v31.super_class = v20;
          v22 = objc_msgSendSuper2(&v31, "init");
          swift_getKeyPath();
          swift_getKeyPath();
          v23 = v22;
          v24 = static Published.subscript.modify();
          v26 = v25;
          v27 = *v25;
          isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
          *v26 = v27;
          if (!isUniquelyReferenced_nonNull_bridgeObject || v27 < 0 || (v27 & 0x4000000000000000) != 0)
          {
            v27 = sub_10057FAF8();
            *v26 = v27;
          }

          if ((v4 & 0x8000000000000000) == 0)
          {
            if (v4 < *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v29 = *((v27 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20);
              *((v27 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20) = v23;

              v24(&v30, 0);

              return;
            }

            goto LABEL_37;
          }

          goto LABEL_35;
        }

LABEL_30:
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_16;
      }

      v12 = &selRef_countUnit;
    }

    v13 = objc_opt_self();
    goto LABEL_12;
  }

LABEL_38:
  __break(1u);
}

unint64_t sub_1002390E0()
{
  result = qword_1008E2AC0;
  if (!qword_1008E2AC0)
  {
    sub_100141EEC(&qword_1008E2A88, &qword_1006DFB90);
    sub_10023916C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E2AC0);
  }

  return result;
}

unint64_t sub_10023916C()
{
  result = qword_1008E2AC8;
  if (!qword_1008E2AC8)
  {
    sub_100141EEC(&qword_1008E2A80, &qword_1006DFB88);
    sub_1002391F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E2AC8);
  }

  return result;
}

unint64_t sub_1002391F8()
{
  result = qword_1008E2AD0;
  if (!qword_1008E2AD0)
  {
    sub_100141EEC(&qword_1008E2A78, &qword_1006DFB80);
    sub_10014A6B0(&qword_1008E2AD8, &qword_1008E2A70, &qword_1006DFB78, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E2AD0);
  }

  return result;
}

unint64_t sub_1002392B0()
{
  result = qword_1008E2AE0;
  if (!qword_1008E2AE0)
  {
    sub_100141EEC(&qword_1008E2AB0, &qword_1006DFC18);
    sub_1002390E0();
    sub_10014A6B0(&qword_1008E2AE8, &qword_1008E2AF0, &qword_1006DFC28, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E2AE0);
  }

  return result;
}

unint64_t sub_100239368()
{
  result = qword_1008E2AF8;
  if (!qword_1008E2AF8)
  {
    sub_100141EEC(&qword_1008E2AB8, &qword_1006DFC20);
    sub_1002390E0();
    sub_10014A6B0(&qword_1008E2B00, &qword_1008E2B08, &unk_1006DFC30, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E2AF8);
  }

  return result;
}

uint64_t sub_100239420(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScheduleDayRowView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_100239484(uint64_t a1)
{
  type metadata accessor for ScheduleDayRowView(0);

  sub_10023803C(a1);
}

uint64_t sub_1002394F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10023955C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008E2B40, &qword_100702440);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1002395D4()
{
  result = qword_1008E2BA0;
  if (!qword_1008E2BA0)
  {
    sub_100141EEC(&qword_1008E2B88, &qword_1006DFCC0);
    sub_10023968C();
    sub_10014A6B0(&qword_1008E2BC8, &qword_1008E2BD0, &qword_1006DFD40, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E2BA0);
  }

  return result;
}

unint64_t sub_10023968C()
{
  result = qword_1008E2BA8;
  if (!qword_1008E2BA8)
  {
    sub_100141EEC(&qword_1008E2B80, &qword_1006DFCB8);
    sub_10014A6B0(&qword_1008E2BB0, &qword_1008E2B78, &qword_1006DFCB0, &unk_1006F8C90);
    sub_10014A6B0(&qword_1008E2BB8, &qword_1008E2BC0, &qword_1006FFC00, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E2BA8);
  }

  return result;
}

unint64_t sub_1002397DC()
{
  result = qword_1008E2BF0;
  if (!qword_1008E2BF0)
  {
    sub_100141EEC(&qword_1008E2BE8, &unk_1006E1D00);
    sub_10014A6B0(&qword_1008DC4C8, &qword_1008DC4D0, &qword_1006DC0F0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E2BF0);
  }

  return result;
}

unint64_t sub_100239894()
{
  result = qword_1008E2C28;
  if (!qword_1008E2C28)
  {
    sub_100141EEC(&qword_1008E2AA0, qword_1006DFBA8);
    sub_100141EEC(&qword_1008E2A90, &qword_1006DFB98);
    sub_100141EEC(&qword_1008E2A88, &qword_1006DFB90);
    sub_100141EEC(&qword_1008E2AB0, &qword_1006DFC18);
    sub_100141EEC(&qword_1008E2AB8, &qword_1006DFC20);
    sub_1002390E0();
    sub_1002392B0();
    sub_100239368();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_100239A3C(&qword_1008DCEF8, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E2C28);
  }

  return result;
}

uint64_t sub_100239A3C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_100239AF8()
{
  [*(v0 + OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_chartContainer) frame];
  CGRectGetWidth(v21);
  if (qword_1008DAC88 != -1)
  {
    swift_once();
  }

  UIRoundToScale();
  v2 = v1;
  sub_100185EE8(0, 7, 0);
  v4 = _swiftEmptyArrayStorage[2];
  v3 = _swiftEmptyArrayStorage[3];
  v5 = v4 + 1;
  if (v4 >= v3 >> 1)
  {
    sub_100185EE8((v3 > 1), v4 + 1, 1);
  }

  _swiftEmptyArrayStorage[2] = v5;
  *&_swiftEmptyArrayStorage[v4 + 4] = v2 * 0.0 + 2.0;
  v6 = _swiftEmptyArrayStorage[3];
  v7 = v4 + 2;
  if (v5 >= v6 >> 1)
  {
    sub_100185EE8((v6 > 1), v7, 1);
  }

  _swiftEmptyArrayStorage[2] = v7;
  *&_swiftEmptyArrayStorage[v5 + 4] = v2 + 2.0;
  v9 = _swiftEmptyArrayStorage[2];
  v8 = _swiftEmptyArrayStorage[3];
  v10 = v9 + 1;
  if (v9 >= v8 >> 1)
  {
    sub_100185EE8((v8 > 1), v9 + 1, 1);
  }

  _swiftEmptyArrayStorage[2] = v10;
  *&_swiftEmptyArrayStorage[v9 + 4] = v2 + v2 + 2.0;
  v11 = _swiftEmptyArrayStorage[3];
  v12 = v9 + 2;
  if (v10 >= v11 >> 1)
  {
    sub_100185EE8((v11 > 1), v12, 1);
  }

  _swiftEmptyArrayStorage[2] = v12;
  *&_swiftEmptyArrayStorage[v10 + 4] = v2 * 3.0 + 2.0;
  v14 = _swiftEmptyArrayStorage[2];
  v13 = _swiftEmptyArrayStorage[3];
  v15 = v14 + 1;
  if (v14 >= v13 >> 1)
  {
    sub_100185EE8((v13 > 1), v14 + 1, 1);
  }

  _swiftEmptyArrayStorage[2] = v15;
  *&_swiftEmptyArrayStorage[v14 + 4] = v2 * 4.0 + 2.0;
  v16 = _swiftEmptyArrayStorage[3];
  v17 = v14 + 2;
  if (v15 >= v16 >> 1)
  {
    sub_100185EE8((v16 > 1), v17, 1);
  }

  _swiftEmptyArrayStorage[2] = v17;
  *&_swiftEmptyArrayStorage[v15 + 4] = v2 * 5.0 + 2.0;
  v19 = _swiftEmptyArrayStorage[2];
  v18 = _swiftEmptyArrayStorage[3];
  if (v19 >= v18 >> 1)
  {
    sub_100185EE8((v18 > 1), v19 + 1, 1);
  }

  result = v2 * 6.0 + 2.0;
  _swiftEmptyArrayStorage[2] = v19 + 1;
  *&_swiftEmptyArrayStorage[v19 + 4] = result;
  return result;
}

char *sub_100239DC8(char a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v6 = OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_titleLabel;
  sub_1000059F8(0, &qword_1008E2D40, UILabel_ptr);
  *&v4[v6] = sub_100555C98();
  v7 = OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_chartContainer;
  sub_1000059F8(0, &qword_1008E7580, UIView_ptr);
  *&v4[v7] = sub_10065AF60();
  v8 = OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_container90;
  *&v4[v8] = sub_10065AF60();
  v9 = OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_container365;
  *&v4[v9] = sub_10065AF60();
  v10 = OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_textContainer;
  *&v4[v10] = [objc_allocWithZone(UILayoutGuide) init];
  v11 = OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_axisLayer;
  *&v5[v11] = [objc_allocWithZone(CAShapeLayer) init];
  v12 = OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_gradientLayer90;
  *&v5[v12] = [objc_allocWithZone(CAGradientLayer) init];
  v13 = OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_barLayer90;
  *&v5[v13] = [objc_allocWithZone(CAShapeLayer) init];
  v14 = OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_gradientLayer365;
  *&v5[v14] = [objc_allocWithZone(CAGradientLayer) init];
  v15 = OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_barLayer365;
  *&v5[v15] = [objc_allocWithZone(CAShapeLayer) init];
  v16 = OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_chartMask;
  type metadata accessor for TrendChartMaskingView();
  *&v5[v16] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v17 = OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_dayOfWeekLabels;
  v18 = [objc_opt_self() secondaryLabelColor];
  v20 = sub_10023EF7C(v18, v19);

  v74 = v17;
  *&v5[v17] = v20;
  v21 = sub_100555C98();
  v22 = objc_opt_self();
  result = [v22 _preferredFontForTextStyle:UIFontTextStyleCaption2 variant:1024 maximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v24 = result;
  v25 = OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_minAxisLabel;
  [v21 setFont:result];

  *&v5[v25] = v21;
  v26 = sub_100555C98();
  result = [v22 _preferredFontForTextStyle:UIFontTextStyleCaption2 variant:1024 maximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v27 = result;
  v28 = OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_midAxisLabel;
  [v26 setFont:result];

  *&v5[v28] = v26;
  v29 = sub_100555C98();
  result = [v22 _preferredFontForTextStyle:UIFontTextStyleCaption2 variant:1024 maximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
  if (!result)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v30 = result;
  v31 = OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_maxValueLabel;
  [v29 setFont:result];

  *&v5[v31] = v29;
  v32 = OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_div;
  *&v5[v32] = sub_10065AEC8();
  v33 = OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_platter90;
  type metadata accessor for TrendsScrubberPlatterView();
  *&v5[v33] = sub_10065AF60();
  v34 = OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_platter365;
  *&v5[v34] = sub_10065AF60();
  v35 = OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_platterCenterLayoutGuide;
  *&v5[v35] = [objc_allocWithZone(UILayoutGuide) init];
  v36 = &v5[OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_title90];
  v37 = objc_opt_self();
  v38 = [v37 mainBundle];
  v39 = String._bridgeToObjectiveC()();
  v40 = [v38 localizedStringForKey:v39 value:0 table:0];

  v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v43 = v42;

  *v36 = v41;
  v36[1] = v43;
  v44 = &v5[OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_title365];
  v45 = [v37 mainBundle];
  v46 = String._bridgeToObjectiveC()();
  v47 = [v45 localizedStringForKey:v46 value:0 table:0];

  v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v50 = v49;

  *v44 = v48;
  v44[1] = v50;
  *&v5[OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_platterCenterXConstraint] = 0;
  v5[OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_type] = a1;
  v51 = &v5[OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_histogram90];
  v52 = *(a2 + 112);
  v53 = *(a2 + 80);
  *(v51 + 4) = *(a2 + 64);
  *(v51 + 5) = v53;
  *(v51 + 6) = *(a2 + 96);
  *(v51 + 14) = *(a2 + 112);
  v54 = *(a2 + 16);
  *v51 = *a2;
  *(v51 + 1) = v54;
  v55 = *(a2 + 48);
  *(v51 + 2) = *(a2 + 32);
  *(v51 + 3) = v55;
  v56 = &v5[OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_histogram365];
  v57 = *(a3 + 112);
  v56[14] = v57;
  v58 = *(a3 + 96);
  *(v56 + 5) = *(a3 + 80);
  *(v56 + 6) = v58;
  v59 = *(a3 + 64);
  *(v56 + 3) = *(a3 + 48);
  *(v56 + 4) = v59;
  v60 = *(a3 + 32);
  *(v56 + 1) = *(a3 + 16);
  *(v56 + 2) = v60;
  *v56 = *a3;
  if (v52 <= v57)
  {
    v52 = v57;
  }

  *&v5[OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_histogramMaxY] = v52;
  *&v5[OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_formattingManager] = a4;
  if (*&v5[v74] >> 62)
  {
    v72 = a4;

    _bridgeCocoaArray<A>(_:)();
  }

  else
  {
    swift_bridgeObjectRetain_n();
    v61 = a4;
    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
  }

  v62 = objc_allocWithZone(UIStackView);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v64 = [v62 initWithArrangedSubviews:isa];

  *&v5[OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_dayOfWeekStack] = v64;
  v65 = [objc_allocWithZone(UILongPressGestureRecognizer) init];
  *&v5[OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_longPressRecognizer] = v65;
  v78.receiver = v5;
  v78.super_class = type metadata accessor for TrendDetailDailyAverageView();
  v66 = objc_msgSendSuper2(&v78, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v67 = OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_longPressRecognizer;
  v68 = *&v66[OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_longPressRecognizer];
  v69 = v66;
  [v68 addTarget:v69 action:"longPressWithSender:"];
  [*&v66[v67] setMinimumPressDuration:0.2];
  [v69 addGestureRecognizer:*&v66[v67]];
  [v69 addSubview:*&v69[OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_chartContainer]];
  [v69 addLayoutGuide:*&v69[OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_textContainer]];
  v70 = OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_dayOfWeekStack;
  v71 = *&v69[OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_dayOfWeekStack];
  [v71 setDistribution:1];
  [v71 setAxis:0];
  [v71 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v71 setSemanticContentAttribute:3];
  [v69 addSubview:*&v69[v70]];
  sub_10023AE08();
  sub_10023B3FC();
  sub_10023BC5C();

  return v69;
}

uint64_t sub_10023A548(uint64_t result)
{
  if (result > 6)
  {
    return 0;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    v2 = *(&off_100841BF8 + result + 4);
    if ((v2 - 1) > 6)
    {
      return 0;
    }

    v3 = sub_10065D3A4(v2 - 1);
    if (v4)
    {
      return 0;
    }

    v5 = *&v3;
    v6 = *(v1 + OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_type);
    v7 = sub_1003D2500(byte_1006DFE50[v6]);
    v8 = [objc_opt_self() quantityWithUnit:v7 doubleValue:v5];

    if (((v6 - 3) & 0xFB) != 0)
    {
      v9 = sub_100602918(v8, v6);
      if ((v10 & 1) == 0)
      {
        v11 = [objc_allocWithZone(NSNumber) initWithDouble:*&v9];
        v12 = [objc_opt_self() stringWithNumber:v11 decimalPrecision:qword_1006DFE08[v6] roundingMode:4];

        if (v12)
        {
          v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v15 = v14;

          sub_10007ABFC(v6, 0, v5);
          if (v16)
          {
            sub_10000FCBC();
            v17 = StringProtocol.localizedUppercase.getter();
            v19 = v18;

            goto LABEL_14;
          }

LABEL_16:

          return 0;
        }
      }
    }

    else
    {
      v13 = sub_100603864(v8);
      v15 = v20;

      if (v15)
      {
        sub_10007ABFC(v6, 0, v5);
        if (v21)
        {

          v17 = 0;
          v19 = 0xE000000000000000;
LABEL_14:
          result = [objc_opt_self() _preferredFontForTextStyle:UIFontTextStyleTitle3 variant:1024 maximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
          if (result)
          {
            v22 = result;
            v23 = sub_1004C154C(v13, v15, v17, v19, result);

            return v23;
          }

          goto LABEL_19;
        }

        goto LABEL_16;
      }
    }

    return 0;
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_10023A80C(uint64_t result)
{
  if (result > 6)
  {
    return 0;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    v2 = *(&off_100841BF8 + result + 4);
    if ((v2 - 1) > 6)
    {
      return 0;
    }

    v3 = sub_10065D3A4(v2 - 1);
    if (v4)
    {
      return 0;
    }

    v5 = *&v3;
    v6 = *(v1 + OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_type);
    v7 = sub_1003D2500(byte_1006DFE50[v6]);
    v8 = [objc_opt_self() quantityWithUnit:v7 doubleValue:v5];

    if (((v6 - 3) & 0xFB) != 0)
    {
      v9 = sub_100602918(v8, v6);
      if ((v10 & 1) == 0)
      {
        v11 = [objc_allocWithZone(NSNumber) initWithDouble:*&v9];
        v12 = [objc_opt_self() stringWithNumber:v11 decimalPrecision:qword_1006DFE08[v6] roundingMode:4];

        if (v12)
        {
          v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v15 = v14;

          sub_10007ABFC(v6, 0, v5);
          if (v16)
          {
            sub_10000FCBC();
            v17 = StringProtocol.localizedUppercase.getter();
            v19 = v18;

            goto LABEL_14;
          }

LABEL_16:

          return 0;
        }
      }
    }

    else
    {
      v13 = sub_100603864(v8);
      v15 = v20;

      if (v15)
      {
        sub_10007ABFC(v6, 0, v5);
        if (v21)
        {

          v17 = 0;
          v19 = 0xE000000000000000;
LABEL_14:
          result = [objc_opt_self() _preferredFontForTextStyle:UIFontTextStyleTitle3 variant:1024 maximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
          if (result)
          {
            v22 = result;
            v23 = sub_1004C154C(v13, v15, v17, v19, result);

            return v23;
          }

          goto LABEL_19;
        }

        goto LABEL_16;
      }
    }

    return 0;
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

void sub_10023AAD0()
{
  v1 = *(v0 + OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_maxValueLabel);
  v2 = UIFontTextStyleCaption2;
  v3 = objc_opt_self();
  v4 = &selRef_initWithLayer_;
  v5 = [v3 _preferredFontForTextStyle:UIFontTextStyleCaption2 variant:1024 maximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
  if (!v5)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v6 = v5;
  [v1 setFont:v5];

  v7 = *(v0 + OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_midAxisLabel);
  v8 = [v3 _preferredFontForTextStyle:UIFontTextStyleCaption2 variant:1024 maximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
  if (!v8)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v9 = v8;
  [v7 setFont:v8];

  v10 = *(v0 + OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_minAxisLabel);
  v11 = [v3 _preferredFontForTextStyle:UIFontTextStyleCaption2 variant:1024 maximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
  if (!v11)
  {
LABEL_22:
    __break(1u);
    return;
  }

  v12 = v11;
  [v10 setFont:v11];

  v13 = *(v0 + OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_dayOfWeekLabels);
  if (v13 >> 62)
  {
LABEL_17:
    v14 = _CocoaArrayWrapper.endIndex.getter();
    if (v14)
    {
LABEL_6:
      v15 = 0;
      while (1)
      {
        if ((v13 & 0xC000000000000001) != 0)
        {
          v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v16 = *(v13 + 8 * v15 + 32);
        }

        v17 = v16;
        v18 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          __break(1u);
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

        v19 = v4;
        v20 = v4[19];
        v21 = v3;
        v22 = v3;
        v23 = v2;
        v24 = [v22 v20];
        if (!v24)
        {
          break;
        }

        v25 = v24;
        [v17 setFont:v24];

        ++v15;
        v2 = v23;
        v3 = v21;
        v4 = v19;
        if (v18 == v14)
        {
          return;
        }
      }

      __break(1u);
      goto LABEL_20;
    }
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
      goto LABEL_6;
    }
  }
}

void sub_10023AE08()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_titleLabel];
  [v1 addSubview:v2];
  v3 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleCallout];
  [v2 setFont:v3];

  v4 = objc_opt_self();
  v5 = [v4 labelColor];
  [v2 setTextColor:v5];

  v6 = objc_opt_self();
  v7 = [v6 mainBundle];
  v8 = String._bridgeToObjectiveC()();
  v9 = [v7 localizedStringForKey:v8 value:0 table:0];

  if (!v9)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = String._bridgeToObjectiveC()();
  }

  [v2 setText:v9];
  v10 = *&v1[OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_maxValueLabel];
  [v1 addSubview:v10];
  v45 = v4;
  v11 = [v4 secondaryLabelColor];
  [v10 setTextColor:v11];

  v12 = *&v1[OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_formattingManager];
  v13 = v1[OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_type];
  v14 = sub_1003D2500(byte_1006DFE50[v13]);
  v15 = *&v1[OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_histogramMaxY];
  v42 = objc_opt_self();
  v16 = [v42 quantityWithUnit:v14 doubleValue:v15];

  if (((v13 - 3) & 0xFB) != 0)
  {
    v18 = [v6 mainBundle];
    v19 = String._bridgeToObjectiveC()();
    v20 = [v18 localizedStringForKey:v19 value:0 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100603634(v16, v13);
    v22 = v21;
  }

  else
  {
    sub_100603864(v16);
    v22 = v23;
  }

  v17 = v13 - 3;

  if (v22)
  {
    v24 = String._bridgeToObjectiveC()();
  }

  else
  {
    v24 = 0;
  }

  [v10 setText:v24];

  v25 = *&v1[OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_midAxisLabel];
  [v1 addSubview:v25];
  v26 = [v45 secondaryLabelColor];
  [v25 setTextColor:v26];

  v27 = sub_1003D2500(byte_1006DFE50[v13]);
  v43 = [v42 quantityWithUnit:v27 doubleValue:v15 * 0.5];

  if ((v17 & 0xFB) != 0)
  {
    v28 = [*(v12 + OBJC_IVAR____TtC10FitnessApp23TrendsFormattingManager_fiuiFormatter) unitManager];
    if (!v28)
    {
      __break(1u);
      return;
    }

    v29 = v28;
    v30 = sub_10058264C(v28, v13);

    [v43 doubleValueForUnit:v30];
    v32 = v31;

    v33 = [objc_allocWithZone(NSNumber) initWithDouble:v32];
    v34 = [objc_opt_self() stringWithNumber:v33 decimalPrecision:qword_1006DFE08[v13] roundingMode:4];

    v35 = v45;
    goto LABEL_14;
  }

  sub_100602BB8(v43);
  v35 = v45;
  if (v36)
  {

    v34 = String._bridgeToObjectiveC()();

LABEL_14:
    [v25 setText:{v34, v43}];
  }

  v37 = *&v1[OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_minAxisLabel];
  [v1 addSubview:{v37, v43}];
  v38 = [v35 secondaryLabelColor];
  [v37 setTextColor:v38];

  if ((v17 & 0xFB) != 0)
  {
    v39 = objc_opt_self();
    v40 = [objc_allocWithZone(NSNumber) initWithInteger:0];
    v41 = [v39 stringWithNumber:v40 decimalPrecision:1];

    [v37 setText:v41];
  }
}

id sub_10023B3FC()
{
  v1 = v0;
  v2 = [v0 layer];
  v3 = *&v1[OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_axisLayer];
  [v2 addSublayer:v3];

  v60 = objc_opt_self();
  v4 = [v60 tertiaryLabelColor];
  v5 = [v4 CGColor];

  [v3 setStrokeColor:v5];
  sub_100140278(&unk_1008E4E20, &qword_1006D5040);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1006D68D0;
  sub_1000059F8(0, &qword_1008E1750, NSNumber_ptr);
  *(v6 + 32) = NSNumber.init(floatLiteral:)(1.0);
  *(v6 + 40) = NSNumber.init(floatLiteral:)(1.0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v3 setLineDashPattern:isa];

  v8 = *&v1[OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_chartContainer];
  v9 = *&v1[OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_container365];
  [v8 addSubview:v9];
  v10 = *&v1[OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_container90];
  [v8 addSubview:v10];
  v11 = [v10 layer];
  v59 = *&v1[OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_barLayer90];
  [v11 addSublayer:?];

  v12 = [v10 layer];
  v13 = *&v1[OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_gradientLayer90];
  [v12 addSublayer:v13];

  v14 = kCAFilterSourceAtop;
  v15 = [objc_allocWithZone(CAFilter) initWithType:kCAFilterSourceAtop];
  [v13 setCompositingFilter:v15];

  v16 = [v9 layer];
  v58 = *&v1[OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_barLayer365];
  [v16 addSublayer:?];

  v17 = [v9 layer];
  v18 = *&v1[OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_gradientLayer365];
  [v17 addSublayer:v18];

  v19 = [objc_allocWithZone(CAFilter) initWithType:v14];
  [v18 setCompositingFilter:v19];

  sub_100140278(&qword_1008E7590, qword_1006D5360);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1006D1F70;
  LOBYTE(v17) = v1[OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_type];
  v57 = v17;
  v21 = sub_100582888(v17);
  v22 = *&v21[OBJC_IVAR____TtC10FitnessApp12MetricColors_gradient];

  v23 = *&v22[OBJC_IVAR____TtC10FitnessApp14GradientColors_light];
  v24 = [v23 CGColor];

  type metadata accessor for CGColor(0);
  v26 = v25;
  *(v20 + 56) = v25;
  *(v20 + 32) = v24;
  v27 = sub_100582888(v17);
  v28 = *&v27[OBJC_IVAR____TtC10FitnessApp12MetricColors_gradient];

  v29 = *&v28[OBJC_IVAR____TtC10FitnessApp14GradientColors_dark];
  v30 = [v29 CGColor];

  *(v20 + 88) = v26;
  *(v20 + 64) = v30;
  v31 = Array._bridgeToObjectiveC()().super.isa;

  [v13 setColors:v31];

  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1006D1F70;
  v33 = [objc_allocWithZone(UIColor) initWithWhite:0.75 alpha:1.0];
  v34 = [v33 CGColor];

  *(v32 + 56) = v26;
  *(v32 + 32) = v34;
  v35 = [objc_allocWithZone(UIColor) initWithWhite:0.6 alpha:1.0];
  v36 = [v35 CGColor];

  *(v32 + 88) = v26;
  *(v32 + 64) = v36;
  v37 = Array._bridgeToObjectiveC()().super.isa;

  [v18 setColors:v37];

  v38 = [v60 blackColor];
  v39 = [v38 CGColor];

  [v59 setStrokeColor:v39];
  [v59 setLineWidth:4.0];
  [v59 setLineCap:kCALineCapRound];
  v40 = [v60 blackColor];
  v41 = [v40 CGColor];

  [v58 setStrokeColor:v41];
  [v58 setLineWidth:4.0];
  [v58 setLineCap:kCALineCapRound];
  [v1 addLayoutGuide:*&v1[OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_platterCenterLayoutGuide]];
  v42 = *&v1[OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_platter90];
  [v1 addSubview:v42];
  v43 = sub_100582888(v57);
  v44 = *&v43[OBJC_IVAR____TtC10FitnessApp12MetricColors_text];

  sub_10060AE7C(v44);
  [v42 setAlpha:0.0];
  v45 = *&v1[OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_platter365];
  [v1 addSubview:v45];
  sub_1000059F8(0, &qword_1008E7FC0, UIColor_ptr);
  v46 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.58824, 0.61961, 0.63137, 1.0).super.isa;
  v47 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.75686, 0.77647, 0.78431, 1.0).super.isa;
  v48 = type metadata accessor for GradientColors();
  v49 = objc_allocWithZone(v48);
  *&v49[OBJC_IVAR____TtC10FitnessApp14GradientColors_dark] = v46;
  *&v49[OBJC_IVAR____TtC10FitnessApp14GradientColors_light] = v47;
  v62.receiver = v49;
  v62.super_class = v48;
  v50 = objc_msgSendSuper2(&v62, "init");
  v51 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.58824, 0.61961, 0.63137, 1.0).super.isa;
  v52 = type metadata accessor for MetricColors();
  v53 = objc_allocWithZone(v52);
  *&v53[OBJC_IVAR____TtC10FitnessApp12MetricColors_gradient] = v50;
  *&v53[OBJC_IVAR____TtC10FitnessApp12MetricColors_text] = v51;
  v61.receiver = v53;
  v61.super_class = v52;
  v54 = objc_msgSendSuper2(&v61, "init");
  v55 = *&v54[OBJC_IVAR____TtC10FitnessApp12MetricColors_text];

  sub_10060AE7C(v55);
  [v45 setAlpha:0.0];
  return [v1 addSubview:*&v1[OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_div]];
}

void sub_10023BC5C()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_titleLabel];
  v3 = [v2 topAnchor];
  v4 = [v1 topAnchor];
  v146 = [v3 constraintEqualToAnchor:v4 constant:9.0];

  v202 = v2;
  v5 = [v2 leadingAnchor];
  v6 = [v1 leadingAnchor];
  v144 = [v5 constraintEqualToAnchor:v6 constant:16.0];

  v7 = [v2 trailingAnchor];
  v8 = [v1 trailingAnchor];
  v142 = [v7 constraintEqualToAnchor:v8 constant:-16.0];

  v9 = *&v1[OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_chartContainer];
  v10 = [v9 leftAnchor];
  v11 = [v1 leftAnchor];
  v140 = [v10 constraintEqualToAnchor:v11 constant:14.0];

  v12 = [v9 rightAnchor];
  v13 = [v1 rightAnchor];
  v199 = [v12 constraintEqualToAnchor:v13 constant:-60.0];

  v14 = [v9 heightAnchor];
  v197 = [v14 constraintEqualToConstant:66.0];

  v15 = *&v1[OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_container90];
  v16 = [v15 topAnchor];
  v17 = [v9 topAnchor];
  v138 = [v16 constraintEqualToAnchor:v17];

  v18 = [v15 leftAnchor];
  v19 = [v9 leftAnchor];
  v195 = [v18 constraintEqualToAnchor:v19];

  v20 = [v15 rightAnchor];
  v21 = [v9 rightAnchor];
  v193 = [v20 constraintEqualToAnchor:v21];

  v22 = [v15 bottomAnchor];
  v23 = [v9 bottomAnchor];
  v191 = [v22 constraintEqualToAnchor:v23];

  v24 = *&v1[OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_container365];
  v25 = [v24 topAnchor];
  v26 = [v9 topAnchor];
  v189 = [v25 constraintEqualToAnchor:v26];

  v27 = [v24 leftAnchor];
  v28 = [v9 leftAnchor];
  v187 = [v27 constraintEqualToAnchor:v28];

  v29 = [v24 rightAnchor];
  v30 = [v9 rightAnchor];
  v185 = [v29 constraintEqualToAnchor:v30];

  v31 = [v24 bottomAnchor];
  v32 = [v9 bottomAnchor];
  v183 = [v31 constraintEqualToAnchor:v32];

  v33 = *&v1[OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_textContainer];
  v34 = [v33 topAnchor];
  v35 = [v9 bottomAnchor];
  v181 = [v34 constraintEqualToAnchor:v35];

  v36 = [v33 leftAnchor];
  v37 = [v9 leftAnchor];
  v179 = [v36 constraintEqualToAnchor:v37];

  v38 = [v33 rightAnchor];
  v39 = [v9 rightAnchor];
  v177 = [v38 constraintEqualToAnchor:v39];

  v40 = [v33 bottomAnchor];
  v41 = [v1 bottomAnchor];
  v175 = [v40 constraintEqualToAnchor:v41 constant:-10.0];

  v42 = *&v1[OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_dayOfWeekStack];
  v43 = [v42 leftAnchor];
  v44 = [v33 leftAnchor];
  v173 = [v43 constraintEqualToAnchor:v44 constant:2.0];

  v45 = [v42 rightAnchor];
  v46 = [v33 rightAnchor];
  v171 = [v45 constraintEqualToAnchor:v46 constant:2.0];

  v47 = [v42 topAnchor];
  v48 = [v33 topAnchor];
  v169 = [v47 constraintEqualToAnchor:v48];

  v49 = [v42 bottomAnchor];
  v50 = [v33 bottomAnchor];
  v167 = [v49 constraintEqualToAnchor:v50];

  v51 = *&v1[OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_maxValueLabel];
  v52 = [v51 topAnchor];
  v53 = [v202 bottomAnchor];
  v165 = [v52 constraintEqualToAnchor:v53 constant:8.0];

  v54 = [v51 bottomAnchor];
  v55 = [v9 topAnchor];
  v136 = [v54 constraintEqualToAnchor:v55 constant:-3.0];

  v56 = [v51 rightAnchor];
  v57 = [v1 rightAnchor];
  v134 = [v56 constraintEqualToAnchor:v57 constant:-8.0];

  v58 = *&v1[OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_minAxisLabel];
  v59 = [v58 bottomAnchor];
  v60 = [v9 bottomAnchor];
  v163 = [v59 constraintEqualToAnchor:v60 constant:-3.0];

  v61 = [v58 rightAnchor];
  v62 = [v51 rightAnchor];
  v162 = [v61 constraintEqualToAnchor:v62];

  v63 = *&v1[OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_midAxisLabel];
  v64 = [v63 bottomAnchor];
  v65 = [v9 centerYAnchor];
  v161 = [v64 constraintEqualToAnchor:v65 constant:-3.0];

  v66 = [v63 rightAnchor];
  v67 = [v51 rightAnchor];
  v160 = [v66 constraintEqualToAnchor:v67];

  v68 = *&v1[OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_div];
  v69 = [v68 leadingAnchor];
  v70 = [v1 leadingAnchor];
  v159 = [v69 constraintEqualToAnchor:v70 constant:16.0];

  v71 = [v68 trailingAnchor];
  v72 = [v1 trailingAnchor];
  v158 = [v71 constraintEqualToAnchor:v72];

  v73 = [v68 heightAnchor];
  if (qword_1008DAC90 != -1)
  {
    swift_once();
  }

  v157 = [v73 constraintEqualToConstant:*&qword_100925B90];

  v74 = [v68 bottomAnchor];
  v75 = [v1 bottomAnchor];
  v156 = [v74 constraintEqualToAnchor:v75];

  v76 = *&v1[OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_platterCenterLayoutGuide];
  v77 = [v76 topAnchor];
  v78 = [v1 topAnchor];
  v155 = [v77 constraintEqualToAnchor:v78 constant:2.0];

  v79 = [v76 widthAnchor];
  v154 = [v79 constraintEqualToConstant:7.0];

  v80 = [v76 heightAnchor];
  v81 = *&v1[OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_platter365];
  v82 = [v81 heightAnchor];
  v153 = [v80 constraintEqualToAnchor:v82 constant:0.0];

  v83 = [v76 centerXAnchor];
  v84 = [v9 leftAnchor];
  v85 = [v83 constraintEqualToAnchor:v84 constant:0.0];

  LODWORD(v86) = 1144750080;
  [v85 setPriority:v86];
  v87 = *&v1[OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_platterCenterXConstraint];
  *&v1[OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_platterCenterXConstraint] = v85;
  v132 = v85;

  v88 = [v81 topAnchor];
  v89 = [v76 topAnchor];
  v152 = [v88 constraintEqualToAnchor:v89 constant:0.0];

  v90 = [v81 rightAnchor];
  v91 = [v76 leftAnchor];
  v151 = [v90 constraintEqualToAnchor:v91 constant:0.0];

  v92 = [v81 leftAnchor];
  v93 = [v1 leftAnchor];
  v150 = [v92 constraintGreaterThanOrEqualToAnchor:v93 constant:7.0];

  v94 = *&v1[OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_platter90];
  v95 = [v94 topAnchor];
  v96 = [v76 topAnchor];
  v131 = [v95 constraintEqualToAnchor:v96 constant:0.0];

  v97 = [v94 leftAnchor];
  v98 = [v76 rightAnchor];
  v149 = [v97 constraintEqualToAnchor:v98 constant:0.0];

  v99 = [v94 rightAnchor];
  v100 = [v1 rightAnchor];
  v148 = [v99 constraintLessThanOrEqualToAnchor:v100 constant:-7.0];

  sub_100140278(&qword_1008E2D48, &unk_1006DFDF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006DFDB0;
  sub_100140278(&unk_1008E4E20, &qword_1006D5040);
  v102 = swift_allocObject();
  *(v102 + 16) = xmmword_1006D68C0;
  *(v102 + 32) = v146;
  *(v102 + 40) = v144;
  *(v102 + 48) = v142;
  *(inited + 32) = v102;
  v103 = swift_allocObject();
  *(v103 + 16) = xmmword_1006D68C0;
  *(v103 + 32) = v136;
  *(v103 + 40) = v134;
  *(v103 + 48) = v165;
  *(inited + 40) = v103;
  v104 = swift_allocObject();
  *(v104 + 16) = xmmword_1006D68C0;
  *(v104 + 32) = v140;
  *(v104 + 40) = v199;
  *(v104 + 48) = v197;
  *(inited + 48) = v104;
  v105 = swift_allocObject();
  *(v105 + 16) = xmmword_1006D5300;
  *(v105 + 32) = v138;
  *(v105 + 40) = v195;
  *(v105 + 48) = v193;
  *(v105 + 56) = v191;
  *(inited + 56) = v105;
  v106 = swift_allocObject();
  *(v106 + 16) = xmmword_1006D5300;
  *(v106 + 32) = v189;
  *(v106 + 40) = v187;
  *(v106 + 48) = v185;
  *(v106 + 56) = v183;
  *(inited + 64) = v106;
  v107 = swift_allocObject();
  *(v107 + 16) = xmmword_1006D5300;
  *(v107 + 32) = v181;
  *(v107 + 40) = v179;
  *(v107 + 48) = v177;
  *(v107 + 56) = v175;
  *(inited + 72) = v107;
  v108 = swift_allocObject();
  *(v108 + 16) = xmmword_1006D5300;
  *(v108 + 32) = v173;
  *(v108 + 40) = v171;
  *(v108 + 48) = v169;
  *(v108 + 56) = v167;
  *(inited + 80) = v108;
  v109 = swift_allocObject();
  *(v109 + 16) = xmmword_1006D68D0;
  *(v109 + 32) = v163;
  *(v109 + 40) = v162;
  *(inited + 88) = v109;
  v110 = swift_allocObject();
  *(v110 + 16) = xmmword_1006D68D0;
  *(v110 + 32) = v161;
  *(v110 + 40) = v160;
  *(inited + 96) = v110;
  v111 = swift_allocObject();
  *(v111 + 16) = xmmword_1006D5300;
  *(v111 + 32) = v159;
  *(v111 + 40) = v158;
  *(v111 + 48) = v157;
  *(v111 + 56) = v156;
  *(inited + 104) = v111;
  v112 = swift_allocObject();
  *(v112 + 16) = xmmword_1006D5300;
  *(v112 + 32) = v155;
  *(v112 + 40) = v154;
  *(v112 + 48) = v153;
  *(v112 + 56) = v132;
  *(inited + 112) = v112;
  v113 = swift_allocObject();
  *(v113 + 16) = xmmword_1006D68C0;
  *(v113 + 32) = v152;
  *(v113 + 40) = v150;
  *(v113 + 48) = v151;
  *(inited + 120) = v113;
  v114 = swift_allocObject();
  *(v114 + 16) = xmmword_1006D68C0;
  *(v114 + 32) = v131;
  *(v114 + 40) = v149;
  *(v114 + 48) = v148;
  *(inited + 128) = v114;
  v130 = objc_opt_self();
  v115 = v132;
  v147 = v146;
  v145 = v144;
  v143 = v142;
  v203 = v136;
  v201 = v134;
  v166 = v165;
  v141 = v140;
  v200 = v199;
  v198 = v197;
  v139 = v138;
  v196 = v195;
  v194 = v193;
  v192 = v191;
  v190 = v189;
  v137 = v187;
  v135 = v185;
  v133 = v183;
  v129 = v181;
  v128 = v179;
  v127 = v177;
  v126 = v175;
  v125 = v173;
  v124 = v171;
  v116 = v169;
  v117 = v167;
  v188 = v163;
  v186 = v162;
  v184 = v161;
  v182 = v160;
  v180 = v159;
  v176 = v158;
  v174 = v157;
  v172 = v156;
  v168 = v155;
  v164 = v154;
  v118 = v153;
  v170 = v152;
  v178 = v150;
  v119 = v151;
  v120 = v131;
  v121 = v149;
  v122 = v148;
  sub_1006672B8(inited);
  swift_setDeallocating();
  sub_100140278(&qword_1008EE6E0, &qword_1006DFE00);
  swift_arrayDestroy();
  sub_1000059F8(0, &qword_1008DC980, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v130 activateConstraints:isa];
}