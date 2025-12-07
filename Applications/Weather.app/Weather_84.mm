id sub_1008DB658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v12 = String._bridgeToObjectiveC()();

  v13 = String._bridgeToObjectiveC()();

  if (!a6)
  {
    v14 = 0;
    if (a8)
    {
      goto LABEL_3;
    }

LABEL_5:
    v15.super.isa = 0;
    goto LABEL_6;
  }

  v14 = String._bridgeToObjectiveC()();

  if (!a8)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_10022C350(&qword_100CE49E0, &qword_100A97870);
  v15.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

LABEL_6:
  v16 = [v8 initWithType:v12 localizedTitle:v13 localizedSubtitle:v14 icon:a7 userInfo:v15.super.isa];

  return v16;
}

void sub_1008DB784(uint64_t a1, void *a2)
{
  sub_10000C70C(0, &qword_100CAF900, UIApplicationShortcutItem_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a2 setShortcutItems:isa];
}

void sub_1008DB828()
{
  sub_10000E8AC();
  sub_1000170DC(v3, v4, v5);
  v6 = type metadata accessor for MonthTemperatureStatistics();
  sub_1000037C4();
  __chkstk_darwin(v7);
  sub_100003848();
  sub_10000386C();
  __chkstk_darwin(v8);
  sub_100049EB8(v9, v10, v11, v12, v13, v14, v15, v16, v39);
  v17 = sub_100020E44();
  sub_10022C350(v17, v18);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v19);
  sub_100031EE8();
  sub_10022C350(&qword_100CE4B50, qword_100A979D8);
  sub_100031900();
  sub_100003828();
  __chkstk_darwin(v20);
  v21 = sub_100015148();
  v22(v21);
  v23 = sub_100024BD4(&qword_100CE4B58);
  sub_10003733C(v23);
  sub_100020CAC(&qword_100CE4B60);
  sub_10001A168();
  while (1)
  {
    sub_10000EEE0();
    sub_10003A430();
    if (v24)
    {
      sub_1000180EC(v2, &qword_100CE4B50, qword_100A979D8);
      sub_1000243F8();
      goto LABEL_9;
    }

    sub_10004ED04();
    v25 = sub_100028D90();
    v26(v25);
    v27 = sub_10003014C();
    v0(v27);
    sub_10002CBA0();
    v28 = sub_10000928C();
    v6(v28);
    v29 = sub_10002546C();
    v31 = v30(v29);
    v0 = v1;
    if (v1)
    {
      v36 = sub_1000521C0();
      v37(v36);
      sub_1000180EC(v2, &qword_100CE4B50, qword_100A979D8);
      goto LABEL_10;
    }

    if (v31)
    {
      break;
    }

    v32 = sub_1000234E8();
    v33(v32);
  }

  sub_1000180EC(v2, &qword_100CE4B50, qword_100A979D8);
  v38 = sub_100075248();
  v6(v38);
  sub_1000165A8();
LABEL_9:
  sub_100041C00(v34, v35);
LABEL_10:
  sub_100036EA0();
  sub_10000C8F4();
}

uint64_t sub_1008DBAF4@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v18 = a1;
  v17 = a3;
  v5 = type metadata accessor for MoonRiseSet();
  v6 = *(v5 - 8);
  v7.n128_f64[0] = __chkstk_darwin(v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (v6 + 8);
  for (i = *(a2 + 16) - 1; i != -1; --i)
  {
    (*(v6 + 16))(v9, a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * i, v5, v7);
    v12 = v18(v9);
    if (v3)
    {
      return (*v10)(v9, v5);
    }

    if (v12)
    {
      v14 = v17;
      (*(v6 + 32))(v17, v9, v5);
      v15 = 0;
      return sub_10001B350(v14, v15, 1, v5);
    }

    (*v10)(v9, v5);
  }

  v15 = 1;
  v14 = v17;
  return sub_10001B350(v14, v15, 1, v5);
}

void sub_1008DBCD8()
{
  sub_10000E8AC();
  sub_1000170DC(v3, v4, v5);
  v6 = type metadata accessor for HourWeather();
  sub_1000037C4();
  __chkstk_darwin(v7);
  sub_100003848();
  sub_10000386C();
  __chkstk_darwin(v8);
  sub_100049EB8(v9, v10, v11, v12, v13, v14, v15, v16, v39);
  v17 = sub_100020E44();
  sub_10022C350(v17, v18);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v19);
  sub_100031EE8();
  sub_10022C350(&qword_100CA7028, &qword_100A31FF8);
  sub_100031900();
  sub_100003828();
  __chkstk_darwin(v20);
  v21 = sub_100015148();
  v22(v21);
  v23 = sub_10003CA04(&qword_100CA7038);
  sub_10003733C(v23);
  sub_10000CFBC(&qword_100CA7040);
  sub_10001A168();
  while (1)
  {
    sub_10000EEE0();
    sub_10003A430();
    if (v24)
    {
      sub_1000180EC(v2, &qword_100CA7028, &qword_100A31FF8);
      sub_1000243F8();
      goto LABEL_9;
    }

    sub_10004ED04();
    v25 = sub_100028D90();
    v26(v25);
    v27 = sub_10003014C();
    v0(v27);
    sub_10002CBA0();
    v28 = sub_10000928C();
    v6(v28);
    v29 = sub_10002546C();
    v31 = v30(v29);
    v0 = v1;
    if (v1)
    {
      v36 = sub_1000521C0();
      v37(v36);
      sub_1000180EC(v2, &qword_100CA7028, &qword_100A31FF8);
      goto LABEL_10;
    }

    if (v31)
    {
      break;
    }

    v32 = sub_1000234E8();
    v33(v32);
  }

  sub_1000180EC(v2, &qword_100CA7028, &qword_100A31FF8);
  v38 = sub_100075248();
  v6(v38);
  sub_1000165A8();
LABEL_9:
  sub_100041C00(v34, v35);
LABEL_10:
  sub_100036EA0();
  sub_10000C8F4();
}

void sub_1008DC01C()
{
  sub_10000E8AC();
  v17[1] = v1;
  v20 = v2;
  v4 = v3;
  v6 = v5;
  v19 = v7;
  v18 = v8(0);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v9);
  v11 = v17 - v10;
  v12 = 0;
  v13 = *(v4 + 16);
  while (1)
  {
    if (v13 == v12)
    {
      v15 = 1;
      v16 = v19;
      goto LABEL_9;
    }

    sub_1008E5C1C();
    v14 = v6(v11);
    if (v0)
    {
      sub_1008E5C74(v11, v20);
      goto LABEL_10;
    }

    if (v14)
    {
      break;
    }

    sub_1008E5C74(v11, v20);
    ++v12;
  }

  v16 = v19;
  sub_1008E5CCC();
  v15 = 0;
LABEL_9:
  sub_10001B350(v16, v15, 1, v18);
LABEL_10:
  sub_10000C8F4();
}

void sub_1008DC218()
{
  sub_10000E8AC();
  sub_1000170DC(v3, v4, v5);
  v6 = type metadata accessor for MonthPrecipitationStatistics();
  sub_1000037C4();
  __chkstk_darwin(v7);
  sub_100003848();
  sub_10000386C();
  __chkstk_darwin(v8);
  sub_100049EB8(v9, v10, v11, v12, v13, v14, v15, v16, v39);
  v17 = sub_100020E44();
  sub_10022C350(v17, v18);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v19);
  sub_100031EE8();
  sub_10022C350(&qword_100CE4B40, &unk_100A9AFC0);
  sub_100031900();
  sub_100003828();
  __chkstk_darwin(v20);
  v21 = sub_100015148();
  v22(v21);
  v23 = sub_100024BD4(&qword_100CE4B48);
  sub_10003733C(v23);
  sub_100020CAC(&qword_100CB5470);
  sub_10001A168();
  while (1)
  {
    sub_10000EEE0();
    sub_10003A430();
    if (v24)
    {
      sub_1000180EC(v2, &qword_100CE4B40, &unk_100A9AFC0);
      sub_1000243F8();
      goto LABEL_9;
    }

    sub_10004ED04();
    v25 = sub_100028D90();
    v26(v25);
    v27 = sub_10003014C();
    v0(v27);
    sub_10002CBA0();
    v28 = sub_10000928C();
    v6(v28);
    v29 = sub_10002546C();
    v31 = v30(v29);
    v0 = v1;
    if (v1)
    {
      v36 = sub_1000521C0();
      v37(v36);
      sub_1000180EC(v2, &qword_100CE4B40, &unk_100A9AFC0);
      goto LABEL_10;
    }

    if (v31)
    {
      break;
    }

    v32 = sub_1000234E8();
    v33(v32);
  }

  sub_1000180EC(v2, &qword_100CE4B40, &unk_100A9AFC0);
  v38 = sub_100075248();
  v6(v38);
  sub_1000165A8();
LABEL_9:
  sub_100041C00(v34, v35);
LABEL_10:
  sub_100036EA0();
  sub_10000C8F4();
}

void sub_1008DC48C()
{
  sub_10000E8AC();
  v2 = v1;
  v4 = v3;
  v22 = v5;
  v20 = v7;
  v21 = v6;
  v8 = type metadata accessor for DayWeather();
  sub_1000037C4();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_1000037D8();
  v14 = v13 - v12;
  v15 = v2 >> 1;
  v16 = (v10 + 8);
  while (1)
  {
    if (v15 == v4)
    {
      v18 = 1;
      v19 = v20;
      goto LABEL_10;
    }

    if (v4 >= v15)
    {
      break;
    }

    (*(v10 + 16))(v14, v22 + *(v10 + 72) * v4, v8);
    v17 = v21(v14);
    if (v0)
    {
      (*v16)(v14, v8);
      goto LABEL_11;
    }

    if (v17)
    {
      v19 = v20;
      (*(v10 + 32))(v20, v14, v8);
      v18 = 0;
LABEL_10:
      sub_10001B350(v19, v18, 1, v8);
LABEL_11:
      sub_10000C8F4();
      return;
    }

    (*v16)(v14, v8);
    ++v4;
  }

  __break(1u);
}

id sub_1008DC748()
{
  result = sub_1008DC768();
  qword_100CE4A00 = result;
  return result;
}

id sub_1008DC768()
{
  v0 = [objc_allocWithZone(NSDateFormatter) init];
  static Date.uses24HourTime()();
  v1 = String._bridgeToObjectiveC()();

  [v0 setLocalizedDateFormatFromTemplate:v1];

  [v0 setFormattingContext:2];
  return v0;
}

id sub_1008DC834()
{
  result = sub_1008DC854();
  qword_100CE4A08 = result;
  return result;
}

id sub_1008DC854()
{
  v0 = [objc_allocWithZone(NSDateFormatter) init];
  static Date.uses24HourTime()();
  v1 = String._bridgeToObjectiveC()();

  [v0 setLocalizedDateFormatFromTemplate:v1];

  [v0 setFormattingContext:2];
  return v0;
}

id sub_1008DC920()
{
  result = sub_1008DC940();
  qword_100CE4A10 = result;
  return result;
}

id sub_1008DC940()
{
  v0 = [objc_allocWithZone(NSDateFormatter) init];
  static Date.uses24HourTime()();
  v1 = String._bridgeToObjectiveC()();

  [v0 setLocalizedDateFormatFromTemplate:v1];

  [v0 setFormattingContext:2];
  return v0;
}

id sub_1008DC9F8()
{
  result = sub_1008DCA18();
  qword_100CE4A18 = result;
  return result;
}

id sub_1008DCA18()
{
  v0 = [objc_allocWithZone(NSDateFormatter) init];
  static Date.uses24HourTime()();
  v1 = String._bridgeToObjectiveC()();

  [v0 setLocalizedDateFormatFromTemplate:v1];

  [v0 setFormattingContext:2];
  return v0;
}

uint64_t sub_1008DCAC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v243 = a1;
  v240 = a2;
  v2 = type metadata accessor for MoonDetailSelectedDate(0);
  v3 = sub_100003810(v2);
  __chkstk_darwin(v3);
  sub_1000038E4();
  v239 = v4;
  v5 = sub_1000038CC();
  v6 = type metadata accessor for MoonViewModel(v5);
  v7 = sub_100003810(v6);
  __chkstk_darwin(v7);
  sub_1000038E4();
  v220 = v8;
  sub_1000038CC();
  v202 = type metadata accessor for ArticlePlacementLocation();
  sub_1000037C4();
  v201 = v9;
  __chkstk_darwin(v10);
  sub_1000038E4();
  v198 = v11;
  v12 = sub_10022C350(&qword_100CB8A48, &qword_100A7FE00);
  v13 = sub_100003810(v12);
  __chkstk_darwin(v13);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v14);
  sub_10000E70C();
  v200 = v15;
  v16 = sub_1000038CC();
  v199 = type metadata accessor for NewsArticleComponentViewModel(v16);
  sub_1000037E8();
  __chkstk_darwin(v17);
  sub_1000038E4();
  v194 = v18;
  v19 = sub_10022C350(&qword_100CA74F8, &qword_100A32528);
  sub_100003810(v19);
  sub_100003828();
  __chkstk_darwin(v20);
  v212 = &v185 - v21;
  v22 = sub_1000038CC();
  v211 = type metadata accessor for NewsDataModel(v22);
  sub_1000037E8();
  __chkstk_darwin(v23);
  sub_1000038E4();
  v196 = v24;
  v25 = sub_10022C350(&qword_100CA7188, &qword_100A35360);
  v26 = sub_100003810(v25);
  __chkstk_darwin(v26);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v27);
  sub_100003908();
  __chkstk_darwin(v28);
  sub_10000E70C();
  v238 = v29;
  v209 = sub_10022C350(&qword_100CBD430, &unk_100A54310);
  sub_1000037E8();
  __chkstk_darwin(v30);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v31);
  sub_10000E70C();
  v237 = v32;
  v33 = sub_1000038CC();
  v34 = type metadata accessor for ConditionDetailPlatterViewModel(v33);
  v35 = sub_100003810(v34);
  __chkstk_darwin(v35);
  sub_1000038E4();
  v236 = v36;
  v37 = sub_1000038CC();
  v207 = type metadata accessor for MoonScrubberHeaderViewModel(v37);
  sub_1000037E8();
  __chkstk_darwin(v38);
  sub_1000038E4();
  v235 = v39;
  v40 = sub_10022C350(&qword_100CBA588, &qword_100A97960);
  sub_100003810(v40);
  sub_100003828();
  __chkstk_darwin(v41);
  v233 = &v185 - v42;
  sub_1000038CC();
  v234 = type metadata accessor for OverviewTableViewModel();
  sub_1000037C4();
  v232 = v43;
  __chkstk_darwin(v44);
  sub_1000038E4();
  v231 = v45;
  sub_1000038CC();
  v246 = type metadata accessor for Date();
  sub_1000037C4();
  v223 = v46;
  __chkstk_darwin(v47);
  sub_100003848();
  v245 = v48;
  sub_10000386C();
  __chkstk_darwin(v49);
  v244 = &v185 - v50;
  sub_10000386C();
  __chkstk_darwin(v51);
  v229 = &v185 - v52;
  sub_10000386C();
  __chkstk_darwin(v53);
  sub_10000E70C();
  object = v54;
  v55 = sub_1000038CC();
  v225 = type metadata accessor for MoonOverviewTableViewModel(v55);
  sub_1000037E8();
  __chkstk_darwin(v56);
  sub_1000037D8();
  v59 = v58 - v57;
  v60 = sub_10022C350(&qword_100CE4AF8, &qword_100A97968);
  v61 = sub_100003810(v60);
  __chkstk_darwin(v61);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v62);
  v64 = &v185 - v63;
  v219 = type metadata accessor for ConditionUnits();
  sub_1000037C4();
  v218 = v65;
  __chkstk_darwin(v66);
  sub_1000037D8();
  v69 = v68 - v67;
  countAndFlagsBits = type metadata accessor for TimeZone();
  sub_1000037C4();
  v71 = v70;
  __chkstk_darwin(v72);
  sub_1000037D8();
  v75 = v74 - v73;
  v216 = type metadata accessor for Calendar();
  sub_1000037C4();
  v215 = v76;
  __chkstk_darwin(v77);
  sub_1000037D8();
  v80 = v79 - v78;
  v81 = type metadata accessor for MoonDetailInput(0);
  v82 = sub_100003810(v81);
  __chkstk_darwin(v82);
  sub_1000037D8();
  v85 = v84 - v83;
  v86 = type metadata accessor for MoonDetailInput.Input(0);
  sub_1000037E8();
  __chkstk_darwin(v87);
  sub_1000037D8();
  v90 = (v89 - v88);
  sub_1008E5C1C();
  if (sub_100024D10(v85, 1, v86) == 1)
  {
    sub_1008E5C74(v85, type metadata accessor for MoonDetailInput);
    v91 = type metadata accessor for MoonDetailViewModel.Model(0);
    v92 = v240;
    v93 = v240;
    v94 = 1;
  }

  else
  {
    sub_1008E5CCC();
    Location.timeZone.getter();
    static Calendar.currentCalendar(with:)();
    v230 = v59;
    v227 = v80;
    v95 = v71 + 8;
    v222 = *(v71 + 8);
    v96 = countAndFlagsBits;
    (v222)(v75, countAndFlagsBits);
    v217 = v69;
    sub_1008DE1B4(v90, v69);
    sub_1008DE43C(v90, v64);
    Location.timeZone.getter();
    v221 = v86;
    v97 = &v90[*(v86 + 20)];
    v98 = object;
    sub_10070B0DC(object);
    v99 = v90[*(v86 + 44)];
    v228 = v64;
    v213 = v99;
    sub_1008DF5D8(v75, v98, v99, v230);
    v100 = v223 + 8;
    v101 = *(v223 + 8);
    v102 = v246;
    (v101)(v98, v246);
    v204 = v75;
    v205 = v95;
    (v222)(v75, v96);
    v103 = *(v232 + 16);
    v193 = v232 + 16;
    v192 = v103;
    v103(v231, v230, v234);
    sub_100095588();
    v225 = v97;
    sub_10070B0DC(v98);
    v191 = &v90[*(v221 + 32)];
    v104 = Calendar.isDate(_:inSameDayAs:)();
    v242 = v101;
    v243 = v100;
    (v101)(v98, v102);
    v190 = v104;
    if (v104)
    {
      if (qword_100CA2A78 != -1)
      {
        swift_once();
      }

      v105 = qword_100CA2A80;
      v224 = qword_100CE4A00;
      v106 = countAndFlagsBits;
      if (v105 != -1)
      {
        swift_once();
      }

      v107 = &qword_100CE4A08;
    }

    else
    {
      if (qword_100CA2A88 != -1)
      {
        swift_once();
      }

      v108 = qword_100CA2A90;
      v224 = qword_100CE4A10;
      v106 = countAndFlagsBits;
      if (v108 != -1)
      {
        swift_once();
      }

      v107 = &qword_100CE4A18;
    }

    v109 = v204;
    v110 = *v107;
    Location.timeZone.getter();
    isa = TimeZone._bridgeToObjectiveC()().super.isa;
    v112 = v222;
    (v222)(v109, v106);
    [v224 setTimeZone:isa];

    Location.timeZone.getter();
    v113 = TimeZone._bridgeToObjectiveC()().super.isa;
    v112(v109, v106);
    v206 = v110;
    [v110 setTimeZone:v113];

    v114 = v203;
    sub_100095588();
    v115 = type metadata accessor for InterpolatedMoonData();
    v116 = sub_100024D10(v114, 1, v115);
    v210 = v90;
    v117 = v223;
    if (v116 == 1)
    {
      sub_1000180EC(v114, &qword_100CE4AF8, &qword_100A97968);
      v203 = 0;
      v189 = 0xE000000000000000;
    }

    else
    {
      InterpolatedMoonData.moonPhase.getter();
      (*(*(v115 - 8) + 8))(v114, v115);
      v203 = MoonPhase.description.getter();
      v189 = v118;
    }

    sub_10070B0DC(v98);
    v119 = Date._bridgeToObjectiveC()().super.isa;
    v120 = v246;
    v121 = v242;
    v242(v98);
    v122 = [v224 stringFromDate:v119];

    v188 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v187 = v123;

    sub_10070B0DC(v98);
    v124 = Date._bridgeToObjectiveC()().super.isa;
    v121(v98, v120);
    v125 = [v206 stringFromDate:v124];

    v186 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v127 = v126;

    v128 = v207;
    v129 = *(v117 + 16);
    v130 = v235;
    v129(v235 + *(v207 + 32), v191, v120);
    v131 = v221;
    v132 = v210;
    v129(v130 + *(v128 + 36), &v210[*(v221 + 28)], v120);
    v133 = *(v132 + *(v131 + 40));
    v134 = v189;
    *v130 = v203;
    *(v130 + 8) = v134;
    v135 = v187;
    *(v130 + 16) = v188;
    *(v130 + 24) = v135;
    *(v130 + 32) = v186;
    *(v130 + 40) = v127;
    *(v130 + 48) = v190 & 1;
    *(v130 + *(v128 + 40)) = v133;
    v136 = v247;
    sub_1008E0D68(v236);
    sub_1000161C0((v136 + 144), *(v136 + 168));
    v137 = v204;
    Location.timeZone.getter();
    v138 = v229;
    sub_100020E44();
    dispatch thunk of StartOfDayCalculatorType.startOfDay(for:timeZone:)();
    v139 = v246;
    (v222)(v137, countAndFlagsBits);
    v140 = v209;
    sub_10031B024(v237, v237 + *(v209 + 48), v138, v227);
    v141 = v208;
    sub_100095588();
    v142 = *(v140 + 48);
    v143 = *(v117 + 32);
    v143(v244, v141, v139);
    v144 = v141 + v142;
    v145 = v242;
    (v242)(v144, v139);
    sub_100095588();
    v143(v245, v141 + *(v140 + 48), v139);
    v145(v141, v139);
    v146 = v212;
    sub_100095588();
    if (sub_100024D10(v146, 1, v211) == 1)
    {
      sub_1000180EC(v146, &qword_100CA74F8, &qword_100A32528);
      v147 = type metadata accessor for DetailComponentContainerViewModel(0);
      sub_10001B350(v214, 1, 1, v147);
      v148 = v220;
      v149 = v228;
    }

    else
    {
      sub_1008E5CCC();
      sub_1000161C0((v247 + 184), *(v247 + 208));
      v150 = v201;
      v151 = v198;
      v152 = v202;
      (*(v201 + 104))(v198, enum case for ArticlePlacementLocation.moonDetail(_:), v202);
      v153 = v200;
      sub_1005C188C(v151, v200);
      (*(v150 + 8))(v151, v152);
      v154 = v199;
      v155 = sub_100024D10(v153, 1, v199);
      v148 = v220;
      if (v155 == 1)
      {
        sub_100037E5C();
        sub_1000180EC(v153, &qword_100CB8A48, &qword_100A7FE00);
        v156 = type metadata accessor for DetailComponentContainerViewModel(0);
        sub_10001B350(v197, 1, 1, v156);
      }

      else
      {
        v157 = v194;
        sub_1008E5CCC();
        v158 = v195;
        sub_1008E5C1C();
        sub_10001B350(v158, 0, 1, v154);
        sub_100428C50(v158, v197);
        sub_1008E5C74(v157, type metadata accessor for NewsArticleComponentViewModel);
        sub_100037E5C();
      }

      v149 = v228;
      sub_100051BBC();
    }

    sub_100051BBC();
    v159 = object;
    sub_10070B0DC(object);
    sub_1008E0EC4(v132, v159, v244, v245, v149, v148);
    (v242)(v159, v139);
    if (v213)
    {
      v223 = 0;
      v222 = 0;
      countAndFlagsBits = 0;
      v160 = 0xE000000000000000;
      v161 = &v249;
    }

    else
    {
      v162 = [objc_opt_self() mainBundle];
      v250._object = 0x8000000100AE4F20;
      v163._object = 0x8000000100AE4F00;
      v250._countAndFlagsBits = 0xD00000000000002BLL;
      v163._countAndFlagsBits = 0xD000000000000016;
      v164._countAndFlagsBits = 1852796749;
      v164._object = 0xE400000000000000;
      v165 = NSLocalizedString(_:tableName:bundle:value:comment:)(v163, 0, v162, v164, v250);
      countAndFlagsBits = v165._countAndFlagsBits;
      object = v165._object;

      v222 = 0x6C69662E6E6F6F6DLL;
      v160 = 0xE90000000000006CLL;
      v161 = &v248;
    }

    *(v161 - 32) = v160;
    v166 = v217;
    sub_1008E5C1C();
    v167 = type metadata accessor for MoonDetailViewModel.Model(0);
    v92 = v240;
    sub_1008E5C1C();
    v168 = v148;
    v169 = v235;
    sub_1008E5C1C();
    v170 = v231;
    v171 = v234;
    v192(v92 + v167[9], v231, v234);
    v172 = v233;
    sub_100095588();
    v173 = v236;
    sub_1008E5C1C();
    v247 = sub_1008E14CC(v166);

    sub_1008E5C74(v168, type metadata accessor for MoonViewModel);
    v174 = v246;
    v175 = v242;
    (v242)(v245, v246);
    v175(v244, v174);
    sub_1000180EC(v237, &qword_100CBD430, &unk_100A54310);
    v175(v229, v174);
    sub_1008E5C74(v173, type metadata accessor for ConditionDetailPlatterViewModel);
    sub_1008E5C74(v169, type metadata accessor for MoonScrubberHeaderViewModel);
    sub_1000180EC(v172, &qword_100CBA588, &qword_100A97960);
    (*(v232 + 8))(v170, v171);
    sub_1008E5C74(v230, type metadata accessor for MoonOverviewTableViewModel);
    sub_1000180EC(v228, &qword_100CE4AF8, &qword_100A97968);
    (*(v218 + 8))(v217, v219);
    (*(v215 + 8))(v227, v216);
    v176 = v167[14];
    type metadata accessor for Location();
    sub_1000037E8();
    v178 = v210;
    (*(v177 + 16))(v92 + v176, v210);
    sub_1008E5C74(v178, type metadata accessor for MoonDetailInput.Input);
    sub_1008E5CCC();
    v179 = (v92 + v167[5]);
    v180 = object;
    *v179 = countAndFlagsBits;
    v179[1] = v180;
    v181 = (v92 + v167[6]);
    v182 = v223;
    *v181 = v222;
    v181[1] = v182;
    *(v92 + v167[12]) = v247;
    sub_100051BBC();
    *(v92 + v167[15]) = v213;
    v93 = v92;
    v94 = 0;
    v91 = v167;
  }

  sub_10001B350(v93, v94, 1, v91);
  v183 = type metadata accessor for MoonDetailViewModel(0);
  return sub_10001B350(v92, 0, 1, v183);
}

uint64_t sub_1008DE1B4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v18 = a2;
  v3 = type metadata accessor for Locale();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10022C350(&qword_100CAC460, &qword_100A3B3C8);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v17 - v11;
  v13 = *(type metadata accessor for MoonDetailInput.Input(0) + 36);

  Cache.subscript.getter();

  v14 = type metadata accessor for ConditionUnits();
  if (sub_100024D10(v12, 1, v14) != 1)
  {
    return (*(*(v14 - 8) + 32))(v18, v12, v14);
  }

  sub_1000180EC(v12, &qword_100CAC460, &qword_100A3B3C8);
  type metadata accessor for UnitManager();
  static UnitManager.standard.getter();
  v15 = v18;
  UnitManager.conditionUnits(locale:)();

  (*(v4 + 16))(v6, a1 + v13, v3);
  (*(*(v14 - 8) + 16))(v9, v15, v14);
  sub_10001B350(v9, 0, 1, v14);

  Cache.subscript.setter();
}

