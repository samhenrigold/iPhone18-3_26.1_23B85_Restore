id sub_1001CA44C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ViewEvaluation();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_1001CA4A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ViewEvaluation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1001CA500(unint64_t result)
{
  if (result >= 6)
  {
    return 6;
  }

  return result;
}

unint64_t sub_1001CA53C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001CA500(*a1);
  *a2 = result;
  return result;
}

void sub_1001CA568()
{
  v2 = v0;
  v3 = sub_10014EA98(&qword_1003AD2A0, &qword_1002FE160);
  v4 = sub_100005568(v3);
  __chkstk_darwin(v4);
  sub_10000693C();
  v7 = v5 - v6;
  __chkstk_darwin(v8);
  v10 = &v35 - v9;
  type metadata accessor for Date();
  sub_10000C454();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_10000693C();
  v16 = (v14 - v15);
  __chkstk_darwin(v17);
  v19 = &v35 - v18;
  sub_1001CC5B0();
  v20 = Dictionary.init(dictionaryLiteral:)();
  v21 = [objc_allocWithZone(NSNumber) initWithInteger:*(v2 + OBJC_IVAR____TtC13InCallService34SmartHoldingTipsCoreAnalyticsEvent_tipFeedbackLatency)];
  swift_isUniquelyReferenced_nonNull_native();
  v37[0] = v20;
  sub_1002313A0(v21, 0xD000000000000012, 0x80000001002AAB40);
  v22 = v37[0];
  v23 = OBJC_IVAR____TtC13InCallService34SmartHoldingTipsCoreAnalyticsEvent_holdDetectionStartedTimestamp;
  swift_beginAccess();
  sub_1001CC058(v2 + v23, v10);
  sub_10000B490(v10);
  if (v27)
  {
    v24 = v10;
LABEL_7:
    sub_1001CC0C8(v24);
    v28 = &_sScI4next7ElementQzSgyYaKFTj_ptr;
LABEL_12:
    v32 = [objc_allocWithZone(v28[362]) initWithInteger:0];
    swift_isUniquelyReferenced_nonNull_native();
    v36 = v22;
    sub_1002313A0(v32, 0x6E656D6D6F636552, 0xEE006E6F69746164);
    v33 = v36;
    v34 = [objc_allocWithZone(v28[362]) initWithInteger:*(v2 + OBJC_IVAR____TtC13InCallService34SmartHoldingTipsCoreAnalyticsEvent_observation)];
    swift_isUniquelyReferenced_nonNull_native();
    v36 = v33;
    sub_1002313A0(v34, 0x746176726573624FLL, 0xEB000000006E6F69);
    return;
  }

  v25 = *(v12 + 32);
  v25(v19, v10, v1);
  v26 = OBJC_IVAR____TtC13InCallService34SmartHoldingTipsCoreAnalyticsEvent_tipPresentedTimestamp;
  swift_beginAccess();
  sub_1001CC058(v2 + v26, v7);
  sub_10000B490(v7);
  if (v27)
  {
    (*(v12 + 8))(v19, v1);
    v24 = v7;
    goto LABEL_7;
  }

  v25(v16, v7, v1);
  Date.timeIntervalSince(_:)();
  if ((*&v29 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  v28 = &_sScI4next7ElementQzSgyYaKFTj_ptr;
  if (v29 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v29 < 9.22337204e18)
  {
    v30 = [objc_allocWithZone(NSNumber) initWithInteger:v29];
    swift_isUniquelyReferenced_nonNull_native();
    v36 = v22;
    sub_1002313A0(v30, 0xD000000000000011, 0x80000001002AAB60);
    v31 = *(v12 + 8);
    v31(v16, v1);
    v31(v19, v1);
    v22 = v36;
    goto LABEL_12;
  }

LABEL_15:
  __break(1u);
}

uint64_t sub_1001CA9A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_1001CA9C8, 0, 0);
}

void sub_1001CA9C8()
{
  sub_100006880();
  v2 = *(v0 + 24);
  v3 = sub_1000072F8();
  v4 = sub_100025B34(v3);
  sub_100030264(v4);
  sub_100006E30();
  sub_1001CC5F8();
  os_unfair_lock_unlock(v1 + 4);

  if (!v2)
  {

    sub_10000535C();
    sub_100008BAC();

    __asm { BRAA            X1, X16 }
  }

  sub_100008BAC();
}

uint64_t sub_1001CAAA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_1001CAAC8, 0, 0);
}

void sub_1001CAAC8()
{
  sub_100006880();
  v2 = *(v0 + 24);
  v3 = sub_1000072F8();
  v4 = sub_100025B34(v3);
  sub_100030264(v4);
  sub_100006E30();
  sub_1001CC5F8();
  os_unfair_lock_unlock(v1 + 4);

  if (!v2)
  {

    sub_10000535C();
    sub_100008BAC();

    __asm { BRAA            X1, X16 }
  }

  sub_100008BAC();
}

void sub_1001CAB88(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  if (qword_1003A9F58 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100008A14(v8, &unk_1003B8868);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_100008ADC(a2, a3, &v13);
    _os_log_impl(&_mh_execute_header, v9, v10, "Analytics: %s", v11, 0xCu);
    sub_100005B2C(v12);
  }

  *(a1 + OBJC_IVAR____TtC13InCallService34SmartHoldingTipsCoreAnalyticsEvent_observation) = a4;
  sub_1001CB7FC();
  sub_1001CB708();
}

uint64_t sub_1001CAD10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_1001CAD30, 0, 0);
}

void sub_1001CAD30()
{
  sub_100006880();
  v2 = *(v0 + 24);
  v3 = sub_1000072F8();
  v4 = sub_100025B34(v3);
  sub_100030264(v4);
  sub_100006E30();
  sub_1001CC5F8();
  os_unfair_lock_unlock(v1 + 4);

  if (!v2)
  {

    sub_10000535C();
    sub_100008BAC();

    __asm { BRAA            X1, X16 }
  }

  sub_100008BAC();
}

void sub_1001CADF0(uint64_t a1)
{
  if (qword_1003A9F58 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100008A14(v2, &unk_1003B8868);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_100008ADC(0xD000000000000015, 0x80000001002AAB20, &v7);
    _os_log_impl(&_mh_execute_header, v3, v4, "Analytics: %s", v5, 0xCu);
    sub_100005B2C(v6);
  }

  if (*(a1 + OBJC_IVAR____TtC13InCallService34SmartHoldingTipsCoreAnalyticsEvent_observation) == 4)
  {
    *(a1 + OBJC_IVAR____TtC13InCallService34SmartHoldingTipsCoreAnalyticsEvent_observation) = 3;
    sub_1001CB7FC();
    sub_1001CB708();
  }
}

uint64_t sub_1001CAF84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_1001CAFA4, 0, 0);
}

void sub_1001CAFA4()
{
  sub_100006880();
  v2 = *(v0 + 24);
  v3 = sub_1000072F8();
  v4 = sub_100025B34(v3);
  sub_100030264(v4);
  sub_100006E30();
  sub_1001CC5F8();
  os_unfair_lock_unlock(v1 + 4);

  if (!v2)
  {

    sub_10000535C();
    sub_100008BAC();

    __asm { BRAA            X1, X16 }
  }

  sub_100008BAC();
}

uint64_t sub_1001CB064(uint64_t a1)
{
  v2 = sub_10014EA98(&qword_1003AD2A0, &qword_1002FE160);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v17[-v6];
  if (qword_1003A9F58 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100008A14(v8, &unk_1003B8868);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18[0] = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_100008ADC(0x6573657250706974, 0xEE0029286465746ELL, v18);
    _os_log_impl(&_mh_execute_header, v9, v10, "Analytics: %s", v11, 0xCu);
    sub_100005B2C(v12);
  }

  v13 = OBJC_IVAR____TtC13InCallService34SmartHoldingTipsCoreAnalyticsEvent_tipPresentedTimestamp;
  swift_beginAccess();
  sub_1001CC058(a1 + v13, v7);
  v14 = type metadata accessor for Date();
  v15 = sub_100006AC0(v7, 1, v14);
  result = sub_1001CC0C8(v7);
  if (v15 == 1)
  {
    Date.init()();
    sub_100006848(v5, 0, 1, v14);
    swift_beginAccess();
    sub_1001CBFE8(v5, a1 + v13);
    result = swift_endAccess();
  }

  *(a1 + OBJC_IVAR____TtC13InCallService34SmartHoldingTipsCoreAnalyticsEvent_observation) = 4;
  return result;
}

double sub_1001CB2FC(uint64_t a1)
{
  v2 = sub_10014EA98(&qword_1003AA7B0, &qword_1002FA970);
  v3 = sub_100005568(v2);
  __chkstk_darwin(v3);
  type metadata accessor for TaskPriority();
  sub_10000717C();
  sub_100006848(v4, v5, v6, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v1;
  v9 = v1;
  sub_1001621BC();

  return result;
}

uint64_t sub_1001CB3C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_1001CB3E8, 0, 0);
}

void sub_1001CB3E8()
{
  sub_100006880();
  v2 = *(v0 + 24);
  v3 = sub_1000072F8();
  v4 = sub_100025B34(v3);
  sub_100030264(v4);
  sub_100006E30();
  sub_1001C4420();
  os_unfair_lock_unlock(v1 + 4);

  if (!v2)
  {

    sub_10000535C();
    sub_100008BAC();

    __asm { BRAA            X1, X16 }
  }

  sub_100008BAC();
}

uint64_t sub_1001CB4A8(uint64_t a1)
{
  v2 = sub_10014EA98(&qword_1003AD2A0, &qword_1002FE160);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v17[-v6];
  if (qword_1003A9F58 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100008A14(v8, &unk_1003B8868);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18[0] = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_100008ADC(0xD000000000000016, 0x80000001002AAB00, v18);
    _os_log_impl(&_mh_execute_header, v9, v10, "Analytics: %s", v11, 0xCu);
    sub_100005B2C(v12);
  }

  v13 = OBJC_IVAR____TtC13InCallService34SmartHoldingTipsCoreAnalyticsEvent_holdDetectionStartedTimestamp;
  swift_beginAccess();
  sub_1001CC058(a1 + v13, v7);
  v14 = type metadata accessor for Date();
  v15 = sub_100006AC0(v7, 1, v14);
  result = sub_1001CC0C8(v7);
  if (v15 == 1)
  {
    Date.init()();
    sub_100006848(v5, 0, 1, v14);
    swift_beginAccess();
    sub_1001CBFE8(v5, a1 + v13);
    return swift_endAccess();
  }

  return result;
}

void sub_1001CB708()
{
  sub_1001CA568();
  v1 = v0;
  sub_1001CBA08();
  v2 = String._bridgeToObjectiveC()();
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  v5[4] = sub_1001A6000;
  v5[5] = v3;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_100206510;
  v5[3] = &unk_10035E370;
  v4 = _Block_copy(v5);

  AnalyticsSendEventLazy();
  _Block_release(v4);
}

