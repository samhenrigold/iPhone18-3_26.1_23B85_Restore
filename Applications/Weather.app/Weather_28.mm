uint64_t sub_1002F1DA0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v203 = a4;
  v205 = a2;
  v221 = a5;
  type metadata accessor for Location();
  sub_1000037C4();
  v219 = v7;
  v220 = v8;
  __chkstk_darwin(v7);
  v217 = &v190 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v210 = &v190 - v11;
  __chkstk_darwin(v12);
  v204 = (&v190 - v13);
  __chkstk_darwin(v14);
  sub_100003918(&v190 - v15);
  v194 = type metadata accessor for WeatherDataModel();
  sub_1000037C4();
  v193 = v16;
  __chkstk_darwin(v17);
  sub_1000038E4();
  v192 = v18;
  v19 = sub_10022C350(&qword_100CA3898, &qword_100A314D0);
  sub_100003810(v19);
  sub_100003828();
  __chkstk_darwin(v20);
  v195 = &v190 - v21;
  v22 = sub_10022C350(&qword_100CABD00, &qword_100A3ABA0);
  sub_100003810(v22);
  sub_100003828();
  __chkstk_darwin(v23);
  sub_100003918(&v190 - v24);
  v197 = type metadata accessor for HistoricalFacts();
  sub_1000037C4();
  v191 = v25;
  __chkstk_darwin(v26);
  sub_1000038E4();
  v28 = sub_100003918(v27);
  v29 = type metadata accessor for AppConfigurationState(v28);
  v30 = sub_100003810(v29);
  __chkstk_darwin(v30);
  sub_1000038E4();
  v32 = sub_100003918(v31);
  v33 = type metadata accessor for TimeState(v32);
  v34 = sub_100003810(v33);
  __chkstk_darwin(v34);
  sub_1000038E4();
  v206 = v35;
  v201 = type metadata accessor for Locale();
  sub_1000037C4();
  v199 = v36;
  __chkstk_darwin(v37);
  sub_1000038E4();
  v39 = sub_100003918(v38);
  v200 = type metadata accessor for MonthlyAveragesChartInput(v39);
  sub_1000037E8();
  __chkstk_darwin(v40);
  sub_1000038E4();
  v208 = v41;
  v42 = sub_10022C350(&qword_100CABD08, &qword_100A3ABA8);
  sub_100003810(v42);
  sub_100003828();
  __chkstk_darwin(v43);
  v45 = &v190 - v44;
  v46 = type metadata accessor for TemperatureAveragesHeroChartInput(0);
  sub_1000037E8();
  __chkstk_darwin(v47);
  sub_1000038E4();
  v207 = v48;
  v49 = sub_10022C350(&qword_100CABD10, &qword_100A3ABB0);
  sub_100003810(v49);
  sub_100003828();
  __chkstk_darwin(v50);
  v52 = &v190 - v51;
  v53 = sub_10022C350(&qword_100CABC20, &unk_100A3AB30);
  sub_100003810(v53);
  sub_100003828();
  __chkstk_darwin(v54);
  v56 = &v190 - v55;
  v216 = sub_10022C350(&unk_100CABCA0, qword_100A3AB60);
  sub_1000037C4();
  v211 = v57;
  sub_100003828();
  __chkstk_darwin(v58);
  v214 = &v190 - v59;
  v60 = type metadata accessor for NewsDataModel(0);
  v61 = sub_100003810(v60);
  __chkstk_darwin(v61);
  sub_1000038E4();
  v218 = v62;
  v213 = type metadata accessor for WeatherData(0);
  sub_1000037E8();
  __chkstk_darwin(v63);
  sub_1000038E4();
  v215 = v64;
  v65 = sub_10022C350(&qword_100CA37B0, &unk_100A2D740);
  sub_100003810(v65);
  sub_100003828();
  __chkstk_darwin(v66);
  v68 = &v190 - v67;
  v69 = type metadata accessor for LocationWeatherDataState(0);
  sub_1000037E8();
  __chkstk_darwin(v70);
  v72 = &v190 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v73);
  v75 = &v190 - v74;
  v209 = a1;
  v76 = *(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);

  v222 = a3;
  v77 = Location.id.getter();
  sub_1000864C0(v77, v78, v76);

  sub_1000038B4(v68, 1, v69);
  if (v117)
  {
    sub_1000180EC(v68, &qword_100CA37B0, &unk_100A2D740);
    if (qword_100CA2720 != -1)
    {
      sub_100005680(&qword_100CA2720);
    }

    v79 = type metadata accessor for Logger();
    sub_10000703C(v79, qword_100D90BB8);
    sub_100018384();
    v80 = v217;
    v81(v217, v222, v56);
    v82 = Logger.logObject.getter();
    v83 = static os_log_type_t.error.getter();
    if (sub_1000176AC(v83))
    {
      sub_100011450();
      v84 = sub_10000C940();
      sub_10002C5BC(v84);
      sub_100019354(7.2225e-34);
      v85 = dispatch thunk of CustomStringConvertible.description.getter();
      (*(v52 + 1))(v80, v56);
      sub_10000C95C();
      sub_100031C20();
      *(v46 + 14) = v85;
      sub_10001768C(&_mh_execute_header, v86, v87, "Failed to create averages temperature detail input due to missing weather data for location; location=%{private,mask.hash}s");
      sub_10001356C();
      sub_100007E54();
    }

    else
    {

      (*(v52 + 1))(v80, v56);
    }

    goto LABEL_38;
  }

  sub_100106F88(v68, v75);
  sub_1001AF604(v75, v72);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    sub_1000080A4();
    sub_100105E88(v72, v105);
    if (qword_100CA2720 != -1)
    {
      sub_100005680(&qword_100CA2720);
    }

    v106 = type metadata accessor for Logger();
    sub_10000703C(v106, qword_100D90BB8);
    sub_100018384();
    v107 = v210;
    v108(v210, v222, v56);
    v109 = Logger.logObject.getter();
    v110 = static os_log_type_t.error.getter();
    if (sub_1000176AC(v110))
    {
      sub_100011450();
      v111 = sub_10000C940();
      sub_10002C5BC(v111);
      sub_100019354(7.2225e-34);
      v112 = dispatch thunk of CustomStringConvertible.description.getter();
      (*(v52 + 1))(v107, v56);
      sub_10000C95C();
      sub_100031C20();
      *(v46 + 14) = v112;
      sub_10001768C(&_mh_execute_header, v113, v114, "Failed to create averages temperature detail input due to missing weather data; location=%{private,mask.hash}s");
      sub_10001356C();
      sub_100007E54();
    }

    else
    {

      (*(v52 + 1))(v107, v56);
    }

    goto LABEL_37;
  }

  v89 = sub_10022C350(&qword_100CA75D8, &unk_100A32600);
  v90 = *(v89 + 48);
  v91 = *(v89 + 64);
  v92 = v215;
  sub_100106F88(v72, v215);
  sub_100106F88(&v72[v91], v218);
  sub_100105E88(&v72[v90], type metadata accessor for PreprocessedWeatherData);
  WeatherDataModel.historicalComparisons.getter();
  v93 = v212;
  sub_1002F3038(v52, v56);
  sub_1000180EC(v52, &qword_100CABD10, &qword_100A3ABB0);
  v94 = v216;
  sub_1000038B4(v56, 1, v216);
  if (!v117)
  {
    v115 = v214;
    (*(v211 + 32))(v214, v56, v94);
    sub_1000161C0(v93 + 5, v93[8]);
    v116 = v209;
    sub_100383E88(v209, v92, v205, v222, v115, v203, v45);
    sub_1000038B4(v45, 1, v46);
    if (!v117)
    {
      v220 = v75;
      sub_100106F88(v45, v207);
      v130 = v116 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
      swift_beginAccess();
      v131 = type metadata accessor for EnvironmentState(0);
      v132 = *(v131 + 32);
      v133 = v199;
      v204 = *(v199 + 16);
      v134 = v198;
      v135 = v201;
      v204(v198, &v130[v132], v201);
      v136 = v208;
      Locale.calendar.getter();
      (*(v133 + 8))(v134, v135);
      sub_100074790();
      v219 = v137;
      v138 = v206;
      sub_1001AF604(v137 + v116, v206);
      v139 = v200;
      v140 = *(v200 + 20);
      type metadata accessor for Date();
      sub_1000037E8();
      v142 = v138;
      v144 = v143;
      v217 = *(v141 + 32);
      v210 = (v141 + 32);
      (v217)(v136 + v140, v142, v143);
      v145 = v202;
      sub_1001AF604(v116 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_appConfiguration, v202);
      AppConfiguration.temperatureScale.getter();
      type metadata accessor for AppConfiguration();
      sub_1000037E8();
      (*(v146 + 8))(v145);
      WeatherStatisticsModel.monthlyTemperatureStatistics.getter();
      WeatherStatisticsModel.monthlyPrecipitationStatistics.getter();
      v147 = *(v139 + 36);
      v148 = v130;
      v204(v136 + v147, &v130[*(v131 + 32)], v135);
      type metadata accessor for SettingReader();
      static SettingReader.shared.getter();
      if (qword_100CA24D8 != -1)
      {
        swift_once();
      }

      v149 = SettingReader.isEnabled(_:with:)();

      v150 = v213;
      if (v149)
      {
        v151 = v195;
        sub_1001A0D3C();
        sub_1000038B4(v151, 1, v150);
        if (v117)
        {
          sub_1000180EC(v151, &qword_100CA3898, &qword_100A314D0);
          v163 = v196;
          sub_10001B350(v196, 1, 1, v197);
        }

        else
        {
          v157 = *(v150 + 24);
          v158 = v193;
          v159 = v192;
          v160 = v194;
          (*(v193 + 16))(v192, v151 + v157, v194);
          sub_10001E79C();
          sub_100105E88(v151, v161);
          v162 = v196;
          WeatherDataModel.historicalFacts.getter();
          (*(v158 + 8))(v159, v160);
          v163 = v162;
          v164 = v197;
          sub_1000038B4(v162, 1, v197);
          if (!v165)
          {
            v188 = v191;
            v189 = v190;
            (*(v191 + 32))(v190, v163, v164);
            sub_1000161C0(v212, v212[3]);
            v213 = sub_100627AA8(v189);
            (*(v188 + 8))(v189, v164);
LABEL_44:
            v166 = v221;
            sub_1001AF604(v207, v221);
            v167 = type metadata accessor for TemperatureAveragesDetailInput(0);
            sub_1001AF604(v208, v166 + v167[5]);
            sub_1001AF604(v218, v166 + v167[7]);
            v168 = v167[8];
            v169 = v211;
            v170 = v216;
            (*(v211 + 16))(v166 + v168, v214, v216);
            sub_10001B350(v166 + v168, 0, 1, v170);
            Location.timeZone.getter();
            sub_100074790();
            v171 = v206;
            sub_1001AF604(v219 + v209, v206);
            (v217)(v166 + v167[10], v171, v144);
            v172 = &v148[*(v131 + 72)];
            v174 = v172[1];
            v219 = *v172;
            v173 = v219;
            v175 = v172[2];
            v176 = v172[3];
            v177 = v172[4];
            v222 = v172[5];
            v178 = v222;
            v179 = v173;
            v180 = v174;
            v181 = v175;
            v182 = v176;
            v183 = v177;
            static Calendar.current.getter();
            sub_100105E88(v208, type metadata accessor for MonthlyAveragesChartInput);
            sub_100105E88(v207, type metadata accessor for TemperatureAveragesHeroChartInput);
            (*(v169 + 8))(v214, v216);
            sub_100003D70();
            sub_10001E79C();
            sub_100105E88(v215, v184);
            sub_1000080A4();
            sub_100105E88(v220, v185);
            *(v166 + v167[6]) = v213;
            v186 = (v166 + v167[11]);
            *v186 = v219;
            v186[1] = v174;
            v186[2] = v175;
            v186[3] = v176;
            v187 = v222;
            v186[4] = v177;
            v186[5] = v187;
            v154 = v166;
            v155 = 0;
            v153 = v167;
            return sub_10001B350(v154, v155, 1, v153);
          }
        }

        sub_1000180EC(v163, &qword_100CABD00, &qword_100A3ABA0);
      }

      v213 = 0;
      goto LABEL_44;
    }

    sub_1000180EC(v45, &qword_100CABD08, &qword_100A3ABA8);
    if (qword_100CA2720 != -1)
    {
      sub_100005680(&qword_100CA2720);
    }

    v118 = type metadata accessor for Logger();
    sub_10000703C(v118, qword_100D90BB8);
    sub_100051D94();
    v119 = sub_10000E8C4();
    v120(v119);
    v121 = Logger.logObject.getter();
    v122 = static os_log_type_t.error.getter();
    if (sub_1000176AC(v122))
    {
      sub_100011450();
      v123 = sub_10000C940();
      sub_10002C5BC(v123);
      sub_100019354(7.2225e-34);
      dispatch thunk of CustomStringConvertible.description.getter();
      v124 = sub_1000245A0();
      v125(v124);
      sub_10000C95C();
      sub_100031C20();
      *(v46 + 14) = v52;
      sub_10001768C(&_mh_execute_header, v126, v127, "Failed to create hero chart input; location=%{private,mask.hash}s");
      sub_10001356C();
      sub_100007E54();

      (*(v211 + 8))(v214, v216);
      goto LABEL_25;
    }

    (*(v56 + 1))(v52, v45);
    (*(v211 + 8))(v214, v94);
LABEL_35:
    sub_100003D70();
    sub_10001E79C();
    v129 = v92;
    goto LABEL_36;
  }

  sub_1000180EC(v56, &qword_100CABC20, &unk_100A3AB30);
  if (qword_100CA2720 != -1)
  {
    sub_100005680(&qword_100CA2720);
  }

  v95 = type metadata accessor for Logger();
  sub_10000703C(v95, qword_100D90BB8);
  sub_100051D94();
  v96 = sub_10000E8C4();
  v97(v96);
  v98 = Logger.logObject.getter();
  v99 = static os_log_type_t.error.getter();
  if (!sub_1000176AC(v99))
  {

    (*(v56 + 1))(v52, v45);
    goto LABEL_35;
  }

  sub_100011450();
  v100 = sub_10000C940();
  sub_10002C5BC(v100);
  sub_100019354(7.2225e-34);
  dispatch thunk of CustomStringConvertible.description.getter();
  v101 = sub_1000245A0();
  v102(v101);
  sub_10000C95C();
  sub_100031C20();
  *(v46 + 14) = v52;
  sub_10001768C(&_mh_execute_header, v103, v104, "Failed to get temperature averages from weather comparisons; location=%{private,mask.hash}s");
  sub_10001356C();
  sub_100007E54();

LABEL_25:
  sub_100003D70();
  sub_10001E79C();
  v129 = v52;
LABEL_36:
  sub_100105E88(v129, v128);
LABEL_37:
  sub_1000080A4();
  sub_100105E88(v75, v152);
LABEL_38:
  v153 = type metadata accessor for TemperatureAveragesDetailInput(0);
  v154 = v221;
  v155 = 1;
  return sub_10001B350(v154, v155, 1, v153);
}

uint64_t sub_1002F3038@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = type metadata accessor for HistoricalComparison();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10022C350(&qword_100CABD10, &qword_100A3ABB0);
  __chkstk_darwin(v7 - 8);
  v9 = &v21 - v8;
  sub_100035AD0(a1, &v21 - v8, &qword_100CABD10, &qword_100A3ABB0);
  v10 = type metadata accessor for HistoricalComparisons();
  if (sub_100024D10(v9, 1, v10) == 1)
  {
    result = sub_1000180EC(v9, &qword_100CABD10, &qword_100A3ABB0);
    v12 = _swiftEmptyArrayStorage;
  }

  else
  {
    v12 = HistoricalComparisons.comparisons.getter();
    result = (*(*(v10 - 8) + 8))(v9, v10);
  }

  v13 = 0;
  v14 = v12[2];
  v15 = enum case for HistoricalComparison.highTemperature(_:);
  while (1)
  {
    if (v14 == v13)
    {

      v16 = sub_10022C350(&unk_100CABCA0, qword_100A3AB60);
      v17 = v22;
      v18 = 1;
      return sub_10001B350(v17, v18, 1, v16);
    }

    if (v13 >= v12[2])
    {
      break;
    }

    (*(v4 + 16))(v6, v12 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v13, v3);
    if ((*(v4 + 88))(v6, v3) == v15)
    {

      (*(v4 + 96))(v6, v3);
      v19 = sub_10022C350(&unk_100CABCA0, qword_100A3AB60);
      v20 = v22;
      (*(*(v19 - 8) + 32))(v22, v6, v19);
      v17 = v20;
      v18 = 0;
      v16 = v19;
      return sub_10001B350(v17, v18, 1, v16);
    }

    ++v13;
    result = (*(v4 + 8))(v6, v3);
  }

  __break(1u);
  return result;
}

unint64_t sub_1002F3344()
{
  result = qword_100CABCF8;
  if (!qword_100CABCF8)
  {
    v3 = sub_10022E824(&unk_100CABCA0, qword_100A3AB60);
    result = swift_getWitnessTable(&protocol conformance descriptor for Trend<A>, v3, v0, v1);
    atomic_store(result, &qword_100CABCF8);
  }

  return result;
}

unint64_t sub_1002F33A8()
{
  result = qword_100CA6678;
  if (!qword_100CA6678)
  {
    v3 = type metadata accessor for Location();
    result = swift_getWitnessTable(&protocol conformance descriptor for Location, v3, v0, v1);
    atomic_store(result, &qword_100CA6678);
  }

  return result;
}

uint64_t sub_1002F3408(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 120))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_1002F3448(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1002F34DC(char a1, uint64_t a2)
{
  v4 = type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel(0);
  __chkstk_darwin(v4);
  v37 = &v32[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_10022C350(&qword_100CABDF8, &unk_100A3AD20);
  __chkstk_darwin(v6);
  v8 = &v32[-v7];
  v9 = sub_10022C350(&unk_100CABD90, &qword_100A3AC70);
  __chkstk_darwin(v9 - 8);
  v38 = &v32[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v13 = &v32[-v12];
  __chkstk_darwin(v14);
  v16 = &v32[-v15];
  __chkstk_darwin(v17);
  v19 = &v32[-v18];
  __chkstk_darwin(v20);
  v22 = &v32[-v21];
  v23 = type metadata accessor for DailyForecastRowViewButtonStyle(0);
  v24 = v23;
  if (a1)
  {
    sub_10019147C(a2 + *(v23 + 24), v22, type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel);
    sub_10001B350(v22, 0, 1, v4);
    sub_1001914DC(v22, v19);
    sub_10022C350(&qword_100CABD18, &unk_100A3AC40);
LABEL_11:
    Binding.wrappedValue.setter();
    v27 = &unk_100CABD90;
    v28 = &qword_100A3AC70;
    v29 = v22;
    return sub_100018144(v29, v27, v28);
  }

  v36 = v19;
  v35 = sub_10022C350(&qword_100CABD18, &unk_100A3AC40);
  Binding.wrappedValue.getter();
  sub_10019147C(a2 + *(v24 + 24), v13, type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel);
  sub_10001B350(v13, 0, 1, v4);
  v25 = *(v6 + 48);
  sub_1001914DC(v16, v8);
  sub_1001914DC(v13, &v8[v25]);
  if (sub_100024D10(v8, 1, v4) == 1)
  {
    v34 = a2;
    sub_100018144(v13, &unk_100CABD90, &qword_100A3AC70);
    sub_100018144(v16, &unk_100CABD90, &qword_100A3AC70);
    if (sub_100024D10(&v8[v25], 1, v4) == 1)
    {
      sub_100018144(v8, &unk_100CABD90, &qword_100A3AC70);
LABEL_10:
      sub_10001B350(v22, 1, 1, v4);
      sub_1001914DC(v22, v36);
      goto LABEL_11;
    }
  }

  else
  {
    v26 = v38;
    sub_1001914DC(v8, v38);
    if (sub_100024D10(&v8[v25], 1, v4) != 1)
    {
      v34 = a2;
      v30 = v37;
      sub_10019141C(&v8[v25], v37, type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel);
      v33 = sub_1001D1BB8(v26, v30);
      sub_1001B56D4(v30, type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel);
      sub_100018144(v13, &unk_100CABD90, &qword_100A3AC70);
      sub_100018144(v16, &unk_100CABD90, &qword_100A3AC70);
      sub_1001B56D4(v26, type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel);
      result = sub_100018144(v8, &unk_100CABD90, &qword_100A3AC70);
      if ((v33 & 1) == 0)
      {
        return result;
      }

      goto LABEL_10;
    }

    sub_100018144(v13, &unk_100CABD90, &qword_100A3AC70);
    sub_100018144(v16, &unk_100CABD90, &qword_100A3AC70);
    sub_1001B56D4(v26, type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel);
  }

  v27 = &qword_100CABDF8;
  v28 = &unk_100A3AD20;
  v29 = v8;
  return sub_100018144(v29, v27, v28);
}

void sub_1002F39B0(uint64_t a1)
{
  v2 = type metadata accessor for DailyForecastRowViewButtonStyle(0);
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v2);
  v6 = sub_10022C350(&unk_100CABD90, &qword_100A3AC70);
  __chkstk_darwin(v6 - 8);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = aBlock - v10;
  sub_10019147C(a1 + *(v3 + 32), aBlock - v10, type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel);
  v12 = type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel(0);
  sub_10001B350(v11, 0, 1, v12);
  sub_1001914DC(v11, v8);
  sub_10022C350(&qword_100CABD18, &unk_100A3AC40);
  Binding.wrappedValue.setter();
  sub_100018144(v11, &unk_100CABD90, &qword_100A3AC70);
  PrimitiveButtonStyleConfiguration.trigger()();
  v13 = objc_opt_self();
  sub_10019147C(a1, aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DailyForecastRowViewButtonStyle);
  v14 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v15 = swift_allocObject();
  sub_10019141C(aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for DailyForecastRowViewButtonStyle);
  aBlock[4] = sub_1002F3EB4;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000742F0;
  aBlock[3] = &unk_100C4DF90;
  v16 = _Block_copy(aBlock);

  [v13 setCompletionBlock:v16];
  _Block_release(v16);
}

uint64_t sub_1002F3C64()
{
  v0 = sub_10022C350(&unk_100CABD90, &qword_100A3AC70);
  __chkstk_darwin(v0 - 8);
  v2 = &v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v8 - v4;
  v6 = type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel(0);
  sub_10001B350(v5, 1, 1, v6);
  type metadata accessor for DailyForecastRowViewButtonStyle(0);
  sub_1001914DC(v5, v2);
  sub_10022C350(&qword_100CABD18, &unk_100A3AC40);
  Binding.wrappedValue.setter();
  return sub_100018144(v5, &unk_100CABD90, &qword_100A3AC70);
}

uint64_t sub_1002F3D78(char a1)
{
  v3 = *(type metadata accessor for DailyForecastRowViewButtonStyle(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1002F34DC(a1, v4);
}

void sub_1002F3DE8()
{
  v1 = *(type metadata accessor for DailyForecastRowViewButtonStyle(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  type metadata accessor for PrimitiveButtonStyleConfiguration();

  sub_1002F39B0(v0 + v2);
}

uint64_t sub_1002F3EB4()
{
  type metadata accessor for DailyForecastRowViewButtonStyle(0);

  return sub_1002F3C64();
}

void sub_1002F3F3C(uint64_t a1)
{
  sub_1000077F0();
  if (v1 <= 0x3F)
  {
    sub_1002F3FD0(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1002F3FD0(uint64_t a1)
{
  if (!qword_100CABE70)
  {
    type metadata accessor for LocationComponentCornerRadiusConfiguration(255);
    v1 = type metadata accessor for Environment();
    if (!v2)
    {
      atomic_store(v1, &qword_100CABE70);
    }
  }
}

uint64_t sub_1002F4028()
{
  v1 = OBJC_IVAR____TtC7Weather27PagingContentOffsetsStorage__offsets;
  v2 = sub_10022C350(&qword_100CABFD0, &qword_100A3AE88);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1002F40D8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 41))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002F40F8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 41) = v3;
  return result;
}

uint64_t sub_1002F4130(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    if ((*(a2 + 16) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 16))
    {
      return 0;
    }

    if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  if (*(a1 + 40))
  {
    if ((*(a2 + 40) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 40))
    {
      return 0;
    }

    if (*(a1 + 24) != *(a2 + 24) || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1002F419C()
{
  v1 = sub_10022C350(&qword_100CA3538, &qword_100A2D560);
  v2 = sub_100003810(v1);
  __chkstk_darwin(v2);
  sub_10000C790();
  static Settings.LocationIntelligence.useSignificantLocationsEnabled.getter();
  sub_1000135A0();
  sub_10016F958(v3, v4);
  Updatable.save<A>(setting:value:)();

  v5 = type metadata accessor for TaskPriority();
  sub_10001B350(v0, 1, 1, v5);
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v6;
  sub_1006C0138();
}

uint64_t sub_1002F42F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  sub_10022C350(&qword_100CA3538, &qword_100A2D560);
  v4[6] = swift_task_alloc();
  v5 = type metadata accessor for PredictedLocationsAuthorization();
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v4[9] = *(v6 + 64);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();

  return _swift_task_switch(sub_1002F4404, 0, 0);
}

uint64_t sub_1002F4404()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[12] = Strong;
  if (Strong)
  {
    v2 = Strong[22];
    v3 = Strong[23];
    sub_1000161C0(Strong + 19, v2);
    v4 = swift_task_alloc();
    v0[13] = v4;
    *v4 = v0;
    v4[1] = sub_1002F4534;
    v5 = v0[11];

    return dispatch thunk of PredictedLocationsAuthorizationManagerType.fetchAuthorization()(v5, v2, v3);
  }

  else
  {

    sub_100003B14();

    return v6();
  }
}

uint64_t sub_1002F4534()
{

  return _swift_task_switch(sub_1002F4630, 0, 0);
}

uint64_t sub_1002F4630()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[6];
  v7 = type metadata accessor for TaskPriority();
  sub_10001B350(v6, 1, 1, v7);
  (*(v5 + 16))(v3, v1, v4);
  type metadata accessor for MainActor();

  v8 = static MainActor.shared.getter();
  v9 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 2) = v8;
  *(v10 + 3) = &protocol witness table for MainActor;
  *(v10 + 4) = v2;
  (*(v5 + 32))(&v10[v9], v3, v4);
  sub_1006C03F4();

  (*(v5 + 8))(v1, v4);

  sub_100003B14();

  return v11();
}

uint64_t sub_1002F47C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[7] = a1;
  v5[10] = type metadata accessor for MainAction(0);
  v5[11] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[12] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1002F4894, v7, v6);
}

uint64_t sub_1002F4894()
{
  v1 = *(v0 + 64);

  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 88);
    v4 = *(*(v0 + 64) + 24);

    *v3 = sub_100171FAC();
    type metadata accessor for EnvironmentAction(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    *(v0 + 16) = 0u;
    *(v0 + 48) = 0;
    *(v0 + 32) = 0u;
    sub_10004F034(v3, v0 + 16, v2, v4);
    sub_10002B028(v2);
    sub_1000180EC(v0 + 16, &unk_100CD81B0, &unk_100A3B000);
    sub_1000142B0();
    sub_10004F4C0(v3, v5);
  }

  **(v0 + 56) = v2 == 0;

  sub_100003B14();

  return v6();
}

uint64_t sub_1002F49C0(uint64_t a1)
{
  v3 = type metadata accessor for NotificationsOptInAction(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  sub_100050B70(a1, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NotificationsOptInAction);
  v6 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  sub_100050048(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for NotificationsOptInAction);

  asyncMain(block:)();
}

void sub_1002F4AF8(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  type metadata accessor for MainAction(0);
  sub_1000037E8();
  __chkstk_darwin(v6);
  sub_1000037D8();
  sub_10000C790();
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = *(a1 + 24);
    a2(0);
    sub_100003E0C();
    swift_storeEnumTagMultiPayload();
    type metadata accessor for ViewAction(0);
    sub_100003E0C();
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v11 = 0;
    memset(v10, 0, sizeof(v10));

    sub_10004F034(v3, v10, v7, v8);
    sub_10002B028(v7);
    sub_1000180EC(v10, &unk_100CD81B0, &unk_100A3B000);
    sub_1000142B0();
    sub_10004F4C0(v3, v9);
  }
}

void sub_1002F4C10(uint64_t a1, char a2)
{
  type metadata accessor for MainAction(0);
  sub_1000037E8();
  __chkstk_darwin(v5);
  sub_1000037D8();
  sub_10000C790();
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *(a1 + 24);
    *v2 = a2;
    type metadata accessor for ModalViewAction(0);
    sub_100003E0C();
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v10 = 0;
    memset(v9, 0, sizeof(v9));

    sub_10004F034(v2, v9, v6, v7);
    sub_10002B028(v6);
    sub_1000180EC(v9, &unk_100CD81B0, &unk_100A3B000);
    sub_1000142B0();
    sub_10004F4C0(v2, v8);
  }
}

uint64_t sub_1002F4D10()
{
  v0 = type metadata accessor for NotificationsOptInAction(0);
  __chkstk_darwin(v0);
  v2 = &v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  sub_1002F49C0(v2);
  return sub_10004F4C0(v2, type metadata accessor for NotificationsOptInAction);
}

void sub_1002F4DC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MainAction(0);
  __chkstk_darwin(v4);
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = v10 - v6;
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = *(a1 + 24);
    sub_100050B70(a2, v10 - v6, type metadata accessor for NotificationsOptInAction);
    swift_storeEnumTagMultiPayload();
    v11 = 0;
    memset(v10, 0, sizeof(v10));

    sub_10004F034(v7, v10, v8, v9);
    sub_10002B028(v8);
    sub_1000180EC(v10, &unk_100CD81B0, &unk_100A3B000);
    sub_10004F4C0(v7, type metadata accessor for MainAction);
  }
}

void sub_1002F4EEC(uint64_t a1, char a2)
{
  v4 = type metadata accessor for MainAction(0);
  __chkstk_darwin(v4);
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = *(a1 + 24);
    *v6 = a2;
    type metadata accessor for NotificationsOptInAction(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v10 = 0;
    memset(v9, 0, sizeof(v9));

    sub_10004F034(v6, v9, v7, v8);
    sub_10002B028(v7);
    sub_1000180EC(v9, &unk_100CD81B0, &unk_100A3B000);
    sub_10004F4C0(v6, type metadata accessor for MainAction);
  }
}

uint64_t *sub_1002F5014()
{
  sub_10002B028(v0[2]);
  sub_100006F14(v0 + 4);
  sub_100006F14(v0 + 9);
  sub_100006F14(v0 + 14);
  sub_100006F14(v0 + 19);

  return v0;
}

uint64_t sub_1002F5064()
{
  sub_1002F5014();

  return swift_deallocClassInstance();
}

uint64_t sub_1002F5198()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1002F5240;
  v4 = sub_10001BD10();

  return sub_1002F42F8(v4, v5, v6, v2);
}

uint64_t sub_1002F5240()
{

  sub_100003B14();

  return v0();
}

uint64_t sub_1002F5330()
{
  v2 = type metadata accessor for PredictedLocationsAuthorization();
  sub_100003810(v2);
  v3 = *(v0 + 32);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1002F5484;
  v5 = sub_10001BD10();

  return sub_1002F47C8(v5, v6, v7, v3, v8);
}

void sub_1002F5418()
{
  v1 = type metadata accessor for NotificationsOptInAction(0);
  sub_100003810(v1);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  sub_1002F4DC0(v3, v4);
}

uint64_t sub_1002F5568(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    return *(a1 + 8 * v1 + 24);
  }

  else
  {
    return 0;
  }
}

void sub_1002F55B8(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = (a1 + 40 * v3);
    v6 = *(v4 - 1);
    v5 = *v4;
    v7 = v4[1];
    v8 = v4[2];
    v9 = v4[3];

    v10 = v7;
  }

  else
  {
    v6 = 0;
    v5 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
  }

  *a2 = v6;
  a2[1] = v5;
  a2[2] = v7;
  a2[3] = v8;
  a2[4] = v9;
}

uint64_t sub_1002F563C(uint64_t a1)
{
  if (*(a1 + 16))
  {
  }

  return sub_100003940();
}

uint64_t sub_1002F5700@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = a2(0);
    sub_1000037E8();
    (*(v8 + 16))(a3, a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v6, v7);
    sub_10000E7B0();
    v12 = v7;
  }

  else
  {
    a2(0);
    sub_100003934();
  }

  return sub_10001B350(v9, v10, v11, v12);
}

uint64_t sub_1002F57C0(uint64_t a1)
{
  sub_10051A930();
  v3 = *(*v1 + 16);
  sub_1002789D0(v3);
  v4 = *v1;
  *(*v1 + 16) = v3 + 1;
  type metadata accessor for DetailChartDataElement();
  sub_1000037E8();
  result = (*(v5 + 32))(v4 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v3, a1);
  *v1 = v4;
  return result;
}

id sub_1002F5854()
{
  result = sub_1002F5874();
  qword_100D8FAD8 = result;
  return result;
}

id sub_1002F5874()
{
  v0 = type metadata accessor for Locale();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(NSDateFormatter) init];
  static Locale.autoupdatingCurrent.getter();
  isa = Locale._bridgeToObjectiveC()().super.isa;
  (*(v1 + 8))(v3, v0);
  [v4 setLocale:isa];

  v6 = String._bridgeToObjectiveC()();
  [v4 setLocalizedDateFormatFromTemplate:v6];

  [v4 setTimeStyle:1];
  return v4;
}

uint64_t sub_1002F59C0(uint64_t a1, uint64_t a2)
{
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for DetailChartViewModelFactory.FormattedHoursCacheKey(0);

  return static TimeZone.== infix(_:_:)();
}