uint64_t sub_1008DE43C@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v123 = a2;
  v114 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  __chkstk_darwin(v114);
  v124 = &v98 - v4;
  v5 = type metadata accessor for Location();
  v130 = *(v5 - 8);
  v131 = v5;
  __chkstk_darwin(v5);
  v121 = &v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v122 = &v98 - v8;
  v104 = sub_10022C350(&qword_100CE4B18, &qword_100A97998);
  v103 = *(v104 - 8);
  __chkstk_darwin(v104);
  v102 = &v98 - v9;
  v10 = sub_10022C350(&qword_100CE4B20, &unk_100A979A0);
  __chkstk_darwin(v10 - 8);
  v115 = &v98 - v11;
  v111 = sub_10022C350(&qword_100CCF728, &qword_100A98420);
  __chkstk_darwin(v111);
  v110 = &v98 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v108 = &v98 - v14;
  v107 = sub_10022C350(&qword_100CE4B28, &unk_100A979B0);
  __chkstk_darwin(v107);
  v109 = &v98 - v15;
  v134 = type metadata accessor for Date();
  v132 = *(v134 - 8);
  __chkstk_darwin(v134);
  v116 = &v98 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v118 = &v98 - v18;
  __chkstk_darwin(v19);
  v117 = &v98 - v20;
  __chkstk_darwin(v21);
  v135 = &v98 - v22;
  __chkstk_darwin(v23);
  v136 = &v98 - v24;
  __chkstk_darwin(v25);
  v27 = &v98 - v26;
  v28 = sub_10022C350(&qword_100CAC7D0, &qword_100A3BB50);
  __chkstk_darwin(v28 - 8);
  v105 = &v98 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v106 = &v98 - v31;
  __chkstk_darwin(v32);
  v137 = &v98 - v33;
  v34 = type metadata accessor for TimeZone();
  v35 = *(v34 - 8);
  __chkstk_darwin(v34);
  v37 = &v98 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = type metadata accessor for Calendar();
  v119 = *(v120 - 8);
  __chkstk_darwin(v120);
  v39 = &v98 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  Location.timeZone.getter();
  v133 = v39;
  static Calendar.currentCalendar(with:)();
  v40 = *(v35 + 8);
  v127 = v34;
  v40(v37, v34);
  v128 = v40;
  v129 = (v35 + 8);
  v112 = sub_1008E1EC8(v2, a1, v39);
  v138 = v2;
  v41 = v2[5];
  v126 = v2[6];
  v125 = sub_1000161C0(v2 + 2, v41);
  v101 = type metadata accessor for MoonDetailInput.Input(0);
  v42 = *(v101 + 20);
  sub_10070B0DC(v27);
  Location.timeZone.getter();
  v43 = a1;
  Location.coordinate.getter();
  dispatch thunk of MoonDataProviderType.dayMoonData(for:timeZone:coordinate:)();
  v40(v37, v34);
  v45 = v132 + 1;
  v44 = v132[1];
  v46 = v27;
  v47 = v27;
  v48 = v134;
  v44(v46, v134);
  v49 = v138[21];
  v126 = v138[22];
  sub_1000161C0(v138 + 18, v49);
  v113 = v42;
  sub_10070B0DC(v47);
  v125 = v43;
  Location.timeZone.getter();
  v50 = v136;
  dispatch thunk of StartOfDayCalculatorType.startOfDay(for:timeZone:)();
  v128(v37, v127);
  v51 = v135;
  v129 = v45;
  v128 = v44;
  v44(v47, v48);
  Date.wc_addDays(_:calendar:)();
  v52 = v138[5];
  v53 = v138[6];
  v54 = sub_1000161C0(v138 + 2, v52);
  sub_1008E5B94(&qword_100CA7020, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v127 = v52;
    v56 = v132;
    v126 = v53;
    v57 = v132 + 2;
    v58 = v132[2];
    v59 = v108;
    v58(v108, v50, v48);
    v60 = v111;
    v61 = &v59[*(v111 + 48)];
    v100 = v57;
    v99 = v58;
    v58(v61, v51, v48);
    v62 = v110;
    sub_100095588();
    v63 = *(v60 + 48);
    v64 = v56[4];
    v132 = v54;
    v65 = v109;
    v64(v109, v62, v48);
    v66 = v128;
    v128(&v62[v63], v48);
    sub_100051BBC();
    v64((v65 + *(v107 + 36)), &v62[*(v60 + 48)], v48);
    v66(v62, v48);
    v67 = v125;
    Location.coordinate.getter();
    v68 = dispatch thunk of MoonDataProviderType.moonRiseSetEvents(in:coordinate:)();
    sub_1000180EC(v65, &qword_100CE4B28, &unk_100A979B0);
    v69 = swift_allocBox();
    v111 = v70;
    sub_10001B350(v70, 1, 1, v48);
    v71 = swift_allocBox();
    v126 = v72;
    v73 = sub_10001B350(v72, 1, 1, v48);
    v74 = *(v68 + 16);
    v75 = v48;
    v132 = v69;
    if (v74 < 3)
    {
      v139 = v68;
      sub_10022C350(&qword_100CE4B30, &unk_100A979C0);
      sub_100006F64(&qword_100CE4B38, &qword_100CE4B30, &unk_100A979C0, &protocol conformance descriptor for [A]);
      v114 = v68;
      v78 = v102;
      Collection.safe.getter();
      v139 = 0;
      v79 = v115;
      v80 = v104;
      SafeCollection.subscript.getter();
      sub_1008E2114(v79, v69, v71);
      sub_1000180EC(v79, &qword_100CE4B20, &unk_100A979A0);
      v139 = 1;
      SafeCollection.subscript.getter();
      sub_1008E2114(v79, v69, v71);
      sub_1000180EC(v79, &qword_100CE4B20, &unk_100A979A0);
      (*(v103 + 8))(v78, v80);
    }

    else
    {
      __chkstk_darwin(v73);

      v76 = v115;
      sub_1008DBAF4(sub_1008E5BDC, v68, v115);

      sub_1008E2114(v76, v69, v71);
      v77 = sub_1000180EC(v76, &qword_100CE4B20, &unk_100A979A0);
      __chkstk_darwin(v77);
      sub_100030CC4();
      sub_1008E2114(v76, v69, v71);
      sub_1000180EC(v76, &qword_100CE4B20, &unk_100A979A0);
    }

    v81 = (v130 + 16);
    v127 = v71;
    if (v112)
    {
      sub_100035B30((v138 + 12), &v139);
      v138 = sub_1000161C0(&v139, v140);
      (*v81)(v122, v67, v131);
      sub_10070B0DC(v117);
      v99(v118, &v67[*(v101 + 28)], v75);
      v82 = v106;
      sub_100095588();
      v83 = type metadata accessor for DayMoonData();
      if (sub_100024D10(v82, 1, v83) == 1)
      {
        sub_1000180EC(v82, &qword_100CAC7D0, &qword_100A3BB50);
      }

      else
      {
        DayMoonData.phase.getter();
        (*(*(v83 - 8) + 8))(v82, v83);
      }

      swift_beginAccess();
      v88 = v124;
      sub_100095588();
      swift_beginAccess();
      v89 = v122;
      v90 = v117;
      v91 = v118;
      dispatch thunk of InterpolatedMoonDataProviderType.makeMoonDataForCurrentDate(location:selectedDate:currentWeatherDate:dayMoonPhase:moonrise:moonset:moonRiseSetEvents:)();

      sub_1000180EC(v88, &unk_100CB2CF0, &unk_100A2D7F0);
      v92 = v134;
      v93 = v128;
      v128(v91, v134);
      v93(v90, v92);
      (*(v130 + 8))(v89, v131);
      v94 = v135;
    }

    else
    {
      sub_100035B30((v138 + 12), &v139);
      v138 = v141;
      v125 = sub_1000161C0(&v139, v140);
      (*v81)(v121, v67, v131);
      sub_10070B0DC(v116);
      v84 = v105;
      sub_100095588();
      v85 = type metadata accessor for DayMoonData();
      v86 = sub_100024D10(v84, 1, v85);
      v87 = v135;
      if (v86 == 1)
      {
        sub_1000180EC(v84, &qword_100CAC7D0, &qword_100A3BB50);
      }

      else
      {
        DayMoonData.phase.getter();
        (*(*(v85 - 8) + 8))(v84, v85);
      }

      swift_beginAccess();
      v95 = v124;
      sub_100095588();
      swift_beginAccess();
      v96 = v121;
      v97 = v116;
      dispatch thunk of InterpolatedMoonDataProviderType.makeInterpolatedMoonData(location:selectedDate:dayMoonPhase:moonrise:moonset:moonRiseSetEvents:)();

      sub_1000180EC(v95, &unk_100CB2CF0, &unk_100A2D7F0);
      v92 = v134;
      v93 = v128;
      v128(v97, v134);
      (*(v130 + 8))(v96, v131);
      v94 = v87;
    }

    v93(v94, v92);
    v93(v136, v92);
    sub_1000180EC(v137, &qword_100CAC7D0, &qword_100A3BB50);
    (*(v119 + 8))(v133, v120);
    sub_100006F14(&v139);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1008DF5D8@<X0>(uint64_t a1@<X1>, void (*a2)(char *, void, uint64_t)@<X2>, int a3@<W3>, uint64_t a4@<X8>)
{
  v186 = a3;
  v164 = a2;
  v163 = a1;
  v184 = a4;
  v4 = sub_10022C350(&qword_100CE4B00, &qword_100A97970);
  __chkstk_darwin(v4 - 8);
  v180 = &v144 - v5;
  v170 = sub_10022C350(&qword_100CE4B08, &unk_100A97978);
  v169 = *(v170 - 8);
  __chkstk_darwin(v170);
  v168 = &v144 - v6;
  v176 = type metadata accessor for WeatherFormatPlaceholder();
  v195 = *(v176 - 8);
  __chkstk_darwin(v176);
  v175 = &v144 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10022C350(&qword_100CAA9F0, qword_100A44F50);
  __chkstk_darwin(v8 - 8);
  v173 = &v144 - v9;
  v188 = type metadata accessor for WeatherFormatScaling();
  v194 = *(v188 - 8);
  __chkstk_darwin(v188);
  v172 = &v144 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = type metadata accessor for NSUnitLength.WeatherFormatUsage();
  v192 = *(v187 - 8);
  __chkstk_darwin(v187);
  v182 = &v144 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = type metadata accessor for NSUnitLength.BaseWeatherFormatStyle();
  v193 = *(v183 - 8);
  __chkstk_darwin(v183);
  v171 = &v144 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = type metadata accessor for String.LocalizationValue();
  v166 = *(v167 - 8);
  __chkstk_darwin(v167);
  v181 = &v144 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = type metadata accessor for AttributedString();
  v178 = *(v179 - 8);
  __chkstk_darwin(v179);
  v189 = &v144 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v196 = sub_10022C350(&qword_100CAB938, &qword_100A51040);
  v177 = *(v196 - 8);
  __chkstk_darwin(v196);
  v16 = &v144 - v15;
  v190 = type metadata accessor for OverviewTableRowViewModel();
  v185 = *(v190 - 8);
  __chkstk_darwin(v190);
  v174 = &v144 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v162 = &v144 - v19;
  __chkstk_darwin(v20);
  v161 = &v144 - v21;
  __chkstk_darwin(v22);
  v24 = &v144 - v23;
  __chkstk_darwin(v25);
  v27 = &v144 - v26;
  __chkstk_darwin(v28);
  v30 = &v144 - v29;
  v31 = sub_10022C350(&qword_100CE4AF8, &qword_100A97968);
  __chkstk_darwin(v31 - 8);
  v33 = &v144 - v32;
  v34 = type metadata accessor for InterpolatedMoonData();
  v35 = *(v34 - 8);
  __chkstk_darwin(v34);
  v37 = &v144 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = v38;
  sub_100095588();
  if (sub_100024D10(v33, 1, v39) == 1)
  {
    sub_1000180EC(v33, &qword_100CE4AF8, &qword_100A97968);
    v40 = v184;
    OverviewTableViewModel.init(rows:)();
    v41 = *(type metadata accessor for MoonOverviewTableViewModel(0) + 20);
    v42 = type metadata accessor for MoonCompactOverviewTableViewModel(0);
    return sub_10001B350(v40 + v41, 1, 1, v42);
  }

  else
  {
    v147 = v35;
    v44 = *(v35 + 32);
    v148 = v39;
    v44(v37, v33, v39);
    v198 = _swiftEmptyArrayStorage;
    v199 = _swiftEmptyArrayStorage;
    v197 = _swiftEmptyArrayStorage;
    sub_10000C70C(0, &qword_100CA72F8, NSNumberFormatter_ptr);
    v45 = static NSNumberFormatter.percent.getter();
    InterpolatedMoonData.illuminatedFraction.getter();
    isa = Double._bridgeToObjectiveC()().super.super.isa;
    v47 = [v45 stringFromNumber:isa];

    v48 = v37;
    v191 = v16;
    v149 = v37;
    if (v47)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v49 = [objc_opt_self() mainBundle];
      v200._object = 0x8000000100ADE420;
      v50._countAndFlagsBits = 0x616E696D756C6C49;
      v50._object = 0xEC0000006E6F6974;
      v200._countAndFlagsBits = 0xD000000000000035;
      v51._countAndFlagsBits = 0;
      v51._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v50, 0, v49, v51, v200);

      OverviewTableRowViewModel.init(title:value:shouldDividerHavePadding:)();
      v52 = v185;
      v159 = *(v185 + 16);
      v159(v27, v30, v190);
      sub_10069E948();
      v54 = v53;
      v55 = v53[2];
      if (v55 >= v53[3] >> 1)
      {
        sub_10069E948();
        v54 = v139;
      }

      v54[2] = v55 + 1;
      v56 = *(v52 + 32);
      v158 = (*(v52 + 80) + 32) & ~*(v52 + 80);
      v57 = *(v52 + 72);
      v58 = v190;
      v160 = v56;
      v56(v54 + v158 + v57 * v55, v27, v190);
      v199 = v54;
      if (v186)
      {
        v159(v24, v30, v58);
        sub_10069E948();
        v60 = v59;
        v61 = v59[2];
        v48 = v149;
        if (v61 >= v59[3] >> 1)
        {
          sub_10069E948();
          v60 = v142;
        }

        v60[2] = v61 + 1;
        v62 = v60 + v158 + v61 * v57;
        v63 = v190;
        v160(v62, v24, v190);
        v198 = v60;
        v159(v161, v30, v63);
        sub_10069E948();
        v65 = v64;
        v66 = v64[2];
        if (v66 >= v64[3] >> 1)
        {
          sub_10069E948();
          v65 = v143;
        }

        (*(v185 + 8))(v30, v63);
        v65[2] = v66 + 1;
        v160(v65 + v158 + v66 * v57, v161, v63);
        v197 = v65;
      }

      else
      {
        (*(v52 + 8))(v30, v58);
        v48 = v149;
      }
    }

    v67 = sub_1008E2748(v48, v163, v164);
    v68 = sub_1008E4340(v67);

    sub_10035D92C(v69);
    if (v186)
    {
      sub_10035D92C(v67);
      sub_10035D92C(v68);
    }

    else
    {
    }

    v70 = v190;
    v71 = v162;
    InterpolatedMoonData.nextFullMoonDuration.getter();
    if (v72 != -1)
    {
      v73 = [objc_opt_self() mainBundle];
      v201._object = 0x8000000100ADE3E0;
      v74._countAndFlagsBits = 0x6C7546207478654ELL;
      v74._object = 0xEE006E6F6F4D206CLL;
      v201._countAndFlagsBits = 0xD000000000000036;
      v75._countAndFlagsBits = 0;
      v75._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v74, 0, v73, v75, v201);

      OverviewTableRowViewModel.init(title:value:shouldDividerHavePadding:)();
      v76 = v199;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10069E948();
        v76 = v140;
      }

      v77 = v76[2];
      v78 = v185;
      if (v77 >= v76[3] >> 1)
      {
        sub_10069E948();
        v76 = v141;
      }

      v76[2] = v77 + 1;
      (*(v78 + 32))(v76 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v77, v71, v70);
      v199 = v76;
    }

    InterpolatedMoonData.distance.getter();
    v79 = [objc_opt_self() kilometers];
    v146 = sub_10000C70C(0, &qword_100CAB968, NSUnitLength_ptr);
    Measurement.init(value:unit:)();
    String.LocalizationValue.init(stringLiteral:)();
    sub_10022C350(&qword_100CA7300, &qword_100A51110);
    v150 = swift_allocObject();
    *(v150 + 16) = xmmword_100A2D320;
    static Set<>.value.getter();
    v165 = enum case for NSUnitLength.WeatherFormatUsage.visibility(_:);
    v80 = v192;
    v81 = *(v192 + 104);
    v163 = v192 + 104;
    v164 = v81;
    v82 = v182;
    v83 = v187;
    (v81)(v182);
    LODWORD(v162) = enum case for WeatherFormatScaling.automatic(_:);
    v84 = v194;
    v85 = *(v194 + 104);
    v160 = (v194 + 104);
    v161 = v85;
    v86 = v172;
    v87 = v188;
    (v85)(v172);
    v158 = type metadata accessor for Locale();
    v88 = v173;
    sub_10001B350(v173, 1, 1, v158);
    v89 = v171;
    static WeatherFormatStyle<>.weather(_:usage:scaling:trimLeadingZeroes:locale:)();

    sub_1000180EC(v88, &qword_100CAA9F0, qword_100A44F50);
    v90 = *(v84 + 8);
    v194 = v84 + 8;
    v159 = v90;
    (v90)(v86, v87);
    v91 = *(v80 + 8);
    v192 = v80 + 8;
    v157 = v91;
    v91(v82, v83);
    v156 = enum case for WeatherFormatPlaceholder.none(_:);
    v92 = v195;
    v93 = *(v195 + 104);
    v154 = v195 + 104;
    v155 = v93;
    v94 = v175;
    v95 = v176;
    v93(v175);
    v153 = type metadata accessor for UnitManager();
    static UnitManager.standard.getter();
    v152 = sub_1008E5B94(&qword_100CAB948, &type metadata accessor for NSUnitLength.BaseWeatherFormatStyle, &protocol conformance descriptor for NSUnitLength.BaseWeatherFormatStyle);
    v96 = v183;
    v97 = Measurement.formatted<A>(_:placeholder:unitManager:)();
    v99 = v98;

    v100 = *(v92 + 8);
    v195 = v92 + 8;
    v151 = v100;
    v100(v94, v95);
    v145 = *(v193 + 8);
    v193 += 8;
    v101 = v96;
    v145(v89, v96);
    v102 = v150;
    *(v150 + 32) = v97;
    *(v102 + 40) = v99;
    v103 = v168;
    static Measurement<>.FormatStyle.UnitWidth.abbreviated.getter();
    static Set<>.unit(width:)();
    (*(v169 + 8))(v103, v170);
    v104 = v182;
    v105 = v187;
    v164(v182, v165, v187);
    v106 = v188;
    (v161)(v86, v162, v188);
    sub_10001B350(v88, 1, 1, v158);
    static WeatherFormatStyle<>.weather(_:usage:scaling:trimLeadingZeroes:locale:)();

    sub_1000180EC(v88, &qword_100CAA9F0, qword_100A44F50);
    (v159)(v86, v106);
    v157(v104, v105);
    v155(v94, v156, v95);
    static UnitManager.standard.getter();
    v107 = Measurement.formatted<A>(_:placeholder:unitManager:)();
    v109 = v108;

    v151(v94, v95);
    v110 = v101;
    v111 = v145;
    v145(v89, v110);
    v112 = v150;
    *(v150 + 48) = v107;
    *(v112 + 56) = v109;
    v113 = v181;
    static AttributedString.makeLowercaseSmallCapsStyledString(localized:bundle:comment:_:)();

    (*(v166 + 8))(v113, v167);
    v114 = v187;
    v164(v104, v165, v187);
    v115 = v188;
    (v161)(v86, v162, v188);
    sub_10001B350(v88, 1, 1, v158);
    static Set<>.full.getter();
    static WeatherFormatStyle<>.weather(_:usage:scaling:trimLeadingZeroes:locale:)();

    sub_1000180EC(v88, &qword_100CAA9F0, qword_100A44F50);
    (v159)(v86, v115);
    v157(v104, v114);
    v155(v94, v156, v95);
    static UnitManager.standard.getter();
    v116 = v183;
    v117 = Measurement.formatted<A>(_:placeholder:unitManager:)();
    v119 = v118;

    v151(v94, v95);
    v111(v89, v116);
    v120 = [objc_opt_self() mainBundle];
    v202._object = 0x8000000100AE5650;
    v121._countAndFlagsBits = 0x65636E6174736944;
    v121._object = 0xE800000000000000;
    v122._countAndFlagsBits = 0;
    v122._object = 0xE000000000000000;
    v202._countAndFlagsBits = 0xD000000000000029;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v121, 0, v120, v122, v202);

    v123 = sub_10022C350(&qword_100CE4B10, &unk_100A97988);
    v124 = v180;
    v125 = &v180[*(v123 + 48)];
    v126 = v178;
    v127 = v179;
    (*(v178 + 16))(v180, v189, v179);
    *v125 = v117;
    v125[1] = v119;
    v128 = enum case for OverviewTableValueString.attributedString(_:);
    v129 = type metadata accessor for OverviewTableValueString();
    (*(*(v129 - 8) + 104))(v124, v128, v129);
    sub_10001B350(v124, 0, 1, v129);
    v130 = v174;
    OverviewTableRowViewModel.init(id:title:value:shouldDividerHavePadding:)();
    v131 = v199;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_10069E948();
      v131 = v137;
    }

    v132 = v186;
    v133 = v147;
    v134 = v131[2];
    v135 = v185;
    if (v134 >= v131[3] >> 1)
    {
      sub_10069E948();
      v131 = v138;
    }

    v131[2] = v134 + 1;
    (*(v135 + 32))(v131 + ((*(v135 + 80) + 32) & ~*(v135 + 80)) + *(v135 + 72) * v134, v130, v190);
    v136 = type metadata accessor for MoonOverviewTableViewModel(0);
    sub_1008E4778(v132 & 1, v184 + *(v136 + 20));

    OverviewTableViewModel.init(rows:)();
    (*(v126 + 8))(v189, v127);
    (*(v177 + 8))(v191, v196);
    return (*(v133 + 8))(v149, v148);
  }
}

double sub_1008E0D68@<D0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() mainBundle];
  v11._object = 0x8000000100AE5510;
  v3._countAndFlagsBits = 0x7261646E656C6143;
  v3._object = 0xE800000000000000;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v11._countAndFlagsBits = 0xD000000000000053;
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, v11);

  v6 = type metadata accessor for ConditionDetailPlatterViewModel(0);
  v7 = v6[6];
  v8 = type metadata accessor for WeatherDescription();
  sub_10001B350(a1 + v7, 1, 1, v8);
  type metadata accessor for ConditionDetailDynamicContentIdentifier(0);
  swift_storeEnumTagMultiPayload();
  v9 = type metadata accessor for ConditionDetailPlatterViewModel.Body(0);
  swift_storeEnumTagMultiPayload();
  sub_10001B350(a1 + v6[8], 1, 1, v9);
  result = 1.17067656e214;
  *a1 = xmmword_100A97880;
  *(a1 + 16) = 1;
  *(a1 + 24) = v5;
  *(a1 + v6[9]) = 0;
  *(a1 + v6[10]) = 0;
  return result;
}

uint64_t sub_1008E0EC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v60 = a3;
  v61 = a5;
  v58 = a4;
  v64 = a2;
  v65 = a6;
  v8 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  __chkstk_darwin(v8 - 8);
  v63 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v70 = &v53 - v11;
  v12 = type metadata accessor for Calendar();
  v54 = *(v12 - 8);
  v55 = v12;
  __chkstk_darwin(v12);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for TimeZone();
  v71 = *(v66 - 8);
  __chkstk_darwin(v66);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Date();
  v67 = *(v17 - 8);
  __chkstk_darwin(v17);
  v68 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v53 = &v53 - v20;
  __chkstk_darwin(v21);
  v23 = &v53 - v22;
  __chkstk_darwin(v24);
  v26 = &v53 - v25;
  v27 = v6[21];
  v62 = v6;
  sub_1000161C0(v6 + 18, v27);
  v59 = type metadata accessor for MoonDetailInput.Input(0);
  sub_10070B0DC(v23);
  v69 = a1;
  Location.timeZone.getter();
  dispatch thunk of StartOfDayCalculatorType.startOfDay(for:timeZone:)();
  v28 = v71 + 8;
  v29 = *(v71 + 1);
  v30 = v66;
  v29(v16, v66);
  v71 = v28;
  v56 = *(v67 + 8);
  v57 = v67 + 8;
  v56(v23, v17);
  Location.timeZone.getter();
  static Calendar.currentCalendar(with:)();
  v29(v16, v30);
  v31 = v53;
  Date.wc_addDays(_:calendar:)();
  v32 = v55;
  v33 = *(v54 + 8);
  v33(v14, v55);
  Location.timeZone.getter();
  static Calendar.currentCalendar(with:)();
  v29(v16, v66);
  v34 = v67;
  v71 = v26;
  Date.wc_addDays(_:calendar:)();
  v33(v14, v32);
  sub_1008E5B94(&qword_100CA7020, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v35 = v31;
  v36 = dispatch thunk of static Comparable.< infix(_:_:)();
  v37 = 1;
  if ((v36 & 1) == 0)
  {
    (*(v34 + 16))(v70, v31, v17);
    v37 = 0;
  }

  v38 = 1;
  sub_10001B350(v70, v37, 1, v17);
  v39 = v68;
  v40 = dispatch thunk of static Comparable.< infix(_:_:)();
  v41 = v63;
  if ((v40 & 1) == 0)
  {
    (*(v34 + 16))(v63, v39, v17);
    v38 = 0;
  }

  sub_10001B350(v41, v38, 1, v17);
  v42 = v64;
  v43 = v69;
  v44 = sub_1008E1D44(v61, v62, v64);
  Location.coordinate.getter();
  v46 = v45;
  v47 = v56;
  v56(v39, v17);
  v47(v35, v17);
  v47(v71, v17);
  if (v46 < 0.0)
  {
    v48 = 180.0;
  }

  else
  {
    v48 = 0.0;
  }

  v49 = v65;
  (*(v34 + 16))(v65, v42, v17);
  v50 = type metadata accessor for MoonViewModel(0);
  sub_100051BBC();
  result = sub_100051BBC();
  v52 = *(v43 + *(v59 + 44));
  *(v49 + *(v50 + 20)) = 360.0 - v44 + v48;
  *(v49 + *(v50 + 32)) = v52;
  return result;
}

uint64_t sub_1008E14CC(uint64_t a1)
{
  v65 = a1;
  v1 = type metadata accessor for ConditionDetailPlatterViewModel(0);
  v2 = (v1 - 8);
  v67 = *(v1 - 8);
  v68 = v67;
  __chkstk_darwin(v1);
  v66 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v64 = &v56 - v5;
  v6 = sub_10022C350(&qword_100CAB938, &qword_100A51040);
  v69 = *(v6 - 8);
  v70 = v6;
  __chkstk_darwin(v6);
  v63 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v71 = (&v56 - v9);
  v10 = type metadata accessor for Locale();
  __chkstk_darwin(v10 - 8);
  v11 = sub_10022C350(&qword_100CBB588, &qword_100A50E40);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v56 - v13;
  v59 = objc_opt_self();
  v15 = [v59 mainBundle];
  v75._object = 0x8000000100AE4FB0;
  v16._object = 0x8000000100AE4F90;
  v75._countAndFlagsBits = 0xD00000000000003FLL;
  v16._countAndFlagsBits = 0xD000000000000012;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v18 = NSLocalizedString(_:tableName:bundle:value:comment:)(v16, 0, v15, v17, v75);
  object = v18._object;
  countAndFlagsBits = v18._countAndFlagsBits;

  v72 = 0x3FF0000000000000;
  static Locale.autoupdatingCurrent.getter();
  sub_10014AB54();
  FloatingPointFormatStyle.Percent.init(locale:)();
  sub_100006F64(&qword_100CBB590, &qword_100CBB588, &qword_100A50E40, &protocol conformance descriptor for FloatingPointFormatStyle<A>.Percent);
  BinaryFloatingPoint.formatted<A>(_:)();
  v19 = *(v12 + 8);
  v19(v14, v11);
  v57 = v74;
  v58 = v73;
  v72 = 0;
  static Locale.autoupdatingCurrent.getter();
  FloatingPointFormatStyle.Percent.init(locale:)();
  BinaryFloatingPoint.formatted<A>(_:)();
  v19(v14, v11);
  v20 = v73;
  v21 = v74;
  v22 = v59;
  v23 = [v59 mainBundle];
  v76._object = 0x8000000100AE5140;
  v24._object = 0x8000000100AE4FF0;
  v76._countAndFlagsBits = 0xD0000000000000BBLL;
  v24._countAndFlagsBits = 0x100000000000014ALL;
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v24, 0, v23, v25, v76);

  sub_10022C350(&qword_100CA40C8, &unk_100A2E170);
  v26 = swift_allocObject();
  v60 = xmmword_100A2D320;
  *(v26 + 16) = xmmword_100A2D320;
  *(v26 + 56) = &type metadata for String;
  v27 = sub_100035744();
  v28 = v57;
  *(v26 + 32) = v58;
  *(v26 + 40) = v28;
  *(v26 + 96) = &type metadata for String;
  *(v26 + 104) = v27;
  *(v26 + 64) = v27;
  *(v26 + 72) = v20;
  *(v26 + 80) = v21;
  v29 = static String.localizedStringWithFormat(_:_:)();
  v31 = v30;

  v32 = [v22 mainBundle];
  v77._object = 0x8000000100AE5220;
  v33._countAndFlagsBits = 0xD000000000000013;
  v33._object = 0x8000000100AE5200;
  v77._countAndFlagsBits = 0xD000000000000040;
  v34._countAndFlagsBits = 0;
  v34._object = 0xE000000000000000;
  v35 = NSLocalizedString(_:tableName:bundle:value:comment:)(v33, 0, v32, v34, v77);
  v59 = v35._countAndFlagsBits;

  v36 = objc_opt_self();
  v37 = [v36 kilometers];
  sub_10000C70C(0, &qword_100CAB968, NSUnitLength_ptr);
  v38 = v71;
  Measurement.init(value:unit:)();
  v39 = [v36 kilometers];
  v40 = v63;
  Measurement.init(value:unit:)();
  v41 = sub_1008E49AC(v65, v38, v40);
  v43 = v42;
  v44 = v2[8];
  v45 = type metadata accessor for WeatherDescription();
  v46 = v64;
  sub_10001B350(&v64[v44], 1, 1, v45);
  v47 = (v46 + v2[9]);
  *v47 = v29;
  v47[1] = v31;
  v48 = type metadata accessor for ConditionDetailPlatterViewModel.Body(0);
  swift_storeEnumTagMultiPayload();
  sub_10001B350(v46 + v2[10], 1, 1, v48);
  *v46 = xmmword_100A97890;
  *(v46 + 16) = 0;
  v49 = object;
  *(v46 + 24) = countAndFlagsBits;
  *(v46 + 32) = v49;
  *(v46 + v2[11]) = 0;
  *(v46 + v2[12]) = 0;
  v50 = v66;
  sub_10001B350(&v66[v2[8]], 1, 1, v45);
  v51 = &v50[v2[9]];
  *v51 = v41;
  v51[1] = v43;
  swift_storeEnumTagMultiPayload();
  sub_10001B350(&v50[v2[10]], 1, 1, v48);
  *v50 = xmmword_100A978A0;
  v50[16] = 0;
  *(v50 + 3) = v59;
  *(v50 + 4) = v35._object;
  v50[v2[11]] = 0;
  v50[v2[12]] = 0;
  sub_10022C350(&qword_100CAEC98, &qword_100A76590);
  v52 = swift_allocObject();
  *(v52 + 16) = v60;
  sub_1008E5C1C();
  sub_1008E5CCC();
  sub_1008E5C74(v46, type metadata accessor for ConditionDetailPlatterViewModel);
  v53 = v70;
  v54 = *(v69 + 8);
  v54(v40, v70);
  v54(v71, v53);
  return v52;
}

void *sub_1008E1CA4()
{
  sub_100006F14(v0 + 2);
  sub_100006F14(v0 + 7);
  sub_100006F14(v0 + 12);
  sub_100006F14(v0 + 18);
  sub_100006F14(v0 + 23);

  return v0;
}

uint64_t sub_1008E1CEC()
{
  sub_1008E1CA4();

  return swift_deallocClassInstance();
}

double sub_1008E1D44(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = sub_10022C350(&qword_100CE4AF8, &qword_100A97968);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - v5;
  sub_100095588();
  v7 = type metadata accessor for InterpolatedMoonData();
  if (sub_100024D10(v6, 1, v7) == 1)
  {
    sub_1000180EC(v6, &qword_100CE4AF8, &qword_100A97968);
    sub_1000161C0(a2 + 2, a2[5]);
    Location.coordinate.getter();
    if (dispatch thunk of MoonDataProviderType.moonEphemeris(for:coordinate:)())
    {
      CelestialEphemeris.librationPositionAngle.getter();
      v9 = v8;
    }

    else
    {
      return 0.0;
    }
  }

  else
  {
    InterpolatedMoonData.librationPositionAngle.getter();
    v9 = v10;
    (*(*(v7 - 8) + 8))(v6, v7);
  }

  return v9;
}

uint64_t sub_1008E1EC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18[1] = a3;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v18 - v9;
  __chkstk_darwin(v11);
  v13 = v18 - v12;
  v14 = type metadata accessor for MoonDetailInput.Input(0);
  (*(v5 + 16))(v13, a2 + *(v14 + 28), v4);
  sub_10070B0DC(v10);
  sub_1008E5B94(&qword_100CA7020, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  LOBYTE(v14) = dispatch thunk of static Comparable.< infix(_:_:)();
  v15 = *(v5 + 8);
  v15(v10, v4);
  if (v14)
  {
    v15(v13, v4);
  }

  else
  {
    sub_10070B0DC(v7);
    Date.wc_addHours(_:calendar:)();
    v15(v7, v4);
    v16 = static Date.< infix(_:_:)();
    v15(v10, v4);
    v15(v13, v4);
    if (v16)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1008E2114(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  __chkstk_darwin(v3 - 8);
  v26 = &v26 - v4;
  v5 = sub_10022C350(&qword_100CE4B20, &unk_100A979A0);
  __chkstk_darwin(v5 - 8);
  v7 = &v26 - v6;
  v8 = type metadata accessor for MoonRiseSet();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v26 - v13;
  v15 = swift_projectBox();
  v16 = swift_projectBox();
  sub_100095588();
  if (sub_100024D10(v7, 1, v8) == 1)
  {
    return sub_1000180EC(v7, &qword_100CE4B20, &unk_100A979A0);
  }

  (*(v9 + 32))(v14, v7, v8);
  (*(v9 + 16))(v11, v14, v8);
  v18 = (*(v9 + 88))(v11, v8);
  if (v18 == enum case for MoonRiseSet.rise(_:))
  {
    v19 = v26;
    MoonRiseSet.date.getter();
    v20 = *(v9 + 8);
    v20(v14, v8);
    v21 = type metadata accessor for Date();
    sub_10001B350(v19, 0, 1, v21);
    swift_beginAccess();
    v22 = v19;
    v23 = v15;
  }

  else
  {
    if (v18 != enum case for MoonRiseSet.set(_:))
    {
      v20 = *(v9 + 8);
      v20(v14, v8);
      return (v20)(v11, v8);
    }

    v24 = v26;
    MoonRiseSet.date.getter();
    v20 = *(v9 + 8);
    v20(v14, v8);
    v25 = type metadata accessor for Date();
    sub_10001B350(v24, 0, 1, v25);
    swift_beginAccess();
    v22 = v24;
    v23 = v16;
  }

  sub_10019F6D8(v22, v23);
  return (v20)(v11, v8);
}

BOOL sub_1008E2484()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v10 - v5;
  MoonRiseSet.date.getter();
  type metadata accessor for MoonDetailInput.Input(0);
  sub_10070B0DC(v3);
  sub_1008E5B94(&qword_100CA7020, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v7 = dispatch thunk of static Comparable.< infix(_:_:)();
  v8 = *(v1 + 8);
  v8(v3, v0);
  v8(v6, v0);
  return (v7 & 1) == 0;
}

uint64_t sub_1008E2608()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v10 - v5;
  MoonRiseSet.date.getter();
  type metadata accessor for MoonDetailInput.Input(0);
  sub_10070B0DC(v3);
  v7 = static Date.> infix(_:_:)();
  v8 = *(v1 + 8);
  v8(v3, v0);
  v8(v6, v0);
  return v7 & 1;
}

void *sub_1008E2748(uint64_t a1, uint64_t a2, void (*a3)(void, void, void))
{
  v260[3] = a2;
  v261 = a3;
  v4 = sub_10022C350(&qword_100CE4B00, &qword_100A97970);
  __chkstk_darwin(v4 - 8);
  v253 = (&v225 - v5);
  v6 = type metadata accessor for OverviewTableRowViewModel();
  v264 = *(v6 - 8);
  v265 = v6;
  __chkstk_darwin(v6);
  v238 = &v225 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v235 = &v225 - v9;
  __chkstk_darwin(v10);
  v236 = &v225 - v11;
  __chkstk_darwin(v12);
  v244 = &v225 - v13;
  __chkstk_darwin(v14);
  v237 = &v225 - v15;
  __chkstk_darwin(v16);
  v233 = &v225 - v17;
  __chkstk_darwin(v18);
  v243 = &v225 - v19;
  __chkstk_darwin(v20);
  v234 = &v225 - v21;
  __chkstk_darwin(v22);
  v242 = &v225 - v23;
  __chkstk_darwin(v24);
  v240 = &v225 - v25;
  __chkstk_darwin(v26);
  v241 = &v225 - v27;
  __chkstk_darwin(v28);
  v252 = &v225 - v29;
  __chkstk_darwin(v30);
  v246 = &v225 - v31;
  __chkstk_darwin(v32);
  v231 = &v225 - v33;
  __chkstk_darwin(v34);
  v256 = &v225 - v35;
  __chkstk_darwin(v36);
  v245 = &v225 - v37;
  __chkstk_darwin(v38);
  v228 = &v225 - v39;
  __chkstk_darwin(v40);
  v225 = &v225 - v41;
  __chkstk_darwin(v42);
  v227 = &v225 - v43;
  __chkstk_darwin(v44);
  v226 = &v225 - v45;
  __chkstk_darwin(v46);
  v229 = &v225 - v47;
  __chkstk_darwin(v48);
  v230 = &v225 - v49;
  v50 = type metadata accessor for Date();
  v263 = *(v50 - 8);
  __chkstk_darwin(v50);
  v249 = &v225 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v52);
  v250 = &v225 - v53;
  __chkstk_darwin(v54);
  v255 = &v225 - v55;
  __chkstk_darwin(v56);
  v239 = &v225 - v57;
  __chkstk_darwin(v58);
  v262 = &v225 - v59;
  v60 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  __chkstk_darwin(v60 - 8);
  v254 = &v225 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v62);
  v259 = &v225 - v63;
  __chkstk_darwin(v64);
  v260[0] = &v225 - v65;
  __chkstk_darwin(v66);
  v68 = &v225 - v67;
  __chkstk_darwin(v69);
  v71 = &v225 - v70;
  __chkstk_darwin(v72);
  v74 = &v225 - v73;
  InterpolatedMoonData.moonrise.getter();
  v251 = a1;
  InterpolatedMoonData.moonset.getter();
  v75 = objc_opt_self();
  v76 = [v75 mainBundle];
  v270._object = 0x8000000100AE56A0;
  v77._countAndFlagsBits = 0x657369726E6F6F4DLL;
  v78._countAndFlagsBits = 0xD00000000000001CLL;
  v78._object = 0x8000000100AE5680;
  v270._countAndFlagsBits = 0xD00000000000002DLL;
  v77._object = 0xE800000000000000;
  v79 = NSLocalizedString(_:tableName:bundle:value:comment:)(v78, 0, v76, v77, v270);
  countAndFlagsBits = v79._countAndFlagsBits;
  v260[1] = v79._object;

  v80 = [v75 mainBundle];
  v271._object = 0x8000000100AE56F0;
  v81._countAndFlagsBits = 0x7465736E6F6F4DLL;
  v82._countAndFlagsBits = 0xD00000000000001BLL;
  v82._object = 0x8000000100AE56D0;
  v271._countAndFlagsBits = 0xD00000000000002CLL;
  v81._object = 0xE700000000000000;
  v83 = NSLocalizedString(_:tableName:bundle:value:comment:)(v82, 0, v80, v81, v271);
  v258 = v83._countAndFlagsBits;
  v260[2] = v83._object;

  v232 = v75;
  v84 = [v75 mainBundle];
  v272._object = 0x8000000100AE5740;
  v85 = v74;
  v86._object = 0x8000000100AE5720;
  v272._countAndFlagsBits = 0xD00000000000005ALL;
  v86._countAndFlagsBits = 0xD000000000000017;
  v87._countAndFlagsBits = 45;
  v87._object = 0xE100000000000000;
  v88 = NSLocalizedString(_:tableName:bundle:value:comment:)(v86, 0, v84, v87, v272);
  v89 = v88._countAndFlagsBits;

  sub_100095588();
  if (sub_100024D10(v68, 1, v50) == 1)
  {
    sub_1000180EC(v68, &unk_100CB2CF0, &unk_100A2D7F0);
    v90 = v71;
    v91 = v50;
    v92 = v263;
    goto LABEL_5;
  }

  v93 = v263;
  v94 = *(v263 + 32);
  v94(v262, v68, v50);
  v95 = v260[0];
  sub_100095588();
  v90 = v71;
  if (sub_100024D10(v95, 1, v50) == 1)
  {
    (*(v93 + 8))(v262, v50);
    sub_1000180EC(v260[0], &unk_100CB2CF0, &unk_100A2D7F0);
    v91 = v50;
    v92 = v93;
    goto LABEL_5;
  }

  v119 = v239;
  v94(v239, v260[0], v50);
  v91 = v50;
  if ((Date.isSameDay(as:timeZone:)() & 1) == 0)
  {
    v200 = v119;
    v92 = v263;
    v201 = *(v263 + 8);
    v201(v200, v50);
    v201(v262, v50);
    goto LABEL_5;
  }

  v120 = Date.isSameDay(as:timeZone:)();
  v121 = v119;
  v92 = v263;
  if ((v120 & 1) == 0)
  {
    v202 = *(v263 + 8);
    v202(v121, v50);
    v202(v262, v50);
    v89 = v88._countAndFlagsBits;
LABEL_5:
    v96 = v259;
    sub_100095588();
    v97 = sub_100024D10(v96, 1, v91);
    v98 = v261;
    if (v97 == 1)
    {
      sub_1000180EC(v96, &unk_100CB2CF0, &unk_100A2D7F0);
    }

    else
    {
      v99 = v255;
      (*(v92 + 32))();
      if (Date.isSameDay(as:timeZone:)())
      {
        Date.formattedTime(timeZone:)();
        v100 = v245;
        OverviewTableRowViewModel.init(title:value:shouldDividerHavePadding:)();
        v101 = v253;
        *v253 = v89;
        *(v101 + 8) = v88._object;
        *(v101 + 16) = 0;
        v102 = enum case for OverviewTableValueString.noValueString(_:);
        v103 = type metadata accessor for OverviewTableValueString();
        (*(*(v103 - 8) + 104))(v101, v102, v103);
        sub_10001B350(v101, 0, 1, v103);

        OverviewTableRowViewModel.init(id:title:value:shouldDividerHavePadding:)();
        v104 = *(v264 + 16);
        v105 = v231;
        v104(v231, v100, v265);
        sub_10069E948();
        v107 = v106;
        v109 = *(v106 + 16);
        v108 = *(v106 + 24);
        v248 = v85;
        v247 = v90;
        if (v109 >= v108 >> 1)
        {
          sub_10069E948();
          v107 = v213;
        }

        v262 = v109 + 1;
        *(v107 + 16) = v109 + 1;
        v110 = *(v264 + 32);
        v111 = (*(v264 + 80) + 32) & ~*(v264 + 80);
        v112 = *(v264 + 72);
        v113 = v105;
        v114 = v265;
        v110(v107 + v111 + v112 * v109, v113, v265);
        v104(v246, v256, v114);
        if ((v109 + 2) > *(v107 + 24) >> 1)
        {
          sub_10069E948();
          v107 = v214;
        }

        v115 = v265;
        v116 = *(v264 + 8);
        v116(v256, v265);
        v116(v245, v115);
        (*(v263 + 8))(v255, v91);
        sub_1000180EC(v247, &unk_100CB2CF0, &unk_100A2D7F0);
        sub_1000180EC(v248, &unk_100CB2CF0, &unk_100A2D7F0);
        *(v107 + 16) = v109 + 2;
        v117 = v107 + v111 + v112 * v262;
        v118 = &v269;
        goto LABEL_30;
      }

      (*(v92 + 8))(v99, v91);
    }

    v137 = v254;
    sub_100095588();
    if (sub_100024D10(v137, 1, v91) == 1)
    {
      v138 = v89;
      sub_1000180EC(v137, &unk_100CB2CF0, &unk_100A2D7F0);
LABEL_32:
      v154 = InterpolatedMoonData.isMoonRisen.getter();
      v155 = v249;
      if (v154 == 2)
      {

        if (qword_100CA2700 != -1)
        {
          swift_once();
        }

        v156 = type metadata accessor for Logger();
        sub_10000703C(v156, qword_100D90B68);
        (*(v92 + 16))(v155, v98, v91);
        v157 = Logger.logObject.getter();
        v158 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v157, v158))
        {
          v159 = swift_slowAlloc();
          v160 = v85;
          v161 = swift_slowAlloc();
          v266 = v161;
          *v159 = 136446210;
          sub_1008E5B94(&qword_100CA5720, &type metadata accessor for Date, &protocol conformance descriptor for Date);
          v162 = dispatch thunk of CustomStringConvertible.description.getter();
          v163 = v92;
          v165 = v164;
          (*(v163 + 8))(v155, v91);
          v166 = sub_100078694(v162, v165, &v266);

          *(v159 + 4) = v166;
          _os_log_impl(&_mh_execute_header, v157, v158, "Failed to create moonrise moonset rows for date: %{public}s", v159, 0xCu);
          sub_100006F14(v161);
          v85 = v160;
        }

        else
        {

          (*(v92 + 8))(v155, v91);
        }

        sub_1000180EC(v90, &unk_100CB2CF0, &unk_100A2D7F0);
        sub_1000180EC(v85, &unk_100CB2CF0, &unk_100A2D7F0);
        return _swiftEmptyArrayStorage;
      }

      v248 = v85;
      v247 = v90;
      if (v154)
      {
        v167 = [v232 mainBundle];
        v273._object = 0x8000000100AE57E0;
        v168._countAndFlagsBits = 0x64206C6C61207055;
        v273._countAndFlagsBits = 0xD000000000000032;
        v168._object = 0xEA00000000007961;
        v169._countAndFlagsBits = 0;
        v169._object = 0xE000000000000000;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v168, 0, v167, v169, v273);

        v170 = v234;
        OverviewTableRowViewModel.init(title:value:shouldDividerHavePadding:)();
        v171 = v253;
        *v253 = v138;
        *(v171 + 8) = v88._object;
        *(v171 + 16) = 0;
        v172 = enum case for OverviewTableValueString.noValueString(_:);
        v173 = type metadata accessor for OverviewTableValueString();
        (*(*(v173 - 8) + 104))(v171, v172, v173);
        sub_10001B350(v171, 0, 1, v173);

        OverviewTableRowViewModel.init(id:title:value:shouldDividerHavePadding:)();
        v174 = *(v264 + 16);
        v174(v233, v170, v265);
        sub_10069E948();
        v107 = v175;
        v176 = *(v175 + 16);
        v177 = v176 + 1;
        if (v176 >= *(v175 + 24) >> 1)
        {
          sub_10069E948();
          v107 = v217;
        }

        *(v107 + 16) = v177;
        v178 = v265;
        v110 = *(v264 + 32);
        v179 = (*(v264 + 80) + 32) & ~*(v264 + 80);
        v180 = *(v264 + 72);
        v110(v107 + v179 + v180 * v176, v233, v265);
        v174(v237, v243, v178);
        if ((v176 + 2) > *(v107 + 24) >> 1)
        {
          sub_10069E948();
          v107 = v218;
        }

        v181 = v265;
        v182 = *(v264 + 8);
        v182(v243, v265);
        v182(v234, v181);
        sub_1000180EC(v247, &unk_100CB2CF0, &unk_100A2D7F0);
        sub_1000180EC(v248, &unk_100CB2CF0, &unk_100A2D7F0);
        *(v107 + 16) = v176 + 2;
        v117 = v107 + v179 + v180 * v177;
        v183 = &v266;
      }

      else
      {
        v184 = v253;
        *v253 = v138;
        *(v184 + 8) = v88._object;
        *(v184 + 16) = 0;
        v185 = enum case for OverviewTableValueString.noValueString(_:);
        v186 = type metadata accessor for OverviewTableValueString();
        (*(*(v186 - 8) + 104))(v184, v185, v186);
        sub_10001B350(v184, 0, 1, v186);

        OverviewTableRowViewModel.init(id:title:value:shouldDividerHavePadding:)();
        v187 = [v232 mainBundle];
        v274._object = 0x8000000100AE57A0;
        v188._countAndFlagsBits = 0x6C6C61206E776F44;
        v188._object = 0xEC00000079616420;
        v274._countAndFlagsBits = 0xD000000000000034;
        v189._countAndFlagsBits = 0;
        v189._object = 0xE000000000000000;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v188, 0, v187, v189, v274);

        v190 = v236;
        OverviewTableRowViewModel.init(title:value:shouldDividerHavePadding:)();
        v191 = *(v264 + 16);
        v191(v235, v190, v265);
        sub_10069E948();
        v107 = v192;
        v193 = *(v192 + 16);
        v194 = v193 + 1;
        if (v193 >= *(v192 + 24) >> 1)
        {
          sub_10069E948();
          v107 = v219;
        }

        *(v107 + 16) = v194;
        v195 = v265;
        v110 = *(v264 + 32);
        v196 = (*(v264 + 80) + 32) & ~*(v264 + 80);
        v197 = *(v264 + 72);
        v110(v107 + v196 + v197 * v193, v235, v265);
        v191(v238, v244, v195);
        if ((v193 + 2) > *(v107 + 24) >> 1)
        {
          sub_10069E948();
          v107 = v220;
        }

        v181 = v265;
        v198 = *(v264 + 8);
        v198(v236, v265);
        v198(v244, v181);
        sub_1000180EC(v247, &unk_100CB2CF0, &unk_100A2D7F0);
        sub_1000180EC(v248, &unk_100CB2CF0, &unk_100A2D7F0);
        *(v107 + 16) = v193 + 2;
        v117 = v107 + v196 + v197 * v194;
        v183 = &v267;
      }

      v152 = *(v183 - 32);
      v153 = v181;