uint64_t sub_1001CB7FC()
{
  v2 = v0;
  v3 = sub_10014EA98(&qword_1003AD2A0, &qword_1002FE160);
  v4 = sub_100005568(v3);
  __chkstk_darwin(v4);
  v6 = &v23 - v5;
  type metadata accessor for Date();
  sub_10000C454();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_10000693C();
  v12 = v10 - v11;
  __chkstk_darwin(v13);
  v15 = &v23 - v14;
  v16 = OBJC_IVAR____TtC13InCallService34SmartHoldingTipsCoreAnalyticsEvent_tipPresentedTimestamp;
  swift_beginAccess();
  sub_1001CC058(v2 + v16, v6);
  sub_10000B490(v6);
  if (v17)
  {
    return sub_1001CC0C8(v6);
  }

  (*(v8 + 32))(v15, v6, v1);
  Date.init()();
  Date.timeIntervalSince(_:)();
  v19 = v18;
  v20 = v18;
  v21 = *(v8 + 8);
  v21(v12, v1);
  result = (v21)(v15, v1);
  if ((*&v20 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v19 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v19 >= 9.22337204e18)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  if (v19 >= 1)
  {
    *(v2 + OBJC_IVAR____TtC13InCallService34SmartHoldingTipsCoreAnalyticsEvent_tipFeedbackLatency) = v19;
  }

  return result;
}

uint64_t sub_1001CBA08()
{
  v1 = sub_10014EA98(&qword_1003AD2A0, &qword_1002FE160);
  v2 = sub_100005568(v1);
  __chkstk_darwin(v2);
  v4 = &v15 - v3;
  v5 = type metadata accessor for Date();
  sub_10000717C();
  sub_100006848(v6, v7, v8, v5);
  v9 = OBJC_IVAR____TtC13InCallService34SmartHoldingTipsCoreAnalyticsEvent_holdDetectionStartedTimestamp;
  swift_beginAccess();
  sub_1001CBFE8(v4, v0 + v9);
  swift_endAccess();
  sub_10000717C();
  sub_100006848(v10, v11, v12, v5);
  v13 = OBJC_IVAR____TtC13InCallService34SmartHoldingTipsCoreAnalyticsEvent_tipPresentedTimestamp;
  swift_beginAccess();
  sub_1001CBFE8(v4, v0 + v13);
  result = swift_endAccess();
  *(v0 + OBJC_IVAR____TtC13InCallService34SmartHoldingTipsCoreAnalyticsEvent_tipFeedbackLatency) = 0;
  *(v0 + OBJC_IVAR____TtC13InCallService34SmartHoldingTipsCoreAnalyticsEvent_tipPreviewLatency) = 0;
  *(v0 + OBJC_IVAR____TtC13InCallService34SmartHoldingTipsCoreAnalyticsEvent_observation) = 5;
  return result;
}

id sub_1001CBB30()
{
  v1 = OBJC_IVAR____TtC13InCallService34SmartHoldingTipsCoreAnalyticsEvent_lock;
  sub_10014EA98(&qword_1003AD2A8, &qword_1002FDE98);
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *&v0[v1] = v2;
  v3 = type metadata accessor for Date();
  sub_10000717C();
  sub_100006848(v4, v5, v6, v3);
  sub_10000717C();
  sub_100006848(v7, v8, v9, v3);
  *&v0[OBJC_IVAR____TtC13InCallService34SmartHoldingTipsCoreAnalyticsEvent_tipFeedbackLatency] = 0;
  *&v0[OBJC_IVAR____TtC13InCallService34SmartHoldingTipsCoreAnalyticsEvent_tipPreviewLatency] = 0;
  v0[OBJC_IVAR____TtC13InCallService34SmartHoldingTipsCoreAnalyticsEvent_observation] = 5;
  v11.receiver = v0;
  v11.super_class = type metadata accessor for SmartHoldingTipsCoreAnalyticsEvent(0);
  return objc_msgSendSuper2(&v11, "init");
}

id sub_1001CBC30()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SmartHoldingTipsCoreAnalyticsEvent(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SmartHoldingTipsCoreAnalyticsEvent(uint64_t a1)
{
  result = qword_1003AD280;
  if (!qword_1003AD280)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001CBD18(uint64_t a1)
{
  sub_1001CBDD4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1001CBDD4(uint64_t a1)
{
  if (!qword_1003AD290)
  {
    type metadata accessor for Date();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1003AD290);
    }
  }
}

uint64_t getEnumTagSinglePayload for SmartHoldingTipsCoreAnalyticsEvent.TipAnalyticsObservation(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SmartHoldingTipsCoreAnalyticsEvent.TipAnalyticsObservation(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1001CBF94()
{
  result = qword_1003AD298;
  if (!qword_1003AD298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AD298);
  }

  return result;
}

uint64_t sub_1001CBFE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10014EA98(&qword_1003AD2A0, &qword_1002FE160);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001CC058(uint64_t a1, uint64_t a2)
{
  v4 = sub_10014EA98(&qword_1003AD2A0, &qword_1002FE160);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001CC0C8(uint64_t a1)
{
  v2 = sub_10014EA98(&qword_1003AD2A0, &qword_1002FE160);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001CC130()
{
  sub_1000058A8();
  sub_10000804C();
  v0 = swift_task_alloc();
  v1 = sub_100005B88(v0);
  *v1 = v2;
  v3 = sub_10000786C(v1);

  return sub_1001CB3C8(v3, v4, v5, v6);
}

uint64_t sub_1001CC1D8()
{
  sub_1000058A8();
  sub_10000804C();
  v0 = swift_task_alloc();
  v1 = sub_100005B88(v0);
  *v1 = v2;
  v3 = sub_10000786C(v1);

  return sub_1001CAF84(v3, v4, v5, v6);
}

uint64_t sub_1001CC280()
{
  sub_1000058A8();
  sub_10000804C();
  v0 = swift_task_alloc();
  v1 = sub_100005B88(v0);
  *v1 = v2;
  v3 = sub_10000786C(v1);

  return sub_1001CAD10(v3, v4, v5, v6);
}

uint64_t sub_1001CC328()
{
  sub_1000058A8();
  sub_10000804C();
  v0 = swift_task_alloc();
  v1 = sub_100005B88(v0);
  *v1 = v2;
  v3 = sub_10000786C(v1);

  return sub_1001CAAA8(v3, v4, v5, v6);
}

uint64_t sub_1001CC3F4()
{
  sub_1000058A8();
  sub_10000804C();
  v0 = swift_task_alloc();
  v1 = sub_100005B88(v0);
  *v1 = v2;
  v3 = sub_10000786C(v1);

  return sub_1001CA9A8(v3, v4, v5, v6);
}

uint64_t sub_1001CC480()
{

  sub_10000535C();

  return v0();
}

unint64_t sub_1001CC5B0()
{
  result = qword_1003AB7A0;
  if (!qword_1003AB7A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003AB7A0);
  }

  return result;
}

void sub_1001CC610(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = [objc_opt_self() textAttachmentWithImage:a1];
  v8 = [objc_opt_self() attributedStringWithAttachment:v7];

  sub_1000064BC(0, &qword_1003AD2B0, NSMutableAttributedString_ptr);
  v11 = sub_1001A584C(0, 0xE000000000000000);
  [v11 appendAttributedString:v8];
  v9 = sub_1001A584C(32, 0xE100000000000000);
  [v11 appendAttributedString:v9];

  v10 = sub_1001A584C(a2, a3);
  [v11 appendAttributedString:v10];

  [v4 setAttributedText:v11];
}

uint64_t sub_1001CC768(uint64_t a1)
{
  v1 = *(a1 + 32);

  LOBYTE(v1) = v1(v2);

  return v1 & 1;
}

unint64_t sub_1001CC7A8(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1001CC7B8@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1001CC7A8(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

void sub_1001CC7EC()
{
  sub_100008C44();
  v2 = static Features.shared.getter();
  v3 = Features.isEnhancedEmergencyEnabled.getter();

  if (v3)
  {
    if (qword_1003A9F40 != -1)
    {
      sub_10000755C(&qword_1003A9F40);
    }

    v4 = type metadata accessor for Logger();
    v5 = sub_1001D181C(v4, &unk_1003B8820);
    v6 = static os_log_type_t.default.getter();
    if (sub_10000FFB4(v6))
    {
      v7 = sub_100005924();
      sub_1000089E0(v7);
      sub_100008530(&_mh_execute_header, v8, v9, "EnhancedEmergency: PHAudioCallViewController trying to add webView");
      sub_100005340();
    }

    v10 = [v1 parentViewController];
    if (v10)
    {

      v11 = sub_100008824();
      if (!v11)
      {
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      v12 = v11;
      v13 = [v11 window];

      if (v13)
      {

        v14 = sub_100008824();
        if (!v14)
        {
LABEL_43:
          __break(1u);
          goto LABEL_44;
        }

        v15 = v14;
        [v14 alpha];
        v17 = v16;

        if (v17 == 0.0)
        {
          v18 = sub_100008824();
          if (v18)
          {
            v19 = v18;
            [v18 setAlpha:1.0];

LABEL_28:
            [v0 requestToEnableVideoStreamingButton];
            return;
          }

LABEL_44:
          __break(1u);
          return;
        }
      }
    }

    sub_1000089B0(v10, "addChildViewController:");
    v20 = sub_100014338();
    if (v20)
    {
      v21 = v20;
      v22 = sub_100008824();
      if (v22)
      {
        v23 = v22;
        v24 = sub_10000599C();
        [v24 v25];

        [v1 didMoveToParentViewController:v0];
        v26 = sub_100008824();
        if (v26)
        {
          v27 = v26;
          [v26 setTranslatesAutoresizingMaskIntoConstraints:0];

          v28 = sub_100008824();
          if (v28)
          {
            v29 = v28;
            v30 = [v28 topAnchor];

            v31 = [v0 callParticipantsViewController];
            v32 = [v31 view];

            if (v32)
            {
              v33 = [v32 bottomAnchor];

              v34 = [v30 constraintEqualToAnchor:v33];
              v35 = *&v1[OBJC_IVAR___EmergencyWebRTCViewController_webViewRTCViewControllerWaitingStataTopAnchor];
              *&v1[OBJC_IVAR___EmergencyWebRTCViewController_webViewRTCViewControllerWaitingStataTopAnchor] = v34;
              v36 = v34;

              if (v36)
              {
                sub_10014EA98(&unk_1003AAAA0, &qword_1002F96D0);
                v37 = swift_allocObject();
                *(v37 + 16) = xmmword_1002FB360;
                *(v37 + 32) = v36;
                v38 = v36;
                v39 = sub_100008824();
                if (!v39)
                {
LABEL_37:
                  __break(1u);
                  goto LABEL_38;
                }

                v40 = v39;
                v41 = [v39 bottomAnchor];

                v42 = sub_100014338();
                if (!v42)
                {
LABEL_38:
                  __break(1u);
                  goto LABEL_39;
                }

                v43 = v42;
                v44 = [v42 bottomAnchor];

                v45 = [v41 constraintEqualToAnchor:v44];
                *(v37 + 40) = v45;
                v46 = sub_100008824();
                if (!v46)
                {
LABEL_39:
                  __break(1u);
                  goto LABEL_40;
                }

                v47 = v46;
                v48 = [v46 leadingAnchor];

                v49 = sub_100014338();
                if (!v49)
                {
LABEL_40:
                  __break(1u);
                  goto LABEL_41;
                }

                v50 = v49;
                v51 = [v49 leadingAnchor];

                v52 = [v48 constraintEqualToAnchor:v51];
                *(v37 + 48) = v52;
                v53 = sub_100008824();
                if (!v53)
                {
LABEL_41:
                  __break(1u);
                  goto LABEL_42;
                }

                v54 = v53;
                v55 = [v53 trailingAnchor];

                v56 = sub_100014338();
                if (!v56)
                {
LABEL_42:
                  __break(1u);
                  goto LABEL_43;
                }

                v57 = v56;
                v58 = objc_opt_self();
                v59 = [v57 trailingAnchor];

                v60 = [v55 constraintEqualToAnchor:v59];
                *(v37 + 56) = v60;
                sub_1000064BC(0, &qword_1003AAF70, NSLayoutConstraint_ptr);
                isa = Array._bridgeToObjectiveC()().super.isa;

                [v58 activateConstraints:isa];
              }

              v62 = [objc_msgSend(v0 "buttonsViewController")];
              swift_unknownObjectRelease();
              sub_100005C44();
              v63 = swift_allocObject();
              *(v63 + 16) = v1;
              v80 = sub_1001D1758;
              v81 = v63;
              aBlock[0] = _NSConcreteStackBlock;
              aBlock[1] = 1107296256;
              v78 = sub_1001CC768;
              v79 = &unk_10035E690;
              v64 = _Block_copy(aBlock);
              v65 = v1;

              [v62 setAccessibilityElementsHiddenBlock:v64];
              _Block_release(v64);

              v66 = [v0 callParticipantsViewController];
              v67 = [v66 view];

              if (v67)
              {
                sub_100005C44();
                v68 = swift_allocObject();
                *(v68 + 16) = v65;
                v80 = sub_1001D1760;
                v81 = v68;
                aBlock[0] = _NSConcreteStackBlock;
                sub_100007310();
                v78 = v69;
                v79 = &unk_10035E6E0;
                v70 = _Block_copy(aBlock);
                v71 = v65;

                [v67 setAccessibilityElementsHiddenBlock:v70];
                _Block_release(v70);

                v72 = [v0 callDetailsViewButton];
                sub_100005C44();
                v73 = swift_allocObject();
                *(v73 + 16) = v71;
                v80 = sub_1001D1768;
                v81 = v73;
                aBlock[0] = _NSConcreteStackBlock;
                sub_100007310();
                v78 = v74;
                v79 = &unk_10035E730;
                v75 = _Block_copy(aBlock);
                v76 = v71;

                [v72 setIsAccessibilityElementBlock:v75];
                _Block_release(v75);

                goto LABEL_28;
              }

              goto LABEL_35;
            }

LABEL_34:
            __break(1u);
LABEL_35:
            __break(1u);
            goto LABEL_36;
          }

LABEL_33:
          __break(1u);
          goto LABEL_34;
        }

LABEL_32:
        __break(1u);
        goto LABEL_33;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_32;
  }
}

id sub_1001CCFA0(char *a1)
{
  v1 = *&a1[OBJC_IVAR___EmergencyWebRTCViewController_currentState];
  if (!v1)
  {
    return 0;
  }

  v3 = v1;
  SOSUIWebRTCState.state.getter();

  v4 = SOSUIWebRTCStateName.rawValue.getter();
  if (v4 != SOSUIWebRTCStateName.rawValue.getter())
  {
    return 0;
  }

  result = [a1 view];
  if (result)
  {
    v6 = result;
    [result alpha];
    v8 = v7;

    return (v8 > 0.0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_1001CD05C(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR___EmergencyWebRTCViewController_currentState);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  SOSUIWebRTCState.state.getter();

  v3 = SOSUIWebRTCStateName.rawValue.getter();
  v4 = 1;
  if (v3 != SOSUIWebRTCStateName.rawValue.getter())
  {
    v5 = SOSUIWebRTCStateName.rawValue.getter();
    return v5 == SOSUIWebRTCStateName.rawValue.getter();
  }

  return v4;
}

BOOL sub_1001CD0F0(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR___EmergencyWebRTCViewController_currentState);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  SOSUIWebRTCState.state.getter();

  v3 = SOSUIWebRTCStateName.rawValue.getter();
  if (v3 == SOSUIWebRTCStateName.rawValue.getter())
  {
    return 0;
  }

  v5 = SOSUIWebRTCStateName.rawValue.getter();
  return v5 != SOSUIWebRTCStateName.rawValue.getter();
}

void sub_1001CD1E8()
{
  sub_100008C44();
  v2 = static Features.shared.getter();
  v3 = Features.isEnhancedEmergencyEnabled.getter();

  if ((v3 & 1) == 0)
  {
    sub_100005D80();
    return;
  }

  if (qword_1003A9F40 != -1)
  {
    sub_10000755C(&qword_1003A9F40);
  }

  v4 = type metadata accessor for Logger();
  v5 = sub_1001D181C(v4, &unk_1003B8820);
  v6 = static os_log_type_t.default.getter();
  if (sub_10000FFB4(v6))
  {
    v7 = sub_100005924();
    sub_1000089E0(v7);
    sub_100008530(&_mh_execute_header, v8, v9, "EnhancedEmergency: PHAudioCallViewController trying to remove webView");
    sub_100005340();
  }

  [v1 willMoveToParentViewController:0];
  v10 = sub_100030394();
  if (!v10)
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v10;
  [v10 removeFromSuperview];

  sub_1000089B0(v12, "removeChildViewController:");
  v13 = [objc_msgSend(v0 "buttonsViewController")];
  swift_unknownObjectRelease();
  [v13 setAccessibilityElementsHiddenBlock:0];

  v14 = [v0 callParticipantsViewController];
  v15 = [v14 *(v3 + 3568)];

  if (!v15)
  {
LABEL_13:
    __break(1u);
    return;
  }

  [v15 setAccessibilityElementsHiddenBlock:0];

  [objc_msgSend(v0 "callDetailsViewButton")];
  sub_100005D80();
}

void sub_1001CD444()
{
  [v0 setShouldEnableVideoStreamingButton:1];
  v3 = [objc_msgSend(v0 "buttonsViewController")];
  swift_unknownObjectRelease();
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;
    [v1 updateControls];
    [v2 changeVideoStreamingButtonTitleWithIsSharing:1];
  }
}

void sub_1001CD604(SEL *a1, char a2)
{
  [v2 *a1];
  v4 = [objc_msgSend(v2 "buttonsViewController")];
  swift_unknownObjectRelease();
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    [v3 updateControls];
  }
}

void sub_1001CD70C()
{
  sub_100008C44();
  v1 = static Features.shared.getter();
  v2 = Features.isEnhancedEmergencyEnabled.getter();

  if (v2)
  {
    if (qword_1003A9F40 != -1)
    {
      sub_10000755C(&qword_1003A9F40);
    }

    v3 = type metadata accessor for Logger();
    v4 = sub_1001D181C(v3, &unk_1003B8820);
    v5 = static os_log_type_t.default.getter();
    if (sub_10000FFB4(v5))
    {
      v6 = sub_100005924();
      sub_1000089E0(v6);
      sub_100008530(&_mh_execute_header, v7, v8, "EnhancedEmergency: PHAudioCallViewController trying to hide webView");
      sub_100005340();
    }

    v9 = sub_100030394();
    if (v9)
    {
      v10 = v9;
      [v9 setAlpha:0.0];

      [objc_msgSend(v0 "buttonsViewController")];
      swift_unknownObjectRelease();
      objc_opt_self();
      v11 = swift_dynamicCastObjCClass();
      if (v11)
      {
        [v11 updateControls];
      }

      sub_100005D80();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_100005D80();
  }
}

void sub_1001CD8E0(void *a1)
{
  v2 = v1;
  type metadata accessor for Features();
  v4 = static Features.shared.getter();
  v5 = Features.isEnhancedEmergencyEnabled.getter();

  if (v5)
  {
    if (qword_1003A9F40 != -1)
    {
      sub_10000755C(&qword_1003A9F40);
    }

    v6 = type metadata accessor for Logger();
    v7 = sub_1001D181C(v6, &unk_1003B8820);
    v8 = static os_log_type_t.default.getter();
    if (sub_10000FFB4(v8))
    {
      v9 = sub_100005924();
      sub_1000089E0(v9);
      sub_100008530(&_mh_execute_header, v10, v11, "EnhancedEmergency: PHAudioCallViewController trying to remove webView");
      sub_100005340();
    }

    [a1 willMoveToParentViewController:0];
    v12 = [a1 view];
    if (v12)
    {
      v13 = v12;
      [v12 removeFromSuperview];

      [v2 removeChildViewController:a1];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1001CDA84()
{
  sub_100008C44();
  v2 = static Features.shared.getter();
  v3 = Features.isEnhancedEmergencyEnabled.getter();

  if ((v3 & 1) == 0)
  {
    goto LABEL_18;
  }

  if (qword_1003A9F40 != -1)
  {
    sub_10000755C(&qword_1003A9F40);
  }

  v4 = type metadata accessor for Logger();
  v5 = sub_1001D181C(v4, &unk_1003B8820);
  v6 = static os_log_type_t.default.getter();
  if (sub_10000FFB4(v6))
  {
    v7 = sub_100005924();
    sub_1000089E0(v7);
    sub_100008530(&_mh_execute_header, v8, v9, "EnhancedEmergency: PHAudioCallViewController trying to add media request viewController");
    sub_100005340();
  }

  sub_1000089B0(v10, "addChildViewController:");
  v11 = sub_100034C4C();
  if (!v11)
  {
    __break(1u);
    goto LABEL_20;
  }

  v12 = v11;
  v13 = sub_100007BAC();
  if (!v13)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v14 = v13;
  v15 = sub_10000599C();
  [v15 v16];

  [v1 didMoveToParentViewController:v0];
  v17 = sub_100007BAC();
  if (!v17)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v18 = v17;
  [v17 setTranslatesAutoresizingMaskIntoConstraints:0];

  sub_10014EA98(&unk_1003AAAA0, &qword_1002F96D0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1002FB360;
  v20 = sub_100007BAC();
  if (!v20)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v21 = v20;
  v22 = [v20 topAnchor];

  v23 = [v0 callParticipantsViewController];
  v24 = [v23 view];

  if (!v24)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v25 = [v24 bottomAnchor];

  v26 = sub_100008D8C();
  v28 = [v26 v27];

  *(v19 + 32) = v28;
  v29 = sub_100007BAC();
  if (!v29)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v30 = v29;
  v31 = [v29 bottomAnchor];

  v32 = sub_100034C4C();
  if (!v32)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v33 = v32;
  v34 = [v32 bottomAnchor];

  v35 = sub_100008D8C();
  v37 = [v35 v36];

  *(v19 + 40) = v37;
  v38 = sub_100007BAC();
  if (!v38)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v39 = v38;
  v40 = [v38 leadingAnchor];

  v41 = sub_100034C4C();
  if (!v41)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v42 = v41;
  v43 = [v41 leadingAnchor];

  v44 = sub_100008D8C();
  v46 = [v44 v45];

  *(v19 + 48) = v46;
  v47 = sub_100007BAC();
  if (!v47)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v48 = v47;
  v49 = [v47 trailingAnchor];

  v50 = sub_100034C4C();
  if (v50)
  {
    v51 = v50;
    v52 = objc_opt_self();
    v53 = [v51 trailingAnchor];

    v54 = [v49 constraintEqualToAnchor:v53];
    *(v19 + 56) = v54;
    sub_1000064BC(0, &qword_1003AAF70, NSLayoutConstraint_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v52 activateConstraints:isa];

    v56 = [objc_msgSend(v0 "buttonsViewController")];
    swift_unknownObjectRelease();
    v58[4] = GlassCutoutCirclesOverlayViewController._canShowWhileLocked();
    v58[5] = 0;
    sub_100006C90();
    v58[1] = 1107296256;
    v58[2] = sub_1001CC768;
    v58[3] = &unk_10035E640;
    v57 = _Block_copy(v58);
    [v56 setAccessibilityElementsHiddenBlock:v57];
    _Block_release(v57);

    UIAccessibilityPostNotification(UIAccessibilityLayoutChangedNotification, *&v1[OBJC_IVAR___PHEmergencyMediaRequestViewController_waitingStateTitlelabel]);
    [v0 requestToEnableMediaUploadButton];
LABEL_18:
    sub_100012B1C();
    return;
  }

LABEL_29:
  __break(1u);
}

void sub_1001CDFF4()
{
  sub_100008C44();
  v2 = static Features.shared.getter();
  v3 = Features.isEnhancedEmergencyEnabled.getter();

  if (v3)
  {
    if (qword_1003A9F40 != -1)
    {
      sub_10000755C(&qword_1003A9F40);
    }

    v4 = type metadata accessor for Logger();
    v5 = sub_1001D181C(v4, &unk_1003B8820);
    v6 = static os_log_type_t.default.getter();
    if (sub_10000FFB4(v6))
    {
      v7 = sub_100005924();
      sub_1000089E0(v7);
      sub_100008530(&_mh_execute_header, v8, v9, "EnhancedEmergency: PHAudioCallViewController trying to remove media request viewController");
      sub_100005340();
    }

    [v1 willMoveToParentViewController:0];
    v10 = sub_100030394();
    if (v10)
    {
      v11 = v10;
      [v10 removeFromSuperview];

      sub_1000089B0(v12, "removeChildViewController:");
      v13 = [objc_msgSend(v0 "buttonsViewController")];
      swift_unknownObjectRelease();
      [v13 setAccessibilityElementsHiddenBlock:0];

      v14 = UIAccessibilityLayoutChangedNotification;

      UIAccessibilityPostNotification(v14, 0);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1001CE1DC()
{
  sub_100008C44();
  v2 = static Features.shared.getter();
  v3 = Features.isEnhancedEmergencyEnabled.getter();

  if ((v3 & 1) == 0)
  {
    return;
  }

  if (qword_1003A9F40 != -1)
  {
    sub_10000755C(&qword_1003A9F40);
  }

  v4 = type metadata accessor for Logger();
  v5 = sub_1001D181C(v4, &unk_1003B8820);
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = sub_100005924();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "EnhancedEmergency: PHAudioCallViewController trying to insert webView above participantsView", v7, 2u);
    sub_100005BB8(v7);
  }

  if (![v0 buttonsViewController] || (swift_unknownObjectRelease(), (v8 = objc_msgSend(v0, "callParticipantsViewController")) == 0) || (v8, !objc_msgSend(v0, "buttonsViewController")))
  {
    oslog = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v26))
    {
      v27 = sub_100005924();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v26, "EnhancedEmergency: PHAudioCallViewController not fully loaded yet, return", v27, 2u);
      sub_100005BB8(v27);
    }

    goto LABEL_33;
  }

  swift_unknownObjectRelease();
  v9 = sub_100025EF4();
  if (!v9)
  {
    __break(1u);
    goto LABEL_37;
  }

  v10 = v9;
  v11 = [v0 callDetailsViewButton];
  v12 = sub_10000599C();
  [v12 v13];

  v14 = sub_100025EF4();
  if (!v14)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v15 = v14;
  v16 = sub_100008934();
  if (!v16)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v17 = v16;
  v18 = [v0 callParticipantsViewController];
  v19 = [v18 view];

  if (!v19)
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v20 = sub_10000599C();
  [v20 v21];

  if ([v0 middleViewState] == 1)
  {
    v22 = sub_100025EF4();
    if (!v22)
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v23 = v22;
    v24 = [objc_msgSend(v0 "buttonsViewController")];
    swift_unknownObjectRelease();
    v25 = sub_100008934();
    if (!v25)
    {
      __break(1u);
      return;
    }
  }

  else
  {
    if ([v0 middleViewState] != 2)
    {
      goto LABEL_28;
    }

    v28 = sub_100025EF4();
    if (!v28)
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v29 = v28;
    v30 = [v0 keypadViewController];
    v31 = [v30 view];

    if (!v31)
    {
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v32 = sub_100008934();
    if (!v32)
    {
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v33 = v32;
    v34 = sub_10000599C();
    [v34 v35];

    v36 = sub_100025EF4();
    if (!v36)
    {
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v23 = v36;
    v37 = [v0 bottomBar];
    if (!v37)
    {
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    v24 = v37;
    v25 = sub_100008934();
    if (!v25)
    {
LABEL_48:
      __break(1u);
      return;
    }
  }

  v38 = v25;
  v39 = sub_10000599C();
  [v39 v40];

LABEL_28:
  v41 = *(v1 + OBJC_IVAR___EmergencyWebRTCViewController_webViewRTCViewControllerWaitingStataTopAnchor);
  if (v41)
  {
    objc_opt_self();
    sub_10014EA98(&unk_1003AAAA0, &qword_1002F96D0);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_1002FBD90;
    *(v42 + 32) = v41;
    sub_1000064BC(0, &qword_1003AAF70, NSLayoutConstraint_ptr);
    v43 = v41;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v45 = sub_100008D8C();
    [v45 v46];
  }

  sub_10014EA98(&unk_1003AAAA0, &qword_1002F96D0);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_1002FBD90;
  v48 = sub_100008934();
  if (!v48)
  {
    goto LABEL_40;
  }

  v49 = v48;
  v50 = [v48 topAnchor];

  v51 = sub_100025EF4();
  if (!v51)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v52 = v51;
  v53 = objc_opt_self();
  v54 = [v52 topAnchor];

  v55 = [v50 constraintEqualToAnchor:v54];
  *(v47 + 32) = v55;
  sub_1000064BC(0, &qword_1003AAF70, NSLayoutConstraint_ptr);
  oslog = Array._bridgeToObjectiveC()().super.isa;

  [v53 activateConstraints:oslog];
LABEL_33:
}

void sub_1001CE838(void *a1)
{
  type metadata accessor for Features();
  v2 = static Features.shared.getter();
  v3 = Features.isEnhancedEmergencyEnabled.getter();

  if ((v3 & 1) == 0)
  {
    sub_100005D80();
    return;
  }

  if (qword_1003A9F40 != -1)
  {
    sub_10000755C(&qword_1003A9F40);
  }

  v4 = type metadata accessor for Logger();
  v5 = sub_1001D181C(v4, &unk_1003B8820);
  v6 = static os_log_type_t.default.getter();
  if (sub_10000FFB4(v6))
  {
    v7 = sub_100005924();
    sub_1000089E0(v7);
    sub_100008530(&_mh_execute_header, v8, v9, "EnhancedEmergency: PHAudioCallViewController trying to bring webView to front");
    sub_100005340();
  }

  v10 = sub_100030394();
  if (!v10)
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v10;
  if (![a1 *(v3 + 3568)])
  {
LABEL_13:
    __break(1u);
    return;
  }

  [v11 bringSubviewToFront:?];

  sub_100005D80();
}

void sub_1001CE9DC()
{
  v1 = v0;
  type metadata accessor for Features();
  v2 = static Features.shared.getter();
  v3 = Features.isEnhancedEmergencyEnabled.getter();

  if (v3)
  {
    if (qword_1003A9F40 != -1)
    {
      sub_10000755C(&qword_1003A9F40);
    }

    v4 = type metadata accessor for Logger();
    v5 = sub_1001D181C(v4, &unk_1003B8820);
    v6 = static os_log_type_t.default.getter();
    if (sub_100014274(v6))
    {
      v7 = sub_100005924();
      sub_10000539C(v7);
      sub_1000070F8(&_mh_execute_header, v8, v9, "EnhancedEmergency: run animation to fullScreen webView");
      sub_10000558C();
    }

    v10 = objc_opt_self();
    sub_100005C44();
    v11 = swift_allocObject();
    *(v11 + 16) = v1;
    v15[4] = sub_1001D1750;
    v15[5] = v11;
    sub_100006C90();
    v15[1] = 1107296256;
    sub_1000070E4();
    v15[2] = v12;
    v15[3] = &unk_10035E618;
    v13 = _Block_copy(v15);
    v14 = v1;

    [v10 animateWithDuration:v13 animations:0.5];
    _Block_release(v13);
  }
}

void sub_1001CEB30(void *a1)
{
  v2 = [a1 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v2;
  [v2 setNeedsLayout];

  v4 = [a1 view];
  if (!v4)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v5 = v4;
  [v4 layoutIfNeeded];
}

void sub_1001CEC18()
{
  v1 = v0;
  type metadata accessor for Features();
  v2 = static Features.shared.getter();
  v3 = Features.isEnhancedEmergencyEnabled.getter();

  if (v3)
  {
    if (qword_1003A9F40 != -1)
    {
      sub_10000755C(&qword_1003A9F40);
    }

    v4 = type metadata accessor for Logger();
    v5 = sub_1001D181C(v4, &unk_1003B8820);
    v6 = static os_log_type_t.default.getter();
    if (sub_100014274(v6))
    {
      v7 = sub_100005924();
      sub_10000539C(v7);
      sub_1000070F8(&_mh_execute_header, v8, v9, "EnhancedEmergency: PHAudioCallViewController trying to remove intermittent state label");
      sub_10000558C();
    }

    [v1 removeEnhancedEmergencyIntermittentStateLabel];
  }
}

void sub_1001CEDC0()
{
  type metadata accessor for Features();
  v1 = static Features.shared.getter();
  v2 = Features.isEnhancedEmergencyEnabled.getter();

  if (v2)
  {
    if (qword_1003A9F40 != -1)
    {
      sub_10000755C(&qword_1003A9F40);
    }

    v3 = type metadata accessor for Logger();
    v4 = sub_1001D181C(v3, &unk_1003B8820);
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = sub_100005924();
      sub_10000539C(v6);
      _os_log_impl(&_mh_execute_header, v4, v5, "EnhancedEmergency: PHAudioCallViewController trying to request mediaUploadRequest banner during streaming", v0, 2u);
      sub_10000558C();
    }

    v7 = [objc_opt_self() sharedApplication];
    v8 = [v7 delegate];

    if (v8)
    {
      objc_opt_self();
      v9 = swift_dynamicCastObjCClass();
      if (v9)
      {
        v10 = v9;
        v11 = Logger.logObject.getter();
        v12 = static os_log_type_t.default.getter();
        if (sub_10000FFB4(v12))
        {
          v13 = sub_100005924();
          sub_1000089E0(v13);
          sub_100008530(&_mh_execute_header, v14, v15, "EnhancedEmergency: PHAudioCallViewController about to call showEnhancedEmergencyMediaUploadDuringStreamingHUD");
          sub_100005340();
        }

        v16 = [v10 bannerPresentationManager];
        v17 = direct field offset for CNKBannerPresentationManager.value;
        swift_beginAccess();
        v18 = *&v16[v17];

        BannerPresentationManager.showEnhancedEmergencyMediaUploadDuringStreamingHUD()();
        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }
  }
}

void sub_1001CF000()
{
  v1 = [objc_allocWithZone(UINotificationFeedbackGenerator) init];
  [v1 notificationOccurred:0];
  [v0 setMiddleViewState:1 animated:1];
}

void sub_1001CF0BC(const char *a1, void (*a2)(void), void (*a3)(void))
{
  v7 = v3;
  type metadata accessor for Features();
  v8 = static Features.shared.getter();
  v9 = Features.isEnhancedEmergencyEnabled.getter();

  if ((v9 & 1) == 0)
  {
    goto LABEL_19;
  }

  if (qword_1003A9F40 != -1)
  {
    sub_10000755C(&qword_1003A9F40);
  }

  v10 = type metadata accessor for Logger();
  v11 = sub_1001D181C(v10, &unk_1003B8820);
  v12 = static os_log_type_t.default.getter();
  if (sub_100014274(v12))
  {
    v13 = sub_100005924();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, a1, v13, 2u);
    sub_100005BB8(v13);
  }

  v14 = [objc_opt_self() sharedApplication];
  v15 = [v14 delegate];

  if (!v15)
  {
    goto LABEL_19;
  }

  objc_opt_self();
  v16 = swift_dynamicCastObjCClass();
  if (v16)
  {
    v17 = v16;
    v18 = [v16 bannerPresentationManager];
    v19 = direct field offset for CNKBannerPresentationManager.value;
    swift_beginAccess();
    v20 = *&v18[v19];

    a2();
    v21 = [v7 navigationController];
    if (v21)
    {
      v22 = v21;
      v23 = [v21 topViewController];

      if (v23)
      {
        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
          swift_unknownObjectRelease();

          goto LABEL_19;
        }

        v24 = [v17 currentInCallScene];
        if (v24 && (v25 = v24, v26 = [v24 presentationMode], v25, v26 == 3))
        {
          [v7 hideRTTConversationIfNeeded];
        }

        else
        {
          v28 = [v17 bannerPresentationManager];
          v29 = direct field offset for CNKBannerPresentationManager.value;
          swift_beginAccess();
          v30 = *&v28[v29];

          a3();
        }
      }
    }

    swift_unknownObjectRelease();
LABEL_19:
    sub_100012B1C();
    return;
  }

  sub_100012B1C();

  swift_unknownObjectRelease();
}

uint64_t sub_1001CF484()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  sub_10000688C();
  v33 = v3;
  __chkstk_darwin(v4);
  sub_100005BD0();
  v7 = v6 - v5;
  type metadata accessor for DispatchQoS();
  sub_10000688C();
  v31 = v9;
  v32 = v8;
  __chkstk_darwin(v8);
  sub_100005BD0();
  v12 = v11 - v10;
  v13 = type metadata accessor for DispatchTime();
  sub_10000688C();
  v15 = v14;
  v17 = __chkstk_darwin(v16);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v30 - v20;
  v22 = [objc_msgSend(v0 "buttonsViewController")];
  swift_unknownObjectRelease();
  objc_opt_self();
  v23 = swift_dynamicCastObjCClass();
  if (v23)
  {
    [v23 changeVideoStreamingButtonTitleWithIsSharing:0];
  }

  [v1 addEnhancedEmergencyIntermittentStateLabelWithState:0];
  sub_1000064BC(0, &qword_1003AAAB0, OS_dispatch_queue_ptr);
  v24 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v30 = *(v15 + 8);
  v30(v19, v13);
  sub_100005C44();
  v25 = swift_allocObject();
  *(v25 + 16) = v1;
  aBlock[4] = sub_1001D17F8;
  aBlock[5] = v25;
  sub_10000694C();
  aBlock[1] = 1107296256;
  sub_1000070E4();
  aBlock[2] = v26;
  aBlock[3] = &unk_10035E5C8;
  v27 = _Block_copy(aBlock);
  v28 = v1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100158FC0();
  sub_10014EA98(&unk_1003AAAC0, &unk_1002FB790);
  sub_100032638();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v27);

  (*(v33 + 8))(v7, v2);
  (*(v31 + 8))(v12, v32);
  return (v30)(v21, v13);
}

uint64_t sub_1001CF8E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v31[1] = a2;
  v34 = type metadata accessor for DispatchWorkItemFlags();
  sub_10000688C();
  v37 = v6;
  __chkstk_darwin(v7);
  sub_100005BD0();
  v10 = v9 - v8;
  type metadata accessor for DispatchQoS();
  sub_10000688C();
  v35 = v12;
  v36 = v11;
  __chkstk_darwin(v11);
  sub_100005BD0();
  v15 = v14 - v13;
  v16 = type metadata accessor for DispatchTime();
  v31[0] = v16;
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = v31 - v21;
  [v4 addEnhancedEmergencyIntermittentStateLabelWithState:a1];
  sub_1000064BC(0, &qword_1003AAAB0, OS_dispatch_queue_ptr);
  v23 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v24 = *(v17 + 8);
  v24(v20, v16);
  sub_100005C44();
  v25 = swift_allocObject();
  *(v25 + 16) = v4;
  aBlock[4] = v32;
  aBlock[5] = v25;
  sub_10000694C();
  aBlock[1] = 1107296256;
  sub_1000070E4();
  aBlock[2] = v26;
  aBlock[3] = v33;
  v27 = _Block_copy(aBlock);
  v28 = v4;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100158FC0();
  sub_10014EA98(&unk_1003AAAC0, &unk_1002FB790);
  sub_100032638();
  v29 = v34;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v27);

  (*(v37 + 8))(v10, v29);
  (*(v35 + 8))(v15, v36);
  return (v24)(v22, v31[0]);
}

void sub_1001CFC84()
{
  v1 = v0;
  type metadata accessor for Features();
  v2 = static Features.shared.getter();
  v3 = Features.isEnhancedEmergencyEnabled.getter();

  if ((v3 & 1) == 0)
  {
    return;
  }

  v4 = [v1 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = v4;
  v6 = [v1 bottomBar];
  if (!v6)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v7 = v6;
  [v5 bringSubviewToFront:?];
}

void sub_1001CFDA8(char **a1)
{
  v2 = v1;
  if (qword_1003A9F40 != -1)
  {
    sub_10000755C(&qword_1003A9F40);
  }

  v4 = type metadata accessor for Logger();
  v5 = sub_1001D181C(v4, &unk_1003B8820);
  v6 = static os_log_type_t.default.getter();
  if (sub_100014274(v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v137 = v8;
    *v7 = 136315138;
    v9 = String.init<A>(reflecting:)();
    v11 = sub_100008ADC(v9, v10, &v137);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "EnhancedEmergency: Adding intermittentState label of state %s", v7, 0xCu);
    sub_100005B2C(v8);
    sub_100005BB8(v8);
    sub_10000558C();
  }

  isa = [v2 enhancedEmergencyIntermittentStateScrollView];
  if (isa)
  {
    goto LABEL_11;
  }

  v134 = a1;
  v135 = [objc_allocWithZone(UIScrollView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v135 setTranslatesAutoresizingMaskIntoConstraints:0];
  v13 = [objc_allocWithZone(UIView) init];
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  v14 = [objc_allocWithZone(UILabel) init];
  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  v15 = objc_opt_self();
  v16 = [v15 preferredFontForTextStyle:UIFontTextStyleTitle2];
  v17 = sub_100008D8C();
  [v17 v18];

  v136 = v2;
  [v14 setNumberOfLines:0];
  [v14 setTextAlignment:1];
  v19 = objc_opt_self();
  v20 = [v19 secondaryLabelColor];
  v21 = sub_100008D8C();
  [v21 v22];

  v23 = [objc_allocWithZone(UILabel) init];
  [v23 setTranslatesAutoresizingMaskIntoConstraints:0];
  v24 = [v15 preferredFontForTextStyle:UIFontTextStyleTitle2];
  [v23 setFont:v24];

  a1 = v2;
  [v23 setNumberOfLines:0];
  [v23 setTextAlignment:1];
  v25 = [v19 secondaryLabelColor];
  [v23 setTextColor:v25];

  v26 = sub_100007BAC();
  if (!v26)
  {
    __break(1u);
    goto LABEL_35;
  }

  v27 = v26;
  [v26 addSubview:v135];

  [v135 addSubview:v13];
  v28 = sub_10000599C();
  [v28 v29];
  v133 = v13;
  [v13 addSubview:v23];
  [v2 setEnhancedEmergencyIntermittentStateScrollView:v135];
  [v2 setEnhancedEmergencyIntermittentStateLabel:v14];
  [v2 setEnhancedEmergencySecondaryLabel:v23];
  sub_10014EA98(&unk_1003AAAA0, &qword_1002F96D0);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1002FDEA0;
  v31 = [v135 topAnchor];
  v32 = sub_100007BAC();
  if (!v32)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v33 = v32;
  v34 = v2;
  v35 = [v32 centerYAnchor];

  v36 = [v31 constraintEqualToAnchor:v35 constant:-30.0];
  *(v30 + 32) = v36;
  v37 = [v135 bottomAnchor];
  v38 = [objc_msgSend(a1 "buttonsViewController")];
  swift_unknownObjectRelease();
  v39 = [v38 topAnchor];

  a1 = &selRef_audioCategory;
  v40 = sub_100008414();

  *(v30 + 40) = v40;
  v41 = [v135 leadingAnchor];
  v42 = [v34 view];
  if (!v42)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    v137 = a1;
    _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
    return;
  }

  v43 = v42;
  v44 = [v42 readableContentGuide];

  v45 = [v44 leadingAnchor];
  v46 = sub_100008414();

  *(v30 + 48) = v46;
  v47 = [v135 trailingAnchor];
  v48 = [v34 view];
  if (!v48)
  {
    goto LABEL_37;
  }

  v49 = v48;
  v132 = objc_opt_self();
  v50 = [v49 readableContentGuide];

  v51 = [v50 trailingAnchor];
  v52 = [v47 constraintEqualToAnchor:v51];

  *(v30 + 56) = v52;
  v53 = [v133 topAnchor];
  v54 = [v135 topAnchor];

  v55 = sub_100008414();
  *(v30 + 64) = v55;
  v56 = [v133 bottomAnchor];
  v57 = [v135 contentLayoutGuide];
  v58 = [v57 bottomAnchor];

  v59 = sub_10000A494();
  v61 = [v59 v60];

  *(v30 + 72) = v61;
  v62 = [v133 leadingAnchor];
  v63 = [v135 contentLayoutGuide];
  v64 = [v63 leadingAnchor];

  v65 = sub_10000A494();
  v67 = [v65 v66];

  *(v30 + 80) = v67;
  v68 = [v133 trailingAnchor];
  v69 = [v135 contentLayoutGuide];
  v70 = [v69 trailingAnchor];

  v71 = sub_10000A494();
  v73 = [v71 v72];

  *(v30 + 88) = v73;
  v74 = [v133 widthAnchor];
  v75 = [v135 frameLayoutGuide];
  v76 = [v75 widthAnchor];

  v77 = sub_10000A494();
  v79 = [v77 v78];

  *(v30 + 96) = v79;
  v80 = [v14 topAnchor];
  v81 = sub_100009614([v133 topAnchor]);

  *(v30 + 104) = v81;
  v82 = [v14 leadingAnchor];
  v83 = sub_100009614([v133 leadingAnchor]);

  *(v30 + 112) = v83;
  v84 = [v14 trailingAnchor];
  v85 = sub_100009614([v133 trailingAnchor]);

  *(v30 + 120) = v85;
  v86 = [v23 topAnchor];
  v87 = [v14 bottomAnchor];

  v88 = sub_10000A494();
  v90 = [v88 v89];

  *(v30 + 128) = v90;
  v91 = [v23 leadingAnchor];
  v92 = sub_100009614([v133 leadingAnchor]);

  *(v30 + 136) = v92;
  v93 = [v23 trailingAnchor];
  v94 = sub_100009614([v133 trailingAnchor]);

  *(v30 + 144) = v94;
  v95 = [v23 bottomAnchor];

  v96 = sub_100009614([v133 bottomAnchor]);
  *(v30 + 152) = v96;
  sub_1000064BC(0, &qword_1003AAF70, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v132 activateConstraints:isa];

  v2 = v136;
  a1 = v134;
LABEL_11:

  v97 = [v2 enhancedEmergencyIntermittentStateScrollView];
  if (v97)
  {
    v98 = v97;
    switch(a1)
    {
      case 0uLL:
        sub_1000064BC(0, &qword_1003AAA98, UIImage_ptr);
        v99 = sub_100005450();
        v100 = [v2 enhancedEmergencyIntermittentStateLabel];
        if (v99)
        {
          v101 = v99;
        }

        else
        {
          v101 = [objc_allocWithZone(UIImage) init];
        }

        v109 = v99;
        v123 = sub_1001FD1F8(0x505F4152454D4143, 0xED00004445535541);
        sub_1000069D8(v123, v124);

        v125 = sub_10000C1A0();
        [v125 setAlpha:1.0];

        v115 = sub_10000C1A0();
        v126 = sub_1001FD1F8(0xD00000000000001CLL, 0x80000001002AABF0);
        sub_10021BFD8(v126, v127, v115);
        goto LABEL_30;
      case 1uLL:
        sub_1000064BC(0, &qword_1003AAA98, UIImage_ptr);
        v106 = sub_1001FFAD8();
        v107 = [v2 enhancedEmergencyIntermittentStateLabel];
        if (v106)
        {
          v108 = v106;
        }

        else
        {
          v108 = [objc_allocWithZone(UIImage) init];
        }

        v109 = v106;
        v128 = sub_1001FD1F8(0x474E494D55534552, 0xEE004F454449565FLL);
        sub_1000069D8(v128, v129);

        v115 = [v2 enhancedEmergencySecondaryLabel];
        [v115 setAlpha:0.0];
        goto LABEL_30;
      case 2uLL:
        sub_1000064BC(0, &qword_1003AAA98, UIImage_ptr);
        sub_100005450();
        v102 = sub_1001D1844();
        if (a1)
        {
          v103 = a1;
        }

        else
        {
          v103 = [objc_allocWithZone(UIImage) init];
        }

        v109 = a1;
        v110 = sub_1001FD1F8(0xD000000000000012, 0x80000001002AABD0);
        sub_1000069D8(v110, v111);

        v112 = [v2 setControlView:?];
        v113 = [objc_opt_self() systemWhiteColor];
        [v112 setTextColor:v113];

        v114 = sub_10000C1A0();
        sub_1001D1864(v114);

        v115 = sub_10000C1A0();
        goto LABEL_25;
      case 3uLL:
        sub_1000064BC(0, &qword_1003AAA98, UIImage_ptr);
        sub_1001FFAD8();
        v104 = sub_1001D1844();
        if (a1)
        {
          v105 = a1;
        }

        else
        {
          v105 = [objc_allocWithZone(UIImage) init];
        }

        v109 = a1;
        v116 = sub_1001FD1F8(0x48535F4F544F4850, 0xED0000474E495241);
        sub_1000069D8(v116, v117);

        v118 = [v2 setControlView:?];
        v119 = [objc_opt_self() systemWhiteColor];
        [v118 setTextColor:v119];

        v120 = sub_10000C1A0();
        sub_1001D1864(v120);

        v115 = sub_10000C1A0();
LABEL_25:
        v121 = sub_1001FD1F8(0xD000000000000017, 0x80000001002AABB0);
        sub_10021BFD8(v121, v122, v115);
LABEL_30:

        v130 = [v2 enhancedEmergencyIntermittentStateScrollView];
        if (v130)
        {
          v131 = v130;
          [v130 setAlpha:1.0];
        }

        break;
      default:
        goto LABEL_38;
    }
  }
}

void sub_1001D0E64()
{
  v1 = v0;
  if (qword_1003A9F40 != -1)
  {
    sub_10000755C(&qword_1003A9F40);
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_1001D181C(v2, &unk_1003B8820);
  v4 = static os_log_type_t.default.getter();
  if (sub_100014274(v4))
  {
    v5 = sub_100005924();
    sub_10000539C(v5);
    sub_1000070F8(&_mh_execute_header, v6, v7, "EnhancedEmergency: removing intermittentState label");
    sub_10000558C();
  }

  v8 = [v1 enhancedEmergencyIntermittentStateScrollView];
  if (v8)
  {
    v9 = v8;
    [v8 setAlpha:0.0];
  }
}

void sub_1001D0FA0()
{
  v1 = [objc_msgSend(v0 "buttonsViewController")];
  swift_unknownObjectRelease();
  v2 = objc_opt_self();
  sub_100005C44();
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  v7[4] = sub_1001D1738;
  v7[5] = v3;
  sub_100006C90();
  v7[1] = 1107296256;
  sub_1000070E4();
  v7[2] = v4;
  v7[3] = &unk_10035E4D8;
  v5 = _Block_copy(v7);
  v6 = v1;

  [v2 animateWithDuration:v5 animations:0.3];
  _Block_release(v5);
}

id sub_1001D10A8(void *a1)
{
  [a1 setAlpha:1.0];
  v3[0] = 0x3FF0000000000000;
  v3[1] = 0;
  v3[2] = 0;
  v3[3] = 0x3FF0000000000000;
  v3[4] = 0;
  v3[5] = 0;
  return [a1 setTransform:v3];
}

void sub_1001D114C()
{
  v1 = [objc_msgSend(v0 "buttonsViewController")];
  swift_unknownObjectRelease();
  CGAffineTransformMakeScale(&v15, 0.01, 0.01);
  tx = v15.tx;
  ty = v15.ty;
  v11 = *&v15.c;
  v12 = *&v15.a;
  [v1 frame];
  v4 = CGRectGetWidth(v16) * 0.4;
  [v1 frame];
  Height = CGRectGetHeight(v17);
  CGAffineTransformMakeTranslation(&v15, v4, Height * 0.6);
  *&t1.a = v12;
  *&t1.c = v11;
  t1.tx = tx;
  t1.ty = ty;
  t2 = v15;
  CGAffineTransformConcat(&v15, &t1, &t2);
  v6 = objc_opt_self();
  v7 = swift_allocObject();
  v8 = *&v15.c;
  *(v7 + 24) = *&v15.a;
  *(v7 + 16) = v1;
  *(v7 + 40) = v8;
  *(v7 + 56) = *&v15.tx;
  *&t1.tx = sub_1001D172C;
  *&t1.ty = v7;
  *&t1.a = _NSConcreteStackBlock;
  *&t1.b = 1107296256;
  *&t1.c = sub_10002E570;
  *&t1.d = &unk_10035E488;
  v9 = _Block_copy(&t1);
  v10 = v1;

  [v6 animateWithDuration:v9 animations:0.2];
  _Block_release(v9);
}

id sub_1001D133C(void *a1, _OWORD *a2)
{
  v3 = a2[1];
  v5[0] = *a2;
  v5[1] = v3;
  v5[2] = a2[2];
  [a1 setTransform:v5];
  return [a1 setAlpha:0.0];
}

id sub_1001D13E4()
{
  v1 = [v0 activeCall];

  return v1;
}

void sub_1001D1460()
{
  v1 = [v0 activeCall];
  v4 = [objc_opt_self() viewControllerForCall:v1];

  if (v4)
  {
    v2 = [v0 navigationController];
    if (v2)
    {
      v3 = v2;
      [v2 pushViewController:v4 animated:1];
    }
  }
}

void sub_1001D1578()
{
  v1 = [v0 navigationController];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 topViewController];

    if (v3)
    {
      objc_opt_self();
      v4 = swift_dynamicCastObjCClass();

      if (v4)
      {
        v5 = [v0 navigationController];
        if (v5)
        {
          v6 = v5;
        }
      }
    }
  }
}

id sub_1001D16B0()
{
  v1 = [v0 audioRouteMenu];

  return v1;
}

unint64_t sub_1001D1784()
{
  result = qword_1003AD2B8;
  if (!qword_1003AD2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AD2B8);
  }

  return result;
}

uint64_t sub_1001D181C(uint64_t a1, uint64_t a2)
{
  sub_100008A14(a1, a2);

  return Logger.logObject.getter();
}

id sub_1001D1844()
{

  return [v0 enhancedEmergencyIntermittentStateLabel];
}

id sub_1001D1864(void *a1)
{

  return [a1 setAlpha:1.0];
}

id sub_1001D1884(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v14 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  sub_10000688C();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_100005BD0();
  v9 = v8 - v7;
  v10 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v10);
  sub_100005BD0();
  v11 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v11 - 8);
  sub_100005BD0();
  v3[OBJC_IVAR___ICSAmbientActivityController_hasStartedMonitoringCalls] = 0;
  *&v3[OBJC_IVAR___ICSAmbientActivityController_currentActivity] = 0;
  v13 = OBJC_IVAR___ICSAmbientActivityController_ambientActivityQueue;
  sub_10000A2EC();
  static DispatchQoS.userInitiated.getter();
  v20 = _swiftEmptyArrayStorage;
  sub_10002D92C(&qword_1003ABA08, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10014EA98(&qword_1003ABA10, &unk_1002FC540);
  sub_10002D9BC(&qword_1003ABA18, &qword_1003ABA10, &unk_1002FC540);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v5 + 104))(v9, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v14);
  *&v3[v13] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v3[OBJC_IVAR___ICSAmbientActivityController_callCenter] = a1;
  *&v3[OBJC_IVAR___ICSAmbientActivityController_notificationCenter] = a2;
  *&v3[OBJC_IVAR___ICSAmbientActivityController_sceneManager] = a3;
  v19.receiver = v3;
  v19.super_class = ObjectType;
  return objc_msgSendSuper2(&v19, "init");
}

BOOL sub_1001D1C94@<W0>(_BYTE *a1@<X8>)
{
  result = GlassCutoutCirclesOverlayViewController._canShowWhileLocked()();
  *a1 = result;
  return result;
}

uint64_t sub_1001D1CC0(uint64_t a1)
{
  v2 = sub_100037240();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001D1D38(uint64_t a1)
{
  v2 = sub_10002E990();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001D1D74(uint64_t a1)
{
  v2 = sub_10002E990();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1001D1DC4()
{
  result = qword_1003AD318;
  if (!qword_1003AD318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AD318);
  }

  return result;
}

unint64_t sub_1001D1E1C()
{
  result = qword_1003AD320;
  if (!qword_1003AD320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AD320);
  }

  return result;
}

unint64_t sub_1001D1E80()
{
  result = qword_1003AD340;
  if (!qword_1003AD340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AD340);
  }

  return result;
}

unint64_t sub_1001D1F08()
{
  result = qword_1003AD398;
  if (!qword_1003AD398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AD398);
  }

  return result;
}

unint64_t sub_1001D1F60()
{
  result = qword_1003AD3A0;
  if (!qword_1003AD3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AD3A0);
  }

  return result;
}

unint64_t sub_1001D1FB8()
{
  result = qword_1003AD3A8;
  if (!qword_1003AD3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AD3A8);
  }

  return result;
}

unint64_t sub_1001D2010()
{
  result = qword_1003AD3B0;
  if (!qword_1003AD3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AD3B0);
  }

  return result;
}

id sub_1001D2070(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = sub_10014EA98(&qword_1003AD438, &qword_1002FE368);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v14 - v8;
  v10 = type metadata accessor for _Glass._GlassVariant();
  (*(*(v10 - 8) + 32))(v9, a1, v10);
  v11 = *(v7 + 56);
  sub_1001D3F70(a2, &v9[v11]);
  *&v2[OBJC_IVAR___PHCallsKeypadViewController____lazy_storage___inputLabel] = 0;
  *&v2[OBJC_IVAR___PHCallsKeypadViewController____lazy_storage___keypad] = 0;
  *&v2[OBJC_IVAR___PHCallsKeypadViewController____lazy_storage___numberFormatter] = 0;
  *&v2[OBJC_IVAR___PHCallsKeypadViewController_inputCancellable] = 0;
  v14.receiver = v2;
  v14.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v14, "initWithNibName:bundle:", 0, 0);
  [v12 setOverrideUserInterfaceStyle:2];
  sub_1001D21F0(v9, &v9[v11]);

  sub_1000306A4(v9, &qword_1003AD438, &qword_1002FE368);
  return v12;
}

void sub_1001D21F0(uint64_t a1, uint64_t a2)
{
  v23 = a1;
  type metadata accessor for _Glass._GlassVariant();
  sub_100006E40();
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v8);
  v9 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10014EA98(&qword_1003AD420, &qword_1002FE358);
  v11 = sub_100006998(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v11);
  v17 = &v23 - v16;
  v24 = objc_opt_self();
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1001D3F00(a2, v17);
  (*(v5 + 16))(v9, v23, v2);
  v19 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v20 = (v15 + *(v5 + 80) + v19) & ~*(v5 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v18;
  sub_1001D3F70(v17, v21 + v19);
  (*(v5 + 32))(v21 + v20, v9, v2);
  aBlock[4] = sub_1001D3FE0;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002E570;
  aBlock[3] = &unk_10035E9B0;
  v22 = _Block_copy(aBlock);

  [v24 animateWithDuration:v22 animations:0.3];
  _Block_release(v22);
}

void sub_1001D2470()
{
  *(v0 + OBJC_IVAR___PHCallsKeypadViewController____lazy_storage___inputLabel) = 0;
  *(v0 + OBJC_IVAR___PHCallsKeypadViewController____lazy_storage___keypad) = 0;
  *(v0 + OBJC_IVAR___PHCallsKeypadViewController____lazy_storage___numberFormatter) = 0;
  *(v0 + OBJC_IVAR___PHCallsKeypadViewController_inputCancellable) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1001D2514()
{
  v1 = v0;
  v48.receiver = v0;
  v48.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v48, "viewDidLoad");
  sub_10014EA98(&unk_1003AAAA0, &qword_1002F96D0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1002FB360;
  v3 = sub_100007888(&OBJC_IVAR___PHCallsKeypadViewController____lazy_storage___inputLabel);
  v4 = [v3 topAnchor];

  v5 = [v1 view];
  if (!v5)
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = v5;
  v7 = [v5 topAnchor];

  v8 = [v4 constraintEqualToAnchor:v7 constant:50.0];
  *(v2 + 32) = v8;
  v9 = OBJC_IVAR___PHCallsKeypadViewController____lazy_storage___inputLabel;
  v10 = [*&v1[OBJC_IVAR___PHCallsKeypadViewController____lazy_storage___inputLabel] leadingAnchor];
  v11 = [v1 view];
  if (!v11)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v12 = v11;
  v13 = [v11 leadingAnchor];

  v14 = [v10 constraintEqualToAnchor:v13 constant:25.0];
  *(v2 + 40) = v14;
  v15 = [*&v1[v9] trailingAnchor];
  v16 = [v1 view];
  if (!v16)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v17 = v16;
  v18 = [v16 trailingAnchor];

  v19 = [v15 constraintEqualToAnchor:v18 constant:-25.0];
  *(v2 + 48) = v19;
  v20 = [*&v1[v9] heightAnchor];
  v21 = sub_1001D2A7C();
  [v21 lineHeight];
  v23 = v22;

  v24 = [v20 constraintGreaterThanOrEqualToConstant:v23];
  *(v2 + 56) = v24;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002FB360;
  v26 = sub_1001D2AD0(&OBJC_IVAR___PHCallsKeypadViewController____lazy_storage___keypad, sub_1001D36D0);
  v27 = [v26 topAnchor];

  v28 = [*&v1[v9] bottomAnchor];
  v29 = [v27 constraintEqualToAnchor:v28 constant:40.0];

  *(inited + 32) = v29;
  v30 = OBJC_IVAR___PHCallsKeypadViewController____lazy_storage___keypad;
  v31 = [*&v1[OBJC_IVAR___PHCallsKeypadViewController____lazy_storage___keypad] leadingAnchor];
  v32 = [v1 view];
  if (!v32)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v33 = v32;
  v34 = [v32 leadingAnchor];

  v35 = sub_10000805C("constraintEqualToAnchor:constant:", 36.0);
  *(inited + 40) = v35;
  v36 = [*&v1[v30] trailingAnchor];
  v37 = [v1 view];
  if (!v37)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v38 = v37;
  v39 = [v37 trailingAnchor];

  v40 = sub_10000805C("constraintEqualToAnchor:constant:", -36.0);
  *(inited + 48) = v40;
  v41 = [*&v1[v30] bottomAnchor];
  v42 = [v1 view];
  if (v42)
  {
    v43 = v42;
    v44 = [v42 bottomAnchor];

    v45 = sub_10000805C("constraintEqualToAnchor:constant:", -36.0);
    *(inited + 56) = v45;
    sub_1001D3C60(inited, sub_100017230, sub_1002192F4);
    v46 = objc_opt_self();
    sub_1000064BC(0, &qword_1003AAF70, NSLayoutConstraint_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v46 activateConstraints:isa];

    sub_1001D2B34();
    return;
  }

LABEL_13:
  __break(1u);
}

id sub_1001D2A7C()
{
  result = [objc_opt_self() _preferredFontForTextStyle:UIFontTextStyleTitle1 weight:UIFontWeightSemibold];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

id sub_1001D2AD0(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

double sub_1001D2B34()
{
  v0 = sub_10014EA98(&qword_1003AE220, &qword_1002FDB20);
  __chkstk_darwin(v0 - 8);
  v2 = &v23 - v1;
  v3 = type metadata accessor for NSNotificationCenter.Publisher();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10014EA98(&qword_1003AD400, &qword_1002FE340);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v23 - v9;
  v11 = sub_10014EA98(&qword_1003AD408, &unk_1002FE348);
  v12 = *(v11 - 8);
  v23 = v11;
  v24 = v12;
  __chkstk_darwin(v11);
  v14 = &v23 - v13;
  v15 = [objc_opt_self() defaultCenter];
  v16 = String._bridgeToObjectiveC()();
  NSNotificationCenter.publisher(for:object:)();

  sub_100027D78(&qword_1003B0A90, &type metadata accessor for NSNotificationCenter.Publisher, &protocol conformance descriptor for NSNotificationCenter.Publisher);
  Publisher.compactMap<A>(_:)();
  (*(v4 + 8))(v6, v3);
  sub_1000064BC(0, &qword_1003AAAB0, OS_dispatch_queue_ptr);
  v17 = static OS_dispatch_queue.main.getter();
  v26 = v17;
  v18 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  sub_100006848(v2, 1, 1, v18);
  sub_100027E08(&qword_1003AD410, &qword_1003AD400, &qword_1002FE340, &protocol conformance descriptor for Publishers.CompactMap<A, B>);
  sub_100027E50();
  Publisher.receive<A>(on:options:)();
  sub_1000306A4(v2, &qword_1003AE220, &qword_1002FDB20);

  (*(v8 + 8))(v10, v7);
  swift_allocObject();
  v19 = v25;
  swift_unknownObjectWeakInit();
  sub_100027E08(&qword_1003AD418, &qword_1003AD408, &unk_1002FE348, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v20 = v23;
  v21 = Publisher<>.sink(receiveValue:)();

  (*(v24 + 8))(v14, v20);
  *(v19 + OBJC_IVAR___PHCallsKeypadViewController_inputCancellable) = v21;

  return result;
}

void sub_1001D2FF8(char a1)
{
  v4.receiver = v1;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, "viewDidDisappear:", a1 & 1);
  v3 = sub_100007888(&OBJC_IVAR___PHCallsKeypadViewController____lazy_storage___inputLabel);
  [v3 setText:0];
}

void sub_1001D30B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = a3;
  v34 = type metadata accessor for _Glass._GlassVariant();
  v32 = *(v34 - 8);
  __chkstk_darwin(v34);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for _Glass._GlassVariant.Size();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10014EA98(&qword_1003AD428, &qword_1002FE360);
  __chkstk_darwin(v10);
  v12 = &v32 - v11;
  v13 = sub_10014EA98(&qword_1003AD420, &qword_1002FE358);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v32 - v17;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    (*(v7 + 104))(v18, enum case for _Glass._GlassVariant.Size.small(_:), v6);
    sub_100006848(v18, 0, 1, v6);
    v21 = *(v10 + 48);
    sub_1001D3F00(a2, v12);
    sub_1001D3F00(v18, &v12[v21]);
    if (sub_100006AC0(v12, 1, v6) == 1)
    {
      sub_1000306A4(v18, &qword_1003AD420, &qword_1002FE358);
      if (sub_100006AC0(&v12[v21], 1, v6) == 1)
      {
        sub_1000306A4(v12, &qword_1003AD420, &qword_1002FE358);
        v22 = v34;
        v23 = v32;
LABEL_9:
        static _Glass._GlassVariant.clear.getter();
        v26 = static _Glass._GlassVariant.== infix(_:_:)();
        (*(v23 + 8))(v5, v22);
        if (v26)
        {
          v27 = [v20 view];
          if (v27)
          {
            v28 = v27;
            v29 = &selRef_applySmallClearGlassBackground;
LABEL_15:
            [v28 *v29];

            goto LABEL_16;
          }

          goto LABEL_19;
        }

LABEL_12:
        static _Glass._GlassVariant.regular.getter();
        v30 = static _Glass._GlassVariant.== infix(_:_:)();
        (*(v23 + 8))(v5, v22);
        if ((v30 & 1) == 0)
        {
LABEL_16:

          return;
        }

        v31 = [v20 view];
        if (v31)
        {
          v28 = v31;
          v29 = &selRef_applyRegularGlassBackground;
          goto LABEL_15;
        }

        __break(1u);
LABEL_19:
        __break(1u);
        return;
      }
    }

    else
    {
      sub_1001D3F00(v12, v16);
      if (sub_100006AC0(&v12[v21], 1, v6) != 1)
      {
        (*(v7 + 32))(v9, &v12[v21], v6);
        sub_100027D78(&qword_1003AD430, &type metadata accessor for _Glass._GlassVariant.Size, &protocol conformance descriptor for _Glass._GlassVariant.Size);
        v24 = dispatch thunk of static Equatable.== infix(_:_:)();
        v25 = *(v7 + 8);
        v25(v9, v6);
        sub_1000306A4(v18, &qword_1003AD420, &qword_1002FE358);
        v25(v16, v6);
        sub_1000306A4(v12, &qword_1003AD420, &qword_1002FE358);
        v22 = v34;
        v23 = v32;
        if ((v24 & 1) == 0)
        {
          goto LABEL_12;
        }

        goto LABEL_9;
      }

      sub_1000306A4(v18, &qword_1003AD420, &qword_1002FE358);
      (*(v7 + 8))(v16, v6);
    }

    sub_1000306A4(v12, &qword_1003AD428, &qword_1002FE360);
    v22 = v34;
    v23 = v32;
    goto LABEL_12;
  }
}

id sub_1001D35CC(void *a1)
{
  v2 = [objc_allocWithZone(UILabel) init];
  [v2 setTextAlignment:1];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = sub_1001D2A7C();
  [v2 setFont:v3];

  [v2 setAdjustsFontSizeToFitWidth:1];
  [v2 setMinimumScaleFactor:0.7];
  [v2 setLineBreakMode:3];
  result = [a1 view];
  if (result)
  {
    v5 = result;
    [result addSubview:v2];

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1001D36D0(void *a1)
{
  v2 = [objc_allocWithZone(PHInCallKeypadViewController) init];
  [v2 setUsesLargeFormatUI:1];
  v3 = v2;
  v4 = [v3 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = v4;
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  [a1 addChildViewController:v3];
  v6 = [a1 view];
  if (!v6)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v7 = v6;
  v8 = [v3 view];
  if (!v8)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v9 = v8;
  [v7 addSubview:v8];

  [v3 didMoveToParentViewController:a1];
  v10 = [v3 view];

  if (v10)
  {

    return;
  }

LABEL_9:
  __break(1u);
}

id sub_1001D3818()
{
  v1 = OBJC_IVAR___PHCallsKeypadViewController____lazy_storage___numberFormatter;
  v2 = *(v0 + OBJC_IVAR___PHCallsKeypadViewController____lazy_storage___numberFormatter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___PHCallsKeypadViewController____lazy_storage___numberFormatter);
  }

  else
  {
    v4 = [objc_allocWithZone(NSNumberFormatter) init];
    [v4 setNumberStyle:1];
    [v4 setMaximumFractionDigits:0];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_1001D38B4@<X0>(void *a1@<X8>)
{
  Notification.object.getter();
  if (!v3[3])
  {
    result = sub_1000306A4(v3, &unk_1003AAF50, &qword_1002FB170);
    goto LABEL_5;
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_5:
    *a1 = 0;
    a1[1] = 0;
  }

  return result;
}

void sub_1001D3938(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_1001D39A4(v2, v3);
  }
}

void sub_1001D39A4(uint64_t a1, void *a2)
{
  v5 = sub_1001D3818();
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 numberFromString:v6];

  if (v7)
  {
    v8 = objc_opt_self();
    v9 = v7;
    v10 = [v8 localizedStringFromNumber:v9 numberStyle:0];
    a1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a2 = v11;
  }

  else
  {
  }

  v12 = sub_1001D2AD0(&OBJC_IVAR___PHCallsKeypadViewController____lazy_storage___inputLabel, sub_1001D35CC);
  v13 = sub_1001F8A08(v12);
  if (v14)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0;
  }

  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = 0xE000000000000000;
  }

  v19 = v15;
  v18 = *(v2 + OBJC_IVAR___PHCallsKeypadViewController____lazy_storage___inputLabel);

  v17._countAndFlagsBits = a1;
  v17._object = a2;
  String.append(_:)(v17);

  sub_10021BFD8(v19, v16, v18);
}

uint64_t sub_1001D3C60(uint64_t a1, uint64_t (*a2)(void), void (*a3)(uint64_t, void, uint64_t))
{
  v7 = a2();
  v8 = (a2)(*v3);
  v9 = __OFADD__(v8, v7);
  result = v8 + v7;
  if (v9)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_1001D3DF8(result, 1);
  v11 = *v3;
  v12 = *v3 & 0xFFFFFFFFFFFFFF8;
  a3(v12 + 8 * *(v12 + 0x10) + 32, (*(v12 + 0x18) >> 1) - *(v12 + 0x10), a1);
  v14 = v13;

  if (v14 < v7)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v14 < 1)
  {
LABEL_6:
    *v3 = v11;
    return result;
  }

  v15 = *(v12 + 16);
  v9 = __OFADD__(v15, v14);
  v16 = v15 + v14;
  if (!v9)
  {
    *(v12 + 16) = v16;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1001D3D20(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_1001D3E98(result, 1);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_10014EA98(&qword_1003AD440, &unk_1002FE370);
  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1001D3DF8(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  _CocoaArrayWrapper.endIndex.getter();
LABEL_9:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v2 = result;
  return result;
}

uint64_t sub_1001D3E98(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!result || a1 > *(v4 + 24) >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    *v2 = result;
  }

  return result;
}

uint64_t sub_1001D3F00(uint64_t a1, uint64_t a2)
{
  v4 = sub_10014EA98(&qword_1003AD420, &qword_1002FE358);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001D3F70(uint64_t a1, uint64_t a2)
{
  v4 = sub_10014EA98(&qword_1003AD420, &qword_1002FE358);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1001D3FE0()
{
  v1 = sub_10014EA98(&qword_1003AD420, &qword_1002FE358);
  sub_100006998(v1);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = *(type metadata accessor for _Glass._GlassVariant() - 8);
  v7 = *(v0 + 16);
  v8 = v0 + ((v3 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  sub_1001D30B8(v7, v0 + v3, v8);
}

id UserFeedbackViewController.init(scoreController:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR___PHUserFeedbackViewController_scoreController] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, "initWithNibName:bundle:", 0, 0);
}

Swift::Void __swiftcall UserFeedbackViewController.viewDidLoad()()
{
  v1 = v0;
  v26.receiver = v0;
  v26.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v26, "viewDidLoad");
  sub_1001AD464(&v27);
  v2 = *&v0[OBJC_IVAR___PHUserFeedbackViewController_scoreController];
  type metadata accessor for ScoreController();
  sub_1001ADB54();
  v3 = static ObservableObject.environmentStore.getter();
  v30[1] = v28;
  v30[2] = v29;
  v30[0] = v27;
  *&v31 = v3;
  *(&v31 + 1) = v2;
  v25[4] = v27;
  v25[5] = v28;
  v25[6] = v29;
  v25[7] = v31;
  v4 = objc_allocWithZone(sub_10014EA98(&qword_1003AD450, &qword_1002FE380));
  v5 = v2;
  sub_1001D4500(v30, v25);
  v6 = UIHostingController.init(rootView:)();
  v7 = [v6 view];
  if (!v7)
  {
    __break(1u);
    goto LABEL_10;
  }

  v8 = v7;
  v9 = [objc_opt_self() clearColor];
  [v8 setBackgroundColor:v9];

  [v1 addChildViewController:v6];
  v10 = [v6 view];
  if (!v10)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v11 = v10;
  v12 = [v1 view];
  if (!v12)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v13 = v12;
  [v12 bounds];
  v15 = v14;

  v16 = [v1 view];
  if (!v16)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v17 = v16;
  [v16 bounds];
  v19 = v18;

  [v11 setFrame:{0.0, 0.0, v15, v19}];
  v20 = [v6 view];
  if (!v20)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v21 = v20;
  [v20 setAutoresizingMask:18];

  v22 = [v1 view];
  if (!v22)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v23 = v22;
  v24 = [v6 view];

  if (v24)
  {
    [v23 addSubview:v24];

    [v6 didMoveToParentViewController:v1];
    sub_1001D4698(v30);
    return;
  }

LABEL_15:
  __break(1u);
}

uint64_t sub_1001D4500(uint64_t a1, uint64_t a2)
{
  v4 = sub_10014EA98(&qword_1003AD458, &qword_1002FE388);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id GlassCutoutCirclesOverlayViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

uint64_t sub_1001D4698(uint64_t a1)
{
  v2 = sub_10014EA98(&qword_1003AD458, &qword_1002FE388);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001D4724@<X0>(uint64_t a2@<X8>)
{
  *a2 = static VerticalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v3 = sub_10014EA98(&qword_1003AD4B8, &qword_1002FE448);
  sub_1001D4888((a2 + *(v3 + 44)));
  v4 = static Edge.Set.all.getter();
  v5 = a2 + *(sub_10014EA98(&qword_1003AD4C0, &qword_1002FE450) + 36);
  *v5 = v4;
  *(v5 + 8) = 0u;
  *(v5 + 24) = 0u;
  *(v5 + 40) = 1;
  v6 = a2 + *(sub_10014EA98(&qword_1003AD4C8, &qword_1002FE458) + 36);
  BlurredBackgroundView.init()();
  v7 = static Alignment.center.getter();
  v9 = v8;
  v10 = (v6 + *(sub_10014EA98(&qword_1003AD4D0, &qword_1002FE460) + 36));
  *v10 = v7;
  v10[1] = v9;
  v11 = a2 + *(sub_10014EA98(&qword_1003AD4D8, &qword_1002FE468) + 36);
  v12 = enum case for RoundedCornerStyle.continuous(_:);
  v13 = type metadata accessor for RoundedCornerStyle();
  (*(*(v13 - 8) + 104))(v11, v12, v13);
  result = sub_10014EA98(&qword_1003AD4E0, &qword_1002FE470);
  *(v11 + *(result + 36)) = 256;
  return result;
}

uint64_t sub_1001D4888@<X0>(char *a1@<X8>)
{
  v46 = a1;
  v45 = sub_10014EA98(&qword_1003AD4E8, &qword_1002FE478);
  v44 = *(v45 - 8);
  v1 = __chkstk_darwin(v45);
  v43 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v48 = &v39 - v3;
  v42 = sub_10014EA98(&qword_1003AD4F0, &qword_1002FE480);
  v49 = *(v42 - 8);
  v4 = __chkstk_darwin(v42);
  v41 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v47 = &v39 - v6;
  __dst[0] = sub_1001FD1F8(0xD000000000000013, 0x80000001002AAF30);
  __dst[1] = v7;
  sub_100028A30();
  v40 = Text.init<A>(_:)();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  KeyPath = swift_getKeyPath();
  v15 = swift_getKeyPath();
  v16 = v11 & 1;
  LOBYTE(__dst[0]) = v11 & 1;
  LOBYTE(__src[0]) = 0;
  v17 = static HierarchicalShapeStyle.primary.getter();
  v18 = static Color.primary.getter();
  v19 = swift_getKeyPath();
  v20 = swift_getKeyPath();
  v21 = static Font.subheadline.getter();
  v22 = swift_getKeyPath();
  __src[0] = v40;
  __src[1] = v9;
  LOBYTE(__src[2]) = v16;
  __src[3] = v13;
  __src[4] = KeyPath;
  __src[5] = 0;
  LOBYTE(__src[6]) = 0;
  __src[7] = v15;
  LOWORD(__src[8]) = 256;
  BYTE2(__src[8]) = 1;
  HIDWORD(__src[8]) = v17;
  __src[9] = v19;
  __src[10] = v18;
  __src[11] = v20;
  __src[12] = 0x3FE0000000000000;
  __src[13] = v22;
  __src[14] = v21;
  static Font.Weight.semibold.getter();
  sub_10014EA98(&qword_1003AD4F8, &qword_1002FE578);
  sub_1001D5434();
  v23 = v47;
  View.fontWeight(_:)();
  memcpy(__dst, __src, sizeof(__dst));
  sub_1000306A4(__dst, &qword_1003AD4F8, &qword_1002FE578);
  sub_10014EA98(&qword_1003AD5A8, &qword_1002FE5E0);
  sub_1001D5910();
  v24 = v48;
  Button.init(action:label:)();
  v25 = *(v49 + 16);
  v26 = v41;
  v27 = v42;
  v25(v41, v23, v42);
  v28 = v44;
  v29 = *(v44 + 16);
  v30 = v43;
  v31 = v24;
  v32 = v45;
  v29(v43, v31, v45);
  v33 = v46;
  v25(v46, v26, v27);
  v34 = sub_10014EA98(&qword_1003AD620, &qword_1002FE620);
  v35 = &v33[*(v34 + 48)];
  *v35 = 0;
  v35[8] = 1;
  v29(&v33[*(v34 + 64)], v30, v32);
  v36 = *(v28 + 8);
  v36(v48, v32);
  v37 = *(v49 + 8);
  v37(v47, v27);
  v36(v30, v32);
  return (v37)(v26, v27);
}

void sub_1001D4D98()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 frontmostCall];

  if (v1)
  {
    type metadata accessor for ConversationControlsManager();
    v2 = v1;
    v3 = ConversationControlsManager.__allocating_init(activeCall:)();
    ConversationControlsManager.stopScreenShare()();
  }
}

uint64_t sub_1001D4E4C@<X0>(uint64_t a1@<X8>)
{
  sub_1001FD1F8(1347376211, 0xE400000000000000);
  sub_100028A30();
  v2 = Text.init<A>(_:)();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  KeyPath = swift_getKeyPath();
  v10 = swift_getKeyPath();
  v11 = v6 & 1;
  v12 = static HierarchicalShapeStyle.primary.getter();
  v13 = swift_getKeyPath();
  v14 = static Font.subheadline.getter();
  __src[0] = v2;
  __src[1] = v4;
  LOBYTE(__src[2]) = v11;
  __src[3] = v8;
  __src[4] = KeyPath;
  __src[5] = 0;
  LOBYTE(__src[6]) = 0;
  __src[7] = v10;
  LOWORD(__src[8]) = 256;
  BYTE2(__src[8]) = 1;
  HIDWORD(__src[8]) = v12;
  __src[9] = v13;
  __src[10] = 0x3FE0000000000000;
  __src[11] = swift_getKeyPath();
  __src[12] = v14;
  static Font.Weight.semibold.getter();
  sub_10014EA98(&qword_1003AD5F8, &qword_1002FE608);
  sub_1001D5C54();
  View.fontWeight(_:)();
  memcpy(__dst, __src, 0x68uLL);
  sub_1000306A4(__dst, &qword_1003AD5F8, &qword_1002FE608);
  v15 = static Color.indigo.getter();
  v16 = swift_getKeyPath();
  v17 = (a1 + *(sub_10014EA98(&qword_1003AD5F0, &qword_1002FE600) + 36));
  *v17 = v16;
  v17[1] = v15;
  LOBYTE(v15) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = a1 + *(sub_10014EA98(&qword_1003AD5E0, &qword_1002FE5F8) + 36);
  *v26 = v15;
  *(v26 + 8) = v19;
  *(v26 + 16) = v21;
  *(v26 + 24) = v23;
  *(v26 + 32) = v25;
  *(v26 + 40) = 0;
  LOBYTE(v15) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v35 = a1 + *(sub_10014EA98(&qword_1003AD5D0, &qword_1002FE5F0) + 36);
  *v35 = v15;
  *(v35 + 8) = v28;
  *(v35 + 16) = v30;
  *(v35 + 24) = v32;
  *(v35 + 32) = v34;
  *(v35 + 40) = 0;
  v36 = static Color.white.getter();
  LOBYTE(v16) = static Edge.Set.all.getter();
  v37 = a1 + *(sub_10014EA98(&qword_1003AD5C0, &qword_1002FE5E8) + 36);
  *v37 = v36;
  *(v37 + 8) = v16;
  v38 = a1 + *(sub_10014EA98(&qword_1003AD5A8, &qword_1002FE5E0) + 36);
  v39 = enum case for RoundedCornerStyle.continuous(_:);
  v40 = type metadata accessor for RoundedCornerStyle();
  (*(*(v40 - 8) + 104))(v38, v39, v40);
  result = sub_10014EA98(&qword_1003AD4E0, &qword_1002FE470);
  *(v38 + *(result + 36)) = 256;
  return result;
}

UIView __swiftcall ScreenSharingIndicatorView.getView()()
{
  v0 = objc_allocWithZone(sub_10014EA98(&qword_1003AD488, &unk_1002FE3B0));
  v1 = UIHostingController.init(rootView:)();
  result.super.super.isa = [v1 view];
  if (result.super.super.isa)
  {
    isa = result.super.super.isa;
    v4 = [objc_opt_self() clearColor];
    [(objc_class *)isa setBackgroundColor:v4];

    v5 = [v1 view];
    if (v5)
    {

      return v5;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id ScreenSharingIndicatorView.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScreenSharingIndicatorView();
  return objc_msgSendSuper2(&v2, "init");
}

id ScreenSharingIndicatorView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScreenSharingIndicatorView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1001D535C()
{
  sub_1000078AC();
  result = EnvironmentValues.font.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1001D53B0()
{
  sub_1000078AC();
  result = EnvironmentValues.foregroundColor.getter();
  *v0 = result;
  return result;
}

unint64_t sub_1001D5434()
{
  result = qword_1003AD500;
  if (!qword_1003AD500)
  {
    sub_100155B7C(&qword_1003AD4F8, &qword_1002FE578);
    sub_1001D54EC();
    sub_100027E08(&qword_1003AC2C8, &qword_1003AC2D0, &qword_1002FCCB0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AD500);
  }

  return result;
}

unint64_t sub_1001D54EC()
{
  result = qword_1003AD508;
  if (!qword_1003AD508)
  {
    sub_100155B7C(&qword_1003AD510, &qword_1002FE580);
    sub_1001D55A4();
    sub_100027E08(&qword_1003AD598, &qword_1003AD5A0, &unk_1002FE5D0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AD508);
  }

  return result;
}

unint64_t sub_1001D55A4()
{
  result = qword_1003AD518;
  if (!qword_1003AD518)
  {
    sub_100155B7C(&qword_1003AD520, &qword_1002FE588);
    sub_1001D565C();
    sub_100027E08(&qword_1003AC2D8, &qword_1003AEBC0, &qword_1003005C0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AD518);
  }

  return result;
}

unint64_t sub_1001D565C()
{
  result = qword_1003AD528;
  if (!qword_1003AD528)
  {
    sub_100155B7C(&qword_1003AD530, &qword_1002FE590);
    sub_1001D5714();
    sub_100027E08(&qword_1003AD588, &qword_1003AD590, &unk_1002FE5C0, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AD528);
  }

  return result;
}

unint64_t sub_1001D5714()
{
  result = qword_1003AD538;
  if (!qword_1003AD538)
  {
    sub_100155B7C(&qword_1003AD540, &qword_1002FE598);
    sub_1001D57A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AD538);
  }

  return result;
}

unint64_t sub_1001D57A0()
{
  result = qword_1003AD548;
  if (!qword_1003AD548)
  {
    sub_100155B7C(&qword_1003AD550, &qword_1002FE5A0);
    sub_1001D5858();
    sub_100027E08(&qword_1003AD578, &qword_1003AD580, &qword_1002FE5B8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AD548);
  }

  return result;
}

unint64_t sub_1001D5858()
{
  result = qword_1003AD558;
  if (!qword_1003AD558)
  {
    sub_100155B7C(&qword_1003AD560, &qword_1002FE5A8);
    sub_100027E08(&qword_1003AD568, &qword_1003AD570, &qword_1002FE5B0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AD558);
  }

  return result;
}

unint64_t sub_1001D5910()
{
  result = qword_1003AD5B0;
  if (!qword_1003AD5B0)
  {
    sub_100155B7C(&qword_1003AD5A8, &qword_1002FE5E0);
    sub_1001D59C8();
    sub_100027E08(&qword_1003AD618, &qword_1003AD4E0, &qword_1002FE470, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AD5B0);
  }

  return result;
}

unint64_t sub_1001D59C8()
{
  result = qword_1003AD5B8;
  if (!qword_1003AD5B8)
  {
    sub_100155B7C(&qword_1003AD5C0, &qword_1002FE5E8);
    sub_1001D5ADC(&qword_1003AD5C8, &qword_1003AD5D0, &qword_1002FE5F0, sub_1001D5AAC);
    sub_100027E08(&qword_1003AC2E0, &qword_1003AC2E8, &qword_100300900, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AD5B8);
  }

  return result;
}

uint64_t sub_1001D5ADC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100155B7C(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1001D5B60()
{
  result = qword_1003AD5E8;
  if (!qword_1003AD5E8)
  {
    sub_100155B7C(&qword_1003AD5F0, &qword_1002FE600);
    sub_100155B7C(&qword_1003AD5F8, &qword_1002FE608);
    sub_1001D5C54();
    swift_getOpaqueTypeConformance2();
    sub_100027E08(&qword_1003AC2D8, &qword_1003AEBC0, &qword_1003005C0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AD5E8);
  }

  return result;
}

unint64_t sub_1001D5C54()
{
  result = qword_1003AD600;
  if (!qword_1003AD600)
  {
    sub_100155B7C(&qword_1003AD5F8, &qword_1002FE608);
    sub_1001D5D0C();
    sub_100027E08(&qword_1003AC2C8, &qword_1003AC2D0, &qword_1002FCCB0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AD600);
  }

  return result;
}

unint64_t sub_1001D5D0C()
{
  result = qword_1003AD608;
  if (!qword_1003AD608)
  {
    sub_100155B7C(&qword_1003AD610, &unk_1002FE610);
    sub_1001D565C();
    sub_100027E08(&qword_1003AD598, &qword_1003AD5A0, &unk_1002FE5D0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AD608);
  }

  return result;
}

unint64_t sub_1001D5DC4()
{
  result = qword_1003AD628;
  if (!qword_1003AD628)
  {
    sub_100155B7C(&qword_1003AD4D8, &qword_1002FE468);
    sub_1001D5E7C();
    sub_100027E08(&qword_1003AD618, &qword_1003AD4E0, &qword_1002FE470, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AD628);
  }

  return result;
}

unint64_t sub_1001D5E7C()
{
  result = qword_1003AD630;
  if (!qword_1003AD630)
  {
    sub_100155B7C(&qword_1003AD4C8, &qword_1002FE458);
    sub_1001D5F34();
    sub_100027E08(&unk_1003AD650, &qword_1003AD4D0, &qword_1002FE460, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AD630);
  }

  return result;
}

unint64_t sub_1001D5F34()
{
  result = qword_1003AD638;
  if (!qword_1003AD638)
  {
    sub_100155B7C(&qword_1003AD4C0, &qword_1002FE450);
    sub_100027E08(&qword_1003AD640, &qword_1003AD648, &qword_1002FE628, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AD638);
  }

  return result;
}

void *sub_1001D6020()
{
  v1 = *(v0 + OBJC_IVAR____TtC13InCallService20AmbientSceneDelegate_window);
  v2 = v1;
  return v1;
}

uint64_t sub_1001D60AC(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC13InCallService20AmbientSceneDelegate_window);
  *(v1 + OBJC_IVAR____TtC13InCallService20AmbientSceneDelegate_window) = a1;
  return _objc_release_x1(a1, v2);
}

uint64_t sub_1001D6168()
{
  v1 = *(v0 + OBJC_IVAR____TtC13InCallService20AmbientSceneDelegate_sceneDidDisconnectBlock);
  sub_10017A4B4(v1, *(v0 + OBJC_IVAR____TtC13InCallService20AmbientSceneDelegate_sceneDidDisconnectBlock + 8));
  return v1;
}

uint64_t sub_1001D6250(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC13InCallService20AmbientSceneDelegate_sceneDidDisconnectBlock);
  v4 = *(v2 + OBJC_IVAR____TtC13InCallService20AmbientSceneDelegate_sceneDidDisconnectBlock);
  v5 = *(v2 + OBJC_IVAR____TtC13InCallService20AmbientSceneDelegate_sceneDidDisconnectBlock + 8);
  *v3 = a1;
  v3[1] = a2;
  return sub_1000081F4(v4, v5);
}

void sub_1001D6270(id a1)
{
  v8 = v1;
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 1);
  __chkstk_darwin(v10);
  v13 = (&v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000A2EC();
  *v13 = static OS_dispatch_queue.main.getter();
  (*(v11 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v10);
  v14 = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v13, v10);
  if ((v14 & 1) == 0)
  {
    __break(1u);
LABEL_21:
    swift_once();
    goto LABEL_13;
  }

  type metadata accessor for ActivityScene();
  v15 = swift_dynamicCastClass();
  if (!v15)
  {
    return;
  }

  v16 = v15;
  v17 = objc_opt_self();
  v18 = a1;
  v19 = [v17 sharedApplication];
  v20 = [v19 delegate];

  if (!v20)
  {

    return;
  }

  objc_opt_self();
  v21 = swift_dynamicCastObjCClass();
  if (!v21)
  {

    swift_unknownObjectRelease();
    return;
  }

  v22 = v21;
  v23 = objc_allocWithZone(type metadata accessor for SecureWindow());
  v2 = v18;
  v24 = [v23 initWithWindowScene:v16];
  v25 = *&v8[OBJC_IVAR____TtC13InCallService20AmbientSceneDelegate_window];
  *&v8[OBJC_IVAR____TtC13InCallService20AmbientSceneDelegate_window] = v24;
  v26 = v24;

  v8 = [objc_allocWithZone(ICSCallDisplayStyleManager) init];
  [v8 setCallDisplayStyle:3];
  v27 = [v16 session];
  v28 = [v27 persistentIdentifier];

  if (!v28)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = String._bridgeToObjectiveC()();
  }

  [v8 setSceneSessionIdentifier:v28];

  [v8 setSceneType:5];
  [v22 prepareForAmbientScene:v16];
  [v22 setIsPresentingAmbient:1];
  v13 = v26;
  v29 = [v16 coordinateSpace];

  [v29 bounds];
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  swift_unknownObjectRelease();
  [v13 setFrame:{v31, v33, v35, v37}];

  v38 = [objc_allocWithZone(PHInCallRemoteAlertShellViewController) initWithCallDisplayStyleManager:v8];
  [v13 setRootViewController:v38];

  [v13 makeKeyAndVisible];
  v10 = &selRef_openDialRequestBlock;
  v39 = [v13 rootViewController];
  if (!v39)
  {

    swift_unknownObjectRelease();
    return;
  }

  v40 = v39;
  v41 = [v39 view];

  if (!v41)
  {
    __break(1u);
    return;
  }

  [v41 safeAreaInsets];
  v4 = v42;
  v5 = v43;
  v6 = v44;
  v7 = v45;

  if (v4 > v6)
  {
    v3 = v4;
  }

  else
  {
    v3 = v6;
  }

  if (qword_1003A9F40 != -1)
  {
    goto LABEL_21;
  }

LABEL_13:
  v62 = v5 - v4;
  v46 = type metadata accessor for Logger();
  sub_100008A14(v46, &unk_1003B8820);
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v67 = v60;
    *v49 = 136315650;
    v63 = v62;
    v64 = v3 - v5;
    v65 = v7 - v6;
    v66 = v3 - v7;
    type metadata accessor for UIEdgeInsets(0);
    v61 = v2;
    v50 = String.init<A>(reflecting:)();
    v52 = sub_100008ADC(v50, v51, &v67);

    *(v49 + 4) = v52;
    *(v49 + 12) = 2080;
    v63 = v5;
    v64 = v3;
    v65 = v7;
    v66 = v3;
    v53 = String.init<A>(reflecting:)();
    v55 = sub_100008ADC(v53, v54, &v67);

    *(v49 + 14) = v55;
    *(v49 + 22) = 2080;
    v63 = v4;
    v64 = v5;
    v65 = v6;
    v66 = v7;
    v56 = String.init<A>(reflecting:)();
    v58 = sub_100008ADC(v56, v57, &v67);
    v10 = &selRef_openDialRequestBlock;

    *(v49 + 24) = v58;
    v2 = v61;
    _os_log_impl(&_mh_execute_header, v47, v48, "Updating additional safe area insets to be %s based on activitySceneEdgeInsets %s and rootVCSafeAreaInsets %s", v49, 0x20u);
    swift_arrayDestroy();
  }

  v59 = [v13 v10[496]];
  [v59 setAdditionalSafeAreaInsets:{v62, v3 - v5, v7 - v6, v3 - v7}];

  swift_unknownObjectRelease();
}

double sub_1001D697C()
{
  v1 = v0;
  v2 = [objc_opt_self() sharedApplication];
  v3 = [v2 delegate];

  if (v3)
  {
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v6 = v5;
      v7 = *(v1 + OBJC_IVAR____TtC13InCallService20AmbientSceneDelegate_sceneDidDisconnectBlock);
      if (v7)
      {
        v8 = *(v1 + OBJC_IVAR____TtC13InCallService20AmbientSceneDelegate_sceneDidDisconnectBlock + 8);

        v7(v9);
        sub_1000081F4(v7, v8);
      }

      v10 = *(v1 + OBJC_IVAR____TtC13InCallService20AmbientSceneDelegate_window);
      *(v1 + OBJC_IVAR____TtC13InCallService20AmbientSceneDelegate_window) = 0;

      [v6 transitionFromAmbientScene];
    }

    swift_unknownObjectRelease();
  }

  return result;
}

double sub_1001D6B48(uint64_t a1, char a2)
{
  v3 = [objc_opt_self() sharedApplication];
  v4 = [v3 delegate];

  if (v4)
  {
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6)
    {
      [v6 setIsPresentingAmbient:a2 & 1];
    }

    swift_unknownObjectRelease();
  }

  return result;
}

id sub_1001D6C5C()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC13InCallService20AmbientSceneDelegate_window] = 0;
  v2 = &v0[OBJC_IVAR____TtC13InCallService20AmbientSceneDelegate_sceneDidDisconnectBlock];
  *v2 = 0;
  *(v2 + 1) = 0;
  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, "init");
}

