uint64_t sub_1001A250C(__int128 *a1)
{
  v2 = v1;
  v39 = *(a1 + 3);
  v4 = sub_100164A3C(&unk_1002D7BD0, &unk_10024A800);
  v5 = __chkstk_darwin(v4 - 8);
  v38 = &v34[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v8 = &v34[-v7];
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v34[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100003E50(&off_1002B6A68, v12);
  sub_10001A718(a1, &v41, &qword_1002D7C30, &qword_10024AE28);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  sub_1000157F0(a1, &qword_1002D7C30, &qword_10024AE28);
  if (os_log_type_enabled(v13, v14))
  {
    v35 = v14;
    v36 = v9;
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v40 = v16;
    *v15 = 136315138;
    v17 = *(a1 + 3);
    v37 = v8;
    if (v17)
    {
      v41 = *a1;
      v42 = *(a1 + 2);
      v43 = v17;
      v44 = a1[2];
      v45 = *(a1 + 48);
      v18 = sub_1001BD648();
      v20 = v19;
    }

    else
    {
      v20 = 0xE300000000000000;
      v18 = 7104878;
    }

    v26 = sub_10017A8A8(v18, v20, &v40);

    *(v15 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v13, v35, "Cell update: %s", v15, 0xCu);
    sub_100164B98(v16);

    v21 = (*(v10 + 8))(v12, v36);
    v8 = v37;
    if (!*(a1 + 3))
    {
      goto LABEL_8;
    }

LABEL_5:
    v22 = *a1;
    v23 = type metadata accessor for Date();
    (*(*(v23 - 8) + 56))(v8, 1, 1, v23);
    (*(*v2 + 288))(v8);
    (*(*v2 + 336))(v22, 0);
    v24 = *(*v2 + 264);

    return v24(a1);
  }

  v21 = (*(v10 + 8))(v12, v9);
  if (*(a1 + 3))
  {
    goto LABEL_5;
  }

LABEL_8:
  v27 = v8;
  v28 = v38;
  (*(*v2 + 280))(v21);
  v29 = type metadata accessor for Date();
  v30 = *(v29 - 8);
  v31 = (*(v30 + 48))(v28, 1, v29);
  result = sub_1000157F0(v28, &unk_1002D7BD0, &unk_10024A800);
  if (v31 == 1)
  {
    v32 = *(v2 + OBJC_IVAR____TtC17wirelessinsightsd31RoamingPLMNPredictionController_dateProvider + 24);
    v33 = *(v2 + OBJC_IVAR____TtC17wirelessinsightsd31RoamingPLMNPredictionController_dateProvider + 32);
    sub_100014E1C((v2 + OBJC_IVAR____TtC17wirelessinsightsd31RoamingPLMNPredictionController_dateProvider), v32);
    (*(v33 + 8))(v32, v33);
    (*(v30 + 56))(v27, 0, 1, v29);
    return (*(*v2 + 288))(v27);
  }

  return result;
}

uint64_t sub_1001A2A74(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for InternalUpcomingFlightPrediction(0);
  v49 = *(v4 - 8);
  v50 = v4;
  __chkstk_darwin(v4);
  v47 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100164A3C(&qword_1002D6E10, &qword_10024AE18);
  __chkstk_darwin(v6 - 8);
  v8 = &v45 - v7;
  v51 = type metadata accessor for Logger();
  v9 = *(v51 - 8);
  v10 = __chkstk_darwin(v51);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v48 = &v45 - v14;
  v15 = __chkstk_darwin(v13);
  v46 = &v45 - v16;
  __chkstk_darwin(v15);
  v18 = &v45 - v17;
  sub_100003E50(&off_1002B6A68, &v45 - v17);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 134217984;
    *(v21 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v19, v20, "Radio state update: %lu", v21, 0xCu);
  }

  v24 = *(v9 + 8);
  v22 = v9 + 8;
  v23 = v24;
  v25 = v51;
  result = (v24)(v18, v51);
  if (a1 == 2)
  {
    v45 = v22;
    if ((*(*v2 + 352))(result) == 1)
    {
      (*(*v2 + 376))();
      v27 = v50;
      if ((*(v49 + 48))(v8, 1, v50))
      {
        sub_1000157F0(v8, &qword_1002D6E10, &qword_10024AE18);
        v53 = 0u;
        v54 = 0u;
        v55 = 0;
LABEL_7:
        sub_1000157F0(&v53, &qword_1002D71D0, &qword_10024AE20);
        v28 = v48;
        sub_100003E50(&off_1002B6A68, v48);
        v29 = Logger.logObject.getter();
        v30 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          *v31 = 0;
          _os_log_impl(&_mh_execute_header, v29, v30, "No data available to send to baseband", v31, 2u);
        }

        v23(v28, v25);
        return (*(*v2 + 360))(2);
      }

      v35 = v47;
      sub_1001A3408(v8, v47, type metadata accessor for InternalUpcomingFlightPrediction);
      sub_1000157F0(v8, &qword_1002D6E10, &qword_10024AE18);
      sub_10001A718(v35 + *(v27 + 20), &v53, &qword_1002D71D0, &qword_10024AE20);
      sub_1001A3470(v35, type metadata accessor for InternalUpcomingFlightPrediction);
      if (!*(&v54 + 1))
      {
        goto LABEL_7;
      }

      sub_10001A700(&v53, v56);
      v36 = v46;
      sub_100003E50(&off_1002B6A68, v46);
      sub_100164B34(v56, &v53);
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v52 = v40;
        *v39 = 136315138;
        sub_100014E1C(&v53, *(&v54 + 1));
        v41 = dispatch thunk of CustomStringConvertible.description.getter();
        v43 = v42;
        sub_100164B98(&v53);
        v44 = sub_10017A8A8(v41, v43, &v52);

        *(v39 + 4) = v44;
        _os_log_impl(&_mh_execute_header, v37, v38, "Sending data to baseband: %s", v39, 0xCu);
        sub_100164B98(v40);

        v23(v36, v51);
      }

      else
      {

        v23(v36, v51);
        sub_100164B98(&v53);
      }

      (*(*v2 + 360))(3);
      return sub_100164B98(v56);
    }

    else
    {
      sub_100003E50(&off_1002B6A68, v12);
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&_mh_execute_header, v32, v33, "Prediction not ready to send", v34, 2u);
      }

      return (v23)(v12, v25);
    }
  }

  return result;
}

uint64_t sub_1001A31BC()
{

  sub_1000157F0(v0 + OBJC_IVAR____TtC17wirelessinsightsd31RoamingPLMNPredictionController_lastConnectedToCellAt, &unk_1002D7BD0, &unk_10024A800);
  sub_1000157F0(v0 + OBJC_IVAR____TtC17wirelessinsightsd31RoamingPLMNPredictionController_predictionData, &qword_1002D6E10, &qword_10024AE18);
  sub_1000157F0(v0 + OBJC_IVAR____TtC17wirelessinsightsd31RoamingPLMNPredictionController_airplaneModeEnableTimestamp, &unk_1002D7BD0, &unk_10024A800);
  sub_1000157F0(v0 + OBJC_IVAR____TtC17wirelessinsightsd31RoamingPLMNPredictionController_airplaneModeDisableTimestamp, &unk_1002D7BD0, &unk_10024A800);
  sub_1000157F0(v0 + OBJC_IVAR____TtC17wirelessinsightsd31RoamingPLMNPredictionController_limitedServiceTimestamp, &unk_1002D7BD0, &unk_10024A800);
  sub_1000157F0(v0 + OBJC_IVAR____TtC17wirelessinsightsd31RoamingPLMNPredictionController_fullServiceTimestamp, &unk_1002D7BD0, &unk_10024A800);
  sub_100164B98((v0 + OBJC_IVAR____TtC17wirelessinsightsd31RoamingPLMNPredictionController_dateProvider));
  sub_100164B98((v0 + OBJC_IVAR____TtC17wirelessinsightsd31RoamingPLMNPredictionController_metricSubmitter));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1001A32C4()
{
  sub_1001A31BC();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1001A32F0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  type metadata accessor for RoamingPLMNPredictionController(0);

  return sub_100003E50(a1, a2);
}

uint64_t sub_1001A3358(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InternalUpcomingFlightPrediction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1001A33BC()
{
  result = qword_1002D5C50;
  if (!qword_1002D5C50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1002D5C50);
  }

  return result;
}

uint64_t sub_1001A3408(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001A3470(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001A34D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1001A3518()
{
  result = qword_1002D6E20;
  if (!qword_1002D6E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D6E20);
  }

  return result;
}

unint64_t sub_1001A3570()
{
  result = qword_1002D6E28;
  if (!qword_1002D6E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D6E28);
  }

  return result;
}

unint64_t sub_1001A35C8()
{
  result = qword_1002D6E30;
  if (!qword_1002D6E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D6E30);
  }

  return result;
}

uint64_t type metadata accessor for RoamingPLMNPredictionController(uint64_t a1)
{
  result = qword_1002DA310;
  if (!qword_1002DA310)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001A3670(uint64_t a1)
{
  sub_1001A37D4(319, &qword_1002D7F00, &type metadata accessor for Date);
  if (v1 <= 0x3F)
  {
    sub_1001A37D4(319, &unk_1002D6E60, type metadata accessor for InternalUpcomingFlightPrediction);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1001A37D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t getEnumTagSinglePayload for RoamingPLMNPredictionController.PredictionSendState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RoamingPLMNPredictionController.PredictionSendState(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1001A3988()
{
  v0 = type metadata accessor for Logger();
  sub_1001A3A40(v0, qword_1002DA328);
  sub_1001A3A08(v0, qword_1002DA328);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1001A3A08(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_1001A3A40(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

id sub_1001A3AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *v6;
  v15[4] = a4;
  v15[5] = a5;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_1001A3B90;
  v15[3] = &unk_1002B75C8;
  v12 = _Block_copy(v15);

  v13 = [v11 oneShotTopSuggestionsForSink:a1 count:a2 transportType:a3 callback:v12 onQueue:a6];
  _Block_release(v12);

  return v13;
}

uint64_t sub_1001A3B90(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_100164AEC(0, &qword_1002D79A8, MapsSuggestionsEntry_ptr);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t sub_1001A3CB0()
{
  v1 = (v0 + OBJC_IVAR____TtC17wirelessinsightsd21MapsSuggestionHandler_uniqueName);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1001A3D74(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC17wirelessinsightsd21MapsSuggestionHandler_uniqueName);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

id sub_1001A3F28()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSuggestionHandler();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1001A3F70(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7, void *a8, double a9, double a10, uint64_t a11, uint64_t a12)
{
  v13 = v12;
  v24 = objc_allocWithZone(v13);
  *&v24[OBJC_IVAR___WISCellularCoverageTile_latitude] = a9;
  *&v24[OBJC_IVAR___WISCellularCoverageTile_longitude] = a10;
  *&v24[OBJC_IVAR___WISCellularCoverageTile_noServiceCount] = a1;
  *&v24[OBJC_IVAR___WISCellularCoverageTile_inServiceCount] = a2;
  *&v24[OBJC_IVAR___WISCellularCoverageTile_limitedServiceCount] = a3;
  if (a4)
  {
    v25 = [a4 integerValue];
  }

  else
  {
    v25 = 0;
  }

  v26 = &v24[OBJC_IVAR___WISCellularCoverageTile_highestFrequencyRsrp];
  *v26 = v25;
  v26[8] = a4 == 0;
  *&v24[OBJC_IVAR___WISCellularCoverageTile_highestCountMCC] = a5;
  *&v24[OBJC_IVAR___WISCellularCoverageTile_highestCountMNC] = a6;
  if (a7)
  {
    v27 = [a7 integerValue];
  }

  else
  {
    v27 = 0;
  }

  v28 = &v24[OBJC_IVAR___WISCellularCoverageTile_highestCountBand];
  *v28 = v27;
  v28[8] = a7 == 0;
  if (a8)
  {
    v29 = [a8 integerValue];
  }

  else
  {
    v29 = 0;
  }

  v30 = &v24[OBJC_IVAR___WISCellularCoverageTile_highestCountARFCN];
  *v30 = v29;
  v30[8] = a8 == 0;
  *&v24[OBJC_IVAR___WISCellularCoverageTile_highestCountRAT] = a11;
  *&v24[OBJC_IVAR___WISCellularCoverageTile_highestCount] = a12;
  v33.receiver = v24;
  v33.super_class = v13;
  v31 = objc_msgSendSuper2(&v33, "init");

  return v31;
}

void sub_1001A425C()
{
  _StringGuts.grow(_:)(228);
  v1._countAndFlagsBits = 0x656475746974616CLL;
  v1._object = 0xE900000000000020;
  String.append(_:)(v1);
  Double.write<A>(to:)();
  v2._countAndFlagsBits = 0x7469676E6F6C202CLL;
  v2._object = 0xEC00000020656475;
  String.append(_:)(v2);
  Double.write<A>(to:)();
  v3._countAndFlagsBits = 0xD000000000000011;
  v3._object = 0x800000010025CD60;
  String.append(_:)(v3);
  v4 = *(v0 + OBJC_IVAR___WISCellularCoverageTile_noServiceCount);
  v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v5);

  v6._countAndFlagsBits = 0xD000000000000010;
  v6._object = 0x800000010025CD80;
  String.append(_:)(v6);
  v32 = *(v0 + OBJC_IVAR___WISCellularCoverageTile_inServiceCount);
  v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v7);

  v8._countAndFlagsBits = 0xD000000000000013;
  v8._object = 0x800000010025CDA0;
  String.append(_:)(v8);
  if (__OFADD__(v4, v32))
  {
    __break(1u);
    goto LABEL_14;
  }

  if (__OFADD__(v4 + v32, *(v0 + OBJC_IVAR___WISCellularCoverageTile_limitedServiceCount)))
  {
LABEL_14:
    __break(1u);
    return;
  }

  v9 = 7104878;
  Double.write<A>(to:)();
  v10._countAndFlagsBits = 0xD000000000000017;
  v10._object = 0x800000010025CDC0;
  String.append(_:)(v10);
  if (*(v0 + OBJC_IVAR___WISCellularCoverageTile_highestFrequencyRsrp + 8))
  {
    v11 = 0xE300000000000000;
    v12 = 7104878;
  }

  else
  {
    sub_10019C0B0();
    v12 = BinaryInteger.description.getter();
    v11 = v13;
  }

  v14 = v11;
  String.append(_:)(*&v12);

  v15._object = 0x800000010025CDE0;
  v15._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v15);
  v16._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v16);

  v17._object = 0x800000010025CE00;
  v17._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v17);
  v18._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v18);

  v19._countAndFlagsBits = 0xD000000000000013;
  v19._object = 0x800000010025CE20;
  String.append(_:)(v19);
  if (*(v0 + OBJC_IVAR___WISCellularCoverageTile_highestCountBand + 8))
  {
    v20 = 0xE300000000000000;
    v21 = 7104878;
  }

  else
  {
    sub_10019C0B0();
    v21 = BinaryInteger.description.getter();
    v20 = v22;
  }

  v23 = v20;
  String.append(_:)(*&v21);

  v24._countAndFlagsBits = 0xD000000000000014;
  v24._object = 0x800000010025CE40;
  String.append(_:)(v24);
  if (*(v0 + OBJC_IVAR___WISCellularCoverageTile_highestCountARFCN + 8))
  {
    v25 = 0xE300000000000000;
  }

  else
  {
    sub_10019C0B0();
    v9 = BinaryInteger.description.getter();
    v25 = v26;
  }

  v27._countAndFlagsBits = v9;
  v27._object = v25;
  String.append(_:)(v27);

  v28._object = 0x800000010025CE60;
  v28._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v28);
  v29._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v29);

  v30._countAndFlagsBits = 0x736568676968202CLL;
  v30._object = 0xEF20746E756F4374;
  String.append(_:)(v30);
  v31._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v31);
}

void sub_1001A47F0()
{
  v1 = *(*v0 + OBJC_IVAR___WISCellularCoverageTile_noServiceCount);
  v2 = *(*v0 + OBJC_IVAR___WISCellularCoverageTile_inServiceCount);
  v3 = __OFADD__(v1, v2);
  v4 = v1 + v2;
  if (v3)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (__OFADD__(v4, *(*v0 + OBJC_IVAR___WISCellularCoverageTile_limitedServiceCount)))
  {
LABEL_5:
    __break(1u);
  }
}

uint64_t sub_1001A486C()
{
  v1 = *(*v0 + OBJC_IVAR___WISCellularCoverageTile_noServiceCount);
  v2 = *(*v0 + OBJC_IVAR___WISCellularCoverageTile_inServiceCount);
  v3 = __OFADD__(v1, v2);
  v4 = v1 + v2;
  if (v3)
  {
    __break(1u);
    goto LABEL_5;
  }

  v5 = *(*v0 + OBJC_IVAR___WISCellularCoverageTile_limitedServiceCount);
  result = v4 + v5;
  if (__OFADD__(v4, v5))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_1001A4938(uint64_t a1, double a2, double a3)
{
  *(v3 + 160) = a2;
  *(v3 + 168) = a3;
  *(v3 + 152) = a1;
  v4 = sub_100164A3C(&qword_1002D7140, &qword_10024B0A8);
  *(v3 + 176) = v4;
  *(v3 + 184) = *(v4 - 8);
  *(v3 + 192) = swift_task_alloc();

  return _swift_task_switch(sub_1001A4A08, 0, 0);
}

uint64_t sub_1001A4A08()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 10;
  v4 = v0 + 18;
  v6 = v0[23];
  v5 = v0[24];
  v7 = v0[22];
  v9 = *(v1 + 20);
  v8 = *(v1 + 21);
  v13 = objc_opt_self();
  v10 = String._bridgeToObjectiveC()();
  v1[25] = v10;
  v1[2] = v1;
  v1[7] = v4;
  v1[3] = sub_1001A4C08;
  swift_continuation_init();
  v1[17] = v7;
  v11 = sub_1001B8BDC(v1 + 14);
  sub_100164A3C(&qword_1002D7148, &qword_10024B0B0);
  CheckedContinuation.init(continuation:function:)();
  (*(v6 + 32))(v11, v5, v7);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_1001A4DBC;
  v1[13] = &unk_1002B6EA8;
  [v13 cellularCoverageTileConfigurationAtLatitude:v10 longitude:v3 reason:v9 completionHandler:v8];
  (*(v6 + 8))(v11, v7);

  return _swift_continuation_await(v2);
}

uint64_t sub_1001A4C08()
{

  return _swift_task_switch(sub_1001A4CE8, 0, 0);
}

