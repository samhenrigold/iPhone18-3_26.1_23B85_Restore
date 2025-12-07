uint64_t sub_10078E2B4(char a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for MainAction(0);
  sub_1000037E8();
  __chkstk_darwin(v7);
  sub_1000037D8();
  v10 = v9 - v8;
  v12 = *(v3 + 16);
  v11 = *(v3 + 24);
  *v10 = a1;
  *(v10 + 8) = a2;
  *(v10 + 16) = a3;
  type metadata accessor for DebugAction(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v16 = 0;
  memset(v15, 0, sizeof(v15));

  sub_10004F034(v10, v15, v12, v11);
  sub_1000180EC(v15, &unk_100CD81B0, &unk_100A3B000);
  sub_10001F718();
  return sub_10078E6E4(v10, v13);
}

uint64_t sub_10078E3B8()
{
  if (qword_100CA1F38 != -1)
  {
    swift_once();
  }

  sub_1008673F0(byte_100D8FB8A, 0xD000000000000010, 0x8000000100ADD660);
  sub_10095CD24();
}

uint64_t sub_10078E44C()
{

  sub_100006F14((v0 + 32));

  return v0;
}

uint64_t sub_10078E48C()
{
  sub_10078E44C();

  return swift_deallocClassInstance();
}

void sub_10078E544()
{
  v0 = type metadata accessor for LocationData();
  sub_100003AE8(v0);
  v1 = type metadata accessor for ComponentData();
  sub_100003AE8(v1);
  v2 = type metadata accessor for ComponentPositionData();
  sub_100003AE8(v2);
  v3 = type metadata accessor for Date();
  sub_100003AE8(v3);

  sub_100537A30();
}

uint64_t sub_10078E6E4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10078E73C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_10078E79C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), const char *a4)
{
  result = *a1;
  if (!result)
  {
    v7 = a3(a2);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

id sub_10078E7E4()
{
  v1 = OBJC_IVAR____TtC7Weather48DebugNotificationDeliverySchedulesViewController____lazy_storage___dateFormatter;
  v2 = *(v0 + OBJC_IVAR____TtC7Weather48DebugNotificationDeliverySchedulesViewController____lazy_storage___dateFormatter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7Weather48DebugNotificationDeliverySchedulesViewController____lazy_storage___dateFormatter);
  }

  else
  {
    v4 = [objc_allocWithZone(NSDateFormatter) init];
    [v4 setDateStyle:1];
    [v4 setTimeStyle:1];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_10078E880(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC7Weather48DebugNotificationDeliverySchedulesViewController____lazy_storage___dateFormatter] = 0;
  *&v1[OBJC_IVAR____TtC7Weather48DebugNotificationDeliverySchedulesViewController_deliverySchedules] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DebugNotificationDeliverySchedulesViewController();
  return objc_msgSendSuper2(&v3, "initWithStyle:", 2);
}

void sub_10078E8D0()
{
  *(v0 + OBJC_IVAR____TtC7Weather48DebugNotificationDeliverySchedulesViewController____lazy_storage___dateFormatter) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_10078E948(uint64_t a1)
{
  v6.receiver = v1;
  v6.super_class = type metadata accessor for DebugNotificationDeliverySchedulesViewController();
  objc_msgSendSuper2(&v6, "viewDidLoad");
  v2 = [v1 tableView];
  if (v2)
  {
    v3 = v2;
    sub_1003B3418();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v5 = String._bridgeToObjectiveC()();
    [v3 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v5];

    sub_1003C1790(0xD000000000000012, 0x8000000100AD5970, v1);
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_10078EA9C(void *a1)
{
  v3 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  __chkstk_darwin(v3 - 8);
  v54 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v51 - v6;
  __chkstk_darwin(v8);
  v10 = &v51 - v9;
  v11 = type metadata accessor for UIListContentConfiguration();
  sub_1000037C4();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_1000037D8();
  v56 = v16 - v15;
  type metadata accessor for DeliveryScheduleEntity();
  sub_1000037C4();
  v57 = v18;
  v58 = v17;
  __chkstk_darwin(v17);
  sub_1000037D8();
  v21 = v20 - v19;
  v22 = String._bridgeToObjectiveC()();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v24 = [a1 dequeueReusableCellWithIdentifier:v22 forIndexPath:isa];

  v25 = *(v1 + OBJC_IVAR____TtC7Weather48DebugNotificationDeliverySchedulesViewController_deliverySchedules);
  result = IndexPath.row.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (result >= *(v25 + 16))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v51 = v24;
  v52 = v13;
  v53 = v11;
  (*(v57 + 16))(v21, v25 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * result, v58);
  static UIListContentConfiguration.subtitleCell()();
  v59 = 91;
  v60 = 0xE100000000000000;
  v63 = DeliveryScheduleEntity.state.getter();
  sub_10022C350(&qword_100CC6BC8, &qword_100A628B0);
  sub_10058D440();
  v27._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v27);

  v28._countAndFlagsBits = 8285;
  v28._object = 0xE200000000000000;
  String.append(_:)(v28);
  v29 = sub_10078E7E4();
  DeliveryScheduleEntity.date.getter();
  dispatch thunk of Column.value.getter();
  v30 = type metadata accessor for Date();
  v55 = v1;
  v31 = v30;
  result = sub_10000556C(v10);
  if (v32)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v33 = Date._bridgeToObjectiveC()().super.isa;
  v34 = *(*(v31 - 8) + 8);
  v34(v10, v31);
  v35 = [v29 stringFromDate:v33];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100010A7C();

  UIListContentConfiguration.text.setter();
  v59 = 0;
  v60 = 0xE000000000000000;
  _StringGuts.grow(_:)(25);

  v59 = 0x3A64657461657263;
  v60 = 0xE900000000000020;
  v36 = OBJC_IVAR____TtC7Weather48DebugNotificationDeliverySchedulesViewController____lazy_storage___dateFormatter;
  v37 = *(v55 + OBJC_IVAR____TtC7Weather48DebugNotificationDeliverySchedulesViewController____lazy_storage___dateFormatter);
  DeliveryScheduleEntity.created.getter();
  dispatch thunk of Column.value.getter();
  result = sub_10000556C(v7);
  if (v32)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v38 = Date._bridgeToObjectiveC()().super.isa;
  v34(v7, v31);
  v39 = [v37 stringFromDate:v38];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100010A7C();

  v40._countAndFlagsBits = 0x696669646F6D203BLL;
  v40._object = 0xEC000000203A6465;
  String.append(_:)(v40);
  v41 = *(v55 + v36);
  DeliveryScheduleEntity.modified.getter();
  v42 = v54;
  dispatch thunk of Column.value.getter();
  result = sub_10000556C(v42);
  if (!v32)
  {

    v43 = Date._bridgeToObjectiveC()().super.isa;
    v34(v42, v31);
    v44 = [v41 stringFromDate:v43];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100010A7C();

    v45 = v56;
    UIListContentConfiguration.secondaryText.setter();
    v46 = UIListContentConfiguration.secondaryTextProperties.modify();
    UIListContentConfiguration.TextProperties.numberOfLines.setter();
    v46(&v59, 0);
    v47 = v53;
    v61 = v53;
    v62 = &protocol witness table for UIListContentConfiguration;
    v48 = sub_100042FB0(&v59);
    v49 = v52;
    (*(v52 + 16))(v48, v45, v47);
    v50 = v51;
    UITableViewCell.contentConfiguration.setter();
    [v50 setAccessoryType:1];
    (*(v49 + 8))(v45, v47);
    (*(v57 + 8))(v21, v58);
    return v50;
  }

LABEL_11:
  __break(1u);
  return result;
}

void sub_10078F1D0()
{
  v1 = v0;
  v2 = type metadata accessor for DeliveryScheduleEntity();
  sub_1000037C4();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_1000037D8();
  v8 = v7 - v6;
  v9 = *&v0[OBJC_IVAR____TtC7Weather48DebugNotificationDeliverySchedulesViewController_deliverySchedules];
  v10 = IndexPath.row.getter();
  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v10 >= *(v9 + 16))
  {
LABEL_7:
    __break(1u);
    return;
  }

  (*(v4 + 16))(v8, v9 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v10, v2);
  v11 = objc_allocWithZone(type metadata accessor for DebugNotificationDeliveryScheduleViewController(0));
  sub_1007BA4F4();
  v13 = v12;
  v14 = [v1 navigationController];
  if (v14)
  {
    v15 = v14;
    [v14 pushViewController:v13 animated:1];

    v13 = v15;
  }
}

id sub_10078F4B0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DebugNotificationDeliverySchedulesViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10078F554@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v211 = a2;
  v3 = sub_10022C350(&qword_100CB8BE0, &unk_100A4CFB0);
  v4 = sub_100003810(v3);
  __chkstk_darwin(v4);
  v206 = &v171 - v5;
  sub_1000038CC();
  v193 = type metadata accessor for AirQualityScaleCategory();
  sub_1000037C4();
  v192 = v6;
  __chkstk_darwin(v7);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v8);
  sub_10000E70C();
  v190 = v9;
  sub_1000038CC();
  type metadata accessor for AirQualityScale();
  sub_1000037C4();
  v195 = v11;
  v196 = v10;
  __chkstk_darwin(v10);
  sub_100003848();
  v194 = v12;
  __chkstk_darwin(v13);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v14);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v15);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v16);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v17);
  sub_10000E70C();
  v183 = v18;
  v19 = sub_10022C350(&qword_100CA7188, &qword_100A35360);
  v20 = sub_100003810(v19);
  __chkstk_darwin(v20);
  sub_100003848();
  v205 = v21;
  __chkstk_darwin(v22);
  sub_10000E70C();
  v203 = v23;
  sub_1000038CC();
  v181 = type metadata accessor for ArticlePlacementLocation();
  sub_1000037C4();
  v180 = v24;
  __chkstk_darwin(v25);
  sub_1000038E4();
  v179 = v26;
  v27 = sub_10022C350(&qword_100CB8A48, &qword_100A7FE00);
  v28 = sub_100003810(v27);
  __chkstk_darwin(v28);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v29);
  sub_10000E70C();
  v202 = v30;
  v31 = sub_1000038CC();
  v177 = type metadata accessor for ConditionDetailMapViewModel(v31);
  sub_1000037E8();
  __chkstk_darwin(v32);
  sub_100003848();
  v197 = v33;
  __chkstk_darwin(v34);
  sub_10000E70C();
  v201 = v35;
  v36 = sub_10022C350(&qword_100CC62B8, &qword_100A61CA0);
  v37 = sub_100003810(v36);
  __chkstk_darwin(v37);
  v199 = &v171 - v38;
  sub_1000038CC();
  v209 = type metadata accessor for AirQuality();
  sub_1000037C4();
  v200 = v39;
  __chkstk_darwin(v40);
  sub_1000038E4();
  v187 = v41;
  v42 = sub_1000038CC();
  v43 = type metadata accessor for NewsDataModel(v42);
  v44 = sub_100003810(v43);
  __chkstk_darwin(v44);
  sub_1000038E4();
  v208 = v45;
  v46 = sub_1000038CC();
  v198 = type metadata accessor for WeatherData(v46);
  sub_1000037E8();
  __chkstk_darwin(v47);
  sub_1000038E4();
  v207 = v48;
  v49 = sub_10022C350(&qword_100CA37B0, &unk_100A2D740);
  v50 = sub_100003810(v49);
  __chkstk_darwin(v50);
  v52 = &v171 - v51;
  v53 = type metadata accessor for LocationWeatherDataState(0);
  sub_1000037E8();
  __chkstk_darwin(v54);
  v56 = &v171 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v57);
  sub_10000E70C();
  v210 = v58;
  v59 = sub_10022C350(&qword_100CD6E90, &unk_100A7FA20);
  v60 = sub_100003810(v59);
  __chkstk_darwin(v60);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v61);
  v63 = &v171 - v62;
  v64 = type metadata accessor for Location();
  sub_1000037C4();
  v66 = v65;
  __chkstk_darwin(v67);
  v69 = &v171 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v70);
  v72 = &v171 - v71;
  sub_100790728(v63);
  v182 = type metadata accessor for AirQualityDetailViewState(0);
  if (sub_100024D10(v63, 1, v182) == 1)
  {
    sub_1000180EC(v63, &qword_100CD6E90, &unk_100A7FA20);
    if (qword_100CA2700 != -1)
    {
      swift_once();
    }

    v73 = type metadata accessor for Logger();
    sub_10000703C(v73, qword_100D90B68);
    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      *v76 = 0;
      _os_log_impl(&_mh_execute_header, v74, v75, "Unable to make AirQualityDetailViewModel due to missing airQualityDetailViewState.", v76, 2u);
    }

    goto LABEL_14;
  }

  v174 = *(v66 + 16);
  v174(v69, v63, v64);
  sub_1000231A0();
  sub_1007915C0(v63, v77);
  (*(v66 + 32))(v72, v69, v64);
  v176 = a1;
  v78 = *(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);

  v79 = Location.id.getter();
  sub_1000864C0(v79, v80, v78);

  if (sub_100024D10(v52, 1, v53) == 1)
  {
    (*(v66 + 8))(v72, v64);
    v81 = &qword_100CA37B0;
    v82 = &unk_100A2D740;
    v83 = v52;
LABEL_9:
    sub_1000180EC(v83, v81, v82);
LABEL_14:
    v95 = type metadata accessor for AirQualityDetailViewModel.Model(0);
    v96 = v211;
    sub_10001B350(v211, 1, 1, v95);
    v97 = type metadata accessor for AirQualityDetailViewModel(0);
    v98 = v96;
    return sub_10001B350(v98, 0, 1, v97);
  }

  v173 = v66;
  v175 = v64;
  v84 = v210;
  sub_1001070F4();
  sub_1001AF71C();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1007915C0(v84, type metadata accessor for LocationWeatherDataState);
    (*(v173 + 8))(v72, v175);
    sub_1007915C0(v56, type metadata accessor for LocationWeatherDataState);
    goto LABEL_14;
  }

  v172 = v72;
  v85 = *(sub_10022C350(&qword_100CA75D8, &unk_100A32600) + 48);
  v86 = v207;
  sub_1001070F4();
  v87 = v208;
  sub_1001070F4();
  sub_1007915C0(&v56[v85], type metadata accessor for PreprocessedWeatherData);
  v88 = v199;
  WeatherDataModel.airQuality.getter();
  v89 = v209;
  if (sub_100024D10(v88, 1, v209) == 1)
  {
    sub_100019EE0();
    sub_1007915C0(v87, v90);
    sub_100004A64();
    sub_1007915C0(v86, v91);
    sub_100014E44();
    sub_1007915C0(v84, v92);
    v93 = sub_100016EB8();
    v94(v93);
    v81 = &qword_100CC62B8;
    v82 = &qword_100A61CA0;
    v83 = v88;
    goto LABEL_9;
  }

  v100 = v187;
  (*(v200 + 32))(v187, v88, v89);
  v101 = sub_100790D4C();
  v198 = v102;
  v199 = v101;
  v103 = v177;
  v104 = v201;
  v174(&v201[*(v177 + 20)], v172, v175);
  sub_1001A0D3C();
  v105 = [objc_opt_self() mainBundle];
  v212._object = 0x8000000100ADD7E0;
  v106._countAndFlagsBits = 0x65726F4D20656553;
  v106._object = 0xE800000000000000;
  v107._countAndFlagsBits = 0;
  v107._object = 0xE000000000000000;
  v212._countAndFlagsBits = 0xD000000000000030;
  v108 = NSLocalizedString(_:tableName:bundle:value:comment:)(v106, 0, v105, v107, v212);

  v109 = v103[8];
  v110 = enum case for WeatherMapOverlayKind.airQuality(_:);
  type metadata accessor for WeatherMapOverlayKind();
  sub_1000037E8();
  (*(v111 + 104))(&v104[v109], v110);
  *v104 = 0;
  *(v104 + 1) = 0;
  *&v104[v103[7]] = v108;
  v104[v103[9]] = 1;
  sub_1000161C0((v204 + 16), *(v204 + 40));
  v112 = v180;
  v113 = v179;
  v114 = v181;
  (*(v180 + 104))(v179, enum case for ArticlePlacementLocation.airQualityDetail(_:), v181);
  sub_1005C188C(v113, v202);
  (*(v112 + 8))(v113, v114);
  v115 = v178;
  sub_100095588();
  sub_100428C50(v115, v203);
  v116 = v183;
  AirQuality.scale.getter();
  v181 = AirQualityScale.displayName.getter();
  v180 = v117;
  v118 = *(v195 + 8);
  v119 = v116;
  v120 = v196;
  v118(v119, v196);
  v121 = v184;
  AirQuality.scale.getter();
  v122 = AirQualityScale.longDisplayName.getter();
  v124 = v123;
  v118(v121, v120);
  if (v124)
  {
    v184 = v124;
    v195 = v122;
    v125 = v188;
  }

  else
  {
    v125 = v188;
    AirQuality.scale.getter();
    v195 = AirQualityScale.displayName.getter();
    v184 = v126;
    v118(v125, v120);
  }

  v188 = AirQuality.displayDescription.getter();
  v183 = v127;
  v128 = v186;
  AirQuality.scale.getter();
  v179 = AirQualityScale.range.getter();
  v178 = v129;
  v118(v128, v120);
  AirQuality.scale.getter();
  v130 = AirQuality.index.getter();
  v131 = AirQualityScale.fraction(for:)(v130);
  v118(v125, v120);
  v132 = v190;
  AirQuality.currentScaleCategory.getter();
  v186 = AirQualityScaleCategory.description.getter();
  v177 = v133;
  v134 = v100;
  v135 = *(v192 + 8);
  v136 = v193;
  v135(v132, v193);
  v137 = v189;
  AirQuality.scale.getter();
  v192 = AirQualityScale.displayLabel.getter();
  v190 = v138;
  v118(v137, v120);
  v139 = v191;
  AirQuality.currentScaleCategory.getter();
  v174 = AirQualityScaleCategory.recommendation.getter();
  v171 = v140;
  v135(v139, v136);
  AirQuality.primaryPollutant.getter();
  v141 = v204;
  sub_100790E6C(v100);
  v193 = v142;
  v191 = v143;
  v189 = v144;
  sub_1000161C0((v141 + 56), *(v141 + 80));
  v145 = dispatch thunk of AirQualityDetailStringBuilderType.attributionDescription(for:)();
  v146 = v194;
  AirQuality.scale.getter();
  v147 = AirQualityScale.gradientStops.getter();
  v118(v146, v120);
  v148 = v201;
  sub_1001AF71C();
  v149 = v203;
  sub_100095588();
  v150 = v185;
  sub_100790728(v185);
  sub_1000180EC(v149, &qword_100CA7188, &qword_100A35360);
  sub_1000180EC(v202, &qword_100CB8A48, &qword_100A7FE00);
  sub_1007915C0(v148, type metadata accessor for ConditionDetailMapViewModel);
  (*(v200 + 8))(v134, v209);
  sub_100019EE0();
  sub_1007915C0(v208, v151);
  sub_100004A64();
  sub_1007915C0(v207, v152);
  sub_100014E44();
  sub_1007915C0(v210, v153);
  v154 = sub_100016EB8();
  v155(v154);
  v156 = v182;
  if (sub_100024D10(v150, 1, v182) == 1)
  {
    sub_1000180EC(v150, &qword_100CD6E90, &unk_100A7FA20);
    v157 = 0;
  }

  else
  {
    v157 = *(v150 + *(v156 + 20));
    sub_1000231A0();
    sub_1007915C0(v150, v158);
  }

  v159 = v184;
  v160 = v211;
  v161 = v180;
  *v211 = v181;
  v160[1] = v161;
  v160[2] = v195;
  v160[3] = v159;
  v162 = v198;
  v160[4] = v199;
  v160[5] = v162;
  v163 = v183;
  v160[6] = v188;
  v160[7] = v163;
  *(v160 + 64) = 0;
  v164 = v178;
  v160[9] = v179;
  v160[10] = v164;
  *(v160 + 11) = v131;
  v165 = v177;
  v160[12] = v186;
  v160[13] = v165;
  v166 = v190;
  v160[14] = v192;
  v160[15] = v166;
  v167 = v171;
  v160[16] = v174;
  v160[17] = v167;
  v168 = type metadata accessor for AirQualityDetailViewModel.Model(0);
  sub_100051BBC();
  v169 = (v160 + v168[15]);
  v170 = v191;
  *v169 = v193;
  v169[1] = v170;
  v169[2] = v189;
  *(v160 + v168[16]) = v145;
  *(v160 + v168[17]) = v147;
  sub_1001070F4();
  sub_100051BBC();
  *(v160 + v168[20]) = v157;
  sub_10001B350(v160, 0, 1, v168);
  v97 = type metadata accessor for AirQualityDetailViewModel(0);
  v98 = v160;
  return sub_10001B350(v98, 0, 1, v97);
}

uint64_t sub_100790728@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v39 = type metadata accessor for LocationPreviewModalViewState(0);
  __chkstk_darwin(v39);
  v35 = v33 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v37 = v33 - v3;
  v38 = type metadata accessor for LocationPreviewViewState(0);
  __chkstk_darwin(v38);
  v34 = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v36 = v33 - v6;
  v41 = type metadata accessor for AirQualityDetailViewState(0);
  __chkstk_darwin(v41);
  v33[1] = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v33[2] = v33 - v9;
  __chkstk_darwin(v10);
  v11 = type metadata accessor for ModalViewState(0);
  __chkstk_darwin(v11);
  v40 = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v33 - v14;
  __chkstk_darwin(v16);
  v18 = v33 - v17;
  v19 = type metadata accessor for ModalViewState.LocationDetailModal(0);
  __chkstk_darwin(v19);
  v21 = v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  sub_1001AF71C();
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_1001070F4();
    sub_1001070F4();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      goto LABEL_17;
    }

    v23 = type metadata accessor for ModalViewState.LocationDetailModal;
    v24 = v21;
  }

  else
  {
    v23 = type metadata accessor for ModalViewState;
    v24 = v18;
  }

  sub_1007915C0(v24, v23);
  sub_1001AF71C();
  if (swift_getEnumCaseMultiPayload())
  {
    v25 = type metadata accessor for ModalViewState;
  }

  else
  {
    v26 = v36;
    sub_1001070F4();
    v15 = v37;
    sub_1001AF71C();
    sub_1007915C0(v26, type metadata accessor for LocationPreviewViewState);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
LABEL_17:
      sub_1001070F4();
      sub_1001070F4();
      v30 = 0;
      return sub_10001B350(v42, v30, 1, v41);
    }

    v25 = type metadata accessor for LocationPreviewModalViewState;
  }

  sub_1007915C0(v15, v25);
  v27 = v40;
  sub_1001AF71C();
  if (swift_getEnumCaseMultiPayload() != 4)
  {
    v29 = type metadata accessor for ModalViewState;
    goto LABEL_14;
  }

  v28 = type metadata accessor for ModalViewState.MapViewModal(0);
  if (sub_100024D10(v27, 1, v28) != 1)
  {
    v31 = v34;
    sub_1001070F4();
    v27 = v35;
    sub_1001AF71C();
    sub_1007915C0(v31, type metadata accessor for LocationPreviewViewState);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      goto LABEL_17;
    }

    v29 = type metadata accessor for LocationPreviewModalViewState;
LABEL_14:
    sub_1007915C0(v27, v29);
    goto LABEL_15;
  }

  sub_1000180EC(v27, &qword_100CA65E0, &unk_100A31400);
LABEL_15:
  v30 = 1;
  return sub_10001B350(v42, v30, 1, v41);
}

uint64_t sub_100790D4C()
{
  v0 = 0x776F6C2E697161;
  v1 = type metadata accessor for AirQualityScaleCategory();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  AirQuality.currentScaleCategory.getter();
  v5 = AirQualityScaleCategory.glyph.getter();
  v7 = v6;
  (*(v2 + 8))(v4, v1);
  if (v7)
  {
    v8 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v8 = v5 & 0xFFFFFFFFFFFFLL;
    }

    if (v8)
    {
      return v5;
    }

    else
    {
    }
  }

  return v0;
}

void sub_100790E6C(uint64_t a1)
{
  v2 = type metadata accessor for AirQuality();
  v57 = *(v2 - 8);
  v58 = v2;
  __chkstk_darwin(v2);
  v56 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Logger();
  v53 = *(v4 - 8);
  v54 = v4;
  __chkstk_darwin(v4);
  v59 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AirPollutant();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = 0;
  v55 = a1;
  v10 = AirQuality.pollutants.getter();
  v11 = v10;
  v12 = v10 + 64;
  v13 = 1 << *(v10 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v10 + 64);
  v16 = (v13 + 63) >> 6;
  v64 = v7 + 2;
  v65 = v7;
  v63 = (v7 + 1);

  v18 = 0;
  v60 = _swiftEmptyArrayStorage;
  v62 = v17;
LABEL_4:
  v19 = v18;
  while (v15)
  {
    v18 = v19;
LABEL_10:
    v20 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    (v65[2])(v9, *(v11 + 56) + v65[9] * (v20 | (v18 << 6)), v6);
    v21 = AirPollutant.standaloneDisplayName.getter();
    if (!v22)
    {
      (*v63)(v9, v6);
      goto LABEL_4;
    }

    v23 = v22;
    v61 = v21;
    v24 = v6;
    v25 = sub_1007914F8(&v67);
    v26 = AirPollutant.abbreviatedDisplayName(font:)(v25);

    if (v26)
    {
      v27 = AirPollutant.formattedValueString.getter();
      v29 = v28;
      (*v63)(v9, v24);
      if (v29)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10069DF1C();
          v60 = v34;
        }

        v30 = v60[2];
        v31 = v30 + 1;
        if (v30 >= v60[3] >> 1)
        {
          v51 = v60[2];
          v52 = v30 + 1;
          sub_10069DF1C();
          v30 = v51;
          v31 = v52;
          v60 = v35;
        }

        v32 = v60;
        v60[2] = v31;
        v33 = &v32[5 * v30];
        v33[4] = v61;
        v33[5] = v23;
        v33[6] = v26;
        v33[7] = v27;
        v33[8] = v29;
        v6 = v24;
        v11 = v62;
        goto LABEL_4;
      }

      v19 = v18;
      v6 = v24;
      v11 = v62;
    }

    else
    {
      v6 = v24;
      (*v63)(v9, v24);

      v19 = v18;
      v11 = v62;
    }
  }

  while (1)
  {
    v18 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      return;
    }

    if (v18 >= v16)
    {
      break;
    }

    v15 = *(v12 + 8 * v18);
    ++v19;
    if (v15)
    {
      goto LABEL_10;
    }
  }

  if (v60[2])
  {
    v36 = [objc_opt_self() mainBundle];
    v68._object = 0x8000000100ADD820;
    v37._object = 0x8000000100ACAE90;
    v68._countAndFlagsBits = 0xD00000000000005FLL;
    v37._countAndFlagsBits = 0xD000000000000011;
    v38._countAndFlagsBits = 0;
    v38._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v37, 0, v36, v38, v68);

    Array.sorting<A>(on:)();
  }

  else
  {

    v39 = v59;
    static Logger.airPollutant.getter();
    v40 = v56;
    v41 = v57;
    v42 = v58;
    (*(v57 + 16))(v56, v55, v58);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v66 = v65;
      *v45 = 136446210;
      AirQuality.pollutants.getter();
      v46 = Dictionary.description.getter();
      v48 = v47;

      (*(v41 + 8))(v40, v42);
      v49 = sub_100078694(v46, v48, &v66);

      *(v45 + 4) = v49;
      _os_log_impl(&_mh_execute_header, v43, v44, "No view models created for pollutants = %{public}s", v45, 0xCu);
      sub_100006F14(v65);
    }

    else
    {

      (*(v41 + 8))(v40, v42);
    }

    (*(v53 + 8))(v39, v54);
  }
}