uint64_t sub_1002F5A20(uint64_t a1)
{
  type metadata accessor for Date();
  sub_1003071A0(&qword_100CA39C8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for DetailChartViewModelFactory.FormattedHoursCacheKey(0);
  type metadata accessor for TimeZone();
  sub_1003071A0(&qword_100CAC4C8, &type metadata accessor for TimeZone, &protocol conformance descriptor for TimeZone);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_1002F5AF8()
{
  Hasher.init(_seed:)();
  type metadata accessor for Date();
  sub_1003071A0(&qword_100CA39C8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for DetailChartViewModelFactory.FormattedHoursCacheKey(0);
  type metadata accessor for TimeZone();
  sub_1003071A0(&qword_100CAC4C8, &type metadata accessor for TimeZone, &protocol conformance descriptor for TimeZone);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1002F5BE8(uint64_t a1, uint64_t a2)
{
  if ((sub_10074742C(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for DetailChartViewModelFactory.MarkerLabelCacheKey(0);
  if (*(a1 + *(v4 + 20)) != *(a2 + *(v4 + 20)) || *(a1 + *(v4 + 24)) != *(a2 + *(v4 + 24)))
  {
    return 0;
  }

  return static ConditionUnits.== infix(_:_:)();
}

uint64_t sub_1002F5C70(uint64_t a1)
{
  type metadata accessor for DetailChartCondition();
  sub_1003071A0(&qword_100CA39D8, &type metadata accessor for DetailChartCondition, &protocol conformance descriptor for DetailChartCondition);
  dispatch thunk of Hashable.hash(into:)();
  v2 = type metadata accessor for DetailChartViewModelFactory.MarkerLabelCacheKey(0);
  v3 = *(v1 + *(v2 + 20));
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  Hasher._combine(_:)(*&v3);
  Hasher._combine(_:)(*(v1 + *(v2 + 24)));
  type metadata accessor for ConditionUnits();
  sub_1003071A0(&qword_100CAC4B0, &type metadata accessor for ConditionUnits, &protocol conformance descriptor for ConditionUnits);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_1002F5D84(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for Date();
  sub_1003071A0(&qword_100CA39C8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for TimeZone();
  sub_1003071A0(&qword_100CAC4C8, &type metadata accessor for TimeZone, &protocol conformance descriptor for TimeZone);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1002F5EBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExtremaResult();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10022C350(&qword_100CAC1B0, &unk_100A3B140);
  __chkstk_darwin(v8 - 8);
  v10 = &v24 - v9;
  v11 = sub_10022C350(&qword_100CAC4B8, &unk_100A3B410);
  __chkstk_darwin(v11);
  v13 = &v24 - v12;
  if ((sub_10074742C(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v14 = type metadata accessor for DetailChartViewModelFactory.PeakMarkerRequestContext(0);
  if (*(a1 + *(v14 + 20)) != *(a2 + *(v14 + 20)))
  {
    return 0;
  }

  v24 = v14;
  v25 = v5;
  v15 = *(v11 + 48);
  sub_100095588();
  sub_100095588();
  if (sub_100024D10(v13, 1, v4) != 1)
  {
    sub_100095588();
    if (sub_100024D10(&v13[v15], 1, v4) != 1)
    {
      v16 = v25;
      (*(v25 + 32))(v7, &v13[v15], v4);
      sub_1003071A0(&qword_100CAC4C0, &type metadata accessor for ExtremaResult, &protocol conformance descriptor for ExtremaResult);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      v18 = *(v16 + 8);
      v18(v7, v4);
      v18(v10, v4);
      sub_1000180EC(v13, &qword_100CAC1B0, &unk_100A3B140);
      if ((v17 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_10;
    }

    (*(v25 + 8))(v10, v4);
LABEL_8:
    sub_1000180EC(v13, &qword_100CAC4B8, &unk_100A3B410);
    return 0;
  }

  if (sub_100024D10(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_8;
  }

  sub_1000180EC(v13, &qword_100CAC1B0, &unk_100A3B140);
LABEL_10:
  v19 = v24;
  if ((static ConditionUnits.== infix(_:_:)() & 1) == 0 || *(a1 + v19[8]) != *(a2 + v19[8]) || *(a1 + v19[9]) != *(a2 + v19[9]))
  {
    return 0;
  }

  v21 = v19[10];
  v22 = *(a2 + v21);
  if (*(a1 + v21))
  {
    if (v22)
    {

      v23 = static Color.== infix(_:_:)();

      if (v23)
      {
        return 1;
      }
    }
  }

  else if (!v22)
  {
    return 1;
  }

  return 0;
}

void sub_1002F628C(uint64_t a1)
{
  v2 = type metadata accessor for ExtremaResult();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10022C350(&qword_100CAC1B0, &unk_100A3B140);
  __chkstk_darwin(v6 - 8);
  v8 = &v10 - v7;
  type metadata accessor for DetailChartCondition();
  sub_1003071A0(&qword_100CA39D8, &type metadata accessor for DetailChartCondition, &protocol conformance descriptor for DetailChartCondition);
  dispatch thunk of Hashable.hash(into:)();
  v9 = type metadata accessor for DetailChartViewModelFactory.PeakMarkerRequestContext(0);
  Hasher._combine(_:)(*(v1 + v9[5]));
  sub_100095588();
  if (sub_100024D10(v8, 1, v2) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    Hasher._combine(_:)(1u);
    sub_1003071A0(&qword_100CAC4A8, &type metadata accessor for ExtremaResult, &protocol conformance descriptor for ExtremaResult);
    dispatch thunk of Hashable.hash(into:)();
    (*(v3 + 8))(v5, v2);
  }

  type metadata accessor for ConditionUnits();
  sub_1003071A0(&qword_100CAC4B0, &type metadata accessor for ConditionUnits, &protocol conformance descriptor for ConditionUnits);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v1 + v9[8]));
  Hasher._combine(_:)(*(v1 + v9[9]));
  if (*(v1 + v9[10]))
  {
    Hasher._combine(_:)(1u);
    Color.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int sub_1002F6580(void (*a1)(_BYTE *))
{
  Hasher.init(_seed:)();
  a1(v3);
  return Hasher._finalize()();
}

Swift::Int sub_1002F6610(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

void *sub_1002F6658(__int128 *a1, __int128 *a2, __int128 *a3)
{
  v3[17] = 6;
  sub_10022C350(&qword_100CAC3B0, &qword_100A3B330);
  swift_allocObject();
  v3[18] = Cache.init()();
  sub_10022C350(&qword_100CAC3B8, &qword_100A3B338);
  swift_allocObject();
  v3[19] = Cache.init()();
  sub_10022C350(&qword_100CAC3C0, &unk_100A3B340);
  swift_allocObject();
  v3[20] = Cache.init()();
  sub_100013188(a1, (v3 + 2));
  sub_100013188(a2, (v3 + 7));
  sub_100013188(a3, (v3 + 12));
  return v3;
}

uint64_t sub_1002F6748@<X0>(void (*a1)(void)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, int a6@<W5>, int a7@<W6>, char *a8@<X8>, double a9@<D0>, double a10@<D1>)
{
  v12 = v10;
  LODWORD(v2353) = a7;
  LODWORD(v2324) = a6;
  object = a5;
  v2232 = a3;
  v2182 = a2;
  v2274 = a8;
  type metadata accessor for Calendar.Component();
  sub_1000037C4();
  v2077 = v18;
  v2078 = v17;
  __chkstk_darwin(v17);
  sub_1000038E4();
  v2076 = v19;
  v20 = sub_10022C350(&qword_100CAC1B0, &unk_100A3B140);
  sub_100003810(v20);
  sub_100003828();
  __chkstk_darwin(v21);
  sub_1000039BC();
  v2089 = v22;
  sub_1000038CC();
  type metadata accessor for HourWeather.SecondValueUseCase();
  sub_1000037C4();
  v2057 = v24;
  v2058 = v23;
  __chkstk_darwin(v23);
  sub_1000038E4();
  v2056 = v25;
  sub_1000038CC();
  type metadata accessor for CurrentWeather();
  sub_1000037C4();
  v2053 = v27;
  v2054 = v26;
  __chkstk_darwin(v26);
  sub_1000038E4();
  v2055 = v28;
  v29 = sub_10022C350(&qword_100CAB9B0, &qword_100A3A820);
  sub_100003810(v29);
  sub_100003828();
  __chkstk_darwin(v30);
  sub_1000039BC();
  v2065 = v31;
  sub_1000038CC();
  type metadata accessor for WeatherValueCalculationContext();
  sub_1000037C4();
  v2059 = v33;
  v2060 = v32;
  __chkstk_darwin(v32);
  sub_1000038E4();
  v2067 = v34;
  v35 = sub_10022C350(&qword_100CAC3C8, &unk_100A3B350);
  sub_100003810(v35);
  sub_100003828();
  __chkstk_darwin(v36);
  sub_1000039BC();
  v2062 = v37;
  sub_1000038CC();
  v2069 = type metadata accessor for HourWeather();
  sub_1000037C4();
  v2066 = v38;
  __chkstk_darwin(v39);
  sub_100003848();
  v2064 = v40;
  sub_10000386C();
  __chkstk_darwin(v41);
  sub_10000E70C();
  v2068 = v42;
  sub_1000038CC();
  type metadata accessor for DateInterval();
  sub_1000037C4();
  v2073 = v44;
  v2074 = v43;
  __chkstk_darwin(v43);
  sub_1000038E4();
  v2072 = v45;
  v2212 = sub_10022C350(&qword_100CAC3D0, &unk_100AA0D60);
  sub_1000037C4();
  v2211 = v46;
  __chkstk_darwin(v47);
  sub_100003848();
  v2209 = v48;
  sub_10000386C();
  __chkstk_darwin(v49);
  sub_10000E70C();
  v2210 = v50;
  v51 = sub_1000038CC();
  v2291 = type metadata accessor for ChartViewModel(v51);
  sub_1000037E8();
  __chkstk_darwin(v52);
  sub_100003848();
  v2095 = v53;
  sub_10000386C();
  __chkstk_darwin(v54);
  sub_100003878();
  v2136 = v55;
  sub_10000386C();
  __chkstk_darwin(v56);
  sub_100003878();
  v2207 = v57;
  sub_10000386C();
  __chkstk_darwin(v58);
  sub_10000E70C();
  v2271 = v59;
  v60 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  v61 = sub_100003810(v60);
  __chkstk_darwin(v61);
  sub_100003848();
  v2088 = v62;
  sub_10000386C();
  __chkstk_darwin(v63);
  sub_100003878();
  v2087 = v64;
  sub_10000386C();
  __chkstk_darwin(v65);
  sub_100003878();
  v2084 = v66;
  sub_10000386C();
  __chkstk_darwin(v67);
  sub_100003878();
  v2083 = v68;
  sub_10000386C();
  __chkstk_darwin(v69);
  sub_100003878();
  v2103 = v70;
  sub_10000386C();
  __chkstk_darwin(v71);
  sub_100003878();
  v2102 = v72;
  sub_10000386C();
  __chkstk_darwin(v73);
  sub_100003878();
  v2200 = v74;
  sub_10000386C();
  __chkstk_darwin(v75);
  sub_100003878();
  v2190 = v76;
  sub_10000386C();
  __chkstk_darwin(v77);
  sub_100003878();
  v2189 = v78;
  sub_10000386C();
  __chkstk_darwin(v79);
  sub_100003878();
  v2188 = v80;
  sub_10000386C();
  __chkstk_darwin(v81);
  sub_100003878();
  v2239 = v82;
  sub_10000386C();
  __chkstk_darwin(v83);
  sub_10000E70C();
  v2238 = v84;
  sub_1000038CC();
  v2354 = type metadata accessor for DetailChartDataElement();
  sub_1000037C4();
  v2352 = v85;
  __chkstk_darwin(v86);
  sub_100003848();
  v2061 = v87;
  sub_10000386C();
  __chkstk_darwin(v88);
  sub_100003878();
  v2394._object = v89;
  sub_10000386C();
  __chkstk_darwin(v90);
  sub_100003878();
  v2063 = v91;
  sub_10000386C();
  __chkstk_darwin(v92);
  sub_100003878();
  v2075 = v93;
  sub_10000386C();
  __chkstk_darwin(v94);
  sub_100003878();
  v2191 = v95;
  sub_10000386C();
  __chkstk_darwin(v96);
  sub_100003878();
  v2181 = v97;
  sub_10000386C();
  __chkstk_darwin(v98);
  sub_100003878();
  v2192 = v99;
  sub_10000386C();
  __chkstk_darwin(v100);
  sub_100003878();
  v2179 = v101;
  sub_10000386C();
  __chkstk_darwin(v102);
  sub_100003878();
  v2214 = v103;
  sub_10000386C();
  __chkstk_darwin(v104);
  sub_100003878();
  v2201 = v105;
  sub_10000386C();
  __chkstk_darwin(v106);
  sub_100003878();
  v2215 = v107;
  sub_10000386C();
  __chkstk_darwin(v108);
  sub_100003878();
  v2199 = v109;
  sub_10000386C();
  __chkstk_darwin(v110);
  sub_100003878();
  v2256 = v111;
  sub_10000386C();
  __chkstk_darwin(v112);
  sub_100003878();
  v2233 = v113;
  sub_10000386C();
  __chkstk_darwin(v114);
  sub_100003878();
  v2351 = v115;
  sub_10000386C();
  __chkstk_darwin(v116);
  sub_100003878();
  v2348 = v117;
  sub_10000386C();
  __chkstk_darwin(v118);
  sub_100003878();
  *&v2345 = v119;
  sub_10000386C();
  __chkstk_darwin(v120);
  sub_100003878();
  *&v2344 = v121;
  sub_10000386C();
  __chkstk_darwin(v122);
  sub_100003878();
  v2349 = v123;
  sub_10000386C();
  __chkstk_darwin(v124);
  sub_100003878();
  *&v2347 = v125;
  sub_10000386C();
  __chkstk_darwin(v126);
  sub_100003878();
  *&v2350 = v127;
  sub_10000386C();
  __chkstk_darwin(v128);
  sub_10000E70C();
  v2346 = v129;
  v130 = sub_10022C350(&qword_100CAC3D8, &qword_100A6EF60);
  v131 = sub_100003810(v130);
  __chkstk_darwin(v131);
  sub_100003848();
  v2105 = v132;
  sub_10000386C();
  __chkstk_darwin(v133);
  sub_100003878();
  v2208 = v134;
  sub_10000386C();
  __chkstk_darwin(v135);
  sub_10000E70C();
  v2251 = v136;
  sub_1000038CC();
  v2250 = type metadata accessor for Color.RGBColorSpace();
  sub_1000037C4();
  v2248 = v137;
  __chkstk_darwin(v138);
  sub_1000038E4();
  v2249 = v139;
  sub_1000038CC();
  v2332 = type metadata accessor for ChartPastDataTreatment();
  sub_1000037C4();
  v2323 = v140;
  __chkstk_darwin(v141);
  sub_100003848();
  v2094 = v142;
  sub_10000386C();
  __chkstk_darwin(v143);
  sub_100003878();
  v2119 = v144;
  sub_10000386C();
  __chkstk_darwin(v145);
  sub_100003878();
  v2135 = v146;
  sub_10000386C();
  __chkstk_darwin(v147);
  sub_100003878();
  v2153 = v148;
  sub_10000386C();
  __chkstk_darwin(v149);
  sub_100003878();
  v2206 = v150;
  sub_10000386C();
  __chkstk_darwin(v151);
  sub_100003878();
  v2270 = v152;
  sub_10000386C();
  __chkstk_darwin(v153);
  sub_100003878();
  v2269 = v154;
  sub_10000386C();
  __chkstk_darwin(v155);
  sub_10000E70C();
  v2223 = v156;
  v157 = sub_1000038CC();
  v158 = type metadata accessor for ChartViewModel.Background(v157);
  v159 = sub_100003810(v158);
  __chkstk_darwin(v159);
  sub_100003848();
  v2118 = v160;
  sub_10000386C();
  __chkstk_darwin(v161);
  sub_100003878();
  v2093 = v162;
  sub_10000386C();
  __chkstk_darwin(v163);
  sub_100003878();
  v2152 = v164;
  sub_10000386C();
  __chkstk_darwin(v165);
  sub_100003878();
  v2134 = v166;
  sub_10000386C();
  __chkstk_darwin(v167);
  sub_100003878();
  v2205 = v168;
  sub_10000386C();
  __chkstk_darwin(v169);
  sub_100003878();
  v2305 = v170;
  sub_10000386C();
  __chkstk_darwin(v171);
  sub_100003878();
  v2268 = v172;
  sub_10000386C();
  __chkstk_darwin(v173);
  sub_10000E70C();
  v2220 = v174;
  sub_1000038CC();
  v2289 = type metadata accessor for ConditionUnits();
  sub_1000037C4();
  v2288 = v175;
  __chkstk_darwin(v176);
  sub_10000FBD0();
  v2081 = v177;
  sub_1000E1390();
  __chkstk_darwin(v178);
  sub_10000E70C();
  v2101 = v179;
  sub_1000E1390();
  __chkstk_darwin(v180);
  sub_10000E70C();
  v2187 = v181;
  sub_1000E1390();
  __chkstk_darwin(v182);
  sub_10000E70C();
  v2242 = v183;
  v2281 = v184;
  __chkstk_darwin(v185);
  sub_10000E70C();
  v2221 = v186;
  v187 = sub_1000038CC();
  v188 = type metadata accessor for ConditionDetailChartDataInput(v187);
  sub_1000037C4();
  v2279 = v189;
  __chkstk_darwin(v190);
  sub_10000FBD0();
  v2080 = v191;
  sub_1000E1390();
  __chkstk_darwin(v192);
  sub_10000E70C();
  v2100 = v193;
  sub_1000E1390();
  __chkstk_darwin(v194);
  sub_10000E70C();
  v2186 = v195;
  sub_1000E1390();
  __chkstk_darwin(v196);
  sub_10000E70C();
  v2241 = v197;
  v2280 = v198;
  __chkstk_darwin(v199);
  sub_10000E70C();
  v2219 = v200;
  sub_1000038CC();
  v2331 = type metadata accessor for ChartPeakMarkStyle();
  sub_1000037C4();
  v2313 = v201;
  __chkstk_darwin(v202);
  sub_100003848();
  v2116 = v203;
  sub_10000386C();
  __chkstk_darwin(v204);
  sub_100003878();
  v2092 = v205;
  sub_10000386C();
  __chkstk_darwin(v206);
  sub_100003878();
  v2150 = v207;
  sub_10000386C();
  __chkstk_darwin(v208);
  sub_100003878();
  v2133 = v209;
  sub_10000386C();
  __chkstk_darwin(v210);
  sub_100003878();
  v2204 = v211;
  sub_10000386C();
  __chkstk_darwin(v212);
  sub_100003878();
  v2303 = v213;
  sub_10000386C();
  __chkstk_darwin(v214);
  sub_100003878();
  v2267 = v215;
  sub_10000386C();
  __chkstk_darwin(v216);
  sub_10000E70C();
  v2224 = v217;
  v218 = sub_1000038CC();
  v219 = type metadata accessor for ChartDateStep(v218);
  v220 = sub_100003810(v219);
  __chkstk_darwin(v220);
  sub_100003848();
  v2115 = v221;
  sub_10000386C();
  __chkstk_darwin(v222);
  sub_100003878();
  v2117 = v223;
  sub_10000386C();
  __chkstk_darwin(v224);
  sub_100003878();
  v2149 = v225;
  sub_10000386C();
  __chkstk_darwin(v226);
  sub_100003878();
  v2151 = v227;
  sub_10000386C();
  __chkstk_darwin(v228);
  sub_100003878();
  v2236 = v229;
  sub_10000386C();
  __chkstk_darwin(v230);
  sub_100003878();
  v2231 = v231;
  sub_10000386C();
  __chkstk_darwin(v232);
  sub_100003878();
  v2302 = v233;
  sub_10000386C();
  __chkstk_darwin(v234);
  sub_100003878();
  v2304 = v235;
  sub_10000386C();
  __chkstk_darwin(v236);
  sub_10000E70C();
  v2198 = v237;
  sub_1000038CC();
  v2338 = type metadata accessor for ChartKind();
  sub_1000037C4();
  v2327 = v238;
  __chkstk_darwin(v239);
  sub_100003848();
  v2114 = v240;
  sub_10000386C();
  __chkstk_darwin(v241);
  sub_100003878();
  v2124 = v242;
  sub_10000386C();
  __chkstk_darwin(v243);
  sub_100003878();
  v2148 = v244;
  sub_10000386C();
  __chkstk_darwin(v245);
  sub_100003878();
  v2156 = v246;
  sub_10000386C();
  __chkstk_darwin(v247);
  sub_100003878();
  v2160 = v248;
  sub_10000386C();
  __chkstk_darwin(v249);
  sub_100003878();
  v2247 = v250;
  sub_10000386C();
  __chkstk_darwin(v251);
  sub_100003878();
  v2230 = v252;
  sub_10000386C();
  __chkstk_darwin(v253);
  sub_100003878();
  v2301 = v254;
  sub_10000386C();
  __chkstk_darwin(v255);
  sub_100003878();
  v2308 = v256;
  sub_10000386C();
  __chkstk_darwin(v257);
  sub_10000E70C();
  v2196 = v258;
  v259 = sub_10022C350(&qword_100CAC3E0, &qword_100A3B360);
  sub_100003810(v259);
  sub_100003828();
  __chkstk_darwin(v260);
  sub_1000039BC();
  v2263 = v261;
  sub_1000038CC();
  v2265 = type metadata accessor for ChartLineColor();
  sub_1000037C4();
  v2261 = v262;
  __chkstk_darwin(v263);
  sub_1000038E4();
  v2262 = v264;
  sub_1000038CC();
  v2314 = type metadata accessor for ChartLineStyle();
  sub_1000037C4();
  v2315 = v265;
  __chkstk_darwin(v266);
  sub_100003848();
  v2130 = v267;
  sub_10000386C();
  __chkstk_darwin(v268);
  sub_100003878();
  v2097 = v269;
  sub_10000386C();
  __chkstk_darwin(v270);
  sub_100003878();
  v2126 = v271;
  sub_10000386C();
  __chkstk_darwin(v272);
  sub_100003878();
  v2138 = v273;
  sub_10000386C();
  __chkstk_darwin(v274);
  sub_100003878();
  v2159 = v275;
  sub_10000386C();
  __chkstk_darwin(v276);
  sub_100003878();
  v2246 = v277;
  sub_10000386C();
  __chkstk_darwin(v278);
  sub_100003878();
  v2277 = v279;
  sub_10000386C();
  __chkstk_darwin(v280);
  sub_100003878();
  v2171 = v281;
  sub_10000386C();
  __chkstk_darwin(v282);
  sub_100003878();
  v2172 = v283;
  sub_10000386C();
  __chkstk_darwin(v284);
  sub_10000E70C();
  v2183 = v285;
  sub_1000038CC();
  v286 = type metadata accessor for TemperatureScaleConfiguration.Gradient();
  v287 = sub_100003810(v286);
  __chkstk_darwin(v287);
  sub_1000038E4();
  v2176 = v288;
  sub_1000038CC();
  v2326 = type metadata accessor for DetailChartGradientModel();
  sub_1000037C4();
  v2322 = v289;
  __chkstk_darwin(v290);
  sub_100003848();
  v2129 = v291;
  sub_10000386C();
  __chkstk_darwin(v292);
  sub_100003878();
  v2125 = v293;
  sub_10000386C();
  __chkstk_darwin(v294);
  sub_100003878();
  v2137 = v295;
  sub_10000386C();
  __chkstk_darwin(v296);
  sub_100003878();
  v2162 = v297;
  sub_10000386C();
  __chkstk_darwin(v298);
  sub_100003878();
  v2245 = v299;
  sub_10000386C();
  __chkstk_darwin(v300);
  sub_100003878();
  v2203 = v301;
  sub_10000386C();
  __chkstk_darwin(v302);
  sub_100003878();
  v2276 = v303;
  sub_10000386C();
  __chkstk_darwin(v304);
  sub_100003878();
  v2164 = v305;
  sub_10000386C();
  __chkstk_darwin(v306);
  sub_100003878();
  v2169 = v307;
  sub_10000386C();
  __chkstk_darwin(v308);
  sub_100003878();
  v2166 = v309;
  sub_10000386C();
  __chkstk_darwin(v310);
  sub_10000E70C();
  v2284 = v311;
  v312 = sub_1000038CC();
  v2180 = type metadata accessor for DetailChartViewModelFactory.PeakMarkerRequestContext(v312);
  sub_1000037E8();
  __chkstk_darwin(v313);
  sub_100003848();
  v2128 = v314;
  sub_10000386C();
  __chkstk_darwin(v315);
  sub_100003878();
  v2123 = v316;
  sub_10000386C();
  __chkstk_darwin(v317);
  sub_100003878();
  v2161 = v318;
  sub_10000386C();
  __chkstk_darwin(v319);
  sub_100003878();
  v2163 = v320;
  sub_10000386C();
  __chkstk_darwin(v321);
  sub_10000E70C();
  v2193 = v322;
  sub_1000038CC();
  v2218 = type metadata accessor for FloatingPointRoundingRule();
  sub_1000037C4();
  v2217 = v323;
  __chkstk_darwin(v324);
  sub_1000038E4();
  v2216 = v325;
  sub_1000038CC();
  v2175 = type metadata accessor for AppConfiguration();
  sub_1000037C4();
  v2174 = v326;
  __chkstk_darwin(v327);
  sub_1000038E4();
  v2173 = v328;
  sub_1000038CC();
  v2168 = type metadata accessor for TemperatureScaleConfiguration();
  sub_1000037C4();
  v2167 = v329;
  __chkstk_darwin(v330);
  sub_100003848();
  v2170 = v331;
  sub_10000386C();
  __chkstk_darwin(v332);
  sub_10000E70C();
  v2194 = v333;
  sub_1000038CC();
  v2312 = type metadata accessor for DetailChartCondition();
  sub_1000037C4();
  v2325 = v334;
  __chkstk_darwin(v335);
  sub_100003848();
  v2286 = v336;
  sub_10000386C();
  __chkstk_darwin(v337);
  sub_10000E70C();
  v2285 = v338;
  sub_1000038CC();
  v2342 = type metadata accessor for ChartDarkeningScrim();
  sub_1000037C4();
  v2328 = v339;
  __chkstk_darwin(v340);
  sub_100003848();
  v2112 = v341;
  sub_10000386C();
  __chkstk_darwin(v342);
  sub_100003878();
  v2113 = v343;
  sub_10000386C();
  __chkstk_darwin(v344);
  sub_100003878();
  v2146 = v345;
  sub_10000386C();
  __chkstk_darwin(v346);
  sub_100003878();
  v2147 = v347;
  sub_10000386C();
  __chkstk_darwin(v348);
  sub_100003878();
  v2235 = v349;
  sub_10000386C();
  __chkstk_darwin(v350);
  sub_100003878();
  v2229 = v351;
  sub_10000386C();
  __chkstk_darwin(v352);
  sub_100003878();
  v2299 = v353;
  sub_10000386C();
  __chkstk_darwin(v354);
  sub_100003878();
  v2300 = v355;
  sub_10000386C();
  __chkstk_darwin(v356);
  sub_100003878();
  v2257 = v357;
  sub_10000386C();
  __chkstk_darwin(v358);
  sub_10000E70C();
  v2339 = v359;
  sub_1000038CC();
  v2318 = type metadata accessor for ChartLineStrokeStyle();
  sub_1000037C4();
  v2317 = v360;
  __chkstk_darwin(v361);
  sub_100003848();
  v2106 = v362;
  sub_10000386C();
  __chkstk_darwin(v363);
  sub_100003878();
  v2264 = v364;
  sub_10000386C();
  __chkstk_darwin(v365);
  v367 = &v2394._object - v366;
  v2310 = type metadata accessor for TimeZone();
  sub_1000037C4();
  v2311 = v368;
  __chkstk_darwin(v369);
  sub_1000038E4();
  v2252 = v370;
  sub_1000038CC();
  v2290 = type metadata accessor for DetailChartDataElement.ValueLabel();
  sub_1000037C4();
  v2287 = v371;
  __chkstk_darwin(v372);
  sub_1000038E4();
  v2253 = v373;
  sub_1000038CC();
  v2337 = type metadata accessor for ChartViewModelInterpolationMode();
  sub_1000037C4();
  v2316 = v374;
  __chkstk_darwin(v375);
  sub_100003848();
  v2091 = v376;
  sub_10000386C();
  __chkstk_darwin(v377);
  sub_100003878();
  v2111 = v378;
  sub_10000386C();
  __chkstk_darwin(v379);
  sub_100003878();
  v2132 = v380;
  sub_10000386C();
  __chkstk_darwin(v381);
  sub_100003878();
  v2145 = v382;
  sub_10000386C();
  __chkstk_darwin(v383);
  sub_100003878();
  v2202 = v384;
  sub_10000386C();
  __chkstk_darwin(v385);
  sub_100003878();
  v2266 = v386;
  sub_10000386C();
  __chkstk_darwin(v387);
  sub_100003878();
  v2298 = v388;
  sub_10000386C();
  __chkstk_darwin(v389);
  sub_10000E70C();
  v2278 = v390;
  v391 = sub_10022C350(&qword_100CAC3E8, &qword_100A40F90);
  sub_100003810(v391);
  sub_100003828();
  __chkstk_darwin(v392);
  sub_1000039BC();
  countAndFlagsBits = v393;
  v394 = sub_10022C350(&qword_100CAB930, &qword_100A3A7C0);
  v395 = sub_100003810(v394);
  __chkstk_darwin(v395);
  sub_100003848();
  v2070 = v396;
  sub_10000386C();
  __chkstk_darwin(v397);
  sub_100003878();
  v2086 = v398;
  sub_10000386C();
  __chkstk_darwin(v399);
  sub_100003878();
  v2085 = v400;
  sub_10000386C();
  __chkstk_darwin(v401);
  sub_100003878();
  v2082 = v402;
  sub_10000386C();
  __chkstk_darwin(v403);
  sub_100003878();
  v2079 = v404;
  sub_10000386C();
  __chkstk_darwin(v405);
  sub_100003878();
  v2109 = v406;
  sub_10000386C();
  __chkstk_darwin(v407);
  sub_100003878();
  v2110 = v408;
  sub_10000386C();
  __chkstk_darwin(v409);
  sub_100003878();
  v2099 = v410;
  sub_10000386C();
  __chkstk_darwin(v411);
  sub_100003878();
  v2098 = v412;
  sub_10000386C();
  __chkstk_darwin(v413);
  sub_100003878();
  v2143 = v414;
  sub_10000386C();
  __chkstk_darwin(v415);
  sub_100003878();
  v2144 = v416;
  sub_10000386C();
  __chkstk_darwin(v417);
  sub_100003878();
  v2234 = v418;
  sub_10000386C();
  __chkstk_darwin(v419);
  sub_100003878();
  v2185 = v420;
  sub_10000386C();
  __chkstk_darwin(v421);
  sub_100003878();
  v2184 = v422;
  sub_10000386C();
  __chkstk_darwin(v423);
  sub_100003878();
  v2228 = v424;
  sub_10000386C();
  __chkstk_darwin(v425);
  sub_100003878();
  v2237 = v426;
  sub_10000386C();
  __chkstk_darwin(v427);
  sub_100003878();
  v2240 = v428;
  sub_10000386C();
  __chkstk_darwin(v429);
  sub_100003878();
  v2296 = v430;
  sub_10000386C();
  __chkstk_darwin(v431);
  sub_100003878();
  v2297 = v432;
  sub_10000386C();
  __chkstk_darwin(v433);
  sub_100003878();
  v2197 = v434;
  sub_10000386C();
  __chkstk_darwin(v435);
  v437 = &v2394._object - v436;
  v2341 = type metadata accessor for DetailChartExtrema();
  sub_1000037C4();
  v2321 = v438;
  __chkstk_darwin(v439);
  sub_100003848();
  v2108 = v440;
  sub_10000386C();
  __chkstk_darwin(v441);
  sub_100003878();
  v2122 = v442;
  sub_10000386C();
  __chkstk_darwin(v443);
  sub_100003878();
  v2142 = v444;
  sub_10000386C();
  __chkstk_darwin(v445);
  sub_100003878();
  v2155 = v446;
  sub_10000386C();
  __chkstk_darwin(v447);
  sub_100003878();
  v2158 = v448;
  sub_10000386C();
  __chkstk_darwin(v449);
  sub_100003878();
  v2244 = v450;
  sub_10000386C();
  __chkstk_darwin(v451);
  sub_100003878();
  v2227 = v452;
  sub_10000386C();
  __chkstk_darwin(v453);
  sub_100003878();
  v2295 = v454;
  sub_10000386C();
  __chkstk_darwin(v455);
  sub_100003878();
  v2307 = v456;
  sub_10000386C();
  __chkstk_darwin(v457);
  sub_100003878();
  v2195 = v458;
  sub_10000386C();
  __chkstk_darwin(v459);
  v461 = &v2394._object - v460;
  v2283 = type metadata accessor for Calendar();
  sub_1000037C4();
  v2282 = v462;
  __chkstk_darwin(v463);
  sub_100003848();
  v2165 = v464;
  sub_10000386C();
  __chkstk_darwin(v465);
  v467 = &v2394._object - v466;
  v2343 = type metadata accessor for Date();
  sub_1000037C4();
  v2336 = v468;
  __chkstk_darwin(v469);
  sub_100003848();
  v2104 = v470;
  sub_10000386C();
  __chkstk_darwin(v471);
  sub_100003878();
  v2071 = v472;
  sub_10000386C();
  __chkstk_darwin(v473);
  sub_100003878();
  v2090 = v474;
  sub_10000386C();
  __chkstk_darwin(v475);
  sub_100003878();
  v2127 = v476;
  sub_10000386C();
  __chkstk_darwin(v477);
  sub_100003878();
  v2139 = v478;
  sub_10000386C();
  __chkstk_darwin(v479);
  sub_100003878();
  v2096 = v480;
  sub_10000386C();
  __chkstk_darwin(v481);
  sub_100003878();
  v2120 = v482;
  sub_10000386C();
  __chkstk_darwin(v483);
  sub_100003878();
  v2107 = v484;
  sub_10000386C();
  __chkstk_darwin(v485);
  sub_100003878();
  v2121 = v486;
  sub_10000386C();
  __chkstk_darwin(v487);
  sub_100003878();
  v2131 = v488;
  sub_10000386C();
  __chkstk_darwin(v489);
  sub_100003878();
  v2140 = v490;
  sub_10000386C();
  __chkstk_darwin(v491);
  sub_100003878();
  v2141 = v492;
  sub_10000386C();
  __chkstk_darwin(v493);
  sub_100003878();
  v2154 = v494;
  sub_10000386C();
  __chkstk_darwin(v495);
  sub_100003878();
  v2157 = v496;
  sub_10000386C();
  __chkstk_darwin(v497);
  sub_100003878();
  v2243 = v498;
  sub_10000386C();
  __chkstk_darwin(v499);
  sub_100003878();
  v2222 = v500;
  sub_10000386C();
  __chkstk_darwin(v501);
  sub_100003878();
  v2225 = v502;
  sub_10000386C();
  __chkstk_darwin(v503);
  sub_100003878();
  v2226 = v504;
  sub_10000386C();
  __chkstk_darwin(v505);
  sub_100003878();
  v2260 = v506;
  sub_10000386C();
  __chkstk_darwin(v507);
  sub_100003878();
  v2293 = v508;
  sub_10000386C();
  __chkstk_darwin(v509);
  sub_100003878();
  v2294 = v510;
  sub_10000386C();
  __chkstk_darwin(v511);
  sub_100003878();
  v2306 = v512;
  sub_10000386C();
  __chkstk_darwin(v513);
  sub_100003878();
  v2254 = v514;
  sub_10000386C();
  __chkstk_darwin(v515);
  sub_100003878();
  v2258 = v516;
  sub_10000386C();
  v518 = __chkstk_darwin(v517);
  v520 = *(v519 + 16);
  v2309 = &v2394._object - v521;
  v2335 = (v519 + 16);
  v2334 = v520;
  v520(v518);
  v2292 = v188[10];
  static Calendar.currentCalendar(with:)();
  v2375 = 0;
  v522 = 1;
  v2376 = 1;
  v2373 = 0;
  v2374 = 1;
  v2371 = 0;
  v2372 = 1;
  v2369 = 0;
  v2370 = 1;
  v2367 = 0;
  v2368 = 1;
  v2365 = 0;
  v2366 = 1;
  v523 = *(a1 + v188[11]);
  v2275 = v467;
  v2355[2] = v467;
  v2255 = v12;
  v2355[3] = v12;
  v2355[4] = a1;
  v2319 = a4;
  v2355[5] = a4;
  *&v2355[6] = a9;
  *&v2355[7] = a10;
  v2356 = v2353;
  v2357 = &v2375;
  v2358 = &v2373;
  v2359 = &v2371;
  v2360 = &v2369;
  v2361 = &v2367;
  v2362 = &v2365;
  v2213 = v523;
  sub_1008EED38(sub_100309534, v2355, v523);
  v525 = v524;
  v2177 = 0;
  LOBYTE(v2052) = v2366;
  v2391._object = v2365;
  LOBYTE(v2051) = v2368;
  v2050 = v2367;
  v2320 = v461;
  DetailChartExtrema.init(minValue:maxValue:minSecondValue:maxSecondValue:minThirdValue:maxThirdValue:)();
  v2340 = v188;
  v526 = *(a1 + v188[9]);
  v2333 = a1;
  v2353 = v525;
  v2259 = v526;
  v2330 = v367;
  v2329 = v437;
  if (v526 == 1)
  {
    if (v2324)
    {
      v527 = v2255[11];
      v2324 = sub_1000161C0(v2255 + 7, v2255[10]);
      v528 = v2340;
      v529 = v2333;
      (*(v2316 + 16))(v2278, v2333 + *(v2340 + 56), v2337);
      v530 = countAndFlagsBits;
      a1 = v529;
      MidpointInterpolator.InterpolationMode.init(_:)();
      v2391._object = v527;
      v525 = v2353;
      dispatch thunk of CurrentMarkerValueCalculatorType.value(for:hourlyWeather:currentWeather:dayWeather:units:timeZone:maxRange:interpolationMode:)();
      v11 = v531;
      sub_1000180EC(v530, &qword_100CAC3E8, &qword_100A40F90);
    }

    else
    {
      v11 = *&object;
      a1 = v2333;
      v528 = v2340;
    }

    v532 = v2290;
    v533 = v2287;
    sub_10011C13C(*(v528 + 24));
    v2324 = Double.chartValueAccessibilityDescription(for:units:)();
    v2290 = v534;
    v535 = v2343;
    sub_100087D78();
    v536();
    Double.clamped(to:)();
    a9 = v537;
    v538 = v2253;
    *v2253 = 0.0;
    v538[1] = -2.68156159e154;
    (v533)[13](v538, enum case for DetailChartDataElement.ValueLabel.text(_:), v532);
    CurrentWeather.date.getter();
    static TimeZone.current.getter();
    Date.formattedHours(timeZone:forAccessibility:)();
    v461 = v539;
    v540 = sub_1000D3D24();
    v541(v540, v2310);
    v542 = sub_1000B7B80();
    v543(v542, v535);
    v2391._object = 0;
    v2052 = 0;
    v2051 = v2290;
    v2050 = v2324;
    v544 = v2329;
    DetailChartDataElement.init(date:value:secondValue:thirdValue:valueLabel:dateLabel:accessibilityDateString:accessibilityValueDescription:color:textColor:)();
    v522 = 0;
    v367 = v2330;
    v526 = v2259;
    v437 = v544;
  }

  sub_10001B350(v437, v522, 1, v2354);
  sub_100302DAC(a1, v367);
  v2363[0] = 0;
  sub_1003071A0(&qword_100CAC3F0, &type metadata accessor for ChartDarkeningScrim, &protocol conformance descriptor for ChartDarkeningScrim);
  dispatch thunk of OptionSet.init(rawValue:)();
  if (!v526)
  {
    static ChartDarkeningScrim.dimmingEffect.getter();
    sub_1008B52C0();
    v545 = sub_1000B7B80();
    v546(v545, v2342);
  }

  sub_100040CA8();
  v2287 = objc_opt_self();
  v547 = [v2287 mainBundle];
  v2391._object = v461;
  sub_10003C338();
  v548._countAndFlagsBits = 1701669204;
  v548._object = 0xE400000000000000;
  v552 = NSLocalizedString(_:tableName:bundle:value:comment:)(v549, v550, v551, v548, v2377);

  v553 = v2325;
  v555 = v2325 + 16;
  v554 = *(v2325 + 2);
  v2324 = *(v2340 + 24);
  v556 = a1 + v2324;
  v557 = v2285;
  v558 = v2312;
  v2290 = v554;
  (v554)(v2285, v556, v2312);
  v559 = (*(v553 + 88))(v557, v558);
  countAndFlagsBits = v552._countAndFlagsBits;
  object = v552._object;
  if (v559 != enum case for DetailChartCondition.humidity(_:))
  {
    v605 = v559;
    v2178 = v555;
    if (v559 == enum case for DetailChartCondition.pressure(_:))
    {
      v568 = sub_1003049D0(v2319);
      sub_10022C350(&qword_100CAC3F8, &qword_100A3B368);
      v607 = swift_allocObject();
      v2350 = xmmword_100A2D320;
      *(v607 + 16) = xmmword_100A2D320;
      static Color.purple.getter();
      Color.opacity(_:)();
      sub_100030240();

      v608 = Gradient.Stop.init(color:location:)();
      sub_1000B90CC(v608, v609);
      static Color.purple.getter();
      *(v607 + 48) = Gradient.Stop.init(color:location:)();
      *(v607 + 56) = v610;
      v2349 = Gradient.init(stops:)();
      type metadata accessor for PressureFormatter();
      v611 = v2209;
      static PressureFormatter.minPressure.getter();
      v612 = ConditionUnits.pressure.getter();
      v613 = v2210;
      v614 = v2212;
      Measurement<>.converted(to:)();

      v615 = *(v2211 + 8);
      v615(v611, v614);
      Measurement.value.getter();
      v615(v613, v614);
      static PressureFormatter.maxPressure.getter();
      v616 = ConditionUnits.pressure.getter();
      Measurement<>.converted(to:)();

      v615(v611, v614);
      Measurement.value.getter();
      v615(v613, v614);
      v617 = v2245;
      sub_100309F94();
      DetailChartGradientModel.init(gradient:startValue:endValue:)();
      sub_1000C8BB0();
      sub_100037FA8();
      v618();
      if (qword_100CA2198 == -1)
      {
        goto LABEL_21;
      }

      goto LABEL_603;
    }

    v604 = &off_100A2C000;
    if (v559 == enum case for DetailChartCondition.precipitationTotal(_:))
    {

      sub_100304600(1uLL, v525);
      sub_1000370D0();
      v633 = v632;
      v635 = v634;
      v2351 = sub_10030942C(v636, v637, v632, v634);
      if (!v2351)
      {
        sub_100307608(v553, v552._object, v633, v635, sub_1006A067C, &type metadata accessor for DetailChartDataElement);
        v2351 = v638;
      }

      swift_unknownObjectRelease();
      v639 = v2343;
      sub_10022C350(&qword_100CA47E8, &qword_100A2EB20);
      v640 = swift_allocObject();
      *(v640 + 16) = xmmword_100A2C3F0;
      *(v640 + 32) = static Color.cyan.getter();
      Gradient.init(colors:)();
      v641 = v2203;
      DetailChartGradientModel.init(gradient:startValue:endValue:)();
      v642 = v2287;
      v643 = [v2287 mainBundle];
      v2391._object = 0x8000000100ABF980;
      sub_1000080F4();
      v648 = NSLocalizedString(_:tableName:bundle:value:comment:)(v644, v645, v646, v647, v2378);
      v2315 = v648._countAndFlagsBits;
      v2314 = v648._object;

      sub_100040CA8();
      v649 = [v642 mainBundle];
      v2391._object = v635;
      sub_10003C338();
      v654 = NSLocalizedString(_:tableName:bundle:value:comment:)(v650, v651, v652, v653, v2379);
      v558 = v654._countAndFlagsBits;
      v655 = v654._object;

      sub_1000B0E58();
      sub_1000236D4();
      sub_100088370();
      v656();
      *&v2350 = DetailChartCondition.id.getter();
      v2349 = v657;
      v658 = sub_10000E8F4();
      v659(v658, "itation intensity detail charts");
      v660 = v2230;
      (*(v2322 + 16))(v2230, v641, v2326);
      sub_1000E1710();
      v661(v660);
      sub_1000AF510();
      sub_100087D78();
      v662();
      sub_1000B0C44();
      sub_100042204();
      v2348 = v663;
      *&v2347 = v664;
      v664();
      sub_10022C350(&qword_100CAC408, &qword_100A6B670);
      *v2231 = 6;
      sub_100003934();
      sub_10001B350(v665, v666, v667, v639);
      sub_100051BBC();
      sub_1000C8FD0();
      sub_1000A404C();
      v668();
      if (qword_100CA2198 == -1)
      {
        goto LABEL_27;
      }

      goto LABEL_619;
    }

    if (v559 != enum case for DetailChartCondition.temperature(_:))
    {
      if (v559 == enum case for DetailChartCondition.temperatureFeelsLike(_:))
      {
        sub_1000161C0(v2255 + 2, v2255[5]);
        v889 = v2173;
        dispatch thunk of AppConfigurationManagerType.appConfiguration.getter();
        AppConfiguration.temperatureScale.getter();
        (*(v2174 + 8))(v889, v2175);
        *&v890 = COERCE_DOUBLE(DetailChartExtrema.maxValue.getter());
        if (v891)
        {
          Array<A>.maxValue.getter();
          v893 = v892;
        }

        else
        {
          v893 = *&v890;
        }

        v1159 = v2163;
        v1160 = v2259;
        *&v1161 = COERCE_DOUBLE(DetailChartExtrema.maxSecondValue.getter());
        if (v1162)
        {
          Array<A>.maxSecondValue.getter();
        }

        else
        {
          v1163 = *&v1161;
        }

        if (v893 > v1163)
        {
          v1205 = v893;
        }

        else
        {
          v1205 = v1163;
        }

        *&v1206 = COERCE_DOUBLE(DetailChartExtrema.minValue.getter());
        if (v1207)
        {
          Array<A>.minValue.getter();
          v1209 = v1208;
        }

        else
        {
          v1209 = *&v1206;
        }

        *&v1210 = COERCE_DOUBLE(DetailChartExtrema.minSecondValue.getter());
        if (v1211)
        {
          Array<A>.minSecondValue.getter();
        }

        else
        {
          v1212 = *&v1210;
        }

        LODWORD(v2354) = v1160 == 1;
        if (v1212 >= v1209)
        {
          v1213 = v1209;
        }

        else
        {
          v1213 = v1212;
        }

        v568 = sub_100302EA8(v1205, v1213);
        v1214 = v2217;
        v1215 = *(v2217 + 104);
        v1216 = v2216;
        v1217 = v2218;
        v1215(v2216, enum case for FloatingPointRoundingRule.down(_:), v2218);
        Double.nearestMultiple(of:roundingRule:)();
        a9 = v1218;
        v1219 = *(v1214 + 8);
        v1219(v1216, v1217);
        v1215(v1216, enum case for FloatingPointRoundingRule.up(_:), v1217);
        Double.nearestMultiple(of:roundingRule:)();
        v11 = v1220;
        v1219(v1216, v1217);
        v1221 = v2319;
        v1222 = ConditionUnits.temperature.getter();
        TemperatureScaleConfiguration.gradientValueRange(for:)();

        sub_100088370();
        v1223();
        v1224 = v2180;
        sub_100095588();
        sub_1000453D4();
        v2348 = v1226;
        *&v2347 = v1227;
        v1227(v1159 + v1225, v1221, v2289);
        *(v1159 + v1224[5]) = v2354;
        *(v1159 + v1224[8]) = 1;
        *(v1159 + v1224[9]) = 1;
        *(v1159 + v1224[10]) = 0;
        TemperatureScaleConfiguration.gradient.getter();
        Gradient.init(_:)();
        v1091 = v2169;
        DetailChartGradientModel.init(gradient:startValue:endValue:)();
        v1078 = v1159;
        sub_100037FA8();
        v2352 = v1228;
        v2349 = v1229;
        v1228();
        if (qword_100CA2198 != -1)
        {
          goto LABEL_642;
        }

        goto LABEL_270;
      }

      if (v559 == enum case for DetailChartCondition.uvIndex(_:))
      {
        *&v1035 = COERCE_DOUBLE(DetailChartExtrema.maxValue.getter());
        if (v1036)
        {
          Array<A>.maxValue.getter();
        }

        else
        {
          v1037 = *&v1035;
        }

        v558 = v2343;
        v1333 = v2330;
        v655 = v2333;
        v1334 = v2259;
        if (v1037 <= 9.0)
        {
          v568 = 11.0;
        }

        else
        {
          v568 = v1037 + 2.0;
        }

        sub_10022C350(&qword_100CAC438, &unk_100A3B3A0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_100A3B030;
        *(inited + 32) = 0;
        *(inited + 40) = static Color.green.getter();
        *(inited + 48) = 1;
        *(inited + 56) = static Color.yellow.getter();
        *(inited + 64) = 2;
        *(inited + 72) = static Color.orange.getter();
        *(inited + 80) = 3;
        *(inited + 88) = static Color.pink.getter();
        *(inited + 96) = 4;
        *(inited + 104) = static Color.purple.getter();
        sub_10030973C();
        v1336 = Dictionary.init(dictionaryLiteral:)();
        v1337 = static UVIndex.ExposureCategory.allCases.getter();
        v1338 = sub_1002789B0(v1337);
        if (v1338)
        {
          v1339 = v1338;
          if (v1338 < 1)
          {
            goto LABEL_649;
          }

          v1340 = _swiftEmptyArrayStorage;
          v1341 = 32;
          do
          {
            if (*(v1336 + 16))
            {
              sub_1002381C8(*(v1337 + v1341));
              if (v1342)
              {

                UVIndex.ExposureCategory.rangeValue.getter();
                v1343 = Gradient.Stop.init(color:location:)();
                v1345 = v1344;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  sub_10069E7A0();
                  v1340 = v1348;
                }

                v1346 = v1340[2];
                if (v1346 >= v1340[3] >> 1)
                {
                  sub_10069E7A0();
                  v1340 = v1349;
                }

                v1340[2] = v1346 + 1;
                v1347 = &v1340[2 * v1346];
                v1347[4] = v1343;
                v1347[5] = v1345;
                v558 = v2343;
                v1333 = v2330;
              }

              v1334 = v2259;
            }

            ++v1341;
            --v1339;
          }

          while (v1339);
        }

        v1355 = v1334 == 1;
        v1356 = v2161;
        v1248 = v2312;
        sub_100088370();
        v1357();
        v1358 = v2180;
        sub_100095588();
        sub_1000453D4();
        sub_10030A04C();
        *&v2347 = v1359;
        v2346 = v1360;
        v1360();
        *(v1356 + v1358[5]) = v1355;
        *(v1356 + v1358[8]) = 1;
        *(v1356 + v1358[9]) = 0;
        *(v1356 + v1358[10]) = 0;
        Gradient.init(stops:)();
        v1263 = v2162;
        DetailChartGradientModel.init(gradient:startValue:endValue:)();
        sub_1000C8BB0();
        v1361(v2264, v1333, v2318);
        if (qword_100CA2198 != -1)
        {
          goto LABEL_645;
        }

        goto LABEL_298;
      }

      if (v559 == enum case for DetailChartCondition.visibility(_:))
      {
        v1164 = ConditionUnits.visibility.getter();
        v1165 = NSUnitLength.isMetricVisibility.getter();

        if (v1165)
        {
          v568 = 45.0;
        }

        else
        {
          v568 = 30.0;
        }

        sub_10022C350(&qword_100CAC3F8, &qword_100A3B368);
        v1166 = swift_allocObject();
        *(v1166 + 16) = xmmword_100A3B020;
        static Color.white.getter();
        Color.opacity(_:)();
        sub_100030240();

        v1167 = Gradient.Stop.init(color:location:)();
        sub_1000B90CC(v1167, v1168);
        static Color.white.getter();
        Color.opacity(_:)();
        sub_100030240();

        *(v1166 + 48) = Gradient.Stop.init(color:location:)();
        *(v1166 + 56) = v1169;
        static Color.white.getter();
        Color.opacity(_:)();
        sub_100030240();

        *(v1166 + 64) = Gradient.Stop.init(color:location:)();
        *(v1166 + 72) = v1170;
        static Color.white.getter();
        Color.opacity(_:)();
        sub_100030240();

        *(v1166 + 80) = Gradient.Stop.init(color:location:)();
        *(v1166 + 88) = v1171;
        Gradient.init(stops:)();
        v655 = v2137;
        DetailChartGradientModel.init(gradient:startValue:endValue:)();
        sub_1000C8BB0();
        sub_100037FA8();
        v1172();
        if (qword_100CA2198 != -1)
        {
          goto LABEL_650;
        }

        goto LABEL_250;
      }

      if (v559 == enum case for DetailChartCondition.wind(_:))
      {
        v639 = &enum case for FloatingPointRoundingRule.down(_:);
        v558 = &enum case for FloatingPointRoundingRule.up(_:);
        v568 = sub_100304B8C();
        v1350 = ConditionUnits.windSpeed.getter();
        sub_10000C70C(0, &qword_100CAC428, NSUnitSpeed_ptr);
        v1351 = static NSUnitSpeed.beaufort.getter();
        v1352 = static NSObject.== infix(_:_:)();

        *&v944 = COERCE_DOUBLE(DetailChartExtrema.maxValue.getter());
        if ((v1352 & 1) == 0)
        {
          goto LABEL_390;
        }

        v925 = v2318;
        if (v729)
        {
          Array<A>.maxValue.getter();
          v1354 = v1353;
          goto LABEL_460;
        }

        goto LABEL_459;
      }

      goto LABEL_340;
    }

    sub_1000161C0(v2255 + 2, v2255[5]);
    v697 = v2173;
    dispatch thunk of AppConfigurationManagerType.appConfiguration.getter();
    AppConfiguration.temperatureScale.getter();
    (*(v2174 + 8))(v697, v2175);
    *&v698 = COERCE_DOUBLE(DetailChartExtrema.maxValue.getter());
    if (v699)
    {
      Array<A>.maxValue.getter();
      v701 = v700;
    }

    else
    {
      v701 = *&v698;
    }

    v1030 = v2259;
    *&v1031 = COERCE_DOUBLE(DetailChartExtrema.maxSecondValue.getter());
    if (v1032)
    {
      Array<A>.maxSecondValue.getter();
      v1034 = v1033;
    }

    else
    {
      v1034 = *&v1031;
    }

    *&v1038 = COERCE_DOUBLE(DetailChartExtrema.maxThirdValue.getter());
    if (v1039)
    {
      Array<A>.maxThirdValue.getter();
      v1041 = v1040;
    }

    else
    {
      v1041 = *&v1038;
    }

    sub_100302F24(_swiftEmptyArrayStorage, v701, v1034, v1041);
    v1043 = v1042;
    *&v1044 = COERCE_DOUBLE(DetailChartExtrema.minValue.getter());
    if (v1045)
    {
      Array<A>.minValue.getter();
      v1047 = v1046;
    }

    else
    {
      v1047 = *&v1044;
    }

    *&v1048 = COERCE_DOUBLE(DetailChartExtrema.minSecondValue.getter());
    if (v1049)
    {
      Array<A>.minSecondValue.getter();
      v1051 = v1050;
    }

    else
    {
      v1051 = *&v1048;
    }

    *&v1052 = COERCE_DOUBLE(DetailChartExtrema.minThirdValue.getter());
    if (v1053)
    {
      Array<A>.minThirdValue.getter();
      v1055 = v1054;
    }

    else
    {
      v1055 = *&v1052;
    }

    v1056 = v1030 == 1;
    sub_100302F58(_swiftEmptyArrayStorage, v1047, v1051, v1055);
    v568 = sub_100302EA8(v1043, v1057);
    v1058 = v2217;
    v1059 = *(v2217 + 104);
    v1060 = v2216;
    v1061 = v2218;
    v1059(v2216, enum case for FloatingPointRoundingRule.down(_:), v2218);
    Double.nearestMultiple(of:roundingRule:)();
    a9 = v1062;
    v1063 = *(v1058 + 8);
    v1063(v1060, v1061);
    v1059(v1060, enum case for FloatingPointRoundingRule.up(_:), v1061);
    Double.nearestMultiple(of:roundingRule:)();
    v11 = v1064;
    v1063(v1060, v1061);
    v1065 = v2319;
    v1066 = ConditionUnits.temperature.getter();
    TemperatureScaleConfiguration.gradientValueRange(for:)();

    sub_1000176DC();
    v925 = [v2287 mainBundle];
    sub_1001924D0();
    v2391._object = v1063;
    sub_100003CD0();
    v1067._countAndFlagsBits = 0;
    v1067._object = 0xE000000000000000;
    v1070 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1068, v1069, v925, v1067, v2384);
    v2354 = v1070._countAndFlagsBits;
    v2352 = v1070._object;

    v1071 = v2193;
    sub_1000236D4();
    sub_100088370();
    v1072();
    v1073 = v2180;
    sub_100095588();
    sub_1000453D4();
    v2351 = v1075;
    *&v2350 = v1076;
    v1076(v1071 + v1074, v1065, v2289);
    *(v1071 + v1073[5]) = v1056;
    *(v1071 + v1073[8]) = 1;
    *(v1071 + v1073[9]) = 1;
    *(v1071 + v1073[10]) = 0;
    TemperatureScaleConfiguration.gradient.getter();
    Gradient.init(_:)();
    v525 = v2284;
    DetailChartGradientModel.init(gradient:startValue:endValue:)();
    sub_1000C8BB0();
    sub_100037FA8();
    v1077();
    if (qword_100CA2198 != -1)
    {
      goto LABEL_634;
    }

LABEL_237:
    sub_100031C38();
    sub_1004B5EBC();
    v1078 = v2322 + 16;
    v1079 = *(v2322 + 16);
    v1080 = v2262;
    v1081 = v2326;
    v1079(v2262, v525, v2326);
    sub_1000D3BE4();
    v1082(v1080);
    v2349 = v1079;
    v1079(v2166, v525, v1081);
    sub_100040FF4();
    ChartAreaStyle.init(gradient:opacity:)();
    type metadata accessor for ChartAreaStyle();
    sub_10002FDE8();
    sub_10000E7B0();
    sub_10001B350(v1083, v1084, v1085, v1086);
    v1087 = v2183;
    sub_1001706B4();
    ChartLineStyle.init(strokeStyle:lineThickness:lineColor:lineDash:opacity:opacityIncreasedContrast:areaStyle:)();
    sub_1000B0E58();
    sub_100088370();
    v1088();
    v1089 = DetailChartCondition.id.getter();
    v1091 = v1090;
    v1092 = sub_10000E8F4();
    v1093(v1092, v925);
    sub_10022C350(&qword_100CAC400, &unk_100A3B370);
    sub_100016310();
    v1094 = v2196;
    v1095 = v2314;
    v1096(v2196, v1087, v2314);
    sub_10000E7B0();
    sub_10001B350(v1097, v1098, v1099, v1095);
    sub_100003934();
    sub_10001B350(v1100, v1101, v1102, v1095);
    sub_1000E13B4();
    v1103(v1094);
    sub_1000AF510();
    sub_100071480();
    v1104();
    v1105 = sub_1000A7BB4();
    v1106(v1105);
    v605 = v2353;
    v1107 = sub_1002789B0(v2353);
    v1108 = v1107 - 1;
    if (__OFSUB__(v1107, 1))
    {
      __break(1u);
    }

    else
    {
      *&v2347 = v1089;
      v2348 = v1091;

      sub_100302F8C(1, v1108, 2, v605);
      v2346 = v1109;
      if (a9 <= v11)
      {
        sub_10022C350(&qword_100CAC408, &qword_100A6B670);
        sub_10002FDD8();
        v1111 = sub_1000245D4(v1110);
        v1112(v1111, &v2292[v2333], v2310);
        sub_1004B5EE0();
        v1113 = sub_100051DC0();
        v1114(v1113);
        sub_100095588();
        *&v2345 = sub_1003032E8(v2193);
        v1115 = *(sub_10022C350(&qword_100CAC410, &unk_100A3B380) + 48);
        v1116 = sub_1004B5F04();
        v1117 = v2224;
        *v2224 = v1116;
        (v2349)(v1117 + v1115, v2284, v2326);
        sub_100040F64();
        v1118(v1117);
        v1119 = v2319;
        v2349 = ConditionUnits.temperature.getter();
        sub_10006A70C();
        v1120 = sub_10019239C();
        v1121(v1120);
        *&v2344 = DetailChartCondition.title.getter();
        v2340 = v1122;
        v1123 = [v2287 mainBundle];
        sub_1001924D0();
        v2391._object = 0x8000000100ABFC20;
        sub_100003CD0();
        v1127 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1124, v1125, v1123, v1126, v2385);
        v2338 = v1127._countAndFlagsBits;

        sub_10001BD24();
        sub_1001D1B40();
        v1128 = v2221;
        v1129 = v2289;
        (v2350)(v2221, v1119, v2289);
        sub_10002C5E4();
        v1132 = v2288;
        v1133 = (v2280 + *(v2288 + 80) + (v1131 & ~v1130)) & ~*(v2288 + 80);
        v857 = sub_100309F58();
        sub_10001E7CC();
        sub_1003096E4();
        (*(v1132 + 32))(v857 + v1133, v1128, v1129);
        sub_10022C350(&qword_100CAC418, &qword_100A6EE30);
        v1134 = sub_100005508();
        sub_10001B350(v1134, v1135, v1136, v1137);
        sub_100040BDC();
        v1138 = v2223;
        v1139(v2223);
        sub_10030A08C();
        sub_1000314EC();
        v2039 = v2352;
        v2035 = v2354;
        v2031 = v2340;
        v2027 = v2344;
        sub_10030A06C();
        v2020 = v1140;
        v2018 = v2349;
        sub_100044D68();
        sub_100309F94();
        sub_10030A078();
        sub_10060D4A0(v1148, v1149, v1150, v1141, v1142, v1143, v1144, v1145, v1146, v2346, v2198, v1147, v2005, v2006, v2007, v2008, v2009, v2010, v1117, 7, 0, v2018, v2020, *(&v2020 + 1), 0, v2022, v1138, v2027, v2031, v2035, v2039, v2041, v2044, v2047, v1127._object, 0, 0, sub_100309F30, v2391._object);
        sub_1000E59C8();
        v1151(v2183, v2314);
        sub_1000377D4();
        v1152(v2284, v2326);
        sub_1000228B4();
        sub_10030968C(v2193, v1153);
        (*(v2167 + 8))(v2194, v2168);
        goto LABEL_240;
      }
    }

    __break(1u);
LABEL_637:
    __break(1u);
LABEL_638:
    __break(1u);
LABEL_639:
    __break(1u);
    while (1)
    {
      __break(1u);
LABEL_641:
      __break(1u);
LABEL_642:
      sub_1000080D4(&qword_100CA2198);
LABEL_270:
      sub_100031C38();
      sub_1004B5EBC();
      v1230 = v2322 + 16;
      v2354 = *(v2322 + 16);
      v1231 = v2262;
      (v2354)(v2262, v1091, v2326);
      *&v2350 = *(v2261 + 104);
      v1232 = sub_1001ACFE0();
      v1233(v1232);
      v2351 = type metadata accessor for ChartAreaStyle();
      sub_100003934();
      sub_10001B350(v1234, v1235, v1236, v1237);
      sub_1001706B4();
      ChartLineStyle.init(strokeStyle:lineThickness:lineColor:lineDash:opacity:opacityIncreasedContrast:areaStyle:)();
      v2346 = sub_1003032E8(v1078);
      v1238 = Color.init(hex:)();
      sub_10022C350(&qword_100CA47E8, &qword_100A2EB20);
      v1239 = swift_allocObject();
      *(v1239 + 16) = xmmword_100A2C3F0;
      *(v1239 + 32) = Color.opacity(_:)();
      Gradient.init(colors:)();
      v1240 = v2164;
      DetailChartGradientModel.init(gradient:startValue:endValue:)();
      sub_100037FA8();
      (v2352)();
      sub_1004B5EBC();
      *v1231 = v1238;
      v1241 = sub_1001ACFE0();
      (v2350)(v1241);
      *&v2350 = v1230;
      (v2354)(v2284, v1240, v2326);
      v2352 = v1238;

      ChartAreaStyle.init(gradient:opacity:)();
      sub_10000E7B0();
      sub_10001B350(v1242, v1243, v1244, v2351);
      sub_1001706B4();
      ChartLineStyle.init(strokeStyle:lineThickness:lineColor:lineDash:opacity:opacityIncreasedContrast:areaStyle:)();
      v1245 = v2325;
      v1246 = v2286;
      v1247 = v2312;
      (*(v2325 + 13))(v2286, v605, v2312);
      v1248 = v2333;
      sub_10074742C(v2333 + v2324, v1246);
      v1249 = *(v1245 + 1);
      v2325 = (v1245 + 8);
      v1249(v1246, v1247);
      v1250 = [v2287 mainBundle];
      sub_1000FFC34();
      sub_1000080F4();
      v1255 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1251, v1252, v1253, v1254, v2394);
      v2351 = v1255._countAndFlagsBits;
      *&v2345 = v1255._object;
      v1256 = v2343;
      v1257 = v2353;
      v1258 = v2198;
      v1259 = v2290;

      v1260 = sub_1000B0E58();
      (v1259)(v1260);
      *&v2344 = DetailChartCondition.id.getter();
      v2349 = v1261;
      v1249(v1250, v1247);
      v1262 = *(sub_10022C350(&qword_100CAC400, &unk_100A3B370) + 48);
      v1263 = *(v2315 + 16);
      v1264 = v2196;
      v558 = v2314;
      v1263(v2196, v2172, v2314);
      sub_10000E7B0();
      sub_10001B350(v1265, v1266, v1267, v558);
      v1263(v1264 + v1262, v2171, v558);
      sub_10000E7B0();
      sub_10001B350(v1268, v1269, v1270, v558);
      sub_1000E13B4();
      v1271(v1264);
      sub_1000AF510();
      sub_100087D78();
      v1272();
      v1273 = sub_1000A7BB4();
      v1274(v1273);
      v1275 = sub_1002789B0(v1257);
      v1276 = v1275 - 1;
      if (__OFSUB__(v1275, 1))
      {
        __break(1u);
      }

      else
      {

        sub_100302F8C(1, v1276, 2, v1257);
        v2338 = v1277;
        if (a9 <= v11)
        {
          sub_10022C350(&qword_100CAC408, &qword_100A6B670);
          sub_10002FDD8();
          *v1258 = v1278;
          sub_100003934();
          sub_10001B350(v1279, v1280, v1281, v1256);
          sub_1000C8FD0();
          sub_1000A404C();
          v1282();
          sub_1004B5EE0();
          v1283 = sub_100051DC0();
          v1284(v1283);
          v1285 = v2329;
          sub_100095588();
          v1286 = *(sub_10022C350(&qword_100CAC410, &unk_100A3B380) + 48);
          v1287 = sub_1004B5F04();
          v1288 = v2224;
          *v2224 = v1287;
          (v2354)(v1288 + v1286, v2169, v2326);
          sub_100040F64();
          v1289(v1288);
          v1290 = v2319;
          v2354 = ConditionUnits.temperature.getter();
          sub_10006A70C();
          v1291 = sub_10019239C();
          v1292(v1291);
          *&v2350 = DetailChartCondition.title.getter();
          v2340 = v1293;
          sub_10008654C();
          v1294 = [v2287 mainBundle];
          sub_1001924D0();
          v2394._object = v558;
          sub_100003CD0();
          v1298 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1295, v1296, v1294, v1297, v2395);
          v2337 = v1298._countAndFlagsBits;
          v2335 = v1298._object;

          sub_10001BD24();
          sub_1001D1B40();
          v1299 = v2221;
          v1300 = v2289;
          (v2347)(v2221, v1290, v2289);
          sub_10002C5E4();
          v1303 = v2288;
          v1304 = (v2280 + *(v2288 + 80) + (v1302 & ~v1301)) & ~*(v2288 + 80);
          v857 = swift_allocObject();
          sub_10001E7CC();
          sub_1003096E4();
          (*(v1303 + 32))(v857 + v1304, v1299, v1300);
          sub_10022C350(&qword_100CAC418, &qword_100A6EE30);
          v1305 = sub_100005508();
          sub_10001B350(v1305, v1306, v1307, v1308);
          sub_100040BDC();
          v1309 = v2223;
          v1310(v2223);
          sub_10030A08C();
          v2050 = v2335;
          sub_1000314EC();
          v2045 = v2345;
          v2042 = v2351;
          v2040 = v2340;
          v2036 = v2350;
          sub_10030A06C();
          v2021 = v2354;
          sub_100044D68();
          sub_100309F94();
          sub_10030A078();
          sub_10060D4A0(v1318, v1319, v1320, v1311, v1312, v1313, v1314, v1315, v1316, v2338, v2198, v1317, v2007, v2008, v2009, v2010, v2012, v2015, v1288, 7, 0, v2021, 0, 0, 0, v2025, v1309, v2036, v2040, v2042, v2045, v2047, v2048, v2049, v2050, 0, 0xE000000000000000, sub_100309F30, v2394._object);

          v1321 = *(v2315 + 8);
          v1322 = v2314;
          v1321(v2171, v2314);
          v1323 = *(v2322 + 8);
          v1324 = v2326;
          v1323(v2164, v2326);
          v1321(v2172, v1322);
          v1323(v2169, v1324);
          sub_1000228B4();
          sub_10030968C(v2163, v1325);
          (*(v2167 + 8))(v2170, v2168);
          v1326 = sub_100036C9C();
          v1327(v1326);
          v1328 = sub_1000176C8();
          v1329(v1328);
          v1158 = v1285;
          goto LABEL_273;
        }
      }

      __break(1u);
LABEL_645:
      sub_1000080D4(&qword_100CA2198);
LABEL_298:
      sub_100031C38();
      a9 = sub_1004B5EBC();
      v1363 = v2322 + 16;
      v1362 = *(v2322 + 16);
      v1364 = v2262;
      v1365 = v2326;
      v1362(v2262, v1263, v2326);
      sub_1000D3BE4();
      v1366(v1364);
      *&v2345 = v1363;
      *&v2344 = v1362;
      v1362(v2284, v1263, v1365);
      sub_100040FF4();
      ChartAreaStyle.init(gradient:opacity:)();
      type metadata accessor for ChartAreaStyle();
      sub_10002FDE8();
      sub_10000E7B0();
      sub_10001B350(v1367, v1368, v1369, v1370);
      v1371 = v2159;
      sub_1001706B4();
      ChartLineStyle.init(strokeStyle:lineThickness:lineColor:lineDash:opacity:opacityIncreasedContrast:areaStyle:)();
      v655 = v2333;
      sub_1000B0E58();
      sub_100088370();
      v1372();
      v525 = DetailChartCondition.id.getter();
      v1374 = v1373;
      v1375 = sub_10000E8F4();
      v1376(v1375, v1248);
      sub_10022C350(&qword_100CAC400, &unk_100A3B370);
      sub_100016310();
      v1377 = v2160;
      v1378 = v2314;
      v1379(v2160, v1371, v2314);
      sub_10000E7B0();
      sub_10001B350(v1380, v1381, v1382, v1378);
      sub_100003934();
      sub_10001B350(v1383, v1384, v1385, v1378);
      sub_1000E13B4();
      v1386(v1377);
      sub_1000AF510();
      (v2334)(v2157, v655 + v1387, v558);
      sub_1000B0C44();
      sub_100042204();
      v1388();
      v605 = v2353;
      v1389 = sub_1002789B0(v2353);
      v617 = v1389 - 1;
      if (__OFSUB__(v1389, 1))
      {
        break;
      }

      v1390 = sub_1003094F0(1, v617, 2);
      sub_1000EFF14(_swiftEmptyArrayStorage);
      sub_100307230(v1391);
      if (v1390 < 0)
      {
        goto LABEL_647;
      }

      v1392 = v2354;
      *&v2350 = v617;
      v2308 = v1374;
      v2307 = v525;
      if (v1390)
      {
        sub_100011468();
        v2351 = v1393;
        v2349 = v1393 + v605;
        v2348 = v1394 + 16;
        v525 = v1394 + 32;
        v1395 = 1;
        while (v1395 < v617)
        {
          v655 = v1395 + 2;
          if (__OFADD__(v1395, 2))
          {
            v1396 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v1396 = v1395 + 2;
          }

          if (v1395 < 0)
          {
            goto LABEL_601;
          }

          sub_100020E7C();
          if (v691)
          {
            goto LABEL_602;
          }

          v1398 = *(v1397 + 72);
          sub_100088840();
          v1399();
          v1400 = v2364;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_10000C978();
            sub_10030A02C();
          }

          v558 = *(v1400 + 16);
          sub_1000BC6B4();
          if (v691)
          {
            v1403 = sub_1000135B8(v1401);
            sub_1000925F4(v1403);
            sub_10030A02C();
          }

          *(v1400 + 16) = v605;
          (*v525)(v1400 + v2351 + v558 * v1398, v2256, v1392);
          v2364 = v1400;
          v1395 = v1396;
          --v1390;
          v1402 = v2352;
          v617 = v2350;
          if (!v1390)
          {
            if (v1396 < v2350)
            {
              goto LABEL_317;
            }

            goto LABEL_367;
          }
        }

LABEL_600:
        __break(1u);
LABEL_601:
        __break(1u);
LABEL_602:
        __break(1u);
LABEL_603:
        sub_1000080D4(&qword_100CA2198);
LABEL_21:
        sub_100031C38();
        sub_1004B5EBC();
        v619 = static Color.purple.getter();
        v620 = v2262;
        *v2262 = v619;
        sub_1000D3BE4();
        v621(v620);
        v622 = sub_100309F80();
        v623(v622, v617, v2326);
        sub_100040FF4();
        ChartAreaStyle.init(gradient:opacity:)();
        type metadata accessor for ChartAreaStyle();
        sub_10002FDE8();
        sub_10000E7B0();
        sub_10001B350(v624, v625, v626, v627);
        v628 = sub_10022C350(&qword_100CAC430, &qword_100A76930);
        v629 = sub_1000B97CC(v628);
        *(v629 + 16) = v2350;
        *(v629 + 32) = xmmword_100A3B010;
        v630 = v2246;
        sub_1001706B4();
        ChartLineStyle.init(strokeStyle:lineThickness:lineColor:lineDash:opacity:opacityIncreasedContrast:areaStyle:)();
        DetailChartExtrema.maxValue.getter();
        if (v631)
        {
          Array<A>.maxValue.getter();
        }

        DetailChartExtrema.minValue.getter();
        if (v696)
        {
          Array<A>.minValue.getter();
        }

        v702 = v2217;
        v703 = *(v2217 + 104);
        v704 = v2216;
        v705 = v2218;
        v703(v2216, enum case for FloatingPointRoundingRule.up(_:), v2218);
        Double.nearestMultiple(of:roundingRule:)();
        a9 = v706;
        v708 = *(v702 + 8);
        v707 = v702 + 8;
        v709 = sub_100192210();
        v708(v709);
        v703(v704, enum case for FloatingPointRoundingRule.down(_:), v705);
        Double.nearestMultiple(of:roundingRule:)();
        v11 = v710;
        v711 = sub_100192210();
        v708(v711);
        sub_1000B0E58();
        sub_1000236D4();
        v2290();
        v655 = DetailChartCondition.id.getter();
        v713 = v712;
        v714 = sub_10000E8F4();
        v715(v714, v703);
        sub_10022C350(&qword_100CAC400, &unk_100A3B370);
        sub_100016310();
        v716 = v2247;
        v717 = v2314;
        v718(v2247, v630, v2314);
        sub_10000E7B0();
        sub_10001B350(v719, v720, v721, v717);
        v639 = v2208;
        sub_100003934();
        sub_10001B350(v722, v723, v724, v717);
        sub_100051BBC();
        sub_1000E13B4();
        v725(v716);
        sub_1000AF510();
        sub_100071480();
        v726();
        sub_1000B0C44();
        sub_100042204();
        v727();
        v728 = sub_1002789B0(v525);
        v558 = v728 - 1;
        if (__OFSUB__(v728, 1))
        {
          __break(1u);
LABEL_605:
          __break(1u);
LABEL_606:
          v2000 = v2061;
          sub_100277BBC(v707, v2061);
          v2001 = v2000;
          v1992 = v2354;
          (v558)(v2001, v2354);
LABEL_607:
          v1991 = v2352;
LABEL_608:
          v525 = v2061;
          v2002 = v2063;
          v713(v2061, v2063, v1992);
          sub_1002F57C0(v525);
          v2003 = *(v1991 + 8);
          v2003(v2002, v1992);
          v2004 = *(v655 + 8);
          v1664 = v655 + 8;
          v2004(v2067, v716);
          (*(v2066 + 8))(v2068, v2069);
          v2003(v2075, v1992);
          v558 = v2343;
          sub_100309FB4();
          v1673 = v2259;
LABEL_487:
          sub_100304FD4(&v2364);
          v1679 = v2089;
          if (!v1673)
          {
            static ChartDarkeningScrim.hashPatternEffect.getter();
            sub_1008B52C0();
            v1680 = sub_1000B7B80();
            v1681(v1680, v2342);
          }

          sub_100095588();
          v1682 = type metadata accessor for ExtremaResult();
          v1683 = sub_100016298();
          sub_1000038B4(v1683, v1684, v1682);
          if (v1699)
          {
            sub_1000180EC(v1679, &qword_100CAC1B0, &unk_100A3B140);
          }

          else
          {
            ExtremaResult.maxDate.getter();
            (*(*(v1682 - 8) + 8))(v1679, v1682);
            sub_100309F74();
            v1685();
            v1687 = v2076;
            v1686 = v2077;
            v1688 = v2078;
            (*(v2077 + 104))(v2076, enum case for Calendar.Component.hour(_:), v2078);
            v1689 = Calendar.isDate(_:equalTo:toGranularity:)();
            (*(v1686 + 8))(v1687, v1688);
            if (v1689)
            {
              sub_10022C350(&qword_100CAC420, &unk_100A3B390);
              v1690 = swift_initStackObject();
              *(v1690 + 16) = v2347;
              *(v1690 + 32) = 8;
              v2353 = sub_10022F334(v1690);
              v1691 = sub_1000D3D24();
              v1692(v1691, v558);
              goto LABEL_499;
            }

            v1701 = sub_1000D3D24();
            v1702(v1701, v558);
          }

          v2353 = 7;
LABEL_499:
          v1703 = v2314;
          v1704 = v2333;
          sub_1000B0E58();
          v1705 = v2312;
          sub_100088370();
          v1706();
          *&v2347 = DetailChartCondition.id.getter();
          v2352 = v1707;
          v1708 = sub_10000E8F4();
          v1709(v1708, v1705);
          sub_10022C350(&qword_100CAC400, &unk_100A3B370);
          sub_100016310();
          v1710(v525, v1664, v1703);
          sub_10000E7B0();
          sub_10001B350(v1711, v1712, v1713, v1703);
          sub_100003934();
          sub_10001B350(v1714, v1715, v1716, v1703);
          sub_1000E13B4();
          v1717(v525);
          v525 = v2334;
          (v2334)(v2258, v1704 + *(v2340 + 20), v558);
          v1718 = v2364;
          v1719 = sub_1000A7BB4();
          v1720(v1719);
          sub_10022C350(&qword_100CAC408, &qword_100A6B670);
          sub_10002FDD8();
          *v2198 = v1721;
          sub_100003934();
          sub_10001B350(v1722, v1723, v1724, v558);
          sub_1000C8FD0();
          sub_1000A404C();
          v1725();
          v1726 = qword_100CA2198;
          v2354 = v1718;

          if (v1726 != -1)
          {
            goto LABEL_654;
          }

          goto LABEL_500;
        }

        if (v558 >= 2)
        {
          sub_1001711C0();
          v707 = v2352;
          while (1)
          {
            v731 = v730 + 1;
            if (__OFADD__(v730, 1))
            {
              break;
            }

            sub_10003A150();
            if (v732 >= v558)
            {
              goto LABEL_77;
            }
          }

LABEL_389:
          __break(1u);
LABEL_390:
          if (v729)
          {
            Array<A>.maxValue.getter();
          }

          v1645 = v2264;
          DetailChartExtrema.maxSecondValue.getter();
          if (v1649)
          {
            Array<A>.maxSecondValue.getter();
          }

          DetailChartExtrema.minValue.getter();
          if (v1651)
          {
            Array<A>.minValue.getter();
          }

          DetailChartExtrema.minSecondValue.getter();
          if (v1652)
          {
            Array<A>.minSecondValue.getter();
          }

          v1653 = *v639;
          v1654 = v2217;
          v1655 = *(v2217 + 104);
          v1656 = v2216;
          v1657 = v2218;
          v1655(v2216, v1653, v2218);
          Double.nearestMultiple(of:roundingRule:)();
          v1659 = v1658;
          v1660 = *(v1654 + 8);
          v1660(v1656, v1657);
          if (v1659 < 0.0)
          {
            v1661 = 0.0;
          }

          else
          {
            v1661 = v1659;
          }

          v1655(v1656, *v558, v1657);
          Double.nearestMultiple(of:roundingRule:)();
          a9 = v1662;
          v1660(v1656, v1657);
          v925 = v2318;
          goto LABEL_503;
        }

        v731 = 0;
        v707 = v2352;
LABEL_77:
        sub_1000EFF14(_swiftEmptyArrayStorage);
        sub_100307230(v731);
        if (v731 < 0)
        {
          goto LABEL_605;
        }

        v2349 = v558;
        *&v2345 = v713;
        *&v2344 = v655;
        if (v731)
        {
          sub_10006948C();
          *&v2347 = v525 + v733;
          v2346 = (v707 + 16);
          v639 = v707 + 32;
          v734 = 1;
          v735 = v2354;
          do
          {
            if (v734 >= v558)
            {
              __break(1u);
LABEL_387:
              __break(1u);
LABEL_388:
              __break(1u);
              goto LABEL_389;
            }

            v655 = v734 + 2;
            if (__OFADD__(v734, 2))
            {
              v525 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v525 = v734 + 2;
            }

            if (v734 < 0)
            {
              goto LABEL_387;
            }

            sub_100020E7C();
            if (v691)
            {
              goto LABEL_388;
            }

            (*(v707 + 16))(v2351, v2347 + *(v707 + 72) * v736, v735);
            v716 = v2364;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_10000C978();
              sub_10030A008();
            }

            v738 = *(v716 + 16);
            v737 = *(v716 + 24);
            if (v738 >= v737 >> 1)
            {
              sub_1000135B8(v737);
              sub_1006A7AB4();
              sub_10030A008();
            }

            *(v716 + 16) = v738 + 1;
            v739 = sub_1000926AC();
            v740(v739, v2351, v735);
            v2364 = v716;
            v734 = v525;
            --v731;
            v707 = v2352;
            v558 = v2349;
          }

          while (v731);
          if (v525 < v2349)
          {
            goto LABEL_145;
          }

LABEL_192:
          if (v11 <= a9)
          {
            v945 = *(sub_10022C350(&qword_100CAC408, &qword_100A6B670) + 64);
            v946 = v2236;
            *v2236 = 6;
            v947 = v2200;
            sub_100003934();
            sub_10001B350(v948, v949, v950, v2343);
            sub_100051BBC();
            sub_1000C8FD0();
            v951(v946 + v945, &v2292[v2333], v2310);
            sub_1000522E4();
            v952();
            sub_100095588();
            v953 = v2319;
            v954 = ConditionUnits.pressure.getter();
            LOBYTE(v945) = NSUnitPressure.isMetric.getter();

            if (v945)
            {
              v2354 = 0;
              v2352 = 0;
              LODWORD(v2351) = 128;
            }

            else
            {
              v2354 = ConditionUnits.pressure.getter();
              LODWORD(v2351) = 4;
              v2352 = 1;
            }

            sub_10006A70C();
            v955 = sub_10019239C();
            v956(v955);
            *&v2350 = DetailChartCondition.title.getter();
            v2349 = v957;
            sub_100040CA8();
            v958 = v2287;
            v959 = [v2287 mainBundle];
            v2391._object = v947;
            sub_1000080F4();
            v2382._countAndFlagsBits = 0xD000000000000030;
            v964 = NSLocalizedString(_:tableName:bundle:value:comment:)(v960, v961, v962, v963, v2382);
            v2348 = v964._countAndFlagsBits;
            *&v2347 = v964._object;

            sub_1000176DC();
            v965 = [v958 mainBundle];
            v2391._object = v946;
            sub_1001924D0();
            sub_10003C338();
            v966._object = 0xE800000000000000;
            v970 = NSLocalizedString(_:tableName:bundle:value:comment:)(v967, v968, v969, v966, v2383);
            v2346 = v970._countAndFlagsBits;

            sub_10001BD24();
            sub_1001D1B40();
            v971 = v2288;
            v972 = v2221;
            v973 = v2289;
            (*(v2288 + 16))(v2221, v953, v2289);
            sub_100020634();
            sub_1000B98D8();
            v976 = v975 & ~v974;
            v977 = swift_allocObject();
            sub_10001E7CC();
            sub_1003096E4();
            (*(v971 + 32))(v977 + v976, v972, v973);
            sub_10022C350(&qword_100CAC418, &qword_100A6EE30);
            v978 = v2220;
            sub_100003934();
            sub_10001B350(v979, v980, v981, v982);
            v983 = sub_1004B5F28();
            v984 = sub_1004B5F04();
            v985 = v2224;
            *v2224 = v984;
            sub_100040F64();
            v986(v985);
            sub_100040BDC();
            v987 = v2223;
            v988(v2223);
            sub_1000314EC();
            v2038 = v2347;
            v2034 = v2348;
            v2030 = v2349;
            v2026 = v2350;
            sub_10030A06C();
            sub_10060D4A0(v11, a9, v983, v2344, v2345, v2247, v2243, v2353, v2244, v716, v2236, v2274, *&v568, 0, v978, v2235, v2234, _swiftEmptyArrayStorage, v985, 7, 0, v2354, 0, v2352, v2351, v2022, v987, v2026, v2030, v2034, v2038, v2041, v2044, v2047, v970._object, 0, 0, sub_100309790, v977);
            sub_1000E59C8();
            v989(v2246, v2314);
            sub_1000377D4();
            v990(v2245, v2326);
            v991 = sub_100036C9C();
            v992(v991);
            v993 = sub_1000176C8();
            v994(v993);
            sub_1000180EC(v2329, &qword_100CAB930, &qword_100A3A7C0);
            v995 = sub_1000C8960();
            v996(v995);
            v857 = v2343;
            goto LABEL_274;
          }

          __break(1u);
LABEL_610:
          __break(1u);
LABEL_611:
          __break(1u);
LABEL_612:
          __break(1u);
LABEL_613:
          __break(1u);
LABEL_614:
          __break(1u);
          goto LABEL_615;
        }

        v735 = v2354;
        if (v558 <= 1)
        {
          v716 = v2364;
          goto LABEL_192;
        }

        sub_10006948C();
        v655 = 1;
LABEL_145:
        sub_1000C826C();
        v2351 = v869;
        *&v2347 = v707 + 16;
        v639 = v707 + 32;
        while (1)
        {
          v525 = v655 + 2;
          v870 = __OFADD__(v655, 2);
          if (v655 < 0)
          {
            break;
          }

          sub_10012005C();
          if (v691)
          {
            goto LABEL_401;
          }

          v558 = *(v707 + 72);
          (*(v707 + 16))(v2348, v2351 + v558 * v655, v735);
          v716 = v2364;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_10000C978();
            sub_10030A008();
          }

          sub_100309F34();
          if (v691)
          {
            v875 = sub_1000135B8(v871);
            sub_100195538(v875);
            sub_10030A008();
          }

          *(v716 + 16) = 0;
          v872 = sub_1000926AC();
          v873(v872, v2348, v735);
          v2364 = v716;
          if (v525 >= v2349)
          {
            v874 = 1;
          }

          else
          {
            v874 = v870;
          }

          v655 += 2;
          v707 = v2352;
          if (v874)
          {
            goto LABEL_192;
          }
        }

        __break(1u);
LABEL_401:
        __break(1u);
        goto LABEL_402;
      }

      if (v617 > 1)
      {
        sub_100011468();
        v2351 = v1404;
        v655 = 1;
LABEL_317:
        v2349 = (v2353 + v2351);
        v2348 = v1402 + 16;
        v558 = v1402 + 32;
        while (1)
        {
          v639 = v655 + 2;
          v525 = __OFADD__(v655, 2);
          if (v655 < 0)
          {
            goto LABEL_610;
          }

          sub_10012005C();
          if (v691)
          {
            goto LABEL_611;
          }

          v605 = *(v1405 + 72);
          sub_100088840();
          v1406();
          v1400 = v2364;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_10000C978();
            sub_10030A02C();
          }

          v1407 = *(v1400 + 16);
          sub_100309F34();
          if (v691)
          {
            v1410 = sub_1000135B8(v1408);
            sub_100195538(v1410);
            sub_10030A02C();
          }

          *(v1400 + 16) = 0;
          (*v558)(v1400 + v2351 + v1407 * v605, v2233, v1392);
          v2364 = v1400;
          if (v639 >= v2350)
          {
            v1409 = 1;
          }

          else
          {
            v1409 = v525;
          }

          v655 += 2;
          if (v1409)
          {
            goto LABEL_367;
          }
        }
      }

LABEL_366:
      v1400 = v2364;
LABEL_367:
      if (v568 >= 0.0)
      {
        sub_10022C350(&qword_100CAC408, &qword_100A6B670);
        sub_10002FDD8();
        sub_1000245D4(v1438);
        sub_10012CC58();
        v1439();
        v1440 = sub_100051DC0();
        v1441(v1440);
        sub_100095588();
        v2354 = sub_1003032E8(v2161);
        v1442 = *(sub_10022C350(&qword_100CAC410, &unk_100A3B380) + 48);
        v1443 = sub_1004B5F04();
        v1444 = v2224;
        *v2224 = v1443;
        (v2344)(v1444 + v1442, v2162, v2326);
        sub_100040F64();
        v1445(v1444);
        v1446 = v2324;
        v2352 = sub_1003046AC(v2353, v605 + v2324);
        sub_10006A70C();
        v1447 = sub_10019239C();
        v1448(v1447);
        v2351 = DetailChartCondition.title.getter();
        *&v2350 = v1449;
        sub_10008654C();
        v1450 = v2287;
        v1451 = [v2287 mainBundle];
        sub_1000B9E40();
        v2391._object = v558;
        sub_1000080F4();
        v2386._countAndFlagsBits = 0xD000000000000030;
        v1456 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1452, v1453, v1454, v1455, v2386);
        v2349 = v1456._countAndFlagsBits;
        v2348 = v1456._object;

        v1457 = [v1450 mainBundle];
        v2391._object = 0x8000000100ABF800;
        sub_10003C338();
        v1458._object = 0xE800000000000000;
        v1462 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1459, v1460, v1461, v1458, v2387);
        *&v2345 = v1462._countAndFlagsBits;

        sub_10001BD24();
        sub_1001D1B40();
        v1463 = v2221;
        v1464 = v2289;
        v2346(v2221, v2319, v2289);
        sub_100020634();
        v1465 = v2288;
        sub_1000B98D8();
        v1468 = v1467 & ~v1466;
        v857 = swift_allocObject();
        sub_10001E7CC();
        sub_1003096E4();
        (*(v1465 + 32))(v857 + v1468, v1463, v1464);
        sub_10022C350(&qword_100CAC418, &qword_100A6EE30);
        v1469 = v2220;
        sub_100003934();
        sub_10001B350(v1470, v1471, v1472, v1473);
        v1474 = sub_1004B5F28();
        sub_100040BDC();
        v1475 = v2223;
        v1476(v2223);
        sub_10030A08C();
        sub_1000314EC();
        sub_100309FD4();
        v2032 = v2350;
        v2028 = v2351;
        sub_10030A06C();
        v2019 = v1477;
        v2017 = v2352;
        v2013 = v2224;
        sub_100042D34();
        sub_10060D4A0(v1480, v568, v1474, v2307, v2308, v2160, v2157, v2353, v2158, v1400, v2198, v2274, v1478, 0, v1469, v1479, v2009, v2010, v2013, 7, v2017, v2019, *(&v2019 + 1), 0, 0x80u, v2022, v1475, v2028, v2032, v2033, v2037, v2041, v2044, v2047, v1462._object, 0, 0, sub_100309F30, v2391._object);
        sub_1000E59C8();
        v1481(v2159, v2314);
        sub_1000377D4();
        v1482(v2162, v2326);
        sub_1000228B4();
        sub_10030968C(v2161, v1483);
LABEL_240:
        v1154 = sub_100036C9C();
        v1155(v1154);
        v1156 = sub_1000176C8();
        v1157(v1156);
        v1158 = v2329;
LABEL_273:
        sub_1000180EC(v1158, &qword_100CAB930, &qword_100A3A7C0);
        v1330 = sub_1000C8960();
        v1331(v1330);
LABEL_274:
        v849 = v2336;
        goto LABEL_275;
      }

LABEL_648:
      __break(1u);
LABEL_649:
      __break(1u);
LABEL_650:
      sub_1000080D4(&qword_100CA2198);
LABEL_250:
      sub_100031C38();
      a9 = sub_1004B5EBC();
      v1173 = static Color.white.getter();
      v1174 = v2262;
      *v2262 = v1173;
      sub_1000D3BE4();
      v1175(v1174);
      v1176 = sub_100309F80();
      v1177(v1176, v655, v2326);
      sub_100040FF4();
      ChartAreaStyle.init(gradient:opacity:)();
      type metadata accessor for ChartAreaStyle();
      sub_10002FDE8();
      sub_10000E7B0();
      sub_10001B350(v1178, v1179, v1180, v1181);
      v1182 = sub_10022C350(&qword_100CAC430, &qword_100A76930);
      v1183 = sub_1000B97CC(v1182);
      *(v1183 + 16) = xmmword_100A2D320;
      *(v1183 + 32) = xmmword_100A3B010;
      v655 = v2138;
      sub_1001706B4();
      ChartLineStyle.init(strokeStyle:lineThickness:lineColor:lineDash:opacity:opacityIncreasedContrast:areaStyle:)();
      v1184 = sub_1000B0E58();
      (v2290)(v1184);
      v639 = DetailChartCondition.id.getter();
      *&v2345 = v1185;
      v1186 = sub_10000E8F4();
      v1187(v1186, v558);
      sub_10022C350(&qword_100CAC400, &unk_100A3B370);
      sub_100016310();
      v870 = v2156;
      v1188 = sub_100192210();
      v1189 = v2314;
      v1190(v1188);
      sub_10000E7B0();
      sub_10001B350(v1191, v1192, v1193, v1189);
      sub_100003934();
      sub_10001B350(v1194, v1195, v1196, v1189);
      sub_100051BBC();
      sub_1000E1710();
      v1197(v870);
      sub_1000AF510();
      sub_100071480();
      v1198();
      sub_1000B0C44();
      sub_100042204();
      *&v2347 = v1199;
      v2346 = v1200;
      v1200();
      v1201 = sub_1002789B0(v525);
      v716 = v1201 - 1;
      if (__OFSUB__(v1201, 1))
      {
        __break(1u);
LABEL_652:
        __break(1u);
LABEL_653:
        __break(1u);
LABEL_654:
        sub_1000080D4(&qword_100CA2198);
LABEL_500:
        sub_100031C38();
        v1727 = sub_1004B5EE0();
        v1728 = sub_100051DC0();
        v1729(v1728);
        sub_100095588();
        v2346 = sub_1003032E8(v2128);
        v1730 = *(sub_10022C350(&qword_100CAC410, &unk_100A3B380) + 48);
        v1731 = v2224;
        *v2224 = 1.0;
        (v2349)(v1731 + v1730, v2129, v2326);
        sub_100040F64();
        v1732(v1731);
        (v525)(v2254, v2139, v558);
        (v525)(v2104, v2127, v558);
        v1733 = sub_10019239C();
        v1734(v1733);
        sub_100040BDC();
        v1735(v2223);
        v2349 = DetailChartCondition.title.getter();
        v2348 = v1736;
        sub_10008654C();
        v1737 = [v2287 mainBundle];
        v2391._object = v558;
        sub_1001924D0();
        sub_100003CD0();
        v1738._object = 0xE600000000000000;
        v1741 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1739, v1740, v1737, v1738, v2390);
        *&v2345 = v1741._countAndFlagsBits;
        v857 = v1741._object;

        sub_10001BD24();
        sub_1001D1B40();
        v1742 = v2221;
        v1743 = v2289;
        (v2350)(v2221, v2319, v2289);
        sub_10002C5E4();
        v1746 = v2288;
        v1747 = (v2280 + *(v2288 + 80) + (v1745 & ~v1744)) & ~*(v2288 + 80);
        v1748 = swift_allocObject();
        sub_10001E7CC();
        sub_1003096E4();
        (*(v1746 + 32))(&v1748[v1747], v1742, v1743);
        sub_10022C350(&qword_100CAC418, &qword_100A6EE30);
        v1749 = v2220;
        v1750 = sub_100005508();
        sub_10001B350(v1750, v1751, v1752, v1753);
        v2051 = sub_100309F30;
        v2391._object = v1748;
        sub_10030A08C();
        v2049 = v2345;
        v2046 = object;
        v2043 = countAndFlagsBits;
        sub_100309FD4();
        v2024 = v2223;
        v2023 = v2278;
        v2016 = v2104;
        v2014 = v2254;
        v2011 = v2353;
        sub_100042D34();
        sub_10060E78C(v2347, v2352, v2196, v2258, v2354, v2195, 0, v2198, v2274, v1756, *(v1754 + 96), v1727, 0x3FC999999999999ALL, 0, v1749, v1755, v2007, v2008, v1731, v2011, v2014, v2016, 0, 0, 0, 0, 64, v2023, v2024, v2025, v2029, 0, 0xE000000000000000, v2043, v2046, 0, 0xE000000000000000, v2049, v2050, v2051, v2391._object);
        sub_1000E59C8();
        v1757(v2130, v2314);
        sub_1000377D4();
        v1758(v2129, v2326);
        v1759 = *(v2317 + 8);
        v1760 = v2318;
        v1759(v2106, v2318);
        v849 = v2336;
        v1761 = *(v2336 + 8);
        v1761(v2127, v1741._object);
        v1761(v2139, v1741._object);
        sub_1000228B4();
        sub_10030968C(v2128, v1762);
        v1763 = sub_100036C9C();
        v1764(v1763);
        v1759(v2330, v1760);
        sub_1000180EC(v2329, &qword_100CAB930, &qword_100A3A7C0);
        v1765 = sub_1000C8960();
        v1766(v1765);

        goto LABEL_275;
      }

      v1202 = v2352;
      if (v716 >= 2)
      {
        sub_1001711C0();
        while (1)
        {
          v925 = v1203 + 1;
          if (__OFADD__(v1203, 1))
          {
            break;
          }

          sub_10003A150();
          if (v1204 >= v716)
          {
            goto LABEL_346;
          }
        }

LABEL_622:
        __break(1u);
        goto LABEL_623;
      }

      v925 = 0;
LABEL_346:
      sub_1000EFF14(_swiftEmptyArrayStorage);
      sub_100307230(v925);
      if ((v925 & 0x8000000000000000) != 0)
      {
        goto LABEL_652;
      }

      v1432 = v2354;
      v2351 = v716;
      *&v2344 = v639;
      if (v925)
      {
        sub_10006948C();
        sub_100086738(v525 + v1433);
        v525 = v1202 + 32;
        v1434 = 1;
        while (v1434 < v716)
        {
          v655 = v1434 + 2;
          if (__OFADD__(v1434, 2))
          {
            v870 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v870 = v1434 + 2;
          }

          if (v1434 < 0)
          {
            goto LABEL_613;
          }

          sub_100020E7C();
          if (v691)
          {
            goto LABEL_614;
          }

          sub_100040EA8();
          sub_100088840();
          v1435();
          v639 = v2364;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_10000C978();
            sub_10030A014();
          }

          v558 = *(v639 + 16);
          sub_1000BC6B4();
          if (v691)
          {
            v1437 = sub_1000135B8(v1436);
            sub_1000925F4(v1437);
            sub_10030A014();
          }

          *(v639 + 16) = v716;
          (*v525)(v639 + v2350 + v558 * v1202, v2215, v1432);
          v2364 = v639;
          v1434 = v870;
          --v925;
          v1202 = v2352;
          v716 = v2351;
          if (!v925)
          {
            if (v870 < v2351)
            {
              goto LABEL_371;
            }

            goto LABEL_403;
          }
        }

        goto LABEL_612;
      }

      if (v716 > 1)
      {
        sub_10006948C();
        v655 = 1;
LABEL_371:
        sub_1000C826C();
        sub_100086738(v1484);
        v1485 = (v1202 + 32);
        while (1)
        {
          v870 = v655 + 2;
          v525 = __OFADD__(v655, 2);
          if (v655 < 0)
          {
            goto LABEL_625;
          }

          sub_10012005C();
          if (v691)
          {
            goto LABEL_626;
          }

          v716 = *(v1202 + 72);
          sub_100088840();
          v1486();
          v639 = v2364;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_10000C978();
            sub_10030A014();
          }

          v1487 = *(v639 + 16);
          sub_100309F34();
          if (v691)
          {
            v1490 = sub_1000135B8(v1488);
            sub_100195538(v1490);
            sub_10030A014();
          }

          *(v639 + 16) = 0;
          (*v1485)(v639 + v2350 + v1487 * v716, v2199, v1432);
          v2364 = v639;
          if (v870 >= v2351)
          {
            v1489 = 1;
          }

          else
          {
            v1489 = v525;
          }

          v655 += 2;
          v1202 = v2352;
          if (v1489)
          {
            goto LABEL_403;
          }
        }
      }

LABEL_402:
      v639 = v2364;
LABEL_403:
      sub_10022C350(&qword_100CAC408, &qword_100A6B670);
      sub_10002FDD8();
      sub_1000245D4(v1520);
      sub_10012CC58();
      v1521();
      sub_100309FE8();
      sub_1000522E4();
      v1522();
      sub_100095588();
      v1523 = v2319;
      v2312 = ConditionUnits.visibility.getter();
      sub_10003B950();
      v2348 = v1525;
      v2340 = v1526;
      v1526(v2145, v716 + v1524, v2337);
      v1527 = (v716 + v2324);
      v2324 = DetailChartCondition.title.getter();
      v2311 = v1528;
      sub_100040CA8();
      v1529 = v2287;
      v1530 = [v2287 mainBundle];
      sub_1000B9E40();
      v2391._object = v870;
      sub_1000080F4();
      v1535 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1531, v1532, v1533, v1534, v2388);
      v2310 = v1535._countAndFlagsBits;
      v2308 = v1535._object;

      sub_100040CA8();
      v1536 = [v1529 mainBundle];
      v2391._object = v870;
      v1537 = v2343;
      sub_10003C338();
      v1538._object = 0xEA00000000007974;
      v1542 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1539, v1540, v1541, v1538, v2389);
      v2307 = v1542._countAndFlagsBits;
      v2306 = v1542._object;

      sub_10001BD24();
      sub_1001D1B40();
      v1543 = v2288;
      v1544 = v2101;
      v1545 = v2289;
      (*(v2288 + 16))(v2101, v1523, v2289);
      sub_100020634();
      sub_1000B98D8();
      v1548 = v1547 & ~v1546;
      v1549 = sub_100309F58();
      sub_10001E7CC();
      sub_1003096E4();
      v1550 = *(v1543 + 32);
      v2319 = v1549;
      v1550(v1549 + v1548, v1544, v1545);
      sub_10022C350(&qword_100CAC418, &qword_100A6EE30);
      sub_100003934();
      sub_10001B350(v1551, v1552, v1553, v1554);
      a9 = sub_1004B5F28();
      v1555 = sub_1004B5F04();
      v1556 = v2133;
      *v2133 = v1555;
      v1557 = v2313;
      v1558 = sub_100192324();
      v1559(v1558);
      sub_1000E14C8();
      v1560(v2153);
      v2325 = *(v2327 + 16);
      (v2325)(v2148, v2156, v2338);
      sub_100087D78();
      v1561();
      sub_1000B01B0();
      v1562();
      sub_1000056BC();
      sub_1001D1B40();
      sub_10000FBB8();
      sub_1001D1B40();
      (v2349)(v2146, v2147, v2342);
      sub_100095588();
      v1563 = v2354;
      v2333 = *(v1557 + 16);
      (v2333)(v2150, v1556, &qword_100D90070);
      v1564 = v2098;
      v525 = v2353;
      sub_1003DF9A4(v2353, v2098);
      sub_100003A40(v1564);
      if (v1699)
      {
        sub_1000180EC(v1564, &qword_100CAB930, &qword_100A3A7C0);
        v1570 = v2102;
        sub_100003934();
        sub_10001B350(v1565, v1566, v1567, v1537);
        static WeatherClock.date.getter();
        v1568 = sub_100016298();
        sub_1000038B4(v1568, v1569, v1537);
        v1556 = v2352;
        v1577 = v2099;
        if (!v1699)
        {
          sub_1000180EC(v1570, &unk_100CB2CF0, &unk_100A2D7F0);
        }
      }

      else
      {
        v1570 = v2102;
        v1563 = v1564;
        DetailChartDataElement.date.getter();
        v1571 = sub_1000C8D4C();
        v1572(v1571);
        sub_10000E7B0();
        sub_100043980(v1573, v1574, v1575, v1537);
        v1576(v2140, v1570, v1537);
        v1577 = v2099;
      }

      sub_100019394();
      sub_1002F5700(v525, v1578, v1577);
      sub_100003A40(v1577);
      if (v1699)
      {
        sub_1000180EC(v1577, &qword_100CAB930, &qword_100A3A7C0);
        v1579 = v2103;
        v1580 = sub_100005508();
        v931 = v2343;
        sub_10001B350(v1580, v1581, v1582, v2343);
        v655 = v2131;
        static WeatherClock.date.getter();
        v1583 = sub_10000C7F0();
        sub_1000038B4(v1583, v1584, v931);
        if (!v1699)
        {
          sub_1000180EC(v1579, &unk_100CB2CF0, &unk_100A2D7F0);
        }
      }

      else
      {
        v1585 = v2103;
        v1570 = v1563;
        DetailChartDataElement.date.getter();
        (*(v1556 + 8))(v1577, v1563);
        sub_10000E7B0();
        v931 = v2343;
        sub_100043980(v1586, v1587, v1588, v2343);
        v655 = v2131;
        v1589(v2131, v1585, v931);
      }

      (v2340)(v2132, v2145, v2337);
      (*(v2323 + 16))(v2135, v2153, v2332);
      ChartKind.showSecondLine.getter();
      v558 = v2136;
      v1590 = sub_10008870C(v2345);
      (v2325)(v1590);
      v1591 = v2334;
      (v2334)(v558 + *(v1570 + 72), v2141, v931);
      sub_100309FC0();
      sub_1000B01B0();
      v1592();
      *(v558 + *(v1570 + 32)) = v639;
      v1593 = v558 + *(v1570 + 40);
      *v1593 = 0;
      *(v1593 + 8) = v568;
      sub_1000056BC();
      sub_1001D1B40();
      v1594 = v558 + *(v1570 + 52);
      *v1594 = 0x4014000000000000;
      *(v1594 + 8) = 0;
      sub_10000FBB8();
      sub_1001D1B40();
      *(v558 + *(v1570 + 60)) = a9;
      (v2349)(v558 + *(v1570 + 64), v2146, v2342);
      sub_100095588();
      *(v558 + *(v1570 + 88)) = _swiftEmptyArrayStorage;
      (v2333)(v558 + *(v1570 + 92), v2150, v2331);
      v1595 = sub_100309F40();
      (v1591)(v1595, v2140, v931);
      (v1591)(v558 + *(v1570 + 80), v655, v931);
      v1596 = sub_10000C70C(0, &qword_100CA53F0, NSDateFormatter_ptr);

      v1597 = static NSDateFormatter.prevailingPeriodSymbols.getter();
      sub_100309FA0(v1597);
      if (v825 != v606)
      {
        v925 = 0;
LABEL_417:
        sub_1000EFF14(_swiftEmptyArrayStorage);
        sub_100307230(v925);
        if ((v925 & 0x8000000000000000) != 0)
        {
          goto LABEL_653;
        }

        if (!v925)
        {
          if (v1570 < 1)
          {
            goto LABEL_456;
          }

          v639 = 0;
          sub_100011468();
          *&v2350 = v1612;
LABEL_436:
          v2349 = (v525 + v2350);
          v2348 = v1611 + 16;
          v1613 = (v1611 + 32);
          v525 = v639;
          while (1)
          {
            v1614 = __OFADD__(v525, 2);
            if (v639 < 0)
            {
              break;
            }

            sub_100087134();
            if (v525 >= v1616)
            {
              goto LABEL_624;
            }

            v1617 = *(v1615 + 72);
            (*(v1615 + 16))(v2201, &v2349[v1617 * v525], v2354);
            if ((sub_1000426F4() & 1) == 0)
            {
              sub_10000C978();
              v1596 = v2364;
            }

            v1619 = *(v1596 + 16);
            v1618 = *(v1596 + 24);
            v925 = v1619 + 1;
            if (v1619 >= v1618 >> 1)
            {
              v1622 = sub_1000135B8(v1618);
              sub_100195538(v1622);
              v1596 = v2364;
            }

            *(v1596 + 16) = v925;
            sub_100021D44();
            (*v1613)(v1620 + v1619 * v1617, v2201, v2354);
            v2364 = v1596;
            v1621 = v525 + 2 >= v2351 || v1614;
            v525 += 2;
            if (v1621 == 1)
            {
              goto LABEL_450;
            }
          }

LABEL_623:
          __break(1u);
LABEL_624:
          __break(1u);
LABEL_625:
          __break(1u);
LABEL_626:
          __break(1u);
LABEL_627:
          __break(1u);
LABEL_628:
          __break(1u);
LABEL_629:
          __break(1u);
LABEL_630:
          __break(1u);
LABEL_631:
          __break(1u);
LABEL_632:
          __break(1u);
LABEL_633:
          __break(1u);
LABEL_634:
          sub_1000080D4(&qword_100CA2198);
          goto LABEL_237;
        }

        sub_1000C84CC();
        v2349 = (v525 + v1601);
        v558 = v1602 + 16;
        v525 = v1602 + 32;
        while (v1600 < v1570)
        {
          sub_1000E0F44();
          if (v606)
          {
            v639 = v1605;
          }

          else
          {
            v639 = v1604;
          }

          if (v1603 < 0)
          {
            goto LABEL_617;
          }

          sub_100020E7C();
          if (v691)
          {
            goto LABEL_618;
          }

          v655 = *(v1607 + 72);
          (*(v1607 + 16))(v2214, &v2349[v655 * v1606]);
          if ((sub_1000426F4() & 1) == 0)
          {
            sub_10000C978();
            v1596 = v2364;
          }

          v1609 = *(v1596 + 16);
          v1608 = *(v1596 + 24);
          if (v1609 >= v1608 >> 1)
          {
            sub_1000135B8(v1608);
            sub_1006A7AB4();
            v1596 = v2364;
          }

          *(v1596 + 16) = v1609 + 1;
          sub_100021D44();
          (*v525)(v1610 + v1609 * v655, v2214, v2354);
          sub_1000B9148();
          v1611 = v2352;
          if (v1699)
          {
            v525 = v2353;
            if (v639 < v1570)
            {
              goto LABEL_436;
            }

LABEL_450:

            v931 = v2343;
            v655 = v2131;
            goto LABEL_451;
          }
        }

        goto LABEL_616;
      }

      sub_100079494();
      while (1)
      {
        v925 = v1598 + 1;
        if (__OFADD__(v1598, 1))
        {
          break;
        }

        sub_10003A150();
        if (v1599 >= v1570)
        {
          goto LABEL_417;
        }
      }

LABEL_615:
      __break(1u);
LABEL_616:
      __break(1u);
LABEL_617:
      __break(1u);
LABEL_618:
      __break(1u);
LABEL_619:
      sub_1000080D4(&qword_100CA2198);
LABEL_27:
      sub_100031C38();
      v568 = sub_1004B5EE0();
      sub_1000522E4();
      v2346 = v669;
      v2325 = v670;
      v670();
      sub_100095588();
      v671 = v2184;
      sub_1003DF9A4(v2351, v2184);
      v672 = sub_100016298();
      v673 = v2354;
      sub_1000113D0(v672, v674);
      v675 = v2189;
      v676 = v2222;
      v677 = v2185;
      if (v1699)
      {
        sub_1000180EC(v671, &qword_100CAB930, &qword_100A3A7C0);
        sub_100003934();
        sub_10001B350(v678, v679, v680, v639);
        static WeatherClock.date.getter();
        sub_1000038B4(v675, 1, v639);
        if (!v1699)
        {
          sub_1000180EC(v675, &unk_100CB2CF0, &unk_100A2D7F0);
        }
      }

      else
      {
        DetailChartDataElement.date.getter();
        v673 = v2354;
        v876 = sub_100031474();
        v877(v876);
        sub_10000E7B0();
        sub_100043980(v878, v879, v880, v639);
        v881(v2225, v675, v639);
      }

      sub_100019394();
      sub_1002F5700(v2351, v882, v677);
      sub_100003A40(v677);
      v2308 = v558;
      v2307 = v655;
      if (v1699)
      {
        sub_1000180EC(v677, &qword_100CAB930, &qword_100A3A7C0);
        v883 = v2190;
        v884 = sub_100005508();
        sub_10001B350(v884, v885, v886, v639);
        static WeatherClock.date.getter();
        v887 = sub_10000C7F0();
        sub_1000038B4(v887, v888, v639);
        if (!v1699)
        {
          sub_1000180EC(v883, &unk_100CB2CF0, &unk_100A2D7F0);
        }
      }

      else
      {
        DetailChartDataElement.date.getter();
        (*(v2352 + 8))(v677, v673);
        v894 = v2165;
        static Calendar.current.getter();
        v895 = v2190;
        Date.wc_addMinutes(_:calendar:)();
        (*(v2282 + 8))(v894, v2283);
        v896 = v2336;
        v897 = sub_1000B7B80();
        v898(v897, v639);
        sub_10000E7B0();
        sub_10001B350(v899, v900, v901, v639);
        (*(v896 + 32))(v676, v895, v639);
      }

      v902 = v2333;
      v2312 = sub_1003046AC(v525, v2333 + v2324);

      sub_10003B950();
      v904(v2202, v902 + v903, v2337);
      v2340 = DetailChartCondition.title.getter();
      v2324 = v905;
      sub_10001BD24();
      sub_1001D1B40();
      v906 = v2288;
      v907 = v2187;
      v908 = v2289;
      (*(v2288 + 16))(v2187, v2319, v2289);
      sub_100020634();
      sub_1000B98D8();
      v911 = v910 & ~v909;
      v912 = swift_allocObject();
      sub_10001E7CC();
      sub_1003096E4();
      v913 = *(v906 + 32);
      v2333 = v912;
      v913(v912 + v911, v907, v908);
      sub_10022C350(&qword_100CAC418, &qword_100A6EE30);
      sub_100003934();
      sub_10001B350(v914, v915, v916, v917);
      v918 = sub_1004B5F04();
      v919 = v2204;
      *v2204 = v918;
      v920 = v2331;
      (*(v2313 + 104))(v919, enum case for ChartPeakMarkStyle.line(_:), v2331);
      sub_1000E14C8();
      v921(v2206);
      v922 = v2230;
      ChartKind.showSecondLine.getter();
      v923 = v2207;
      v924 = v2349;
      *v2207 = v2350;
      *(v923 + 1) = v924;
      v525 = v2291;
      (*(v2327 + 16))(&v923[*(v2291 + 20)], v922, v2338);
      v925 = v2334;
      (v2334)(&v923[*(v525 + 72)], v2226, v639);
      v926 = v2351;
      *&v923[*(v525 + 24)] = v2351;
      (v2347)(&v923[*(v525 + 28)], v2227, v2341);
      *&v923[*(v525 + 32)] = 0;
      *&v923[*(v525 + 40)] = xmmword_100A3B040;
      sub_1000056BC();
      sub_1001D1B40();
      v927 = &v923[*(v525 + 52)];
      *v927 = 0x3FF0000000000000;
      v927[8] = 0;
      sub_10000FBB8();
      sub_1001D1B40();
      *&v923[*(v525 + 60)] = v568;
      (v2325)(&v923[*(v525 + 64)], v2229, v2342);
      sub_100095588();
      *&v923[*(v525 + 88)] = _swiftEmptyArrayStorage;
      (*(v2313 + 16))(&v923[*(v525 + 92)], v919, v920);
      *&v923[*(v525 + 96)] = 7;
      (v925)(&v923[*(v525 + 76)], v2225, v639);
      v928 = v2222;
      (v925)(&v923[*(v525 + 80)], v2222, v639);
      v929 = sub_10000C70C(0, &qword_100CA53F0, NSDateFormatter_ptr);

      *&v923[*(v525 + 68)] = static NSDateFormatter.prevailingPeriodSymbols.getter();
      v930 = sub_1002789B0(v926);
      v655 = v930 - 1;
      if (__OFSUB__(v930, 1))
      {
        __break(1u);
LABEL_621:
        __break(1u);
        goto LABEL_622;
      }

      v931 = v928;
      v925 = v2352;
      if (v655 >= 1)
      {
        sub_100079494();
        while (1)
        {
          v933 = v932 + 1;
          if (__OFADD__(v932, 1))
          {
            break;
          }

          sub_10003A150();
          if (v934 >= v655)
          {
            goto LABEL_175;
          }
        }

        __break(1u);
        goto LABEL_453;
      }

      v933 = 0;
LABEL_175:
      sub_1000EFF14(_swiftEmptyArrayStorage);
      sub_100307230(v933);
      if (v933 < 0)
      {
        goto LABEL_621;
      }

      *&v2350 = v655;
      if (v933)
      {
        v935 = 0;
        v2353 = (*(v925 + 80) + 32) & ~*(v925 + 80);
        v2349 = (v2351 + v2353);
        v936 = (v925 + 32);
        while (v935 < v655)
        {
          sub_1000E0F44();
          if (v606)
          {
            v940 = v939;
          }

          else
          {
            v940 = v938;
          }

          if ((v937 & 0x8000000000000000) != 0)
          {
            goto LABEL_454;
          }

          if (v937 >= *(v2351 + 16))
          {
            goto LABEL_455;
          }

          v941 = *(v925 + 72);
          (*(v925 + 16))(v2345, &v2349[v941 * v937], v2354);
          if ((sub_1000426F4() & 1) == 0)
          {
            sub_10000C978();
            v929 = v2364;
          }

          v943 = *(v929 + 16);
          v942 = *(v929 + 24);
          v931 = (v943 + 1);
          if (v943 >= v942 >> 1)
          {
            sub_1000135B8(v942);
            sub_1006A7AB4();
            v929 = v2364;
          }

          *(v929 + 16) = v931;
          *&v944 = COERCE_DOUBLE((*v936)(v929 + v2353 + v943 * v941, v2345, v2354));
          v2364 = v929;
          v935 = v940;
          --v933;
          v639 = v2343;
          v925 = v2352;
          v655 = v2350;
          if (!v933)
          {
            if (v940 < v2350)
            {
              goto LABEL_199;
            }

LABEL_214:
            v931 = v2222;
            goto LABEL_215;
          }
        }

LABEL_453:
        __break(1u);
LABEL_454:
        __break(1u);
LABEL_455:
        __break(1u);
LABEL_456:

LABEL_451:
        v1623 = *(v2336 + 8);
        v1623(v655, v931);
        v1623(v2140, v931);
        sub_100199470();
        v1624(v2150, v2331);
        sub_1000180EC(v2143, &qword_100CAB930, &qword_100A3A7C0);
        v2354 = *(v2328 + 8);
        (v2354)(v2146, v2342);
        sub_1000436D0();
        sub_10030968C(v2152, v1625);
        sub_1000747A8();
        v2352 = v1626;
        sub_10030968C(v2149, v1627);
        *&v2350 = *(v2321 + 8);
        v1628 = v2341;
        (v2350)(v2142, v2341);
        v1623(v2141, v2343);
        v2349 = *(v2327 + 8);
        (v2349)(v2148, v2338);
        v849 = v2323;
        (*(v2323 + 8))(v2153, v2332);
        (v2353)(v2133, v2331);
        sub_10030968C(v2134, v931);
        v1629 = v2316;
        (*(v2316 + 8))(v2145, v2337);
        sub_1000180EC(v2144, &qword_100CAB930, &qword_100A3A7C0);
        v1630 = v2342;
        v1631 = v2354;
        (v2354)(v2147, v2342);
        sub_10030968C(v2151, v2352);
        v1632 = v1628;
        v1633 = v2350;
        (v2350)(v2155, v1632);
        (v2351)(v2154, v2343);
        (v2349)(v2156, v2338);
        sub_1000E59C8();
        v1634(v2138, v2314);
        sub_1000377D4();
        v1635(v2137, v2326);
        (v1631)(v2339, v1630);
        v857 = v2343;
        v1636 = sub_1000176C8();
        v1637(v1636);
        sub_1000180EC(v2329, &qword_100CAB930, &qword_100A3A7C0);
        v1633(v2320, v2341);
        sub_10001321C();
        v1638 = v2136;
        v1640 = sub_10030A058(v1639);
        v1641(v1640, v2135, v2332);
        sub_1000D41B4();
        *(v1642 + 8) = 0;
        *(v1642 + 16) = 0;
        *v1642 = v2312;
        *(v1642 + 24) = 1;
        (*(v1629 + 32))(v1638 + *(v1630 + 104), v2132, v2337);
        sub_1000C8E30();
        sub_1000379F4(v1643);
        sub_1000BAED4(v1644);
        *v867 = sub_100309F30;
        v868 = v2319;
        goto LABEL_142;
      }

      if (v655 < 1)
      {

LABEL_215:
        (*(v2313 + 8))(v2204, v2331);
        sub_10030968C(v2205, type metadata accessor for ChartViewModel.Background);
        v1004 = *(v2336 + 8);
        v1004(v931, v639);
        v1004(v2225, v639);
        sub_1000180EC(v2228, &qword_100CAB930, &qword_100A3A7C0);
        v1005 = *(v2328 + 8);
        v1006 = v2342;
        v1005(v2229, v2342);
        sub_1000747A8();
        sub_10030968C(v2231, v1007);
        v1008 = *(v2321 + 8);
        v1009 = v2341;
        v1008(v2227, v2341);
        v1004(v2226, v2343);
        (*(v2327 + 8))(v2230, v2338);
        sub_1000377D4();
        v1010(v2203, v2326);
        v1005(v2339, v1006);
        v857 = v2343;
        v1011 = sub_1000176C8();
        v1012(v1011);
        sub_1000180EC(v2329, &qword_100CAB930, &qword_100A3A7C0);
        v1008(v2320, v1009);
        sub_10001321C();
        v1013 = v2207;
        *&v2207[v1015] = v1014;
        (*(v2323 + 32))(&v1013[v1009[27]], v2206, v2332);
        *&v1013[v1009[9]] = v2312;
        v1016 = &v1013[v1009[11]];
        *(v1016 + 1) = 0;
        *(v1016 + 2) = 0;
        *v1016 = 1;
        sub_100040DB0(v1016);
        v1018(&v1013[v1017], v2202, v2337);
        v1019 = &v1013[v1009[28]];
        v1020 = v2324;
        *v1019 = v2340;
        v1019[1] = v1020;
        v1021 = &v1013[v1009[29]];
        v1022 = v2314;
        *v1021 = v2315;
        v1021[1] = v1022;
        v1023 = &v1013[v1009[30]];
        v1024 = object;
        *v1023 = countAndFlagsBits;
        v1023[1] = v1024;
        v1025 = &v1013[v1009[31]];
        v1026 = v2307;
        *v1025 = v2308;
        *(v1025 + 1) = v1026;
        v1027 = &v1013[v1009[32]];
        *v1027 = 0;
        *(v1027 + 1) = 0;
        v1028 = &v1013[v1009[33]];
        v1029 = v2333;
        *v1028 = sub_100309F30;
        *(v1028 + 1) = v1029;
        v849 = v2336;
        goto LABEL_216;
      }

      v940 = 0;
      sub_100011468();
      v2353 = v997;
LABEL_199:
      v2349 = (v2351 + v2353);
      v2348 = v925 + 16;
      v998 = (v925 + 32);
      v999 = v940;
      while (1)
      {
        v1000 = __OFADD__(v999, 2);
        if (v940 < 0)
        {
          break;
        }

        if (v999 >= *(v2351 + 16))
        {
          goto LABEL_458;
        }

        v1001 = *(v2352 + 72);
        (*(v2352 + 16))(v2344, &v2349[v1001 * v999], v2354);
        if ((sub_1000426F4() & 1) == 0)
        {
          sub_10000C978();
          v929 = v2364;
        }

        v925 = *(v929 + 16);
        v1002 = *(v929 + 24);
        if (v925 >= v1002 >> 1)
        {
          sub_1000135B8(v1002);
          sub_1006A7AB4();
          v929 = v2364;
        }

        *(v929 + 16) = v925 + 1;
        *&v944 = COERCE_DOUBLE((*v998)(v929 + v2353 + v925 * v1001, v2344, v2354));
        v2364 = v929;
        v1003 = (v999 + 2) >= v2350 || v1000;
        v999 += 2;
        if (v1003 == 1)
        {

          v639 = v2343;
          goto LABEL_214;
        }
      }

      __break(1u);
LABEL_458:
      __break(1u);
LABEL_459:
      v1354 = *&v944;
LABEL_460:
      v1645 = v2264;
      *&v1646 = COERCE_DOUBLE(DetailChartExtrema.maxSecondValue.getter());
      if (v1647)
      {
        Array<A>.maxSecondValue.getter();
      }

      else
      {
        v1648 = *&v1646;
      }

      if (v1354 > v1648)
      {
        v1648 = v1354;
      }

      if ((*&v1648 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_659;
      }

      if (v1648 <= -9.22337204e18)
      {
        goto LABEL_660;
      }

      if (v1648 >= 9.22337204e18)
      {
        goto LABEL_661;
      }

      if (static Beaufort.maxLevel.getter() >= v1648)
      {
        v1650 = static Beaufort.maxLevel.getter();
      }

      else
      {
        v1650 = static Beaufort.maxExtendedLevel.getter();
      }

      a9 = v1650;
      v1661 = 0.0;
LABEL_503:
      v1767 = ConditionUnits.windSpeed.getter();
      v1768 = v2125;
      static DetailChartGradientModel.windGradientModel(startValue:windSpeedUnit:)();

      sub_1000C8BB0();
      *&v2350 = v1769;
      v2349 = v1770;
      (v1770)(v1645, v2330, v925);
      if (qword_100CA2198 != -1)
      {
        sub_1000080D4(&qword_100CA2198);
      }

      LODWORD(v2351) = v2259 == 1;
      sub_100031C38();
      sub_1004B5EBC();
      v1771 = *(v2322 + 16);
      v1772 = v2262;
      v1773 = v2326;
      v1771(v2262, v1768, v2326);
      LODWORD(v2348) = enum case for ChartLineColor.gradient(_:);
      *&v2347 = *(v2261 + 104);
      v1774 = sub_1001ACFE0();
      v1775(v1774);
      v1771(v2284, v1768, v1773);
      ChartAreaStyle.init(gradient:opacity:)();
      v2346 = type metadata accessor for ChartAreaStyle();
      sub_10000E7B0();
      sub_10001B350(v1776, v1777, v1778, v1779);
      v1780 = sub_10022C350(&qword_100CAC430, &qword_100A76930);
      v1781 = sub_1000B97CC(v1780);
      v2345 = xmmword_100A2D320;
      v2344 = xmmword_100A3B010;
      *(v1781 + 16) = xmmword_100A2D320;
      *(v1781 + 32) = xmmword_100A3B010;
      sub_1001706B4();
      ChartLineStyle.init(strokeStyle:lineThickness:lineColor:lineDash:opacity:opacityIncreasedContrast:areaStyle:)();
      sub_100037FA8();
      (v2349)();
      v11 = sub_1004B5EBC();
      v1771(v1772, v2125, v1773);
      (v2347)(v1772, v2348, v2265);
      sub_100003934();
      sub_10001B350(v1782, v1783, v1784, v2346);
      v1785 = sub_1000B97CC(v1780);
      v1786 = v2344;
      *(v1785 + 16) = v2345;
      *(v1785 + 32) = v1786;
      v1787 = v2097;
      ChartLineStyle.init(strokeStyle:lineThickness:lineColor:lineDash:opacity:opacityIncreasedContrast:areaStyle:)();
      v1788 = v2123;
      sub_1000236D4();
      v1789 = v2290;
      v2290();
      v1790 = v2180;
      sub_100095588();
      sub_1000453D4();
      sub_10030A04C();
      *&v2345 = v1791;
      *&v2344 = v1792;
      v1792();
      *(v1788 + v1790[5]) = v2351;
      *(v1788 + v1790[8]) = 0;
      *(v1788 + v1790[9]) = 0;
      *(v1788 + v1790[10]) = 0;
      v1793 = sub_1000B0E58();
      (v1789)(v1793);
      v1794 = DetailChartCondition.id.getter();
      v1796 = v1795;
      v1797 = sub_10000E8F4();
      v1798(v1797, v1773);
      v1799 = *(sub_10022C350(&qword_100CAC400, &unk_100A3B370) + 48);
      v1800 = *(v2315 + 16);
      v1801 = v2124;
      v1802 = v2314;
      v1800(v2124, v2126, v2314);
      sub_10000E7B0();
      sub_10001B350(v1803, v1804, v1805, v1802);
      v1800(v1801 + v1799, v1787, v1802);
      sub_10000E7B0();
      sub_10001B350(v1806, v1807, v1808, v1802);
      sub_1000E1710();
      v1809(v1801);
      sub_1000AF510();
      sub_100071480();
      v1810();
      sub_1000B0C44();
      sub_100042204();
      *&v2347 = v1811;
      v2346 = v1812;
      v1812();
      v605 = v2353;
      v1813 = sub_1002789B0(v2353);
      v1091 = v1813 - 1;
      if (__OFSUB__(v1813, 1))
      {
        __break(1u);
LABEL_656:
        __break(1u);
LABEL_657:
        __break(1u);
LABEL_658:
        __break(1u);
LABEL_659:
        __break(1u);
LABEL_660:
        __break(1u);
LABEL_661:
        __break(1u);
LABEL_662:
        result = _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
        return result;
      }

      v1078 = v2352;
      if (v1091 >= 2)
      {
        sub_1001711C0();
        while (1)
        {
          v925 = v1814 + 1;
          if (__OFADD__(v1814, 1))
          {
            goto LABEL_637;
          }

          sub_10003A150();
          if (v1815 >= v1091)
          {
            goto LABEL_512;
          }
        }
      }

      v925 = 0;
LABEL_512:
      sub_1000EFF14(_swiftEmptyArrayStorage);
      sub_100307230(v925);
      if ((v925 & 0x8000000000000000) != 0)
      {
        goto LABEL_656;
      }

      v1816 = v2354;
      v2351 = v1091;
      v2308 = v1794;
      v2307 = v1796;
      if (v925)
      {
        sub_10006948C();
        sub_100086738(v605 + v1817);
        v525 = v1078 + 32;
        v1818 = 1;
        while (v1818 < v2351)
        {
          v1819 = v1818 + 2;
          if (__OFADD__(v1818, 2))
          {
            v1820 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v1820 = v1818 + 2;
          }

          if (v1818 < 0)
          {
            goto LABEL_628;
          }

          sub_100020E7C();
          if (v691)
          {
            goto LABEL_629;
          }

          sub_100040EA8();
          sub_100088840();
          v1821();
          v1822 = v2364;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_10000C978();
            sub_100309FFC();
          }

          v1801 = *(v1822 + 16);
          sub_1000BC6B4();
          if (v691)
          {
            v1824 = sub_1000135B8(v1823);
            sub_1000925F4(v1824);
            sub_100309FFC();
          }

          *(v1822 + 16) = v605;
          (*v525)(v1822 + v2350 + v1801 * v1078, v2192, v1816);
          v2364 = v1822;
          v1818 = v1820;
          --v925;
          v1078 = v2352;
          if (!v925)
          {
            if (v1820 < v2351)
            {
              goto LABEL_530;
            }

            goto LABEL_546;
          }
        }

        goto LABEL_627;
      }

      if (v1091 <= 1)
      {
        v1822 = v2364;
LABEL_546:
        if (v1661 > a9)
        {
          goto LABEL_657;
        }

        sub_10022C350(&qword_100CAC408, &qword_100A6B670);
        sub_10002FDD8();
        sub_1000245D4(v1833);
        sub_10012CC58();
        v1834();
        sub_100309FE8();
        sub_1000522E4();
        v1835();
        sub_100095588();
        v2348 = sub_1003032E8(v2123);
        sub_10003B950();
        v2340 = v1837;
        v2325 = v1838;
        (v1838)(v2111, v605 + v1836, v2337);
        v2324 = DetailChartCondition.title.getter();
        v2312 = v1839;
        sub_1000176DC();
        v1840 = v2287;
        v1841 = [v2287 mainBundle];
        sub_1001924D0();
        v1843 = v1842 - 4;
        v2391._object = v1078;
        sub_100003CD0();
        v1844._countAndFlagsBits = 0;
        v1844._object = 0xE000000000000000;
        v2391._countAndFlagsBits = v1843;
        v1847 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1845, v1846, v1841, v1844, v2391);
        v2311 = v1847._countAndFlagsBits;
        v2310 = v1847._object;

        sub_10008654C();
        v1848 = [v1840 mainBundle];
        sub_1001924D0();
        v2391._object = v1801;
        sub_100003CD0();
        v1852 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1849, v1850, v1848, v1851, v2392);
        v2306 = v1852._countAndFlagsBits;
        v2305 = v1852._object;

        sub_1000176DC();
        v1853 = v1840;
        v1854 = v2343;
        v1855 = [v1853 mainBundle];
        v2391._object = "t_ax_yaxis_description";
        sub_100003CD0();
        v1856._object = 0xE500000000000000;
        v1859 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1857, v1858, v1855, v1856, v2393);
        v2304 = v1859._countAndFlagsBits;
        v2303 = v1859._object;

        sub_10001BD24();
        sub_1001D1B40();
        v1860 = v2081;
        v1861 = v2289;
        (v2344)(v2081, v2319, v2289);
        sub_100020634();
        v1862 = v2288;
        sub_1000B98D8();
        v1865 = v1864 & ~v1863;
        v1866 = sub_100309F58();
        sub_10001E7CC();
        sub_1003096E4();
        v1867 = *(v1862 + 32);
        v2333 = v1866;
        v1867(v1866 + v1865, v1860, v1861);
        sub_10022C350(&qword_100CAC418, &qword_100A6EE30);
        sub_100003934();
        sub_10001B350(v1868, v1869, v1870, v1871);
        v11 = sub_1004B5F28();
        v1872 = sub_1004B5F04();
        v1873 = v2092;
        *v2092 = v1872;
        v1874 = v2313;
        v1875 = sub_100192324();
        v1876(v1875);
        sub_1000E14C8();
        v1877(v2119);
        v1878 = *(v2327 + 16);
        v1878(v2114, v2124, v2338);
        sub_100087D78();
        v1879();
        sub_1000B01B0();
        v1880();
        sub_1000056BC();
        sub_1001D1B40();
        sub_10000FBB8();
        sub_1001D1B40();
        (v2349)(v2112, v2113, v2342);
        sub_100095588();
        v1881 = *(v1874 + 16);
        *&v2345 = v1874 + 16;
        *&v2344 = v1881;
        v1881(v2116, v1873, &qword_100D90070);
        v1882 = v2079;
        sub_1003DF9A4(v2353, v2079);
        v1883 = v2354;
        sub_1000113D0(v1882, 1);
        if (v1699)
        {
          sub_1000180EC(v1882, &qword_100CAB930, &qword_100A3A7C0);
          v1884 = v2083;
          sub_100003934();
          sub_10001B350(v1885, v1886, v1887, v1854);
          static WeatherClock.date.getter();
          v1888 = sub_100016298();
          sub_1000038B4(v1888, v1889, v1854);
          v1897 = v2082;
          if (!v1699)
          {
            sub_1000180EC(v1884, &unk_100CB2CF0, &unk_100A2D7F0);
          }
        }

        else
        {
          v1890 = v2083;
          v1883 = v1882;
          DetailChartDataElement.date.getter();
          v1891 = sub_1000C8D4C();
          v1892(v1891);
          sub_10000E7B0();
          sub_100043980(v1893, v1894, v1895, v1854);
          v1896(v2120, v1890, v1854);
          v1897 = v2082;
        }

        sub_100019394();
        v1898 = v2353;
        sub_1002F5700(v2353, v1899, v1897);
        sub_100003A40(v1897);
        if (v1699)
        {
          sub_1000180EC(v1897, &qword_100CAB930, &qword_100A3A7C0);
          v1900 = v2084;
          v1901 = sub_100005508();
          v1078 = v2343;
          sub_10001B350(v1901, v1902, v1903, v2343);
          v1912 = v2096;
          static WeatherClock.date.getter();
          v1904 = sub_10000C7F0();
          sub_1000038B4(v1904, v1905, v1078);
          if (!v1699)
          {
            sub_1000180EC(v1900, &unk_100CB2CF0, &unk_100A2D7F0);
          }
        }

        else
        {
          v1906 = v2084;
          DetailChartDataElement.date.getter();
          v1907 = sub_1000D3D24();
          v1908(v1907, v1883);
          sub_10000E7B0();
          v1078 = v2343;
          sub_100043980(v1909, v1910, v1911, v2343);
          v1912 = v2096;
          v1913(v2096, v1906, v1078);
        }

        (v2325)(v2091, v2111, v2337);
        (*(v2323 + 16))(v2094, v2119, v2332);
        v1914 = v2114;
        ChartKind.showSecondLine.getter();
        v525 = v2095;
        v1915 = v2307;
        *v2095 = v2308;
        *(v525 + 8) = v1915;
        v1916 = v2291;
        v1878(v525 + *(v2291 + 20), v1914, v2338);
        v1917 = v2334;
        (v2334)(v525 + v1916[18], v2107, v1078);
        *(v525 + v1916[6]) = v1898;
        sub_1000B01B0();
        v1918();
        *(v525 + v1916[8]) = v1822;
        v1919 = (v525 + v1916[10]);
        *v1919 = v1661;
        v1919[1] = a9;
        sub_1000056BC();
        sub_1001D1B40();
        v1920 = v525 + v1916[13];
        *v1920 = v568;
        *(v1920 + 8) = 0;
        sub_10000FBB8();
        sub_1001D1B40();
        *(v525 + v1916[15]) = v11;
        (v2349)(v525 + v1916[16], v2112, v2342);
        sub_100095588();
        *(v525 + v1916[22]) = v2348;
        (v2344)(v525 + v1916[23], v2116, v2331);
        *(v525 + v1916[24]) = 7;
        (v1917)(v525 + v1916[19], v2120, v1078);
        (v1917)(v525 + v1916[20], v1912, v1078);
        v1921 = sub_10000C70C(0, &qword_100CA53F0, NSDateFormatter_ptr);

        *(v525 + v1916[17]) = static NSDateFormatter.prevailingPeriodSymbols.getter();
        v1922 = v2351;
        if (v2351 >= 1)
        {
          sub_100079494();
          v1091 = v2352;
          while (1)
          {
            v925 = v1923 + 1;
            if (__OFADD__(v1923, 1))
            {
              goto LABEL_630;
            }

            sub_10003A150();
            if (v1924 >= v1922)
            {
              goto LABEL_561;
            }
          }
        }

        v925 = 0;
        v1091 = v2352;
LABEL_561:
        sub_1000EFF14(_swiftEmptyArrayStorage);
        sub_100307230(v925);
        if ((v925 & 0x8000000000000000) != 0)
        {
          goto LABEL_658;
        }

        if (v925)
        {
          sub_1000C84CC();
          v2349 = (v1898 + v1926);
          v525 = v1091 + 32;
          while (v1925 < v1922)
          {
            sub_1000E0F44();
            if (v606)
            {
              v1930 = v1929;
            }

            else
            {
              v1930 = v1928;
            }

            if (v1927 < 0)
            {
              goto LABEL_632;
            }

            sub_100020E7C();
            if (v691)
            {
              goto LABEL_633;
            }

            v1932 = *(v1091 + 72);
            (*(v1091 + 16))(v2191, &v2349[v1932 * v1931]);
            if ((sub_1000426F4() & 1) == 0)
            {
              sub_10000C978();
              v1921 = v2364;
            }

            v1078 = *(v1921 + 16);
            v1933 = *(v1921 + 24);
            if (v1078 >= v1933 >> 1)
            {
              v1935 = sub_1000135B8(v1933);
              sub_1000925F4(v1935);
              v1921 = v2364;
            }

            *(v1921 + 16) = v1078 + 1;
            sub_100021D44();
            (*v525)(v1934 + v1078 * v1932, v2191, v2354);
            sub_1000B9148();
            v1091 = v2352;
            v1922 = v2351;
            if (v1699)
            {
              v1898 = v2353;
              if (v1930 < v2351)
              {
                goto LABEL_580;
              }

              goto LABEL_592;
            }
          }

          goto LABEL_631;
        }

        if (v1922 < 1)
        {
LABEL_592:

          v1943 = *(v2336 + 8);
          v1944 = v2343;
          v1943(v2096, v2343);
          v1943(v2120, v1944);
          *&v2350 = v1943;
          v2352 = *(v2313 + 8);
          (v2352)(v2116, v2331);
          sub_1000180EC(v2109, &qword_100CAB930, &qword_100A3A7C0);
          v2353 = *(v2328 + 8);
          (v2353)(v2112, v2342);
          sub_1000436D0();
          sub_10030968C(v2118, v1945);
          sub_1000747A8();
          v2351 = v1946;
          sub_10030968C(v2115, v1947);
          v2354 = *(v2321 + 8);
          (v2354)(v2108, v2341);
          v1943(v2107, v1944);
          v2349 = *(v2327 + 8);
          v1948 = v2338;
          (v2349)(v2114, v2338);
          (*(v2323 + 8))(v2119, v2332);
          (v2352)(v2092, v2331);
          sub_10030968C(v2093, v1078);
          (*(v2316 + 8))(v2111, v2337);
          sub_1000180EC(v2110, &qword_100CAB930, &qword_100A3A7C0);
          v849 = v2353;
          (v2353)(v2113, v2342);
          sub_10030968C(v2117, v2351);
          (v2354)(v2122, v2341);
          (v2350)(v2121, v1944);
          v857 = v1944;
          (v2349)(v2124, v1948);
          sub_1000228B4();
          sub_10030968C(v2123, v1949);
          v1950 = *(v2315 + 8);
          v1951 = v2314;
          (v1950)(v2097, v2314);
          (v1950)(v2126, v1951);
          sub_1000377D4();
          v1952(v2125, v2326);
          (v849)(v2339, v2342);
          v1953 = sub_1000176C8();
          v1954(v1953);
          sub_1000180EC(v2329, &qword_100CAB930, &qword_100A3A7C0);
          (v2354)(v2320, v2341);
          sub_10001321C();
          v1955 = v2094;
          v1956 = v2095;
          *&v2095[v1958] = v1957;
          (*(v2323 + 32))(&v1956[*(v1950 + 108)], v1955, v2332);
          sub_1000D41B4();
          *v1959 = 0;
          v1959[1] = 0;
          v1959[2] = 0;
          sub_100040DB0(v1959);
          v1961(&v1956[v1960], v2091, v2337);
          v1962 = &v1956[*(v1950 + 112)];
          v1963 = v2312;
          *v1962 = v2324;
          v1962[1] = v1963;
          sub_1000379F4(&v1956[*(v1950 + 116)]);
          v1964 = v2305;
          *v1965 = v2306;
          v1965[1] = v1964;
          v1966 = &v1956[*(v1950 + 128)];
          v1967 = v2303;
          *v1966 = v2304;
          *(v1966 + 1) = v1967;
          v867 = &v1956[*(v1950 + 132)];
          goto LABEL_141;
        }

        v1930 = 0;
        sub_100011468();
        *&v2350 = v1936;
LABEL_580:
        v2349 = (v1898 + v2350);
        v2348 = v1091 + 16;
        v1937 = (v1091 + 32);
        while (1)
        {
          v605 = __OFADD__(v1930, 2);
          if (v1930 < 0)
          {
            goto LABEL_638;
          }

          sub_100087134();
          if (v1930 >= v1938)
          {
            goto LABEL_639;
          }

          v1078 = *(v1091 + 72);
          (*(v1091 + 16))(v2181, &v2349[v1078 * v1930], v2354);
          if ((sub_1000426F4() & 1) == 0)
          {
            sub_10000C978();
            v1921 = v2364;
          }

          v1940 = *(v1921 + 16);
          v1939 = *(v1921 + 24);
          if (v1940 >= v1939 >> 1)
          {
            v1942 = sub_1000135B8(v1939);
            sub_100195538(v1942);
            v1921 = v2364;
          }

          *(v1921 + 16) = v1940 + 1;
          sub_100021D44();
          (*v1937)(v1941 + v1940 * v1078, v2181, v2354);
          sub_1000C85A0();
          v1091 = v2352;
          if (v1699)
          {
            goto LABEL_592;
          }
        }
      }

      sub_10006948C();
      v1819 = 1;
LABEL_530:
      sub_1000C826C();
      sub_100086738(v1825);
      v1801 = (v1078 + 32);
      while (1)
      {
        v1091 = v1819 + 2;
        v1826 = __OFADD__(v1819, 2);
        if ((v1819 & 0x8000000000000000) != 0)
        {
          break;
        }

        sub_100087134();
        if (v1819 >= v1827)
        {
          goto LABEL_641;
        }

        v605 = *(v1078 + 72);
        sub_100088840();
        v1828();
        v1822 = v2364;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10000C978();
          sub_100309FFC();
        }

        v1829 = *(v1822 + 16);
        sub_100309F34();
        if (v691)
        {
          v1832 = sub_1000135B8(v1830);
          sub_100195538(v1832);
          sub_100309FFC();
        }

        *(v1822 + 16) = 0;
        (*v1801)(v1822 + v2350 + v1829 * v605, v2179, v1816);
        v2364 = v1822;
        v1831 = v1091 >= v2351 || v1826;
        v1819 += 2;
        v1078 = v2352;
        if (v1831)
        {
          goto LABEL_546;
        }
      }
    }

    __break(1u);