uint64_t sub_1001A4CE8()
{
  v1 = *(v0 + 144);

  if (v1)
  {
    v2 = type metadata accessor for CellularCoverageTile();
    v4 = sub_1001B840C(&unk_1002D7150, v3, type metadata accessor for CellularCoverageTile, &unk_10024B1A8);
  }

  else
  {
    v2 = 0;
    v4 = 0;
    v5 = *(v0 + 152);
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
  }

  v6 = *(v0 + 152);
  *v6 = v1;
  v6[3] = v2;
  v6[4] = v4;

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1001A4DBC(uint64_t a1, void *a2)
{
  sub_100014E1C((a1 + 32), *(a1 + 56));
  v3 = a2;
  sub_100164A3C(&qword_1002D7140, &qword_10024B0A8);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_1001A4E2C(uint64_t a1, double a2, double a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10017F434;

  return sub_1001A4938(a1, a2, a3);
}

uint64_t sub_1001A4F04()
{
  BYTE8(v4) = 0;
  v1._countAndFlagsBits = 0x79745B7972746E45;
  v1._object = 0xEB000000003A6570;
  String.append(_:)(v1);
  *&v4 = *(v0 + 16);
  _print_unlocked<A, B>(_:_:)();
  v2._countAndFlagsBits = 93;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  return *(&v4 + 1);
}

uint64_t sub_1001A4F98()
{
  _StringGuts.grow(_:)(54);
  v1._object = 0x800000010025CF50;
  v1._countAndFlagsBits = 0xD000000000000019;
  String.append(_:)(v1);
  v2 = type metadata accessor for MapsSuggestionController.UpcomingFlightPrediction(0);
  String.append(_:)(*(v0 + v2[7]));
  v3._countAndFlagsBits = 10272;
  v3._object = 0xE200000000000000;
  String.append(_:)(v3);
  type metadata accessor for Date();
  sub_1001B840C(&qword_1002D5B88, 255, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 0x203E2D2029;
  v5._object = 0xE500000000000000;
  String.append(_:)(v5);
  String.append(_:)(*(v0 + v2[10]));
  v6._countAndFlagsBits = 10272;
  v6._object = 0xE200000000000000;
  String.append(_:)(v6);
  v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v7);

  v8._countAndFlagsBits = 0x656372756F73202CLL;
  v8._object = 0xEA0000000000203ALL;
  String.append(_:)(v8);
  v9._countAndFlagsBits = sub_1001B7278(*(v0 + v2[6]));
  String.append(_:)(v9);

  return 0;
}

uint64_t sub_1001A5154(uint64_t a1)
{
  type metadata accessor for Date();
  sub_1001B840C(&qword_1002D7160, 255, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  dispatch thunk of Hashable.hash(into:)();
  v2 = type metadata accessor for MapsSuggestionController.UpcomingFlightPrediction(0);
  Hasher._combine(_:)(*(v1 + v2[5]));
  Hasher._combine(_:)(*(v1 + v2[6]));
  String.hash(into:)();
  v3 = *(v1 + v2[8]);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  Hasher._combine(_:)(*&v3);
  v4 = *(v1 + v2[9]);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  Hasher._combine(_:)(*&v4);
  String.hash(into:)();
  v5 = *(v1 + v2[11]);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  Hasher._combine(_:)(*&v5);
  v6 = *(v1 + v2[12]);
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  Hasher._combine(_:)(*&v6);
  dispatch thunk of Hashable.hash(into:)();
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_1001A52CC()
{
  Hasher.init(_seed:)();
  sub_1001A5154(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1001A5310(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_1001A5154(v2);
  return Hasher._finalize()();
}

uint64_t sub_1001A5354()
{
  _StringGuts.grow(_:)(134);
  v0._countAndFlagsBits = 0xD000000000000029;
  v0._object = 0x800000010025CF70;
  String.append(_:)(v0);
  type metadata accessor for Date();
  sub_1001B840C(&qword_1002D5B88, 255, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 0xD000000000000015;
  v2._object = 0x800000010025CFA0;
  String.append(_:)(v2);
  type metadata accessor for MapsSuggestionController.SimulatedFlightTravelLocation(0);
  Double.write<A>(to:)();
  v3._countAndFlagsBits = 0xD000000000000016;
  v3._object = 0x800000010025CFC0;
  String.append(_:)(v3);
  Double.write<A>(to:)();
  v4._object = 0x800000010025CFE0;
  v4._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v4);
  Double.write<A>(to:)();
  v5._countAndFlagsBits = 0xD000000000000014;
  v5._object = 0x800000010025D000;
  String.append(_:)(v5);
  Double.write<A>(to:)();
  v6._countAndFlagsBits = 41;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  return 0;
}

double sub_1001A553C(uint64_t a1, char a2)
{
  v5 = type metadata accessor for PrivateServicePrediction.ServicePredictionType();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8, a1, v5);
  v9 = (*(v6 + 88))(v8, v5);
  if (v9 == enum case for PrivateServicePrediction.ServicePredictionType.noCellularDataService(_:))
  {
    result = 0.1;
    switch(a2)
    {
      case 2:
      case 3:
      case 15:
      case 16:
        (*(*v2 + 264))(v12, 0.1);
        result = *&v12[6];
        break;
      case 4:
        (*(*v2 + 264))(v12, 0.1);
        result = *&v12[8];
        break;
      case 5:
        (*(*v2 + 264))(v12, 0.1);
        result = *&v12[7];
        break;
      case 6:
      case 7:
      case 14:
      case 17:
      case 18:
        (*(*v2 + 264))(v12, 0.1);
        result = *&v12[9];
        break;
      case 8:
        (*(*v2 + 264))(v12, 0.1);
        result = *&v12[10];
        break;
      case 9:
      case 10:
      case 11:
        (*(*v2 + 264))(v12, 0.1);
        result = *&v12[11];
        break;
      case 12:
        (*(*v2 + 264))(v12, 0.1);
        result = *&v12[12];
        break;
      case 13:
        (*(*v2 + 264))(v12, 0.1);
        result = *&v12[13];
        break;
      default:
        return result;
    }
  }

  else if (v9 == enum case for PrivateServicePrediction.ServicePredictionType.lowSignalStrength(_:))
  {
    result = 0.1;
    switch(a2)
    {
      case 2:
      case 3:
      case 15:
      case 16:
        (*(*v2 + 264))(v12, 0.1);
        result = *&v12[14];
        break;
      case 4:
        (*(*v2 + 264))(v12, 0.1);
        result = *&v12[16];
        break;
      case 5:
        (*(*v2 + 264))(v12, 0.1);
        result = *&v12[15];
        break;
      case 6:
      case 7:
      case 14:
      case 17:
      case 18:
        (*(*v2 + 264))(v12, 0.1);
        result = *&v12[17];
        break;
      case 8:
        (*(*v2 + 264))(v12, 0.1);
        result = *&v12[18];
        break;
      case 9:
      case 10:
      case 11:
        (*(*v2 + 264))(v12, 0.1);
        result = *&v12[19];
        break;
      case 12:
        result = 0.6;
        break;
      case 13:
        (*(*v2 + 264))(v12, 0.1);
        result = *&v12[20];
        break;
      default:
        return result;
    }
  }

  else
  {
    (*(v6 + 8))(v8, v5);
    return 0.1;
  }

  return result;
}

__n128 sub_1001A5A24@<Q0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 392);
  v4 = *(v1 + 424);
  v5 = *(v1 + 440);
  *(a1 + 160) = *(v1 + 408);
  *(a1 + 176) = v4;
  *(a1 + 192) = v5;
  v6 = *(v1 + 328);
  v7 = *(v1 + 360);
  v8 = *(v1 + 376);
  *(a1 + 96) = *(v1 + 344);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 144) = v3;
  result = *(v1 + 264);
  v10 = *(v1 + 296);
  v11 = *(v1 + 312);
  *(a1 + 32) = *(v1 + 280);
  *(a1 + 48) = v10;
  *(a1 + 64) = v11;
  *(a1 + 80) = v6;
  *a1 = *(v1 + 248);
  *(a1 + 16) = result;
  return result;
}

__n128 sub_1001A5AA4(__int128 *a1)
{
  swift_beginAccess();
  v3 = a1[10];
  v4 = a1[11];
  v5 = a1[8];
  *(v1 + 392) = a1[9];
  *(v1 + 408) = v3;
  v6 = a1[12];
  *(v1 + 424) = v4;
  *(v1 + 440) = v6;
  v7 = a1[6];
  v8 = a1[7];
  v9 = a1[4];
  *(v1 + 328) = a1[5];
  *(v1 + 344) = v7;
  *(v1 + 360) = v8;
  *(v1 + 376) = v5;
  result = a1[2];
  v11 = a1[3];
  v12 = *a1;
  *(v1 + 264) = a1[1];
  *(v1 + 280) = result;
  *(v1 + 296) = v11;
  *(v1 + 312) = v9;
  *(v1 + 248) = v12;
  return result;
}

void sub_1001A5BAC(uint64_t a1, char a2)
{
  swift_beginAccess();
  *(v2 + 456) = a1;
  *(v2 + 464) = a2 & 1;
}

void sub_1001A5C88(uint64_t a1, char a2)
{
  swift_beginAccess();
  *(v2 + 472) = a1;
  *(v2 + 480) = a2 & 1;
}

void sub_1001A5D64(uint64_t a1, char a2)
{
  swift_beginAccess();
  *(v2 + 488) = a1;
  *(v2 + 496) = a2 & 1;
}

uint64_t sub_1001A5E08@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC17wirelessinsightsd24MapsSuggestionController_simulatedFlightTravelLocation;
  swift_beginAccess();
  return sub_10001A718(v1 + v3, a1, &qword_1002D7178, &unk_10024B0C0);
}

uint64_t sub_1001A5E70(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17wirelessinsightsd24MapsSuggestionController_simulatedFlightTravelLocation;
  swift_beginAccess();
  sub_1001B85E8(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1001A5F80(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC17wirelessinsightsd24MapsSuggestionController_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1001A5FEC(uint64_t *a1))(uint64_t a1, char a2, __n128 a3)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC17wirelessinsightsd24MapsSuggestionController_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1001A608C;
}

void sub_1001A608C(uint64_t a1, char a2, __n128 a3)
{
  v4 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v4);
}

double sub_1001A6114()
{
  v1 = COERCE_DOUBLE((*(*v0 + 288))());
  if ((v2 & 1) == 0)
  {
    return v1;
  }

  (*(*v0 + 264))(v4, COERCE_DOUBLE(*&v1));
  return v4[0];
}

double sub_1001A619C()
{
  v1 = COERCE_DOUBLE((*(*v0 + 336))());
  if ((v2 & 1) == 0)
  {
    return v1;
  }

  (*(*v0 + 264))(v4, COERCE_DOUBLE(*&v1));
  return *&v4[1];
}

uint64_t sub_1001A6224()
{
  result = (*(*v0 + 312))();
  if (v2)
  {
    (*(*v0 + 264))(v3, result);
    return v3[2];
  }

  return result;
}

void *sub_1001A636C()
{
  v1 = OBJC_IVAR____TtC17wirelessinsightsd24MapsSuggestionController_timer;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1001A63B8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17wirelessinsightsd24MapsSuggestionController_timer;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_1001A6470()
{
  v1 = OBJC_IVAR____TtC17wirelessinsightsd24MapsSuggestionController_lastLocation;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t sub_1001A651C()
{
  v1 = OBJC_IVAR____TtC17wirelessinsightsd24MapsSuggestionController_currentRegistrationState;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1001A6560(char a1)
{
  v3 = OBJC_IVAR____TtC17wirelessinsightsd24MapsSuggestionController_currentRegistrationState;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1001A6610()
{
  v1 = OBJC_IVAR____TtC17wirelessinsightsd24MapsSuggestionController_currentlyInAirplaneMode;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1001A6654(char a1)
{
  v3 = OBJC_IVAR____TtC17wirelessinsightsd24MapsSuggestionController_currentlyInAirplaneMode;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1001A676C(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v6 = *a2;
  swift_beginAccess();
  v7 = *(v3 + v6);
  *(v3 + v6) = a1;
  return a3(v7);
}

double sub_1001A6828()
{
  v1 = OBJC_IVAR____TtC17wirelessinsightsd24MapsSuggestionController_lastExpectedOutOfServiceDuration;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1001A686C(double a1)
{
  v3 = OBJC_IVAR____TtC17wirelessinsightsd24MapsSuggestionController_lastExpectedOutOfServiceDuration;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1001A691C@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for MapsSuggestionController.DefaultCellularCoverageTileProvider();
  result = swift_allocObject();
  a1[3] = v2;
  a1[4] = &off_1002B70A0;
  *a1 = result;
  return result;
}

uint64_t sub_1001A697C(uint64_t a1)
{
  v1[19] = a1;
  v2 = sub_100164A3C(&qword_1002D7A00, &qword_10024BA80);
  v1[20] = v2;
  v1[21] = *(v2 - 8);
  v1[22] = swift_task_alloc();

  return _swift_task_switch(sub_1001A6A48, 0, 0);
}

uint64_t sub_1001A6A48()
{
  v1 = [objc_allocWithZone(MKReverseGeocodingRequest) initWithLocation:v0[19]];
  if (v1)
  {
    v2 = v1;
    v4 = v0[21];
    v3 = v0[22];
    v5 = v0[20];
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_1001A6C88;
    swift_continuation_init();
    v0[17] = v5;
    v6 = sub_1001B8BDC(v0 + 14);
    sub_100164A3C(&qword_1002D7A08, &qword_10024BA88);
    sub_100164A3C(&qword_1002D7A10, &qword_10024AC20);
    CheckedContinuation.init(continuation:function:)();
    (*(v4 + 32))(v6, v3, v5);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_1001A6F64;
    v0[13] = &unk_1002B76B8;
    [v2 getMapItemsWithCompletionHandler:?];

    (*(v4 + 8))(v6, v5);

    return _swift_continuation_await(v0 + 2);
  }

  else
  {

    v7 = v0[1];

    return v7(0, 0);
  }
}

uint64_t sub_1001A6C88()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_1001A6EE0;
  }

  else
  {
    v2 = sub_1001A6D98;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001A6D98()
{
  v1 = *(v0 + 144);
  if (!(v1 >> 62))
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_9:

LABEL_10:
    v7 = 0;
    v9 = 0;
    goto LABEL_11;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v1 + 32);
  }

  v4 = v3;

  v5 = [v4 placemark];

  v6 = [v5 countryCode];
  if (!v6)
  {
    goto LABEL_10;
  }

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

LABEL_11:

  v10 = *(v0 + 8);

  return v10(v7, v9);
}

uint64_t sub_1001A6EE0()
{
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1(0, 0);
}

void sub_1001A6F64(uint64_t a1, uint64_t a2, void *a3)
{
  sub_100014E1C((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;
    sub_100164A3C(&qword_1002D7A00, &qword_10024BA80);
    CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_100164AEC(0, &qword_1002D7A18, MKMapItem_ptr);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100164A3C(&qword_1002D7A00, &qword_10024BA80);
    CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_1001A702C(int a1, int a2, _OWORD *a3, __int128 *a4, uint64_t a5, uint64_t a6, uint64_t a7, __int128 *a8, uint64_t a9, uint64_t a10)
{
  v45 = a5;
  v46 = a6;
  v43 = a3;
  v44 = a4;
  v41 = a1;
  v42 = a2;
  v48 = a10;
  v49 = a8;
  v47 = a9;
  v11 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v39 = *(v11 - 8);
  v40 = v11;
  __chkstk_darwin(v11);
  v38 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v13);
  v14 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v14 - 8);
  v15 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v15 + 456) = 0;
  *(v15 + 464) = 1;
  *(v15 + 472) = 0;
  *(v15 + 480) = 1;
  *(v15 + 488) = 0;
  *(v15 + 496) = 1;
  v16 = OBJC_IVAR____TtC17wirelessinsightsd24MapsSuggestionController_simulatedFlightTravelLocation;
  v17 = type metadata accessor for MapsSuggestionController.SimulatedFlightTravelLocation(0);
  (*(*(v17 - 8) + 56))(v15 + v16, 1, 1, v17);
  *(v15 + OBJC_IVAR____TtC17wirelessinsightsd24MapsSuggestionController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v37 = OBJC_IVAR____TtC17wirelessinsightsd24MapsSuggestionController_queue;
  v36 = sub_100164AEC(0, &qword_1002D6640, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v50 = _swiftEmptyArrayStorage;
  sub_1001B840C(&qword_1002D5E50, 255, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100164A3C(&unk_1002D6650, &qword_100249DD0);
  sub_10017F314(&qword_1002D5E58, &unk_1002D6650, &qword_100249DD0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v39 + 104))(v38, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v40);
  *(v15 + v37) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v18 = OBJC_IVAR____TtC17wirelessinsightsd24MapsSuggestionController_handler;
  *(v15 + v18) = [objc_allocWithZone(type metadata accessor for MapsSuggestionHandler()) init];
  *(v15 + OBJC_IVAR____TtC17wirelessinsightsd24MapsSuggestionController_currentPredictions) = _swiftEmptyArrayStorage;
  *(v15 + OBJC_IVAR____TtC17wirelessinsightsd24MapsSuggestionController_timer) = 0;
  *(v15 + OBJC_IVAR____TtC17wirelessinsightsd24MapsSuggestionController_lastLocation) = 0;
  v19 = OBJC_IVAR____TtC17wirelessinsightsd24MapsSuggestionController_currentRegistrationState;
  *(v15 + OBJC_IVAR____TtC17wirelessinsightsd24MapsSuggestionController_currentRegistrationState) = 0;
  v20 = OBJC_IVAR____TtC17wirelessinsightsd24MapsSuggestionController_currentlyInAirplaneMode;
  *(v15 + OBJC_IVAR____TtC17wirelessinsightsd24MapsSuggestionController_currentlyInAirplaneMode) = 0;
  v21 = OBJC_IVAR____TtC17wirelessinsightsd24MapsSuggestionController_registrationTimeCounter;
  type metadata accessor for RegistrationTimeCounter(0);
  *(v15 + v21) = sub_1001BE4B0();
  *(v15 + OBJC_IVAR____TtC17wirelessinsightsd24MapsSuggestionController_lastExpectedOutOfServiceDuration) = 0;
  swift_beginAccess();
  *(v15 + v20) = v41;
  swift_beginAccess();
  *(v15 + v19) = v42;
  v23 = v43;
  v22 = v44;
  v24 = v43[1];
  *(v15 + 112) = *v43;
  *(v15 + 128) = v24;
  *(v15 + 144) = *(v23 + 4);
  sub_10001A700(v22, v15 + 152);
  v25 = (v15 + OBJC_IVAR____TtC17wirelessinsightsd24MapsSuggestionController_locationControllerFactory);
  v26 = v46;
  *v25 = v45;
  v25[1] = v26;
  *(v15 + 248) = *(a7 + 168);
  v27 = *(a7 + 232);
  *(v15 + 296) = *(a7 + 216);
  *(v15 + 312) = v27;
  v28 = *(a7 + 200);
  *(v15 + 264) = *(a7 + 184);
  *(v15 + 280) = v28;
  v29 = *(a7 + 264);
  v30 = *(a7 + 296);
  v31 = *(a7 + 312);
  *(v15 + 360) = *(a7 + 280);
  *(v15 + 376) = v30;
  *(v15 + 328) = *(a7 + 248);
  *(v15 + 344) = v29;
  v32 = *(a7 + 360);
  v33 = *(a7 + 328);
  *(v15 + 424) = *(a7 + 344);
  *(v15 + 440) = v32;
  *(v15 + 392) = v31;
  *(v15 + 408) = v33;
  sub_10001A700(v49, v15 + 192);
  v34 = v48;
  *(v15 + 232) = v47;
  *(v15 + 240) = v34;
  return v15;
}

uint64_t sub_1001A74C0(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 392);
  v4 = swift_unknownObjectRetain();

  return v6(v4, a2);
}

uint64_t sub_1001A752C(double a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003E50(&off_1002B70B0, v7);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 134217984;
    *(v10 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v8, v9, "Updating out of service rate threshold override to %f", v10, 0xCu);
  }

  (*(v5 + 8))(v7, v4);
  return (*(*v2 + 296))(*&a1, 0);
}

uint64_t sub_1001A7700(double a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003E50(&off_1002B70B0, v7);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 134217984;
    *(v10 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v8, v9, "Updating update time interval override to %f", v10, 0xCu);
  }

  (*(v5 + 8))(v7, v4);
  v11 = (*(*v2 + 344))(*&a1, 0);
  return (*(*v2 + 696))(v11);
}

uint64_t sub_1001A790C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003E50(&off_1002B70B0, v7);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 134217984;
    *(v10 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v8, v9, "Updating rsrp threshold to %ld", v10, 0xCu);
  }

  (*(v5 + 8))(v7, v4);
  v11 = (*(*v2 + 320))(a1, 0);
  return (*(*v2 + 696))(v11);
}

uint64_t sub_1001A7B10(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = type metadata accessor for MapsSuggestionController.SimulatedFlightTravelLocation(0);
  v58 = *(v10 - 1);
  __chkstk_darwin(v10);
  v53 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Date();
  v55 = *(v12 - 8);
  v56 = v12;
  __chkstk_darwin(v12);
  v54 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100164A3C(&qword_1002D7178, &unk_10024B0C0);
  v15 = __chkstk_darwin(v14 - 8);
  v57 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v53 - v17;
  v61 = type metadata accessor for Logger();
  v19 = *(v61 - 8);
  v20 = __chkstk_darwin(v61);
  v59 = (&v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = __chkstk_darwin(v20);
  v24 = &v53 - v23;
  __chkstk_darwin(v22);
  v26 = &v53 - v25;
  sub_100003E50(&off_1002B70B0, &v53 - v25);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 134218752;
    *(v29 + 4) = a1;
    *(v29 + 12) = 2048;
    *(v29 + 14) = a2;
    *(v29 + 22) = 2048;
    *(v29 + 24) = a3;
    *(v29 + 32) = 2048;
    *(v29 + 34) = a4;
    _os_log_impl(&_mh_execute_header, v27, v28, "Updating simulated flight travel, from %f, %f to %f, %f", v29, 0x2Au);
  }

  v30 = *(v19 + 8);
  v31 = v61;
  v60 = v19 + 8;
  v30(v26, v61);
  if (a1 == 0.0 && a2 == 0.0 && a3 == 0.0 && a4 == 0.0)
  {
    sub_100003E50(&off_1002B70B0, v24);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    v34 = os_log_type_enabled(v32, v33);
    v35 = v59;
    if (v34)
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "Removing simulated flight travel location", v36, 2u);
      v31 = v61;
    }

    v30(v24, v31);
    v37 = 1;
  }

  else
  {
    v38 = v54;
    static Date.now.getter();
    static Date.+ infix(_:_:)();
    (*(v55 + 8))(v38, v56);
    v37 = 0;
    *&v18[v10[5]] = a1;
    *&v18[v10[6]] = a2;
    *&v18[v10[7]] = a3;
    *&v18[v10[8]] = a4;
    v35 = v59;
  }

  v39 = v58;
  (*(v58 + 56))(v18, v37, 1, v10);
  (*(*v5 + 368))(v18);
  sub_100003E50(&off_1002B70B0, v35);

  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v40, v41))
  {
    v59 = v30;
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v62 = v43;
    *v42 = 136315138;
    v44 = v57;
    (*(*v5 + 360))();
    if ((*(v39 + 48))(v44, 1, v10))
    {
      sub_1000157F0(v44, &qword_1002D7178, &unk_10024B0C0);
      v45 = 0xE300000000000000;
      v46 = 7104878;
    }

    else
    {
      v47 = v53;
      sub_1001B87F8(v44, v53, type metadata accessor for MapsSuggestionController.SimulatedFlightTravelLocation);
      sub_1000157F0(v44, &qword_1002D7178, &unk_10024B0C0);
      v48 = sub_1001A5354();
      v45 = v49;
      sub_1001B8860(v47, type metadata accessor for MapsSuggestionController.SimulatedFlightTravelLocation);
      v46 = v48;
    }

    v30 = v59;
    v50 = sub_10017A8A8(v46, v45, &v62);

    *(v42 + 4) = v50;
    _os_log_impl(&_mh_execute_header, v40, v41, "Updated simulated flight travel information %s", v42, 0xCu);
    sub_100164B98(v43);
  }

  v51 = (v30)(v35, v61);
  return (*(*v5 + 696))(v51);
}

uint64_t sub_1001A8270(void *a1)
{
  v2 = v1;
  v4 = sub_100164A3C(&qword_1002D7180, &qword_10024ABF0);
  __chkstk_darwin(v4 - 8);
  v6 = &v20 - v5;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003E50(&off_1002B70B0, v10);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Setting timer and updating predictions.", v13, 2u);
  }

  (*(v8 + 8))(v10, v7);
  v14 = *(*v2 + 464);
  v15 = a1;
  v14(a1);
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
  v17 = sub_1001B840C(&qword_1002D7188, 255, type metadata accessor for MapsSuggestionController, &unk_10024B460);
  v18 = swift_allocObject();
  v18[2] = v2;
  v18[3] = v17;
  v18[4] = v2;
  swift_retain_n();
  sub_100176B80(0, 0, v6, &unk_10024B0E8, v18);
}

uint64_t sub_1001A8558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = (*(*a4 + 720) + **(*a4 + 720));
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1001A8678;

  return v7(0);
}

uint64_t sub_1001A8678(uint64_t a1)
{
  v4 = *v1;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1001A8778(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v28[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v28[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v33 = *(v4 + 504);
  v34 = v4 + 504;
  v38 = (v33)(v11);
  v37 = a1;
  sub_1001B8730();
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if ((result & 1) == 0)
  {
    v32 = v9;
    sub_100003E50(&off_1002B70B0, v13);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v30 = v6;
      v18 = v17;
      v19 = swift_slowAlloc();
      v31 = v5;
      v20 = v19;
      v36 = v19;
      *v18 = 136315138;
      v35 = a1;
      sub_1001B8784();
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      v23 = sub_10017A8A8(v21, v22, &v36);
      v29 = a1;
      v24 = v23;

      *(v18 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v15, v16, "Registration state updated to %s", v18, 0xCu);
      sub_100164B98(v20);
      v5 = v31;

      v6 = v30;

      v25 = (*(v10 + 8))(v13, v32);
      v26 = v29;
    }

    else
    {

      v25 = (*(v10 + 8))(v13, v32);
      v26 = a1;
    }

    (*(*v1 + 552))(v25);
    v27 = v33();
    j_j___s10Foundation4DateVACycfC();
    sub_1001BDAF8(v27, v8);

    (*(v6 + 8))(v8, v5);
    return (*(*v2 + 512))(v26);
  }

  return result;
}

uint64_t sub_1001A8B2C(char a1)
{
  v2 = v1;
  v4 = a1 & 1;
  v5 = *v1;
  v20 = type metadata accessor for Date();
  v6 = *(v20 - 8);
  __chkstk_darwin(v20);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(v5 + 528))(v11);
  if ((result & 1) != v4)
  {
    sub_100003E50(&off_1002B70B0, v13);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 67109120;
      *(v17 + 4) = a1 & 1;
      _os_log_impl(&_mh_execute_header, v15, v16, "Airplane mode updated to %{BOOL}d", v17, 8u);
    }

    (*(v10 + 8))(v13, v9);
    v18 = (*(*v2 + 536))(a1 & 1);
    (*(*v2 + 552))(v18);
    j_j___s10Foundation4DateVACycfC();
    if (a1)
    {
      sub_1001BD808(v8);
    }

    else
    {
      sub_1001BD980(v8);
    }

    return (*(v6 + 8))(v8, v20);
  }

  return result;
}

uint64_t sub_1001A8E24(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003E50(&off_1002B70B0, v7);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Updating configuration", v10, 2u);
  }

  (*(v5 + 8))(v7, v4);
  v11 = *(a1 + 344);
  v21[10] = *(a1 + 328);
  v21[11] = v11;
  v12 = *(a1 + 264);
  v13 = *(a1 + 280);
  v15 = *(a1 + 296);
  v14 = *(a1 + 312);
  v21[12] = *(a1 + 360);
  v16 = *(a1 + 248);
  v21[6] = v12;
  v21[7] = v13;
  v21[8] = v15;
  v21[9] = v14;
  v17 = *(a1 + 184);
  v18 = *(a1 + 216);
  v21[2] = *(a1 + 200);
  v21[3] = v18;
  v21[4] = *(a1 + 232);
  v21[5] = v16;
  v19 = *(a1 + 168);
  v21[1] = v17;
  v21[0] = v19;
  return (*(*v2 + 272))(v21);
}

uint64_t sub_1001A9040()
{
  v1 = sub_100164A3C(&qword_1002D7178, &unk_10024B0C0);
  __chkstk_darwin(v1 - 8);
  v3 = &v6 - v2;
  v4 = type metadata accessor for MapsSuggestionController.SimulatedFlightTravelLocation(0);
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  return (*(*v0 + 368))(v3);
}

uint64_t sub_1001A9128()
{
  v1 = (*(*v0 + 456))();
  [v1 invalidate];

  (*(*v0 + 464))(0);
  v2 = *(*v0 + 704);

  return v2();
}

uint64_t sub_1001A9204()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v55 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v54 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Logger();
  v56 = *(v9 - 8);
  v57 = v9;
  v10 = __chkstk_darwin(v9);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v49 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = &v49 - v17;
  v19 = (*(v2 + 456))(v16);
  if (v19)
  {

    sub_100003E50(&off_1002B70B0, v12);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Already started", v22, 2u);
    }

    return v56[1](v12, v57);
  }

  else
  {
    v49 = v15;
    v50 = v8;
    v51 = v5;
    v52 = v6;
    v53 = v3;
    sub_100003E50(&off_1002B70B0, v18);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "Starting maps update timer.", v26, 2u);
    }

    v27 = v57;
    v28 = v56[1];
    v29 = (v28)(v18, v57);
    v30 = [(*(v1 + OBJC_IVAR____TtC17wirelessinsightsd24MapsSuggestionController_locationControllerFactory))(v29) currentLocation];
    v31 = swift_unknownObjectRelease();
    v32 = v50;
    if (v30)
    {
      v33 = v49;
      sub_100003E50(&off_1002B70B0, v49);
      v34 = v30;
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v56 = v28;
        v39 = v38;
        *v37 = 138412290;
        *(v37 + 4) = v34;
        *v38 = v30;
        v40 = v34;
        _os_log_impl(&_mh_execute_header, v35, v36, "Set current location to %@.", v37, 0xCu);
        sub_1000157F0(v39, &unk_1002D7190, &qword_10024B0F0);
        v28 = v56;

        v33 = v49;
      }

      (v28)(v33, v27);
      v41 = *(*v1 + 488);
      v42 = v34;
      v41(v30);
    }

    v43 = (*(*v1 + 416))(v31);
    sub_100164AEC(0, &qword_1002D6640, OS_dispatch_queue_ptr);
    v44 = static OS_dispatch_queue.main.getter();
    v45 = swift_allocObject();
    *(v45 + 16) = v43;
    *(v45 + 24) = v1;
    aBlock[4] = sub_1001B87D8;
    aBlock[5] = v45;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001A9DAC;
    aBlock[3] = &unk_1002B6F20;
    v46 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v58 = _swiftEmptyArrayStorage;
    sub_1001B840C(&qword_1002D71A8, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100164A3C(&qword_1002D71B0, &qword_10024B0F8);
    sub_10017F314(&qword_1002D71B8, &qword_1002D71B0, &qword_10024B0F8, &protocol conformance descriptor for [A]);
    v47 = v51;
    v48 = v53;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v46);

    (*(v55 + 8))(v47, v48);
    (*(v54 + 8))(v32, v52);
  }
}

uint64_t sub_1001A9928(uint64_t a1, double a2)
{
  v4 = sub_100164A3C(&qword_1002D7180, &qword_10024ABF0);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);

  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = &protocol witness table for MainActor;
  *(v9 + 32) = a2;
  *(v9 + 40) = a1;
  sub_100176B80(0, 0, v6, &unk_10024BA78, v9);
}

uint64_t sub_1001A9ACC(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 72) = a5;
  *(v5 + 64) = a1;
  type metadata accessor for MainActor();
  *(v5 + 80) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v5 + 88) = v7;
  *(v5 + 96) = v6;

  return _swift_task_switch(sub_1001A9B68, v7, v6);
}

uint64_t sub_1001A9B68()
{
  v1 = *(v0 + 9);
  v2 = v0[8];
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  swift_weakInit();
  *(v0 + 6) = sub_100019228;
  *(v0 + 7) = v4;
  *(v0 + 2) = _NSConcreteStackBlock;
  *(v0 + 3) = 1107296256;
  *(v0 + 4) = sub_1000191C0;
  *(v0 + 5) = &unk_1002B7690;
  v5 = _Block_copy(v0 + 2);

  *(v0 + 13) = [v3 scheduledTimerWithTimeInterval:1 repeats:v5 block:v2];
  _Block_release(v5);
  v6 = *v1 + 648;
  v0[14] = *v6;
  *(v0 + 15) = v6 & 0xFFFFFFFFFFFFLL | 0xD4E3000000000000;

  return _swift_task_switch(sub_1001A9CD4, v1, 0);
}

uint64_t sub_1001A9CD4()
{
  (*(v0 + 112))(*(v0 + 104));
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return _swift_task_switch(sub_1001A9D40, v1, v2);
}