id sub_1007914F8(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v2 = *a1;
  }

  else
  {
    v4 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
    swift_beginAccess();
    v5 = *a1;
    *a1 = v4;
    v2 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

uint64_t sub_1007915C0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for AutomationInfoSetting(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_100791760@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v54 = a1;
  v56 = type metadata accessor for AutomationInfo(0);
  sub_1000037E8();
  __chkstk_darwin(v3);
  v55 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v53 = (&v46 - v6);
  type metadata accessor for AccessibilityChildBehavior();
  sub_1000037C4();
  v51 = v8;
  v52 = v7;
  __chkstk_darwin(v7);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10022C350(&qword_100CD6FC0, &qword_100A7FB40);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v46 - v16;
  v47 = sub_10022C350(&qword_100CD6FC8, &qword_100A7FB48);
  sub_1000037E8();
  __chkstk_darwin(v18);
  v20 = &v46 - v19;
  sub_10022C350(&qword_100CD6FD0, &qword_100A7FB50);
  sub_1000037C4();
  v48 = v21;
  v49 = v22;
  __chkstk_darwin(v21);
  v24 = &v46 - v23;
  v50 = sub_10022C350(&qword_100CD6FD8, &qword_100A7FB58);
  sub_1000037E8();
  __chkstk_darwin(v25);
  v27 = &v46 - v26;
  *v20 = static VerticalAlignment.center.getter();
  *(v20 + 1) = 0;
  v20[16] = 0;
  v28 = &v20[*(sub_10022C350(&qword_100CD6FE0, &qword_100A7FB60) + 44)];
  *v17 = static HorizontalAlignment.leading.getter();
  *(v17 + 1) = 0;
  v17[16] = 0;
  v29 = sub_10022C350(&qword_100CD6FE8, &qword_100A7FB68);
  sub_100791D10(v2, &v17[*(v29 + 44)]);
  *&v17[*(v12 + 44)] = 0x3FF0000000000000;
  sub_100095588();
  sub_100095588();
  v30 = &v28[*(sub_10022C350(&qword_100CD6FF0, &qword_100A7FB70) + 48)];
  *v30 = 0;
  v30[8] = 0;
  sub_1000180EC(v17, &qword_100CD6FC0, &qword_100A7FB40);
  sub_1000180EC(v14, &qword_100CD6FC0, &qword_100A7FB40);
  static AccessibilityChildBehavior.ignore.getter();
  v31 = sub_100006F64(&qword_100CD6FF8, &qword_100CD6FC8, &qword_100A7FB48, &protocol conformance descriptor for HStack<A>);
  v32 = v47;
  View.accessibilityElement(children:)();
  (*(v51 + 8))(v10, v52);
  sub_1000180EC(v20, &qword_100CD6FC8, &qword_100A7FB48);
  v57 = v32;
  v58 = v31;
  swift_getOpaqueTypeConformance2();
  v33 = v48;
  View.accessibilityRespondsToUserInteraction(_:)();
  (*(v49 + 8))(v24, v33);
  v34 = *(v2 + 104);
  v57 = *(v2 + 96);
  v58 = v34;
  sub_10002D5A4();

  v35 = Text.init<A>(_:)();
  v37 = v36;
  LOBYTE(v32) = v38;
  v39 = v54;
  ModifiedContent<>.accessibilityLabel(_:)();
  sub_10010CD64(v35, v37, v32 & 1);

  sub_1000180EC(v27, &qword_100CD6FD8, &qword_100A7FB58);
  v40 = *(v2 + 80);
  v41 = *(v2 + 88);
  v42 = v53;
  *v53 = v40;
  *(v42 + 8) = v41;
  type metadata accessor for AutomationCellInfo(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v43 = v55;
  sub_100793A4C();
  v44 = v39 + *(sub_10022C350(&qword_100CD7000, &qword_100A7FB78) + 36);
  type metadata accessor for AutomationInfoProperty(0);
  sub_100793A4C();

  sub_1007939F4(v43, type metadata accessor for AutomationInfo);
  sub_1007939F4(v42, type metadata accessor for AutomationInfo);
  *v44 = 0;
  *(v44 + 8) = 0xE000000000000000;
  result = swift_getKeyPath();
  *(v44 + 16) = result;
  *(v44 + 24) = 0;
  return result;
}

uint64_t sub_100791D10@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v83 = a2;
  v79 = sub_10022C350(&qword_100CD7008, &unk_100A7FBA8);
  __chkstk_darwin(v79);
  v82 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v81 = &v62 - v5;
  v6 = type metadata accessor for TypesettingLanguageAwareLineHeightRatio();
  v75 = *(v6 - 8);
  v76 = v6;
  __chkstk_darwin(v6);
  v74 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10022C350(&qword_100CACFF0, &unk_100A48000);
  __chkstk_darwin(v8 - 8);
  v10 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v62 - v12;
  v14 = type metadata accessor for EnvironmentValues();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10022C350(&qword_100CD7010, &qword_100A7FBB8);
  v72 = *(v18 - 8);
  v73 = v18;
  __chkstk_darwin(v18);
  v71 = &v62 - v19;
  v70 = sub_10022C350(&qword_100CD7018, &qword_100A7FBC0);
  __chkstk_darwin(v70);
  v78 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v77 = &v62 - v22;
  v23 = *(a1 + 1);
  v87[0] = *a1;
  v87[1] = v23;
  v24 = sub_10002D5A4();

  v69 = v24;
  v25 = Text.init<A>(_:)();
  v66 = v26;
  v67 = v25;
  v28 = v27;
  v68 = v29;
  v30 = static Font.largeTitle.getter();
  v65 = static Font.title2.getter();
  v31 = *(type metadata accessor for PrecipitationTotalComponentView(0) + 24);
  v80 = a1;
  v32 = &a1[v31];
  v33 = *v32;
  if (v32[8] == 1)
  {
    v89 = v33 & 1;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v64 = v10;
    v34 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000E4DF8(v33, 0);
    v10 = v64;
    (*(v15 + 8))(v17, v14);
    LOBYTE(v33) = v89;
  }

  v35 = enum case for Font.Leading.tight(_:);
  v36 = type metadata accessor for Font.Leading();
  (*(*(v36 - 8) + 104))(v13, v35, v36);
  sub_10001B350(v13, 0, 1, v36);
  sub_100095588();

  v37 = v65;

  sub_1001C987C(v30, v37, v33 & 1, v10);
  v38 = v13;
  v39 = v67;
  v40 = v66;
  v41 = Text.font(_:)();
  v63 = v42;
  v64 = v41;
  v44 = v43;
  v62 = v45;

  sub_10010CD64(v39, v40, v28 & 1);

  sub_1000180EC(v38, &qword_100CACFF0, &unk_100A48000);
  KeyPath = swift_getKeyPath();
  v47 = swift_getKeyPath();
  v91 = v44 & 1;
  v90 = 0;
  v87[0] = v64;
  v87[1] = v63;
  LOBYTE(v87[2]) = v44 & 1;
  v87[3] = v62;
  v87[4] = KeyPath;
  v87[5] = 1;
  LOBYTE(v87[6]) = 0;
  v87[7] = v47;
  v87[8] = 0x3FE0000000000000;
  v48 = v74;
  static TypesettingLanguageAwareLineHeightRatio.disable.getter();
  v49 = sub_10022C350(&qword_100CB7080, &unk_100A4AD00);
  v50 = sub_10040DCEC();
  v51 = v71;
  View.typesettingLanguageAwareLineHeightRatio(_:isEnabled:)();
  (*(v75 + 8))(v48, v76);
  memcpy(__dst, v87, 0x48uLL);
  sub_1000180EC(__dst, &qword_100CB7080, &unk_100A4AD00);
  v52 = v80;
  v53 = *(v80 + 3);
  v87[0] = *(v80 + 2);
  v87[1] = v53;
  v84 = v49;
  v85 = v50;
  swift_getOpaqueTypeConformance2();
  v54 = v77;
  v55 = v73;
  View.accessibilityLabel<A>(_:)();
  (*(v72 + 8))(v51, v55);
  *(v54 + *(v70 + 36)) = 0x3FF0000000000000;
  v56 = *(v79 + 44);
  v57 = swift_getKeyPath();
  v58 = v81;
  *&v81[v56] = v57;
  sub_10022C350(&qword_100CA3EE8, &qword_100A5D3F0);
  swift_storeEnumTagMultiPayload();
  v84 = v87;
  v85 = &v87[17];
  v86 = &v87[34];
  sub_100792518(v52, &v84);
  memcpy(v58, v87, 0x198uLL);
  v59 = v78;
  sub_100095588();
  v60 = v82;
  sub_100095588();
  sub_100095588();
  sub_10022C350(&qword_100CD7020, &qword_100A7FC60);
  sub_100095588();
  sub_1000180EC(v58, &qword_100CD7008, &unk_100A7FBA8);
  sub_1000180EC(v54, &qword_100CD7018, &qword_100A7FBC0);
  sub_1000180EC(v60, &qword_100CD7008, &unk_100A7FBA8);
  return sub_1000180EC(v59, &qword_100CD7018, &qword_100A7FBC0);
}

uint64_t sub_100792518@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = type metadata accessor for ContentSizeCategory();
  v49 = *(v3 - 8);
  v50 = v3;
  __chkstk_darwin(v3);
  v48 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v47 = &v45 - v6;
  v52 = type metadata accessor for Font.Leading();
  v7 = *(v52 - 8);
  __chkstk_darwin(v52);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Font.TextStyle();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for EnvironmentValues();
  v53 = *(v14 - 8);
  v54 = v14;
  __chkstk_darwin(v14);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for PrecipitationTotalComponentView(0);
  v17 = &a1[*(v46 + 24)];
  v18 = *v17;
  v51 = v17[8];
  if (v51 == 1)
  {
    if ((v18 & 1) == 0)
    {
LABEL_3:
      (*(v11 + 104))(v13, enum case for Font.TextStyle.title3(_:), v10);
      static Font.Weight.semibold.getter();
      v19 = static Font.system(_:weight:)();
      (*(v11 + 8))(v13, v10);
      goto LABEL_6;
    }
  }

  else
  {

    static os_log_type_t.fault.getter();
    v20 = static Log.runtimeIssuesLog.getter();
    v45 = v18;
    v21 = v9;
    v22 = v16;
    v23 = v7;
    v24 = a1;
    v25 = v11;
    v26 = v10;
    v27 = v20;
    os_log(_:dso:log:_:_:)();

    v10 = v26;
    v11 = v25;
    a1 = v24;
    v7 = v23;
    v16 = v22;
    v9 = v21;
    v18 = v45;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000E4DF8(v18, 0);
    (*(v53 + 8))(v16, v54);
    if (__dst[0] != 1)
    {
      goto LABEL_3;
    }
  }

  v19 = static Font.headline.getter();
LABEL_6:
  static Font.subheadline.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v28 = v52;
  (*(v7 + 104))(v9, enum case for Font.Leading.tight(_:), v52);
  v29 = Font.leading(_:)();

  (*(v7 + 8))(v9, v28);
  if (!v51)
  {

    static os_log_type_t.fault.getter();
    v38 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000E4DF8(v18, 0);
    (*(v53 + 8))(v16, v54);
    if (__dst[0] != 1)
    {
      goto LABEL_8;
    }

LABEL_11:
    v39 = static Font.footnote.getter();
    goto LABEL_14;
  }

  if (v18)
  {
    goto LABEL_11;
  }

LABEL_8:
  v30 = v29;
  v31 = v47;
  sub_10009ECC8();
  v33 = v48;
  v32 = v49;
  v34 = v50;
  (*(v49 + 104))(v48, enum case for ContentSizeCategory.extraExtraLarge(_:), v50);
  v35 = sub_1005B51FC(v31, v33);
  v36 = *(v32 + 8);
  v36(v33, v34);
  v36(v31, v34);
  if (v35)
  {
    v37 = static Font.caption2.getter();
  }

  else
  {
    v37 = static Font.subheadline.getter();
  }

  v39 = v37;
  v29 = v30;
LABEL_14:
  if ([objc_opt_self() wu_systemUsesExuberatedLineHeight])
  {
    v40 = 0.0;
  }

  else
  {
    v40 = -4.0;
  }

  memcpy(v59, a1, sizeof(v59));
  memcpy(v58, a1, sizeof(v58));
  memcpy(v60, a1, sizeof(v60));
  memcpy(v57, a1, sizeof(v57));
  memcpy(v61, a1, sizeof(v61));
  memcpy(v56, a1, sizeof(v56));
  v41 = *v55;
  v42 = *(v55 + 8);
  v43 = *(v55 + 16);
  memcpy(v62, a1, 0x70uLL);
  v62[14] = v19;
  *&v62[15] = v40;
  v62[16] = v39;
  memcpy(v41, v62, 0x88uLL);
  memcpy(v63, v57, 0x70uLL);
  v63[14] = v29;
  v63[15] = 0xC014000000000000;
  v63[16] = v39;
  memcpy(v42, v63, 0x88uLL);
  memcpy(v64, v56, 0x70uLL);
  v64[14] = v19;
  *&v64[15] = v40;
  v64[16] = 0;
  memcpy(v43, v64, 0x88uLL);
  memcpy(v65, v56, sizeof(v65));
  v66 = v19;
  v67 = v40;
  v68 = 0;
  sub_100428584(v59, __dst);

  sub_100428584(v60, __dst);
  sub_100428584(v61, __dst);
  sub_100793768(v62, __dst);
  sub_100793768(v63, __dst);
  sub_100793768(v64, __dst);
  sub_1007937A0(v65);
  memcpy(v69, v57, sizeof(v69));
  v70 = v29;
  v71 = 0xC014000000000000;
  v72 = v39;
  sub_1007937A0(v69);
  memcpy(__dst, v58, sizeof(__dst));
  v74 = v19;
  v75 = v40;
  v76 = v39;
  return sub_1007937A0(__dst);
}

double sub_100792C64(uint64_t a1)
{
  v3 = type metadata accessor for Font.Context();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CanvasContentSizeEstimationContext(0);
  (*(v4 + 16))(v6, a1 + *(v7 + 20), v3);
  Font.lineHeight(in:)();
  if (*(v1 + 128))
  {

    Font.lineHeight(in:)();
  }

  (*(v4 + 8))(v6, v3);
  return *a1;
}

uint64_t sub_100792DC4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v73 = a1;
  v72 = a2;
  v76 = type metadata accessor for PrecipitationTotalCanvasContent.MeasurementCache(0);
  __chkstk_darwin(v76);
  v77 = &v64[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v71 = &v64[-v6];
  v7 = type metadata accessor for MeasuredText(0);
  __chkstk_darwin(v7);
  v75 = &v64[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v64[-v10];
  v12 = sub_10022C350(&qword_100CD7068, &unk_100A7FD10);
  __chkstk_darwin(v12 - 8);
  v74 = &v64[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v16 = &v64[-v15];
  __chkstk_darwin(v17);
  v19 = &v64[-v18];
  v78 = v7;
  sub_10001B350(&v64[-v18], 1, 1, v7);
  if (*(v3 + 128))
  {
    v80 = *(v3 + 48);
    v81 = v80;

    sub_100358150(&v81, v79);
    sub_10002D5A4();
    v20 = Text.init<A>(_:)();
    v69 = v16;
    v21 = v20;
    v68 = v11;
    v23 = v22;
    v70 = v19;
    v25 = v24;

    v26 = Text.font(_:)();
    v67 = v27;
    v65 = v28;
    v66 = v29;

    v19 = v70;
    sub_10010CD64(v21, v23, v25 & 1);

    type metadata accessor for CanvasContentMeasurementContext(0);
    v30 = v68;
    v31 = v67;
    GraphicsContext.resolve(_:)();
    GraphicsContext.ResolvedText.measure(in:)();
    v33 = v32;
    v35 = v34;
    v36 = v78;
    v37 = &v30[*(v78 + 20)];
    *v37 = v32;
    v37[1] = v34;
    Font.lineHeight(in:)();
    v39 = v38;
    sub_10010CD64(v26, v31, v65 & 1);

    sub_1000180EC(v19, &qword_100CD7068, &unk_100A7FD10);
    if (v39 * 3.0 < v35)
    {
      v35 = v39 * 3.0;
    }

    v40 = type metadata accessor for GraphicsContext.ResolvedText();
    v41 = v69;
    (*(*(v40 - 8) + 32))(v69, v30, v40);
    v42 = v41 + *(v36 + 20);
    *v42 = v33;
    *(v42 + 8) = v35;
    sub_10001B350(v41, 0, 1, v36);
    sub_100793AA4(v41, v19);
  }

  v43 = *(v3 + 40);
  *&v80 = *(v3 + 32);
  *(&v80 + 1) = v43;
  sub_10002D5A4();
  v44 = v3;

  v45 = Text.init<A>(_:)();
  v47 = v46;
  v49 = v48;
  type metadata accessor for CanvasContentMeasurementContext(0);
  v50 = v75;
  GraphicsContext.resolve(_:)();
  GraphicsContext.ResolvedText.measure(in:)();
  v52 = v51;
  v54 = v53;
  sub_10010CD64(v45, v47, v49 & 1);

  v55 = v78;
  v56 = &v50[*(v78 + 20)];
  *v56 = v52;
  v56[1] = v54;
  v57 = *(v44 + 120);
  sub_100793A4C();
  sub_100095588();
  v58 = v74;
  sub_100793AA4(v19, v74);
  if (sub_100024D10(v58, 1, v55) == 1)
  {
    sub_1000180EC(v74, &qword_100CD7068, &unk_100A7FD10);
    v59 = 0.0;
    v60 = 0.0;
  }

  else
  {
    v61 = &v74[*(v78 + 20)];
    v59 = *v61;
    v60 = v61[1];
    sub_1007939F4(v74, type metadata accessor for MeasuredText);
  }

  if (v52 <= v59)
  {
    v52 = v59;
  }

  sub_1007939F4(v75, type metadata accessor for MeasuredText);
  v62 = &v77[*(v76 + 24)];
  *v62 = v52;
  v62[1] = v54 + v57 + v60;
  sub_100793B14();
  return sub_100793B14();
}

uint64_t sub_1007933E0(uint64_t a1, double a2, double a3)
{
  v5 = type metadata accessor for Locale();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10022C350(&qword_100CD7068, &unk_100A7FD10);
  __chkstk_darwin(v9 - 8);
  v11 = &v16 - v10;
  v12 = type metadata accessor for MeasuredText(0);
  __chkstk_darwin(v12);
  v14 = &v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10053D9FC(a1, 0.0, 0.0, a2);
  type metadata accessor for PrecipitationTotalCanvasContent.MeasurementCache(0);
  sub_100095588();
  if (sub_100024D10(v11, 1, v12) == 1)
  {
    return sub_1000180EC(v11, &qword_100CD7068, &unk_100A7FD10);
  }

  sub_100793B14();
  static Locale.current.getter();
  Locale.textDirectionIsRTL.getter();
  (*(v6 + 8))(v8, v5);
  GraphicsContext.draw(_:in:)();
  return sub_1007939F4(v14, type metadata accessor for MeasuredText);
}

unint64_t sub_1007937E0()
{
  result = qword_100CD7028;
  if (!qword_100CD7028)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD7000, &qword_100A7FB78);
    v4[0] = sub_10079389C();
    v4[1] = sub_100322C80(&qword_100CA3F68, type metadata accessor for AutomationInfoViewModifier, byte_100A56C3C);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD7028);
  }

  return result;
}

unint64_t sub_10079389C()
{
  result = qword_100CD7030;
  if (!qword_100CD7030)
  {
    v4[8] = v0;
    v4[9] = v1;
    v3 = sub_10022E824(&qword_100CD6FD8, &qword_100A7FB58);
    v4[2] = sub_10022E824(&qword_100CD6FC8, &qword_100A7FB48);
    v4[3] = sub_100006F64(&qword_100CD6FF8, &qword_100CD6FC8, &qword_100A7FB48, &protocol conformance descriptor for HStack<A>);
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = sub_100322C80(&qword_100CE1750, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD7030);
  }

  return result;
}

uint64_t sub_1007939F4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100793A4C()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_100793AA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CD7068, &unk_100A7FD10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100793B14()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