LABEL_51:
      v110(v117, v152, v153);
      return v107;
    }

    v139 = v250;
    (*(v92 + 32))();
    if ((Date.isSameDay(as:timeZone:)() & 1) == 0)
    {
      v138 = v89;
      (*(v92 + 8))(v139, v91);
      goto LABEL_32;
    }

    v140 = v253;
    *v253 = v89;
    *(v140 + 8) = v88._object;
    *(v140 + 16) = 0;
    v141 = enum case for OverviewTableValueString.noValueString(_:);
    v142 = type metadata accessor for OverviewTableValueString();
    (*(*(v142 - 8) + 104))(v140, v141, v142);
    sub_10001B350(v140, 0, 1, v142);

    OverviewTableRowViewModel.init(id:title:value:shouldDividerHavePadding:)();
    Date.formattedTime(timeZone:)();
    v143 = v241;
    OverviewTableRowViewModel.init(title:value:shouldDividerHavePadding:)();
    v144 = *(v264 + 16);
    v144(v240, v143, v265);
    sub_10069E948();
    v107 = v145;
    v147 = *(v145 + 16);
    v146 = *(v145 + 24);
    v248 = v85;
    v247 = v90;
    if (v147 >= v146 >> 1)
    {
      sub_10069E948();
      v107 = v215;
    }

    v262 = v147 + 1;
    *(v107 + 16) = v147 + 1;
    v148 = v265;
    v110 = *(v264 + 32);
    v149 = (*(v264 + 80) + 32) & ~*(v264 + 80);
    v150 = *(v264 + 72);
    v110(v107 + v149 + v150 * v147, v240, v265);
    v144(v242, v252, v148);
    if ((v147 + 2) > *(v107 + 24) >> 1)
    {
      sub_10069E948();
      v107 = v216;
    }

    v115 = v265;
    v151 = *(v264 + 8);
    v151(v241, v265);
    v151(v252, v115);
    (*(v263 + 8))(v250, v91);
    sub_1000180EC(v247, &unk_100CB2CF0, &unk_100A2D7F0);
    sub_1000180EC(v248, &unk_100CB2CF0, &unk_100A2D7F0);
    *(v107 + 16) = v147 + 2;
    v117 = v107 + v149 + v150 * v262;
    v118 = &v268;
LABEL_30:
    v152 = *(v118 - 32);
    v153 = v115;
    goto LABEL_51;
  }

  Date.formattedTime(timeZone:)();
  v122 = v230;
  OverviewTableRowViewModel.init(title:value:shouldDividerHavePadding:)();
  Date.formattedTime(timeZone:)();
  v123 = v229;
  OverviewTableRowViewModel.init(title:value:shouldDividerHavePadding:)();
  v124 = static Date.< infix(_:_:)();
  v125 = *(v264 + 16);
  v248 = v85;
  v247 = v90;
  if (v124)
  {
    v125(v226, v122, v265);
    sub_10069E948();
    v107 = v126;
    v127 = *(v126 + 16);
    v128 = v127 + 1;
    if (v127 >= *(v126 + 24) >> 1)
    {
      sub_10069E948();
      v107 = v221;
    }

    *(v107 + 16) = v128;
    v129 = v265;
    v130 = (*(v264 + 80) + 32) & ~*(v264 + 80);
    v131 = *(v264 + 72);
    v261 = *(v264 + 32);
    v261(v107 + v130 + v131 * v127, v226, v265);
    v125(v227, v229, v129);
    if ((v127 + 2) > *(v107 + 24) >> 1)
    {
      sub_10069E948();
      v107 = v222;
    }

    v132 = v265;
    v133 = *(v264 + 8);
    v133(v229, v265);
    v133(v230, v132);
    v134 = *(v263 + 8);
    v134(v239, v91);
    v134(v262, v91);
    sub_1000180EC(v247, &unk_100CB2CF0, &unk_100A2D7F0);
    sub_1000180EC(v248, &unk_100CB2CF0, &unk_100A2D7F0);
    *(v107 + 16) = v127 + 2;
    v135 = v107 + v130 + v131 * v128;
    v136 = &v259;
  }

  else
  {
    v203 = v225;
    v125(v225, v123, v265);
    sub_10069E948();
    v107 = v204;
    v205 = *(v204 + 16);
    v206 = v205 + 1;
    if (v205 >= *(v204 + 24) >> 1)
    {
      sub_10069E948();
      v107 = v223;
    }

    *(v107 + 16) = v206;
    v207 = (*(v264 + 80) + 32) & ~*(v264 + 80);
    v208 = *(v264 + 72);
    v209 = v203;
    v210 = v265;
    v261 = *(v264 + 32);
    v261(v107 + v207 + v208 * v205, v209, v265);
    v125(v228, v230, v210);
    if ((v205 + 2) > *(v107 + 24) >> 1)
    {
      sub_10069E948();
      v107 = v224;
    }

    v132 = v265;
    v211 = *(v264 + 8);
    v211(v229, v265);
    v211(v230, v132);
    v212 = *(v263 + 8);
    v212(v239, v91);
    v212(v262, v91);
    sub_1000180EC(v247, &unk_100CB2CF0, &unk_100A2D7F0);
    sub_1000180EC(v248, &unk_100CB2CF0, &unk_100A2D7F0);
    *(v107 + 16) = v205 + 2;
    v135 = v107 + v207 + v208 * v206;
    v136 = v260;
  }

  v261(v135, *(v136 - 32), v132);
  return v107;
}