void sub_1001D6DE8(void *a1)
{
  swift_unknownObjectWeakAssign();
}

Class sub_1001D6E90(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  sub_100162160();
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

void sub_1001D6F14(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  sub_100162160();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a1;
  a4(v6);
}

void sub_1001D6FA0(uint64_t a1, void *a2)
{
  sub_1001D6FE4();
  *(v2 + *a2) = a1;

  sub_1001D70E0();
}

void sub_1001D6FE4()
{
  v1 = *(v0 + OBJC_IVAR___FTConstraintsToggle_constraintsStatePrimary);
  v2 = sub_100017230(v1);

  for (i = 0; v2 != i; ++i)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v4 = *(v1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_15:
      __break(1u);
      return;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      [Strong removeConstraint:v5];
    }
  }
}

void sub_1001D70E0()
{
  v0 = objc_opt_self();
  sub_100162160();

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v0 activateConstraints:isa];

  sub_1001D721C();
}

void sub_1001D721C()
{
  if (*(v0 + OBJC_IVAR___FTConstraintsToggle__usingSecondaryConstraints))
  {
    v1 = OBJC_IVAR___FTConstraintsToggle_constraintsStatePrimary;
  }

  else
  {
    v1 = OBJC_IVAR___FTConstraintsToggle_constraintsStateSecondary;
  }

  v2 = *(v0 + v1);
  if (*(v0 + OBJC_IVAR___FTConstraintsToggle__usingSecondaryConstraints))
  {
    v3 = OBJC_IVAR___FTConstraintsToggle_constraintsStateSecondary;
  }

  else
  {
    v3 = OBJC_IVAR___FTConstraintsToggle_constraintsStatePrimary;
  }

  v4 = *(v0 + v3);

  v5 = sub_100017230(v2);
  for (i = 0; v5 != i; ++i)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_27;
      }

      v7 = *(v2 + 8 * i + 32);
    }

    v8 = v7;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      return;
    }

    [v7 setActive:0];
  }

  v9 = sub_100017230(v4);
  for (j = 0; v9 != j; ++j)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (j >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v11 = *(v4 + 8 * j + 32);
    }

    v12 = v11;
    if (__OFADD__(j, 1))
    {
      goto LABEL_28;
    }

    [v11 setActive:1];
  }
}