void sub_100793B94(uint64_t a1)
{
  type metadata accessor for MeasuredText(319);
  if (v1 <= 0x3F)
  {
    sub_100007B54(319, &unk_100CD70D8, type metadata accessor for MeasuredText, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      type metadata accessor for CGSize(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

double sub_100793C60(char a1, char a2)
{
  if (a1)
  {
    if (a1 == 1)
    {
      if (a2)
      {
        if (qword_100CA2628 == -1)
        {
          goto LABEL_15;
        }

        goto LABEL_18;
      }
    }

    else if (a2)
    {
      if (qword_100CA2638 != -1)
      {
        goto LABEL_18;
      }

      goto LABEL_15;
    }

    if (qword_100CA2630 != -1)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if ((a2 & 1) == 0)
    {
      if (qword_100CA2620 == -1)
      {
        goto LABEL_15;
      }

      goto LABEL_18;
    }

    if (qword_100CA2618 != -1)
    {
LABEL_18:
      swift_once();
    }
  }

LABEL_15:

  return result;
}

void *sub_100793DCC(char a1, char a2, uint64_t a3)
{
  v6 = type metadata accessor for TipPriorityQueue.GridEntry(0);
  sub_1000037E8();
  __chkstk_darwin(v7);
  sub_100003C38();
  sub_100003908();
  __chkstk_darwin(v8);
  sub_100003908();
  __chkstk_darwin(v9);
  v80 = &v75 - v10;
  v11 = sub_10022C350(&qword_100CA5008, &unk_100A2F7B0);
  v12 = sub_100003810(v11);
  __chkstk_darwin(v12);
  v14 = &v75 - v13;
  v15 = type metadata accessor for LocationComponentViewModel(0);
  v16 = sub_100003810(v15);
  __chkstk_darwin(v16);
  sub_100003C38();
  sub_100003908();
  __chkstk_darwin(v17);
  sub_100003908();
  __chkstk_darwin(v18);
  v20 = &v75 - v19;
  __chkstk_darwin(v21);
  v23 = &v75 - v22;
  __chkstk_darwin(v24);
  v26 = &v75 - v25;
  v27 = sub_10022C350(&qword_100CAC7F8, &qword_100A65EA0);
  v28 = sub_100003810(v27);
  __chkstk_darwin(v28);
  sub_100003C38();
  sub_100003908();
  __chkstk_darwin(v29);
  sub_100003908();
  __chkstk_darwin(v30);
  v32 = &v75 - v31;
  __chkstk_darwin(v33);
  v35 = &v75 - v34;
  sub_100793C60(a1, a2);
  v37 = v36;
  v38 = OBJC_IVAR____TtCV7Weather18NoAqiSevereContent8_Storage_map;
  swift_beginAccess();
  sub_100035AD0(a3 + v38, v14, &qword_100CA5008, &unk_100A2F7B0);
  v39 = type metadata accessor for LocationComponentContainerViewModel(0);
  if (sub_100024D10(v14, 1, v39) == 1)
  {
    sub_1000180EC(v14, &qword_100CA5008, &unk_100A2F7B0);
  }

  else
  {
    sub_10001BD64();
    sub_10031694C(&v14[v40], v23, v41);
    sub_1003169AC(v14, type metadata accessor for LocationComponentContainerViewModel);
    sub_100011474();
    sub_1001B6FB0(v23, v26, v42);
    sub_100566A5C(v37, v83);
    if ((v84 & 1) == 0)
    {
      sub_100011474();
      sub_1001B6FB0(v26, v32, v44);
      v43 = 0;
      v45 = &v32[*(v6 + 20)];
      v46 = v83[1];
      *v45 = v83[0];
      *(v45 + 1) = v46;
      goto LABEL_7;
    }

    sub_1003169AC(v26, type metadata accessor for LocationComponentViewModel);
  }

  v43 = 1;
LABEL_7:
  v47 = v77;
  sub_10001B350(v32, v43, 1, v6);
  sub_1003168DC(v32, v35);
  sub_10001B350(v47, 1, 1, v6);
  sub_10001BD64();
  sub_10031694C(v48 + v49, v20, v50);
  sub_100566A94(v37, v85);
  v51 = v78;
  if (v86 & 1) != 0 || (sub_100011474(), v52 = v80, sub_1001B6FB0(v20, v80, v53), v54 = (v52 + *(v6 + 20)), v55 = v85[1], *v54 = v85[0], v54[1] = v55, sub_100035AD0(v35, v51, &qword_100CAC7F8, &qword_100A65EA0), sub_10001BD64(), v58 = v76, sub_10031694C(v56 + v57, v76, v59), sub_100566AB0(v37, v87), v60 = v81, (v88))
  {
    sub_100003E3C();
  }

  else
  {
    sub_100011474();
    sub_1001B6FB0(v58, v60, v61);
    v62 = (v60 + *(v6 + 20));
    v63 = v87[1];
    *v62 = v87[0];
    v62[1] = v63;
    sub_10001BD64();
    v66 = v79;
    sub_10031694C(v64 + v65, v79, v67);
    sub_100566AE8(v37, v89);
    if ((v90 & 1) == 0)
    {

      sub_100011474();
      v68 = v66;
      v69 = v82;
      sub_1001B6FB0(v68, v82, v70);
      v71 = (v69 + *(v6 + 20));
      v72 = v89[1];
      *v71 = v89[0];
      v71[1] = v72;
      v73 = sub_100924C14(v47, v52, v51, v60, v69);
      sub_1000180EC(v35, &qword_100CAC7F8, &qword_100A65EA0);
      return v73;
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1007943F4(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CA5008, &unk_100A2F7B0);
  v3 = sub_100003810(v2);
  __chkstk_darwin(v3);
  v5 = &v115 - v4;
  v6 = type metadata accessor for LocationComponentContainerViewModel(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v115 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtCV7Weather18NoAqiSevereContent8_Storage_map;
  swift_beginAccess();
  sub_100035AD0(a1 + v10, v5, &qword_100CA5008, &unk_100A2F7B0);
  v11 = sub_100024D10(v5, 1, v6);
  v120 = a1;
  if (v11 == 1)
  {
    sub_1000180EC(v5, &qword_100CA5008, &unk_100A2F7B0);
    sub_10022C350(&qword_100CAC7E8, &unk_100A766C0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100A3ECD0;
    v13 = sub_10022C350(&qword_100CAC7F0, &unk_100A3BD10);
    v14 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v15 = *(v7 + 72);
    v16 = *(v7 + 80);
    v17 = v13;
    v18 = swift_allocObject();
    sub_10001361C(v18, xmmword_100A2C3F0);
    sub_100003E24();
    sub_10031694C(a1 + v19, v18 + v14, v20);
    *(v12 + 32) = sub_1001B38A0(v18);
    *(v12 + 40) = v21;
    *(v12 + 48) = v22;
    v23 = swift_allocObject();
    sub_100003E18(v23);
    sub_10031694C(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_hourlyForecast, v23 + v14, v7);
    *(v12 + 56) = sub_1001B38A0(v23);
    *(v12 + 64) = v24;
    *(v12 + 72) = v25;
    v117 = v17;
    v26 = swift_allocObject();
    sub_100003E18(v26);
    sub_10031694C(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_dailyForecast, v26 + v14, v7);
    *(v12 + 80) = sub_1001B38A0(v26);
    *(v12 + 88) = v27;
    *(v12 + 96) = v28;
    v29 = v15;
    v118 = v14 + 2 * v15;
    v119 = v15;
    v30 = v16;
    v31 = swift_allocObject();
    v32 = sub_10001361C(v31, xmmword_100A2D320) + v14;
    v33 = *(a1 + 16);
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_uvIndex);
    sub_10031694C(v33 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_sunriseSunset, &v32[v29], v7);
    *(v12 + 104) = sub_1001B38A0(v31);
    *(v12 + 112) = v34;
    *(v12 + 120) = v35;
    v116 = v30;
    v36 = swift_allocObject();
    sub_1000056EC(v36);
    v38 = v37 + v14;
    v39 = v120;
    v40 = *(v120 + 16);
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_wind);
    sub_10031694C(v40 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_precipitationTotal, v38 + v119, v7);
    *(v12 + 128) = sub_1001B38A0(v31);
    *(v12 + 136) = v41;
    *(v12 + 144) = v42;
    v43 = swift_allocObject();
    sub_1000056EC(v43);
    v45 = v44 + v14;
    v46 = *(v39 + 16);
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_feelsLike);
    v47 = v119;
    sub_10031694C(v46 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_humidity, v45 + v119, v7);
    *(v12 + 152) = sub_1001B38A0(v31);
    *(v12 + 160) = v48;
    *(v12 + 168) = v49;
    v50 = swift_allocObject();
    sub_1000056EC(v50);
    v52 = v51 + v14;
    v53 = v120;
    v54 = *(v120 + 16);
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_visibility);
    v55 = v52 + v47;
    v56 = v47;
    sub_10031694C(v54 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_pressure, v55, v7);
    *(v12 + 176) = sub_1001B38A0(v31);
    *(v12 + 184) = v57;
    *(v12 + 192) = v58;
    v59 = swift_allocObject();
    sub_100003E18(v59);
    v61 = v60 + v14;
    v62 = *(v53 + 16);
    sub_10031694C(v62 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_moon, v60 + v14, v7);
    sub_10031694C(v62 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_averages, v61 + v56, v7);
    *(v12 + 200) = sub_1001B38A0(v59);
    *(v12 + 208) = v63;
    *(v12 + 216) = v64;
  }

  else
  {
    sub_1001B6FB0(v5, v9, type metadata accessor for LocationComponentContainerViewModel);
    sub_10022C350(&qword_100CAC7E8, &unk_100A766C0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100A41BA0;
    v65 = sub_10022C350(&qword_100CAC7F0, &unk_100A3BD10);
    v66 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v67 = *(v7 + 72);
    v68 = *(v7 + 80);
    v69 = v65;
    v70 = swift_allocObject();
    sub_10001361C(v70, xmmword_100A2C3F0);
    sub_100003E24();
    sub_10031694C(a1 + v71, v70 + v66, v72);
    *(v12 + 32) = sub_1001B38A0(v70);
    *(v12 + 40) = v73;
    *(v12 + 48) = v74;
    sub_100016B54();
    v75 = swift_allocObject();
    sub_1000056EC(v75);
    sub_10031694C(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_hourlyForecast, v70 + v66, v7);
    *(v12 + 56) = sub_1001B38A0(v70);
    *(v12 + 64) = v76;
    *(v12 + 72) = v77;
    sub_100016B54();
    v78 = swift_allocObject();
    sub_1000056EC(v78);
    sub_10031694C(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_dailyForecast, v70 + v66, v7);
    *(v12 + 80) = sub_1001B38A0(v70);
    *(v12 + 88) = v79;
    *(v12 + 96) = v80;
    sub_100016B54();
    v116 = v69;
    v81 = swift_allocObject();
    sub_1000056EC(v81);
    sub_10031694C(v9, v82 + v66, v7);
    *(v12 + 104) = sub_1001B38A0(v70);
    *(v12 + 112) = v83;
    *(v12 + 120) = v84;
    v85 = v67;
    v118 = v67;
    v86 = swift_allocObject();
    v87 = sub_10001361C(v86, xmmword_100A2D320);
    v117 = v9;
    v88 = v87 + v66;
    v89 = a1;
    v90 = *(a1 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_uvIndex);
    sub_10031694C(v90 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_sunriseSunset, &v88[v85], v7);
    *(v12 + 128) = sub_1001B38A0(v86);
    *(v12 + 136) = v91;
    *(v12 + 144) = v92;
    v119 = v68;
    v93 = swift_allocObject();
    sub_100003E18(v93);
    v95 = v94 + v66;
    v96 = *(v89 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_wind);
    sub_10031694C(v96 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_precipitationTotal, v95 + v118, v7);
    *(v12 + 152) = sub_1001B38A0(v93);
    *(v12 + 160) = v97;
    *(v12 + 168) = v98;
    v99 = swift_allocObject();
    sub_100003E18(v99);
    v101 = v100 + v66;
    v102 = *(v89 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_feelsLike);
    v103 = v118;
    sub_10031694C(v102 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_humidity, v101 + v118, v7);
    *(v12 + 176) = sub_1001B38A0(v99);
    *(v12 + 184) = v104;
    *(v12 + 192) = v105;
    v106 = sub_100017D80();
    *(v106 + 16) = 2;
    *(v106 + 24) = 4;
    v107 = *(v89 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_visibility);
    sub_10031694C(v107 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_pressure, v106 + v66 + v103, v7);
    *(v12 + 200) = sub_1001B38A0(v106);
    *(v12 + 208) = v108;
    *(v12 + 216) = v109;
    v110 = sub_100017D80();
    *(v110 + 16) = 2;
    *(v110 + 24) = 4;
    v111 = *(v120 + 16);
    sub_10031694C(v111 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_moon, v110 + v66, v7);
    sub_10031694C(v111 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_averages, v110 + v66 + v103, v7);
    *(v12 + 224) = sub_1001B38A0(v110);
    *(v12 + 232) = v112;
    *(v12 + 240) = v113;
    sub_1003169AC(v117, v7);
  }

  return v12;
}

void sub_100794C4C()
{
  v13[0] = xmmword_100A2C3F0;
  v13[1] = xmmword_100A3BBC0;
  v12[0] = xmmword_100A3BB70;
  v12[1] = xmmword_100A3AEB0;
  v14 = v13;
  v15 = v12;
  v11[0] = xmmword_100A3BBB0;
  v11[1] = xmmword_100A3BC10;
  v10[0] = xmmword_100A3BB70;
  v10[1] = xmmword_100A2C3F0;
  v16 = v11;
  v17 = v10;
  v9[0] = xmmword_100A2C3F0;
  v9[1] = xmmword_100A3BC10;
  v8[0] = xmmword_100A3BB70;
  v8[1] = xmmword_100A4C530;
  v18 = v9;
  v19 = v8;
  v7[0] = xmmword_100A3BBB0;
  v7[1] = xmmword_100A3BBC0;
  v6[0] = xmmword_100A2C3F0;
  v6[1] = xmmword_100A3BC00;
  v20 = v7;
  v21 = v6;
  v5[0] = xmmword_100A2C3F0;
  v5[1] = xmmword_100A3BC20;
  v4[0] = xmmword_100A3BB70;
  v4[1] = xmmword_100A3BBB0;
  v22 = v5;
  v23 = v4;
  v3[0] = xmmword_100A2C3F0;
  v3[1] = xmmword_100A3BC30;
  v2[0] = xmmword_100A3BBB0;
  v2[1] = xmmword_100A3BC30;
  v24 = v3;
  v25 = v2;
  v1[0] = xmmword_100A3BBB0;
  v1[1] = xmmword_100A3BC00;
  sub_10004EA7C(v1, 0);
  qword_100D908F0 = v0;
}

void sub_100794D50()
{
  sub_100013C2C(xmmword_100A2C3F0, xmmword_100A3BC10);
  v22[0] = xmmword_100A3BB70;
  v22[1] = xmmword_100A3AEB0;
  v23[0] = v0;
  v23[1] = v22;
  v21[0] = xmmword_100A3BBB0;
  v21[1] = xmmword_100A3BC30;
  v20[0] = xmmword_100A3BB70;
  v20[1] = v1;
  v23[2] = v21;
  v23[3] = v20;
  v19[0] = v1;
  v19[1] = xmmword_100A3BC30;
  v18[0] = xmmword_100A3BBB0;
  v18[1] = v2;
  v23[4] = v19;
  v23[5] = v18;
  v17[0] = v1;
  v17[1] = xmmword_100A3BC20;
  v16[0] = v1;
  v16[1] = xmmword_100A3BB80;
  v23[6] = v17;
  v23[7] = v16;
  v15[0] = xmmword_100A3BB70;
  v15[1] = xmmword_100A3BBB0;
  v14[0] = v1;
  v14[1] = xmmword_100A3BC50;
  v23[8] = v15;
  v23[9] = v14;
  v23[10] = &v13;
  v23[11] = &v12;
  v23[12] = &v11;
  sub_100557F40(v23, v3, v4, v5, v6, v7, v8, v9, 0, 1, 6, 7, 0, 1, 8, 9, 0, 1, 5, 6);
  qword_100D908F8 = v10;
}

void sub_100794E4C()
{
  sub_100013C2C(xmmword_100A3BBD0, xmmword_100A3BC50);
  v15[0] = xmmword_100A3BB70;
  v15[1] = xmmword_100A3AEB0;
  v16 = v0;
  v17 = v15;
  v14[0] = v1;
  v14[1] = xmmword_100A3BC60;
  v13[0] = xmmword_100A3BB70;
  v13[1] = xmmword_100A2C3F0;
  v18 = v14;
  v19 = v13;
  v12[0] = xmmword_100A2C3F0;
  v12[1] = v2;
  v11[0] = xmmword_100A2D320;
  v11[1] = xmmword_100A3BB70;
  v20 = v12;
  v21 = v11;
  v10[0] = xmmword_100A3BC40;
  v10[1] = xmmword_100A3BC60;
  v9[0] = xmmword_100A3BC40;
  v9[1] = v2;
  v22 = v10;
  v23 = v9;
  v8[0] = xmmword_100A3BBB0;
  v8[1] = v2;
  v7[0] = xmmword_100A3BB70;
  v7[1] = xmmword_100A3BBB0;
  v24 = v8;
  v25 = v7;
  v6[0] = xmmword_100A3BC40;
  v6[1] = xmmword_100A3BC40;
  v5[0] = v1;
  v5[1] = xmmword_100A3BC40;
  v26 = v6;
  v27 = v5;
  v4[0] = xmmword_100A3BC40;
  v4[1] = v1;
  sub_10004EA7C(v4, v1);
  qword_100D90900 = v3;
}

void sub_100794F44()
{
  sub_100013C2C(xmmword_100A3BBD0, xmmword_100A3BC60);
  v22[0] = xmmword_100A3BB70;
  v22[1] = xmmword_100A3F970;
  v23[0] = v0;
  v23[1] = v22;
  v21[0] = v1;
  v21[1] = xmmword_100A3BC40;
  v20[0] = xmmword_100A2D320;
  v20[1] = xmmword_100A3BBB0;
  v23[2] = v21;
  v23[3] = v20;
  v19[0] = xmmword_100A2C3F0;
  v19[1] = v2;
  v18[0] = xmmword_100A3BC40;
  v18[1] = xmmword_100A3BC40;
  v23[4] = v19;
  v23[5] = v18;
  v17[0] = xmmword_100A3BC40;
  v17[1] = v2;
  v16[0] = xmmword_100A3BBB0;
  v16[1] = v2;
  v23[6] = v17;
  v23[7] = v16;
  v15[0] = xmmword_100A3BB70;
  v15[1] = xmmword_100A3BBB0;
  v14[0] = xmmword_100A3BC40;
  v14[1] = v1;
  v23[8] = v15;
  v23[9] = v14;
  v23[10] = &v13;
  v23[11] = &v12;
  v23[12] = &v11;
  sub_100557F40(v23, v3, v4, v5, v6, v7, v8, v9, v1, *(&v1 + 1), 1, 2, 3, 4, 1, 2, v1, *(&v1 + 1), v1, *(&v1 + 1));
  qword_100D90908 = v10;
}

void sub_100795038()
{
  sub_100013C2C(xmmword_100A3BC50, xmmword_100A3BC60);
  v16[0] = xmmword_100A3BB70;
  v16[1] = xmmword_100A3F970;
  v17 = v0;
  v18 = v16;
  v15[0] = xmmword_100A3BC40;
  v15[1] = xmmword_100A3BC40;
  v14[0] = xmmword_100A41B90;
  v14[1] = xmmword_100A3BBB0;
  v19 = v15;
  v20 = v14;
  v13[0] = xmmword_100A3BBD0;
  v13[1] = v1;
  v9[1] = v1;
  v10 = xmmword_100A3BC90;
  v11 = 1;
  v12 = 4;
  v21 = v13;
  v22 = &v10;
  v8[1] = v1;
  v9[0] = xmmword_100A3BB70;
  v7[1] = v1;
  v8[0] = v1;
  v23 = v9;
  v24 = v8;
  v6[1] = xmmword_100A3BBB0;
  v7[0] = xmmword_100A3BC40;
  v5[1] = xmmword_100A3BC40;
  v6[0] = xmmword_100A3BB70;
  v25 = v7;
  v26 = v6;
  v4[1] = xmmword_100A3BBD0;
  v5[0] = xmmword_100A3BBD0;
  v3[1] = xmmword_100A3BBD0;
  v4[0] = xmmword_100A3BC40;
  v27 = v5;
  v28 = v4;
  v3[0] = xmmword_100A3BBD0;
  sub_10004EA7C(v3, 2);
  qword_100D90910 = v2;
}

uint64_t sub_10079514C(uint64_t a1, void (*a2)(char *))
{
  v4 = type metadata accessor for LocationComponentContainerViewModel(0);
  sub_1000037E8();
  __chkstk_darwin(v5);
  sub_100003C38();
  v8 = v6 - v7;
  __chkstk_darwin(v9);
  v11 = v29 - v10;
  v12 = type metadata accessor for LocationViewComponent(0);
  v13 = sub_100003810(v12);
  __chkstk_darwin(v13);
  v15 = v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10022C350(&qword_100CA5008, &unk_100A2F7B0);
  v17 = sub_100003810(v16);
  __chkstk_darwin(v17);
  sub_100003C38();
  v20 = v18 - v19;
  __chkstk_darwin(v21);
  v23 = v29 - v22;

  sub_1005D71C4(v24, a2);
  v29[1] = v25;

  sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather32LocationNoAqiSevereConfiguration8_Storage_map, v15, type metadata accessor for LocationViewComponent);
  a2(v15);
  sub_1003169AC(v15, type metadata accessor for LocationViewComponent);
  sub_10001B350(v23, 0, 1, v4);
  sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather32LocationNoAqiSevereConfiguration8_Storage_severeAlert, v15, type metadata accessor for LocationViewComponent);
  a2(v15);
  sub_1003169AC(v15, type metadata accessor for LocationViewComponent);
  sub_100035AD0(v23, v20, &qword_100CA5008, &unk_100A2F7B0);
  sub_100003E24();
  sub_10031694C(v11, v8, v26);
  type metadata accessor for NoAqiSevereContent._Storage(0);
  swift_allocObject();
  v27 = sub_1002D3EF4();
  sub_1003169AC(v11, v15);
  sub_1000180EC(v23, &qword_100CA5008, &unk_100A2F7B0);
  return v27;
}

uint64_t sub_1007953DC(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10079547C()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));

  return v0;
}

uint64_t sub_100795508()
{
  sub_10079547C();

  return swift_deallocClassInstance();
}

uint64_t sub_100795578(char *a1)
{
  v3 = sub_10022C350(&qword_100CA7188, &qword_100A35360);
  v4 = sub_100003810(v3);
  __chkstk_darwin(v4);
  sub_100003848();
  v131 = v5;
  sub_10000386C();
  __chkstk_darwin(v6);
  sub_10000E70C();
  v139 = v7;
  v8 = sub_1000038CC();
  v9 = type metadata accessor for MonthlyAveragesChartModel(v8);
  v10 = sub_100003810(v9);
  __chkstk_darwin(v10);
  sub_100003848();
  v130 = v11;
  sub_10000386C();
  __chkstk_darwin(v12);
  sub_10000E70C();
  v138 = v13;
  sub_1000038CC();
  v125 = type metadata accessor for Calendar.Identifier();
  sub_1000037C4();
  v123 = v14;
  __chkstk_darwin(v15);
  sub_100003848();
  v118 = v16;
  sub_10000386C();
  __chkstk_darwin(v17);
  sub_10000E70C();
  v117 = v18;
  sub_1000038CC();
  v127 = type metadata accessor for TimeZone();
  sub_1000037C4();
  v124 = v19;
  __chkstk_darwin(v20);
  sub_1000037D8();
  v115 = v22 - v21;
  sub_1000038CC();
  v122 = type metadata accessor for Date();
  sub_1000037C4();
  v119 = v23;
  __chkstk_darwin(v24);
  sub_1000037D8();
  v113 = v26 - v25;
  v111 = sub_10022C350(&qword_100CAB990, &qword_100A3A810);
  sub_1000037C4();
  v112 = v27;
  __chkstk_darwin(v28);
  v30 = &v108 - v29;
  v109 = type metadata accessor for ConditionDetailPlatterViewModel(0);
  sub_1000037E8();
  __chkstk_darwin(v31);
  sub_100003848();
  v128 = v32;
  sub_10000386C();
  __chkstk_darwin(v33);
  sub_100003878();
  v129 = v34;
  sub_10000386C();
  __chkstk_darwin(v35);
  sub_10000E70C();
  v132 = v36;
  sub_1000038CC();
  v37 = type metadata accessor for ArticlePlacementLocation();
  sub_1000037C4();
  v39 = v38;
  __chkstk_darwin(v40);
  sub_1000037D8();
  v43 = v42 - v41;
  v44 = sub_10022C350(&qword_100CB8A48, &qword_100A7FE00);
  v45 = sub_100003810(v44);
  __chkstk_darwin(v45);
  sub_100003848();
  v116 = v46;
  sub_10000386C();
  __chkstk_darwin(v47);
  v49 = &v108 - v48;
  v50 = sub_10022C350(&qword_100CA71A0, &unk_100A322C0);
  v51 = sub_100003810(v50);
  __chkstk_darwin(v51);
  sub_100003848();
  v126 = v52;
  sub_10000386C();
  __chkstk_darwin(v53);
  sub_100003878();
  v120 = v54;
  sub_10000386C();
  __chkstk_darwin(v55);
  sub_100003878();
  v121 = v56;
  sub_10000386C();
  __chkstk_darwin(v57);
  sub_100003878();
  v135 = v58;
  sub_10000386C();
  __chkstk_darwin(v59);
  sub_100003878();
  v140 = v60;
  sub_10000386C();
  __chkstk_darwin(v61);
  v63 = &v108 - v62;
  v64 = type metadata accessor for PrecipitationAveragesHeroChartViewModel(0);
  v65 = sub_100003810(v64);
  __chkstk_darwin(v65);
  sub_100003848();
  v114 = v66;
  sub_10000386C();
  __chkstk_darwin(v67);
  sub_100003878();
  v133 = v68;
  sub_10000386C();
  __chkstk_darwin(v69);
  v71 = &v108 - v70;
  sub_1000161C0(v1 + 5, v1[8]);
  sub_1002E5F80(a1, v71);
  v72 = *(v71 + 8);
  v73 = *(v71 + 9);
  v134 = v71;
  v136 = v63;
  v110 = v1;
  sub_100795FE0(a1, v72, v73, v63);
  sub_1000161C0(v1 + 20, v1[23]);
  v74 = type metadata accessor for PrecipitationAveragesDetailInput(0);
  (*(v39 + 104))(v43, enum case for ArticlePlacementLocation.precipitationAveragesDetail(_:), v37);
  v75 = a1;
  v137 = v49;
  sub_1005C188C(v43, v49);
  (*(v39 + 8))(v43, v37);
  type metadata accessor for PrecipitationAveragesHeroChartInput(0);
  WeatherStatisticsModel.dailyPrecipitationStatistics.getter();
  v76 = v113;
  v77 = v111;
  DailyWeatherStatistics.baselineStartDate.getter();
  (*(v112 + 8))(v30, v77);
  v78 = v115;
  Calendar.timeZone.getter();
  v79 = v117;
  Calendar.identifier.getter();
  v80 = v123;
  v81 = v118;
  v82 = v125;
  (*(v123 + 104))(v118, enum case for Calendar.Identifier.gregorian(_:), v125);
  v83 = v81;
  LOBYTE(v81) = static Calendar.Identifier.== infix(_:_:)();
  v84 = *(v80 + 8);
  v84(v83, v82);
  v84(v79, v82);
  v85 = v110;
  v86 = v132;
  sub_100797118(v76, (v81 & 1) == 0, v132);
  (*(v124 + 8))(v78, v127);
  (*(v119 + 8))(v76, v122);
  v87 = *&v75[*(v74 + 24)];
  if (v87)
  {
    sub_1000161C0(v85, v85[3]);
    sub_10086A71C(v87, v140);
  }

  else
  {
    sub_10001B350(v140, 1, 1, v109);
  }

  v88 = v133;
  sub_1007980F0(v134, v133, type metadata accessor for PrecipitationAveragesHeroChartViewModel);
  v89 = v135;
  sub_100035AD0(v136, v135, &qword_100CA71A0, &unk_100A322C0);
  sub_1000161C0(v85 + 15, v85[18]);
  v90 = &v75[*(v74 + 20)];
  v91 = v138;
  sub_10094FEF8(v90, v138);
  v92 = v116;
  sub_100035AD0(v137, v116, &qword_100CB8A48, &qword_100A7FE00);
  sub_100428C50(v92, v139);
  v93 = v129;
  sub_1007980F0(v86, v129, type metadata accessor for ConditionDetailPlatterViewModel);
  v94 = v121;
  sub_100035AD0(v140, v121, &qword_100CA71A0, &unk_100A322C0);
  v95 = v88;
  v96 = v114;
  sub_1007980F0(v95, v114, type metadata accessor for PrecipitationAveragesHeroChartViewModel);
  v97 = v120;
  sub_100035AD0(v89, v120, &qword_100CA71A0, &unk_100A322C0);
  v98 = v130;
  sub_1007980F0(v91, v130, type metadata accessor for MonthlyAveragesChartModel);
  v99 = v139;
  v100 = v131;
  sub_100035AD0(v139, v131, &qword_100CA7188, &qword_100A35360);
  v101 = v128;
  sub_1007980F0(v93, v128, type metadata accessor for ConditionDetailPlatterViewModel);
  v102 = v126;
  sub_100035AD0(v94, v126, &qword_100CA71A0, &unk_100A322C0);
  type metadata accessor for PrecipitationAveragesDetailViewModel._Storage(0);
  swift_allocObject();
  sub_1002D50A8(v96, v97, v98, v100, v101, v102, v103, v104, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123);
  v106 = v105;
  sub_1000180EC(v94, &qword_100CA71A0, &unk_100A322C0);
  sub_100798150(v93, type metadata accessor for ConditionDetailPlatterViewModel);
  sub_1000180EC(v99, &qword_100CA7188, &qword_100A35360);
  sub_100798150(v138, type metadata accessor for MonthlyAveragesChartModel);
  sub_1000180EC(v135, &qword_100CA71A0, &unk_100A322C0);
  sub_100798150(v133, type metadata accessor for PrecipitationAveragesHeroChartViewModel);
  sub_1000180EC(v140, &qword_100CA71A0, &unk_100A322C0);
  sub_100798150(v132, type metadata accessor for ConditionDetailPlatterViewModel);
  sub_1000180EC(v137, &qword_100CB8A48, &qword_100A7FE00);
  sub_1000180EC(v136, &qword_100CA71A0, &unk_100A322C0);
  sub_100798150(v134, type metadata accessor for PrecipitationAveragesHeroChartViewModel);
  return v106;
}

uint64_t sub_100795FE0@<X0>(uint64_t a1@<X0>, void (*a2)(char *, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v152 = a3;
  v155 = a2;
  v158 = a4;
  v5 = type metadata accessor for PrecipitationAveragesDetailInput(0);
  __chkstk_darwin(v5);
  v153 = &v129 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v146 = &v129 - v8;
  __chkstk_darwin(v9);
  v132 = &v129 - v10;
  v142 = type metadata accessor for WeatherDescription();
  v141 = *(v142 - 8);
  __chkstk_darwin(v142);
  v140 = &v129 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_10022C350(&qword_100CAB938, &qword_100A51040);
  v138 = *(v139 - 8);
  __chkstk_darwin(v139);
  v134 = (&v129 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13);
  v133 = &v129 - v14;
  v137 = type metadata accessor for TimeZone();
  v135 = *(v137 - 8);
  __chkstk_darwin(v137);
  v147 = &v129 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10022C350(&qword_100CAB930, &qword_100A3A7C0);
  __chkstk_darwin(v16 - 8);
  v143 = &v129 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v151 = &v129 - v19;
  __chkstk_darwin(v20);
  v22 = &v129 - v21;
  v23 = type metadata accessor for DetailChartDataElement();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v149 = &v129 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v129 - v27;
  v29 = type metadata accessor for Date();
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v145 = &v129 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v131 = &v129 - v33;
  __chkstk_darwin(v34);
  v144 = &v129 - v35;
  __chkstk_darwin(v36);
  v38 = &v129 - v37;
  v39 = type metadata accessor for Calendar();
  v40 = __chkstk_darwin(v39);
  v42 = &v129 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = *(v5 + 32);
  v156 = v45;
  v157 = v44;
  (*(v45 + 16))(v42, a1 + v43, v40);
  v150 = v5;
  v46 = *(v5 + 36);
  v159 = v30;
  v160 = v29;
  v47 = *(v30 + 16);
  v154 = a1;
  v47(v38, a1 + v46, v29);
  v161 = v42;
  v162 = v38;
  v48 = v155;
  sub_1008DBA9C();
  if (sub_100024D10(v22, 1, v23) != 1)
  {
    v153 = v24;
    v59 = *(v24 + 32);
    v148 = v28;
    v60 = v59(v28, v22, v23);
    __chkstk_darwin(v60);
    v129 = v42;
    v130 = v38;
    v61 = v151;
    sub_1008DBA9C();
    v62 = v23;
    if (sub_100024D10(v61, 1, v23) == 1)
    {
      sub_1000180EC(v61, &qword_100CAB930, &qword_100A3A7C0);
      if (qword_100CA2728 != -1)
      {
        swift_once();
      }

      v63 = type metadata accessor for Logger();
      sub_10000703C(v63, qword_100D90BD0);
      v64 = v146;
      sub_1007980F0(v154, v146, type metadata accessor for PrecipitationAveragesDetailInput);
      v65 = Logger.logObject.getter();
      v66 = static os_log_type_t.error.getter();
      v67 = os_log_type_enabled(v65, v66);
      v68 = v129;
      v69 = v153;
      v70 = v148;
      if (v67)
      {
        v71 = v129;
        v72 = v64;
        v73 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        v163 = v74;
        *v73 = 141558275;
        *(v73 + 4) = 1752392040;
        *(v73 + 12) = 2081;
        type metadata accessor for Location();
        sub_1002F33A8();
        v75 = dispatch thunk of CustomStringConvertible.description.getter();
        v77 = v76;
        v78 = v72;
        v68 = v71;
        sub_100798150(v78, type metadata accessor for PrecipitationAveragesDetailInput);
        v79 = sub_100078694(v75, v77, &v163);

        *(v73 + 14) = v79;
        _os_log_impl(&_mh_execute_header, v65, v66, "Missing historical average precipitation accumulation up to today, for creating platter view summary. location=%{private,mask.hash}s", v73, 0x16u);
        sub_100006F14(v74);

        (*(v69 + 8))(v148, v62);
      }

      else
      {

        sub_100798150(v64, type metadata accessor for PrecipitationAveragesDetailInput);
        (*(v69 + 8))(v70, v62);
      }
    }

    else
    {
      v82 = v149;
      v59(v149, v61, v23);
      v83 = v143;
      sub_1003DF9A4(v48, v143);
      if (sub_100024D10(v83, 1, v23) != 1)
      {
        v97 = v131;
        DetailChartDataElement.date.getter();
        v98 = *(v153 + 8);
        v153 += 8;
        v155 = v98;
        v98(v83, v23);
        v99 = *(v159 + 32);
        v154 = v23;
        v99(v144, v97, v160);
        v68 = v129;
        Calendar.timeZone.getter();
        v100 = Date.formattedMonthAndDay(timeZone:)();
        v102 = v101;
        DetailChartDataElement.date.getter();
        v103 = Date.formattedMonthAndDay(timeZone:)();
        v105 = v104;
        type metadata accessor for UnitManager();
        static UnitManager.standard.getter();
        v106 = UnitManager.precipitationRainfall.getter();

        DetailChartDataElement.value.getter();
        sub_1002ED0CC();
        v107 = v106;
        v108 = v133;
        Measurement.init(value:unit:)();
        DetailChartDataElement.value.getter();
        v109 = v107;
        v110 = v134;
        Measurement.init(value:unit:)();
        sub_1000161C0((v136 + 80), *(v136 + 104));
        v111 = v140;
        sub_100855E1C(v100, v102, v103, v105, v108, v110, v140);

        v112 = [objc_opt_self() mainBundle];
        v164._object = 0x8000000100AC9030;
        v113._countAndFlagsBits = 0x7972616D6D7553;
        v114._object = 0x8000000100ADE0F0;
        v164._countAndFlagsBits = 0xD000000000000023;
        v114._countAndFlagsBits = 0xD00000000000001ELL;
        v113._object = 0xE700000000000000;
        v115 = NSLocalizedString(_:tableName:bundle:value:comment:)(v114, 0, v112, v113, v164);

        v116 = *(v138 + 8);
        v117 = v139;
        v116(v110, v139);
        v116(v108, v117);
        v118 = v160;
        v119 = *(v159 + 8);
        v119(v145, v160);
        (*(v135 + 8))(v147, v137);
        v119(v144, v118);
        v121 = v154;
        v120 = v155;
        v155(v149, v154);
        v120(v148, v121);
        v122 = type metadata accessor for ConditionDetailPlatterViewModel(0);
        v123 = v158;
        v124 = v142;
        sub_10001B350(v158 + v122[6], 1, 1, v142);
        (*(v141 + 32))(v123 + v122[7], v111, v124);
        v125 = type metadata accessor for ConditionDetailPlatterViewModel.Body(0);
        swift_storeEnumTagMultiPayload();
        sub_10001B350(v123 + v122[8], 1, 1, v125);
        *v123 = 0;
        *(v123 + 8) = 0;
        *(v123 + 16) = 2;
        *(v123 + 24) = v115;
        *(v123 + v122[9]) = 0;
        *(v123 + v122[10]) = 0;
        sub_10001B350(v123, 0, 1, v122);
        v80 = v130;
        goto LABEL_22;
      }

      sub_1000180EC(v83, &qword_100CAB930, &qword_100A3A7C0);
      v68 = v129;
      v84 = v153;
      v85 = v148;
      if (qword_100CA2728 != -1)
      {
        swift_once();
      }

      v86 = type metadata accessor for Logger();
      sub_10000703C(v86, qword_100D90BD0);
      v87 = v132;
      sub_1007980F0(v154, v132, type metadata accessor for PrecipitationAveragesDetailInput);
      v88 = Logger.logObject.getter();
      v89 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v88, v89))
      {
        v90 = swift_slowAlloc();
        v91 = swift_slowAlloc();
        v163 = v91;
        *v90 = 141558275;
        *(v90 + 4) = 1752392040;
        *(v90 + 12) = 2081;
        type metadata accessor for Location();
        sub_1002F33A8();
        v92 = dispatch thunk of CustomStringConvertible.description.getter();
        v94 = v93;
        sub_100798150(v87, type metadata accessor for PrecipitationAveragesDetailInput);
        v95 = sub_100078694(v92, v94, &v163);

        *(v90 + 14) = v95;
        _os_log_impl(&_mh_execute_header, v88, v89, "Could not derive a start date, for creating platter view summary. location=%{private,mask.hash}s", v90, 0x16u);
        sub_100006F14(v91);

        v96 = *(v84 + 8);
        v96(v149, v62);
        v96(v148, v62);
      }

      else
      {

        sub_100798150(v87, type metadata accessor for PrecipitationAveragesDetailInput);
        v126 = *(v84 + 8);
        v126(v82, v62);
        v126(v85, v62);
      }
    }

    v80 = v130;
    v127 = type metadata accessor for ConditionDetailPlatterViewModel(0);
    sub_10001B350(v158, 1, 1, v127);
    goto LABEL_22;
  }

  sub_1000180EC(v22, &qword_100CAB930, &qword_100A3A7C0);
  if (qword_100CA2728 != -1)
  {
    swift_once();
  }

  v49 = type metadata accessor for Logger();
  sub_10000703C(v49, qword_100D90BD0);
  v50 = v153;
  sub_1007980F0(v154, v153, type metadata accessor for PrecipitationAveragesDetailInput);
  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v163 = v54;
    *v53 = 141558275;
    *(v53 + 4) = 1752392040;
    *(v53 + 12) = 2081;
    type metadata accessor for Location();
    sub_1002F33A8();
    v55 = dispatch thunk of CustomStringConvertible.description.getter();
    v57 = v56;
    sub_100798150(v50, type metadata accessor for PrecipitationAveragesDetailInput);
    v58 = sub_100078694(v55, v57, &v163);

    *(v53 + 14) = v58;
    _os_log_impl(&_mh_execute_header, v51, v52, "Missing precipitation accumulation up to today, for creating platter view summary. location=%{private,mask.hash}s", v53, 0x16u);
    sub_100006F14(v54);
  }

  else
  {

    sub_100798150(v50, type metadata accessor for PrecipitationAveragesDetailInput);
  }

  v80 = v38;
  v81 = type metadata accessor for ConditionDetailPlatterViewModel(0);
  sub_10001B350(v158, 1, 1, v81);
  v68 = v42;
