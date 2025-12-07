uint64_t sub_1008F6CA8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11, uint64_t a12)
{
  v55 = a7;
  v56 = a8;
  v53 = a5;
  v54 = a6;
  v52 = a4;
  v15 = type metadata accessor for DetailChartViewModel(0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15 - 8);
  v18 = v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = v44 - v20;
  v46 = type metadata accessor for DetailChartsViewModel(0);
  __chkstk_darwin(v46);
  v23 = v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for ConditionDetailChartInput(0);
  v47 = *(v24 - 8);
  __chkstk_darwin(v24 - 8);
  v26 = v44 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for ConditionDetailChartInputs(0);
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v57 = v44 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for ConditionDetailInput.Input(0);
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v31 = *(a2 + *(result + 28));
  if (*(v31 + 16) <= a1)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v51 = a2;
  v44[1] = a1;
  v45 = v23;
  v44[0] = a12;
  v32 = v57;
  sub_10011C404(v31 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * a1, v57, type metadata accessor for ConditionDetailChartInputs);
  v33 = *(v32 + *(v27 + 20));
  v34 = *(v33 + 16);
  if (v34)
  {
    v49 = a10;
    v50 = a11;
    v48 = a9;
    v35 = v33 + ((*(v47 + 80) + 32) & ~*(v47 + 80));
    v47 = *(v47 + 72);
    v36 = _swiftEmptyArrayStorage;
    do
    {
      sub_10011C404(v35, v26, type metadata accessor for ConditionDetailChartInput);
      sub_1008F37B8(v26, v57, v51, v52, v53, v54, v55, v56, v21, v48, v49, v50);
      sub_10011CA9C(v26, type metadata accessor for ConditionDetailChartInput);
      sub_10011C404(v21, v18, type metadata accessor for DetailChartViewModel);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1006A023C();
        v36 = v38;
      }

      v37 = v36[2];
      if (v37 >= v36[3] >> 1)
      {
        sub_1006A023C();
        v36 = v39;
      }

      sub_10011CA9C(v21, type metadata accessor for DetailChartViewModel);
      v36[2] = v37 + 1;
      sub_100114640(v18, v36 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v37, type metadata accessor for DetailChartViewModel);
      v35 += v47;
      --v34;
    }

    while (v34);
  }

  else
  {
    v36 = _swiftEmptyArrayStorage;
  }

  v40 = type metadata accessor for Date();
  v41 = v45;
  v42 = v57;
  v43 = (*(*(v40 - 8) + 16))(v45, v57, v40);
  *(v41 + *(v46 + 20)) = v36;
  v58 = *(a3 + 528);
  __chkstk_darwin(v43);
  type metadata accessor for UnfairLock();

  Lock.sync<A>(_:)();

  sub_10011CA9C(v42, type metadata accessor for ConditionDetailChartInputs);
  return sub_10011CA9C(v41, type metadata accessor for DetailChartsViewModel);
}

void sub_1008F71FC(uint64_t *a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_10022C350(&qword_100CBFEA0, &qword_100A765B0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v9 = &v14 - v8;
  sub_10011C404(a3, &v14 - v8, type metadata accessor for DetailChartsViewModel);
  v10 = type metadata accessor for DetailChartsViewModel(0);
  sub_10001B350(v9, 0, 1, v10);
  v11 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v11;
  if (isUniquelyReferenced_nonNull_native)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_1008FBD64();
  v11 = v13;
  *a1 = v13;
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (*(v11 + 16) > a2)
  {
    sub_10053347C(v9, v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * a2, &qword_100CBFEA0, &qword_100A765B0);
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_1008F735C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CE5260, &unk_100A98428);
  __chkstk_darwin(v4 - 8);
  v6 = &v12[-v5];
  v7 = type metadata accessor for DetailChartConditionInfo(0);
  __chkstk_darwin(v7);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = a1;
  sub_1008DBF4C(sub_1008FBE64, v12, a2);
  if (sub_100024D10(v6, 1, v7) == 1)
  {
    sub_1000180EC(v6, &qword_100CE5260, &unk_100A98428);
    return DetailCondition.title.getter();
  }

  else
  {
    sub_100114640(v6, v9, type metadata accessor for DetailChartConditionInfo);
    v10 = *v9;

    sub_10011CA9C(v9, type metadata accessor for DetailChartConditionInfo);
  }

  return v10;
}

uint64_t sub_1008F74EC(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  InterpolationElement.date.getter();
  sub_1008FB650(&qword_100CA7020, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  if (dispatch thunk of static Comparable.>= infix(_:_:)())
  {
    sub_10022C350(&qword_100CCF730, &qword_100A70990);
    v6 = dispatch thunk of static Comparable.<= infix(_:_:)();
  }

  else
  {
    v6 = 0;
  }

  (*(v3 + 8))(v5, v2);
  return v6 & 1;
}

objc_class *sub_1008F7660@<X0>(objc_class *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void (*a7)(void, void, void)@<X8>)
{
  v322 = a6;
  v353 = a5;
  v301 = a4;
  v362 = a3;
  v375 = a2;
  v376 = a7;
  v8 = type metadata accessor for LollipopDetailViewModel(0);
  __chkstk_darwin(v8 - 8);
  v304 = &v283 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v356 = type metadata accessor for DetailChartDataPoint();
  v303 = *(v356 - 8);
  __chkstk_darwin(v356);
  v302 = &v283 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v347 = type metadata accessor for InterpolationElement();
  v348 = *(v347 - 8);
  __chkstk_darwin(v347);
  v300 = &v283 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v344 = &v283 - v13;
  v14 = type metadata accessor for TimeZone();
  v297 = *(v14 - 8);
  v298 = v14;
  __chkstk_darwin(v14);
  v299 = &v283 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v318 = &v283 - v17;
  v317 = type metadata accessor for CurrentWeather();
  v315 = *(v317 - 8);
  __chkstk_darwin(v317);
  v316 = &v283 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for ConditionUnits();
  v312 = *(v19 - 8);
  v313 = v19;
  __chkstk_darwin(v19);
  v314 = &v283 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10022C350(&qword_100CAB9B0, &qword_100A3A820);
  __chkstk_darwin(v21 - 8);
  v311 = &v283 - v22;
  v23 = type metadata accessor for WeatherValueCalculationContext();
  v320 = *(v23 - 8);
  v321 = v23;
  __chkstk_darwin(v23);
  v319 = &v283 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v352 = type metadata accessor for HourWeather();
  v351 = *(v352 - 8);
  __chkstk_darwin(v352);
  v342 = &v283 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v343 = &v283 - v27;
  v28 = sub_10022C350(&qword_100CAC3C8, &unk_100A3B350);
  __chkstk_darwin(v28 - 8);
  v340 = &v283 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v341 = &v283 - v31;
  __chkstk_darwin(v32);
  v339 = &v283 - v33;
  __chkstk_darwin(v34);
  v354 = &v283 - v35;
  __chkstk_darwin(v36);
  v355 = &v283 - v37;
  v38 = sub_10022C350(&qword_100CDE6E0, &unk_100A8D7D0);
  __chkstk_darwin(v38 - 8);
  v324 = &v283 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v323 = &v283 - v41;
  __chkstk_darwin(v42);
  v357 = &v283 - v43;
  __chkstk_darwin(v44);
  v363 = (&v283 - v45);
  v46 = type metadata accessor for ChartViewModelInterpolationMode();
  v306 = *(v46 - 8);
  v307 = v46;
  __chkstk_darwin(v46);
  v305 = &v283 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_10022C350(&qword_100CAC3E8, &qword_100A40F90);
  __chkstk_darwin(v48 - 8);
  v308 = &v283 - v49;
  v50 = type metadata accessor for MidpointInterpolator.InterpolationMode();
  v337 = *(v50 - 8);
  v338 = v50;
  __chkstk_darwin(v50);
  v336 = &v283 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for MidpointInterpolator();
  v309 = *(v52 - 8);
  v310 = v52;
  __chkstk_darwin(v52);
  v350 = &v283 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for Calendar.SearchDirection();
  v334 = *(v54 - 8);
  v335 = v54;
  __chkstk_darwin(v54);
  v333 = &v283 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v360 = type metadata accessor for Calendar.RepeatedTimePolicy();
  v332 = *(v360 - 8);
  __chkstk_darwin(v360);
  v330 = &v283 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v359 = type metadata accessor for Calendar.MatchingPolicy();
  v329 = *(v359 - 8);
  __chkstk_darwin(v359);
  v328 = &v283 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  __chkstk_darwin(v58 - 8);
  v331 = &v283 - v59;
  v371 = type metadata accessor for Date();
  v370 = *(v371 - 8);
  __chkstk_darwin(v371);
  v345 = &v283 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v61);
  v63 = &v283 - v62;
  __chkstk_darwin(v64);
  v349 = &v283 - v65;
  __chkstk_darwin(v66);
  v361 = &v283 - v67;
  __chkstk_darwin(v68);
  v358 = &v283 - v69;
  __chkstk_darwin(v70);
  v368 = &v283 - v71;
  __chkstk_darwin(v72);
  v364 = &v283 - v73;
  __chkstk_darwin(v74);
  v367 = &v283 - v75;
  v76 = sub_10022C350(&qword_100CB0D40, &qword_100A41070);
  __chkstk_darwin(v76 - 8);
  v78 = &v283 - v77;
  v366 = type metadata accessor for ConditionDetailChartInputs(0);
  __chkstk_darwin(v366);
  v365 = &v283 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for DetailCondition();
  v326 = *(v80 - 8);
  v327 = v80;
  __chkstk_darwin(v80);
  v325 = &v283 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  v373 = type metadata accessor for DetailChartCondition();
  v374 = *(v373 - 8);
  __chkstk_darwin(v373);
  v83 = &v283 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_10022C350(&qword_100CB0BA8, &unk_100A40F80);
  __chkstk_darwin(v84 - 8);
  v86 = &v283 - v85;
  v87 = type metadata accessor for DetailChartSelection(0);
  __chkstk_darwin(v87);
  v89 = &v283 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  v369 = type metadata accessor for ConditionDetailInput.Input(0);
  v90 = v369[20];
  v372 = a1;
  sub_1000302D8(a1 + v90, v86, &qword_100CB0BA8, &unk_100A40F80);
  if (sub_100024D10(v86, 1, v87) == 1)
  {
    sub_1000180EC(v86, &qword_100CB0BA8, &unk_100A40F80);
LABEL_12:
    v109 = v376;
LABEL_13:
    v115 = type metadata accessor for LollipopViewModel(0);
    return sub_10001B350(v109, 1, 1, v115);
  }

  sub_100114640(v86, v89, type metadata accessor for DetailChartSelection);
  v91 = v87[5];
  v92 = type metadata accessor for ConditionDetailChartDataInput(0);
  v93 = v375;
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    sub_10011CA9C(v89, type metadata accessor for DetailChartSelection);
    goto LABEL_12;
  }

  v94 = v93;
  v289 = v91;
  v290 = v92;
  v291 = v63;
  v296 = v89;
  v95 = *v89;
  v96 = *(v89 + 1);
  v97 = v374;
  v98 = *(v374 + 16);
  v295 = *(v92 + 24);
  v99 = v83;
  v100 = v83;
  v101 = v373;
  v285 = v98;
  v286 = v374 + 16;
  v98(v99, v94 + v295, v373);
  v102 = DetailChartCondition.id.getter();
  v104 = v103;
  v105 = *(v97 + 8);
  v293 = v97 + 8;
  v294 = v100;
  v292 = v105;
  v105(v100, v101);
  v106 = v95 == v102 && v96 == v104;
  if (v106)
  {

    v109 = v376;
  }

  else
  {
    v107 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v109 = v376;
    if ((v107 & 1) == 0)
    {
      v111 = v325;
      v110 = v326;
      v112 = v327;
      (*(v326 + 104))(v325, enum case for DetailCondition.precipitationTotal(_:), v327);
      v113 = static DetailCondition.== infix(_:_:)();
      v108 = (*(v110 + 8))(v111, v112);
      if ((v113 & 1) == 0)
      {
        v114 = v296;
LABEL_17:
        sub_10011CA9C(v114, type metadata accessor for DetailChartSelection);
        goto LABEL_13;
      }
    }
  }

  __chkstk_darwin(v108);
  v117 = v296;
  sub_1008DC64C();
  if (sub_100024D10(v78, 1, v366) == 1)
  {
    sub_1000180EC(v78, &qword_100CB0D40, &qword_100A41070);
    v114 = v117;
    goto LABEL_17;
  }

  sub_100114640(v78, v365, type metadata accessor for ConditionDetailChartInputs);
  v118 = &v289[v117];
  v119 = v371;
  v287 = *(v370 + 16);
  v288 = v370 + 16;
  v287(v367, v118, v371);
  v120 = enum case for DetailChartCondition.chanceOfRain(_:);
  v121 = *(v374 + 104);
  v122 = v294;
  v123 = v373;
  v374 += 104;
  v289 = v121;
  (v121)(v294, enum case for DetailChartCondition.chanceOfRain(_:), v373);
  v124 = v375;
  v125 = sub_10074742C(v375 + v295, v122);
  v292(v122, v123);
  if (v125)
  {
    if (!*(v124 + *(v290 + 36)) || (Date.distance(to:)(), v126 > 3600.0))
    {
      (*(v370 + 8))(v367, v119);
      sub_10011CA9C(v365, type metadata accessor for ConditionDetailChartInputs);
      v127 = type metadata accessor for LollipopViewModel(0);
      sub_10001B350(v376, 1, 1, v127);
LABEL_89:
      v242 = v296;
      return sub_10011CA9C(v242, type metadata accessor for DetailChartSelection);
    }
  }

  v283 = 0;
  v128 = v294;
  v284 = v120;
  v129 = v373;
  (v289)(v294, v120, v373);
  v130 = sub_10074742C(v124 + v295, v128);
  v292(v128, v129);
  if ((v130 & 1) == 0 || (v131 = &v296[v87[9]], v131[8] == 1))
  {
    v131 = &v296[v87[8]];
  }

  v132 = *v131;
  v133 = v364;
  v134 = v287;
  v287(v364, &v296[v87[6]], v119);
  v134(v368, v133, v119);
  v135 = v328;
  v136 = v329;
  (*(v329 + 104))(v328, enum case for Calendar.MatchingPolicy.nextTime(_:), v359);
  v137 = v332;
  v138 = v330;
  (*(v332 + 104))(v330, enum case for Calendar.RepeatedTimePolicy.first(_:), v360);
  v139 = v333;
  v140 = v334;
  v141 = v335;
  (*(v334 + 104))(v333, enum case for Calendar.SearchDirection.forward(_:), v335);
  v142 = v331;
  Calendar.date(bySettingHour:minute:second:of:matchingPolicy:repeatedTimePolicy:direction:)();
  (*(v140 + 8))(v139, v141);
  (*(v137 + 8))(v138, v360);
  v143 = v135;
  v144 = v371;
  (*(v136 + 8))(v143, v359);
  v145 = sub_100024D10(v142, 1, v144);
  v146 = v339;
  if (v145 == 1)
  {
    v147 = v358;
    v287(v358, v367, v144);
    v148 = sub_100024D10(v142, 1, v144);
    v149 = v338;
    if (v148 != 1)
    {
      sub_1000180EC(v142, &unk_100CB2CF0, &unk_100A2D7F0);
    }
  }

  else
  {
    v147 = v358;
    (*(v370 + 32))(v358, v142, v144);
    v149 = v338;
  }

  v150 = v361;
  Date.wc_addDays(_:calendar:)();
  v151 = static Date.< infix(_:_:)();
  v152 = v283;
  v153 = v375;
  if (v151)
  {
    goto LABEL_30;
  }

  if (static Date.> infix(_:_:)())
  {
    (*(v370 + 24))(v368, v150, v144);
    goto LABEL_33;
  }

  v163 = v301;
  if ((sub_1008FA964(v368, v301, v153 + v295) & 1) == 0)
  {
    goto LABEL_33;
  }

  if (static Date.< infix(_:_:)())
  {
LABEL_30:
    (*(v370 + 24))(v368, v147, v144);
  }

  else
  {
    v164 = static Date.> infix(_:_:)();
    v165 = v368;
    (*(v370 + 8))(v368, v144);
    if (v164)
    {
      v166 = v150;
    }

    else
    {
      v166 = v163;
    }

    v287(v165, v166, v144);
  }

LABEL_33:
  if ((DetailChartCondition.shouldInterpolateLollipop.getter() & 1) != 0 && v353)
  {
    ChartSeriesValues.interpolationElements.getter();
    MidpointInterpolator.init()();
    v287(v349, v368, v144);
    (*(v306 + 16))(v305, v153 + *(v290 + 56), v307);
    v154 = v308;
    MidpointInterpolator.InterpolationMode.init(_:)();
    if (sub_100024D10(v154, 1, v149) == 1)
    {
      (*(v337 + 104))(v336, enum case for MidpointInterpolator.InterpolationMode.cubic(_:), v149);
      v106 = sub_100024D10(v154, 1, v149) == 1;
      v155 = v154;
      v156 = v340;
      if (!v106)
      {
        sub_1000180EC(v155, &qword_100CAC3E8, &qword_100A40F90);
      }
    }

    else
    {
      (*(v337 + 32))(v336, v154, v149);
      v156 = v340;
    }

    MidpointInterpolator.interpolationValue(data:date:interpolationMode:)();
    v162 = v152 != 0;
    if (v152)
    {

      v362 = 0;
      v152 = 0;
    }

    else
    {
      v168 = v167;

      v362 = v168;
    }

    (*(v337 + 8))(v336, v149);
    (*(v370 + 8))(v349, v144);
    (*(v309 + 8))(v350, v310);
    v158 = v284;
  }

  else
  {
    v157 = v294;
    v158 = v284;
    v159 = v373;
    (v289)(v294, v284, v373);
    v160 = sub_10074742C(v153 + v295, v157);
    v292(v157, v159);
    if (v160)
    {
      v362 = sub_1008FA3DC(v368, v372, v362, v353);
      v162 = v161;
    }

    else
    {
      v362 = 0;
      v162 = 1;
    }

    v156 = v340;
  }

  if (((DetailChartCondition.shouldInterpolateLollipop.getter() & 1) == 0 || v162) && (v169 = v294, v170 = v373, (v289)(v294, v158, v373), v171 = sub_10074742C(v375 + v295, v169), v292(v169, v170), v162 || (v171 & 1) == 0))
  {
    v172 = 1;
    v173 = v363;
  }

  else
  {
    v287(v291, v368, v144);
    v173 = v363;
    DetailChartDataPoint.init(date:value:)();
    v172 = 0;
  }

  v174 = v355;
  v175 = v173;
  v176 = v356;
  sub_10001B350(v175, v172, 1, v356);
  v177 = sub_10001B350(v357, 1, 1, v176);
  v178 = *(v365 + *(v366 + 20));
  v179 = *(v178 + 16);
  LODWORD(v360) = v162;
  if (v179)
  {
    type metadata accessor for ConditionDetailChartInput(0);
  }

  __chkstk_darwin(v177);
  sub_1008DBAC8();

  v180 = v294;
  v181 = v373;
  (v289)(v294, v158, v373);
  sub_1008FB650(&qword_100CA39E0, &type metadata accessor for DetailChartCondition, &protocol conformance descriptor for DetailChartCondition);
  v182 = dispatch thunk of static Equatable.== infix(_:_:)();
  v292(v180, v181);
  v183 = v352;
  if ((v182 & 1) != 0 || (v184 = sub_100024D10(v174, 1, v352), v184 != 1))
  {
    v359 = v152;
    sub_10001B350(v146, 1, 1, v183);
    v185 = v354;
  }

  else
  {
    v185 = v354;
    if (*(v178 + 16))
    {
      type metadata accessor for ConditionDetailChartInput(0);
    }

    __chkstk_darwin(v184);
    sub_1008EFBA0();
    v359 = v152;
  }

  v186 = v341;
  sub_10011C0F0(v146, v185, &qword_100CAC3C8, &unk_100A3B350);
  sub_1000302D8(v174, v156, &qword_100CAC3C8, &unk_100A3B350);
  if (sub_100024D10(v156, 1, v183) == 1)
  {
    sub_1000302D8(v185, v186, &qword_100CAC3C8, &unk_100A3B350);
    v187 = sub_100024D10(v156, 1, v183);
    v188 = v296;
    if (v187 != 1)
    {
      sub_1000180EC(v156, &qword_100CAC3C8, &unk_100A3B350);
    }
  }

  else
  {
    (*(v351 + 32))(v186, v156, v183);
    sub_10001B350(v186, 0, 1, v183);
    v188 = v296;
  }

  if (sub_100024D10(v186, 1, v183) != 1)
  {
    v204 = v351;
    v205 = v343;
    (*(v351 + 32))(v343, v186, v183);
    (*(v204 + 16))(v342, v205, v183);
    v206 = v369[15];
    v207 = v369;
    v208 = type metadata accessor for DayWeather();
    v209 = v372;
    v210 = v372 + v206;
    v211 = v311;
    (*(*(v208 - 8) + 16))(v311, v210, v208);
    sub_10001B350(v211, 0, 1, v208);
    v212 = v295;
    v285(v294, v375 + v295, v373);
    (*(v312 + 16))(v314, v322, v313);
    (*(v315 + 16))(v316, v209 + v207[16], v317);
    Location.timeZone.getter();
    v213 = v319;
    WeatherValueCalculationContext.init(hourWeather:dayWeather:chartCondition:units:currentWeather:timeZone:)();
    v214 = v375 + v212;
    v215 = v346;
    sub_1008FA0BC(v214);
    sub_1000161C0(v215 + 48, v215[51]);
    sub_10084BFD0(v209 + v369[8], v363, &v378);
    if (v360)
    {
      sub_1000161C0(v215 + 28, v215[31]);
      dispatch thunk of DetailChartDataPointValueCalculatorType.value(for:)();
      Double.clamped(to:)();
      v216 = v343;
      HourWeather.date.getter();
      v217 = v376;
      v218 = v356;
      v219 = v357;
      v220 = v216;
    }

    else
    {
      Double.clamped(to:)();
      v287(v291, v368, v371);
      v217 = v376;
      v218 = v356;
      v219 = v357;
      v220 = v343;
    }

    v223 = v323;
    DetailChartDataPoint.init(date:value:)();
    (*(v320 + 8))(v213, v321);
    (*(v351 + 8))(v220, v352);
    sub_1000180EC(v219, &qword_100CDE6E0, &unk_100A8D7D0);
    sub_10001B350(v223, 0, 1, v218);
    sub_10011C0F0(v223, v219, &qword_100CDE6E0, &unk_100A8D7D0);
    v225 = v388;
    v224 = v389;
    v226 = v387;
    v227 = v385;
    v228 = v386;
    v230 = v383;
    v229 = v384;
    v231 = v382;
    v232 = v380;
    v233 = v381;
    v234 = v378;
    v235 = v219;
    v236 = v379;
LABEL_82:
    *&v377[0] = v234;
    *(&v377[0] + 1) = v236;
    *&v377[1] = v232;
    *(&v377[1] + 1) = v233;
    v377[2] = v231;
    v377[3] = v230;
    v377[4] = v229;
    *&v377[5] = v227;
    *(&v377[5] + 1) = v228;
    v377[6] = v226;
    v377[7] = v225;
    v377[8] = v224;
    memcpy(v390, v377, sizeof(v390));
    v237 = v324;
    sub_1000302D8(v235, v324, &qword_100CDE6E0, &unk_100A8D7D0);
    v238 = v235;
    if (sub_100024D10(v237, 1, v218) != 1)
    {
      v243 = v302;
      v376 = *(v303 + 32);
      v376(v302, v237, v218);
      sub_1000161C0(v346 + 43, v346[46]);
      v244 = v375;
      v245 = v295;
      v246 = v304;
      sub_10040E16C(v390, v375 + v295, 0, v304);
      sub_1008FBC98(v377);
      v247 = v244 + v245;
      v248 = v294;
      v249 = v373;
      v285(v294, v247, v373);
      v250 = DetailChartCondition.id.getter();
      v252 = v251;
      v292(v248, v249);
      sub_1000180EC(v354, &qword_100CAC3C8, &unk_100A3B350);
      sub_1000180EC(v238, &qword_100CDE6E0, &unk_100A8D7D0);
      sub_1000180EC(v363, &qword_100CDE6E0, &unk_100A8D7D0);
      v253 = *(v370 + 8);
      v254 = v371;
      v253(v361, v371);
      v253(v358, v254);
      v253(v368, v254);
      v253(v364, v254);
      v253(v367, v254);
      sub_10011CA9C(v365, type metadata accessor for ConditionDetailChartInputs);
      v255 = type metadata accessor for LollipopViewModel(0);
      v376(v217 + v255[5], v243, v356);
      *v217 = v250;
      v217[1] = v252;
      *(v217 + v255[6]) = v132;
      sub_100114640(v246, v217 + v255[7], type metadata accessor for LollipopDetailViewModel);
      sub_10001B350(v217, 0, 1, v255);
      v256 = v355;
LABEL_88:
      sub_1000180EC(v256, &qword_100CAC3C8, &unk_100A3B350);
      goto LABEL_89;
    }

    sub_1008FBC98(v377);
    sub_1000180EC(v354, &qword_100CAC3C8, &unk_100A3B350);
    sub_1000180EC(v235, &qword_100CDE6E0, &unk_100A8D7D0);
    sub_1000180EC(v363, &qword_100CDE6E0, &unk_100A8D7D0);
    v239 = *(v370 + 8);
    v240 = v371;
    v239(v361, v371);
    v239(v358, v240);
    v239(v368, v240);
    v239(v364, v240);
    v239(v367, v240);
    sub_10011CA9C(v365, type metadata accessor for ConditionDetailChartInputs);
    sub_1000180EC(v237, &qword_100CDE6E0, &unk_100A8D7D0);
    v188 = v296;
LABEL_84:
    v241 = type metadata accessor for LollipopViewModel(0);
    sub_10001B350(v217, 1, 1, v241);
    sub_1000180EC(v355, &qword_100CAC3C8, &unk_100A3B350);
    v242 = v188;
    return sub_10011CA9C(v242, type metadata accessor for DetailChartSelection);
  }

  sub_1000180EC(v186, &qword_100CAC3C8, &unk_100A3B350);
  v189 = v294;
  v190 = v373;
  (v289)(v294, v158, v373);
  v191 = sub_10074742C(v375 + v295, v189);
  v292(v189, v190);
  if ((v191 & 1) == 0)
  {
    sub_1000180EC(v185, &qword_100CAC3C8, &unk_100A3B350);
    sub_1000180EC(v357, &qword_100CDE6E0, &unk_100A8D7D0);
    sub_1000180EC(v363, &qword_100CDE6E0, &unk_100A8D7D0);
    v221 = *(v370 + 8);
    v222 = v371;
    v221(v361, v371);
    v221(v358, v222);
    v221(v368, v222);
    v221(v364, v222);
    v221(v367, v222);
    sub_10011CA9C(v365, type metadata accessor for ConditionDetailChartInputs);
    v217 = v376;
    goto LABEL_84;
  }

  v192 = v376;
  v193 = v367;
  v194 = v361;
  if (!v353)
  {
LABEL_87:
    sub_1000180EC(v185, &qword_100CAC3C8, &unk_100A3B350);
    sub_1000180EC(v357, &qword_100CDE6E0, &unk_100A8D7D0);
    sub_1000180EC(v363, &qword_100CDE6E0, &unk_100A8D7D0);
    v257 = *(v370 + 8);
    v258 = v371;
    v257(v194, v371);
    v257(v358, v258);
    v257(v368, v258);
    v257(v364, v258);
    v257(v193, v258);
    sub_10011CA9C(v365, type metadata accessor for ConditionDetailChartInputs);
    v259 = type metadata accessor for LollipopViewModel(0);
    sub_10001B350(v192, 1, 1, v259);
    v256 = v174;
    goto LABEL_88;
  }

  result = ChartSeriesValues.interpolationElements.getter();
  v195 = result;
  v196 = *(result + 2);
  if (v196 < 2)
  {

    goto LABEL_87;
  }

  v197 = 0;
  v198 = v196 - 1;
  v374 = v348 + 8;
  v366 = v370 + 8;
  v199 = v345;
  v200 = v347;
  while (1)
  {
    if (v198 == v197)
    {
      v197 = v198;
      goto LABEL_93;
    }

    if (v197 >= v196)
    {
      __break(1u);
LABEL_113:
      __break(1u);
LABEL_114:
      __break(1u);
      goto LABEL_115;
    }

    v201 = v348;
    v202 = v344;
    (*(v348 + 16))(v344, v195 + ((*(v201 + 80) + 32) & ~*(v201 + 80)) + *(v348 + 72) * v197, v200);
    v203 = v291;
    InterpolationElement.date.getter();
    (*(v201 + 8))(v202, v200);
    LOBYTE(v202) = static Date.< infix(_:_:)();
    result = (*v366)(v203, v371);
    if ((v202 & 1) == 0)
    {
      break;
    }

    ++v197;
    v196 = *(v195 + 2);
    v199 = v345;
  }

  v196 = *(v195 + 2);
  v199 = v345;
LABEL_93:
  if (v198 >= v197)
  {
    v260 = v197;
  }

  else
  {
    v260 = v198;
  }

  if (!v197)
  {
    v260 = 0;
  }

  if (v260 >= v196)
  {
    goto LABEL_113;
  }

  (*(v348 + 16))(v300, v195 + ((*(v348 + 80) + 32) & ~*(v348 + 80)) + *(v348 + 72) * v260, v347);

  sub_1000161C0(v346 + 48, v346[51]);
  v261 = v299;
  Location.timeZone.getter();
  InterpolationElement.value.getter();
  InterpolationElement.date.getter();
  v263 = v325;
  v262 = v326;
  v264 = v327;
  (*(v326 + 104))(v325, enum case for DetailCondition.precipitationTotal(_:), v327);
  v265 = static DetailCondition.== infix(_:_:)();
  (*(v262 + 8))(v263, v264);
  if (v265)
  {
    v266 = sub_10084F624(v199, v261);
  }

  else
  {
    v266 = sub_10084F554();
  }

  v372 = v266;
  v236 = v267;
  sub_10000C70C(0, &qword_100CA72F8, NSNumberFormatter_ptr);
  v268 = static NSNumberFormatter.percent.getter();
  isa = Double._bridgeToObjectiveC()().super.super.isa;
  v270 = [v268 stringFromNumber:isa];

  if (!v270)
  {
    v227 = 0;
    v228 = 0;
    v232 = 0;
    v233 = 0;
    goto LABEL_111;
  }

  v232 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v233 = v271;

  v272 = static NSNumberFormatter.percent.getter();
  result = sub_1008FBDF4(v272);
  if (!v273)
  {
    goto LABEL_114;
  }

  v274 = String.hasSuffix(_:)(*&result);

  if (!v274)
  {
    v227 = 0;
    v228 = 0;
    goto LABEL_111;
  }

  *&v390[0] = v232;
  *(&v390[0] + 1) = v233;
  v275 = static NSNumberFormatter.percent.getter();
  result = sub_1008FBDF4(v275);
  if (v276)
  {
    v378 = result;
    v379 = v276;
    *&v377[0] = 0;
    *(&v377[0] + 1) = 0xE000000000000000;
    sub_10002D5A4();
    v232 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v278 = v277;

    v279 = static NSNumberFormatter.percent.getter();
    v227 = sub_1008FBDF4(v279);
    v228 = v280;
    v233 = v278;
LABEL_111:
    (*v366)(v199, v371);
    (*(v297 + 8))(v299, v298);
    v281 = v300;
    InterpolationElement.date.getter();
    InterpolationElement.value.getter();
    v282 = v323;
    DetailChartDataPoint.init(date:value:)();
    (*v374)(v281, v347);
    v235 = v357;
    sub_1000180EC(v357, &qword_100CDE6E0, &unk_100A8D7D0);
    v218 = v356;
    sub_10001B350(v282, 0, 1, v356);
    sub_10011C0F0(v282, v235, &qword_100CDE6E0, &unk_100A8D7D0);
    v231 = 0uLL;
    v230 = 0uLL;
    v229 = 0uLL;
    v226 = 0uLL;
    v225 = 0uLL;
    v224 = 0uLL;
    v217 = v376;
    v234 = v372;
    goto LABEL_82;
  }

LABEL_115:
  __break(1u);
  return result;
}