id sub_1001D7454()
{
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR___FTConstraintsToggle_constraintsStatePrimary] = _swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR___FTConstraintsToggle_constraintsStateSecondary] = _swiftEmptyArrayStorage;
  v0[OBJC_IVAR___FTConstraintsToggle__usingSecondaryConstraints] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConstraintsToggle();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_1001D74EC(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ConstraintsToggle();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t getEnumTagSinglePayload for AnsweredBannerCoreAnalyticsView(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AnsweredBannerCoreAnalyticsView(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1001D777C()
{
  if (v0[9])
  {
    v1 = v0[9];
  }

  else
  {
    v2 = v0;
    v3 = v0[3];
    v4 = v0[4];
    Strong = swift_unknownObjectWeakLoadStrong();
    type metadata accessor for AudioCallServicesManager();
    swift_allocObject();
    v1 = AudioCallServicesManager.init(call:callCenter:presentingViewController:)(v3, v4, Strong);
    v2[9] = v1;
    v6 = v3;
    v7 = v4;
  }

  return v1;
}

uint64_t sub_1001D7828(void *a1, void *a2, void *a3, double a4)
{
  v5 = v4;
  *(v5 + 64) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + 72) = 0;
  *(v5 + 80) = [objc_allocWithZone(CNKCallParticipantLabelDescriptorFactory) init];
  *(v5 + 88) = 1;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  type metadata accessor for AudioCallModel();
  v10 = a1;
  v11 = a2;
  v12 = a3;
  *(v5 + 48) = AudioCallModel.__allocating_init()();
  v13 = [objc_opt_self() defaultCenter];
  [v13 addObserver:v5 selector:"callStatusChanged:" name:TUCallCenterCallStatusChangedNotification object:0];

  v14 = [objc_opt_self() oneSecondTimer];
  [v14 addObserver:v5 selector:"secondTickNotification:"];

  return v5;
}

uint64_t sub_1001D7980()
{
  v0 = sub_10014EA98(&qword_1003AD910, &unk_1002FE7C8);
  v1 = sub_100005568(v0);
  __chkstk_darwin(v1);
  sub_1001D8218(&v4 - v2);
  dispatch thunk of AudioCallModel.controlsState.setter();
  return sub_1001D7A14();
}

uint64_t sub_1001D7A14()
{
  v1 = sub_10014EA98(&qword_1003AD918, &qword_1002FE7D8);
  v2 = sub_100005568(v1);
  __chkstk_darwin(v2);
  v4 = v26 - v3;
  v5 = sub_10014EA98(&qword_1003AD920, &unk_1002FE7E0);
  v6 = sub_100005568(v5);
  __chkstk_darwin(v6);
  v8 = v26 - v7;
  v9 = type metadata accessor for ParticipantDetailsState();
  sub_10000688C();
  v11 = v10;
  v13 = __chkstk_darwin(v12);
  v15 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v26 - v16;
  if ([*(v0 + 24) status] == 4 && !objc_msgSend(*(v0 + 16), "callDisplayStyle"))
  {
    dispatch thunk of AudioCallModel.participantDetailsState.getter();
    if (sub_100006AC0(v8, 1, v9) == 1)
    {
      sub_100008360(v8, &qword_1003AD920, &unk_1002FE7E0);
    }

    else
    {
      (*(v11 + 32))(v17, v8, v9);
      (*(v11 + 16))(v15, v17, v9);
      if ((*(v11 + 88))(v15, v9) == enum case for ParticipantDetailsState.default(_:))
      {
        (*(v11 + 96))(v15, v9);
        v18 = *(v15 + 1);
        v26[1] = *v15;
        v19 = *(v15 + 2);

        sub_10017A4B4(v18, v19);
        sub_1001D777C();
        v20 = AudioCallServicesManager.declineControlService.getter();

        v26[10] = type metadata accessor for DeclineControlService();
        v26[11] = sub_1001D8F70(&qword_1003AD928, type metadata accessor for DeclineControlService, &protocol conformance descriptor for DeclineControlService);
        v26[7] = v20;
        v21 = AudioCallServicesManager.acceptControlService.getter();
        v26[5] = type metadata accessor for AcceptControlService();
        v26[6] = sub_1001D8F70(&unk_1003AD930, type metadata accessor for AcceptControlService, &protocol conformance descriptor for AcceptControlService);
        v26[2] = v21;
        IncomingAudioCallBannerConfiguration.init(participantDetails:avatarView:declineControlService:acceptControlService:)();
        v22 = type metadata accessor for IncomingAudioCallBannerConfiguration();
        sub_100006848(v4, 0, 1, v22);
        dispatch thunk of AudioCallModel.incomingAudioCallBannerConfiguration.setter();
        sub_1000081F4(v18, v19);

        return (*(v11 + 8))(v17, v9);
      }

      v24 = *(v11 + 8);
      v24(v17, v9);
      v24(v15, v9);
    }
  }

  v25 = type metadata accessor for IncomingAudioCallBannerConfiguration();
  sub_100006848(v4, 1, 1, v25);
  return dispatch thunk of AudioCallModel.incomingAudioCallBannerConfiguration.setter();
}

void sub_1001D7EDC()
{
  v1 = sub_10014EA98(&qword_1003AD910, &unk_1002FE7C8);
  v2 = sub_100005568(v1);
  v3 = __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v20 - v6;
  v8 = type metadata accessor for ControlsState();
  sub_10000688C();
  v10 = v9;
  __chkstk_darwin(v11);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v0 + 24);
  Notification.object.getter();
  if (!v23)
  {
    v17 = &unk_1003AAF50;
    v18 = &qword_1002FB170;
    v19 = &v22;
LABEL_7:
    sub_100008360(v19, v17, v18);
    return;
  }

  sub_1001A7AEC();
  if (swift_dynamicCast())
  {
    v15 = v21;
    v16 = [v21 isEqualToCall:v14];

    if (v16)
    {
      sub_1001D8218(v7);
      if (sub_100006AC0(v7, 1, v8) != 1)
      {
        (*(v10 + 32))(v13, v7, v8);
        (*(v10 + 16))(v5, v13, v8);
        sub_100006848(v5, 0, 1, v8);
        dispatch thunk of AudioCallModel.controlsState.setter();
        (*(v10 + 8))(v13, v8);
        return;
      }

      v17 = &qword_1003AD910;
      v18 = &unk_1002FE7C8;
      v19 = v7;
      goto LABEL_7;
    }
  }
}

uint64_t sub_1001D8218@<X0>(unint64_t a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = &selRef_setUpFirstAndLastNameLabelsIfPossible;
  v5 = [v3 status];
  if (v5 > 6)
  {
    if (qword_1003A9F40 == -1)
    {
      goto LABEL_34;
    }

    goto LABEL_92;
  }

  if (((1 << v5) & 0x65) != 0)
  {
    goto LABEL_3;
  }

  if (((1 << v5) & 0xA) == 0)
  {
    sub_1001D777C();
    sub_1001E57B0(7, &v123);

    if (v125)
    {
      sub_1000304E0(&v123, v152);

      sub_1001E57B0(1, &v166);

      if (v167)
      {
        sub_1000304E0(&v166, &v123);

        sub_1001E57B0(9, &v164);

        if (v165)
        {
          sub_1000304E0(&v164, &v166);

          sub_1001E57B0(24, &v162);

          if (v163)
          {
            sub_1000304E0(&v162, &v164);
            type metadata accessor for ControlGridViewConfiguration();
            sub_10015E008(v152, &v162);
            v161 = 0;
            memset(v160, 0, sizeof(v160));
            sub_10015E008(&v123, v159);
            v23 = static ControlGridViewConfiguration.bottom(arrangement:width:)();
            sub_100008360(v159, &qword_1003AD8F0, &qword_1002FE7A8);
            sub_100008360(v160, &qword_1003AD8F0, &qword_1002FE7A8);
            sub_100008360(&v162, &qword_1003AD8F0, &qword_1002FE7A8);
            type metadata accessor for SupplementaryControlViewConfiguration();
            v24 = static SupplementaryControlViewConfiguration.default(arrangement:)();
            sub_100005B2C(&v164);
            sub_100005B2C(&v166);
            sub_100005B2C(&v123);
            sub_100005B2C(v152);
            *a1 = v23;
            *(a1 + 8) = v24;
            v25 = enum case for ControlsState.compositeGrid(_:);
            v26 = type metadata accessor for ControlsState();
            sub_1000058E8();
            (*(v27 + 104))(a1, v25, v26);
            v28 = a1;
LABEL_83:
            v85 = 0;
            v61 = v26;
            return sub_100006848(v28, v85, 1, v61);
          }

          sub_100005B2C(&v166);
          sub_100005B2C(&v123);
          sub_100005B2C(v152);
          v33 = &v162;
        }

        else
        {
LABEL_58:
          sub_100005B2C(&v123);
          sub_100005B2C(v152);
          v33 = &v164;
        }
      }

      else
      {
        sub_100005B2C(v152);
        v33 = &v166;
      }
    }

    else
    {
      v33 = &v123;
    }

    sub_100008360(v33, &qword_1003AD8F0, &qword_1002FE7A8);
    v61 = type metadata accessor for ControlsState();
    v28 = a1;
LABEL_89:
    v85 = 1;
    return sub_100006848(v28, v85, 1, v61);
  }

  if ([v3 isScreening])
  {
    goto LABEL_3;
  }

  v8 = objc_opt_self();
  result = sub_1001D8E94(v8);
  if (!result)
  {
LABEL_101:
    __break(1u);
    return result;
  }

  v9 = result;
  v91 = a1;
  v10 = *(result + 16);
  if (!v10)
  {

    v3 = _swiftEmptyArrayStorage;
LABEL_39:
    result = sub_1001D777C();
    if (v3[2])
    {
      if (*(v3[4] + 16))
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          sub_100009634();
          sub_10000C46C();
        }

        else
        {
          v44 = sub_1000078C0();
        }

        *v152 = Strong;
        v153[0] = v43;
        sub_100006E58(v35, v36, v37, v38, v39, v40, v41, v42, v86, v91, v93, v98, v103, v108, v113, v118, v123, *(&v123 + 1), v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v44);

        sub_100008360(v152, &qword_1003AD8F8, &qword_1002FE7B0);
        if (!v125)
        {
          goto LABEL_55;
        }

        result = sub_1000304E0(&v123, &v166);
        if (*(v3[4] + 16) >= 2uLL)
        {
          if (swift_unknownObjectWeakLoadStrong())
          {
            sub_100009634();
            sub_10000C46C();
          }

          else
          {
            sub_1000078C0();
          }

          v45 = sub_100008078();
          sub_100006E58(v45, v46, v47, v48, v49, v50, v51, v52, v87, v92, v94, v99, v104, v109, v114, v119, v123, *(&v123 + 1), v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151);

          sub_100008360(v152, &qword_1003AD8F8, &qword_1002FE7B0);
          if (v125)
          {
            result = sub_1000304E0(&v123, &v164);
            if (*(v3[4] + 16) >= 3uLL)
            {
              if (swift_unknownObjectWeakLoadStrong())
              {
                sub_100009634();
                sub_10000C46C();
              }

              else
              {
                sub_1000078C0();
              }

              v53 = sub_100008078();
              sub_100006E58(v53, v54, v55, v56, v57, v58, v59, v60, v88, v92, v95, v100, v105, v110, v115, v120, v123, *(&v123 + 1), v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151);

              sub_100008360(v152, &qword_1003AD8F8, &qword_1002FE7B0);
              if (!v125)
              {

LABEL_87:
                sub_100005B2C(&v164);
                sub_100005B2C(&v166);
                goto LABEL_88;
              }

              result = sub_1000304E0(&v123, &v162);
              if (v3[2] >= 2uLL)
              {
                if (*(v3[5] + 16))
                {
                  if (swift_unknownObjectWeakLoadStrong())
                  {
                    sub_100009634();
                    sub_10000C46C();
                  }

                  else
                  {
                    sub_1000078C0();
                  }

                  v62 = sub_100008078();
                  sub_100006E58(v62, v63, v64, v65, v66, v67, v68, v69, v89, v92, v96, v101, v106, v111, v116, v121, v123, *(&v123 + 1), v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151);

                  sub_100008360(v152, &qword_1003AD8F8, &qword_1002FE7B0);
                  if (!v125)
                  {

LABEL_86:
                    sub_100005B2C(&v162);
                    goto LABEL_87;
                  }

                  result = sub_1000304E0(&v123, v160);
                  if (*(v3[5] + 16) >= 2uLL)
                  {
                    if (swift_unknownObjectWeakLoadStrong())
                    {
                      sub_100009634();
                      sub_10000C46C();
                    }

                    else
                    {
                      sub_1000078C0();
                    }

                    v70 = sub_100008078();
                    sub_100006E58(v70, v71, v72, v73, v74, v75, v76, v77, v90, v92, v97, v102, v107, v112, v117, v122, v123, *(&v123 + 1), v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151);

                    sub_100008360(v152, &qword_1003AD8F8, &qword_1002FE7B0);
                    if (!v125)
                    {

LABEL_85:
                      sub_100005B2C(v160);
                      goto LABEL_86;
                    }

                    sub_1000304E0(&v123, v159);
                    v78 = v3[5];

                    if (*(v78 + 16) >= 3uLL)
                    {
                      v79 = *(v78 + 48);

                      v80 = swift_unknownObjectWeakLoadStrong();
                      if (v80)
                      {
                        swift_getObjectType();
                        sub_10000C46C();
                      }

                      else
                      {
                        sub_1000078C0();
                      }

                      *v152 = v80;
                      v153[0] = v81;
                      sub_1001E5BA0(v79, v152, &v123);

                      sub_100008360(v152, &qword_1003AD8F8, &qword_1002FE7B0);
                      if (v125)
                      {
                        sub_1000304E0(&v123, v158);
                        sub_10015E008(&v166, v152);
                        sub_10015E008(&v164, v153);
                        sub_10015E008(&v162, &v154);
                        sub_10015E008(v160, &v155);
                        sub_10015E008(v159, &v156);
                        sub_10015E008(v158, &v157);
                        type metadata accessor for ControlGridViewConfiguration();
                        sub_1001D8F00(v152, &v123);
                        v82 = static ControlGridViewConfiguration.sixUp(arrangement:width:)();
                        sub_100008360(v152, &qword_1003AD900, &qword_1002FE7B8);
                        sub_100005B2C(v158);
                        sub_100005B2C(v159);
                        sub_100005B2C(v160);
                        sub_100005B2C(&v162);
                        sub_100005B2C(&v164);
                        sub_100005B2C(&v166);
                        sub_100005B2C(&v147);
                        sub_100005B2C(&v142);
                        sub_100005B2C(&v137);
                        sub_100005B2C(&v132);
                        sub_100005B2C(&v127);
                        sub_100005B2C(&v123);
                        *v92 = v82;
                        v83 = enum case for ControlsState.controlGrid(_:);
                        v26 = type metadata accessor for ControlsState();
                        sub_1000058E8();
                        (*(v84 + 104))(v92, v83, v26);
                        v28 = v92;
                        goto LABEL_83;
                      }

                      sub_100005B2C(v159);
                      goto LABEL_85;
                    }

                    goto LABEL_100;
                  }

LABEL_99:
                  __break(1u);
LABEL_100:
                  __break(1u);
                  goto LABEL_101;
                }

LABEL_98:
                __break(1u);
                goto LABEL_99;
              }

LABEL_97:
              __break(1u);
              goto LABEL_98;
            }

LABEL_96:
            __break(1u);
            goto LABEL_97;
          }

          sub_100005B2C(&v166);
LABEL_55:

LABEL_88:
          sub_100008360(&v123, &qword_1003AD8F0, &qword_1002FE7A8);
          v61 = type metadata accessor for ControlsState();
          v28 = v92;
          goto LABEL_89;
        }

LABEL_95:
        __break(1u);
        goto LABEL_96;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_95;
  }

  *v152 = _swiftEmptyArrayStorage;
  sub_10021D77C(0, v10, 0);
  v11 = 0;
  v3 = _swiftEmptyArrayStorage;
  v98 = v9;
  v103 = v9 + 32;
  v4 = &selRef_submitCAMetric_viewId_;
  v93 = v10;
  while (v11 < *(v9 + 16))
  {
    v113 = v11 + 1;
    v118 = v3;
    v12 = *(v103 + 8 * v11);
    v13 = sub_100017230(v12);

    v14 = 0;
    v15 = _swiftEmptyArrayStorage;
    while (v13 != v14)
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_57;
        }

        v16 = *(v12 + 8 * v14 + 32);
      }

      v17 = v16;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
LABEL_57:
        __break(1u);
        goto LABEL_58;
      }

      v18 = [v16 unsignedIntegerValue];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10023FA90();
        v15 = v19;
      }

      a1 = v15[2];
      if (a1 >= v15[3] >> 1)
      {
        sub_10023FA90();
        v15 = v20;
      }

      v15[2] = a1 + 1;
      v15[a1 + 4] = v18;
      ++v14;
    }

    *v152 = v3;
    v22 = v3[2];
    v21 = v3[3];
    if (v22 >= v21 >> 1)
    {
      sub_10021D77C((v21 > 1), v22 + 1, 1);
      v3 = *v152;
    }

    v3[2] = v22 + 1;
    v3[v22 + 4] = v15;
    v11 = v113;
    v9 = v98;
    if (v113 == v10)
    {

      goto LABEL_39;
    }
  }

  __break(1u);