uint64_t sub_1001A9D40()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001A9DAC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_1001A9DF0(uint64_t a1)
{
  v4 = *v1;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1001A9F0C()
{
  v1 = *(*v0 + 2032);

  return _swift_task_switch(sub_1001AA038, v1, 0);
}

void sub_1001AA038()
{
  v189 = v0;
  v1 = *(v0 + 2016);
  *(v0 + 2688) = v1;
  v2 = v1;
  v3 = *(v1 + 16);
  *(v0 + 2704) = v3;
  if (v3)
  {
    v4 = *(v0 + 2496);
    v5 = *(*(v0 + 2376) + 80);
    *(v0 + 3176) = v5;
    *(v0 + 3180) = enum case for PrivateServicePrediction.ServicePredictionType.lowSignalStrength(_:);
    *(v0 + 3184) = enum case for PrivateServicePrediction.ServicePredictionSource.userDataLearning(_:);
    *(v0 + 3188) = enum case for PrivateServicePrediction.ServicePredictionType.noCellularDataService(_:);
    *(v0 + 2752) = _swiftEmptyArrayStorage;
    *(v0 + 2744) = _swiftEmptyArrayStorage;
    *(v0 + 2712) = 0u;
    *(v0 + 2728) = 0u;
    if (*(v1 + 16))
    {
      sub_1001B87F8(v1 + ((v5 + 32) & ~v5), v4, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
      v6 = *(v4 + 16);
      *(v0 + 3220) = v6;
      v7 = qword_10024BA90[v6];
      v8 = qword_10024BB28[v6];
      v9 = qword_10024BBC0[v6];
      v10 = qword_10024BC58[v6];
      v11 = qword_10024BCF0[v6];
      v12 = qword_10024BD88[v6];
      v13 = qword_10024BE20[v6];
      v14 = qword_10024BEB8[v6];
      v15 = qword_10024BF50[v6];
      v16 = qword_10024BFE8[v6];
      v17 = qword_10024C080[v6];
      v18 = qword_10024C118[v6];
      v19 = qword_10024C1B0[v6];
      v20 = qword_10024C248[v6];
      v21 = qword_10024C2E0[v6];
      v22 = qword_10024C378[v6];
      v23 = qword_10024C410[v6];
      *(v0 + 2976) = qword_10024C4A8[v6];
      *(v0 + 2968) = v23;
      *(v0 + 2960) = v22;
      *(v0 + 2952) = v21;
      *(v0 + 2944) = v20;
      *(v0 + 2936) = v19;
      *(v0 + 2928) = v18;
      *(v0 + 2920) = v17;
      *(v0 + 2912) = v16;
      *(v0 + 2904) = v15;
      *(v0 + 2896) = v14;
      *(v0 + 2888) = v13;
      *(v0 + 2880) = v12;
      *(v0 + 2872) = v11;
      *(v0 + 2864) = v10;
      *(v0 + 2856) = v9;
      *(v0 + 2848) = v8;
      *(v0 + 2840) = v7;
      *(v0 + 2832) = v16;
      *(v0 + 2824) = v15;
      *(v0 + 2816) = v14;
      *(v0 + 2808) = v13;
      *(v0 + 2800) = v12;
      *(v0 + 2792) = v11;
      *(v0 + 2784) = v10;
      *(v0 + 2776) = v9;
      *(v0 + 2768) = v8;
      *(v0 + 2760) = v7;
      v24 = *(v0 + 2496);
      v25 = *(v0 + 2488);
      sub_100003E50(&off_1002B70B0, *(v0 + 2632));
      sub_1001B87F8(v24, v25, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.debug.getter();
      v28 = os_log_type_enabled(v26, v27);
      v29 = *(v0 + 2648);
      v30 = *(v0 + 2632);
      v31 = *(v0 + 2512);
      v32 = *(v0 + 2488);
      if (v28)
      {
        v182 = *(v0 + 2648);
        v33 = swift_slowAlloc();
        v178 = v30;
        v34 = swift_slowAlloc();
        v188[0] = v34;
        *v33 = 136315138;
        sub_1001B840C(&qword_1002D71D8, 255, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry, &unk_10024B380);
        v35 = dispatch thunk of CustomStringConvertible.description.getter();
        v37 = v36;
        sub_1001B8860(v32, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
        v38 = sub_10017A8A8(v35, v37, v188);

        *(v33 + 4) = v38;
        _os_log_impl(&_mh_execute_header, v26, v27, "Fetching coverage tile for %s", v33, 0xCu);
        sub_100164B98(v34);

        v182(v178, v31);
      }

      else
      {

        sub_1001B8860(v32, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
        v29(v30, v31);
      }

      v62 = *(v0 + 2496);
      v63 = *(v0 + 1576);
      v64 = *(v0 + 1584);
      sub_100014E1C((v0 + 1552), v63);
      v65 = *v62;
      *(v0 + 2984) = *v62;
      v66 = v62[1];
      *(v0 + 2992) = v66;
      v184 = (*(v64 + 8) + **(v64 + 8));
      v67 = swift_task_alloc();
      *(v0 + 3000) = v67;
      *v67 = v0;
      v67[1] = sub_1001AB868;
      v68 = v0 + 1592;
      v69.n128_u64[0] = v65;
      v70.n128_u64[0] = v66;
      goto LABEL_17;
    }

    __break(1u);
    goto LABEL_52;
  }

  *(v0 + 3008) = _swiftEmptyArrayStorage;
  v39 = *(v0 + 2032);
  v183 = *(*v39 + 432);
  v40 = v183();

  v41 = sub_100004814(v40, _swiftEmptyArrayStorage);

  v42 = *(v2 + 16);

  v43 = _swiftEmptyArrayStorage[2];
  v44 = v39[27];
  v45 = v39[28];
  sub_100014E1C(v39 + 24, v44);
  *(v0 + 1736) = &_s25MapsSuggestionsFetchEventVN;
  *(v0 + 1744) = &off_1002B70F0;
  v46 = swift_allocObject();
  *(v0 + 1712) = v46;
  *(v46 + 16) = v42;
  *(v46 + 24) = v43;
  *(v46 + 40) = 0;
  *(v46 + 48) = 0;
  *(v46 + 32) = 0;
  *(v46 + 56) = (v41 & 1) == 0;
  *(v46 + 57) = *(v0 + 3212);
  *(v46 + 60) = *(v0 + 3215);
  *(v46 + 64) = 0u;
  *(v46 + 80) = 0u;
  *(v46 + 96) = 0u;
  *(v46 + 112) = 0u;
  *(v46 + 128) = 0u;
  *(v46 + 144) = 0u;
  *(v46 + 160) = 0u;
  *(v46 + 176) = 0u;
  *(v46 + 192) = 0u;
  (*(v45 + 8))(0xD00000000000002DLL, 0x800000010025CBE0, v0 + 1712, v44, v45);
  sub_100164B98((v0 + 1712));
  if ((v41 & 1) == 0)
  {
    sub_100003E50(&off_1002B70B0, *(v0 + 2536));

    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();

    v49 = os_log_type_enabled(v47, v48);
    v50 = *(v0 + 2536);
    v51 = *(v0 + 2520);
    v52 = *(v0 + 2512);
    if (v49)
    {
      v175 = *(v0 + 2536);
      v53 = swift_slowAlloc();
      v188[0] = swift_slowAlloc();
      *v53 = 136315394;
      v183();
      v54 = Array.description.getter();
      v56 = v55;

      v57 = sub_10017A8A8(v54, v56, v188);

      *(v53 + 4) = v57;
      *(v53 + 12) = 2080;

      v58 = Array.description.getter();
      v60 = v59;

      v61 = sub_10017A8A8(v58, v60, v188);

      *(v53 + 14) = v61;
      _os_log_impl(&_mh_execute_header, v47, v48, "Updating service predictions from %s suggestions to %s", v53, 0x16u);
      swift_arrayDestroy();

      (*(v51 + 8))(v175, v52);
    }

    else
    {

      (*(v51 + 8))(v50, v52);
    }

    v71 = *(v0 + 2032);
    v72 = *(*v71 + 440);

    v74 = v72(v73);
    v75 = (*(*v71 + 384))(v74);
    *(v0 + 3016) = v75;
    if (v75)
    {
      v77 = v76;
      ObjectType = swift_getObjectType();
      v79 = *(v77 + 8);

      v179 = v79 + *v79;
      v80 = swift_task_alloc();
      *(v0 + 3024) = v80;
      *v80 = v0;
      v80[1] = sub_1001AFD64;
      v81 = ObjectType;
      v82 = v77;
      v83 = v179;

LABEL_14:
      v83(_swiftEmptyArrayStorage, v81, v82);
      return;
    }
  }

  v84 = *(v0 + 2696);
  v85 = *(v84 + 16);
  *(v0 + 3032) = v85;
  if (v85)
  {
    v86 = *(v0 + 2136);
    v87 = *(v0 + 2120);
    v88 = *(v0 + 2112);
    v89 = *(v0 + 2032);
    v90 = v88[11];
    *(v0 + 3192) = v90;
    v91 = v88[12];
    *(v0 + 3196) = v91;
    *(v0 + 3200) = v88[8];
    *(v0 + 3204) = v88[9];
    v92 = *v89;
    *(v0 + 3040) = *(*v89 + 744);
    *(v0 + 3048) = (v92 + 744) & 0xFFFFFFFFFFFFLL | 0x46AA000000000000;
    LODWORD(v88) = *(v87 + 80);
    *(v0 + 3208) = v88;
    *(v0 + 3056) = *(v87 + 72);
    *(v0 + 3072) = _swiftEmptyArrayStorage;
    *(v0 + 3064) = 0;
    sub_1001B87F8(v84 + ((v88 + 32) & ~v88), v86, type metadata accessor for MapsSuggestionController.UpcomingFlightPrediction);
    v63 = *(v0 + 1576);
    v64 = *(v0 + 1584);
    sub_100014E1C((v0 + 1552), v63);
    v93 = *(v86 + v90);
    *(v0 + 3080) = v93;
    v94 = *(v86 + v91);
    *(v0 + 3088) = v94;
    v184 = (*(v64 + 8) + **(v64 + 8));
    v95 = swift_task_alloc();
    *(v0 + 3096) = v95;
    *v95 = v0;
    v95[1] = sub_1001B0D6C;
    v68 = v0 + 1752;
    v69.n128_u64[0] = v93;
    v70.n128_u64[0] = v94;
LABEL_17:

    v184(v68, v63, v64, v69, v70);
    return;
  }

  *(v0 + 3152) = _swiftEmptyArrayStorage;
  v97 = (*(**(v0 + 2032) + 384))(v96);
  *(v0 + 3160) = v97;
  if (v97)
  {
    v99 = v98;
    v100 = swift_getObjectType();
    v185 = (*(v99 + 16) + **(v99 + 16));
    v101 = swift_task_alloc();
    *(v0 + 3168) = v101;
    *v101 = v0;
    v101[1] = sub_1001B225C;
    v81 = v100;
    v82 = v99;
    v83 = v185;

    goto LABEL_14;
  }

  if (*(v0 + 3219) == 1)
  {
    v102 = *(v0 + 2352);
    v103 = *(v0 + 2336);
    v104 = *(v0 + 2328);
    v105 = *(v0 + 2320);
    v106 = *(v0 + 2032);
    v107 = Date.init()();
    v108 = (*(*v106 + 576))(v107);
    v109 = (*v106 + 416);
    v110 = *v109;
    v111 = v108 / (*v109)();
    v112 = (*(v104 + 16))(v102, v103, v105);
    (v110)(v112);
    v113 = DateInterval.init(start:duration:)();
    v114 = (*v106 + 552);
    v115 = *v114;
    (*v114)(v113);
    v116 = (*(*v106 + 504))();
    j_j___s10Foundation4DateVACycfC();
    sub_1001BDAF8(v116, v102);

    v117 = *(v104 + 8);
    v118 = v117(v102, v105);
    LOBYTE(v102) = (*(*v106 + 528))(v118);
    v180 = v115;
    v115();
    v119 = *(v0 + 2352);
    j_j___s10Foundation4DateVACycfC();
    if (v102)
    {
      sub_1001BD808(v119);
    }

    else
    {
      sub_1001BD980(v119);
    }

    v120 = *(v0 + 2352);
    v121 = *(v0 + 2320);

    v122 = v117(v120, v121);
    v123 = (v115)(v122);
    swift_beginAccess();
    v124 = *(v123 + 24);

    v126 = round((v111 - v124) / (v110)(v125) * 100.0);
    if ((*&v126 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    if (v126 <= -9.22337204e18)
    {
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    if (v126 >= 9.22337204e18)
    {
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    v115();
    v127 = sub_1001BDD78();

    (v180)(v128);
    v176 = sub_1001BDE54();

    (v180)(v129);
    v173 = sub_1001BDF30();

    (v180)(v130);
    v172 = sub_1001BE00C();

    (v180)(v131);
    v132 = sub_1001BE0CC();

    v134 = round(v111 * 100.0);
    if ((*&v134 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    if (v134 <= -9.22337204e18)
    {
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    if (v134 >= 9.22337204e18)
    {
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    v135 = (v110)(v133);
    if ((*&v135 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    if (v135 <= -9.22337204e18)
    {
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    v170 = v132;
    v171 = v110;
    v174 = v117;
    if (v135 >= 9.22337204e18)
    {
LABEL_60:
      __break(1u);
      return;
    }

    v169 = *(v0 + 3008);
    v136 = *(v0 + 2352);
    v168 = *(v0 + 2320);
    v137 = *(v0 + 2032);
    v138 = v135;
    v139 = v137[27];
    v140 = v137[28];
    sub_100014E1C(v137 + 24, v139);
    *(v0 + 1856) = &_s39MapsSuggestionsPredictedPercentageMatchVN;
    *(v0 + 1864) = &off_1002B7100;
    v141 = swift_allocObject();
    *(v0 + 1832) = v141;
    v141[2] = v127;
    v141[3] = v176;
    v141[4] = v173;
    v141[5] = v172;
    v141[6] = v170;
    v141[7] = v134;
    v141[8] = v126;
    v141[9] = v138;
    (*(v140 + 8))(0xD000000000000040, 0x800000010025CC10, v0 + 1832, v139, v140);
    v142 = sub_100164B98((v0 + 1832));
    (v180)(v142);
    j_j___s10Foundation4DateVACycfC();
    sub_1001BE18C(v136);

    v143 = v117(v136, v168);
    v144 = *(v169 + 16);
    if (v144)
    {
      v145 = *(v0 + 2256);
      v146 = *(v0 + 2064);
      v147 = *(v0 + 3008) + ((*(v145 + 80) + 32) & ~*(v145 + 80));
      v148 = (v146 + 8);
      v181 = (v146 + 48);
      v186 = *(v145 + 72);
      v177 = (v146 + 32);

      v149 = 0.0;
      do
      {
        v154 = *(v0 + 2264);
        v155 = *(v0 + 2072);
        v156 = *(v0 + 2056);
        v157 = *(v0 + 2048);
        sub_1001B87F8(v147, v154, type metadata accessor for InternalServicePrediction);
        PrivateServicePrediction.predictedStartTime.getter();
        PrivateServicePrediction.predictedDuration.getter();
        sub_1001B8860(v154, type metadata accessor for InternalServicePrediction);
        DateInterval.init(start:duration:)();
        DateInterval.intersection(with:)();
        v158 = *v148;
        (*v148)(v155, v156);
        if ((*v181)(v157, 1, v156) == 1)
        {
          sub_1000157F0(*(v0 + 2048), &qword_1002D71C0, &qword_10024B118);
        }

        else
        {
          v150 = *(v0 + 2080);
          v151 = *(v0 + 2056);
          (*v177)(v150, *(v0 + 2048), v151);
          DateInterval.duration.getter();
          v153 = v152;
          v158(v150, v151);
          v149 = v149 + v153;
        }

        v147 += v186;
        --v144;
      }

      while (v144);
    }

    else
    {
      v149 = 0.0;
    }

    v159 = *(v0 + 2336);
    v160 = *(v0 + 2320);
    v161 = *(v0 + 2088);
    v162 = *(v0 + 2064);
    v163 = *(v0 + 2056);
    v164 = *(v0 + 2032);
    v165.n128_f64[0] = (v171)(v143);
    if (v165.n128_f64[0] >= v149)
    {
      v165.n128_f64[0] = v149;
    }

    (*(*v164 + 584))(v165);
    (*(v162 + 8))(v161, v163);
    v174(v159, v160);
  }

  v166 = *(v0 + 2504);
  v187 = *(v0 + 3008);

  sub_1000157F0(v166, &qword_1002D7178, &unk_10024B0C0);
  sub_100164B98((v0 + 1552));

  sub_100164B98((v0 + 1472));

  v167 = *(v0 + 8);

  v167(v187);
}

uint64_t sub_1001AB868()
{
  v1 = *(*v0 + 2032);

  return _swift_task_switch(sub_1001AB978, v1, 0);
}

uint64_t sub_1001AB978()
{
  v624 = v0;
  sub_10001A718(v0 + 1592, v0 + 1672, &qword_1002D71D0, &qword_10024AE20);
  if (!*(v0 + 1696))
  {
    v18 = *(v0 + 2544);
    v19 = *(v0 + 2496);
    v20 = *(v0 + 2384);
    sub_1000157F0(v0 + 1672, &qword_1002D71D0, &qword_10024AE20);
    sub_100003E50(&off_1002B70B0, v18);
    sub_1001B87F8(v19, v20, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();
    v23 = os_log_type_enabled(v21, v22);
    v24 = *(v0 + 2648);
    v25 = *(v0 + 2544);
    v26 = *(v0 + 2512);
    v27 = *(v0 + 2496);
    v28 = *(v0 + 2384);
    if (v23)
    {
      v598 = *(v0 + 2648);
      v29 = swift_slowAlloc();
      v585 = v25;
      v30 = swift_slowAlloc();
      v623[0] = v30;
      *v29 = 136315138;
      sub_1001B840C(&qword_1002D71D8, 255, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry, &unk_10024B380);
      v31 = dispatch thunk of CustomStringConvertible.description.getter();
      v574 = v27;
      v33 = v32;
      sub_1001B8860(v28, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
      v34 = sub_10017A8A8(v31, v33, v623);

      *(v29 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v21, v22, "No coverage tile available for %s", v29, 0xCu);
      sub_100164B98(v30);

      v598(v585, v26);
      sub_1000157F0(v0 + 1592, &qword_1002D71D0, &qword_10024AE20);
      v35 = v574;
    }

    else
    {

      sub_1001B8860(v28, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
      v24(v25, v26);
      sub_1000157F0(v0 + 1592, &qword_1002D71D0, &qword_10024AE20);
      v35 = v27;
    }

    v65 = sub_1001B8860(v35, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
    v64 = *(v0 + 2752);
    v1 = *(v0 + 2744);
    v573 = *(v0 + 2728);
    goto LABEL_20;
  }

  v2 = *(v0 + 2728);
  sub_10001A700((v0 + 1672), v0 + 1632);
  if (__OFADD__(v2, 1))
  {
    __break(1u);
LABEL_188:
    __break(1u);
    goto LABEL_189;
  }

  v573 = (v2 + 1);
  v3 = *(v0 + 2496);
  v4 = *(v0 + 2480);
  sub_100003E50(&off_1002B70B0, *(v0 + 2624));
  sub_1001B87F8(v3, v4, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 2648);
  v9 = *(v0 + 2624);
  v10 = *(v0 + 2512);
  v11 = *(v0 + 2480);
  if (v7)
  {
    v12 = swift_slowAlloc();
    v597 = v8;
    v13 = swift_slowAlloc();
    v623[0] = v13;
    *v12 = 136315138;
    sub_1001B840C(&qword_1002D71D8, 255, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry, &unk_10024B380);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    sub_1001B8860(v11, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
    v17 = sub_10017A8A8(v14, v16, v623);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v5, v6, "Have coverage tile for %s", v12, 0xCu);
    sub_100164B98(v13);

    v597(v9, v10);
  }

  else
  {

    sub_1001B8860(v11, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
    v8(v9, v10);
  }

  Date.init()();
  sub_1001B840C(&qword_1002D71E0, 255, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v36 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v37 = *(v0 + 3220);
  if (v36)
  {
    v36 = dispatch thunk of static Comparable.<= infix(_:_:)();
    if (v37 == 12)
    {
      v38 = *(v0 + 3220);
      goto LABEL_13;
    }

    if (v36)
    {
      sub_100003E50(&off_1002B70B0, *(v0 + 2600));
      v66 = Logger.logObject.getter();
      v67 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        *v68 = 0;
        _os_log_impl(&_mh_execute_header, v66, v67, "Entry duration is in current window.", v68, 2u);
      }

      v69 = *(v0 + 2648);
      v70 = *(v0 + 2600);
      v71 = *(v0 + 2512);

      v36 = v69(v70, v71);
      v72 = 1;
LABEL_26:
      v73 = (*(**(v0 + 2032) + 480))(v36);
      if (v73)
      {
        v74 = v73;
        if (v72)
        {
          v75 = *(v0 + 2656);
          v76 = [objc_allocWithZone(CLLocation) initWithLatitude:*(v0 + 2984) longitude:*(v0 + 2992)];
          [v74 distanceFromLocation:v76];
          v78 = v77;

          v75();
          if (*(v0 + 680) < v78)
          {
            v79 = *(v0 + 2496);
            v80 = *(v0 + 2456);
            v81 = *(v0 + 2448);
            v82 = *(v0 + 2440);
            sub_100003E50(&off_1002B70B0, *(v0 + 2592));
            sub_1001B87F8(v79, v80, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
            sub_1001B87F8(v79, v81, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
            sub_1001B87F8(v79, v82, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
            v83 = Logger.logObject.getter();
            v84 = static os_log_type_t.debug.getter();
            v85 = os_log_type_enabled(v83, v84);
            v587 = *(v0 + 2592);
            v599 = *(v0 + 2648);
            v576 = *(v0 + 2512);
            v610 = *(v0 + 2496);
            v86 = *(v0 + 2456);
            v87 = *(v0 + 2448);
            v88 = *(v0 + 2440);
            if (v85)
            {
              v558 = *(v0 + 2328);
              v566 = *(v0 + 2360);
              v89 = *(v0 + 2320);
              v90 = swift_slowAlloc();
              v623[0] = swift_slowAlloc();
              *v90 = 136315650;
              sub_1001B840C(&qword_1002D71D8, 255, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry, &unk_10024B380);
              v91 = dispatch thunk of CustomStringConvertible.description.getter();
              v539 = v84;
              v93 = v92;
              sub_1001B8860(v86, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
              v94 = sub_10017A8A8(v91, v93, v623);

              *(v90 + 4) = v94;
              *(v90 + 12) = 2080;
              sub_1001B840C(&qword_1002D5B88, 255, &type metadata accessor for Date, &protocol conformance descriptor for Date);
              v95 = dispatch thunk of CustomStringConvertible.description.getter();
              v97 = v96;
              sub_1001B8860(v87, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
              v98 = sub_10017A8A8(v95, v97, v623);

              *(v90 + 14) = v98;
              *(v90 + 22) = 2080;
              v99 = dispatch thunk of CustomStringConvertible.description.getter();
              v101 = v100;
              sub_1001B8860(v88, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
              v102 = sub_10017A8A8(v99, v101, v623);

              *(v90 + 24) = v102;
              _os_log_impl(&_mh_execute_header, v83, v539, "Skipping %s as it is too far from the last location. %s %s", v90, 0x20u);
              swift_arrayDestroy();

              v599(v587, v576);
              (*(v558 + 8))(v566, v89);
            }

            else
            {
              v411 = *(v0 + 2360);
              v412 = *(v0 + 2328);
              v413 = *(v0 + 2320);

              sub_1001B8860(v88, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
              sub_1001B8860(v87, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
              sub_1001B8860(v86, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
              v599(v587, v576);
              (*(v412 + 8))(v411, v413);
            }

            sub_1000157F0(v0 + 1592, &qword_1002D71D0, &qword_10024AE20);
            sub_1001B8860(v610, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
            v65 = sub_100164B98((v0 + 1632));
            v64 = *(v0 + 2752);
            v1 = *(v0 + 2744);
LABEL_20:
            v557 = *(v0 + 2712);
            v565 = *(v0 + 2720);
            goto LABEL_72;
          }
        }
      }

      v118 = *(v0 + 2032);
      v119 = *(v0 + 1656);
      v120 = *(v0 + 1664);
      sub_100014E1C((v0 + 1632), v119);
      v121 = (*(v120 + 56))(v119, v120);
      v122 = *(*v118 + 408);
      if (v122() >= v121)
      {
        v141 = *(v0 + 1656);
        v142 = *(v0 + 1664);
        sub_100014E1C((v0 + 1632), v141);
        v143 = (*(v142 + 64))(v141, v142);
        if ((v144 & 1) != 0 || (v225 = v143, v226 = *(v0 + 3220), v227 = (*(**(v0 + 2032) + 424))(), v226 < 2) || v225 >= v227)
        {
          v145 = *(v0 + 2496);
          v146 = *(v0 + 2400);
          v147 = *(v0 + 2392);
          sub_100003E50(&off_1002B70B0, *(v0 + 2552));
          sub_1001B87F8(v145, v146, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
          sub_1001B87F8(v145, v147, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
          sub_100164B34(v0 + 1632, v0 + 1872);
          sub_100164B34(v0 + 1632, v0 + 1912);

          v148 = Logger.logObject.getter();
          v149 = static os_log_type_t.debug.getter();
          v150 = os_log_type_enabled(v148, v149);
          v567 = *(v0 + 2512);
          v151 = *(v0 + 2496);
          v152 = *(v0 + 2400);
          v153 = *(v0 + 2392);
          v601 = *(v0 + 2360);
          v612 = *(v0 + 2648);
          v154 = *(v0 + 2328);
          v578 = *(v0 + 2552);
          v588 = *(v0 + 2320);
          v155 = *(v0 + 2032);
          if (!v150)
          {
            sub_100164B98((v0 + 1912));

            sub_1001B8860(v153, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
            sub_1001B8860(v152, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
            v612(v578, v567);
            (*(v154 + 8))(v601, v588);
            sub_1000157F0(v0 + 1592, &qword_1002D71D0, &qword_10024AE20);
            sub_1001B8860(v151, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
            sub_100164B98((v0 + 1872));
LABEL_69:
            v64 = *(v0 + 2752);
            v1 = *(v0 + 2744);
            goto LABEL_70;
          }

          v544 = v148;
          v156 = swift_slowAlloc();
          *v156 = 134219264;
          v157 = *v152;
          sub_1001B8860(v152, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
          *(v156 + 4) = v157;
          *(v156 + 12) = 2048;
          v158 = *(v153 + 8);
          v159 = sub_1001B8860(v153, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
          *(v156 + 14) = v158;
          *(v156 + 22) = 2048;
          *(v156 + 24) = (v122)(v159);
          *(v156 + 32) = 2048;
          v160 = *(v0 + 1896);
          v161 = v149;
          v162 = *(v0 + 1904);
          sub_100014E1C((v0 + 1872), v160);
          v163 = (*(v162 + 56))(v160, v162);
          v164 = sub_100164B98((v0 + 1872));
          *(v156 + 34) = v163;
          *(v156 + 42) = 2048;
          *(v156 + 44) = (*(*v155 + 424))(v164);

          *(v156 + 52) = 2048;
          v165 = *(v0 + 1936);
          v166 = *(v0 + 1944);
          sub_100014E1C((v0 + 1912), v165);
          v167 = (*(v166 + 64))(v165, v166);
          if (v168)
          {
            v169 = 0;
          }

          else
          {
            v169 = v167;
          }

          sub_100164B98((v0 + 1912));
          *(v156 + 54) = v169;
          _os_log_impl(&_mh_execute_header, v544, v161, "Entry location %f, %f does not meet threshold %f for OOS %f and threshold %ld rsrp %ld", v156, 0x3Eu);

          v612(v578, v567);
          (*(v154 + 8))(v601, v588);
          sub_1000157F0(v0 + 1592, &qword_1002D71D0, &qword_10024AE20);
          v170 = v151;
LABEL_68:
          sub_1001B8860(v170, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
          goto LABEL_69;
        }

        v228 = *(v0 + 2496);
        v229 = *(v0 + 2416);
        sub_100003E50(&off_1002B70B0, *(v0 + 2568));
        sub_1001B87F8(v228, v229, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
        v230 = Logger.logObject.getter();
        v231 = static os_log_type_t.debug.getter();
        v232 = os_log_type_enabled(v230, v231);
        v233 = *(v0 + 2648);
        v234 = *(v0 + 2568);
        v235 = *(v0 + 2512);
        v236 = *(v0 + 2416);
        if (v232)
        {
          v591 = *(v0 + 2568);
          v237 = swift_slowAlloc();
          v581 = v235;
          v238 = swift_slowAlloc();
          v623[0] = v238;
          *v237 = 136315394;
          sub_1001B840C(&qword_1002D71D8, 255, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry, &unk_10024B380);
          v239 = dispatch thunk of CustomStringConvertible.description.getter();
          v569 = v233;
          v241 = v240;
          sub_1001B8860(v236, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
          v242 = sub_10017A8A8(v239, v241, v623);

          *(v237 + 4) = v242;
          *(v237 + 12) = 2048;
          *(v237 + 14) = v225;
          _os_log_impl(&_mh_execute_header, v230, v231, "Created low signal strength prediction for %s with rsrp %ld", v237, 0x16u);
          sub_100164B98(v238);

          v569(v591, v581);
        }

        else
        {

          sub_1001B8860(v236, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
          v233(v234, v235);
        }

        v414 = *(v0 + 3184);
        v517 = *(v0 + 3180);
        v554 = *(v0 + 2656);
        v527 = *(v0 + 2496);
        v415 = *(v0 + 2368);
        v584 = v415;
        v416 = *(v0 + 2352);
        v417 = *(v0 + 2328);
        v522 = *(v0 + 2320);
        v594 = *(v0 + 2280);
        v572 = *(v0 + 2240);
        v532 = *(v0 + 2216);
        v418 = *(v0 + 2200);
        v507 = *(v0 + 2192);
        v419 = *(v0 + 2184);
        v420 = *(v0 + 2168);
        v502 = *(v0 + 2160);
        v421 = *(v0 + 2032);
        v512 = *(v418 + 104);
        v534 = *(v0 + 3220);
        v512();
        (*(v420 + 104))(v419, v414, v502);
        (*(v417 + 16))(v416, v527 + *(v415 + 32), v522);
        Date.timeIntervalSinceReferenceDate.getter();
        Date.timeIntervalSinceReferenceDate.getter();
        (v512)(v532, v517, v507);
        (*(*v421 + 248))(v532, v534);
        v422 = (*(v418 + 8))(v532, v507);
        v423 = v554(v422);
        v554(v423);
        PrivateServicePrediction.ConfidenceScore.init(predictionConfidence:startTimeConfidence:durationConfidence:)();
        PrivateServicePrediction.init(type:source:predictedStartTime:predictedDuration:confidenceScore:)();
        v424 = sub_1001B6D9C(v534);
        v426 = v425;
        XPCEventPublisher.Token.rawValue.getter();
        v428 = v427;
        v430 = v429;
        v431 = sub_1001B7278(*(v527 + 17));
        sub_100162DE0(v572, v424, v426, v428, v430, 0, 0, 1, v594, 0, 1, v431, v432, *(v527 + *(v584 + 40)));
        PrivateServicePrediction.predictedDuration.getter();
        if (v433 > 0.0)
        {
          sub_1001B87F8(*(v0 + 2280), *(v0 + 2272), type metadata accessor for InternalServicePrediction);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v216 = *(v0 + 2752);
          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_156;
          }

          goto LABEL_212;
        }

        v443 = *(v0 + 2496);
        v444 = *(v0 + 2408);
        sub_100003E50(&off_1002B70B0, *(v0 + 2560));
        sub_1001B87F8(v443, v444, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
        v245 = Logger.logObject.getter();
        v246 = static os_log_type_t.info.getter();
        v445 = os_log_type_enabled(v245, v246);
        v248 = *(v0 + 2648);
        v603 = *(v0 + 2512);
        v615 = *(v0 + 2560);
        v249 = *(v0 + 2496);
        v250 = *(v0 + 2408);
        if (v445)
        {
          v582 = *(v0 + 2496);
          v251 = *(v0 + 2328);
          v561 = *(v0 + 2320);
          v570 = *(v0 + 2360);
          v552 = *(v0 + 2280);
          v252 = swift_slowAlloc();
          v548 = v248;
          v253 = swift_slowAlloc();
          v623[0] = v253;
          *v252 = 136315138;
          sub_1001B840C(&qword_1002D71D8, 255, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry, &unk_10024B380);
          v446 = dispatch thunk of CustomStringConvertible.description.getter();
          v448 = v447;
          sub_1001B8860(v250, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
          v449 = sub_10017A8A8(v446, v448, v623);

          *(v252 + 4) = v449;
          v258 = "Not adding RSRP prediction as duration is not > 0 for %s";
          goto LABEL_64;
        }

        v259 = *(v0 + 2360);
        v260 = *(v0 + 2328);
        v261 = *(v0 + 2320);
        v262 = *(v0 + 2280);
      }

      else
      {
        v123 = *(v0 + 2496);
        v124 = *(v0 + 2432);
        sub_100003E50(&off_1002B70B0, *(v0 + 2584));
        sub_1001B87F8(v123, v124, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
        sub_100164B34(v0 + 1632, v0 + 1952);
        v125 = Logger.logObject.getter();
        v126 = static os_log_type_t.debug.getter();
        v127 = os_log_type_enabled(v125, v126);
        v128 = *(v0 + 2648);
        v129 = *(v0 + 2584);
        v130 = *(v0 + 2512);
        v131 = *(v0 + 2432);
        if (v127)
        {
          v132 = swift_slowAlloc();
          v577 = v128;
          v133 = swift_slowAlloc();
          v623[0] = v133;
          *v132 = 136315394;
          sub_1001B840C(&qword_1002D71D8, 255, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry, &unk_10024B380);
          v134 = dispatch thunk of CustomStringConvertible.description.getter();
          v136 = v135;
          sub_1001B8860(v131, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
          v137 = sub_10017A8A8(v134, v136, v623);

          *(v132 + 4) = v137;
          *(v132 + 12) = 2048;
          v138 = *(v0 + 1976);
          v139 = *(v0 + 1984);
          sub_100014E1C((v0 + 1952), v138);
          v140 = (*(v139 + 56))(v138, v139);
          sub_100164B98((v0 + 1952));
          *(v132 + 14) = v140;
          _os_log_impl(&_mh_execute_header, v125, v126, "Created no cellular data service prediction for %s with out of service rate %f", v132, 0x16u);
          sub_100164B98(v133);

          v577(v129, v130);
        }

        else
        {

          sub_1001B8860(v131, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
          v128(v129, v130);
          sub_100164B98((v0 + 1952));
        }

        v514 = *(v0 + 3188);
        v188 = *(v0 + 3184);
        v535 = *(v0 + 2656);
        v590 = *(v0 + 2496);
        v189 = *(v0 + 2368);
        v568 = v189;
        v190 = *(v0 + 2344);
        v191 = *(v0 + 2328);
        v519 = *(v0 + 2320);
        v580 = *(v0 + 2296);
        v524 = *(v0 + 2224);
        v560 = *(v0 + 2232);
        v192 = *(v0 + 2200);
        v504 = *(v0 + 2192);
        v193 = *(v0 + 2176);
        v194 = *(v0 + 2168);
        v500 = *(v0 + 2160);
        v195 = *(v0 + 2032);
        v509 = *(v192 + 104);
        v529 = *(v0 + 3220);
        v509();
        (*(v194 + 104))(v193, v188, v500);
        (*(v191 + 16))(v190, v590 + *(v189 + 32), v519);
        Date.timeIntervalSinceReferenceDate.getter();
        Date.timeIntervalSinceReferenceDate.getter();
        (v509)(v524, v514, v504);
        (*(*v195 + 248))(v524, v529);
        v196 = (*(v192 + 8))(v524, v504);
        v535(v196);
        v197 = *(v0 + 1656);
        v198 = *(v0 + 1664);
        sub_100014E1C((v0 + 1632), v197);
        (*(v198 + 56))(v197, v198);
        PrivateServicePrediction.ConfidenceScore.init(predictionConfidence:startTimeConfidence:durationConfidence:)();
        PrivateServicePrediction.init(type:source:predictedStartTime:predictedDuration:confidenceScore:)();
        v199 = sub_1001B6D9C(v529);
        v201 = v200;
        XPCEventPublisher.Token.rawValue.getter();
        v203 = v202;
        v205 = v204;
        v206 = *(v0 + 1656);
        v207 = *(v0 + 1664);
        sub_100014E1C((v0 + 1632), v206);
        v208 = (*(v207 + 56))(v206, v207);
        v209 = *(v0 + 1656);
        v210 = *(v0 + 1664);
        sub_100014E1C((v0 + 1632), v209);
        v211 = (*(v210 + 72))(v209, v210);
        v212 = sub_1001B7278(*(v590 + 17));
        sub_100162DE0(v560, v199, v201, v203, v205, 0, v208, 0, v580, v211, 0, v212, v213, *(v590 + *(v568 + 40)));
        PrivateServicePrediction.predictedDuration.getter();
        if (v214 > 0.0)
        {
          sub_1001B87F8(*(v0 + 2296), *(v0 + 2288), type metadata accessor for InternalServicePrediction);
          v215 = swift_isUniquelyReferenced_nonNull_native();
          v216 = *(v0 + 2752);
          if ((v215 & 1) == 0)
          {
            v216 = sub_1001B77F0(0, v216[2] + 1, 1, *(v0 + 2752), &qword_1002D79B0, &qword_10024BA20, type metadata accessor for InternalServicePrediction);
          }

          v218 = v216[2];
          v217 = v216[3];
          if (v218 >= v217 >> 1)
          {
            v216 = sub_1001B77F0((v217 > 1), v218 + 1, 1, v216, &qword_1002D79B0, &qword_10024BA20, type metadata accessor for InternalServicePrediction);
          }

          v614 = *(v0 + 2720);
          v219 = *(v0 + 2496);
          v220 = *(v0 + 2360);
          v221 = *(v0 + 2328);
          v222 = *(v0 + 2320);
          v223 = *(v0 + 2288);
          v224 = *(v0 + 2256);
          sub_1001B8860(*(v0 + 2296), type metadata accessor for InternalServicePrediction);
          (*(v221 + 8))(v220, v222);
          sub_1000157F0(v0 + 1592, &qword_1002D71D0, &qword_10024AE20);
          sub_1001B8860(v219, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
          v216[2] = v218 + 1;
          sub_1001B88C0(v223, v216 + ((*(v224 + 80) + 32) & ~*(v224 + 80)) + *(v224 + 72) * v218, type metadata accessor for InternalServicePrediction);
          v565 = v614 + 1;
          if (__OFADD__(v614, 1))
          {
            __break(1u);
LABEL_191:
            __break(1u);
LABEL_192:
            __break(1u);
LABEL_193:
            __break(1u);
LABEL_194:
            __break(1u);
            goto LABEL_195;
          }

          v557 = *(v0 + 2712);
          goto LABEL_57;
        }

        v243 = *(v0 + 2496);
        v244 = *(v0 + 2424);
        sub_100003E50(&off_1002B70B0, *(v0 + 2576));
        sub_1001B87F8(v243, v244, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
        v245 = Logger.logObject.getter();
        v246 = static os_log_type_t.info.getter();
        v247 = os_log_type_enabled(v245, v246);
        v248 = *(v0 + 2648);
        v603 = *(v0 + 2512);
        v615 = *(v0 + 2576);
        v249 = *(v0 + 2496);
        v250 = *(v0 + 2424);
        if (v247)
        {
          v582 = *(v0 + 2496);
          v251 = *(v0 + 2328);
          v561 = *(v0 + 2320);
          v570 = *(v0 + 2360);
          v552 = *(v0 + 2296);
          v252 = swift_slowAlloc();
          v548 = v248;
          v253 = swift_slowAlloc();
          v623[0] = v253;
          *v252 = 136315138;
          sub_1001B840C(&qword_1002D71D8, 255, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry, &unk_10024B380);
          v254 = dispatch thunk of CustomStringConvertible.description.getter();
          v256 = v255;
          sub_1001B8860(v250, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
          v257 = sub_10017A8A8(v254, v256, v623);

          *(v252 + 4) = v257;
          v258 = "Not adding OOS prediction as duration is not > 0 for %s";
LABEL_64:
          _os_log_impl(&_mh_execute_header, v245, v246, v258, v252, 0xCu);
          sub_100164B98(v253);

          v548(v615, v603);
          sub_1001B8860(v552, type metadata accessor for InternalServicePrediction);
          (*(v251 + 8))(v570, v561);
          sub_1000157F0(v0 + 1592, &qword_1002D71D0, &qword_10024AE20);
          v170 = v582;
          goto LABEL_68;
        }

        v259 = *(v0 + 2360);
        v260 = *(v0 + 2328);
        v261 = *(v0 + 2320);
        v262 = *(v0 + 2296);
      }

      sub_1001B8860(v250, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
      v248(v615, v603);
      sub_1001B8860(v262, type metadata accessor for InternalServicePrediction);
      (*(v260 + 8))(v259, v261);
      sub_1000157F0(v0 + 1592, &qword_1002D71D0, &qword_10024AE20);
      v170 = v249;
      goto LABEL_68;
    }

LABEL_25:
    v72 = 0;
    goto LABEL_26;
  }

  if (v37 != 12)
  {
    goto LABEL_25;
  }

  v38 = 12;
LABEL_13:
  v575 = v38;
  v513 = *(v0 + 3188);
  v39 = *(v0 + 3184);
  v546 = *(v0 + 2656);
  v523 = *(v0 + 2496);
  v40 = *(v0 + 2368);
  v564 = v40;
  v41 = *(v0 + 2352);
  v42 = *(v0 + 2328);
  v518 = *(v0 + 2320);
  v586 = *(v0 + 2312);
  v556 = *(v0 + 2240);
  v528 = *(v0 + 2216);
  v43 = *(v0 + 2200);
  v503 = *(v0 + 2192);
  v44 = *(v0 + 2184);
  v45 = *(v0 + 2168);
  v499 = *(v0 + 2160);
  v46 = *(v0 + 2032);
  v508 = *(v43 + 104);
  v508();
  (*(v45 + 104))(v44, v39, v499);
  (*(v42 + 16))(v41, v523 + *(v40 + 32), v518);
  Date.timeIntervalSinceReferenceDate.getter();
  Date.timeIntervalSinceReferenceDate.getter();
  (v508)(v528, v513, v503);
  (*(*v46 + 248))(v528, v575);
  v47 = (*(v43 + 8))(v528, v503);
  v48 = v546(v47);
  v546(v48);
  PrivateServicePrediction.ConfidenceScore.init(predictionConfidence:startTimeConfidence:durationConfidence:)();
  PrivateServicePrediction.init(type:source:predictedStartTime:predictedDuration:confidenceScore:)();
  v49 = sub_1001B6D9C(v575);
  v51 = v50;
  XPCEventPublisher.Token.rawValue.getter();
  v53 = v52;
  v55 = v54;
  v56 = sub_1001B7278(*(v523 + 17));
  sub_100162DE0(v556, v49, v51, v53, v55, 0, 0, 1, v586, 0, 1, v56, v57, *(v523 + *(v564 + 40)));
  PrivateServicePrediction.predictedDuration.getter();
  if (v58 > 0.0)
  {
    sub_1001B87F8(*(v0 + 2312), *(v0 + 2304), type metadata accessor for InternalServicePrediction);
    v59 = swift_isUniquelyReferenced_nonNull_native();
    v1 = *(v0 + 2752);
    if (v59)
    {
LABEL_15:
      v61 = v1[2];
      v60 = v1[3];
      if (v61 >= v60 >> 1)
      {
        v1 = sub_1001B77F0((v60 > 1), v61 + 1, 1, v1, &qword_1002D79B0, &qword_10024BA20, type metadata accessor for InternalServicePrediction);
      }

      v62 = *(v0 + 2304);
      v63 = *(v0 + 2256);
      v1[2] = v61 + 1;
      sub_1001B88C0(v62, v1 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v61, type metadata accessor for InternalServicePrediction);
      v64 = v1;
      goto LABEL_45;
    }

LABEL_189:
    v1 = sub_1001B77F0(0, v1[2] + 1, 1, v1, &qword_1002D79B0, &qword_10024BA20, type metadata accessor for InternalServicePrediction);
    goto LABEL_15;
  }

  v103 = *(v0 + 2496);
  v104 = *(v0 + 2472);
  sub_100003E50(&off_1002B70B0, *(v0 + 2616));
  sub_1001B87F8(v103, v104, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
  v105 = Logger.logObject.getter();
  v106 = static os_log_type_t.info.getter();
  v107 = os_log_type_enabled(v105, v106);
  v108 = *(v0 + 2648);
  v109 = *(v0 + 2616);
  v110 = *(v0 + 2512);
  v111 = *(v0 + 2472);
  if (v107)
  {
    v611 = *(v0 + 2648);
    v112 = swift_slowAlloc();
    v600 = v109;
    v113 = swift_slowAlloc();
    v623[0] = v113;
    *v112 = 136315138;
    sub_1001B840C(&qword_1002D71D8, 255, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry, &unk_10024B380);
    v114 = dispatch thunk of CustomStringConvertible.description.getter();
    v116 = v115;
    sub_1001B8860(v111, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
    v117 = sub_10017A8A8(v114, v116, v623);

    *(v112 + 4) = v117;
    _os_log_impl(&_mh_execute_header, v105, v106, "Not adding flight as duration is not > 0 for %s", v112, 0xCu);
    sub_100164B98(v113);

    v611(v600, v110);
  }

  else
  {

    sub_1001B8860(v111, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
    v108(v109, v110);
  }

  v64 = *(v0 + 2752);
  v1 = *(v0 + 2744);
LABEL_45:
  v171 = *(v0 + 2496);
  v172 = *(v0 + 2464);
  sub_100003E50(&off_1002B70B0, *(v0 + 2608));
  sub_1001B87F8(v171, v172, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
  v173 = Logger.logObject.getter();
  v174 = static os_log_type_t.debug.getter();
  v175 = os_log_type_enabled(v173, v174);
  v589 = *(v0 + 2608);
  v602 = *(v0 + 2648);
  v579 = *(v0 + 2512);
  v613 = *(v0 + 2496);
  v176 = *(v0 + 2464);
  if (v175)
  {
    v547 = *(v0 + 2328);
    v551 = *(v0 + 2320);
    v559 = *(v0 + 2360);
    v540 = *(v0 + 2312);
    v177 = v64;
    v178 = swift_slowAlloc();
    v179 = swift_slowAlloc();
    v623[0] = v179;
    *v178 = 136315138;
    sub_1001B840C(&qword_1002D71D8, 255, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry, &unk_10024B380);
    v180 = dispatch thunk of CustomStringConvertible.description.getter();
    v182 = v181;
    sub_1001B8860(v176, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
    v183 = sub_10017A8A8(v180, v182, v623);

    *(v178 + 4) = v183;
    _os_log_impl(&_mh_execute_header, v173, v174, "Created no cellular data service prediction for flight %s", v178, 0xCu);
    sub_100164B98(v179);

    v64 = v177;

    v602(v589, v579);
    sub_1001B8860(v540, type metadata accessor for InternalServicePrediction);
    (*(v547 + 8))(v559, v551);
  }

  else
  {
    v184 = *(v0 + 2360);
    v185 = *(v0 + 2328);
    v186 = *(v0 + 2320);
    v187 = *(v0 + 2312);

    sub_1001B8860(v176, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
    v602(v589, v579);
    sub_1001B8860(v187, type metadata accessor for InternalServicePrediction);
    (*(v185 + 8))(v184, v186);
  }

  sub_1000157F0(v0 + 1592, &qword_1002D71D0, &qword_10024AE20);
  sub_1001B8860(v613, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
LABEL_70:
  v557 = *(v0 + 2712);
  v565 = *(v0 + 2720);
  while (1)
  {
    v65 = sub_100164B98((v0 + 1632));
LABEL_72:
    v263 = *(v0 + 2736) + 1;
    v583 = *(v0 + 2968);
    v592 = *(v0 + 2960);
    v604 = *(v0 + 2976);
    v616 = *(v0 + 2952);
    v264 = *(v0 + 2928);
    v265 = *(v0 + 2920);
    v549 = *(v0 + 2944);
    v553 = *(v0 + 2936);
    if (v263 != *(v0 + 2704))
    {
      break;
    }

    v536 = *(v0 + 2760);
    v541 = *(v0 + 2768);
    *(v0 + 3008) = v1;
    v266 = *(v0 + 2688);
    v267 = *(v0 + 2032);
    v525 = v264;
    v530 = v265;
    v268 = (*v267 + 432);
    v269 = *v268;
    v515 = *(v0 + 2776);
    v520 = vextq_s8(*(v0 + 2824), *(v0 + 2824), 8uLL);
    v498 = v0 + 2776;
    v505 = *(v0 + 2792);
    v510 = vextq_s8(*(v0 + 2808), *(v0 + 2808), 8uLL);
    v270 = (*v268)(v65);

    v271 = sub_100004814(v270, v1);

    v272 = *(v266 + 16);

    v273 = v1[2];
    v274 = v267[27];
    v275 = v267[28];
    sub_100014E1C(v267 + 24, v274);
    *(v0 + 1736) = &_s25MapsSuggestionsFetchEventVN;
    *(v0 + 1744) = &off_1002B70F0;
    v276 = swift_allocObject();
    *(v0 + 1712) = v276;
    *(v276 + 16) = v272;
    *(v276 + 24) = v273;
    *(v276 + 32) = v573;
    *(v276 + 40) = v565;
    *(v276 + 48) = v557;
    *(v276 + 56) = (v271 & 1) == 0;
    *(v276 + 57) = *(v0 + 3212);
    *(v276 + 60) = *(v0 + 3215);
    *(v276 + 64) = v604;
    *(v276 + 72) = v583;
    *(v276 + 80) = v592;
    *(v276 + 88) = v616;
    *(v276 + 96) = v549;
    *(v276 + 104) = v553;
    *(v276 + 112) = v525;
    *(v276 + 120) = v530;
    *(v276 + 128) = v520;
    *(v276 + 144) = v510;
    *(v276 + 160) = vextq_s8(v505, v505, 8uLL);
    *(v276 + 176) = vextq_s8(v515, v515, 8uLL);
    *(v276 + 192) = v541;
    *(v276 + 200) = v536;
    (*(v275 + 8))(0xD00000000000002DLL, 0x800000010025CBE0, v0 + 1712, v274, v275);
    sub_100164B98((v0 + 1712));
    if ((v271 & 1) == 0)
    {
      v277 = v269;
      v278 = v1;
      sub_100003E50(&off_1002B70B0, *(v0 + 2536));

      v265 = Logger.logObject.getter();
      v279 = static os_log_type_t.default.getter();

      v280 = os_log_type_enabled(v265, v279);
      v281 = *(v0 + 2536);
      v282 = *(v0 + 2520);
      v216 = *(v0 + 2512);
      if (v280)
      {
        v617 = *(v0 + 2512);
        v593 = v279;
        v283 = swift_slowAlloc();
        v623[0] = swift_slowAlloc();
        *v283 = 136315394;
        v277();
        v605 = v281;
        v284 = Array.description.getter();
        v286 = v285;

        v287 = sub_10017A8A8(v284, v286, v623);

        *(v283 + 4) = v287;
        *(v283 + 12) = 2080;
        v288 = v1;

        v289 = Array.description.getter();
        v291 = v290;

        v292 = sub_10017A8A8(v289, v291, v623);

        *(v283 + 14) = v292;
        _os_log_impl(&_mh_execute_header, v265, v593, "Updating service predictions from %s suggestions to %s", v283, 0x16u);
        swift_arrayDestroy();

        (*(v282 + 8))(v605, v617);
      }

      else
      {
LABEL_81:

        (*(v282 + 8))(v281, v216);
        v288 = v278;
      }

      v323 = *(v0 + 2032);
      v324 = *(*v323 + 440);

      v326 = v324(v325);
      v327 = (*(*v323 + 384))(v326);
      *(v0 + 3016) = v327;
      if (v327)
      {
        v329 = v328;
        v330 = v288;
        ObjectType = swift_getObjectType();
        v332 = *(v329 + 8);

        v606 = v332 + *v332;
        v333 = swift_task_alloc();
        *(v0 + 3024) = v333;
        *v333 = v0;
        v333[1] = sub_1001AFD64;
        v334 = v330;
        v335 = ObjectType;
        v336 = v329;
        v337 = v606;

        return v337(v334, v335, v336);
      }
    }

    v339 = *(v0 + 2696);
    v340 = *(v339 + 16);
    *(v0 + 3032) = v340;
    if (v340)
    {
      v341 = *(v0 + 2136);
      v342 = *(v0 + 2120);
      v343 = *(v0 + 2112);
      v344 = *(v0 + 2032);
      v345 = v343[11];
      *(v0 + 3192) = v345;
      v346 = v343[12];
      *(v0 + 3196) = v346;
      *(v0 + 3200) = v343[8];
      *(v0 + 3204) = v343[9];
      v347 = *v344;
      *(v0 + 3040) = *(*v344 + 744);
      *(v0 + 3048) = (v347 + 744) & 0xFFFFFFFFFFFFLL | 0x46AA000000000000;
      LODWORD(v343) = *(v342 + 80);
      *(v0 + 3208) = v343;
      *(v0 + 3056) = *(v342 + 72);
      *(v0 + 3072) = _swiftEmptyArrayStorage;
      *(v0 + 3064) = 0;
      sub_1001B87F8(v339 + ((v343 + 32) & ~v343), v341, type metadata accessor for MapsSuggestionController.UpcomingFlightPrediction);
      v348 = *(v0 + 1576);
      v349 = *(v0 + 1584);
      sub_100014E1C((v0 + 1552), v348);
      v350 = *(v341 + v345);
      *(v0 + 3080) = v350;
      v351 = *(v341 + v346);
      *(v0 + 3088) = v351;
      v618 = (*(v349 + 8) + **(v349 + 8));
      v352 = swift_task_alloc();
      *(v0 + 3096) = v352;
      *v352 = v0;
      v352[1] = sub_1001B0D6C;
      v353 = v0 + 1752;
      v354.n128_u64[0] = v350;
      v355.n128_u64[0] = v351;
      goto LABEL_148;
    }

    *(v0 + 3152) = _swiftEmptyArrayStorage;
    v357 = (*(**(v0 + 2032) + 384))(v356);
    *(v0 + 3160) = v357;
    if (v357)
    {
      v359 = v358;
      v360 = swift_getObjectType();
      v619 = (*(v359 + 16) + **(v359 + 16));
      v361 = swift_task_alloc();
      *(v0 + 3168) = v361;
      *v361 = v0;
      v361[1] = sub_1001B225C;
      v334 = _swiftEmptyArrayStorage;
      v335 = v360;
      v336 = v359;
      v337 = v619;

      return v337(v334, v335, v336);
    }

    if (*(v498 + 443) != 1)
    {
      goto LABEL_183;
    }

    v362 = *(v0 + 2352);
    v363 = *(v0 + 2336);
    v364 = *(v0 + 2328);
    v365 = *(v0 + 2320);
    v366 = *(v0 + 2032);
    v367 = Date.init()();
    v368 = (*(*v366 + 576))(v367);
    v369 = (*v366 + 416);
    v370 = *v369;
    v371 = v368 / (*v369)();
    v372 = (*(v364 + 16))(v362, v363, v365);
    (v370)(v372);
    v373 = DateInterval.init(start:duration:)();
    v374 = (*v366 + 552);
    v375 = *v374;
    (*v374)(v373);
    v376 = (*(*v366 + 504))();
    j_j___s10Foundation4DateVACycfC();
    sub_1001BDAF8(v376, v362);

    v377 = *(v364 + 8);
    v378 = v377(v362, v365);
    LOBYTE(v362) = (*(*v366 + 528))(v378);
    v607 = v375;
    v375();
    v379 = *(v0 + 2352);
    j_j___s10Foundation4DateVACycfC();
    if (v362)
    {
      sub_1001BD808(v379);
    }

    else
    {
      sub_1001BD980(v379);
    }

    v450 = *(v0 + 2352);
    v451 = *(v0 + 2320);
    v216 = *(v0 + 2032);

    v452 = v377(v450, v451);
    v453 = (v375)(v452);
    swift_beginAccess();
    v454 = *(v453 + 24);

    v456 = round((v371 - v454) / (v370)(v455) * 100.0);
    if ((*&v456 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_203;
    }

    if (v456 <= -9.22337204e18)
    {
      goto LABEL_204;
    }

    if (v456 >= 9.22337204e18)
    {
      goto LABEL_205;
    }

    v375();
    v457 = sub_1001BDD78();

    (v607)(v458);
    v595 = sub_1001BDE54();

    (v607)(v459);
    v563 = sub_1001BDF30();

    (v607)(v460);
    v555 = sub_1001BE00C();

    v216 = (v607)(v461);
    v462 = sub_1001BE0CC();

    v464 = round(v371 * 100.0);
    if ((*&v464 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_206;
    }

    if (v464 <= -9.22337204e18)
    {
      goto LABEL_207;
    }

    if (v464 >= 9.22337204e18)
    {
      goto LABEL_208;
    }

    v216 = *(v0 + 2032);
    v465 = (v370)(v463);
    if ((*&v465 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_209;
    }

    if (v465 <= -9.22337204e18)
    {
      goto LABEL_210;
    }

    v545 = v462;
    v550 = v370;
    v573 = v377;
    if (v465 < 9.22337204e18)
    {
      v543 = *(v0 + 3008);
      v466 = *(v0 + 2352);
      v538 = *(v0 + 2320);
      v467 = *(v0 + 2032);
      v468 = v465;
      v469 = v467[27];
      v470 = v467[28];
      sub_100014E1C(v467 + 24, v469);
      *(v0 + 1856) = &_s39MapsSuggestionsPredictedPercentageMatchVN;
      *(v0 + 1864) = &off_1002B7100;
      v471 = swift_allocObject();
      *(v0 + 1832) = v471;
      v471[2] = v457;
      v471[3] = v595;
      v471[4] = v563;
      v471[5] = v555;
      v471[6] = v545;
      v471[7] = v464;
      v471[8] = v456;
      v471[9] = v468;
      (*(v470 + 8))(0xD000000000000040, 0x800000010025CC10, v0 + 1832, v469, v470);
      v472 = sub_100164B98((v0 + 1832));
      (v607)(v472);
      j_j___s10Foundation4DateVACycfC();
      sub_1001BE18C(v466);

      v473 = v377(v466, v538);
      v474 = *(v543 + 16);
      if (v474)
      {
        v475 = *(v0 + 2256);
        v476 = *(v0 + 2064);
        v477 = *(v0 + 3008) + ((*(v475 + 80) + 32) & ~*(v475 + 80));
        v478 = (v476 + 8);
        v609 = (v476 + 48);
        v621 = *(v475 + 72);
        v596 = (v476 + 32);

        v479 = 0.0;
        do
        {
          v484 = *(v0 + 2264);
          v485 = *(v0 + 2072);
          v486 = *(v0 + 2056);
          v487 = *(v0 + 2048);
          sub_1001B87F8(v477, v484, type metadata accessor for InternalServicePrediction);
          PrivateServicePrediction.predictedStartTime.getter();
          PrivateServicePrediction.predictedDuration.getter();
          sub_1001B8860(v484, type metadata accessor for InternalServicePrediction);
          DateInterval.init(start:duration:)();
          DateInterval.intersection(with:)();
          v488 = *v478;
          (*v478)(v485, v486);
          if ((*v609)(v487, 1, v486) == 1)
          {
            sub_1000157F0(*(v0 + 2048), &qword_1002D71C0, &qword_10024B118);
          }

          else
          {
            v480 = *(v0 + 2080);
            v481 = *(v0 + 2056);
            (*v596)(v480, *(v0 + 2048), v481);
            DateInterval.duration.getter();
            v483 = v482;
            v488(v480, v481);
            v479 = v479 + v483;
          }

          v477 += v621;
          --v474;
        }

        while (v474);
      }

      else
      {
        v479 = 0.0;
      }

      v489 = *(v0 + 2336);
      v490 = *(v0 + 2320);
      v491 = *(v0 + 2088);
      v492 = *(v0 + 2064);
      v493 = *(v0 + 2056);
      v494 = *(v0 + 2032);
      v495.n128_f64[0] = (v550)(v473);
      if (v495.n128_f64[0] >= v479)
      {
        v495.n128_f64[0] = v479;
      }

      (*(*v494 + 584))(v495);
      (*(v492 + 8))(v491, v493);
      (v573)(v489, v490);
LABEL_183:
      v496 = *(v0 + 2504);
      v622 = *(v0 + 3008);

      sub_1000157F0(v496, &qword_1002D7178, &unk_10024B0C0);
      sub_100164B98((v0 + 1552));

      sub_100164B98((v0 + 1472));

      v497 = *(v0 + 8);

      return v497(v622);
    }

LABEL_211:
    __break(1u);
LABEL_212:
    v216 = sub_1001B77F0(0, v216[2] + 1, 1, v216, &qword_1002D79B0, &qword_10024BA20, type metadata accessor for InternalServicePrediction);
LABEL_156:
    v436 = v216[2];
    v435 = v216[3];
    if (v436 >= v435 >> 1)
    {
      v216 = sub_1001B77F0((v435 > 1), v436 + 1, 1, v216, &qword_1002D79B0, &qword_10024BA20, type metadata accessor for InternalServicePrediction);
    }

    v620 = *(v0 + 2712);
    v437 = *(v0 + 2496);
    v438 = *(v0 + 2360);
    v439 = *(v0 + 2328);
    v440 = *(v0 + 2320);
    v441 = *(v0 + 2272);
    v442 = *(v0 + 2256);
    sub_1001B8860(*(v0 + 2280), type metadata accessor for InternalServicePrediction);
    (*(v439 + 8))(v438, v440);
    sub_1000157F0(v0 + 1592, &qword_1002D71D0, &qword_10024AE20);
    sub_1001B8860(v437, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
    v216[2] = v436 + 1;
    result = sub_1001B88C0(v441, v216 + ((*(v442 + 80) + 32) & ~*(v442 + 80)) + *(v442 + 72) * v436, type metadata accessor for InternalServicePrediction);
    if (__OFADD__(v620, 1))
    {
      __break(1u);
      return result;
    }

    v557 = v620 + 1;
    v565 = *(v0 + 2720);
LABEL_57:
    v64 = v216;
    v1 = v216;
  }

  v293 = *(v0 + 2912);
  v294 = *(v0 + 2904);
  v295 = *(v0 + 2896);
  v296 = *(v0 + 2888);
  v297 = *(v0 + 2880);
  v298 = v64;
  v299 = *(v0 + 2872);
  v300 = *(v0 + 2864);
  v301 = *(v0 + 2856);
  v302 = *(v0 + 2848);
  v281 = *(v0 + 2840);
  v303 = *(v0 + 2832);
  v304 = *(v0 + 2824);
  v305 = *(v0 + 2816);
  v306 = *(v0 + 2808);
  v307 = *(v0 + 2800);
  v308 = *(v0 + 2792);
  v309 = *(v0 + 2784);
  v310 = *(v0 + 2776);
  v311 = *(v0 + 2768);
  v312 = *(v0 + 2760);
  *(v0 + 2752) = v298;
  *(v0 + 2744) = v1;
  *(v0 + 2736) = v263;
  *(v0 + 2728) = v573;
  *(v0 + 2720) = v565;
  *(v0 + 2712) = v557;
  v313 = *(v0 + 2688);
  if (v263 >= *(v313 + 16))
  {
    goto LABEL_188;
  }

  v562 = v294;
  v571 = v295;
  v573 = v296;
  v314 = v302;
  v501 = v303;
  v506 = v304;
  v511 = v305;
  v516 = v306;
  v521 = v307;
  v526 = v308;
  v531 = v309;
  v533 = v310;
  v537 = v311;
  v542 = v312;
  v315 = *(v0 + 2496);
  sub_1001B87F8(v313 + ((*(v0 + 3176) + 32) & ~*(v0 + 3176)) + *(*(v0 + 2376) + 72) * v263, v315, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
  v316 = *(v315 + 16);
  *(v0 + 3220) = v316;
  v216 = v281;
  v317 = v314;
  v318 = v301;
  v319 = v297;
  v321 = v571;
  v320 = v573;
  v278 = v562;
  v282 = v293;
  switch(v316)
  {
    case 1:
      v322 = __OFADD__(v604++, 1);
      if (!v322)
      {
        goto LABEL_133;
      }

      __break(1u);
      goto LABEL_121;
    case 2:
      goto LABEL_106;
    case 3:
      v322 = __OFADD__(v592++, 1);
      if (!v322)
      {
        goto LABEL_133;
      }

      __break(1u);
LABEL_116:
      v383 = v281 + 1;
      if (__OFADD__(v281, 1))
      {
        goto LABEL_197;
      }

      v216 = (v281 + 1);
      v382 = v549;
      v381 = v553;
      goto LABEL_136;
    case 4:
    case 5:
      v322 = __OFADD__(v616++, 1);
      if (!v322)
      {
        goto LABEL_133;
      }

      __break(1u);
      goto LABEL_81;
    case 6:
      v382 = v549 + 1;
      if (!__OFADD__(v549, 1))
      {
        goto LABEL_134;
      }

      __break(1u);
LABEL_128:
      v386 = v300 + 1;
      if (__OFADD__(v300, 1))
      {
        goto LABEL_200;
      }

      ++v300;
      v382 = v549;
      v381 = v553;
      v384 = v537;
      v383 = v542;
      v385 = v533;
      goto LABEL_138;
    case 7:
      v381 = v553 + 1;
      if (__OFADD__(v553, 1))
      {
        goto LABEL_196;
      }

      v382 = v549;
      goto LABEL_135;
    case 8:
      v322 = __OFADD__(v264++, 1);
      if (v322)
      {
        goto LABEL_202;
      }

      goto LABEL_133;
    case 9:
      v322 = __OFADD__(v265, 1);
      v265 = (v265 + 1);
      if (!v322)
      {
        goto LABEL_133;
      }

      __break(1u);
LABEL_106:
      v322 = __OFADD__(v583++, 1);
      if (!v322)
      {
LABEL_133:
        v382 = v549;
LABEL_134:
        v381 = v553;
LABEL_135:
        v383 = v542;
LABEL_136:
        v384 = v537;
LABEL_137:
        v386 = v531;
        v385 = v533;
        goto LABEL_138;
      }

      __break(1u);
LABEL_109:
      v385 = v318 + 1;
      if (__OFADD__(v318, 1))
      {
LABEL_195:
        __break(1u);
LABEL_196:
        __break(1u);
LABEL_197:
        __break(1u);
LABEL_198:
        __break(1u);
LABEL_199:
        __break(1u);
LABEL_200:
        __break(1u);
LABEL_201:
        __break(1u);
LABEL_202:
        __break(1u);
LABEL_203:
        __break(1u);
LABEL_204:
        __break(1u);
LABEL_205:
        __break(1u);
LABEL_206:
        __break(1u);
LABEL_207:
        __break(1u);
LABEL_208:
        __break(1u);
LABEL_209:
        __break(1u);
LABEL_210:
        __break(1u);
        goto LABEL_211;
      }

      ++v318;
      v382 = v549;
      v381 = v553;
      v384 = v537;
      v383 = v542;
      v386 = v531;
LABEL_138:
      v387 = v526;
LABEL_139:
      v380 = v521;
LABEL_140:
      v388 = v516;
LABEL_141:
      v390 = v511;
LABEL_142:
      v389 = v506;
LABEL_143:
      v391 = v501;
LABEL_144:
      *(v0 + 2976) = v604;
      *(v0 + 2968) = v583;
      *(v0 + 2960) = v592;
      *(v0 + 2952) = v616;
      *(v0 + 2944) = v382;
      *(v0 + 2936) = v381;
      *(v0 + 2928) = v264;
      *(v0 + 2920) = v265;
      *(v0 + 2912) = v282;
      *(v0 + 2904) = v278;
      *(v0 + 2896) = v321;
      *(v0 + 2888) = v320;
      *(v0 + 2880) = v319;
      *(v0 + 2872) = v299;
      *(v0 + 2864) = v300;
      *(v0 + 2856) = v318;
      *(v0 + 2848) = v317;
      *(v0 + 2840) = v216;
      *(v0 + 2832) = v391;
      *(v0 + 2824) = v389;
      *(v0 + 2816) = v390;
      *(v0 + 2808) = v388;
      *(v0 + 2800) = v380;
      *(v0 + 2792) = v387;
      *(v0 + 2784) = v386;
      *(v0 + 2776) = v385;
      *(v0 + 2768) = v384;
      *(v0 + 2760) = v383;
      v392 = *(v0 + 2496);
      v393 = *(v0 + 2488);
      sub_100003E50(&off_1002B70B0, *(v0 + 2632));
      sub_1001B87F8(v392, v393, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
      v394 = Logger.logObject.getter();
      v395 = static os_log_type_t.debug.getter();
      v396 = os_log_type_enabled(v394, v395);
      v397 = *(v0 + 2648);
      v398 = *(v0 + 2632);
      v399 = *(v0 + 2512);
      v400 = *(v0 + 2488);
      if (v396)
      {
        v401 = swift_slowAlloc();
        v608 = v397;
        v402 = swift_slowAlloc();
        v623[0] = v402;
        *v401 = 136315138;
        sub_1001B840C(&qword_1002D71D8, 255, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry, &unk_10024B380);
        v403 = dispatch thunk of CustomStringConvertible.description.getter();
        v405 = v404;
        sub_1001B8860(v400, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
        v406 = sub_10017A8A8(v403, v405, v623);

        *(v401 + 4) = v406;
        _os_log_impl(&_mh_execute_header, v394, v395, "Fetching coverage tile for %s", v401, 0xCu);
        sub_100164B98(v402);

        v608(v398, v399);
      }

      else
      {

        sub_1001B8860(v400, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
        v397(v398, v399);
      }

      v407 = *(v0 + 2496);
      v348 = *(v0 + 1576);
      v349 = *(v0 + 1584);
      sub_100014E1C((v0 + 1552), v348);
      v408 = *v407;
      *(v0 + 2984) = *v407;
      v409 = v407[1];
      *(v0 + 2992) = v409;
      v618 = (*(v349 + 8) + **(v349 + 8));
      v410 = swift_task_alloc();
      *(v0 + 3000) = v410;
      *v410 = v0;
      v410[1] = sub_1001AB868;
      v353 = v0 + 1592;
      v354.n128_u64[0] = v408;
      v355.n128_u64[0] = v409;
LABEL_148:

      return v618(v353, v348, v349, v354, v355);
    case 10:
      v391 = v293 + 1;
      if (__OFADD__(v293, 1))
      {
        goto LABEL_201;
      }

      v282 = v293 + 1;
      v382 = v549;
      v381 = v553;
      v384 = v537;
      v383 = v542;
      v386 = v531;
      v385 = v533;
      v387 = v526;
      v380 = v521;
      v388 = v516;
      v390 = v511;
      v389 = v506;
      goto LABEL_144;
    case 11:
      v389 = v562 + 1;
      if (__OFADD__(v562, 1))
      {
        goto LABEL_193;
      }

      v278 = (v562 + 1);
      v382 = v549;
      v381 = v553;
      v384 = v537;
      v383 = v542;
      v386 = v531;
      v385 = v533;
      v387 = v526;
      v380 = v521;
      v388 = v516;
      v390 = v511;
      goto LABEL_143;
    case 12:
      v390 = v571 + 1;
      if (__OFADD__(v571, 1))
      {
        goto LABEL_194;
      }

      v321 = v571 + 1;
      v382 = v549;
      v381 = v553;
      v384 = v537;
      v383 = v542;
      v386 = v531;
      v385 = v533;
      v387 = v526;
      v380 = v521;
      v388 = v516;
      goto LABEL_142;
    case 13:
      v384 = v314 + 1;
      if (__OFADD__(v314, 1))
      {
        goto LABEL_199;
      }

      v317 = v314 + 1;
      v382 = v549;
      v381 = v553;
      v383 = v542;
      goto LABEL_137;
    case 14:
      v388 = v573 + 1;
      if (__OFADD__(v573, 1))
      {
        goto LABEL_192;
      }

      v320 = v573 + 1;
      v382 = v549;
      v381 = v553;
      v384 = v537;
      v383 = v542;
      v386 = v531;
      v385 = v533;
      v387 = v526;
      v380 = v521;
      goto LABEL_141;
    case 15:
      goto LABEL_109;
    case 16:
      v380 = v319 + 1;
      if (__OFADD__(v319, 1))
      {
        goto LABEL_191;
      }

      ++v319;
      v382 = v549;
      v381 = v553;
      v384 = v537;
      v383 = v542;
      v386 = v531;
      v385 = v533;
      v387 = v526;
      goto LABEL_140;
    case 17:
LABEL_121:
      v387 = v299 + 1;
      if (__OFADD__(v299, 1))
      {
        goto LABEL_198;
      }

      ++v299;
      v382 = v549;
      v381 = v553;
      v384 = v537;
      v383 = v542;
      v386 = v531;
      v385 = v533;
      goto LABEL_139;
    case 18:
      goto LABEL_128;
    default:
      goto LABEL_116;
  }
}

uint64_t sub_1001AFD64()
{
  v1 = *(*v0 + 2032);

  return _swift_task_switch(sub_1001AFE90, v1, 0);
}

void sub_1001AFE90()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 2696);
  v2 = *(v1 + 16);
  *(v0 + 3032) = v2;
  if (v2)
  {
    v3 = *(v0 + 2136);
    v4 = *(v0 + 2120);
    v5 = *(v0 + 2112);
    v6 = *(v0 + 2032);
    v7 = v5[11];
    *(v0 + 3192) = v7;
    v8 = v5[12];
    *(v0 + 3196) = v8;
    *(v0 + 3200) = v5[8];
    *(v0 + 3204) = v5[9];
    v9 = *v6;
    *(v0 + 3040) = *(*v6 + 744);
    *(v0 + 3048) = (v9 + 744) & 0xFFFFFFFFFFFFLL | 0x46AA000000000000;
    LODWORD(v5) = *(v4 + 80);
    *(v0 + 3208) = v5;
    *(v0 + 3056) = *(v4 + 72);
    *(v0 + 3072) = _swiftEmptyArrayStorage;
    *(v0 + 3064) = 0;
    sub_1001B87F8(v1 + ((v5 + 32) & ~v5), v3, type metadata accessor for MapsSuggestionController.UpcomingFlightPrediction);
    v10 = *(v0 + 1576);
    v11 = *(v0 + 1584);
    sub_100014E1C((v0 + 1552), v10);
    v12 = *(v3 + v7);
    *(v0 + 3080) = v12;
    v13 = *(v3 + v8);
    *(v0 + 3088) = v13;
    v100 = (*(v11 + 8) + **(v11 + 8));
    v14 = swift_task_alloc();
    *(v0 + 3096) = v14;
    *v14 = v0;
    v14[1] = sub_1001B0D6C;
    v15.n128_u64[0] = v12;
    v16.n128_u64[0] = v13;

    v100(v0 + 1752, v10, v11, v15, v16);
    return;
  }

  *(v0 + 3152) = _swiftEmptyArrayStorage;
  v18 = (*(**(v0 + 2032) + 384))(v17);
  *(v0 + 3160) = v18;
  if (v18)
  {
    v20 = v19;
    ObjectType = swift_getObjectType();
    v101 = (*(v20 + 16) + **(v20 + 16));
    v22 = swift_task_alloc();
    *(v0 + 3168) = v22;
    *v22 = v0;
    v22[1] = sub_1001B225C;

    v101(_swiftEmptyArrayStorage, ObjectType, v20);
    return;
  }

  if (*(v0 + 3219) == 1)
  {
    v23 = *(v0 + 2352);
    v24 = *(v0 + 2336);
    v25 = *(v0 + 2328);
    v26 = *(v0 + 2320);
    v27 = *(v0 + 2032);
    v28 = Date.init()();
    v29 = (*(*v27 + 576))(v28);
    v30 = (*v27 + 416);
    v31 = *v30;
    v32 = v29 / (*v30)();
    v33 = (*(v25 + 16))(v23, v24, v26);
    (v31)(v33);
    v34 = DateInterval.init(start:duration:)();
    v35 = (*v27 + 552);
    v36 = *v35;
    (*v35)(v34);
    v37 = (*(*v27 + 504))();
    j_j___s10Foundation4DateVACycfC();
    sub_1001BDAF8(v37, v23);

    v38 = *(v25 + 8);
    v39 = v38(v23, v26);
    LOBYTE(v23) = (*(*v27 + 528))(v39);
    v98 = v36;
    v36();
    v40 = *(v0 + 2352);
    j_j___s10Foundation4DateVACycfC();
    if (v23)
    {
      sub_1001BD808(v40);
    }

    else
    {
      sub_1001BD980(v40);
    }

    v41 = *(v0 + 2352);
    v42 = *(v0 + 2320);

    v43 = v38(v41, v42);
    v44 = (v36)(v43);
    swift_beginAccess();
    v45 = *(v44 + 24);

    v47 = round((v32 - v45) / (v31)(v46) * 100.0);
    if ((*&v47 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v47 > -9.22337204e18)
    {
      if (v47 < 9.22337204e18)
      {
        v36();
        v48 = sub_1001BDD78();

        (v98)(v49);
        v96 = sub_1001BDE54();

        (v98)(v50);
        v94 = sub_1001BDF30();

        (v98)(v51);
        v93 = sub_1001BE00C();

        (v98)(v52);
        v53 = sub_1001BE0CC();

        v55 = round(v32 * 100.0);
        if ((*&v55 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v55 > -9.22337204e18)
          {
            if (v55 < 9.22337204e18)
            {
              v56 = (v31)(v54);
              if ((*&v56 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
              {
                if (v56 > -9.22337204e18)
                {
                  v91 = v53;
                  v92 = v31;
                  v95 = v38;
                  if (v56 < 9.22337204e18)
                  {
                    v90 = *(v0 + 3008);
                    v57 = *(v0 + 2352);
                    v89 = *(v0 + 2320);
                    v58 = *(v0 + 2032);
                    v59 = v56;
                    v60 = v58[27];
                    v61 = v58[28];
                    sub_100014E1C(v58 + 24, v60);
                    *(v0 + 1856) = &_s39MapsSuggestionsPredictedPercentageMatchVN;
                    *(v0 + 1864) = &off_1002B7100;
                    v62 = swift_allocObject();
                    *(v0 + 1832) = v62;
                    v62[2] = v48;
                    v62[3] = v96;
                    v62[4] = v94;
                    v62[5] = v93;
                    v62[6] = v91;
                    v62[7] = v55;
                    v62[8] = v47;
                    v62[9] = v59;
                    (*(v61 + 8))(0xD000000000000040, 0x800000010025CC10, v0 + 1832, v60, v61);
                    v63 = sub_100164B98((v0 + 1832));
                    (v98)(v63);
                    j_j___s10Foundation4DateVACycfC();
                    sub_1001BE18C(v57);

                    v64 = v38(v57, v89);
                    v65 = *(v90 + 16);
                    if (v65)
                    {
                      v66 = *(v0 + 2256);
                      v67 = *(v0 + 2064);
                      v68 = *(v0 + 3008) + ((*(v66 + 80) + 32) & ~*(v66 + 80));
                      v69 = (v67 + 8);
                      v99 = (v67 + 48);
                      v102 = *(v66 + 72);
                      v97 = (v67 + 32);

                      v70 = 0.0;
                      do
                      {
                        v75 = *(v0 + 2264);
                        v76 = *(v0 + 2072);
                        v77 = *(v0 + 2056);
                        v78 = *(v0 + 2048);
                        sub_1001B87F8(v68, v75, type metadata accessor for InternalServicePrediction);
                        PrivateServicePrediction.predictedStartTime.getter();
                        PrivateServicePrediction.predictedDuration.getter();
                        sub_1001B8860(v75, type metadata accessor for InternalServicePrediction);
                        DateInterval.init(start:duration:)();
                        DateInterval.intersection(with:)();
                        v79 = *v69;
                        (*v69)(v76, v77);
                        if ((*v99)(v78, 1, v77) == 1)
                        {
                          sub_1000157F0(*(v0 + 2048), &qword_1002D71C0, &qword_10024B118);
                        }

                        else
                        {
                          v71 = *(v0 + 2080);
                          v72 = *(v0 + 2056);
                          (*v97)(v71, *(v0 + 2048), v72);
                          DateInterval.duration.getter();
                          v74 = v73;
                          v79(v71, v72);
                          v70 = v70 + v74;
                        }

                        v68 += v102;
                        --v65;
                      }

                      while (v65);
                    }

                    else
                    {
                      v70 = 0.0;
                    }

                    v80 = *(v0 + 2336);
                    v81 = *(v0 + 2320);
                    v82 = *(v0 + 2088);
                    v83 = *(v0 + 2064);
                    v84 = *(v0 + 2056);
                    v85 = *(v0 + 2032);
                    v86.n128_f64[0] = (v92)(v64);
                    if (v86.n128_f64[0] >= v70)
                    {
                      v86.n128_f64[0] = v70;
                    }

                    (*(*v85 + 584))(v86);
                    (*(v83 + 8))(v82, v84);
                    v95(v80, v81);
                    goto LABEL_33;
                  }

LABEL_44:
                  __break(1u);
                  return;
                }

LABEL_43:
                __break(1u);
                goto LABEL_44;
              }

LABEL_42:
              __break(1u);
              goto LABEL_43;
            }

LABEL_41:
            __break(1u);
            goto LABEL_42;
          }

LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    __break(1u);
    goto LABEL_38;
  }

LABEL_33:
  v87 = *(v0 + 2504);
  v103 = *(v0 + 3008);

  sub_1000157F0(v87, &qword_1002D7178, &unk_10024B0C0);
  sub_100164B98((v0 + 1552));

  sub_100164B98((v0 + 1472));

  v88 = *(v0 + 8);

  v88(v103);
}

uint64_t sub_1001B0D6C()
{
  v1 = *v0;
  v2 = *(*v0 + 3040);
  v3 = *(*v0 + 3204);
  v4 = *(*v0 + 3200);
  v5 = *(*v0 + 2136);
  v6 = *v0;

  v7 = *(v5 + v4);
  v8 = *(v5 + v3);
  v13 = (v2 + *v2);
  v9 = swift_task_alloc();
  *(v1 + 3104) = v9;
  *v9 = v6;
  v9[1] = sub_1001B0F74;
  v10.n128_u64[0] = v7;
  v11.n128_u64[0] = v8;

  return v13(v10, v11);
}

uint64_t sub_1001B0F74(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 3040);
  v10 = *v2;
  v3[389] = a1;
  v3[390] = a2;

  v9 = (v4 + *v4);
  v5 = swift_task_alloc();
  v3[391] = v5;
  *v5 = v10;
  v5[1] = sub_1001B1150;
  v6.n128_u64[0] = v3[386];
  v7.n128_u64[0] = v3[385];

  return v9(v7, v6);
}

uint64_t sub_1001B1150(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 2032);
  *(v3 + 3136) = a1;
  *(v3 + 3144) = a2;

  return _swift_task_switch(sub_1001B126C, v4, 0);
}

void sub_1001B126C()
{
  v1 = *(v0 + 3144);
  v2 = *(v0 + 3136);
  v3 = *(v0 + 3120);
  v4 = *(v0 + 3112);
  v5 = *(v0 + 2128);
  v6 = *(v0 + 2104);
  sub_1001B88C0(*(v0 + 2136), v5, type metadata accessor for MapsSuggestionController.UpcomingFlightPrediction);
  sub_10001A718(v0 + 1752, v0 + 1792, &qword_1002D71D0, &qword_10024AE20);
  sub_1001BCEFC(v5, v0 + 1792, v4, v3, v2, v1, v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v0 + 3072);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_1001B77F0(0, v8[2] + 1, 1, *(v0 + 3072), &qword_1002D79B8, &qword_10024BA28, type metadata accessor for InternalUpcomingFlightPrediction);
  }

  v10 = v8[2];
  v9 = v8[3];
  if (v10 >= v9 >> 1)
  {
    v8 = sub_1001B77F0((v9 > 1), v10 + 1, 1, v8, &qword_1002D79B8, &qword_10024BA28, type metadata accessor for InternalUpcomingFlightPrediction);
  }

  v11 = *(v0 + 3032);
  v12 = *(v0 + 2104);
  v13 = *(v0 + 2096);
  v14 = *(v0 + 3064) + 1;
  sub_1000157F0(v0 + 1752, &qword_1002D71D0, &qword_10024AE20);
  v8[2] = v10 + 1;
  sub_1001B88C0(v12, v8 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v10, type metadata accessor for InternalUpcomingFlightPrediction);
  if (v14 == v11)
  {

    *(v0 + 3152) = v8;
    v16 = (*(**(v0 + 2032) + 384))(v15);
    *(v0 + 3160) = v16;
    if (v16)
    {
      v18 = v17;
      ObjectType = swift_getObjectType();
      v109 = (*(v18 + 16) + **(v18 + 16));
      v20 = swift_task_alloc();
      *(v0 + 3168) = v20;
      *v20 = v0;
      v20[1] = sub_1001B225C;

      v109(v8, ObjectType, v18);
      return;
    }

    if (*(v0 + 3219) != 1)
    {
      goto LABEL_37;
    }

    v32 = *(v0 + 2352);
    v33 = *(v0 + 2336);
    v34 = *(v0 + 2328);
    v35 = *(v0 + 2320);
    v36 = *(v0 + 2032);
    v37 = Date.init()();
    v38 = (*(*v36 + 576))(v37);
    v39 = (*v36 + 416);
    v40 = *v39;
    v41 = v38 / (*v39)();
    v42 = (*(v34 + 16))(v32, v33, v35);
    (v40)(v42);
    v43 = DateInterval.init(start:duration:)();
    v44 = (*v36 + 552);
    v45 = *v44;
    (*v44)(v43);
    v46 = (*(*v36 + 504))();
    j_j___s10Foundation4DateVACycfC();
    sub_1001BDAF8(v46, v32);

    v47 = *(v34 + 8);
    v48 = v47(v32, v35);
    LOBYTE(v32) = (*(*v36 + 528))(v48);
    v107 = v45;
    v45();
    v49 = *(v0 + 2352);
    j_j___s10Foundation4DateVACycfC();
    if (v32)
    {
      sub_1001BD808(v49);
    }

    else
    {
      sub_1001BD980(v49);
    }

    v50 = *(v0 + 2352);
    v51 = *(v0 + 2320);

    v52 = v47(v50, v51);
    v53 = (v45)(v52);
    swift_beginAccess();
    v54 = *(v53 + 24);

    v56 = round((v41 - v54) / (v40)(v55) * 100.0);
    if ((*&v56 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v56 > -9.22337204e18)
    {
      if (v56 < 9.22337204e18)
      {
        v45();
        v57 = sub_1001BDD78();

        (v107)(v58);
        v105 = sub_1001BDE54();

        (v107)(v59);
        v103 = sub_1001BDF30();

        (v107)(v60);
        v102 = sub_1001BE00C();

        (v107)(v61);
        v62 = sub_1001BE0CC();

        v64 = round(v41 * 100.0);
        if ((*&v64 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v64 > -9.22337204e18)
          {
            if (v64 < 9.22337204e18)
            {
              v65 = (v40)(v63);
              if ((*&v65 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
              {
                if (v65 > -9.22337204e18)
                {
                  v100 = v62;
                  v101 = v40;
                  v104 = v47;
                  if (v65 < 9.22337204e18)
                  {
                    v99 = *(v0 + 3008);
                    v66 = *(v0 + 2352);
                    v98 = *(v0 + 2320);
                    v67 = *(v0 + 2032);
                    v68 = v65;
                    v69 = v67[27];
                    v70 = v67[28];
                    sub_100014E1C(v67 + 24, v69);
                    *(v0 + 1856) = &_s39MapsSuggestionsPredictedPercentageMatchVN;
                    *(v0 + 1864) = &off_1002B7100;
                    v71 = swift_allocObject();
                    *(v0 + 1832) = v71;
                    v71[2] = v57;
                    v71[3] = v105;
                    v71[4] = v103;
                    v71[5] = v102;
                    v71[6] = v100;
                    v71[7] = v64;
                    v71[8] = v56;
                    v71[9] = v68;
                    (*(v70 + 8))(0xD000000000000040, 0x800000010025CC10, v0 + 1832, v69, v70);
                    v72 = sub_100164B98((v0 + 1832));
                    (v107)(v72);
                    j_j___s10Foundation4DateVACycfC();
                    sub_1001BE18C(v66);

                    v73 = v47(v66, v98);
                    v74 = *(v99 + 16);
                    if (v74)
                    {
                      v75 = *(v0 + 2256);
                      v76 = *(v0 + 2064);
                      v77 = *(v0 + 3008) + ((*(v75 + 80) + 32) & ~*(v75 + 80));
                      v78 = (v76 + 8);
                      v108 = (v76 + 48);
                      v111 = *(v75 + 72);
                      v106 = (v76 + 32);

                      v79 = 0.0;
                      do
                      {
                        v84 = *(v0 + 2264);
                        v85 = *(v0 + 2072);
                        v86 = *(v0 + 2056);
                        v87 = *(v0 + 2048);
                        sub_1001B87F8(v77, v84, type metadata accessor for InternalServicePrediction);
                        PrivateServicePrediction.predictedStartTime.getter();
                        PrivateServicePrediction.predictedDuration.getter();
                        sub_1001B8860(v84, type metadata accessor for InternalServicePrediction);
                        DateInterval.init(start:duration:)();
                        DateInterval.intersection(with:)();
                        v88 = *v78;
                        (*v78)(v85, v86);
                        if ((*v108)(v87, 1, v86) == 1)
                        {
                          sub_1000157F0(*(v0 + 2048), &qword_1002D71C0, &qword_10024B118);
                        }

                        else
                        {
                          v80 = *(v0 + 2080);
                          v81 = *(v0 + 2056);
                          (*v106)(v80, *(v0 + 2048), v81);
                          DateInterval.duration.getter();
                          v83 = v82;
                          v88(v80, v81);
                          v79 = v79 + v83;
                        }

                        v77 += v111;
                        --v74;
                      }

                      while (v74);
                    }

                    else
                    {
                      v79 = 0.0;
                    }

                    v89 = *(v0 + 2336);
                    v90 = *(v0 + 2320);
                    v91 = *(v0 + 2088);
                    v92 = *(v0 + 2064);
                    v93 = *(v0 + 2056);
                    v94 = *(v0 + 2032);
                    v95.n128_f64[0] = (v101)(v73);
                    if (v95.n128_f64[0] >= v79)
                    {
                      v95.n128_f64[0] = v79;
                    }

                    (*(*v94 + 584))(v95);
                    (*(v92 + 8))(v91, v93);
                    v104(v89, v90);
LABEL_37:
                    v96 = *(v0 + 2504);
                    v112 = *(v0 + 3008);

                    sub_1000157F0(v96, &qword_1002D7178, &unk_10024B0C0);
                    sub_100164B98((v0 + 1552));

                    sub_100164B98((v0 + 1472));

                    v97 = *(v0 + 8);

                    v97(v112);
                    return;
                  }

LABEL_48:
                  __break(1u);
                  return;
                }

LABEL_47:
                __break(1u);
                goto LABEL_48;
              }

LABEL_46:
              __break(1u);
              goto LABEL_47;
            }

LABEL_45:
            __break(1u);
            goto LABEL_46;
          }

LABEL_44:
          __break(1u);
          goto LABEL_45;
        }

LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    __break(1u);
    goto LABEL_42;
  }

  v21 = *(v0 + 3064) + 1;
  *(v0 + 3072) = v8;
  *(v0 + 3064) = v21;
  v22 = *(v0 + 3196);
  v23 = *(v0 + 3192);
  v24 = *(v0 + 2136);
  sub_1001B87F8(*(v0 + 2696) + ((*(v0 + 3208) + 32) & ~*(v0 + 3208)) + *(v0 + 3056) * v21, v24, type metadata accessor for MapsSuggestionController.UpcomingFlightPrediction);
  v25 = *(v0 + 1576);
  v26 = *(v0 + 1584);
  sub_100014E1C((v0 + 1552), v25);
  v27 = *(v24 + v23);
  *(v0 + 3080) = v27;
  v28 = *(v24 + v22);
  *(v0 + 3088) = v28;
  v110 = (*(v26 + 8) + **(v26 + 8));
  v29 = swift_task_alloc();
  *(v0 + 3096) = v29;
  *v29 = v0;
  v29[1] = sub_1001B0D6C;
  v30.n128_u64[0] = v27;
  v31.n128_u64[0] = v28;

  v110(v0 + 1752, v25, v26, v30, v31);
}

uint64_t sub_1001B225C()
{
  v1 = *(*v0 + 2032);

  return _swift_task_switch(sub_1001B2388, v1, 0);
}

void sub_1001B2388()
{
  swift_unknownObjectRelease();
  if (*(v0 + 3219) == 1)
  {
    v1 = *(v0 + 2352);
    v2 = *(v0 + 2336);
    v3 = *(v0 + 2328);
    v4 = *(v0 + 2320);
    v5 = *(v0 + 2032);
    v6 = Date.init()();
    v7 = (*(*v5 + 576))(v6);
    v8 = (*v5 + 416);
    v9 = *v8;
    v10 = v7 / (*v8)();
    v11 = (*(v3 + 16))(v1, v2, v4);
    v78 = v9;
    (v9)(v11);
    v12 = DateInterval.init(start:duration:)();
    v13 = (*v5 + 552);
    v14 = *v13;
    (*v13)(v12);
    v15 = (*(*v5 + 504))();
    j_j___s10Foundation4DateVACycfC();
    sub_1001BDAF8(v15, v1);

    v16 = v4;
    v17 = *(v3 + 8);
    v18 = v17(v1, v16);
    LOBYTE(v1) = (*(*v5 + 528))(v18);
    v19 = v14;
    v14();
    v20 = *(v0 + 2352);
    j_j___s10Foundation4DateVACycfC();
    if (v1)
    {
      sub_1001BD808(v20);
    }

    else
    {
      sub_1001BD980(v20);
    }

    v21 = *(v0 + 2352);
    v22 = *(v0 + 2320);

    v23 = v17;
    v24 = v17(v21, v22);
    v25 = v19;
    v26 = (v19)(v24);
    swift_beginAccess();
    v27 = *(v26 + 24);

    v29 = round((v10 - v27) / (v78)(v28) * 100.0);
    if ((*&v29 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v29 > -9.22337204e18)
    {
      if (v29 < 9.22337204e18)
      {
        v19();
        v30 = sub_1001BDD78();

        (v19)(v31);
        v32 = sub_1001BDE54();

        (v25)(v33);
        v83 = sub_1001BDF30();

        (v25)(v34);
        v81 = sub_1001BE00C();

        (v25)(v35);
        v36 = sub_1001BE0CC();

        v38 = round(v10 * 100.0);
        if ((*&v38 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v38 > -9.22337204e18)
          {
            if (v38 < 9.22337204e18)
            {
              v39 = (v78)(v37);
              if ((*&v39 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
              {
                if (v39 > -9.22337204e18)
                {
                  if (v39 < 9.22337204e18)
                  {
                    v79 = *(v0 + 3008);
                    v74 = v36;
                    v40 = v30;
                    v41 = *(v0 + 2352);
                    v76 = *(v0 + 2320);
                    v77 = v23;
                    v42 = v32;
                    v43 = *(v0 + 2032);
                    v75 = v25;
                    v44 = v39;
                    v45 = v43[27];
                    v46 = v43[28];
                    sub_100014E1C(v43 + 24, v45);
                    *(v0 + 1856) = &_s39MapsSuggestionsPredictedPercentageMatchVN;
                    *(v0 + 1864) = &off_1002B7100;
                    v47 = swift_allocObject();
                    *(v0 + 1832) = v47;
                    v47[2] = v40;
                    v47[3] = v42;
                    v47[4] = v83;
                    v47[5] = v81;
                    v47[6] = v74;
                    v47[7] = v38;
                    v47[8] = v29;
                    v47[9] = v44;
                    (*(v46 + 8))(0xD000000000000040, 0x800000010025CC10, v0 + 1832, v45, v46);
                    v48 = sub_100164B98((v0 + 1832));
                    (v75)(v48);
                    j_j___s10Foundation4DateVACycfC();
                    sub_1001BE18C(v41);

                    v49 = (v23)(v41, v76);
                    v50 = *(v79 + 16);
                    if (v50)
                    {
                      v51 = *(v0 + 2256);
                      v52 = *(v0 + 2064);
                      v53 = *(v0 + 3008) + ((*(v51 + 80) + 32) & ~*(v51 + 80));
                      v54 = (v52 + 8);
                      v82 = (v52 + 48);
                      v84 = *(v51 + 72);
                      v80 = (v52 + 32);

                      v55 = 0.0;
                      do
                      {
                        v60 = *(v0 + 2264);
                        v61 = *(v0 + 2072);
                        v62 = *(v0 + 2056);
                        v63 = *(v0 + 2048);
                        sub_1001B87F8(v53, v60, type metadata accessor for InternalServicePrediction);
                        PrivateServicePrediction.predictedStartTime.getter();
                        PrivateServicePrediction.predictedDuration.getter();
                        sub_1001B8860(v60, type metadata accessor for InternalServicePrediction);
                        DateInterval.init(start:duration:)();
                        DateInterval.intersection(with:)();
                        v64 = *v54;
                        (*v54)(v61, v62);
                        if ((*v82)(v63, 1, v62) == 1)
                        {
                          sub_1000157F0(*(v0 + 2048), &qword_1002D71C0, &qword_10024B118);
                        }

                        else
                        {
                          v56 = *(v0 + 2080);
                          v57 = *(v0 + 2056);
                          (*v80)(v56, *(v0 + 2048), v57);
                          DateInterval.duration.getter();
                          v59 = v58;
                          v64(v56, v57);
                          v55 = v55 + v59;
                        }

                        v53 += v84;
                        --v50;
                      }

                      while (v50);
                    }

                    else
                    {
                      v55 = 0.0;
                    }

                    v65 = *(v0 + 2336);
                    v66 = *(v0 + 2320);
                    v67 = *(v0 + 2088);
                    v68 = *(v0 + 2064);
                    v69 = *(v0 + 2056);
                    v70 = *(v0 + 2032);
                    v71.n128_f64[0] = (v78)(v49);
                    if (v71.n128_f64[0] >= v55)
                    {
                      v71.n128_f64[0] = v55;
                    }

                    (*(*v70 + 584))(v71);
                    (*(v68 + 8))(v67, v69);
                    v77(v65, v66);
                    goto LABEL_25;
                  }

LABEL_36:
                  __break(1u);
                  return;
                }

LABEL_35:
                __break(1u);
                goto LABEL_36;
              }

LABEL_34:
              __break(1u);
              goto LABEL_35;
            }

LABEL_33:
            __break(1u);
            goto LABEL_34;
          }

LABEL_32:
          __break(1u);
          goto LABEL_33;
        }

LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    __break(1u);
    goto LABEL_30;
  }

LABEL_25:
  v72 = *(v0 + 2504);
  v85 = *(v0 + 3008);

  sub_1000157F0(v72, &qword_1002D7178, &unk_10024B0C0);
  sub_100164B98((v0 + 1552));

  sub_100164B98((v0 + 1472));

  v73 = *(v0 + 8);

  v73(v85);
}

uint64_t sub_1001B2F20(uint64_t a1, void *a2, uint64_t a3, _OWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v45 = a8;
  v46 = a3;
  v47 = a7;
  v40 = a1;
  v12 = sub_100164A3C(&qword_1002D7178, &unk_10024B0C0);
  v41 = *(v12 - 8);
  v13 = *(v41 + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v38 - v14;
  v16 = sub_100164A3C(&qword_1002D79C8, &qword_10024BA30);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v38 - v19;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v21 = a2[4];
  v44 = a2[3];
  v42 = v21;
  v43 = sub_100014E1C(a2, v44);
  (*(v17 + 16))(v20, v40, v16);
  sub_10001A718(a5, v15, &qword_1002D7178, &unk_10024B0C0);
  v22 = *(v17 + 80);
  v39 = v15;
  v40 = a6;
  v23 = (v22 + 16) & ~v22;
  v24 = (v18 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = (*(v41 + 80) + v24 + 208) & ~*(v41 + 80);
  v26 = (v13 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  (*(v17 + 32))(v27 + v23, v20, v16);
  v28 = (v27 + v24);
  v29 = a4[11];
  v28[10] = a4[10];
  v28[11] = v29;
  v28[12] = a4[12];
  v30 = a4[7];
  v28[6] = a4[6];
  v28[7] = v30;
  v31 = a4[9];
  v28[8] = a4[8];
  v28[9] = v31;
  v32 = a4[3];
  v28[2] = a4[2];
  v28[3] = v32;
  v33 = a4[5];
  v28[4] = a4[4];
  v28[5] = v33;
  v34 = a4[1];
  *v28 = *a4;
  v28[1] = v34;
  sub_100191E28(v39, v27 + v25, &qword_1002D7178, &unk_10024B0C0);
  *(v27 + v26) = v40;
  *(v27 + ((v26 + 15) & 0xFFFFFFFFFFFFFFF8)) = v45;
  v35 = v42;
  v36 = *(v42 + 8);

  v36(v46, 20, 4, sub_1001B9A68, v27, v47, v44, v35);
}

uint64_t sub_1001B3238(unint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v122 = a5;
  v132 = a4;
  v133 = a3;
  v137 = a2;
  v8 = sub_100164A3C(&qword_1002D7180, &qword_10024ABF0);
  __chkstk_darwin(v8 - 8);
  v121 = &v117 - v9;
  v10 = sub_100164A3C(&qword_1002D7178, &unk_10024B0C0);
  __chkstk_darwin(v10 - 8);
  v131 = &v117 - v11;
  v134 = type metadata accessor for MapsSuggestionController.SimulatedFlightTravelLocation(0);
  v130 = *(v134 - 1);
  v12 = __chkstk_darwin(v134);
  v120 = &v117 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v127 = &v117 - v14;
  v15 = sub_100164A3C(&unk_1002D79D0, &unk_10024BA38);
  __chkstk_darwin(v15 - 8);
  v142 = &v117 - v16;
  v144 = type metadata accessor for MapsSuggestionController.UpcomingFlightPrediction(0);
  v141 = *(v144 - 8);
  v17 = __chkstk_darwin(v144);
  v123 = &v117 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v143 = &v117 - v20;
  __chkstk_darwin(v19);
  v140 = &v117 - v21;
  v22 = sub_100164A3C(&unk_1002D7BD0, &unk_10024A800);
  __chkstk_darwin(v22 - 8);
  v24 = (&v117 - v23);
  v25 = type metadata accessor for Date();
  v139 = *(v25 - 8);
  v26 = __chkstk_darwin(v25);
  v126 = &v117 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v29 = &v117 - v28;
  v30 = type metadata accessor for Logger();
  v31 = *(v30 - 8);
  v32 = __chkstk_darwin(v30);
  v119 = &v117 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v32);
  v118 = &v117 - v35;
  v36 = __chkstk_darwin(v34);
  v38 = &v117 - v37;
  __chkstk_darwin(v36);
  v40 = &v117 - v39;
  v135 = a6;
  sub_100003E50(&off_1002B70B0, &v117 - v39);

  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.info.getter();
  v43 = os_log_type_enabled(v41, v42);
  v145 = a1;
  v138 = v38;
  if (v43)
  {
    v44 = swift_slowAlloc();
    *v44 = 134217984;
    if (a1)
    {
      if (a1 >> 62)
      {
        v115 = v25;
        v116 = v44;
        v45 = _CocoaArrayWrapper.endIndex.getter();
        v44 = v116;
        v25 = v115;
      }

      else
      {
        v45 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }
    }

    else
    {
      v45 = 0;
    }

    *(v44 + 4) = v45;
    v46 = v44;
    a1 = v145;

    _os_log_impl(&_mh_execute_header, v41, v42, "Obtained %ld suggestions", v46, 0xCu);

    v38 = v138;
  }

  else
  {
  }

  v48 = *(v31 + 8);
  v47 = v31 + 8;
  v136 = v48;
  v48(v40, v30);
  v49 = v142;
  if (!a1)
  {
    v147 = _swiftEmptyArrayStorage;
    v148 = _swiftEmptyArrayStorage;
    sub_100164A3C(&qword_1002D79C8, &qword_10024BA30);
    return CheckedContinuation.resume(returning:)();
  }

  v50 = Date.init()();
  v147 = _swiftEmptyArrayStorage;
  v117 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_68;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = v50)
  {
    v146 = i;
    v129 = v30;
    v128 = v47;
    if (i)
    {
      v124 = v29;
      v38 = 0;
      v29 = v145;
      v49 = v145 & 0xC000000000000001;
      v47 = v145 & 0xFFFFFFFFFFFFFF8;
      v52 = (v139 + 56);
      while (1)
      {
        if (v49)
        {
          v53 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v38 >= *(v47 + 16))
          {
            goto LABEL_65;
          }

          v53 = *&v29[8 * v38 + 32];
        }

        v54 = v53;
        v30 = v38 + 1;
        if (__OFADD__(v38, 1))
        {
          break;
        }

        v55 = [v53 dateForKey:@"MapsSuggestionsScheduledTimeKey"];
        if (v55)
        {
          v56 = v55;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          (*v52)(v24, 0, 1, v25);
          sub_1000157F0(v24, &unk_1002D7BD0, &unk_10024A800);
          v57 = [v54 numberForKey:@"MapsSuggestionsLatitudeKey"];
          if (v57 && (v57, (v58 = [v54 numberForKey:@"MapsSuggestionsLongitudeKey"]) != 0))
          {

            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            v29 = v145;
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v50 = specialized ContiguousArray._endMutation()();
          }

          else
          {
          }

          i = v146;
        }

        else
        {

          (*v52)(v24, 1, 1, v25);
          v50 = sub_1000157F0(v24, &unk_1002D7BD0, &unk_10024A800);
        }

        ++v38;
        if (v30 == i)
        {
          v29 = v124;
          v30 = v129;
          v49 = v142;
          v38 = v138;
          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

LABEL_28:
    __chkstk_darwin(v50);
    v60 = v133;
    *(&v117 - 4) = v29;
    *(&v117 - 3) = v60;
    *(&v117 - 2) = v135;
    v124 = v61;
    v62 = sub_1001B4F5C(sub_1001B9B9C, (&v117 - 6), v61);
    sub_100003E50(&off_1002B70B0, v38);

    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.info.getter();

    v65 = os_log_type_enabled(v63, v64);
    v125 = v25;
    v133 = v62;
    if (!v65)
    {

      v136(v38, v30);
      if (!v146)
      {
        break;
      }

      goto LABEL_32;
    }

    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v147 = v67;
    *v66 = 134218242;
    v68 = v117 ? _CocoaArrayWrapper.endIndex.getter() : *((v145 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v66 + 4) = v68;

    *(v66 + 12) = 2080;
    type metadata accessor for MapsSuggestionController.MapsSuggestionEntry(0);
    v77 = Array.description.getter();
    v79 = sub_10017A8A8(v77, v78, &v147);

    *(v66 + 14) = v79;
    _os_log_impl(&_mh_execute_header, v63, v64, "Filtered %ld suggestions to %s", v66, 0x16u);
    sub_100164B98(v67);

    v136(v138, v30);
    v49 = v142;
    if (!v146)
    {
      break;
    }

LABEL_32:
    v69 = 0;
    v25 = v145 & 0xC000000000000001;
    v70 = v145 & 0xFFFFFFFFFFFFFF8;
    v47 = v141 + 48;
    v24 = _swiftEmptyArrayStorage;
    v38 = &unk_10024BA38;
    while (1)
    {
      if (v25)
      {
        v71 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v69 >= *(v70 + 16))
        {
          goto LABEL_67;
        }

        v71 = *(v145 + 8 * v69 + 32);
      }

      v72 = v71;
      v30 = v69 + 1;
      if (__OFADD__(v69, 1))
      {
        break;
      }

      v147 = v71;
      sub_1001B52EC(&v147, v49);

      if ((*v47)(v49, 1, v144) == 1)
      {
        sub_1000157F0(v49, &unk_1002D79D0, &unk_10024BA38);
      }

      else
      {
        v73 = v49;
        v74 = v140;
        sub_1001B88C0(v73, v140, type metadata accessor for MapsSuggestionController.UpcomingFlightPrediction);
        sub_1001B88C0(v74, v143, type metadata accessor for MapsSuggestionController.UpcomingFlightPrediction);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_1001B77F0(0, v24[2] + 1, 1, v24, &qword_1002D79E0, &qword_10024BA58, type metadata accessor for MapsSuggestionController.UpcomingFlightPrediction);
        }

        v76 = v24[2];
        v75 = v24[3];
        if (v76 >= v75 >> 1)
        {
          v24 = sub_1001B77F0((v75 > 1), v76 + 1, 1, v24, &qword_1002D79E0, &qword_10024BA58, type metadata accessor for MapsSuggestionController.UpcomingFlightPrediction);
        }

        v24[2] = v76 + 1;
        sub_1001B88C0(v143, v24 + ((*(v141 + 80) + 32) & ~*(v141 + 80)) + *(v141 + 72) * v76, type metadata accessor for MapsSuggestionController.UpcomingFlightPrediction);
        v49 = v142;
      }

      ++v69;
      if (v30 == v146)
      {
        goto LABEL_49;
      }
    }

LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    v50 = _CocoaArrayWrapper.endIndex.getter();
  }

  v24 = _swiftEmptyArrayStorage;
LABEL_49:

  v80 = v131;
  sub_10001A718(v132, v131, &qword_1002D7178, &unk_10024B0C0);
  if ((*(v130 + 48))(v80, 1, v134) == 1)
  {
    sub_1000157F0(v80, &qword_1002D7178, &unk_10024B0C0);
    v81 = v125;
    v82 = v29;
    v83 = v133;
  }

  else
  {
    v84 = v127;
    sub_1001B88C0(v80, v127, type metadata accessor for MapsSuggestionController.SimulatedFlightTravelLocation);
    v85 = v126;
    static Date.now.getter();
    v86 = static Date.< infix(_:_:)();
    v81 = v125;
    (*(v139 + 8))(v85, v125);
    v82 = v29;
    if (v86)
    {
      v87 = v118;
      sub_100003E50(&off_1002B70B0, v118);
      v88 = Logger.logObject.getter();
      v89 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v88, v89))
      {
        v90 = swift_slowAlloc();
        *v90 = 0;
        _os_log_impl(&_mh_execute_header, v88, v89, "Simulated flight travel start time is in the past, removing", v90, 2u);
      }

      v136(v87, v129);
      v91 = type metadata accessor for TaskPriority();
      v92 = v121;
      (*(*(v91 - 8) + 56))(v121, 1, 1, v91);
      v93 = swift_allocObject();
      v93[2] = 0;
      v93[3] = 0;
      v93[4] = v122;

      sub_100176B80(0, 0, v92, &unk_10024BA50, v93);

      sub_1001B8860(v84, type metadata accessor for MapsSuggestionController.SimulatedFlightTravelLocation);
      v83 = v133;
    }

    else
    {
      v94 = v119;
      sub_100003E50(&off_1002B70B0, v119);
      v95 = v120;
      sub_1001B87F8(v84, v120, type metadata accessor for MapsSuggestionController.SimulatedFlightTravelLocation);
      v96 = Logger.logObject.getter();
      v97 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v96, v97))
      {
        v98 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        v147 = v99;
        *v98 = 136315138;
        v100 = sub_1001A5354();
        v101 = v95;
        v103 = v102;
        sub_1001B8860(v101, type metadata accessor for MapsSuggestionController.SimulatedFlightTravelLocation);
        v104 = sub_10017A8A8(v100, v103, &v147);

        *(v98 + 4) = v104;
        _os_log_impl(&_mh_execute_header, v96, v97, "Adding simulated flight travel entry %s", v98, 0xCu);
        sub_100164B98(v99);

        v81 = v125;
        v82 = v29;
      }

      else
      {

        sub_1001B8860(v95, type metadata accessor for MapsSuggestionController.SimulatedFlightTravelLocation);
      }

      v136(v94, v129);
      v105 = v123;
      static Date.now.getter();
      v106 = *(v84 + v134[5]);
      v107 = *(v84 + v134[6]);
      v108 = *(v84 + v134[7]);
      v109 = *(v84 + v134[8]);
      v110 = v144;
      (*(v139 + 16))(v105 + *(v144 + 52), v84, v81);
      static Date.+ infix(_:_:)();
      *(v105 + v110[5]) = 1;
      *(v105 + v110[6]) = 0;
      v111 = (v105 + v110[7]);
      *v111 = 0xD000000000000013;
      v111[1] = 0x800000010025D7A0;
      *(v105 + v110[8]) = v106;
      *(v105 + v110[9]) = v107;
      v112 = (v105 + v110[10]);
      *v112 = 0xD000000000000011;
      v112[1] = 0x800000010025D7C0;
      *(v105 + v110[11]) = v108;
      *(v105 + v110[12]) = v109;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_1001B77F0(0, v24[2] + 1, 1, v24, &qword_1002D79E0, &qword_10024BA58, type metadata accessor for MapsSuggestionController.UpcomingFlightPrediction);
      }

      v83 = v133;
      v114 = v24[2];
      v113 = v24[3];
      if (v114 >= v113 >> 1)
      {
        v24 = sub_1001B77F0((v113 > 1), v114 + 1, 1, v24, &qword_1002D79E0, &qword_10024BA58, type metadata accessor for MapsSuggestionController.UpcomingFlightPrediction);
      }

      sub_1001B8860(v84, type metadata accessor for MapsSuggestionController.SimulatedFlightTravelLocation);
      v24[2] = v114 + 1;
      sub_1001B88C0(v105, v24 + ((*(v141 + 80) + 32) & ~*(v141 + 80)) + *(v141 + 72) * v114, type metadata accessor for MapsSuggestionController.UpcomingFlightPrediction);
    }
  }

  v147 = v83;
  v148 = v24;
  sub_100164A3C(&qword_1002D79C8, &qword_10024BA30);
  CheckedContinuation.resume(returning:)();
  return (*(v139 + 8))(v82, v81);
}

uint64_t sub_1001B44C4@<X0>(void **a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v92 = a4;
  v89 = a3;
  v102 = a5;
  v6 = type metadata accessor for Logger();
  v94 = *(v6 - 8);
  v95 = v6;
  __chkstk_darwin(v6);
  v8 = v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100164A3C(&unk_1002D7BD0, &unk_10024A800);
  v10 = __chkstk_darwin(v9 - 8);
  v96 = (v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __chkstk_darwin(v10);
  v14 = v85 - v13;
  v15 = __chkstk_darwin(v12);
  v99 = v85 - v16;
  v17 = __chkstk_darwin(v15);
  v19 = v85 - v18;
  v20 = __chkstk_darwin(v17);
  v97 = v85 - v21;
  v22 = __chkstk_darwin(v20);
  v24 = v85 - v23;
  __chkstk_darwin(v22);
  v100 = v85 - v25;
  v26 = type metadata accessor for Date();
  v27 = *(v26 - 8);
  v28 = __chkstk_darwin(v26);
  v93 = v85 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v91 = v85 - v31;
  v32 = __chkstk_darwin(v30);
  v90 = v85 - v33;
  v34 = __chkstk_darwin(v32);
  v36 = v85 - v35;
  __chkstk_darwin(v34);
  v101 = v85 - v37;
  v38 = *a1;
  v39 = [v38 numberForKey:@"MapsSuggestionsLatitudeKey"];
  if (!v39)
  {
    goto LABEL_8;
  }

  v98 = v39;
  v40 = [v38 numberForKey:@"MapsSuggestionsLongitudeKey"];
  if (!v40)
  {

LABEL_8:
    v47 = type metadata accessor for MapsSuggestionController.MapsSuggestionEntry(0);
    v48 = *(*(v47 - 8) + 56);
    v49 = v47;
    v50 = v102;

    return v48(v50, 1, 1, v49);
  }

  v88 = v40;
  v41 = [v38 dateForKey:@"MapsSuggestionsScheduledTimeKey"];
  if (!v41)
  {
LABEL_12:

LABEL_13:
    v52 = type metadata accessor for MapsSuggestionController.MapsSuggestionEntry(0);
    return (*(*(v52 - 8) + 56))(v102, 1, 1, v52);
  }

  v42 = v41;
  v87 = v8;
  v43 = v101;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1001B840C(&qword_1002D71E0, 255, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  if ((dispatch thunk of static Comparable.>= infix(_:_:)() & 1) == 0)
  {
    (*(v27 + 8))(v43, v26);
    goto LABEL_12;
  }

  v85[3] = [v38 BOOLeanForKey:@"MapsSuggestionsCalendarIsSharedToMeKey"];
  v44 = [v38 dateForKey:@"MapsSuggestionsScheduledEndTimeKey"];
  if (v44)
  {
    v45 = v44;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v46 = 0;
  }

  else
  {
    v46 = 1;
  }

  v53 = v27;
  v54 = *(v27 + 56);
  v55 = 1;
  v54(v24, v46, 1, v26);
  sub_100191E28(v24, v100, &unk_1002D7BD0, &unk_10024A800);
  v56 = [v38 type] - 1;
  v86 = v27;
  if (v56 <= 0xF)
  {
    v53 = v86;
    if ((0xB18Bu >> v56))
    {
      (*(v86 + 16))(v36, v101, v26);
      Date.init(timeInterval:since:)();
      v55 = 0;
    }
  }

  v54(v19, v55, 1, v26);
  v57 = v97;
  sub_100191E28(v19, v97, &unk_1002D7BD0, &unk_10024A800);
  sub_10001A718(v100, v14, &unk_1002D7BD0, &unk_10024A800);
  v58 = *(v53 + 48);
  if (v58(v14, 1, v26) == 1)
  {
    sub_10001A718(v57, v99, &unk_1002D7BD0, &unk_10024A800);
    v59 = v58(v14, 1, v26);
    v60 = v96;
    if (v59 != 1)
    {
      sub_1000157F0(v14, &unk_1002D7BD0, &unk_10024A800);
    }
  }

  else
  {
    v61 = v99;
    (*(v53 + 32))(v99, v14, v26);
    v54(v61, 0, 1, v26);
    v60 = v96;
  }

  sub_10001A718(v99, v60, &unk_1002D7BD0, &unk_10024A800);
  if (v58(v60, 1, v26) == 1)
  {
    sub_1000157F0(v60, &unk_1002D7BD0, &unk_10024A800);
    sub_100003E50(&off_1002B70B0, v87);
    v62 = v38;
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 134217984;
      *(v65 + 4) = [v62 type];

      _os_log_impl(&_mh_execute_header, v63, v64, "No duration estimate for entry type %ld", v65, 0xCu);
    }

    else
    {
    }

    v84 = v101;

    (*(v94 + 8))(v87, v95);
    sub_1000157F0(v99, &unk_1002D7BD0, &unk_10024A800);
    sub_1000157F0(v57, &unk_1002D7BD0, &unk_10024A800);
    (*(v86 + 8))(v84, v26);
    sub_1000157F0(v100, &unk_1002D7BD0, &unk_10024A800);
    goto LABEL_13;
  }

  v96 = *(v86 + 32);
  v66 = v90;
  v96(v90, v60, v26);
  v67 = v98;
  [v98 doubleValue];
  v69 = v68;
  v70 = v88;
  [v88 doubleValue];
  v72 = v71;
  [v38 type];
  LODWORD(v95) = sub_1001B7E84();
  v73 = [v38 originatingSourceName];
  v74 = v58;
  v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v77 = v76;

  LOBYTE(v77) = sub_1001B7F48(v75, v77);
  sub_1000157F0(v99, &unk_1002D7BD0, &unk_10024A800);
  sub_1000157F0(v97, &unk_1002D7BD0, &unk_10024A800);
  v78 = v91;
  v79 = v96;
  v96(v91, v101, v26);
  v80 = v93;
  v79(v93, v66, v26);
  v81 = v100;
  LOBYTE(v66) = v74(v100, 1, v26) == 1;
  v82 = v102;
  *v102 = v69;
  v82[1] = v72;
  *(v82 + 16) = v95;
  *(v82 + 17) = v77;
  v83 = type metadata accessor for MapsSuggestionController.MapsSuggestionEntry(0);
  v79(v82 + v83[8], v78, v26);
  v79(v82 + v83[9], v80, v26);
  *(v82 + v83[10]) = v66;
  sub_1000157F0(v81, &unk_1002D7BD0, &unk_10024A800);
  return (*(*(v83 - 1) + 56))(v82, 0, 1, v83);
}

void *sub_1001B4F5C(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v31 = a1;
  v5 = sub_100164A3C(&qword_1002D79E8, &qword_10024BA60);
  __chkstk_darwin(v5 - 8);
  v7 = &v22 - v6;
  v30 = type metadata accessor for MapsSuggestionController.MapsSuggestionEntry(0);
  v25 = *(v30 - 8);
  v8 = __chkstk_darwin(v30);
  v29 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v24 = &v22 - v10;
  if (a3 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v12 = 0;
    v27 = a3 & 0xFFFFFFFFFFFFFF8;
    v28 = a3 & 0xC000000000000001;
    v13 = (v25 + 48);
    v14 = _swiftEmptyArrayStorage;
    v23 = a3;
    v26 = i;
    while (1)
    {
      if (v28)
      {
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v12 >= *(v27 + 16))
        {
          goto LABEL_20;
        }

        v15 = *(a3 + 8 * v12 + 32);
      }

      v16 = v15;
      v17 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      v32 = v15;
      v31(&v32);
      if (v3)
      {

        return v14;
      }

      if ((*v13)(v7, 1, v30) == 1)
      {
        sub_1000157F0(v7, &qword_1002D79E8, &qword_10024BA60);
      }

      else
      {
        v18 = v24;
        sub_1001B88C0(v7, v24, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
        sub_1001B88C0(v18, v29, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_1001B77F0(0, v14[2] + 1, 1, v14, &unk_1002D79F0, &qword_10024BA68, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
        }

        v20 = v14[2];
        v19 = v14[3];
        if (v20 >= v19 >> 1)
        {
          v14 = sub_1001B77F0((v19 > 1), v20 + 1, 1, v14, &unk_1002D79F0, &qword_10024BA68, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
        }

        v14[2] = v20 + 1;
        sub_1001B88C0(v29, v14 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v20, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
        a3 = v23;
      }

      ++v12;
      if (v17 == v26)
      {
        return v14;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1001B52EC@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v60 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v60 - v13;
  __chkstk_darwin(v12);
  v16 = &v60 - v15;
  v17 = *a1;
  if ([*a1 type] == 15)
  {
    v18 = [v17 stringForKey:@"MapsSuggestionsFlightDepartureAirportCodeKey"];
    if (v18)
    {
      v64 = v5;
      v19 = v18;
      v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      v22 = [v17 numberForKey:@"MapsSuggestionsLatitudeKey"];
      if (v22)
      {
        v65 = v21;
        v23 = v22;
        [v22 doubleValue];
        v25 = v24;

        v26 = [v17 numberForKey:@"MapsSuggestionsLongitudeKey"];
        if (v26)
        {
          v27 = v26;
          [v26 doubleValue];
          v29 = v28;

          v30 = [v17 stringForKey:@"MapsSuggestionsFlightArrivalAirportCodeKey"];
          if (v30)
          {
            v31 = v30;
            v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v33 = v32;

            v34 = [v17 numberForKey:@"MapsSuggestionsFlightArrivalAirportLatitudeKey"];
            if (v34)
            {
              v62 = v33;
              v35 = v34;
              [v34 doubleValue];
              v37 = v36;

              v38 = [v17 numberForKey:@"MapsSuggestionsFlightArrivalAirportLongitudeKey"];
              if (v38)
              {
                v39 = v38;
                [v38 doubleValue];
                v41 = v40;

                v42 = [v17 dateForKey:@"MapsSuggestionsScheduledTimeKey"];
                if (v42)
                {
                  static Date._unconditionallyBridgeFromObjectiveC(_:)();

                  v43 = v64;
                  v44 = *(v64 + 32);
                  v44(v16, v14, v4);
                  v45 = [v17 dateForKey:@"MapsSuggestionsScheduledEndTimeKey"];
                  if (v45)
                  {
                    v46 = v44;
                    v47 = v45;
                    static Date._unconditionallyBridgeFromObjectiveC(_:)();

                    v46(v11, v8, v4);
                    static Date.now.getter();
                    v48 = [v17 BOOLeanForKey:@"MapsSuggestionsAlreadyThereKey"];
                    v49 = [v17 originatingSourceName];
                    v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v52 = v51;

                    LOBYTE(v49) = sub_1001B7F48(v50, v52);
                    v53 = type metadata accessor for MapsSuggestionController.UpcomingFlightPrediction(0);
                    v46((a2 + v53[13]), v16, v4);
                    v46((a2 + v53[14]), v11, v4);
                    *(a2 + v53[5]) = v48;
                    *(a2 + v53[6]) = v49;
                    v54 = (a2 + v53[7]);
                    v55 = v65;
                    *v54 = v63;
                    v54[1] = v55;
                    *(a2 + v53[8]) = v25;
                    *(a2 + v53[9]) = v29;
                    v56 = (a2 + v53[10]);
                    v57 = v62;
                    *v56 = v61;
                    v56[1] = v57;
                    *(a2 + v53[11]) = v37;
                    *(a2 + v53[12]) = v41;
                    return (*(*(v53 - 1) + 56))(a2, 0, 1, v53);
                  }

                  (*(v43 + 8))(v16, v4);
                }
              }
            }
          }
        }
      }
    }
  }

  v59 = type metadata accessor for MapsSuggestionController.UpcomingFlightPrediction(0);
  return (*(*(v59 - 8) + 56))(a2, 1, 1, v59);
}

uint64_t sub_1001B5828(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4[2] = a4;
  v5 = *a4 + 688;
  v4[3] = *v5;
  v4[4] = v5 & 0xFFFFFFFFFFFFLL | 0xB072000000000000;
  return _swift_task_switch(sub_1001995E8, a4, 0);
}

uint64_t sub_1001B586C(char a1)
{
  v3 = sub_100164A3C(&qword_1002D7180, &qword_10024ABF0);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *(v7 + 32) = v1;
  *(v7 + 40) = a1;

  sub_100176B80(0, 0, v5, &unk_10024B138, v7);
}

uint64_t sub_1001B597C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5)
{
  *(v5 + 40) = a5;
  *(v5 + 16) = a4;
  v6 = *a4 + 664;
  *(v5 + 24) = *v6;
  *(v5 + 32) = v6 & 0xFFFFFFFFFFFFLL | 0x44D4000000000000;
  return _swift_task_switch(sub_1001B59C4, a4, 0);
}

uint64_t sub_1001B59C4()
{
  (*(v0 + 24))(*(v0 + 40));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001B5A2C(char a1)
{
  v3 = sub_100164A3C(&qword_1002D7180, &qword_10024ABF0);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *(v7 + 32) = v1;
  *(v7 + 40) = a1;

  sub_100176B80(0, 0, v5, &unk_10024B148, v7);
}

uint64_t sub_1001B5B3C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5)
{
  *(v5 + 40) = a5;
  *(v5 + 16) = a4;
  v6 = *a4 + 672;
  *(v5 + 24) = *v6;
  *(v5 + 32) = v6 & 0xFFFFFFFFFFFFLL | 0xC797000000000000;
  return _swift_task_switch(sub_1001B5B84, a4, 0);
}

uint64_t sub_1001B5B84()
{
  (*(v0 + 24))(*(v0 + 40));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001B5BEC(double a1, double a2)
{
  *(v3 + 32) = v2;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  return _swift_task_switch(sub_1001B5C10, v2, 0);
}

uint64_t sub_1001B5C10()
{
  v1 = *(*(v0 + 32) + 232);
  v2 = [objc_allocWithZone(CLLocation) initWithLatitude:*(v0 + 16) longitude:*(v0 + 24)];
  *(v0 + 40) = v2;
  v5 = (v1 + *v1);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_1001B5D3C;

  return v5(v2);
}

uint64_t sub_1001B5D3C(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 40);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

void *sub_1001B5E60()
{
  sub_1000157F0(v0 + 112, &qword_1002D7168, &qword_10024B0B8);
  sub_100164B98((v0 + 152));
  sub_100164B98((v0 + 192));

  sub_1000157F0(v0 + OBJC_IVAR____TtC17wirelessinsightsd24MapsSuggestionController_simulatedFlightTravelLocation, &qword_1002D7178, &unk_10024B0C0);
  sub_1001B8A60(v0 + OBJC_IVAR____TtC17wirelessinsightsd24MapsSuggestionController_delegate);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1001B5F54()
{
  sub_1001B5E60();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1001B5F80@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  type metadata accessor for MapsSuggestionController(0);

  return sub_100003E50(a1, a2);
}

unint64_t sub_1001B6064()
{
  sub_100164A3C(&qword_1002D71E8, &qword_10024B158);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_10024B050;
  *(v1 + 32) = 0x6F6E6B6E556D756ELL;
  *(v1 + 72) = &type metadata for Int;
  *(v1 + 80) = &off_1002B54E0;
  v2 = *v0;
  v3 = v0[1];
  *(v1 + 40) = 0xEA00000000006E77;
  *(v1 + 48) = v2;
  *(v1 + 88) = 0x656D6F486D756ELL;
  *(v1 + 96) = 0xE700000000000000;
  *(v1 + 128) = &type metadata for Int;
  *(v1 + 136) = &off_1002B54E0;
  *(v1 + 104) = v3;
  *(v1 + 144) = 0x6B726F576D756ELL;
  *(v1 + 152) = 0xE700000000000000;
  *(v1 + 184) = &type metadata for Int;
  *(v1 + 192) = &off_1002B54E0;
  v4 = v0[3];
  *(v1 + 160) = v0[2];
  *(v1 + 200) = 0xD000000000000010;
  *(v1 + 208) = 0x800000010025D060;
  *(v1 + 240) = &type metadata for Int;
  *(v1 + 248) = &off_1002B54E0;
  *(v1 + 216) = v4;
  *(v1 + 256) = 0xD000000000000013;
  *(v1 + 264) = 0x800000010025D080;
  *(v1 + 296) = &type metadata for Int;
  *(v1 + 304) = &off_1002B54E0;
  v5 = v0[5];
  *(v1 + 272) = v0[4];
  strcpy((v1 + 312), "numParkedCar");
  *(v1 + 325) = 0;
  *(v1 + 326) = -5120;
  *(v1 + 352) = &type metadata for Int;
  *(v1 + 360) = &off_1002B54E0;
  *(v1 + 328) = v5;
  *(v1 + 368) = 0xD000000000000018;
  *(v1 + 376) = 0x800000010025D0A0;
  *(v1 + 408) = &type metadata for Int;
  *(v1 + 416) = &off_1002B54E0;
  v6 = v0[7];
  *(v1 + 384) = v0[6];
  strcpy((v1 + 424), "numRidesharing");
  *(v1 + 439) = -18;
  *(v1 + 464) = &type metadata for Int;
  *(v1 + 472) = &off_1002B54E0;
  *(v1 + 440) = v6;
  *(v1 + 480) = 0x6C65746F486D756ELL;
  *(v1 + 488) = 0xE800000000000000;
  *(v1 + 520) = &type metadata for Int;
  *(v1 + 528) = &off_1002B54E0;
  v7 = v0[9];
  *(v1 + 496) = v0[8];
  strcpy((v1 + 536), "numCarRental");
  *(v1 + 549) = 0;
  *(v1 + 550) = -5120;
  *(v1 + 576) = &type metadata for Int;
  *(v1 + 584) = &off_1002B54E0;
  *(v1 + 552) = v7;
  *(v1 + 592) = 0x65766172546D756ELL;
  *(v1 + 600) = 0xEF746867696C466CLL;
  *(v1 + 632) = &type metadata for Int;
  *(v1 + 640) = &off_1002B54E0;
  v8 = v0[11];
  *(v1 + 608) = v0[10];
  *(v1 + 648) = 0x7274726F506D756ELL;
  *(v1 + 656) = 0xEB00000000746961;
  *(v1 + 688) = &type metadata for Int;
  *(v1 + 696) = &off_1002B54E0;
  *(v1 + 664) = v8;
  *(v1 + 704) = 0x6F6F6863536D756ELL;
  *(v1 + 712) = 0xE90000000000006CLL;
  *(v1 + 744) = &type metadata for Int;
  *(v1 + 752) = &off_1002B54E0;
  v9 = v0[13];
  *(v1 + 720) = v0[12];
  strcpy((v1 + 760), "numOrderStatus");
  *(v1 + 775) = -18;
  *(v1 + 800) = &type metadata for Int;
  *(v1 + 808) = &off_1002B54E0;
  *(v1 + 776) = v9;
  *(v1 + 816) = 0xD000000000000012;
  *(v1 + 824) = 0x800000010025D0C0;
  *(v1 + 856) = &type metadata for Int;
  *(v1 + 864) = &off_1002B54E0;
  v10 = v0[15];
  *(v1 + 832) = v0[14];
  strcpy((v1 + 872), "numUserPlace");
  *(v1 + 885) = 0;
  *(v1 + 886) = -5120;
  *(v1 + 912) = &type metadata for Int;
  *(v1 + 920) = &off_1002B54E0;
  *(v1 + 888) = v10;
  *(v1 + 928) = 0xD000000000000010;
  *(v1 + 936) = 0x800000010025D0E0;
  *(v1 + 968) = &type metadata for Int;
  *(v1 + 976) = &off_1002B54E0;
  v11 = v0[17];
  *(v1 + 944) = v0[16];
  *(v1 + 984) = 0x70616D6E556D756ELL;
  *(v1 + 992) = 0xEB00000000646570;
  *(v1 + 1024) = &type metadata for Int;
  *(v1 + 1032) = &off_1002B54E0;
  *(v1 + 1000) = v11;
  v12 = sub_1001B8A88(v1);
  swift_setDeallocating();
  sub_100164A3C(&qword_1002D71F0, &qword_10024B160);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v12;
}

unint64_t sub_1001B6418()
{
  sub_100164A3C(&qword_1002D71E8, &qword_10024B158);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10024B060;
  *(inited + 32) = 0x736D6574496D756ELL;
  *(inited + 72) = &type metadata for Int;
  *(inited + 80) = &off_1002B54E0;
  v2 = *v0;
  v3 = v0[1];
  *(inited + 40) = 0xEF64656863746546;
  *(inited + 48) = v2;
  *(inited + 88) = 0xD000000000000015;
  *(inited + 96) = 0x800000010025D100;
  *(inited + 128) = &type metadata for Int;
  *(inited + 136) = &off_1002B54E0;
  *(inited + 104) = v3;
  *(inited + 144) = 0xD000000000000018;
  *(inited + 152) = 0x800000010025D120;
  *(inited + 184) = &type metadata for Int;
  *(inited + 192) = &off_1002B54E0;
  v4 = v0[3];
  *(inited + 160) = v0[2];
  *(inited + 200) = 0xD000000000000017;
  *(inited + 208) = 0x800000010025D140;
  *(inited + 240) = &type metadata for Int;
  *(inited + 248) = &off_1002B54E0;
  *(inited + 216) = v4;
  *(inited + 256) = 0xD00000000000001FLL;
  *(inited + 264) = 0x800000010025D160;
  v5 = v0[4];
  *(inited + 296) = &type metadata for Int;
  *(inited + 304) = &off_1002B54E0;
  *(inited + 272) = v5;
  *(inited + 312) = 0xD000000000000014;
  *(inited + 320) = 0x800000010025D180;
  v6 = *(v0 + 40);
  *(inited + 352) = &type metadata for Bool;
  *(inited + 360) = &off_1002B54D0;
  *(inited + 328) = v6;
  v7 = sub_1001B8A88(inited);
  swift_setDeallocating();
  sub_100164A3C(&qword_1002D71F0, &qword_10024B160);
  swift_arrayDestroy();
  v8 = sub_1001B6064();
  v9 = v8 + 64;
  v10 = 1 << *(v8 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v8 + 64);
  v13 = (v10 + 63) >> 6;
  v57 = v8;

  v14 = 0;
  while (1)
  {
    if (!v12)
    {
      while (1)
      {
        v16 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v16 >= v13)
        {

          return v7;
        }

        v12 = *(v9 + 8 * v16);
        ++v14;
        if (v12)
        {
          v14 = v16;
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

LABEL_12:
    v17 = __clz(__rbit64(v12)) | (v14 << 6);
    v18 = (*(v57 + 48) + 16 * v17);
    v20 = *v18;
    v19 = v18[1];
    sub_100164B34(*(v57 + 56) + 40 * v17, v62);
    v61[0] = v20;
    v61[1] = v19;
    sub_100164B34(v62, v60);
    swift_bridgeObjectRetain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v59 = v7;
    v22 = sub_100164498(v20, v19);
    v24 = *(v7 + 16);
    v25 = (v23 & 1) == 0;
    v26 = __OFADD__(v24, v25);
    v27 = v24 + v25;
    if (v26)
    {
      goto LABEL_41;
    }

    v28 = v23;
    if (*(v7 + 24) < v27)
    {
      sub_1001B79CC(v27, isUniquelyReferenced_nonNull_native);
      v29 = v59;
      v22 = sub_100164498(v20, v19);
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_44;
      }

LABEL_18:
      if (v28)
      {
        goto LABEL_5;
      }

      goto LABEL_19;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v29 = v7;
      goto LABEL_18;
    }

    v50 = v22;
    sub_100164A3C(&qword_1002D71F8, &qword_10024B168);
    v34 = static _DictionaryStorage.copy(original:)();
    v29 = v34;
    if (*(v7 + 16))
    {
      break;
    }

LABEL_37:

    v22 = v50;
    if (v28)
    {
LABEL_5:
      v15 = (*(v29 + 56) + 40 * v22);
      sub_100164B98(v15);
      sub_10001A700(v60, v15);

      goto LABEL_6;
    }

LABEL_19:
    *(v29 + 8 * (v22 >> 6) + 64) |= 1 << v22;
    v31 = (*(v29 + 48) + 16 * v22);
    *v31 = v20;
    v31[1] = v19;
    sub_10001A700(v60, *(v29 + 56) + 40 * v22);
    v32 = *(v29 + 16);
    v26 = __OFADD__(v32, 1);
    v33 = v32 + 1;
    if (v26)
    {
      goto LABEL_42;
    }

    *(v29 + 16) = v33;
LABEL_6:
    v12 &= v12 - 1;
    sub_1000157F0(v61, &qword_1002D7200, &qword_10024B170);
    v7 = v29;
  }

  v35 = (v34 + 64);
  v36 = (v7 + 64);
  v37 = ((1 << *(v29 + 32)) + 63) >> 6;
  if (v29 != v7 || v35 >= &v36[8 * v37])
  {
    memmove(v35, v36, 8 * v37);
  }

  v38 = 0;
  *(v29 + 16) = *(v7 + 16);
  v39 = 1 << *(v7 + 32);
  if (v39 < 64)
  {
    v40 = ~(-1 << v39);
  }

  else
  {
    v40 = -1;
  }

  v41 = v40 & *(v7 + 64);
  v42 = (v39 + 63) >> 6;
  v51 = v42;
  if (v41)
  {
    do
    {
      v43 = __clz(__rbit64(v41));
      v55 = (v41 - 1) & v41;
LABEL_35:
      v46 = v43 | (v38 << 6);
      v53 = 16 * v46;
      v47 = (*(v7 + 48) + 16 * v46);
      v54 = *v47;
      v56 = v47[1];
      v52 = 40 * v46;
      sub_100164B34(*(v7 + 56) + 40 * v46, v58);
      v48 = (*(v29 + 48) + v53);
      *v48 = v54;
      v48[1] = v56;
      sub_10001A700(v58, *(v29 + 56) + v52);

      v42 = v51;
      v41 = v55;
    }

    while (v55);
  }

  v44 = v38;
  while (1)
  {
    v38 = v44 + 1;
    if (__OFADD__(v44, 1))
    {
      break;
    }

    if (v38 >= v42)
    {
      goto LABEL_37;
    }

    v45 = *(v7 + 64 + 8 * v38);
    ++v44;
    if (v45)
    {
      v43 = __clz(__rbit64(v45));
      v55 = (v45 - 1) & v45;
      goto LABEL_35;
    }
  }

LABEL_43:
  __break(1u);
LABEL_44:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t sub_1001B6960()
{
  sub_100164A3C(&qword_1002D71E8, &qword_10024B158);
  inited = swift_initStackObject();
  *(inited + 32) = 0xD000000000000011;
  *(inited + 16) = xmmword_10024B070;
  *(inited + 72) = &type metadata for Int;
  *(inited + 80) = &off_1002B54E0;
  v2 = *v0;
  v3 = v0[1];
  *(inited + 40) = 0x800000010025D1A0;
  *(inited + 48) = v2;
  *(inited + 88) = 0xD000000000000016;
  *(inited + 96) = 0x800000010025D1C0;
  *(inited + 128) = &type metadata for Int;
  *(inited + 136) = &off_1002B54E0;
  *(inited + 104) = v3;
  *(inited + 144) = 0xD000000000000013;
  *(inited + 152) = 0x800000010025D1E0;
  *(inited + 184) = &type metadata for Int;
  *(inited + 192) = &off_1002B54E0;
  v4 = v0[3];
  *(inited + 160) = v0[2];
  *(inited + 200) = 0xD000000000000018;
  *(inited + 208) = 0x800000010025D200;
  *(inited + 240) = &type metadata for Int;
  *(inited + 248) = &off_1002B54E0;
  *(inited + 216) = v4;
  *(inited + 256) = 0xD00000000000001BLL;
  *(inited + 264) = 0x800000010025D220;
  *(inited + 296) = &type metadata for Int;
  *(inited + 304) = &off_1002B54E0;
  v5 = v0[5];
  *(inited + 272) = v0[4];
  *(inited + 312) = 0xD00000000000001FLL;
  *(inited + 320) = 0x800000010025D240;
  *(inited + 352) = &type metadata for Int;
  *(inited + 360) = &off_1002B54E0;
  *(inited + 328) = v5;
  *(inited + 368) = 0x61746E6563726570;
  *(inited + 376) = 0xEF726F7272456567;
  *(inited + 408) = &type metadata for Int;
  *(inited + 416) = &off_1002B54E0;
  v6 = v0[7];
  *(inited + 384) = v0[6];
  strcpy((inited + 424), "updateInterval");
  *(inited + 439) = -18;
  *(inited + 464) = &type metadata for Int;
  *(inited + 472) = &off_1002B54E0;
  *(inited + 440) = v6;
  v7 = sub_1001B8A88(inited);
  swift_setDeallocating();
  sub_100164A3C(&qword_1002D71F0, &qword_10024B160);
  swift_arrayDestroy();
  return v7;
}

unint64_t sub_1001B6B38()
{
  sub_100164A3C(&qword_1002D71E8, &qword_10024B158);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10024B060;
  *(inited + 32) = 0x7079547972746E65;
  *(inited + 40) = 0xE900000000000065;
  v2 = *v0;
  *(inited + 72) = &type metadata for MapsSuggestionController.MapsSuggestionEntry.EntryType;
  *(inited + 80) = &off_1002B7138;
  *(inited + 48) = v2;
  strcpy((inited + 88), "predictionType");
  *(inited + 103) = -18;
  v3 = _s37MapsSuggestionsPredictedEventAccuracyVMa(0);
  v4 = v3[5];
  v5 = type metadata accessor for PrivateServicePrediction.ServicePredictionType();
  *(inited + 128) = v5;
  *(inited + 136) = &off_1002B7188;
  v6 = sub_1001B8BDC((inited + 104));
  (*(*(v5 - 8) + 16))(v6, &v0[v4], v5);
  strcpy((inited + 144), "didEventOccur");
  *(inited + 158) = -4864;
  v7 = v0[v3[6]];
  *(inited + 184) = &_s23ServicePredictionMetricV15EventOccurrenceON;
  *(inited + 192) = &off_1002B7A90;
  *(inited + 160) = v7;
  *(inited + 200) = 0xD000000000000018;
  *(inited + 208) = 0x800000010025D260;
  v8 = *&v0[v3[8]];
  *(inited + 240) = &type metadata for Double;
  *(inited + 248) = &off_1002B54F0;
  *(inited + 216) = v8;
  strcpy((inited + 256), "haveLocation");
  *(inited + 269) = 0;
  *(inited + 270) = -5120;
  v9 = v0[v3[9]];
  *(inited + 296) = &_s23ServicePredictionMetricV8LocationON;
  *(inited + 304) = &off_1002B7AB8;
  *(inited + 272) = v9;
  *(inited + 312) = 0xD000000000000015;
  *(inited + 320) = 0x800000010025D280;
  v10 = v0[v3[10]];
  *(inited + 352) = &_s23ServicePredictionMetricV17PredictedLocationON;
  *(inited + 360) = &off_1002B7AE0;
  *(inited + 328) = v10;
  v11 = sub_1001B8A88(inited);
  swift_setDeallocating();
  sub_100164A3C(&qword_1002D71F0, &qword_10024B160);
  swift_arrayDestroy();
  return v11;
}

unint64_t sub_1001B6D9C(char a1)
{
  result = 0x64657070616D6E75;
  switch(a1)
  {
    case 1:
      result = 0x6E776F6E6B6E75;
      break;
    case 2:
    case 3:
    case 15:
    case 16:
      result = 0xD000000000000014;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0x7261646E656C6163;
      break;
    case 6:
    case 7:
    case 14:
    case 17:
    case 18:
      result = 0x726568746FLL;
      break;
    case 8:
      result = 0x7461767265736572;
      break;
    case 9:
    case 10:
    case 11:
      result = 0x76456C6576617274;
      break;
    case 12:
      result = 0x6C466C6576617274;
      break;
    case 13:
      result = 0x646574656B636974;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1001B6EE4(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x76456C6576617274;
    v6 = 0x6C466C6576617274;
    if (a1 != 8)
    {
      v6 = 0x646574656B636974;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x726568746FLL;
    if (a1 != 5)
    {
      v7 = 0x7461767265736572;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x64657070616D6E75;
    v2 = 0xD000000000000014;
    v3 = 0xD000000000000010;
    if (a1 != 3)
    {
      v3 = 0x7261646E656C6163;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x6E776F6E6B6E75;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1001B7054(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_1001B6EE4(*a1);
  v5 = v4;
  if (v3 == sub_1001B6EE4(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1001B70DC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_1001B6EE4(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001B7140(uint64_t a1)
{
  sub_1001B6EE4(*v1);
  String.hash(into:)();
}

Swift::Int sub_1001B7194(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  sub_1001B6EE4(v2);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1001B71F4@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001B8C40(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1001B7224@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1001B6EE4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1001B7278(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x6552676E69746172;
    v7 = 0x7261687365646972;
    if (a1 != 10)
    {
      v7 = 0x74756374726F6873;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x4B65636E616E6966;
    v9 = 0x79616C50726163;
    if (a1 != 7)
    {
      v9 = 0x5064657469736976;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x6E776F6E6B6E75;
    v2 = 0x7261646E656C6163;
    v3 = 0x7461767265736572;
    if (a1 != 4)
    {
      v3 = 0x656E6E6F43707061;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x656E6974756F72;
    if (a1 != 1)
    {
      v4 = 0x74656C6C6177;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1001B7428(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_1001B7278(*a1);
  v5 = v4;
  if (v3 == sub_1001B7278(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1001B74B0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_1001B7278(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001B7514(uint64_t a1)
{
  sub_1001B7278(*v1);
  String.hash(into:)();
}

Swift::Int sub_1001B7568(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  sub_1001B7278(v2);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1001B75C8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001B8C8C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1001B75F8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1001B7278(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1001B764C(uint64_t a1)
{
  v2 = *(a1 - 8);
  __chkstk_darwin(a1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4);
  v5 = (*(v2 + 88))(v4, a1);
  if (v5 == enum case for PrivateServicePrediction.ServicePredictionType.noCellularDataService(_:))
  {
    return 0xD000000000000015;
  }

  if (v5 == enum case for PrivateServicePrediction.ServicePredictionType.cellularDataCongestion(_:))
  {
    return 0xD000000000000016;
  }

  if (v5 == enum case for PrivateServicePrediction.ServicePredictionType.lowSignalStrength(_:))
  {
    return 0xD000000000000011;
  }

  (*(v2 + 8))(v4, a1);
  return 0x6E776F6E6B6E75;
}

void *sub_1001B77F0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100164A3C(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

Swift::Int sub_1001B79CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100164A3C(&qword_1002D71F8, &qword_10024B168);
  v33 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 40 * v20);
      if (v33)
      {
        sub_10001A700(v24, v34);
      }

      else
      {
        sub_100164B34(v24, v34);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_10001A700(v34, *(v7 + 56) + 40 * v15);
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

id sub_1001B7C90(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7, void *a8, double a9, double a10, uint64_t a11, uint64_t a12)
{
  ObjectType = swift_getObjectType();
  *&v12[OBJC_IVAR___WISCellularCoverageTile_latitude] = a9;
  *&v12[OBJC_IVAR___WISCellularCoverageTile_longitude] = a10;
  *&v12[OBJC_IVAR___WISCellularCoverageTile_noServiceCount] = a1;
  *&v12[OBJC_IVAR___WISCellularCoverageTile_inServiceCount] = a2;
  *&v12[OBJC_IVAR___WISCellularCoverageTile_limitedServiceCount] = a3;
  if (a4)
  {
    v24 = [a4 integerValue];
  }

  else
  {
    v24 = 0;
  }

  v25 = &v12[OBJC_IVAR___WISCellularCoverageTile_highestFrequencyRsrp];
  *v25 = v24;
  v25[8] = a4 == 0;
  *&v12[OBJC_IVAR___WISCellularCoverageTile_highestCountMCC] = a5;
  *&v12[OBJC_IVAR___WISCellularCoverageTile_highestCountMNC] = a6;
  if (a7)
  {
    v26 = [a7 integerValue];
  }

  else
  {
    v26 = 0;
  }

  v27 = &v12[OBJC_IVAR___WISCellularCoverageTile_highestCountBand];
  *v27 = v26;
  v27[8] = a7 == 0;
  if (a8)
  {
    v28 = [a8 integerValue];
  }

  else
  {
    v28 = 0;
  }

  v29 = &v12[OBJC_IVAR___WISCellularCoverageTile_highestCountARFCN];
  *v29 = v28;
  v29[8] = a8 == 0;
  *&v12[OBJC_IVAR___WISCellularCoverageTile_highestCountRAT] = a11;
  *&v12[OBJC_IVAR___WISCellularCoverageTile_highestCount] = a12;
  v31.receiver = v12;
  v31.super_class = ObjectType;
  return objc_msgSendSuper2(&v31, "init");
}

uint64_t sub_1001B7F48(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD00000000000001CLL && 0x800000010025D830 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v4 = 1;
  }

  else if (a1 == 0xD00000000000001BLL && 0x800000010025D850 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v4 = 2;
  }

  else if (a1 == 0xD00000000000001DLL && 0x800000010025D870 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v4 = 3;
  }

  else if (a1 == 0xD000000000000021 && 0x800000010025D890 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v4 = 4;
  }

  else if (a1 == 0xD000000000000022 && 0x800000010025D8C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v4 = 5;
  }

  else
  {
    if ((a1 != 0xD000000000000022 || 0x800000010025D8F0 != a2) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      if (a1 == 0xD00000000000001FLL && 0x800000010025D920 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v4 = 6;
        goto LABEL_5;
      }

      if (a1 == 0xD00000000000001CLL && 0x800000010025D940 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v4 = 7;
        goto LABEL_5;
      }

      if (a1 == 0xD000000000000022 && 0x800000010025D960 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v4 = 8;
        goto LABEL_5;
      }

      if (a1 == 0xD000000000000022 && 0x800000010025D990 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v4 = 9;
        goto LABEL_5;
      }

      if (a1 == 0xD000000000000020 && 0x800000010025D9C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v4 = 10;
        goto LABEL_5;
      }

      if (a1 == 0xD00000000000001DLL && 0x800000010025D9F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v4 = 11;
        goto LABEL_5;
      }

      if ((a1 != 0xD00000000000001BLL || 0x800000010025DA10 != a2) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && (a1 != 0xD00000000000001DLL || 0x800000010025DA30 != a2))
      {
        _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    v4 = 0;
  }

LABEL_5:

  return v4;
}

uint64_t sub_1001B8318(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16) || *(a1 + 17) != *(a2 + 17))
  {
    return 0;
  }

  v4 = type metadata accessor for MapsSuggestionController.MapsSuggestionEntry(0);
  if (static Date.== infix(_:_:)() & 1) != 0 && (static Date.== infix(_:_:)())
  {
    v5 = *(a1 + *(v4 + 40)) ^ *(a2 + *(v4 + 40)) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_1001B840C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001B8454(uint64_t a1, uint64_t a2)
{
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for MapsSuggestionController.UpcomingFlightPrediction(0);
  if (*(a1 + v4[5]) != *(a2 + v4[5]) || *(a1 + v4[6]) != *(a2 + v4[6]))
  {
    return 0;
  }

  v5 = v4[7];
  v7 = *(a1 + v5);
  v6 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  if (v7 != *v8 || v6 != v8[1])
  {
    v10 = v4;
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v4 = v10;
    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  if (*(a1 + v4[8]) != *(a2 + v4[8]) || *(a1 + v4[9]) != *(a2 + v4[9]))
  {
    return 0;
  }

  v12 = v4[10];
  v14 = *(a1 + v12);
  v13 = *(a1 + v12 + 8);
  v15 = (a2 + v12);
  if (v14 != *v15 || v13 != v15[1])
  {
    v17 = v4;
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v4 = v17;
    if ((v18 & 1) == 0)
    {
      return 0;
    }
  }

  if (*(a1 + v4[11]) != *(a2 + v4[11]) || *(a1 + v4[12]) != *(a2 + v4[12]) || (static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  return static Date.== infix(_:_:)();
}

uint64_t sub_1001B85E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100164A3C(&qword_1002D7178, &unk_10024B0C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001B869C()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10017F434;

  return sub_1001A8558(v3, v4, v5, v2);
}

unint64_t sub_1001B8730()
{
  result = qword_1002D7C50;
  if (!qword_1002D7C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D7C50);
  }

  return result;
}

unint64_t sub_1001B8784()
{
  result = qword_1002D71A0;
  if (!qword_1002D71A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D71A0);
  }

  return result;
}

uint64_t sub_1001B87F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001B8860(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001B88C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001B8928()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100002A5C;

  return sub_1001B597C(v4, v5, v6, v2, v3);
}

uint64_t sub_1001B89C4()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100002A5C;

  return sub_1001B5B3C(v4, v5, v6, v2, v3);
}

unint64_t sub_1001B8A88(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100164A3C(&qword_1002D71F8, &qword_10024B168);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10001A718(v4, &v13, &qword_1002D71F0, &qword_10024B160);
      v5 = v13;
      v6 = v14;
      result = sub_100164498(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10001A700(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t *sub_1001B8BDC(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_1001B8C40(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1002B6C58, v2);

  if (v3 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1001B8C8C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1002B6D68, v2);

  if (v3 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1001B8CD8(uint64_t a1, uint64_t a2)
{
  result = sub_1001B840C(&qword_1002D7208, a2, type metadata accessor for CellularCoverageTile, &protocol conformance descriptor for NSObject);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1001B8D34()
{
  result = qword_1002D7210;
  if (!qword_1002D7210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D7210);
  }

  return result;
}

unint64_t sub_1001B8DD0()
{
  result = qword_1002D7228;
  if (!qword_1002D7228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D7228);
  }

  return result;
}

unint64_t sub_1001B8EB8()
{
  result = qword_1002D7248;
  if (!qword_1002D7248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D7248);
  }

  return result;
}

unint64_t sub_1001B8F10()
{
  result = qword_1002D7250;
  if (!qword_1002D7250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D7250);
  }

  return result;
}

void sub_1001B8F6C(uint64_t a1)
{
  sub_1001B90A4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1001B90A4(uint64_t a1)
{
  if (!qword_1002D7330)
  {
    type metadata accessor for MapsSuggestionController.SimulatedFlightTravelLocation(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1002D7330);
    }
  }
}

uint64_t sub_1001B9124(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MapsSuggestionController.MapsSuggestionEntry.EntryType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEE)
  {
    goto LABEL_17;
  }

  if (a2 + 18 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 18) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 18;
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

      return (*a1 | (v4 << 8)) - 18;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 18;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v8 = v6 - 19;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MapsSuggestionController.MapsSuggestionEntry.EntryType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEE)
  {
    v4 = 0;
  }

  if (a2 > 0xED)
  {
    v5 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
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
    *result = a2 + 18;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1001B934C(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1001B9420(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 sub_1001B94A0(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = result;
  *(a1 + 144) = v9;
  return result;
}

uint64_t sub_1001B94D4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 192))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1001B9528(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 184) = 0;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 192) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 192) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2 + 1;
    }
  }

  return result;
}

__n128 sub_1001B95AC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_1001B95D8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 144))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001B95F8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 144) = v3;
  return result;
}

__n128 sub_1001B9658(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1001B966C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001B968C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 64) = v3;
  return result;
}

uint64_t sub_1001B9700(uint64_t a1)
{
  result = type metadata accessor for PrivateServicePrediction.ServicePredictionType();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MapsSuggestionController.MapsSuggestionEntry.EntryType.MetricApprovedFields(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MapsSuggestionController.MapsSuggestionEntry.EntryType.MetricApprovedFields(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1001B98FC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1001B9990(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1001B9A50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001B9A68(unint64_t a1)
{
  v3 = *(sub_100164A3C(&qword_1002D79C8, &qword_10024BA30) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(sub_100164A3C(&qword_1002D7178, &unk_10024B0C0) - 8);
  v7 = (v5 + *(v6 + 80) + 208) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + v8);
  v10 = *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1001B3238(a1, v1 + v4, (v1 + v5), v1 + v7, v9, v10);
}

uint64_t sub_1001B9BCC()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100002A5C;

  return sub_1001B5828(v3, v4, v5, v2);
}

uint64_t sub_1001B9C60()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100002A5C;

  return sub_1001A9ACC(v2, v4, v5, v6, v3);
}

uint64_t type metadata accessor for MapsNavigationController.CoverageInfo(uint64_t a1)
{
  result = qword_1002DAE90;
  if (!qword_1002DAE90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001B9DA4(uint64_t a1, char a2)
{
  swift_beginAccess();
  *(v2 + 120) = a1;
  *(v2 + 128) = a2 & 1;
}

uint64_t sub_1001B9E30(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 136) = a1;
}

uint64_t sub_1001B9FEC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 536) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1001BA04C(uint64_t *a1))(uint64_t a1, char a2, __n128 a3)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 536);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_1001BA0E0;
}

void sub_1001BA0E0(uint64_t a1, char a2, __n128 a3)
{
  v4 = *a1;
  *(*(*a1 + 40) + 536) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v4);
}

id sub_1001BA1B0(const void *a1, void *a2)
{
  v3 = v2;
  v30 = a2;
  v24 = a1;
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for Logger();
  v27 = *(v4 - 8);
  v28 = v4;
  __chkstk_darwin(v4);
  v26 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v6 = *(v29 - 8);
  __chkstk_darwin(v29);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v9);
  v10 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v10 - 8);
  swift_defaultActor_initialize();
  sub_100164AEC(0, &qword_1002D6640, OS_dispatch_queue_ptr);

  static DispatchQoS.unspecified.getter();
  v32 = _swiftEmptyArrayStorage;
  sub_1001BCB78(&qword_1002D5E50, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100164A3C(&unk_1002D6650, &qword_100249DD0);
  sub_100180530();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v6 + 104))(v8, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v29);
  v11 = v30;
  *(v2 + 112) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v2 + 120) = 0;
  *(v2 + 128) = 1;
  *(v2 + 136) = _swiftEmptyArrayStorage;
  *(v2 + 536) = 0;
  swift_unknownObjectWeakInit();
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v13 = *(v2 + 112);
    v14 = objc_allocWithZone(GEONavigationListener);
    v15 = v13;
    v12 = [v14 initWithQueue:{v15, v24, ObjectType}];

    if (!v12)
    {

      sub_1001B8A60(v3 + 528);
      type metadata accessor for MapsNavigationController();
      swift_defaultActor_destroy();
      swift_deallocPartialClassInstance();
      return 0;
    }
  }

  *(v3 + 144) = v12;
  memcpy((v3 + 152), v24, 0x178uLL);
  v16 = type metadata accessor for MapsNavigationController();
  v31.receiver = v3;
  v31.super_class = v16;
  v17 = v12;
  v18 = objc_msgSendSuper2(&v31, "init");
  [v17 setNoCellCoverageAlertPrecedingTime:240.0];
  [v17 setDelegate:v18];
  v19 = v26;
  sub_100003E50(&off_1002B7730, v26);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "Started navigation controller.", v22, 2u);
  }

  else
  {
  }

  (*(v27 + 8))(v19, v28);
  return v18;
}

uint64_t sub_1001BA6B0(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003E50(&off_1002B7730, v7);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Updating configuration", v10, 2u);
  }

  (*(v5 + 8))(v7, v4);
  return (*((swift_isaMask & *v2) + 0xC0))(a1);
}

uint64_t sub_1001BA84C(uint64_t a1, uint64_t a2)
{
  v6 = *((swift_isaMask & *v2) + 0xD8);
  v4 = swift_unknownObjectRetain();

  return v6(v4, a2);
}

uint64_t sub_1001BA8C0(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_100164A3C(&qword_1002D7180, &qword_10024ABF0);
  __chkstk_darwin(v5 - 8);
  v72 = &v69 - v6;
  v7 = type metadata accessor for Logger();
  v73 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PrivateServicePrediction.ConfidenceScore();
  __chkstk_darwin(v10 - 8);
  v95 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for Date();
  v77 = *(v94 - 8);
  __chkstk_darwin(v94);
  v93 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for PrivateServicePrediction.ServicePredictionSource();
  v98 = *(v92 - 8);
  __chkstk_darwin(v92);
  v91 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for PrivateServicePrediction.ServicePredictionType();
  v97 = *(v90 - 8);
  __chkstk_darwin(v90);
  v89 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for PrivateServicePrediction();
  __chkstk_darwin(v15 - 8);
  v88 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for MapsNavigationController.CoverageInfo(0);
  v17 = *(v87 - 8);
  __chkstk_darwin(v87);
  v99 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for InternalServicePrediction(0);
  v86 = *(v70 - 8);
  v19 = __chkstk_darwin(v70);
  v21 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(a1 + 16);
  v74 = v7;
  if (v22)
  {
    v71 = ObjectType;
    v75 = v9;
    v100 = _swiftEmptyArrayStorage;
    sub_1001BBCAC(0, v22, 0);
    v23 = v100;
    v24 = *v2;
    v76 = v2 & 0xFFFFFFFFFFFFLL | 0x6AE1000000000000;
    v85 = *((swift_isaMask & v24) + 0xB8);
    v83 = (swift_isaMask & v24) + 184;
    v25 = a1 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v82 = *(v17 + 72);
    v81 = enum case for PrivateServicePrediction.ServicePredictionType.noCellularDataService(_:);
    v80 = (v97 + 104);
    v79 = enum case for PrivateServicePrediction.ServicePredictionSource.navigation(_:);
    v77 += 2;
    v78 = (v98 + 13);
    v96 = v2;
    v84 = v21;
    v26 = v89;
    v27 = v91;
    v28 = v85;
    do
    {
      v97 = v22;
      v98 = v23;
      sub_1001BCB10(v25, v99, type metadata accessor for MapsNavigationController.CoverageInfo);
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      (*v80)(v26, v81, v90);
      (*v78)(v27, v79, v92);
      v29 = v99;
      v30 = (*v77)(v93, v99, v94);
      v31 = v28(v101, v30);
      v32 = v28(v102, v31);
      v28(v103, v32);
      PrivateServicePrediction.ConfidenceScore.init(predictionConfidence:startTimeConfidence:durationConfidence:)();
      v33 = v88;
      PrivateServicePrediction.init(type:source:predictedStartTime:predictedDuration:confidenceScore:)();
      v34 = static xpc_event_publisher_action_t.add.getter();
      v35 = v84;
      sub_100162DE0(v33, 0, 0, 0, 0, 1, 0, 1, v84, 0, 1, 0, 0, v34 & 1);
      sub_1001BCBC0(v29, type metadata accessor for MapsNavigationController.CoverageInfo);
      v23 = v98;
      v100 = v98;
      v37 = v98[2];
      v36 = v98[3];
      if (v37 >= v36 >> 1)
      {
        sub_1001BBCAC((v36 > 1), v37 + 1, 1);
        v23 = v100;
      }

      v23[2] = v37 + 1;
      v19 = sub_1001BCA10(v35, v23 + ((*(v86 + 80) + 32) & ~*(v86 + 80)) + *(v86 + 72) * v37, type metadata accessor for InternalServicePrediction);
      v25 += v82;
      v2 = v96;
      v22 = v97 - 1;
    }

    while (v97 != 1);
    v9 = v75;
    v38 = v76;
    v39 = v23;
  }

  else
  {
    v38 = v2 & 0xFFFFFFFFFFFFLL | 0x6AE1000000000000;
    v39 = _swiftEmptyArrayStorage;
  }

  v40 = swift_isaMask & *v2;
  v76 = v38;
  v41 = *(v40 + 160);
  v42 = (v41)(v19);
  v43 = sub_100004814(v42, v39);

  if (v43)
  {
  }

  sub_100003E50(&off_1002B7730, v9);

  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.default.getter();

  v46 = v39;
  if (os_log_type_enabled(v44, v45))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v96 = v2;
    v100 = v48;
    *v47 = 136315394;
    v49 = v46;
    v41();
    v50 = Array.debugDescription.getter();
    v75 = v9;
    v52 = v51;

    v53 = sub_10017A8A8(v50, v52, &v100);

    *(v47 + 4) = v53;
    *(v47 + 12) = 2080;
    v54 = Array.description.getter();
    v56 = sub_10017A8A8(v54, v55, &v100);
    v46 = v49;

    *(v47 + 14) = v56;
    _os_log_impl(&_mh_execute_header, v44, v45, "Updating service prediction from %s suggestions to %s", v47, 0x16u);
    swift_arrayDestroy();
    v2 = v96;

    (*(v73 + 8))(v75, v74);
  }

  else
  {

    (*(v73 + 8))(v9, v74);
  }

  v57 = *((swift_isaMask & *v2) + 0xA8);

  v59 = v46;
  v60 = v57(v58);
  v61 = (*((swift_isaMask & *v2) + 0xD0))(v60);
  if (!v61)
  {
  }

  v63 = v61;
  v64 = v62;
  v65 = type metadata accessor for TaskPriority();
  v66 = v72;
  (*(*(v65 - 8) + 56))(v72, 1, 1, v65);
  v67 = swift_allocObject();
  v67[2] = 0;
  v67[3] = 0;
  v67[4] = v63;
  v67[5] = v64;
  v67[6] = v59;
  sub_100176B80(0, 0, v66, &unk_10024C5E8, v67);
}

uint64_t sub_1001BB334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();
  v12 = (*(a5 + 8) + **(a5 + 8));
  v10 = swift_task_alloc();
  *(v6 + 16) = v10;
  *v10 = v6;
  v10[1] = sub_100002A5C;

  return v12(a6, ObjectType, a5);
}

uint64_t sub_1001BB46C()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_100164A3C(&qword_1002D7180, &qword_10024ABF0);
  __chkstk_darwin(v2 - 8);
  v4 = &v19 - v3;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003E50(&off_1002B7730, v8);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Clearing prediction.", v11, 2u);
  }

  (*(v6 + 8))(v8, v5);
  v12 = (*((swift_isaMask & *v1) + 0xA8))(_swiftEmptyArrayStorage);
  result = (*((swift_isaMask & *v1) + 0xD0))(v12);
  if (result)
  {
    v15 = result;
    v16 = v14;
    v17 = type metadata accessor for TaskPriority();
    (*(*(v17 - 8) + 56))(v4, 1, 1, v17);
    v18 = swift_allocObject();
    v18[2] = 0;
    v18[3] = 0;
    v18[4] = v15;
    v18[5] = v16;
    sub_100176B80(0, 0, v4, &unk_10024C5F8, v18);
  }

  return result;
}

uint64_t sub_1001BB714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v10 = (*(a5 + 8) + **(a5 + 8));
  v8 = swift_task_alloc();
  *(v5 + 16) = v8;
  *v8 = v5;
  v8[1] = sub_10017F434;

  return v10(_swiftEmptyArrayStorage, ObjectType, a5);
}

id sub_1001BB844(double a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003E50(&off_1002B7730, v7);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 134217984;
    *(v10 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v8, v9, "Updating lookahead time to %f", v10, 0xCu);
  }

  (*(v5 + 8))(v7, v4);
  (*((swift_isaMask & *v2) + 0x90))(*&a1, 0);
  return [*(v2 + 144) setNoCellCoverageAlertPrecedingTime:a1];
}

uint64_t sub_1001BBA14(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = ((swift_isaMask & *a4) + 256) & 0xFFFFFFFFFFFFLL | 0x9AAA000000000000;
  v5[4] = *((swift_isaMask & *a4) + 0x100);
  v5[5] = v6;
  return _swift_task_switch(sub_100014384, a4, 0);
}

uint64_t sub_1001BBB08(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4[2] = a4;
  v5 = ((swift_isaMask & *a4) + 264) & 0xFFFFFFFFFFFFLL | 0xEFF0000000000000;
  v4[3] = *((swift_isaMask & *a4) + 0x108);
  v4[4] = v5;
  return _swift_task_switch(sub_1001995E8, a4, 0);
}

uint64_t sub_1001BBBF8()
{

  sub_1001B8A60(v0 + 528);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1001BBC48@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  type metadata accessor for MapsNavigationController();

  return sub_100003E50(a1, a2);
}

void *sub_1001BBCAC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001BBE74(a1, a2, a3, *v3, &qword_1002D79B0, &qword_10024BA20, type metadata accessor for InternalServicePrediction);
  *v3 = result;
  return result;
}

uint64_t sub_1001BBCF0()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100002A5C;

  return sub_1001BB334(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_1001BBD98()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10017F434;

  return sub_1001BB714(v4, v5, v6, v2, v3);
}

void *sub_1001BBE30(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001BBE74(a1, a2, a3, *v3, &unk_1002D7B98, &qword_10024C6C8, type metadata accessor for MapsNavigationController.CoverageInfo);
  *v3 = result;
  return result;
}

void *sub_1001BBE74(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100164A3C(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_1001BC050(unint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v46 = type metadata accessor for Date();
  v4 = *(v46 - 8);
  __chkstk_darwin(v46);
  v45 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MapsNavigationController.CoverageInfo(0);
  v43 = *(v6 - 8);
  v44 = v6;
  __chkstk_darwin(v6);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100164A3C(&qword_1002D7180, &qword_10024ABF0);
  __chkstk_darwin(v9 - 8);
  v11 = (&v38 - v10);
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003E50(&off_1002B7730, v15);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v16, v17))
  {
    LODWORD(v40) = v17;
    v41 = v12;
    v42 = v4;
    v18 = swift_slowAlloc();
    result = swift_slowAlloc();
    v39 = result;
    v47 = result;
    *v18 = 136315138;
    if (!a1)
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    sub_100164AEC(0, &qword_1002D7B90, GEONavigationListenerNoCellCoverageInfo_ptr);
    v20 = Array.description.getter();
    v22 = sub_10017A8A8(v20, v21, &v47);

    *(v18 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v16, v40, "Received no cell coverage infos update %s", v18, 0xCu);
    sub_100164B98(v39);

    (*(v13 + 8))(v15, v41);
    v4 = v42;
LABEL_5:
    v23 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 >> 62)
    {
      goto LABEL_23;
    }

    for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v25 = _swiftEmptyArrayStorage;
      if (!i)
      {
LABEL_20:
        v36 = type metadata accessor for TaskPriority();
        (*(*(v36 - 8) + 56))(v11, 1, 1, v36);
        v37 = swift_allocObject();
        v37[2] = 0;
        v37[3] = 0;
        v37[4] = v2;
        v37[5] = v25;

        sub_100176B80(0, 0, v11, &unk_10024C6C0, v37);
      }

      v41 = v23;
      v47 = _swiftEmptyArrayStorage;
      result = sub_1001BBE30(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        break;
      }

      v42 = i;
      v39 = v11;
      v40 = v2;
      v23 = 0;
      v25 = v47;
      v26 = a1 & 0xC000000000000001;
      v2 = (v4 + 4);
      while (1)
      {
        v11 = (v23 + 1);
        if (__OFADD__(v23, 1))
        {
          break;
        }

        if (v26)
        {
          v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v23 >= *(v41 + 16))
          {
            goto LABEL_22;
          }

          v27 = *(a1 + 8 * v23 + 32);
        }

        v28 = v27;
        v29 = a1;
        result = [v27 noCellCoverageStartDate];
        if (!result)
        {
          goto LABEL_25;
        }

        v30 = result;
        v31 = v45;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        [v28 outageDuration];
        v33 = v32;

        (*v2)(v8, v31, v46);
        *&v8[*(v44 + 20)] = v33;
        v47 = v25;
        v35 = v25[2];
        v34 = v25[3];
        v4 = (v35 + 1);
        if (v35 >= v34 >> 1)
        {
          sub_1001BBE30((v34 > 1), v35 + 1, 1);
          v25 = v47;
        }

        v25[2] = v4;
        sub_1001BCA10(v8, v25 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v35, type metadata accessor for MapsNavigationController.CoverageInfo);
        ++v23;
        a1 = v29;
        if (v11 == v42)
        {
          v11 = v39;
          v2 = v40;
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      ;
    }

    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  result = (*(v13 + 8))(v15, v12);
  if (a1)
  {
    goto LABEL_5;
  }

LABEL_27:
  __break(1u);
  return result;
}