LABEL_22:
  (*(v159 + 8))(v80, v160);
  return (*(v156 + 8))(v68, v157);
}

uint64_t sub_100797118@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v3 = a2;
  v128 = a1;
  v120 = a3;
  v118 = type metadata accessor for ConditionDetailPlatterViewModel.Body(0);
  __chkstk_darwin(v118);
  v119 = &v103 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10022C350(&qword_100CAE8E8, &unk_100A49400);
  __chkstk_darwin(v5 - 8);
  v131 = &v103 - v6;
  v7 = sub_10022C350(&qword_100CBADB0, &unk_100A708C0);
  __chkstk_darwin(v7 - 8);
  countAndFlagsBits = &v103 - v8;
  v126 = type metadata accessor for DateComponents();
  v124 = *(v126 - 8);
  __chkstk_darwin(v126);
  v123 = &v103 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  __chkstk_darwin(v10 - 8);
  v121 = &v103 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v125 = &v103 - v13;
  __chkstk_darwin(v14);
  v132 = &v103 - v15;
  __chkstk_darwin(v16);
  v133 = &v103 - v17;
  v130 = type metadata accessor for Calendar();
  v117 = *(v130 - 8);
  __chkstk_darwin(v130);
  v129 = &v103 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10022C350(&qword_100CACE08, &unk_100A3C1B0);
  __chkstk_darwin(v19 - 8);
  v106 = &v103 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v107 = &v103 - v22;
  __chkstk_darwin(v23);
  v25 = &v103 - v24;
  __chkstk_darwin(v26);
  v28 = &v103 - v27;
  __chkstk_darwin(v29);
  v31 = &v103 - v30;
  v32 = type metadata accessor for TimeZone();
  v33 = *(v32 - 8);
  __chkstk_darwin(v32);
  v104 = &v103 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v105 = &v103 - v36;
  __chkstk_darwin(v37);
  v39 = &v103 - v38;
  __chkstk_darwin(v40);
  v42 = &v103 - v41;
  v43 = sub_100797FE4(v3);
  v115 = v44;
  v116 = v43;
  TimeZone.init(secondsFromGMT:)();
  result = sub_100024D10(v31, 1, v32);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_20;
  }

  v46 = *(v33 + 32);
  v46(v42, v31, v32);
  v127 = Date.formattedYear(timeZone:)();
  v128 = v47;
  v48 = *(v33 + 8);
  v48(v42, v32);
  TimeZone.init(secondsFromGMT:)();
  result = sub_100024D10(v28, 1, v32);
  if (result == 1)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v114 = v33 + 32;
  v110 = v46;
  v46(v39, v28, v32);
  static Calendar.gregorianCalendar(with:)();
  v111 = v33 + 8;
  v109 = v48;
  v48(v39, v32);
  v49 = countAndFlagsBits;
  v50 = v130;
  sub_10001B350(countAndFlagsBits, 1, 1, v130);
  v51 = v25;
  sub_10001B350(v25, 1, 1, v32);
  v52 = v123;
  DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
  Calendar.date(from:)();
  v53 = *(v124 + 8);
  v54 = v126;
  v53(v52, v126);
  sub_10001B350(v49, 1, 1, v50);
  v124 = v32;
  sub_10001B350(v51, 1, 1, v32);
  DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
  Calendar.date(from:)();
  v53(v52, v54);
  v55 = type metadata accessor for Date();
  v56 = sub_100024D10(v133, 1, v55);
  v57 = v127;
  if (v56 == 1 || sub_100024D10(v132, 1, v55) == 1)
  {
    if (qword_100CA2728 != -1)
    {
      swift_once();
    }

    v58 = type metadata accessor for Logger();
    sub_10000703C(v58, qword_100D90BD0);
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&_mh_execute_header, v59, v60, "Could not derive dates for describing average range in platter view summary.", v61, 2u);
    }
  }

  v62 = [objc_opt_self() mainBundle];
  v134._object = 0x8000000100ADD8D0;
  v134._countAndFlagsBits = 0xD000000000000032;
  v63._countAndFlagsBits = 0xD00000000000001BLL;
  v123 = 0x8000000100ADD8B0;
  v63._object = 0x8000000100ADD8B0;
  v64._countAndFlagsBits = 0;
  v64._object = 0xE000000000000000;
  v65 = NSLocalizedString(_:tableName:bundle:value:comment:)(v63, 0, v62, v64, v134);
  countAndFlagsBits = v65._countAndFlagsBits;
  object = v65._object;

  v66 = type metadata accessor for WeatherDescription();
  sub_10001B350(v131, 1, 1, v66);
  sub_10022C350(&qword_100CA5408, &unk_100A533E0);
  v67 = type metadata accessor for WeatherDescription.Argument();
  v68 = *(v67 - 8);
  v69 = *(v68 + 72);
  v70 = (*(v68 + 80) + 32) & ~*(v68 + 80);
  v71 = swift_allocObject();
  *(v71 + 16) = xmmword_100A3B030;
  v112 = v71;
  v72 = (v71 + v70);
  v73 = v128;
  *v72 = v57;
  v72[1] = v73;
  v74 = *(v68 + 104);
  (v74)(v72, enum case for WeatherDescription.Argument.string(_:), v67);
  v126 = v69;
  v75 = (v72 + v69);
  *v75 = v57;
  v75[1] = v73;
  v74();
  v76 = v125;
  sub_100035AD0(v133, v125, &unk_100CB2CF0, &unk_100A2D7F0);
  LODWORD(v62) = sub_100024D10(v76, 1, v55);
  swift_bridgeObjectRetain_n();
  v108 = v55;
  if (v62 != 1)
  {
    v79 = v107;
    TimeZone.init(secondsFromGMT:)();
    v80 = v124;
    result = sub_100024D10(v79, 1, v124);
    if (result != 1)
    {
      v81 = v105;
      v110(v105, v79, v80);
      v77 = Date.formattedMonthAndDay(timeZone:)();
      v82 = v76;
      v78 = v83;
      v109(v81, v80);
      v55 = v108;
      (*(*(v108 - 8) + 8))(v82, v108);
      v57 = v127;
      goto LABEL_14;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  sub_1000180EC(v76, &unk_100CB2CF0, &unk_100A2D7F0);
  v77 = 0;
  v78 = 0xE000000000000000;
LABEL_14:
  v84 = (v72 + 2 * v126);
  *v84 = v77;
  v84[1] = v78;
  v74();
  v85 = v121;
  sub_100035AD0(v132, v121, &unk_100CB2CF0, &unk_100A2D7F0);
  if (sub_100024D10(v85, 1, v55) == 1)
  {
    sub_1000180EC(v85, &unk_100CB2CF0, &unk_100A2D7F0);
    v86 = v57;
    v87 = 0;
    v88 = 0xE000000000000000;
LABEL_18:
    v93 = v126;
    v94 = (v72 + 3 * v126);
    *v94 = v87;
    v94[1] = v88;
    v74();
    v95 = (v72 + 4 * v93);
    v96 = v128;
    *v95 = v86;
    v95[1] = v96;
    v74();
    v97 = v119;
    WeatherDescription.init(format:_:)();
    (*(v117 + 8))(v129, v130);
    v98 = v118;
    swift_storeEnumTagMultiPayload();
    v99 = type metadata accessor for ConditionDetailPlatterViewModel(0);
    v100 = v120;
    sub_10001B350(v120 + v99[8], 1, 1, v98);
    *v100 = 0xD00000000000001BLL;
    v101 = countAndFlagsBits;
    *(v100 + 8) = v123;
    *(v100 + 16) = 0;
    v102 = object;
    *(v100 + 24) = v101;
    *(v100 + 32) = v102;
    sub_100412514(v131, v100 + v99[6]);
    sub_10046104C(v97, v100 + v99[7]);
    *(v100 + v99[9]) = 0;
    *(v100 + v99[10]) = 0;
    sub_1000180EC(v133, &unk_100CB2CF0, &unk_100A2D7F0);
    return sub_1000180EC(v132, &unk_100CB2CF0, &unk_100A2D7F0);
  }

  v89 = v106;
  TimeZone.init(secondsFromGMT:)();
  v90 = v124;
  result = sub_100024D10(v89, 1, v124);
  if (result != 1)
  {
    v91 = v104;
    v110(v104, v89, v90);
    v87 = Date.formattedMonthAndDay(timeZone:)();
    v88 = v92;
    v109(v91, v90);
    (*(*(v108 - 8) + 8))(v85);
    v86 = v127;
    goto LABEL_18;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_100797EFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for Date();
  sub_1000037C4();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_1000037D8();
  v9 = v8 - v7;
  DetailChartDataElement.date.getter();
  v10 = Calendar.isDate(_:inSameDayAs:)();
  (*(v5 + 8))(v9, v3);
  return v10 & 1;
}

uint64_t sub_100797FE4(char a1)
{
  v2 = [objc_opt_self() mainBundle];
  if (a1)
  {
    v11 = 0x8000000100ADDE70;
    v3 = 0xD00000000000018CLL;
    v4 = 0x8000000100ADDCE0;
    v5 = 0x1000000000000279;
    v6.super.isa = v2;
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  else
  {
    v11 = 0x8000000100ADDA80;
    v4 = 0x8000000100ADD910;
    v3 = 0xD00000000000016ELL;
    v6.super.isa = v2;
    v7 = 0;
    v8 = 0xE000000000000000;
    v5 = 0x100000000000025BLL;
  }

  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v3, 0, v6, *&v7, *&v5)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_1007980F0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_100798150(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10079821C()
{
  v1 = v0;
  v2 = type metadata accessor for CloudAltitudeKind();
  sub_1000037C4();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_1000037D8();
  v8 = v7 - v6;
  v9 = type metadata accessor for WeatherConditionGradientModel.PresentationContext();
  sub_1000037C4();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_1000037D8();
  v15 = v14 - v13;
  v16 = type metadata accessor for Elevation();
  __chkstk_darwin(v16 - 8);
  sub_1000037D8();
  type metadata accessor for WeatherCondition();
  sub_1000037C4();
  __chkstk_darwin(v17);
  sub_1000037D8();
  (*(v20 + 16))(v19 - v18, v1);
  Elevation.init(_:isPM:)();
  v21 = enum case for WeatherConditionGradientModel.AnimationContext.vfx(_:);
  v22 = type metadata accessor for WeatherConditionGradientModel.AnimationContext();
  (*(*(v22 - 8) + 104))(v15, v21, v22);
  (*(v11 + 104))(v15, enum case for WeatherConditionGradientModel.PresentationContext.fullScreen(_:), v9);
  (*(v4 + 104))(v8, enum case for CloudAltitudeKind.low(_:), v2);
  return WeatherConditionGradientModel.init(conditionKind:elevation:isDaylight:presentation:cloudCover:cloudKind:)();
}

uint64_t sub_1007984AC@<X0>(uint64_t *a1@<X8>)
{
  Dictionary.init(dictionaryLiteral:)();
  a1[3] = sub_10022C350(&qword_100CD7240, &qword_100A7FF28);
  a1[4] = sub_100798600();
  sub_100042FB0(a1);
  type metadata accessor for VFXTestViewModel(0);
  return ShortDescription.init(name:_:)();
}

uint64_t sub_100798574(uint64_t a1)
{
  sub_100798664(&qword_100CD7250, byte_100A7FECC);

  return ShortDescribable.description.getter();
}

unint64_t sub_100798600()
{
  result = qword_100CD7248;
  if (!qword_100CD7248)
  {
    v3 = sub_10022E824(&qword_100CD7240, &qword_100A7FF28);
    result = swift_getWitnessTable(&protocol conformance descriptor for ShortDescription<A>, v3, v0, v1);
    atomic_store(result, &qword_100CD7248);
  }

  return result;
}

uint64_t sub_100798664(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for VFXTestViewModel(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for ConditionDetailChartHeaderView(uint64_t a1)
{
  result = qword_100CD72B0;
  if (!qword_100CD72B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10079871C(uint64_t a1)
{
  result = type metadata accessor for ConditionDetailChartHeaderViewModel(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1007987BC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for ConditionDetailChartHeaderViewModel(0) + 20));
  switch(v3)
  {
    case 2:
      if (qword_100CA20B0 != -1)
      {
        swift_once();
      }

      v4 = qword_100D8FD78;
      a1[3] = type metadata accessor for DefaultChartHeaderStyle();
      v5 = &unk_100CD7368;
      v6 = type metadata accessor for DefaultChartHeaderStyle;
      v7 = &unk_100A515E8;
      goto LABEL_17;
    case 3:
      if (qword_100CA2BB8 != -1)
      {
        swift_once();
      }

      v4 = qword_100D91510;
      a1[3] = type metadata accessor for ChanceOfRainChartHeaderStyle();
      v5 = &unk_100CD7360;
      v6 = type metadata accessor for ChanceOfRainChartHeaderStyle;
      v7 = &unk_100A9F6E0;
      goto LABEL_17;
    case 4:
      if (qword_100CA2BB0 != -1)
      {
        swift_once();
      }

      v4 = qword_100D91508;
      a1[3] = type metadata accessor for TemperatureChartHeaderStyle();
      v5 = &unk_100CD7358;
      v6 = type metadata accessor for TemperatureChartHeaderStyle;
      v7 = &unk_100A9F768;
      goto LABEL_17;
    case 5:
      if (qword_100CA2948 != -1)
      {
        swift_once();
      }

      v4 = qword_100D911B8;
      a1[3] = type metadata accessor for VisibilityChartHeaderStyle();
      v5 = &unk_100CD7350;
      v6 = type metadata accessor for VisibilityChartHeaderStyle;
      v7 = &unk_100A8ED9C;
      goto LABEL_17;
    case 6:
      if (qword_100CA2360 != -1)
      {
        swift_once();
      }

      v4 = qword_100D90580;
      a1[3] = type metadata accessor for UVIndexChartHeaderStyle();
      v5 = &unk_100CD7348;
      v6 = type metadata accessor for UVIndexChartHeaderStyle;
      v7 = &unk_100A6BE68;
LABEL_17:
      a1[4] = sub_10079DCD8(v5, v6, v7);
      *a1 = v4;

      break;
    default:
      v9 = type metadata accessor for PrecipitationChartHeaderStyle();
      swift_allocObject();
      v10 = sub_1004CBA64(v3 & 1);
      a1[3] = v9;
      result = sub_10079DCD8(&qword_100CD7340, type metadata accessor for PrecipitationChartHeaderStyle, aU_23);
      a1[4] = result;
      *a1 = v10;
      break;
  }

  return result;
}

uint64_t sub_100798AFC()
{
  v0 = sub_10022C350(&qword_100CA5730, &unk_100A2FB90);
  sub_100003810(v0);
  sub_100003828();
  __chkstk_darwin(v1);
  v3 = &v28 - v2;
  v4 = type metadata accessor for ConditionDetailChartHeaderViewModel(0);
  v5 = sub_100003810(v4);
  __chkstk_darwin(v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v28 - v9;
  __chkstk_darwin(v11);
  v13 = &v28 - v12;
  __chkstk_darwin(v14);
  v16 = &v28 - v15;
  sub_10001F730();
  sub_100003940();
  sub_10079D9B4();
  ConditionDetailChartHeaderStringModel.title2.getter();
  v17 = type metadata accessor for ConditionDetailChartHeaderStringModel();
  sub_1000037E8();
  v19 = *(v18 + 8);
  v19(v16, v17);
  v20 = type metadata accessor for AttributedString();
  LODWORD(v16) = sub_100024D10(v3, 1, v20);
  sub_1000180EC(v3, &qword_100CA5730, &unk_100A2FB90);
  if (v16 == 1)
  {
    sub_10001F730();
    sub_10079D9B4();
    ConditionDetailChartHeaderStringModel.title3.getter();
    v22 = v21;
    v19(v13, v17);
    if (!v22)
    {
      sub_10001F730();
      sub_10079D9B4();
      ConditionDetailChartHeaderStringModel.symbolName.getter();
      v24 = v23;
      v19(v10, v17);
      if (!v24)
      {
        sub_10001F730();
        sub_10079D9B4();
        ConditionDetailChartHeaderStringModel.subtitle.getter();
        v26 = v25;
        v19(v7, v17);
        if (!v26)
        {
          return 1;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_100798D58@<X0>(uint64_t a1@<X8>)
{
  v107 = a1;
  v2 = sub_10022C350(&qword_100CA5730, &unk_100A2FB90);
  sub_100003810(v2);
  sub_100003828();
  __chkstk_darwin(v3);
  sub_100003918(v95 - v4);
  v5 = type metadata accessor for AttributedString();
  v6 = sub_100003E5C(v5, v117 + 8);
  v102 = v7;
  __chkstk_darwin(v6);
  sub_1000037D8();
  v10 = sub_100003918(v9 - v8);
  v106 = type metadata accessor for AutomationInfo(v10);
  sub_1000037E8();
  __chkstk_darwin(v11);
  sub_1000037D8();
  v14 = sub_100003918(v13 - v12);
  v15 = type metadata accessor for ConditionDetailChartHeaderViewModel(v14);
  v16 = sub_100003810(v15);
  __chkstk_darwin(v16);
  v104 = v95 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  sub_100003918(v95 - v19);
  v20 = type metadata accessor for AccessibilityChildBehavior();
  v21 = sub_100003E5C(v20, &v118);
  v99 = v22;
  __chkstk_darwin(v21);
  sub_1000037D8();
  v25 = v24 - v23;
  v26 = sub_10022C350(&qword_100CD72F0, &qword_100A7FFA8);
  sub_100003810(v26);
  sub_100003828();
  __chkstk_darwin(v27);
  v29 = v95 - v28;
  v30 = sub_10022C350(&qword_100CD72F8, &qword_100A7FFB0) - 8;
  sub_100003828();
  __chkstk_darwin(v31);
  v33 = v95 - v32;
  v34 = sub_10022C350(&qword_100CD7300, &qword_100A7FFB8);
  sub_100003828();
  __chkstk_darwin(v35);
  v37 = v95 - v36;
  v38 = sub_10022C350(&qword_100CD7308, &qword_100A7FFC0);
  sub_100003E5C(v38, &__src[104]);
  v98 = v39;
  sub_100003828();
  __chkstk_darwin(v40);
  v96 = v95 - v41;
  v42 = sub_10022C350(&qword_100CD7310, &qword_100A7FFC8);
  sub_100003810(v42);
  sub_100003828();
  __chkstk_darwin(v43);
  v45 = sub_100003918(v95 - v44);
  *v29 = *(v1 + *(type metadata accessor for ConditionDetailChartHeaderView(v45) + 20));
  *(v29 + 1) = 0;
  v29[16] = 0;
  v46 = sub_10022C350(&qword_100CD7318, &qword_100A7FFD0);
  sub_100799788(v1, &v29[*(v46 + 44)]);
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_100051BBC();
  memcpy(&v33[*(v30 + 44)], __src, 0x70uLL);
  sub_1007987BC(&v116);
  sub_1000161C0(&v116, *(&v117[0] + 1));
  dispatch thunk of ConditionDetailChartHeaderStyleType.preferredHeight.getter();
  sub_100006F14(&v116);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  sub_100051BBC();
  v95[0] = v34;
  v47 = &v37[*(v34 + 36)];
  v48 = v117[0];
  *v47 = v116;
  *(v47 + 1) = v48;
  *(v47 + 2) = v117[1];
  static AccessibilityChildBehavior.ignore.getter();
  v49 = sub_10079D870();
  v50 = v96;
  View.accessibilityElement(children:)();
  (*(v99 + 1))(v25, v109);
  sub_1000180EC(v37, &qword_100CD7300, &qword_100A7FFB8);
  sub_10001F730();
  v95[2] = v51;
  v108 = v1;
  v52 = v110;
  sub_10079D9B4();
  v53 = ConditionDetailChartHeaderStringModel.accessibilityDescription.getter();
  v55 = v54;
  v56 = type metadata accessor for ConditionDetailChartHeaderStringModel();
  sub_1000037E8();
  v58 = *(v57 + 8);
  v59 = v57 + 8;
  v109 = v56;
  v58(v52, v56);
  v95[1] = v59;
  v60 = v58;
  v113 = v53;
  v114 = v55;
  v111 = v95[0];
  v112 = v49;
  swift_getOpaqueTypeConformance2();
  sub_10002D5A4();
  v61 = v97;
  View.accessibilityLabel<A>(_:)();

  (*(v98 + 8))(v50, v61);
  sub_10079D9B4();
  v62 = v100;
  ConditionDetailChartHeaderStringModel.title1.getter();
  v60(v52, v56);
  v99 = v60;
  sub_10079DCD8(&qword_100CA5738, &type metadata accessor for AttributedString, &protocol conformance descriptor for AttributedString);
  v63 = v101;
  v64 = dispatch thunk of CustomStringConvertible.description.getter();
  v66 = v65;
  (*(v102 + 8))(v62, v63);
  v113 = v64;
  v114 = v66;

  v67._countAndFlagsBits = 32;
  v67._object = 0xE100000000000000;
  String.append(_:)(v67);

  v68 = v113;
  sub_10079D9B4();
  v69 = v103;
  ConditionDetailChartHeaderStringModel.title2.getter();
  v60(v52, v109);
  v70 = sub_10027884C();
  v72 = v71;
  sub_1000180EC(v69, &qword_100CA5730, &unk_100A2FB90);
  v113 = v68;
  sub_1000231B8();
  v73._countAndFlagsBits = v70;
  v73._object = v72;
  String.append(_:)(v73);

  sub_1000231B8();
  v74._countAndFlagsBits = 32;
  v74._object = 0xE100000000000000;
  String.append(_:)(v74);

  v75 = v113;
  v76 = v104;
  sub_10079D9B4();
  v77 = ConditionDetailChartHeaderStringModel.title3.getter();
  v79 = v78;
  v80 = v109;
  v81 = v99;
  v99(v76, v109);
  if (v79)
  {
    v82 = v77;
  }

  else
  {
    v82 = 0;
  }

  if (!v79)
  {
    v79 = 0xE000000000000000;
  }

  v113 = v75;
  sub_1000231B8();
  v83._countAndFlagsBits = v82;
  v83._object = v79;
  String.append(_:)(v83);

  v84 = v113;
  v85 = v114;
  v86 = v110;
  sub_10079D9B4();
  v87 = ConditionDetailChartHeaderStringModel.subtitle.getter();
  v89 = v88;
  v81(v86, v80);
  v90 = v105;
  *v105 = v84;
  v90[1] = v85;
  v90[2] = v87;
  v90[3] = v89;
  v91 = v90;
  type metadata accessor for AutomationCellInfo(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v92 = sub_10022C350(&qword_100CD7338, &qword_100A7FFD8);
  v93 = v107 + *(v92 + 36);
  type metadata accessor for AutomationInfoProperty(0);
  sub_10079D9B4();
  sub_1001C9E84(v91);
  *v93 = 0;
  *(v93 + 8) = 0xE000000000000000;
  *(v93 + 16) = swift_getKeyPath();
  *(v93 + 24) = 0;
  return sub_10021057C();
}

uint64_t sub_100799788@<X0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  v52 = a2;
  v49 = sub_10022C350(&qword_100CD7370, &qword_100A80008);
  __chkstk_darwin(v49);
  v4 = &v48 - v3;
  v5 = sub_10022C350(&qword_100CD7378, &qword_100A80010);
  __chkstk_darwin(v5);
  v7 = &v48 - v6;
  v8 = type metadata accessor for AttributedString();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for ConditionDetailChartHeaderViewModel(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10022C350(&qword_100CD7380, &qword_100A80018);
  __chkstk_darwin(v12 - 8);
  v50 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v53 = &v48 - v15;
  sub_1007987BC(&v58);
  sub_1000161C0(&v58, v61);
  dispatch thunk of ConditionDetailChartHeaderStyleType.topPadding.getter();
  v17 = v16;
  sub_100006F14(&v58);
  if (sub_100798AFC())
  {
    sub_10079D9B4();
    ConditionDetailChartHeaderStringModel.title1.getter();
    v18 = type metadata accessor for ConditionDetailChartHeaderStringModel();
    (*(*(v18 - 8) + 8))(v11, v18);
    v19 = Text.init(_:)();
    v21 = v20;
    v51 = a1;
    v23 = v22;
    v48 = v5;
    sub_1007987BC(&v58);
    sub_1000161C0(&v58, v61);
    dispatch thunk of ConditionDetailChartHeaderStyleType.title1Font.getter();
    v24 = Text.font(_:)();
    v26 = v25;
    v28 = v27;
    sub_10010CD64(v19, v21, v23 & 1);

    sub_100006F14(&v58);
    sub_1007987BC(&v58);
    sub_1000161C0(&v58, v61);
    dispatch thunk of ConditionDetailChartHeaderStyleType.title1Color.getter();
    v29 = Text.foregroundColor(_:)();
    v31 = v30;
    LOBYTE(v21) = v32;
    v34 = v33;
    sub_10010CD64(v24, v26, v28 & 1);

    sub_100006F14(&v58);
    KeyPath = swift_getKeyPath();
    *v7 = v29;
    *(v7 + 1) = v31;
    v7[16] = v21 & 1;
    *(v7 + 3) = v34;
    *(v7 + 4) = KeyPath;
    *(v7 + 5) = 0x3FE0000000000000;
    swift_storeEnumTagMultiPayload();
    sub_10022C350(&qword_100CB91D8, &qword_100A4DA90);
    sub_10043721C();
    sub_100006F64(&qword_100CD7388, &qword_100CD7370, &qword_100A80008, &protocol conformance descriptor for TupleView<A>);
    _ConditionalContent<>.init(storage:)();
  }

  else
  {
    sub_100799E14(v4);
    sub_100095588();
    swift_storeEnumTagMultiPayload();
    sub_10022C350(&qword_100CB91D8, &qword_100A4DA90);
    sub_10043721C();
    sub_100006F64(&qword_100CD7388, &qword_100CD7370, &qword_100A80008, &protocol conformance descriptor for TupleView<A>);
    _ConditionalContent<>.init(storage:)();
    sub_1000180EC(v4, &qword_100CD7370, &qword_100A80008);
  }

  sub_1007987BC(v54);
  sub_1000161C0(v54, v55);
  dispatch thunk of ConditionDetailChartHeaderStyleType.bottomPadding.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v51 = v58;
  v36 = v59;
  v49 = v60;
  v37 = v61;
  v38 = v63;
  v48 = v62;
  sub_100006F14(v54);
  LOBYTE(v54[0]) = 1;
  v57 = v36;
  v56 = v37;
  v39 = v53;
  v40 = v50;
  sub_100095588();
  v41 = v54[0];
  v42 = v57;
  v43 = v56;
  v44 = v52;
  *v52 = v17;
  *(v44 + 8) = 0;
  v45 = sub_10022C350(&qword_100CD7390, &qword_100A80020);
  sub_100095588();
  v46 = v44 + *(v45 + 64);
  *v46 = 0;
  v46[8] = v41;
  *(v46 + 2) = v51;
  v46[24] = v42;
  *(v46 + 4) = v49;
  v46[40] = v43;
  *(v46 + 6) = v48;
  *(v46 + 7) = v38;
  sub_1000180EC(v39, &qword_100CD7380, &qword_100A80018);
  return sub_1000180EC(v40, &qword_100CD7380, &qword_100A80018);
}

uint64_t sub_100799E14@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ConditionDetailChartHeaderViewModel(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v29[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v7 = sub_10022C350(&qword_100CD7398, &qword_100A80058);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = &v29[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v11);
  v13 = &v29[-v12 - 8];
  *v13 = static VerticalAlignment.firstTextBaseline.getter();
  *(v13 + 1) = 0;
  v13[16] = 0;
  v14 = sub_10022C350(&qword_100CD73A0, &qword_100A80060);
  sub_10079A188(&v13[*(v14 + 44)]);
  v15 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v16 = &v13[*(v8 + 44)];
  *v16 = v15;
  *(v16 + 1) = v17;
  *(v16 + 2) = v18;
  *(v16 + 3) = v19;
  *(v16 + 4) = v20;
  v16[40] = 0;
  sub_10079D9B4();
  v21 = ConditionDetailChartHeaderStringModel.subtitle.getter();
  v23 = v22;
  v24 = type metadata accessor for ConditionDetailChartHeaderStringModel();
  (*(*(v24 - 8) + 8))(v6, v24);
  if (v23)
  {
    v25 = static Axis.Set.horizontal.getter();
    sub_10079CF10(v21, v23, v2, __src);
    memcpy(v30, __src, 0x80uLL);
    memcpy(v31, __src, 0x80uLL);
    sub_100095588();
    sub_1000180EC(v31, &qword_100CD73B8, &qword_100A80078);

    memcpy(&v29[7], v30, 0x80uLL);
    v32[0] = v25;
    memcpy(&v32[1], v29, 0x87uLL);
    LocationSearchEntityFromStringResolver.init()();
    memcpy(__src, v32, sizeof(__src));
  }

  else
  {
    sub_10079DA0C(__src);
  }

  sub_100095588();
  memcpy(v30, __src, sizeof(v30));
  sub_100095588();
  v26 = *(sub_10022C350(&qword_100CD73A8, &qword_100A80068) + 48);
  memcpy(v31, v30, sizeof(v31));
  memcpy((a1 + v26), v30, 0x88uLL);
  sub_100095588();
  sub_1000180EC(v13, &qword_100CD7398, &qword_100A80058);
  memcpy(v32, v30, sizeof(v32));
  sub_1000180EC(v32, &qword_100CD73B0, &qword_100A80070);
  return sub_1000180EC(v10, &qword_100CD7398, &qword_100A80058);
}

uint64_t sub_10079A188@<X0>(void *a2@<X8>)
{
  v64 = a2;
  v63 = sub_10022C350(&qword_100CD73C0, &qword_100A80080);
  __chkstk_darwin(v63);
  v55 = (&v53 - v2);
  v3 = sub_10022C350(&qword_100CBB908, &unk_100A511B0);
  __chkstk_darwin(v3 - 8);
  v53 = &v53 - v4;
  v54 = sub_10022C350(&qword_100CB5160, &qword_100A58870);
  __chkstk_darwin(v54);
  v57 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v56 = (&v53 - v7);
  v8 = sub_10022C350(&qword_100CD73C8, &qword_100A80088);
  __chkstk_darwin(v8 - 8);
  v62 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v53 - v11;
  v13 = type metadata accessor for ConditionDetailChartHeaderStringModel.TitleOrder();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ConditionDetailChartHeaderViewModel(0);
  __chkstk_darwin(v17 - 8);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v53 - v21;
  sub_10079D9B4();
  ConditionDetailChartHeaderStringModel.titleOrder.getter();
  v23 = type metadata accessor for ConditionDetailChartHeaderStringModel();
  v24 = *(v23 - 8);
  v59 = *(v24 + 8);
  v60 = v23;
  v58 = v24 + 8;
  v59(v22);
  v25 = (*(v14 + 88))(v16, v13);
  v61 = v12;
  if (v25 == enum case for ConditionDetailChartHeaderStringModel.TitleOrder.moveLastToFirst(_:))
  {
    sub_10079ACDC(v66);
    memcpy(v68, v66, 0xE0uLL);
    sub_10079DB14(v68);
    memcpy(v70, v68, 0xE1uLL);
    v26 = &qword_100A800A0;
    sub_100095588();
    sub_10022C350(&qword_100CD73F0, &qword_100A800A0);
    sub_10022C350(&qword_100CD7400, &qword_100A800A8);
    sub_100006F64(&qword_100CD73E8, &qword_100CD73F0, &qword_100A800A0, &protocol conformance descriptor for TupleView<A>);
    sub_100006F64(&qword_100CD73F8, &qword_100CD7400, &qword_100A800A8, &protocol conformance descriptor for TupleView<A>);
    _ConditionalContent<>.init(storage:)();
    memcpy(v70, v65, 0xE1uLL);
    sub_10079DB0C(v70);
    memcpy(v67, v70, 0x12AuLL);
    sub_10022C350(&qword_100CD73D0, &qword_100A80090);
    sub_10022C350(&qword_100CD73D8, &qword_100A80098);
    sub_10079DA20();
    sub_100006F64(&qword_100CD7408, &qword_100CD73D8, &qword_100A80098, &protocol conformance descriptor for TupleView<A>);
    _ConditionalContent<>.init(storage:)();
    v27 = &qword_100CD73F0;
LABEL_5:
    sub_1000180EC(v66, v27, v26);
    v28 = v69;
    goto LABEL_7;
  }

  if (v25 == enum case for ConditionDetailChartHeaderStringModel.TitleOrder.reversed(_:))
  {
    sub_10079B6A8(v66);
    memcpy(v68, v66, 0xE0uLL);
    sub_10079DB00(v68);
    memcpy(v70, v68, 0xE1uLL);
    v26 = &qword_100A800A8;
    sub_100095588();
    sub_10022C350(&qword_100CD73F0, &qword_100A800A0);
    sub_10022C350(&qword_100CD7400, &qword_100A800A8);
    sub_100006F64(&qword_100CD73E8, &qword_100CD73F0, &qword_100A800A0, &protocol conformance descriptor for TupleView<A>);
    sub_100006F64(&qword_100CD73F8, &qword_100CD7400, &qword_100A800A8, &protocol conformance descriptor for TupleView<A>);
    _ConditionalContent<>.init(storage:)();
    memcpy(v70, v65, 0xE1uLL);
    sub_10079DB0C(v70);
    memcpy(v67, v70, 0x12AuLL);
    sub_10022C350(&qword_100CD73D0, &qword_100A80090);
    sub_10022C350(&qword_100CD73D8, &qword_100A80098);
    sub_10079DA20();
    sub_100006F64(&qword_100CD7408, &qword_100CD73D8, &qword_100A80098, &protocol conformance descriptor for TupleView<A>);
    _ConditionalContent<>.init(storage:)();
    v27 = &qword_100CD7400;
    goto LABEL_5;
  }

  sub_10079C0AC(v68);
  memcpy(v69, v68, 0x129uLL);
  sub_10079DA14(v69);
  memcpy(v67, v69, 0x12AuLL);
  sub_10022C350(&qword_100CD73D0, &qword_100A80090);
  sub_10022C350(&qword_100CD73D8, &qword_100A80098);
  sub_10079DA20();
  sub_100006F64(&qword_100CD7408, &qword_100CD73D8, &qword_100A80098, &protocol conformance descriptor for TupleView<A>);
  _ConditionalContent<>.init(storage:)();
  (*(v14 + 8))(v16, v13);
  v28 = v70;
LABEL_7:
  memcpy(v71, v28, sizeof(v71));
  sub_10079D9B4();
  ConditionDetailChartHeaderStringModel.symbolName.getter();
  v30 = v29;
  (v59)(v19, v60);
  if (v30)
  {
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v59 = v67[2];
    v60 = v67[0];
    v58 = v67[4];
    v31 = v67[5];
    v69[0] = 1;
    LOBYTE(v68[0]) = v67[1];
    v65[0] = v67[3];
    Image.init(systemName:)();
    v32 = v53;
    static Image.TemplateRenderingMode.macSafeOriginal.getter();
    v33 = type metadata accessor for Image.TemplateRenderingMode();
    sub_10001B350(v32, 0, 1, v33);
    v34 = Image.renderingMode(_:)();

    sub_1000180EC(v32, &qword_100CBB908, &unk_100A511B0);
    v35 = sub_10022C350(&qword_100CB5170, &unk_100A488B0);
    v36 = v56;
    v37 = (v56 + *(v35 + 36));
    v38 = *(sub_10022C350(&qword_100CAF750, &qword_100A57BC0) + 28);
    v39 = enum case for Image.Scale.small(_:);
    v40 = type metadata accessor for Image.Scale();
    (*(*(v40 - 8) + 104))(v37 + v38, v39, v40);
    *v37 = swift_getKeyPath();
    *v36 = v34;
    sub_1007987BC(v70);
    sub_1000161C0(v70, v70[3]);
    v41 = dispatch thunk of ConditionDetailChartHeaderStyleType.title1Font.getter();
    KeyPath = swift_getKeyPath();
    v43 = (v36 + *(v54 + 36));
    *v43 = KeyPath;
    v43[1] = v41;
    sub_100006F14(v70);
    LOBYTE(v37) = v69[0];
    LOBYTE(v38) = v68[0];
    v44 = v65[0];
    v45 = v57;
    sub_100095588();
    v46 = v55;
    *v55 = 0;
    *(v46 + 8) = v37;
    v47 = v59;
    v46[2] = v60;
    *(v46 + 24) = v38;
    v46[4] = v47;
    *(v46 + 40) = v44;
    v46[6] = v58;
    v46[7] = v31;
    sub_10022C350(&qword_100CD7420, &unk_100A80120);
    sub_100095588();
    sub_1000180EC(v36, &qword_100CB5160, &qword_100A58870);
    sub_1000180EC(v45, &qword_100CB5160, &qword_100A58870);
    v48 = v61;
    sub_100051BBC();
    v49 = v48;
    v50 = 0;
  }

  else
  {
    v48 = v61;
    v49 = v61;
    v50 = 1;
  }

  sub_10001B350(v49, v50, 1, v63);
  v51 = v62;
  sub_100095588();
  memcpy(v69, v71, 0x12AuLL);
  memcpy(v64, v71, 0x12AuLL);
  sub_10022C350(&qword_100CD7410, &qword_100A800B0);
  sub_100095588();
  sub_100095588();
  sub_1000180EC(v48, &qword_100CD73C8, &qword_100A80088);
  sub_1000180EC(v51, &qword_100CD73C8, &qword_100A80088);
  memcpy(v70, v71, 0x12AuLL);
  return sub_1000180EC(v70, &qword_100CD7418, &qword_100A800B8);
}

uint64_t sub_10079ACDC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v113 = a1;
  v3 = sub_10022C350(&qword_100CA5730, &unk_100A2FB90);
  __chkstk_darwin(v3 - 8);
  v106 = &v96 - v4;
  v115 = type metadata accessor for AttributedString();
  v112 = *(v115 - 8);
  __chkstk_darwin(v115);
  v111 = &v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v96 - v7;
  v9 = type metadata accessor for ConditionDetailChartHeaderViewModel(0);
  __chkstk_darwin(v9 - 8);
  v101 = &v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v96 - v12;
  __chkstk_darwin(v14);
  v16 = &v96 - v15;
  sub_10079D9B4();
  v17 = ConditionDetailChartHeaderStringModel.title3.getter();
  v19 = v18;
  v20 = type metadata accessor for ConditionDetailChartHeaderStringModel();
  v21 = *(v20 - 8);
  v117 = *(v21 + 8);
  v118 = v20;
  *&v116 = v21 + 8;
  v117(v16);
  v119 = v2;
  v114 = v8;
  if (v19)
  {
    v141[0] = v17;
    v141[1] = v19;
    sub_10002D5A4();
    v22 = Text.init<A>(_:)();
    v105 = v13;
    v23 = v22;
    v25 = v24;
    v27 = v26;
    sub_1007987BC(v141);
    sub_1000161C0(v141, v141[3]);
    dispatch thunk of ConditionDetailChartHeaderStyleType.title3Font.getter();
    v28 = Text.font(_:)();
    v30 = v29;
    v32 = v31;
    sub_10010CD64(v23, v25, v27 & 1);

    sub_100006F14(v141);
    sub_1007987BC(v141);
    sub_1000161C0(v141, v141[3]);
    dispatch thunk of ConditionDetailChartHeaderStyleType.title3Color.getter();
    v33 = Text.foregroundColor(_:)();
    v35 = v34;
    v37 = v36;
    v39 = v38;
    sub_10010CD64(v28, v30, v32 & 1);

    sub_100006F14(v141);
    v109 = v35;
    v110 = v33;
    v40 = v33;
    v13 = v105;
    v107 = v37 & 1;
    sub_10010CD54(v40, v35, v37 & 1);
    v108 = v39;
  }

  else
  {
    v109 = 0;
    v110 = 0;
    v107 = 0;
    v108 = 0;
  }

  sub_1007987BC(v141);
  sub_1000161C0(v141, v141[3]);
  dispatch thunk of ConditionDetailChartHeaderStyleType.title3LeadingPadding.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v41 = v149;
  v102 = v148;
  v103 = v150;
  v42 = v151;
  v104 = v153;
  v105 = v152;
  sub_100006F14(v141);
  v147 = 1;
  v145 = v41;
  v143 = v42;
  v96 = type metadata accessor for ConditionDetailChartHeaderViewModel;
  sub_10079D9B4();
  ConditionDetailChartHeaderStringModel.title1.getter();
  (v117)(v13, v118);
  v43 = Text.init(_:)();
  v45 = v44;
  v47 = v46;
  sub_1007987BC(v141);
  sub_1000161C0(v141, v141[3]);
  dispatch thunk of ConditionDetailChartHeaderStyleType.title1Font.getter();
  v48 = Text.font(_:)();
  v50 = v49;
  v52 = v51;
  sub_10010CD64(v43, v45, v47 & 1);

  sub_100006F14(v141);
  sub_1007987BC(v141);
  sub_1000161C0(v141, v141[3]);
  dispatch thunk of ConditionDetailChartHeaderStyleType.title1Color.getter();
  v53 = Text.foregroundColor(_:)();
  v98 = v54;
  v99 = v53;
  v97 = v55;
  v100 = v56;
  sub_10010CD64(v48, v50, v52 & 1);

  sub_100006F14(v141);
  v57 = v101;
  sub_10079D9B4();
  v58 = v106;
  ConditionDetailChartHeaderStringModel.title2.getter();
  (v117)(v57, v118);
  v59 = v115;
  if (sub_100024D10(v58, 1, v115) == 1)
  {
    sub_1000180EC(v58, &qword_100CA5730, &unk_100A2FB90);
    v60 = 0;
    v61 = 0;
    v62 = 0;
    v63 = 0;
    v64 = 0;
    v65 = 0;
    v66 = 0;
    v67 = 0;
    v68 = 0;
    v69 = 0uLL;
  }

  else
  {
    v70 = v111;
    v71 = v112;
    (*(v112 + 32))(v111, v58, v59);
    sub_1007987BC(v141);
    sub_1000161C0(v141, v141[3]);
    dispatch thunk of ConditionDetailChartHeaderStyleType.title2LeadingPadding.getter();
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v72 = v155;
    v117 = v156;
    v118 = v154;
    v73 = v157;
    v116 = v158;
    sub_100006F14(v141);
    LOBYTE(v120[0]) = 1;
    LOBYTE(v125) = v72;
    LOBYTE(v140[0]) = v73;
    (*(v71 + 16))(v114, v70, v59);
    v74 = Text.init(_:)();
    v76 = v75;
    LOBYTE(v70) = v77;
    sub_1007987BC(v141);
    sub_1000161C0(v141, v141[3]);
    dispatch thunk of ConditionDetailChartHeaderStyleType.title2Font.getter();
    v78 = Text.font(_:)();
    v80 = v79;
    v82 = v81;
    v114 = v83;
    sub_10010CD64(v74, v76, v70 & 1);

    sub_100006F14(v141);
    sub_1007987BC(v141);
    sub_1000161C0(v141, v141[3]);
    dispatch thunk of ConditionDetailChartHeaderStyleType.title2Color.getter();
    v65 = Text.foregroundColor(_:)();
    v66 = v84;
    v86 = v85;
    v67 = v87;
    sub_10010CD64(v78, v80, v82 & 1);

    sub_100006F14(v141);
    v88 = LOBYTE(v120[0]);
    v89 = v125;
    v64 = LOBYTE(v140[0]);
    LOBYTE(v141[0]) = v86 & 1;
    LOBYTE(v136) = v86 & 1;
    sub_10010CD54(v65, v66, v86 & 1);
    v90 = *(v112 + 8);

    v90(v111, v115);
    v68 = v136;
    sub_10010CD64(v65, v66, v141[0]);

    v62 = v89;
    v60 = v88;
    v69 = v116;
    v63 = v117;
    v61 = v118;
  }

  v92 = v109;
  v91 = v110;
  v136 = v110;
  v137 = v109;
  v94 = v107;
  v93 = v108;
  v138 = v107;
  v139 = v108;
  v126 = v147;
  *v127 = *v146;
  *&v127[3] = *&v146[3];
  v125 = 0;
  v128 = v102;
  v129 = v145;
  *v130 = *v144;
  *&v130[3] = *&v144[3];
  v131 = v103;
  v132 = v143;
  *&v133[3] = *&v142[3];
  *v133 = *v142;
  v134 = v105;
  v135 = v104;
  v140[0] = &v136;
  v140[1] = &v125;
  v121 = v99;
  v122 = v98;
  v123 = v97 & 1;
  v124 = v100;
  *&v120[0] = 0;
  *(&v120[0] + 1) = v60;
  *&v120[1] = v61;
  *(&v120[1] + 1) = v62;
  *&v120[2] = v63;
  *(&v120[2] + 1) = v64;
  v120[3] = v69;
  *&v120[4] = v65;
  *(&v120[4] + 1) = v66;
  *&v120[5] = v68;
  *(&v120[5] + 1) = v67;
  v140[2] = &v121;
  v140[3] = v120;
  sub_1003E9AD0(v140, v113);
  sub_10014A53C(v91, v92, v94, v93);
  memcpy(v141, v120, 0x60uLL);
  sub_1000180EC(v141, &qword_100CB5EA0, &unk_100A49710);
  sub_10010CD64(v121, v122, v123);

  return sub_10014A53C(v136, v137, v138, v139);
}

uint64_t sub_10079B6A8@<X0>(uint64_t a1@<X8>)
{
  v106 = a1;
  v2 = sub_10022C350(&qword_100CA5730, &unk_100A2FB90);
  __chkstk_darwin(v2 - 8);
  v111 = &v87 - v3;
  v4 = type metadata accessor for AttributedString();
  v100 = *(v4 - 8);
  __chkstk_darwin(v4);
  v112 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v99 = &v87 - v7;
  v8 = type metadata accessor for ConditionDetailChartHeaderViewModel(0);
  __chkstk_darwin(v8 - 8);
  v102 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v94 = &v87 - v11;
  __chkstk_darwin(v12);
  v14 = &v87 - v13;
  v113 = v1;
  sub_10079D9B4();
  v15 = ConditionDetailChartHeaderStringModel.title3.getter();
  v17 = v16;
  v18 = type metadata accessor for ConditionDetailChartHeaderStringModel();
  v19 = *(v18 - 8);
  v20 = *(v19 + 8);
  v21 = v19 + 8;
  v20(v14, v18);
  v109 = v18;
  v110 = v4;
  v107 = v21;
  v108 = v20;
  if (v17)
  {
    v135[0] = v15;
    v135[1] = v17;
    sub_10002D5A4();
    v22 = Text.init<A>(_:)();
    v24 = v23;
    v26 = v25;
    sub_1007987BC(v135);
    sub_1000161C0(v135, v135[3]);
    dispatch thunk of ConditionDetailChartHeaderStyleType.title3Font.getter();
    v27 = Text.font(_:)();
    v29 = v28;
    v31 = v30;
    v105 = v32;
    sub_10010CD64(v22, v24, v26 & 1);

    sub_100006F14(v135);
    sub_1007987BC(v135);
    sub_1000161C0(v135, v135[3]);
    dispatch thunk of ConditionDetailChartHeaderStyleType.title3Color.getter();
    v33 = Text.foregroundColor(_:)();
    v35 = v34;
    LOBYTE(v24) = v36;
    v38 = v37;
    v39 = v31 & 1;
    v20 = v108;
    sub_10010CD64(v27, v29, v39);

    sub_100006F14(v135);
    v104 = v35;
    v105 = v33;
    v40 = v33;
    v18 = v109;
    v101 = v24 & 1;
    sub_10010CD54(v40, v35, v24 & 1);
    v103 = v38;
    v4 = v110;
  }

  else
  {
    v104 = 0;
    v105 = 0;
    v101 = 0;
    v103 = 0;
  }

  sub_1007987BC(v135);
  sub_1000161C0(v135, v135[3]);
  dispatch thunk of ConditionDetailChartHeaderStyleType.title3LeadingPadding.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v41 = v143;
  v95 = v142;
  v96 = v144;
  v42 = v145;
  v97 = v147;
  v98 = v146;
  sub_100006F14(v135);
  v141 = 1;
  v139 = v41;
  v137 = v42;
  v43 = v94;
  sub_10079D9B4();
  v44 = v111;
  ConditionDetailChartHeaderStringModel.title2.getter();
  v20(v43, v18);
  if (sub_100024D10(v44, 1, v4) == 1)
  {
    sub_1000180EC(v44, &qword_100CA5730, &unk_100A2FB90);
    v110 = 0;
    v111 = 0;
    v99 = 0;
    v100 = 0;
    v89 = 0;
    v90 = 0;
    v93 = 0;
    v94 = 0;
    v88 = 0;
    v91 = 0;
    v92 = 0;
  }

  else
  {
    v46 = v99;
    v45 = v100;
    (*(v100 + 32))(v99, v44, v4);
    (*(v45 + 16))(v112, v46, v4);
    v47 = Text.init(_:)();
    v49 = v48;
    v51 = v50;
    sub_1007987BC(v135);
    sub_1000161C0(v135, v135[3]);
    dispatch thunk of ConditionDetailChartHeaderStyleType.title2Font.getter();
    v52 = Text.font(_:)();
    v54 = v53;
    v56 = v55;
    sub_10010CD64(v47, v49, v51 & 1);

    v18 = v109;

    sub_100006F14(v135);
    sub_1007987BC(v135);
    sub_1000161C0(v135, v135[3]);
    dispatch thunk of ConditionDetailChartHeaderStyleType.title2Color.getter();
    v57 = Text.foregroundColor(_:)();
    v59 = v58;
    LODWORD(v90) = v60;
    v111 = v61;
    v62 = v52;
    v20 = v108;
    sub_10010CD64(v62, v54, v56 & 1);

    sub_100006F14(v135);
    sub_1007987BC(v135);
    sub_1000161C0(v135, v135[3]);
    dispatch thunk of ConditionDetailChartHeaderStyleType.title2LeadingPadding.getter();
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    LOBYTE(v45) = v149;
    v93 = v150;
    v94 = v148;
    v63 = v151;
    v91 = v153;
    v92 = v152;
    sub_100006F14(v135);
    LOBYTE(v135[0]) = 1;
    LOBYTE(v118[0]) = v45;
    LOBYTE(v119) = v63;
    LOBYTE(v134[0]) = v90 & 1;
    v90 = 1;
    v89 = v45;
    v88 = v63;
    LOBYTE(v130) = v134[0];
    sub_10010CD54(v57, v59, v134[0]);
    v64 = *(v100 + 8);

    v64(v99, v110);
    v99 = v130;
    v100 = v59;
    v110 = v57;
    sub_10010CD64(v57, v59, v134[0]);
  }

  v65 = v102;
  sub_10079D9B4();
  ConditionDetailChartHeaderStringModel.title1.getter();
  v20(v65, v18);
  v66 = Text.init(_:)();
  v68 = v67;
  v70 = v69;
  sub_1007987BC(v135);
  sub_1000161C0(v135, v135[3]);
  dispatch thunk of ConditionDetailChartHeaderStyleType.title1Font.getter();
  v71 = Text.font(_:)();
  v73 = v72;
  v75 = v74;
  sub_10010CD64(v66, v68, v70 & 1);

  sub_100006F14(v135);
  sub_1007987BC(v135);
  sub_1000161C0(v135, v135[3]);
  dispatch thunk of ConditionDetailChartHeaderStyleType.title1Color.getter();
  v76 = Text.foregroundColor(_:)();
  v78 = v77;
  v80 = v79;
  v82 = v81;
  sub_10010CD64(v71, v73, v75 & 1);

  sub_100006F14(v135);
  v84 = v104;
  v83 = v105;
  v130 = v105;
  v131 = v104;
  LOBYTE(v73) = v101;
  v85 = v103;
  v132 = v101;
  v133 = v103;
  v120 = v141;
  *v121 = *v140;
  v119 = 0;
  *&v121[3] = *&v140[3];
  v122 = v95;
  v123 = v139;
  *v124 = *v138;
  *&v124[3] = *&v138[3];
  v125 = v96;
  v126 = v137;
  *&v127[3] = *&v136[3];
  *v127 = *v136;
  v128 = v98;
  v129 = v97;
  v134[0] = &v130;
  v134[1] = &v119;
  v118[0] = v110;
  v118[1] = v100;
  v118[2] = v99;
  v118[3] = v111;
  v118[4] = 0;
  v118[5] = v90;
  v118[6] = v94;
  v118[7] = v89;
  v118[8] = v93;
  v118[9] = v88;
  v118[10] = v92;
  v118[11] = v91;
  v114 = v76;
  v115 = v78;
  v116 = v80 & 1;
  v117 = v82;
  v134[2] = v118;
  v134[3] = &v114;
  sub_1003E9BD8(v134, v106);
  sub_10014A53C(v83, v84, v73, v85);
  sub_10010CD64(v114, v115, v116);

  memcpy(v135, v118, sizeof(v135));
  sub_1000180EC(v135, &qword_100CB5EA8, &qword_100A80130);
  return sub_10014A53C(v130, v131, v132, v133);
}

uint64_t sub_10079C0AC@<X0>(uint64_t *a1@<X8>)
{
  v117 = a1;
  v1 = type metadata accessor for Text.Scale();
  v121 = *(v1 - 8);
  v122 = v1;
  __chkstk_darwin(v1);
  v120 = &v107 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = type metadata accessor for AttributedString.CharacterView();
  __chkstk_darwin(v119);
  v118 = &v107 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10022C350(&qword_100CA5730, &unk_100A2FB90);
  __chkstk_darwin(v4 - 8);
  v131 = &v107 - v5;
  v6 = type metadata accessor for AttributedString();
  v124 = *(v6 - 8);
  v125 = v6;
  __chkstk_darwin(v6);
  v123 = &v107 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v107 - v9;
  v11 = type metadata accessor for ConditionDetailChartHeaderViewModel(0);
  __chkstk_darwin(v11 - 8);
  v109 = &v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v130 = &v107 - v14;
  __chkstk_darwin(v15);
  v17 = &v107 - v16;
  v129 = type metadata accessor for ConditionDetailChartHeaderViewModel;
  sub_10079D9B4();
  ConditionDetailChartHeaderStringModel.title1.getter();
  v128 = type metadata accessor for ConditionDetailChartHeaderStringModel();
  v18 = *(v128 - 8);
  v19 = *(v18 + 8);
  v126 = v18 + 8;
  v127 = v19;
  v19(v17, v128);
  v108 = v10;
  v20 = Text.init(_:)();
  v22 = v21;
  v24 = v23;
  sub_1007987BC(v144);
  sub_1000161C0(v144, v144[3]);
  dispatch thunk of ConditionDetailChartHeaderStyleType.title1Font.getter();
  v25 = Text.font(_:)();
  v27 = v26;
  v29 = v28;
  sub_10010CD64(v20, v22, v24 & 1);

  sub_100006F14(v144);
  sub_1007987BC(v144);
  sub_1000161C0(v144, v144[3]);
  dispatch thunk of ConditionDetailChartHeaderStyleType.title1Color.getter();
  v30 = Text.foregroundColor(_:)();
  v114 = v31;
  v115 = v30;
  v112 = v32;
  v116 = v33;
  v34 = v27;
  v35 = v125;
  sub_10010CD64(v25, v34, v29 & 1);

  sub_100006F14(v144);
  v110 = sub_100798AFC();
  KeyPath = swift_getKeyPath();
  v36 = v130;
  sub_10079D9B4();
  v37 = v131;
  ConditionDetailChartHeaderStringModel.title2.getter();
  v127(v36, v128);
  if (sub_100024D10(v37, 1, v35) == 1)
  {
    sub_1000180EC(v37, &qword_100CA5730, &unk_100A2FB90);
    v121 = 0;
    v122 = 0;
    v111 = 0;
    v130 = 0;
    v131 = 0;
    v119 = 0;
    v120 = 0;
    v129 = 0;
    v124 = 0;
    v125 = 0;
    v123 = 0;
    LODWORD(v118) = 0;
    goto LABEL_11;
  }

  v39 = v123;
  v38 = v124;
  (*(v124 + 32))(v123, v37, v35);
  sub_1007987BC(v144);
  sub_1000161C0(v144, v144[3]);
  dispatch thunk of ConditionDetailChartHeaderStyleType.title2LeadingPadding.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v111 = v144[21];
  v40 = v145;
  v41 = v147;
  v130 = v148;
  v131 = v146;
  v129 = v149;
  sub_100006F14(v144);
  LOBYTE(v143[0]) = 1;
  LOBYTE(v142[0]) = v40;
  LOBYTE(v137[0]) = v41;
  AttributedString.characters.getter();
  sub_10079DCD8(&qword_100CAB940, &type metadata accessor for AttributedString.CharacterView, &protocol conformance descriptor for AttributedString.CharacterView);
  v107 = String.init<A>(_:)();
  v119 = v42;
  (*(v38 + 16))(v108, v39, v35);
  v43 = Text.init(_:)();
  v45 = v44;
  LOBYTE(v38) = v46;
  sub_1007987BC(v144);
  sub_1000161C0(v144, v144[3]);
  dispatch thunk of ConditionDetailChartHeaderStyleType.title2Font.getter();
  v47 = Text.font(_:)();
  v49 = v48;
  LOBYTE(v39) = v50;
  sub_10010CD64(v43, v45, v38 & 1);

  sub_100006F14(v144);
  sub_1007987BC(v144);
  sub_1000161C0(v144, v144[3]);
  dispatch thunk of ConditionDetailChartHeaderStyleType.title2Color.getter();
  v51 = Text.foregroundColor(_:)();
  v53 = v52;
  LODWORD(v118) = v54;
  sub_10010CD64(v47, v49, v39 & 1);

  sub_100006F14(v144);
  sub_1007987BC(v144);
  sub_1000161C0(v144, v144[3]);
  if (dispatch thunk of ConditionDetailChartHeaderStyleType.applySecondaryTextScaleToTitle2.getter())
  {
    v55 = String.isPercentSymbol.getter();
    v56 = v120;
    if (v55)
    {

      sub_100006F14(v144);
      v57 = v124;
LABEL_9:
      static Text.Scale.secondary.getter();
      goto LABEL_10;
    }

    v58 = String.containsOnlyPunctuationCharacters.getter();

    sub_100006F14(v144);
    v57 = v124;
    if ((v58 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {

    sub_100006F14(v144);
    v56 = v120;
    v57 = v124;
  }

  static Text.Scale.default.getter();
LABEL_10:
  v59 = v118;
  v60 = Text.textScale(_:isEnabled:)();
  v61 = v53;
  v63 = v62;
  v65 = v64;
  v66 = v51;
  v68 = v67;
  sub_10010CD64(v66, v61, v59 & 1);

  (*(v121 + 8))(v56, v122);
  v122 = LOBYTE(v143[0]);
  v121 = LOBYTE(v142[0]);
  v120 = LOBYTE(v137[0]);
  LOBYTE(v144[0]) = v65 & 1;
  LOBYTE(v141[0]) = v65 & 1;
  sub_10010CD54(v60, v63, v65 & 1);
  v69 = *(v57 + 8);

  v69(v123, v125);
  v119 = LOBYTE(v141[0]);
  v124 = v63;
  v125 = v60;
  sub_10010CD64(v60, v63, v144[0]);
  v123 = v68;

  LODWORD(v118) = 257;
LABEL_11:
  v70 = v109;
  sub_10079D9B4();
  v71 = ConditionDetailChartHeaderStringModel.title3.getter();
  v73 = v72;
  v127(v70, v128);
  if (v73)
  {
    sub_1007987BC(v144);
    sub_1000161C0(v144, v144[3]);
    dispatch thunk of ConditionDetailChartHeaderStyleType.title3LeadingPadding.getter();
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v74 = v151;
    v109 = v152;
    v75 = v153;
    v128 = v154;
    v126 = v150;
    v127 = v155;
    sub_100006F14(v144);
    v140 = 1;
    v136 = v74;
    v135 = v75;
    v144[0] = v71;
    v144[1] = v73;
    sub_10002D5A4();
    v76 = Text.init<A>(_:)();
    v78 = v77;
    v80 = v79;
    sub_1007987BC(v144);
    sub_1000161C0(v144, v144[3]);
    dispatch thunk of ConditionDetailChartHeaderStyleType.title3Font.getter();
    v81 = Text.font(_:)();
    v83 = v82;
    v85 = v84;
    v108 = v86;
    sub_10010CD64(v76, v78, v80 & 1);

    sub_100006F14(v144);
    sub_1007987BC(v144);
    sub_1000161C0(v144, v144[3]);
    dispatch thunk of ConditionDetailChartHeaderStyleType.title3Color.getter();
    v87 = Text.foregroundColor(_:)();
    v89 = v88;
    v91 = v90;
    v93 = v92;
    sub_10010CD64(v81, v83, v85 & 1);

    sub_100006F14(v144);
    v94 = swift_getKeyPath();
    v95 = swift_getKeyPath();
    LOBYTE(v144[0]) = v91 & 1;
    LOBYTE(v143[0]) = 0;
    v96 = swift_getKeyPath();
    LODWORD(v107) = v140;
    LODWORD(v108) = v136;
    LODWORD(v132) = v135;
    v141[0] = v87;
    v141[1] = v89;
    LOBYTE(v141[2]) = v91 & 1;
    *(&v141[2] + 1) = *v134;
    HIDWORD(v141[2]) = *&v134[3];
    v141[3] = v93;
    v141[4] = v94;
    v141[5] = 1;
    LOBYTE(v141[6]) = 0;
    HIDWORD(v141[6]) = *&v133[3];
    *(&v141[6] + 1) = *v133;
    v141[7] = v95;
    v141[8] = 0x3FE6666666666666;
    v141[9] = v96;
    LOBYTE(v141[10]) = 1;
    memcpy(v137, v141, 0x51uLL);
    v142[0] = v87;
    v142[1] = v89;
    LOBYTE(v142[2]) = v91 & 1;
    *(&v142[2] + 1) = *v134;
    HIDWORD(v142[2]) = *&v134[3];
    v142[3] = v93;
    v142[4] = v94;
    v142[5] = 1;
    LOBYTE(v142[6]) = 0;
    *(&v142[6] + 1) = *v133;
    HIDWORD(v142[6]) = *&v133[3];
    v142[7] = v95;
    v142[8] = 0x3FE6666666666666;
    v142[9] = v96;
    LOBYTE(v142[10]) = 1;
    sub_100095588();
    sub_1000180EC(v142, &qword_100CD7438, &qword_100A801A8);
    v143[0] = 0;
    LOBYTE(v143[1]) = v107;
    v143[2] = v126;
    LOBYTE(v143[3]) = v108;
    v143[4] = v109;
    LOBYTE(v143[5]) = v132;
    v143[6] = v128;
    v143[7] = v127;
    memcpy(&v143[8], v137, 0x51uLL);
    LocationSearchEntityFromStringResolver.init()();
    memcpy(v144, v143, 0x91uLL);
  }

  else
  {
    sub_10079DB1C(v144);
  }

  if (v110)
  {
    v97 = 0.5;
  }

  else
  {
    v97 = 1.0;
  }

  memcpy(v143, v144, 0x91uLL);
  v98 = v112 & 1;
  v140 = v112 & 1;
  v141[0] = 0;
  v141[1] = v122;
  v99 = v111;
  v141[2] = v111;
  v141[3] = v121;
  v141[4] = v131;
  v141[5] = v120;
  v141[6] = v130;
  v141[7] = v129;
  v141[8] = v125;
  v141[9] = v124;
  v141[10] = v119;
  v141[11] = v123;
  LOWORD(v141[12]) = v118;
  memcpy(v142, v144, 0x91uLL);
  memcpy(&v139[6], v144, 0x91uLL);
  v100 = v112 & 1;
  v102 = v116;
  v101 = v117;
  v104 = v114;
  v103 = v115;
  *v117 = v115;
  v101[1] = v104;
  *(v101 + 16) = v100;
  v105 = KeyPath;
  v101[3] = v102;
  v101[4] = v105;
  *(v101 + 5) = v97;
  memcpy(v101 + 6, v141, 0x62uLL);
  memcpy(v101 + 146, v139, 0x97uLL);
  sub_10010CD54(v103, v104, v98);

  sub_100095588();
  sub_100095588();
  sub_1000180EC(v143, &qword_100CD7430, &qword_100A80140);
  v137[0] = 0;
  v137[1] = v122;
  v137[2] = v99;
  v137[3] = v121;
  v137[4] = v131;
  v137[5] = v120;
  v137[6] = v130;
  v137[7] = v129;
  v137[8] = v125;
  v137[9] = v124;
  v137[10] = v119;
  v137[11] = v123;
  v138 = v118;
  sub_1000180EC(v137, &qword_100CD7428, &qword_100A80138);
  sub_10010CD64(v103, v104, v98);
}

uint64_t sub_10079CF10@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v85 = a3;
  v93 = a1;
  v91 = a4;
  v7 = type metadata accessor for ConditionDetailChartHeaderViewModel(0);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v86 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Font.TextStyle();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = a1;
  v118 = a2;
  v92 = a2;
  v98 = sub_10002D5A4();

  v14 = Text.init<A>(_:)();
  v16 = v15;
  v18 = v17;
  v19 = *(v11 + 104);
  v97 = v11 + 104;
  v96 = v19;
  v80 = enum case for Font.TextStyle.subheadline(_:);
  v100 = v10;
  v19(v13);
  v95 = *(a3 + *(v8 + 28));
  sub_100926274(v95, &v117);
  sub_1000161C0(&v117, v120);
  dispatch thunk of ConditionDetailChartHeaderStyleType.subtitleFontWeight.getter();
  static Font.system(_:weight:)();
  v20 = *(v11 + 8);
  v99 = v11 + 8;
  v94 = v20;
  v20(v13, v10);
  sub_100006F14(&v117);
  v21 = Text.font(_:)();
  v23 = v22;
  LOBYTE(v10) = v24;

  sub_10010CD64(v14, v16, v18 & 1);

  static Color.secondary.getter();
  v89 = Text.foregroundColor(_:)();
  v88 = v25;
  v87 = v26;
  v90 = v27;

  sub_10010CD64(v21, v23, v10 & 1);

  v117 = v93;
  v118 = v92;

  v28 = Text.init<A>(_:)();
  v30 = v29;
  v32 = v31;
  v33 = v100;
  v96(v13, enum case for Font.TextStyle.footnote(_:), v100);
  sub_100926274(v95, &v117);
  sub_1000161C0(&v117, v120);
  dispatch thunk of ConditionDetailChartHeaderStyleType.subtitleFontWeight.getter();
  static Font.system(_:weight:)();
  v94(v13, v33);
  sub_100006F14(&v117);
  v34 = Text.font(_:)();
  v36 = v35;
  LOBYTE(v33) = v37;

  sub_10010CD64(v28, v30, v32 & 1);

  static Color.secondary.getter();
  v83 = Text.foregroundColor(_:)();
  v82 = v38;
  v81 = v39;
  v84 = v40;

  sub_10010CD64(v34, v36, v33 & 1);

  v117 = v93;
  v118 = v92;

  v41 = Text.init<A>(_:)();
  v43 = v42;
  LOBYTE(v36) = v44;
  v45 = v100;
  v96(v13, enum case for Font.TextStyle.caption2(_:), v100);
  sub_100926274(v95, &v117);
  sub_1000161C0(&v117, v120);
  dispatch thunk of ConditionDetailChartHeaderStyleType.subtitleFontWeight.getter();
  static Font.system(_:weight:)();
  v94(v13, v45);
  sub_100006F14(&v117);
  v46 = Text.font(_:)();
  v48 = v47;
  LOBYTE(v33) = v49;

  sub_10010CD64(v41, v43, v36 & 1);

  static Color.secondary.getter();
  v50 = Text.foregroundColor(_:)();
  v52 = v51;
  LODWORD(v93) = v53;
  v55 = v54;

  sub_10010CD64(v46, v48, v33 & 1);

  v56 = v86;
  sub_10079D9B4();
  v57 = ConditionDetailChartHeaderStringModel.subtitleTruncationAlternative.getter();
  v59 = v58;
  v60 = type metadata accessor for ConditionDetailChartHeaderStringModel();
  (*(*(v60 - 8) + 8))(v56, v60);
  if (v59)
  {
    v117 = v57;
    v118 = v59;
    v61 = Text.init<A>(_:)();
    v92 = v50;
    v62 = v61;
    v64 = v63;
    v98 = v55;
    v66 = v65;
    v86 = v52;
    v67 = v100;
    v96(v13, v80, v100);
    sub_100926274(v95, &v117);
    sub_1000161C0(&v117, v120);
    dispatch thunk of ConditionDetailChartHeaderStyleType.subtitleFontWeight.getter();
    static Font.system(_:weight:)();
    v94(v13, v67);
    sub_100006F14(&v117);
    v68 = Text.font(_:)();
    v70 = v69;
    v72 = v71;

    sub_10010CD64(v62, v64, v66 & 1);

    static Color.secondary.getter();
    v73 = Text.foregroundColor(_:)();
    v59 = v74;
    LOBYTE(v62) = v75;
    v77 = v76;
    v55 = v98;

    sub_10010CD64(v68, v70, v72 & 1);
    v52 = v86;

    v78 = v62 & 1;
    v50 = v92;
    sub_10010CD54(v73, v59, v78);
  }

  else
  {
    v73 = 0;
    v78 = 0;
    v77 = 0;
  }

  v113 = v89;
  v114 = v88;
  v115 = v87 & 1;
  v116 = v90;
  v109 = v83;
  v110 = v82;
  v111 = v81 & 1;
  v112 = v84;
  v117 = &v113;
  v118 = &v109;
  v105 = v50;
  v106 = v52;
  v107 = v93 & 1;
  v108 = v55;
  v101 = v73;
  v102 = v59;
  v103 = v78;
  v104 = v77;
  v119 = &v105;
  v120 = &v101;
  sub_1003E9CE4(&v117, v91);
  sub_10014A53C(v73, v59, v78, v77);
  sub_10014A53C(v101, v102, v103, v104);
  sub_10010CD64(v105, v106, v107);

  sub_10010CD64(v109, v110, v111);

  sub_10010CD64(v113, v114, v115);
}

unint64_t sub_10079D870()
{
  result = qword_100CD7320;
  if (!qword_100CD7320)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD7300, &qword_100A7FFB8);
    v4[0] = sub_10079D8FC();
    v4[1] = &protocol witness table for _FrameLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD7320);
  }

  return result;
}

unint64_t sub_10079D8FC()
{
  result = qword_100CD7328;
  if (!qword_100CD7328)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD72F8, &qword_100A7FFB0);
    v4[0] = sub_100006F64(&qword_100CD7330, &qword_100CD72F0, &qword_100A7FFA8, &protocol conformance descriptor for VStack<A>);
    v4[1] = &protocol witness table for _FlexFrameLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD7328);
  }

  return result;
}

uint64_t sub_10079D9B4()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

unint64_t sub_10079DA20()
{
  result = qword_100CD73E0;
  if (!qword_100CD73E0)
  {
    v4[6] = v0;
    v4[7] = v1;
    v3 = sub_10022E824(&qword_100CD73D0, &qword_100A80090);
    v4[0] = sub_100006F64(&qword_100CD73E8, &qword_100CD73F0, &qword_100A800A0, &protocol conformance descriptor for TupleView<A>);
    v4[1] = sub_100006F64(&qword_100CD73F8, &qword_100CD7400, &qword_100A800A8, &protocol conformance descriptor for TupleView<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD73E0);
  }

  return result;
}

unint64_t sub_10079DB24()
{
  result = qword_100CD7440;
  if (!qword_100CD7440)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD7338, &qword_100A7FFD8);
    v4[0] = sub_10079DBE0();
    v4[1] = sub_10079DCD8(&qword_100CA3F68, type metadata accessor for AutomationInfoViewModifier, byte_100A56C3C);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD7440);
  }

  return result;
}

unint64_t sub_10079DBE0()
{
  result = qword_100CD7448;
  if (!qword_100CD7448)
  {
    v4[6] = v0;
    v4[7] = v1;
    v3 = sub_10022E824(&qword_100CD7310, &qword_100A7FFC8);
    v4[2] = sub_10022E824(&qword_100CD7300, &qword_100A7FFB8);
    v4[3] = sub_10079D870();
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = sub_10079DCD8(&qword_100CE1750, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD7448);
  }

  return result;
}

uint64_t sub_10079DCD8(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_10079DD20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ArticlePlacementLocation();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DetailCondition();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 88))(a1, v8);
  if (v10 == enum case for DetailCondition.conditions(_:))
  {
    v11 = sub_10001F748();
    v12(v11);
    (*(v9 + 8))(a1, v8);
LABEL_10:
    (*(v5 + 32))(a2, v7, v4);
    return sub_10001B350(a2, 0, 1, v4);
  }

  if (v10 == enum case for DetailCondition.humidity(_:) || v10 == enum case for DetailCondition.pressure(_:) || v10 == enum case for DetailCondition.precipitationTotal(_:) || v10 == enum case for DetailCondition.uvIndex(_:) || v10 == enum case for DetailCondition.visibility(_:) || v10 == enum case for DetailCondition.wind(_:))
  {
    v13 = sub_10001F748();
    v14(v13);
    goto LABEL_10;
  }

  (*(v9 + 8))(a1, v8);

  return sub_10001B350(a2, 1, 1, v4);
}

uint64_t sub_10079DFC8(uint64_t a1)
{
  v2 = type metadata accessor for MainAction(0);
  __chkstk_darwin(v2);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  sub_10079E0D4(v4);
  type metadata accessor for LocationsAction(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  sub_10004F034(v4, v8, v5, v6);
  sub_1000180EC(v8, &unk_100CD81B0, &unk_100A3B000);
  return sub_10004FAF0(v4, type metadata accessor for MainAction);
}

uint64_t sub_10079E0D4@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for WeatherDataConfiguration();
  v61 = *(v3 - 8);
  v62 = v3;
  __chkstk_darwin(v3);
  v60 = v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AppConfigurationState(0);
  __chkstk_darwin(v5 - 8);
  v59 = v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  __chkstk_darwin(v7 - 8);
  v58 = v54 - v8;
  v9 = sub_10022C350(&qword_100CACE08, &unk_100A3C1B0);
  __chkstk_darwin(v9 - 8);
  v57 = v54 - v10;
  v11 = type metadata accessor for Location.Identifier();
  v56 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10022C350(&qword_100CADBA0, &qword_100A3D250);
  __chkstk_darwin(v14 - 8);
  v16 = v54 - v15;
  v17 = sub_10022C350(&qword_100CA65D8, &unk_100A3D9D0);
  __chkstk_darwin(v17 - 8);
  v19 = v54 - v18;
  v20 = type metadata accessor for Location();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = v54 - v25;
  v63 = v1;
  sub_10079E904(v19);
  if (sub_100024D10(v19, 1, v20) == 1)
  {
    sub_1000180EC(v19, &qword_100CA65D8, &unk_100A3D9D0);
  }

  else
  {
    v27 = *(v21 + 32);
    v54[1] = v21 + 32;
    v55 = a1;
    v54[0] = v27;
    v27(v26, v19, v20);
    sub_1000161C0((v63 + 32), *(v63 + 56));
    v28 = dispatch thunk of LocationManagerType.currentCLLocation.getter();
    if (v28)
    {
      v29 = v28;
      Location.identifier.getter();
      static Location.currentLocationID.getter();
      Location.Identifier.with(id:name:coordinate:)();

      (*(v56 + 8))(v13, v11);
      sub_10001B350(v16, 0, 1, v11);
      v30 = type metadata accessor for TimeZone();
      v31 = v57;
      sub_10001B350(v57, 1, 1, v30);
      v32 = type metadata accessor for Date();
      v33 = v58;
      sub_10001B350(v58, 1, 1, v32);
      Location.with(identifier:timeZone:lastRefreshDate:searchTitle:searchSubtitle:preciseName:secondaryName:)();
      sub_1000180EC(v33, &unk_100CB2CF0, &unk_100A2D7F0);
      sub_1000180EC(v31, &qword_100CACE08, &unk_100A3C1B0);
      sub_1000180EC(v16, &qword_100CADBA0, &qword_100A3D250);
      (*(v21 + 8))(v26, v20);
      v34 = v54[0];
      (v54[0])(v26, v23, v20);
      v35 = Location.clLocation.getter();
      v36 = v29;
      v37 = [v29 distanceFromLocation:v35];
      v39 = v38;
      (*(v63 + 72))(&v64, v37);
      v40 = v59;
      sub_100066C58(v64 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_appConfiguration, v59, type metadata accessor for AppConfigurationState);

      v41 = v60;
      AppConfiguration.weatherData.getter();
      v42 = type metadata accessor for AppConfiguration();
      (*(*(v42 - 8) + 8))(v40, v42);
      WeatherDataConfiguration.currentLocationCertaintyRadius.getter();
      v44 = v43;
      (*(v61 + 8))(v41, v62);
      if (v44 >= v39)
      {
        v45 = v55;
        if (qword_100CA2750 != -1)
        {
          swift_once();
        }

        v50 = type metadata accessor for Logger();
        sub_10000703C(v50, qword_100D90C48);
        v47 = Logger.logObject.getter();
        v51 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v47, v51))
        {
          v52 = swift_slowAlloc();
          *v52 = 0;
          _os_log_impl(&_mh_execute_header, v47, v51, "Current location accurate.", v52, 2u);
        }
      }

      else
      {
        v45 = v55;
        if (qword_100CA2750 != -1)
        {
          swift_once();
        }

        v46 = type metadata accessor for Logger();
        sub_10000703C(v46, qword_100D90C48);
        v47 = Logger.logObject.getter();
        v48 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v47, v48))
        {
          v49 = swift_slowAlloc();
          *v49 = 134217984;
          *(v49 + 4) = v44;
          _os_log_impl(&_mh_execute_header, v47, v48, "Current location stale - greater than %fm away.", v49, 0xCu);
        }
      }

      v34(v45, v26, v20);
    }

    else
    {
      (*(v21 + 8))(v26, v20);
    }
  }

  type metadata accessor for CurrentLocation();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10079E904@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10022C350(&unk_100CE49F0, &unk_100A3AFA0);
  __chkstk_darwin(v3 - 8);
  v5 = &v20 - v4;
  v6 = type metadata accessor for LocationsState(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CurrentLocation();
  __chkstk_darwin(v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10022C350(&qword_100CA65D8, &unk_100A3D9D0);
  __chkstk_darwin(v12 - 8);
  v14 = &v20 - v13;
  sub_1000161C0((v1 + 32), *(v1 + 56));
  dispatch thunk of LocationManagerType.currentLocation.getter();
  v15 = type metadata accessor for Location();
  if (sub_100024D10(v14, 1, v15) != 1)
  {
    (*(*(v15 - 8) + 32))(a1, v14, v15);
    v17 = a1;
    v18 = 0;
    return sub_10001B350(v17, v18, 1, v15);
  }

  v16 = sub_1000180EC(v14, &qword_100CA65D8, &unk_100A3D9D0);
  (*(v1 + 72))(&v21, v16);
  sub_100066C58(v21 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations, v8, type metadata accessor for LocationsState);

  sub_1001A00C8(v8, v5);
  sub_10004FAF0(v8, type metadata accessor for LocationsState);
  if (sub_100024D10(v5, 1, v9) == 1)
  {
    sub_1000180EC(v5, &unk_100CE49F0, &unk_100A3AFA0);
    v17 = a1;
    v18 = 1;
    return sub_10001B350(v17, v18, 1, v15);
  }

  sub_100169AD8(v5, v11);
  CurrentLocation.location.getter();
  return sub_10004FAF0(v11, &type metadata accessor for CurrentLocation);
}

uint64_t sub_10079EC04(uint64_t a1)
{
  sub_1000161C0((v1 + 104), *(v1 + 128));
  dispatch thunk of LocationMetadataManagerType.resolveAddress(for:)();
  v2 = zalgo.getter();
  v3 = Promise.then<A>(on:closure:)();

  return v3;
}

uint64_t sub_10079EC98()
{

  sub_100006F14((v0 + 32));

  sub_100006F14((v0 + 104));

  return v0;
}

uint64_t sub_10079ECEC()
{
  sub_10079EC98();

  return swift_deallocClassInstance();
}

uint64_t sub_10079ED20()
{
  sub_1000161C0((v0 + 32), *(v0 + 56));
  sub_1000BF0FC();
  sub_100010A98();
  return dispatch thunk of LocationManagerType.removeObserver(_:)();
}

uint64_t sub_10079ED68()
{
  sub_10022C350(&qword_100CB5270, &qword_100A48A30);
  updated = type metadata accessor for LocationManagerUpdateType();
  v1 = *(updated - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100A2D320;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, enum case for LocationManagerUpdateType.currentLocation(_:), updated);
  v6(v5 + v2, enum case for LocationManagerUpdateType.currentCLLocation(_:), updated);
  return v4;
}

void sub_10079EE74(uint64_t a1, uint64_t a2)
{
  sub_1000161C0((v2 + 104), *(v2 + 128));
  v3 = dispatch thunk of LocationMetadataManagerType.requiresShowingAddresses.getter();
  if (v3)
  {
    __chkstk_darwin(v3);
    firstly<A>(closure:)();
    sub_10000C70C(0, &qword_100CB4670, OS_dispatch_queue_ptr);
    v4 = static OS_dispatch_queue.main.getter();
    Promise.then<A, B>(on:disposeOn:closure:)();
  }

  else
  {
    if (qword_100CA2750 != -1)
    {
      sub_10001F75C(&qword_100CA2750);
    }

    v5 = type metadata accessor for Logger();
    sub_10000703C(v5, qword_100D90C48);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Current location updated, post sync", v8, 2u);
    }

    asyncMain(block:)();
  }
}

uint64_t sub_10079F0A0(uint64_t a1, uint64_t a2)
{
  if (qword_100CA2750 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000703C(v3, qword_100D90C48);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Current location updated, confirm address", v6, 2u);
  }

  return sub_10079EC04(a2);
}

uint64_t sub_10079F19C(uint64_t a1, uint64_t a2)
{
  if (qword_100CA2750 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000703C(v2, qword_100D90C48);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Current location updated, post sync", v5, 2u);
  }

  asyncMain(block:)();
}

uint64_t sub_10079F2B4()
{

  asyncMain(block:)();
}

void sub_10079F300(uint64_t a1, uint64_t a2)
{
  if (qword_100CA2750 != -1)
  {
    sub_10001F75C(&qword_100CA2750);
  }

  v2 = type metadata accessor for Logger();
  sub_10000703C(v2, qword_100D90C48);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136446210;
    swift_errorRetain();
    sub_10022C350(&qword_100CD8220, &qword_100A4A330);
    v6 = String.init<A>(describing:)();
    v8 = sub_100078694(v6, v7, &v10);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, oslog, v3, "location update failed with error: %{public}s", v4, 0xCu);
    sub_100006F14(v5);
  }

  else
  {
  }
}