LABEL_92:
  swift_once();
LABEL_34:
  v29 = type metadata accessor for Logger();
  sub_100008A14(v29, &unk_1003B8820);

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 67109120;
    *(v32 + 4) = [v3 v4[446]];

    _os_log_impl(&_mh_execute_header, v30, v31, "unknown call status: %d", v32, 8u);
  }

  else
  {
  }

LABEL_3:
  v6 = type metadata accessor for ControlsState();

  return sub_100006848(a1, 1, 1, v6);
}

id *sub_1001D8DA4()
{

  sub_100037A10((v0 + 7));

  sub_1001638E4(v0[11]);
  return v0;
}

uint64_t sub_1001D8DFC()
{
  sub_1001D8DA4();

  return _swift_deallocClassInstance(v0, 96, 7);
}

uint64_t sub_1001D8E94(void *a1)
{
  v1 = [a1 defaultControlTypes];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_10014EA98(&qword_1003AD908, &qword_1002FE7C0);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_1001D8F00(uint64_t a1, uint64_t a2)
{
  v4 = sub_10014EA98(&qword_1003AD900, &qword_1002FE7B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001D8F70(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1001D8FB8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  type metadata accessor for ClarityUICallCenter(0);
  swift_allocObject();
  sub_10024B6B4();
  State.init(wrappedValue:)();
  v8 = objc_allocWithZone(type metadata accessor for ClarityUIEnhancedEmergencyCoordinator(0));

  v9 = [v8 init];
  State.init(wrappedValue:)();

  *a4 = a2;
  a4[1] = a3;
  a4[2] = a1;
  a4[3] = v10;
  a4[4] = v11;
  a4[5] = v10;
  a4[6] = v11;
}

uint64_t sub_1001D90C0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v48 = a1;
  v3 = sub_10014EA98(&qword_1003AD9A0, &qword_1002FE8C0);
  v4 = sub_10000964C(v3, &v58);
  v46 = v5;
  __chkstk_darwin(v4);
  v42 = &v37 - v6;
  v7 = sub_10014EA98(&qword_1003AD9A8, &qword_1002FE8C8);
  v8 = sub_10000964C(v7, &v57);
  v44 = v9;
  __chkstk_darwin(v8);
  v43 = &v37 - v10;
  v11 = v1[4];
  *&v56[0] = v1[3];
  v12 = *&v56[0];
  *(&v56[0] + 1) = v11;
  v37 = sub_10014EA98(&qword_1003AD9B0, &qword_1002FE8D0);
  State.wrappedValue.getter();
  v13 = sub_10024B0B8();

  *&v56[0] = v12;
  *(&v56[0] + 1) = v11;
  State.wrappedValue.getter();
  v14 = v50;
  v15 = v1[6];
  v40 = v1[5];
  *&v56[0] = v40;
  *(&v56[0] + 1) = v15;
  sub_10014EA98(&qword_1003AD9B8, &qword_1002FE8D8);
  State.wrappedValue.getter();
  v16 = v50;
  v17 = v2[1];
  v18 = v2[2];
  v19 = *v2;
  LOBYTE(v50) = 0;
  swift_unknownObjectRetain();

  State.init(wrappedValue:)();
  *&v50 = v13;
  *(&v50 + 1) = v14;
  *&v51 = v16;
  *(&v51 + 1) = v18;
  *&v52 = v19;
  *(&v52 + 1) = v17;
  LOBYTE(v53) = v56[0];
  *(&v53 + 1) = *(&v56[0] + 1);
  *&v56[0] = v12;
  *(&v56[0] + 1) = v11;
  v38 = v11;
  State.wrappedValue.getter();
  v20 = sub_10024B0B8();

  v49 = v20;
  v54 = v15;
  v55 = v11;
  v21 = swift_allocObject();
  sub_10000C480(v21);
  *(v22 - 256) = v17;

  v41 = v18;
  swift_unknownObjectRetain();

  v23 = v40;
  v24 = v42;
  v39 = v23;
  sub_10017FF60(&v55, v56, &qword_1003AB5F0, &qword_1002FBED0);
  sub_10017FF60(&v54, v56, &qword_1003AB5F8, &qword_1002FBED8);
  v25 = sub_10014EA98(&qword_1003AD9C0, &qword_1002FE8E0);
  v26 = sub_1001DBE00();
  v27 = sub_1001DBE54();
  v40 = v25;
  View.onChange<A>(of:initial:_:)();

  v56[0] = v50;
  v56[1] = v51;
  v56[2] = v52;
  v56[3] = v53;
  sub_1001DBF08(v56);
  *&v50 = v12;
  *(&v50 + 1) = v38;
  State.wrappedValue.getter();
  v28 = sub_10024B0B8();

  if (v28)
  {
    v29 = sub_10023E2B0();
  }

  else
  {
    v29 = 0;
  }

  LODWORD(v49) = v29;
  BYTE4(v49) = v28 == 0;
  v30 = swift_allocObject();
  sub_10000C480(v30);

  swift_unknownObjectRetain();

  v31 = v39;
  sub_10017FF60(&v55, &v50, &qword_1003AB5F0, &qword_1002FBED0);
  sub_10017FF60(&v54, &v50, &qword_1003AB5F8, &qword_1002FBED8);
  sub_10014EA98(&qword_1003AD9E0, &qword_1002FE8E8);
  *&v50 = &type metadata for ClarityUIRootView.OptionalCallView;
  *(&v50 + 1) = v40;
  *&v51 = v26;
  *(&v51 + 1) = v27;
  swift_getOpaqueTypeConformance2();
  sub_1001DBFA0();
  v32 = v43;
  v33 = v47;
  View.onChange<A>(of:initial:_:)();

  (*(v46 + 8))(v24, v33);
  v34 = v48;
  (*(v44 + 32))(v48, v32, v45);
  result = sub_10014EA98(&qword_1003AD9F8, &unk_1002FE8F0);
  v36 = (v34 + *(result + 36));
  *v36 = sub_1001DA118;
  v36[1] = 0;
  v36[2] = 0;
  v36[3] = 0;
  return result;
}

void sub_1001D9658(void *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a1)
  {
    if (v2)
    {
      type metadata accessor for ClarityUICall(0);

      v3 = sub_10023F260();

      if (v3)
      {
        goto LABEL_4;
      }
    }
  }

  else if (!v2)
  {
LABEL_4:
    if (qword_1003A9FB8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100008A14(v4, &unk_1003B8978);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v21 = v8;
      *v7 = 136315138;

      sub_10014EA98(&qword_1003AD9C0, &qword_1002FE8E0);
      v9 = String.init<A>(describing:)();
      v11 = sub_100008ADC(v9, v10, &v21);

      *(v7 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v5, v6, "Frontmost call initially: %s", v7, 0xCu);
      sub_100005B2C(v8);
    }

    v12 = 1;
    goto LABEL_15;
  }

  if (qword_1003A9FB8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100008A14(v13, &unk_1003B8978);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v21 = v17;
    *v16 = 136315138;

    sub_10014EA98(&qword_1003AD9C0, &qword_1002FE8E0);
    v18 = String.init<A>(describing:)();
    v20 = sub_100008ADC(v18, v19, &v21);

    *(v16 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v14, v15, "Frontmost call changed: %s", v16, 0xCu);
    sub_100005B2C(v17);
  }

  v12 = 0;
LABEL_15:
  sub_1001D9974(v12);
}

void sub_1001D9974(char a1)
{
  v2 = v1;
  v4 = sub_10014EA98(&qword_1003AA7B0, &qword_1002FA970);
  __chkstk_darwin(v4 - 8);
  v6 = &v36[-v5 - 8];
  v7 = v1[4];
  v37[0] = v1[3];
  v37[1] = v7;
  sub_10014EA98(&qword_1003AD9B0, &qword_1002FE8D0);
  State.wrappedValue.getter();
  v8 = sub_10024B0B8();

  if (v8)
  {
    if ((a1 & 1) == 0)
    {
      v9 = [objc_opt_self() sharedInstance];
      v10 = [v9 autoPunchOutBehaviorRequiredForCurrentCalls];

      if (v10)
      {
        v11 = type metadata accessor for TaskPriority();
        sub_100006848(v6, 1, 1, v11);
        v12 = v2[2];
        v37[0] = v7;
        v13 = v2[5];
        v38 = v2[6];
        v39 = v12;
        type metadata accessor for MainActor();

        sub_10017FF60(&v39, v36, &unk_1003ADA00, &unk_1002FE900);

        sub_10017FF60(v37, v36, &qword_1003AB5F0, &qword_1002FBED0);
        v14 = v13;
        sub_10017FF60(&v38, v36, &qword_1003AB5F8, &qword_1002FBED8);

        v15 = static MainActor.shared.getter();
        v16 = swift_allocObject();
        *(v16 + 16) = v15;
        *(v16 + 24) = &protocol witness table for MainActor;
        v17 = *(v2 + 1);
        *(v16 + 32) = *v2;
        *(v16 + 48) = v17;
        *(v16 + 64) = *(v2 + 2);
        *(v16 + 80) = v2[6];
        *(v16 + 88) = v8;
        sub_1001621BC();

LABEL_9:

        return;
      }
    }

    if (qword_1003A9FB8 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100008A14(v18, &unk_1003B8978);

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v37[0] = v22;
      *v21 = 136315138;

      v23 = sub_10023F2C4();
      v25 = v24;

      v26 = sub_100008ADC(v23, v25, v37);

      *(v21 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v19, v20, "Showing call view for call: %s", v21, 0xCu);
      sub_100005B2C(v22);

      goto LABEL_9;
    }
  }

  else if (v1[2])
  {
    if (qword_1003A9FB8 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_100008A14(v27, &unk_1003B8978);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Not dismissing even though there is no frontmost call, because a Screen Time request is active.", v30, 2u);
    }
  }

  else
  {
    if (qword_1003A9FB8 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_100008A14(v31, &unk_1003B8978);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "Dismissing because there is no frontmost call.", v34, 2u);
    }

    (*v2)();
  }
}