void *sub_1008E4340(uint64_t a1)
{
  v28 = sub_10022C350(&qword_100CE4B00, &qword_100A97970);
  __chkstk_darwin(v28);
  v3 = &v26 - v2;
  v4 = type metadata accessor for OverviewTableRowViewModel();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v32 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8.n128_f64[0] = __chkstk_darwin(v7);
  v10 = &v26 - v9;
  v11 = 0;
  v12 = *(a1 + 16);
  v29 = v3 + 8;
  v37 = enum case for OverviewTableValueString.attributedString(_:);
  v35 = enum case for OverviewTableValueString.temporalString(_:);
  v34 = enum case for OverviewTableValueString.noValueString(_:);
  v31 = (v5 + 32);
  v13 = (v5 + 8);
  v33 = _swiftEmptyArrayStorage;
  for (i = (v5 + 8); ; v13 = i)
  {
    while (1)
    {
      if (v12 == v11)
      {
        return v33;
      }

      v39 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v38 = *(v5 + 72);
      (*(v5 + 16))(v10, a1 + v39 + v38 * v11, v4, v8);
      OverviewTableRowViewModel.value.getter();
      v14 = type metadata accessor for OverviewTableValueString();
      if (sub_100024D10(v3, 1, v14) != 1)
      {
        break;
      }

LABEL_8:
      (*v13)(v10, v4);
      ++v11;
    }

    v15 = a1;
    v16 = *(v14 - 8);
    v17 = (*(v16 + 88))(v3, v14);
    if (v17 == v37)
    {
      v18 = *(v16 + 96);
      v27 = v3;
      v18(v3, v14);
      sub_10022C350(&qword_100CE4B10, &unk_100A97988);

      v19 = type metadata accessor for AttributedString();
      (*(*(v19 - 8) + 8))(v27, v19);
      goto LABEL_11;
    }

    if (v17 != v35)
    {
      break;
    }

    (*(v16 + 8))(v3, v14);
LABEL_11:
    v20 = *v31;
    (*v31)(v32, v10, v4);
    v21 = v33;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = v21;
    v30 = v20;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1006A7B6C();
      v21 = v40;
    }

    v23 = v21[2];
    v24 = (v23 + 1);
    if (v23 >= v21[3] >> 1)
    {
      v33 = (v23 + 1);
      sub_1006A7B6C();
      v24 = v33;
      v21 = v40;
    }

    ++v11;
    v21[2] = v24;
    v33 = v21;
    v30(v21 + v39 + v23 * v38, v32, v4);
    a1 = v15;
  }

  if (v17 == v34)
  {
    (*(v16 + 8))(v3, v14);
    a1 = v15;
    v13 = i;
    goto LABEL_8;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_1008E4778@<X0>(char a1@<W0>, uint64_t a4@<X8>)
{
  v6 = sub_10022C350(&qword_100CBA4D8, &unk_100A4FB40);
  __chkstk_darwin(v6 - 8);
  v8 = &v19 - v7;
  v9 = type metadata accessor for OverviewTableViewModel();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {

    OverviewTableViewModel.init(rows:)();

    sub_1009EFE78();
    v14 = v13;

    if (v14)
    {
      v15 = 1;
    }

    else
    {

      OverviewTableViewModel.init(rows:)();
      v15 = 0;
    }

    sub_10001B350(v8, v15, 1, v9);
    (*(v10 + 32))(a4, v12, v9);
    v18 = type metadata accessor for MoonCompactOverviewTableViewModel(0);
    sub_100051BBC();
    return sub_10001B350(a4, 0, 1, v18);
  }

  else
  {
    v16 = type metadata accessor for MoonCompactOverviewTableViewModel(0);

    return sub_10001B350(a4, 1, 1, v16);
  }
}

uint64_t sub_1008E49AC(uint64_t a1, void (*a2)(char *, uint64_t), uint64_t a3)
{
  v145 = a3;
  v143 = a2;
  v155 = sub_10022C350(&qword_100CAB938, &qword_100A51040);
  v3 = *(v155 - 8);
  __chkstk_darwin(v155);
  v5 = v122 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v122 - v7;
  v151 = type metadata accessor for WeatherFormatPlaceholder();
  v153 = *(v151 - 8);
  __chkstk_darwin(v151);
  v144 = v122 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = type metadata accessor for WeatherFormatScaling();
  v156 = *(v152 - 8);
  __chkstk_darwin(v152);
  v149 = v122 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10022C350(&qword_100CAA9F0, qword_100A44F50);
  __chkstk_darwin(v11 - 8);
  v150 = v122 - v12;
  v13 = type metadata accessor for NSUnitLength.WeatherFormatUsage();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v122 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = type metadata accessor for NSUnitLength.BaseWeatherFormatStyle();
  v157 = *(v154 - 8);
  __chkstk_darwin(v154);
  v146 = v122 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = ConditionUnits.visibility.getter();
  v19 = NSUnitLength.isMetricVisibility.getter();

  v147 = v13;
  v126 = v16;
  if (v19)
  {
    v20 = [objc_opt_self() mainBundle];
    v158._object = 0x8000000100AE5360;
    v21._object = 0x8000000100AE5430;
    v21._countAndFlagsBits = 0x10000000000000DCLL;
    v22._countAndFlagsBits = 0;
    v22._object = 0xE000000000000000;
    v158._countAndFlagsBits = 0xD0000000000000C4;
    v23 = NSLocalizedString(_:tableName:bundle:value:comment:)(v21, 0, v20, v22, v158);
    object = v23._object;
    countAndFlagsBits = v23._countAndFlagsBits;

    sub_10022C350(&qword_100CA40C8, &unk_100A2E170);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_100A2D320;
    LODWORD(v140) = enum case for NSUnitLength.WeatherFormatUsage.visibility(_:);
    v25 = *(v14 + 104);
    v138 = v14 + 104;
    v139 = v25;
    v26 = v13;
    v25(v16);
    v137 = type metadata accessor for Locale();
    v27 = v150;
    sub_10001B350(v150, 1, 1, v137);
    static Set<>.full.getter();
    LODWORD(v136) = enum case for WeatherFormatScaling.automatic(_:);
    v28 = v156;
    v29 = *(v156 + 104);
    v134 = (v156 + 104);
    v135 = v29;
    v30 = v149;
    v31 = v152;
    v29(v149);
    v32 = v146;
    static WeatherFormatStyle<>.weather(_:usage:scaling:trimLeadingZeroes:locale:)();

    v33 = *(v28 + 8);
    v156 = v28 + 8;
    v133 = v33;
    v33(v30, v31);
    sub_1000180EC(v27, &qword_100CAA9F0, qword_100A44F50);
    v34 = *(v14 + 8);
    v148 = v14 + 8;
    v132 = v34;
    v34(v16, v26);
    LODWORD(v131) = enum case for WeatherFormatPlaceholder.none(_:);
    v35 = v153;
    v36 = *(v153 + 104);
    v129 = v153 + 104;
    v130 = v36;
    v37 = v144;
    v38 = v151;
    (v36)(v144);
    v128 = type metadata accessor for UnitManager();
    static UnitManager.standard.getter();
    v127 = sub_1008E5B94(&qword_100CAB948, &type metadata accessor for NSUnitLength.BaseWeatherFormatStyle, &protocol conformance descriptor for NSUnitLength.BaseWeatherFormatStyle);
    v39 = v154;
    v40 = Measurement.formatted<A>(_:placeholder:unitManager:)();
    v42 = v41;

    v153 = *(v35 + 8);
    (v153)(v37, v38);
    v43 = *(v157 + 8);
    v157 += 8;
    v143 = v43;
    v43(v32, v39);
    *(v24 + 56) = &type metadata for String;
    v125 = sub_100035744();
    *(v24 + 64) = v125;
    *(v24 + 32) = v40;
    *(v24 + 40) = v42;
    v44 = v126;
    v45 = v147;
    v139(v126, v140, v147);
    v46 = v150;
    sub_10001B350(v150, 1, 1, v137);
    static Set<>.full.getter();
    v47 = v152;
    v135(v30, v136, v152);
    v48 = v146;
    static WeatherFormatStyle<>.weather(_:usage:scaling:trimLeadingZeroes:locale:)();

    v133(v30, v47);
    sub_1000180EC(v46, &qword_100CAA9F0, qword_100A44F50);
    v132(v44, v45);
    v49 = v151;
    (v130)(v37, v131, v151);
    static UnitManager.standard.getter();
    v50 = v154;
    v51 = Measurement.formatted<A>(_:placeholder:unitManager:)();
    v53 = v52;

    (v153)(v37, v49);
    v143(v48, v50);
    v54 = v125;
    *(v24 + 96) = &type metadata for String;
    *(v24 + 104) = v54;
    *(v24 + 72) = v51;
    *(v24 + 80) = v53;
    v55 = static String.localizedStringWithFormat(_:_:)();
  }

  else
  {
    v56 = objc_opt_self();
    v124 = v3;
    v57 = [v56 miles];
    sub_10000C70C(0, &qword_100CAB968, NSUnitLength_ptr);
    v125 = v8;
    Measurement.init(value:unit:)();
    v58 = [v56 miles];
    v123 = v5;
    Measurement.init(value:unit:)();
    v59 = [objc_opt_self() mainBundle];
    v159._object = 0x8000000100AE5360;
    v60._countAndFlagsBits = 0x10000000000000EALL;
    v60._object = 0x8000000100AE5270;
    v61._countAndFlagsBits = 0;
    v61._object = 0xE000000000000000;
    v159._countAndFlagsBits = 0xD0000000000000C4;
    v62 = NSLocalizedString(_:tableName:bundle:value:comment:)(v60, 0, v59, v61, v159);
    v122[1] = v62._countAndFlagsBits;
    v122[0] = v62._object;

    sub_10022C350(&qword_100CA40C8, &unk_100A2E170);
    v63 = swift_allocObject();
    *(v63 + 16) = xmmword_100A3B020;
    LODWORD(v128) = enum case for NSUnitLength.WeatherFormatUsage.visibility(_:);
    v64 = v14;
    v127 = *(v14 + 104);
    countAndFlagsBits = v14 + 104;
    v65 = v16;
    v66 = v13;
    v127(v16);
    LODWORD(object) = enum case for WeatherFormatScaling.asProvided(_:);
    v67 = v156;
    v68 = *(v156 + 104);
    v139 = (v156 + 104);
    v140 = v68;
    v69 = v149;
    v70 = v152;
    v68(v149);
    v138 = type metadata accessor for Locale();
    v71 = v150;
    sub_10001B350(v150, 1, 1, v138);
    static Set<>.full.getter();
    v72 = v146;
    static WeatherFormatStyle<>.weather(_:usage:scaling:trimLeadingZeroes:locale:)();

    sub_1000180EC(v71, &qword_100CAA9F0, qword_100A44F50);
    v73 = *(v67 + 8);
    v156 = v67 + 8;
    v137 = v73;
    v73(v69, v70);
    v74 = *(v64 + 8);
    v148 = v64 + 8;
    v136 = v74;
    v74(v65, v66);
    LODWORD(v135) = enum case for WeatherFormatPlaceholder.none(_:);
    v75 = v153;
    v76 = *(v153 + 104);
    v133 = (v153 + 104);
    v134 = v76;
    v77 = v144;
    v78 = v151;
    v76(v144);
    v132 = type metadata accessor for UnitManager();
    static UnitManager.standard.getter();
    v131 = sub_1008E5B94(&qword_100CAB948, &type metadata accessor for NSUnitLength.BaseWeatherFormatStyle, &protocol conformance descriptor for NSUnitLength.BaseWeatherFormatStyle);
    v79 = v154;
    v80 = Measurement.formatted<A>(_:placeholder:unitManager:)();
    v82 = v81;

    v83 = *(v75 + 8);
    v153 = v75 + 8;
    v143 = v83;
    v83(v77, v78);
    v84 = *(v157 + 8);
    v157 += 8;
    v130 = v84;
    v84(v72, v79);
    *(v63 + 56) = &type metadata for String;
    v129 = sub_100035744();
    *(v63 + 64) = v129;
    *(v63 + 32) = v80;
    *(v63 + 40) = v82;
    v85 = v126;
    v86 = v147;
    (v127)(v126, v128, v147);
    v87 = v149;
    v88 = v152;
    v140(v149, object, v152);
    sub_10001B350(v71, 1, 1, v138);
    static Set<>.full.getter();
    static WeatherFormatStyle<>.weather(_:usage:scaling:trimLeadingZeroes:locale:)();

    sub_1000180EC(v71, &qword_100CAA9F0, qword_100A44F50);
    v137(v87, v88);
    v136(v85, v86);
    v89 = v151;
    v134(v77, v135, v151);
    static UnitManager.standard.getter();
    v90 = v154;
    v91 = Measurement.formatted<A>(_:placeholder:unitManager:)();
    v93 = v92;

    v143(v77, v89);
    v130(v72, v90);
    v94 = v129;
    *(v63 + 96) = &type metadata for String;
    *(v63 + 104) = v94;
    *(v63 + 72) = v91;
    *(v63 + 80) = v93;
    v95 = v85;
    v96 = v147;
    (v127)(v85, v128, v147);
    v97 = v149;
    v98 = v152;
    v140(v149, object, v152);
    v99 = v150;
    sub_10001B350(v150, 1, 1, v138);
    static Set<>.full.getter();
    static WeatherFormatStyle<>.weather(_:usage:scaling:trimLeadingZeroes:locale:)();

    sub_1000180EC(v99, &qword_100CAA9F0, qword_100A44F50);
    v137(v97, v98);
    v136(v95, v96);
    v100 = v151;
    v134(v77, v135, v151);
    static UnitManager.standard.getter();
    v101 = v154;
    v102 = Measurement.formatted<A>(_:placeholder:unitManager:)();
    v104 = v103;

    v143(v77, v100);
    v105 = v72;
    v130(v72, v101);
    v106 = v129;
    *(v63 + 136) = &type metadata for String;
    *(v63 + 144) = v106;
    *(v63 + 112) = v102;
    *(v63 + 120) = v104;
    v107 = v147;
    (v127)(v95, v128, v147);
    v108 = v152;
    v140(v97, object, v152);
    v109 = v150;
    sub_10001B350(v150, 1, 1, v138);
    static Set<>.full.getter();
    static WeatherFormatStyle<>.weather(_:usage:scaling:trimLeadingZeroes:locale:)();

    sub_1000180EC(v109, &qword_100CAA9F0, qword_100A44F50);
    v137(v97, v108);
    v136(v95, v107);
    v110 = v77;
    v111 = v151;
    v134(v77, v135, v151);
    static UnitManager.standard.getter();
    v112 = v105;
    v113 = v154;
    v114 = v155;
    v115 = v123;
    v116 = Measurement.formatted<A>(_:placeholder:unitManager:)();
    v118 = v117;

    v143(v110, v111);
    v130(v112, v113);
    v119 = v129;
    *(v63 + 176) = &type metadata for String;
    *(v63 + 184) = v119;
    *(v63 + 152) = v116;
    *(v63 + 160) = v118;
    v55 = static String.localizedStringWithFormat(_:_:)();

    v120 = *(v124 + 8);
    v120(v115, v114);
    v120(v125, v114);
  }

  return v55;
}

uint64_t sub_1008E5B94(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1008E5C1C()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_1008E5C74(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1008E5CCC()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

void *sub_1008E5D24()
{
  if (*(v0 + 32))
  {
    v1 = [objc_opt_self() mainBundle];
    v17._object = 0x8000000100AE58C0;
    v2._object = 0x8000000100AD3840;
    v17._countAndFlagsBits = 0xD000000000000062;
    v2._countAndFlagsBits = 0xD000000000000017;
    v3._countAndFlagsBits = 0;
    v3._object = 0xE000000000000000;
    v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, 0, v1, v3, v17);

    sub_100109810();
    v6 = v5;
    v7 = v5[2];
    if (v7 >= v5[3] >> 1)
    {
      sub_100109810();
      v6 = v14;
    }

    v6[2] = v7 + 1;
    *&v6[2 * v7 + 4] = v4;
  }

  else
  {
    v6 = _swiftEmptyArrayStorage;
  }

  if (*(v0 + 34))
  {
    v8 = [objc_opt_self() mainBundle];
    v18._object = 0x8000000100AE5860;
    v9._countAndFlagsBits = 0x5720657265766553;
    v9._object = 0xEE00726568746165;
    v18._countAndFlagsBits = 0xD000000000000059;
    v10._countAndFlagsBits = 0;
    v10._object = 0xE000000000000000;
    v11 = NSLocalizedString(_:tableName:bundle:value:comment:)(v9, 0, v8, v10, v18);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_100109810();
      v6 = v15;
    }

    v12 = v6[2];
    if (v12 >= v6[3] >> 1)
    {
      sub_100109810();
      v6 = v16;
    }

    v6[2] = v12 + 1;
    *&v6[2 * v12 + 4] = v11;
  }

  return v6;
}

uint64_t sub_1008E5F40(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x6E6F697461636F6CLL && a2 == 0xEA00000000004449;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E6F697461636F6CLL && a2 == 0xEC000000656D614ELL;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000014 && 0x8000000100AE5820 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000016 && 0x8000000100AE5840 == a2;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6E45657265766573 && a2 == 0xED000064656C6261;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x7553657265766573 && a2 == 0xEF646574726F7070)
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

unint64_t sub_1008E6148(char a1)
{
  result = 0x6E6F697461636F6CLL;
  switch(a1)
  {
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    case 4:
      result = 0x6E45657265766573;
      break;
    case 5:
      result = 0x7553657265766573;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1008E621C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (a1[2] == *(a2 + 16) ? (v5 = a1[3] == *(a2 + 24)) : (v5 = 0), (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && ((*(a1 + 32) ^ *(a2 + 32)) & 1) == 0 && ((*(a1 + 33) ^ *(a2 + 33)) & 1) == 0 && ((*(a1 + 34) ^ *(a2 + 34)) & 1) == 0))
  {
    v6 = *(a1 + 35) ^ *(a2 + 35) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_1008E62D0(void *a1)
{
  v3 = sub_10022C350(&qword_100CE4B78, &qword_100A97AB0);
  sub_1000037C4();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v10[-v7];
  sub_1000161C0(a1, a1[3]);
  sub_1008E6918();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = 0;
  sub_100003CDC();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v10[14] = 1;
    sub_100003CDC();
    KeyedEncodingContainer.encode(_:forKey:)();
    v10[13] = 2;
    sub_100003CDC();
    KeyedEncodingContainer.encode(_:forKey:)();
    v10[12] = 3;
    sub_100003CDC();
    KeyedEncodingContainer.encode(_:forKey:)();
    v10[11] = 4;
    sub_100003CDC();
    KeyedEncodingContainer.encode(_:forKey:)();
    v10[10] = 5;
    sub_100003CDC();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_1008E64B0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10022C350(&qword_100CE4B68, &qword_100A97AA8);
  sub_1000037C4();
  __chkstk_darwin(v5);
  sub_1000161C0(a1, a1[3]);
  sub_1008E6918();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100006F14(a1);
  }

  LOBYTE(v22[0]) = 0;
  v6 = KeyedDecodingContainer.decode(_:forKey:)();
  v8 = v7;
  sub_10001FC64(1);
  *&v18 = KeyedDecodingContainer.decode(_:forKey:)();
  *(&v18 + 1) = v9;
  sub_10001FC64(2);
  v28 = KeyedDecodingContainer.decode(_:forKey:)();
  sub_10001FC64(3);
  v17 = KeyedDecodingContainer.decode(_:forKey:)();
  sub_10001FC64(4);
  v16 = KeyedDecodingContainer.decode(_:forKey:)();
  v29 = 5;
  v10 = KeyedDecodingContainer.decode(_:forKey:)();
  v15 = v28 & 1;
  v28 = v16 & 1;
  v11 = sub_10001D1A0();
  v12(v11);
  *&v19 = v6;
  *(&v19 + 1) = v8;
  v20 = v18;
  LOBYTE(v21) = v15;
  BYTE1(v21) = v17 & 1;
  BYTE2(v21) = v28;
  HIBYTE(v21) = v10 & 1;
  sub_1008E696C(&v19, v22);
  sub_100006F14(a1);
  v22[0] = v6;
  v22[1] = v8;
  v23 = v18;
  v24 = v15;
  v25 = v17 & 1;
  v26 = v28;
  v27 = v10 & 1;
  result = sub_1008E69A4(v22);
  v14 = v20;
  *a2 = v19;
  *(a2 + 16) = v14;
  *(a2 + 32) = v21;
  return result;
}

uint64_t sub_1008E6790@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1008E5F40(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1008E67B8(uint64_t a1)
{
  v2 = sub_1008E6918();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1008E67F4(uint64_t a1)
{
  v2 = sub_1008E6918();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1008E6834@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1008E64B0(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

double sub_1008E6894@<D0>(uint64_t a1@<X8>)
{
  sub_100783C68();
  if (!v1)
  {
    result = *&v4;
    *a1 = v4;
    *(a1 + 16) = v5;
    *(a1 + 32) = v6;
  }

  return result;
}

unint64_t sub_1008E6918()
{
  result = qword_100CE4B70;
  if (!qword_100CE4B70)
  {
    result = swift_getWitnessTable(asc_100A97BD0, &type metadata for NotificationSettingsLocationViewModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CE4B70);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for NotificationSettingsLocationViewModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

unint64_t sub_1008E6AC4()
{
  result = qword_100CE4B80;
  if (!qword_100CE4B80)
  {
    result = swift_getWitnessTable(aY9, &type metadata for NotificationSettingsLocationViewModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CE4B80);
  }

  return result;
}

unint64_t sub_1008E6B1C()
{
  result = qword_100CE4B88;
  if (!qword_100CE4B88)
  {
    result = swift_getWitnessTable(byte_100A97B18, &type metadata for NotificationSettingsLocationViewModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CE4B88);
  }

  return result;
}

unint64_t sub_1008E6B74()
{
  result = qword_100CE4B90;
  if (!qword_100CE4B90)
  {
    result = swift_getWitnessTable(byte_100A97B40, &type metadata for NotificationSettingsLocationViewModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CE4B90);
  }

  return result;
}

uint64_t type metadata accessor for DebugWeatherClockView(uint64_t a1)
{
  result = qword_100CE4BF0;
  if (!qword_100CE4BF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1008E6C3C(uint64_t a1)
{
  sub_1008E6CF0();
  if (v1 <= 0x3F)
  {
    sub_1008E6D40();
    if (v2 <= 0x3F)
    {
      sub_1008E6D98(319);
      if (v3 <= 0x3F)
      {
        sub_1008E6E54(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1008E6CF0()
{
  if (!qword_100CE0E28)
  {
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_100CE0E28);
    }
  }
}

void sub_1008E6D40()
{
  if (!qword_100CC3A70)
  {
    v0 = type metadata accessor for UISettingProperty();
    if (!v1)
    {
      atomic_store(v0, &qword_100CC3A70);
    }
  }
}

void sub_1008E6D98(uint64_t a1)
{
  if (!qword_100CE4C00)
  {
    type metadata accessor for NSTimer.TimerPublisher();
    sub_1008E6DFC();
    v1 = type metadata accessor for Publishers.Autoconnect();
    if (!v2)
    {
      atomic_store(v1, &qword_100CE4C00);
    }
  }
}

unint64_t sub_1008E6DFC()
{
  result = qword_100CCBC58;
  if (!qword_100CCBC58)
  {
    v3 = type metadata accessor for NSTimer.TimerPublisher();
    result = swift_getWitnessTable(&protocol conformance descriptor for NSTimer.TimerPublisher, v3, v0, v1);
    atomic_store(result, &qword_100CCBC58);
  }

  return result;
}

void sub_1008E6E54(uint64_t a1)
{
  if (!qword_100CE4C08)
  {
    v2 = type metadata accessor for MainAction(255);
    v5 = type metadata accessor for AnyDispatcher(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_100CE4C08);
    }
  }
}

uint64_t sub_1008E6EC8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v26 = a1;
  v3 = type metadata accessor for DebugWeatherClockView(0);
  v4 = v3 - 8;
  v25 = *(v3 - 8);
  v24[1] = *(v25 + 64);
  __chkstk_darwin(v3);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10022C350(&qword_100CE4C40, &qword_100A97CD8);
  sub_1000037C4();
  v9 = v8;
  __chkstk_darwin(v10);
  v12 = v24 - v11;
  v24[0] = sub_10022C350(&qword_100CE4C48, &qword_100A97CE0);
  __chkstk_darwin(v24[0]);
  v14 = v24 - v13;
  v27 = v2;
  sub_10022C350(&qword_100CE4C50, &qword_100A97CE8);
  sub_100006F64(&qword_100CE4C58, &qword_100CE4C50, &qword_100A97CE8, &protocol conformance descriptor for TupleView<A>);
  List<>.init(content:)();
  sub_100006F64(&qword_100CE4C60, &qword_100CE4C40, &qword_100A97CD8, &protocol conformance descriptor for List<A, B>);
  View.navigationTitle(_:)();
  (*(v9 + 8))(v12, v7);
  sub_1008E845C(v2, v6);
  v15 = (*(v25 + 80) + 16) & ~*(v25 + 80);
  v16 = swift_allocObject();
  sub_1008E84C0(v6, v16 + v15);
  v17 = &v14[*(v24[0] + 36)];
  *v17 = sub_1008E8524;
  v17[1] = v16;
  v17[2] = 0;
  v17[3] = 0;
  sub_10022C350(&qword_100CC39F0, &qword_100A5CDD0);
  UISettingProperty.wrappedValue.getter();
  sub_1008E8578();
  v18 = v26;
  View.onChange<A>(of:initial:_:)();
  sub_10021E0C4(v14);
  v19 = *(v2 + *(v4 + 32));
  sub_1008E845C(v2, v6);
  v20 = swift_allocObject();
  sub_1008E84C0(v6, v20 + v15);
  v21 = sub_10022C350(&qword_100CE4C70, &unk_100A97CF0);
  *(v18 + *(v21 + 52)) = v19;
  v22 = (v18 + *(v21 + 56));
  *v22 = sub_1008E8524;
  v22[1] = v20;
}

uint64_t sub_1008E72B0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v44 = a2;
  v3 = sub_10022C350(&qword_100CE4C78, &qword_100A97D00);
  v38 = *(v3 - 8);
  __chkstk_darwin(v3);
  v37 = &v36 - v4;
  v5 = sub_10022C350(&qword_100CE4C80, &qword_100A97D08);
  __chkstk_darwin(v5 - 8);
  v43 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v49 = &v36 - v8;
  v40 = sub_10022C350(&qword_100CABBF8, &qword_100A5CF10);
  v42 = *(v40 - 8);
  __chkstk_darwin(v40);
  v47 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v36 - v11;
  v48 = sub_10022C350(&qword_100CB66A0, &qword_100A4A060);
  v46 = *(v48 - 8);
  __chkstk_darwin(v48);
  v45 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v36 - v15;
  type metadata accessor for DebugWeatherClockView(0);
  sub_10022C350(&qword_100CC39F0, &qword_100A5CDD0);
  UISettingProperty.projectedValue.getter();
  Toggle.init(isOn:label:)();
  v50 = a1;
  LabeledContent<>.init(content:label:)();
  v17 = UISettingProperty.wrappedValue.getter();
  if (v51 == 1)
  {
    v51 = xmmword_100A5CD90;
    v52 = 0;
    v53 = _swiftEmptyArrayStorage;
    __chkstk_darwin(v17);
    *(&v36 - 2) = a1;
    sub_10022C350(&qword_100CE4C90, &qword_100A97D18);
    sub_100006F64(&qword_100CE4C98, &qword_100CE4C90, &qword_100A97D18, &protocol conformance descriptor for TupleView<A>);
    v18 = v37;
    Section<>.init(header:content:)();
    (*(v38 + 32))(v49, v18, v3);
    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  v20 = v3;
  v21 = v49;
  sub_10001B350(v49, v19, 1, v20);
  v22 = *(v46 + 16);
  v41 = v16;
  v23 = v48;
  v22(v45, v16, v48);
  v24 = v42;
  v38 = *(v42 + 16);
  v39 = v12;
  v25 = v47;
  v26 = v40;
  (v38)(v47, v12, v40);
  v27 = v43;
  sub_1008E867C(v21, v43);
  v29 = v44;
  v28 = v45;
  v22(v44, v45, v23);
  v30 = sub_10022C350(&qword_100CE4C88, &qword_100A97D10);
  v31 = v26;
  (v38)(&v29[*(v30 + 48)], v25, v26);
  sub_1008E867C(v27, &v29[*(v30 + 64)]);
  sub_100018144(v49, &qword_100CE4C80, &qword_100A97D08);
  v32 = *(v24 + 8);
  v32(v39, v26);
  v33 = *(v46 + 8);
  v34 = v48;
  v33(v41, v48);
  sub_100018144(v27, &qword_100CE4C80, &qword_100A97D08);
  v32(v47, v31);
  return (v33)(v28, v34);
}

double sub_1008E789C@<D0>(uint64_t a1@<X8>)
{
  result = 1.44847757e73;
  *a1 = xmmword_100A97C20;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_1008E78BC@<X0>(uint64_t a2@<X8>)
{
  sub_10022C350(&qword_100CE1068, &qword_100A91870);
  State.wrappedValue.getter();
  sub_10002D5A4();
  result = Text.init<A>(_:)();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

double sub_1008E7944@<D0>(uint64_t a1@<X8>)
{
  result = 2.43812985e-152;
  *a1 = xmmword_100A97C30;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_1008E7964@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v45 = a2;
  v3 = sub_10022C350(&qword_100CA6F40, &unk_100A97D20);
  __chkstk_darwin(v3 - 8);
  v42 = &v39 - v4;
  v5 = type metadata accessor for DebugWeatherClockView(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  v8 = sub_10022C350(&qword_100CA5528, &qword_100A2F940);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v44 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v43 = &v39 - v12;
  __chkstk_darwin(v13);
  v46 = &v39 - v14;
  __chkstk_darwin(v15);
  v41 = &v39 - v16;
  __chkstk_darwin(v17);
  v19 = &v39 - v18;
  __chkstk_darwin(v20);
  v40 = &v39 - v21;
  sub_1008E845C(a1, &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v23 = swift_allocObject();
  sub_1008E84C0(&v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22);
  Button.init(action:label:)();
  sub_1008E845C(a1, &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = swift_allocObject();
  sub_1008E84C0(&v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v22);
  v39 = v19;
  Button.init(action:label:)();
  v25 = v42;
  static ButtonRole.destructive.getter();
  v26 = type metadata accessor for ButtonRole();
  sub_10001B350(v25, 0, 1, v26);
  sub_1008E845C(a1, &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = swift_allocObject();
  sub_1008E84C0(&v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v22);
  v28 = v41;
  Button.init(role:action:label:)();
  v29 = *(v9 + 16);
  v30 = v46;
  v31 = v40;
  v29(v46, v40, v8);
  v32 = v43;
  v29(v43, v19, v8);
  v33 = v44;
  v34 = v28;
  v29(v44, v28, v8);
  v35 = v45;
  v29(v45, v30, v8);
  v36 = sub_10022C350(&qword_100CAD288, &unk_100A97D30);
  v29(&v35[*(v36 + 48)], v32, v8);
  v29(&v35[*(v36 + 64)], v33, v8);
  v37 = *(v9 + 8);
  v37(v34, v8);
  v37(v39, v8);
  v37(v31, v8);
  v37(v33, v8);
  v37(v32, v8);
  return (v37)(v46, v8);
}

uint64_t sub_1008E7E9C(uint64_t a1)
{
  v2 = type metadata accessor for MainAction(0);
  __chkstk_darwin(v2);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static WeatherClock.setDate(_:)();
  sub_1008E81E0();
  v5 = v1 + *(type metadata accessor for DebugWeatherClockView(0) + 28);
  v6 = *v5;
  v7 = *(v5 + 8);
  swift_storeEnumTagMultiPayload();
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  sub_10004F034(v4, v9, v6, v7);
  sub_100018144(v9, &unk_100CD81B0, &unk_100A3B000);
  return sub_1000547B8(v4);
}

double sub_1008E7F88@<D0>(uint64_t a1@<X8>)
{
  result = 4.4644462e217;
  *a1 = xmmword_100A97C40;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_1008E7FA8(double a1)
{
  v1 = type metadata accessor for Date();
  sub_1000037C4();
  v3 = v2;
  __chkstk_darwin(v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v12 - v8;
  static WeatherClock.date.getter();
  Date.addingTimeInterval(_:)();
  sub_1008E7E9C(v6);
  v10 = *(v3 + 8);
  v10(v6, v1);
  return (v10)(v9, v1);
}

void sub_1008E80C4(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000013;
  *(a1 + 8) = 0x8000000100AE5930;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
}

uint64_t sub_1008E80F4()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date.now.getter();
  sub_1008E7E9C(v3);
  return (*(v1 + 8))(v3, v0);
}

double sub_1008E81C0@<D0>(uint64_t a1@<X8>)
{
  result = 7.62870703e228;
  *a1 = xmmword_100A97C50;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_1008E81E0()
{
  v17 = type metadata accessor for Date.FormatStyle.TimeStyle();
  v0 = *(v17 - 8);
  __chkstk_darwin(v17);
  v2 = &v16 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Date.FormatStyle.DateStyle();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static WeatherClock.date.getter();
  static Date.FormatStyle.DateStyle.abbreviated.getter();
  static Date.FormatStyle.TimeStyle.complete.getter();
  v11 = Date.formatted(date:time:)();
  v13 = v12;
  (*(v0 + 8))(v2, v17);
  (*(v4 + 8))(v6, v3);
  (*(v8 + 8))(v10, v7);
  v14 = *(v18 + 2);
  v21 = *v18;
  v22 = v14;
  v19 = v11;
  v20 = v13;
  sub_10022C350(&qword_100CE1068, &qword_100A91870);
  return State.wrappedValue.setter();
}

uint64_t sub_1008E8440(uint64_t a1, _BYTE *a2)
{
  if ((*a2 & 1) == 0)
  {
    return static WeatherClock.resetOverrides()(a1);
  }

  return a1;
}

uint64_t sub_1008E845C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugWeatherClockView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1008E84C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugWeatherClockView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1008E8524()
{
  v0 = type metadata accessor for DebugWeatherClockView(0);
  sub_100003810(v0);
  sub_10001164C();
  return sub_1008E81E0();
}

unint64_t sub_1008E8578()
{
  result = qword_100CE4C68;
  if (!qword_100CE4C68)
  {
    v4[8] = v0;
    v4[9] = v1;
    v3 = sub_10022E824(&qword_100CE4C48, &qword_100A97CE0);
    v4[2] = sub_10022E824(&qword_100CE4C40, &qword_100A97CD8);
    v4[3] = sub_100006F64(&qword_100CE4C60, &qword_100CE4C40, &qword_100A97CD8, &protocol conformance descriptor for List<A, B>);
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = &protocol witness table for _AppearanceActionModifier;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE4C68);
  }

  return result;
}

uint64_t sub_1008E867C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CE4C80, &qword_100A97D08);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1008E870C(double a1)
{
  v2 = type metadata accessor for DebugWeatherClockView(0);
  sub_100003810(v2);
  sub_10001164C();
  return sub_1008E7FA8(a1);
}

uint64_t sub_1008E8768()
{
  v0 = type metadata accessor for DebugWeatherClockView(0);
  sub_100003810(v0);
  sub_10001164C();

  return sub_1008E80F4();
}

uint64_t sub_1008E87C0(uint64_t a1, int a2)
{
  HIDWORD(v318) = a2;
  v323 = a1;
  v343 = type metadata accessor for ViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v2);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v3);
  sub_10000E70C();
  v314 = v4;
  v5 = sub_1000038CC();
  v345 = type metadata accessor for TimeState(v5);
  sub_1000037E8();
  __chkstk_darwin(v6);
  sub_100003848();
  v338 = v7;
  sub_10000386C();
  __chkstk_darwin(v8);
  sub_10000E70C();
  v337 = v9;
  v10 = sub_1000038CC();
  v346 = type metadata accessor for NotificationsOptInState(v10);
  sub_1000037E8();
  __chkstk_darwin(v11);
  sub_100003848();
  v336 = v12;
  sub_10000386C();
  __chkstk_darwin(v13);
  sub_10000E70C();
  v335 = v14;
  v15 = sub_1000038CC();
  v344 = type metadata accessor for NotificationsState(v15);
  sub_1000037E8();
  __chkstk_darwin(v16);
  sub_100003848();
  v334 = v17;
  sub_10000386C();
  __chkstk_darwin(v18);
  sub_10000E70C();
  v333 = v19;
  v20 = sub_1000038CC();
  v340 = type metadata accessor for LocationsState(v20);
  sub_1000037E8();
  __chkstk_darwin(v21);
  sub_100003848();
  v332 = v22;
  sub_10000386C();
  __chkstk_darwin(v23);
  sub_10000E70C();
  v331 = v24;
  v25 = sub_1000038CC();
  v342 = type metadata accessor for EnvironmentState(v25);
  sub_1000037E8();
  __chkstk_darwin(v26);
  sub_100003848();
  v330 = v27;
  sub_10000386C();
  __chkstk_darwin(v28);
  sub_10000E70C();
  v329 = v29;
  v30 = sub_1000038CC();
  v341 = type metadata accessor for AppConfigurationState(v30);
  sub_1000037E8();
  __chkstk_darwin(v31);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v32);
  sub_10000E70C();
  v327 = v33;
  v34 = sub_1000038CC();
  v319 = type metadata accessor for ModalViewState(v34);
  sub_1000037E8();
  __chkstk_darwin(v35);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v36);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v37);
  sub_100003878();
  v339 = v38;
  sub_10000386C();
  __chkstk_darwin(v39);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v40);
  sub_10000E70C();
  sub_100003990(v41);
  v42 = sub_10022C350(&qword_100CA65E8, &unk_100A31410);
  v43 = sub_100003810(v42);
  __chkstk_darwin(v43);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v44);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v45);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v46);
  sub_10000E70C();
  sub_100003990(v47);
  v48 = sub_10022C350(&qword_100CA6610, &unk_100A32610);
  v49 = sub_100003810(v48);
  __chkstk_darwin(v49);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v50);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v51);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v52);
  sub_10000E70C();
  sub_100003990(v53);
  v54 = sub_10022C350(&qword_100CA6618, &unk_100A31440);
  v55 = sub_100003810(v54);
  __chkstk_darwin(v55);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v56);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v57);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v58);
  sub_10000E70C();
  sub_100003990(v59);
  v60 = sub_10022C350(&qword_100CA6620, &unk_100A32620);
  v61 = sub_100003810(v60);
  __chkstk_darwin(v61);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v62);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v63);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v64);
  v66 = &v296 - v65;
  v67 = sub_10022C350(&qword_100CA6628, &unk_100A31450);
  v68 = sub_100003810(v67);
  __chkstk_darwin(v68);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v69);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v70);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v71);
  v73 = &v296 - v72;
  v74 = sub_10022C350(&qword_100CA6630, &unk_100A32630);
  v75 = sub_100003810(v74);
  __chkstk_darwin(v75);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v76);
  v78 = &v296 - v77;
  __chkstk_darwin(v79);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v80);
  v82 = &v296 - v81;
  v83 = sub_10022C350(&qword_100CA6638, &unk_100A31460);
  v84 = sub_100003810(v83);
  __chkstk_darwin(v84);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v85);
  v87 = &v296 - v86;
  __chkstk_darwin(v88);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v89);
  v91 = &v296 - v90;
  v92 = sub_10022C350(&qword_100CA6640, qword_100A32640);
  v93 = sub_100003810(v92);
  __chkstk_darwin(v93);
  v95 = &v296 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v96);
  v98 = &v296 - v97;
  __chkstk_darwin(v99);
  v101 = &v296 - v100;
  __chkstk_darwin(v102);
  v104 = &v296 - v103;
  if ((v318 & 0x100000000) != 0)
  {
    sub_100003934();
    v105 = v341;
    sub_10001B350(v106, v107, v108, v341);
    v333 = v87;
    sub_100003934();
    sub_10001B350(v109, v110, v111, v342);
    sub_100003934();
    v112 = v340;
    sub_10001B350(v113, v114, v115, v340);
    v116 = sub_100003BCC(v347);
    sub_10001B350(v116, v117, v118, v344);
    v119 = sub_100003BCC(&v348);
    sub_10001B350(v119, v120, v121, v346);
    v122 = sub_100003BCC(&v350);
    sub_10001B350(v122, v123, v124, v345);
    v125 = sub_100003BCC(&v351);
    sub_10001B350(v125, v126, v127, v343);
    v128 = v301;
    v129 = v319;
    swift_storeEnumTagMultiPayload();
    sub_10001B350(v128, 0, 1, v129);
    sub_100069C20();
    v131 = *(v130 - 256);
    v133 = v305;
    sub_1000BCAE0(v131 + v132, v305, v134);
    v135 = v128;
    v136 = v302;
    sub_1002AB08C(v135, v302, &qword_100CA65E8, &unk_100A31410);
    sub_1000038B4(v136, 1, v129);
    v331 = v78;
    if (v137)
    {
      sub_1000180EC(v136, &qword_100CA65E8, &unk_100A31410);
    }

    else
    {
      sub_10037B08C(v133);
      sub_100005518();
      sub_100073030(v136, v133, v170);
    }

    sub_100005518();
    sub_100073030(v133, v326, v171);
    v172 = *(v131 + 16);
    LODWORD(v335) = *(v131 + 24);
    sub_1002AB08C(v98, v95, &qword_100CA6640, qword_100A32640);
    v173 = sub_100007FC4();
    sub_1000038B4(v173, v174, v105);
    v175 = v333;
    if (v137)
    {
      sub_100031910();
      sub_1000BCAE0(v131 + v176, v328, v177);
      v178 = sub_100007FC4();
      v180 = sub_100024D10(v178, v179, v105);

      v199 = v307;
      v200 = v298;
      if (v180 != 1)
      {
        sub_1000180EC(v95, &qword_100CA6640, qword_100A32640);
      }
    }

    else
    {
      sub_10000E7D4();
      sub_100073030(v95, v328, v198);

      v199 = v307;
      v200 = v298;
    }

    sub_1002AB08C(v175, v200, &qword_100CA6638, &unk_100A31460);
    sub_1000038B4(v200, 1, v342);
    v337 = v172;
    if (v137)
    {
      sub_100037358();
      v201 = sub_10003CA34();
      sub_1000BCAE0(v201, v330, v202);
      sub_10000394C(v200);
      v208 = v343;
      v209 = v344;
      v210 = v304;
      if (!v137)
      {
        sub_1000180EC(v200, &qword_100CA6638, &unk_100A31460);
      }
    }

    else
    {
      sub_100003BB4();
      sub_100073030(v200, v330, v207);
      v208 = v343;
      v209 = v344;
      v210 = v304;
    }

    sub_1002AB08C(v331, v210, &qword_100CA6630, &unk_100A32630);
    v211 = sub_100007FC4();
    sub_1000038B4(v211, v212, v112);
    v213 = v315;
    if (v137)
    {
      v214 = sub_1000170F0(OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations);
      sub_1000BCAE0(v214, v332, v215);
      v216 = sub_100007FC4();
      sub_1000038B4(v216, v217, v112);
      v230 = v345;
      v231 = v309;
      if (!v137)
      {
        sub_1000180EC(v210, &qword_100CA6630, &unk_100A32630);
      }
    }

    else
    {
      sub_10000E7BC();
      sub_100073030(v210, v332, v229);
      v230 = v345;
      v231 = v309;
    }

    sub_1002AB08C(v317, v199, &qword_100CA6628, &unk_100A31450);
    v232 = sub_1000162B0();
    sub_1000038B4(v232, v233, v209);
    if (v137)
    {
      v234 = sub_100024C04(OBJC_IVAR____TtCV7Weather9MainState8_Storage_notifications);
      sub_1000BCAE0(v234, v334, v235);
      v236 = sub_1000162B0();
      sub_1000038B4(v236, v237, v209);
      v251 = v311;
      if (!v137)
      {
        sub_1000180EC(v199, &qword_100CA6628, &unk_100A31450);
      }
    }

    else
    {
      v249 = sub_100018008();
      sub_100073030(v249, v334, v250);
      v251 = v311;
    }

    sub_1002AB08C(v320, v231, &qword_100CA6620, &unk_100A32620);
    sub_10000394C(v231);
    if (v137)
    {
      v252 = sub_100013E90(OBJC_IVAR____TtCV7Weather9MainState8_Storage_notificationsOptIn);
      sub_1000BCAE0(v252, v336, v253);
      sub_10000394C(v231);
      v261 = v324;
      if (!v137)
      {
        sub_1000180EC(v231, &qword_100CA6620, &unk_100A32620);
      }
    }

    else
    {
      v259 = sub_10004EB54();
      sub_100073030(v259, v336, v260);
      v261 = v324;
    }

    sub_1002AB08C(v322, v251, &qword_100CA6618, &unk_100A31440);
    sub_1000038B4(v251, 1, v230);
    if (v137)
    {
      v262 = sub_100049ECC(OBJC_IVAR____TtCV7Weather9MainState8_Storage_time);
      sub_1000BCAE0(v262, v338, v263);
      sub_1000038B4(v251, 1, v230);
      if (!v137)
      {
        sub_1000180EC(v251, &qword_100CA6618, &unk_100A31440);
      }
    }

    else
    {
      sub_100003B9C();
      sub_100073030(v251, v338, v270);
    }

    v271 = v313;
    sub_1002AB08C(v261, v313, &qword_100CA6610, &unk_100A32610);
    sub_1000038B4(v271, 1, v208);
    if (v137)
    {
      v272 = sub_100075260(OBJC_IVAR____TtCV7Weather9MainState8_Storage_view);
      sub_1000BCAE0(v272, v213, v273);
      sub_1000038B4(v271, 1, v208);
      if (!v137)
      {
        sub_1000180EC(v271, &qword_100CA6610, &unk_100A32610);
      }
    }

    else
    {
      sub_100003B84();
      sub_100073030(v271, v213, v278);
    }

    sub_100005518();
    v279 = v339;
    sub_100073030(v326, v339, v280);
    sub_1000306BC();
    type metadata accessor for MainState._Storage(0);
    swift_allocObject();
    sub_1000118B8();
    v296 = v213;
    v297 = v279;
    v282 = v336;
    v281 = v337;
    v283 = v335;
    v284 = v328;
    v285 = v330;
    v286 = v332;
    v287 = v334;
    v288 = v338;
  }

  else
  {
    sub_100003934();
    sub_10001B350(v138, v139, v140, v341);
    v330 = v91;
    sub_100003934();
    sub_10001B350(v141, v142, v143, v342);
    sub_100003934();
    sub_10001B350(v144, v145, v146, v340);
    v332 = v73;
    sub_100003934();
    sub_10001B350(v147, v148, v149, v344);
    v338 = v66;
    sub_100003934();
    sub_10001B350(v150, v151, v152, v346);
    v153 = sub_100003BCC(&v349);
    sub_10001B350(v153, v154, v155, v345);
    v156 = v299;
    sub_100003934();
    sub_10001B350(v157, v158, v159, v343);
    v160 = v300;
    v161 = v319;
    swift_storeEnumTagMultiPayload();
    sub_10001B350(v160, 0, 1, v161);
    sub_100069C20();
    v163 = *(v162 - 256);
    sub_1000BCAE0(v163 + v164, *(&v316 + 1), v165);
    v166 = v160;
    v167 = v316;
    sub_1002AB08C(v166, v316, &qword_100CA65E8, &unk_100A31410);
    sub_10000394C(v167);
    v168 = v82;
    v169 = v156;
    if (v137)
    {
      sub_1000180EC(v316, &qword_100CA65E8, &unk_100A31410);
    }

    else
    {
      v181 = *(&v316 + 1);
      sub_10037B08C(*(&v316 + 1));
      sub_100005518();
      sub_100073030(v316, v181, v182);
    }

    v183 = v308;
    v184 = v297;
    sub_100005518();
    sub_100073030(v185, v325, v186);
    v187 = *(v163 + 16);
    LODWORD(v334) = *(v163 + 24);
    sub_1002AB08C(v104, v101, &qword_100CA6640, qword_100A32640);
    v188 = sub_1000201BC();
    v189 = v341;
    sub_1000038B4(v188, v190, v341);
    v191 = v340;
    v192 = v332;
    v336 = v187;
    if (v137)
    {
      sub_100031910();
      sub_1000BCAE0(v163 + v193, v327, v194);
      v195 = sub_1000201BC();
      v197 = sub_100024D10(v195, v196, v189);

      if (v197 != 1)
      {
        sub_1000180EC(v101, &qword_100CA6640, qword_100A32640);
      }
    }

    else
    {
      sub_10000E7D4();
      sub_100073030(v101, v327, v203);
    }

    sub_1002AB08C(v330, v184, &qword_100CA6638, &unk_100A31460);
    sub_10000394C(v184);
    if (v137)
    {
      sub_100037358();
      v204 = sub_10003CA34();
      sub_1000BCAE0(v204, v329, v205);
      sub_10000394C(v184);
      v219 = v314;
      v220 = v310;
      v206 = v184;
      v221 = v321;
      v222 = v303;
      if (!v137)
      {
        sub_1000180EC(v206, &qword_100CA6638, &unk_100A31460);
      }
    }

    else
    {
      sub_100003BB4();
      sub_100073030(v184, v329, v218);
      v219 = v314;
      v220 = v310;
      v221 = v321;
      v222 = v303;
    }

    sub_1002AB08C(v168, v222, &qword_100CA6630, &unk_100A32630);
    v223 = sub_1000201BC();
    sub_1000038B4(v223, v224, v191);
    if (v137)
    {
      v225 = sub_1000170F0(OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations);
      sub_1000BCAE0(v225, v331, v226);
      v227 = sub_1000201BC();
      sub_1000038B4(v227, v228, v191);
      v239 = v169;
      v240 = v306;
      if (!v137)
      {
        sub_1000180EC(v222, &qword_100CA6630, &unk_100A32630);
      }
    }

    else
    {
      sub_10000E7BC();
      sub_100073030(v222, v331, v238);
      v239 = v169;
      v240 = v306;
    }

    sub_1002AB08C(v192, v240, &qword_100CA6628, &unk_100A31450);
    v241 = sub_1000162B0();
    v242 = v344;
    sub_1000038B4(v241, v243, v344);
    v244 = v338;
    if (v137)
    {
      v245 = sub_100024C04(OBJC_IVAR____TtCV7Weather9MainState8_Storage_notifications);
      sub_1000BCAE0(v245, v333, v246);
      v247 = sub_1000162B0();
      sub_1000038B4(v247, v248, v242);
      if (!v137)
      {
        sub_1000180EC(v240, &qword_100CA6628, &unk_100A31450);
      }
    }

    else
    {
      v254 = sub_100018008();
      sub_100073030(v254, v333, v255);
    }

    sub_1002AB08C(v244, v183, &qword_100CA6620, &unk_100A32620);
    v256 = v346;
    sub_1000038B4(v183, 1, v346);
    if (v137)
    {
      v257 = sub_100013E90(OBJC_IVAR____TtCV7Weather9MainState8_Storage_notificationsOptIn);
      sub_1000BCAE0(v257, v335, v258);
      sub_1000038B4(v183, 1, v256);
      v266 = v312;
      if (!v137)
      {
        sub_1000180EC(v183, &qword_100CA6620, &unk_100A32620);
      }
    }

    else
    {
      v264 = sub_10004EB54();
      sub_100073030(v264, v335, v265);
      v266 = v312;
    }

    sub_1002AB08C(v221, v220, &qword_100CA6618, &unk_100A31440);
    v267 = v345;
    sub_1000038B4(v220, 1, v345);
    if (v137)
    {
      v268 = sub_100049ECC(OBJC_IVAR____TtCV7Weather9MainState8_Storage_time);
      sub_1000BCAE0(v268, v337, v269);
      sub_1000038B4(v220, 1, v267);
      if (!v137)
      {
        sub_1000180EC(v220, &qword_100CA6618, &unk_100A31440);
      }
    }

    else
    {
      sub_100003B9C();
      sub_100073030(v220, v337, v274);
    }

    sub_1002AB08C(v239, v266, &qword_100CA6610, &unk_100A32610);
    v275 = v343;
    sub_1000038B4(v266, 1, v343);
    if (v137)
    {
      v276 = sub_100075260(OBJC_IVAR____TtCV7Weather9MainState8_Storage_view);
      sub_1000BCAE0(v276, v219, v277);
      sub_1000038B4(v266, 1, v275);
      v290 = v219;
      if (!v137)
      {
        sub_1000180EC(v266, &qword_100CA6610, &unk_100A32610);
      }
    }

    else
    {
      sub_100003B84();
      sub_100073030(v266, v219, v289);
      v290 = v219;
    }

    sub_100005518();
    v291 = v339;
    sub_100073030(v325, v339, v292);
    sub_1000306BC();
    type metadata accessor for MainState._Storage(0);
    swift_allocObject();
    sub_1000118B8();
    v296 = v290;
    v297 = v291;
    v282 = v335;
    v281 = v336;
    v283 = v334;
    v284 = v327;
    v285 = v329;
    v286 = v331;
    v287 = v333;
    v288 = v337;
  }

  sub_10003E038(v281, v283, v284, v285, v286, v287, v282, v288, v296, v297, v298, v299, v300, v301, v302, v303, v304, v305, v306, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316, v317, v318, v319, v320, v321, v322);
  v294 = v293;

  return v294;
}