uint64_t sub_10079F520(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10079F5B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, uint64_t, uint64_t, uint64_t, void (*)(void, void))@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
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
    sub_1001B3B30(v339 + OBJC_IVAR____TtCV7Weather25NoAqiSevereNhpNewsContent8_Storage_severeAlert, v39);
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
    sub_1001B3B30(v339 + OBJC_IVAR____TtCV7Weather25NoAqiSevereNhpNewsContent8_Storage_nextHourPrecipitation, v321);
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
  sub_100566BC8(v357, v386);
  v167 = v321;
  if ((v386[32] & 1) == 0)
  {
    sub_1001B3B30(v339 + OBJC_IVAR____TtCV7Weather25NoAqiSevereNhpNewsContent8_Storage_newsArticle, v321);
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
  v182 = OBJC_IVAR____TtCV7Weather25NoAqiSevereNhpNewsContent8_Storage_map;
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

uint64_t sub_1007A0F44@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = [objc_opt_self() mainBundle];
  v12._object = 0x8000000100ADE200;
  v5._countAndFlagsBits = 0x612074726F706552;
  v5._object = 0xEF6575737349206ELL;
  v6._object = 0x8000000100ADE1E0;
  v12._countAndFlagsBits = 0xD000000000000038;
  v6._countAndFlagsBits = 0xD000000000000019;
  v7 = NSLocalizedString(_:tableName:bundle:value:comment:)(v6, 0, v4, v5, v12);

  *a2 = v7;
  *(a2 + 16) = 0xD00000000000001BLL;
  *(a2 + 24) = 0x8000000100ABB9A0;
  *(a2 + 32) = 0;
  type metadata accessor for LocationComponentHeaderViewModel(0);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  swift_storeEnumTagMultiPayload();
  v8 = type metadata accessor for LocationComponentContainerViewModel(0);
  *(a2 + v8[5]) = a1;
  type metadata accessor for LocationComponentViewModel(0);
  swift_storeEnumTagMultiPayload();
  v9 = v8[8];
  v10 = type metadata accessor for LocationComponentAction(0);
  swift_storeEnumTagMultiPayload();
  sub_10001B350(a2 + v9, 0, 1, v10);
  sub_10013D288();
  result = Dictionary.init(dictionaryLiteral:)();
  *(a2 + v8[6]) = 258;
  *(a2 + v8[7]) = result;
  return result;
}