LABEL_647:
    __break(1u);
    goto LABEL_648;
  }

  sub_10022C350(&qword_100CAC3F8, &qword_100A3B368);
  v560 = swift_allocObject();
  *(v560 + 16) = xmmword_100A3B020;
  static Color.green.getter();
  v561 = Gradient.Stop.init(color:location:)();
  sub_1000B90CC(v561, v562);
  static Color.cyan.getter();
  *(v560 + 48) = Gradient.Stop.init(color:location:)();
  *(v560 + 56) = v563;
  static Color.blue.getter();
  *(v560 + 64) = Gradient.Stop.init(color:location:)();
  *(v560 + 72) = v564;
  (*(v2248 + 104))(v2249, enum case for Color.RGBColorSpace.sRGB(_:), v2250);
  Color.init(_:red:green:blue:opacity:)();
  *(v560 + 80) = Gradient.Stop.init(color:location:)();
  *(v560 + 88) = v565;
  Gradient.init(stops:)();
  v566 = v2276;
  DetailChartGradientModel.init(gradient:startValue:endValue:)();
  sub_1000C8BB0();
  sub_100037FA8();
  v567();
  if (qword_100CA2198 != -1)
  {
    sub_1000080D4(&qword_100CA2198);
  }

  sub_100031C38();
  v568 = sub_1004B5EBC();
  v569 = *(v2322 + 16);
  v570 = v2326;
  v569(v2262, v566, v2326);
  sub_1000D3BE4();
  v571 = sub_1001ACFE0();
  v572(v571);
  v569(v2284, v566, v570);
  sub_100040FF4();
  ChartAreaStyle.init(gradient:opacity:)();
  type metadata accessor for ChartAreaStyle();
  sub_10002FDE8();
  sub_10000E7B0();
  sub_10001B350(v573, v574, v575, v576);
  v577 = sub_10022C350(&qword_100CAC430, &qword_100A76930);
  v578 = sub_1000B97CC(v577);
  *(v578 + 16) = xmmword_100A2D320;
  *(v578 + 32) = xmmword_100A3B010;
  v579 = v2277;
  sub_1001706B4();
  ChartLineStyle.init(strokeStyle:lineThickness:lineColor:lineDash:opacity:opacityIncreasedContrast:areaStyle:)();
  v580 = sub_1000B0E58();
  (v2290)(v580);
  v581 = DetailChartCondition.id.getter();
  v583 = v582;
  v584 = sub_10000E8F4();
  v585(v584, v558);
  sub_10022C350(&qword_100CAC400, &unk_100A3B370);
  sub_100016310();
  v586 = v2308;
  v587 = v579;
  v588 = v2314;
  v589(v2308, v587, v2314);
  sub_10000E7B0();
  sub_10001B350(v590, v591, v592, v588);
  v593 = v2251;
  sub_100003934();
  sub_10001B350(v594, v595, v596, v588);
  sub_100051BBC();
  sub_1000E1710();
  v597(v586);
  sub_1000AF510();
  sub_100071480();
  v598();
  sub_1000B0C44();
  sub_100042204();
  v2325 = v599;
  v2312 = v600;
  v600();
  v601 = sub_1002789B0(v525);
  v602 = v601 - 1;
  if (__OFSUB__(v601, 1))
  {
    __break(1u);
    goto LABEL_596;
  }

  if (v602 >= 4)
  {
    v603 = 0;
    v604 = 3;
    while (1)
    {
      v605 = v603 + 1;
      if (__OFADD__(v603, 1))
      {
        goto LABEL_339;
      }

      v606 = __OFADD__(v604, 6);
      v604 += 6;
      if (v606)
      {
        v604 = 0x7FFFFFFFFFFFFFFFLL;
      }

      ++v603;
      if (v604 >= v602)
      {
        goto LABEL_32;
      }
    }
  }

  v605 = 0;