uint64_t sub_1008E9CFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1008E9D94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, uint64_t, uint64_t, uint64_t, void (*)(void, void))@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v363 = a6;
  v358 = a4;
  v362 = a3;
  v357 = a2;
  v339 = a1;
  v320 = a7;
  v8 = sub_10022C350(&qword_100CA5008, &unk_100A2F7B0);
  __chkstk_darwin(v8 - 8);
  v299 = v296 - v9;
  v297 = type metadata accessor for LocationComponentContainerViewModel(0);
  __chkstk_darwin(v297);
  sub_100003848();
  v318 = v10;
  sub_10000386C();
  __chkstk_darwin(v11);
  v13 = v296 - v12;
  __chkstk_darwin(v14);
  v16 = v296 - v15;
  __chkstk_darwin(v17);
  sub_100003878();
  v315 = v18;
  sub_10000386C();
  __chkstk_darwin(v19);
  sub_100003878();
  v314 = v20;
  sub_10000386C();
  __chkstk_darwin(v21);
  sub_100003878();
  v312 = v22;
  sub_10000386C();
  __chkstk_darwin(v23);
  sub_100003878();
  v310 = v24;
  sub_10000386C();
  __chkstk_darwin(v25);
  sub_100003878();
  v308 = v26;
  sub_10000386C();
  __chkstk_darwin(v27);
  sub_100003878();
  v306 = v28;
  sub_10000386C();
  __chkstk_darwin(v29);
  sub_100003878();
  v304 = v30;
  sub_10000386C();
  __chkstk_darwin(v31);
  sub_100003878();
  v302 = v32;
  sub_10000386C();
  __chkstk_darwin(v33);
  sub_100003878();
  v300 = v34;
  sub_10000386C();
  __chkstk_darwin(v35);
  sub_100003878();
  v296[0] = v36;
  sub_10000386C();
  __chkstk_darwin(v37);
  v39 = v296 - v38;
  v40 = *(a5 - 8);
  __chkstk_darwin(v41);
  sub_100003848();
  v319 = v42;
  sub_10000386C();
  __chkstk_darwin(v43);
  sub_100003878();
  v337 = v44;
  sub_10000386C();
  __chkstk_darwin(v45);
  sub_100003878();
  v336 = v46;
  sub_10000386C();
  __chkstk_darwin(v47);
  sub_100003878();
  v335 = v48;
  sub_10000386C();
  __chkstk_darwin(v49);
  sub_100003878();
  v334 = v50;
  sub_10000386C();
  __chkstk_darwin(v51);
  sub_100003878();
  v333 = v52;
  sub_10000386C();
  __chkstk_darwin(v53);
  sub_100003878();
  v332 = v54;
  sub_10000386C();
  __chkstk_darwin(v55);
  sub_100003878();
  v331 = v56;
  sub_10000386C();
  __chkstk_darwin(v57);
  sub_100003878();
  v330 = v58;
  sub_10000386C();
  __chkstk_darwin(v59);
  sub_100003878();
  v329 = v60;
  sub_10000386C();
  __chkstk_darwin(v61);
  sub_100003878();
  v316 = v62;
  sub_10000386C();
  __chkstk_darwin(v63);
  sub_100003878();
  v328 = v64;
  sub_10000386C();
  __chkstk_darwin(v65);
  sub_100003878();
  v313 = v66;
  sub_10000386C();
  __chkstk_darwin(v67);
  v69 = v296 - v68;
  __chkstk_darwin(v70);
  sub_100003878();
  v311 = v71;
  sub_10000386C();
  __chkstk_darwin(v72);
  sub_100003878();
  v353 = v73;
  sub_10000386C();
  __chkstk_darwin(v74);
  sub_100003878();
  v309 = v75;
  sub_10000386C();
  __chkstk_darwin(v76);
  sub_100003878();
  v352 = v77;
  sub_10000386C();
  __chkstk_darwin(v78);
  sub_100003878();
  v307 = v79;
  sub_10000386C();
  __chkstk_darwin(v80);
  sub_100003878();
  v351 = v81;
  sub_10000386C();
  __chkstk_darwin(v82);
  sub_100003878();
  v305 = v83;
  sub_10000386C();
  __chkstk_darwin(v84);
  sub_100003878();
  v350 = v85;
  sub_10000386C();
  __chkstk_darwin(v86);
  sub_100003878();
  v303 = v87;
  sub_10000386C();
  __chkstk_darwin(v88);
  sub_100003878();
  v349 = v89;
  sub_10000386C();
  __chkstk_darwin(v90);
  sub_100003878();
  v301 = v91;
  sub_10000386C();
  __chkstk_darwin(v92);
  sub_100003878();
  v348 = v93;
  sub_10000386C();
  __chkstk_darwin(v94);
  sub_100003878();
  v298 = v95;
  sub_10000386C();
  __chkstk_darwin(v96);
  sub_100003878();
  v347 = v97;
  sub_10000386C();
  __chkstk_darwin(v98);
  sub_100003878();
  v296[3] = v99;
  sub_10000386C();
  __chkstk_darwin(v100);
  sub_100003878();
  v346 = v101;
  sub_10000386C();
  __chkstk_darwin(v102);
  sub_100003878();
  v296[2] = v103;
  sub_10000386C();
  __chkstk_darwin(v104);
  sub_100003878();
  v345 = v105;
  sub_10000386C();
  __chkstk_darwin(v106);
  sub_100003878();
  v296[1] = v107;
  sub_10000386C();
  __chkstk_darwin(v108);
  sub_100003878();
  v344 = v109;
  sub_10000386C();
  __chkstk_darwin(v110);
  v112 = v296 - v111;
  __chkstk_darwin(v113);
  v115 = v296 - v114;
  v361 = type metadata accessor for Optional();
  v322 = *(v361 - 8);
  __chkstk_darwin(v361);
  sub_100003848();
  v326 = v116;
  sub_10000386C();
  __chkstk_darwin(v117);
  sub_100003878();
  v325 = v118;
  sub_10000386C();
  __chkstk_darwin(v119);
  sub_100003878();
  v324 = v120;
  sub_10000386C();
  __chkstk_darwin(v121);
  sub_100003878();
  v343 = v122;
  sub_10000386C();
  __chkstk_darwin(v123);
  sub_100003878();
  v342 = v124;
  sub_10000386C();
  __chkstk_darwin(v125);
  sub_100003878();
  v341 = v126;
  sub_10000386C();
  __chkstk_darwin(v127);
  v129 = v296 - v128;
  __chkstk_darwin(v130);
  v340 = v296 - v131;
  sub_100566BE4(v357, v383);
  v327 = v40;
  v356 = v112;
  v360 = v115;
  v323 = v13;
  v321 = v39;
  v354 = v69;
  v317 = v16;
  if (v384)
  {
    v132 = 1;
  }

  else
  {
    v359 = v383[3];
    v133 = v383[2];
    v134 = v383[1];
    v135 = v383[0];
    sub_1001B3B30(v339 + OBJC_IVAR____TtCV7Weather20NhpMinorAlertContent8_Storage_nextHourPrecipitation, v39);
    v362(v39, v135, v134, v133, v359);
    sub_1001B4354(v39);
    v136 = sub_100007EE8();
    v137 = v363;
    sub_1000833D8(v136, v138, v363);
    v139 = *(v40 + 8);
    v140 = sub_100007EE8();
    v139(v140);
    v141 = sub_100005474();
    sub_1000833D8(v141, v142, v137);
    v143 = sub_100005474();
    v139(v143);
    (*(v40 + 32))(v129, v112, a5);
    v132 = 0;
  }

  v144 = v129;
  v145 = 1;
  sub_100017568(v129, v132);
  sub_100007F30();
  sub_1003E7FD4(v146, v147);
  v148 = v322 + 8;
  v359 = *(v322 + 8);
  v359(v129, v361);
  sub_100566A24(v357, v385);
  v355 = v129;
  v338 = v148;
  if ((v385[32] & 1) == 0)
  {
    v149 = v321;
    sub_1001B3B30(v339 + OBJC_IVAR____TtCV7Weather20NhpMinorAlertContent8_Storage_severeAlert, v321);
    v150 = v356;
    sub_10004E364();
    v151();
    sub_1001B4354(v149);
    v152 = sub_100007EE8();
    v153 = v363;
    sub_1000833D8(v152, v154, v363);
    v155 = v327;
    v156 = *(v327 + 8);
    v157 = sub_100007EE8();
    v156(v157);
    v158 = sub_100005480();
    sub_1000833D8(v158, v159, v153);
    v160 = sub_100005480();
    v156(v160);
    v144 = v355;
    (*(v155 + 32))(v355, v150, a5);
    v145 = 0;
  }

  v161 = 1;
  sub_100017568(v144, v145);
  sub_100007F30();
  sub_1003E7FD4(v162, v163);
  v164 = sub_100049604();
  v165(v164);
  v166 = v357;
  sub_100566A40(v357, v386);
  v167 = v321;
  if ((v386[32] & 1) == 0)
  {
    sub_1001B3B30(v339 + OBJC_IVAR____TtCV7Weather20NhpMinorAlertContent8_Storage_airQuality, v321);
    v166 = v357;
    sub_10004E364();
    v168();
    sub_1001B4354(v167);
    v169 = sub_100003A80();
    v170 = v363;
    sub_1000833D8(v169, v171, v363);
    v144 = *(v327 + 8);
    v172 = sub_100003A80();
    (v144)(v172);
    v173 = sub_100005474();
    sub_1000833D8(v173, v174, v170);
    v175 = sub_100005474();
    (v144)(v175);
    v176 = sub_1000280F8();
    v177(v176);
    v161 = 0;
  }

  sub_100017568(v144, v161);
  sub_100007F30();
  sub_1003E7FD4(v178, v179);
  v180 = sub_100049604();
  v181(v180);
  v182 = OBJC_IVAR____TtCV7Weather20NhpMinorAlertContent8_Storage_map;
  v183 = v339;
  swift_beginAccess();
  v184 = v183 + v182;
  v185 = v299;
  sub_10026E174(v184, v299);
  if (sub_100024D10(v185, 1, v297) == 1)
  {
    sub_10026E1E4(v185);
    v186 = 1;
    v187 = v327;
  }

  else
  {
    v188 = v185;
    v189 = v296[0];
    sub_10026E24C(v188, v296[0]);
    sub_100566A5C(v166, v387);
    v187 = v327;
    if (v388)
    {
      sub_1001B4354(v189);
      v186 = 1;
    }

    else
    {
      v362(v189, v387[0], v387[1], v387[2], v387[3]);
      sub_1001B4354(v189);
      v190 = sub_100003A80();
      v191 = v363;
      sub_1000833D8(v190, v192, v363);
      v144 = *(v187 + 8);
      v193 = sub_100003A80();
      (v144)(v193);
      sub_1000833D8(v360, a5, v191);
      (v144)(v360, a5);
      v194 = sub_1000280F8();
      v195(v194);
      v186 = 0;
    }
  }

  v196 = v300;
  sub_100017568(v144, v186);
  sub_100007F30();
  sub_1003E7FD4(v197, v198);
  v199 = sub_100049604();
  v200(v199);
  sub_1001B3B30(*(v183 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_hourlyForecast, v196);
  sub_100566A78(v166, v389);
  if (v390)
  {
    goto LABEL_31;
  }

  v362(v196, v389[0], v389[1], v389[2], v389[3]);
  sub_1001B4354(v196);
  sub_100007F30();
  sub_1000833D8(v201, v202, v203);
  v204 = *(v187 + 8);
  v205 = sub_100003A80();
  v204(v205);
  v206 = v302;
  sub_1001B3B30(*(v183 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_dailyForecast, v302);
  sub_100566A94(v166, v391);
  if (v391[32])
  {
    goto LABEL_31;
  }

  v207 = sub_100014130();
  v208(v207);
  sub_1001B4354(v206);
  v209 = sub_100005474();
  sub_1000833D8(v209, v210, v363);
  v211 = sub_100005474();
  v204(v211);
  v212 = v304;
  sub_1001B3B30(*(v183 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_uvIndex, v304);
  sub_100566AB0(v166, v392);
  if (v392[32])
  {
    goto LABEL_34;
  }

  v213 = sub_100014130();
  v214(v213);
  sub_1001B4354(v212);
  v215 = sub_100005474();
  sub_1000833D8(v215, v216, v363);
  v217 = sub_100005474();
  v204(v217);
  v218 = v306;
  sub_1001B3B30(*(v183 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_sunriseSunset, v306);
  sub_100566ACC(v166, v393);
  if (v393[32])
  {
    goto LABEL_31;
  }

  v219 = sub_10002279C();
  v220(v219);
  sub_1001B4354(v218);
  sub_100007F30();
  sub_1000833D8(v221, v222, v223);
  v224 = sub_100003A80();
  v204(v224);
  v225 = v308;
  sub_1001B3B30(*(v183 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_wind, v308);
  sub_100566AE8(v166, v394);
  if (v394[32])
  {
    goto LABEL_34;
  }

  v226 = sub_10002279C();
  v227(v226);
  sub_1001B4354(v225);
  sub_100007F30();
  sub_1000833D8(v228, v229, v230);
  v231 = sub_100003A80();
  v204(v231);
  v232 = v310;
  sub_1001B3B30(*(v183 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_precipitationTotal, v310);
  sub_100566B04(v166, v395);
  if (v395[32])
  {
    goto LABEL_31;
  }

  v233 = sub_10002279C();
  v234(v233);
  sub_1001B4354(v232);
  sub_100007F30();
  sub_1000833D8(v235, v236, v237);
  v238 = sub_100003A80();
  v204(v238);
  v239 = v312;
  sub_1001B3B30(*(v183 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_feelsLike, v312);
  sub_100566B20(v166, v396);
  if (v396[32])
  {
    goto LABEL_31;
  }

  v240 = sub_100014130();
  v241(v240);
  sub_1001B4354(v239);
  v242 = sub_100005474();
  sub_1000833D8(v242, v243, v363);
  v244 = sub_100005474();
  v204(v244);
  v245 = v314;
  sub_1001B3B30(*(v183 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_humidity, v314);
  sub_100566B3C(v166, v397);
  if (v397[32])
  {
LABEL_34:
    sub_100013470();
    goto LABEL_35;
  }

  v246 = sub_100014130();
  v247(v246);
  sub_1001B4354(v245);
  v248 = sub_100005474();
  sub_1000833D8(v248, v249, v363);
  v250 = sub_100005474();
  v204(v250);
  v251 = v315;
  sub_1001B3B30(*(v183 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_visibility, v315);
  sub_100566B58(v166, &v398);
  if ((v399 & 1) == 0)
  {
    v252 = sub_10002279C();
    v253(v252);
    sub_1001B4354(v251);
    sub_100007F30();
    sub_1000833D8(v254, v255, v256);
    v257 = sub_100003A80();
    v204(v257);
    v258 = v317;
    sub_1001B3B30(*(v183 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_pressure, v317);
    sub_100566B74(v166, &v400);
    if ((v401 & 1) == 0)
    {
      v259 = sub_100014130();
      v260(v259);
      sub_1001B4354(v258);
      v261 = sub_100005474();
      sub_1000833D8(v261, v262, v363);
      v263 = sub_100005474();
      v204(v263);
      sub_1001B3B30(*(v183 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_moon, v323);
      sub_100566B90(v166, v402);
      if ((v403 & 1) == 0)
      {
        v264 = v323;
        v362(v323, v402[0], v402[1], v402[2], v402[3]);
        sub_1001B4354(v264);
        v265 = sub_100005474();
        sub_1000833D8(v265, v266, v363);
        v267 = sub_100005474();
        v204(v267);
        v268 = v318;
        sub_1001B3B30(*(v183 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_averages, v318);
        sub_100566BAC(v166, v404);
        if ((v405 & 1) == 0)
        {
          v362(v268, v404[0], v404[1], v404[2], v404[3]);
          sub_1001B4354(v268);
          v269 = sub_100005480();
          v270 = v363;
          sub_1000833D8(v269, v271, v363);
          v272 = sub_100005480();
          v204(v272);
          v273 = *(v322 + 16);
          v274 = v355;
          v275 = v361;
          v273(v355, v340, v361);
          v382[0] = v274;
          v276 = v324;
          v273(v324, v341, v275);
          v382[1] = v276;
          v277 = v325;
          v273(v325, v342, v275);
          v382[2] = v277;
          v278 = v326;
          v273(v326, v343, v275);
          v382[3] = v278;
          v279 = *(v187 + 16);
          v280 = v360;
          v279(v360, v344, a5);
          v382[4] = v280;
          v281 = v356;
          v279(v356, v345, a5);
          v382[5] = v281;
          v282 = v329;
          v279(v329, v346, a5);
          v382[6] = v282;
          v283 = v330;
          v279(v330, v347, a5);
          v382[7] = v283;
          v284 = v331;
          v279(v331, v348, a5);
          v382[8] = v284;
          v285 = v332;
          v279(v332, v349, a5);
          v382[9] = v285;
          v286 = v333;
          v279(v333, v350, a5);
          v382[10] = v286;
          v287 = v334;
          v279(v334, v351, a5);
          v382[11] = v287;
          v288 = v335;
          v279(v335, v352, a5);
          v382[12] = v288;
          v289 = v336;
          v279(v336, v353, a5);
          v382[13] = v289;
          v290 = v337;
          v279(v337, v354, a5);
          v382[14] = v290;
          v291 = v319;
          v279(v319, v328, a5);
          v382[15] = v291;
          v381[0] = v275;
          v381[1] = v275;
          v381[2] = v275;
          v381[3] = v275;
          v381[4] = a5;
          v381[5] = a5;
          v381[6] = a5;
          v381[7] = a5;
          v381[8] = a5;
          v381[9] = a5;
          v381[10] = a5;
          v381[11] = a5;
          v381[12] = a5;
          v381[13] = a5;
          v381[14] = a5;
          v381[15] = a5;
          v364 = v270;
          WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v275, &v364);
          v366 = WitnessTable;
          v367 = WitnessTable;
          v368 = WitnessTable;
          v369 = v270;
          v370 = v270;
          v371 = v270;
          v372 = v270;
          v373 = v270;
          v374 = v270;
          v375 = v270;
          v376 = v270;
          v377 = v270;
          v378 = v270;
          v379 = v270;
          v380 = v270;
          sub_10012E24C(v382, 16, v381);
          v292 = sub_100005480();
          v204(v292);
          (v204)(v354, a5);
          (v204)(v353, a5);
          (v204)(v352, a5);
          (v204)(v351, a5);
          (v204)(v350, a5);
          (v204)(v349, a5);
          (v204)(v348, a5);
          (v204)(v347, a5);
          (v204)(v346, a5);
          (v204)(v345, a5);
          (v204)(v344, a5);
          v293 = v359;
          v359(v343, v275);
          v293(v342, v275);
          v293(v341, v275);
          v293(v340, v275);
          v294 = sub_100007EE8();
          v204(v294);
          (v204)(v337, a5);
          (v204)(v336, a5);
          (v204)(v335, a5);
          (v204)(v334, a5);
          (v204)(v333, a5);
          (v204)(v332, a5);
          (v204)(v331, a5);
          (v204)(v330, a5);
          (v204)(v329, a5);
          (v204)(v356, a5);
          (v204)(v360, a5);
          v293(v326, v275);
          v293(v325, v275);
          v293(v324, v275);
          return (v293)(v355, v275);
        }
      }
    }

    goto LABEL_34;
  }

LABEL_31:
  sub_10001E640();
LABEL_35:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1008EB720(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1008EB7B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, uint64_t, uint64_t, uint64_t, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v339 = a6;
  v337 = a3;
  v296 = a7;
  v11 = sub_10022C350(&qword_100CA5008, &unk_100A2F7B0);
  __chkstk_darwin(v11 - 8);
  v278 = &v271 - v12;
  v276 = type metadata accessor for LocationComponentContainerViewModel(0);
  __chkstk_darwin(v276);
  sub_100003848();
  v305 = v13;
  sub_10000386C();
  __chkstk_darwin(v14);
  sub_100003878();
  v294 = v15;
  sub_10000386C();
  __chkstk_darwin(v16);
  v18 = &v271 - v17;
  __chkstk_darwin(v19);
  sub_100003878();
  v291 = v20;
  sub_10000386C();
  __chkstk_darwin(v21);
  sub_100003878();
  v290 = v22;
  sub_10000386C();
  __chkstk_darwin(v23);
  sub_100003878();
  v288 = v24;
  sub_10000386C();
  __chkstk_darwin(v25);
  sub_100003878();
  v301 = v26;
  sub_10000386C();
  __chkstk_darwin(v27);
  sub_100003878();
  v285 = v28;
  sub_10000386C();
  __chkstk_darwin(v29);
  sub_100003878();
  v300 = v30;
  sub_10000386C();
  __chkstk_darwin(v31);
  sub_100003878();
  v282 = v32;
  sub_10000386C();
  __chkstk_darwin(v33);
  sub_100003878();
  v297 = v34;
  sub_10000386C();
  __chkstk_darwin(v35);
  sub_100003878();
  v279 = v36;
  sub_10000386C();
  __chkstk_darwin(v37);
  sub_100003878();
  v272 = v38;
  sub_10000386C();
  __chkstk_darwin(v39);
  v41 = &v271 - v40;
  v333 = *(a5 - 8);
  __chkstk_darwin(v42);
  sub_100003848();
  v295 = v43;
  sub_10000386C();
  __chkstk_darwin(v44);
  sub_100003878();
  v315 = v45;
  sub_10000386C();
  __chkstk_darwin(v46);
  sub_100003878();
  v314 = v47;
  sub_10000386C();
  __chkstk_darwin(v48);
  sub_100003878();
  v313 = v49;
  sub_10000386C();
  __chkstk_darwin(v50);
  sub_100003878();
  v312 = v51;
  sub_10000386C();
  __chkstk_darwin(v52);
  sub_100003878();
  v311 = v53;
  sub_10000386C();
  __chkstk_darwin(v54);
  sub_100003878();
  v310 = v55;
  sub_10000386C();
  __chkstk_darwin(v56);
  sub_100003878();
  v309 = v57;
  sub_10000386C();
  __chkstk_darwin(v58);
  sub_100003878();
  v308 = v59;
  sub_10000386C();
  __chkstk_darwin(v60);
  sub_100003878();
  v307 = v61;
  sub_10000386C();
  __chkstk_darwin(v62);
  sub_100003878();
  v292 = v63;
  sub_10000386C();
  __chkstk_darwin(v64);
  sub_100003878();
  v306 = v65;
  sub_10000386C();
  __chkstk_darwin(v66);
  sub_100003878();
  v289 = v67;
  sub_10000386C();
  __chkstk_darwin(v68);
  v70 = &v271 - v69;
  __chkstk_darwin(v71);
  sub_100003878();
  v287 = v72;
  sub_10000386C();
  __chkstk_darwin(v73);
  sub_100003878();
  v331 = v74;
  sub_10000386C();
  __chkstk_darwin(v75);
  sub_100003878();
  v286 = v76;
  sub_10000386C();
  __chkstk_darwin(v77);
  sub_100003878();
  v330 = v78;
  sub_10000386C();
  __chkstk_darwin(v79);
  sub_100003878();
  v284 = v80;
  sub_10000386C();
  __chkstk_darwin(v81);
  sub_100003878();
  v329 = v82;
  sub_10000386C();
  __chkstk_darwin(v83);
  sub_100003878();
  v283 = v84;
  sub_10000386C();
  __chkstk_darwin(v85);
  sub_100003878();
  v327 = v86;
  sub_10000386C();
  __chkstk_darwin(v87);
  sub_100003878();
  v281 = v88;
  sub_10000386C();
  __chkstk_darwin(v89);
  sub_100003878();
  v326 = v90;
  sub_10000386C();
  __chkstk_darwin(v91);
  sub_100003878();
  v280 = v92;
  sub_10000386C();
  __chkstk_darwin(v93);
  sub_100003878();
  v325 = v94;
  sub_10000386C();
  __chkstk_darwin(v95);
  sub_100003878();
  v277 = v96;
  sub_10000386C();
  __chkstk_darwin(v97);
  sub_100003878();
  v324 = v98;
  sub_10000386C();
  __chkstk_darwin(v99);
  sub_100003878();
  v275 = v100;
  sub_10000386C();
  __chkstk_darwin(v101);
  sub_100003878();
  v323 = v102;
  sub_10000386C();
  __chkstk_darwin(v103);
  sub_100003878();
  v274 = v104;
  sub_10000386C();
  __chkstk_darwin(v105);
  sub_100003878();
  v322 = v106;
  sub_10000386C();
  __chkstk_darwin(v107);
  sub_100003878();
  v273 = v108;
  sub_10000386C();
  __chkstk_darwin(v109);
  sub_100003878();
  v321 = v110;
  sub_10000386C();
  __chkstk_darwin(v111);
  sub_100003878();
  v334 = v112;
  sub_10000386C();
  __chkstk_darwin(v113);
  v115 = &v271 - v114;
  v336 = type metadata accessor for Optional();
  v302 = *(v336 - 8);
  __chkstk_darwin(v336);
  sub_100003848();
  v304 = v116;
  sub_10000386C();
  __chkstk_darwin(v117);
  sub_100003878();
  v303 = v118;
  sub_10000386C();
  __chkstk_darwin(v119);
  sub_100003878();
  v320 = v120;
  sub_10000386C();
  __chkstk_darwin(v121);
  sub_100003878();
  v319 = v122;
  sub_10000386C();
  __chkstk_darwin(v123);
  v125 = &v271 - v124;
  __chkstk_darwin(v126);
  v318 = &v271 - v127;
  v338 = a2;
  sub_100566A24(a2, v358);
  v328 = v115;
  v335 = v125;
  v298 = a1;
  v299 = a4;
  v332 = v70;
  v293 = v18;
  if (v359)
  {
    v128 = 1;
    v129 = v41;
  }

  else
  {
    v317 = v358[3];
    v130 = v358[2];
    v131 = v358[1];
    v132 = a1;
    v133 = v358[0];
    v129 = v41;
    sub_1001B3B30(v132 + OBJC_IVAR____TtCV7Weather13SevereContent8_Storage_severeAlert, v41);
    v134 = v333;
    v337(v41, v133, v131, v130, v317);
    sub_1001B4354(v41);
    v135 = sub_100007EE8();
    sub_1000495EC(v135, v136);
    v137 = *(v134 + 8);
    v138 = sub_100007EE8();
    v137(v138);
    v139 = sub_100003A60();
    sub_1000833D8(v139, v140, v41);
    v141 = sub_100003A60();
    v137(v141);
    v125 = v335;
    v142 = sub_10002276C();
    v143(v142);
    v128 = 0;
  }

  v144 = 1;
  sub_10001B350(v125, v128, 1, a5);
  sub_1000140F4();
  sub_1003E7FD4(v145, v146);
  v316 = *(v302 + 8);
  v317 = v302 + 8;
  v316(v125, v336);
  sub_100566A40(v338, v360);
  if ((v361 & 1) == 0)
  {
    v147 = v360[3];
    v148 = v360[2];
    v149 = v360[1];
    v150 = v360[0];
    sub_1001B3B30(v298 + OBJC_IVAR____TtCV7Weather13SevereContent8_Storage_airQuality, v129);
    v151 = v333;
    v337(v129, v150, v149, v148, v147);
    sub_1001B4354(v129);
    v152 = v328;
    v153 = sub_100007EE8();
    sub_1000495EC(v153, v154);
    v155 = *(v151 + 8);
    v156 = sub_100007EE8();
    v155(v156);
    sub_1000833D8(v152, a5, v41);
    (v155)(v152, a5);
    v125 = v335;
    v157 = sub_10002276C();
    v158(v157);
    v144 = 0;
  }

  sub_10001B350(v125, v144, 1, a5);
  sub_1000140F4();
  sub_1003E7FD4(v159, v160);
  v316(v125, v336);
  v161 = OBJC_IVAR____TtCV7Weather13SevereContent8_Storage_map;
  v162 = v298;
  swift_beginAccess();
  v163 = v278;
  sub_10026E174(v162 + v161, v278);
  v164 = sub_100024D10(v163, 1, v276) == 1;
  v165 = v297;
  if (v164)
  {
    sub_10026E1E4(v163);
    v166 = 1;
LABEL_11:
    v169 = v335;
    goto LABEL_13;
  }

  v167 = v272;
  sub_10026E24C(v163, v272);
  sub_100566A5C(v338, v362);
  v168 = v328;
  if (v363)
  {
    sub_1001B4354(v167);
    v166 = 1;
    goto LABEL_11;
  }

  v337(v167, v362[0], v362[1], v362[2], v362[3]);
  sub_1001B4354(v167);
  v170 = sub_100007EE8();
  sub_1000495EC(v170, v171);
  v172 = *(v333 + 8);
  v173 = sub_100007EE8();
  v172(v173);
  v174 = sub_100003A60();
  sub_1000833D8(v174, v175, v162);
  v165 = v297;
  (v172)(v168, a5);
  v169 = v335;
  v176 = sub_10002276C();
  v177(v176);
  v166 = 0;
LABEL_13:
  sub_10001B350(v169, v166, 1, a5);
  sub_1000140F4();
  sub_1003E7FD4(v178, v179);
  v316(v169, v336);
  v180 = v279;
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_hourlyForecast, v279);
  sub_100566A78(v338, v364);
  if (v365)
  {
    goto LABEL_31;
  }

  v337(v180, v364[0], v364[1], v364[2], v364[3]);
  sub_1001B4354(v180);
  v181 = sub_100007EE8();
  sub_1000833D8(v181, v182, v339);
  v183 = *(v333 + 8);
  v184 = sub_100007EE8();
  v183(v184);
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_dailyForecast, v165);
  sub_100566A94(v338, v366);
  if (v366[32])
  {
    goto LABEL_31;
  }

  v185 = sub_1000053F4();
  v186(v185);
  sub_1001B4354(v165);
  v187 = sub_100007EE8();
  sub_1000833D8(v187, v188, v339);
  v189 = sub_100007EE8();
  v183(v189);
  v190 = v282;
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_uvIndex, v282);
  sub_100566AB0(v338, v367);
  if (v367[32])
  {
    goto LABEL_34;
  }

  v191 = sub_1000053F4();
  v192(v191);
  sub_1001B4354(v190);
  v193 = sub_100007EE8();
  sub_1000833D8(v193, v194, v339);
  v195 = sub_100007EE8();
  v183(v195);
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_sunriseSunset, v300);
  sub_100566ACC(v338, v368);
  if (v368[32])
  {
    goto LABEL_31;
  }

  v196 = v300;
  v197 = sub_1000280EC();
  v198(v197);
  sub_1001B4354(v196);
  sub_1000140F4();
  sub_1000833D8(v199, v200, v201);
  v202 = sub_100003A60();
  v183(v202);
  v203 = v285;
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_wind, v285);
  sub_100566AE8(v338, v369);
  if (v369[32])
  {
    goto LABEL_34;
  }

  v204 = sub_1000280EC();
  v205(v204);
  sub_1001B4354(v203);
  sub_1000140F4();
  sub_1000833D8(v206, v207, v208);
  v209 = sub_100003A60();
  v183(v209);
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_precipitationTotal, v301);
  sub_100566B04(v338, v370);
  if (v370[32])
  {
    goto LABEL_31;
  }

  v210 = v301;
  v211 = sub_1000280EC();
  v212(v211);
  sub_1001B4354(v210);
  sub_1000140F4();
  sub_1000833D8(v213, v214, v215);
  v216 = sub_100003A60();
  v183(v216);
  v217 = v288;
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_feelsLike, v288);
  sub_100566B20(v338, v371);
  if (v371[32])
  {
    goto LABEL_31;
  }

  v218 = sub_1000053F4();
  v219(v218);
  sub_1001B4354(v217);
  v220 = sub_100007EE8();
  sub_1000833D8(v220, v221, v339);
  v222 = sub_100007EE8();
  v183(v222);
  v223 = v290;
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_humidity, v290);
  sub_100566B3C(v338, v372);
  if (v372[32])
  {
LABEL_34:
    sub_100013470();
    goto LABEL_35;
  }

  v224 = sub_1000053F4();
  v225(v224);
  sub_1001B4354(v223);
  v226 = sub_100007EE8();
  sub_1000833D8(v226, v227, v339);
  v228 = sub_100007EE8();
  v183(v228);
  v229 = v291;
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_visibility, v291);
  sub_100566B58(v338, &v373);
  if ((v374 & 1) == 0)
  {
    v230 = sub_1000053F4();
    v231(v230);
    sub_1001B4354(v229);
    v232 = sub_100007EE8();
    sub_1000833D8(v232, v233, v339);
    v234 = sub_100007EE8();
    v183(v234);
    v235 = v293;
    sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_pressure, v293);
    sub_100566B74(v338, &v375);
    if ((v376 & 1) == 0)
    {
      v236 = sub_1000053F4();
      v237(v236);
      sub_1001B4354(v235);
      v238 = sub_100007EE8();
      sub_1000833D8(v238, v239, v339);
      v240 = sub_100007EE8();
      v183(v240);
      v241 = v294;
      sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_moon, v294);
      sub_100566B90(v338, &v377);
      if ((v378 & 1) == 0)
      {
        v242 = sub_1000280EC();
        v243(v242);
        sub_1001B4354(v241);
        sub_1000140F4();
        sub_1000833D8(v244, v245, v246);
        v247 = sub_100003A60();
        v183(v247);
        sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_averages, v305);
        sub_100566BAC(v338, v379);
        if ((v380 & 1) == 0)
        {
          v248 = v292;
          v249 = v305;
          v337(v305, v379[0], v379[1], v379[2], v379[3]);
          sub_1001B4354(v249);
          sub_1000495EC(v248, a5);
          (v183)(v248, a5);
          v250 = *(v302 + 16);
          v251 = v335;
          v252 = v336;
          v250(v335, v318, v336);
          v357[0] = v251;
          v253 = v303;
          v250(v303, v319, v252);
          v357[1] = v253;
          v254 = v304;
          v250(v304, v320, v252);
          v357[2] = v254;
          v255 = *(v333 + 16);
          v256 = v328;
          v255(v328, v321, a5);
          v357[3] = v256;
          v257 = v334;
          v255(v334, v322, a5);
          v357[4] = v257;
          v258 = v307;
          v255(v307, v323, a5);
          v357[5] = v258;
          v259 = v308;
          v255(v308, v324, a5);
          v357[6] = v259;
          v260 = v309;
          v255(v309, v325, a5);
          v357[7] = v260;
          v261 = v310;
          v255(v310, v326, a5);
          v357[8] = v261;
          v262 = v311;
          v255(v311, v327, a5);
          v357[9] = v262;
          v263 = v312;
          v255(v312, v329, a5);
          v357[10] = v263;
          v264 = v313;
          v255(v313, v330, a5);
          v357[11] = v264;
          v265 = v314;
          v255(v314, v331, a5);
          v357[12] = v265;
          v266 = v315;
          v255(v315, v332, a5);
          v357[13] = v266;
          v267 = v295;
          v255(v295, v306, a5);
          v357[14] = v267;
          v356[0] = v252;
          v356[1] = v252;
          v356[2] = v252;
          v356[3] = a5;
          v356[4] = a5;
          v356[5] = a5;
          v356[6] = a5;
          v356[7] = a5;
          v356[8] = a5;
          v356[9] = a5;
          v356[10] = a5;
          v356[11] = a5;
          v356[12] = a5;
          v356[13] = a5;
          v356[14] = a5;
          v340 = v249;
          WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v252, &v340);
          v342 = WitnessTable;
          v343 = WitnessTable;
          v344 = v249;
          v345 = v249;
          v346 = v249;
          v347 = v249;
          v348 = v249;
          v349 = v249;
          v350 = v249;
          v351 = v249;
          v352 = v249;
          v353 = v249;
          v354 = v249;
          v355 = v249;
          sub_10012E24C(v357, 15, v356);
          v268 = sub_100007EE8();
          v183(v268);
          (v183)(v332, a5);
          (v183)(v331, a5);
          (v183)(v330, a5);
          (v183)(v329, a5);
          (v183)(v327, a5);
          (v183)(v326, a5);
          (v183)(v325, a5);
          (v183)(v324, a5);
          (v183)(v323, a5);
          (v183)(v322, a5);
          (v183)(v321, a5);
          v269 = v316;
          v316(v320, v252);
          v269(v319, v252);
          v269(v318, v252);
          (v183)(v267, a5);
          (v183)(v315, a5);
          (v183)(v314, a5);
          (v183)(v313, a5);
          (v183)(v312, a5);
          (v183)(v311, a5);
          (v183)(v310, a5);
          (v183)(v309, a5);
          (v183)(v308, a5);
          (v183)(v307, a5);
          (v183)(v334, a5);
          (v183)(v328, a5);
          v269(v304, v252);
          v269(v303, v252);
          return (v269)(v335, v252);
        }
      }
    }

    goto LABEL_34;
  }

LABEL_31:
  sub_10001E640();
LABEL_35:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1008ECFDC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 128))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1008ED030(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 128) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 128) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

double sub_1008ED0D0(uint64_t a1)
{
  if ((*(v1 + 89) & 1) != 0 || (v10 = *(v1 + 32), v11 = *(v1 + 33), *v12 = *(v1 + 49), *&v12[15] = *(v1 + 64), v10 < 3u))
  {
    if (qword_100CA21A0 != -1)
    {
      swift_once();
    }

    v2 = swift_beginAccess();
    v3 = sub_1004BA5F0(v2);
    swift_endAccess();
  }

  else
  {
    sub_10064E920(v7);
    v4 = v8;
    v5 = v9;
    sub_1000161C0(v7, v8);
    v3 = (*(v5 + 64))(v4, v5);
    sub_100006F14(v7);
  }

  return v3;
}