void sub_1001D9E68(uint64_t a1, uint64_t a2, void *a3)
{
  if ((*(a1 + 4) & 1) == 0 && (*(a2 + 4) & 1) == 0)
  {
    if (qword_1003A9FB8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100008A14(v4, &unk_1003B8978);
    v5 = a3[2];
    v6 = a3[3];
    v17 = a3[4];
    v21 = v17;
    v22 = v5;
    v7 = a3[5];
    v20 = a3[6];

    sub_10017FF60(&v22, v18, &unk_1003ADA00, &unk_1002FE900);

    sub_10017FF60(&v21, v18, &qword_1003AB5F0, &qword_1002FBED0);
    v8 = v7;
    sub_10017FF60(&v20, v18, &qword_1003AB5F8, &qword_1002FBED8);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();

    sub_1000306A4(&v22, &unk_1003ADA00, &unk_1002FE900);

    sub_1000306A4(&v21, &qword_1003AB5F0, &qword_1002FBED0);

    sub_1000306A4(&v20, &qword_1003AB5F8, &qword_1002FBED8);
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 136315138;
      v18[0] = v6;
      v18[1] = v17;
      v19 = v12;
      sub_10014EA98(&qword_1003AD9B0, &qword_1002FE8D0);
      State.wrappedValue.getter();
      v13 = sub_10024B0B8();

      v18[0] = v13;
      sub_10014EA98(&qword_1003AD9C0, &qword_1002FE8E0);
      v14 = String.init<A>(describing:)();
      v16 = sub_100008ADC(v14, v15, &v19);

      *(v11 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v9, v10, "Frontmost call status changed: %s", v11, 0xCu);
      sub_100005B2C(v12);
    }

    sub_1001D9974(0);
  }
}

double sub_1001DA118()
{
  v23 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v23 - 8);
  __chkstk_darwin(v23);
  v1 = &v20 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for DispatchQoS();
  v24 = *(v2 - 8);
  v25 = v2;
  __chkstk_darwin(v2);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchTime();
  v22 = v5;
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v20 - v10;
  v12 = TUCallCenterInCallServiceDidAppearNotification;
  sub_1000064BC(0, &qword_1003AAAB0, OS_dispatch_queue_ptr);
  v13 = v12;
  v20 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v21 = *(v6 + 8);
  v21(v9, v5);
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  aBlock[4] = sub_1001DC054;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002E570;
  aBlock[3] = &unk_10035EBC8;
  v15 = _Block_copy(aBlock);
  v16 = v13;
  static DispatchQoS.unspecified.getter();
  v27 = _swiftEmptyArrayStorage;
  sub_1001DC05C(&qword_1003B0530, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10014EA98(&unk_1003AAAC0, &unk_1002FB790);
  sub_100027E08(&qword_1003B0540, &unk_1003AAAC0, &unk_1002FB790, &protocol conformance descriptor for [A]);
  v17 = v23;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v18 = v20;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v15);

  (*(v26 + 8))(v1, v17);
  (*(v24 + 8))(v4, v25);
  v21(v11, v22);

  return result;
}

void sub_1001DA504(const __CFString *a1)
{
  v2 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(v2, a1, 0, 0, 1u);
}

uint64_t sub_1001DA564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = type metadata accessor for MainActor();
  v5[3] = static MainActor.shared.getter();
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_1001DA620;

  return sub_1001DA758(a5);
}

uint64_t sub_1001DA620()
{
  sub_100006610();

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100188170, v1, v0);
}

uint64_t sub_1001DA758(uint64_t a1)
{
  v2[45] = a1;
  v2[46] = v1;
  type metadata accessor for MainActor();
  v2[47] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[48] = v4;
  v2[49] = v3;

  return _swift_task_switch(sub_1001DA7F0, v4, v3);
}

uint64_t sub_1001DA7F0()
{
  v36 = v0;
  v1 = sub_10023E240();
  v2 = [v1 provider];

  v3 = sub_10002D86C(v2);
  if (!v4)
  {
    goto LABEL_14;
  }

  v5 = v3;
  v6 = v4;
  v7 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v7 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {

LABEL_14:

    if (qword_1003A9FB8 != -1)
    {
      sub_1000078D4(&qword_1003A9FB8);
    }

    v22 = type metadata accessor for Logger();
    sub_100008A14(v22, &unk_1003B8978);

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = sub_100005384();
      v26 = swift_slowAlloc();
      v35 = v26;
      *v25 = 136315138;
      v27 = sub_10023F2C4();
      v29 = sub_100008ADC(v27, v28, &v35);

      *(v25 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v23, v24, "Unable to punch out to VoIP application because call was missing a bundle identifier: %s", v25, 0xCu);
      sub_100005B2C(v26);
      sub_100005BB8(v26);
      sub_100005340();
    }

    goto LABEL_19;
  }

  if (qword_1003A9FB8 != -1)
  {
    sub_1000078D4(&qword_1003A9FB8);
  }

  v8 = type metadata accessor for Logger();
  *(v0 + 400) = sub_100008A14(v8, &unk_1003B8978);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = sub_100005384();
    v12 = swift_slowAlloc();
    v35 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_100008ADC(v5, v6, &v35);
    _os_log_impl(&_mh_execute_header, v9, v10, "Punching out to VoIP application: %s", v11, 0xCu);
    sub_100005B2C(v12);
    sub_100005BB8(v12);
    sub_100005BB8(v11);
  }

  v13 = [objc_opt_self() serviceWithDefaultShellEndpoint];
  *(v0 + 408) = v13;
  if (v13)
  {
    v14 = v13;
    (**(v0 + 368))();
    sub_1000064BC(0, &qword_1003ADA10, FBSOpenApplicationOptions_ptr);
    sub_10014EA98(&qword_1003ADA18, &qword_1002FE928);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1002FB510;
    *(v0 + 320) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v0 + 328) = v16;
    AnyHashable.init<A>(_:)();
    *(inited + 96) = &type metadata for Bool;
    *(inited + 72) = 1;
    *(v0 + 336) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v0 + 344) = v17;
    AnyHashable.init<A>(_:)();
    *(inited + 168) = &type metadata for Bool;
    *(inited + 144) = 1;
    v18 = Dictionary.init(dictionaryLiteral:)();
    v19 = sub_1001DB270(v18);
    *(v0 + 416) = v19;
    v20 = String._bridgeToObjectiveC()();
    *(v0 + 424) = v20;

    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 352;
    *(v0 + 24) = sub_1001DAD6C;
    v21 = swift_continuation_init();
    *(v0 + 312) = sub_10014EA98(&unk_1003ADA20, &unk_1002FE930);
    *(v0 + 256) = _NSConcreteStackBlock;
    *(v0 + 264) = 1107296256;
    *(v0 + 272) = sub_1001DB2FC;
    *(v0 + 280) = &unk_10035EC18;
    *(v0 + 288) = v21;
    [v14 openApplication:v20 withOptions:v19 completion:?];

    return _swift_continuation_await(v0 + 16);
  }

  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&_mh_execute_header, v31, v32, "Unable to find open application service.", v33, 2u);
    sub_100005BB8(v33);
  }

LABEL_19:
  sub_10000535C();

  return v30();
}

uint64_t sub_1001DAD6C()
{
  sub_100006610();
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 432) = v2;
  v3 = *(v1 + 392);
  v4 = *(v1 + 384);
  if (v2)
  {
    v5 = sub_1001DAFEC;
  }

  else
  {
    v5 = sub_1001DAE98;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1001DAE98()
{
  v1 = v0[53];

  v2 = v0[44];

  v3 = v2;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  v6 = os_log_type_enabled(v4, v5);
  v8 = v0[51];
  v7 = v0[52];
  if (v6)
  {
    v9 = sub_100005384();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    *(v9 + 4) = v3;
    *v10 = v3;
    v11 = v3;
    _os_log_impl(&_mh_execute_header, v4, v5, "Successfully opened application: %@", v9, 0xCu);
    sub_1000306A4(v10, &qword_1003B0230, &qword_1002FC550);
    sub_100005BB8(v10);
    sub_100005340();
  }

  else
  {

    v4 = v7;
  }

  sub_10000535C();

  return v12();
}

uint64_t sub_1001DAFEC()
{
  v1 = v0[53];

  swift_willThrow();

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = sub_100005384();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Unable to open application: %@", v4, 0xCu);
    sub_1000306A4(v5, &qword_1003B0230, &qword_1002FC550);
    sub_100005BB8(v5);
    sub_100005340();
  }

  v7 = [objc_opt_self() sharedApplication];
  v8 = [v7 delegate];

  if (!v8)
  {
    goto LABEL_7;
  }

  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (!v9)
  {
    swift_unknownObjectRelease();
LABEL_7:
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    v16 = os_log_type_enabled(v14, v15);
    v18 = v0[51];
    v17 = v0[52];
    if (v16)
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Unable to find app delegate to present InCallService.", v19, 2u);
      sub_100005340();
    }

    else
    {
    }

    goto LABEL_11;
  }

  v10 = v9;
  v12 = v0[51];
  v11 = v0[52];
  v13 = sub_10023E240();
  [v10 requestPresentationForCall:v13 dialRequest:0];

  swift_unknownObjectRelease();
LABEL_11:
  sub_10000535C();

  return v20();
}

id sub_1001DB270(uint64_t a1)
{
  if (a1)
  {
    v1.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v1.super.isa = 0;
  }

  v2 = [swift_getObjCClassFromMetadata() optionsWithDictionary:v1.super.isa];

  return v2;
}

uint64_t *sub_1001DB2FC(uint64_t a1, void *a2, void *a3)
{
  result = sub_100008878((a1 + 32), *(a1 + 56));
  v6 = *result;
  if (a3)
  {
    v7 = a3;

    return sub_1000088BC(v6, v7);
  }

  else if (a2)
  {
    v8 = a2;

    return sub_1002520B4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1001DB38C@<X0>(void *a3@<X8>)
{
  v5 = *v3;
  if (!*v3)
  {
    v10 = *(v3 + 24);
    if (v10)
    {
      v11 = [swift_unknownObjectRetain() bundleIdentifier];
      if (v11)
      {
        v12 = v11;
        v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v15 = v14;

        v17 = *(v3 + 32);
        v16 = *(v3 + 40);
        LOBYTE(v26[0]) = 1;

        State.init(wrappedValue:)();
        v24[0] = v13;
        v24[1] = v15;
        v24[2] = v10;
        v24[3] = v17;
        v24[4] = v16;
        LOBYTE(v24[5]) = __src[0];
        v24[6] = __src[1];
        sub_1001DC648(v24);
        memcpy(__src, v24, 0xFAuLL);

        swift_unknownObjectRetain();

        sub_10014EA98(&qword_1003ADA50, &qword_1002FEA00);
        sub_1001DC510();
        sub_1001DC5F4();
        _ConditionalContent<>.init(storage:)();
        memcpy(v26, v23, 0xFAuLL);
        sub_1001DC654(v26);
        memcpy(__src, v26, 0xFBuLL);
        sub_10014EA98(&qword_1003ADA38, &qword_1002FE9F8);
        sub_1001DC484();
        _ConditionalContent<>.init(storage:)();

        swift_unknownObjectRelease();

        goto LABEL_3;
      }

      swift_unknownObjectRelease();
    }

    *&v26[0] = static Color.clear.getter();
    sub_1001DC478(v26);
    memcpy(v25, v26, 0xFBuLL);
    sub_10014EA98(&qword_1003ADA38, &qword_1002FE9F8);
    sub_1001DC484();
    _ConditionalContent<>.init(storage:)();
    return memcpy(a3, __src, 0xFBuLL);
  }

  v6 = static Alignment.center.getter();
  v8 = v7;
  sub_1001DB81C(v5, v3, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v21, __src, sizeof(v21));
  sub_10017FF60(__dst, v26, &unk_1003ADA80, &qword_1002FEA18);
  sub_1000306A4(v21, &unk_1003ADA80, &qword_1002FEA18);
  memcpy(__src, __dst, 0xE0uLL);
  v9 = static Animation.clarityUINavigationTransition.getter();
  v26[0] = *(v3 + 48);
  sub_10014EA98(&qword_1003AFBC0, &qword_1002FEA20);
  State.wrappedValue.getter();
  v22[0] = v6;
  v22[1] = v8;
  memcpy(&v22[2], __src, 0xE0uLL);
  v22[30] = v9;
  LOBYTE(v22[31]) = v25[0];
  memcpy(v23, v22, 0xF9uLL);
  sub_1001DC65C(v23);
  memcpy(__src, v23, 0xFAuLL);
  sub_10017FF60(v22, v26, &qword_1003ADA50, &qword_1002FEA00);
  sub_10014EA98(&qword_1003ADA50, &qword_1002FEA00);
  sub_1001DC510();
  sub_1001DC5F4();
  _ConditionalContent<>.init(storage:)();
  memcpy(v24, v19, 0xFAuLL);
  memcpy(v26, v19, 0xFAuLL);
  sub_1001DC654(v26);
  memcpy(__src, v26, 0xFBuLL);
  sub_10017FF60(v24, v25, &qword_1003ADA38, &qword_1002FE9F8);
  sub_10014EA98(&qword_1003ADA38, &qword_1002FE9F8);
  sub_1001DC484();
  _ConditionalContent<>.init(storage:)();

  sub_1000306A4(v24, &qword_1003ADA38, &qword_1002FE9F8);
  sub_1000306A4(v22, &qword_1003ADA50, &qword_1002FEA00);
LABEL_3:
  memcpy(__src, v25, 0xFBuLL);
  return memcpy(a3, __src, 0xFBuLL);
}

uint64_t sub_1001DB81C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v28 = a3;
  v5 = sub_10014EA98(&unk_1003ADA90, &qword_1002FCC48);
  __chkstk_darwin(v5 - 8);
  v7 = &v25 - v6;
  v8 = *(a2 + 8);
  v67 = *(a2 + 48);
  v42[0] = *(a2 + 48);
  v40 = v8;

  sub_10014EA98(&qword_1003AFBC0, &qword_1002FEA20);
  State.projectedValue.getter();
  v38 = *(&v48 + 1);
  v39 = v48;
  v37 = v49;
  v9 = *(a2 + 16);
  LOBYTE(v42[0]) = 0;
  v36 = v9;
  State.init(wrappedValue:)();
  v34 = v48;
  v35 = *(&v48 + 1);
  *&v42[0] = 0;
  sub_10014EA98(&qword_1003AC8A0, &qword_1002FD410);
  State.init(wrappedValue:)();
  v32 = *(&v48 + 1);
  v33 = v48;
  v10 = type metadata accessor for Font.Design();
  sub_100006848(v7, 1, 1, v10);
  v31 = static Font.system(size:weight:design:)();
  sub_1000306A4(v7, &unk_1003ADA90, &qword_1002FCC48);
  static ClarityUIMetrics.standardSpacing.getter();
  v12 = v11;
  type metadata accessor for ClarityUIPreferences();
  v30 = static ClarityUIPreferences.shared.getter();
  v48 = v67;
  v13 = a1;

  State.wrappedValue.getter();
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v29 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  if (LOBYTE(v42[0]) == 1)
  {
    v42[0] = v67;
    State.projectedValue.getter();
    v16 = *(&v48 + 1);
    v15 = v48;
    v20 = v49;
    *&v42[0] = 0;
    *(&v42[0] + 1) = 0xE000000000000000;
    State.init(wrappedValue:)();
    v17 = *(&v48 + 1);
    v29 = v48;
    v18 = v49;
    v14 = v13;

    v19 = 0x3FF0000000000000;
  }

  v27 = v13;
  *&v42[0] = v13;
  *(&v42[0] + 1) = v40;
  *&v42[1] = v39;
  *(&v42[1] + 1) = v38;
  LOBYTE(v42[2]) = v37;
  *(&v42[2] + 1) = v69[0];
  DWORD1(v42[2]) = *(v69 + 3);
  *(&v42[2] + 1) = v36;
  LOBYTE(v42[3]) = v34;
  *(&v42[3] + 1) = *v68;
  DWORD1(v42[3]) = *&v68[3];
  *(&v42[3] + 1) = v35;
  *&v42[4] = v33;
  v26 = vdupq_n_s64(0x4069000000000000uLL);
  *(&v42[4] + 1) = v32;
  *&v42[5] = v31;
  *(&v42[5] + 8) = v26;
  v25 = xmmword_1002FE7F0;
  *(&v42[6] + 8) = xmmword_1002FE7F0;
  *(&v42[7] + 1) = 0x3FE999999999999ALL;
  *&v42[8] = 3000000000;
  *(&v42[8] + 1) = v12;
  v42[9] = v30;
  memcpy(v41, v42, 0xA0uLL);
  *&v43 = v14;
  *(&v43 + 1) = v15;
  *&v44 = v16;
  *(&v44 + 1) = v20;
  v21 = v18;
  v22 = v17;
  v23 = v29;
  *&v45 = v29;
  *(&v45 + 1) = v22;
  *&v46 = v21;
  *(&v46 + 1) = v19;
  v41[10] = v43;
  v41[11] = v44;
  v41[12] = v45;
  v41[13] = v46;
  memcpy(v28, v41, 0xE0uLL);
  v47[0] = v14;
  v47[1] = v15;
  v47[2] = v16;
  v47[3] = v20;
  v47[4] = v23;
  v47[5] = v22;
  v47[6] = v21;
  v47[7] = v19;
  sub_10017FF60(v42, &v48, &qword_1003ADAA0, &qword_1002FEA28);
  sub_10017FF60(&v43, &v48, &qword_1003ADAA8, &qword_1002FEA30);
  sub_1000306A4(v47, &qword_1003ADAA8, &qword_1002FEA30);
  *&v48 = v27;
  *(&v48 + 1) = v40;
  v49 = v39;
  v50 = v38;
  v51 = v37;
  *v52 = v69[0];
  *&v52[3] = *(v69 + 3);
  v53 = v36;
  v54 = v34;
  *v55 = *v68;
  *&v55[3] = *&v68[3];
  v56 = v35;
  v57 = v33;
  v58 = v32;
  v59 = v31;
  v60 = v26;
  v61 = v25;
  v62 = 0x3FE999999999999ALL;
  v63 = 3000000000;
  v64 = v12;
  v65 = v30;
  v66 = 0;
  return sub_1000306A4(&v48, &qword_1003ADAA0, &qword_1002FEA28);
}

__n128 sub_1001DBD24(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1001DBD40(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1001DBD80(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_1001DBE00()
{
  result = qword_1003AD9C8;
  if (!qword_1003AD9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AD9C8);
  }

  return result;
}

unint64_t sub_1001DBE54()
{
  result = qword_1003AD9D0;
  if (!qword_1003AD9D0)
  {
    sub_100155B7C(&qword_1003AD9C0, &qword_1002FE8E0);
    sub_1001DC05C(&qword_1003AD9D8, type metadata accessor for ClarityUICall, &unk_100301B1C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AD9D0);
  }

  return result;
}

uint64_t sub_1001DBF38()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72, 7);
}

unint64_t sub_1001DBFA0()
{
  result = qword_1003AD9E8;
  if (!qword_1003AD9E8)
  {
    sub_100155B7C(&qword_1003AD9E0, &qword_1002FE8E8);
    sub_1001DC05C(&qword_1003AA2A0, type metadata accessor for TUCallStatus, &unk_1002F9D28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AD9E8);
  }

  return result;
}

uint64_t sub_1001DC05C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001DC0A4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[11];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1001DC164;

  return sub_1001DA564(a1, v4, v5, (v1 + 4), v6);
}

uint64_t sub_1001DC164()
{
  sub_100006610();

  sub_10000535C();

  return v0();
}

__n128 sub_1001DC268(uint64_t a1, uint64_t a2)
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

uint64_t sub_1001DC27C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1001DC2BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1001DC31C()
{
  result = qword_1003ADA30;
  if (!qword_1003ADA30)
  {
    sub_100155B7C(&qword_1003AD9F8, &unk_1002FE8F0);
    sub_100155B7C(&qword_1003AD9A0, &qword_1002FE8C0);
    sub_100155B7C(&qword_1003AD9E0, &qword_1002FE8E8);
    sub_100155B7C(&qword_1003AD9C0, &qword_1002FE8E0);
    sub_1001DBE00();
    sub_1001DBE54();
    swift_getOpaqueTypeConformance2();
    sub_1001DBFA0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003ADA30);
  }

  return result;
}

unint64_t sub_1001DC484()
{
  result = qword_1003ADA40;
  if (!qword_1003ADA40)
  {
    sub_100155B7C(&qword_1003ADA38, &qword_1002FE9F8);
    sub_1001DC510();
    sub_1001DC5F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003ADA40);
  }

  return result;
}

unint64_t sub_1001DC510()
{
  result = qword_1003ADA48;
  if (!qword_1003ADA48)
  {
    sub_100155B7C(&qword_1003ADA50, &qword_1002FEA00);
    sub_100027E08(&qword_1003ADA58, &qword_1003ADA60, &qword_1002FEA08, &protocol conformance descriptor for ZStack<A>);
    sub_100027E08(&qword_1003ADA68, &qword_1003ADA70, &qword_1002FEA10, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003ADA48);
  }

  return result;
}

unint64_t sub_1001DC5F4()
{
  result = qword_1003ADA78;
  if (!qword_1003ADA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003ADA78);
  }

  return result;
}

unint64_t sub_1001DC664()
{
  result = qword_1003ADAB0;
  if (!qword_1003ADAB0)
  {
    sub_100155B7C(&qword_1003ADAB8, &qword_1002FEA38);
    sub_1001DC484();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003ADAB0);
  }

  return result;
}