LABEL_32:
  sub_1000EFF14(_swiftEmptyArrayStorage);
  sub_100307230(v605);
  if (v605 < 0)
  {
LABEL_596:
    __break(1u);
    goto LABEL_597;
  }

  v2351 = v602;
  v2290 = v581;
  v2285 = v583;
  if (!v605)
  {
    v685 = v2354;
    if (v602 <= 3)
    {
      v687 = v2364;
      goto LABEL_94;
    }

    sub_100011468();
    v2348 = v689;
    v655 = 3;
    goto LABEL_50;
  }

  sub_100011468();
  v2348 = v681;
  *&v2345 = v525 + v681;
  *&v2344 = v682 + 16;
  v683 = (v682 + 32);
  v684 = 3;
  v685 = v2354;
  do
  {
    v604 = v2351;
    if (v684 >= v2351)
    {
      __break(1u);
LABEL_333:
      __break(1u);
LABEL_334:
      __break(1u);
LABEL_335:
      __break(1u);
LABEL_336:
      __break(1u);
LABEL_337:
      __break(1u);
LABEL_338:
      __break(1u);
LABEL_339:
      __break(1u);
LABEL_340:
      if (v605 != enum case for DetailChartCondition.chanceOfRain(_:))
      {
        goto LABEL_662;
      }

      v1411 = v604;
      v1412 = v2259 == 1;
      v1413 = sub_10022C350(&qword_100CAC3F8, &qword_100A3B368);
      v1414 = sub_1000B97CC(v1413);
      v2347 = *(v1411 + 1008);
      *(v1414 + 16) = v2347;
      static Color.cyan.getter();
      v1415 = Gradient.Stop.init(color:location:)();
      sub_1000B90CC(v1415, v1416);
      v2349 = Gradient.init(stops:)();
      v1417 = v2128;
      sub_100088370();
      v1418();
      v1419 = v2180;
      sub_100095588();
      sub_1000453D4();
      sub_10030A04C();
      v2351 = v1420;
      *&v2350 = v1421;
      v1421();
      v1422 = static Color.cyan.getter();
      *(v1417 + v1419[5]) = v1412;
      *(v1417 + v1419[8]) = 1;
      *(v1417 + v1419[9]) = 0;
      *(v1417 + v1419[10]) = v1422;
      v1423 = v2085;
      sub_1003DF9A4(v525, v2085);
      sub_1000113D0(v1423, 1);
      v1424 = v2343;
      v1425 = v2336;
      v1427 = v2087;
      v1426 = v2088;
      v1428 = v2127;
      if (v1699)
      {
        sub_1000180EC(v1423, &qword_100CAB930, &qword_100A3A7C0);
        sub_100003934();
        sub_10001B350(v1429, v1430, v1431, v1424);
        static WeatherClock.date.getter();
        sub_1000038B4(v1427, 1, v1424);
        v1497 = v2309;
        if (!v1699)
        {
          sub_1000180EC(v1427, &unk_100CB2CF0, &unk_100A2D7F0);
        }
      }

      else
      {
        DetailChartDataElement.date.getter();
        v1491 = v2354;
        v1492 = sub_1000B7B80();
        v1493(v1492, v1491);
        sub_10000E7B0();
        sub_10001B350(v1494, v1495, v1496, v1424);
        (*(v1425 + 32))(v2139, v1427, v1424);
        v1497 = v2309;
      }

      sub_100019394();
      v1498 = v2086;
      sub_1002F5700(v525, v1499, v2086);
      sub_100003A40(v1498);
      if (v1699)
      {
        sub_1000180EC(v1498, &qword_100CAB930, &qword_100A3A7C0);
        sub_100003934();
        sub_10001B350(v1500, v1501, v1502, v1424);
        static WeatherClock.date.getter();
        sub_1000038B4(v1426, 1, v1424);
        if (!v1699)
        {
          sub_1000180EC(v1426, &unk_100CB2CF0, &unk_100A2D7F0);
        }
      }

      else
      {
        DetailChartDataElement.date.getter();
        v1503 = sub_1000D3D24();
        v1504(v1503, v2354);
        sub_10000E7B0();
        sub_100043980(v1505, v1506, v1507, v1424);
        sub_100309F74();
        v1508();
      }

      if (static Date.> infix(_:_:)())
      {
        v1509 = sub_100031474();
        v1510 = v2334;
        (v2334)(v1509);
        (v1510)(v2254, v1428, v1424);
        v1511 = v2072;
        sub_100031474();
        DateInterval.init(start:end:)();
        v1512 = DateInterval.contains(_:)();
        (*(v2073 + 8))(v1511, v2074);
        v1513 = (v2317 + 104);
        if (v1512)
        {
          v1514 = v2106;
          v1515 = v2106;
          v1516 = v1497;
        }

        else
        {
          v1514 = v2106;
          v1515 = v2106;
          v1516 = v1428;
        }

        (v1510)(v1515, v1516, v1424);
        v1519 = v2318;
        (*v1513)(v1514, enum case for ChartLineStrokeStyle.solidFrom(_:), v2318);
        v1518 = v1514;
        v1517 = v2317;
      }

      else
      {
        v1517 = v2317;
        v1518 = v2106;
        v1519 = v2318;
        (*(v2317 + 104))(v2106, enum case for ChartLineStrokeStyle.solid(_:), v2318);
      }

      v1663 = v2129;
      DetailChartGradientModel.init(gradient:startValue:endValue:)();
      v1664 = v2264;
      (*(v1517 + 16))(v2264, v1518, v1519);
      v1665 = *(v2322 + 16);
      v2348 = v2322 + 16;
      v1666 = v2262;
      v1667 = v2326;
      v1665(v2262, v1663, v2326);
      sub_1000D3BE4();
      v1668(v1666);
      v2349 = v1665;
      v1665(v2284, v1663, v1667);
      ChartAreaStyle.init(gradient:opacity:)();
      type metadata accessor for ChartAreaStyle();
      sub_10000E7B0();
      sub_10001B350(v1669, v1670, v1671, v1672);
      sub_1001706B4();
      ChartLineStyle.init(strokeStyle:lineThickness:lineColor:lineDash:opacity:opacityIncreasedContrast:areaStyle:)();
      v2364 = v525;
      v1673 = v2259;
      if (v2259 != 1)
      {
        sub_100309FB4();
        v558 = v2343;
        goto LABEL_487;
      }

      v1674 = v2070;
      sub_100095588();
      v1675 = sub_10000C7F0();
      v1676 = v2354;
      sub_1000038B4(v1675, v1677, v2354);
      v1678 = v2177;
      if (v1699)
      {
        sub_1000180EC(v1674, &qword_100CAB930, &qword_100A3A7C0);
        sub_100309FB4();
        v1673 = v2259;
        v558 = v2343;
        goto LABEL_487;
      }

      v1693 = v2352;
      v1694 = v2075;
      v1695 = sub_100031474();
      v1697 = v1696(v1695);
      __chkstk_darwin(v1697);
      v2391._object = v2275;
      v2052 = v2309;
      v1664 = v2062;
      sub_1008DBAC8();
      v1698 = v2069;
      sub_1000113D0(v1664, 1);
      v558 = v2343;
      if (v1699)
      {
        v1700 = *(v1693 + 8);
        v525 = v1693 + 8;
        v1700(v1694, v1676);
        sub_1000180EC(v1664, &qword_100CAC3C8, &unk_100A3B350);
        sub_100309FB4();
        v1673 = v2259;
        goto LABEL_487;
      }

      v1968 = v2066;
      v1969 = v2068;
      v1970 = sub_100192210();
      v1971(v1970);
      v2177 = v1678;
      v1972 = v2333;
      v1973 = v2292;
      v1974 = v2255;
      v2346 = sub_100302190(v2309, &v2292[v2333]);
      *&v2345 = v1975;
      (*(v1968 + 16))(v2064, v1969, v1698);
      v1976 = v2340;
      sub_100095588();
      v1977 = v2324;
      sub_100088370();
      v1978();
      sub_10030A04C();
      (v2350)();
      (*(v2053 + 16))(v2055, v1972 + *(v1976 + 48), v2054);
      (*(v2311 + 16))(v2252, &v1973[v1972], v2310);
      WeatherValueCalculationContext.init(hourWeather:dayWeather:chartCondition:units:currentWeather:timeZone:)();
      v1979 = v1974[15];
      v1980 = v1974 + 12;
      v583 = v2258;
      sub_1000161C0(v1980, v1979);
      *&v2344 = dispatch thunk of DetailChartDataPointValueCalculatorType.accessibilityValueDescription(for:)();
      v2308 = v1981;
      v1982 = v2309;
      sub_100309F74();
      sub_100087D78();
      v1983();
      DetailChartDataElement.value.getter();
      v1985 = v2056;
      v1984 = v2057;
      v1986 = v2058;
      (*(v2057 + 104))(v2056, enum case for HourWeather.SecondValueUseCase.chart(_:), v2058);
      v1987 = v2319;
      HourWeather.secondValue(for:units:useCase:)();
      (*(v1984 + 8))(v1985, v1986);
      sub_100302354(v1972 + v1977, v1987, v2253);

      sub_100302C08(v1972 + v1977);
      v2052 = 0;
      v2051 = v2308;
      v2050 = v2344;
      sub_100309F94();
      v1988 = DetailChartDataElement.init(date:value:secondValue:thirdValue:valueLabel:dateLabel:accessibilityDateString:accessibilityValueDescription:color:textColor:)();
      __chkstk_darwin(v1988);
      v2391._object = v1982;
      v558 = v2353;
      v1989 = v2177;
      v601 = sub_1008EF6B8(sub_1003095A0, &v2050, v2353);
      v2177 = v1989;
      if (v1990)
      {
        v1991 = v2352;
        v713 = *(v2352 + 16);
        v1992 = v2354;
        v655 = v2059;
        v716 = v2060;
        goto LABEL_608;
      }

LABEL_597:
      v707 = v601;
      sub_1009F3DA8(v601, 1, v558);
      v1993 = v2352;
      sub_100011468();
      v713 = v1993[2];
      v1995 = v2394._object;
      v1996 = v2354;
      v713(v2394._object, v558 + v1994 + v1993[9] * v707, v2354);
      DetailChartDataElement.date.getter();
      v558 = v1993[1];
      (v558)(v1995, v1996);
      Date.distance(to:)();
      v1998 = v1997;
      (*(v2336 + 8))(v583, v2343);
      static DetailChartCondition.chanceOfRainNowHourThreshold.getter();
      v655 = v2059;
      v716 = v2060;
      if (v1998 <= v1999)
      {
        goto LABEL_606;
      }

      v1992 = v2354;
      goto LABEL_607;
    }

    v655 = v684 + 6;
    v604 = 0x7FFFFFFFFFFFFFFFLL;
    if (__OFADD__(v684, 6))
    {
      v593 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v593 = v684 + 6;
    }

    if (v684 < 0)
    {
      goto LABEL_333;
    }

    v604 = *(v525 + 16);
    if (v684 >= v604)
    {
      goto LABEL_334;
    }

    v686 = *(v2352 + 72);
    (*(v2352 + 16))(v2350, v2345 + v686 * v684, v685);
    v687 = v2364;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_10000C978();
      sub_10030A020();
    }

    v558 = *(v687 + 16);
    v688 = *(v687 + 24);
    if (v558 >= v688 >> 1)
    {
      sub_1000135B8(v688);
      sub_1006A7AB4();
      sub_10030A020();
    }

    *(v687 + 16) = v558 + 1;
    (*v683)(v687 + v2348 + v558 * v686, v2350, v685);
    v2364 = v687;
    v684 = v593;
    --v605;
    v525 = v2353;
  }

  while (v605);
  if (v593 < v2351)
  {
LABEL_50:
    *&v2350 = v2353 + v2348;
    *&v2345 = v2352 + 16;
    v690 = (v2352 + 32);
    do
    {
      v593 = v655 + 6;
      v525 = __OFADD__(v655, 6);
      if (v655 < 0)
      {
        goto LABEL_364;
      }

      sub_10012005C();
      if (v691)
      {
        goto LABEL_365;
      }

      v692 = *(v2352 + 72);
      (*(v2352 + 16))(v2346, v2350 + v692 * v655, v685);
      v687 = v2364;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10000C978();
        sub_10030A020();
      }

      v558 = *(v687 + 16);
      sub_1000BC6B4();
      if (v691)
      {
        v695 = sub_1000135B8(v693);
        sub_1000925F4(v695);
        sub_10030A020();
      }

      *(v687 + 16) = 0;
      (*v690)(v687 + v2348 + v558 * v692, v2346, v685);
      v2364 = v687;
      if (v593 >= v2351)
      {
        v694 = 1;
      }

      else
      {
        v694 = v525;
      }

      v655 += 6;
    }

    while ((v694 & 1) == 0);
  }