uint64_t sub_1008ED1E0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10022C350(&qword_100CE4E40, &qword_100A980E0);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = v28 - v5;
  *v6 = static HorizontalAlignment.leading.getter();
  *(v6 + 1) = 0;
  v6[16] = 0;
  v7 = sub_10022C350(&qword_100CE4E48, &qword_100A980E8);
  sub_1008ED404(v1, &v6[*(v7 + 44)]);
  v8 = static Edge.Set.top.getter();
  v9 = v8;
  sub_1008ED0D0(v8);
  EdgeInsets.init(_all:)();
  v10 = &v6[*(v4 + 44)];
  *v10 = v9;
  *(v10 + 1) = v11;
  *(v10 + 2) = v12;
  *(v10 + 3) = v13;
  *(v10 + 4) = v14;
  v10[40] = 0;
  v15 = static Edge.Set.bottom.getter();
  if ((*(v1 + 89) & 1) != 0 || (v31 = *(v1 + 32), v32 = *(v1 + 33), *v33 = *(v1 + 49), *&v33[15] = *(v1 + 64), !v31))
  {
    if (qword_100CA20B8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    sub_1004727E4();
  }

  else
  {
    sub_10064E920(v28);
    v16 = v29;
    v17 = v30;
    sub_1000161C0(v28, v29);
    (*(v17 + 64))(v16, v17);
    sub_100006F14(v28);
  }

  EdgeInsets.init(_all:)();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  sub_10002F758(v6, a1, &qword_100CE4E40, &qword_100A980E0);
  result = sub_10022C350(&qword_100CE4E50, &qword_100A980F0);
  v27 = a1 + *(result + 36);
  *v27 = v15;
  *(v27 + 8) = v19;
  *(v27 + 16) = v21;
  *(v27 + 24) = v23;
  *(v27 + 32) = v25;
  *(v27 + 40) = 0;
  return result;
}

uint64_t sub_1008ED404@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v130 = sub_10022C350(&qword_100CE4E58, &qword_100A980F8);
  __chkstk_darwin(v130);
  v115 = (&v102 - v4);
  v126 = sub_10022C350(&qword_100CE4E60, &qword_100A98100);
  __chkstk_darwin(v126);
  v128 = &v102 - v5;
  v127 = sub_10022C350(&qword_100CE4E68, &qword_100A98108);
  __chkstk_darwin(v127);
  v114 = (&v102 - v6);
  v7 = sub_10022C350(&qword_100CE4E70, &qword_100A98110);
  __chkstk_darwin(v7 - 8);
  v131 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v129 = &v102 - v10;
  v11 = sub_10022C350(&qword_100CE4E78, &unk_100A98118);
  __chkstk_darwin(v11);
  v120 = &v102 - v12;
  v13 = type metadata accessor for Divider();
  v117 = *(v13 - 8);
  v118 = v13;
  __chkstk_darwin(v13);
  v15 = &v102 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_10022C350(&qword_100CA6430, &unk_100A81EF0);
  __chkstk_darwin(v116);
  v119 = &v102 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v102 - v18;
  __chkstk_darwin(v20);
  v132 = &v102 - v21;
  v22 = sub_10022C350(&qword_100CE4E80, &qword_100A98128);
  __chkstk_darwin(v22 - 8);
  v125 = &v102 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = *a1;
  v27 = *(a1 + 8);
  v28 = *(a1 + 16);
  v29 = *(a1 + 24);
  v133 = *(a1 + 32);
  v30 = *(a1 + 49);
  v163 = *(a1 + 33);
  v164[0] = v30;
  *(v164 + 15) = *(a1 + 64);
  v161 = *(a1 + 72);
  v162 = *(a1 + 88);
  v31 = *(a1 + 89);
  v134 = &v102 - v25;
  v124 = v31;
  if (v29)
  {
    v113 = a2;
    v32 = v26;
    v33 = v27;
    v34 = v28;

    v109 = v34;
    LODWORD(v34) = v34 & 1;
    sub_10010CD54(v32, v33, v34);
    v122 = static Edge.Set.horizontal.getter();
    EdgeInsets.init(_all:)();
    v107 = v36;
    v108 = v35;
    v105 = v38;
    v106 = v37;
    LOBYTE(v137[0]) = v34;
    v154[0] = 0;

    v110 = v33;
    v111 = v32;
    v123 = v34;
    sub_10010CD54(v32, v33, v34);
    v39 = static Edge.Set.bottom.getter();
    v121 = v39;
    sub_1008ED0D0(v39);
    EdgeInsets.init(_all:)();
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v47 = v46;
    LOBYTE(v138[0]) = 0;
    Divider.init()();
    v48 = static Edge.Set.horizontal.getter();
    if ((v31 & 1) == 0 && (v133 - 3) >= 0xFFFFFFFE)
    {
      if (qword_100CA20B8 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      sub_1004727E4();
    }

    v112 = v11;
    EdgeInsets.init(_all:)();
    v50 = v49;
    v52 = v51;
    v54 = v53;
    v56 = v55;
    (*(v117 + 32))(v19, v15, v118);
    v57 = &v19[*(v116 + 36)];
    *v57 = v48;
    *(v57 + 1) = v50;
    *(v57 + 2) = v52;
    *(v57 + 3) = v54;
    *(v57 + 4) = v56;
    v57[40] = 0;
    v58 = v132;
    sub_10002F758(v19, v132, &qword_100CA6430, &unk_100A81EF0);
    if (qword_100CA20B8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    sub_1004727E4();
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v117 = v157;
    v118 = v155;
    v116 = v159;
    v104 = v160;
    v154[0] = 1;
    v136 = v156;
    v135 = v158;
    v59 = v119;
    sub_1000955E0(v58, v119, &qword_100CA6430, &unk_100A81EF0);
    v60 = v154[0];
    v102 = v136;
    v103 = v135;
    v61 = v110;
    v62 = v111;
    *&v137[0] = v111;
    *(&v137[0] + 1) = v110;
    LOBYTE(v137[1]) = v123;
    *(&v137[1] + 1) = *v153;
    DWORD1(v137[1]) = *&v153[3];
    *(&v137[1] + 1) = v29;
    LOBYTE(v137[2]) = v122;
    *(&v137[2] + 1) = *v152;
    DWORD1(v137[2]) = *&v152[3];
    v64 = v107;
    v63 = v108;
    *(&v137[2] + 1) = v108;
    *&v137[3] = v107;
    v66 = v105;
    v65 = v106;
    *(&v137[3] + 1) = v106;
    *&v137[4] = v105;
    BYTE8(v137[4]) = 0;
    *(&v137[4] + 9) = *v151;
    HIDWORD(v137[4]) = *&v151[3];
    LOBYTE(v137[5]) = v121;
    *(&v137[5] + 1) = *v150;
    DWORD1(v137[5]) = *&v150[3];
    *(&v137[5] + 1) = v41;
    *&v137[6] = v43;
    *(&v137[6] + 1) = v45;
    *&v137[7] = v47;
    WORD4(v137[7]) = 0;
    BYTE10(v137[7]) = 1;
    v67 = v120;
    memcpy(v120, v137, 0x7BuLL);
    v68 = sub_10022C350(&qword_100CE4EB0, &qword_100A981A8);
    sub_1000955E0(v59, &v67[*(v68 + 48)], &qword_100CA6430, &unk_100A81EF0);
    v69 = &v67[*(v68 + 64)];
    sub_1000955E0(v137, v138, &qword_100CE4EB8, &qword_100A981B0);
    sub_10010CD64(v62, v61, v109 & 1);

    *v69 = 0;
    v69[8] = v60;
    *(v69 + 2) = v118;
    v69[24] = v102;
    *(v69 + 4) = v117;
    v69[40] = v103;
    v70 = v104;
    *(v69 + 6) = v116;
    *(v69 + 7) = v70;
    sub_1000180EC(v132, &qword_100CA6430, &unk_100A81EF0);
    sub_1000180EC(v59, &qword_100CA6430, &unk_100A81EF0);
    *&v138[0] = v62;
    *(&v138[0] + 1) = v61;
    LOBYTE(v138[1]) = v123;
    *(&v138[1] + 1) = *v153;
    DWORD1(v138[1]) = *&v153[3];
    *(&v138[1] + 1) = v29;
    LOBYTE(v138[2]) = v122;
    *(&v138[2] + 1) = *v152;
    DWORD1(v138[2]) = *&v152[3];
    *(&v138[2] + 1) = v63;
    *&v138[3] = v64;
    *(&v138[3] + 1) = v65;
    v139 = v66;
    v140 = 0;
    *v141 = *v151;
    *&v141[3] = *&v151[3];
    v142 = v121;
    *v143 = *v150;
    *&v143[3] = *&v150[3];
    v144 = v41;
    v145 = v43;
    v146 = v45;
    v147 = v47;
    v148 = 0;
    v149 = 1;
    sub_1000180EC(v138, &qword_100CE4EB8, &qword_100A981B0);
    v71 = v134;
    sub_10002F758(v67, v134, &qword_100CE4E78, &unk_100A98118);
    sub_10001B350(v71, 0, 1, v112);
    a2 = v113;
  }

  else
  {
    sub_10001B350(&v102 - v25, 1, 1, v11);
  }

  v72 = v133;
  LOBYTE(v138[0]) = v133;
  *(v138 + 1) = v163;
  *(&v138[1] + 1) = v164[0];
  *&v138[2] = *(v164 + 15);
  *(&v138[2] + 8) = v161;
  BYTE8(v138[3]) = v162;
  BYTE9(v138[3]) = v124;
  v74 = v163 >> 56;
  v73 = *&v138[1];
  v76 = v164[0] >> 56;
  v75 = *(v164 + 15);
  v77 = v129;
  if (v124)
  {
    KeyPath = swift_getKeyPath();
    v79 = v115;
    *v115 = KeyPath;
    sub_10022C350(&qword_100CAD618, &qword_100A4C660);
    swift_storeEnumTagMultiPayload();
    v80 = v79 + *(type metadata accessor for ComparisonBarChartView(0) + 20);
    *v80 = v72;
    *(v80 + 1) = v163;
    *(v80 + 1) = *(&v163 + 3);
    *(v80 + 1) = v74;
    *(v80 + 2) = v73;
    *(v80 + 3) = v76;
    *(v80 + 4) = v75;
    *(v80 + 40) = v161;
    v80[56] = v162;
    *(&v137[2] + 10) = *(&v138[2] + 10);
    v137[1] = v138[1];
    v137[2] = v138[2];
    v137[0] = v138[0];
    sub_1008EE098(v138, v154);
    sub_100433C88(v137, v154);
    Text.Measurements.init()();
    v81 = static Edge.Set.horizontal.getter();
    EdgeInsets.init(_all:)();
    v82 = v79 + *(v130 + 36);
    *v82 = v81;
    *(v82 + 1) = v83;
    *(v82 + 2) = v84;
    *(v82 + 3) = v85;
    *(v82 + 4) = v86;
    v82[40] = 0;
    v87 = &qword_100CE4E58;
    v88 = &qword_100A980F8;
    sub_1000955E0(v79, v128, &qword_100CE4E58, &qword_100A980F8);
    swift_storeEnumTagMultiPayload();
    sub_1008EE0F4();
    sub_1008EE1B0();
    _ConditionalContent<>.init(storage:)();
    sub_1008EE2B4(v138);
  }

  else
  {
    v79 = v114;
    *v114 = v133;
    v79[1] = v74;
    v79[2] = v73;
    v79[3] = v76;
    v79[4] = v75;
    v89 = *(type metadata accessor for ComparisonCapsuleView(0) + 20);
    *(v79 + v89) = swift_getKeyPath();
    sub_10022C350(&qword_100CA2E38, &qword_100A49D50);
    swift_storeEnumTagMultiPayload();

    v90 = static Edge.Set.horizontal.getter();
    EdgeInsets.init(_all:)();
    v91 = v128;
    v92 = v79 + *(v127 + 36);
    *v92 = v90;
    *(v92 + 1) = v93;
    *(v92 + 2) = v94;
    *(v92 + 3) = v95;
    *(v92 + 4) = v96;
    v92[40] = 0;
    v87 = &qword_100CE4E68;
    v88 = &qword_100A98108;
    sub_1000955E0(v79, v91, &qword_100CE4E68, &qword_100A98108);
    swift_storeEnumTagMultiPayload();
    sub_1008EE0F4();
    sub_1008EE1B0();
    _ConditionalContent<>.init(storage:)();
  }

  sub_1000180EC(v79, v87, v88);
  v97 = v134;
  v98 = v125;
  sub_1000955E0(v134, v125, &qword_100CE4E80, &qword_100A98128);
  v99 = v131;
  sub_1000955E0(v77, v131, &qword_100CE4E70, &qword_100A98110);
  sub_1000955E0(v98, a2, &qword_100CE4E80, &qword_100A98128);
  v100 = sub_10022C350(&qword_100CE4EA8, &qword_100A98168);
  sub_1000955E0(v99, a2 + *(v100 + 48), &qword_100CE4E70, &qword_100A98110);
  sub_1000180EC(v77, &qword_100CE4E70, &qword_100A98110);
  sub_1000180EC(v97, &qword_100CE4E80, &qword_100A98128);
  sub_1000180EC(v99, &qword_100CE4E70, &qword_100A98110);
  return sub_1000180EC(v98, &qword_100CE4E80, &qword_100A98128);
}

unint64_t sub_1008EE0F4()
{
  result = qword_100CE4E88;
  if (!qword_100CE4E88)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE4E68, &qword_100A98108);
    v4[0] = sub_1008EE26C(&qword_100CE4E90, type metadata accessor for ComparisonCapsuleView, byte_100A7AD88);
    v4[1] = &protocol witness table for _PaddingLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE4E88);
  }

  return result;
}

unint64_t sub_1008EE1B0()
{
  result = qword_100CE4E98;
  if (!qword_100CE4E98)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE4E58, &qword_100A980F8);
    v4[0] = sub_1008EE26C(&qword_100CE4EA0, type metadata accessor for ComparisonBarChartView, byte_100A4D5A4);
    v4[1] = &protocol witness table for _PaddingLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE4E98);
  }

  return result;
}

uint64_t sub_1008EE26C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1008EE308(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = sub_10022E824(a2, a3);
    v8[0] = a4();
    v8[1] = &protocol witness table for _PaddingLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v7, v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1008EE3BC()
{
  result = qword_100CE4ED0;
  if (!qword_100CE4ED0)
  {
    v3 = sub_10022E824(&qword_100CE4ED8, &qword_100A981B8);
    result = swift_getWitnessTable(&protocol conformance descriptor for VStack<A>, v3, v0, v1);
    atomic_store(result, &qword_100CE4ED0);
  }

  return result;
}

void sub_1008EE4A0()
{
  sub_10000E8AC();
  sub_100020CD8(v5, v6);
  v7 = type metadata accessor for SavedLocation();
  v8 = sub_100003AE8(v7);
  __chkstk_darwin(v8);
  sub_100003848();
  v17 = v9;
  sub_10000386C();
  __chkstk_darwin(v10);
  sub_100031FD8();
  while (1)
  {
    if (v4 == v2)
    {

LABEL_14:
      sub_1000230F8();
      sub_10000C8F4();
      return;
    }

    if (v2 >= *(v1 + 16))
    {
      break;
    }

    v11 = sub_100024C20();
    sub_1000C90C8(v11);
    v12 = sub_100071A60();
    v14 = v13(v12);
    if (v0)
    {
      sub_10011CA9C(v3, &type metadata accessor for SavedLocation);
      sub_100086650();

      goto LABEL_14;
    }

    if (v14)
    {
      sub_100114640(v3, v17, &type metadata accessor for SavedLocation);
      sub_100086650();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1000134F8();
        sub_1000328B0();
      }

      sub_10004389C();
      if (v15)
      {
        sub_1000521D0();
        sub_1000328B0();
        sub_10007184C();
      }

      sub_10001885C();
      sub_100114640(v17, v16, &type metadata accessor for SavedLocation);
    }

    else
    {
      sub_10011CA9C(v3, &type metadata accessor for SavedLocation);
      ++v2;
    }
  }

  __break(1u);
}

void sub_1008EE67C()
{
  sub_10000E8AC();
  v7 = sub_100020CD8(v5, v6);
  v8 = type metadata accessor for LocationComponentContainerViewModel(v7);
  v9 = sub_100003AE8(v8);
  __chkstk_darwin(v9);
  sub_100003848();
  v18 = v10;
  sub_10000386C();
  __chkstk_darwin(v11);
  sub_100031FD8();
  while (1)
  {
    if (v4 == v2)
    {

LABEL_14:
      sub_1000230F8();
      sub_10000C8F4();
      return;
    }

    if (v2 >= *(v1 + 16))
    {
      break;
    }

    v12 = sub_100024C20();
    sub_1000C90C8(v12);
    v13 = sub_100071A60();
    v15 = v14(v13);
    if (v0)
    {
      sub_10011CA9C(v3, type metadata accessor for LocationComponentContainerViewModel);
      sub_100086650();

      goto LABEL_14;
    }

    if (v15)
    {
      sub_100114640(v3, v18, type metadata accessor for LocationComponentContainerViewModel);
      sub_100086650();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1000134F8();
        sub_1006A8334();
      }

      sub_10004389C();
      if (v16)
      {
        sub_1000521D0();
        sub_1006A8334();
        sub_10007184C();
      }

      sub_10001885C();
      sub_100114640(v18, v17, type metadata accessor for LocationComponentContainerViewModel);
    }

    else
    {
      sub_10011CA9C(v3, type metadata accessor for LocationComponentContainerViewModel);
      ++v2;
    }
  }

  __break(1u);
}

void sub_1008EE858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_10005246C();
  a25 = v27;
  a26 = v29;
  v48 = v30;
  v31 = *(v28 + 16);
  if (v31)
  {
    v32 = v28;
    a16 = _swiftEmptyArrayStorage;
    v33 = sub_100071ECC();
    sub_1006A798C(v33, v34, v35);
    v36 = a16;
    v37 = type metadata accessor for Date();
    sub_100003AE8(v37);
    v39 = v32 + ((*(v38 + 80) + 32) & ~*(v38 + 80));
    v47 = *(v40 + 72);
    while (1)
    {
      v48(&a12, v39);
      if (v26)
      {
        break;
      }

      v41 = a12;
      v42 = a13;
      v43 = a14;
      a16 = v36;
      v45 = v36[2];
      v44 = v36[3];
      if (v45 >= v44 >> 1)
      {
        sub_1006A798C((v44 > 1), v45 + 1, 1);
        v36 = a16;
      }

      v36[2] = v45 + 1;
      v46 = &v36[3 * v45];
      v46[4] = v41;
      v46[5] = v42;
      *(v46 + 48) = v43;
      v39 += v47;
      if (!--v31)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    sub_1001707D4();
  }
}

void sub_1008EE9A0()
{
  sub_10000E8AC();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v21 = v6;
  v20 = type metadata accessor for Date();
  sub_1000037C4();
  __chkstk_darwin(v7);
  sub_1000037D8();
  v10 = v9 - v8;
  v11 = v3 - v5;
  if (__OFSUB__(v3, v5))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v12 = v11 + 1;
  if (__OFADD__(v11, 1))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11 == -1)
  {
LABEL_16:
    sub_1000230F8();
    sub_10000C8F4();
    return;
  }

  sub_100021788();
  sub_1006A79AC();
  if ((v12 & 0x8000000000000000) == 0)
  {
    v13 = 0;
    v14 = 0;
    while (v13 < v12)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_18;
      }

      if (v14)
      {
        goto LABEL_24;
      }

      v16 = v5;
      v22 = v5;
      v21(&v22);
      if (v1)
      {
        goto LABEL_23;
      }

      v1 = 0;
      v17 = _swiftEmptyArrayStorage[2];
      if (v17 >= _swiftEmptyArrayStorage[3] >> 1)
      {
        sub_1006A79AC();
      }

      _swiftEmptyArrayStorage[2] = v17 + 1;
      sub_10000C7B8();
      (*(v19 + 32))(_swiftEmptyArrayStorage + v18 + *(v19 + 72) * v17, v10, v20);
      v14 = v5 == v3;
      if (v5 == v3)
      {
        v5 = 0;
      }

      else
      {
        ++v5;
        if (__OFADD__(v16, 1))
        {
          goto LABEL_19;
        }
      }

      ++v13;
      if (v15 == v12)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_22:
  __break(1u);
LABEL_23:

  __break(1u);
LABEL_24:
  __break(1u);
}