uint64_t sub_1007A10EC@<X0>(uint64_t *a1@<X8>)
{
  sub_100035B30(v1 + 16, (a1 + 2));
  v3 = *(v1 + 64);

  sub_10022C350(&qword_100CA4B28, &unk_100A2EDF0);
  sub_1007A1190();
  result = ObservedObject.init(wrappedValue:)();
  *a1 = result;
  a1[1] = v5;
  a1[7] = v3;
  return result;
}

unint64_t sub_1007A1190()
{
  result = qword_100CA4B30;
  if (!qword_100CA4B30)
  {
    v3 = sub_10022E824(&qword_100CA4B28, &unk_100A2EDF0);
    result = swift_getWitnessTable(asc_100AA1480, v3, v0, v1);
    atomic_store(result, &qword_100CA4B30);
  }

  return result;
}

uint64_t sub_1007A1268@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>, double a4@<D0>)
{
  KeyPath = swift_getKeyPath();
  v8 = sub_10022C350(&qword_100CD76E8, &qword_100A80550);
  (*(*(v8 - 8) + 16))(a3, a1, v8);
  result = sub_10022C350(qword_100CD76F0, &qword_100A80558);
  v10 = a3 + *(result + 36);
  *v10 = KeyPath;
  *(v10 + 8) = a4;
  return result;
}

double sub_1007A131C()
{
  sub_1007A139C();
  EnvironmentValues.subscript.getter();
  return v1;
}

unint64_t sub_1007A139C()
{
  result = qword_100CD76E0;
  if (!qword_100CD76E0)
  {
    result = swift_getWitnessTable(byte_100A80690, &_s29InteractiveMapCornerRadiusKeyVN, v0, v1);
    atomic_store(result, &qword_100CD76E0);
  }

  return result;
}

uint64_t sub_1007A1400(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1007A143C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1007A147C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1007A14D4()
{
  result = qword_100CD7778;
  if (!qword_100CD7778)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(qword_100CD76F0, &qword_100A80558);
    v4[0] = sub_100006F64(&qword_100CD7780, &qword_100CD76E8, &qword_100A80550, &protocol conformance descriptor for _ViewModifier_Content<A>);
    v4[1] = sub_100006F64(&qword_100CA40A8, &qword_100CA40B0, &qword_100A5B520, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD7778);
  }

  return result;
}

uint64_t sub_1007A15FC@<X0>(uint64_t a1@<X0>, char a2@<W1>, void (*a3)(__n128)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v29 = a6;
  v30 = a5;
  v28 = a3;
  v9 = type metadata accessor for EnvironmentValues();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a4 - 8);
  __chkstk_darwin(v14);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v26 - v20;
  if (a2)
  {
    v19.n128_u64[0] = a1;
  }

  else
  {
    v27 = v18;

    static os_log_type_t.fault.getter();
    v22 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000E4DF8(a1, 0);
    (*(v10 + 8))(v12, v27);
    v19.n128_u64[0] = v31;
  }

  v28(v19);
  v23 = v30;
  sub_1000833D8(v16, a4, v30);
  v24 = *(v13 + 8);
  v24(v16, a4);
  sub_1000833D8(v21, a4, v23);
  return (v24)(v21, a4);
}

uint64_t sub_1007A187C()
{
  type metadata accessor for Access();
  sub_100005C98();
  __chkstk_darwin(v0);
  sub_1000037D8();
  v1 = sub_100006738();
  __chkstk_darwin(v1 - 8);
  sub_1000037D8();
  static Domain.weatherInternal.getter();
  v2 = sub_100003F94();
  v3(v2);
  v5 = 0;
  sub_10022C350(&qword_100CAFFD8, &unk_100A63CC0);
  swift_allocObject();
  result = sub_100005908(30, 0x8000000100ADE2E0, &v5);
  qword_100D90918 = result;
  return result;
}