LABEL_94:
  sub_10022C350(&qword_100CAC408, &qword_100A6B670);
  sub_10002FDD8();
  v741 = v2304;
  *v2304 = v742;
  v743 = v741;
  sub_100003934();
  sub_10001B350(v744, v745, v746, v2343);
  sub_1000C8FD0();
  v747 = v2333;
  v748(&v685[v743], &v2292[v2333], v2310);
  v749 = v2328 + 16;
  *&v2350 = *(v2328 + 16);
  sub_1000522E4();
  v750();
  sub_100095588();
  sub_10003B950();
  v2346 = v752;
  *&v2345 = v753;
  v753(v2298, v747 + v751, v2337);
  v2324 = DetailChartCondition.title.getter();
  v2311 = v754;
  sub_1000176DC();
  v755 = v2287;
  v756 = [v2287 mainBundle];
  v2391._object = v593;
  sub_1000080F4();
  v2380._countAndFlagsBits = 0xD000000000000030;
  v761 = NSLocalizedString(_:tableName:bundle:value:comment:)(v757, v758, v759, v760, v2380);
  v2310 = v761._countAndFlagsBits;
  v2292 = v761._object;

  sub_1000176DC();
  v762 = [v755 mainBundle];
  v2391._object = v593;
  sub_10003C338();
  v763._object = 0xE800000000000000;
  v767 = NSLocalizedString(_:tableName:bundle:value:comment:)(v764, v765, v766, v763, v2381);
  v2287 = v767._countAndFlagsBits;
  v2286 = v767._object;

  sub_10001BD24();
  sub_1001D1B40();
  v768 = v2288;
  v769 = v2242;
  v770 = v2289;
  (*(v2288 + 16))(v2242, v2319, v2289);
  sub_100020634();
  sub_1000B98D8();
  v773 = v772 & ~v771;
  v774 = swift_allocObject();
  sub_10001E7CC();
  sub_1003096E4();
  v775 = *(v768 + 32);
  v2333 = v774;
  v776 = v774 + v773;
  v777 = v2343;
  v775(v776, v769, v770);
  sub_10022C350(&qword_100CAC418, &qword_100A6EE30);
  sub_100003934();
  sub_10001B350(v778, v779, v780, v781);
  v568 = sub_1004B5F28();
  v782 = sub_1004B5F04();
  v783 = v2267;
  *v2267 = v782;
  v784 = v2313;
  v785 = v2331;
  (*(v2313 + 104))(v783, enum case for ChartPeakMarkStyle.line(_:), v2331);
  sub_1000E14C8();
  v605 = v2269;
  v786(v2269);
  v2340 = *(v2327 + 16);
  (v2340)(v2301, v2308, v2338);
  sub_100087D78();
  v787();
  (v2312)(v2295, v2307, v2341);
  sub_1000056BC();
  sub_1001D1B40();
  sub_10000FBB8();
  sub_1001D1B40();
  v2348 = v749;
  (v2350)(v2299, v2300, v2342);
  sub_100095588();
  v788 = v785;
  v789 = v2354;
  *&v2344 = *(v784 + 16);
  (v2344)(v2303, v783, v788);
  v790 = v2240;
  sub_1003DF9A4(v2353, v2240);
  sub_100003A40(v790);
  if (v1699)
  {
    sub_1000180EC(v790, &qword_100CAB930, &qword_100A3A7C0);
    v791 = v2238;
    sub_100003934();
    sub_10001B350(v792, v793, v794, v777);
    static WeatherClock.date.getter();
    sub_1000038B4(v791, 1, v777);
    v800 = v2237;
    if (!v1699)
    {
      sub_1000180EC(v791, &unk_100CB2CF0, &unk_100A2D7F0);
    }
  }

  else
  {
    v795 = v2238;
    DetailChartDataElement.date.getter();
    v789 = v2354;
    (*(v2352 + 8))(v790, v2354);
    sub_10000E7B0();
    sub_100043980(v796, v797, v798, v777);
    v799(v2293, v795, v777);
    v800 = v2237;
  }

  sub_100019394();
  v525 = v2353;
  sub_1002F5700(v2353, v801, v800);
  sub_100003A40(v800);
  if (v1699)
  {
    sub_1000180EC(v800, &qword_100CAB930, &qword_100A3A7C0);
    v802 = v2239;
    v803 = sub_100005508();
    v811 = v2343;
    sub_10001B350(v803, v804, v805, v2343);
    v815 = v2260;
    static WeatherClock.date.getter();
    v806 = sub_10000C7F0();
    sub_1000038B4(v806, v807, v811);
    if (!v1699)
    {
      sub_1000180EC(v802, &unk_100CB2CF0, &unk_100A2D7F0);
    }
  }

  else
  {
    v808 = v2239;
    DetailChartDataElement.date.getter();
    v809 = sub_1000D3D24();
    v810(v809, v789);
    sub_10000E7B0();
    v811 = v2343;
    sub_100043980(v812, v813, v814, v2343);
    v815 = v2260;
    v816(v2260, v808, v811);
  }

  (v2345)(v2266, v2298, v2337);
  (*(v2323 + 16))(v2270, v605, v2332);
  ChartKind.showSecondLine.getter();
  v817 = v2271;
  v818 = sub_10008870C(v2285);
  (v2340)(v818);
  v819 = v2334;
  (v2334)(v817 + *(v605 + 72), v2294, v811);
  v820 = sub_100309FC0();
  (v2312)(v820, v2295, v2341);
  *(v817 + *(v605 + 32)) = v687;
  *(v817 + *(v605 + 40)) = xmmword_100A3B050;
  sub_1000056BC();
  sub_1001D1B40();
  v821 = v817 + *(v605 + 52);
  *v821 = 0x3FC999999999999ALL;
  *(v821 + 8) = 0;
  sub_10000FBB8();
  sub_1001D1B40();
  *(v817 + *(v605 + 60)) = v568;
  (v2350)(v817 + *(v605 + 64), v2299, v2342);
  sub_100095588();
  *(v817 + *(v605 + 88)) = _swiftEmptyArrayStorage;
  (v2344)(v817 + *(v605 + 92), v2303, v2331);
  v822 = sub_100309F40();
  (v819)(v822, v2293, v811);
  (v819)(v817 + *(v605 + 80), v815, v811);
  v823 = sub_10000C70C(0, &qword_100CA53F0, NSDateFormatter_ptr);

  v824 = static NSDateFormatter.prevailingPeriodSymbols.getter();
  sub_100309FA0(v824);
  if (v825 == v606)
  {
    sub_100079494();
    v617 = v2352;
    while (1)
    {
      v827 = v826 + 1;
      if (__OFADD__(v826, 1))
      {
        goto LABEL_335;
      }

      sub_10003A150();
      if (v604 >= v605)
      {
        goto LABEL_108;
      }
    }
  }

  v827 = 0;
  v617 = v2352;