void sub_1008EEBC8()
{
  sub_10000E8AC();
  v1 = v0;
  v3 = v2;
  v13 = v4;
  type metadata accessor for DetailChartDataElement();
  sub_1000037C4();
  __chkstk_darwin(v5);
  sub_1000037D8();
  v6 = *(v3 + 16);
  if (v6)
  {
    sub_100021788();
    sub_1006A7AB4();
    v7 = (v3 + 32);
    while (1)
    {
      v8 = *v7++;
      v14 = v8;
      v13(&v14);
      if (v1)
      {
        break;
      }

      v1 = 0;
      v9 = _swiftEmptyArrayStorage[2];
      if (v9 >= _swiftEmptyArrayStorage[3] >> 1)
      {
        sub_1006A7AB4();
      }

      _swiftEmptyArrayStorage[2] = v9 + 1;
      sub_100011468();
      v11 = sub_1000795B8(v10);
      v12(v11);
      if (!--v6)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    sub_10002FE90();
    sub_10000C8F4();
  }
}

void sub_1008EED64()
{
  sub_10000E8AC();
  v3 = v2;
  sub_100020CD8(v4, v5);
  type metadata accessor for DetailChartDataElement();
  sub_1000037C4();
  __chkstk_darwin(v6);
  sub_1000037D8();
  v7 = *(v1 + 16);
  if (v7)
  {
    sub_100021788();
    sub_1006A7AB4();
    v8 = v3(0);
    sub_100003AE8(v8);
    v10 = v1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v16 = *(v11 + 72);
    while (1)
    {
      v17(v10);
      if (v0)
      {
        break;
      }

      v0 = 0;
      sub_1000C843C();
      if (v12)
      {
        sub_1006A7AB4();
      }

      _swiftEmptyArrayStorage[2] = v3;
      sub_100011468();
      v14 = sub_1000795B8(v13);
      v15(v14);
      v10 += v16;
      if (!--v7)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    sub_10002FE90();
    sub_10000C8F4();
  }
}

void *sub_1008EEF10(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = _swiftEmptyArrayStorage;
  if (!v5)
  {
    return v6;
  }

  v22 = _swiftEmptyArrayStorage;
  v9 = sub_100071ECC();
  sub_1006A7BE4(v9, v10, v11);
  v6 = _swiftEmptyArrayStorage;
  v12 = type metadata accessor for ConditionDetailLegend(0);
  sub_100003AE8(v12);
  v14 = a3 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
  v16 = *(v15 + 72);
  while (1)
  {
    a1(&v21, v14);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v17 = v21;
    v22 = v6;
    v19 = v6[2];
    v18 = v6[3];
    if (v19 >= v18 >> 1)
    {
      sub_1006A7BE4((v18 > 1), v19 + 1, 1);
      v6 = v22;
    }

    v6[2] = v19 + 1;
    v6[v19 + 4] = v17;
    v14 += v16;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

void sub_1008EF068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_10005246C();
  a25 = v27;
  a26 = v29;
  v30 = v26;
  v47 = v31;
  v32 = *(v28 + 16);
  if (v32)
  {
    v33 = v28;
    a16 = _swiftEmptyArrayStorage;
    v34 = sub_100071ECC();
    sub_10000369C(v34, v35, v36);
    v37 = a16;
    v38 = (v33 + 40);
    while (1)
    {
      v39 = *v38;
      a11 = *(v38 - 1);
      a12 = v39;

      v47(&a13, &a11);
      if (v30)
      {
        break;
      }

      v30 = 0;

      v41 = a13;
      v40 = a14;
      a16 = v37;
      v42 = v37[2];
      if (v42 >= v37[3] >> 1)
      {
        sub_100120158();
        sub_10000369C(v44, v45, v46);
        v37 = a16;
      }

      v37[2] = v42 + 1;
      v43 = &v37[2 * v42];
      v43[4] = v41;
      v43[5] = v40;
      v38 += 2;
      if (!--v32)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    sub_1001707D4();
  }
}

void sub_1008EF16C()
{
  sub_10000E8AC();
  v3 = v0;
  v5 = v4;
  v7 = v6;
  v27 = v8;
  v26 = v9;
  v10 = type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel(0);
  v11 = sub_100003AE8(v10);
  v25 = v12;
  __chkstk_darwin(v11);
  sub_1000037D8();
  v15 = v14 - v13;
  v28 = v7;
  v16 = (v5 >> 1) - v7;
  if (__OFSUB__(v5 >> 1, v7))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (!v16)
  {
LABEL_14:
    sub_10002FE90();
    sub_10000C8F4();
    return;
  }

  v17 = sub_100021788();
  sub_1006A7F8C(v17, v18, 0);
  if ((v16 & 0x8000000000000000) == 0)
  {
    v19 = 0;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      v21 = (v28 + v19) >= (v5 >> 1) || v19 >= v16;
      if (v21)
      {
        goto LABEL_16;
      }

      sub_1000C90C8(v27 + *(v25 + 72) * (v28 + v19));
      v26(&v29, v15);
      if (v3)
      {
        goto LABEL_19;
      }

      v3 = 0;
      sub_10011CA9C(v15, type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel);
      sub_1000C843C();
      if (v21)
      {
        v24 = v23;
        sub_1006A7F8C((v22 > 1), v1, 1);
        v23 = v24;
      }

      _swiftEmptyArrayStorage[2] = v1;
      *&_swiftEmptyArrayStorage[2 * v2 + 4] = v23;
      ++v19;
      if (v20 == v16)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

LABEL_18:
  __break(1u);
LABEL_19:
  sub_10011CA9C(v15, type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel);

  __break(1u);
}

void sub_1008EF3C0()
{
  sub_10000E8AC();
  v1 = v0;
  v3 = v2;
  v17[0] = v4;
  v17[1] = v5;
  v6 = sub_10022C350(&qword_100CCBC08, &unk_100A98440);
  v7 = sub_100003AE8(v6);
  v9 = v8;
  __chkstk_darwin(v7);
  v11 = v17 - v10;
  v12 = *(v3 + 16);
  if (v12)
  {
    sub_100021788();
    sub_1006A81F4();
    v13 = (v3 + 40);
    while (1)
    {
      v14 = *v13;
      v18[0] = *(v13 - 1);
      v18[1] = v14;

      (v17[0])(v18);
      if (v1)
      {
        break;
      }

      v1 = 0;

      v15 = _swiftEmptyArrayStorage[2];
      if (v15 >= _swiftEmptyArrayStorage[3] >> 1)
      {
        sub_1006A81F4();
      }

      _swiftEmptyArrayStorage[2] = v15 + 1;
      sub_100011468();
      sub_10011C0F0(v11, _swiftEmptyArrayStorage + v16 + *(v9 + 72) * v15, &qword_100CCBC08, &unk_100A98440);
      v13 += 2;
      if (!--v12)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    sub_10002FE90();
    sub_10000C8F4();
  }
}

void sub_1008EF560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, id a13, void *a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_10005246C();
  a25 = v28;
  a26 = v30;
  v31 = v26;
  v32 = v29;
  v38 = v33;
  if (v29 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    if (!i)
    {
LABEL_13:
      sub_1001707D4();
      return;
    }

    a16 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    if (i < 0)
    {
      break;
    }

    v35 = 0;
    while (1)
    {
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if ((v32 & 0xC000000000000001) != 0)
      {
        sub_1000C8954();
        v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v35 >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v37 = *(v32 + 8 * v35 + 32);
      }

      v27 = v37;
      a13 = v37;
      v38(&a14, &a13);
      if (v31)
      {
        goto LABEL_18;
      }

      v31 = 0;

      v27 = a14;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      ++v35;
      if (v36 == i)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  __break(1u);
LABEL_18:

  __break(1u);
}

void sub_1008EF6E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10000E8AC();
  v35 = v21;
  type metadata accessor for HourWeather();
  sub_1000037C4();
  v23 = v22;
  __chkstk_darwin(v24);
  sub_1000037D8();
  v27 = v26 - v25;
  sub_10022C350(&qword_100CA7030, &qword_100A32000);
  sub_10011A67C();
  dispatch thunk of Collection.startIndex.getter();
  while (1)
  {
    dispatch thunk of Collection.endIndex.getter();
    if (a10 == v36)
    {
      break;
    }

    v28 = dispatch thunk of Collection.subscript.read();
    (*(v23 + 16))(v27);
    v28(&v36, 0);
    v29 = v35(v27);
    if (v20)
    {
      v33 = sub_1000527CC();
      v34(v33);
      break;
    }

    v30 = v29;
    v31 = sub_1000527CC();
    v32(v31);
    if (v30)
    {
      break;
    }

    dispatch thunk of Collection.formIndex(after:)();
  }

  sub_10002FE90();
  sub_10000C8F4();
}

void *sub_1008EF95C(void *result, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = a2;
    v7 = result;
    if (a2)
    {
      sub_10022C350(a3, a4);
      v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v8[2] = v6;
      v9 = sub_10022C350(a3, a4);
      sub_100003810(v9);
      v11 = v10;
      sub_100011468();
      for (i = v8 + v12; ; i += *(v11 + 72))
      {
        --v6;
        sub_1000302D8(v7, i, a3, a4);
        if (!v6)
        {
          break;
        }
      }
    }

    else
    {
      v8 = _swiftEmptyArrayStorage;
    }

    sub_1000180EC(v7, a3, a4);
    return v8;
  }

  return result;
}

void *sub_1008EFA4C(void *result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v3 = result;
    if (a2)
    {
      v4 = type metadata accessor for GridItem();
      v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v5[2] = v2;
      v6 = *(v4 - 8);
      v7 = v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
      v8 = *(v6 + 16);
      while (1)
      {
        --v2;
        v8(v7, v3, v4);
        if (!v2)
        {
          break;
        }

        v7 += *(v6 + 72);
      }
    }

    else
    {
      v5 = _swiftEmptyArrayStorage;
    }

    type metadata accessor for GridItem();
    sub_1000037E8();
    (*(v9 + 8))(v3);
    return v5;
  }

  return result;
}

void sub_1008EFBA0()
{
  sub_10000E8AC();
  v2 = v1;
  v35 = v3;
  v5 = v4;
  v7 = v6(0);
  sub_1000037C4();
  v9 = v8;
  __chkstk_darwin(v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v30 - v14;
  v36 = *(v2 + 16);
  if (v36)
  {
    v34 = v9;
    v16 = v9 + 16;
    sub_100011468();
    v31 = v5;
    v32 = v2 + v17;
    v33 = v18;
    (v18)(v15);
    v19 = (v16 - 8);
    v20 = (v16 + 16);
    for (i = 1; ; ++i)
    {
      if (v36 == i)
      {
        v27 = v31;
        (*v20)(v31, v15, v7);
        v25 = v27;
        v26 = 0;
        goto LABEL_11;
      }

      v33(v12, v32 + *(v34 + 72) * i, v7);
      v22 = v35(v12, v15);
      if (v0)
      {
        break;
      }

      if (v22)
      {
        v23 = sub_1000C8954();
        v24(v23);
        (*v20)(v15, v12, v7);
      }

      else
      {
        (*v19)(v12, v7);
      }
    }

    v28 = *v19;
    (*v19)(v12, v7);
    v29 = sub_1000C8954();
    (v28)(v29);
  }

  else
  {
    v25 = v5;
    v26 = 1;
LABEL_11:
    sub_10001B350(v25, v26, 1, v7);
  }

  sub_10002FE90();
  sub_10000C8F4();
}

uint64_t sub_1008EFDD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExtremaResult();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10022C350(&qword_100CAC1B0, &unk_100A3B140);
  __chkstk_darwin(v8 - 8);
  v10 = &v33 - v9;
  v11 = sub_10022C350(&qword_100CAC4B8, &unk_100A3B410);
  __chkstk_darwin(v11);
  v13 = &v33 - v12;
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_22;
  }

  v14 = type metadata accessor for ConditionDetailViewModelFactory.DetailChartViewModelCacheKey(0);
  v15 = *(v14 + 20);
  v16 = *(a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v19 = v16 == *v18 && v17 == v18[1];
  if (!v19 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_22;
  }

  v33 = v14;
  v34 = v5;
  v20 = *(v14 + 24);
  v21 = *(v11 + 48);
  sub_1000302D8(a1 + v20, v13, &qword_100CAC1B0, &unk_100A3B140);
  sub_1000302D8(a2 + v20, &v13[v21], &qword_100CAC1B0, &unk_100A3B140);
  if (sub_100024D10(v13, 1, v4) == 1)
  {
    if (sub_100024D10(&v13[v21], 1, v4) == 1)
    {
      sub_1000180EC(v13, &qword_100CAC1B0, &unk_100A3B140);
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  sub_1000302D8(v13, v10, &qword_100CAC1B0, &unk_100A3B140);
  if (sub_100024D10(&v13[v21], 1, v4) == 1)
  {
    (*(v34 + 8))(v10, v4);
LABEL_12:
    sub_1000180EC(v13, &qword_100CAC4B8, &unk_100A3B410);
LABEL_22:
    v31 = 0;
    return v31 & 1;
  }

  v22 = v34;
  (*(v34 + 32))(v7, &v13[v21], v4);
  sub_1008FB650(&qword_100CAC4C0, &type metadata accessor for ExtremaResult, &protocol conformance descriptor for ExtremaResult);
  v23 = dispatch thunk of static Equatable.== infix(_:_:)();
  v24 = *(v22 + 8);
  v24(v7, v4);
  v24(v10, v4);
  sub_1000180EC(v13, &qword_100CAC1B0, &unk_100A3B140);
  if ((v23 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_14:
  v25 = v33;
  v26 = *(v33 + 28);
  v27 = *(a1 + v26);
  v28 = *(a1 + v26 + 8);
  v29 = (a2 + v26);
  v30 = v27 == *v29 && v28 == v29[1];
  if (!v30 || (static DetailChartExtrema.== infix(_:_:)() & 1) == 0 || (static ConditionUnits.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_22;
  }

  v31 = sub_10074742C(a1 + *(v25 + 40), a2 + *(v25 + 40));
  return v31 & 1;
}

uint64_t sub_1008F019C(uint64_t a1)
{
  v2 = type metadata accessor for ExtremaResult();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10022C350(&qword_100CAC1B0, &unk_100A3B140);
  __chkstk_darwin(v6 - 8);
  v8 = &v11 - v7;
  type metadata accessor for Date();
  sub_1008FB650(&qword_100CA39C8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  dispatch thunk of Hashable.hash(into:)();
  v9 = type metadata accessor for ConditionDetailViewModelFactory.DetailChartViewModelCacheKey(0);
  String.hash(into:)();
  sub_1000302D8(v1 + *(v9 + 24), v8, &qword_100CAC1B0, &unk_100A3B140);
  if (sub_100024D10(v8, 1, v2) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    Hasher._combine(_:)(1u);
    sub_1008FB650(&qword_100CAC4A8, &type metadata accessor for ExtremaResult, &protocol conformance descriptor for ExtremaResult);
    dispatch thunk of Hashable.hash(into:)();
    (*(v3 + 8))(v5, v2);
  }

  sub_1008FBE90(*(v1 + *(v9 + 28)), *(v1 + *(v9 + 28) + 8));
  type metadata accessor for DetailChartExtrema();
  sub_1008FB650(&qword_100CE5270, &type metadata accessor for DetailChartExtrema, &protocol conformance descriptor for DetailChartExtrema);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for ConditionUnits();
  sub_1008FB650(&qword_100CAC4B0, &type metadata accessor for ConditionUnits, &protocol conformance descriptor for ConditionUnits);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for DetailChartCondition();
  sub_1008FB650(&qword_100CA39D8, &type metadata accessor for DetailChartCondition, &protocol conformance descriptor for DetailChartCondition);
  return dispatch thunk of Hashable.hash(into:)();
}

uint64_t sub_1008F0508(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExtremaResult();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10022C350(&qword_100CAC1B0, &unk_100A3B140);
  __chkstk_darwin(v8 - 8);
  v10 = &v28 - v9;
  v11 = sub_10022C350(&qword_100CAC4B8, &unk_100A3B410);
  __chkstk_darwin(v11);
  v13 = &v28 - v12;
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_17;
  }

  v14 = type metadata accessor for ConditionDetailViewModelFactory.DetailPlatterViewModelsCacheKey(0);
  v15 = *(v14 + 20);
  v16 = *(a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v19 = v16 == *v18 && v17 == v18[1];
  if (!v19 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_17;
  }

  v28 = v14;
  v29 = v5;
  v20 = *(v14 + 24);
  v21 = *(v11 + 48);
  sub_1000302D8(a1 + v20, v13, &qword_100CAC1B0, &unk_100A3B140);
  sub_1000302D8(a2 + v20, &v13[v21], &qword_100CAC1B0, &unk_100A3B140);
  if (sub_100024D10(v13, 1, v4) != 1)
  {
    sub_1000302D8(v13, v10, &qword_100CAC1B0, &unk_100A3B140);
    if (sub_100024D10(&v13[v21], 1, v4) != 1)
    {
      v22 = v29;
      (*(v29 + 32))(v7, &v13[v21], v4);
      sub_1008FB650(&qword_100CAC4C0, &type metadata accessor for ExtremaResult, &protocol conformance descriptor for ExtremaResult);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      v24 = *(v22 + 8);
      v24(v7, v4);
      v24(v10, v4);
      sub_1000180EC(v13, &qword_100CAC1B0, &unk_100A3B140);
      if (v23)
      {
        goto LABEL_14;
      }

LABEL_17:
      v26 = 0;
      return v26 & 1;
    }

    (*(v29 + 8))(v10, v4);
LABEL_12:
    sub_1000180EC(v13, &qword_100CAC4B8, &unk_100A3B410);
    goto LABEL_17;
  }

  if (sub_100024D10(&v13[v21], 1, v4) != 1)
  {
    goto LABEL_12;
  }

  sub_1000180EC(v13, &qword_100CAC1B0, &unk_100A3B140);
LABEL_14:
  v25 = v28;
  if ((static ConditionUnits.== infix(_:_:)() & 1) == 0 || (static DetailCondition.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_17;
  }

  v26 = *(a1 + *(v25 + 36)) ^ *(a2 + *(v25 + 36)) ^ 1;
  return v26 & 1;
}

void sub_1008F08B4(uint64_t a1)
{
  v2 = type metadata accessor for ExtremaResult();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10022C350(&qword_100CAC1B0, &unk_100A3B140);
  __chkstk_darwin(v6 - 8);
  v8 = &v10 - v7;
  type metadata accessor for Date();
  sub_1008FB650(&qword_100CA39C8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  dispatch thunk of Hashable.hash(into:)();
  v9 = type metadata accessor for ConditionDetailViewModelFactory.DetailPlatterViewModelsCacheKey(0);
  String.hash(into:)();
  sub_1000302D8(v1 + *(v9 + 24), v8, &qword_100CAC1B0, &unk_100A3B140);
  if (sub_100024D10(v8, 1, v2) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    Hasher._combine(_:)(1u);
    sub_1008FB650(&qword_100CAC4A8, &type metadata accessor for ExtremaResult, &protocol conformance descriptor for ExtremaResult);
    dispatch thunk of Hashable.hash(into:)();
    (*(v3 + 8))(v5, v2);
  }

  type metadata accessor for ConditionUnits();
  sub_1008FB650(&qword_100CAC4B0, &type metadata accessor for ConditionUnits, &protocol conformance descriptor for ConditionUnits);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for DetailCondition();
  sub_1008FB650(&qword_100CDD760, &type metadata accessor for DetailCondition, &protocol conformance descriptor for DetailCondition);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v1 + *(v9 + 36)));
}

Swift::Int sub_1008F0BC4(void (*a1)(_BYTE *))
{
  Hasher.init(_seed:)();
  a1(v3);
  return Hasher._finalize()();
}

Swift::Int sub_1008F0CA0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

void sub_1008F0CE8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v520 = a1;
  v499 = a2;
  v504 = type metadata accessor for ConditionDetailViewModel(0);
  sub_1000037E8();
  __chkstk_darwin(v4);
  sub_1000037D8();
  sub_100003990(v6 - v5);
  v7 = sub_10022C350(&qword_100CBFEA0, &qword_100A765B0);
  v8 = sub_100003AE8(v7);
  v471 = v9;
  __chkstk_darwin(v8);
  sub_100003848();
  v519 = v10;
  sub_10000386C();
  __chkstk_darwin(v11);
  sub_100003878();
  v524 = v12;
  sub_10000386C();
  __chkstk_darwin(v13);
  sub_10000E70C();
  sub_100003918(v14);
  v496 = type metadata accessor for DetailCondition();
  sub_1000037C4();
  v501 = v15;
  __chkstk_darwin(v16);
  sub_1000037D8();
  sub_100003918(v18 - v17);
  v494 = type metadata accessor for ConditionUnits();
  sub_1000037C4();
  v483 = v19;
  __chkstk_darwin(v20);
  sub_1000037D8();
  sub_100003918(v22 - v21);
  v475 = type metadata accessor for DetailChartCondition();
  sub_1000037C4();
  v525 = v23;
  __chkstk_darwin(v24);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v25);
  sub_10000E70C();
  v27 = sub_100003918(v26);
  v526 = type metadata accessor for ConditionDetailChartInput(v27);
  sub_1000037C4();
  v489 = v28;
  __chkstk_darwin(v29);
  sub_100003848();
  v522 = v30;
  sub_10000386C();
  __chkstk_darwin(v31);
  sub_10000E70C();
  v33 = sub_100003918(v32);
  v490 = type metadata accessor for DetailChartsViewModel(v33);
  sub_1000037C4();
  v472 = v34;
  __chkstk_darwin(v35);
  sub_100003848();
  v523 = v36;
  sub_10000386C();
  __chkstk_darwin(v37);
  sub_10000E70C();
  sub_100003990(v38);
  v39 = sub_10022C350(&qword_100CBFE98, &qword_100A58340);
  v40 = sub_100003810(v39);
  __chkstk_darwin(v40);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v41);
  sub_10000E70C();
  sub_100003990(v42);
  v43 = sub_10022C350(&qword_100CAC1B0, &unk_100A3B140);
  v44 = sub_100003810(v43);
  __chkstk_darwin(v44);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v45);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v46);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v47);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v48);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v49);
  sub_10000E70C();
  v51 = sub_100003918(v50);
  v474 = type metadata accessor for ConditionDetailChartInputs(v51);
  sub_1000037C4();
  v473 = v52;
  __chkstk_darwin(v53);
  sub_100003848();
  v521 = v54;
  sub_10000386C();
  __chkstk_darwin(v55);
  sub_10000E70C();
  sub_100003990(v56);
  v57 = sub_10022C350(&qword_100CB0BA8, &unk_100A40F80);
  v58 = sub_100003810(v57);
  __chkstk_darwin(v58);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v59);
  sub_10000E70C();
  v61 = sub_100003918(v60);
  v476 = type metadata accessor for DetailChartSelection(v61);
  sub_1000037E8();
  __chkstk_darwin(v62);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v63);
  sub_10000E70C();
  sub_100003990(v64);
  v65 = sub_10022C350(&qword_100CA4980, &qword_100A983F0);
  v66 = sub_100003810(v65);
  __chkstk_darwin(v66);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v67);
  sub_10000E70C();
  v69 = sub_100003918(v68);
  v503 = type metadata accessor for ConditionDetailViewModel.Model(v69);
  sub_1000037E8();
  __chkstk_darwin(v70);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v71);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v72);
  sub_10000E70C();
  sub_100003990(v73);
  v74 = sub_10022C350(&qword_100CE5240, &qword_100A983F8);
  v75 = sub_100003810(v74);
  __chkstk_darwin(v75);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v76);
  sub_10000E70C();
  v78 = sub_100003918(v77);
  v500 = type metadata accessor for ConditionDetailViewModelFactory.CachedChartModelInputs(v78);
  sub_1000037E8();
  __chkstk_darwin(v79);
  sub_1000037D8();
  sub_100003918(v81 - v80);
  v495 = type metadata accessor for TimeZone();
  sub_1000037C4();
  v512 = v82;
  __chkstk_darwin(v83);
  sub_1000037D8();
  v86 = v85 - v84;
  v486 = type metadata accessor for Calendar();
  sub_1000037C4();
  v485 = v87;
  __chkstk_darwin(v88);
  sub_1000037D8();
  sub_100003918(v90 - v89);
  v91 = type metadata accessor for Date();
  sub_1000037C4();
  v93 = v92;
  __chkstk_darwin(v94);
  sub_1000037D8();
  v97 = v96 - v95;
  v98 = type metadata accessor for ConditionDetailInput(0);
  v99 = sub_100003810(v98);
  __chkstk_darwin(v99);
  sub_1000037D8();
  v102 = v101 - v100;
  v103 = type metadata accessor for ConditionDetailInput.Input(0);
  sub_1000037E8();
  __chkstk_darwin(v104);
  sub_1000037D8();
  v107 = v106 - v105;
  v108 = type metadata accessor for OSSignpostID();
  sub_1000037C4();
  v498 = v109;
  __chkstk_darwin(v110);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v111);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v112);
  v114 = (&v450 - v113);
  v517 = v3;
  v115 = *(v3 + 520);
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  v511 = v115;
  v497 = v114;
  os_signpost(_:dso:log:name:signpostID:)();
  sub_10011C404(v520, v102, type metadata accessor for ConditionDetailInput);
  if (sub_100024D10(v102, 1, v103) == 1)
  {
    sub_10011CA9C(v102, type metadata accessor for ConditionDetailInput);
    sub_100003934();
    sub_10001B350(v116, v117, v118, v503);
    sub_10000E7B0();
    sub_10001B350(v119, v120, v121, v504);
LABEL_3:
    v122 = v498;
    goto LABEL_46;
  }

  v478 = v108;
  sub_100114640(v102, v107, type metadata accessor for ConditionDetailInput.Input);
  v123 = *(v93 + 16);
  v479 = v91;
  v456 = v123;
  (v123)(v97, v107, v91);
  v518 = v103;
  v477 = *(v103 + 52);
  Location.timeZone.getter();
  static Calendar.currentCalendar(with:)();
  v124 = *(v512 + 8);
  v452 = v86;
  v512 += 8;
  v451 = v124;
  v124(v86, v495);
  v125 = v517 + OBJC_IVAR____TtC7Weather31ConditionDetailViewModelFactory_cachedChartModelInputs;
  swift_beginAccess();
  v126 = v514;
  sub_1000302D8(v125, v514, &qword_100CE5240, &qword_100A983F8);
  v127 = sub_100024D10(v126, 1, v500);
  v491 = v97;
  v128 = v107;
  v454 = v93;
  v507 = v107;
  v455 = v93 + 16;
  v453 = v125;
  if (v127 == 1)
  {
    sub_1000A7DB8();
    sub_1000180EC(v126, &qword_100CE5240, &qword_100A983F8);
LABEL_13:
    v140 = v501;
    goto LABEL_14;
  }

  v129 = v126;
  v130 = v513;
  sub_100114640(v129, v513, type metadata accessor for ConditionDetailViewModelFactory.CachedChartModelInputs);
  v107 = v517;
  swift_beginAccess();
  sub_100042230();
  sub_1000302D8(v131, v132, v133, v134);
  if (sub_100024D10(v114, 1, v504) == 1)
  {
    sub_1000A7DB8();
    v135 = &qword_100CA4980;
    v136 = &qword_100A983F0;
LABEL_8:
    sub_1000180EC(v114, v135, v136);
LABEL_12:
    sub_100006B40();
    sub_10011CA9C(v130, v139);
    goto LABEL_13;
  }

  v137 = v503;
  if (sub_100024D10(v114, 1, v503) == 1)
  {
    sub_1000A7DB8();
    v138 = type metadata accessor for ConditionDetailViewModel;
LABEL_11:
    sub_10011CA9C(v114, v138);
    goto LABEL_12;
  }

  sub_10007527C();
  v325 = v487;
  sub_100114640(v114, v487, v326);
  v327 = *(v137 + 28);
  v328 = v325;
  v210 = (v325 + v327);
  sub_100042230();
  sub_1000302D8(v329, v330, v331, v332);
  v107 = v476;
  if (sub_100024D10(v114, 1, v476) == 1)
  {
    sub_1000A7DB8();
    sub_10001FC7C();
    sub_10011CA9C(v328, v333);
    v135 = &qword_100CB0BA8;
    v136 = &unk_100A40F80;
    goto LABEL_8;
  }

  sub_100041C1C();
  sub_100042230();
  sub_100114640(v334, v335, v336);
  v337 = v467;
  sub_1000302D8(v128 + v518[20], v467, &qword_100CB0BA8, &unk_100A40F80);
  if (sub_100024D10(v337, 1, v107) == 1)
  {
    sub_1000A7DB8();
    sub_10001FC7C();
    sub_10011CA9C(v328, v338);
    sub_1000180EC(v337, &qword_100CB0BA8, &unk_100A40F80);
    v138 = type metadata accessor for DetailChartSelection;
    goto LABEL_11;
  }

  sub_100041C1C();
  v339 = v466;
  sub_100114640(v337, v466, v340);
  v341 = *v339 == *v114 && v339[1] == v114[1];
  v215 = v515;
  v140 = v501;
  if (v341 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (v342 = static Date.== infix(_:_:)(), (v342) && (v218 = *(v128 + v518[7]), v107 = *(v328 + 16), *(v218 + 16) == *(v107 + 16)))
  {
    v219 = &v450;
    __chkstk_darwin(v342);
    v449 = v114;
    v206 = 0;
    isUniquelyReferenced_nonNull_native = sub_1000E8B1C(sub_1008FBA28, &v447, v218, type metadata accessor for ConditionDetailChartInputs);
    if ((v343 & 1) == 0)
    {
      goto LABEL_66;
    }

    sub_10003A440();
    sub_10011CA9C(v339, v344);
    sub_10001FC7C();
    sub_10011CA9C(v487, v345);
    sub_10011CA9C(v114, v210);
    sub_100006B40();
    v347 = v513;
  }

  else
  {
    sub_10003A440();
    sub_10011CA9C(v339, v348);
    sub_10001FC7C();
    sub_10011CA9C(v328, v349);
    sub_10011CA9C(v114, v210);
    sub_100006B40();
    v347 = v130;
  }

  sub_10011CA9C(v347, v346);
LABEL_14:
  type metadata accessor for UnitManager();
  static UnitManager.standard.getter();
  UnitManager.conditionUnits(locale:)();

  sub_10022C350(&qword_100CE5248, &qword_100A98400);
  v141 = type metadata accessor for DetailChartConditionInfo(0);
  v142 = *(v141 - 8);
  v520 = v141 - 8;
  v143 = (*(v142 + 80) + 32) & ~*(v142 + 80);
  v514 = *(v142 + 72);
  v144 = swift_allocObject();
  *(v144 + 16) = xmmword_100A3F990;
  v476 = v144;
  v145 = (v144 + v143);
  v146 = enum case for TemperatureChartKind.actual(_:);
  v147 = type metadata accessor for TemperatureChartKind();
  sub_1000037E8();
  v469 = *(v148 + 104);
  v149 = v488;
  v469(v488, v146, v147);
  v150 = enum case for DetailCondition.conditions(_:);
  v151 = v140[13];
  (v151)(v149, enum case for DetailCondition.conditions(_:), v107);
  v468 = DetailCondition.title.getter();
  v467 = v152;
  v153 = v140[1];
  v502 = (v140 + 1);
  v513 = v153;
  (v153)(v149, v107);
  v154 = *(v520 + 28);
  v469(v145 + v154, v146, v147);
  (v151)(v145 + v154, v150, v107);
  v155 = v467;
  *v145 = v468;
  v145[1] = v155;
  v487 = v145;
  v156 = sub_100018024();
  v151(v156);
  v157 = DetailCondition.title.getter();
  v159 = sub_10001710C(v157, v158);
  v513(v159);
  v160 = v520;
  v161 = sub_100037E84(*(v520 + 28));
  v151(v161);
  sub_10004ED28();
  v162 = sub_100018024();
  v151(v162);
  v163 = DetailCondition.title.getter();
  v165 = sub_10001710C(v163, v164);
  v166 = v513;
  v513(v165);
  v167 = sub_100037E84(*(v160 + 28));
  v151(v167);
  sub_10004ED28();
  v168 = v487;
  v169 = sub_100018024();
  v151(v169);
  v170 = DetailCondition.title.getter();
  v172 = sub_10001710C(v170, v171);
  v166(v172);
  v173 = v520;
  v174 = sub_100037E84(*(v520 + 28));
  v151(v174);
  sub_10004ED28();
  v175 = v168;
  v176 = sub_100018024();
  v151(v176);
  v177 = DetailCondition.title.getter();
  v179 = sub_10001710C(v177, v178);
  v180 = v513;
  v513(v179);
  v181 = sub_100037E84(*(v173 + 28));
  v151(v181);
  sub_10004ED28();
  v182 = (v175 + 5 * v514);
  v183 = sub_100018024();
  v151(v183);
  v184 = DetailCondition.title.getter();
  v186 = v185;
  v180(v149, v107);
  v187 = v520;
  v188 = sub_100037E84(*(v520 + 28));
  v151(v188);
  *v182 = v184;
  v182[1] = v186;
  v189 = (v487 + 6 * v514);
  v190 = enum case for DetailCondition.pressure(_:);
  v191 = sub_100018024();
  v151(v191);
  v192 = DetailCondition.title.getter();
  v194 = v193;
  (v513)(v149, v107);
  (v151)(v189 + *(v187 + 28), v190, v107);
  *v189 = v192;
  v189[1] = v194;
  v195 = type metadata accessor for ExtremaResult();
  v196 = sub_100003BCC(&v532);
  sub_10001B350(v196, v197, v198, v195);
  v199 = sub_100003BCC(&v533);
  v513 = v195;
  sub_10001B350(v199, v200, v201, v195);
  type metadata accessor for LollipopViewModel(0);
  v202 = sub_100003BCC(&v534);
  sub_10001B350(v202, v203, v204, v205);
  v114 = *(*&v507[v518[7]] + 16);
  v206 = _swiftEmptyArrayStorage;
  v514 = *&v507[v518[7]];
  if (!v114)
  {
LABEL_27:
    v223 = *(v206 + 16);
    if (v223)
    {
      v529 = _swiftEmptyArrayStorage;
      sub_1006A7CBC();
      v224 = v529;
      sub_10000C7B8();
      v226 = v206 + v225;
      v228 = *(v227 + 72);
      v229 = (v525 + 16);
      v520 = v525 + 32;
      v521 = v228;
      v230 = v475;
      v231 = v470;
      do
      {
        sub_100037378();
        v232 = v522;
        sub_10011C404(v226, v522, v233);
        v234 = v232 + *(v526 + 20);
        v235 = type metadata accessor for ConditionDetailChartDataInput(0);
        (*v229)(v231, v234 + *(v235 + 24), v230);
        sub_100023500();
        sub_10011CA9C(v232, v236);
        v529 = v224;
        v237 = v224[2];
        if (v237 >= v224[3] >> 1)
        {
          sub_100120158();
          sub_1006A7CBC();
          v224 = v529;
        }

        v224[2] = v237 + 1;
        sub_10000C7B8();
        (*(v239 + 32))(v224 + v238 + *(v239 + 72) * v237, v231, v230);
        v226 += v521;
        --v223;
      }

      while (v223);
    }

    sub_10069ACC8();
    v525 = v240;
    v241 = v517;
    v242 = v517[36];
    v522 = v517[37];
    v526 = sub_1000161C0(v517 + 33, v242);
    v243 = v518;
    v244 = v518[5];
    v245 = v507;
    v246 = v452;
    Location.timeZone.getter();
    v448 = v242;
    v449 = v522;
    v447 = v246;
    v247 = v515;
    v526 = dispatch thunk of DetailChartSeriesValuesCalculatorType.seriesValuesByCondition(conditions:calendar:now:currentWeather:minuteForecast:hourlyForecast:dayWeather:units:timeZone:)();

    v451(v246, v495);
    sub_1000161C0(v241 + 33, v241[36]);
    v248 = v243[8];
    v249 = v243[23];
    v250 = &v245[v243[10]];
    v520 = v243[9];
    v512 = v249;
    v521 = v244;
    dispatch thunk of DetailChartSeriesValuesCalculatorType.calculateSelectedSecondaryExtrema(condition:primaryChartCondition:interpolationMode:hourlyForecast:units:date:)();
    v251 = v245[v243[11]];
    v525 = v248;
    v522 = v250;
    if (v251)
    {
      sub_1000161C0(v241 + 33, v241[36]);
      dispatch thunk of DetailChartSeriesValuesCalculatorType.calculateSelectedSecondaryExtrema(condition:primaryChartCondition:interpolationMode:hourlyForecast:units:date:)();
    }

    else
    {
      v252 = sub_100003BCC(v531);
      sub_10001B350(v252, v253, v254, v513);
    }

    v255 = v490;
    v256 = v480;
    v257 = v514;
    v258 = v511;
    OSSignpostID.init(log:)();
    static os_signpost_type_t.begin.getter();
    os_signpost(_:dso:log:name:signpostID:)();
    sub_100003934();
    sub_10001B350(v259, v260, v261, v255);
    v527 = sub_1008EF95C(v256, *(v257 + 16), &qword_100CBFEA0, &qword_100A765B0);
    v262 = sub_10000C70C(0, &qword_100CB4670, OS_dispatch_queue_ptr);
    __chkstk_darwin(v262);
    *(&v450 - 12) = v245;
    *(&v450 - 11) = v241;
    *(&v450 - 10) = v526;
    *(&v450 - 9) = v247;
    v263 = v508;
    v264 = v509;
    *(&v450 - 8) = v508;
    *(&v450 - 7) = v264;
    v265 = v506;
    v266 = v510;
    *(&v450 - 6) = v506;
    *(&v450 - 5) = v266;
    v447 = v491;
    v448 = v516;
    v449 = &v527;
    static OS_dispatch_queue.concurrentPerform(iterations:execute:)();
    static os_signpost_type_t.end.getter();
    os_signpost(_:dso:log:name:signpostID:)();
    OSSignpostID.init(log:)();
    v267 = static os_signpost_type_t.begin.getter();
    sub_1000B0D14(v267, &_mh_execute_header);
    v520 = sub_1008F5C08(v245, v247, v263, v265, v264, v505, v266, v245[v518[25]]);
    v268 = static os_signpost_type_t.end.getter();
    sub_1000B0D14(v268, &_mh_execute_header);
    v514 = sub_1008F735C(&v245[v525], v476);
    v513 = v269;
    v270 = v527[2];
    v271 = _swiftEmptyArrayStorage;
    v521 = v527;
    if (v270)
    {
      sub_10000C7B8();
      v274 = v273 + v272;
      v276 = *(v275 + 72);
      v277 = v490;
      v263 = v472;
      v278 = v519;
      do
      {
        sub_1000302D8(v274, v524, &qword_100CBFEA0, &qword_100A765B0);
        v279 = sub_1000C8954();
        sub_10011C0F0(v279, v280, &qword_100CBFEA0, &qword_100A765B0);
        if (sub_100024D10(v278, 1, v277) == 1)
        {
          sub_1000180EC(v278, &qword_100CBFEA0, &qword_100A765B0);
        }

        else
        {
          sub_100024408();
          sub_100114640(v278, v523, v281);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_10069F034();
            v271 = v285;
          }

          v282 = v271[2];
          if (v282 >= v271[3] >> 1)
          {
            sub_100120158();
            sub_10069F034();
            v271 = v286;
          }

          v271[2] = v282 + 1;
          sub_100011468();
          sub_100024408();
          sub_100114640(v523, v283, v284);
          v278 = v519;
        }

        v274 += v276;
        --v270;
      }

      while (v270);
    }

    v287 = v503;
    v288 = v484;
    sub_100043B0C();
    v289();
    v290 = v507;
    sub_1000302D8(&v507[v518[20]], &v288[v287[7]], &qword_100CB0BA8, &unk_100A40F80);
    v291 = v290;
    (v501[2])(&v288[v287[9]], &v290[v525], v496);
    v122 = v498;
    v292 = *(v498 + 8);
    sub_100042230();
    v292();
    (v292)(v492, v263);
    v293 = v287[12];
    type metadata accessor for Location();
    sub_1000037E8();
    (*(v294 + 16))(&v288[v293], &v291[v477]);
    v295 = v513;
    *v288 = v514;
    *(v288 + 1) = v295;
    *(v288 + 2) = v271;
    *&v288[v287[8]] = v476;
    *&v288[v287[10]] = v520;
    v296 = &v288[v287[11]];
    *v296 = _swiftEmptyArrayStorage;
    *(v296 + 1) = 0;
    *(v296 + 2) = 0xE000000000000000;
    v296[24] = 0;
    sub_10000E7B0();
    sub_10001B350(v297, v298, v299, v287);
    v300 = v481;
    sub_10011C404(v288, v481, type metadata accessor for ConditionDetailViewModel);
    sub_10000E7B0();
    v301 = v504;
    sub_10001B350(v302, v303, v304, v504);
    v305 = OBJC_IVAR____TtC7Weather31ConditionDetailViewModelFactory_cachedModel;
    v306 = v517;
    swift_beginAccess();
    sub_10053347C(v300, v306 + v305, &qword_100CA4980, &qword_100A983F0);
    swift_endAccess();
    v307 = v483;
    v308 = v482;
    (*(v483 + 16))(v482, v515, v494);
    v309 = v500;
    v310 = v506;
    sub_1000302D8(v506, v308 + v500[6], &qword_100CAC1B0, &unk_100A3B140);
    v311 = v509;
    sub_1000302D8(v509, v308 + v309[7], &qword_100CAC1B0, &unk_100A3B140);
    *(v308 + v309[5]) = v526;
    sub_10011C0F0(v505, v308 + v309[8], &qword_100CAC1B0, &unk_100A3B140);
    sub_10000E7B0();
    sub_10001B350(v312, v313, v314, v309);
    v315 = v453;
    swift_beginAccess();
    sub_10053347C(v308, v315, &qword_100CE5240, &qword_100A983F8);
    swift_endAccess();
    sub_100114640(v288, v499, type metadata accessor for ConditionDetailViewModel);
    sub_10000E7B0();
    sub_10001B350(v316, v317, v318, v301);

    sub_1000180EC(v310, &qword_100CAC1B0, &unk_100A3B140);
    sub_1000180EC(v510, &qword_100CBFE98, &qword_100A58340);
    sub_1000180EC(v311, &qword_100CAC1B0, &unk_100A3B140);
    v108 = v478;
    sub_1000180EC(v508, &qword_100CAC1B0, &unk_100A3B140);
    (*(v307 + 8))(v515, v494);
    v319 = sub_100086940();
    v320(v319);
    v321 = sub_1000B033C();
    v322(v321, v479);
    sub_10003C00C();
    sub_10011CA9C(v507, v323);
LABEL_46:
    v324 = v497;
    static os_signpost_type_t.end.getter();
    os_signpost(_:dso:log:name:signpostID:)();
    (*(v122 + 8))(v324, v108);
    return;
  }

  v207 = *(v474 + 20);
  sub_10000C7B8();
  v210 = (v209 + v208);
  v212 = *(v211 + 72);
  v107 = v489;
  while (1)
  {
    sub_1000165B4();
    v213 = v521;
    sub_10011C404(v210, v521, v214);
    v215 = *(v213 + v207);

    sub_10002122C();
    isUniquelyReferenced_nonNull_native = sub_10011CA9C(v213, v216);
    v218 = *(v215 + 16);
    v219 = *(v206 + 16);
    if (__OFADD__(v219, v218))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v219 + v218 > *(v206 + 24) >> 1)
    {
      sub_10069EF14();
      v206 = isUniquelyReferenced_nonNull_native;
    }

    if (*(v215 + 16))
    {
      if ((*(v206 + 24) >> 1) - *(v206 + 16) < v218)
      {
        goto LABEL_64;
      }

      swift_arrayInitWithCopy();

      if (v218)
      {
        v220 = *(v206 + 16);
        v221 = __OFADD__(v220, v218);
        v222 = v220 + v218;
        if (v221)
        {
          goto LABEL_65;
        }

        *(v206 + 16) = v222;
      }
    }

    else
    {

      if (v218)
      {
        goto LABEL_63;
      }
    }

    v210 = (v210 + v212);
    v114 = (v114 - 1);
    if (!v114)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  if ((isUniquelyReferenced_nonNull_native & 0x8000000000000000) != 0)
  {
    goto LABEL_85;
  }

  if (isUniquelyReferenced_nonNull_native >= *(v218 + 16))
  {
    goto LABEL_86;
  }

  sub_10000C7B8();
  v353 = v218 + v350 + *(v351 + 72) * v352;
  sub_1000165B4();
  v524 = v354;
  v355 = v460;
  sub_10011C404(v353, v460, v356);
  type metadata accessor for ExtremaResult();
  v357 = v461;
  sub_100003934();
  sub_10001B350(v358, v359, v360, v361);
  v362 = v513;
  sub_100042230();
  sub_1000302D8(v363, v364, v365, v366);
  type metadata accessor for LollipopViewModel(0);
  v367 = v463;
  sub_100003934();
  v372 = sub_10001B350(v368, v369, v370, v371);
  v523 = &v450;
  v373 = *(v474 + 20);
  v514 = v353;
  v512 = v373;
  v215 = *(v353 + v373);
  __chkstk_darwin(v372);
  *(&v450 - 10) = v517;
  *(&v450 - 9) = v355;
  *(&v450 - 8) = v507;
  *(&v450 - 7) = v362;
  *(&v450 - 6) = v357;
  *(&v450 - 5) = v114;
  v447 = v367;
  v448 = v491;
  v449 = v516;

  sub_100100A6C();
  v219 = v374;

  if (v524 >= *(v107 + 16))
  {
    goto LABEL_87;
  }

  v375 = v107;
  v206 = (*(v472 + 80) + 32) & ~*(v472 + 80);
  v215 = *(v472 + 72) * v524;
  v376 = v464;
  (v456)(v464, v107 + v206 + v215, v479);
  *(v376 + *(v490 + 20)) = v219;

  v377 = swift_isUniquelyReferenced_nonNull_native();
  v219 = v501;
  if ((v377 & 1) == 0)
  {
    goto LABEL_88;
  }

  while (1)
  {
    v378 = v458;
    if (v524 >= *(v375 + 16))
    {
      break;
    }

    sub_1008FBB14(v464, v375 + v206 + v215);
    v379 = v487;
    v380 = *v487;
    v521 = v487[1];
    v522 = v380;
    v381 = v503;
    v382 = v459;
    v508 = v459 + v503[6];
    v456();
    v506 = v382 + v381[7];
    sub_1000302D8(v210, v506, &qword_100CB0BA8, &unk_100A40F80);
    v383 = v381[9];
    v520 = *(v379 + v381[8]);
    v384 = v219[2];
    v505 = v382 + v383;
    v501 = v219 + 2;
    v502 = v384;
    v384();
    v385 = *(v379 + v381[10]);
    v386 = v379 + v381[11];
    v387 = *v386;
    v519 = *(v386 + 1);
    v515 = *(v386 + 2);
    v388 = v386[24];
    v389 = v381[12];
    v390 = v382 + v389;
    type metadata accessor for Location();
    sub_1000037E8();
    v392 = *(v391 + 16);
    v393 = v379 + v389;
    v219 = v379;
    v495 = v390;
    v494 = v394;
    v493 = v392;
    v492 = v391 + 16;
    (v392)(v390, v393);
    v395 = v521;
    *v382 = v522;
    v382[1] = v395;
    v510 = v375;
    v382[2] = v375;
    v396 = v519;
    v210 = v520;
    *(v382 + v381[8]) = v520;
    *(v382 + v381[10]) = v385;
    v397 = v382 + v381[11];
    *v397 = v387;
    *(v397 + 1) = v396;
    v206 = v515;
    *(v397 + 2) = v515;
    LODWORD(v509) = v388;
    v397[24] = v388;
    v398 = *(v514 + v512);
    v524 = *(v398 + 16);
    LODWORD(v523) = enum case for DetailChartCondition.uvIndex(_:);
    v399 = (v525 + 104);
    v215 = v525 + 8;

    v525 = v387;

    v400 = 0;
    v401 = v475;
    while (1)
    {
      if (v524 == v400)
      {
        sub_1000B9AD0();

        sub_100028DA8();
        sub_10011CA9C(v466, v409);
        sub_10001FC7C();
        sub_10011CA9C(v219, v410);
        v411 = v479;
        v412 = v507;
        v413 = v503;
        v414 = v463;
        v415 = v513;
        v416 = v462;
        v417 = v461;
        v418 = v459;
        goto LABEL_83;
      }

      if (v400 >= *(v398 + 16))
      {
        break;
      }

      sub_10000C7B8();
      sub_100037378();
      sub_10011C404(v402, v378, v403);
      type metadata accessor for ConditionDetailChartDataInput(0);
      v404 = v465;
      (*v399)(v465, v523, v401);
      sub_1008FB650(&qword_100CD6250, &type metadata accessor for DetailChartCondition, &protocol conformance descriptor for DetailChartCondition);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v210 = v528;
      if (v529 == v527 && v530 == v528)
      {
        (*v215)(v404, v401);
        sub_100023500();
        sub_10011CA9C(v378, v419);

LABEL_82:

        v415 = v513;
        v526 = sub_1008F5C08(v507, v513, v461, v513 + v500[6], v462, v513 + v500[8], v463, v507[v518[25]]);
        sub_1000B9AD0();
        v413 = v503;
        v420 = v457;
        sub_100043B0C();
        v421();
        sub_1000302D8(v506, &v420[v413[7]], &qword_100CB0BA8, &unk_100A40F80);
        (v502)(&v420[v413[9]], v505, v496);
        v493(&v420[v413[12]], v495, v494);
        v422 = v521;

        v423 = v520;

        v424 = v525;

        v425 = v515;

        v426 = v510;

        v418 = v459;
        sub_10011CA9C(v459, type metadata accessor for ConditionDetailViewModel.Model);
        *v420 = v522;
        *(v420 + 1) = v422;
        *(v420 + 2) = v426;
        *&v420[v413[8]] = v423;
        v416 = v462;
        *&v420[v413[10]] = v526;
        v427 = &v420[v413[11]];
        *v427 = v424;
        v411 = v479;
        *(v427 + 1) = v519;
        *(v427 + 2) = v425;
        v417 = v461;
        v427[24] = v509;
        sub_100028DA8();
        sub_10011CA9C(v466, v428);
        v414 = v463;
        sub_10011CA9C(v487, type metadata accessor for ConditionDetailViewModel.Model);
        sub_10007527C();
        v429 = v420;
        v412 = v507;
        sub_100114640(v429, v418, v430);
LABEL_83:
        sub_10007527C();
        sub_100114640(v418, v499, v431);
        sub_10000E7B0();
        sub_10001B350(v432, v433, v434, v413);
        sub_10000E7B0();
        sub_10001B350(v435, v436, v437, v504);
        sub_1000180EC(v414, &qword_100CBFE98, &qword_100A58340);
        sub_1000180EC(v416, &qword_100CAC1B0, &unk_100A3B140);
        sub_1000180EC(v417, &qword_100CAC1B0, &unk_100A3B140);
        sub_10002122C();
        sub_10011CA9C(v460, v438);
        sub_100028DA8();
        sub_10011CA9C(v468, v439);
        sub_100006B40();
        sub_10011CA9C(v415, v440);
        v441 = sub_100086940();
        v442(v441);
        v443 = sub_1000B033C();
        v444(v443, v411);
        sub_10003C00C();
        sub_10011CA9C(v412, v445);
        v108 = v478;
        goto LABEL_3;
      }

      ++v400;
      v406 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v407 = v404;
      v206 = v406;
      (*v215)(v407, v401);
      sub_100023500();
      sub_10011CA9C(v378, v408);

      v219 = v487;
      if (v206)
      {
        goto LABEL_82;
      }
    }

    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    sub_1008FBB00();
    v375 = v446;
  }

  __break(1u);
}