uint64_t sub_1007A19B0()
{
  type metadata accessor for Access();
  sub_100005C98();
  __chkstk_darwin(v0);
  sub_1000037D8();
  v1 = sub_100006738();
  __chkstk_darwin(v1 - 8);
  sub_1000037D8();
  static Domain.weatherInternal.getter();
  v2 = sub_100003F94();
  v3(v2);
  v5 = 0;
  sub_10022C350(&qword_100CAFFD8, &unk_100A63CC0);
  swift_allocObject();
  result = sub_100005908(33, 0x8000000100ADE2B0, &v5);
  qword_100D90920 = result;
  return result;
}

uint64_t sub_1007A1AE4()
{
  type metadata accessor for Access();
  sub_100005C98();
  __chkstk_darwin(v0);
  sub_1000037D8();
  v1 = sub_100006738();
  __chkstk_darwin(v1 - 8);
  sub_1000037D8();
  static Domain.weatherInternal.getter();
  v2 = sub_100003F94();
  v3(v2);
  v5 = 0x4024000000000000;
  sub_10022C350(&qword_100CBCE20, &qword_100A53D38);
  swift_allocObject();
  result = sub_100005908(35, 0x8000000100ADE280, &v5);
  qword_100D90928 = result;
  return result;
}

uint64_t sub_1007A1C1C()
{
  v1 = OBJC_IVAR____TtC7Weather14FrameContainer___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

BOOL sub_1007A1CC0(CGFloat *a1, void (*a2)(CGRect *__return_ptr))
{
  a2(&v8);
  x = v8.origin.x;
  y = v8.origin.y;
  width = v8.size.width;
  height = v8.size.height;
  v9.origin.x = 0.0;
  v9.origin.y = 0.0;
  v9.size.width = 0.0;
  v9.size.height = 0.0;
  result = CGRectEqualToRect(v8, v9);
  if (!result)
  {
    *a1 = x;
    a1[1] = y;
    a1[2] = width;
    a1[3] = height;
  }

  return result;
}

void sub_1007A1D44(uint64_t *a3@<X8>)
{
  v4 = static Color.clear.getter();
  GeometryProxy.frame(in:)();
  *a3 = v4;
  a3[1] = v5;
  a3[2] = v6;
  a3[3] = v7;
  a3[4] = v8;
}

uint64_t sub_1007A1DA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v98 = a1;
  v99 = a2;
  v95 = a3;
  v93 = type metadata accessor for LocationComponentHeaderViewModel(0);
  sub_1000037E8();
  __chkstk_darwin(v3);
  sub_1000037D8();
  v6 = v5 - v4;
  type metadata accessor for MoonPhase.Hemisphere();
  sub_1000037C4();
  v85 = v8;
  v86 = v7;
  __chkstk_darwin(v7);
  sub_1000037D8();
  v84 = v10 - v9;
  v11 = sub_1000038CC();
  v12 = type metadata accessor for MoonComponentViewModel(v11);
  v13 = sub_100003810(v12);
  __chkstk_darwin(v13);
  sub_1000037D8();
  v94 = (v15 - v14);
  sub_1000038CC();
  type metadata accessor for TimeZone();
  sub_1000037C4();
  v88 = v17;
  v89 = v16;
  __chkstk_darwin(v16);
  sub_1000037D8();
  v20 = v19 - v18;
  v21 = sub_10022C350(&qword_100CAC7D0, &qword_100A3BB50);
  v22 = sub_100003810(v21);
  __chkstk_darwin(v22);
  v91 = &v83 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v90 = &v83 - v25;
  __chkstk_darwin(v26);
  v101 = &v83 - v27;
  sub_1000038CC();
  v87 = type metadata accessor for CurrentWeather();
  sub_1000037C4();
  v29 = v28;
  __chkstk_darwin(v30);
  sub_1000037D8();
  v33 = v32 - v31;
  v34 = sub_10022C350(&qword_100CA75C8, &unk_100A325F0);
  v35 = sub_100003810(v34);
  __chkstk_darwin(v35);
  v37 = &v83 - v36;
  v38 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  v39 = sub_100003810(v38);
  __chkstk_darwin(v39);
  v41 = &v83 - v40;
  v42 = type metadata accessor for Date();
  sub_1000037C4();
  v96 = v43;
  __chkstk_darwin(v44);
  sub_1000037D8();
  v100 = v46 - v45;
  v47 = sub_1000038CC();
  v48 = type metadata accessor for WeatherData(v47);
  sub_100035AD0(v99 + *(v48 + 36), v37, &qword_100CA75C8, &unk_100A325F0);
  v49 = type metadata accessor for WeatherDataOverrides(0);
  if (sub_100024D10(v37, 1, v49) == 1)
  {
    sub_1000180EC(v37, &qword_100CA75C8, &unk_100A325F0);
    sub_10001B350(v41, 1, 1, v42);
  }

  else
  {
    sub_100035AD0(v37, v41, &unk_100CB2CF0, &unk_100A2D7F0);
    sub_1007A3894(v37, type metadata accessor for WeatherDataOverrides);
    if (sub_100024D10(v41, 1, v42) != 1)
    {
      (*(v96 + 32))(v100, v41, v42);
      goto LABEL_7;
    }
  }

  WeatherDataModel.currentWeather.getter();
  CurrentWeather.date.getter();
  (*(v29 + 8))(v33, v87);
  if (sub_100024D10(v41, 1, v42) != 1)
  {
    sub_1000180EC(v41, &unk_100CB2CF0, &unk_100A2D7F0);
  }

LABEL_7:
  sub_1000161C0((v97 + 16), *(v97 + 40));
  Location.timeZone.getter();
  Location.coordinate.getter();
  v50 = v101;
  dispatch thunk of MoonDataProviderType.dayMoonData(for:timeZone:coordinate:)();
  (*(v88 + 8))(v20, v89);
  v51 = [objc_opt_self() mainBundle];
  v103._object = 0x8000000100ADE380;
  v103._countAndFlagsBits = 0xD000000000000036;
  v52._countAndFlagsBits = 1852796749;
  v52._object = 0xE400000000000000;
  v53._countAndFlagsBits = 0;
  v53._object = 0xE000000000000000;
  v54 = NSLocalizedString(_:tableName:bundle:value:comment:)(v52, 0, v51, v53, v103);
  countAndFlagsBits = v54._countAndFlagsBits;
  object = v54._object;

  v57 = v90;
  sub_100035AD0(v50, v90, &qword_100CAC7D0, &qword_100A3BB50);
  v58 = type metadata accessor for DayMoonData();
  v59 = sub_100024D10(v57, 1, v58);
  v92 = v42;
  if (v59 == 1)
  {
    sub_1000180EC(v57, &qword_100CAC7D0, &qword_100A3BB50);

    v60 = v54._countAndFlagsBits;
    v61 = v54._object;
  }

  else
  {
    DayMoonData.phase.getter();
    (*(*(v58 - 8) + 8))(v57, v58);
    v62 = MoonPhase.description.getter();
    v64 = v63;
    v102 = v54;
    v65._countAndFlagsBits = 8236;
    v65._object = 0xE200000000000000;
    String.append(_:)(v65);
    v66._countAndFlagsBits = v62;
    v66._object = v64;
    String.append(_:)(v66);
    v67 = v102;
    v61 = v67._object;
    v60 = v67._countAndFlagsBits;
    countAndFlagsBits = v62;
    object = v64;
  }

  v68 = v94;
  v69 = v101;
  sub_1007A2678(v98, v100, v101, v94);
  v70 = v91;
  sub_100035AD0(v69, v91, &qword_100CAC7D0, &qword_100A3BB50);
  if (sub_100024D10(v70, 1, v58) == 1)
  {
    sub_1000180EC(v70, &qword_100CAC7D0, &qword_100A3BB50);
    v71 = 0;
    v72 = 0;
  }

  else
  {
    DayMoonData.phase.getter();
    (*(*(v58 - 8) + 8))(v70, v58);
    Location.coordinate.getter();
    v73 = v84;
    MoonPhase.Hemisphere.init(latitude:)();
    v71 = MoonPhase.symbolName(for:)();
    v72 = v74;
    (*(v85 + 8))(v73, v86);
  }

  v75 = 0x8000000100ADE3C0;
  *v6 = countAndFlagsBits;
  *(v6 + 8) = object;
  v76 = 0xD000000000000013;
  if (v72)
  {
    v76 = v71;
    v75 = v72;
  }

  *(v6 + 16) = v76;
  *(v6 + 24) = v75;
  *(v6 + 32) = 0;
  *(v6 + 40) = v60;
  *(v6 + 48) = v61;
  swift_storeEnumTagMultiPayload();
  v77 = type metadata accessor for LocationComponentContainerViewModel(0);
  v78 = v95;
  sub_1007A37CC(v68, v95 + v77[5]);
  type metadata accessor for LocationComponentViewModel(0);
  swift_storeEnumTagMultiPayload();
  v79 = v77[8];
  v80 = type metadata accessor for LocationComponentAction(0);
  swift_storeEnumTagMultiPayload();
  sub_10001B350(v78 + v79, 0, 1, v80);
  sub_10013D288();
  v81 = Dictionary.init(dictionaryLiteral:)();
  sub_1007A3894(v68, type metadata accessor for MoonComponentViewModel);
  sub_1000180EC(v101, &qword_100CAC7D0, &qword_100A3BB50);
  (*(v96 + 8))(v100, v92);
  result = sub_1007A3830(v6, v78);
  *(v78 + v77[6]) = 256;
  *(v78 + v77[7]) = v81;
  return result;
}

uint64_t sub_1007A2678@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v5 = v4;
  v117 = a3;
  v126 = a2;
  v120 = a4;
  v8 = sub_10022C350(&qword_100CAC7D0, &qword_100A3BB50);
  __chkstk_darwin(v8 - 8);
  v119 = &v108 - v9;
  v10 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  __chkstk_darwin(v10 - 8);
  v12 = &v108 - v11;
  v127 = type metadata accessor for Date();
  v123 = *(v127 - 8);
  __chkstk_darwin(v127);
  v118 = &v108 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v111 = &v108 - v15;
  v16 = sub_10022C350(&qword_100CD78F0, &qword_100A80858);
  __chkstk_darwin(v16 - 8);
  v116 = &v108 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v108 - v19;
  v21 = type metadata accessor for TimeZone();
  v121 = *(v21 - 8);
  v122 = v21;
  __chkstk_darwin(v21);
  v23 = &v108 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v108 - v25;
  Location.timeZone.getter();
  v115 = a1;
  Location.coordinate.getter();
  sub_1000161C0(v5 + 2, v5[5]);
  v27 = dispatch thunk of MoonDataProviderType.moonEphemeris(for:coordinate:)();
  sub_1000161C0(v5 + 2, v5[5]);
  dispatch thunk of MoonDataProviderType.nextMoonEvent(after:coordinate:timeZone:)();
  v131 = v20;
  v125 = v26;
  v28 = sub_1007A3250(v20, v5, a2, v26);
  v128 = v29;
  v129 = v28;
  v130 = v30;
  v124 = v27;
  if (v27)
  {
    sub_1002B5AAC();

    v31 = static NSNumberFormatter.percent.getter();
    CelestialEphemeris.illuminatedFraction.getter();
    isa = Double._bridgeToObjectiveC()().super.super.isa;
    v33 = [v31 stringFromNumber:isa];

    if (v33)
    {
      v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v109 = v35;

      v114 = 0;
      goto LABEL_6;
    }
  }

  v34 = 0;
  v109 = 0;
  v114 = 1;
LABEL_6:
  v36 = v116;
  sub_1000161C0(v5 + 2, v5[5]);
  dispatch thunk of MoonDataProviderType.nextFullMoonDate(for:timeZone:coordinate:)();
  v37 = v127;
  v38 = sub_100024D10(v12, 1, v127);
  v110 = v34;
  if (v38 == 1)
  {
    sub_1000180EC(v12, &unk_100CB2CF0, &unk_100A2D7F0);
    v113 = 0;
    v112 = 0;
    v39 = -1;
  }

  else
  {
    v40 = v123;
    v41 = v111;
    (*(v123 + 32))(v111, v12, v37);
    sub_1000161C0(v5 + 7, v5[10]);
    Location.timeZone.getter();
    v113 = dispatch thunk of MoonStringBuilderType.nextFullMoonDurationString(fullMoonDate:now:timeZone:)();
    v112 = v42;
    v39 = v43;
    (*(v121 + 8))(v23, v122);
    (*(v40 + 8))(v41, v37);
  }

  v116 = sub_1007A34DC(v129, v128, v130, v131);
  v115 = v44;
  if (v114)
  {
    v45 = _swiftEmptyArrayStorage;
    v46 = v124;
  }

  else
  {
    v47 = [objc_opt_self() mainBundle];
    v135._object = 0x8000000100ADE420;
    v48._countAndFlagsBits = 0x616E696D756C6C49;
    v48._object = 0xEC0000006E6F6974;
    v49._countAndFlagsBits = 0;
    v49._object = 0xE000000000000000;
    v135._countAndFlagsBits = 0xD000000000000035;
    v50 = NSLocalizedString(_:tableName:bundle:value:comment:)(v48, 0, v47, v49, v135);

    sub_10069F550(0, 1, 1, _swiftEmptyArrayStorage);
    v45 = v51;
    v53 = v51[2];
    v52 = v51[3];
    if (v53 >= v52 >> 1)
    {
      sub_10069F550(v52 > 1, v53 + 1, 1, v51);
      v45 = v105;
    }

    v46 = v124;
    v45[2] = v53 + 1;
    v54 = &v45[5 * v53];
    v54[2] = v50;
    v55 = v109;
    v54[3]._countAndFlagsBits = v110;
    v54[3]._object = v55;
    LOBYTE(v54[4]._countAndFlagsBits) = 0;
  }

  sub_100035AD0(v131, v36, &qword_100CD78F0, &qword_100A80858);
  v56 = type metadata accessor for MoonRiseSetEvent();
  if (sub_100024D10(v36, 1, v56) == 1)
  {
    sub_1000180EC(v36, &qword_100CD78F0, &qword_100A80858);
  }

  else
  {
    v57 = sub_10095C874();
    v59 = v58;
    (*(*(v56 - 8) + 8))(v36, v56);
    if (v59)
    {
      if (v130 == 0xFF)
      {
      }

      else
      {
        sub_1002EE904(v129, v128, v130);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10069F550(0, v45[2] + 1, 1, v45);
          v45 = v106;
        }

        v61 = v45[2];
        v60 = v45[3];
        if (v61 >= v60 >> 1)
        {
          sub_10069F550(v60 > 1, v61 + 1, 1, v45);
          v45 = v107;
        }

        v45[2] = v61 + 1;
        v62 = &v45[5 * v61];
        v62[4] = v57;
        v62[5] = v59;
        v63 = v128;
        v62[6] = v129;
        v62[7] = v63;
        *(v62 + 64) = v130;
      }
    }
  }

  if (v39 != -1)
  {
    v64 = [objc_opt_self() mainBundle];
    v136._object = 0x8000000100ADE3E0;
    v65._countAndFlagsBits = 0x6C7546207478654ELL;
    v65._object = 0xEE006E6F6F4D206CLL;
    v136._countAndFlagsBits = 0xD000000000000036;
    v66._countAndFlagsBits = 0;
    v66._object = 0xE000000000000000;
    v67 = NSLocalizedString(_:tableName:bundle:value:comment:)(v65, 0, v64, v66, v136);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_10069F550(0, v45[2] + 1, 1, v45);
      v45 = v103;
    }

    v69 = v45[2];
    v68 = v45[3];
    if (v69 >= v68 >> 1)
    {
      sub_10069F550(v68 > 1, v69 + 1, 1, v45);
      v45 = v104;
    }

    v45[2] = v69 + 1;
    v70 = &v45[5 * v69];
    v70[2] = v67;
    v71 = v112;
    v70[3]._countAndFlagsBits = v113;
    v70[3]._object = v71;
    LOBYTE(v70[4]._countAndFlagsBits) = v39;
  }

  sub_1007A36B0(v46);
  v73 = v72;
  v74 = v45[2];
  v75 = _swiftEmptyArrayStorage;
  if (v74)
  {
    v134 = _swiftEmptyArrayStorage;

    sub_10000369C(0, v74, 0);
    v75 = v134;
    v76 = (v45 + 8);
    do
    {
      v77 = *(v76 - 3);
      v78 = *(v76 - 2);
      v79 = *(v76 - 1);
      v80 = *v76;
      v132 = *(v76 - 4);
      v133 = v77;
      swift_bridgeObjectRetain_n();
      sub_1002EE904(v78, v79, v80);
      v81._countAndFlagsBits = 8236;
      v81._object = 0xE200000000000000;
      String.append(_:)(v81);
      v82._countAndFlagsBits = TemporalString.string.getter();
      String.append(_:)(v82);

      sub_1002773E8(v78, v79, v80);
      v83 = v132;
      v84 = v133;
      v134 = v75;
      v86 = v75[2];
      v85 = v75[3];
      if (v86 >= v85 >> 1)
      {
        sub_10000369C((v85 > 1), v86 + 1, 1);
        v75 = v134;
      }

      v76 += 40;
      v75[2] = v86 + 1;
      v87 = &v75[2 * v86];
      v87[4] = v83;
      v87[5] = v84;
      --v74;
    }

    while (v74);
  }

  v132 = v75;
  sub_10022C350(&qword_100CCC930, &qword_100A41810);
  sub_1001141C8();
  v88 = BidirectionalCollection<>.joined(separator:)();
  v90 = v89;

  v91 = v123;
  v92 = v118;
  v93 = v127;
  (*(v123 + 16))(v118, v126, v127);
  v94 = v119;
  sub_100035AD0(v117, v119, &qword_100CAC7D0, &qword_100A3BB50);
  v95 = type metadata accessor for DayMoonData();
  if (sub_100024D10(v94, 1, v95) == 1)
  {

    sub_1000180EC(v131, &qword_100CD78F0, &qword_100A80858);
    (*(v121 + 8))(v125, v122);
    sub_1000180EC(v94, &qword_100CAC7D0, &qword_100A3BB50);
    v96 = 8;
  }

  else
  {
    v96 = DayMoonData.phase.getter();

    sub_1000180EC(v131, &qword_100CD78F0, &qword_100A80858);
    (*(v121 + 8))(v125, v122);
    (*(*(v95 - 8) + 8))(v94, v95);
  }

  v97 = v120;
  v98 = v115;
  *v120 = v116;
  v97[1] = v98;
  v99 = v128;
  v97[2] = v129;
  v97[3] = v99;
  *(v97 + 32) = v130;
  v97[5] = v45;
  v100 = type metadata accessor for MoonComponentViewModel(0);
  result = (*(v91 + 32))(v97 + v100[7], v92, v93);
  *(v97 + v100[8]) = v96;
  *(v97 + v100[9]) = v73;
  v102 = (v97 + v100[10]);
  *v102 = v88;
  v102[1] = v90;
  return result;
}

uint64_t sub_1007A3250(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v18[1] = a4;
  v6 = type metadata accessor for Date();
  v19 = *(v6 - 8);
  v20 = v6;
  __chkstk_darwin(v6);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10022C350(&qword_100CD78F0, &qword_100A80858);
  __chkstk_darwin(v9 - 8);
  v11 = v18 - v10;
  v12 = type metadata accessor for MoonRiseSetEvent();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100035AD0(a1, v11, &qword_100CD78F0, &qword_100A80858);
  if (sub_100024D10(v11, 1, v12) == 1)
  {
    sub_1000180EC(v11, &qword_100CD78F0, &qword_100A80858);
    return 0;
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    sub_1000161C0(a2 + 7, a2[10]);
    MoonRiseSetEvent.date.getter();
    v16 = dispatch thunk of MoonStringBuilderType.nextMoonRiseSetString(_:now:timeZone:)();
    (*(v19 + 8))(v8, v20);
    (*(v13 + 8))(v15, v12);
  }

  return v16;
}

uint64_t sub_1007A34DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = ~a3;
  v6 = sub_10022C350(&qword_100CD78F0, &qword_100A80858);
  __chkstk_darwin(v6 - 8);
  v8 = &v18 - v7;
  if (!v5)
  {
    return 0;
  }

  sub_100035AD0(a4, &v18 - v7, &qword_100CD78F0, &qword_100A80858);
  v9 = type metadata accessor for MoonRiseSetEvent();
  if (sub_100024D10(v8, 1, v9) == 1)
  {
    sub_1000180EC(v8, &qword_100CD78F0, &qword_100A80858);
    return 0;
  }

  sub_10095C3CC();
  v11 = v10;
  (*(*(v9 - 8) + 8))(v8, v9);
  if (!v11)
  {
    return 0;
  }

  sub_10022C350(&qword_100CA40C8, &unk_100A2E170);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100A2C3F0;
  v13 = TemporalString.string.getter();
  v15 = v14;
  *(v12 + 56) = &type metadata for String;
  *(v12 + 64) = sub_100035744();
  *(v12 + 32) = v13;
  *(v12 + 40) = v15;
  v16 = String.init(format:_:)();

  return v16;
}

void sub_1007A36B0(uint64_t a1)
{
  if (a1)
  {

    CelestialEphemeris.librationPositionAngle.getter();
    CelestialEphemeris.topocentricParallacticAngle.getter();
  }

  else
  {
    if (qword_100CA26A8 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_10000703C(v1, qword_100D90A60);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Failed to calcuate rotationAngle due to missing ephemeris", v4, 2u);
    }
  }
}

uint64_t sub_1007A37CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MoonComponentViewModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1007A3830(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationComponentHeaderViewModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1007A3894(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1007A38EC()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 24);
  }

  else
  {
    v2 = v0;
    [objc_opt_self() wu_systemUsesExuberatedLineHeight];
    v3 = [objc_opt_self() defaultMetrics];
    sub_100717DC4();
    v4 = static UIFont.monospacedDigitSystemFont(ofSize:weight:traits:)();
    v5 = sub_100028B10();
    v7 = [v5 v6];

    *(v2 + 24) = v7;
    v8 = v7;
    sub_1000231D4();
  }

  v9 = v1;
  return v2;
}

uint64_t sub_1007A39E0()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v0 + 40);
  }

  else
  {
    v2 = v0;
    v3 = [objc_opt_self() defaultMetrics];
    [objc_opt_self() wu_systemUsesExuberatedLineHeight];
    sub_100717DC4();
    v4 = static UIFont.monospacedDigitSystemFont(ofSize:weight:traits:)();
    v5 = sub_100028B10();
    v7 = [v5 v6];

    *(v2 + 40) = v7;
    v8 = v7;
    sub_1000231D4();
  }

  v9 = v1;
  return v2;
}

void sub_1007A3ACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  sub_100049C58();
  if (!*(v38 + 16))
  {
    v39 = [objc_opt_self() preferredFontDescriptorWithTextStyle:UIFontTextStyleTitle2];
    v40 = [v39 fontDescriptorWithSymbolicTraits:0x8000];
    if (v40)
    {
      v41 = v40;

      v39 = v41;
    }

    sub_10022C350(&qword_100CC4CA0, &qword_100A5EED0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100A2C3F0;
    *(inited + 32) = UIFontDescriptorTraitsAttribute;
    sub_10022C350(&qword_100CC4CA8, &unk_100A80900);
    v43 = swift_initStackObject();
    sub_100008E7C(v43, v44, v45, v46, v47, v48, v49, v50, v51, v52);
    sub_100004A7C(v53);
    sub_10001F77C();
    sub_1007A4724(v54, v55, byte_100A2D2B4);
    v56 = UIFontDescriptorTraitsAttribute;
    v57 = UIFontWeightTrait;
    sub_1000140AC(v57, v58, &type metadata for CGFloat);
    v59 = sub_10022C350(&qword_100CC4CB0, &qword_100A5EED8);
    sub_100019EF8(v59);
    sub_10001CCBC();
    sub_1007A4724(v60, v61, byte_100A2D270);
    sub_100006754();
    isa = sub_100010AB0().super.isa;

    v63 = [v39 fontDescriptorByAddingAttributes:isa];

    v64 = [objc_opt_self() fontWithDescriptor:v63 size:0.0];
    *(v38 + 16) = Font.init(_:)();
  }

  sub_100074F8C();
}

void sub_1007A3CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  sub_100049C58();
  if (!*v38)
  {
    v39 = [objc_opt_self() preferredFontDescriptorWithTextStyle:UIFontTextStyleFootnote];
    v40 = [v39 fontDescriptorWithSymbolicTraits:0x8000];
    if (v40)
    {
      v41 = v40;

      v39 = v41;
    }

    sub_10022C350(&qword_100CC4CA0, &qword_100A5EED0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100A2C3F0;
    *(inited + 32) = UIFontDescriptorTraitsAttribute;
    sub_10022C350(&qword_100CC4CA8, &unk_100A80900);
    v43 = swift_initStackObject();
    sub_100008E7C(v43, v44, v45, v46, v47, v48, v49, v50, v51, v52);
    sub_100004A7C(v53);
    sub_10001F77C();
    sub_1007A4724(v54, v55, byte_100A2D2B4);
    v56 = UIFontDescriptorTraitsAttribute;
    v57 = UIFontWeightTrait;
    sub_1000140AC(v57, v58, &type metadata for CGFloat);
    v59 = sub_10022C350(&qword_100CC4CB0, &qword_100A5EED8);
    sub_100019EF8(v59);
    sub_10001CCBC();
    sub_1007A4724(v60, v61, byte_100A2D270);
    sub_100006754();
    isa = sub_100010AB0().super.isa;

    v63 = [v39 fontDescriptorByAddingAttributes:isa];

    v64 = [objc_opt_self() fontWithDescriptor:v63 size:0.0];
    *v38 = Font.init(_:)();
  }

  sub_100074F8C();
}

void sub_1007A3F2C()
{
  if (*(v0 + 64))
  {
    v1 = sub_1007A38EC();
    [v1 capHeight];
    v3 = v2;

    *(v0 + 56) = round(v3);
    *(v0 + 64) = 0;
  }
}

double sub_1007A3F88()
{
  if ((*(v0 + 80) & 1) == 0)
  {
    return *(v0 + 72);
  }

  v1 = sub_1007A38EC();
  [v1 _scaledValueForValue:0.75];
  v3 = v2;

  *(v0 + 72) = v3;
  *(v0 + 80) = 0;
  return v3;
}

void sub_1007A3FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  sub_100049C58();
  if (!*(v38 + 8))
  {
    v39 = [objc_opt_self() preferredFontDescriptorWithTextStyle:UIFontTextStyleFootnote];
    v40 = [v39 fontDescriptorWithSymbolicTraits:0x8000];
    if (v40)
    {
      v41 = v40;

      v39 = v41;
    }

    sub_10022C350(&qword_100CC4CA0, &qword_100A5EED0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100A2C3F0;
    *(inited + 32) = UIFontDescriptorTraitsAttribute;
    sub_10022C350(&qword_100CC4CA8, &unk_100A80900);
    v43 = swift_initStackObject();
    sub_100008E7C(v43, v44, v45, v46, v47, v48, v49, v50, v51, v52);
    sub_100004A7C(v53);
    sub_10001F77C();
    sub_1007A4724(v54, v55, byte_100A2D2B4);
    v56 = UIFontDescriptorTraitsAttribute;
    v57 = UIFontWeightTrait;
    sub_1000140AC(v57, v58, &type metadata for CGFloat);
    v59 = sub_10022C350(&qword_100CC4CB0, &qword_100A5EED8);
    sub_100019EF8(v59);
    sub_10001CCBC();
    sub_1007A4724(v60, v61, byte_100A2D270);
    sub_100006754();
    isa = sub_100010AB0().super.isa;

    v63 = [v39 fontDescriptorByAddingAttributes:isa];

    v64 = [objc_opt_self() fontWithDescriptor:v63 size:0.0];
    *(v38 + 8) = Font.init(_:)();
  }

  sub_100074F8C();
}

double sub_1007A42F4()
{
  if ((*(v0 + 112) & 1) == 0)
  {
    return *(v0 + 104);
  }

  *(v0 + 104) = 0x3FD0000000000000;
  *(v0 + 112) = 0;
  return 0.25;
}

double sub_1007A4318()
{
  if ((*(v0 + 128) & 1) == 0)
  {
    return *(v0 + 120);
  }

  *(v0 + 120) = 0x4008000000000000;
  *(v0 + 128) = 0;
  return 3.0;
}

double sub_1007A433C()
{
  if ((*(v0 + 144) & 1) == 0)
  {
    return *(v0 + 136);
  }

  *(v0 + 136) = 0;
  *(v0 + 144) = 0;
  return 0.0;
}

double sub_1007A435C()
{
  if ((*(v0 + 160) & 1) == 0)
  {
    return *(v0 + 152);
  }

  *(v0 + 152) = 0x4000000000000000;
  *(v0 + 160) = 0;
  return 2.0;
}

double sub_1007A4380(uint64_t a1)
{
  if ((*(v1 + 96) & 1) == 0)
  {
    return *(v1 + 88);
  }

  v2 = static Solarium.isEnabled.getter();
  result = 4.0;
  if (v2)
  {
    result = 3.0;
  }

  *(v1 + 88) = result;
  *(v1 + 96) = 0;
  return result;
}

uint64_t sub_1007A43C0()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = *(v0 + 32);
  }

  else
  {
    v2 = v0;
    v3 = [objc_opt_self() defaultMetrics];
    sub_100717DC4();
    v4 = static UIFont.monospacedDigitSystemFont(ofSize:weight:traits:)();
    v5 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
    v6 = sub_100028B10();
    v8 = [v6 v7];

    *(v2 + 32) = v8;
    v9 = v8;
    sub_1000231D4();
  }

  v10 = v1;
  return v2;
}