LABEL_108:
  sub_1000EFF14(_swiftEmptyArrayStorage);
  sub_100307230(v827);
  if (v827 < 0)
  {
    __break(1u);
    goto LABEL_600;
  }

  if (v827)
  {
    sub_1000C84CC();
    v604 = v525 + v829;
    v2348 = v604;
    do
    {
      if (v828 >= v605)
      {
        goto LABEL_336;
      }

      sub_1000E0F44();
      if (v606)
      {
        v832 = v831;
      }

      else
      {
        v832 = v604;
      }

      if ((v830 & 0x8000000000000000) != 0)
      {
        goto LABEL_337;
      }

      v604 = *(v525 + 16);
      if (v830 >= v604)
      {
        goto LABEL_338;
      }

      v833 = *(v617 + 72);
      (*(v617 + 16))(v2349, v2348 + v833 * v830, v2354);
      if ((sub_1000426F4() & 1) == 0)
      {
        sub_10000C978();
        v823 = v2364;
      }

      v835 = *(v823 + 16);
      v834 = *(v823 + 24);
      if (v835 >= v834 >> 1)
      {
        v837 = sub_1000135B8(v834);
        sub_1000925F4(v837);
        v823 = v2364;
      }

      *(v823 + 16) = v835 + 1;
      sub_100021D44();
      (*(v617 + 32))(v836 + v835 * v833, v2349, v2354);
      sub_1000B9148();
      v525 = v2353;
      v605 = v2351;
    }

    while (!v1699);
    if (v832 >= v2351)
    {
LABEL_139:

      v811 = v2343;
      v815 = v2260;
      goto LABEL_140;
    }

LABEL_127:
    sub_100086738(v525 + v2350);
    v558 = v617 + 32;
    v525 = v832;
    while (1)
    {
      v655 = v832 + 2;
      v605 = __OFADD__(v832, 2);
      if (v832 < 0)
      {
        break;
      }

      sub_100087134();
      if (v832 >= v838)
      {
        goto LABEL_363;
      }

      v839 = *(v617 + 72);
      (*(v617 + 16))(v2347, &v2349[v839 * v832], v2354);
      if ((sub_1000426F4() & 1) == 0)
      {
        sub_10000C978();
        v823 = v2364;
      }

      v840 = *(v823 + 16);
      sub_100309F34();
      if (v691)
      {
        v843 = sub_1000135B8(v841);
        sub_100195538(v843);
        v823 = v2364;
      }

      *(v823 + 16) = v827;
      sub_100021D44();
      (*v558)(v842 + v840 * v839, v2347, v2354);
      sub_1000C85A0();
      v617 = v2352;
      if (v1699)
      {
        goto LABEL_139;
      }
    }

    __break(1u);
LABEL_363:
    __break(1u);
LABEL_364:
    __break(1u);
LABEL_365:
    __break(1u);
    goto LABEL_366;
  }

  if (v605 >= 1)
  {
    v832 = 0;
    sub_10006948C();
    goto LABEL_127;
  }

LABEL_140:
  v844 = *(v2336 + 8);
  v844(v815, v811);
  v844(v2293, v811);
  sub_100199470();
  v845(v2303, v2331);
  sub_1000180EC(v2296, &qword_100CAB930, &qword_100A3A7C0);
  v2354 = *(v2328 + 8);
  (v2354)(v2299, v2342);
  sub_10030968C(v2305, type metadata accessor for ChartViewModel.Background);
  sub_1000747A8();
  v2352 = v846;
  sub_10030968C(v2302, v847);
  *&v2350 = *(v2321 + 8);
  v848 = v2341;
  (v2350)(v2295, v2341);
  v844(v2294, v2343);
  v2349 = *(v2327 + 8);
  (v2349)(v2301, v2338);
  v849 = v2323;
  (*(v2323 + 8))(v2269, v2332);
  (v2353)(v2267, v2331);
  sub_10030968C(v2268, type metadata accessor for ChartViewModel.Background);
  v850 = v2316;
  (*(v2316 + 8))(v2298, v2337);
  sub_1000180EC(v2297, &qword_100CAB930, &qword_100A3A7C0);
  v851 = v2342;
  v852 = v2354;
  (v2354)(v2300, v2342);
  sub_10030968C(v2304, v2352);
  v853 = v848;
  v854 = v2350;
  (v2350)(v2307, v853);
  (v2351)(v2306, v2343);
  (v2349)(v2308, v2338);
  sub_1000E59C8();
  v855(v2277, v2314);
  sub_1000377D4();
  v856(v2276, v2326);
  (v852)(v2339, v851);
  v857 = v2343;
  v858 = sub_1000176C8();
  v859(v858);
  sub_1000180EC(v2329, &qword_100CAB930, &qword_100A3A7C0);
  v854(v2320, v2341);
  sub_10001321C();
  v860 = v2271;
  v862 = sub_10030A058(v861);
  v863(v862, v2270, v2332);
  sub_1000D41B4();
  *v864 = 0;
  *(v864 + 8) = 0;
  *(v864 + 16) = 0;
  *(v864 + 24) = 64;
  (*(v850 + 32))(v860 + *(v851 + 104), v2266, v2337);
  sub_1000C8E30();
  sub_1000379F4(v865);
  sub_1000BAED4(v866);
LABEL_141:
  *v867 = sub_100309F30;
  v868 = v2333;
LABEL_142:
  *(v867 + 1) = v868;
LABEL_216:
  sub_1003096E4();
LABEL_275:
  (*(v2282 + 8))(v2275, v2283);
  return (*(v849 + 8))(v2309, v857);
}