void iPadAudioCallViewController.showKeypad(perviousMiddleState:viewSize:)(__int16 a1, double a2, double a3)
{
  v4 = v3;
  v8 = sub_10014EA98(&qword_1003AD438, &qword_1002FE368);
  v9 = v8 - 8;
  v10 = __chkstk_darwin(v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v27 - v13;
  [v3 updateFloatingViewsVisibilityHandlers];
  sub_1001DC9B0(v14, &v14[*(v9 + 56)], a2, a3);
  sub_1001DCB24(v14, v12);
  v15 = *(v9 + 56);
  v16 = objc_allocWithZone(type metadata accessor for CallsKeypadViewController());
  v17 = sub_1001D2070(v12, &v12[v15]);
  v18 = [v17 view];
  if (!v18)
  {
    __break(1u);
    goto LABEL_6;
  }

  v19 = v18;
  v20 = [v18 layer];

  [v20 setCornerRadius:74.0];
  v21 = [v17 view];
  if (!v21)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v22 = v21;
  [v21 setClipsToBounds:1];

  [v4 addChildViewController:v17];
  v23 = [v4 backgroundController];
  v24 = [v17 view];

  if (v24)
  {
    v25 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v26 = swift_allocObject();
    *(v26 + 16) = v25;
    *(v26 + 24) = a1;

    sub_100190F34(v24, 0, sub_1001DCC50, v26);

    [v17 didMoveToParentViewController:v4];
    [v4 setKeypadViewController:v17];

    sub_1001DCC5C(v14);
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_1001DC9B0(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v8 = type metadata accessor for _Glass._GlassVariant();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4 >= a3)
  {
    static _Glass._GlassVariant.regular.getter();
    v16 = type metadata accessor for _Glass._GlassVariant.Size();
    v14 = a2;
    v15 = 1;
  }

  else
  {
    static _Glass._GlassVariant.clear.getter();
    v12 = enum case for _Glass._GlassVariant.Size.small(_:);
    v13 = type metadata accessor for _Glass._GlassVariant.Size();
    (*(*(v13 - 8) + 104))(a2, v12, v13);
    v14 = a2;
    v15 = 0;
    v16 = v13;
  }

  sub_100006848(v14, v15, 1, v16);
  return (*(v9 + 32))(a1, v11, v8);
}

uint64_t sub_1001DCB24(uint64_t a1, uint64_t a2)
{
  v4 = sub_10014EA98(&qword_1003AD438, &qword_1002FE368);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1001DCB94(uint64_t a1, unsigned __int16 a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [Strong keypadViewController];
    if (v5)
    {
      v6 = v5;
      [v4 removeChildViewController:v5];
    }

    [v4 setKeypadViewController:0];
    [v4 setMiddleViewState:a2 animated:0];
  }
}

uint64_t sub_1001DCC5C(uint64_t a1)
{
  v2 = sub_10014EA98(&qword_1003AD438, &qword_1002FE368);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void iPadAudioCallViewController.keypadViewWillDisappear(completion:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v3 keypadViewController];
  if (v6)
  {
    v7 = v6;
    v9[4] = a1;
    v9[5] = a2;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 1107296256;
    v9[2] = sub_10002E570;
    v9[3] = &unk_10035ED20;
    v8 = _Block_copy(v9);

    [v7 dismissViewControllerAnimated:1 completion:v8];
    _Block_release(v8);
  }
}

Swift::Void __swiftcall iPadAudioCallViewController.updateFloatingViewsVisibilityHandlers()()
{
  v1 = v0;
  [v0 isShowingPoster];
  sub_100007608();
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100007608();
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = [v0 backgroundController];
  v5 = [v1 view];
  if (v5)
  {
    v6 = v5;
    sub_100190BF4(v5, sub_1001DD078, v2, sub_1001DD204, v3);
  }

  else
  {
    __break(1u);
  }
}

void sub_1001DCFB4(char a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [Strong callParticipantsViewController];

    if (v5)
    {
      v6 = [v5 view];

      if (v6)
      {
        v7 = 0.0;
        if (a1)
        {
          v7 = 1.0;
        }

        [v6 setAlpha:v7];
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_1001DD080(char a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [Strong buttonsViewController];

    v6 = [v5 view];
    if (!v6)
    {
      __break(1u);
      return;
    }

    v7 = 0.0;
    if (a1)
    {
      v7 = 1.0;
    }

    [v6 setAlpha:v7];
  }

  swift_beginAccess();
  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = v8;
    v10 = sub_100245C4C();

    if (v10)
    {
      v11 = 0.0;
      if (a1)
      {
        v11 = 1.0;
      }

      [v10 setAlpha:v11];
    }
  }

  swift_beginAccess();
  v12 = swift_unknownObjectWeakLoadStrong();
  if (v12)
  {
    v13 = v12;
    v14 = [v12 middleContentView];

    if (v14)
    {
      v15 = 0.0;
      if (a1)
      {
        v15 = 1.0;
      }

      [v14 setAlpha:v15];
    }
  }
}

id iPadAudioCallViewController.updateKeypadBackgroundMaterial(viewSize:)(double a1, double a2)
{
  v5 = sub_10014EA98(&qword_1003AD438, &qword_1002FE368);
  __chkstk_darwin(v5);
  v7 = &v11 - v6;
  result = [v2 keypadViewController];
  if (result)
  {
    v9 = result;
    v10 = *(v5 + 48);
    sub_1001DC9B0(v7, &v7[v10], a1, a2);
    sub_1001D21F0(v7, &v7[v10]);

    return sub_1001DCC5C(v7);
  }

  return result;
}

void sub_1001DD394(char a1)
{
  v2 = v1;
  v49.receiver = v2;
  v49.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v49, "viewWillAppear:", a1 & 1);
  v4 = [objc_opt_self() sharedApplication];
  v5 = [v4 delegate];

  if (!v5)
  {
    return;
  }

  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6)
  {
LABEL_12:
    swift_unknownObjectRelease();
    return;
  }

  v7 = v6;
  swift_unknownObjectRetain();
  v8 = ICSApplicationDelegate.bannerPresentationManager.getter();
  swift_unknownObjectRelease();
  v9 = v8;
  v10 = dispatch thunk of BannerPresentationManager.conversationControlsManager.getter();

  if (!v10)
  {
    swift_unknownObjectRelease();

    return;
  }

  dispatch thunk of ConversationControlsManager.activeCall.getter();
  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (!v11)
  {

    swift_unknownObjectRelease();
    goto LABEL_12;
  }

  v12 = v11;
  v45 = v9;
  type metadata accessor for CallCenterFacade();
  static CallCenterFacade.shared.getter();
  v13 = [v12 uniqueProxyIdentifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v14 = CallCenterFacade.call(with:)();

  if (!v14)
  {

    swift_unknownObjectRelease();
    goto LABEL_12;
  }

  v15 = *&v2[OBJC_IVAR____TtC13InCallService31FTMenuRemoteAlertViewController_controlsManager];
  *&v2[OBJC_IVAR____TtC13InCallService31FTMenuRemoteAlertViewController_controlsManager] = v10;
  v16 = v10;

  static CallCenterFacade.shared.getter();
  v17 = type metadata accessor for FTMenuItemStateProvider();
  swift_allocObject();
  v18 = FTMenuItemStateProvider.init(call:callCenter:)();
  v47 = v17;
  v48 = &protocol witness table for FTMenuItemStateProvider;
  v46[0] = v18;
  v19 = OBJC_IVAR____TtC13InCallService31FTMenuRemoteAlertViewController_provider;
  swift_beginAccess();

  sub_1001DE3A8(v46, &v2[v19]);
  swift_endAccess();
  type metadata accessor for FTMenuItemRegistry();
  v20 = static FTMenuItemRegistry.shared.getter();
  v21 = [v12 uniqueProxyIdentifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  FTMenuItemRegistry.container(for:)();

  v47 = v17;
  v48 = &protocol witness table for FTMenuItemStateProvider;
  v46[0] = v18;
  sub_100005C44();
  *(swift_allocObject() + 16) = v7;
  sub_100005C44();
  *(swift_allocObject() + 16) = v16;
  sub_100005C44();
  v22 = swift_allocObject();
  *(v22 + 16) = v16;
  sub_100005C44();
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v24 = v16;
  swift_unknownObjectRetain();
  v25 = v24;

  v44 = static SharePlayDiscoverabilityMenuView.makeMoreMenuSharePlayDiscoverabilityView(foregroundApp:callSupportsCollaborations:willTapApp:)();
  sub_100005C44();
  v26 = swift_allocObject();
  *(v26 + 16) = v25;
  sub_100005C44();
  v27 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100005C44();
  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100005C44();
  v29 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MoreMenuViewModel();
  swift_allocObject();
  v43 = v25;
  v42 = v29;
  v41 = v26;
  v30 = MoreMenuViewModel.init(provider:container:presentAddParticipantSheet:toggleLiveCaptions:startScreenSharing:stopScreenSharing:startWaitOnHold:presentSharePlaySheet:presentSharePlayDismissalAlert:presentContactCard:startCallRecording:stopCallRecording:)();

  sub_100005C44();
  v31 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v46[0] = v30;
  v46[1] = sub_1001DE504;
  v46[2] = v31;
  v32 = objc_allocWithZone(sub_10014EA98(&qword_1003ADB00, &qword_1002FEA88));
  v33 = UIHostingController.init(rootView:)();
  [v33 setOverrideUserInterfaceStyle:{2, sub_1001DE428, v22, sub_1001DE430, v23, v44, sub_1001DE438, v41, sub_1001DE45C, v27, sub_1001DE494, v28, sub_1001DE4CC, v42}];
  v34 = [v33 view];
  if (v34)
  {
    v35 = v34;
    v36 = [objc_opt_self() clearColor];
    [v35 setBackgroundColor:v36];

    [v33 setModalPresentationStyle:5];
    v37 = [v33 view];
    if (v37)
    {
      v38 = v37;
      v39 = [v37 layer];

      [v39 setHitTestsAsOpaque:1];
      v40 = *&v2[OBJC_IVAR____TtC13InCallService31FTMenuRemoteAlertViewController_moreMenuViewController];
      *&v2[OBJC_IVAR____TtC13InCallService31FTMenuRemoteAlertViewController_moreMenuViewController] = v33;

      [v2 presentViewController:v33 animated:0 completion:0];
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1001DDA70(void *a1)
{
  if (a1)
  {
    v3[4] = sub_1001DDB20;
    v3[5] = 0;
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 1107296256;
    v3[2] = sub_10002E570;
    v3[3] = &unk_10035EED8;
    v2 = _Block_copy(v3);
    [a1 requestFullScreenSpringBoardPresentationWithCompletion:v2];
    _Block_release(v2);
  }
}

void sub_1001DDB20()
{
  v0 = [objc_opt_self() defaultCenter];
  v1 = static NSNotificationName.MoreMenuRemoteAlertViewPresentAddParticipant.getter();
  [v0 postNotificationName:v1 object:0];
}

void sub_1001DDC04(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC13InCallService31FTMenuRemoteAlertViewController_controlsManager);
    if (v3)
    {
      v4 = v3;

      ConversationControlsManager.startWaitOnHoldSession()();
      v2 = v4;
    }
  }
}

void sub_1001DDC78()
{
  v0 = [objc_opt_self() defaultCenter];
  v1 = static NSNotificationName.MoreMenuRemoteAlertViewPresentContactCard.getter();
  sub_10014EA98(&qword_1003ADA18, &qword_1002FE928);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002FAB60;
  AnyHashable.init<A>(_:)();
  *(inited + 96) = &type metadata for Bool;
  *(inited + 72) = 1;
  v3 = Dictionary.init(dictionaryLiteral:)();
  sub_100253DE4(v1, 0, v3, v0);
}

void sub_1001DDDA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    aBlock[4] = a2;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002E570;
    aBlock[3] = a3;
    v7 = _Block_copy(aBlock);
    [v6 requestFullScreenSpringBoardPresentationWithCompletion:v7];
    _Block_release(v7);
  }
}

void sub_1001DDE78(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() defaultCenter];
  v5 = static NSNotificationName.MoreMenuRemoteAlertViewCallRecording.getter();
  sub_10014EA98(&qword_1003ADA18, &qword_1002FE928);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002FAB60;
  AnyHashable.init<A>(_:)();
  *(inited + 96) = &type metadata for String;
  *(inited + 72) = a1;
  *(inited + 80) = a2;
  v7 = Dictionary.init(dictionaryLiteral:)();
  sub_100253DE4(v5, 0, v7, v4);
}

double sub_1001DDF98(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_1001DE00C();

    if (v4)
    {
      [v4 dismiss];
      swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1001DE00C()
{
  if ([v0 _remoteViewControllerProxy])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    sub_10014EA98(&qword_1003ABB50, &qword_1002FC6E0);
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_100008360(v5, &unk_1003AAF50, &qword_1002FB170);
    return 0;
  }
}

id sub_1001DE140(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC13InCallService31FTMenuRemoteAlertViewController_moreMenuViewController] = 0;
  sub_100006E74(OBJC_IVAR____TtC13InCallService31FTMenuRemoteAlertViewController_provider);
  *&v3[OBJC_IVAR____TtC13InCallService31FTMenuRemoteAlertViewController_controlsManager] = 0;
  if (a2)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v3;
  v10.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v10, "initWithNibName:bundle:", v7, a3);

  return v8;
}

id sub_1001DE260(void *a1)
{
  swift_getObjectType();
  *&v1[OBJC_IVAR____TtC13InCallService31FTMenuRemoteAlertViewController_moreMenuViewController] = 0;
  v3 = sub_100006E74(OBJC_IVAR____TtC13InCallService31FTMenuRemoteAlertViewController_provider);
  *&v1[OBJC_IVAR____TtC13InCallService31FTMenuRemoteAlertViewController_controlsManager] = 0;
  v7.receiver = v1;
  v7.super_class = v4;
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", a1, v3);

  if (v5)
  {
  }

  return v5;
}

uint64_t sub_1001DE3A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10014EA98(&qword_1003AAFB0, &qword_1002FEA80);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001DE50C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24[1] = a4;
  v7 = sub_10014EA98(&qword_1003ADB08, &qword_1002FEB30);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = v24 - v9;
  v11 = sub_10014EA98(&qword_1003ADB10, &qword_1002FEB38);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = v24 - v13;
  v15 = sub_10014EA98(&qword_1003ADB18, &qword_1002FEB40);
  sub_1000058E8();
  __chkstk_darwin(v16);
  v18 = v24 - v17;
  *v10 = static HorizontalAlignment.center.getter();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v19 = sub_10014EA98(&qword_1003ADB20, &qword_1002FEB48);
  sub_1001DE7D0(a2, a3, &v10[*(v19 + 44)]);
  v20 = static Edge.Set.all.getter();
  v21 = &v10[*(v8 + 44)];
  *v21 = v20;
  *(v21 + 8) = xmmword_1002FEA50;
  *(v21 + 24) = xmmword_1002FEA50;
  v21[40] = 0;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_1001BE054(v10, v14, &qword_1003ADB08, &qword_1002FEB30);
  memcpy(&v14[*(v12 + 44)], __src, 0x70uLL);
  sub_1001BE054(v14, v18, &qword_1003ADB10, &qword_1002FEB38);
  v18[*(v15 + 36)] = 0;
  v22 = swift_allocObject();
  v22[2] = a1;
  v22[3] = a2;
  v22[4] = a3;
  sub_1001DF2A4();

  View.onTapGesture(count:perform:)();

  return sub_100008360(v18, &qword_1003ADB18, &qword_1002FEB40);
}

uint64_t sub_1001DE7D0@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v26[0] = a2;
  v26[1] = a3;
  v28 = a4;
  v27 = sub_10014EA98(&qword_1003ADB60, &qword_1002FEB60);
  __chkstk_darwin(v27);
  v5 = (v26 - v4);
  v6 = sub_10014EA98(&qword_1003ADB68, &qword_1002FEB68);
  __chkstk_darwin(v6);
  v8 = v26 - v7;
  v9 = type metadata accessor for FTMenuView();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10014EA98(&qword_1003ADB70, &qword_1002FEB70);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = v26 - v17;
  sub_1001DEC84();
  if (v19)
  {

    FTMenuView.init(viewModel:dismissHandler:sheetPresentation:isUIKit:hideBackButton:customNavigation:)();
    (*(v10 + 16))(v8, v12, v9);
    swift_storeEnumTagMultiPayload();
    sub_1001DF4A0();
    sub_1001DF558();
    _ConditionalContent<>.init(storage:)();
    (*(v10 + 8))(v12, v9);
  }

  else
  {
    *v5 = static Alignment.center.getter();
    v5[1] = v20;
    v21 = sub_10014EA98(&qword_1003ADBA0, &qword_1002FEB90);
    sub_1001DEDD8(v5 + *(v21 + 44));
    *(v5 + *(v27 + 36)) = 256;
    sub_1001BE004(v5, v8, &qword_1003ADB60, &qword_1002FEB60);
    swift_storeEnumTagMultiPayload();
    sub_1001DF4A0();
    sub_1001DF558();
    _ConditionalContent<>.init(storage:)();
    sub_100008360(v5, &qword_1003ADB60, &qword_1002FEB60);
  }

  v22 = static Color.clear.getter();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  memcpy(&v33[6], __src, 0x70uLL);
  sub_1001BE004(v18, v16, &qword_1003ADB70, &qword_1002FEB70);
  v23 = v28;
  sub_1001BE004(v16, v28, &qword_1003ADB70, &qword_1002FEB70);
  v24 = *(sub_10014EA98(&qword_1003ADB90, &qword_1002FEB80) + 48);
  v29[0] = v22;
  LOWORD(v29[1]) = 256;
  memcpy(&v29[1] + 2, v33, 0x76uLL);
  memcpy((v23 + v24), v29, 0x80uLL);
  sub_1001BE004(v29, &v30, &qword_1003ADB98, &qword_1002FEB88);
  sub_100008360(v18, &qword_1003ADB70, &qword_1002FEB70);
  v30 = v22;
  v31 = 256;
  memcpy(v32, v33, sizeof(v32));
  sub_100008360(&v30, &qword_1003ADB98, &qword_1002FEB88);
  return sub_100008360(v16, &qword_1003ADB70, &qword_1002FEB70);
}

uint64_t sub_1001DEC84()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1 == 1)
  {
    v3 = objc_opt_self();
    v4 = [v3 mainScreen];
    [v4 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    v24.origin.x = v6;
    v24.origin.y = v8;
    v24.size.width = v10;
    v24.size.height = v12;
    Width = CGRectGetWidth(v24);
    v14 = [v3 mainScreen];
    [v14 bounds];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;

    v25.origin.x = v16;
    v25.origin.y = v18;
    v25.size.width = v20;
    v25.size.height = v22;
    Height = CGRectGetHeight(v25);
    if (Height >= Width)
    {
      Height = Width;
    }

    *&result = Height * 0.6;
  }

  else
  {
    *&result = 0.0;
  }

  return result;
}

uint64_t sub_1001DEDD8@<X0>(void *a4@<X8>)
{
  v24 = a4;
  v22 = type metadata accessor for FTMenuView();
  v5 = *(v22 - 8);
  __chkstk_darwin(v22);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = sub_10014EA98(&qword_1003ADBA8, &qword_1002FEB98);
  v8 = __chkstk_darwin(v21);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __chkstk_darwin(v8);
  v13 = &v20[-v12];
  __chkstk_darwin(v11);
  v15 = &v20[-v14];
  v23 = static Color.clear.getter();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  memcpy(&v29[6], v30, 0x70uLL);

  FTMenuView.init(viewModel:dismissHandler:sheetPresentation:isUIKit:hideBackButton:customNavigation:)();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v5 + 32))(v13, v7, v22);
  memcpy(&v13[*(v21 + 36)], __src, 0x70uLL);
  sub_1001BE054(v13, v15, &qword_1003ADBA8, &qword_1002FEB98);
  sub_1001BE004(v15, v10, &qword_1003ADBA8, &qword_1002FEB98);
  v16 = v23;
  v25[0] = v23;
  LOWORD(v25[1]) = 256;
  memcpy(&v25[1] + 2, v29, 0x76uLL);
  v17 = v24;
  memcpy(v24, v25, 0x80uLL);
  v18 = sub_10014EA98(&unk_1003ADBB0, &unk_1002FEBA0);
  sub_1001BE004(v10, v17 + *(v18 + 48), &qword_1003ADBA8, &qword_1002FEB98);
  sub_1001BE004(v25, &v26, &qword_1003ADB98, &qword_1002FEB88);
  sub_100008360(v15, &qword_1003ADBA8, &qword_1002FEB98);
  sub_100008360(v10, &qword_1003ADBA8, &qword_1002FEB98);
  v26 = v16;
  v27 = 256;
  memcpy(v28, v29, sizeof(v28));
  return sub_100008360(&v26, &qword_1003ADB98, &qword_1002FEB88);
}

uint64_t sub_1001DF1D0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1001DF210(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1001DF2A4()
{
  result = qword_1003ADB28;
  if (!qword_1003ADB28)
  {
    sub_100155B7C(&qword_1003ADB18, &qword_1002FEB40);
    sub_1001DF35C();
    sub_100027E08(&qword_1003ADB50, &qword_1003ADB58, &qword_1002FEB58, &protocol conformance descriptor for _ContentShapeModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003ADB28);
  }

  return result;
}

unint64_t sub_1001DF35C()
{
  result = qword_1003ADB30;
  if (!qword_1003ADB30)
  {
    sub_100155B7C(&qword_1003ADB10, &qword_1002FEB38);
    sub_1001DF3E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003ADB30);
  }

  return result;
}

unint64_t sub_1001DF3E8()
{
  result = qword_1003ADB38;
  if (!qword_1003ADB38)
  {
    sub_100155B7C(&qword_1003ADB08, &qword_1002FEB30);
    sub_100027E08(&qword_1003ADB40, &qword_1003ADB48, &qword_1002FEB50, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003ADB38);
  }

  return result;
}

unint64_t sub_1001DF4A0()
{
  result = qword_1003ADB78;
  if (!qword_1003ADB78)
  {
    sub_100155B7C(&qword_1003ADB60, &qword_1002FEB60);
    sub_100027E08(&qword_1003ADB80, &qword_1003ADB88, &qword_1002FEB78, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003ADB78);
  }

  return result;
}

unint64_t sub_1001DF558()
{
  result = qword_1003ADBF0;
  if (!qword_1003ADBF0)
  {
    type metadata accessor for FTMenuView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003ADBF0);
  }

  return result;
}

id sub_1001DF5C8()
{
  v1 = v0;
  v2 = type metadata accessor for CallRecordingPillViewController.DisplayStyle();
  sub_100006C24();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_100005BD0();
  v8 = v7 - v6;
  v9 = [v1 existingPrioritizedCall];
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  v44 = v4;
  v11 = [v1 _callRecordingController];
  if (v11)
  {
    v12 = v11;
    v13 = dispatch thunk of CallRecordingController.callUniqueProxyIdentifier.getter();
    v15 = v14;
    v16 = [v10 uniqueProxyIdentifier];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    if (v13 == v17 && v15 == v19)
    {

      return v12;
    }

    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v21)
    {

      return v12;
    }
  }

  v22 = [v10 callUUID];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  [v10 recordingAvailability];
  v23 = [v10 recordingSession];
  v24 = v23;
  if (v23)
  {
    [v23 recordingState];
  }

  [v1 callRecordingAllowed];
  [v1 isCallRecordingActive];
  type metadata accessor for CallRecordingButtonViewModel();
  swift_allocObject();
  CallRecordingButtonViewModel.init(_:_:_:_:_:)();
  v25 = [v1 callRecordingIndicatorViewController];
  v26 = &selRef_handleSystemInitiatedPIPInterruptionStoppedNotification_;
  if (!v25)
  {
LABEL_20:
    (*(v44 + 104))(v8, enum case for CallRecordingPillViewController.DisplayStyle.portrait(_:), v2);
    v32 = objc_allocWithZone(type metadata accessor for CallRecordingPillViewController());
    v33 = CallRecordingPillViewController.init(displayStyle:usesGlass:)();
    [v1 v26[360]];

    v34 = [v1 callRecordingIndicatorViewController];
    if (v34)
    {
      v35 = v34;
      if (swift_dynamicCastClass())
      {
        v36 = CallRecordingPillViewController.viewModel.getter();

LABEL_25:
        sub_10003012C(&qword_1003AAE60, &qword_1003ADBE0, TUCall_ptr, &protocol conformance descriptor for TUCall);
        objc_allocWithZone(type metadata accessor for CallRecordingController());
        v37 = v36;

        v38 = v1;
        v39 = v10;
        v40 = CallRecordingController.init(call:entryPointViewModel:recordingIndicatorViewModel:presenter:)();
        [v38 set_callRecordingController:v40];

        if (v36)
        {
          v41 = v37;
          v42 = [v38 _callRecordingController];
          if (v42)
          {
            v43 = v42;
            dispatch thunk of CallRecordingController.setRecordingIndicatorViewModel(_:)();
          }
        }

        v12 = [v38 _callRecordingController];

        return v12;
      }
    }

    v36 = 0;
    goto LABEL_25;
  }

  v27 = v25;
  result = [v25 view];
  if (result)
  {
    v29 = result;
    v30 = [result superview];

    if (!v30)
    {
LABEL_19:

      v26 = &selRef_handleSystemInitiatedPIPInterruptionStoppedNotification_;
      goto LABEL_20;
    }

    [v27 willMoveToParentViewController:0];
    result = [v27 view];
    if (result)
    {
      v31 = result;
      [result removeFromSuperview];

      [v27 removeFromParentViewController];
      [v1 setCallRecordingIndicatorViewController:0];
      goto LABEL_19;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1001DFBE0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v7 = type metadata accessor for UIHostingControllerSizingOptions();
  __chkstk_darwin(v7 - 8);
  sub_100005BD0();
  v8 = type metadata accessor for FTMenuView();
  sub_100006C24();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_100005BD0();
  v14 = v13 - v12;
  type metadata accessor for Features();
  v15 = static Features.shared.getter();
  v16 = Features.isMoreMenuEnabled.getter();

  if ((v16 & 1) != 0 && a3)
  {
    v41 = v10;
    v17 = direct field offset for CNKBannerPresentationManager.value;
    swift_beginAccess();
    v18 = *(a1 + v17);
    v19 = a3;
    v20 = dispatch thunk of BannerPresentationManager.conversationControlsManager.getter();

    if (!v20)
    {

      return;
    }

    sub_1001E02AC(&v57);
    if (!v58)
    {

      sub_1000306A4(&v57, &qword_1003AAFB0, &qword_1002FEA80);
      return;
    }

    sub_1000304E0(&v57, v59);
    type metadata accessor for FTMenuItemRegistry();
    v21 = static FTMenuItemRegistry.shared.getter();
    v39 = v19;
    v40 = v20;
    sub_100008878(v59, v59[3]);
    dispatch thunk of FTMenuItemStateProviding.uniqueProxyIdentifier.getter();
    sub_1001E03E0(&v57);
    sub_1001E049C(v56);
    v55 = 0;
    memset(v54, 0, sizeof(v54));
    v53 = 0;
    memset(v52, 0, sizeof(v52));
    v51 = 0;
    memset(v50, 0, sizeof(v50));
    v49 = 0;
    memset(v48, 0, sizeof(v48));
    v47 = 0;
    memset(v46, 0, sizeof(v46));
    v45 = 0;
    memset(v44, 0, sizeof(v44));
    sub_100165DF8(v43);
    sub_1001E0524();
    FTMenuItemRegistry.register(with:punchOutProvider:callRecording:deskView:routes:liveCaptions:liveTranslation:screenShare:sharePlay:splitCalls:conferenceParticipants:)();

    v22 = v20;

    sub_100008094(v43);
    sub_100008094(v44);
    sub_100008094(v46);
    sub_100008094(v48);
    sub_100008094(v50);
    sub_100008094(v52);
    sub_100008094(v54);
    sub_100008094(v56);
    sub_100008094(&v57);
    sub_10003012C(&unk_1003AFB40, &unk_1003ADBD0, &off_100353250, &protocol conformance descriptor for iPadAudioCallViewController);
    swift_unknownObjectRetain();
    dispatch thunk of ConversationControlsManager.systemAudioConversationControlsDelegate.setter();
    sub_100005C44();
    v23 = swift_allocObject();
    sub_100025B50(v23);
    v24 = swift_allocObject();
    *(v24 + 16) = v23;
    *(v24 + 24) = v39;
    sub_100005C44();
    v25 = swift_allocObject();
    sub_100025B50(v25);
    sub_10015E008(v59, &v57);
    v26 = v39;
    v27 = ConversationControlsManager.moreMenuViewModel(provider:presentContactCard:presentAddParticipantSheet:startCallRecording:stopCallRecording:)();
    sub_1000306A4(&v57, &qword_1003AAFB0, &qword_1002FEA80);
    if (v27)
    {
      [v4 updateFloatingViewsVisibilityHandlers];
      sub_100005C44();
      v28 = swift_allocObject();
      sub_100025B50(v28);

      FTMenuView.init(viewModel:dismissHandler:sheetPresentation:isUIKit:hideBackButton:customNavigation:)();
      sub_10002D974(&qword_1003ADBF0, &type metadata accessor for FTMenuView, &protocol conformance descriptor for FTMenuView);
      v29 = View.inLockScreenHostingController()();
      (*(v41 + 8))(v14, v8);
      v30 = v29;
      [v30 setOverrideUserInterfaceStyle:2];
      static UIHostingControllerSizingOptions.intrinsicContentSize.getter();
      dispatch thunk of UIHostingController.sizingOptions.setter();
      v31 = [v30 view];
      if (v31)
      {
        v32 = v31;
        v42 = v26;
        v33 = [objc_opt_self() clearColor];
        [v32 setBackgroundColor:v33];

        [v4 addChildViewController:v30];
        v34 = [v4 backgroundController];
        v35 = [v30 view];

        if (v35)
        {
          sub_100005C44();
          v36 = swift_allocObject();
          sub_100025B50(v36);
          v37 = swift_allocObject();
          *(v37 + 16) = v36;
          *(v37 + 24) = v30;
          v38 = v30;

          sub_100190F34(v35, 1, sub_1001E1718, v37);

          [v38 didMoveToParentViewController:v4];

LABEL_12:
          sub_100005B2C(v59);
          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return;
    }

    goto LABEL_12;
  }
}

double sub_1001E02AC@<D0>(uint64_t a1@<X8>)
{
  v3 = [v1 existingPrioritizedCall];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for CallCenterFacade();
    static CallCenterFacade.shared.getter();
    v5 = [v4 uniqueProxyIdentifier];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v6 = CallCenterFacade.call(with:)();

    if (v6)
    {

      static CallCenterFacade.shared.getter();
      v7 = type metadata accessor for FTMenuItemStateProvider();
      swift_allocObject();
      v8 = FTMenuItemStateProvider.init(call:callCenter:)();
      *(a1 + 24) = v7;
      *(a1 + 32) = &protocol witness table for FTMenuItemStateProvider;

      *a1 = v8;
      return result;
    }
  }

  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_1001E03E0@<X0>(uint64_t *a1@<X8>)
{
  v3 = [v1 existingPrioritizedCall];
  *(swift_allocObject() + 16) = v1;
  v4 = type metadata accessor for AudioCallPunchOutMoreMenuViewModel();
  swift_allocObject();
  v5 = v1;
  result = AudioCallPunchOutMoreMenuViewModel.init(call:action:)();
  a1[3] = v4;
  a1[4] = &protocol witness table for AudioCallPunchOutMoreMenuViewModel;
  *a1 = result;
  return result;
}

uint64_t sub_1001E049C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1001DF5C8();
  v3 = result;
  if (result)
  {
    v4 = type metadata accessor for CallRecordingController();
    result = sub_10002D974(&qword_1003ADBE8, &type metadata accessor for CallRecordingController, &protocol conformance descriptor for CallRecordingController);
  }

  else
  {
    v4 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v3;
  a1[3] = v4;
  a1[4] = result;
  return result;
}

void *sub_1001E0524()
{
  v1 = [v0 callCenter];
  v2 = [v1 conferenceParticipantCalls];

  sub_1000064BC(0, &qword_1003ADBE0, TUCall_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  result = sub_100017230(v3);
  v5 = result;
  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v5 == v6)
    {

      return v7;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      result = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v6 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      result = *(v3 + 8 * v6 + 32);
    }

    v8 = result;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    type metadata accessor for CallCenterFacade();
    v9 = v8;
    static CallCenterFacade.shared.getter();
    v10 = type metadata accessor for AudioCallConferenceParticipantMoreMenuViewModel();
    swift_allocObject();
    v11 = AudioCallConferenceParticipantMoreMenuViewModel.init(call:callCenter:)();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_10023F628();
      v7 = v13;
    }

    v12 = v7[2];
    if (v12 >= v7[3] >> 1)
    {
      sub_10023F628();
      v7 = v14;
    }

    v16 = v10;
    v17 = &protocol witness table for AudioCallConferenceParticipantMoreMenuViewModel;
    *&v15 = v11;
    v7[2] = v12 + 1;
    result = sub_1000304E0(&v15, &v7[5 * v12 + 4]);
    ++v6;
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

void sub_1001E071C(uint64_t a1, uint64_t a2)
{
  v3 = [objc_opt_self() sharedInstance];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 isIPadIdiom];

    if (v5)
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v7 = Strong;
        v8 = [Strong inCallRootViewController];

        if (v8)
        {
          [v8 presentContactsViewControllerForView:a2];
          swift_unknownObjectRelease();
        }
      }
    }

    else
    {
      swift_beginAccess();
      v9 = swift_unknownObjectWeakLoadStrong();
      if (v9)
      {
        v10 = v9;
        [v9 audioCallControlsViewControllerRequestedAddCallPresentation:0 forView:a2];
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1001E0824(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong backgroundController];

    sub_1001918D8();
  }
}

void sub_1001E0894(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [Strong removeChildViewController:a2];
  }
}