uint64_t sub_1008F37B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char *a11, uint64_t a12)
{
  v282 = a8;
  v247 = a7;
  v246 = a6;
  v300 = a3;
  v301 = a5;
  v293 = a2;
  v283 = a9;
  v284 = 0;
  v295 = a11;
  v14 = sub_10022C350(&qword_100CE5250, &unk_100A98408);
  __chkstk_darwin(v14 - 8);
  v264 = &v238 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v279 = &v238 - v17;
  v278 = type metadata accessor for ConditionDetailViewModelFactory.DetailChartViewModelCacheKey(0);
  __chkstk_darwin(v278);
  v263 = &v238 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v280 = &v238 - v20;
  v291 = type metadata accessor for ExtremaResult();
  v262 = *(v291 - 8);
  __chkstk_darwin(v291);
  v261 = &v238 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v288 = type metadata accessor for DetailChartExtrema();
  v287 = *(v288 - 8);
  __chkstk_darwin(v288);
  v292 = &v238 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v286 = type metadata accessor for ChartViewModel(0);
  __chkstk_darwin(v286);
  v271 = &v238 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v273 = type metadata accessor for LollipopViewModel(0);
  __chkstk_darwin(v273);
  v255 = &v238 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10022C350(&qword_100CBFE98, &qword_100A58340);
  __chkstk_darwin(v25 - 8);
  v272 = &v238 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v294 = (&v238 - v28);
  v29 = type metadata accessor for MidpointInterpolator.InterpolationMode();
  v307 = *(v29 - 8);
  v308 = v29;
  __chkstk_darwin(v29);
  v238 = &v238 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v266 = sub_10022C350(&qword_100CB0D08, &unk_100A41050);
  __chkstk_darwin(v266);
  v302 = (&v238 - v31);
  v32 = sub_10022C350(&qword_100CAC3E8, &qword_100A40F90);
  __chkstk_darwin(v32 - 8);
  v252 = (&v238 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v34);
  v309 = &v238 - v35;
  v36 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  __chkstk_darwin(v36 - 8);
  v245 = &v238 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v249 = &v238 - v39;
  v267 = type metadata accessor for InterpolationElement();
  v310 = *(v267 - 8);
  __chkstk_darwin(v267);
  v303 = &v238 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v239 = &v238 - v42;
  __chkstk_darwin(v43);
  v305 = &v238 - v44;
  __chkstk_darwin(v45);
  v306 = &v238 - v46;
  v47 = sub_10022C350(&qword_100CE5258, &qword_100A98418);
  __chkstk_darwin(v47 - 8);
  v253 = &v238 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v49);
  v243 = &v238 - v50;
  __chkstk_darwin(v51);
  v241 = &v238 - v52;
  __chkstk_darwin(v53);
  v240 = &v238 - v54;
  __chkstk_darwin(v55);
  v244 = &v238 - v56;
  __chkstk_darwin(v57);
  v270 = &v238 - v58;
  v251 = sub_10022C350(&qword_100CCF728, &qword_100A98420);
  __chkstk_darwin(v251);
  v250 = &v238 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v60);
  v62 = &v238 - v61;
  v248 = sub_10022C350(&qword_100CCF730, &qword_100A70990);
  __chkstk_darwin(v248);
  v268 = &v238 - v63;
  v290 = type metadata accessor for Date();
  v64 = *(v290 - 8);
  __chkstk_darwin(v290);
  v66 = &v238 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v67);
  v254 = &v238 - v68;
  __chkstk_darwin(v69);
  v269 = &v238 - v70;
  v71 = type metadata accessor for DetailChartCondition();
  v72 = *(v71 - 8);
  __chkstk_darwin(v71);
  v259 = &v238 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v74);
  v76 = &v238 - v75;
  v77 = sub_10022C350(&qword_100CAC1B0, &unk_100A3B140);
  __chkstk_darwin(v77 - 8);
  v274 = &v238 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v79);
  v285 = &v238 - v80;
  __chkstk_darwin(v81);
  v265 = &v238 - v82;
  __chkstk_darwin(v83);
  v242 = &v238 - v84;
  __chkstk_darwin(v85);
  v298 = &v238 - v86;
  v87 = type metadata accessor for ConditionDetailChartDataInput(0);
  __chkstk_darwin(v87);
  v89 = (&v238 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0));
  v90 = *(type metadata accessor for ConditionDetailChartInput(0) + 20);
  v281 = a1;
  sub_10011C404(a1 + v90, v89, type metadata accessor for ConditionDetailChartDataInput);
  v91 = *(v87 + 24);
  v296 = v91;
  v304 = sub_10087A168(v89 + v91, a4);
  v92 = *(v72 + 16);
  v276 = v72 + 16;
  v275 = v92;
  v92(v76, v89 + v91, v71);
  LODWORD(a4) = (*(v72 + 88))(v76, v71);
  LODWORD(v91) = enum case for DetailChartCondition.chanceOfRain(_:);
  v260 = v72;
  v257 = *(v72 + 8);
  v257(v76, v71);
  v256 = v91;
  v93 = a4 == v91;
  v94 = v300;
  v297 = v89;
  v277 = v71;
  v289 = v64;
  v258 = v72 + 8;
  if (!v93)
  {
    v103 = *(type metadata accessor for ConditionDetailInput.Input(0) + 92);
    v104 = v307;
    v105 = v308;
    v106 = v309;
    (*(v307 + 104))(v309, enum case for MidpointInterpolator.InterpolationMode.monotoneCubic(_:), v308);
    sub_10001B350(v106, 0, 1, v105);
    v107 = *(v266 + 48);
    v108 = v94 + v103;
    v109 = v302;
    sub_1000302D8(v108, v302, &qword_100CAC3E8, &qword_100A40F90);
    sub_1000302D8(v106, v109 + v107, &qword_100CAC3E8, &qword_100A40F90);
    v110 = sub_100024D10(v109, 1, v105);
    if (v110 == 1)
    {
      sub_1000180EC(v106, &qword_100CAC3E8, &qword_100A40F90);
      v111 = sub_100024D10(v109 + v107, 1, v105);
      v112 = v300;
      if (v111 == 1)
      {
        sub_1000180EC(v109, &qword_100CAC3E8, &qword_100A40F90);
LABEL_18:
        if (v304)
        {

          ChartSeriesValues.interpolationElements.getter();
        }

        v138 = v296;
        v133 = v297;
        DetailChartCondition.interpolatedValueClampRange.getter();
        v139 = v265;
        WeatherInterpolator.reduce(_:from:to:clampRange:useMonotone:)();
        v134 = v138;

        sub_10011C0F0(v139, v298, &qword_100CAC1B0, &unk_100A3B140);
        v132 = v299;
        v129 = v304;
        goto LABEL_54;
      }
    }

    else
    {
      v131 = v252;
      sub_1000302D8(v109, v252, &qword_100CAC3E8, &qword_100A40F90);
      if (sub_100024D10(v109 + v107, 1, v105) != 1)
      {
        v135 = v109 + v107;
        v136 = v238;
        (*(v104 + 32))(v238, v135, v105);
        sub_1008FB650(&qword_100CB0D28, &type metadata accessor for MidpointInterpolator.InterpolationMode, &protocol conformance descriptor for MidpointInterpolator.InterpolationMode);
        dispatch thunk of static Equatable.== infix(_:_:)();
        v137 = *(v104 + 8);
        v137(v136, v105);
        sub_1000180EC(v309, &qword_100CAC3E8, &qword_100A40F90);
        v137(v131, v105);
        sub_1000180EC(v109, &qword_100CAC3E8, &qword_100A40F90);
        v112 = v300;
        goto LABEL_18;
      }

      sub_1000180EC(v309, &qword_100CAC3E8, &qword_100A40F90);
      (*(v104 + 8))(v131, v105);
      v112 = v300;
    }

    sub_1000180EC(v109, &qword_100CB0D08, &unk_100A41050);
    goto LABEL_18;
  }

  v266 = v66;
  v95 = *(v87 + 28);
  v96 = v295;
  v97 = static Date.< infix(_:_:)();
  v98 = (v64 + 16);
  v99 = *(v64 + 16);
  if (v97)
  {
    v100 = v269;
    v101 = v269;
    v102 = v96;
  }

  else
  {
    v102 = v89 + v95;
    v100 = v269;
    v101 = v269;
  }

  v113 = v290;
  v99(v101, v102, v290);
  v114 = v291;
  v115 = v304;
  v116 = *(v87 + 32);
  if (static Date.< infix(_:_:)())
  {
    sub_1008FB650(&qword_100CA7020, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v117 = v113;
    if ((dispatch thunk of static Comparable.<= infix(_:_:)() & 1) == 0)
    {
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
      goto LABEL_93;
    }

    v99(v62, v100, v113);
    v118 = v251;
    v99(&v62[*(v251 + 48)], v89 + v116, v113);
    v119 = v250;
    sub_1000302D8(v62, v250, &qword_100CCF728, &qword_100A98420);
    v120 = *(v118 + 48);
    v121 = v289;
    v123 = v289 + 32;
    v122 = *(v289 + 32);
    v124 = v268;
    v122(v268, v119, v113);
    v125 = *(v121 + 8);
    (v125)(v119 + v120, v113);
    sub_10011C0F0(v62, v119, &qword_100CCF728, &qword_100A98420);
    v126 = v124 + *(v248 + 36);
    v127 = v119 + *(v118 + 48);
    v251 = v123;
    v248 = v122;
    v122(v126, v127, v113);
    v128 = v119;
    v129 = v304;
    v265 = (v121 + 8);
    v252 = v125;
    v130 = (v125)(v128, v113);
    if (v129)
    {

      ChartSeriesValues.interpolationElements.getter();
    }

    v140 = v253;
    v142 = v305;
    v141 = v306;
    v143 = v249;
    __chkstk_darwin(v130);
    v144 = v284;
    sub_1000799DC();
    v284 = v144;
    v309 = *(v145 + 16);
    if (v309)
    {
      v147 = v310 + 16;
      v146 = *(v310 + 16);
      v148 = *(v310 + 80);
      v308 = v145;
      v149 = v145 + ((v148 + 32) & ~v148);
      v117 = v267;
      v150 = v146;
      (v146)(v141);
      v307 = v147 - 8;
      v302 = (v147 + 16);
      v87 = 1;
      v151 = v143;
      v98 = v239;
      while (v309 != v87)
      {
        if (v87 >= *(v308 + 16))
        {
          __break(1u);
LABEL_90:
          __break(1u);
          goto LABEL_91;
        }

        v152 = v310;
        v150(v98, v149 + *(v310 + 72) * v87, v117);
        v153 = v117;
        InterpolationElement.value.getter();
        v155 = v154;
        v156 = v306;
        InterpolationElement.value.getter();
        v157 = *(v152 + 8);
        if (v155 >= v158)
        {
          v157(v98, v153);
        }

        else
        {
          v157(v156, v153);
          (*v302)(v156, v98, v153);
        }

        v117 = v153;
        v143 = v151;
        ++v87;
      }

      v159 = v270;
      v160 = v306;
      v306 = *v302;
      (v306)(v270, v160, v117);
      sub_10001B350(v159, 0, 1, v117);
      v98 = v308;
      if (!*(v308 + 16))
      {
        goto LABEL_92;
      }

      v150(v142, v149, v117);
      v87 = 1;
      v161 = v303;
      while (v309 != v87)
      {
        if (v87 >= *(v98 + 2))
        {
          goto LABEL_90;
        }

        v162 = v310;
        v150(v161, v149 + *(v310 + 72) * v87, v117);
        v163 = v305;
        InterpolationElement.value.getter();
        v165 = v164;
        InterpolationElement.value.getter();
        v166 = *(v162 + 8);
        if (v165 >= v167)
        {
          v166(v161, v117);
        }

        else
        {
          v166(v163, v117);
          (v306)(v163, v161, v117);
        }

        ++v87;
        v143 = v151;
        v161 = v303;
        v98 = v308;
      }

      v168 = v244;
      (v306)(v244, v305, v117);
      sub_10001B350(v168, 0, 1, v117);
      v132 = v299;
      v129 = v304;
      v140 = v253;
    }

    else
    {
      v117 = v267;
      sub_10001B350(v270, 1, 1, v267);

      v168 = v244;
      sub_10001B350(v244, 1, 1, v117);
      v132 = v299;
    }

    v169 = v240;
    sub_1000302D8(v168, v240, &qword_100CE5258, &qword_100A98418);
    v170 = sub_100024D10(v169, 1, v117);
    v133 = v297;
    v171 = v290;
    v172 = v245;
    if (v170 == 1)
    {
      sub_1000180EC(v169, &qword_100CE5258, &qword_100A98418);
    }

    else
    {
      InterpolationElement.value.getter();
      v117 = v267;
      (*(v310 + 8))(v169, v267);
    }

    v173 = v241;
    sub_1000302D8(v168, v241, &qword_100CE5258, &qword_100A98418);
    if (sub_100024D10(v173, 1, v117) == 1)
    {
      sub_1000180EC(v173, &qword_100CE5258, &qword_100A98418);
      sub_10001B350(v143, 1, 1, v171);
      static WeatherClock.date.getter();
      if (sub_100024D10(v143, 1, v171) != 1)
      {
        sub_1000180EC(v143, &unk_100CB2CF0, &unk_100A2D7F0);
      }
    }

    else
    {
      InterpolationElement.date.getter();
      v117 = v267;
      (*(v310 + 8))(v173, v267);
      sub_10001B350(v143, 0, 1, v171);
      (v248)(v254, v143, v171);
    }

    v174 = v243;
    sub_1000302D8(v270, v243, &qword_100CE5258, &qword_100A98418);
    if (sub_100024D10(v174, 1, v117) == 1)
    {
      sub_1000180EC(v174, &qword_100CE5258, &qword_100A98418);
    }

    else
    {
      InterpolationElement.value.getter();
      v117 = v267;
      (*(v310 + 8))(v174, v267);
    }

    sub_1000302D8(v270, v140, &qword_100CE5258, &qword_100A98418);
    if (sub_100024D10(v140, 1, v117) == 1)
    {
      sub_1000180EC(v140, &qword_100CE5258, &qword_100A98418);
      sub_10001B350(v172, 1, 1, v171);
      static WeatherClock.date.getter();
      v175 = sub_100024D10(v172, 1, v171);
      v112 = v300;
      if (v175 != 1)
      {
        sub_1000180EC(v172, &unk_100CB2CF0, &unk_100A2D7F0);
      }
    }

    else
    {
      InterpolationElement.date.getter();
      (*(v310 + 8))(v140, v117);
      sub_10001B350(v172, 0, 1, v171);
      (v248)(v266, v172, v171);
      v112 = v300;
    }

    v176 = v242;
    ExtremaResult.init(maxValue:maxDate:minValue:minDate:)();
    sub_1000180EC(v168, &qword_100CE5258, &qword_100A98418);
    sub_1000180EC(v270, &qword_100CE5258, &qword_100A98418);
    (v252)(v269, v171);
    sub_10001B350(v176, 0, 1, v291);
    sub_10011C0F0(v176, v298, &qword_100CAC1B0, &unk_100A3B140);
    sub_1000180EC(v268, &qword_100CCF730, &qword_100A70990);
    v134 = v296;
  }

  else
  {
    (*(v289 + 8))(v100, v113);
    sub_10001B350(v298, 1, 1, v114);
    v132 = v299;
    v112 = v300;
    v133 = v89;
    v134 = v296;
    v129 = v115;
  }

LABEL_54:
  v309 = a12;
  v310 = type metadata accessor for ConditionDetailInput.Input(0);
  v177 = *(v310 + 36);
  if (sub_10074742C(v133 + v134, v112 + v177))
  {
    v178 = static Date.== infix(_:_:)();
    if (v178)
    {
      v311 = v132[66];
      __chkstk_darwin(v178);
      type metadata accessor for UnfairLock();

      v133 = v297;
      Lock.sync<A>(_:)();

      v129 = v304;
    }
  }

  if (sub_10074742C(v133 + v134, v112 + v177))
  {
    v179 = static Date.== infix(_:_:)();
    if (v179)
    {
      v311 = v132[66];
      __chkstk_darwin(v179);
      type metadata accessor for UnfairLock();

      v133 = v297;
      Lock.sync<A>(_:)();
    }
  }

  v180 = v294;
  sub_1008F7660(v112, v133, v309, v295, v129, v301, v294);
  v181 = v180;
  v182 = v272;
  sub_1000302D8(v181, v272, &qword_100CBFE98, &qword_100A58340);
  if (sub_100024D10(v182, 1, v273) == 1)
  {
    sub_1000180EC(v182, &qword_100CBFE98, &qword_100A58340);
  }

  else
  {
    v183 = v255;
    v184 = sub_100114640(v182, v255, type metadata accessor for LollipopViewModel);
    v311 = v132[66];
    __chkstk_darwin(v184);
    type metadata accessor for UnfairLock();

    v133 = v297;
    Lock.sync<A>(_:)();

    sub_10011CA9C(v183, type metadata accessor for LollipopViewModel);
  }

  sub_1008FA0BC(v133 + v134);
  v186 = v185;
  v188 = v187;
  if (v129)
  {
    v189 = ChartSeriesValues.seriesMinValue.getter();
    if (v190)
    {
      v308 = v189;
    }

    else
    {
      Double.clamped(to:)();
      v308 = v191;
    }

    ChartSeriesValues.seriesMaxValue.getter();
    if ((v192 & 1) == 0)
    {
      Double.clamped(to:)();
    }

    ChartSeriesValues.seriesMinSecondValue.getter();
    if ((v193 & 1) == 0)
    {
      Double.clamped(to:)();
    }

    ChartSeriesValues.seriesMaxSecondValue.getter();
    if ((v194 & 1) == 0)
    {
      Double.clamped(to:)();
    }

    ChartSeriesValues.seriesMinThirdValue.getter();
    if ((v195 & 1) == 0)
    {
      Double.clamped(to:)();
    }

    ChartSeriesValues.seriesMaxThirdValue.getter();
    if ((v196 & 1) == 0)
    {
      Double.clamped(to:)();
    }

    v117 = v291;
  }

  else
  {
    v117 = v291;
  }

  v197 = v292;
  DetailChartExtrema.init(minValue:maxValue:minSecondValue:maxSecondValue:minThirdValue:maxThirdValue:)();
  v198 = v274;
  sub_1000302D8(v298, v274, &qword_100CAC1B0, &unk_100A3B140);
  v199 = 1;
  v200 = sub_100024D10(v198, 1, v117);
  v201 = v280;
  v202 = v285;
  v203 = v290;
  if (v200 == 1)
  {
    goto LABEL_82;
  }

  v98 = v262;
  v87 = v261;
  (*(v262 + 4))(v261, v198, v117);
  v204 = v284;
  sub_1008FA2C8(v186, v188);
  if (v204)
  {
LABEL_93:
    result = (*(v98 + 1))(v87, v117);
    __break(1u);
    return result;
  }

  (*(v98 + 1))(v87, v117);
  v199 = 0;
LABEL_82:
  sub_10001B350(v202, v199, 1, v117);
  (*(v289 + 16))(v201, v293, v203);
  v205 = (v300 + *(v310 + 84));
  v207 = *v205;
  v206 = v205[1];
  v208 = v278;
  sub_1000302D8(v202, v201 + *(v278 + 24), &qword_100CAC1B0, &unk_100A3B140);
  v209 = v287;
  v210 = v197;
  v211 = v288;
  (*(v287 + 16))(v201 + v208[8], v210, v288);
  v212 = v208[9];
  v213 = type metadata accessor for ConditionUnits();
  (*(*(v213 - 8) + 16))(v201 + v212, v301, v213);
  v214 = v202;
  v215 = v296;
  v216 = v297;
  v217 = v277;
  v275(v201 + v208[10], v297 + v296, v277);
  v218 = (v201 + v208[5]);
  *v218 = v207;
  v218[1] = v206;
  v219 = (v201 + v208[7]);
  *v219 = v186;
  v219[1] = v188;

  v220 = v279;
  Cache.subscript.getter();
  if (sub_100024D10(v220, 1, v286) == 1)
  {
    sub_1000180EC(v220, &qword_100CE5250, &unk_100A98408);
    v221 = v259;
    (*(v260 + 104))(v259, v256, v217);
    v222 = sub_10074742C(v216 + v215, v221);
    v257(v221, v217);
    if (v222)
    {
      v223 = v299;
      v224 = sub_1008FA3DC(v295, v295, v309, v304);
      v226 = v225;
      v227 = v285;
      v228 = v271;
      v229 = v301;
    }

    else
    {
      v224 = 0;
      v226 = 1;
      v227 = v285;
      v228 = v271;
      v229 = v301;
      v223 = v299;
    }

    sub_1000161C0(v223 + 2, v223[5]);
    v231 = v226 & 1;
    v216 = v297;
    v232 = v292;
    sub_1002F6748(v297, v227, v292, v229, v224, v231, *(v300 + *(v310 + 104)), v228, v186, v188);
    sub_10011C404(v201, v263, type metadata accessor for ConditionDetailViewModelFactory.DetailChartViewModelCacheKey);
    v233 = v264;
    sub_10011C404(v228, v264, type metadata accessor for ChartViewModel);
    sub_10001B350(v233, 0, 1, v286);
    Cache.subscript.setter();
    sub_10011CA9C(v201, type metadata accessor for ConditionDetailViewModelFactory.DetailChartViewModelCacheKey);
    sub_1000180EC(v227, &qword_100CAC1B0, &unk_100A3B140);
    (*(v287 + 8))(v232, v288);
    v230 = v229;
  }

  else
  {
    sub_10011CA9C(v201, type metadata accessor for ConditionDetailViewModelFactory.DetailChartViewModelCacheKey);
    sub_1000180EC(v214, &qword_100CAC1B0, &unk_100A3B140);
    (*(v209 + 8))(v292, v211);
    v228 = v271;
    sub_100114640(v220, v271, type metadata accessor for ChartViewModel);
    v230 = v301;
    v223 = v299;
  }

  sub_1000161C0(v223 + 7, v223[10]);
  v234 = v283;
  v235 = v298;
  sub_100842838(v230, v298, v282, v283);
  v236 = type metadata accessor for DetailChartViewModel(0);
  sub_1008FA608(v216 + v296, (v234 + v236[7]));
  sub_10011CA9C(v216, type metadata accessor for ConditionDetailChartDataInput);
  sub_10011C0F0(v294, v234 + v236[6], &qword_100CBFE98, &qword_100A58340);
  sub_100114640(v228, v234 + v236[5], type metadata accessor for ChartViewModel);

  return sub_1000180EC(v235, &qword_100CAC1B0, &unk_100A3B140);
}

void *sub_1008F5C08(char *a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v9 = v8;
  v154 = a7;
  v143 = a6;
  v142 = a5;
  v141 = a4;
  v161 = a3;
  v159 = a2;
  v12 = sub_10022C350(&qword_100CA7188, &qword_100A35360);
  __chkstk_darwin(v12 - 8);
  v147 = &v125 - v13;
  v157 = type metadata accessor for DetailCondition();
  v160 = *(v157 - 8);
  __chkstk_darwin(v157);
  v144 = &v125 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10022C350(&qword_100CE5268, &qword_100A98438);
  __chkstk_darwin(v15 - 8);
  v145 = &v125 - v16;
  v17 = type metadata accessor for ArticlePlacementLocation();
  v131 = *(v17 - 8);
  __chkstk_darwin(v17);
  v130 = &v125 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10022C350(&qword_100CB8A48, &qword_100A7FE00);
  __chkstk_darwin(v19 - 8);
  v146 = &v125 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v155 = &v125 - v22;
  __chkstk_darwin(v23);
  v25 = &v125 - v24;
  v26 = sub_10022C350(&qword_100CA71A0, &unk_100A322C0);
  __chkstk_darwin(v26 - 8);
  v138 = &v125 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v30 = &v125 - v29;
  __chkstk_darwin(v31);
  v134 = &v125 - v32;
  __chkstk_darwin(v33);
  v137 = &v125 - v34;
  v156 = type metadata accessor for ConditionDetailPlatterViewModel(0);
  v153 = *(v156 - 8);
  __chkstk_darwin(v156);
  v132 = &v125 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v140 = &v125 - v37;
  __chkstk_darwin(v38);
  v139 = &v125 - v39;
  __chkstk_darwin(v40);
  v135 = &v125 - v41;
  __chkstk_darwin(v42);
  v133 = &v125 - v43;
  __chkstk_darwin(v44);
  v128 = &v125 - v45;
  __chkstk_darwin(v46);
  v136 = &v125 - v47;
  v48 = sub_10022C350(&qword_100CBFE98, &qword_100A58340);
  __chkstk_darwin(v48 - 8);
  v50 = &v125 - v49;
  v51 = type metadata accessor for LollipopViewModel(0);
  __chkstk_darwin(v51);
  v152 = &v125 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for ConditionDetailViewModelFactory.DetailPlatterViewModelsCacheKey(0);
  __chkstk_darwin(v53);
  v129 = &v125 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v55);
  v158 = &v125 - v56;
  v57 = a8;
  if ((a8 & 1) != 0 || (type metadata accessor for ConditionDetailInput.Input(0), (DetailCondition.presentsTwoCharts.getter() & 1) == 0))
  {
    v127 = v17;
    v148 = v9;
    v149 = v30;
    v151 = v25;
    v163 = _swiftEmptyArrayStorage;
    v59 = type metadata accessor for ConditionDetailInput.Input(0);
    v60 = v59[10];
    v61 = type metadata accessor for Date();
    v62 = v158;
    (*(*(v61 - 8) + 16))(v158, &a1[v60], v61);
    v63 = &a1[v59[21]];
    v64 = a1;
    v66 = *v63;
    v65 = *(v63 + 1);
    sub_1000302D8(v161, v62 + v53[6], &qword_100CAC1B0, &unk_100A3B140);
    v67 = v53[7];
    v68 = type metadata accessor for ConditionUnits();
    (*(*(v68 - 8) + 16))(v62 + v67, v159, v68);
    v126 = v59;
    v69 = *(v160 + 16);
    v70 = v62 + v53[8];
    v150 = v59[8];
    v160 += 16;
    v125 = v69;
    v69(v70, &v64[v150], v157);
    v71 = (v62 + v53[5]);
    *v71 = v66;
    v71[1] = v65;
    *(v62 + v53[9]) = v57 & 1;
    sub_1000302D8(v154, v50, &qword_100CBFE98, &qword_100A58340);
    if (sub_100024D10(v50, 1, v51) == 1)
    {

      sub_1000180EC(v50, &qword_100CBFE98, &qword_100A58340);
      v72 = v148;
      v73 = v149;
      v74 = v64;
      v75 = v161;
      v76 = v155;
    }

    else
    {
      v77 = v152;
      sub_100114640(v50, v152, type metadata accessor for LollipopViewModel);
      v72 = v148;
      sub_1000161C0(v148 + 55, v148[58]);

      v78 = v137;
      sub_1009CAAD4(v64, v137);
      v79 = sub_100024D10(v78, 1, v156);
      v74 = v64;
      v76 = v155;
      if (v79 != 1)
      {
        v84 = v78;
        v85 = v136;
        sub_100114640(v84, v136, type metadata accessor for ConditionDetailPlatterViewModel);
        v86 = v128;
        sub_10011C404(v85, v128, type metadata accessor for ConditionDetailPlatterViewModel);
        sub_10069EC8C();
        v88 = v87;
        v89 = v87[2];
        v73 = v149;
        v75 = v161;
        if (v89 >= v87[3] >> 1)
        {
          sub_10069EC8C();
          v88 = v123;
        }

        v90 = v141;
        sub_10011CA9C(v136, type metadata accessor for ConditionDetailPlatterViewModel);
        sub_10011CA9C(v152, type metadata accessor for LollipopViewModel);
        v88[2] = v89 + 1;
        sub_100114640(v86, v88 + ((*(v153 + 80) + 32) & ~*(v153 + 80)) + *(v153 + 72) * v89, type metadata accessor for ConditionDetailPlatterViewModel);
        LODWORD(v154) = 0;
        v163 = v88;
        v80 = v159;
        v83 = v127;
        goto LABEL_19;
      }

      sub_10011CA9C(v77, type metadata accessor for LollipopViewModel);
      sub_1000180EC(v78, &qword_100CA71A0, &unk_100A322C0);
      v73 = v149;
      v75 = v161;
      v62 = v158;
    }

    Cache.subscript.getter();
    v58 = v162;
    v80 = v159;
    if (v162)
    {
      v81 = v62;
LABEL_37:
      sub_10011CA9C(v81, type metadata accessor for ConditionDetailViewModelFactory.DetailPlatterViewModelsCacheKey);
      return v58;
    }

    sub_1000161C0(v72 + 60, v72[63]);
    v82 = v134;
    sub_1005F6FCC(v74, v80, v134);
    if (sub_100024D10(v82, 1, v156) == 1)
    {
      sub_1000180EC(v82, &qword_100CA71A0, &unk_100A322C0);
      v83 = v127;
    }

    else
    {
      v91 = v82;
      v92 = v133;
      sub_100114640(v91, v133, type metadata accessor for ConditionDetailPlatterViewModel);
      sub_10011C404(v92, v135, type metadata accessor for ConditionDetailPlatterViewModel);
      sub_10069EC8C();
      v94 = v93;
      v95 = v93[2];
      v83 = v127;
      if (v95 >= v93[3] >> 1)
      {
        sub_10069EC8C();
        v94 = v124;
      }

      sub_10011CA9C(v133, type metadata accessor for ConditionDetailPlatterViewModel);
      v94[2] = v95 + 1;
      sub_100114640(v135, v94 + ((*(v153 + 80) + 32) & ~*(v153 + 80)) + *(v153 + 72) * v95, type metadata accessor for ConditionDetailPlatterViewModel);
      v163 = v94;
    }

    sub_1000161C0(v72 + 13, v72[16]);
    v90 = v141;
    v96 = sub_10034CC74(v74, v75, v141, v80);
    sub_10035DA54(v96);
    LODWORD(v154) = 1;
LABEL_19:
    sub_1000161C0(v72 + 13, v72[16]);
    sub_10034E6E4(v74, v75, v90, v142, v143, v80, v73);
    v97 = v138;
    sub_1000302D8(v73, v138, &qword_100CA71A0, &unk_100A322C0);
    if (sub_100024D10(v97, 1, v156) == 1)
    {
      sub_1000180EC(v97, &qword_100CA71A0, &unk_100A322C0);
    }

    else
    {
      v98 = v97;
      v99 = v139;
      sub_100114640(v98, v139, type metadata accessor for ConditionDetailPlatterViewModel);
      sub_10011C404(v99, v140, type metadata accessor for ConditionDetailPlatterViewModel);
      v100 = v163;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10069EC8C();
        v100 = v119;
      }

      v101 = v100[2];
      if (v101 >= v100[3] >> 1)
      {
        sub_10069EC8C();
        v100 = v120;
      }

      sub_10011CA9C(v139, type metadata accessor for ConditionDetailPlatterViewModel);
      v100[2] = v101 + 1;
      sub_100114640(v140, v100 + ((*(v153 + 80) + 32) & ~*(v153 + 80)) + *(v153 + 72) * v101, type metadata accessor for ConditionDetailPlatterViewModel);
      v163 = v100;
    }

    v102 = v144;
    v103 = v145;
    v104 = v73;
    v125(v144, &v74[v150], v157);
    sub_10079DD20(v102, v103);
    if (sub_100024D10(v103, 1, v83) == 1)
    {
      sub_1000180EC(v103, &qword_100CE5268, &qword_100A98438);
      v105 = type metadata accessor for NewsArticleComponentViewModel(0);
      sub_10001B350(v76, 1, 1, v105);
      v106 = v126;
    }

    else
    {
      v107 = v131;
      v108 = v130;
      (*(v131 + 32))(v130, v103, v83);
      sub_1000161C0(v72 + 38, v72[41]);
      v106 = v126;
      sub_1005C188C(v108, v76);
      (*(v107 + 8))(v108, v83);
    }

    v109 = v151;
    sub_10011C0F0(v76, v151, &qword_100CB8A48, &qword_100A7FE00);
    sub_1000161C0(v72 + 13, v72[16]);
    v110 = v146;
    sub_1000302D8(v109, v146, &qword_100CB8A48, &qword_100A7FE00);
    v111 = v147;
    sub_100428C50(v110, v147);
    v112 = v150;
    v113 = sub_1003499D8(&v74[v150], v80, v111, v161, v74[v106[25]]);
    sub_1000180EC(v111, &qword_100CA7188, &qword_100A35360);
    sub_10035DA54(v113);
    if (sub_1008FB6E0(&v74[v112]))
    {
      v114 = v132;
      sub_1008FB878(v132);
      v115 = v163;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10069EC8C();
        v115 = v121;
      }

      v116 = v115[2];
      if (v116 >= v115[3] >> 1)
      {
        sub_10069EC8C();
        v115 = v122;
      }

      v115[2] = v116 + 1;
      sub_100114640(v114, v115 + ((*(v153 + 80) + 32) & ~*(v153 + 80)) + *(v153 + 72) * v116, type metadata accessor for ConditionDetailPlatterViewModel);
      v163 = v115;
    }

    if (!v154)
    {
      sub_1000180EC(v151, &qword_100CB8A48, &qword_100A7FE00);
      sub_1000180EC(v104, &qword_100CA71A0, &unk_100A322C0);
      sub_10011CA9C(v158, type metadata accessor for ConditionDetailViewModelFactory.DetailPlatterViewModelsCacheKey);
      return v163;
    }

    v117 = v158;
    sub_10011C404(v158, v129, type metadata accessor for ConditionDetailViewModelFactory.DetailPlatterViewModelsCacheKey);
    v58 = v163;
    v162 = v163;

    Cache.subscript.setter();
    sub_1000180EC(v151, &qword_100CB8A48, &qword_100A7FE00);
    sub_1000180EC(v104, &qword_100CA71A0, &unk_100A322C0);
    v81 = v117;
    goto LABEL_37;
  }

  return _swiftEmptyArrayStorage;
}