uint64_t sub_100301560@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v120 = a3;
  v116 = a7;
  v117 = a8;
  LODWORD(v115) = a6;
  v123 = a5;
  v125 = a4;
  v121 = a2;
  v119 = a9;
  v16 = type metadata accessor for DetailChartDataElement.ValueLabel();
  __chkstk_darwin(v16 - 8);
  v118 = (&v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = type metadata accessor for HourWeather.SecondValueUseCase();
  v111 = *(v18 - 8);
  v112 = v18;
  __chkstk_darwin(v18);
  v109 = &v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = type metadata accessor for TimeZone();
  v103 = *(v106 - 8);
  __chkstk_darwin(v106);
  v102 = &v83 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for CurrentWeather();
  v98 = *(v100 - 8);
  __chkstk_darwin(v100);
  v99 = &v83 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for ConditionUnits();
  v95 = *(v96 - 8);
  __chkstk_darwin(v96);
  v97 = &v83 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = type metadata accessor for DetailChartCondition();
  v90 = *(v91 - 8);
  __chkstk_darwin(v91);
  v92 = &v83 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10022C350(&qword_100CAB9B0, &qword_100A3A820);
  __chkstk_darwin(v24 - 8);
  v89 = &v83 - v25;
  v85 = type metadata accessor for HourWeather();
  v84 = *(v85 - 8);
  __chkstk_darwin(v85);
  v88 = &v83 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for WeatherValueCalculationContext();
  v113 = *(v27 - 8);
  v114 = v27;
  __chkstk_darwin(v27);
  v122 = &v83 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for Calendar.Component();
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v32 = &v83 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  __chkstk_darwin(v33 - 8);
  v35 = &v83 - v34;
  v36 = type metadata accessor for Date();
  v37 = *(v36 - 8);
  __chkstk_darwin(v36);
  v39 = &v83 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __chkstk_darwin(v40);
  v43 = &v83 - v42;
  (*(v30 + 104))(v32, enum case for Calendar.Component.minute(_:), v29, v41);
  v124 = a1;
  HourWeather.date.getter();
  Calendar.date(bySetting:value:of:)();
  v44 = *(v37 + 8);
  v107 = v39;
  v105 = v37 + 8;
  v104 = v44;
  v44(v39, v36);
  (*(v30 + 8))(v32, v29);
  v45 = sub_100024D10(v35, 1, v36);
  v110 = v36;
  v101 = v37;
  if (v45 == 1)
  {
    v46 = v124;
    HourWeather.date.getter();
    if (sub_100024D10(v35, 1, v36) != 1)
    {
      sub_1000180EC(v35, &unk_100CB2CF0, &unk_100A2D7F0);
    }
  }

  else
  {
    (*(v37 + 32))(v43, v35, v36);
    v46 = v124;
  }

  v87 = a13;
  v86 = a12;
  v47 = type metadata accessor for ConditionDetailChartDataInput(0);
  v48 = v47[10];
  v49 = v125;
  v108 = v43;
  v50 = v120;
  v94 = sub_100302190(v43, v125 + v48);
  v93 = v51;
  (*(v84 + 16))(v88, v46, v85);
  sub_100095588();
  v121 = v47[6];
  (*(v90 + 16))(v92, v49 + v121, v91);
  (*(v95 + 16))(v97, v123, v96);
  (*(v98 + 16))(v99, v49 + v47[12], v100);
  (*(v103 + 16))(v102, v49 + v48, v106);
  WeatherValueCalculationContext.init(hourWeather:dayWeather:chartCondition:units:currentWeather:timeZone:)();
  sub_1000161C0(v50 + 12, v50[15]);
  dispatch thunk of DetailChartDataPointValueCalculatorType.value(for:)();
  Double.clamped(to:)();
  v53 = v52;
  LODWORD(v106) = enum case for HourWeather.SecondValueUseCase.chart(_:);
  v54 = v111;
  v103 = *(v111 + 104);
  v55 = v109;
  v56 = v112;
  (v103)(v109);
  HourWeather.secondValue(for:units:useCase:)();
  v57 = *(v54 + 8);
  v57(v55, v56);
  Double.clamped(to:)();
  v59 = v58;
  (v103)(v55, v106, v56);
  v60 = COERCE_DOUBLE(HourWeather.thirdValue(for:units:useCase:)());
  v62 = v61;
  v57(v55, v56);
  if ((v62 & 1) == 0)
  {
    Double.clamped(to:)();
    v60 = v63;
  }

  v64 = v108;
  if (v115)
  {
    sub_1000161C0(v120 + 12, v120[15]);
    v115 = dispatch thunk of DetailChartDataPointValueCalculatorType.accessibilityValueDescription(for:)();
    v112 = v65;
  }

  else
  {
    v115 = 0;
    v112 = 0xE000000000000000;
  }

  v66 = v101;
  v68 = v116;
  v67 = v117;
  v69 = *v116;
  if (*v116 >= v53)
  {
    v69 = v53;
  }

  if (*(v116 + 8))
  {
    v69 = v53;
  }

  *v116 = v69;
  *(v68 + 8) = 0;
  v70 = *v67;
  if (v53 > *v67)
  {
    v70 = v53;
  }

  if (*(v67 + 8))
  {
    v70 = v53;
  }

  *v67 = v70;
  *(v67 + 8) = 0;
  v71 = v86;
  v72 = *v86;
  if (*v86 >= v59)
  {
    v72 = v59;
  }

  if (*(v86 + 8))
  {
    v72 = v59;
  }

  *v86 = v72;
  *(v71 + 8) = 0;
  v73 = v87;
  v74 = *v87;
  if (v59 > *v87)
  {
    v74 = v59;
  }

  if (*(v87 + 8))
  {
    v74 = v59;
  }

  *v87 = v74;
  *(v73 + 8) = 0;
  LODWORD(v120) = v62;
  if ((v62 & 1) == 0)
  {
    v75 = v60;
    v76 = *a14;
    if (*a14 >= v60)
    {
      v76 = v60;
    }

    if (*(a14 + 8))
    {
      v76 = v60;
    }

    *a14 = v76;
    *(a14 + 8) = 0;
    v77 = *a15;
    if (*a15 < v60)
    {
      v77 = v60;
    }

    if (!*(a15 + 8))
    {
      v75 = v77;
    }

    *a15 = v75;
    *(a15 + 8) = 0;
  }

  v78 = v110;
  (*(v66 + 16))(v107, v64, v110);
  v79 = v64;
  v80 = v125;
  v81 = v121;
  sub_100302354(v125 + v121, v123, v118);

  sub_100302C08(v80 + v81);
  DetailChartDataElement.init(date:value:secondValue:thirdValue:valueLabel:dateLabel:accessibilityDateString:accessibilityValueDescription:color:textColor:)();
  (*(v113 + 8))(v122, v114);
  return v104(v79, v78);
}

uint64_t sub_100302190(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetailChartViewModelFactory.FormattedHoursCacheKey(0);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  __chkstk_darwin(v6);
  v8 = &v16 - v7;
  v9 = type metadata accessor for Date();
  (*(*(v9 - 8) + 16))(v8, a1, v9);
  v10 = *(v5 + 28);
  v11 = type metadata accessor for TimeZone();
  (*(*(v11 - 8) + 16))(&v8[v10], a2, v11);
  Cache.subscript.getter();
  if (v17)
  {
    v12 = v16;
  }

  else
  {
    v12 = Date.formattedHours(timeZone:forAccessibility:)();
    v14 = v13;
    sub_1001D1B40();
    v16 = v12;
    v17 = v14;

    Cache.subscript.setter();
  }

  sub_10030968C(v8, type metadata accessor for DetailChartViewModelFactory.FormattedHoursCacheKey);
  return v12;
}