id sub_1001E098C()
{
  v1 = v0;
  v2 = [v0 existingPrioritizedCall];
  if (v2)
  {
    v3 = v2;
    type metadata accessor for FTMenuItemRegistry();
    v4 = static FTMenuItemRegistry.shared.getter();
    v5 = [v3 uniqueProxyIdentifier];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1001E03E0(v38);
    sub_1001E049C(v37);
    v36 = 0;
    memset(v35, 0, sizeof(v35));
    v34 = 0;
    memset(v33, 0, sizeof(v33));
    v32 = 0;
    memset(v31, 0, sizeof(v31));
    v30 = 0;
    memset(v29, 0, sizeof(v29));
    v28 = 0;
    memset(v27, 0, sizeof(v27));
    v26 = 0;
    memset(v25, 0, sizeof(v25));
    sub_100165DF8(v24);
    v23 = sub_1001E0524();
    FTMenuItemRegistry.register(with:punchOutProvider:callRecording:deskView:routes:liveCaptions:liveTranslation:screenShare:sharePlay:splitCalls:conferenceParticipants:)();

    sub_1000306A4(v24, &unk_1003ADBC0, &unk_1002FB7F0);
    sub_1000306A4(v25, &unk_1003ADBC0, &unk_1002FB7F0);
    sub_1000306A4(v27, &unk_1003ADBC0, &unk_1002FB7F0);
    sub_1000306A4(v29, &unk_1003ADBC0, &unk_1002FB7F0);
    sub_1000306A4(v31, &unk_1003ADBC0, &unk_1002FB7F0);
    sub_1000306A4(v33, &unk_1003ADBC0, &unk_1002FB7F0);
    sub_1000306A4(v35, &unk_1003ADBC0, &unk_1002FB7F0);
    sub_1000306A4(v37, &unk_1003ADBC0, &unk_1002FB7F0);
    sub_1000306A4(v38, &unk_1003ADBC0, &unk_1002FB7F0);
    v6 = [objc_opt_self() tu_contactStoreConfigurationForCall:{v3, v27, v25, v24, v23}];
    v7 = [objc_allocWithZone(CNContactStore) initWithConfiguration:v6];
    v8 = sub_1000140C4(v3);
    if (!v8)
    {
      goto LABEL_13;
    }

    if (!*(v8 + 16))
    {

      goto LABEL_13;
    }

    v9 = sub_1000140C4(v3);
    if (v9)
    {
      v10 = *(v9 + 16);

      if (v10 == 1)
      {
        v11 = String._bridgeToObjectiveC()();

        isa = [objc_opt_self() contactKeysToFetch];
        if (!isa)
        {
          sub_10014EA98(&qword_1003AAF80, &unk_1002FB7D0);
          static Array._unconditionallyBridgeFromObjectiveC(_:)();
          isa = Array._bridgeToObjectiveC()().super.isa;
        }

        v13 = [v7 contactForIdentifier:v11 keysToFetch:isa];

        if (v13)
        {
          v14 = [objc_opt_self() viewControllerForContact:v13];
LABEL_15:
          [v14 setContactStore:v7];
          [v14 setShouldShowSharedProfileBanner:1];
          [v14 setDelegate:v1];
          v38[3] = sub_1000064BC(0, &unk_1003ADBD0, &off_100353250);
          v38[0] = v1;
          objc_allocWithZone(UIBarButtonItem);
          v19 = v1;
          v20 = sub_1001E1580(0, v38, "dismissNavigationControllerAndUpdateScene");
          v21 = [v14 navigationItem];
          [v21 setLeftBarButtonItem:v20];

          v15 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v14];
          return v15;
        }

LABEL_13:
        v15 = [v3 handle];
        if (!v15)
        {

          return v15;
        }

        sub_1000064BC(0, &qword_1003AAF78, CNMutableContact_ptr);
        v16 = v15;
        v17 = CNMutableContact.init(handle:)();
        v18 = [objc_opt_self() viewControllerForUnknownContact:v17];

        v14 = v18;
        [v14 setActions:{objc_msgSend(v14, "actions") | 0x800}];

        v13 = 0;
        goto LABEL_15;
      }
    }
  }

  return 0;
}

void sub_1001E0ECC()
{
  v1 = [objc_opt_self() sharedInstance];
  if (v1)
  {
    v2 = v1;
    sub_100005C44();
    v3 = swift_allocObject();
    *(v3 + 16) = v0;
    v6[4] = sub_1001E1568;
    v6[5] = v3;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 1107296256;
    v6[2] = sub_100164920;
    v6[3] = &unk_10035EFD0;
    v4 = _Block_copy(v6);
    v5 = v0;

    [v2 requestPasscodeUnlockWithCompletion:v4];
    _Block_release(v4);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1001E0FCC(char a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  result = __chkstk_darwin(v6);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_1000064BC(0, &qword_1003AAAB0, OS_dispatch_queue_ptr);
    v11 = static OS_dispatch_queue.main.getter();
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1001E1570;
    aBlock[5] = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002E570;
    aBlock[3] = &unk_10035F020;
    v13 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10002D974(&qword_1003B0530, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10014EA98(&unk_1003AAAC0, &unk_1002FB790);
    sub_100032638();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v13);

    (*(v3 + 8))(v5, v2);
    return (*(v7 + 8))(v10, v6);
  }

  return result;
}

void sub_1001E129C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = sub_1001E098C();
    if (v3)
    {
      v4 = v3;
      v5 = swift_allocObject();
      *(v5 + 16) = v2;
      aBlock[4] = sub_1001E1578;
      aBlock[5] = v5;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10002E570;
      aBlock[3] = &unk_10035F070;
      v6 = _Block_copy(aBlock);
      v7 = v2;

      [v7 presentViewController:v4 animated:1 completion:v6];
      _Block_release(v6);

      v2 = v4;
    }
  }
}

double sub_1001E13BC(void *a1)
{
  v1 = [a1 inCallRootViewController];
  if (v1)
  {
    [v1 updateDesiredSpringboardBehavior];

    swift_unknownObjectRelease();
  }

  return result;
}

id sub_1001E1468()
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v2 = result;
    v3 = [result isIPadIdiom];

    if (v3)
    {
      v4 = "presentFullScreenPeoplePicker";
      v5 = v0;
    }

    else
    {
      v4 = "audioCallControlsViewControllerRequestedAddCallPresentation:forView:";
      v5 = v0;
    }

    return [v5 v4];
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1001E1580(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2[3];
  if (v6)
  {
    sub_100008878(a2, a2[3]);
    sub_100006C24();
    v9 = v8;
    __chkstk_darwin(v10);
    sub_100005BD0();
    v13 = v12 - v11;
    (*(v9 + 16))(v12 - v11);
    v14 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v9 + 8))(v13, v6);
    sub_100005B2C(a2);
  }

  else
  {
    v14 = 0;
  }

  v15 = [v3 initWithBarButtonSystemItem:a1 target:v14 action:a3];
  swift_unknownObjectRelease();
  return v15;
}

uint64_t sub_1001E16D8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1001E1730@<X0>(uint64_t a1@<X8>)
{
  v55 = a1;
  v2 = type metadata accessor for DialInterventionView(0);
  v3 = v2 - 8;
  v54 = *(v2 - 8);
  v53 = *(v54 + 64);
  __chkstk_darwin(v2);
  v52 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for Intervention.Kind();
  sub_10000688C();
  v41 = v5;
  __chkstk_darwin(v6);
  sub_100005BD0();
  v9 = v8 - v7;
  sub_10014EA98(&qword_1003ADDA0, &qword_1002FECF0);
  sub_10000688C();
  v44 = v10;
  v45 = v11;
  __chkstk_darwin(v10);
  v13 = &v38 - v12;
  sub_10014EA98(&qword_1003ADDA8, &qword_1002FECF8);
  sub_10000688C();
  v49 = v14;
  v50 = v15;
  __chkstk_darwin(v14);
  v40 = &v38 - v16;
  v51 = sub_10014EA98(&qword_1003ADDB0, &unk_1002FED00);
  sub_1000058E8();
  __chkstk_darwin(v17);
  v42 = &v38 - v18;
  v19 = static Color.clear.getter();
  v61 = 256;
  v20 = (v1 + *(v3 + 44));
  v48 = *v20;
  v47 = *(v20 + 1);
  v58 = v48;
  v59 = v47;
  v60 = v19;
  v46 = sub_10014EA98(&qword_1003AFBC0, &qword_1002FEA20);
  State.projectedValue.getter();
  v39 = v1;
  v21 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  (*(v21 + 32))(ObjectType, v21);
  static Intervention.Kind.attemptingToCallViaExternalRequest(sensitiveParticipants:otherParticipants:isPresented:callType:)();

  v23 = sub_10014EA98(&qword_1003ADDB8, &unk_1002FED10);
  v24 = sub_100027E08(&qword_1003ADDC0, &qword_1003ADDB8, &unk_1002FED10, &protocol conformance descriptor for _ShapeView<A, B>);
  View.intervention(_:)();
  (*(v41 + 8))(v9, v43);

  v56 = v23;
  v57 = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v26 = v40;
  v27 = v44;
  View.onInterventionHeeded(_:)();
  (*(v45 + 8))(v13, v27);
  v28 = v39;
  v29 = v52;
  sub_1001E2C7C(v39, v52);
  v30 = (*(v54 + 80) + 16) & ~*(v54 + 80);
  v31 = swift_allocObject();
  sub_1001E2CE0(v29, v31 + v30);
  v56 = v27;
  v57 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v32 = v42;
  v33 = v49;
  View.onShowContent(_:)();

  (*(v50 + 8))(v26, v33);
  sub_1001E2C7C(v28, v29);
  v34 = swift_allocObject();
  sub_1001E2CE0(v29, v34 + v30);
  v35 = (v32 + *(v51 + 36));
  *v35 = 0;
  v35[1] = 0;
  v35[2] = sub_1001E2DA0;
  v35[3] = v34;
  LOBYTE(v56) = v48;
  v57 = v47;
  State.wrappedValue.getter();
  LOBYTE(v56) = v58;
  sub_1001E2C7C(v28, v29);
  v36 = swift_allocObject();
  sub_1001E2CE0(v29, v36 + v30);
  sub_1001E2E88();
  View.onChange<A>(of:initial:_:)();

  return sub_10003B258(v32);
}

void sub_1001E1D30()
{
  if (qword_1003A9F78 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100008A14(v0, &unk_1003B88C8);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Not allow to call.", v2, 2u);
  }
}

uint64_t sub_1001E1E18(uint64_t a1)
{
  if (qword_1003A9F78 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100008A14(v2, &unk_1003B88C8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Allow to call.", v5, 2u);
  }

  v6 = *(a1 + 24);
  ObjectType = swift_getObjectType();
  return (*(v6 + 16))(1, ObjectType, v6);
}

void sub_1001E1F20(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v45 = *(v6 - 8);
  v46 = v6;
  __chkstk_darwin(v6);
  v41 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for DispatchQoS();
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DialInterventionView(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10 - 8);
  v13 = type metadata accessor for DispatchTime();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v20 = &v37 - v19;
  v43 = *a1;
  v21 = *a2;
  if ((v21 & 1) == 0)
  {
    v37 = v9;
    v22 = v11;
    v23 = a3;
    v24 = v18;
    v39 = v18;
    sub_1000064BC(0, &qword_1003AAAB0, OS_dispatch_queue_ptr);
    v25 = static OS_dispatch_queue.main.getter();
    v40 = v21;
    v26 = v25;
    static DispatchTime.now()();
    + infix(_:_:)();
    v38 = *(v14 + 8);
    v38(v17, v24);
    sub_1001E2C7C(v23, &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    v27 = (*(v22 + 80) + 16) & ~*(v22 + 80);
    v28 = swift_allocObject();
    sub_1001E2CE0(&v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v27);
    aBlock[4] = sub_1001E315C;
    aBlock[5] = v28;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002E570;
    aBlock[3] = &unk_10035F218;
    v29 = _Block_copy(aBlock);

    v30 = v37;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1001E3168(&qword_1003B0530, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10014EA98(&unk_1003AAAC0, &unk_1002FB790);
    sub_100027E08(&qword_1003B0540, &unk_1003AAAC0, &unk_1002FB790, &protocol conformance descriptor for [A]);
    v31 = v41;
    v32 = v46;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v29);

    v21 = v40;
    (*(v45 + 8))(v31, v32);
    (*(v42 + 8))(v30, v44);
    v38(v20, v39);
  }

  if (qword_1003A9F78 != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  sub_100008A14(v33, &unk_1003B88C8);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 67109376;
    *(v36 + 4) = v43;
    *(v36 + 8) = 1024;
    *(v36 + 10) = v21;
    _os_log_impl(&_mh_execute_header, v34, v35, "isPresented old: %{BOOL}d new: %{BOOL}d", v36, 0xEu);
  }
}

void sub_1001E2490(uint64_t a1, const char *a2)
{
  if (qword_1003A9F78 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100008A14(v4, &unk_1003B88C8);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, a2, v7, 2u);
  }

  sub_100008878((a1 + 32), *(a1 + 56));
  sub_1001EDE60(0);
}

uint64_t sub_1001E258C@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for SensitivityAnalysis.Flags();
  sub_1000058E8();
  __chkstk_darwin(v2);
  sub_100005BD0();
  v3 = type metadata accessor for SensitivityAnalysis.Harms();
  v4 = sub_100005568(v3);
  __chkstk_darwin(v4);
  sub_100005BD0();
  static SensitivityAnalysis.Harms.nudity.getter();
  sub_1001E3168(&qword_1003ADCA8, &type metadata accessor for SensitivityAnalysis.Flags, &protocol conformance descriptor for SensitivityAnalysis.Flags);
  sub_10014EA98(&qword_1003ADCB0, &qword_1002FEC68);
  sub_100027E08(&qword_1003ADCB8, &qword_1003ADCB0, &qword_1002FEC68, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  SensitivityAnalysis.init(harmsDetected:flags:)();
  v5 = type metadata accessor for SensitivityAnalysis();
  return sub_100006848(a1, 0, 1, v5);
}

void *sub_1001E2720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a1;
  v4[5] = a2;
  v4[2] = a3;
  v4[3] = a4;
  return v4;
}

uint64_t sub_1001E2730()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_1001E2760()
{
  sub_1001E2730();

  return _swift_deallocClassInstance(v0, 48, 7);
}

uint64_t sub_1001E2794()
{
  v1 = [v0 provider];
  v2 = [v1 isTelephonyProvider];

  if (v2)
  {
    return 3;
  }

  if ([v0 isVideo])
  {
    return 1;
  }

  return 4;
}

uint64_t sub_1001E2814()
{
  if ([v0 avMode] == 2)
  {
    return 1;
  }

  else
  {
    return 4;
  }
}

uint64_t type metadata accessor for DialInterventionView(uint64_t a1)
{
  result = qword_1003ADD20;
  if (!qword_1003ADD20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001E28E0(uint64_t a1)
{
  sub_1001E29EC(319);
  if (v1 <= 0x3F)
  {
    sub_1001E2AF0(319);
    if (v2 <= 0x3F)
    {
      sub_1001E2B58(319, &qword_1003ADD40, &protocol descriptor for DialInterventionRequest, 0);
      if (v3 <= 0x3F)
      {
        sub_1001E2B58(319, &qword_1003ADD48, &protocol descriptor for ICSRemoteAlertHandler, 1);
        if (v4 <= 0x3F)
        {
          sub_1001E2BAC(319);
          if (v5 <= 0x3F)
          {
            sub_1001E2C10();
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

void sub_1001E29EC(uint64_t a1)
{
  if (!qword_1003ADD30)
  {
    sub_1000064BC(255, &unk_1003AB0C0, SCAParticipant_ptr);
    sub_1000064BC(255, &qword_1003AB410, SCSensitivityAnalysis_ptr);
    sub_1001E2A88();
    v1 = type metadata accessor for Dictionary();
    if (!v2)
    {
      atomic_store(v1, &qword_1003ADD30);
    }
  }
}

unint64_t sub_1001E2A88()
{
  result = qword_1003AB418;
  if (!qword_1003AB418)
  {
    sub_1000064BC(255, &unk_1003AB0C0, SCAParticipant_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AB418);
  }

  return result;
}

void sub_1001E2AF0(uint64_t a1)
{
  if (!qword_1003ADD38)
  {
    sub_1000064BC(255, &unk_1003AB0C0, SCAParticipant_ptr);
    v1 = type metadata accessor for Array();
    if (!v2)
    {
      atomic_store(v1, &qword_1003ADD38);
    }
  }
}

uint64_t sub_1001E2B58(uint64_t a1, unint64_t *a2, uint64_t a3, char a4)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_1001E2BAC(uint64_t a1)
{
  if (!qword_1003ADD50)
  {
    sub_100155B7C(&qword_1003ADD58, &qword_1002FEC98);
    v1 = type metadata accessor for State();
    if (!v2)
    {
      atomic_store(v1, &qword_1003ADD50);
    }
  }
}

void sub_1001E2C10()
{
  if (!qword_1003ADD60)
  {
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_1003ADD60);
    }
  }
}

uint64_t sub_1001E2C7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DialInterventionView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001E2CE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DialInterventionView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001E2D44()
{
  v1 = type metadata accessor for DialInterventionView(0);
  sub_100005568(v1);
  v3 = v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return sub_1001E1E18(v3);
}

void sub_1001E2DAC(const char *a1)
{
  v3 = type metadata accessor for DialInterventionView(0);
  sub_100005568(v3);
  sub_1001E2490(v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80)), a1);
}

void sub_1001E2E0C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v5 = type metadata accessor for DialInterventionView(0);
  sub_100005568(v5);
  v7 = v2 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  sub_1001E1F20(a1, a2, v7);
}

unint64_t sub_1001E2E88()
{
  result = qword_1003ADDC8;
  if (!qword_1003ADDC8)
  {
    sub_100155B7C(&qword_1003ADDB0, &unk_1002FED00);
    sub_100155B7C(&qword_1003ADDA8, &qword_1002FECF8);
    sub_100155B7C(&qword_1003ADDA0, &qword_1002FECF0);
    sub_100155B7C(&qword_1003ADDB8, &unk_1002FED10);
    sub_100027E08(&qword_1003ADDC0, &qword_1003ADDB8, &unk_1002FED10, &protocol conformance descriptor for _ShapeView<A, B>);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003ADDC8);
  }

  return result;
}

uint64_t sub_1001E3004()
{
  v1 = type metadata accessor for DialInterventionView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  swift_unknownObjectRelease();
  sub_100005B2C((v0 + v3 + 32));
  v5 = v0 + v3 + *(v1 + 32);
  v6 = type metadata accessor for SensitivityAnalysis();
  if (!sub_100006AC0(v5, 1, v6))
  {
    (*(*(v6 - 8) + 8))(v5, v6);
  }

  sub_10014EA98(&qword_1003ADCC0, &unk_1002FEC70);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1001E3168(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1001E31B8(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1001E31C8@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1001E31B8(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id sub_1001E321C(char *a1)
{
  v33 = a1;
  v1 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v1 - 8);
  v2 = sub_10014EA98(&qword_1003ADE38, &qword_1002FF4B0);
  __chkstk_darwin(v2 - 8);
  v4 = &v31 - v3;
  v5 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UIButton.Configuration();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v31 - v14;
  v16 = (v10 + 32);
  if (_UISolariumEnabled())
  {
    static UIButton.Configuration._tintedGlass()();
    (*v16)(v15, v13, v9);
  }

  else
  {
    static UIButton.Configuration.filled()();
    (*v16)(v15, v13, v9);
    (*(v6 + 104))(v8, enum case for UIButton.Configuration.CornerStyle.capsule(_:), v5);
    UIButton.Configuration.cornerStyle.setter();
  }

  v17 = objc_opt_self();
  v18 = [v17 systemBlueColor];
  UIButton.Configuration.baseBackgroundColor.setter();
  v19 = [v17 systemWhiteColor];
  UIButton.Configuration.baseForegroundColor.setter();
  UIButton.Configuration.imagePadding.setter();
  v20 = [objc_opt_self() configurationWithScale:2];
  UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
  v32 = OBJC_IVAR____TtC13InCallService33EmergencyActionButtonsWaitingView_type;
  v21 = *&v33[OBJC_IVAR____TtC13InCallService33EmergencyActionButtonsWaitingView_type];
  if (v21 == 1)
  {
    sub_1001FD1F8(0x505F45534F4F4843, 0xEC0000004F544F48);
  }

  else
  {
    if (v21)
    {
      v35[0] = *&v33[OBJC_IVAR____TtC13InCallService33EmergencyActionButtonsWaitingView_type];
      result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
      return result;
    }

    sub_1001FD1F8(0x49565F4552414853, 0xEB000000004F4544);
  }

  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  v22 = type metadata accessor for AttributedString();
  sub_100006848(v4, 0, 1, v22);
  UIButton.Configuration.attributedTitle.setter();
  sub_1000064BC(0, &qword_1003AAA98, UIImage_ptr);
  sub_1001FFAD8();
  UIButton.Configuration.image.setter();
  v23 = UIButton.Configuration.attributedTitle.modify();
  if (!sub_100006AC0(v24, 1, v22))
  {
    v34 = [objc_opt_self() systemFontOfSize:15.0 weight:UIFontWeightBold];
    sub_1001E5698();
    AttributedString.subscript.setter();
  }

  v23(v35, 0);
  UIButton.Configuration.contentInsets.setter();
  sub_1000064BC(0, &qword_1003ABA20, UIButton_ptr);
  (*(v10 + 16))(v13, v15, v9);
  v25 = UIButton.init(configuration:primaryAction:)();
  LODWORD(v26) = 1144750080;
  [v25 setContentHuggingPriority:1 forAxis:v26];
  [v25 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v25 addTarget:v33 action:"continueButtonTapped" forControlEvents:64];
  LODWORD(v27) = 1148846080;
  [v25 setContentCompressionResistancePriority:1 forAxis:v27];
  if (_UISolariumEnabled())
  {
    v28 = [v17 clearColor];
    [v25 setTintColor:v28];
  }

  v29 = v33;
  [v33 addSubview:v25];
  if (!*&v29[v32])
  {
    [v25 setUserInteractionEnabled:0];
  }

  [v25 setOverrideUserInterfaceStyle:2];
  [v25 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];

  (*(v10 + 8))(v15, v9);
  return v25;
}

id sub_1001E3860()
{
  v1 = OBJC_IVAR____TtC13InCallService33EmergencyActionButtonsWaitingView____lazy_storage___spinnerButton;
  v2 = *(v0 + OBJC_IVAR____TtC13InCallService33EmergencyActionButtonsWaitingView____lazy_storage___spinnerButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC13InCallService33EmergencyActionButtonsWaitingView____lazy_storage___spinnerButton);
  }

  else
  {
    v4 = sub_1001E38C0();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1001E38C0()
{
  v0 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for UIButton.Configuration();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v20 - v9;
  if (_UISolariumEnabled())
  {
    static UIButton.Configuration._tintedGlass()();
  }

  else
  {
    static UIButton.Configuration.filled()();
    (*(v1 + 104))(v3, enum case for UIButton.Configuration.CornerStyle.capsule(_:), v0);
    UIButton.Configuration.cornerStyle.setter();
  }

  v11 = objc_opt_self();
  v12 = [v11 secondarySystemFillColor];
  UIButton.Configuration.baseBackgroundColor.setter();
  v13 = [v11 systemWhiteColor];
  UIButton.Configuration.baseForegroundColor.setter();
  UIButton.Configuration.showsActivityIndicator.setter();
  sub_1000064BC(0, &qword_1003ABA20, UIButton_ptr);
  (*(v5 + 16))(v8, v10, v4);
  v14 = UIButton.init(configuration:primaryAction:)();
  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v14 setOverrideUserInterfaceStyle:2];
  [v14 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];

  if (_UISolariumEnabled())
  {
    v15 = [v11 clearColor];
    [v14 setTintColor:v15];
  }

  v16 = v14;
  v17 = sub_1001FD1F8(0x495443454E4E4F43, 0xEA0000000000474ELL);
  sub_1001E56EC(v17, v18, v16);

  (*(v5 + 8))(v10, v4);
  return v16;
}

id sub_1001E3BE0(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_1001E3C44(void *a1)
{
  v29[0] = a1;
  v1 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v1 - 8);
  v2 = sub_10014EA98(&qword_1003ADE38, &qword_1002FF4B0);
  __chkstk_darwin(v2 - 8);
  v4 = v29 - v3;
  v5 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UIButton.Configuration();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v29 - v14;
  v16 = (v10 + 32);
  if (_UISolariumEnabled())
  {
    static UIButton.Configuration._tintedGlass()();
    (*v16)(v15, v13, v9);
  }

  else
  {
    static UIButton.Configuration.filled()();
    (*v16)(v15, v13, v9);
    (*(v6 + 104))(v8, enum case for UIButton.Configuration.CornerStyle.capsule(_:), v5);
    UIButton.Configuration.cornerStyle.setter();
  }

  v17 = objc_opt_self();
  v18 = [v17 secondarySystemFillColor];
  UIButton.Configuration.baseBackgroundColor.setter();
  v19 = [v17 systemWhiteColor];
  UIButton.Configuration.baseForegroundColor.setter();
  sub_1000064BC(0, &qword_1003AAA98, UIImage_ptr);
  sub_1001FFAD8();
  UIButton.Configuration.image.setter();
  UIButton.Configuration.imagePadding.setter();
  v20 = [objc_opt_self() configurationWithScale:2];
  UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
  sub_1001FD1F8(0x574F4E5F544F4ELL, 0xE700000000000000);
  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  v21 = type metadata accessor for AttributedString();
  sub_100006848(v4, 0, 1, v21);
  UIButton.Configuration.attributedTitle.setter();
  v22 = UIButton.Configuration.attributedTitle.modify();
  if (!sub_100006AC0(v23, 1, v21))
  {
    v29[1] = [objc_opt_self() systemFontOfSize:15.0 weight:UIFontWeightBold];
    sub_1001E5698();
    AttributedString.subscript.setter();
  }

  v22(v30, 0);
  UIButton.Configuration.contentInsets.setter();
  sub_1000064BC(0, &qword_1003ABA20, UIButton_ptr);
  (*(v10 + 16))(v13, v15, v9);
  v24 = UIButton.init(configuration:primaryAction:)();
  [v24 setTranslatesAutoresizingMaskIntoConstraints:0];
  v25 = v29[0];
  [v24 addTarget:v29[0] action:"cancelButtonTapped" forControlEvents:64];
  [v24 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v26) = 1148846080;
  [v24 setContentCompressionResistancePriority:1 forAxis:v26];
  if (_UISolariumEnabled())
  {
    v27 = [v17 clearColor];
    [v24 setTintColor:v27];
  }

  [v25 addSubview:{v24, v29[0]}];
  [v24 setOverrideUserInterfaceStyle:2];
  [v24 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];

  (*(v10 + 8))(v15, v9);
  return v24;
}