uint64_t sub_1007A44C4()
{
  v1 = *(v0 + 48);
  if (v1)
  {
    v2 = *(v0 + 48);
  }

  else
  {
    v2 = v0;
    v3 = [objc_opt_self() defaultMetrics];
    sub_100717DC4();
    v4 = static UIFont.monospacedDigitSystemFont(ofSize:weight:traits:)();
    v5 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
    v6 = sub_100028B10();
    v8 = [v6 v7];

    *(v2 + 48) = v8;
    v9 = v8;
    sub_1000231D4();
  }

  v10 = v1;
  return v2;
}

double sub_1007A45C4()
{
  result = 0.0;
  xmmword_100D90950 = 0u;
  unk_100D90960 = 0u;
  xmmword_100D90930 = 0u;
  unk_100D90940 = 0u;
  byte_100D90970 = 1;
  qword_100D90978 = 0;
  byte_100D90980 = 1;
  qword_100D90988 = 0;
  byte_100D90990 = 1;
  qword_100D90998 = 0;
  byte_100D909A0 = 1;
  qword_100D909A8 = 0;
  byte_100D909B0 = 1;
  qword_100D909B8 = 0;
  byte_100D909C0 = 1;
  qword_100D909C8 = 0;
  byte_100D909D0 = 1;
  return result;
}

uint64_t sub_1007A4640(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 161))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1007A4694(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 160) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 161) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 161) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1007A4724(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_1007A4774(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 114))
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

uint64_t sub_1007A47B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 114) = 1;
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

    *(result + 114) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1007A482C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_1007A486C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1007A48D0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x8000000100ADE4A0 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000012 && 0x8000000100ADE4C0 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD00000000000001CLL && 0x8000000100ADE4E0 == a2;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD00000000000001ALL && 0x8000000100ADE500 == a2;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0xD000000000000020 && 0x8000000100ADE520 == a2)
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

unint64_t sub_1007A4AB8(char a1)
{
  result = 0x656C61636F6CLL;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0xD00000000000001CLL;
      break;
    case 4:
      result = 0xD00000000000001ALL;
      break;
    case 5:
      result = 0xD000000000000020;
      break;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

uint64_t sub_1007A4B80()
{
  sub_100037D3C();
  sub_10022C350(&qword_100CD79F8, &qword_100A80F68);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v1);
  sub_100014AE4();
  v2 = sub_1007A8720();
  sub_100019CD4(&type metadata for DiagnosticSummary.Environment.CodingKeys, v3, v2);
  sub_100003CDC();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v0)
  {
    sub_1000520FC();
    sub_100003CDC();
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_100005670();
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_100005670();
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_100003CDC();
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_100005670();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  v4 = sub_1000231E0();
  return v5(v4);
}

void sub_1007A4D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_10000E8AC();
  v26 = v25;
  v28 = v27;
  sub_10022C350(&qword_100CD7A30, &qword_100A80F80);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v29);
  sub_10001930C(v26, v26[3]);
  sub_1007A8720();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v24)
  {
    sub_100006F14(v26);
  }

  else
  {
    LOBYTE(v47[0]) = 0;
    v30 = KeyedDecodingContainer.decode(_:forKey:)();
    v32 = v31;
    sub_100010AD0(1);
    v41 = KeyedDecodingContainer.decode(_:forKey:)();
    v43 = v33;
    sub_100010AD0(2);
    v53 = KeyedDecodingContainer.decode(_:forKey:)();
    sub_100010AD0(3);
    v40 = KeyedDecodingContainer.decode(_:forKey:)();
    sub_100010AD0(4);
    v39 = KeyedDecodingContainer.decode(_:forKey:)();
    v42 = v34;
    v35 = KeyedDecodingContainer.decode(_:forKey:)();
    v53 &= 1u;
    v40 &= 1u;
    v36 = sub_100074FA8();
    v37(v36);
    *&v44 = v30;
    *(&v44 + 1) = v32;
    *&v45 = v41;
    *(&v45 + 1) = v43;
    v46[0] = v53;
    v46[1] = v40;
    *&v46[8] = v39;
    *&v46[16] = v42;
    v46[24] = v35 & 1;
    sub_1007A7C98(&v44, v47);
    sub_100006F14(v26);
    v47[0] = v30;
    v47[1] = v32;
    v47[2] = v41;
    v47[3] = v43;
    v48 = v53;
    v49 = v40;
    v50 = v39;
    v51 = v42;
    v52 = v35 & 1;
    sub_1007A7D24(v47);
    v38 = v45;
    *v28 = v44;
    v28[1] = v38;
    v28[2] = *v46;
    *(v28 + 41) = *&v46[9];
  }

  sub_10000C8F4();
}

unint64_t sub_1007A502C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100C44F78, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1007A5078(char a1)
{
  if (!a1)
  {
    return 0x6C62616C69617661;
  }

  if (a1 == 1)
  {
    return 0xD000000000000016;
  }

  return 0x616C696176616E75;
}

uint64_t sub_1007A50E0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x57746E6572727563 && a2 == 0xEE00726568746165;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x726F46796C696164 && a2 == 0xED00007473616365;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6F46796C72756F68 && a2 == 0xEE00747361636572;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x696C617551726961 && a2 == 0xEA00000000007974;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000015 && 0x8000000100ABACA0 == a2;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6557657265766573 && a2 == 0xED00007265687461;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x4372656874616577 && a2 == 0xEE007365676E6168)
            {

              return 6;
            }

            else
            {
              v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1007A5348(char a1)
{
  result = 0x57746E6572727563;
  switch(a1)
  {
    case 1:
      result = 0x726F46796C696164;
      break;
    case 2:
      result = 0x6F46796C72756F68;
      break;
    case 3:
      result = 0x696C617551726961;
      break;
    case 4:
      result = 0xD000000000000015;
      break;
    case 5:
      result = 0x6557657265766573;
      break;
    case 6:
      result = 0x4372656874616577;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1007A5458(uint64_t a1, uint64_t a2)
{
  sub_10022C350(&qword_100CD7A80, &unk_100A81220);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v4);
  sub_100014AE4();
  v5 = sub_1007A8CC8();
  sub_100019CD4(&type metadata for DiagnosticSummary.ProductAvailability.CodingKeys, v6, v5);
  v30 = a2;
  v29 = 0;
  sub_1007A8D70();
  sub_100008E8C(&v30, &v29, v7, &unk_100C6B578);
  if (!v2)
  {
    v28 = BYTE1(a2);
    v27 = 1;
    sub_100008E8C(&v28, &v27, v8, &unk_100C6B578);
    v26 = BYTE2(a2);
    v25 = 2;
    sub_100008E8C(&v26, &v25, v9, &unk_100C6B578);
    v24 = BYTE3(a2);
    v23 = 3;
    sub_100008E8C(&v24, &v23, v10, &unk_100C6B578);
    v22 = BYTE4(a2);
    v21 = 4;
    sub_100008E8C(&v22, &v21, v11, &unk_100C6B578);
    v20 = BYTE5(a2);
    v19 = 5;
    sub_100008E8C(&v20, &v19, v12, &unk_100C6B578);
    v18 = BYTE6(a2);
    v17 = 6;
    sub_100008E8C(&v18, &v17, v13, &unk_100C6B578);
  }

  v14 = sub_1000231E0();
  return v15(v14);
}

void sub_1007A566C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, char a15, __int16 a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_10000E8AC();
  a25 = v28;
  a26 = v29;
  v31 = v30;
  v32 = sub_10022C350(&qword_100CD7A68, &qword_100A81218);
  sub_1000037C4();
  v34 = v33;
  sub_100003828();
  __chkstk_darwin(v35);
  sub_100003CB4();
  sub_10001930C(v31, v31[3]);
  v36 = sub_1007A8CC8();
  sub_100031F4C(&type metadata for DiagnosticSummary.ProductAvailability.CodingKeys, v37, v36);
  if (v26)
  {
    sub_100006F14(v31);
  }

  else
  {
    LOBYTE(a16) = 0;
    sub_1007A8D1C();
    sub_10001CCD4(&unk_100C6B578, &a16);
    a14 = 1;
    sub_10001CCD4(&unk_100C6B578, &a14);
    a12 = 2;
    sub_10001CCD4(&unk_100C6B578, &a12);
    a10 = 3;
    sub_10001CCD4(&unk_100C6B578, &a10);
    v40 = 4;
    sub_10001CCD4(&unk_100C6B578, &v40);
    v39 = 5;
    sub_10001CCD4(&unk_100C6B578, &v39);
    v38 = 6;
    sub_10001CCD4(&unk_100C6B578, &v38);
    (*(v34 + 8))(v27, v32);
    sub_100006F14(v31);
  }

  sub_10000C8F4();
}

uint64_t sub_1007A58D0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574617473 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1702125924 && a2 == 0xE400000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 6645601 && a2 == 0xE300000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000014 && 0x8000000100ADE550 == a2)
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

unint64_t sub_1007A5A2C(char a1)
{
  result = 0x6574617473;
  switch(a1)
  {
    case 1:
      result = 1702125924;
      break;
    case 2:
      result = 6645601;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1007A5AA0()
{
  sub_10022C350(&qword_100CD7A20, &qword_100A80F78);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v1);
  sub_100014AE4();
  v2 = sub_1007A8774();
  sub_100019CD4(&type metadata for DiagnosticSummary.WeatherData.CodingKeys, v3, v2);
  sub_100018594();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v0)
  {
    sub_1000520FC();
    sub_100018594();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    sub_100018594();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    sub_1007A881C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  v4 = sub_1000231E0();
  return v5(v4);
}

void sub_1007A5C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10000E8AC();
  v12 = v11;
  v14 = v13;
  sub_10022C350(&qword_100CD7A08, &qword_100A80F70);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v15);
  sub_10001930C(v12, v12[3]);
  sub_1007A8774();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v10)
  {
    sub_100006F14(v12);
  }

  else
  {
    sub_10002CA8C();
    v16 = KeyedDecodingContainer.decode(_:forKey:)();
    v18 = v17;
    v26 = v16;
    sub_10002CA8C();
    *&v25 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(&v25 + 1) = v19;
    LOBYTE(v30[0]) = 2;
    sub_10002CA8C();
    v24 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    LOBYTE(a10) = v20 & 1;
    v34 = 3;
    sub_1007A87C8();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v21 = sub_100013C38();
    v22(v21);
    *&v27 = v26;
    *(&v27 + 1) = v18;
    v28 = v25;
    *&v29 = v24;
    *(&v29 + 1) = a10;
    sub_1007A7FE8(&v27, v30);
    sub_100006F14(v12);
    v30[0] = v26;
    v30[1] = v18;
    v31 = v25;
    v32 = v24;
    v33 = a10;
    sub_1007A7EB8(v30);
    v23 = v28;
    *v14 = v27;
    v14[1] = v23;
    v14[2] = v29;
  }

  sub_10000C8F4();
}

uint64_t sub_1007A5F00(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701667182 && a2 == 0xE400000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7461446C61636F6CLL && a2 == 0xE900000000000065;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x616E6964726F6F63 && a2 == 0xEA00000000006574;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x4472656874616577 && a2 == 0xEB00000000617461;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD00000000000001CLL && 0x8000000100ADE460 == a2;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0xD00000000000001ALL && 0x8000000100ADE480 == a2)
            {

              return 6;
            }

            else
            {
              v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1007A614C(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 1701667182;
      break;
    case 2:
      result = 0x7461446C61636F6CLL;
      break;
    case 3:
      result = 0x616E6964726F6F63;
      break;
    case 4:
      result = 0x4472656874616577;
      break;
    case 5:
      result = 0xD00000000000001CLL;
      break;
    case 6:
      result = 0xD00000000000001ALL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1007A6234()
{
  sub_100037D3C();
  sub_10022C350(&qword_100CD7958, &qword_100A80B08);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v2);
  sub_100014AE4();
  v3 = sub_1007A7E64();
  sub_100019CD4(&type metadata for DiagnosticSummary.Location.CodingKeys, v4, v3);
  LOBYTE(v13) = 0;
  sub_100003CDC();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v0)
  {
    sub_100003CDC();
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v13) = 2;
    sub_100003CDC();
    KeyedEncodingContainer.encode(_:forKey:)();
    v13 = v1[3];
    v12[0] = 3;
    type metadata accessor for CLLocationCoordinate2D(0);
    sub_1007A7FA4(&qword_100CD3040, &protocol conformance descriptor for CLLocationCoordinate2D);
    sub_100003CDC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v5 = v1[5];
    v16[0] = v1[4];
    v6 = v1[4];
    v7 = v1[5];
    v8 = v1[6];
    v16[1] = v5;
    v16[2] = v8;
    v13 = v6;
    v14 = v7;
    v15 = v1[6];
    v12[63] = 4;
    sub_1007A7FE8(v16, v12);
    sub_1007A8020();
    sub_100005670();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100011800();
    sub_100005670();
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_100005670();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  v9 = sub_1000231E0();
  return v10(v9);
}

void *sub_1007A6480@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v44 = sub_10022C350(&qword_100CD7940, &qword_100A80B00);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v5);
  sub_10001930C(a1, a1[3]);
  sub_1007A7E64();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100006F14(a1);
  }

  sub_1000699F0();
  v6 = KeyedDecodingContainer.decode(_:forKey:)();
  v8 = v7;
  sub_1000699F0();
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v21 = v10;
  LOBYTE(v23) = 2;
  sub_1000699F0();
  v19 = KeyedDecodingContainer.decode(_:forKey:)();
  v20 = v11;
  type metadata accessor for CLLocationCoordinate2D(0);
  v22[0] = 3;
  sub_1007A7FA4(&qword_100CD3020, &protocol conformance descriptor for CLLocationCoordinate2D);
  sub_100020B58();
  sub_1000699F0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v12 = v23;
  v13 = v24;
  v37 = 4;
  sub_1007A7EE8();
  sub_1000699F0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v41 = v38;
  v42 = v39;
  v43 = v40;
  LOBYTE(v23) = 5;
  sub_1000699F0();
  v18 = KeyedDecodingContainer.decode(_:forKey:)();
  v36 = 6;
  sub_1000699F0();
  v14 = KeyedDecodingContainer.decode(_:forKey:)();
  v18 &= 1u;
  v15 = sub_100028B1C();
  v16(v15);
  LODWORD(v44) = v14 & 1;
  *v22 = v6;
  *&v22[8] = v8;
  *&v22[16] = v9;
  *&v22[24] = v21;
  *&v22[32] = v19;
  *&v22[40] = v20;
  *&v22[48] = v12;
  *&v22[56] = v13;
  *&v22[64] = v41;
  *&v22[80] = v42;
  *&v22[96] = v43;
  v22[112] = v18;
  v22[113] = v14 & 1;
  sub_1007A7F3C(v22, &v23);
  sub_100006F14(a1);
  v23 = v6;
  v24 = v8;
  v25 = v9;
  v26 = v21;
  v27 = v19;
  v28 = v20;
  v29 = v12;
  v30 = v13;
  v31 = v41;
  v32 = v42;
  v33 = v43;
  v34 = v18;
  v35 = v44;
  sub_1007A7F74(&v23);
  return memcpy(a2, v22, 0x72uLL);
}

uint64_t sub_1007A68DC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1007A69A4(char a1)
{
  if (a1)
  {
    return 0x6E6F6973726576;
  }

  else
  {
    return 1701667182;
  }
}

void sub_1007A69D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_10000E8AC();
  v26 = v25;
  v27 = sub_10022C350(&qword_100CD7978, &qword_100A80B18);
  sub_1000037C4();
  v29 = v28;
  sub_100003828();
  __chkstk_darwin(v30);
  sub_100003CB4();
  sub_10001930C(v26, v26[3]);
  sub_1007A8074();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v23)
  {
    sub_1000520FC();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  (*(v29 + 8))(v24, v27);
  sub_10000C8F4();
}

void sub_1007A6B18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_10000E8AC();
  v25 = v24;
  sub_10022C350(&qword_100CD7968, &qword_100A80B10);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v26);
  sub_100003CB4();
  sub_10001930C(v25, v25[3]);
  v27 = sub_1007A8074();
  sub_100031F4C(&type metadata for DiagnosticSummary.BundleVersion.CodingKeys, v28, v27);
  if (!v23)
  {
    KeyedDecodingContainer.decode(_:forKey:)();
    KeyedDecodingContainer.decode(_:forKey:)();
    v29 = sub_1000317FC();
    v30(v29);
  }

  sub_100006F14(v25);
  sub_10000C8F4();
}

uint64_t sub_1007A6CA4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6D6E6F7269766E65 && a2 == 0xEB00000000746E65;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E6F697461636F6CLL && a2 == 0xE900000000000073;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x736E6F6973726576 && a2 == 0xE800000000000000)
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

uint64_t sub_1007A6E08(char a1)
{
  result = 1702125924;
  switch(a1)
  {
    case 1:
      result = 0x6D6E6F7269766E65;
      break;
    case 2:
      result = 0x6E6F697461636F6CLL;
      break;
    case 3:
      result = 0x736E6F6973726576;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1007A6E90()
{
  sub_10000E8AC();
  sub_100037D3C();
  sub_10022C350(&qword_100CD78F8, &qword_100A80AE8);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v2);
  sub_100014AE4();
  v3 = sub_1007A7C44();
  sub_100019CD4(&type metadata for DiagnosticSummary.CodingKeys, v4, v3);
  LOBYTE(v11) = 0;
  sub_100003CDC();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v0)
  {
    v5 = v1[2];
    v14[0] = v1[1];
    v14[1] = v5;
    v7 = v1[1];
    v6 = v1[2];
    *v15 = v1[3];
    *&v15[9] = *(v1 + 57);
    v11 = v7;
    v12 = v6;
    *v13 = v1[3];
    *&v13[9] = *(v1 + 57);
    v10[63] = 1;
    sub_1007A7C98(v14, v10);
    sub_1007A7CD0();
    sub_100005670();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100017DA0();
    sub_10022C350(&qword_100CD7910, &qword_100A80AF0);
    sub_1007A811C(&qword_100CD7918, sub_1007A7D54);
    sub_100003CDC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_10022C350(&qword_100CD7928, &qword_100A80AF8);
    sub_1007A7DA8(&qword_100CD7930, sub_1007A7E10);
    sub_100003CDC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  v8 = sub_1000231E0();
  v9(v8);
  sub_10000C8F4();
}

void sub_1007A710C()
{
  sub_10000E8AC();
  v2 = v1;
  v4 = v3;
  sub_10022C350(&qword_100CD7980, &qword_100A80B20);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v5);
  sub_10001930C(v2, v2[3]);
  sub_1007A7C44();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    sub_100006F14(v2);
  }

  else
  {
    v14 = v4;
    LOBYTE(v16[0]) = 0;
    v6 = KeyedDecodingContainer.decode(_:forKey:)();
    v8 = v7;
    v13 = v6;
    v24 = 1;
    sub_1007A80C8();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v28 = v25;
    v29 = v26;
    *v30 = *v27;
    *&v30[9] = *&v27[9];
    sub_10022C350(&qword_100CD7910, &qword_100A80AF0);
    LOBYTE(v15[0]) = 2;
    sub_1007A811C(&qword_100CD7990, sub_1007A8184);
    sub_100020B58();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v9 = v16[0];
    sub_10022C350(&qword_100CD7928, &qword_100A80AF8);
    v22 = 3;
    sub_1007A7DA8(&qword_100CD79A0, sub_1007A81D8);
    sub_100020B58();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v10 = sub_10004EA98();
    v11(v10);
    v12 = v23;
    *&v15[0] = v13;
    *(&v15[0] + 1) = v8;
    v15[1] = v28;
    v15[2] = v29;
    v15[3] = *v30;
    *(&v15[3] + 9) = *&v30[9];
    *&v15[5] = v9;
    *(&v15[5] + 1) = v23;
    sub_1007A822C(v15, v16);
    sub_100006F14(v2);
    v16[0] = v13;
    v16[1] = v8;
    v17 = v28;
    v18 = v29;
    *v19 = *v30;
    *&v19[9] = *&v30[9];
    v20 = v9;
    v21 = v12;
    sub_100439C18(v16);
    memcpy(v14, v15, 0x60uLL);
  }

  sub_10000C8F4();
}

uint64_t sub_1007A74CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1007A48D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1007A74F4(uint64_t a1)
{
  v2 = sub_1007A8720();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007A7530(uint64_t a1)
{
  v2 = sub_1007A8720();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1007A756C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>)
{
  sub_1007A4D18(a1, a2, a3, a4, a5, a6, a7, a8, v12, v14, *v15, *&v15[2], v15[4], v15[5], v16, v18, v19, v21, v22, v23, v24, v25, vars0, vars8);
  if (!v9)
  {
    *a9 = v13;
    a9[1] = v17;
    a9[2] = *v20;
    result = *&v20[9];
    *(a9 + 41) = *&v20[9];
  }

  return result;
}

unint64_t sub_1007A75F4@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1007A502C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1007A7624@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1007A5078(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1007A7708@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1007A50E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1007A7730(uint64_t a1)
{
  v2 = sub_1007A8CC8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007A776C(uint64_t a1)
{
  v2 = sub_1007A8CC8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1007A7838@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1007A58D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1007A7860(uint64_t a1)
{
  v2 = sub_1007A8774();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007A789C(uint64_t a1)
{
  v2 = sub_1007A8774();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1007A78D8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>)
{
  sub_1007A5C20(a1, a2, a3, a4, a5, a6, a7, a8, v12, v14);
  if (!v9)
  {
    *a9 = v13;
    a9[1] = v15;
    result = *&v16;
    a9[2] = v16;
  }

  return result;
}

uint64_t sub_1007A793C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1007A5F00(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1007A7964(uint64_t a1)
{
  v2 = sub_1007A7E64();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007A79A0(uint64_t a1)
{
  v2 = sub_1007A7E64();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_1007A79DC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1007A6480(a1, __src);
  if (!v2)
  {
    return memcpy(a2, __src, 0x72uLL);
  }

  return result;
}

uint64_t sub_1007A7A48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1007A68DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1007A7A70(uint64_t a1)
{
  v2 = sub_1007A8074();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007A7AAC(uint64_t a1)
{
  v2 = sub_1007A8074();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1007A7B40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1007A6CA4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1007A7B68(uint64_t a1)
{
  v2 = sub_1007A7C44();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007A7BA4(uint64_t a1)
{
  v2 = sub_1007A7C44();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1007A7BE0(void *a1@<X8>)
{
  sub_1007A710C();
  if (!v1)
  {
    memcpy(a1, v3, 0x60uLL);
  }
}

unint64_t sub_1007A7C44()
{
  result = qword_100CD7900;
  if (!qword_100CD7900)
  {
    result = swift_getWitnessTable("ݩ\x1B", &type metadata for DiagnosticSummary.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CD7900);
  }

  return result;
}

unint64_t sub_1007A7CD0()
{
  result = qword_100CD7908;
  if (!qword_100CD7908)
  {
    result = swift_getWitnessTable(byte_100A80EEC, &unk_100C6B288, v0, v1);
    atomic_store(result, &qword_100CD7908);
  }

  return result;
}

unint64_t sub_1007A7D54()
{
  result = qword_100CD7920;
  if (!qword_100CD7920)
  {
    result = swift_getWitnessTable(byte_100A80A6C, &unk_100C6AEB0, v0, v1);
    atomic_store(result, &qword_100CD7920);
  }

  return result;
}

uint64_t sub_1007A7DA8(unint64_t *a1, uint64_t (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10022E824(&qword_100CD7928, &qword_100A80AF8);
    v5 = a2();
    result = sub_1000300AC(v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1007A7E10()
{
  result = qword_100CD7938;
  if (!qword_100CD7938)
  {
    result = swift_getWitnessTable(aU_67, &unk_100C6AF48, v0, v1);
    atomic_store(result, &qword_100CD7938);
  }

  return result;
}

unint64_t sub_1007A7E64()
{
  result = qword_100CD7948;
  if (!qword_100CD7948)
  {
    result = swift_getWitnessTable(aU_66, &type metadata for DiagnosticSummary.Location.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CD7948);
  }

  return result;
}

unint64_t sub_1007A7EE8()
{
  result = qword_100CD7950;
  if (!qword_100CD7950)
  {
    result = swift_getWitnessTable(asc_100A80E74, &unk_100C6B200, v0, v1);
    atomic_store(result, &qword_100CD7950);
  }

  return result;
}

uint64_t sub_1007A7FA4(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CLLocationCoordinate2D(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1007A8020()
{
  result = qword_100CD7960;
  if (!qword_100CD7960)
  {
    result = swift_getWitnessTable(asc_100A80E4C, &unk_100C6B200, v0, v1);
    atomic_store(result, &qword_100CD7960);
  }

  return result;
}

unint64_t sub_1007A8074()
{
  result = qword_100CD7970;
  if (!qword_100CD7970)
  {
    result = swift_getWitnessTable(byte_100A80DFC, &type metadata for DiagnosticSummary.BundleVersion.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CD7970);
  }

  return result;
}

unint64_t sub_1007A80C8()
{
  result = qword_100CD7988;
  if (!qword_100CD7988)
  {
    result = swift_getWitnessTable(byte_100A80DD4, &unk_100C6B288, v0, v1);
    atomic_store(result, &qword_100CD7988);
  }

  return result;
}

uint64_t sub_1007A811C(unint64_t *a1, uint64_t (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10022E824(&qword_100CD7910, &qword_100A80AF0);
    v5 = a2();
    result = sub_1000300AC(v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1007A8184()
{
  result = qword_100CD7998;
  if (!qword_100CD7998)
  {
    result = swift_getWitnessTable(byte_100A80A94, &unk_100C6AEB0, v0, v1);
    atomic_store(result, &qword_100CD7998);
  }

  return result;
}

unint64_t sub_1007A81D8()
{
  result = qword_100CD79A8;
  if (!qword_100CD79A8)
  {
    result = swift_getWitnessTable(asc_100A80A44, &unk_100C6AF48, v0, v1);
    atomic_store(result, &qword_100CD79A8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DiagnosticSummary.BundleVersion.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1007A836C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_1007A83AC(uint64_t result, int a2, int a3)
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

unint64_t sub_1007A840C()
{
  result = qword_100CD79B0;
  if (!qword_100CD79B0)
  {
    result = swift_getWitnessTable("Ũ\x1B", &type metadata for DiagnosticSummary.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CD79B0);
  }

  return result;
}

unint64_t sub_1007A8464()
{
  result = qword_100CD79B8;
  if (!qword_100CD79B8)
  {
    result = swift_getWitnessTable(asc_100A80CF4, &type metadata for DiagnosticSummary.Location.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CD79B8);
  }

  return result;
}

unint64_t sub_1007A84BC()
{
  result = qword_100CD79C0;
  if (!qword_100CD79C0)
  {
    result = swift_getWitnessTable(aU_69, &type metadata for DiagnosticSummary.BundleVersion.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CD79C0);
  }

  return result;
}

unint64_t sub_1007A8514()
{
  result = qword_100CD79C8;
  if (!qword_100CD79C8)
  {
    result = swift_getWitnessTable("ū\x1B", &type metadata for DiagnosticSummary.BundleVersion.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CD79C8);
  }

  return result;
}

unint64_t sub_1007A856C()
{
  result = qword_100CD79D0;
  if (!qword_100CD79D0)
  {
    result = swift_getWitnessTable(byte_100A80D44, &type metadata for DiagnosticSummary.BundleVersion.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CD79D0);
  }

  return result;
}

unint64_t sub_1007A85C4()
{
  result = qword_100CD79D8;
  if (!qword_100CD79D8)
  {
    result = swift_getWitnessTable(asc_100A80C64, &type metadata for DiagnosticSummary.Location.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CD79D8);
  }

  return result;
}

unint64_t sub_1007A861C()
{
  result = qword_100CD79E0;
  if (!qword_100CD79E0)
  {
    result = swift_getWitnessTable(aE_72, &type metadata for DiagnosticSummary.Location.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CD79E0);
  }

  return result;
}

unint64_t sub_1007A8674()
{
  result = qword_100CD79E8;
  if (!qword_100CD79E8)
  {
    result = swift_getWitnessTable(a5_37, &type metadata for DiagnosticSummary.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CD79E8);
  }

  return result;
}

unint64_t sub_1007A86CC()
{
  result = qword_100CD79F0;
  if (!qword_100CD79F0)
  {
    result = swift_getWitnessTable(byte_100A80BD4, &type metadata for DiagnosticSummary.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CD79F0);
  }

  return result;
}

unint64_t sub_1007A8720()
{
  result = qword_100CD7A00;
  if (!qword_100CD7A00)
  {
    result = swift_getWitnessTable(asc_100A811C4, &type metadata for DiagnosticSummary.Environment.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CD7A00);
  }

  return result;
}

unint64_t sub_1007A8774()
{
  result = qword_100CD7A10;
  if (!qword_100CD7A10)
  {
    result = swift_getWitnessTable(asc_100A81174, &type metadata for DiagnosticSummary.WeatherData.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CD7A10);
  }

  return result;
}

unint64_t sub_1007A87C8()
{
  result = qword_100CD7A18;
  if (!qword_100CD7A18)
  {
    result = swift_getWitnessTable(a5_36, &unk_100C6B438, v0, v1);
    atomic_store(result, &qword_100CD7A18);
  }

  return result;
}

unint64_t sub_1007A881C()
{
  result = qword_100CD7A28;
  if (!qword_100CD7A28)
  {
    result = swift_getWitnessTable(aM_79, &unk_100C6B438, v0, v1);
    atomic_store(result, &qword_100CD7A28);
  }

  return result;
}

_BYTE *sub_1007A8870(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}