uint64_t sub_1008FA03C(uint64_t a1, uint64_t a2)
{
  sub_1000180EC(a1, &qword_100CBFE98, &qword_100A58340);
  sub_10011C404(a2, a1, type metadata accessor for LollipopViewModel);
  v4 = type metadata accessor for LollipopViewModel(0);

  return sub_10001B350(a1, 0, 1, v4);
}

uint64_t sub_1008FA0BC(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CAB938, &qword_100A51040);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - v4;
  v6 = type metadata accessor for DetailChartCondition();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a1, v6, v8);
  if ((*(v7 + 88))(v10, v6) != enum case for DetailChartCondition.visibility(_:))
  {
    return (*(v7 + 8))(v10, v6);
  }

  v11 = ConditionUnits.visibility.getter();
  static Measurement<>.maxVisibility(for:)();

  Measurement.value.getter();
  v13 = v12;
  result = (*(v3 + 8))(v5, v2);
  if (v13 < 0.0)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1008FA2C8(double a1, double a2)
{
  v2 = type metadata accessor for Date();
  __chkstk_darwin(v2 - 8);
  __chkstk_darwin(v3);
  ExtremaResult.maxValue.getter();
  Double.clamped(to:)();
  ExtremaResult.maxDate.getter();
  ExtremaResult.minValue.getter();
  Double.clamped(to:)();
  ExtremaResult.minDate.getter();
  return ExtremaResult.init(maxValue:maxDate:minValue:minDate:)();
}

uint64_t sub_1008FA3DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_10022C350(&qword_100CE5258, &qword_100A98418);
  __chkstk_darwin(v7 - 8);
  v9 = &v18[-v8];
  v10 = type metadata accessor for InterpolationElement();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v18[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (Date.isWithinHour(of:)())
  {
    if (a4)
    {
      v14 = ChartSeriesValues.interpolationElements.getter();
      __chkstk_darwin(v14);
      *&v18[-16] = a3;
      *&v18[-8] = a1;
      sub_1008DC620();

      if (sub_100024D10(v9, 1, v10) != 1)
      {
        (*(v11 + 32))(v13, v9, v10);
        InterpolationElement.value.getter();
        v16 = v15;
        (*(v11 + 8))(v13, v10);
        return v16;
      }
    }

    else
    {
      sub_10001B350(v9, 1, 1, v10);
    }

    sub_1000180EC(v9, &qword_100CE5258, &qword_100A98418);
  }

  return 0;
}

uint64_t sub_1008FA608@<X0>(uint64_t a1@<X0>, Swift::String *a2@<X8>)
{
  v4 = type metadata accessor for DetailChartCondition();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 != enum case for DetailChartCondition.humidity(_:) && v9 != enum case for DetailChartCondition.pressure(_:) && v9 != enum case for DetailChartCondition.precipitationTotal(_:))
  {
    if (v9 == enum case for DetailChartCondition.temperature(_:))
    {
      v15 = &enum case for TemperatureChartKind.actual(_:);
LABEL_14:
      v16 = *v15;
      v17 = type metadata accessor for TemperatureChartKind();
      (*(*(v17 - 8) + 104))(a2, v16, v17);
      v18 = type metadata accessor for ConditionDetailChartFooterViewModel(0);
LABEL_15:
      swift_storeEnumTagMultiPayload();
      v13 = a2;
      v14 = 0;
      v12 = v18;
      return sub_10001B350(v13, v14, 1, v12);
    }

    if (v9 == enum case for DetailChartCondition.temperatureFeelsLike(_:))
    {
      v15 = &enum case for TemperatureChartKind.feelsLike(_:);
      goto LABEL_14;
    }

    if (v9 != enum case for DetailChartCondition.uvIndex(_:) && v9 != enum case for DetailChartCondition.visibility(_:) && v9 != enum case for DetailChartCondition.wind(_:))
    {
      if (v9 != enum case for DetailChartCondition.chanceOfRain(_:))
      {
        v26 = type metadata accessor for ConditionDetailChartFooterViewModel(0);
        sub_10001B350(a2, 1, 1, v26);
        return (*(v5 + 8))(v8, v4);
      }

      v22 = [objc_opt_self() mainBundle];
      v28._object = 0x8000000100AE5CA0;
      v23._object = 0x8000000100AE5C40;
      v28._countAndFlagsBits = 0xD00000000000008ALL;
      v23._countAndFlagsBits = 0xD000000000000053;
      v24._countAndFlagsBits = 0;
      v24._object = 0xE000000000000000;
      v25 = NSLocalizedString(_:tableName:bundle:value:comment:)(v23, 0, v22, v24, v28);

      *a2 = v25;
      v18 = type metadata accessor for ConditionDetailChartFooterViewModel(0);
      goto LABEL_15;
    }
  }

  v12 = type metadata accessor for ConditionDetailChartFooterViewModel(0);
  v13 = a2;
  v14 = 1;
  return sub_10001B350(v13, v14, 1, v12);
}

uint64_t sub_1008FA964(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for DetailChartCondition();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v8, enum case for DetailChartCondition.chanceOfRain(_:), v4, v6);
  LOBYTE(a3) = sub_10074742C(a3, v8);
  (*(v5 + 8))(v8, v4);
  if (a3)
  {
    v9 = static Date.< infix(_:_:)();
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_1008FAA84(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DetailChartSelection(0);
  HourWeather.date.getter();
  v6 = static Date.== infix(_:_:)();
  (*(v3 + 8))(v5, v2);
  return v6 & 1;
}

BOOL sub_1008FAB84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  HourWeather.date.getter();
  type metadata accessor for DetailChartSelection(0);
  Date.distance(to:)();
  v8 = v7;
  v9 = *(v4 + 8);
  v9(v6, v3);
  v10 = fabs(v8);
  HourWeather.date.getter();
  Date.distance(to:)();
  v12 = v11;
  v9(v6, v3);
  return v10 < fabs(v12);
}

uint64_t sub_1008FACD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for Calendar.Component();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  InterpolationElement.date.getter();
  (*(v4 + 104))(v6, enum case for Calendar.Component.minute(_:), v3);
  v11 = Calendar.isDate(_:equalTo:toGranularity:)();
  (*(v4 + 8))(v6, v3);
  (*(v8 + 8))(v10, v7);
  return v11 & 1;
}

uint64_t sub_1008FAEE4()
{
  sub_100006F14((v0 + 16));
  sub_100006F14((v0 + 56));

  sub_100006F14((v0 + 104));
  sub_100006F14((v0 + 144));
  sub_100006F14((v0 + 184));
  sub_100006F14((v0 + 224));
  sub_100006F14((v0 + 264));
  sub_100006F14((v0 + 304));
  sub_100006F14((v0 + 344));
  sub_100006F14((v0 + 384));

  sub_100006F14((v0 + 440));
  sub_100006F14((v0 + 480));

  sub_1000180EC(v0 + OBJC_IVAR____TtC7Weather31ConditionDetailViewModelFactory_cachedModel, &qword_100CA4980, &qword_100A983F0);
  sub_1000180EC(v0 + OBJC_IVAR____TtC7Weather31ConditionDetailViewModelFactory_cachedChartModelInputs, &qword_100CE5240, &qword_100A983F8);
  return v0;
}

uint64_t sub_1008FAFC4()
{
  sub_1008FAEE4();

  return swift_deallocClassInstance();
}