uint64_t sub_100302354@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, double *a3@<X8>)
{
  v91 = a1;
  v87 = a2;
  v92 = a3;
  sub_10022C350(&qword_100CAC450, &unk_100A3B3B0);
  sub_1000037C4();
  v82 = v4;
  v83 = v3;
  sub_100003828();
  __chkstk_darwin(v5);
  sub_1000039BC();
  v81 = v6;
  sub_1000038CC();
  type metadata accessor for Wind();
  sub_1000037C4();
  v79 = v8;
  v80 = v7;
  __chkstk_darwin(v7);
  sub_1000038E4();
  v78 = v9;
  sub_10022C350(&qword_100CAB938, &qword_100A51040);
  sub_1000037C4();
  v85 = v11;
  v86 = v10;
  __chkstk_darwin(v10);
  v13 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  sub_10000E70C();
  v84 = v15;
  sub_1000038CC();
  type metadata accessor for UVIndex();
  sub_1000037C4();
  v89 = v17;
  v90 = v16;
  __chkstk_darwin(v16);
  sub_1000038E4();
  v88 = v18;
  sub_1000038CC();
  v19 = type metadata accessor for PressureTrend();
  sub_1000037C4();
  v21 = v20;
  __chkstk_darwin(v22);
  sub_1000037D8();
  v25 = v24 - v23;
  v26 = type metadata accessor for WeatherCondition();
  sub_1000037C4();
  v28 = v27;
  __chkstk_darwin(v29);
  sub_1000037D8();
  v32 = v31 - v30;
  v33 = type metadata accessor for DetailChartCondition();
  sub_1000037C4();
  v35 = v34;
  __chkstk_darwin(v36);
  sub_1000037D8();
  v39 = v38 - v37;
  (*(v35 + 16))(v38 - v37, v91, v33);
  v40 = (*(v35 + 88))(v39, v33);
  if (v40 == enum case for DetailChartCondition.humidity(_:))
  {
    sub_10000C70C(0, &qword_100CA72F8, NSNumberFormatter_ptr);
    isa = static NSNumberFormatter.percent.getter();
    HourWeather.humidity.getter();
    v42.super.super.isa = Double._bridgeToObjectiveC()().super.super.isa;
    v43 = [isa stringFromNumber:v42.super.super.isa];
    goto LABEL_3;
  }

  if (v40 == enum case for DetailChartCondition.pressure(_:))
  {
    v45 = *(sub_10022C350(&qword_100CAC458, &qword_100A3B3C0) + 48);
    HourWeather.pressureTrend.getter();
    v46 = PressureTrend.symbolName.getter();
    v48 = v47;
    (*(v21 + 8))(v25, v19);
    v49 = v92;
    *v92 = v46;
    *(v49 + 1) = v48;
    v50 = type metadata accessor for Image.TemplateRenderingMode();
    v51 = v49 + v45;
    v52 = 1;
LABEL_20:
    sub_10001B350(v51, v52, 1, v50);
    v60 = &enum case for DetailChartDataElement.ValueLabel.systemImage(_:);
LABEL_28:
    v70 = *v60;
    type metadata accessor for DetailChartDataElement.ValueLabel();
    sub_1000037E8();
    return (*(v71 + 104))(v49, v70);
  }

  if (v40 == enum case for DetailChartCondition.precipitationTotal(_:) || v40 == enum case for DetailChartCondition.temperature(_:) || v40 == enum case for DetailChartCondition.temperatureFeelsLike(_:))
  {
    HourWeather.condition.getter();
    v55 = HourWeather.isDaylight.getter();
    v56 = WeatherCondition.conditionIconName(isDaytime:)(v55 & 1);
    (*(v28 + 8))(v32, v26);
    countAndFlagsBits = 0x2E78616D2E6E7573;
    if (v56.value._object)
    {
      countAndFlagsBits = v56.value._countAndFlagsBits;
    }

    object = 0xEC0000006C6C6966;
    if (v56.value._object)
    {
      object = v56.value._object;
    }

    v49 = v92;
    *v92 = countAndFlagsBits;
    *(v49 + 1) = object;
    v59 = *(sub_10022C350(&qword_100CAC458, &qword_100A3B3C0) + 48);
    static Image.TemplateRenderingMode.macSafeOriginal.getter();
    v50 = type metadata accessor for Image.TemplateRenderingMode();
    v51 = v49 + v59;
    v52 = 0;
    goto LABEL_20;
  }

  if (v40 == enum case for DetailChartCondition.uvIndex(_:))
  {
    sub_10000C70C(0, &qword_100CA72F8, NSNumberFormatter_ptr);
    isa = static NSNumberFormatter.digits.getter();
    v61 = v88;
    HourWeather.uvIndex.getter();
    v62 = UVIndex.value.getter();
    v63 = v90;
    v64 = *(v89 + 8);
    v64(v61, v90);
    v42.super.super.isa = [objc_allocWithZone(NSNumber) initWithInteger:v62];
    v44 = [isa stringFromNumber:v42.super.super.isa];

    if (!v44)
    {
      HourWeather.uvIndex.getter();
      v65 = UVIndex.value.getter();
      v64(v61, v63);
      v93 = v65;
      v42.super.super.isa = &v93;
      dispatch thunk of CustomStringConvertible.description.getter();
      sub_1000370D0();
      goto LABEL_27;
    }

LABEL_4:
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1000370D0();

LABEL_27:
    v49 = v92;
    *v92 = v42;
    *(v49 + 1) = isa;
    v60 = &enum case for DetailChartDataElement.ValueLabel.text(_:);
    goto LABEL_28;
  }

  if (v40 == enum case for DetailChartCondition.visibility(_:))
  {
    HourWeather.visibility.getter();
    v66 = ConditionUnits.visibility.getter();
    v67 = v86;
    Measurement<>.converted(to:)();

    v68 = *(v85 + 8);
    v68(v13, v67);
    Measurement.value.getter();
    v69 = sub_10000810C();
    (v68)(v69);
    sub_10000C70C(0, &qword_100CA72F8, NSNumberFormatter_ptr);
    v42.super.super.isa = static NSNumberFormatter.decimal.getter();
    isa = Double._bridgeToObjectiveC()().super.super.isa;
    v44 = [(objc_class *)v42.super.super.isa stringFromNumber:isa];

    if (v44)
    {
      goto LABEL_4;
    }

    goto LABEL_26;
  }

  if (v40 == enum case for DetailChartCondition.wind(_:))
  {
    v73 = v78;
    HourWeather.wind.getter();
    v74 = v81;
    Wind.direction.getter();
    (*(v79 + 8))(v73, v80);
    v75 = v83;
    Measurement.value.getter();
    v77 = v76;
    (*(v82 + 8))(v74, v75);
    v49 = v92;
    *v92 = v77;
    v60 = &enum case for DetailChartDataElement.ValueLabel.windDirectionImage(_:);
    goto LABEL_28;
  }

  if (v40 == enum case for DetailChartCondition.chanceOfRain(_:))
  {
    sub_10000C70C(0, &qword_100CA72F8, NSNumberFormatter_ptr);
    isa = static NSNumberFormatter.percent.getter();
    HourWeather.precipitationChance.getter();
    v42.super.super.isa = Double._bridgeToObjectiveC()().super.super.isa;
    v43 = [isa stringFromNumber:v42.super.super.isa];
LABEL_3:
    v44 = v43;

    if (v44)
    {
      goto LABEL_4;
    }

LABEL_26:
    v42.super.super.isa = 0;
    isa = 0xE000000000000000;
    goto LABEL_27;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_100302C08(uint64_t a1)
{
  v2 = type metadata accessor for Precipitation();
  sub_1000037C4();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_1000037D8();
  v8 = v7 - v6;
  v9 = type metadata accessor for DetailChartCondition();
  sub_1000037C4();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_1000037D8();
  (*(v11 + 16))(v14 - v13, a1, v9);
  v15 = sub_10000810C();
  v17 = v16(v15);
  v18 = enum case for DetailChartCondition.precipitationTotal(_:);
  v19 = sub_10000810C();
  v20(v19);
  v21 = 0;
  if (v17 == v18)
  {
    HourWeather.precipitation.getter();
    v21 = Precipitation.chartColor.getter();
    (*(v4 + 8))(v8, v2);
  }

  return v21;
}

uint64_t sub_100302DAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ConditionDetailChartDataInput(0);
  if (!*(a1 + *(v4 + 36)))
  {
    v5 = *(v4 + 32);
    v6 = type metadata accessor for Date();
    (*(*(v6 - 8) + 16))(a2, a1 + v5, v6);
    goto LABEL_5;
  }

  if (*(a1 + *(v4 + 36)) == 1)
  {
    CurrentWeather.date.getter();
LABEL_5:
    v7 = &enum case for ChartLineStrokeStyle.dashed(_:);
    goto LABEL_7;
  }

  v7 = &enum case for ChartLineStrokeStyle.solid(_:);
LABEL_7:
  v8 = *v7;
  v9 = type metadata accessor for ChartLineStrokeStyle();
  v10 = *(*(v9 - 8) + 104);

  return v10(a2, v8, v9);
}

double sub_100302EA8(double a1, double a2)
{
  v2 = a1 - a2;
  result = 15.0;
  if (v2 <= 72.0)
  {
    result = 12.0;
    if (v2 <= 60.0)
    {
      result = 10.0;
      if (v2 <= 48.0)
      {
        result = 8.0;
        if (v2 <= 36.0)
        {
          result = 6.0;
          if (v2 <= 30.0)
          {
            result = 3.0;
            if (v2 > 18.0)
            {
              return 5.0;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_100302F24(uint64_t result, double a2, double a3, double a4)
{
  if (a2 <= a3)
  {
    a2 = a3;
  }

  if (a2 <= a4)
  {
    a2 = a4;
  }

  v4 = *(result + 16);
  if (v4)
  {
    v5 = (result + 32);
    do
    {
      v6 = *v5++;
      v7 = v6;
      if (a2 <= v6)
      {
        a2 = v7;
      }

      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_100302F58(uint64_t result, double a2, double a3, double a4)
{
  if (a3 < a2)
  {
    a2 = a3;
  }

  if (a2 > a4)
  {
    a2 = a4;
  }

  v4 = *(result + 16);
  if (v4)
  {
    v5 = (result + 32);
    do
    {
      v6 = *v5++;
      v7 = v6;
      if (v6 < a2)
      {
        a2 = v7;
      }

      --v4;
    }

    while (v4);
  }

  return result;
}

void sub_100302F8C(int64_t a1, int64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = type metadata accessor for DetailChartDataElement();
  sub_1000037C4();
  v45 = v8;
  __chkstk_darwin(v9);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  sub_10000E70C();
  v36 = v13;
  v43 = a2;
  v44 = a3;
  v14 = sub_1003094F0(a1, a2, a3);
  v46 = _swiftEmptyArrayStorage;
  sub_1006A7AB4();
  if ((v14 & 0x8000000000000000) == 0)
  {
    v15 = v46;
    v42 = a4;
    if (v14)
    {
      v41 = v11;
      sub_100011468();
      v39 = v17;
      v38 = a4 + v17;
      v37 = v18 + 16;
      v19 = (v18 + 32);
      while (1)
      {
        v20 = a1 <= v43;
        if (v16 > 0)
        {
          v20 = a1 >= v43;
        }

        if (v20)
        {
          break;
        }

        if (__OFADD__(a1, v16))
        {
          v21 = ((a1 + v16) >> 63) ^ 0x8000000000000000;
        }

        else
        {
          v21 = a1 + v16;
        }

        if (a1 < 0)
        {
          goto LABEL_33;
        }

        if (a1 >= *(a4 + 16))
        {
          goto LABEL_34;
        }

        v22 = *(v45 + 72);
        v23 = v40;
        v24 = v41;
        (*(v45 + 16))(v41, v38 + v22 * a1, v40);
        v46 = v15;
        v25 = v15[2];
        if (v25 >= v15[3] >> 1)
        {
          sub_1006A7AB4();
          v15 = v46;
        }

        v15[2] = v25 + 1;
        (*v19)(v15 + v39 + v25 * v22, v24, v23);
        a1 = v21;
        --v14;
        a4 = v42;
        v16 = v44;
        if (!v14)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
      v21 = a1;
      v16 = v44;
LABEL_17:
      v41 = (v45 + 16);
      v26 = (v45 + 32);
      v27 = v36;
      v28 = v40;
      while (1)
      {
        v29 = v21 <= v43;
        if (v16 > 0)
        {
          v29 = v21 >= v43;
        }

        if (v29)
        {

          return;
        }

        v30 = __OFADD__(v21, v16) ? ((v21 + v16) >> 63) ^ 0x8000000000000000 : v21 + v16;
        if (v21 < 0)
        {
          break;
        }

        if (v21 >= *(a4 + 16))
        {
          goto LABEL_31;
        }

        v31 = (*(v45 + 80) + 32) & ~*(v45 + 80);
        v32 = a4 + v31;
        v33 = *(v45 + 72);
        (*(v45 + 16))(v27, v32 + v33 * v21, v28);
        v46 = v15;
        v34 = v15[2];
        if (v34 >= v15[3] >> 1)
        {
          sub_1006A7AB4();
          v15 = v46;
        }

        v15[2] = v34 + 1;
        (*v26)(v15 + v31 + v34 * v33, v27, v28);
        v21 = v30;
        a4 = v42;
        v16 = v44;
      }

      __break(1u);
LABEL_31:
      __break(1u);
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }

  __break(1u);
}

void *sub_1003032E8(uint64_t a1)
{
  v2 = type metadata accessor for DetailChartDataElement();
  v155 = *(v2 - 8);
  v156 = v2;
  __chkstk_darwin(v2);
  v158 = &v118 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10022C350(&qword_100CAC460, &qword_100A3B3C8);
  __chkstk_darwin(v4 - 8);
  v133 = &v118 - v5;
  v131 = type metadata accessor for TimeZone();
  v129 = *(v131 - 8);
  __chkstk_darwin(v131);
  v128 = &v118 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DetailChartDataElement.ValueLabel();
  __chkstk_darwin(v7 - 8);
  v132 = (&v118 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v127 = type metadata accessor for Date();
  v126 = *(v127 - 8);
  __chkstk_darwin(v127);
  v125 = &v118 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v138 = &v118 - v11;
  v148 = type metadata accessor for ExtremaResult();
  v146 = *(v148 - 8);
  __chkstk_darwin(v148);
  v130 = &v118 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v143 = &v118 - v14;
  v15 = sub_10022C350(&qword_100CAB930, &qword_100A3A7C0);
  v139 = *(v15 - 8);
  __chkstk_darwin(v15 - 8);
  v154 = &v118 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v157 = &v118 - v18;
  __chkstk_darwin(v19);
  v147 = &v118 - v20;
  __chkstk_darwin(v21);
  v149 = &v118 - v22;
  v23 = type metadata accessor for DetailChartViewModelFactory.PeakMarkerRequestContext(0);
  __chkstk_darwin(v23);
  v144 = &v118 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for ConditionUnits();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v118 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_10022C350(&qword_100CAC1B0, &unk_100A3B140);
  __chkstk_darwin(v29 - 8);
  v137 = &v118 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v136 = &v118 - v32;
  __chkstk_darwin(v33);
  v134 = &v118 - v34;
  __chkstk_darwin(v35);
  v142 = &v118 - v36;
  __chkstk_darwin(v37);
  v39 = &v118 - v38;
  v40 = type metadata accessor for DetailChartCondition();
  v41 = *(v40 - 8);
  __chkstk_darwin(v40);
  v43 = &v118 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __chkstk_darwin(v44);
  v47 = &v118 - v46;
  (*(v41 + 16))(&v118 - v46, a1, v40, v45);
  LODWORD(v135) = *(a1 + v23[5]);
  sub_100095588();
  v48 = v23[7];
  v152 = v25;
  v153 = v26;
  v49 = v26 + 16;
  v50 = *(v26 + 16);
  v51 = v28;
  v124 = v49;
  v123 = v50;
  v50(v28, a1 + v48, v25);
  v120 = v23;
  v52 = v23[9];
  v122 = *(a1 + v23[8]);
  v151 = a1;
  v121 = *(a1 + v52);
  v53 = *(v41 + 104);
  LODWORD(v145) = enum case for DetailChartCondition.chanceOfRain(_:);
  v53(v43);
  sub_1003071A0(&qword_100CA39E0, &type metadata accessor for DetailChartCondition, &protocol conformance descriptor for DetailChartCondition);
  LOBYTE(a1) = dispatch thunk of static Equatable.== infix(_:_:)();
  v56 = *(v41 + 8);
  v54 = v41 + 8;
  v55 = v56;
  v56(v43, v40);
  if (a1)
  {
    (*(v153 + 8))(v51, v152);
    v57 = v39;
LABEL_3:
    sub_1000180EC(v57, &qword_100CAC1B0, &unk_100A3B140);
    v55(v47, v40);
    return _swiftEmptyArrayStorage;
  }

  v140 = v39;
  v141 = v51;
  (v53)(v43, enum case for DetailChartCondition.temperature(_:), v40);
  v59 = sub_10074742C(v47, v43);
  v55(v43, v40);
  if ((v59 & 1) == 0)
  {
    (v53)(v43, v145, v40);
    v60 = sub_10074742C(v47, v43);
    v55(v43, v40);
    if ((v60 & 1) == 0)
    {
      (v53)(v43, enum case for DetailChartCondition.temperatureFeelsLike(_:), v40);
      v79 = sub_10074742C(v47, v43);
      v55(v43, v40);
      if (v135)
      {
        if ((v79 & 1) == 0)
        {
          (*(v153 + 8))(v141, v152);
          v57 = v140;
          goto LABEL_3;
        }
      }
    }
  }

  v135 = v54;
  v145 = v40;
  v61 = *(v150 + 160);
  Cache.subscript.getter();
  v58 = v159;
  if (v159)
  {
    (*(v153 + 8))(v141, v152);
    v62 = v140;
LABEL_8:
    sub_1000180EC(v62, &qword_100CAC1B0, &unk_100A3B140);
    v55(v47, v145);
    return v58;
  }

  v63 = v140;
  v64 = v142;
  sub_100095588();
  v65 = v148;
  v66 = sub_100024D10(v64, 1, v148);
  v67 = v153;
  if (v66 == 1 || (ExtremaResult.minValue.getter(), v65 = v148, v69 = v68, v70 = *(v146 + 8), v70(v64, v148), v64 = v134, sub_100095588(), sub_100024D10(v64, 1, v65) == 1))
  {
    v71 = v146;
    sub_1000180EC(v64, &qword_100CAC1B0, &unk_100A3B140);
    v72 = v143;
  }

  else
  {
    ExtremaResult.maxValue.getter();
    v65 = v148;
    v92 = v91;
    v70(v64, v148);
    v71 = v146;
    v72 = v143;
    if (v92 <= v69)
    {
      sub_1001D1B40();
      v93 = v63;
      v58 = _swiftEmptyArrayStorage;
      v159 = _swiftEmptyArrayStorage;
      Cache.subscript.setter();
      (*(v67 + 8))(v141, v152);
      v62 = v93;
      goto LABEL_8;
    }
  }

  v73 = v136;
  sub_100095588();
  v74 = sub_100024D10(v73, 1, v65);
  v143 = v47;
  if (v74 == 1)
  {
    sub_1000180EC(v73, &qword_100CAC1B0, &unk_100A3B140);
    v75 = 1;
    v76 = v149;
    v77 = v141;
    v78 = v137;
  }

  else
  {
    (*(v71 + 32))(v72, v73, v65);
    v77 = v141;
    if (v121)
    {
      v80 = v141;
      ExtremaResult.minDate.getter();
      ExtremaResult.minValue.getter();
      ExtremaResult.minValue.getter();
      sub_1003050D4(v47, 0, v80, v132, v81);
      v82 = v72;
      v83 = v125;
      ExtremaResult.minDate.getter();
      v84 = v128;
      static TimeZone.current.getter();
      v142 = Date.formattedHours(timeZone:forAccessibility:)();
      v136 = v85;
      (*(v129 + 8))(v84, v131);
      (*(v126 + 8))(v83, v127);
      ExtremaResult.minValue.getter();
      v87 = v86;
      v88 = v133;
      v89 = v152;
      v123(v133, v80, v152);
      sub_10001B350(v88, 0, 1, v89);
      sub_1003053F8(v47, 0, v88, v87);
      sub_1000180EC(v88, &qword_100CAC460, &qword_100A3B3C8);
      v47 = v143;
      v77 = v80;
      v65 = v148;
      v90 = v149;
      v71 = v146;
      DetailChartDataElement.init(date:value:secondValue:thirdValue:valueLabel:dateLabel:accessibilityDateString:accessibilityValueDescription:color:textColor:)();
      (*(v71 + 8))(v82, v65);
      v75 = 0;
      v78 = v137;
      v76 = v90;
    }

    else
    {
      (*(v71 + 8))(v72, v65);
      v75 = 1;
      v78 = v137;
      v76 = v149;
    }
  }

  sub_10001B350(v76, v75, 1, v156);
  sub_100095588();
  v94 = sub_100024D10(v78, 1, v65);
  v119 = v55;
  v118 = v61;
  if (v94 == 1)
  {
    sub_1000180EC(v78, &qword_100CAC1B0, &unk_100A3B140);
  }

  else
  {
    v95 = v130;
    (*(v71 + 32))(v130, v78, v65);
    if (v122)
    {
      v96 = v77;
      ExtremaResult.maxDate.getter();
      ExtremaResult.maxValue.getter();
      ExtremaResult.maxValue.getter();
      sub_1003050D4(v47, 1, v77, v132, v97);
      v98 = v125;
      ExtremaResult.maxDate.getter();
      v99 = v128;
      static TimeZone.current.getter();
      Date.formattedHours(timeZone:forAccessibility:)();
      v150 = v100;
      (*(v129 + 8))(v99, v131);
      (*(v126 + 8))(v98, v127);
      ExtremaResult.maxValue.getter();
      v102 = v101;
      v103 = v133;
      v104 = v152;
      v123(v133, v96, v152);
      sub_10001B350(v103, 0, 1, v104);
      sub_1003053F8(v47, 1, v103, v102);
      sub_1000180EC(v103, &qword_100CAC460, &qword_100A3B3C8);

      DetailChartDataElement.init(date:value:secondValue:thirdValue:valueLabel:dateLabel:accessibilityDateString:accessibilityValueDescription:color:textColor:)();
      (*(v71 + 8))(v95, v148);
      v105 = 0;
      goto LABEL_28;
    }

    (*(v71 + 8))(v95, v65);
  }

  v105 = 1;
LABEL_28:
  v106 = v156;
  sub_10001B350(v147, v105, 1, v156);
  sub_10022C350(&qword_100CAC468, &unk_100A3B3D0);
  v107 = swift_allocObject();
  *(v107 + 16) = xmmword_100A2D320;
  v150 = v107;
  sub_100095588();
  sub_100095588();
  v108 = 0;
  v109 = v154;
  v110 = (v155 + 32);
  v58 = _swiftEmptyArrayStorage;
  do
  {
    v111 = v108;
    sub_100095588();
    sub_100051BBC();
    if (sub_100024D10(v109, 1, v106) == 1)
    {
      sub_1000180EC(v109, &qword_100CAB930, &qword_100A3A7C0);
    }

    else
    {
      v112 = *v110;
      (*v110)(v158, v109, v106);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10069E354();
        v58 = v115;
      }

      v113 = v58[2];
      if (v113 >= v58[3] >> 1)
      {
        sub_10069E354();
        v58 = v116;
      }

      v58[2] = v113 + 1;
      v114 = v58 + ((*(v155 + 80) + 32) & ~*(v155 + 80)) + *(v155 + 72) * v113;
      v106 = v156;
      v112(v114, v158, v156);
      v109 = v154;
    }

    v108 = 1;
  }

  while ((v111 & 1) == 0);
  swift_setDeallocating();
  sub_1005C1E6C();
  sub_1001D1B40();
  v159 = v58;

  Cache.subscript.setter();
  sub_1000180EC(v147, &qword_100CAB930, &qword_100A3A7C0);
  sub_1000180EC(v149, &qword_100CAB930, &qword_100A3A7C0);
  (*(v153 + 8))(v141, v152);
  sub_1000180EC(v140, &qword_100CAC1B0, &unk_100A3B140);
  v119(v143, v145);
  return v58;
}

unint64_t sub_100304600(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    result = sub_100100844(0, (v3 - result) & ~((v3 - result) >> 63), v3);
    if (v4)
    {
      v5 = v3;
    }

    else
    {
      v5 = result;
    }

    if ((v5 & 0x8000000000000000) == 0)
    {
      v6 = sub_1001008F4(0, v5, a2, &type metadata accessor for DetailChartDataElement);

      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1003046AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetailChartCondition();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v14 = &v21[-v13];
  if (*(a1 + 16))
  {
    type metadata accessor for DetailChartDataElement();
    DetailChartDataElement.date.getter();
    (*(v9 + 32))(v14, v11, v8);
    (*(v5 + 16))(v7, a2, v4);
    v15 = (*(v5 + 88))(v7, v4);
    if (v15 == enum case for DetailChartCondition.precipitationTotal(_:))
    {
      v16 = static ApparentPrecipitationIntensityCategory.allCases.getter();
      __chkstk_darwin(v16);
      *&v21[-16] = v14;
      sub_1008EEB9C(sub_1003097B4, &v21[-32], v16);
    }

    else
    {
      if (v15 != enum case for DetailChartCondition.uvIndex(_:))
      {
        (*(v5 + 8))(v7, v4);
        v18 = 0;
        goto LABEL_9;
      }

      v19 = static UVIndex.ExposureCategory.allCases.getter();
      __chkstk_darwin(v19);
      *&v21[-16] = v14;
      sub_1008EEBC8();
    }

    v18 = v17;

LABEL_9:
    (*(v9 + 8))(v14, v8);
    return v18;
  }

  return 0;
}

double sub_1003049D0(uint64_t a1)
{
  v1 = ConditionUnits.pressure.getter();
  v2 = objc_opt_self();
  v3 = v1;
  v4 = [v2 inchesOfMercury];
  sub_10000C70C(0, &qword_100CAC448, NSUnitPressure_ptr);
  v5 = static NSObject.== infix(_:_:)();

  if (v5)
  {

    return 0.5;
  }

  else
  {
    v7 = v3;
    v8 = [v2 hectopascals];
    v9 = static NSObject.== infix(_:_:)();

    if (v9 & 1) != 0 || (v7 = v7, v10 = [v2 millibars], v11 = static NSObject.== infix(_:_:)(), v7, v10, (v11))
    {

      return 15.0;
    }

    else
    {
      v12 = v7;
      v13 = [v2 millimetersOfMercury];
      v14 = static NSObject.== infix(_:_:)();

      if (v14)
      {

        return 10.0;
      }

      else
      {
        v15 = [v2 kilopascals];
        v16 = static NSObject.== infix(_:_:)();

        result = 1.0;
        if (v16)
        {
          return 1.5;
        }
      }
    }
  }

  return result;
}

double sub_100304B8C()
{
  v0 = ConditionUnits.windSpeed.getter();
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 metersPerSecond];
  sub_10000C70C(0, &qword_100CAC428, NSUnitSpeed_ptr);
  v4 = static NSObject.== infix(_:_:)();

  if (v4)
  {

    return 2.0;
  }

  else
  {
    v6 = v2;
    v7 = [v1 kilometersPerHour];
    v8 = static NSObject.== infix(_:_:)();

    if (v8 & 1) != 0 || (v6 = v6, v9 = [v1 milesPerHour], v10 = static NSObject.== infix(_:_:)(), v6, v9, (v10) || (v6 = v6, v11 = objc_msgSend(v1, "knots"), v12 = static NSObject.== infix(_:_:)(), v6, v11, (v12))
    {

      return 5.0;
    }

    else
    {
      v13 = static NSUnitSpeed.beaufort.getter();
      v14 = static NSObject.== infix(_:_:)();

      result = 5.0;
      if (v14)
      {
        return 1.0;
      }
    }
  }

  return result;
}

uint64_t sub_100304D28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for Calendar.Component();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  HourWeather.date.getter();
  (*(v4 + 104))(v6, enum case for Calendar.Component.hour(_:), v3);
  v11 = Calendar.isDate(_:equalTo:toGranularity:)();
  (*(v4 + 8))(v6, v3);
  (*(v8 + 8))(v10, v7);
  return v11 & 1;
}

uint64_t sub_100304EE8(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  DetailChartDataElement.date.getter();
  v6 = static Date.> infix(_:_:)();
  (*(v3 + 8))(v5, v2);
  return v6 & 1;
}

void sub_100304FD4(uint64_t *a1)
{
  v2 = *(type metadata accessor for DetailChartDataElement() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1008FBAB8();
    v3 = v5;
  }

  v4 = *(v3 + 16);
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  sub_1003076E8(v6);
  *a1 = v3;
}

uint64_t sub_100305080()
{
  sub_100003A00();
  type metadata accessor for ConditionDetailChartDataInput(0);

  return Double.chartValueAccessibilityDescription(for:units:)();
}

uint64_t sub_1003050D4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t *a4@<X8>, double a5@<D0>)
{
  v29 = a4;
  v9 = sub_10022C350(&qword_100CAC478, &unk_100A3B3F0);
  __chkstk_darwin(v9 - 8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v28 - v13;
  v15 = type metadata accessor for DetailChartViewModelFactory.MarkerLabelCacheKey(0);
  v16 = (v15 - 8);
  __chkstk_darwin(v15);
  __chkstk_darwin(v17);
  v19 = &v28 - v18;
  v20 = type metadata accessor for DetailChartCondition();
  v21 = *(*(v20 - 8) + 16);
  v28 = a1;
  v21(v19, a1, v20);
  v22 = v16[9];
  v23 = type metadata accessor for ConditionUnits();
  (*(*(v23 - 8) + 16))(&v19[v22], a3, v23);
  *&v19[v16[7]] = a5;
  v19[v16[8]] = a2;
  Cache.subscript.getter();
  v24 = type metadata accessor for DetailChartDataElement.ValueLabel();
  if (sub_100024D10(v14, 1, v24) == 1)
  {
    sub_1000180EC(v14, &qword_100CAC478, &unk_100A3B3F0);
    v25 = a2 & 1;
    v26 = v29;
    sub_100305F94(v28, v25, v29, a5);
    sub_1001D1B40();
    (*(*(v24 - 8) + 16))(v11, v26, v24);
    sub_10001B350(v11, 0, 1, v24);
    Cache.subscript.setter();
    return sub_10030968C(v19, type metadata accessor for DetailChartViewModelFactory.MarkerLabelCacheKey);
  }

  else
  {
    sub_10030968C(v19, type metadata accessor for DetailChartViewModelFactory.MarkerLabelCacheKey);
    return (*(*(v24 - 8) + 32))(v29, v14, v24);
  }
}

uint64_t sub_1003053F8(char *a1, int a2, char *a3, double a4)
{
  v90 = a1;
  v91 = a3;
  v78 = a2;
  v5 = sub_10022C350(&qword_100CAA9F0, qword_100A44F50);
  __chkstk_darwin(v5 - 8);
  v80 = &v70 - v6;
  v7 = type metadata accessor for NSUnitPressure.BaseWeatherFormatStyle();
  v84 = *(v7 - 8);
  v85 = v7;
  __chkstk_darwin(v7);
  v83 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v79 = &v70 - v10;
  v11 = sub_10022C350(&qword_100CAC3D0, &unk_100AA0D60);
  v81 = *(v11 - 8);
  v82 = v11;
  __chkstk_darwin(v11);
  v88 = &v70 - v12;
  v89 = type metadata accessor for WeatherFormatPlaceholder();
  v87 = *(v89 - 8);
  __chkstk_darwin(v89);
  v86 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle();
  v76 = *(v14 - 8);
  v77 = v14;
  __chkstk_darwin(v14);
  v75 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_10022C350(&qword_100CA53F8, &unk_100A3B3E0);
  v73 = *(v74 - 8);
  __chkstk_darwin(v74);
  v17 = &v70 - v16;
  v18 = sub_10022C350(&qword_100CAC460, &qword_100A3B3C8);
  __chkstk_darwin(v18 - 8);
  v20 = &v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v70 - v22;
  v24 = type metadata accessor for ConditionUnits();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v70 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v30 = &v70 - v29;
  v31 = type metadata accessor for DetailChartCondition();
  v32 = *(v31 - 8);
  v33 = __chkstk_darwin(v31);
  v35 = &v70 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v32 + 16))(v35, v90, v31, v33);
  result = (*(v32 + 88))(v35, v31);
  if (result == enum case for DetailChartCondition.pressure(_:))
  {
    sub_100095588();
    if (sub_100024D10(v20, 1, v24) != 1)
    {
      v72 = v25;
      v41 = *(v25 + 32);
      v71 = v24;
      v41(v27, v20, v24);
      ConditionUnits.pressure.getter();
      sub_10000C70C(0, &qword_100CAC448, NSUnitPressure_ptr);
      Measurement.init(value:unit:)();
      v42 = type metadata accessor for Locale();
      v43 = v80;
      sub_10001B350(v80, 1, 1, v42);
      static Set<>.full.getter();
      v44 = v79;
      static WeatherFormatStyle<>.weather(_:locale:)();

      sub_1000180EC(v43, &qword_100CAA9F0, qword_100A44F50);
      v45 = v83;
      NSUnitPressure.BaseWeatherFormatStyle.accessible.getter();
      v46 = v85;
      v91 = *(v84 + 8);
      (v91)(v44, v85);
      v48 = v86;
      v47 = v87;
      (*(v87 + 104))(v86, enum case for WeatherFormatPlaceholder.none(_:), v89);
      type metadata accessor for UnitManager();
      static UnitManager.standard.getter();
      sub_1003071A0(&qword_100CAC470, &type metadata accessor for NSUnitPressure.BaseWeatherFormatStyle, &protocol conformance descriptor for NSUnitPressure.BaseWeatherFormatStyle);
      v49 = v82;
      v50 = v88;
      v40 = Measurement.formatted<A>(_:placeholder:unitManager:)();
      v90 = v27;

      (*(v47 + 8))(v48, v89);
      (v91)(v45, v46);
      (*(v81 + 8))(v50, v49);
      (*(v72 + 8))(v90, v71);
      return v40;
    }

    v37 = v20;
LABEL_11:
    sub_1000180EC(v37, &qword_100CAC460, &qword_100A3B3C8);
    return 0;
  }

  if (result == enum case for DetailChartCondition.temperature(_:) || result == enum case for DetailChartCondition.temperatureFeelsLike(_:))
  {
    sub_100095588();
    v39 = v24;
    if (sub_100024D10(v23, 1, v24) != 1)
    {
      v72 = v25;
      (*(v25 + 32))(v30, v23, v24);
      v91 = v30;
      ConditionUnits.temperature.getter();
      sub_10000C70C(0, &qword_100CA51B0, NSUnitTemperature_ptr);
      Measurement.init(value:unit:)();
      v51 = v75;
      static WeatherFormatStyle<>.weather.getter();
      v53 = v86;
      v52 = v87;
      v54 = v89;
      (*(v87 + 104))(v86, enum case for WeatherFormatPlaceholder.none(_:), v89);
      type metadata accessor for UnitManager();
      static UnitManager.standard.getter();
      sub_1003071A0(&qword_100CA5410, &type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle, &protocol conformance descriptor for NSUnitTemperature.BaseWeatherFormatStyle);
      v55 = v74;
      v56 = v77;
      v57 = Measurement.formatted<A>(_:placeholder:unitManager:)();
      v90 = v58;

      (*(v52 + 8))(v53, v54);
      (*(v76 + 8))(v51, v56);
      (*(v73 + 8))(v17, v55);
      v59 = [objc_opt_self() mainBundle];
      if (v78)
      {
        v69 = 0x8000000100ABFDA0;
        v60 = 0x20666F2068676948;
        v61 = 0xD000000000000046;
        v62 = 0xEA00000000004025;
        v63.super.isa = v59;
        v64 = 0;
        v65 = 0xE000000000000000;
      }

      else
      {
        v69 = 0x8000000100ABFD50;
        v60 = 0x2520666F20776F4CLL;
        v62 = 0xE900000000000040;
        v63.super.isa = v59;
        v64 = 0;
        v65 = 0xE000000000000000;
        v61 = 0xD000000000000045;
      }

      NSLocalizedString(_:tableName:bundle:value:comment:)(*&v60, 0, v63, *&v64, *&v61);

      sub_10022C350(&qword_100CA40C8, &unk_100A2E170);
      v67 = swift_allocObject();
      *(v67 + 16) = xmmword_100A2C3F0;
      *(v67 + 56) = &type metadata for String;
      *(v67 + 64) = sub_100035744();
      v68 = v90;
      *(v67 + 32) = v57;
      *(v67 + 40) = v68;
      v40 = static String.localizedStringWithFormat(_:_:)();

      (*(v72 + 8))(v91, v39);
      return v40;
    }

    v37 = v23;
    goto LABEL_11;
  }

  if (result == enum case for DetailChartCondition.uvIndex(_:))
  {
    v92 = *&a4;
    sub_10014AB54();
    return BinaryFloatingPoint.formatted()()._countAndFlagsBits;
  }

  v66 = round(a4);
  if ((*&v66 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (v66 <= -9.22337204e18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v66 < 9.22337204e18)
  {
    v92 = v66;
    v40 = dispatch thunk of CustomStringConvertible.description.getter();
    (*(v32 + 8))(v35, v31);
    return v40;
  }

LABEL_26:
  __break(1u);
  return result;
}

void *sub_100305F94@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>, double a4@<D0>)
{
  v65 = a2;
  v71 = a3;
  v6 = type metadata accessor for WeatherFormatPlaceholder();
  v69 = *(v6 - 8);
  v70 = v6;
  __chkstk_darwin(v6);
  v8 = &v64[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_10022C350(&qword_100CAA9F0, qword_100A44F50);
  __chkstk_darwin(v9 - 8);
  v11 = &v64[-v10];
  v12 = type metadata accessor for NSUnitPressure.BaseWeatherFormatStyle();
  v67 = *(v12 - 8);
  v68 = v12;
  __chkstk_darwin(v12);
  v14 = &v64[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_10022C350(&qword_100CAC3D0, &unk_100AA0D60);
  v66 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v64[-v16];
  v18 = type metadata accessor for DetailChartCondition();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v22 = &v64[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v19 + 16))(v22, a1, v18, v20);
  result = (*(v19 + 88))(v22, v18);
  if (result == enum case for DetailChartCondition.pressure(_:))
  {
    ConditionUnits.pressure.getter();
    sub_10000C70C(0, &qword_100CAC448, NSUnitPressure_ptr);
    Measurement.init(value:unit:)();
    static Set<>.value.getter();
    v24 = type metadata accessor for Locale();
    sub_10001B350(v11, 1, 1, v24);
    static WeatherFormatStyle<>.weather(_:locale:)();

    sub_1000180EC(v11, &qword_100CAA9F0, qword_100A44F50);
    v26 = v69;
    v25 = v70;
    (*(v69 + 104))(v8, enum case for WeatherFormatPlaceholder.none(_:), v70);
    type metadata accessor for UnitManager();
    static UnitManager.standard.getter();
    sub_1003071A0(&qword_100CAC470, &type metadata accessor for NSUnitPressure.BaseWeatherFormatStyle, &protocol conformance descriptor for NSUnitPressure.BaseWeatherFormatStyle);
    v27 = v68;
    v28 = Measurement.formatted<A>(_:placeholder:unitManager:)();
    v30 = v29;

    (*(v26 + 8))(v8, v25);
    (*(v67 + 8))(v14, v27);
    (*(v66 + 8))(v17, v15);
    v31 = v71;
LABEL_19:
    *v31 = v28;
    v31[1] = v30;
    v52 = enum case for DetailChartDataElement.ValueLabel.text(_:);
    v53 = type metadata accessor for DetailChartDataElement.ValueLabel();
    return (*(*(v53 - 8) + 104))(v31, v52, v53);
  }

  v31 = v71;
  if (result == enum case for DetailChartCondition.temperature(_:) || result == enum case for DetailChartCondition.temperatureFeelsLike(_:))
  {
    v33 = [objc_opt_self() mainBundle];
    if (v65)
    {
      v63 = 0x8000000100ABFE20;
      v34 = 0xD000000000000026;
      v35 = 72;
      v36 = 0xE100000000000000;
      v37.super.isa = v33;
      v38 = 0;
      v39 = 0xE000000000000000;
    }

    else
    {
      v63 = 0x8000000100ABFDF0;
      v35 = 76;
      v36 = 0xE100000000000000;
      v37.super.isa = v33;
      v38 = 0;
      v39 = 0xE000000000000000;
      v34 = 0xD000000000000025;
    }

    v51 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v35, 0, v37, *&v38, *&v34);
    object = v51._object;
    countAndFlagsBits = v51._countAndFlagsBits;
    goto LABEL_18;
  }

  if (result != enum case for DetailChartCondition.uvIndex(_:))
  {
    if (result != enum case for DetailChartCondition.chanceOfRain(_:))
    {
      v56 = round(a4);
      if ((*&v56 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (v56 > -9.22337204e18)
        {
          if (v56 < 9.22337204e18)
          {
            v72 = v56;
            *v31 = dispatch thunk of CustomStringConvertible.description.getter();
            v31[1] = v57;
            v58 = enum case for DetailChartDataElement.ValueLabel.text(_:);
            v59 = type metadata accessor for DetailChartDataElement.ValueLabel();
            (*(*(v59 - 8) + 104))(v31, v58, v59);
            return (*(v19 + 8))(v22, v18);
          }

          goto LABEL_35;
        }

LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        return result;
      }

LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    sub_10000C70C(0, &qword_100CA72F8, NSNumberFormatter_ptr);
    v54 = static NSNumberFormatter.percent.getter();
    isa = Double._bridgeToObjectiveC()().super.super.isa;
    v33 = [v54 stringFromNumber:isa];

    if (!v33)
    {
      v28 = 0;
      v30 = 0xE000000000000000;
      goto LABEL_19;
    }

    countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
LABEL_18:
    v28 = countAndFlagsBits;
    v30 = object;

    goto LABEL_19;
  }

  sub_10000C70C(0, &qword_100CA72F8, NSNumberFormatter_ptr);
  result = static NSNumberFormatter.digits.getter();
  v40 = round(a4);
  if ((*&v40 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_31;
  }

  if (v40 <= -9.22337204e18)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v40 >= 9.22337204e18)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v41 = result;
  v42 = v31;
  v43 = v40;
  v44 = [objc_allocWithZone(NSNumber) initWithInteger:v40];
  v45 = [v41 stringFromNumber:v44];

  if (v45)
  {
    v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v48 = v47;
  }

  else
  {
    v72 = v43;
    v46 = dispatch thunk of CustomStringConvertible.description.getter();
    v48 = v60;
  }

  *v42 = v46;
  v42[1] = v48;
  v61 = enum case for DetailChartDataElement.ValueLabel.text(_:);
  v62 = type metadata accessor for DetailChartDataElement.ValueLabel();
  return (*(*(v62 - 8) + 104))(v42, v61, v62);
}

uint64_t sub_1003067CC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v20 = a2;
  v17 = a1;
  v2 = type metadata accessor for TimeZone();
  v18 = *(v2 - 8);
  v19 = v2;
  __chkstk_darwin(v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DetailChartDataElement.ValueLabel();
  v5 = *(v16 - 8);
  __chkstk_darwin(v16);
  v7 = (&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  ApparentPrecipitationIntensityCategory.rangeValue.getter();
  v12 = ApparentPrecipitationIntensityCategory.standaloneDescription.getter();
  v14 = v13;
  (*(v9 + 16))(v11, v17, v8);
  *v7 = v12;
  v7[1] = v14;
  (*(v5 + 104))(v7, enum case for DetailChartDataElement.ValueLabel.text(_:), v16);

  static TimeZone.current.getter();
  Date.formattedHours(timeZone:forAccessibility:)();
  (*(v18 + 8))(v4, v19);
  return DetailChartDataElement.init(date:value:secondValue:thirdValue:valueLabel:dateLabel:accessibilityDateString:accessibilityValueDescription:color:textColor:)();
}

uint64_t sub_100306A68@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v19 = a3;
  v4 = type metadata accessor for TimeZone();
  v17 = *(v4 - 8);
  v18 = v4;
  __chkstk_darwin(v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DetailChartDataElement.ValueLabel();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  UVIndex.ExposureCategory.rangeValue.getter();
  (*(v12 + 16))(v14, a2, v11);
  *v10 = UVIndex.ExposureCategory.localizedString.getter();
  v10[1] = v15;
  (*(v8 + 104))(v10, enum case for DetailChartDataElement.ValueLabel.text(_:), v7);
  static TimeZone.current.getter();
  Date.formattedHours(timeZone:forAccessibility:)();
  (*(v17 + 8))(v6, v18);
  UVIndex.ExposureCategory.localizedString.getter();
  return DetailChartDataElement.init(date:value:secondValue:thirdValue:valueLabel:dateLabel:accessibilityDateString:accessibilityValueDescription:color:textColor:)();
}

void *sub_100306D0C()
{
  sub_100006F14(v0 + 2);
  sub_100006F14(v0 + 7);
  sub_100006F14(v0 + 12);

  return v0;
}

uint64_t sub_100306D54()
{
  sub_100306D0C();

  return swift_deallocClassInstance();
}

void sub_100306DF4(uint64_t a1)
{
  type metadata accessor for DetailChartCondition();
  if (v1 <= 0x3F)
  {
    sub_100306EB8(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for ConditionUnits();
      if (v3 <= 0x3F)
      {
        sub_100306F10();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100306EB8(uint64_t a1)
{
  if (!qword_100CAC220)
  {
    type metadata accessor for ExtremaResult();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100CAC220);
    }
  }
}

void sub_100306F10()
{
  if (!qword_100CAC228)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100CAC228);
    }
  }
}

uint64_t sub_100306FA8(uint64_t a1)
{
  result = type metadata accessor for DetailChartCondition();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ConditionUnits();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10030708C(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for TimeZone();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1003071A0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

void sub_100307230(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!isUniquelyReferenced_nonNull_native || a1 > *(v3 + 24) >> 1)
  {

    sub_1006A7AB4();
  }
}

void *sub_100307320(uint64_t a1, uint64_t (*a2)(void, void), uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t *, uint64_t, uint64_t, uint64_t))
{
  v5 = *(a1 + 16);
  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v8 = a2(*(a1 + 16), 0);
  v9 = sub_10000810C();
  v11 = sub_10022C350(v9, v10);
  sub_100003810(v11);
  sub_100011468();
  v13 = a5(&v15, v8 + v12, v5, a1);

  sub_100309F74();
  sub_10027FAE8();
  if (v13 != v5)
  {
    __break(1u);
    return _swiftEmptyArrayStorage;
  }

  return v8;
}

void *sub_10030744C(uint64_t *a1)
{
  sub_10022C350(&qword_100CAC490, &qword_100A41510);
  sub_100003828();
  __chkstk_darwin(v2);
  v3 = sub_10022C350(&qword_100CAC498, &qword_100A3B400);
  sub_100003810(v3);
  sub_100003828();
  __chkstk_darwin(v4);
  v6 = v17 - v5;
  v7 = *a1;
  v17[0] = a1[1];
  v17[1] = v7;
  sub_10022C350(&qword_100CA7030, &qword_100A32000);
  sub_1000BCDDC(&qword_100CA7040);
  v8 = dispatch thunk of Collection.distance(from:to:)();
  if (!v8)
  {
    return _swiftEmptyArrayStorage;
  }

  v9 = v8;
  sub_1006A06A4(v8, 0);
  v11 = v10;
  v12 = type metadata accessor for HourWeather();
  sub_100003810(v12);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  sub_100095588();
  v15 = sub_1003097D4(v6, v11 + v14, v9);
  sub_1000180EC(v6, &qword_100CAC498, &qword_100A3B400);
  if (v15 != v9)
  {
    __break(1u);
    return _swiftEmptyArrayStorage;
  }

  return v11;
}

void sub_100307608(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(unint64_t, void), void (*a6)(void))
{
  v6 = a4 >> 1;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  if (a4 >> 1 != a3)
  {
    a5((a4 >> 1) - a3, 0);
    if (v6 != a3)
    {
      a6(0);
      sub_100003DDC();
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_7;
  }
}

void sub_1003076E8(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for DetailChartDataElement();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for DetailChartDataElement() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_100307BB0(v8, v9, a1, v4);
      v6[2] = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_100307818(0, v2, 1, a1);
  }
}

void sub_100307818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v60 = type metadata accessor for Date();
  v8 = *(v60 - 8);
  __chkstk_darwin(v60);
  v59 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v58 = &v41 - v11;
  v12 = type metadata accessor for DetailChartDataElement();
  __chkstk_darwin(v12);
  v51 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v57 = &v41 - v15;
  v18.n128_f64[0] = __chkstk_darwin(v16);
  v56 = &v41 - v19;
  v43 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v22 = *(v17 + 16);
    v21 = v17 + 16;
    v23 = *(v21 + 56);
    v53 = (v8 + 8);
    v54 = v22;
    v52 = (v21 - 8);
    v55 = v21;
    v24 = (v20 + v23 * (a3 - 1));
    v48 = -v23;
    v49 = (v21 + 16);
    v25 = a1 - a3;
    v50 = v20;
    v42 = v23;
    v26 = v20 + v23 * a3;
    v27 = v58;
    while (2)
    {
      v46 = v24;
      v47 = a3;
      v44 = v26;
      v45 = v25;
      v61 = v25;
      do
      {
        v28 = v56;
        v29 = v54;
        (v54)(v56, v26, v12, v18);
        v30 = v12;
        v31 = v57;
        v29(v57, v24, v30);
        DetailChartDataElement.date.getter();
        v32 = v59;
        DetailChartDataElement.date.getter();
        v62 = static Date.< infix(_:_:)();
        v33 = *v53;
        v34 = v32;
        v35 = v60;
        (*v53)(v34, v60);
        v33(v27, v35);
        v36 = *v52;
        v37 = v31;
        v12 = v30;
        (*v52)(v37, v30);
        v36(v28, v30);
        if ((v62 & 1) == 0)
        {
          break;
        }

        if (!v50)
        {
          __break(1u);
          return;
        }

        v38 = *v49;
        v39 = v51;
        (*v49)(v51, v26, v30);
        swift_arrayInitWithTakeFrontToBack();
        v38(v24, v39, v30);
        v24 += v48;
        v26 += v48;
      }

      while (!__CFADD__(v61++, 1));
      a3 = v47 + 1;
      v24 = &v46[v42];
      v25 = v45 - 1;
      v26 = v44 + v42;
      if (v47 + 1 != v43)
      {
        continue;
      }

      break;
    }
  }
}

void sub_100307BB0(char **a1, uint64_t a2, char **a3, uint64_t a4)
{
  v5 = v4;
  v138 = a1;
  v162 = type metadata accessor for Date();
  v8 = *(v162 - 8);
  __chkstk_darwin(v162);
  v161 = &v135 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v160 = &v135 - v11;
  v12 = type metadata accessor for DetailChartDataElement();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v141 = &v135 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v152 = &v135 - v16;
  __chkstk_darwin(v17);
  v159 = &v135 - v18;
  v20.n128_f64[0] = __chkstk_darwin(v19);
  v163 = &v135 - v21;
  v147 = a3;
  v22 = a3[1];
  v142 = v13;
  if (v22 < 1)
  {
    v24 = _swiftEmptyArrayStorage;
LABEL_101:
    v164 = *v138;
    if (!v164)
    {
      goto LABEL_142;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_103:
      v127 = v24 + 16;
      v128 = *(v24 + 2);
      while (v128 >= 2)
      {
        if (!*v147)
        {
          goto LABEL_139;
        }

        v129 = v24;
        v130 = &v24[16 * v128];
        v131 = *v130;
        v132 = &v127[2 * v128];
        v133 = v132[1];
        sub_1003087A4(&(*v147)[*(v142 + 9) * *v130], &(*v147)[*(v142 + 9) * *v132], &(*v147)[*(v142 + 9) * v133], v164);
        if (v5)
        {
          break;
        }

        if (v133 < v131)
        {
          goto LABEL_127;
        }

        if (v128 - 2 >= *v127)
        {
          goto LABEL_128;
        }

        *v130 = v131;
        *(v130 + 1) = v133;
        v134 = *v127 - v128;
        if (*v127 < v128)
        {
          goto LABEL_129;
        }

        v128 = *v127 - 1;
        memmove(v132, v132 + 2, 16 * v134);
        *v127 = v128;
        v24 = v129;
      }

LABEL_111:

      return;
    }

LABEL_136:
    v24 = sub_100308E24();
    goto LABEL_103;
  }

  v136 = a4;
  v23 = 0;
  v156 = (v8 + 8);
  v157 = v13 + 16;
  v154 = (v13 + 32);
  v155 = (v13 + 8);
  v24 = _swiftEmptyArrayStorage;
  v158 = v12;
  while (1)
  {
    v25 = v23;
    v26 = v23 + 1;
    if (v23 + 1 < v22)
    {
      v137 = v24;
      v27 = v23;
      v139 = v23;
      v148 = v5;
      v149 = v23 + 1;
      v28 = *v147;
      v164 = v28;
      v29 = v13;
      v30 = *(v13 + 9);
      v150 = v22;
      v151 = v30;
      v31 = v28 + v30 * v26;
      v32 = v12;
      v33 = *(v29 + 2);
      v33(v163, v31, v12, v20);
      v34 = v159;
      v145 = v33;
      (v33)(v159, v28 + v30 * v27, v32);
      v5 = v160;
      v35 = v163;
      DetailChartDataElement.date.getter();
      v36 = v161;
      DetailChartDataElement.date.getter();
      LODWORD(v146) = static Date.< infix(_:_:)();
      v37 = *v156;
      v38 = v162;
      (*v156)(v36, v162);
      v144 = v37;
      (v37)(v5, v38);
      v39 = *(v142 + 1);
      (v39)(v34, v32);
      v143 = v39;
      (v39)(v35, v32);
      v40 = v150;
      v41 = v139 + 2;
      v42 = v164 + v151 * (v139 + 2);
      while (1)
      {
        v43 = v41;
        if (++v149 >= v40)
        {
          break;
        }

        v5 = v163;
        v44 = v158;
        v45 = v145;
        v164 = v41;
        (v145)(v163, v42, v158);
        v46 = v159;
        v45(v159, v31, v44);
        v47 = v160;
        DetailChartDataElement.date.getter();
        v48 = v161;
        DetailChartDataElement.date.getter();
        LOBYTE(v153) = static Date.< infix(_:_:)() & 1;
        LODWORD(v153) = v153;
        v49 = v48;
        v50 = v162;
        v51 = v144;
        (v144)(v49, v162);
        v51(v47, v50);
        v52 = v143;
        (v143)(v46, v44);
        (v52)(v5, v44);
        v43 = v164;
        v40 = v150;
        v42 += v151;
        v31 += v151;
        v41 = v164 + 1;
        if ((v146 & 1) != v153)
        {
          goto LABEL_9;
        }
      }

      v149 = v40;
LABEL_9:
      if (v146)
      {
        v26 = v149;
        v25 = v139;
        v12 = v158;
        if (v149 < v139)
        {
          goto LABEL_133;
        }

        if (v139 >= v149)
        {
          v5 = v148;
          v13 = v142;
          v24 = v137;
          goto LABEL_32;
        }

        if (v40 >= v43)
        {
          v53 = v43;
        }

        else
        {
          v53 = v40;
        }

        v54 = v151 * (v53 - 1);
        v55 = v151 * v53;
        v56 = v139;
        v57 = v139 * v151;
        v5 = v148;
        v13 = v142;
        do
        {
          if (v56 != --v26)
          {
            v58 = v5;
            v59 = *v147;
            if (!*v147)
            {
              goto LABEL_140;
            }

            v164 = *v154;
            (v164)(v141, &v59[v57], v12);
            v60 = v57 < v54 || &v59[v57] >= &v59[v55];
            if (v60)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v57 != v54)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            (v164)(&v59[v54], v141, v12);
            v5 = v58;
            v13 = v142;
          }

          ++v56;
          v54 -= v151;
          v55 -= v151;
          v57 += v151;
        }

        while (v56 < v26);
        v24 = v137;
      }

      else
      {
        v5 = v148;
        v13 = v142;
        v24 = v137;
        v12 = v158;
      }

      v26 = v149;
      v25 = v139;
    }

LABEL_32:
    v61 = v147[1];
    if (v26 < v61)
    {
      if (__OFSUB__(v26, v25))
      {
        goto LABEL_132;
      }

      if (v26 - v25 < v136)
      {
        break;
      }
    }

LABEL_48:
    if (v26 < v25)
    {
      goto LABEL_131;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_10011E564();
      v24 = v125;
    }

    v81 = *(v24 + 2);
    v82 = v81 + 1;
    if (v81 >= *(v24 + 3) >> 1)
    {
      sub_10011E564();
      v24 = v126;
    }

    *(v24 + 2) = v82;
    v83 = v24 + 32;
    v84 = &v24[16 * v81 + 32];
    *v84 = v25;
    *(v84 + 1) = v26;
    v164 = *v138;
    if (!v164)
    {
      goto LABEL_141;
    }

    v149 = v26;
    if (v81)
    {
      v153 = v24 + 32;
      while (1)
      {
        v85 = v82 - 1;
        v86 = &v83[16 * v82 - 16];
        v87 = &v24[16 * v82];
        if (v82 >= 4)
        {
          break;
        }

        if (v82 == 3)
        {
          v88 = *(v24 + 4);
          v89 = *(v24 + 5);
          v98 = __OFSUB__(v89, v88);
          v90 = v89 - v88;
          v91 = v98;
LABEL_69:
          if (v91)
          {
            goto LABEL_118;
          }

          v103 = *v87;
          v102 = *(v87 + 1);
          v104 = __OFSUB__(v102, v103);
          v105 = v102 - v103;
          v106 = v104;
          if (v104)
          {
            goto LABEL_121;
          }

          v107 = *(v86 + 1);
          v108 = v107 - *v86;
          if (__OFSUB__(v107, *v86))
          {
            goto LABEL_124;
          }

          if (__OFADD__(v105, v108))
          {
            goto LABEL_126;
          }

          if (v105 + v108 >= v90)
          {
            if (v90 < v108)
            {
              v85 = v82 - 2;
            }

            goto LABEL_91;
          }

          goto LABEL_84;
        }

        if (v82 < 2)
        {
          goto LABEL_120;
        }

        v110 = *v87;
        v109 = *(v87 + 1);
        v98 = __OFSUB__(v109, v110);
        v105 = v109 - v110;
        v106 = v98;
LABEL_84:
        if (v106)
        {
          goto LABEL_123;
        }

        v112 = *v86;
        v111 = *(v86 + 1);
        v98 = __OFSUB__(v111, v112);
        v113 = v111 - v112;
        if (v98)
        {
          goto LABEL_125;
        }

        if (v113 < v105)
        {
          goto LABEL_98;
        }

LABEL_91:
        if (v85 - 1 >= v82)
        {
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
          goto LABEL_135;
        }

        if (!*v147)
        {
          goto LABEL_138;
        }

        v117 = &v83[16 * v85 - 16];
        v118 = *v117;
        v119 = v85;
        v120 = &v83[16 * v85];
        v121 = *(v120 + 1);
        sub_1003087A4(&(*v147)[*(v13 + 9) * *v117], &(*v147)[*(v13 + 9) * *v120], &(*v147)[*(v13 + 9) * v121], v164);
        if (v5)
        {
          goto LABEL_111;
        }

        if (v121 < v118)
        {
          goto LABEL_113;
        }

        v148 = 0;
        v5 = v13;
        v122 = v24;
        v123 = *(v24 + 2);
        if (v119 > v123)
        {
          goto LABEL_114;
        }

        *v117 = v118;
        *(v117 + 1) = v121;
        if (v119 >= v123)
        {
          goto LABEL_115;
        }

        v82 = v123 - 1;
        memmove(v120, v120 + 16, 16 * (v123 - 1 - v119));
        *(v122 + 2) = v123 - 1;
        v124 = v123 > 2;
        v24 = v122;
        v13 = v5;
        v5 = v148;
        v83 = v153;
        if (!v124)
        {
          goto LABEL_98;
        }
      }

      v92 = &v83[16 * v82];
      v93 = *(v92 - 8);
      v94 = *(v92 - 7);
      v98 = __OFSUB__(v94, v93);
      v95 = v94 - v93;
      if (v98)
      {
        goto LABEL_116;
      }

      v97 = *(v92 - 6);
      v96 = *(v92 - 5);
      v98 = __OFSUB__(v96, v97);
      v90 = v96 - v97;
      v91 = v98;
      if (v98)
      {
        goto LABEL_117;
      }

      v99 = *(v87 + 1);
      v100 = v99 - *v87;
      if (__OFSUB__(v99, *v87))
      {
        goto LABEL_119;
      }

      v98 = __OFADD__(v90, v100);
      v101 = v90 + v100;
      if (v98)
      {
        goto LABEL_122;
      }

      if (v101 >= v95)
      {
        v115 = *v86;
        v114 = *(v86 + 1);
        v98 = __OFSUB__(v114, v115);
        v116 = v114 - v115;
        if (v98)
        {
          goto LABEL_130;
        }

        if (v90 < v116)
        {
          v85 = v82 - 2;
        }

        goto LABEL_91;
      }

      goto LABEL_69;
    }

LABEL_98:
    v22 = v147[1];
    v23 = v149;
    if (v149 >= v22)
    {
      goto LABEL_101;
    }
  }

  v62 = (v25 + v136);
  if (__OFADD__(v25, v136))
  {
    goto LABEL_134;
  }

  if (v62 >= v61)
  {
    v62 = v147[1];
  }

  if (v62 < v25)
  {
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  if (v26 == v62)
  {
    goto LABEL_48;
  }

  v137 = v24;
  v148 = v5;
  v63 = *v147;
  v64 = *(v13 + 9);
  v153 = *(v13 + 2);
  v65 = &v63[v64 * (v26 - 1)];
  v150 = -v64;
  v139 = v25;
  v66 = (v25 - v26);
  v151 = v63;
  v140 = v64;
  v67 = &v63[v26 * v64];
  v143 = v62;
LABEL_41:
  v149 = v26;
  v144 = v67;
  v145 = v66;
  v146 = v65;
  v68 = v65;
  while (1)
  {
    v69 = v163;
    v70 = v153;
    (v153)(v163, v67, v12);
    v71 = v159;
    (v70)(v159, v68, v12);
    v72 = v160;
    DetailChartDataElement.date.getter();
    v73 = v161;
    DetailChartDataElement.date.getter();
    LODWORD(v164) = static Date.< infix(_:_:)();
    v74 = *v156;
    v75 = v73;
    v76 = v162;
    (*v156)(v75, v162);
    v77 = v72;
    v12 = v158;
    v74(v77, v76);
    v78 = *v155;
    (*v155)(v71, v12);
    v78(v69, v12);
    if ((v164 & 1) == 0)
    {
LABEL_46:
      v26 = v149 + 1;
      v65 = &v146[v140];
      v66 = v145 - 1;
      v67 = &v144[v140];
      if ((v149 + 1) == v143)
      {
        v26 = v143;
        v5 = v148;
        v13 = v142;
        v24 = v137;
        v25 = v139;
        goto LABEL_48;
      }

      goto LABEL_41;
    }

    if (!v151)
    {
      break;
    }

    v79 = *v154;
    v80 = v152;
    (*v154)(v152, v67, v12);
    swift_arrayInitWithTakeFrontToBack();
    v79(v68, v80, v12);
    v68 += v150;
    v67 += v150;
    v60 = __CFADD__(v66++, 1);
    if (v60)
    {
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
}