void sub_1008FB044(uint64_t a1)
{
  sub_1008FB188(319, &qword_100CE4F28, type metadata accessor for ConditionDetailViewModel);
  if (v1 <= 0x3F)
  {
    sub_1008FB188(319, &unk_100CE4F30, type metadata accessor for ConditionDetailViewModelFactory.CachedChartModelInputs);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1008FB188(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1008FB244(uint64_t a1)
{
  type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    sub_1008FB188(319, &qword_100CAC220, &type metadata accessor for ExtremaResult);
    if (v2 <= 0x3F)
    {
      type metadata accessor for ConditionUnits();
      if (v3 <= 0x3F)
      {
        type metadata accessor for DetailCondition();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1008FB36C(uint64_t a1)
{
  type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    sub_1008FB188(319, &qword_100CAC220, &type metadata accessor for ExtremaResult);
    if (v2 <= 0x3F)
    {
      sub_10060D2E0();
      if (v3 <= 0x3F)
      {
        type metadata accessor for DetailChartExtrema();
        if (v4 <= 0x3F)
        {
          type metadata accessor for ConditionUnits();
          if (v5 <= 0x3F)
          {
            type metadata accessor for DetailChartCondition();
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1008FB49C(uint64_t a1)
{
  type metadata accessor for ConditionUnits();
  if (v1 <= 0x3F)
  {
    sub_1008FB55C(319);
    if (v2 <= 0x3F)
    {
      sub_1008FB188(319, &qword_100CAC220, &type metadata accessor for ExtremaResult);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1008FB55C(uint64_t a1)
{
  if (!qword_100CE51F0)
  {
    type metadata accessor for DetailChartCondition();
    type metadata accessor for ChartSeriesValues();
    sub_1008FB650(&qword_100CA39D8, &type metadata accessor for DetailChartCondition, &protocol conformance descriptor for DetailChartCondition);
    v1 = type metadata accessor for Dictionary();
    if (!v2)
    {
      atomic_store(v1, &qword_100CE51F0);
    }
  }
}

uint64_t sub_1008FB650(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_1008FB6E0(uint64_t a1)
{
  v2 = type metadata accessor for DetailCondition();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for DetailCondition.conditions(_:))
  {
    (*(v3 + 8))(v6, v2);
    return 1;
  }

  if (v7 == enum case for DetailCondition.humidity(_:))
  {
    return 0;
  }

  if (v7 == enum case for DetailCondition.pressure(_:) || v7 == enum case for DetailCondition.precipitationTotal(_:))
  {
    return 1;
  }

  if (v7 == enum case for DetailCondition.uvIndex(_:))
  {
    return 0;
  }

  if (v7 == enum case for DetailCondition.visibility(_:) || v7 == enum case for DetailCondition.wind(_:))
  {
    return 1;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

double sub_1008FB878@<D0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() mainBundle];
  v11._object = 0x8000000100AD6A00;
  v3._countAndFlagsBits = 0x736E6F6974704FLL;
  v4._object = 0x8000000100AD69E0;
  v11._countAndFlagsBits = 0xD000000000000051;
  v4._countAndFlagsBits = 0xD000000000000017;
  v3._object = 0xE700000000000000;
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, 0, v2, v3, v11);

  v6 = type metadata accessor for ConditionDetailPlatterViewModel(0);
  v7 = v6[6];
  v8 = type metadata accessor for WeatherDescription();
  sub_10001B350(a1 + v7, 1, 1, v8);
  type metadata accessor for ConditionDetailDynamicContentIdentifier(0);
  swift_storeEnumTagMultiPayload();
  v9 = type metadata accessor for ConditionDetailPlatterViewModel.Body(0);
  swift_storeEnumTagMultiPayload();
  sub_10001B350(a1 + v6[8], 1, 1, v9);
  result = 3.68215105e180;
  *a1 = xmmword_100A66B00;
  *(a1 + 16) = 1;
  *(a1 + 24) = v5;
  *(a1 + v6[9]) = 0;
  *(a1 + v6[10]) = 0;
  return result;
}

uint64_t sub_1008FBB14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetailChartsViewModel(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1008FBBA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CAC1B0, &unk_100A3B140);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1008FBD90(unint64_t a1)
{
  if (a1 >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

uint64_t sub_1008FBDF4(void *a1)
{
  v2 = [a1 percentSymbol];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void sub_1008FBE90(double a1, double a2)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  Hasher._combine(_:)(*&a1);
  if (a2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = a2;
  }

  Hasher._combine(_:)(*&v3);
}

uint64_t sub_1008FBEE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v973 = a3;
  v974 = a2;
  v965 = a1;
  v3 = type metadata accessor for Location.Identifier();
  v4 = sub_100003E5C(v3, &v981);
  v885 = v5;
  __chkstk_darwin(v4);
  sub_1000038E4();
  v7 = sub_100003918(v6);
  v891 = type metadata accessor for WeatherMapPresentationState(v7);
  sub_1000037E8();
  __chkstk_darwin(v8);
  sub_1000038E4();
  v10 = sub_100003918(v9);
  v904 = type metadata accessor for DisplayMetrics(v10);
  sub_1000037E8();
  __chkstk_darwin(v11);
  sub_1000038E4();
  v13 = sub_100003918(v12);
  v886 = type metadata accessor for ViewState.SecondaryViewState(v13);
  sub_1000037E8();
  __chkstk_darwin(v14);
  sub_1000038E4();
  sub_100003990(v15);
  v16 = sub_10022C350(&qword_100CA65F0, &unk_100A5C3F0);
  v17 = sub_100003810(v16);
  __chkstk_darwin(v17);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v18);
  sub_10000E70C();
  sub_100003990(v19);
  v20 = sub_10022C350(&qword_100CA65F8, &dword_100A31420);
  v21 = sub_100003810(v20);
  __chkstk_darwin(v21);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v22);
  sub_10000E70C();
  sub_100003990(v23);
  v24 = sub_10022C350(&qword_100CA6600, &unk_100A5C400);
  v25 = sub_100003810(v24);
  __chkstk_darwin(v25);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v26);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v27);
  sub_10000E70C();
  v29 = sub_100003918(v28);
  active = type metadata accessor for LocationViewerActiveLocationState(v29);
  v31 = sub_100003810(active);
  __chkstk_darwin(v31);
  sub_1000038E4();
  sub_100003990(v32);
  v33 = sub_10022C350(&qword_100CA6608, &unk_100A31430);
  v34 = sub_100003810(v33);
  __chkstk_darwin(v34);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v35);
  sub_10000E70C();
  sub_100003918(v36);
  v37 = type metadata accessor for LocationModel();
  v38 = sub_100003E5C(v37, &v900);
  v877 = v39;
  __chkstk_darwin(v38);
  sub_1000038E4();
  v41 = sub_100003918(v40);
  v875 = type metadata accessor for NotificationsOptInInput(v41);
  sub_1000037E8();
  __chkstk_darwin(v42);
  sub_1000038E4();
  v44 = sub_100003918(v43);
  v970 = type metadata accessor for ViewState(v44);
  sub_1000037E8();
  __chkstk_darwin(v45);
  sub_100003848();
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
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v50);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v51);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v52);
  sub_10000E70C();
  v54 = sub_100003918(v53);
  v971 = type metadata accessor for TimeState(v54);
  sub_1000037E8();
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
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v59);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v60);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v61);
  sub_10000E70C();
  v63 = sub_100003918(v62);
  v969 = type metadata accessor for NotificationsState(v63);
  sub_1000037E8();
  __chkstk_darwin(v64);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v65);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v66);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v67);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v68);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v69);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v70);
  sub_10000E70C();
  v72 = sub_100003918(v71);
  v966 = type metadata accessor for LocationsState(v72);
  sub_1000037E8();
  __chkstk_darwin(v73);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v74);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v75);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v76);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v77);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v78);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v79);
  sub_10000E70C();
  v81 = sub_100003918(v80);
  v968 = type metadata accessor for EnvironmentState(v81);
  sub_1000037E8();
  __chkstk_darwin(v82);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v83);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v84);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v85);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v86);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v87);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v88);
  sub_10000E70C();
  v90 = sub_100003918(v89);
  v967 = type metadata accessor for AppConfigurationState(v90);
  sub_1000037E8();
  __chkstk_darwin(v91);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v92);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v93);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v94);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v95);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v96);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v97);
  sub_10000E70C();
  v99 = sub_100003918(v98);
  v964 = type metadata accessor for ModalViewState(v99);
  sub_1000037E8();
  __chkstk_darwin(v100);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v101);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v102);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v103);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v104);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v105);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v106);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v107);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v108);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v109);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v110);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v111);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v112);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v113);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v114);
  sub_10000E70C();
  sub_100003990(v115);
  v116 = sub_10022C350(&qword_100CA65E8, &unk_100A31410);
  v117 = sub_100003810(v116);
  __chkstk_darwin(v117);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v118);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v119);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v120);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v121);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v122);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v123);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v124);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v125);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v126);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v127);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v128);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v129);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v130);
  sub_10000E70C();
  sub_100003990(v131);
  v132 = sub_10022C350(&qword_100CA6610, &unk_100A32610);
  v133 = sub_100003810(v132);
  __chkstk_darwin(v133);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v134);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v135);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v136);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v137);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v138);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v139);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v140);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v141);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v142);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v143);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v144);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v145);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v146);
  sub_10000E70C();
  sub_100003990(v147);
  v148 = sub_10022C350(&qword_100CA6618, &unk_100A31440);
  v149 = sub_100003810(v148);
  __chkstk_darwin(v149);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v150);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v151);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v152);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v153);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v154);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v155);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v156);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v157);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v158);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v159);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v160);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v161);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v162);
  sub_10000E70C();
  sub_100003918(v163);
  v164 = type metadata accessor for Date();
  v165 = sub_100003E5C(v164, &v980);
  v898 = v166;
  __chkstk_darwin(v165);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v167);
  sub_10000E70C();
  sub_100003990(v168);
  v169 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  v170 = sub_100003810(v169);
  __chkstk_darwin(v170);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v171);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v172);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v173);
  sub_10000E70C();
  v175 = sub_100003918(v174);
  v972 = type metadata accessor for NotificationsOptInState(v175);
  sub_1000037E8();
  __chkstk_darwin(v176);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v177);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v178);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v179);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v180);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v181);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v182);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v183);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v184);
  sub_10000E70C();
  sub_100003990(v185);
  v186 = sub_10022C350(&qword_100CA6620, &unk_100A32620);
  v187 = sub_100003810(v186);
  __chkstk_darwin(v187);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v188);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v189);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v190);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v191);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v192);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v193);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v194);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v195);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v196);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v197);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v198);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v199);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v200);
  sub_10000E70C();
  sub_100003990(v201);
  v202 = sub_10022C350(&qword_100CA6628, &unk_100A31450);
  v203 = sub_100003810(v202);
  __chkstk_darwin(v203);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v204);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v205);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v206);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v207);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v208);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v209);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v210);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v211);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v212);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v213);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v214);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v215);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v216);
  sub_10000E70C();
  sub_100003990(v217);
  v218 = sub_10022C350(&qword_100CA6630, &unk_100A32630);
  v219 = sub_100003810(v218);
  __chkstk_darwin(v219);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v220);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v221);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v222);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v223);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v224);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v225);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v226);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v227);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v228);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v229);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v230);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v231);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v232);
  sub_10000E70C();
  sub_100003990(v233);
  v234 = sub_10022C350(&qword_100CA6638, &unk_100A31460);
  v235 = sub_100003810(v234);
  __chkstk_darwin(v235);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v236);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v237);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v238);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v239);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v240);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v241);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v242);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v243);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v244);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v245);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v246);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v247);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v248);
  sub_10000E70C();
  sub_100003990(v249);
  v250 = sub_10022C350(&qword_100CA6640, qword_100A32640);
  v251 = sub_100003810(v250);
  __chkstk_darwin(v251);
  v253 = &v816 - ((v252 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v254);
  v256 = &v816 - v255;
  __chkstk_darwin(v257);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v258);
  v260 = (&v816 - v259);
  __chkstk_darwin(v261);
  v263 = &v816 - v262;
  __chkstk_darwin(v264);
  __chkstk_darwin(v265);
  v267 = &v816 - v266;
  __chkstk_darwin(v268);
  __chkstk_darwin(v269);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v270);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v271);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v272);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v273);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v274);
  v276 = &v816 - v275;
  type metadata accessor for ListViewAction(0);
  sub_1000037E8();
  __chkstk_darwin(v277);
  v279 = &v816 - ((v278 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100906F44();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1000D438C();
      LODWORD(v970) = *(v540 + 24);
      LOBYTE(v279) = *(v540 + 25);
      sub_100071EDC(v540);
      v333 = v541[88];
      v542 = v541[89];
      v334 = v541[27];
      v543 = type metadata accessor for ListViewState._Storage();
      sub_100042380(v543);
      sub_10012CE58();
      BYTE1(v820) = v542;
      v336 = sub_100120164();
      v337 = v970;
      goto LABEL_30;
    case 2u:
      v464 = v885;
      v465 = v884;
      (*(v885 + 32))(v884, v279, v962);
      v466 = Location.Identifier.id.getter();
      v468 = v467;
      sub_1000D438C();
      v971 = *(v469 + 16);
      LODWORD(v970) = *(v469 + 24);
      LODWORD(v969) = *(v469 + 25);
      LODWORD(v968) = *(v469 + 26);
      v470 = *(v469 + 32);
      v471 = *(v469 + 40);
      v472 = *(v469 + 56);
      v972 = *(v469 + 48);
      v973 = v470;
      v473 = *(v469 + 64);
      v474 = *(v469 + 88);
      v475 = *(v469 + 89);
      v476 = *(v469 + 27);
      v477 = type metadata accessor for ListViewState._Storage();
      sub_100042380(v477);
      sub_10012CE58();
      sub_100042DA8(v971, v970, v969, v968, v476, v973, v471, v972, v472, v473, v466, v468, v474, v475);
      sub_1000C8450();

      v359 = sub_10090184C(v466, v974);

      (*(v464 + 8))(v465, v962);
      return v359;
    case 3u:
      sub_10003015C();
      sub_10001B350(v489, v490, v491, v492);
      v493 = sub_100003BCC(v920);
      sub_100040C3C(v493, v494, v495);
      v496 = sub_100003BCC(&v925);
      sub_1000133AC(v496, v497, v498);
      v499 = sub_100003BCC(v931);
      sub_10001B350(v499, v500, v501, v969);
      sub_100010FC4();
      v957 = v502;
      v503 = v842;
      sub_100906F44();
      sub_100003934();
      v504 = v961;
      sub_10001B350(v505, v506, v507, v961);
      LODWORD(v960) = *v503;
      v508 = *(v503 + 1);
      LODWORD(v973) = v503[17];
      sub_1000C8A78(v503[18]);
      LODWORD(v963) = v503[19];
      LODWORD(v962) = v503[20];
      sub_1000884D4();
      v509 = sub_100016298();
      sub_1000038B4(v509, v510, v504);
      if (v328)
      {
        v619 = v898;
        (*(v898 + 16))(v906, &v503[v972[11]], v504);
        v511 = sub_100016298();
        sub_100021CF8(v511, v512);

        v328 = v504 == 1;
        v620 = v508;
        if (!v328)
        {
          sub_1000180EC(v253, &unk_100CB2CF0, &unk_100A2D7F0);
        }
      }

      else
      {
        v619 = v898;
        (*(v898 + 32))(v906, v253, v504);

        v620 = v508;
      }

      v621 = v972;
      v622 = v972[13];
      LODWORD(v958) = v503[v972[12]];
      LODWORD(v959) = v503[v622];
      v623 = v503[v972[14]];
      v624 = v503[v972[15]];
      v625 = v503[v972[16]];
      v626 = v503[v972[17]];
      v627 = v503[v972[18]];
      sub_1000C88BC();
      sub_1000DFD78(v503, v628);
      v629 = v907;
      *v907 = v960;
      *(v629 + 1) = v620;
      v629[16] = 1;
      v629[17] = v973;
      v629[18] = v965;
      v629[19] = v963;
      v629[20] = v962;
      v631 = *(v619 + 32);
      v630 = v619 + 32;
      v631(&v629[v621[11]], v906, v961);
      v629[v621[12]] = v958;
      v629[v621[13]] = v959;
      v629[v621[14]] = v623;
      v629[v621[15]] = v624;
      v629[v621[16]] = v625;
      v629[v621[17]] = v626;
      v629[v621[18]] = v627;
      sub_10000E7B0();
      sub_10001B350(v632, v633, v634, v621);
      v635 = sub_100003BCC(v944);
      sub_10001B350(v635, v636, v637, v971);
      v638 = sub_100003BCC(v949);
      v639 = v970;
      sub_10001B350(v638, v640, v641, v970);
      sub_100003934();
      sub_10001B350(v642, v643, v644, v964);
      sub_100018034();
      v645 = v974;
      sub_100042230();
      sub_100906F44();
      v646 = v861;
      sub_100051BBC();
      sub_100003BFC(v646);
      if (v328)
      {
        sub_1000180EC(v646, &qword_100CA65E8, &unk_100A31410);
      }

      else
      {
        sub_100069C3C();
        sub_1000DFD78(v625, v647);
        sub_10001FC94();
        sub_1000731F0();
      }

      v648 = v835;
      sub_10001FC94();
      sub_1000731F0();
      v649 = *(v645 + 16);
      LODWORD(v969) = *(v645 + 24);
      sub_100020FE8();
      sub_100051BBC();
      sub_10000C834();
      sub_1000165CC();
      sub_1000038B4(v650, v651, v276);
      v973 = v649;
      if (v328)
      {
        sub_100013EAC();
        sub_100906F44();
        v652 = sub_10000C834();
        v654 = sub_100024D10(v652, v653, v276);

        if (v654 != 1)
        {
          sub_1000180EC(v630, &qword_100CA6640, qword_100A32640);
        }
      }

      else
      {
        sub_10004ED40();
        sub_1000731F0();
      }

      sub_100051BBC();
      sub_10000E7EC(v648);
      if (v328)
      {
        sub_100043AF0(v645 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment);
        sub_100017128();
        sub_100906F44();
        sub_10000E7EC(v648);
        v655 = v848;
        v656 = v639;
        if (!v328)
        {
          sub_1000180EC(v648, &qword_100CA6638, &unk_100A31460);
        }
      }

      else
      {
        sub_100049EE8();
        sub_1000731F0();
        v655 = v848;
        v656 = v639;
      }

      v657 = v841;
      sub_100051BBC();
      sub_10000C814(v657);
      v658 = v971;
      if (v328)
      {
        sub_100075294();
        sub_100906F44();
        sub_10000C814(v657);
        v659 = v855;
        if (!v328)
        {
          sub_1000180EC(v657, &qword_100CA6630, &unk_100A32630);
        }
      }

      else
      {
        sub_100028DC0();
        sub_1000731F0();
        v659 = v855;
      }

      sub_100051BBC();
      sub_100003BFC(v655);
      if (v328)
      {
        sub_100023518();
        sub_100906F44();
        sub_100003BFC(v655);
        v660 = v868;
        if (!v328)
        {
          sub_1000180EC(v655, &qword_100CA6628, &unk_100A31450);
        }
      }

      else
      {
        sub_10001A180();
        sub_1000731F0();
        v660 = v868;
      }

      sub_100051BBC();
      sub_1000083BC(v659);
      if (v328)
      {
        sub_100010FC4();
        sub_100906F44();
        sub_1000083BC(v659);
        if (!v328)
        {
          sub_1000180EC(v659, &qword_100CA6620, &unk_100A32620);
        }
      }

      else
      {
        sub_100004E48();
        sub_1000731F0();
      }

      sub_100030224(v944);
      sub_100051BBC();
      v661 = sub_1000162A4();
      sub_1000038B4(v661, v662, v658);
      if (v328)
      {
        sub_100015168();
        sub_100906F44();
        v663 = sub_1000162A4();
        sub_1000038B4(v663, v664, v658);
        if (!v328)
        {
          sub_1000180EC(v660, &qword_100CA6618, &unk_100A31440);
        }
      }

      else
      {
        sub_1000092AC();
        sub_1000731F0();
      }

      sub_1000884D4();
      sub_10000554C(v658);
      if (v328)
      {
        sub_10001D1B0();
        sub_100906F44();
        sub_10000554C(v658);
        if (!v328)
        {
          sub_1000180EC(v658, &qword_100CA6610, &unk_100A32610);
        }
      }

      else
      {
        sub_100006B58();
        sub_1000731F0();
      }

      sub_10001FC94();
      sub_100071A70(&v955);
      sub_100020FE8();
      sub_1000731F0();
      v359 = *(v645 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
      v665 = *(v645 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
      v667 = *(v645 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
      v666 = *(v645 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);
      v668 = *(v645 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
      v670 = *(v645 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 8);
      v669 = *(v645 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 16);
      v671 = *(v645 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);
      v672 = type metadata accessor for MainState._Storage(0);
      sub_100003B6C(v672);
      LOBYTE(v815) = v668;
      sub_10003E038(v973, v969, v938, v940[2], v944[0], v950[0], v918, v953, v956, v656, v359, v665, v667, v666, v815, v670, v669, v671, v816, v817, v818, v819, v820, v821, v822, v823, v824, v825, v826, v827, v828, v829, v830, v831, v832);
      sub_1000B0F18();

      goto LABEL_208;
    case 4u:
      sub_1000161C0(v963 + 7, v963[10]);
      v381 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_view;
      sub_10001D1B0();
      v359 = v974;
      sub_100042230();
      sub_100906F44();
      v382 = v359 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
      swift_beginAccess();
      v383 = *(v382 + 1);
      v384 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_notifications;
      v385 = *(v359 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_notifications);
      v386 = v359 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_notificationsOptIn;
      v387 = v972;
      v388 = *(v359 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_notificationsOptIn + v972[15]);
      v389 = *(v359 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_notificationsOptIn + v972[18]);
      v390 = *(v382 + 2);
      v391 = *(v359 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_notificationsOptIn + v972[16]);
      v392 = *(v359 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_notificationsOptIn + v972[17]);
      v393 = v875;
      v256[*(v875 + 20)] = 0;
      v256[v393[6]] = v383;
      v256[v393[7]] = v385;
      v256[v393[8]] = v390;
      v256[v393[9]] = v388;
      v256[v393[10]] = v389;
      v256[v393[11]] = v391;
      v256[v393[12]] = v392;
      v394 = sub_1007274D0(v256);
      sub_1000DFD78(v256, type metadata accessor for NotificationsOptInInput);
      if (v394 > 1u)
      {
      }

      else
      {
        v955 = v382;
        v956 = v384;
        v395 = (v394 >> 8);
        type metadata accessor for NotificationsOptInViewState._Storage();
        v396 = swift_allocObject();
        *(v396 + 16) = v394;
        *(v396 + 18) = BYTE2(v394) & 1;
        *(v396 + 21) = BYTE5(v394);
        *(v396 + 19) = v394 >> 24;
        v973 = v396;
        *(v396 + 22) = BYTE6(v394) & 1;
        v397 = sub_100003BCC(v908);
        sub_10001B350(v397, v398, v399, v967);
        v400 = sub_100003BCC(v909);
        sub_100040C3C(v400, v401, v402);
        v403 = sub_100003BCC(v911);
        sub_1000133AC(v403, v404, v405);
        v406 = sub_100003BCC(&v912);
        sub_10001B350(v406, v407, v408, v969);
        sub_100010FC4();
        v957 = v386;
        sub_100042230();
        sub_100906F44();
        v409 = v851;
        sub_100003934();
        v410 = v961;
        sub_10001B350(v411, v412, v413, v961);
        v414 = *(v394 >> 8);
        v965 = *((v394 >> 8) + 8);
        v415 = *((v394 >> 8) + 0x11);
        v416 = v395[18];
        v417 = v395[19];
        v418 = v395[20];
        sub_100020FE8();
        sub_100095588();
        sub_100003BFC(v409);
        v963 = v381;
        LODWORD(v962) = v415;
        LODWORD(v960) = v416;
        LODWORD(v959) = v417;
        LODWORD(v958) = v418;
        if (v328)
        {
          v747 = v898;
          v748 = v822;
          (*(v898 + 16))(v822, &v395[v387[11]], v410);
          v419 = sub_10000C834();
          v421 = sub_100024D10(v419, v420, v410);

          if (v421 != 1)
          {
            sub_1000180EC(v409, &unk_100CB2CF0, &unk_100A2D7F0);
          }
        }

        else
        {
          v747 = v898;
          v748 = v822;
          (*(v898 + 32))(v822, v409, v410);
        }

        v749 = v395[v387[12]];
        v750 = v395[v387[13]];
        v751 = v395[v387[14]];
        v752 = v387[16];
        v753 = v395[v387[15]];
        v754 = v395[v752];
        v755 = v901;
        *v901 = v414;
        v756 = v395[v972[17]];
        sub_1000D438C();
        *(v755 + 1) = v757;
        v755[16] = 0;
        v755[17] = v962;
        v755[18] = v960;
        v755[19] = v959;
        v755[20] = v958;
        (*(v747 + 32))(&v755[v758], v748);
        v755[v972[12]] = v749;
        v755[v972[13]] = v750;
        v755[v972[14]] = v751;
        v755[v972[15]] = v753;
        v755[v972[16]] = v754;
        v759 = v972;
        v755[v972[17]] = v756;
        v755[v759[18]] = 0;
        sub_1000180EC(v851, &unk_100CB2CF0, &unk_100A2D7F0);
        sub_1000C88BC();
        sub_1000DFD78(v395, v760);
        sub_10000E7B0();
        sub_10001B350(v761, v762, v763, v759);
        v764 = sub_100003BCC(v914);
        v765 = v971;
        sub_10001B350(v764, v766, v767, v971);
        v768 = sub_100003BCC(&v915);
        sub_10001B350(v768, v769, v770, v970);
        v771 = v883;
        *v883 = v973;
        sub_1000113EC();
        swift_storeEnumTagMultiPayload();
        sub_10000E7B0();
        sub_10001B350(v772, v773, v774, v748);
        sub_100018034();
        v775 = v974;
        sub_1000325C0();
        sub_100906F44();
        sub_10003778C();
        sub_100095588();
        v776 = sub_100024D10(v771, 1, v748);

        if (v776 == 1)
        {
          v777 = v765;
          sub_1000180EC(v771, &qword_100CA65E8, &unk_100A31410);
        }

        else
        {
          v777 = v765;
          sub_100069C3C();
          sub_1000DFD78(v756, v778);
          sub_10001FC94();
          sub_1000731F0();
        }

        v779 = v826;
        v780 = v823;
        v781 = v818;
        v782 = v817;
        sub_10001FC94();
        sub_1000731F0();
        v783 = *(v775 + 16);
        LODWORD(v964) = *(v775 + 24);
        sub_100030224(v908);
        sub_100095588();
        v784 = sub_1000162A4();
        v785 = v967;
        sub_1000038B4(v784, v786, v967);
        v787 = v969;
        v965 = v783;
        if (v328)
        {
          sub_100013EAC();
          sub_100906F44();
          v788 = sub_1000162A4();
          sub_100021CF8(v788, v789);

          if (v785 != 1)
          {
            sub_1000180EC(v782, &qword_100CA6640, qword_100A32640);
          }
        }

        else
        {
          sub_10004ED40();
          sub_1000731F0();
        }

        sub_100095588();
        v790 = sub_10000C834();
        v791 = v968;
        sub_1000038B4(v790, v792, v968);
        v793 = v777;
        if (v328)
        {
          sub_100017128();
          sub_100906F44();
          v794 = sub_10000C834();
          sub_1000038B4(v794, v795, v791);
          v796 = v828;
          v797 = v824;
          v798 = v779;
          if (!v328)
          {
            sub_1000180EC(v781, &qword_100CA6638, &unk_100A31460);
          }
        }

        else
        {
          sub_100049EE8();
          sub_1000731F0();
          v796 = v828;
          v797 = v824;
          v798 = v779;
        }

        sub_100020FE8();
        sub_100095588();
        v799 = sub_10000C834();
        sub_1000038B4(v799, v800, v966);
        if (v328)
        {
          sub_100075294();
          sub_100906F44();
          sub_10000556C(v781);
          if (!v328)
          {
            sub_1000180EC(v781, &qword_100CA6630, &unk_100A32630);
          }
        }

        else
        {
          sub_100028DC0();
          sub_1000731F0();
        }

        sub_100095588();
        v801 = sub_100016298();
        sub_1000038B4(v801, v802, v787);
        if (v328)
        {
          sub_100023518();
          sub_100906F44();
          v803 = sub_100016298();
          sub_1000038B4(v803, v804, v787);
          if (!v328)
          {
            sub_1000180EC(v780, &qword_100CA6628, &unk_100A31450);
          }
        }

        else
        {
          sub_10001A180();
          sub_1000731F0();
        }

        sub_100030224(&v913);
        sub_100095588();
        sub_1000083BC(v797);
        if (v328)
        {
          sub_100010FC4();
          sub_100906F44();
          sub_1000083BC(v797);
          v805 = v827;
          if (!v328)
          {
            sub_1000180EC(v797, &qword_100CA6620, &unk_100A32620);
          }
        }

        else
        {
          sub_100004E48();
          sub_1000731F0();
          v805 = v827;
        }

        sub_1000C8B14(v914);
        sub_100095588();
        sub_10000C814(v798);
        if (v328)
        {
          sub_100015168();
          sub_100906F44();
          sub_10000C814(v798);
          if (!v328)
          {
            sub_1000180EC(v798, &qword_100CA6618, &unk_100A31440);
          }
        }

        else
        {
          sub_1000092AC();
          sub_1000731F0();
        }

        sub_100095588();
        sub_100003BFC(v805);
        if (v328)
        {
          sub_10001D1B0();
          sub_100906F44();
          sub_100003BFC(v805);
          v806 = v796;
          if (!v328)
          {
            sub_1000180EC(v805, &qword_100CA6610, &unk_100A32610);
          }
        }

        else
        {
          sub_100006B58();
          sub_1000731F0();
          v806 = v796;
        }

        sub_10001FC94();
        sub_100071A70(v905);
        sub_100042230();
        sub_1000731F0();
        v807 = *(v775 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
        v808 = *(v775 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
        v810 = *(v775 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
        v809 = *(v775 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);
        v811 = v775 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState;
        v359 = *(v775 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
        v813 = *(v775 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 8);
        v812 = *(v811 + 16);
        v814 = sub_100087104();
        sub_100003B6C(v814);
        LOBYTE(v815) = v359;
        sub_10003E038(v965, v964, v888, v890, v892, v894, v871, v895, v806, v793, v807, v808, v810, v809, v815, v813, v812, v796, v816, v817, v818, v819, v820, v821, v822, v823, v824, v825, v826, v827, v828, v829, v830, v831, v832);
        sub_1000B0F18();

        sub_1000180EC(v883, &qword_100CA65E8, &unk_100A31410);
        sub_1000180EC(v903, &qword_100CA6610, &unk_100A32610);
        sub_1000180EC(v902, &qword_100CA6618, &unk_100A31440);
        sub_1000180EC(v901, &qword_100CA6620, &unk_100A32620);
        sub_1000180EC(v900, &qword_100CA6628, &unk_100A31450);
        sub_1000180EC(v899, &qword_100CA6630, &unk_100A32630);
        sub_1000180EC(v897, &qword_100CA6638, &unk_100A31460);
        sub_1000180EC(v896, &qword_100CA6640, qword_100A32640);
      }

      return v359;
    case 5u:
      v545 = type metadata accessor for ListViewState._Storage();
      sub_100042380(v545);
      v546 = sub_100087ED4();
      v547 = 1;
      goto LABEL_38;
    case 6u:
      v575 = type metadata accessor for ListViewState._Storage();
      sub_100042380(v575);
      v546 = sub_100087ED4();
      v547 = 0;
LABEL_38:
      sub_100042DA8(v546, v547, 1, 0, 0, 0, 0xE000000000000000, 0, v816, v817, v818, v819, v820, SBYTE1(v820));
      sub_1000C8450();
      goto LABEL_39;
    case 7u:
      sub_100003934();
      sub_1000165CC();
      v514 = v513;
      sub_10001B350(v515, v516, v517, v276);
      v518 = sub_100003BCC(v916);
      sub_100040C3C(v518, v519, v520);
      v521 = sub_100003BCC(v921);
      sub_1000133AC(v521, v522, v523);
      v524 = sub_100003BCC(v926);
      sub_10001B350(v524, v525, v526, v969);
      v527 = sub_100003BCC(&v932);
      sub_10001B350(v527, v528, v529, v972);
      v530 = sub_100003BCC(v939);
      sub_10001B350(v530, v531, v532, v971);
      v533 = sub_100003BCC(v945);
      sub_10001B350(v533, v534, v535, v970);
      v536 = v856;
      *v856 = 0;
      sub_100020FE8();
      swift_storeEnumTagMultiPayload();
      sub_10000E7B0();
      sub_10001B350(v537, v538, v539, &OBJC_IVAR____TtCV7Weather9MainState8_Storage_notificationsOptIn);
      sub_100018034();
      sub_10003778C();
      sub_100906F44();
      sub_1000884D4();
      sub_10000554C(v536);
      if (v328)
      {
        sub_1000180EC(v536, &qword_100CA65E8, &unk_100A31410);
      }

      else
      {
        sub_100069C3C();
        sub_1000DFD78(v514, v673);
        sub_10001FC94();
        sub_1000731F0();
      }

      v674 = v862;
      sub_10001FC94();
      sub_1000731F0();
      v675 = v974;
      v676 = *(v974 + 16);
      LODWORD(v973) = *(v974 + 24);
      sub_100051BBC();
      sub_100003A40(v267);
      if (v328)
      {
        sub_100013EAC();
        sub_100906F44();
        v677 = sub_100024D10(v267, 1, v276);

        v359 = v836;
        if (v677 != 1)
        {
          sub_1000180EC(v267, &qword_100CA6640, qword_100A32640);
        }
      }

      else
      {
        sub_10004ED40();
        sub_1000731F0();

        v359 = v836;
      }

      v974 = v676;
      sub_100042230();
      sub_100051BBC();
      sub_100003A40(v676);
      if (v328)
      {
        sub_100043AF0(v675 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment);
        sub_100017128();
        sub_100906F44();
        sub_100003A40(v676);
        v678 = v971;
        v679 = v843;
        if (!v328)
        {
          sub_1000180EC(v676, &qword_100CA6638, &unk_100A31460);
        }
      }

      else
      {
        sub_100049EE8();
        sub_1000731F0();
        v678 = v971;
        v679 = v843;
      }

      sub_100051BBC();
      sub_10000E7EC(v359);
      if (v328)
      {
        sub_100075294();
        sub_100906F44();
        sub_10000E7EC(v359);
        v680 = v849;
        if (!v328)
        {
          sub_1000180EC(v359, &qword_100CA6630, &unk_100A32630);
        }
      }

      else
      {
        sub_100028DC0();
        sub_1000731F0();
        v680 = v849;
      }

      sub_100051BBC();
      sub_100003BFC(v679);
      if (v328)
      {
        sub_100023518();
        sub_100906F44();
        sub_100003BFC(v679);
        v681 = v869;
        if (!v328)
        {
          sub_1000180EC(v679, &qword_100CA6628, &unk_100A31450);
        }
      }

      else
      {
        sub_10001A180();
        sub_1000731F0();
        v681 = v869;
      }

      sub_100051BBC();
      sub_10000C814(v680);
      if (v328)
      {
        sub_100010FC4();
        sub_100906F44();
        sub_10000C814(v680);
        if (!v328)
        {
          sub_1000180EC(v680, &qword_100CA6620, &unk_100A32620);
        }
      }

      else
      {
        sub_100004E48();
        sub_1000731F0();
      }

      sub_100051BBC();
      v682 = sub_10000C834();
      sub_1000038B4(v682, v683, v678);
      if (v328)
      {
        sub_100015168();
        sub_100906F44();
        v684 = sub_10000C834();
        sub_1000038B4(v684, v685, v678);
        if (!v328)
        {
          sub_1000180EC(v674, &qword_100CA6618, &unk_100A31440);
        }
      }

      else
      {
        sub_1000092AC();
        sub_1000731F0();
      }

      sub_100030224(v945);
      sub_100051BBC();
      sub_100003A40(v681);
      if (v328)
      {
        sub_10001D1B0();
        sub_100906F44();
        sub_100003A40(v681);
        if (!v328)
        {
          sub_1000180EC(v681, &qword_100CA6610, &unk_100A32610);
        }
      }

      else
      {
        sub_100006B58();
        sub_1000731F0();
      }

      sub_10001FC94();
      sub_100071A70(&v951);
      sub_1000113EC();
      sub_1000731F0();
      sub_1000421C0();
      sub_100044DA4();
      v686 = sub_100087104();
      sub_100003B6C(v686);
      sub_10000E80C();
      v611 = v974;
      v612 = v973;
      v613 = v931[0];
      v614 = v934;
      v615 = v939[1];
      v616 = v941[1];
      v617 = v910;
      v618 = &v976;
      goto LABEL_207;
    case 8u:
      v576 = 0;
      return sub_10090302C(v576, v974, v963, v965);
    case 9u:
      sub_10003015C();
      v434 = v433;
      sub_10001B350(v435, v436, v437, v438);
      v439 = sub_100003BCC(v917);
      sub_100040C3C(v439, v440, v441);
      v442 = *(&v835 + 1);
      sub_100003934();
      v359 = v966;
      sub_10001B350(v443, v444, v445, v966);
      v446 = sub_100003BCC(v927);
      sub_10001B350(v446, v447, v448, v969);
      v449 = sub_100003BCC(&v933);
      sub_10001B350(v449, v450, v451, v972);
      v452 = sub_100003BCC(v940);
      v453 = v971;
      sub_10001B350(v452, v454, v455, v971);
      v456 = sub_100003BCC(&v946);
      sub_10001B350(v456, v457, v458, v970);
      v459 = v857;
      *v857 = 0;
      sub_100020FE8();
      swift_storeEnumTagMultiPayload();
      sub_10000E7B0();
      sub_10001B350(v460, v461, v462, &OBJC_IVAR____TtCV7Weather9MainState8_Storage_notificationsOptIn);
      sub_100018034();
      v463 = v974;
      sub_10003778C();
      sub_100906F44();
      sub_1000113EC();
      sub_100051BBC();
      sub_10000554C(v459);
      if (v328)
      {
        sub_1000180EC(v459, &qword_100CA65E8, &unk_100A31410);
      }

      else
      {
        sub_100069C3C();
        sub_1000DFD78(v434, v594);
        sub_10001FC94();
        sub_1000731F0();
      }

      v595 = v863;
      sub_10001FC94();
      sub_1000731F0();
      v596 = *(v463 + 16);
      sub_1000C8A78(*(v463 + 24));
      sub_100051BBC();
      v597 = sub_1000162A4();
      v598 = v967;
      sub_1000038B4(v597, v599, v967);
      v973 = v596;
      if (v328)
      {
        sub_100013EAC();
        sub_100906F44();
        v600 = sub_1000162A4();
        sub_100021CF8(v600, v601);

        v602 = v850;
        v603 = v844;
        if (v598 != 1)
        {
          sub_1000180EC(v263, &qword_100CA6640, qword_100A32640);
        }
      }

      else
      {
        sub_10004ED40();
        sub_1000731F0();

        v602 = v850;
        v603 = v844;
      }

      v604 = v832;
      sub_100051BBC();
      sub_1000038B4(v604, 1, v968);
      if (v328)
      {
        sub_100043AF0(v463 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment);
        sub_100017128();
        sub_100906F44();
        sub_100003BFC(v604);
        v605 = v870;
        if (!v328)
        {
          sub_1000180EC(v604, &qword_100CA6638, &unk_100A31460);
        }
      }

      else
      {
        sub_100049EE8();
        sub_1000731F0();
        v605 = v870;
      }

      sub_100042230();
      sub_100051BBC();
      sub_10000556C(v442);
      if (v328)
      {
        sub_100075294();
        sub_100906F44();
        sub_10000556C(v442);
        if (!v328)
        {
          sub_1000180EC(v442, &qword_100CA6630, &unk_100A32630);
        }
      }

      else
      {
        sub_100028DC0();
        sub_1000731F0();
      }

      sub_100051BBC();
      sub_1000038B4(v603, 1, v969);
      if (v328)
      {
        sub_100023518();
        sub_100906F44();
        sub_10000C814(v603);
        if (!v328)
        {
          sub_1000180EC(v603, &qword_100CA6628, &unk_100A31450);
        }
      }

      else
      {
        sub_10001A180();
        sub_1000731F0();
      }

      sub_1000C8B14(&v933);
      sub_100051BBC();
      sub_10000C814(v602);
      if (v328)
      {
        sub_100010FC4();
        sub_100906F44();
        sub_10000C814(v602);
        if (!v328)
        {
          sub_1000180EC(v602, &qword_100CA6620, &unk_100A32620);
        }
      }

      else
      {
        sub_100004E48();
        sub_1000731F0();
      }

      sub_100051BBC();
      v606 = sub_10000C834();
      sub_1000038B4(v606, v607, v453);
      if (v328)
      {
        sub_100015168();
        sub_100906F44();
        v608 = sub_10000C834();
        sub_1000038B4(v608, v609, v453);
        if (!v328)
        {
          sub_1000180EC(v595, &qword_100CA6618, &unk_100A31440);
        }
      }

      else
      {
        sub_1000092AC();
        sub_1000731F0();
      }

      sub_100030224(&v946);
      sub_100051BBC();
      sub_100003A40(v605);
      if (v328)
      {
        sub_10001D1B0();
        sub_100906F44();
        sub_100003A40(v605);
        if (!v328)
        {
          sub_1000180EC(v605, &qword_100CA6610, &unk_100A32610);
        }
      }

      else
      {
        sub_100006B58();
        sub_1000731F0();
      }

      sub_10001FC94();
      sub_100071A70(&v952);
      sub_1000113EC();
      sub_1000731F0();
      sub_1000421C0();
      sub_100044DA4();
      v610 = sub_100087104();
      sub_100003B6C(v610);
      sub_10000E80C();
      v611 = v973;
      v612 = v965;
      v613 = v931[1];
      v614 = v935;
      v615 = v940[0];
      v616 = v942;
      v617 = v912;
      v618 = &v977;
      goto LABEL_207;
    case 0xAu:
      v576 = 1;
      return sub_10090302C(v576, v974, v963, v965);
    case 0xBu:
      v348 = *sub_1000161C0(v963 + 12, v963[15]);
      v349 = v974;
      v350 = sub_100016298();
      sub_1007381FC(v350, v351, v352);
      type metadata accessor for ReportWeatherViewState._Storage();
      v353 = swift_allocObject();
      memcpy((v353 + 16), __src, 0x60uLL);
      sub_10003015C();
      sub_10001B350(v354, v355, v356, v357);
      v358 = sub_100003BCC(v919);
      v359 = v968;
      sub_10001B350(v358, v360, v361, v968);
      v362 = sub_100003BCC(v924);
      v363 = v966;
      sub_10001B350(v362, v364, v365, v966);
      v366 = sub_100003BCC(v930);
      sub_10001B350(v366, v367, v368, v969);
      v369 = sub_100003BCC(&v936);
      sub_10001B350(v369, v370, v371, v972);
      v372 = sub_100003BCC(&v942);
      sub_10001B350(v372, v373, v374, v971);
      v375 = sub_100003BCC(&v948);
      sub_10001B350(v375, v376, v377, v970);
      *v859 = v353;
      sub_100020FE8();
      swift_storeEnumTagMultiPayload();
      sub_10000E7B0();
      sub_10001B350(v378, v379, v380, v353);
      sub_100018034();
      sub_1000113EC();
      sub_100906F44();
      sub_10003778C();
      sub_100051BBC();
      sub_10000554C(&OBJC_IVAR____TtCV7Weather9MainState8_Storage_modalView);
      if (v328)
      {
        sub_1000180EC(&OBJC_IVAR____TtCV7Weather9MainState8_Storage_modalView, &qword_100CA65E8, &unk_100A31410);
      }

      else
      {
        sub_100069C3C();
        sub_1000DFD78(v348, v577);
        sub_10001FC94();
        sub_1000731F0();
      }

      v578 = v840;
      sub_10001FC94();
      sub_1000731F0();
      v579 = *(v349 + 16);
      sub_1000C8A78(*(v349 + 24));
      sub_1000325C0();
      sub_100051BBC();
      v580 = v967;
      sub_1000038B4(v260, 1, v967);
      v581 = v854;
      v582 = v847;
      v973 = v579;
      if (v328)
      {
        sub_100013EAC();
        sub_100906F44();
        v583 = sub_100024D10(v260, 1, v580);

        v584 = v260;
        v585 = v834;
        if (v583 != 1)
        {
          sub_1000180EC(v584, &qword_100CA6640, qword_100A32640);
        }
      }

      else
      {
        sub_10004ED40();
        sub_1000731F0();

        v585 = v834;
      }

      sub_100051BBC();
      sub_10000556C(v585);
      if (v328)
      {
        swift_beginAccess();
        sub_100017128();
        sub_100906F44();
        sub_10000556C(v585);
        if (!v328)
        {
          sub_1000180EC(v585, &qword_100CA6638, &unk_100A31460);
        }
      }

      else
      {
        sub_100049EE8();
        sub_1000731F0();
      }

      sub_100030224(v924);
      sub_100051BBC();
      sub_1000083BC(v578);
      if (v328)
      {
        sub_100075294();
        sub_100906F44();
        sub_1000083BC(v578);
        if (!v328)
        {
          sub_1000180EC(v578, &qword_100CA6630, &unk_100A32630);
        }
      }

      else
      {
        sub_100028DC0();
        sub_1000731F0();
      }

      sub_100051BBC();
      sub_10000C814(v582);
      if (v328)
      {
        sub_100023518();
        sub_100906F44();
        sub_10000C814(v582);
        v586 = v866;
        if (!v328)
        {
          sub_1000180EC(v582, &qword_100CA6628, &unk_100A31450);
        }
      }

      else
      {
        sub_10001A180();
        sub_1000731F0();
        v586 = v866;
      }

      sub_1000C8B14(&v936);
      sub_100051BBC();
      v587 = v972;
      sub_1000038B4(v581, 1, v972);
      if (v328)
      {
        sub_100010FC4();
        sub_100906F44();
        sub_1000038B4(v581, 1, v587);
        v588 = v893;
        if (!v328)
        {
          sub_1000180EC(v581, &qword_100CA6620, &unk_100A32620);
        }
      }

      else
      {
        sub_100004E48();
        sub_1000731F0();
        v588 = v893;
      }

      sub_100051BBC();
      sub_1000038B4(v586, 1, v971);
      if (v328)
      {
        sub_100015168();
        sub_100906F44();
        sub_100003A40(v586);
        if (!v328)
        {
          sub_1000180EC(v586, &qword_100CA6618, &unk_100A31440);
        }
      }

      else
      {
        sub_1000092AC();
        sub_1000731F0();
      }

      v589 = v874;
      sub_100051BBC();
      sub_100003A40(v589);
      if (v328)
      {
        sub_10001D1B0();
        sub_100906F44();
        sub_100003A40(v589);
        v590 = v588;
        if (!v328)
        {
          sub_1000180EC(v589, &qword_100CA6610, &unk_100A32610);
        }
      }

      else
      {
        sub_100006B58();
        sub_1000731F0();
        v590 = v588;
      }

      sub_10001FC94();
      sub_100071A70(&v954);
      sub_10003778C();
      sub_1000731F0();
      sub_1000421C0();
      sub_100044DA4();
      v592 = *(v591 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);
      v593 = type metadata accessor for MainState._Storage(0);
      sub_100003B6C(v593);
      LOBYTE(v815) = v359;
      sub_10003E038(v973, v965, v933, v939[0], v941[0], v944[1], v915, v950[1], v590, v587, v363, v579, v585, v589, v815, v586, v349, v592, v816, v817, v818, v819, v820, v821, v822, v823, v824, v825, v826, v827, v828, v829, v830, v831, v832);
      sub_1000B0F18();

      goto LABEL_209;
    case 0xCu:
      sub_100024420();
      v423 = *(v422 + 40);
      v973 = *(v422 + 32);
      v424 = *(v422 + 48);
      v425 = *(v422 + 56);
      v971 = v426;
      v972 = v424;
      v427 = *(v422 + 64);
      v428 = *(v422 + 72);
      v429 = *(v422 + 80);
      v430 = *(v422 + 88);
      v333 = *(v422 + 89);
      v431 = *(v422 + 27);
      v432 = type metadata accessor for ListViewState._Storage();
      sub_100042380(v432);
      sub_10012CE58();
      sub_100042DA8(v971, v276, v279, 1, v431, v973, v423, v972, v425, v427, v428, v429, v430, v333);
      sub_1000C8450();

      goto LABEL_32;
    case 0xDu:
      sub_100003934();
      sub_1000165CC();
      sub_10001B350(v548, v549, v550, v276);
      v551 = sub_100003BCC(&v918);
      sub_10001B350(v551, v552, v553, v968);
      v554 = sub_100003BCC(v923);
      sub_10001B350(v554, v555, v556, v966);
      v557 = sub_100003BCC(v929);
      sub_10001B350(v557, v558, v559, v969);
      v560 = sub_100003BCC(&v934);
      sub_10001B350(v560, v561, v562, v972);
      v563 = sub_100003BCC(v941);
      sub_10001B350(v563, v564, v565, v971);
      v566 = sub_100003BCC(&v947);
      sub_10001B350(v566, v567, v568, v970);
      v569 = v858;
      sub_100020FE8();
      swift_storeEnumTagMultiPayload();
      sub_10000E7B0();
      sub_10001B350(v570, v571, v572, &OBJC_IVAR____TtCV7Weather9MainState8_Storage_notificationsOptIn);
      sub_100018034();
      v573 = v974;
      v574 = v864;
      sub_100906F44();
      sub_1000325C0();
      sub_100051BBC();
      sub_10000554C(v569);
      if (v328)
      {
        sub_1000180EC(v569, &qword_100CA65E8, &unk_100A31410);
      }

      else
      {
        sub_100069C3C();
        sub_1000DFD78(v574, v725);
        sub_10001FC94();
        sub_1000731F0();
      }

      sub_10001FC94();
      sub_1000731F0();
      v726 = *(v573 + 16);
      sub_1000C8A78(*(v573 + 24));
      sub_100051BBC();
      sub_100003A40(v253);
      v727 = v839;
      v973 = v726;
      if (v328)
      {
        sub_100013EAC();
        sub_100906F44();
        v728 = sub_100016298();
        v730 = sub_100024D10(v728, v729, v276);

        v731 = v852;
        v732 = v845;
        if (v730 != 1)
        {
          sub_1000180EC(v253, &qword_100CA6640, qword_100A32640);
        }
      }

      else
      {
        sub_10004ED40();
        sub_1000731F0();

        v731 = v852;
        v732 = v845;
      }

      sub_1000884D4();
      sub_10000556C(v253);
      if (v328)
      {
        sub_100043AF0(v573 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment);
        sub_100017128();
        sub_100906F44();
        sub_10000556C(v253);
        v734 = v873;
        v733 = v253;
        v735 = v865;
        if (!v328)
        {
          sub_1000180EC(v733, &qword_100CA6638, &unk_100A31460);
        }
      }

      else
      {
        sub_100049EE8();
        sub_1000731F0();
        v734 = v873;
        v735 = v865;
      }

      sub_100051BBC();
      sub_1000083BC(v727);
      if (v328)
      {
        sub_100075294();
        sub_100906F44();
        sub_1000083BC(v727);
        if (!v328)
        {
          sub_1000180EC(v727, &qword_100CA6630, &unk_100A32630);
        }
      }

      else
      {
        sub_100028DC0();
        sub_1000731F0();
      }

      sub_100051BBC();
      sub_10000E7EC(v732);
      if (v328)
      {
        sub_100023518();
        sub_100906F44();
        sub_10000E7EC(v732);
        if (!v328)
        {
          sub_1000180EC(v732, &qword_100CA6628, &unk_100A31450);
        }
      }

      else
      {
        sub_10001A180();
        sub_1000731F0();
      }

      sub_100030224(&v934);
      sub_100051BBC();
      sub_10000E7EC(v731);
      if (v328)
      {
        sub_100010FC4();
        sub_100906F44();
        sub_10000E7EC(v731);
        v736 = v951;
        if (!v328)
        {
          sub_1000180EC(v731, &qword_100CA6620, &unk_100A32620);
        }
      }

      else
      {
        sub_100004E48();
        sub_1000731F0();
        v736 = v951;
      }

      sub_100051BBC();
      sub_10000C814(v735);
      if (v328)
      {
        sub_100015168();
        sub_100906F44();
        sub_10000C814(v735);
        if (!v328)
        {
          sub_1000180EC(v735, &qword_100CA6618, &unk_100A31440);
        }
      }

      else
      {
        sub_1000092AC();
        sub_1000731F0();
      }

      sub_1000C8B14(&v947);
      sub_100051BBC();
      sub_100003BFC(v734);
      if (v328)
      {
        sub_10001D1B0();
        sub_100906F44();
        sub_100003BFC(v734);
        if (!v328)
        {
          sub_1000180EC(v734, &qword_100CA6610, &unk_100A32610);
        }
      }

      else
      {
        sub_100006B58();
        sub_1000731F0();
      }

      sub_10001FC94();
      sub_100071A70(&v953);
      sub_100020FE8();
      sub_1000731F0();
      v737 = v573;
      v359 = *(v573 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
      v738 = *(v573 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
      v740 = *(v573 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
      v739 = *(v573 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);
      v741 = v573 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState;
      v742 = *(v573 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
      v744 = *(v741 + 8);
      v743 = *(v741 + 16);
      v745 = *(v737 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);
      v746 = type metadata accessor for MainState._Storage(0);
      sub_100003B6C(v746);
      LOBYTE(v815) = v742;
      sub_10003E038(v973, v965, v932, v936, v940[1], v943, v913, v948, v951, v736, v359, v738, v740, v739, v815, v744, v743, v745, v816, v817, v818, v819, v820, v821, v822, v823, v824, v825, v826, v827, v828, v829, v830, v831, v832);
      sub_1000B0F18();

      goto LABEL_209;
    case 0xEu:
      sub_100024420();
      sub_100071EDC(v338);
      v340 = *(v339 + 64);
      v341 = *(v339 + 72);
      v342 = *(v339 + 80);
      v343 = *(v339 + 88);
      v333 = *(v339 + 89);
      v344 = type metadata accessor for ListViewState._Storage();
      sub_100042380(v344);
      sub_10012CE58();
      BYTE1(v820) = v333;
      LOBYTE(v820) = v343;
      v818 = v341;
      v819 = v342;
      LOBYTE(v817) = v340;
      v816 = v260;
      v336 = v971;
      v337 = v276;
      v345 = v279;
      v346 = v253;
      v347 = 0;
      goto LABEL_31;
    case 0xFu:
      sub_100024420();
      v479 = *(v478 + 26);
      v480 = *(v478 + 32);
      v481 = *(v478 + 40);
      v972 = v482;
      v973 = v480;
      v483 = *(v478 + 64);
      v485 = *(v478 + 72);
      v484 = *(v478 + 80);
      v486 = *(v478 + 88);
      v333 = *(v478 + 89);
      v487 = *(v478 + 27);
      v488 = type metadata accessor for ListViewState._Storage();
      sub_100042380(v488);
      sub_10012CE58();
      sub_100042DA8(v972, v276, v279, v479, v487, v973, v481, 0, 0, v483, v485, v484, v486, v333);
      sub_1000C8450();

      goto LABEL_32;
    case 0x10u:
      sub_100024420();
      sub_100071EDC(v331);
      v333 = *(v332 + 88);
      v334 = *(v332 + 27);
      v335 = type metadata accessor for ListViewState._Storage();
      sub_100042380(v335);
      sub_10012CE58();
      BYTE1(v820) = 1;
      v336 = sub_100120164();
      v337 = v276;
LABEL_30:
      v345 = v279;
      v346 = v253;
      v347 = v334;
LABEL_31:
      sub_100042DA8(v336, v337, v345, v346, v347, v973, v256, v972, v816, v817, v818, v819, v820, SBYTE1(v820));
      sub_1000C8450();

LABEL_32:

      v544 = v333;
LABEL_39:
      v359 = sub_10090184C(v544, v974);

      break;
    default:
      v280 = sub_10022C350(&qword_100CBBE20, &unk_100A5C410);
      v281 = v877;
      v282 = v279[*(v280 + 48)];
      v283 = v876;
      v284 = v878;
      (*(v877 + 32))(v876, v279, v878);
      v285 = sub_100003BCC(v922);
      sub_10001B350(v285, v286, v287, v967);
      v288 = sub_100003BCC(v928);
      sub_100040C3C(v288, v289, v290);
      v291 = sub_100003BCC(&v935);
      sub_1000133AC(v291, v292, v293);
      v294 = sub_100003BCC(&v938);
      sub_10001B350(v294, v295, v296, v969);
      v297 = sub_100003BCC(&v943);
      sub_10001B350(v297, v298, v299, v972);
      v300 = sub_100003BCC(v950);
      sub_10001B350(v300, v301, v302, v971);
      sub_10001D1B0();
      v965 = v303;
      sub_1000325C0();
      sub_100906F44();
      v304 = v879;
      LocationModel.identifier.getter();
      (*(v281 + 8))(v283, v284);
      sub_10000E7B0();
      sub_10001B350(v305, v306, v307, v962);
      v308 = type metadata accessor for LocationViewerViewState._Storage(0);
      sub_100003B6C(v308);
      v309 = sub_10003DDB8(v304, 0, 0, 3, 0, v282);
      v310 = v880;
      *v880 = v309;
      sub_10003778C();
      swift_storeEnumTagMultiPayload();
      sub_10000E7B0();
      sub_10001B350(v311, v312, v313, v304);
      v314 = type metadata accessor for SearchViewState(0);
      sub_100003934();
      sub_10001B350(v315, v316, v317, v314);
      sub_100003934();
      sub_10001B350(v318, v319, v320, v904);
      v321 = sub_100003BCC(v975);
      v322 = v891;
      sub_10001B350(v321, v323, v324, v891);
      v325 = *v260;
      sub_100020FE8();
      sub_100051BBC();
      v326 = sub_10000C834();
      sub_1000038B4(v326, v327, v304);
      v973 = v325;
      if (v328)
      {
        v687 = v970;
        sub_100906F44();
        v329 = sub_10000C834();
        sub_100021CF8(v329, v330);

        if (v304 != 1)
        {
          sub_1000180EC(v310, &qword_100CA6608, &unk_100A31430);
        }
      }

      else
      {
        sub_100086960();
        sub_1000731F0();

        v687 = v970;
      }

      v688 = *(v260 + v687[6]);
      sub_1000325C0();
      sub_100051BBC();
      sub_100003A40(v260);
      v689 = v974;
      if (v328)
      {
        sub_100095588();
        sub_100003A40(v260);
        v693 = v853;
        if (!v328)
        {
          sub_1000180EC(v260, &qword_100CA6600, &unk_100A5C400);
        }
      }

      else
      {
        sub_1000731F0();
        sub_10000E7B0();
        sub_10001B350(v690, v691, v692, v314);
        v693 = v853;
      }

      v694 = v887;
      sub_100051BBC();
      sub_10000E7EC(v694);
      if (v328)
      {
        v695 = v937;
        sub_100906F44();
        sub_10000E7EC(v694);
        if (!v328)
        {
          sub_1000180EC(v694, &qword_100CA65F8, &dword_100A31420);
        }
      }

      else
      {
        sub_1000D4040();
        sub_1000731F0();
        v695 = v937;
      }

      v696 = v889;
      sub_100051BBC();
      sub_1000038B4(v696, 1, v322);
      if (v328)
      {
        sub_100906F44();
        sub_1000038B4(v696, 1, v322);
        v697 = v860;
        if (!v328)
        {
          sub_1000180EC(v696, &qword_100CA65F0, &unk_100A5C3F0);
        }
      }

      else
      {
        sub_100020404();
        sub_1000731F0();
        v697 = v860;
      }

      v698 = *(v695 + v687[11]);
      sub_1000DFD78(v695, type metadata accessor for ViewState);
      v699 = v881;
      *v881 = v973;
      sub_100086960();
      sub_1000731F0();
      *(v699 + v687[6]) = v688;
      *(v699 + v687[7]) = 1;
      sub_100051BBC();
      sub_1000D4040();
      sub_1000731F0();
      sub_100020404();
      sub_1000731F0();
      *(v699 + v687[11]) = v698;
      sub_10000E7B0();
      sub_10001B350(v700, v701, v702, v687);
      v703 = v872;
      sub_100003934();
      v704 = v964;
      sub_10001B350(v705, v706, v707, v964);
      sub_100018034();
      sub_10003778C();
      sub_100906F44();
      sub_1000113EC();
      sub_100051BBC();
      sub_10000554C(v703);
      if (v328)
      {
        sub_1000180EC(v703, &qword_100CA65E8, &unk_100A31410);
      }

      else
      {
        sub_100069C3C();
        sub_1000DFD78(v688, v708);
        sub_10001FC94();
        sub_1000731F0();
      }

      sub_1000165CC();
      v709 = v867;
      sub_10001FC94();
      sub_1000731F0();
      v710 = *(v689 + 16);
      LODWORD(v970) = *(v689 + 24);
      sub_100020FE8();
      sub_100051BBC();
      sub_100003A40(v704);
      v973 = v710;
      if (v328)
      {
        sub_100013EAC();
        sub_100906F44();
        v711 = sub_10000C834();
        v713 = sub_100024D10(v711, v712, v703);

        v328 = v713 == 1;
        v714 = v846;
        if (!v328)
        {
          sub_1000180EC(v704, &qword_100CA6640, qword_100A32640);
        }
      }

      else
      {
        sub_10004ED40();
        sub_1000731F0();

        v714 = v846;
      }

      sub_100051BBC();
      sub_1000038B4(v714, 1, v968);
      if (v328)
      {
        v715 = v714;
        sub_100043AF0(v689 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment);
        sub_100017128();
        sub_100906F44();
        sub_100003A40(v714);
        v716 = v882;
        if (!v328)
        {
          sub_1000180EC(v715, &qword_100CA6638, &unk_100A31460);
        }
      }

      else
      {
        sub_100049EE8();
        sub_1000731F0();
        v716 = v882;
      }

      sub_100051BBC();
      sub_1000038B4(v693, 1, v966);
      if (v328)
      {
        sub_100075294();
        sub_100906F44();
        sub_10000554C(v693);
        v717 = v972;
        if (!v328)
        {
          sub_1000180EC(v693, &qword_100CA6630, &unk_100A32630);
        }
      }

      else
      {
        sub_100028DC0();
        sub_1000731F0();
        v717 = v972;
      }

      sub_100051BBC();
      sub_1000038B4(v697, 1, v969);
      if (v328)
      {
        sub_100023518();
        sub_100906F44();
        sub_10000556C(v697);
        if (!v328)
        {
          sub_1000180EC(v697, &qword_100CA6628, &unk_100A31450);
        }
      }

      else
      {
        sub_10001A180();
        sub_1000731F0();
      }

      sub_100051BBC();
      sub_10000554C(v709);
      if (v328)
      {
        sub_100010FC4();
        sub_100906F44();
        sub_10000554C(v709);
        if (!v328)
        {
          sub_1000180EC(v709, &qword_100CA6620, &unk_100A32620);
        }
      }

      else
      {
        sub_100004E48();
        sub_1000731F0();
      }

      sub_100020FE8();
      sub_100051BBC();
      v718 = sub_10000C834();
      v719 = v971;
      sub_1000038B4(v718, v720, v971);
      if (v328)
      {
        sub_100015168();
        sub_100906F44();
        v721 = sub_10000C834();
        sub_1000038B4(v721, v722, v719);
        if (!v328)
        {
          sub_1000180EC(v717, &qword_100CA6618, &unk_100A31440);
        }
      }

      else
      {
        sub_1000092AC();
        sub_1000731F0();
      }

      sub_100051BBC();
      sub_10000C814(v716);
      if (v328)
      {
        sub_10001D1B0();
        sub_1000D438C();
        sub_100906F44();
        sub_10000C814(v716);
        if (!v328)
        {
          sub_1000180EC(v716, &qword_100CA6610, &unk_100A32610);
        }
      }

      else
      {
        sub_100006B58();
        sub_1000731F0();
      }

      sub_10001FC94();
      sub_1000113EC();
      sub_1000731F0();
      v359 = *(v689 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
      v723 = sub_100087104();
      sub_100003B6C(v723);
      sub_10000E80C();
      v611 = v973;
      v612 = v970;
      v613 = v955;
      v614 = v957;
      v615 = v958;
      v616 = v959;
      v617 = v925;
      v618 = &v979;
LABEL_207:
      sub_10003E038(v611, v612, v613, v614, v615, v616, v617, *(v618 - 32), v816, v817, v818, v819, v820, v821, v822, v823, v824, v825, v826, *(&v826 + 1), v827, v828, v829, v830, v831, v832, v833, v834, v835, v836, v837, v838, v839, v840, v841);
      sub_1000B0F18();

LABEL_208:

LABEL_209:

      break;
  }

  return v359;
}

uint64_t sub_10090184C(uint64_t a1, uint64_t a2)
{
  v180 = a2;
  v157 = a1;
  v174 = type metadata accessor for TimeState(0);
  __chkstk_darwin(v174);
  v181 = &v133 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = type metadata accessor for NotificationsOptInState(0);
  __chkstk_darwin(v173);
  v179 = &v133 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = type metadata accessor for NotificationsState(0);
  __chkstk_darwin(v172);
  v178 = &v133 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = type metadata accessor for LocationsState(0);
  __chkstk_darwin(v170);
  v177 = &v133 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = type metadata accessor for EnvironmentState(0);
  __chkstk_darwin(v169);
  v176 = &v133 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = type metadata accessor for AppConfigurationState(0);
  __chkstk_darwin(v168);
  v175 = &v133 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = type metadata accessor for ModalViewState(0);
  __chkstk_darwin(v152);
  v161 = &v133 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v154 = &v133 - v10;
  __chkstk_darwin(v11);
  v160 = &v133 - v12;
  v13 = sub_10022C350(&qword_100CA65E8, &unk_100A31410);
  __chkstk_darwin(v13 - 8);
  v151 = &v133 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v149 = &v133 - v16;
  v137 = type metadata accessor for WeatherMapPresentationState(0);
  __chkstk_darwin(v137);
  v147 = &v133 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = type metadata accessor for DisplayMetrics(0);
  __chkstk_darwin(v164);
  v167 = &v133 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = type metadata accessor for ViewState.SecondaryViewState(0);
  __chkstk_darwin(v135);
  v166 = &v133 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10022C350(&qword_100CA65F0, &unk_100A5C3F0);
  __chkstk_darwin(v20 - 8);
  *(&v143 + 1) = &v133 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v163 = &v133 - v23;
  v24 = sub_10022C350(&qword_100CA65F8, &dword_100A31420);
  __chkstk_darwin(v24 - 8);
  v141 = &v133 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v162 = &v133 - v27;
  v28 = sub_10022C350(&qword_100CA6600, &unk_100A5C400);
  __chkstk_darwin(v28 - 8);
  v138 = &v133 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v165 = &v133 - v31;
  __chkstk_darwin(v32);
  v34 = &v133 - v33;
  v35 = sub_10022C350(&qword_100CA6608, &unk_100A31430);
  __chkstk_darwin(v35 - 8);
  v37 = &v133 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v40 = &v133 - v39;
  v41 = type metadata accessor for ViewState(0);
  __chkstk_darwin(v41);
  v171 = &v133 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v45 = &v133 - v44;
  v46 = sub_10022C350(&qword_100CA6610, &unk_100A32610);
  __chkstk_darwin(v46 - 8);
  v159 = &v133 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v48);
  v139 = (&v133 - v49);
  v50 = sub_10022C350(&qword_100CA6618, &unk_100A31440);
  __chkstk_darwin(v50 - 8);
  v158 = &v133 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v52);
  v54 = &v133 - v53;
  v55 = sub_10022C350(&qword_100CA6620, &unk_100A32620);
  __chkstk_darwin(v55 - 8);
  v155 = &v133 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v57);
  v59 = &v133 - v58;
  v60 = sub_10022C350(&qword_100CA6628, &unk_100A31450);
  __chkstk_darwin(v60 - 8);
  v150 = &v133 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v62);
  v64 = &v133 - v63;
  v65 = sub_10022C350(&qword_100CA6630, &unk_100A32630);
  __chkstk_darwin(v65 - 8);
  v146 = &v133 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v67);
  v69 = &v133 - v68;
  v70 = sub_10022C350(&qword_100CA6638, &unk_100A31460);
  __chkstk_darwin(v70 - 8);
  v144 = &v133 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v72);
  v74 = &v133 - v73;
  v75 = sub_10022C350(&qword_100CA6640, qword_100A32640);
  __chkstk_darwin(v75 - 8);
  v142 = &v133 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v77);
  v140 = &v133 - v78;
  sub_10001B350(&v133 - v78, 1, 1, v168);
  *&v143 = v74;
  v79 = v74;
  v80 = v135;
  sub_10001B350(v79, 1, 1, v169);
  v145 = v69;
  sub_10001B350(v69, 1, 1, v170);
  v148 = v64;
  sub_10001B350(v64, 1, 1, v172);
  v153 = v59;
  sub_10001B350(v59, 1, 1, v173);
  v156 = v54;
  sub_10001B350(v54, 1, 1, v174);
  v134 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_view;
  sub_100906F44();
  sub_10001B350(v40, 1, 1, v80);
  v81 = type metadata accessor for SearchViewState(0);
  v136 = v34;
  sub_10001B350(v34, 1, 1, v81);
  sub_10001B350(v162, 1, 1, v164);
  v82 = v137;
  sub_10001B350(v163, 1, 1, v137);
  sub_100095588();
  if (sub_100024D10(v37, 1, v80) == 1)
  {
    sub_100906F44();
    if (sub_100024D10(v37, 1, v80) != 1)
    {
      sub_1000180EC(v37, &qword_100CA6608, &unk_100A31430);
    }
  }

  else
  {
    sub_1000731F0();
  }

  LODWORD(v135) = v45[v41[6]];
  v83 = [objc_opt_self() currentDevice];
  v84 = [v83 userInterfaceIdiom];

  sub_1000180EC(v40, &qword_100CA6608, &unk_100A31430);
  v85 = v139;
  v86 = v138;
  if (v84 && *&v45[v41[9] + 8] == 2)
  {
    v87 = 1;
  }

  else
  {
    v87 = v45[v41[7]];
  }

  v88 = v82;
  sub_100051BBC();
  if (sub_100024D10(v86, 1, v81) == 1)
  {
    sub_100095588();
    v89 = sub_100024D10(v86, 1, v81);
    v90 = v154;
    if (v89 != 1)
    {
      sub_1000180EC(v86, &qword_100CA6600, &unk_100A5C400);
    }
  }

  else
  {
    v91 = v165;
    sub_1000731F0();
    sub_10001B350(v91, 0, 1, v81);
    v90 = v154;
  }

  v92 = v141;
  sub_100051BBC();
  v93 = v164;
  if (sub_100024D10(v92, 1, v164) == 1)
  {
    sub_100906F44();
    v94 = sub_100024D10(v92, 1, v93);
    v95 = v180;
    if (v94 != 1)
    {
      sub_1000180EC(v92, &qword_100CA65F8, &dword_100A31420);
    }
  }

  else
  {
    sub_1000731F0();
    v95 = v180;
  }

  v96 = *(&v143 + 1);
  sub_100051BBC();
  if (sub_100024D10(v96, 1, v88) == 1)
  {
    sub_100906F44();
    if (sub_100024D10(v96, 1, v88) != 1)
    {
      sub_1000180EC(v96, &qword_100CA65F0, &unk_100A5C3F0);
    }
  }

  else
  {
    sub_1000731F0();
  }

  v97 = v45[v41[11]];
  sub_1000DFD78(v45, type metadata accessor for ViewState);
  *v85 = v157;
  sub_1000731F0();
  *(v85 + v41[6]) = v135;
  *(v85 + v41[7]) = v87;
  sub_100051BBC();
  sub_1000731F0();
  sub_1000731F0();
  *(v85 + v41[11]) = v97;
  sub_10001B350(v85, 0, 1, v41);
  v98 = v152;
  sub_10001B350(v149, 1, 1, v152);
  sub_100906F44();
  v99 = v151;
  sub_100051BBC();
  LODWORD(v98) = sub_100024D10(v99, 1, v98);

  if (v98 == 1)
  {
    sub_1000180EC(v99, &qword_100CA65E8, &unk_100A31410);
  }

  else
  {
    sub_1000DFD78(v90, type metadata accessor for ModalViewState);
    sub_1000731F0();
  }

  v100 = v174;
  v101 = v170;
  v102 = v168;
  v103 = v142;
  sub_1000731F0();
  v104 = *(v95 + 16);
  LODWORD(v167) = *(v95 + 24);
  sub_100051BBC();
  v105 = sub_100024D10(v103, 1, v102);
  v106 = v146;
  v180 = v104;
  if (v105 == 1)
  {
    sub_100906F44();
    v107 = sub_100024D10(v103, 1, v102);

    v108 = v144;
    if (v107 != 1)
    {
      sub_1000180EC(v103, &qword_100CA6640, qword_100A32640);
    }
  }

  else
  {
    sub_1000731F0();

    v108 = v144;
  }

  sub_100051BBC();
  v109 = v169;
  if (sub_100024D10(v108, 1, v169) == 1)
  {
    swift_beginAccess();
    sub_100906F44();
    v110 = sub_100024D10(v108, 1, v109);
    v111 = v173;
    v112 = v150;
    if (v110 != 1)
    {
      sub_1000180EC(v108, &qword_100CA6638, &unk_100A31460);
    }
  }

  else
  {
    sub_1000731F0();
    v111 = v173;
    v112 = v150;
  }

  sub_100051BBC();
  if (sub_100024D10(v106, 1, v101) == 1)
  {
    sub_100906F44();
    v113 = sub_100024D10(v106, 1, v101);
    v114 = v155;
    if (v113 != 1)
    {
      sub_1000180EC(v106, &qword_100CA6630, &unk_100A32630);
    }
  }

  else
  {
    sub_1000731F0();
    v114 = v155;
  }

  sub_100051BBC();
  v115 = v172;
  if (sub_100024D10(v112, 1, v172) == 1)
  {
    sub_100906F44();
    v116 = sub_100024D10(v112, 1, v115);
    v117 = v158;
    if (v116 != 1)
    {
      sub_1000180EC(v112, &qword_100CA6628, &unk_100A31450);
    }
  }

  else
  {
    sub_1000731F0();
    v117 = v158;
  }

  sub_100051BBC();
  if (sub_100024D10(v114, 1, v111) == 1)
  {
    sub_100906F44();
    v118 = sub_100024D10(v114, 1, v111);
    v119 = v159;
    if (v118 != 1)
    {
      sub_1000180EC(v114, &qword_100CA6620, &unk_100A32620);
    }
  }

  else
  {
    sub_1000731F0();
    v119 = v159;
  }

  sub_100051BBC();
  if (sub_100024D10(v117, 1, v100) == 1)
  {
    sub_100906F44();
    if (sub_100024D10(v117, 1, v100) != 1)
    {
      sub_1000180EC(v117, &qword_100CA6618, &unk_100A31440);
    }
  }

  else
  {
    sub_1000731F0();
  }

  sub_100051BBC();
  if (sub_100024D10(v119, 1, v41) == 1)
  {
    sub_100906F44();
    if (sub_100024D10(v119, 1, v41) != 1)
    {
      sub_1000180EC(v119, &qword_100CA6610, &unk_100A32610);
    }
  }

  else
  {
    sub_1000731F0();
  }

  v120 = v161;
  sub_1000731F0();
  v122 = *(v95 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
  v121 = *(v95 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
  v124 = *(v95 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
  v123 = *(v95 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);
  v125 = *(v95 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
  v127 = *(v95 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 8);
  v126 = *(v95 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 16);
  v128 = *(v95 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);
  type metadata accessor for MainState._Storage(0);
  swift_allocObject();
  LOBYTE(v132) = v125;
  sub_10003E038(v180, v167, v175, v176, v177, v178, v179, v181, v171, v120, v122, v121, v124, v123, v132, v127, v126, v128, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149);
  v130 = v129;

  return v130;
}

uint64_t sub_10090302C(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v435 = a4;
  v480 = a3;
  v533 = a2;
  LODWORD(v525) = a1;
  v501 = type metadata accessor for WeatherMapPresentationState(0);
  __chkstk_darwin(v501);
  v449 = &v413 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v494 = type metadata accessor for DisplayMetrics(0);
  __chkstk_darwin(v494);
  v503 = &v413 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v439 = type metadata accessor for ViewState.SecondaryViewState(0);
  __chkstk_darwin(v439);
  v500 = &v413 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10022C350(&qword_100CA65F0, &unk_100A5C3F0);
  __chkstk_darwin(v7 - 8);
  v446 = &v413 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v493 = &v413 - v10;
  v11 = sub_10022C350(&qword_100CA65F8, &dword_100A31420);
  __chkstk_darwin(v11 - 8);
  v445 = &v413 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v489 = &v413 - v14;
  v15 = sub_10022C350(&qword_100CA6600, &unk_100A5C400);
  __chkstk_darwin(v15 - 8);
  v443 = &v413 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v497 = &v413 - v18;
  __chkstk_darwin(v19);
  v441 = &v413 - v20;
  v21 = sub_10022C350(&qword_100CA6608, &unk_100A31430);
  __chkstk_darwin(v21 - 8);
  v433 = &v413 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v438 = &v413 - v24;
  v476 = type metadata accessor for NotificationsOptInInput(0);
  __chkstk_darwin(v476);
  v478 = &v413 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v532 = type metadata accessor for ViewState(0);
  __chkstk_darwin(v532 - 2);
  v448 = &v413 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v452 = &v413 - v28;
  __chkstk_darwin(v29);
  v512 = &v413 - v30;
  __chkstk_darwin(v31);
  v523 = &v413 - v32;
  v531 = type metadata accessor for TimeState(0);
  __chkstk_darwin(v531);
  v499 = &v413 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v508 = &v413 - v35;
  __chkstk_darwin(v36);
  v522 = &v413 - v37;
  v535 = type metadata accessor for NotificationsState(0);
  __chkstk_darwin(v535);
  v496 = &v413 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v507 = &v413 - v40;
  __chkstk_darwin(v41);
  v521 = &v413 - v42;
  v534 = type metadata accessor for LocationsState(0);
  __chkstk_darwin(v534);
  v492 = &v413 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v506 = &v413 - v45;
  __chkstk_darwin(v46);
  v520 = &v413 - v47;
  v48 = type metadata accessor for EnvironmentState(0);
  __chkstk_darwin(v48);
  v491 = &v413 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50);
  v505 = &v413 - v51;
  __chkstk_darwin(v52);
  v519 = &v413 - v53;
  v54 = type metadata accessor for AppConfigurationState(0);
  __chkstk_darwin(v54);
  v490 = &v413 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v56);
  v504 = &v413 - v57;
  __chkstk_darwin(v58);
  v518 = &v413 - v59;
  v526 = type metadata accessor for ModalViewState(0);
  __chkstk_darwin(v526);
  v429 = &v413 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v61);
  v488 = &v413 - v62;
  __chkstk_darwin(v63);
  v509 = &v413 - v64;
  __chkstk_darwin(v65);
  v444 = &v413 - v66;
  __chkstk_darwin(v67);
  v451 = &v413 - v68;
  __chkstk_darwin(v69);
  v471 = &v413 - v70;
  __chkstk_darwin(v71);
  v467 = &v413 - v72;
  __chkstk_darwin(v73);
  v517 = &v413 - v74;
  v75 = sub_10022C350(&qword_100CA65E8, &unk_100A31410);
  __chkstk_darwin(v75 - 8);
  v426 = &v413 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v77);
  v425 = (&v413 - v78);
  __chkstk_darwin(v79);
  v440 = &v413 - v80;
  __chkstk_darwin(v81);
  v437 = &v413 - v82;
  __chkstk_darwin(v83);
  v465 = &v413 - v84;
  __chkstk_darwin(v85);
  v464 = &v413 - v86;
  v87 = sub_10022C350(&qword_100CA6610, &unk_100A32610);
  __chkstk_darwin(v87 - 8);
  v436 = &v413 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v89);
  v486 = &v413 - v90;
  __chkstk_darwin(v91);
  v450 = &v413 - v92;
  __chkstk_darwin(v93);
  v502 = (&v413 - v94);
  __chkstk_darwin(v95);
  v469 = &v413 - v96;
  __chkstk_darwin(v97);
  v516 = (&v413 - v98);
  v99 = sub_10022C350(&qword_100CA6618, &unk_100A31440);
  __chkstk_darwin(v99 - 8);
  v432 = &v413 - ((v100 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v101);
  v483 = &v413 - v102;
  __chkstk_darwin(v103);
  v447 = &v413 - v104;
  __chkstk_darwin(v105);
  v495 = &v413 - v106;
  __chkstk_darwin(v107);
  v468 = &v413 - v108;
  __chkstk_darwin(v109);
  v514 = &v413 - v110;
  v111 = type metadata accessor for Date();
  v528 = *(v111 - 8);
  __chkstk_darwin(v111);
  *&v423 = &v413 - ((v112 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v113);
  v422 = &v413 - v114;
  __chkstk_darwin(v115);
  v536 = (&v413 - v116);
  v117 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  __chkstk_darwin(v117 - 8);
  v420 = &v413 - ((v118 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v119);
  v417 = &v413 - v120;
  __chkstk_darwin(v121);
  v418 = &v413 - v122;
  __chkstk_darwin(v123);
  v415 = &v413 - v124;
  __chkstk_darwin(v125);
  v127 = &v413 - v126;
  __chkstk_darwin(v128);
  v130 = &v413 - v129;
  v131 = type metadata accessor for NotificationsOptInState(0);
  __chkstk_darwin(v131);
  v484 = &v413 - ((v132 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v133);
  v419 = &v413 - v134;
  __chkstk_darwin(v135);
  v498 = &v413 - v136;
  __chkstk_darwin(v137);
  v416 = &v413 - v138;
  __chkstk_darwin(v139);
  v515 = &v413 - v140;
  __chkstk_darwin(v141);
  v143 = &v413 - v142;
  v144 = sub_10022C350(&qword_100CA6620, &unk_100A32620);
  __chkstk_darwin(v144 - 8);
  v428 = &v413 - ((v145 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v146);
  v479 = &v413 - v147;
  __chkstk_darwin(v148);
  v442 = &v413 - v149;
  __chkstk_darwin(v150);
  v487 = &v413 - v151;
  __chkstk_darwin(v152);
  v466 = &v413 - v153;
  __chkstk_darwin(v154);
  v513 = &v413 - v155;
  v156 = sub_10022C350(&qword_100CA6628, &unk_100A31450);
  __chkstk_darwin(v156 - 8);
  v424 = &v413 - ((v157 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v158);
  v474 = &v413 - v159;
  __chkstk_darwin(v160);
  v434 = &v413 - v161;
  __chkstk_darwin(v162);
  v485 = &v413 - v163;
  __chkstk_darwin(v164);
  v463 = &v413 - v165;
  __chkstk_darwin(v166);
  v168 = &v413 - v167;
  v169 = sub_10022C350(&qword_100CA6630, &unk_100A32630);
  __chkstk_darwin(v169 - 8);
  *(&v423 + 1) = &v413 - ((v170 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v171);
  v473 = &v413 - v172;
  __chkstk_darwin(v173);
  v431 = &v413 - v174;
  __chkstk_darwin(v175);
  v482 = &v413 - v176;
  __chkstk_darwin(v177);
  v461 = &v413 - v178;
  __chkstk_darwin(v179);
  v181 = &v413 - v180;
  v182 = sub_10022C350(&qword_100CA6638, &unk_100A31460);
  __chkstk_darwin(v182 - 8);
  v421 = &v413 - ((v183 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v184);
  v472 = &v413 - v185;
  __chkstk_darwin(v186);
  v430 = &v413 - v187;
  __chkstk_darwin(v188);
  v481 = &v413 - v189;
  __chkstk_darwin(v190);
  v459 = &v413 - v191;
  __chkstk_darwin(v192);
  v194 = &v413 - v193;
  v195 = sub_10022C350(&qword_100CA6640, qword_100A32640);
  __chkstk_darwin(v195 - 8);
  v414 = &v413 - ((v196 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v197);
  v470 = &v413 - v198;
  __chkstk_darwin(v199);
  v427 = &v413 - v200;
  __chkstk_darwin(v201);
  v477 = &v413 - v202;
  __chkstk_darwin(v203);
  v457 = &v413 - v204;
  __chkstk_darwin(v205);
  v456 = &v413 - v206;
  v529 = v54;
  sub_10001B350(&v413 - v206, 1, 1, v54);
  v458 = v194;
  v530 = v48;
  sub_10001B350(v194, 1, 1, v48);
  v460 = v181;
  v207 = v181;
  v208 = v127;
  sub_10001B350(v207, 1, 1, v534);
  v462 = v168;
  sub_10001B350(v168, 1, 1, v535);
  v527 = v533 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_notificationsOptIn;
  sub_100906F44();
  sub_10001B350(v130, 1, 1, v111);
  LODWORD(v511) = *v143;
  v209 = *(v143 + 1);
  LODWORD(v510) = v143[16];
  LODWORD(v475) = v143[17];
  v455 = v143[18];
  v454 = v143[19];
  v453 = v143[20];
  sub_100051BBC();
  if (sub_100024D10(v208, 1, v111) == 1)
  {
    (*(v528 + 16))(v536, &v143[v131[11]], v111);
    v210 = sub_100024D10(v208, 1, v111);

    if (v210 != 1)
    {
      sub_1000180EC(v208, &unk_100CB2CF0, &unk_100A2D7F0);
    }
  }

  else
  {
    (*(v528 + 32))(v536, v208, v111);
  }

  v211 = v143[v131[12]];
  v212 = v143[v131[13]];
  v213 = v143[v131[14]];
  v214 = v143[v131[15]];
  v215 = v143[v131[16]];
  v216 = v143[v131[17]];
  sub_1000DFD78(v143, type metadata accessor for NotificationsOptInState);
  v217 = v513;
  *v513 = v511;
  *(v217 + 8) = v209;
  *(v217 + 16) = v510;
  *(v217 + 17) = v475;
  *(v217 + 18) = v455;
  *(v217 + 19) = v454;
  *(v217 + 20) = v453;
  v218 = *(v528 + 32);
  v219 = v217 + v131[11];
  v524 = v111;
  v511 = v528 + 32;
  v510 = v218;
  v218(v219, v536, v111);
  *(v217 + v131[12]) = v211;
  *(v217 + v131[13]) = v212;
  *(v217 + v131[14]) = v213;
  *(v217 + v131[15]) = v214;
  *(v217 + v131[16]) = v215;
  *(v217 + v131[17]) = v216;
  *(v217 + v131[18]) = 0;
  v536 = v131;
  sub_10001B350(v217, 0, 1, v131);
  sub_10001B350(v514, 1, 1, v531);
  sub_10001B350(v516, 1, 1, v532);
  v220 = v526;
  sub_10001B350(v464, 1, 1, v526);
  v221 = v533;
  v475 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_modalView;
  v222 = v467;
  sub_100906F44();
  v223 = v465;
  sub_100051BBC();
  if (sub_100024D10(v223, 1, v220) == 1)
  {
    sub_1000180EC(v223, &qword_100CA65E8, &unk_100A31410);
  }

  else
  {
    sub_1000DFD78(v222, type metadata accessor for ModalViewState);
    sub_1000731F0();
  }

  v224 = v529;
  v225 = v530;
  v226 = v461;
  sub_1000731F0();
  v227 = *(v221 + 16);
  LODWORD(v467) = *(v221 + 24);
  v228 = v457;
  sub_100051BBC();
  v229 = sub_100024D10(v228, 1, v224);
  v231 = v534;
  v230 = v535;
  if (v229 == 1)
  {
    sub_100906F44();
    v232 = sub_100024D10(v228, 1, v224);
    v233 = v227;

    if (v232 != 1)
    {
      sub_1000180EC(v228, &qword_100CA6640, qword_100A32640);
    }
  }

  else
  {
    sub_1000731F0();
    v233 = v227;
  }

  v234 = v459;
  sub_100051BBC();
  if (sub_100024D10(v234, 1, v225) == 1)
  {
    v235 = v234;
    swift_beginAccess();
    sub_100906F44();
    v236 = sub_100024D10(v234, 1, v225);
    v237 = v536;
    v238 = v463;
    if (v236 != 1)
    {
      sub_1000180EC(v235, &qword_100CA6638, &unk_100A31460);
    }
  }

  else
  {
    sub_1000731F0();
    v237 = v536;
    v238 = v463;
  }

  sub_100051BBC();
  if (sub_100024D10(v226, 1, v231) == 1)
  {
    sub_100906F44();
    v239 = sub_100024D10(v226, 1, v231);
    v240 = v466;
    if (v239 != 1)
    {
      sub_1000180EC(v226, &qword_100CA6630, &unk_100A32630);
    }
  }

  else
  {
    sub_1000731F0();
    v240 = v466;
  }

  sub_100051BBC();
  v241 = sub_100024D10(v238, 1, v230);
  v465 = v233;
  if (v241 == 1)
  {
    sub_100906F44();
    v242 = sub_100024D10(v238, 1, v230);
    v243 = v468;
    if (v242 != 1)
    {
      sub_1000180EC(v238, &qword_100CA6628, &unk_100A31450);
    }
  }

  else
  {
    sub_1000731F0();
    v243 = v468;
  }

  sub_100051BBC();
  v244 = sub_100024D10(v240, 1, v237);
  v246 = v531;
  v245 = v532;
  if (v244 == 1)
  {
    sub_100906F44();
    v247 = sub_100024D10(v240, 1, v237);
    v248 = v469;
    if (v247 != 1)
    {
      sub_1000180EC(v240, &qword_100CA6620, &unk_100A32620);
    }
  }

  else
  {
    sub_1000731F0();
    v248 = v469;
  }

  sub_100051BBC();
  if (sub_100024D10(v243, 1, v246) == 1)
  {
    sub_100906F44();
    if (sub_100024D10(v243, 1, v246) != 1)
    {
      sub_1000180EC(v243, &qword_100CA6618, &unk_100A31440);
    }
  }

  else
  {
    sub_1000731F0();
  }

  sub_100051BBC();
  if (sub_100024D10(v248, 1, v245) == 1)
  {
    sub_100906F44();
    if (sub_100024D10(v248, 1, v245) != 1)
    {
      sub_1000180EC(v248, &qword_100CA6610, &unk_100A32610);
    }
  }

  else
  {
    sub_1000731F0();
  }

  v249 = v471;
  sub_1000731F0();
  v250 = *(v221 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
  v251 = *(v221 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
  v253 = *(v221 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
  v252 = *(v221 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);
  v516 = (v221 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
  v254 = *(v221 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
  v256 = *(v221 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 8);
  v255 = *(v221 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 16);
  v514 = (v221 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
  v513 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners;
  v257 = *(v221 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);
  v517 = type metadata accessor for MainState._Storage(0);
  swift_allocObject();
  v466 = v257;
  v468 = v255;
  LOBYTE(v410) = v254;
  v469 = v252;
  sub_10003E038(v465, v467, v518, v519, v520, v521, v515, v522, v523, v249, v250, v251, v253, v252, v410, v256, v255, v257, v413, v414, v415, v416, v417, v418, v419, v420, v421, v422, v423, v424, v425, v426, v427, v428, v429);
  v259 = v258;
  if (v525)
  {
    v260 = 0;
    v261 = v536;
  }

  else
  {
    v261 = v536;
    v260 = *(v527 + v536[15]);
  }

  sub_1000161C0((v480 + 56), *(v480 + 80));
  v262 = v478;
  sub_100906F44();
  v263 = v259 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
  swift_beginAccess();
  v264 = *(v263 + 1);
  v265 = *(v259 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_notifications);
  v266 = *(v263 + 2);
  v267 = *(v259 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_notificationsOptIn + v261[18]);
  v268 = *(v259 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_notificationsOptIn + v261[16]);
  v269 = *(v259 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_notificationsOptIn + v261[17]);
  v270 = v476;
  *(v262 + *(v476 + 20)) = v525 & 1;
  *(v262 + v270[6]) = v264;
  *(v262 + v270[7]) = v265;
  *(v262 + v270[8]) = v266;
  *(v262 + v270[9]) = v260;
  *(v262 + v270[10]) = v267;
  *(v262 + v270[11]) = v268;
  *(v262 + v270[12]) = v269;

  v271 = sub_1007274D0(v262);
  sub_1000DFD78(v262, type metadata accessor for NotificationsOptInInput);
  if ((v271 & 0xFE) == 4)
  {
    v525 = v259;
    v523 = v271;
    sub_10001B350(v477, 1, 1, v529);
    sub_10001B350(v481, 1, 1, v530);
    sub_10001B350(v482, 1, 1, v534);
    sub_10001B350(v485, 1, 1, v535);
    v272 = v416;
    sub_100906F44();
    v273 = v524;
    sub_10001B350(v415, 1, 1, v524);
    LODWORD(v518) = *v272;
    v274 = *(v272 + 1);
    LODWORD(v522) = v272[17];
    LODWORD(v521) = v272[18];
    LODWORD(v520) = v272[19];
    LODWORD(v519) = v272[20];
    v275 = v418;
    sub_100051BBC();
    if (sub_100024D10(v275, 1, v273) == 1)
    {
      v276 = v536;
      v277 = v422;
      (*(v528 + 16))(v422, &v272[v536[11]], v273);
      v278 = sub_100024D10(v275, 1, v273);

      if (v278 != 1)
      {
        sub_1000180EC(v275, &unk_100CB2CF0, &unk_100A2D7F0);
      }
    }

    else
    {
      v277 = v422;
      v510(v422, v275, v273);

      v276 = v536;
    }

    v287 = v272[v276[12]];
    v288 = v272[v276[13]];
    v289 = v272[v276[14]];
    v290 = v272[v276[15]];
    v291 = v272[v276[16]];
    v292 = v272[v276[17]];
    sub_1000DFD78(v272, type metadata accessor for NotificationsOptInState);
    v293 = v487;
    *v487 = v518;
    *(v293 + 8) = v274;
    *(v293 + 16) = 0;
    *(v293 + 17) = v522;
    *(v293 + 18) = v521;
    *(v293 + 19) = v520;
    *(v293 + 20) = v519;
    v510(v293 + v276[11], v277, v524);
    *(v293 + v276[12]) = v287;
    *(v293 + v276[13]) = v288;
    *(v293 + v276[14]) = v289;
    *(v293 + v276[15]) = v290;
    *(v293 + v276[16]) = v291;
    *(v293 + v276[17]) = v292;
    *(v293 + v276[18]) = 0;
    sub_10001B350(v293, 0, 1, v276);
    sub_10001B350(v495, 1, 1, v531);
    v520 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_view;
    sub_100906F44();
    v522 = *(v435 + 16);
    LODWORD(v521) = *(v435 + 24);
    v294 = *(v435 + 25);
    v295 = *(v435 + 26);
    v296 = *(v435 + 40);
    v524 = *(v435 + 32);
    v297 = *(v435 + 48);
    v298 = *(v435 + 56);
    v299 = *(v435 + 64);
    v300 = *(v435 + 72);
    v301 = *(v435 + 80);
    v302 = *(v435 + 88);
    v303 = *(v435 + 89);
    type metadata accessor for ListViewState._Storage();
    swift_allocObject();
    v304 = v523 == 4;
    v523 = v301;
    if (v304)
    {
      v305 = 1;
    }

    else
    {
      v305 = 2;
    }

    v528 = v298;
    v306 = sub_100042DA8(v522, v521, v294, v295, v305, v524, v296, v297, v298, v299, v300, v301, v302, v303);
    v307 = v438;
    v308 = v439;
    sub_10001B350(v438, 1, 1, v439);
    v309 = type metadata accessor for SearchViewState(0);
    sub_10001B350(v441, 1, 1, v309);
    sub_10001B350(v489, 1, 1, v494);
    sub_10001B350(v493, 1, 1, v501);
    v310 = v433;
    sub_100095588();
    v311 = sub_100024D10(v310, 1, v308);
    v524 = v306;
    if (v311 == 1)
    {
      v312 = v532;
      v313 = v512;
      sub_100906F44();
      v314 = sub_100024D10(v310, 1, v308);

      if (v314 != 1)
      {
        sub_1000180EC(v310, &qword_100CA6608, &unk_100A31430);
      }
    }

    else
    {
      sub_1000731F0();

      v312 = v532;
      v313 = v512;
    }

    LODWORD(v528) = v313[v312[6]];
    v329 = [objc_opt_self() currentDevice];
    v330 = [v329 userInterfaceIdiom];

    sub_1000180EC(v307, &qword_100CA6608, &unk_100A31430);
    v331 = v533;
    if (v330 && *&v313[v312[9] + 8] == 2)
    {
      v332 = 1;
    }

    else
    {
      v332 = v313[v312[7]];
    }

    LODWORD(v525) = v332;
    v333 = v501;
    v334 = v443;
    sub_100051BBC();
    v335 = sub_100024D10(v334, 1, v309);
    v336 = v446;
    if (v335 == 1)
    {
      sub_100095588();
      v337 = sub_100024D10(v334, 1, v309);
      v338 = v494;
      if (v337 != 1)
      {
        sub_1000180EC(v334, &qword_100CA6600, &unk_100A5C400);
      }
    }

    else
    {
      v348 = v497;
      sub_1000731F0();
      v338 = v494;
      sub_10001B350(v348, 0, 1, v309);
    }

    v349 = v445;
    sub_100051BBC();
    v350 = sub_100024D10(v349, 1, v338);
    v351 = v431;
    if (v350 == 1)
    {
      sub_100906F44();
      if (sub_100024D10(v349, 1, v338) != 1)
      {
        sub_1000180EC(v349, &qword_100CA65F8, &dword_100A31420);
      }
    }

    else
    {
      sub_1000731F0();
    }

    sub_100051BBC();
    if (sub_100024D10(v336, 1, v333) == 1)
    {
      v355 = v512;
      sub_100906F44();
      if (sub_100024D10(v336, 1, v333) != 1)
      {
        sub_1000180EC(v336, &qword_100CA65F0, &unk_100A5C3F0);
      }
    }

    else
    {
      sub_1000731F0();
      v355 = v512;
    }

    v357 = *(v355 + v312[11]);
    sub_1000DFD78(v355, type metadata accessor for ViewState);
    v358 = v502;
    *v502 = v524;
    sub_1000731F0();
    *(v358 + v312[6]) = v528;
    *(v358 + v312[7]) = v525;
    sub_100051BBC();
    sub_1000731F0();
    sub_1000731F0();

    *(v358 + v312[11]) = v357;
    sub_10001B350(v358, 0, 1, v312);
    v359 = v526;
    sub_10001B350(v437, 1, 1, v526);
    v360 = v444;
    sub_100906F44();
    v361 = v440;
    sub_100051BBC();
    if (sub_100024D10(v361, 1, v359) == 1)
    {
      sub_1000180EC(v361, &qword_100CA65E8, &unk_100A31410);
    }

    else
    {
      sub_1000DFD78(v360, type metadata accessor for ModalViewState);
      sub_1000731F0();
    }

    v363 = v531;
    v364 = v529;
    v365 = v442;
    v366 = v434;
    v367 = v427;
    sub_1000731F0();
    v368 = *(v331 + 16);
    LODWORD(v528) = *(v331 + 24);
    sub_100051BBC();
    v369 = sub_100024D10(v367, 1, v364);
    v529 = v368;
    if (v369 == 1)
    {
      sub_100906F44();
      v370 = sub_100024D10(v367, 1, v364);

      if (v370 != 1)
      {
        sub_1000180EC(v367, &qword_100CA6640, qword_100A32640);
      }
    }

    else
    {
      sub_1000731F0();
    }

    v372 = v430;
    sub_100051BBC();
    v373 = v530;
    if (sub_100024D10(v372, 1, v530) == 1)
    {
      swift_beginAccess();
      sub_100906F44();
      v374 = sub_100024D10(v372, 1, v373);
      v375 = v450;
      if (v374 != 1)
      {
        sub_1000180EC(v372, &qword_100CA6638, &unk_100A31460);
      }
    }

    else
    {
      sub_1000731F0();
      v375 = v450;
    }

    sub_100051BBC();
    v378 = v534;
    if (sub_100024D10(v351, 1, v534) == 1)
    {
      sub_100906F44();
      v379 = sub_100024D10(v351, 1, v378);
      v380 = v536;
      if (v379 != 1)
      {
        sub_1000180EC(v351, &qword_100CA6630, &unk_100A32630);
      }
    }

    else
    {
      sub_1000731F0();
      v380 = v536;
    }

    sub_100051BBC();
    v384 = v535;
    if (sub_100024D10(v366, 1, v535) == 1)
    {
      sub_100906F44();
      if (sub_100024D10(v366, 1, v384) != 1)
      {
        sub_1000180EC(v366, &qword_100CA6628, &unk_100A31450);
      }
    }

    else
    {
      sub_1000731F0();
    }

    sub_100051BBC();
    if (sub_100024D10(v365, 1, v380) == 1)
    {
      sub_100906F44();
      if (sub_100024D10(v365, 1, v380) != 1)
      {
        sub_1000180EC(v365, &qword_100CA6620, &unk_100A32620);
      }
    }

    else
    {
      sub_1000731F0();
    }

    v395 = v447;
    sub_100051BBC();
    if (sub_100024D10(v395, 1, v363) == 1)
    {
      sub_100906F44();
      v396 = sub_100024D10(v395, 1, v363);
      v397 = v452;
      if (v396 != 1)
      {
        sub_1000180EC(v395, &qword_100CA6618, &unk_100A31440);
      }
    }

    else
    {
      sub_1000731F0();
      v397 = v452;
    }

    sub_100051BBC();
    if (sub_100024D10(v375, 1, v312) == 1)
    {
      sub_100906F44();
      v398 = v397;
      if (sub_100024D10(v375, 1, v312) != 1)
      {
        sub_1000180EC(v375, &qword_100CA6610, &unk_100A32610);
      }
    }

    else
    {
      sub_1000731F0();
      v398 = v397;
    }

    v399 = v509;
    sub_1000731F0();
    v401 = *v516;
    v400 = v516[1];
    v402 = v516[2];
    v403 = v516[3];
    v404 = *v514;
    v405 = *(v514 + 1);
    v406 = *(v514 + 2);
    v407 = *&v513[v331];
    swift_allocObject();
    LOBYTE(v412) = v404;
    sub_10003E038(v529, v528, v504, v505, v506, v507, v498, v508, v398, v399, v401, v400, v402, v403, v412, v405, v406, v407, v413, v414, v415, v416, v417, v418, v419, v420, v421, v422, v423, v424, v425, v426, v427, v428, v429);
  }

  else
  {

    type metadata accessor for NotificationsOptInViewState._Storage();
    v279 = swift_allocObject();
    *(v279 + 16) = v271;
    *(v279 + 18) = BYTE2(v271) & 1;
    *(v279 + 21) = BYTE5(v271);
    *(v279 + 19) = v271 >> 24;
    *(v279 + 22) = BYTE6(v271) & 1;
    sub_10001B350(v470, 1, 1, v529);
    sub_10001B350(v472, 1, 1, v530);
    sub_10001B350(v473, 1, 1, v534);
    sub_10001B350(v474, 1, 1, v535);
    v280 = v419;
    sub_100906F44();
    v281 = v524;
    sub_10001B350(v417, 1, 1, v524);
    LODWORD(v520) = *v280;
    v282 = *(v280 + 1);
    LODWORD(v525) = v280[17];
    LODWORD(v523) = v280[18];
    LODWORD(v522) = v280[19];
    LODWORD(v521) = v280[20];
    v283 = v420;
    sub_100051BBC();
    if (sub_100024D10(v283, 1, v281) == 1)
    {
      v284 = v536;
      v285 = v423;
      (*(v528 + 16))(v423, &v280[v536[11]], v281);
      v286 = sub_100024D10(v283, 1, v281);

      if (v286 != 1)
      {
        sub_1000180EC(v283, &unk_100CB2CF0, &unk_100A2D7F0);
      }
    }

    else
    {
      v285 = v423;
      v510(v423, v283, v281);

      v284 = v536;
    }

    v315 = v280[v284[12]];
    v316 = v280[v284[13]];
    v317 = v280[v536[14]];
    v318 = v280[v536[15]];
    v319 = v280[v536[16]];
    v320 = v280[v536[17]];
    sub_1000DFD78(v280, type metadata accessor for NotificationsOptInState);
    v321 = v479;
    *v479 = v520;
    *(v321 + 8) = v282;
    *(v321 + 16) = 0;
    *(v321 + 17) = v525;
    *(v321 + 18) = v523;
    *(v321 + 19) = v522;
    *(v321 + 20) = v521;
    v510(v321 + v536[11], v285, v524);
    *(v321 + v536[12]) = v315;
    *(v321 + v536[13]) = v316;
    v322 = v536;
    *(v321 + v536[14]) = v317;
    *(v321 + v322[15]) = v318;
    *(v321 + v322[16]) = v319;
    *(v321 + v322[17]) = v320;
    *(v321 + v322[18]) = 0;
    sub_10001B350(v321, 0, 1, v322);
    v323 = v531;
    sub_10001B350(v483, 1, 1, v531);
    sub_10001B350(v486, 1, 1, v532);
    v324 = v425;
    *v425 = v279;
    v325 = v526;
    swift_storeEnumTagMultiPayload();
    sub_10001B350(v324, 0, 1, v325);
    v326 = v533;
    v327 = v429;
    sub_100906F44();
    v328 = v426;
    sub_100051BBC();
    if (sub_100024D10(v328, 1, v325) == 1)
    {
      sub_1000180EC(v328, &qword_100CA65E8, &unk_100A31410);
    }

    else
    {
      sub_1000DFD78(v327, type metadata accessor for ModalViewState);
      sub_1000731F0();
    }

    v339 = v432;
    v340 = v414;
    sub_1000731F0();
    v341 = *(v326 + 16);
    LODWORD(v526) = *(v326 + 24);
    sub_100051BBC();
    v342 = v529;
    v343 = sub_100024D10(v340, 1, v529);
    v345 = v534;
    v344 = v535;
    v346 = v530;
    v528 = v341;
    if (v343 == 1)
    {
      sub_100906F44();
      v347 = sub_100024D10(v340, 1, v342);

      if (v347 != 1)
      {
        sub_1000180EC(v340, &qword_100CA6640, qword_100A32640);
      }
    }

    else
    {
      sub_1000731F0();
    }

    v352 = v421;
    sub_100051BBC();
    if (sub_100024D10(v352, 1, v346) == 1)
    {
      swift_beginAccess();
      sub_100906F44();
      v353 = sub_100024D10(v352, 1, v346);
      v354 = v436;
      if (v353 != 1)
      {
        sub_1000180EC(v352, &qword_100CA6638, &unk_100A31460);
      }
    }

    else
    {
      sub_1000731F0();
      v354 = v436;
    }

    v356 = *(&v423 + 1);
    sub_100051BBC();
    if (sub_100024D10(v356, 1, v345) == 1)
    {
      sub_100906F44();
      if (sub_100024D10(v356, 1, v345) != 1)
      {
        sub_1000180EC(v356, &qword_100CA6630, &unk_100A32630);
      }
    }

    else
    {
      sub_1000731F0();
    }

    v362 = v424;
    sub_100051BBC();
    if (sub_100024D10(v362, 1, v344) == 1)
    {
      sub_100906F44();
      if (sub_100024D10(v362, 1, v344) != 1)
      {
        sub_1000180EC(v362, &qword_100CA6628, &unk_100A31450);
      }
    }

    else
    {
      sub_1000731F0();
    }

    v371 = v428;
    sub_100051BBC();
    if (sub_100024D10(v371, 1, v322) == 1)
    {
      sub_100906F44();
      if (sub_100024D10(v371, 1, v322) != 1)
      {
        sub_1000180EC(v371, &qword_100CA6620, &unk_100A32620);
      }
    }

    else
    {
      sub_1000731F0();
    }

    sub_100051BBC();
    if (sub_100024D10(v339, 1, v323) == 1)
    {
      sub_100906F44();
      v376 = sub_100024D10(v339, 1, v323);
      v377 = v448;
      if (v376 != 1)
      {
        sub_1000180EC(v339, &qword_100CA6618, &unk_100A31440);
      }
    }

    else
    {
      sub_1000731F0();
      v377 = v448;
    }

    sub_100051BBC();
    v381 = v532;
    if (sub_100024D10(v354, 1, v532) == 1)
    {
      sub_100906F44();
      v382 = sub_100024D10(v354, 1, v381);
      v383 = v377;
      if (v382 != 1)
      {
        sub_1000180EC(v354, &qword_100CA6610, &unk_100A32610);
      }
    }

    else
    {
      sub_1000731F0();
      v383 = v377;
    }

    v385 = v509;
    sub_1000731F0();
    v387 = *v516;
    v386 = v516[1];
    v388 = v516[2];
    v389 = v516[3];
    v390 = *v514;
    v391 = *(v514 + 1);
    v392 = *(v514 + 2);
    v393 = *&v513[v326];
    swift_allocObject();
    LOBYTE(v411) = v390;
    sub_10003E038(v528, v526, v490, v491, v492, v496, v484, v499, v383, v385, v387, v386, v388, v389, v411, v391, v392, v393, v413, v414, v415, v416, v417, v418, v419, v420, v421, v422, v423, v424, v425, v426, v427, v428, v429);
  }

  v408 = v394;

  return v408;
}

uint64_t sub_100906F44()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t type metadata accessor for DetailNewsComponentView(uint64_t a1)
{
  result = qword_100CE5380;
  if (!qword_100CE5380)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100907010(uint64_t a1)
{
  sub_1000612C8(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for DetailComponentContainerViewModel(319);
    if (v2 <= 0x3F)
    {
      sub_1003E7F34();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1009070D0@<X0>(uint64_t a2@<X8>)
{
  *a2 = static HorizontalAlignment.leading.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = sub_10022C350(&qword_100CE53C0, &unk_100A98530);
  return sub_100907120(v2, a2 + *(v4 + 44));
}

uint64_t sub_100907120@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v104 = a1;
  v109 = a2;
  v2 = type metadata accessor for QuaternaryDividerStyle();
  v95 = *(v2 - 8);
  v96 = v2;
  __chkstk_darwin(v2);
  v92 = &v90 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for Divider();
  v91 = *(v93 - 8);
  __chkstk_darwin(v93);
  v90 = &v90 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_10022C350(&qword_100CB5C40, &qword_100A493F0);
  __chkstk_darwin(v107);
  v94 = &v90 - v5;
  v6 = sub_10022C350(&qword_100CDB968, &qword_100A98540);
  __chkstk_darwin(v6 - 8);
  v108 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v110 = &v90 - v9;
  v101 = type metadata accessor for AutomationInfo(0);
  __chkstk_darwin(v101);
  v102 = (&v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v103 = sub_10022C350(&qword_100CE53C8, &qword_100A98548);
  __chkstk_darwin(v103);
  v106 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v90 - v13;
  v15 = type metadata accessor for AccessibilityTraits();
  v99 = *(v15 - 8);
  v100 = v15;
  __chkstk_darwin(v15);
  v98 = &v90 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10022C350(&qword_100CE53D0, &qword_100A98550);
  __chkstk_darwin(v17 - 8);
  v105 = &v90 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v111 = &v90 - v20;
  v21 = LocalizedStringKey.init(stringLiteral:)();
  v25 = Text.init(_:tableName:bundle:comment:)(v21, v23, v22 & 1, v24, 0, 0, 0, "Header for the news article", 27, 2);
  v27 = v26;
  v29 = v28;
  if (qword_100CA21A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_1004BA3F0();
  swift_endAccess();
  v30 = Text.font(_:)();
  v32 = v31;
  v34 = v33;
  v97 = v35;

  sub_10010CD64(v25, v27, v29 & 1);

  static Alignment.leading.getter();
  v36 = 1;
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v114[200] = v34 & 1;
  v37 = swift_beginAccess();
  v38 = sub_1004BA4FC(v37);
  v40 = v39;
  v42 = v41;
  v44 = v43;
  swift_endAccess();
  v45 = static Edge.Set.all.getter();
  v114[208] = 0;
  v112[0] = v30;
  v112[1] = v32;
  LOBYTE(v112[2]) = v34 & 1;
  v112[3] = v97;
  memcpy(&v112[4], v113, 0x70uLL);
  LOBYTE(v112[18]) = v45;
  *&v112[19] = v38;
  v112[20] = v40;
  v112[21] = v42;
  v112[22] = v44;
  LOBYTE(v112[23]) = 0;
  v46 = v98;
  static AccessibilityTraits.isHeader.getter();
  sub_10022C350(&qword_100CB5BE0, &qword_100A493D8);
  sub_100907CA8();
  View.accessibilityAddTraits(_:)();
  (*(v99 + 8))(v46, v100);
  memcpy(v114, v112, 0xB9uLL);
  sub_1000180EC(v114, &qword_100CB5BE0, &qword_100A493D8);
  v47 = type metadata accessor for DetailNewsComponentView(0);
  v48 = type metadata accessor for DetailComponentContainerView(0);
  v49 = v104;
  sub_100907D34();
  sub_100035B30(&v49[*(v47 + 24)], &v14[v48[6]]);
  v50 = swift_beginAccess();
  v51 = sub_1004BA5B0(v50);
  sub_1004BA5F0(v52);
  v54 = v53;
  v56 = sub_1004BA5F0(v55);
  swift_endAccess();
  *v14 = swift_getKeyPath();
  v14[8] = 0;
  *&v14[v48[7]] = v51;
  *&v14[v48[8]] = v54;
  *&v14[v48[9]] = v56;
  v57 = v102;
  *v102 = xmmword_100A2C400;
  *(v57 + 16) = 2;
  swift_storeEnumTagMultiPayload();
  v58 = &v14[*(sub_10022C350(&qword_100CE53D8, &qword_100A98588) + 36)];
  type metadata accessor for AutomationInfoProperty(0);
  sub_100907D34();
  sub_1001C9E84(v57);
  *v58 = 0;
  *(v58 + 1) = 0xE000000000000000;
  *(v58 + 2) = swift_getKeyPath();
  v58[24] = 0;
  swift_beginAccess();
  v59 = sub_1004BA698();
  swift_endAccess();
  LOBYTE(v57) = static Edge.Set.all.getter();
  v60 = &v14[*(sub_10022C350(&qword_100CE53E0, &qword_100A985B8) + 36)];
  *v60 = v59;
  v60[8] = v57;
  v61 = swift_beginAccess();
  v62 = sub_1004BA5B0(v61);
  swift_endAccess();
  v63 = &v14[*(sub_10022C350(&qword_100CE53E8, &unk_100A985C0) + 36)];
  v64 = *(type metadata accessor for RoundedRectangle() + 20);
  v65 = enum case for RoundedCornerStyle.continuous(_:);
  v66 = type metadata accessor for RoundedCornerStyle();
  (*(*(v66 - 8) + 104))(v63 + v64, v65, v66);
  *v63 = v62;
  v63[1] = v62;
  *(v63 + *(sub_10022C350(&qword_100CB34E0, &qword_100A5BCB0) + 36)) = 256;
  LOBYTE(v63) = static Edge.Set.horizontal.getter();
  swift_beginAccess();
  sub_1004BA278();
  swift_endAccess();
  EdgeInsets.init(_all:)();
  v67 = &v14[*(v103 + 36)];
  *v67 = v63;
  *(v67 + 1) = v68;
  *(v67 + 2) = v69;
  *(v67 + 3) = v70;
  *(v67 + 4) = v71;
  v67[40] = 0;
  LODWORD(v67) = v49[*(v47 + 28)];
  v72 = v110;
  v73 = v107;
  v104 = v14;
  if (v67 == 1)
  {
    v74 = v90;
    Divider.init()();
    v75 = v92;
    static DividerStyle<>.quaternary.getter();
    sub_100907D8C(&qword_100CA7298, &type metadata accessor for Divider, &protocol conformance descriptor for Divider);
    sub_100907D8C(&qword_100CB5C48, &type metadata accessor for QuaternaryDividerStyle, &protocol conformance descriptor for QuaternaryDividerStyle);
    v77 = v93;
    v76 = v94;
    v78 = v96;
    View.dividerStyle<A>(_:)();
    (*(v95 + 8))(v75, v78);
    (*(v91 + 8))(v74, v77);
    LOBYTE(v78) = static Edge.Set.top.getter();
    v79 = swift_beginAccess();
    sub_1004BA570(v79);
    v72 = v110;
    swift_endAccess();
    EdgeInsets.init(_all:)();
    v80 = &v76[*(v73 + 36)];
    *v80 = v78;
    *(v80 + 1) = v81;
    *(v80 + 2) = v82;
    *(v80 + 3) = v83;
    *(v80 + 4) = v84;
    v80[40] = 0;
    sub_10021EC00();
    v36 = 0;
  }

  sub_10001B350(v72, v36, 1, v73);
  v85 = v105;
  sub_100095588();
  v86 = v104;
  v87 = v106;
  sub_100095588();
  v88 = v108;
  sub_10021EB40();
  sub_100095588();
  sub_10022C350(&qword_100CE53F0, &qword_100A985D0);
  sub_100095588();
  sub_10021EB40();
  sub_10021EBA0(v72);
  sub_1000180EC(v86, &qword_100CE53C8, &qword_100A98548);
  sub_1000180EC(v111, &qword_100CE53D0, &qword_100A98550);
  sub_10021EBA0(v88);
  sub_1000180EC(v87, &qword_100CE53C8, &qword_100A98548);
  return sub_1000180EC(v85, &qword_100CE53D0, &qword_100A98550);
}

unint64_t sub_100907CA8()
{
  result = qword_100CB5BD8;
  if (!qword_100CB5BD8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CB5BE0, &qword_100A493D8);
    v4[0] = sub_1003F04CC();
    v4[1] = &protocol witness table for _PaddingLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CB5BD8);
  }

  return result;
}

uint64_t sub_100907D34()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_100907D8C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

unint64_t sub_100907DD4()
{
  result = qword_100CE53F8;
  if (!qword_100CE53F8)
  {
    v3 = sub_10022E824(qword_100CE5400, &qword_100A985D8);
    result = swift_getWitnessTable(&protocol conformance descriptor for VStack<A>, v3, v0, v1);
    atomic_store(result, &qword_100CE53F8);
  }

  return result;
}

uint64_t sub_100907E38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100907ED0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, uint64_t, uint64_t, uint64_t, uint64_t)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v309 = a1;
  v310 = a5;
  v308 = a3;
  v271 = a6;
  v8 = sub_10022C350(&qword_100CA5008, &unk_100A2F7B0);
  __chkstk_darwin(v8 - 8);
  v254 = v251 - v9;
  v252 = type metadata accessor for LocationComponentContainerViewModel(0);
  __chkstk_darwin(v252);
  sub_100003848();
  v281 = v10;
  sub_10000386C();
  __chkstk_darwin(v11);
  sub_100003878();
  v269 = v12;
  sub_10000386C();
  __chkstk_darwin(v13);
  sub_100003878();
  v268 = v14;
  sub_10000386C();
  __chkstk_darwin(v15);
  sub_100003878();
  v278 = v16;
  sub_10000386C();
  __chkstk_darwin(v17);
  sub_100003878();
  v266 = v18;
  sub_10000386C();
  __chkstk_darwin(v19);
  sub_100003878();
  v275 = v20;
  sub_10000386C();
  __chkstk_darwin(v21);
  sub_100003878();
  v263 = v22;
  sub_10000386C();
  __chkstk_darwin(v23);
  sub_100003878();
  v261 = v24;
  sub_10000386C();
  __chkstk_darwin(v25);
  sub_100003878();
  v273 = v26;
  sub_10000386C();
  __chkstk_darwin(v27);
  sub_100003878();
  v258 = v28;
  sub_10000386C();
  __chkstk_darwin(v29);
  sub_100003878();
  v272 = v30;
  sub_10000386C();
  __chkstk_darwin(v31);
  sub_100003878();
  v255 = v32;
  sub_10000386C();
  __chkstk_darwin(v33);
  sub_100003878();
  v251[0] = v34;
  sub_10000386C();
  __chkstk_darwin(v35);
  v37 = v251 - v36;
  v38 = *(a4 - 8);
  __chkstk_darwin(v39);
  sub_100003848();
  v270 = v40;
  sub_10000386C();
  __chkstk_darwin(v41);
  sub_100003878();
  v290 = v42;
  sub_10000386C();
  __chkstk_darwin(v43);
  sub_100003878();
  v289 = v44;
  sub_10000386C();
  __chkstk_darwin(v45);
  sub_100003878();
  v288 = v46;
  sub_10000386C();
  __chkstk_darwin(v47);
  sub_100003878();
  v287 = v48;
  sub_10000386C();
  __chkstk_darwin(v49);
  sub_100003878();
  v286 = v50;
  sub_10000386C();
  __chkstk_darwin(v51);
  sub_100003878();
  v285 = v52;
  sub_10000386C();
  __chkstk_darwin(v53);
  sub_100003878();
  v284 = v54;
  sub_10000386C();
  __chkstk_darwin(v55);
  sub_100003878();
  v283 = v56;
  sub_10000386C();
  __chkstk_darwin(v57);
  sub_100003878();
  v282 = v58;
  sub_10000386C();
  __chkstk_darwin(v59);
  sub_100003878();
  v267 = v60;
  sub_10000386C();
  __chkstk_darwin(v61);
  sub_100003878();
  v280 = v62;
  sub_10000386C();
  __chkstk_darwin(v63);
  sub_100003878();
  v265 = v64;
  sub_10000386C();
  __chkstk_darwin(v65);
  sub_100003878();
  v305 = v66;
  sub_10000386C();
  __chkstk_darwin(v67);
  sub_100003878();
  v264 = v68;
  sub_10000386C();
  __chkstk_darwin(v69);
  sub_100003878();
  v304 = v70;
  sub_10000386C();
  __chkstk_darwin(v71);
  sub_100003878();
  v262 = v72;
  sub_10000386C();
  __chkstk_darwin(v73);
  sub_100003878();
  v303 = v74;
  sub_10000386C();
  __chkstk_darwin(v75);
  sub_100003878();
  v260 = v76;
  sub_10000386C();
  __chkstk_darwin(v77);
  sub_100003878();
  v302 = v78;
  sub_10000386C();
  __chkstk_darwin(v79);
  sub_100003878();
  v259 = v80;
  sub_10000386C();
  __chkstk_darwin(v81);
  sub_100003878();
  v300 = v82;
  sub_10000386C();
  __chkstk_darwin(v83);
  sub_100003878();
  v257 = v84;
  sub_10000386C();
  __chkstk_darwin(v85);
  sub_100003878();
  v299 = v86;
  sub_10000386C();
  __chkstk_darwin(v87);
  sub_100003878();
  v256 = v88;
  sub_10000386C();
  __chkstk_darwin(v89);
  sub_100003878();
  v298 = v90;
  sub_10000386C();
  __chkstk_darwin(v91);
  sub_100003878();
  v253 = v92;
  sub_10000386C();
  __chkstk_darwin(v93);
  sub_100003878();
  v297 = v94;
  sub_10000386C();
  __chkstk_darwin(v95);
  sub_100003878();
  v251[3] = v96;
  sub_10000386C();
  __chkstk_darwin(v97);
  sub_100003878();
  v296 = v98;
  sub_10000386C();
  __chkstk_darwin(v99);
  sub_100003878();
  v251[2] = v100;
  sub_10000386C();
  __chkstk_darwin(v101);
  sub_100003878();
  v295 = v102;
  sub_10000386C();
  __chkstk_darwin(v103);
  sub_100003878();
  v251[1] = v104;
  sub_10000386C();
  __chkstk_darwin(v105);
  sub_100003878();
  v294 = v106;
  sub_10000386C();
  __chkstk_darwin(v107);
  v109 = v251 - v108;
  __chkstk_darwin(v110);
  v112 = v251 - v111;
  v301 = type metadata accessor for Optional();
  v274 = *(v301 - 8);
  __chkstk_darwin(v301);
  sub_100003848();
  v279 = v113;
  sub_10000386C();
  __chkstk_darwin(v114);
  sub_100003878();
  v293 = v115;
  sub_10000386C();
  __chkstk_darwin(v116);
  v118 = v251 - v117;
  __chkstk_darwin(v119);
  v292 = v251 - v120;
  v121 = a2;
  sub_100566BC8(a2, v328);
  v306 = v118;
  v307 = v109;
  v291 = v112;
  if (v329)
  {
    v122 = 1;
  }

  else
  {
    v123 = v328[3];
    v124 = v328[2];
    v125 = v38;
    v126 = v328[1];
    v277 = v121;
    v127 = v328[0];
    sub_1001B3B30(v309 + OBJC_IVAR____TtCV7Weather16NoAqiNewsContent8_Storage_newsArticle, v37);
    v128 = v123;
    v109 = v307;
    v308(v37, v127, v126, v124, v128);
    sub_1001B4354(v37);
    v129 = v310;
    sub_1000833D8(v109, a4, v310);
    v130 = *(v125 + 8);
    v130(v109, a4);
    v131 = sub_100005480();
    v132 = v129;
    v118 = v306;
    sub_1000833D8(v131, v133, v132);
    v134 = sub_100005480();
    (v130)(v134);
    v38 = v125;
    v121 = v277;
    (*(v125 + 32))(v118, v109, a4);
    v122 = 0;
  }

  sub_10001B350(v118, v122, 1, a4);
  sub_100007FFC();
  sub_1003E7FD4(v135, v136);
  v276 = *(v274 + 8);
  v277 = v274 + 8;
  v276(v118, v301);
  v137 = OBJC_IVAR____TtCV7Weather16NoAqiNewsContent8_Storage_map;
  v138 = v309;
  swift_beginAccess();
  v139 = v138 + v137;
  v140 = v254;
  sub_10026E174(v139, v254);
  if (sub_100024D10(v140, 1, v252) == 1)
  {
    sub_10026E1E4(v140);
LABEL_8:
    v142 = 1;
    v143 = v306;
    goto LABEL_10;
  }

  v141 = v251[0];
  sub_10026E24C(v140, v251[0]);
  sub_100566A5C(v121, v330);
  if (v330[32])
  {
    sub_1001B4354(v141);
    goto LABEL_8;
  }

  v144 = sub_100028198();
  v145(v144);
  sub_1001B4354(v141);
  v146 = v310;
  sub_1000833D8(v109, a4, v310);
  v147 = *(v38 + 8);
  v147(v307, a4);
  v148 = sub_100005480();
  sub_1000833D8(v148, v149, v146);
  v150 = sub_100005480();
  (v147)(v150);
  v143 = v306;
  (*(v38 + 32))(v306, v307, a4);
  v142 = 0;
LABEL_10:
  sub_10001B350(v143, v142, 1, a4);
  sub_100007FFC();
  sub_1003E7FD4(v151, v152);
  v276(v143, v301);
  sub_10001420C();
  v154 = v255;
  sub_1001B3B30(v153 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_hourlyForecast, v255);
  sub_100566A78(v121, v331);
  if (v332)
  {
    goto LABEL_28;
  }

  v308(v154, v331[0], v331[1], v331[2], v331[3]);
  sub_1001B4354(v154);
  v155 = sub_100005480();
  sub_1000833D8(v155, v156, v310);
  v157 = *(v38 + 8);
  v158 = sub_100005480();
  v157(v158);
  sub_10001420C();
  sub_1001B3B30(v159 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_dailyForecast, v272);
  sub_100566A94(v121, v333);
  if (v334)
  {
    goto LABEL_28;
  }

  v160 = v272;
  v308(v272, v333[0], v333[1], v333[2], v333[3]);
  sub_1001B4354(v160);
  v161 = sub_100005480();
  sub_1000833D8(v161, v162, v310);
  v163 = sub_100005480();
  v157(v163);
  sub_10001420C();
  v165 = v258;
  sub_1001B3B30(v164 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_uvIndex, v258);
  sub_100566AB0(v121, v335);
  if (v335[32])
  {
    goto LABEL_31;
  }

  v166 = sub_10001926C();
  v167(v166);
  sub_1001B4354(v165);
  v168 = sub_100005480();
  sub_1000833D8(v168, v169, v310);
  v170 = sub_100005480();
  v157(v170);
  sub_10001420C();
  sub_1001B3B30(v171 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_sunriseSunset, v273);
  sub_100566ACC(v121, v336);
  if (v337)
  {
    goto LABEL_28;
  }

  v172 = v273;
  v308(v273, v336[0], v336[1], v336[2], v336[3]);
  sub_1001B4354(v172);
  v173 = sub_100005480();
  sub_1000833D8(v173, v174, v310);
  v175 = sub_100005480();
  v157(v175);
  sub_10001420C();
  v177 = v261;
  sub_1001B3B30(v176 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_wind, v261);
  sub_100566AE8(v121, v338);
  if (v338[32])
  {
    goto LABEL_31;
  }

  v178 = sub_10001926C();
  v179(v178);
  sub_1001B4354(v177);
  v180 = sub_100005480();
  sub_1000833D8(v180, v181, v310);
  v182 = sub_100005480();
  v157(v182);
  sub_10001420C();
  v184 = v263;
  sub_1001B3B30(v183 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_precipitationTotal, v263);
  sub_100566B04(v121, v339);
  if (v339[32])
  {
    goto LABEL_28;
  }

  v185 = sub_100028198();
  v186(v185);
  sub_1001B4354(v184);
  sub_100007FFC();
  sub_1000833D8(v187, v188, v189);
  v190 = sub_100005474();
  v157(v190);
  sub_10001420C();
  sub_1001B3B30(v191 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_feelsLike, v275);
  sub_100566B20(v121, v340);
  if (v340[32])
  {
    goto LABEL_28;
  }

  v192 = v275;
  v193 = sub_100028198();
  v194(v193);
  sub_1001B4354(v192);
  sub_100007FFC();
  sub_1000833D8(v195, v196, v197);
  v198 = sub_100005474();
  v157(v198);
  sub_10001420C();
  v200 = v266;
  sub_1001B3B30(v199 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_humidity, v266);
  sub_100566B3C(v121, v341);
  if (v341[32])
  {
LABEL_31:
    sub_100013470();
    goto LABEL_32;
  }

  v201 = sub_10001926C();
  v202(v201);
  sub_1001B4354(v200);
  v203 = sub_100005480();
  sub_1000833D8(v203, v204, v310);
  v205 = sub_100005480();
  v157(v205);
  sub_10001420C();
  sub_1001B3B30(v206 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_visibility, v278);
  sub_100566B58(v121, v342);
  if ((v343 & 1) == 0)
  {
    v207 = v278;
    v308(v278, v342[0], v342[1], v342[2], v342[3]);
    sub_1001B4354(v207);
    v208 = sub_100005480();
    sub_1000833D8(v208, v209, v310);
    v210 = sub_100005480();
    v157(v210);
    sub_10001420C();
    v212 = v268;
    sub_1001B3B30(v211 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_pressure, v268);
    sub_100566B74(v121, &v344);
    if ((v345 & 1) == 0)
    {
      v213 = sub_10001926C();
      v214(v213);
      sub_1001B4354(v212);
      v215 = sub_100005480();
      sub_1000833D8(v215, v216, v310);
      v217 = sub_100005480();
      v157(v217);
      sub_10001420C();
      v219 = v269;
      sub_1001B3B30(v218 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_moon, v269);
      sub_100566B90(v121, &v346);
      if ((v347 & 1) == 0)
      {
        v220 = sub_100028198();
        v221(v220);
        sub_1001B4354(v219);
        sub_100007FFC();
        sub_1000833D8(v222, v223, v224);
        v225 = sub_100005474();
        v157(v225);
        sub_10001420C();
        sub_1001B3B30(v226 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_averages, v281);
        sub_100566BAC(v121, v348);
        if ((v349 & 1) == 0)
        {
          v227 = v267;
          v228 = v281;
          v308(v281, v348[0], v348[1], v348[2], v348[3]);
          sub_1001B4354(v228);
          v229 = v310;
          sub_1000833D8(v227, a4, v310);
          (v157)(v227, a4);
          v230 = *(v274 + 16);
          v231 = v306;
          v232 = v301;
          v230(v306, v292, v301);
          v327[0] = v231;
          v233 = v279;
          v230(v279, v293, v232);
          v327[1] = v233;
          v234 = *(v38 + 16);
          v235 = v291;
          v234(v291, v294, a4);
          v327[2] = v235;
          v236 = v307;
          v234(v307, v295, a4);
          v327[3] = v236;
          v237 = v282;
          v234(v282, v296, a4);
          v327[4] = v237;
          v238 = v283;
          v234(v283, v297, a4);
          v327[5] = v238;
          v239 = v284;
          v234(v284, v298, a4);
          v327[6] = v239;
          v240 = v285;
          v234(v285, v299, a4);
          v327[7] = v240;
          v241 = v286;
          v234(v286, v300, a4);
          v327[8] = v241;
          v242 = v287;
          v234(v287, v302, a4);
          v327[9] = v242;
          v243 = v288;
          v234(v288, v303, a4);
          v327[10] = v243;
          v244 = v289;
          v234(v289, v304, a4);
          v327[11] = v244;
          v245 = v290;
          v234(v290, v305, a4);
          v327[12] = v245;
          v246 = v270;
          v234(v270, v280, a4);
          v327[13] = v246;
          v247 = v246;
          v326[0] = v232;
          v326[1] = v232;
          v326[2] = a4;
          v326[3] = a4;
          v326[4] = a4;
          v326[5] = a4;
          v326[6] = a4;
          v326[7] = a4;
          v326[8] = a4;
          v326[9] = a4;
          v326[10] = a4;
          v326[11] = a4;
          v326[12] = a4;
          v326[13] = a4;
          v311 = v229;
          WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v232, &v311);
          v313 = WitnessTable;
          v314 = v229;
          v315 = v229;
          v316 = v229;
          v317 = v229;
          v318 = v229;
          v319 = v229;
          v320 = v229;
          v321 = v229;
          v322 = v229;
          v323 = v229;
          v324 = v229;
          v325 = v229;
          sub_10012E24C(v327, 14, v326);
          v248 = sub_100005474();
          v157(v248);
          (v157)(v305, a4);
          (v157)(v304, a4);
          (v157)(v303, a4);
          (v157)(v302, a4);
          (v157)(v300, a4);
          (v157)(v299, a4);
          (v157)(v298, a4);
          (v157)(v297, a4);
          (v157)(v296, a4);
          (v157)(v295, a4);
          (v157)(v294, a4);
          v249 = v276;
          v276(v293, v232);
          v249(v292, v232);
          (v157)(v247, a4);
          (v157)(v290, a4);
          (v157)(v289, a4);
          (v157)(v288, a4);
          (v157)(v287, a4);
          (v157)(v286, a4);
          (v157)(v285, a4);
          (v157)(v284, a4);
          (v157)(v283, a4);
          (v157)(v282, a4);
          (v157)(v307, a4);
          (v157)(v291, a4);
          v249(v279, v232);
          return (v249)(v306, v232);
        }
      }
    }

    goto LABEL_31;
  }

LABEL_28:
  sub_10001E640();
LABEL_32:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100909538(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684632949 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000011 && 0x8000000100AE5E00 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6B694C736C656566 && a2 == 0xED00006174614465;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000012 && 0x8000000100AE5E20 == a2;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x617461447473696CLL && a2 == 0xE800000000000000;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000016 && 0x8000000100AE5E40 == a2;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x447865646E497675 && a2 == 0xEB00000000617461;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x696C696269736976 && a2 == 0xEE00617461447974;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6572757373657270 && a2 == 0xEC00000061746144;
                  if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x61746144646E6977 && a2 == 0xE800000000000000;
                    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD00000000000001ELL && 0x8000000100AE5E60 == a2;
                      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                      {

                        return 10;
                      }

                      else if (a1 == 0xD000000000000010 && 0x8000000100AE5E80 == a2)
                      {

                        return 11;
                      }

                      else
                      {
                        v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

                        if (v17)
                        {
                          return 11;
                        }

                        else
                        {
                          return 12;
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

uint64_t sub_1009098EC(char a1)
{
  result = 1684632949;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0x6B694C736C656566;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      v3 = 1953720684;
      goto LABEL_6;
    case 5:
      result = 0xD000000000000016;
      break;
    case 6:
      result = 0x447865646E497675;
      break;
    case 7:
      result = 0x696C696269736976;
      break;
    case 8:
      result = 0x6572757373657270;
      break;
    case 9:
      v3 = 1684957559;
LABEL_6:
      result = v3 | 0x6174614400000000;
      break;
    case 10:
      result = 0xD00000000000001ELL;
      break;
    case 11:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100909A6C(void *a1)
{
  v3 = v1;
  v5 = sub_10022C350(&qword_100CE5570, &qword_100A98738);
  sub_1000037C4();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v72[-v9];
  sub_1000161C0(a1, a1[3]);
  sub_10090ACBC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v80[0] = 0;
  type metadata accessor for UUID();
  sub_1000752AC();
  v13 = sub_10090AEC8(v11, v12, &protocol conformance descriptor for UUID);
  sub_1000092C4(v3, v80, v14, v15, v13);
  if (!v2)
  {
    v16 = type metadata accessor for PreprocessedWeatherData(0);
    *v80 = *(v3 + v16[5]);
    v79[0] = 1;
    v17 = sub_100579FB8();
    sub_10000CFE8(v80, v79, v18, &type metadata for DailyForecastComponentPreprocessedDataModel, v17);
    v80[0] = 2;
    type metadata accessor for FeelsLikeComponentPreprocessedDataModel(0);
    sub_100069C54();
    sub_10090AEC8(v19, v20, byte_100A7E760);
    v21 = sub_100020CEC();
    sub_1000092C4(v21, v80, v22, v23, v24);
    v80[0] = 3;
    type metadata accessor for HourlyForecastComponentPreprocessedDataModel(0);
    sub_100013EC4();
    sub_10090AEC8(v25, v26, byte_100A4B578);
    v27 = sub_100020CEC();
    sub_1000092C4(v27, v80, v28, v29, v30);
    v86[0] = 4;
    type metadata accessor for ListPreprocessedDataModel(0);
    sub_100017140();
    sub_10090AEC8(v31, v32, byte_100A66894);
    v33 = sub_100020CEC();
    sub_1000092C4(v33, v86, v34, v35, v36);
    v37 = v16[9];
    memcpy(__dst, (v3 + v37), 0x80uLL);
    memcpy(v84, (v3 + v37), sizeof(v84));
    v83 = 5;
    sub_1001AEF0C(__dst, v80);
    v38 = sub_1007ACA0C();
    sub_10000CFE8(v84, &v83, v39, &type metadata for PrecipitationTotalComponentPreprocessedDataModel, v38);
    memcpy(v82, v84, 0x80uLL);
    sub_100428554(v82);
    v80[0] = 6;
    type metadata accessor for UVIndexComponentPreprocessedDataModel(0);
    sub_100049F00();
    sub_10090AEC8(v40, v41, aQ_71);
    v42 = sub_100020CEC();
    sub_1000092C4(v42, v80, v43, v44, v45);
    v46 = v3 + v16[11];
    v47 = *v46;
    v48 = *(v46 + 16);
    v50 = *(v46 + 32);
    v49 = *(v46 + 40);
    *v80 = v47;
    *&v80[16] = v48;
    *&v80[32] = v50;
    *&v80[40] = v49;
    v79[0] = 7;
    v51 = sub_100449A10();
    sub_10000CFE8(v80, v79, v52, &type metadata for VisibilityComponentPreprocessedDataModel, v51);
    v81 = 8;
    type metadata accessor for PressureComponentPreprocessedDataModel(0);
    sub_100028DD8();
    sub_10090AEC8(v53, v54, byte_100A466D0);
    v55 = sub_100020CEC();
    sub_1000092C4(v55, &v81, v56, v57, v58);
    v59 = v16[13];
    memcpy(v80, (v3 + v59), sizeof(v80));
    memcpy(v79, (v3 + v59), sizeof(v79));
    v78 = 9;
    sub_1001A86C8(v80, v77);
    v60 = sub_10090AE74();
    sub_10000CFE8(v79, &v78, v61, &type metadata for WindComponentPreprocessedDataModel, v60);
    memcpy(v77, v79, 0xE8uLL);
    sub_1006826B0(v77);
    v76 = 10;
    type metadata accessor for WeatherConditionBackgroundPreprocessedDataModel(0);
    sub_10004ED58();
    sub_10090AEC8(v62, v63, byte_100A698A8);
    v64 = sub_100020CEC();
    sub_1000092C4(v64, &v76, v65, v66, v67);
    v68 = v16[15];
    memcpy(v75, (v3 + v68), 0x70uLL);
    memcpy(v74, (v3 + v68), sizeof(v74));
    v73 = 11;
    sub_100540DF8(v75, v72);
    v69 = sub_10090AF10();
    sub_10000CFE8(v74, &v73, v70, &type metadata for LocationViewPreprocessedDataModel, v69);
    memcpy(v72, v74, 0x70uLL);
    sub_100540E30(v72);
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_100909FC8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v73 = type metadata accessor for WeatherConditionBackgroundPreprocessedDataModel(0);
  sub_1000037E8();
  __chkstk_darwin(v3);
  sub_1000038E4();
  v74 = v4;
  v5 = sub_1000038CC();
  v75 = type metadata accessor for PressureComponentPreprocessedDataModel(v5);
  sub_1000037E8();
  __chkstk_darwin(v6);
  sub_1000038E4();
  v76 = v7;
  v8 = sub_1000038CC();
  v77 = type metadata accessor for UVIndexComponentPreprocessedDataModel(v8);
  sub_1000037E8();
  __chkstk_darwin(v9);
  sub_1000038E4();
  v78 = v10;
  v11 = sub_1000038CC();
  v79 = type metadata accessor for ListPreprocessedDataModel(v11);
  sub_1000037E8();
  __chkstk_darwin(v12);
  sub_1000038E4();
  v80 = v13;
  v14 = sub_1000038CC();
  v81 = type metadata accessor for HourlyForecastComponentPreprocessedDataModel(v14);
  sub_1000037E8();
  __chkstk_darwin(v15);
  sub_1000038E4();
  v82 = v16;
  v17 = sub_1000038CC();
  type metadata accessor for FeelsLikeComponentPreprocessedDataModel(v17);
  sub_1000037E8();
  __chkstk_darwin(v18);
  v20 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for UUID();
  sub_1000037C4();
  v86 = v22;
  __chkstk_darwin(v23);
  v25 = &v71 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_10022C350(&qword_100CE5540, &qword_100A98730);
  sub_1000037C4();
  v83 = v26;
  __chkstk_darwin(v27);
  v29 = &v71 - v28;
  v95 = type metadata accessor for PreprocessedWeatherData(0);
  sub_1000037E8();
  __chkstk_darwin(v30);
  sub_1000038E4();
  v90 = v31;
  v32 = a1[3];
  v88 = a1;
  sub_1000161C0(a1, v32);
  sub_10090ACBC();
  v84 = v29;
  v33 = v89;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v85 = v21;
  if (v33)
  {
    v89 = v33;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    LODWORD(v87) = 0;
    result = sub_100006F14(v88);
    LODWORD(v88) = 0;
    v43 = 0;
    v44 = 0;
  }

  else
  {
    LOBYTE(v94[0]) = 0;
    sub_1000752AC();
    sub_10090AEC8(v34, v35, &protocol conformance descriptor for UUID);
    sub_10002CBC0();
    v37 = v84;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v47 = v90;
    (*(v86 + 32))(v90, v25, v21);
    v93[0] = 1;
    sub_100579EA4();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v48 = v95;
    *(v47 + v95[5]) = *&v94[0];
    LOBYTE(v94[0]) = 2;
    sub_100069C54();
    sub_10090AEC8(v49, v50, byte_100A7E788);
    sub_10002CBC0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_10012A6F0(v20, v47 + v48[6], type metadata accessor for FeelsLikeComponentPreprocessedDataModel);
    LOBYTE(v94[0]) = 3;
    sub_100013EC4();
    sub_10090AEC8(v51, v52, byte_100A4B5A0);
    sub_10002CBC0();
    sub_10001804C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_1000521E8(v48[7]);
    LOBYTE(v94[0]) = 4;
    sub_100017140();
    sub_10090AEC8(v53, v54, byte_100A668BC);
    sub_10002CBC0();
    sub_10001804C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_1000521E8(v48[8]);
    v92[119] = 5;
    sub_1007AC980();
    sub_100024C3C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    memcpy((v47 + v48[9]), v93, 0x80uLL);
    LOBYTE(v94[0]) = 6;
    sub_100049F00();
    sub_10090AEC8(v55, v56, aY_71);
    sub_10002CBC0();
    v38 = v78;
    sub_100024C3C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_1000521E8(v48[10]);
    v92[0] = 7;
    sub_1004498B8();
    v39 = v87;
    sub_100024C3C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v57 = v94[1];
    v58 = v94[2];
    v59 = (v90 + v48[11]);
    *v59 = v94[0];
    v59[1] = v57;
    v59[2] = v58;
    LOBYTE(v94[0]) = 8;
    sub_100028DD8();
    sub_10090AEC8(v60, v61, byte_100A466F8);
    sub_10002CBC0();
    v62 = v76;
    sub_100024C3C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v89 = 0;
    sub_10012A6F0(v62, v90 + v95[12], type metadata accessor for PressureComponentPreprocessedDataModel);
    v92[118] = 9;
    sub_10090AD10();
    v63 = v89;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v89 = v63;
    if (v63)
    {
      (*(v83 + 8))(v84, v87);
      sub_100006F14(v88);
      v36 = 0;
      LODWORD(v88) = 0;
      sub_10001FCAC();
      v44 = 1;
      v43 = 1;
    }

    else
    {
      memcpy((v90 + v95[13]), v94, 0xE8uLL);
      v92[0] = 10;
      sub_10004ED58();
      sub_10090AEC8(v64, v65, byte_100A698D0);
      sub_10001804C();
      v66 = v89;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v89 = v66;
      if (v66)
      {
        (*(v83 + 8))(v84, v87);
        sub_100006F14(v88);
        LODWORD(v88) = 0;
        sub_10001FCAC();
        v44 = 1;
        v43 = 1;
        v36 = 1;
      }

      else
      {
        sub_10012A6F0(v74, v90 + v95[14], type metadata accessor for WeatherConditionBackgroundPreprocessedDataModel);
        v91 = 11;
        sub_10090AD64();
        sub_10001804C();
        v67 = v89;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v68 = (v83 + 8);
        v89 = v67;
        if (!v67)
        {
          (*v68)(v84, v87);
          v70 = v90;
          memcpy((v90 + v95[15]), v92, 0x70uLL);
          sub_10090ADB8(v70, v72);
          sub_100006F14(v88);
          v45 = type metadata accessor for PreprocessedWeatherData;
          v46 = v70;
          return sub_10090AE1C(v46, v45);
        }

        (*v68)(v84, v87);
        sub_100006F14(v88);
        sub_10001FCAC();
        v44 = 1;
        v43 = 1;
        v36 = 1;
        LODWORD(v88) = v69;
      }
    }

    result = (*(v86 + 8))(v90, v85);
    if (v62)
    {
      v41 = v90;

      if (v37)
      {
        goto LABEL_15;
      }

LABEL_6:
      if (!v38)
      {
        goto LABEL_16;
      }

      goto LABEL_7;
    }
  }

  v41 = v90;
  if (!v37)
  {
    goto LABEL_6;
  }

LABEL_15:
  result = sub_100031928(v95[6]);
  if ((v38 & 1) == 0)
  {
LABEL_16:
    v42 = v95;
    if (v39)
    {
      goto LABEL_17;
    }

    goto LABEL_18;
  }

LABEL_7:
  v42 = v95;
  result = sub_100031928(v95[7]);
  if (v39)
  {
LABEL_17:
    result = sub_100031928(v42[8]);
  }

LABEL_18:
  if (!v87)
  {
    if (!v44)
    {
      goto LABEL_20;
    }

LABEL_10:

    if (v43)
    {
      goto LABEL_21;
    }

LABEL_11:
    if (!v36)
    {
      goto LABEL_22;
    }

    goto LABEL_12;
  }

  result = sub_100031928(v42[10]);
  if (v44)
  {
    goto LABEL_10;
  }

LABEL_20:
  if (!v43)
  {
    goto LABEL_11;
  }

LABEL_21:
  result = sub_100031928(v42[12]);
  if ((v36 & 1) == 0)
  {
LABEL_22:
    if (!v88)
    {
      return result;
    }

    goto LABEL_23;
  }

LABEL_12:
  memcpy(v94, (v41 + v42[13]), 0xE8uLL);
  result = sub_1006826B0(v94);
  if ((v88 & 1) == 0)
  {
    return result;
  }

LABEL_23:
  v45 = type metadata accessor for WeatherConditionBackgroundPreprocessedDataModel;
  v46 = v41 + v42[14];
  return sub_10090AE1C(v46, v45);
}

uint64_t sub_10090ABE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100909538(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10090AC10(uint64_t a1)
{
  v2 = sub_10090ACBC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10090AC4C(uint64_t a1)
{
  v2 = sub_10090ACBC();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_10090ACBC()
{
  result = qword_100CE5548;
  if (!qword_100CE5548)
  {
    result = swift_getWitnessTable(byte_100A98804, &type metadata for PreprocessedWeatherData.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CE5548);
  }

  return result;
}

unint64_t sub_10090AD10()
{
  result = qword_100CE5560;
  if (!qword_100CE5560)
  {
    result = swift_getWitnessTable(aH_3, &type metadata for WindComponentPreprocessedDataModel, v0, v1);
    atomic_store(result, &qword_100CE5560);
  }

  return result;
}

unint64_t sub_10090AD64()
{
  result = qword_100CE5568;
  if (!qword_100CE5568)
  {
    result = swift_getWitnessTable(asc_100A5DE54, &type metadata for LocationViewPreprocessedDataModel, v0, v1);
    atomic_store(result, &qword_100CE5568);
  }

  return result;
}

uint64_t sub_10090ADB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PreprocessedWeatherData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10090AE1C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_10090AE74()
{
  result = qword_100CE5588;
  if (!qword_100CE5588)
  {
    result = swift_getWitnessTable(aUh_0, &type metadata for WindComponentPreprocessedDataModel, v0, v1);
    atomic_store(result, &qword_100CE5588);
  }

  return result;
}

uint64_t sub_10090AEC8(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

unint64_t sub_10090AF10()
{
  result = qword_100CE5590;
  if (!qword_100CE5590)
  {
    result = swift_getWitnessTable(aE_19, &type metadata for LocationViewPreprocessedDataModel, v0, v1);
    atomic_store(result, &qword_100CE5590);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PreprocessedWeatherData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10090B044()
{
  result = qword_100CE5598;
  if (!qword_100CE5598)
  {
    result = swift_getWitnessTable(asc_100A987DC, &type metadata for PreprocessedWeatherData.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CE5598);
  }

  return result;
}

unint64_t sub_10090B09C()
{
  result = qword_100CE55A0;
  if (!qword_100CE55A0)
  {
    result = swift_getWitnessTable(byte_100A9874C, &type metadata for PreprocessedWeatherData.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CE55A0);
  }

  return result;
}

unint64_t sub_10090B0F4()
{
  result = qword_100CE55A8;
  if (!qword_100CE55A8)
  {
    result = swift_getWitnessTable(a0_23, &type metadata for PreprocessedWeatherData.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CE55A8);
  }

  return result;
}

uint64_t sub_10090B148@<X0>(uint64_t *a1@<X8>)
{
  sub_10022C350(&qword_100CA36F8, &qword_100A2DB10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A3BBA0;
  *(inited + 32) = 1684957547;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = *v1;
  *(inited + 72) = &type metadata for DetailKind;
  *(inited + 80) = 0x4F79616C70736964;
  *(inited + 88) = 0xE90000000000006ELL;
  *(inited + 96) = v1[1];
  *(inited + 120) = &type metadata for DisplayLocation;
  *(inited + 128) = 1702125924;
  *(inited + 136) = 0xE400000000000000;
  v4 = *(type metadata accessor for OpenL2Descriptor(0) + 36);
  *(inited + 168) = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  v5 = sub_100043010((inited + 144));
  sub_1005C1F54(&v1[v4], v5, &unk_100CB2CF0, &unk_100A2D7F0);
  Dictionary.init(dictionaryLiteral:)();
  a1[3] = sub_10022C350(&qword_100CAFF08, &unk_100A98AF0);
  a1[4] = sub_10090C7BC();
  sub_100043010(a1);
  return ShortDescription.init(name:_:)();
}

uint64_t sub_10090B2E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v56 = a2;
  v5 = sub_10022C350(&qword_100CA3898, &qword_100A314D0);
  sub_100003810(v5);
  sub_100003828();
  __chkstk_darwin(v6);
  v8 = &v54 - v7;
  v9 = sub_10022C350(&qword_100CC62B8, &qword_100A61CA0);
  sub_100003810(v9);
  sub_100003828();
  __chkstk_darwin(v10);
  v55 = &v54 - v11;
  v57 = type metadata accessor for LocationComponentAction(0);
  sub_1000037E8();
  __chkstk_darwin(v12);
  sub_1000037D8();
  v15 = (v14 - v13);
  v16 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  sub_100003810(v16);
  sub_100003828();
  __chkstk_darwin(v17);
  v19 = &v54 - v18;
  v20 = sub_10022C350(&qword_100CA6898, &unk_100A3FA90);
  sub_100003810(v20);
  sub_100003828();
  __chkstk_darwin(v21);
  v23 = &v54 - v22;
  v24 = type metadata accessor for OpenL2Descriptor(0);
  sub_1000037E8();
  __chkstk_darwin(v25);
  sub_1000037D8();
  v28 = (v27 - v26);
  sub_1005C1F54(a1, v23, &qword_100CA6898, &unk_100A3FA90);
  if (sub_100024D10(v23, 1, v24) != 1)
  {
    sub_10090C820(v23, v28, type metadata accessor for OpenL2Descriptor);
    v32 = *(v24 + 36);
    sub_1005C1F54(&v28[v32], v19, &unk_100CB2CF0, &unk_100A2D7F0);
    v33 = type metadata accessor for Date();
    sub_100024D10(v19, 1, v33);
    sub_1000180EC(v19, &unk_100CB2CF0, &unk_100A2D7F0);
    switch(*v28)
    {
      case 1:
      case 2:
      case 4:
      case 0xB:
      case 0xC:
      case 0xD:
        sub_1000092E4();
        v34 = *(sub_10022C350(&qword_100CA6690, &unk_100A5B6A0) + 48);
        v35 = &enum case for TemperatureChartKind.actual(_:);
        goto LABEL_7;
      case 3:
      case 5:
        sub_1000092E4();
        v34 = *(sub_10022C350(&qword_100CA6690, &unk_100A5B6A0) + 48);
        v35 = &enum case for TemperatureChartKind.feelsLike(_:);
LABEL_7:
        v36 = *v35;
        type metadata accessor for TemperatureChartKind();
        sub_1000037E8();
        (*(v37 + 104))(v15, v36);
        v38 = &enum case for DetailCondition.conditions(_:);
        goto LABEL_8;
      case 6:
        sub_1000092E4();
        v34 = *(sub_10022C350(&qword_100CA6690, &unk_100A5B6A0) + 48);
        v38 = &enum case for DetailCondition.humidity(_:);
        goto LABEL_8;
      case 7:
      case 0xA:
      case 0x11:
        goto LABEL_9;
      case 8:
        sub_1000092E4();
        v34 = *(sub_10022C350(&qword_100CA6690, &unk_100A5B6A0) + 48);
        v38 = &enum case for DetailCondition.precipitationTotal(_:);
        goto LABEL_8;
      case 9:
        sub_1000092E4();
        v34 = *(sub_10022C350(&qword_100CA6690, &unk_100A5B6A0) + 48);
        v38 = &enum case for DetailCondition.pressure(_:);
        goto LABEL_8;
      case 0xE:
        sub_1000092E4();
        v34 = *(sub_10022C350(&qword_100CA6690, &unk_100A5B6A0) + 48);
        v38 = &enum case for DetailCondition.uvIndex(_:);
        goto LABEL_8;
      case 0xF:
        sub_1000092E4();
        v34 = *(sub_10022C350(&qword_100CA6690, &unk_100A5B6A0) + 48);
        v38 = &enum case for DetailCondition.visibility(_:);
        goto LABEL_8;
      case 0x10:
        sub_1000092E4();
        v34 = *(sub_10022C350(&qword_100CA6690, &unk_100A5B6A0) + 48);
        v38 = &enum case for DetailCondition.wind(_:);
LABEL_8:
        v39 = *v38;
        type metadata accessor for DetailCondition();
        sub_1000037E8();
        (*(v40 + 104))(v15, v39);
        v15[v34] = &unk_100A2D7F0;
        goto LABEL_9;
      default:
        sub_1005C1F54(v56, v8, &qword_100CA3898, &qword_100A314D0);
        type metadata accessor for WeatherData(0);
        sub_100003A40(v8);
        if (v52)
        {
          sub_1000180EC(v8, &qword_100CA3898, &qword_100A314D0);
          v46 = type metadata accessor for AirQuality();
          v47 = v55;
          sub_10001B350(v55, 1, 1, v46);
LABEL_21:
          sub_1000180EC(v47, &qword_100CC62B8, &qword_100A61CA0);
          sub_10001D1DC();
          v29 = type metadata accessor for LocationViewAction(0);
          v30 = a3;
          goto LABEL_3;
        }

        v47 = v55;
        WeatherDataModel.airQuality.getter();
        sub_10090C87C(v8, type metadata accessor for WeatherData);
        v48 = type metadata accessor for AirQuality();
        v49 = sub_100024D10(v47, 1, v48);
        if (v49 == 1)
        {
          goto LABEL_21;
        }

        sub_1000180EC(v47, &qword_100CC62B8, &qword_100A61CA0);
        v50 = sub_100879E04(*&v28[*(v24 + 40)]);
        if (!v51)
        {
          goto LABEL_28;
        }

        v52 = v50 == 0x736C6961746564 && v51 == 0xE700000000000000;
        if (v52)
        {
        }

        else
        {
          v53 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v53 & 1) == 0)
          {
LABEL_28:
            *v15 = 0;
LABEL_9:
            swift_storeEnumTagMultiPayload();
            v41 = sub_10022C350(&qword_100CA6658, &unk_100A31480);
            v42 = a3 + *(v41 + 48);
            v43 = *(v41 + 64);
            sub_10090C820(v15, a3, type metadata accessor for LocationComponentAction);
            *v42 = 0u;
            *(v42 + 16) = 0u;
            *(v42 + 32) = 1;
            sub_1005C1F54(&v28[v32], a3 + v43, &unk_100CB2CF0, &unk_100A2D7F0);
            sub_10001D1DC();
            v44 = type metadata accessor for LocationViewAction(0);
            swift_storeEnumTagMultiPayload();
            v30 = a3;
            v31 = 0;
            v29 = v44;
            return sub_10001B350(v30, v31, 1, v29);
          }
        }

        *v15 = 1;
        goto LABEL_9;
    }
  }

  sub_1000180EC(v23, &qword_100CA6898, &unk_100A3FA90);
  v29 = type metadata accessor for LocationViewAction(0);
  v30 = a3;
LABEL_3:
  v31 = 1;
  return sub_10001B350(v30, v31, 1, v29);
}

uint64_t sub_10090B9C4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100C45B28, v2);

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

BOOL sub_10090BA54(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100C45B78, v2);

  return v3 != 0;
}

uint64_t sub_10090BAC0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10090B9C4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10090BAF0@<X0>(void *a1@<X8>)
{
  result = sub_10090BA18();
  *a1 = 0x6E6F697461636F6CLL;
  a1[1] = v3;
  return result;
}

BOOL sub_10090BB38@<W0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10090BA54(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10090BB8C(uint64_t a1)
{
  sub_10090C8D4(&qword_100CE5880, type metadata accessor for OpenL2Descriptor, byte_100A98974);

  return ShortDescribable.description.getter();
}

BOOL sub_10090BBF8(uint64_t a1, uint64_t a2)
{
  v69 = type metadata accessor for Date();
  sub_1000037C4();
  v66 = v4;
  __chkstk_darwin(v5);
  sub_1000037D8();
  v64 = v7 - v6;
  v8 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  sub_100003810(v8);
  sub_100003828();
  __chkstk_darwin(v9);
  v65 = &v64 - v10;
  v67 = sub_10022C350(qword_100CA4F80, &unk_100A580C0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v11);
  v68 = &v64 - v12;
  v13 = type metadata accessor for Location.Identifier();
  sub_1000037C4();
  v15 = v14;
  __chkstk_darwin(v16);
  sub_1000037D8();
  v19 = v18 - v17;
  v20 = sub_10022C350(&qword_100CADBA0, &qword_100A3D250);
  sub_100003810(v20);
  sub_100003828();
  __chkstk_darwin(v21);
  v23 = &v64 - v22;
  v24 = sub_10022C350(&qword_100CADD58, &unk_100A3E650);
  sub_100003810(v24);
  sub_100003828();
  __chkstk_darwin(v25);
  v27 = &v64 - v26;
  v29 = *(v28 + 56);
  sub_1005C1F54(a1, &v64 - v26, &qword_100CADBA0, &qword_100A3D250);
  sub_1005C1F54(a2, &v27[v29], &qword_100CADBA0, &qword_100A3D250);
  sub_100003A40(v27);
  if (v30)
  {
    sub_100003A40(&v27[v29]);
    if (v30)
    {
      sub_1000180EC(v27, &qword_100CADBA0, &qword_100A3D250);
      goto LABEL_14;
    }

LABEL_9:
    v33 = &qword_100CADD58;
    v34 = &unk_100A3E650;
    v35 = v27;
LABEL_10:
    sub_1000180EC(v35, v33, v34);
    return 0;
  }

  sub_1005C1F54(v27, v23, &qword_100CADBA0, &qword_100A3D250);
  sub_100003A40(&v27[v29]);
  if (v30)
  {
    v31 = sub_100003940();
    v32(v31);
    goto LABEL_9;
  }

  (*(v15 + 32))(v19, &v27[v29], v13);
  sub_10090C8D4(&qword_100CA3A48, &type metadata accessor for Location.Identifier, &protocol conformance descriptor for Location.Identifier);
  v37 = dispatch thunk of static Equatable.== infix(_:_:)();
  v38 = *(v15 + 8);
  v38(v19, v13);
  v39 = sub_100003940();
  (v38)(v39);
  sub_1000180EC(v27, &qword_100CADBA0, &qword_100A3D250);
  if ((v37 & 1) == 0)
  {
    return 0;
  }

LABEL_14:
  v40 = type metadata accessor for OpenL2Action.PublishedValue(0);
  v41 = *(v40 + 20);
  v42 = (a1 + v41);
  v43 = *(a1 + v41 + 8);
  v44 = (a2 + v41);
  v45 = v44[1];
  if (v43)
  {
    if (!v45)
    {
      return 0;
    }

    v46 = *v42 == *v44 && v43 == v45;
    if (!v46 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v45)
  {
    return 0;
  }

  sub_100023530();
  if (v30)
  {
    if (v47 != 2)
    {
      return 0;
    }
  }

  else if (v47 == 2 || (sub_10074890C(v48 & 1, v47 & 1) & 1) == 0)
  {
    return 0;
  }

  sub_100023530();
  if (v30)
  {
    if (v49 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v49 == 2 || ((v49 ^ v50) & 1) != 0)
    {
      return result;
    }
  }

  sub_100023530();
  if (v30)
  {
    if (v51 != 2)
    {
      return 0;
    }

    goto LABEL_41;
  }

  result = 0;
  if (v51 != 2 && ((v51 ^ v52) & 1) == 0)
  {
LABEL_41:
    v53 = *(v40 + 36);
    v54 = *(v67 + 48);
    v55 = a1 + v53;
    v56 = v68;
    sub_1005C1F54(v55, v68, &unk_100CB2CF0, &unk_100A2D7F0);
    sub_1005C1F54(a2 + v53, v56 + v54, &unk_100CB2CF0, &unk_100A2D7F0);
    v57 = v69;
    if (sub_100024D10(v56, 1, v69) == 1)
    {
      if (sub_100024D10(v56 + v54, 1, v57) == 1)
      {
        sub_1000180EC(v56, &unk_100CB2CF0, &unk_100A2D7F0);
        return 1;
      }
    }

    else
    {
      v58 = v65;
      sub_1005C1F54(v56, v65, &unk_100CB2CF0, &unk_100A2D7F0);
      if (sub_100024D10(v56 + v54, 1, v57) != 1)
      {
        v59 = v66;
        v60 = v56 + v54;
        v61 = v64;
        (*(v66 + 32))(v64, v60, v57);
        sub_10090C8D4(&qword_100CA39D0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        v62 = dispatch thunk of static Equatable.== infix(_:_:)();
        v63 = *(v59 + 8);
        v63(v61, v57);
        v63(v58, v57);
        sub_1000180EC(v56, &unk_100CB2CF0, &unk_100A2D7F0);
        return (v62 & 1) != 0;
      }

      (*(v66 + 8))(v58, v57);
    }

    v33 = qword_100CA4F80;
    v34 = &unk_100A580C0;
    v35 = v56;
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_10090C244()
{
  v1 = OBJC_IVAR____TtC7Weather12OpenL2Action__value;
  sub_10022C350(&qword_100CE5888, &unk_100A98B00);
  sub_1000037E8();
  (*(v2 + 8))(v0 + v1);

  return swift_deallocClassInstance();
}

void sub_10090C30C(uint64_t a1)
{
  sub_100066DA4(319, &unk_100CE55F0, type metadata accessor for OpenL2Action.PublishedValue, &type metadata accessor for Published);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10090C438(uint64_t a1)
{
  sub_100066DA4(319, &qword_100CADC30, &type metadata accessor for Location.Identifier, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_10013CAE0(319, &qword_100CA45C0, &type metadata for String);
    if (v2 <= 0x3F)
    {
      sub_10013CAE0(319, &qword_100CE5770, &type metadata for DisplayLocation);
      if (v3 <= 0x3F)
      {
        sub_10013CAE0(319, &unk_100CE5778, &type metadata for Bool);
        if (v4 <= 0x3F)
        {
          sub_100066DA4(319, &qword_100CA3940, &type metadata accessor for Date, &type metadata accessor for Optional);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

_BYTE *storeEnumTagSinglePayload for DisplayLocation(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for OpenL2DescriptorParamKeys(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_10090C768()
{
  result = qword_100CE5878;
  if (!qword_100CE5878)
  {
    result = swift_getWitnessTable(byte_100A98A5C, &type metadata for DisplayLocation, v0, v1);
    atomic_store(result, &qword_100CE5878);
  }

  return result;
}

unint64_t sub_10090C7BC()
{
  result = qword_100CAFF18;
  if (!qword_100CAFF18)
  {
    v3 = sub_10022E824(&qword_100CAFF08, &unk_100A98AF0);
    result = swift_getWitnessTable(&protocol conformance descriptor for ShortDescription<A>, v3, v0, v1);
    atomic_store(result, &qword_100CAFF18);
  }

  return result;
}

uint64_t sub_10090C820(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

uint64_t sub_10090C87C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10090C8D4(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

double sub_10090C91C()
{
  v1 = *v0;
  if (*v0 == 1)
  {
    *v0 = 0;
    v0[1] = 0;
    v0[2] = 0x4010000000000000;
    v2 = 4.0;
  }

  else
  {
    v2 = *(v0 + 2);
  }

  sub_10090CC84(v1);
  return v2;
}

uint64_t sub_10090C990()
{
  if (*v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = sub_10090CA20();
    *v0 = v1;
  }

  return v1;
}

uint64_t sub_10090C9D8()
{
  if (*(v0 + 8))
  {
    v1 = *(v0 + 8);
  }

  else
  {
    v1 = static Color.primary.getter();
    *(v0 + 8) = v1;
  }

  return v1;
}

uint64_t sub_10090CA20()
{
  v0 = type metadata accessor for Font.Leading();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10022C350(&qword_100CA4020, &qword_100A2E080);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = type metadata accessor for Font.TextStyle();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v11, enum case for Font.TextStyle.largeTitle(_:), v7, v9);
  v12 = type metadata accessor for Font.Design();
  sub_10001B350(v6, 1, 1, v12);
  static Font.system(_:design:weight:)();
  sub_1002761E0(v6);
  (*(v8 + 8))(v11, v7);
  (*(v1 + 104))(v3, enum case for Font.Leading.tight(_:), v0);
  Font.leading(_:)();

  (*(v1 + 8))(v3, v0);
  static Font.Weight.bold.getter();
  v13 = Font.weight(_:)();

  return v13;
}

uint64_t sub_10090CC84(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_10090CCCC()
{
  v1 = qword_100CE58A8;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_10090CD2C()
{
  sub_10090CCCC();

  return swift_deallocClassInstance();
}

uint64_t sub_10090CD84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10090CE1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, uint64_t, uint64_t, uint64_t, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
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
  sub_100566BE4(a2, v358);
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
    sub_1001B3B30(v132 + OBJC_IVAR____TtCV7Weather19NoAqiNhpNewsContent8_Storage_nextHourPrecipitation, v41);
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
  sub_100566BC8(v338, v360);
  if ((v361 & 1) == 0)
  {
    v147 = v360[3];
    v148 = v360[2];
    v149 = v360[1];
    v150 = v360[0];
    sub_1001B3B30(v298 + OBJC_IVAR____TtCV7Weather19NoAqiNhpNewsContent8_Storage_newsArticle, v129);
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
  v161 = OBJC_IVAR____TtCV7Weather19NoAqiNhpNewsContent8_Storage_map;
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

uint64_t sub_10090E6A8(uint64_t a1)
{
  v1 = type metadata accessor for ConditionDetailViewModel.Model(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_10090E728(uint64_t a1)
{
  sub_10090E8FC(319, &qword_100CBFD90, type metadata accessor for DetailChartsViewModel, &type metadata accessor for Array);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v2 <= 0x3F)
    {
      sub_10090E8FC(319, &qword_100CB0C68, type metadata accessor for DetailChartSelection, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_10090E8FC(319, &qword_100CBFD88, type metadata accessor for DetailChartConditionInfo, &type metadata accessor for Array);
        if (v4 <= 0x3F)
        {
          type metadata accessor for DetailCondition();
          if (v5 <= 0x3F)
          {
            sub_10090E8FC(319, &qword_100CB27C8, type metadata accessor for ConditionDetailPlatterViewModel, &type metadata accessor for Array);
            if (v6 <= 0x3F)
            {
              type metadata accessor for Location();
              if (v7 <= 0x3F)
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

void sub_10090E8FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_10090E960(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ConditionDetailViewModel.Model(0);
  sub_1000037E8();
  __chkstk_darwin(v4);
  sub_1000037D8();
  v7 = (v6 - v5);
  v8 = type metadata accessor for ConditionDetailViewModel(0);
  __chkstk_darwin(v8 - 8);
  sub_1000037D8();
  v11 = (v10 - v9);
  v12 = sub_10022C350(qword_100CE5B00, &unk_100A98C90);
  __chkstk_darwin(v12 - 8);
  v14 = &v20 - v13;
  v16 = *(v15 + 56);
  sub_10090EEB4(a1, &v20 - v13);
  sub_10090EEB4(a2, &v14[v16]);
  sub_10000394C(v14);
  if (!v18)
  {
    sub_10090EEB4(v14, v11);
    sub_10000394C(&v14[v16]);
    if (!v18)
    {
      sub_10090EFE0(&v14[v16], v7, type metadata accessor for ConditionDetailViewModel.Model);
      v17 = sub_10090EB5C(v11, v7);
      sub_10090EF18(v7, type metadata accessor for ConditionDetailViewModel.Model);
      sub_10090EF18(v11, type metadata accessor for ConditionDetailViewModel.Model);
      sub_10001D204();
      return v17 & 1;
    }

    sub_10090EF18(v11, type metadata accessor for ConditionDetailViewModel.Model);
LABEL_9:
    sub_1000180EC(v14, qword_100CE5B00, &unk_100A98C90);
    v17 = 0;
    return v17 & 1;
  }

  sub_10000394C(&v14[v16]);
  if (!v18)
  {
    goto LABEL_9;
  }

  sub_10001D204();
  v17 = 1;
  return v17 & 1;
}

uint64_t sub_10090EB5C(void *a1, void *a2)
{
  type metadata accessor for DetailChartSelection(0);
  sub_1000037E8();
  __chkstk_darwin(v4);
  sub_1000037D8();
  v7 = (v6 - v5);
  v8 = sub_10022C350(&qword_100CB0BA8, &unk_100A40F80);
  __chkstk_darwin(v8 - 8);
  v10 = (var50 - v9);
  v11 = sub_10022C350(&qword_100CB0D18, &unk_100A41060);
  sub_1000037E8();
  __chkstk_darwin(v12);
  v14 = var50 - v13;
  v15 = *a1 == *a2 && a1[1] == a2[1];
  if (!v15 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_30;
  }

  sub_1009EAE68();
  if ((v16 & 1) == 0)
  {
    goto LABEL_30;
  }

  v17 = type metadata accessor for ConditionDetailViewModel.Model(0);
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_30;
  }

  v18 = v17[7];
  v19 = *(v11 + 48);
  sub_10090EF70(a1 + v18, v14);
  sub_10090EF70(a2 + v18, &v14[v19]);
  sub_10000E7EC(v14);
  if (v15)
  {
    sub_10000E7EC(&v14[v19]);
    if (v15)
    {
      sub_1000180EC(v14, &qword_100CB0BA8, &unk_100A40F80);
      goto LABEL_18;
    }

LABEL_16:
    sub_1000180EC(v14, &qword_100CB0D18, &unk_100A41060);
    goto LABEL_30;
  }

  sub_10090EF70(v14, v10);
  sub_10000E7EC(&v14[v19]);
  if (v20)
  {
    sub_10090EF18(v10, type metadata accessor for DetailChartSelection);
    goto LABEL_16;
  }

  sub_10090EFE0(&v14[v19], v7, type metadata accessor for DetailChartSelection);
  v21 = sub_100658114(v10, v7);
  sub_10090EF18(v7, type metadata accessor for DetailChartSelection);
  sub_10090EF18(v10, type metadata accessor for DetailChartSelection);
  sub_1000180EC(v14, &qword_100CB0BA8, &unk_100A40F80);
  if ((v21 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_18:
  sub_1009EBBB4();
  if ((v22 & 1) == 0)
  {
    goto LABEL_30;
  }

  if ((static DetailCondition.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_30;
  }

  sub_1009E99F0(*(a1 + v17[10]), *(a2 + v17[10]), v23, v24, v25, v26, v27, v28, var50[0], var50[1], var50[2], var50[3], var50[4], var50[5], var50[6], var50[7], var50[8], var50[9], var50[10], var50[11]);
  if ((v29 & 1) == 0)
  {
    goto LABEL_30;
  }

  v30 = v17[11];
  v31 = *(a1 + v30 + 8);
  v32 = *(a1 + v30 + 16);
  v33 = *(a1 + v30 + 24);
  v34 = a2 + v30;
  v35 = *(v34 + 1);
  v36 = *(v34 + 2);
  v37 = v34[24];
  sub_1009E9C0C();
  if ((v38 & 1) == 0)
  {
    goto LABEL_30;
  }

  if (v31 == v35 && v32 == v36)
  {
    if (v33 == v37)
    {
LABEL_32:
      v41 = static Location.== infix(_:_:)();
      return v41 & 1;
    }

LABEL_30:
    v41 = 0;
    return v41 & 1;
  }

  v40 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v41 = 0;
  if ((v40 & 1) != 0 && ((v33 ^ v37) & 1) == 0)
  {
    goto LABEL_32;
  }

  return v41 & 1;
}

uint64_t sub_10090EEB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConditionDetailViewModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10090EF18(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10090EF70(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CB0BA8, &unk_100A40F80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10090EFE0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_10090F040(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10090F0D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, uint64_t, uint64_t, uint64_t, void (*)(void, void))@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
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
  sub_100566A24(v357, v383);
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
    sub_1001B3B30(v339 + OBJC_IVAR____TtCV7Weather16SevereNhpContent8_Storage_severeAlert, v39);
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
  sub_100566BE4(v357, v385);
  v355 = v129;
  v338 = v148;
  if ((v385[32] & 1) == 0)
  {
    v149 = v321;
    sub_1001B3B30(v339 + OBJC_IVAR____TtCV7Weather16SevereNhpContent8_Storage_nextHourPrecipitation, v321);
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
    sub_1001B3B30(v339 + OBJC_IVAR____TtCV7Weather16SevereNhpContent8_Storage_airQuality, v321);
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
  v182 = OBJC_IVAR____TtCV7Weather16SevereNhpContent8_Storage_map;
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