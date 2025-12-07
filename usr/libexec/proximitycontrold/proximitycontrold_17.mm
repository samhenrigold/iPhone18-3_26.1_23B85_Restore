uint64_t sub_1001931C8()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_100349758);
  sub_100003078(v0, qword_100349758);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100193240@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for Retrier.RetryIntervalPolicy(0);
  __chkstk_darwin(v6);
  v8 = (&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100194684(v3, v8);
  result = swift_getEnumCaseMultiPayload();
  if (result)
  {
    if (result == 1)
    {
      if (__OFSUB__(a1, 1))
      {
        __break(1u);
      }

      else
      {
        v10 = *v8;
        if (*(v10 + 16) - 1 >= a1 - 1)
        {
          v11 = a1 - 1;
        }

        else
        {
          v11 = *(v10 + 16) - 1;
        }

        if ((v11 & 0x8000000000000000) == 0)
        {
          v12 = type metadata accessor for DispatchTimeInterval();
          (*(*(v12 - 8) + 16))(a2, v10 + ((*(*(v12 - 8) + 80) + 32) & ~*(*(v12 - 8) + 80)) + *(*(v12 - 8) + 72) * v11, v12);
        }
      }

      __break(1u);
    }

    else
    {
      *a2 = 0;
      v14 = enum case for DispatchTimeInterval.seconds(_:);
      v15 = type metadata accessor for DispatchTimeInterval();
      return (*(*(v15 - 8) + 104))(a2, v14, v15);
    }
  }

  else
  {
    v13 = type metadata accessor for DispatchTimeInterval();
    return (*(*(v13 - 8) + 32))(a2, v8, v13);
  }

  return result;
}

void sub_1001933FC()
{
  if (qword_100339120 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100003078(v0, qword_100349758);

  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v8 = v3;
    *v2 = 136315138;
    v4 = String.init<A>(describing:)();
    v6 = sub_100017494(v4, v5, &v8);

    *(v2 + 4) = v6;
    _os_log_impl(&_mh_execute_header, oslog, v1, "attemptState: %s", v2, 0xCu);
    sub_10000903C(v3);
  }

  else
  {
  }
}

void sub_100193598()
{
  v1 = v0;
  if (qword_100339120 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_100349758);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed", v5, 2u);
  }

  v6 = OBJC_IVAR____TtC17proximitycontrold7Retrier_attemptState;
  if (*(v1 + OBJC_IVAR____TtC17proximitycontrold7Retrier_attemptState))
  {
    if (*(v1 + 48))
    {
      goto LABEL_11;
    }
  }

  else
  {
    v7 = *(v1 + OBJC_IVAR____TtC17proximitycontrold7Retrier_attemptCount);
    v8 = __OFADD__(v7, 1);
    v9 = v7 + 1;
    if (v8)
    {
      __break(1u);
      return;
    }

    *(v1 + OBJC_IVAR____TtC17proximitycontrold7Retrier_attemptCount) = v9;
    *(v1 + v6) = 1;
    sub_1001933FC();
    if (*(v1 + 48))
    {
      goto LABEL_11;
    }
  }

  if (*(v1 + OBJC_IVAR____TtC17proximitycontrold7Retrier_attemptCount) >= *(v1 + 40))
  {
LABEL_12:
    *(v1 + v6) = 3;

    sub_1001933FC();
    return;
  }

LABEL_11:
  if (*(v1 + v6) == 2)
  {
    goto LABEL_12;
  }

  sub_1001938F4();
}

void sub_100193720()
{
  if (*(v0 + OBJC_IVAR____TtC17proximitycontrold7Retrier_attemptState) == 2)
  {

    sub_1001940C0();
  }

  else
  {
    if (qword_100339120 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100003078(v1, qword_100349758);

    oslog = Logger.logObject.getter();
    v2 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      v9 = v4;
      *v3 = 136315138;
      v5 = String.init<A>(describing:)();
      v7 = sub_100017494(v5, v6, &v9);

      *(v3 + 4) = v7;
      _os_log_impl(&_mh_execute_header, oslog, v2, "### Not retrying after delay. attemptState=%s", v3, 0xCu);
      sub_10000903C(v4);
    }

    else
    {
    }
  }
}

double sub_1001938F4()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v58 = *(v2 - 8);
  v59 = v2;
  __chkstk_darwin(v2);
  v56 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for DispatchQoS();
  v55 = *(v57 - 8);
  __chkstk_darwin(v57);
  v54 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchTime();
  v52 = *(v5 - 8);
  v53 = v5;
  v6 = __chkstk_darwin(v5);
  v50 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v51 = &v45 - v8;
  v9 = type metadata accessor for Retrier.RetryIntervalPolicy(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchTimeInterval();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v45 - v18;
  __chkstk_darwin(v17);
  v21 = &v45 - v20;
  sub_100194684(v1 + OBJC_IVAR____TtC17proximitycontrold7Retrier_retryInterval, v11);
  sub_100193240(*(v1 + OBJC_IVAR____TtC17proximitycontrold7Retrier_attemptCount), v21);
  sub_1001946E8(v11);
  if (qword_100339120 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_100003078(v22, qword_100349758);
  v23 = *(v13 + 16);
  v23(v19, v21, v12);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  v26 = os_log_type_enabled(v24, v25);
  v60 = v21;
  v49 = v12;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v46 = v1;
    v28 = v27;
    v29 = swift_slowAlloc();
    aBlock[0] = v29;
    *v28 = 136315138;
    v23(v16, v19, v12);
    v30 = String.init<A>(describing:)();
    v32 = v31;
    v33 = *(v13 + 8);
    v47 = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v48 = v33;
    v33(v19, v12);
    v34 = sub_100017494(v30, v32, aBlock);

    *(v28 + 4) = v34;
    _os_log_impl(&_mh_execute_header, v24, v25, "Scheduling retry. delay=%s", v28, 0xCu);
    sub_10000903C(v29);

    v1 = v46;
  }

  else
  {

    v35 = *(v13 + 8);
    v47 = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v48 = v35;
    v35(v19, v12);
  }

  *(v1 + OBJC_IVAR____TtC17proximitycontrold7Retrier_attemptState) = 2;
  sub_1001933FC();
  v46 = *(v1 + 32);
  v36 = v50;
  static DispatchTime.now()();
  v37 = v51;
  + infix(_:_:)();
  v38 = v53;
  v52 = *(v52 + 8);
  (v52)(v36, v53);
  v39 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_100194744;
  aBlock[5] = v39;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100018AB8;
  aBlock[3] = &unk_10030DBE8;
  v40 = _Block_copy(aBlock);

  v41 = v54;
  static DispatchQoS.unspecified.getter();
  v61 = _swiftEmptyArrayStorage;
  sub_10007E5B8();
  sub_100035D04(&unk_100343710, &qword_100271800);
  sub_10003F184();
  v42 = v56;
  v43 = v59;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v40);
  (*(v58 + 8))(v42, v43);
  (*(v55 + 8))(v41, v57);
  (v52)(v37, v38);
  v48(v60, v49);

  return result;
}

void sub_100193FA8(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_100193720();
  }

  else
  {
    if (qword_100339120 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100003078(v1, qword_100349758);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "### nil self after scheduled retry", v4, 2u);
    }
  }
}

double sub_1001940C0()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v1 + 32);
  *v5 = v6;
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  v9 = *(v3 + 8);
  v8 = v3 + 8;
  v9(v5, v2);
  if (v6)
  {
    v8 = OBJC_IVAR____TtC17proximitycontrold7Retrier_attemptCount;
    v10 = *(v1 + OBJC_IVAR____TtC17proximitycontrold7Retrier_attemptCount);
    v11 = __OFADD__(v10, 1);
    v12 = v10 + 1;
    if (!v11)
    {
      *(v1 + OBJC_IVAR____TtC17proximitycontrold7Retrier_attemptCount) = v12;
      *(v1 + OBJC_IVAR____TtC17proximitycontrold7Retrier_attemptState) = 1;
      sub_1001933FC();
      if (qword_100339120 == -1)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_10:
  swift_once();
LABEL_4:
  v13 = type metadata accessor for Logger();
  sub_100003078(v13, qword_100349758);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 134217984;
    *(v16 + 4) = *(v1 + v8);

    _os_log_impl(&_mh_execute_header, v14, v15, "Starting action. Attempts=%ld", v16, 0xCu);
  }

  else
  {
  }

  v17 = *(v1 + 16);

  v17(v18);

  return result;
}

void sub_100194300()
{
  v1 = v0;
  if (qword_100339120 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_100349758);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Succeeded", v5, 2u);
  }

  *(v1 + OBJC_IVAR____TtC17proximitycontrold7Retrier_attemptCount) = 0;
  *(v1 + OBJC_IVAR____TtC17proximitycontrold7Retrier_attemptState) = 0;

  sub_1001933FC();
}

uint64_t sub_100194404()
{

  sub_1001946E8(v0 + OBJC_IVAR____TtC17proximitycontrold7Retrier_retryInterval);

  return swift_deallocClassInstance();
}

uint64_t sub_100194480(uint64_t a1)
{
  result = type metadata accessor for Retrier.RetryIntervalPolicy(319);
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_100194560(uint64_t a1)
{
  type metadata accessor for DispatchTimeInterval();
  if (v1 <= 0x3F)
  {
    sub_1001945D4(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1001945D4(uint64_t a1)
{
  if (!qword_100349990)
  {
    type metadata accessor for DispatchTimeInterval();
    v1 = type metadata accessor for Array();
    if (!v2)
    {
      atomic_store(v1, &qword_100349990);
    }
  }
}

unint64_t sub_100194630()
{
  result = qword_1003499C0;
  if (!qword_1003499C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003499C0);
  }

  return result;
}

uint64_t sub_100194684(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Retrier.RetryIntervalPolicy(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001946E8(uint64_t a1)
{
  v2 = type metadata accessor for Retrier.RetryIntervalPolicy(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100194764(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0)
  {
    return v1 >> 62;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_100194780(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_1001947D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 2 * -a2;
      *(result + 32) = 0;
      *(result + 40) = 0;
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_100194838(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    result[3] = result[3] & 1 | (a2 << 62);
  }

  else
  {
    *result = (a2 - 2);
    result[1] = 0;
    result[2] = 0;
    result[3] = 0x8000000000000000;
    result[4] = 0;
    result[5] = 0;
  }

  return result;
}

uint64_t sub_100194884(uint64_t a1)
{
  if ((*(a1 + 56) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 56) & 3;
  }
}

uint64_t sub_1001948A0(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1 > 3)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1001948CC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1001948E8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3D && *(a1 + 58))
  {
    return (*a1 + 61);
  }

  v3 = (HIBYTE(*(a1 + 56)) & 0x3C | (*(a1 + 56) >> 14)) ^ 0x3F;
  if (v3 >= 0x3C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_10019493C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3C)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 61;
    if (a3 >= 0x3D)
    {
      *(result + 58) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3D)
    {
      *(result + 58) = 0;
    }

    if (a2)
    {
      *(result + 48) = 0;
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      *(result + 56) = (((-a2 >> 2) & 0xF) - 16 * a2) << 10;
    }
  }

  return result;
}

uint64_t sub_1001949E0(void *a1, uint64_t a2)
{
  v21 = a2;
  v3 = sub_100035D04(&qword_10034A0C8, &qword_100286BD8);
  v19 = *(v3 - 8);
  v20 = v3;
  __chkstk_darwin(v3);
  v18 = &v17 - v4;
  v5 = sub_100035D04(&qword_10034A0D0, &qword_100286BE0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - v7;
  v9 = sub_100035D04(&qword_10034A0D8, &qword_100286BE8);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17 - v11;
  sub_10000EBC0(a1, a1[3]);
  sub_1001A1440();
  v13 = v21;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if ((v13 & 0x8000000000) != 0)
  {
    v24 = 1;
    sub_1001A1494();
    v14 = v18;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v23 = v13;
    sub_1001A13EC();
    v15 = v20;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    (*(v19 + 8))(v14, v15);
  }

  else
  {
    v22 = 0;
    sub_1001A14E8();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    (*(v6 + 8))(v8, v5);
  }

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_100194CF4(void *a1, uint64_t a2)
{
  v4 = sub_100035D04(&qword_100349E58, &qword_100285698);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v9 - v6;
  sub_10000EBC0(a1, a1[3]);
  sub_10019F730();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9[1] = a2;
  sub_100035D04(&qword_100349E40, &qword_100285690);
  sub_10019F784(&qword_100349E60, sub_10019F850, &protocol conformance descriptor for <A> [A]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_100194E80()
{
  if (*v0)
  {
    return 0x6E6F69676572;
  }

  else
  {
    return 0x65636E6174736964;
  }
}

uint64_t sub_100194EB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65636E6174736964 && a2 == 0xE800000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F69676572 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100194F90(uint64_t a1)
{
  v2 = sub_1001A1440();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100194FCC(uint64_t a1)
{
  v2 = sub_1001A1440();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100195008(uint64_t a1)
{
  v2 = sub_1001A14E8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100195044(uint64_t a1)
{
  v2 = sub_1001A14E8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100195080(uint64_t a1)
{
  v2 = sub_1001A1494();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001950BC(uint64_t a1)
{
  v2 = sub_1001A1494();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001950F8@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_100199758(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 4) = BYTE4(result);
  }

  return result;
}

uint64_t sub_100195164@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7365756C6176 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1001951E8(uint64_t a1)
{
  v2 = sub_10019F730();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100195224(uint64_t a1)
{
  v2 = sub_10019F730();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_100195260@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_100199C84(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1001952A8(void *a1, uint64_t a2, int a3)
{
  v21 = a2;
  v20 = a3;
  v4 = sub_100035D04(&qword_10034A050, &qword_100286B98);
  v18 = *(v4 - 8);
  v19 = v4;
  __chkstk_darwin(v4);
  v6 = &v17 - v5;
  v7 = sub_100035D04(&qword_10034A058, &qword_100286BA0);
  v17 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v17 - v8;
  v10 = sub_100035D04(&qword_10034A060, &qword_100286BA8);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v17 - v12;
  sub_10000EBC0(a1, a1[3]);
  sub_1001A0DBC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = (v11 + 8);
  if (v20)
  {
    LOBYTE(v22) = 1;
    sub_1001A0E10();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v22 = v21;
    sub_1001A0F0C();
    v15 = v19;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v18 + 8))(v6, v15);
  }

  else
  {
    LOBYTE(v22) = 0;
    sub_1001A0EB8();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v22 = v21;
    sub_1001A0F0C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v17 + 8))(v9, v7);
  }

  return (*v14)(v13, v10);
}

uint64_t sub_1001955EC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v25 = a3;
  v29 = a5;
  v20 = a4;
  v24 = a2;
  v6 = sub_100035D04(&qword_100349CF0, &qword_1002855D0);
  v21 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v19 - v7;
  v9 = sub_100035D04(&qword_100349CF8, &qword_1002855D8);
  v22 = *(v9 - 8);
  v23 = v9;
  __chkstk_darwin(v9);
  v11 = &v19 - v10;
  v12 = sub_100035D04(&qword_100349D00, &qword_1002855E0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v19 - v14;
  sub_10000EBC0(a1, a1[3]);
  sub_10019DD38();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v29)
  {
    LOBYTE(v27) = 1;
    sub_10019DD8C();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v27 = v24;
    LOBYTE(v28) = v25 & 1;
    sub_10019DE88();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v21 + 8))(v8, v6);
  }

  else
  {
    LOBYTE(v27) = 0;
    sub_10019DDE0();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v27 = v24;
    v28 = v25;
    v30 = 0;
    sub_10019DEDC();
    v16 = v23;
    v17 = v26;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (v17)
    {
      (*(v22 + 8))(v11, v16);
      return (*(v13 + 8))(v15, v12);
    }

    v27 = v20;
    v30 = 1;
    sub_100035D04(&qword_100349CB0, &qword_1002855A8);
    sub_10019DF30(&qword_100349D10, &qword_100349D18, &unk_10028CA8C, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v22 + 8))(v11, v16);
  }

  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_1001959E4(void *a1, uint64_t a2, int a3)
{
  v14 = a3;
  v13 = a2;
  v4 = sub_100035D04(&qword_100349CC8, &qword_1002855B0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - v6;
  v8 = sub_100035D04(&qword_100349CD0, &qword_1002855B8);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v13 - v10;
  sub_10000EBC0(a1, a1[3]);
  sub_10019DB94();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_10019DBE8();
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  v15 = v13;
  v16 = v14 & 1;
  sub_10019DE88();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  (*(v5 + 8))(v7, v4);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_100195C04(void *a1)
{
  v2 = v1;
  v4 = sub_100035D04(&qword_100349A40, &qword_100284248);
  v42 = *(v4 - 8);
  v43 = v4;
  __chkstk_darwin(v4);
  v41 = &v31 - v5;
  v37 = sub_100035D04(&qword_100349A48, &qword_100284250);
  v36 = *(v37 - 8);
  __chkstk_darwin(v37);
  v35 = &v31 - v6;
  v7 = sub_100035D04(&qword_100349A50, &qword_100284258);
  v39 = *(v7 - 8);
  v40 = v7;
  __chkstk_darwin(v7);
  v9 = &v31 - v8;
  v34 = sub_100035D04(&qword_100349A58, &qword_100284260);
  v33 = *(v34 - 8);
  __chkstk_darwin(v34);
  v32 = &v31 - v10;
  v11 = sub_100035D04(&qword_100349A60, &qword_100284268);
  v38 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v31 - v12;
  v46 = sub_100035D04(&qword_100349A68, &qword_100284270);
  v44 = *(v46 - 8);
  __chkstk_darwin(v46);
  v15 = &v31 - v14;
  sub_10000EBC0(a1, a1[3]);
  sub_10019BC00();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = v2[1];
  v49 = *v2;
  v50 = v16;
  v51 = v2[2];
  v17 = v49;
  v18 = BYTE8(v16);
  if (*(&v16 + 1) >> 62)
  {
    if (*(&v16 + 1) >> 62 == 1)
    {
      *(&v50 + 1) = *(&v16 + 1) & 0x3FFFFFFFFFFFFFFFLL;
      sub_10019BEF4(&v49, v52);
      LOBYTE(v47[0]) = 4;
      sub_10019BC54();
      v19 = v41;
      v20 = v46;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      sub_10019BEF4(v52, v47);
      sub_10019BF0C();
      v21 = v43;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v22 = v42;
LABEL_4:
      (*(v22 + 8))(v19, v21);
      return (*(v44 + 8))(v15, v20);
    }

    v28 = *(&v51 + 1) | v51;
    if (*(&v16 + 1) != 0x8000000000000000 || v28 | v49 | v50 | *(&v49 + 1))
    {
      v20 = v46;
      if (*(&v16 + 1) != 0x8000000000000000 || v49 != 1 || v28 | v50 | *(&v49 + 1))
      {
        LOBYTE(v47[0]) = 3;
        sub_10019BCFC();
        v19 = v35;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        sub_10019BF60();
        v21 = v37;
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        v22 = v36;
        goto LABEL_4;
      }

      LOBYTE(v47[0]) = 1;
      sub_10019BE4C();
      v30 = v32;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v33 + 8))(v30, v34);
      return (*(v44 + 8))(v15, v20);
    }

    else
    {
      LOBYTE(v47[0]) = 0;
      sub_10019BEA0();
      v29 = v46;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v38 + 8))(v13, v11);
      return (*(v44 + 8))(v15, v29);
    }
  }

  else
  {
    v24 = *(&v49 + 1);
    v25 = v50;
    LOBYTE(v47[0]) = 2;
    sub_10019BDA4();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v47[0] = v17;
    v47[1] = v24;
    v47[2] = v25;
    v48 = v18 & 1;
    v53 = 0;
    sub_10019BFB4();
    v26 = v40;
    v27 = v45;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (v27)
    {
      (*(v39 + 8))(v9, v26);
      return (*(v44 + 8))(v15, v46);
    }

    else
    {
      LOBYTE(v47[0]) = 1;
      KeyedEncodingContainer.encode(_:forKey:)();
      (*(v39 + 8))(v9, v26);
      return (*(v44 + 8))(v15, v46);
    }
  }
}

uint64_t sub_100196340(void *a1)
{
  v2 = v1;
  v4 = sub_100035D04(&qword_100349AF0, &qword_1002842A0);
  v41 = *(v4 - 8);
  v42 = v4;
  __chkstk_darwin(v4);
  v40 = &v35 - v5;
  v6 = sub_100035D04(&qword_100349AF8, &qword_1002842A8);
  v38 = *(v6 - 8);
  v39 = v6;
  __chkstk_darwin(v6);
  v8 = &v35 - v7;
  v9 = sub_100035D04(&qword_100349B00, &qword_1002842B0);
  v36 = *(v9 - 8);
  v37 = v9;
  __chkstk_darwin(v9);
  v11 = &v35 - v10;
  v12 = sub_100035D04(&qword_100349B08, &qword_1002842B8);
  v35 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v35 - v13;
  v15 = sub_100035D04(&qword_100349B10, &qword_1002842C0);
  v43 = *(v15 - 8);
  v44 = v15;
  __chkstk_darwin(v15);
  v17 = &v35 - v16;
  sub_10000EBC0(a1, a1[3]);
  sub_10019CA00();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v18 = *v2;
  v19 = *(v2 + 28);
  v20 = v19 >> 14;
  if (v19 >> 14 > 1)
  {
    v24 = v2[1];
    v23 = v2[2];
    v26 = v2[3];
    v25 = v2[4];
    if (v20 == 2)
    {
      LOBYTE(v45) = 2;
      sub_10019CAFC();
      v27 = v44;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v45 = v18;
      v46 = v24;
      v47 = v23;
      v48 = v26;
      LOBYTE(v49) = v25;
      sub_10019CCF4();
      v28 = v39;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v38 + 8))(v8, v28);
      return (*(v43 + 8))(v17, v27);
    }

    else
    {
      v31 = v2[5];
      v39 = v2[6];
      v37 = v31;
      LODWORD(v38) = v19 & 0x3FFF;
      LOBYTE(v45) = 3;
      sub_10019CA54();
      v32 = v40;
      v33 = v44;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v45 = v18;
      v46 = v24;
      v47 = v23;
      v48 = v26;
      v49 = v25;
      v50 = v37;
      v51 = v39;
      v52 = v38;
      sub_10019CCA0();
      v34 = v42;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v41 + 8))(v32, v34);
      return (*(v43 + 8))(v17, v33);
    }
  }

  else if (v20)
  {
    LOBYTE(v45) = 1;
    sub_10019CBA4();
    v29 = v44;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    LODWORD(v45) = v18;
    BYTE4(v45) = BYTE4(v18);
    sub_10019CD48();
    v30 = v37;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v36 + 8))(v11, v30);
    return (*(v43 + 8))(v17, v29);
  }

  else
  {
    LOBYTE(v45) = 0;
    sub_10019CC4C();
    v21 = v44;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    KeyedEncodingContainer.encode(_:forKey:)();
    (*(v35 + 8))(v14, v12);
    return (*(v43 + 8))(v17, v21);
  }
}

uint64_t sub_1001968E8()
{
  if (*v0)
  {
    return 0x7465736E75;
  }

  else
  {
    return 7628147;
  }
}

uint64_t sub_100196918@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7628147 && a2 == 0xE300000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7465736E75 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1001969F0(uint64_t a1)
{
  v2 = sub_1001A0DBC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100196A2C(uint64_t a1)
{
  v2 = sub_1001A0DBC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100196A68(uint64_t a1)
{
  v2 = sub_1001A0EB8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100196AA4(uint64_t a1)
{
  v2 = sub_1001A0EB8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100196AE0(uint64_t a1)
{
  v2 = sub_1001A0E10();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100196B1C(uint64_t a1)
{
  v2 = sub_1001A0E10();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_100196B58@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_100199E38(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5 & 1;
  }

  return result;
}

uint64_t sub_100196BAC()
{
  if (*v0)
  {
    return 0x656469727265766FLL;
  }

  else
  {
    return 0x704168636E75616CLL;
  }
}

uint64_t sub_100196BEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x704168636E75616CLL && a2 == 0xE900000000000070;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656469727265766FLL && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100196CD0(uint64_t a1)
{
  v2 = sub_10019DD38();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100196D0C(uint64_t a1)
{
  v2 = sub_10019DD38();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100196D48()
{
  if (*v0)
  {
    return 0x736E6F6974706FLL;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_100196D78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100196E4C(uint64_t a1)
{
  v2 = sub_10019DDE0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100196E88(uint64_t a1)
{
  v2 = sub_10019DDE0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100196EC4(uint64_t a1)
{
  v2 = sub_10019DD8C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100196F00(uint64_t a1)
{
  v2 = sub_10019DD8C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100196F3C@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_10019A358(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
    *(a1 + 24) = v7 & 1;
  }

  return result;
}

uint64_t sub_100196FB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746E6573657270 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_100197038(uint64_t a1)
{
  v2 = sub_10019DC90();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100197074(uint64_t a1)
{
  v2 = sub_10019DC90();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001970B0(uint64_t a1)
{
  v2 = sub_10019DCE4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001970EC(uint64_t a1)
{
  v2 = sub_10019DCE4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100197140(void *a1)
{
  v2 = sub_100035D04(&qword_100349CE0, &qword_1002855C0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - v4;
  v6 = sub_100035D04(&qword_100349CE8, &qword_1002855C8);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11 - v8;
  sub_10000EBC0(a1, a1[3]);
  sub_10019DC90();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_10019DCE4();
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_100197330@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656469727265766FLL && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1001973B8(uint64_t a1)
{
  v2 = sub_10019DB94();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001973F4(uint64_t a1)
{
  v2 = sub_10019DB94();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100197430(uint64_t a1)
{
  v2 = sub_10019DBE8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10019746C(uint64_t a1)
{
  v2 = sub_10019DBE8();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_1001974A8@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_10019ACB8(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5 & 1;
  }

  return result;
}

uint64_t sub_1001974FC()
{
  v1 = *v0;
  v2 = 0x5374736575716572;
  v3 = 0x656369766564;
  v4 = 0x6B63616264656566;
  if (v1 != 3)
  {
    v4 = 0x6D6574737973;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1819044203;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100197590@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10019B04C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1001975C4(uint64_t a1)
{
  v2 = sub_10019BC00();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100197600(uint64_t a1)
{
  v2 = sub_10019BC00();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10019763C()
{
  if (*v0)
  {
    return 25705;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_100197658@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100197724(uint64_t a1)
{
  v2 = sub_10019BDA4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100197760(uint64_t a1)
{
  v2 = sub_10019BDA4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10019779C(uint64_t a1)
{
  v2 = sub_10019BCFC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001977D8(uint64_t a1)
{
  v2 = sub_10019BCFC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100197814(uint64_t a1)
{
  v2 = sub_10019BE4C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100197850(uint64_t a1)
{
  v2 = sub_10019BE4C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10019788C(uint64_t a1)
{
  v2 = sub_10019BEA0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001978C8(uint64_t a1)
{
  v2 = sub_10019BEA0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100197904(uint64_t a1)
{
  v2 = sub_10019BC54();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100197940(uint64_t a1)
{
  v2 = sub_10019BC54();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10019797C@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_10019B1F8(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

uint64_t sub_1001979E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 6580592 && a2 == 0xE300000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_100197A70(uint64_t a1)
{
  v2 = sub_10019F634();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100197AAC(uint64_t a1)
{
  v2 = sub_10019F634();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100197AE8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100035D04(&qword_100349DC0, &qword_100285630);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  sub_10000EBC0(a1, a1[3]);
  sub_10019F634();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000903C(a1);
  }

  v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  result = sub_10000903C(a1);
  *a2 = v9;
  *(a2 + 4) = BYTE4(v9) & 1;
  return result;
}

uint64_t sub_100197C68(void *a1)
{
  v3 = sub_100035D04(&qword_100349E28, &qword_100285680);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9[-v5];
  v7 = *(v1 + 4);
  sub_10000EBC0(a1, a1[3]);
  sub_10019F634();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9[28] = v7;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_100197DB0()
{
  v1 = 6580592;
  v2 = 0xD000000000000015;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000018;
  }

  if (*v0)
  {
    v1 = 0x6574617473;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100197E24@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10019C008(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100197E4C(uint64_t a1)
{
  v2 = sub_10019CA00();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100197E88(uint64_t a1)
{
  v2 = sub_10019CA00();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100197EC4(uint64_t a1)
{
  v2 = sub_10019CAFC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100197F00(uint64_t a1)
{
  v2 = sub_10019CAFC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100197F3C(uint64_t a1)
{
  v2 = sub_10019CC4C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100197F78(uint64_t a1)
{
  v2 = sub_10019CC4C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100197FB4(uint64_t a1)
{
  v2 = sub_10019CA54();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100197FF0(uint64_t a1)
{
  v2 = sub_10019CA54();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10019802C(uint64_t a1)
{
  v2 = sub_10019CBA4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100198068(uint64_t a1)
{
  v2 = sub_10019CBA4();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1001980A4@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  result = sub_10019C174(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    a1[2] = v7[0];
    result = *(v7 + 10);
    *(a1 + 42) = *(v7 + 10);
  }

  return result;
}

uint64_t sub_100198108(void *a1)
{
  v2 = v1;
  v4 = sub_100035D04(&qword_100349E00, &qword_100285658);
  v34 = *(v4 - 8);
  v35 = v4;
  __chkstk_darwin(v4);
  v33 = &v27 - v5;
  v6 = sub_100035D04(&qword_100349E08, &qword_100285660);
  v31 = *(v6 - 8);
  v32 = v6;
  __chkstk_darwin(v6);
  v8 = &v27 - v7;
  v9 = sub_100035D04(&qword_100349E10, &qword_100285668);
  v28 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v27 - v10;
  v12 = sub_100035D04(&qword_100349E18, &qword_100285670);
  v29 = *(v12 - 8);
  v30 = v12;
  __chkstk_darwin(v12);
  v14 = &v27 - v13;
  v15 = sub_100035D04(&qword_100349E20, &qword_100285678);
  v37 = *(v15 - 8);
  v38 = v15;
  __chkstk_darwin(v15);
  v17 = &v27 - v16;
  sub_10000EBC0(a1, a1[3]);
  sub_10019F490();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (*(v2 + 32) > 1u)
  {
    if (*(v2 + 32) == 2)
    {
      v43 = 2;
      sub_10019F538();
      v22 = v38;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v23 = v32;
      KeyedEncodingContainer.encode(_:forKey:)();
      (*(v31 + 8))(v8, v23);
      return (*(v37 + 8))(v17, v22);
    }

    v44 = 3;
    sub_10019F4E4();
    v25 = v33;
    v24 = v38;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v26 = v35;
    KeyedEncodingContainer.encode(_:forKey:)();
    (*(v34 + 8))(v25, v26);
    return (*(v37 + 8))(v17, v24);
  }

  if (*(v2 + 32))
  {
    v42 = 1;
    sub_10019F58C();
    v24 = v38;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    KeyedEncodingContainer.encode(_:forKey:)();
    (*(v28 + 8))(v11, v9);
    return (*(v37 + 8))(v17, v24);
  }

  v41 = 0;
  sub_10019F5E0();
  v18 = v38;
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  v40 = 0;
  v19 = v30;
  v20 = v36;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v20)
  {
    v39 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  (*(v29 + 8))(v14, v19);
  return (*(v37 + 8))(v17, v18);
}

uint64_t sub_100198684(void *a1)
{
  v2 = v1;
  v4 = sub_100035D04(&qword_100349DD0, &qword_100285638);
  v30 = *(v4 - 8);
  v31 = v4;
  __chkstk_darwin(v4);
  v29 = &v25 - v5;
  v6 = sub_100035D04(&qword_100349DD8, &qword_100285640);
  v27 = *(v6 - 8);
  v28 = v6;
  __chkstk_darwin(v6);
  v8 = &v25 - v7;
  v9 = sub_100035D04(&qword_100349DE0, &qword_100285648);
  v26 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v25 - v10;
  v32 = sub_100035D04(&qword_100349DE8, &qword_100285650);
  v12 = *(v32 - 8);
  __chkstk_darwin(v32);
  v14 = &v25 - v13;
  sub_10000EBC0(a1, a1[3]);
  sub_10019F298();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = *v2;
  v15 = v2[1];
  if (*(v2 + 57))
  {
    if (*(v2 + 57) == 1)
    {
      LOBYTE(v33) = 1;
      sub_10019F394();
      v17 = v32;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v18 = v28;
      KeyedEncodingContainer.encode(_:forKey:)();
      (*(v27 + 8))(v8, v18);
      return (*(v12 + 8))(v14, v17);
    }

    else
    {
      LOBYTE(v33) = 2;
      sub_10019F2EC();
      v21 = v29;
      v22 = v32;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v33 = v16;
      v34 = v15;
      v23 = *(v2 + 2);
      *v35 = *(v2 + 1);
      *&v35[16] = v23;
      *&v35[25] = *(v2 + 41);
      sub_10019F688();
      v24 = v31;
      KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
      (*(v30 + 8))(v21, v24);
      return (*(v12 + 8))(v14, v22);
    }
  }

  else
  {
    LOBYTE(v33) = 0;
    sub_10019F3E8();
    v20 = v32;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v33 = v16;
    v34 = v15;
    *v35 = *(v2 + 1);
    *&v35[14] = *(v2 + 30);
    sub_10019F6DC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v26 + 8))(v11, v9);
    return (*(v12 + 8))(v14, v20);
  }
}

uint64_t sub_100198AF0()
{
  v1 = 0x436E6F6973736573;
  v2 = 0x746E657665;
  if (*v0 != 2)
  {
    v2 = 0x746365666665;
  }

  if (*v0)
  {
    v1 = 0x6168436574617473;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100198B78@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10019DFFC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100198BA0(uint64_t a1)
{
  v2 = sub_10019F490();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100198BDC(uint64_t a1)
{
  v2 = sub_10019F490();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100198C18(uint64_t a1)
{
  v2 = sub_10019F4E4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100198C54(uint64_t a1)
{
  v2 = sub_10019F4E4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100198C90(uint64_t a1)
{
  v2 = sub_10019F538();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100198CCC(uint64_t a1)
{
  v2 = sub_10019F538();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100198D08()
{
  if (*v0)
  {
    return 0x614E656369766564;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_100198D3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x614E656369766564 && a2 == 0xEA0000000000656DLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100198E18(uint64_t a1)
{
  v2 = sub_10019F5E0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100198E54(uint64_t a1)
{
  v2 = sub_10019F5E0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100198E90(uint64_t a1)
{
  v2 = sub_10019F58C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100198ECC(uint64_t a1)
{
  v2 = sub_10019F58C();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100198F08@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_10019E164(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

unint64_t sub_100198F68()
{
  v1 = 0x6F4C656369766564;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7055656369766564;
  }
}

uint64_t sub_100198FD4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10019EA30(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100198FFC(uint64_t a1)
{
  v2 = sub_10019F298();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100199038(uint64_t a1)
{
  v2 = sub_10019F298();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100199074(uint64_t a1)
{
  v2 = sub_10019F394();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001990B0(uint64_t a1)
{
  v2 = sub_10019F394();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001990EC(uint64_t a1)
{
  v2 = sub_10019F3E8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100199128(uint64_t a1)
{
  v2 = sub_10019F3E8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100199164(uint64_t a1)
{
  v2 = sub_10019F2EC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001991A0(uint64_t a1)
{
  v2 = sub_10019F2EC();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1001991DC@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  result = sub_10019EB5C(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    a1[2] = v7[0];
    result = *(v7 + 10);
    *(a1 + 42) = *(v7 + 10);
  }

  return result;
}

uint64_t sub_100199240()
{
  v1 = v0;
  _StringGuts.grow(_:)(19);

  v2 = *v0;
  v3 = v1[1];

  sub_10000B584(8, v2, v3);

  v4 = static String._fromSubstring(_:)();
  v6 = v5;

  v7._countAndFlagsBits = v4;
  v7._object = v6;
  String.append(_:)(v7);

  v8._countAndFlagsBits = 32;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);
  if (v1[3])
  {
    v9 = v1[2];
    v10 = v1[3];
  }

  else
  {
    v10 = 0xE700000000000000;
    v9 = 0x454D414E5F4F4ELL;
  }

  v11._countAndFlagsBits = v9;
  v11._object = v10;
  String.append(_:)(v11);

  v12._countAndFlagsBits = 0x636E617473696420;
  v12._object = 0xEA00000000003D65;
  String.append(_:)(v12);
  if (*(v1 + 36))
  {
    v13 = 0xE300000000000000;
    v14 = 7104878;
  }

  else
  {
    v14 = String.init<A>(describing:)();
    v13 = v15;
  }

  v16 = v13;
  String.append(_:)(*&v14);

  v17._countAndFlagsBits = 62;
  v17._object = 0xE100000000000000;
  String.append(_:)(v17);
  return 60;
}

uint64_t sub_1001993E0(void *a1)
{
  v3 = v1;
  v5 = sub_100035D04(&qword_10034A088, &qword_100286BB8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7];
  sub_10000EBC0(a1, a1[3]);
  sub_1001A1344();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v11[14] = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = *(v3 + 36);
    v11[13] = 2;
    v11[12] = v9;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v11[11] = *(v3 + 37);
    v11[10] = 3;
    sub_1001A13EC();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1001995F0()
{
  v1 = 25705;
  v2 = 0x65636E6174736964;
  if (*v0 != 2)
  {
    v2 = 0x6E6F69676572;
  }

  if (*v0)
  {
    v1 = 1701667182;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100199654@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1001A0F60(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10019967C(uint64_t a1)
{
  v2 = sub_1001A1344();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001996B8(uint64_t a1)
{
  v2 = sub_1001A1344();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1001996F4@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1001A10B8(a2, &v6);
  if (!v2)
  {
    result = *&v6;
    v5 = *v7;
    *a1 = v6;
    *(a1 + 16) = v5;
    *(a1 + 30) = *&v7[14];
  }

  return result;
}

uint64_t sub_100199758(void *a1)
{
  v28 = sub_100035D04(&qword_10034A098, &qword_100286BC0);
  v30 = *(v28 - 8);
  __chkstk_darwin(v28);
  v3 = &v27 - v2;
  v4 = sub_100035D04(&qword_10034A0A0, &qword_100286BC8);
  v29 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v27 - v5;
  v7 = sub_100035D04(&qword_10034A0A8, &qword_100286BD0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v27 - v9;
  v11 = a1[3];
  v32 = a1;
  v12 = sub_10000EBC0(a1, v11);
  sub_1001A1440();
  v13 = v31;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v13)
  {
    v31 = v8;
    v14 = KeyedDecodingContainer.allKeys.getter();
    v15 = (2 * *(v14 + 16)) | 1;
    v33 = v14;
    v34 = v14 + 32;
    v35 = 0;
    v36 = v15;
    v16 = sub_10021800C();
    v17 = v7;
    if (v16 == 2 || v35 != v36 >> 1)
    {
      v12 = v10;
      v20 = type metadata accessor for DecodingError();
      swift_allocError();
      v22 = v21;
      sub_100035D04(&qword_10033EA78, &qword_100275A60);
      *v22 = &type metadata for ProxControlDemoClientMessage.OverrideMessage.Overrides.Value;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v20 - 8) + 104))(v22, enum case for DecodingError.typeMismatch(_:), v20);
      swift_willThrow();
      (*(v31 + 8))(v10, v7);
      swift_unknownObjectRelease();
    }

    else if (v16)
    {
      v37 = 1;
      sub_1001A1494();
      v18 = v10;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v19 = v31;
      sub_1001A1398();
      v25 = v28;
      KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
      (*(v30 + 8))(v3, v25);
      (*(v19 + 8))(v18, v17);
      swift_unknownObjectRelease();
      v12 = v37 | 0x8000000000;
    }

    else
    {
      v37 = 0;
      sub_1001A14E8();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v24 = v31;
      v26 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      (*(v29 + 8))(v6, v4);
      (*(v24 + 8))(v10, v7);
      swift_unknownObjectRelease();
      v12 = v26 & 0x1FFFFFFFFLL;
    }
  }

  sub_10000903C(v32);
  return v12;
}

void *sub_100199C84(void *a1)
{
  v3 = sub_100035D04(&qword_100349E30, &qword_100285688);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - v5;
  v7 = sub_10000EBC0(a1, a1[3]);
  sub_10019F730();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_10000903C(a1);
  }

  else
  {
    sub_100035D04(&qword_100349E40, &qword_100285690);
    sub_10019F784(&qword_100349E48, sub_10019F7FC, &protocol conformance descriptor for <A> [A]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    sub_10000903C(a1);
  }

  return v7;
}

void *sub_100199E38(void *a1)
{
  v27 = sub_100035D04(&qword_10034A018, &qword_100286B80);
  v29 = *(v27 - 8);
  __chkstk_darwin(v27);
  v3 = v26 - v2;
  v4 = sub_100035D04(&qword_10034A020, &qword_100286B88);
  v28 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v26 - v5;
  v7 = sub_100035D04(&qword_10034A028, &qword_100286B90);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v26 - v9;
  v11 = a1[3];
  v31 = a1;
  v12 = sub_10000EBC0(a1, v11);
  sub_1001A0DBC();
  v13 = v30;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v13)
  {
    goto LABEL_7;
  }

  v14 = v3;
  v30 = v8;
  v15 = v10;
  v16 = KeyedDecodingContainer.allKeys.getter();
  v17 = (2 * *(v16 + 16)) | 1;
  v32 = v16;
  v33 = v16 + 32;
  v34 = 0;
  v35 = v17;
  v18 = sub_10021800C();
  v19 = v7;
  if (v18 == 2 || v34 != v35 >> 1)
  {
    v22 = type metadata accessor for DecodingError();
    swift_allocError();
    v24 = v23;
    sub_100035D04(&qword_10033EA78, &qword_100275A60);
    *v24 = &type metadata for ProxControlDemoClientMessage.OverrideMessage;
    v12 = v15;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v22 - 8) + 104))(v24, enum case for DecodingError.typeMismatch(_:), v22);
    swift_willThrow();
    (*(v30 + 8))(v15, v7);
    swift_unknownObjectRelease();
LABEL_7:
    sub_10000903C(v31);
    return v12;
  }

  v26[1] = v18;
  if (v18)
  {
    LOBYTE(v36) = 1;
    sub_1001A0E10();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v20 = v30;
    sub_1001A0E64();
    v21 = v27;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v29 + 8))(v14, v21);
  }

  else
  {
    LOBYTE(v36) = 0;
    sub_1001A0EB8();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v20 = v30;
    sub_1001A0E64();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v28 + 8))(v6, v4);
  }

  (*(v20 + 8))(v15, v19);
  swift_unknownObjectRelease();
  v12 = v36;
  sub_10000903C(v31);
  return v12;
}

uint64_t sub_10019A358(void *a1)
{
  v27 = sub_100035D04(&qword_100349C78, &qword_100285590);
  v25 = *(v27 - 8);
  __chkstk_darwin(v27);
  v3 = v24 - v2;
  v4 = sub_100035D04(&qword_100349C80, &qword_100285598);
  v26 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v24 - v5;
  v7 = sub_100035D04(&qword_100349C88, &qword_1002855A0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v24 - v9;
  v11 = a1[3];
  v29 = a1;
  sub_10000EBC0(a1, v11);
  sub_10019DD38();
  v12 = v28;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v12)
  {
    v13 = v27;
    v28 = v8;
    v14 = KeyedDecodingContainer.allKeys.getter();
    v15 = (2 * *(v14 + 16)) | 1;
    v32 = v14;
    v33 = v14 + 32;
    v34 = 0;
    v35 = v15;
    v16 = sub_10021800C();
    if (v16 == 2 || v34 != v35 >> 1)
    {
      v18 = type metadata accessor for DecodingError();
      swift_allocError();
      v20 = v19;
      sub_100035D04(&qword_10033EA78, &qword_100275A60);
      v4 = v7;
      *v20 = &type metadata for ProxControlDemoClientMessage.DeviceMessage;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v18 - 8) + 104))(v20, enum case for DecodingError.typeMismatch(_:), v18);
      swift_willThrow();
      (*(v28 + 8))(v10, v7);
      swift_unknownObjectRelease();
    }

    else
    {
      v24[3] = v16;
      if (v16)
      {
        LOBYTE(v31) = 1;
        sub_10019DD8C();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v17 = v28;
        sub_10019DC3C();
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v25 + 8))(v3, v13);
        (*(v17 + 8))(v10, v7);
        swift_unknownObjectRelease();
        v4 = v31;
      }

      else
      {
        LOBYTE(v31) = 0;
        sub_10019DDE0();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v22 = v28;
        v27 = v10;
        LOBYTE(v36) = 0;
        sub_10019DE34();
        v23 = v4;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v4 = v31;
        sub_100035D04(&qword_100349CB0, &qword_1002855A8);
        v30 = 1;
        sub_10019DF30(&qword_100349CB8, &qword_100349CC0, &unk_10028CA64, &protocol conformance descriptor for <A> [A]);
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v26 + 8))(v6, v23);
        (*(v22 + 8))(v27, v7);
        swift_unknownObjectRelease();
      }
    }
  }

  sub_10000903C(v29);
  return v4;
}

uint64_t sub_10019A96C(void *a1)
{
  v3 = sub_100035D04(&qword_100349C58, &qword_100285580);
  v25 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v19 - v4;
  v6 = sub_100035D04(&qword_100349C60, &qword_100285588);
  v20 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v19 - v7;
  sub_10000EBC0(a1, a1[3]);
  sub_10019DC90();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    goto LABEL_6;
  }

  v19 = a1;
  v9 = v25;
  v10 = v20;
  v11 = KeyedDecodingContainer.allKeys.getter();
  v12 = (2 * *(v11 + 16)) | 1;
  v21 = v11;
  v22 = v11 + 32;
  v23 = 0;
  v24 = v12;
  if ((sub_100218014() & 1) != 0 || v23 != v24 >> 1)
  {
    v13 = v6;
    v14 = type metadata accessor for DecodingError();
    swift_allocError();
    v16 = v15;
    sub_100035D04(&qword_10033EA78, &qword_100275A60);
    *v16 = &type metadata for ProxControlDemoClientMessage.FeedbackMessage;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v14 - 8) + 104))(v16, enum case for DecodingError.typeMismatch(_:), v14);
    swift_willThrow();
    (*(v10 + 8))(v8, v13);
    swift_unknownObjectRelease();
    a1 = v19;
LABEL_6:
    v18 = a1;
    return sub_10000903C(v18);
  }

  sub_10019DCE4();
  KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  (*(v9 + 8))(v5, v3);
  (*(v10 + 8))(v8, v6);
  swift_unknownObjectRelease();
  v18 = v19;
  return sub_10000903C(v18);
}

void *sub_10019ACB8(void *a1)
{
  v3 = sub_100035D04(&qword_100349C30, &qword_100285570);
  v27 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v20 - v4;
  v6 = sub_100035D04(&qword_100349C38, &qword_100285578);
  v21 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v20 - v7;
  v9 = sub_10000EBC0(a1, a1[3]);
  sub_10019DB94();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    goto LABEL_6;
  }

  v20 = a1;
  v10 = v27;
  v11 = v21;
  v12 = KeyedDecodingContainer.allKeys.getter();
  v13 = (2 * *(v12 + 16)) | 1;
  v23 = v12;
  v24 = v12 + 32;
  v25 = 0;
  v26 = v13;
  v14 = v8;
  if ((sub_100218014() & 1) != 0 || v25 != v26 >> 1)
  {
    v15 = v6;
    v16 = type metadata accessor for DecodingError();
    swift_allocError();
    v18 = v17;
    sub_100035D04(&qword_10033EA78, &qword_100275A60);
    *v18 = &type metadata for ProxControlDemoClientMessage.SystemMessage;
    v9 = v14;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v16 - 8) + 104))(v18, enum case for DecodingError.typeMismatch(_:), v16);
    swift_willThrow();
    (*(v11 + 8))(v14, v15);
    swift_unknownObjectRelease();
    a1 = v20;
LABEL_6:
    sub_10000903C(a1);
    return v9;
  }

  sub_10019DBE8();
  KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  sub_10019DC3C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v10 + 8))(v5, v3);
  (*(v11 + 8))(v8, v6);
  swift_unknownObjectRelease();
  v9 = v22;
  sub_10000903C(v20);
  return v9;
}

uint64_t sub_10019B04C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x5374736575716572 && a2 == 0xEC00000065746174;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1819044203 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656369766564 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6B63616264656566 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6D6574737973 && a2 == 0xE600000000000000)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_10019B1F8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v55 = a2;
  v3 = sub_100035D04(&qword_1003499C8, &qword_100284210);
  v4 = *(v3 - 8);
  v51 = v3;
  v52 = v4;
  __chkstk_darwin(v3);
  v53 = &v42 - v5;
  v48 = sub_100035D04(&qword_1003499D0, &qword_100284218);
  v50 = *(v48 - 8);
  __chkstk_darwin(v48);
  v54 = &v42 - v6;
  v46 = sub_100035D04(&qword_1003499D8, &qword_100284220);
  v49 = *(v46 - 8);
  __chkstk_darwin(v46);
  v56 = &v42 - v7;
  v44 = sub_100035D04(&qword_1003499E0, &qword_100284228);
  v47 = *(v44 - 8);
  __chkstk_darwin(v44);
  v9 = &v42 - v8;
  v10 = sub_100035D04(&qword_1003499E8, &qword_100284230);
  v45 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v42 - v11;
  v13 = sub_100035D04(&qword_1003499F0, &unk_100284238);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v42 - v15;
  v17 = a1[3];
  v58 = a1;
  sub_10000EBC0(a1, v17);
  sub_10019BC00();
  v18 = v57;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v18)
  {
    return sub_10000903C(v58);
  }

  v57 = v10;
  v19 = v54;
  v43 = v14;
  v20 = v55;
  v21 = KeyedDecodingContainer.allKeys.getter();
  v22 = (2 * *(v21 + 16)) | 1;
  v63 = v21;
  v64 = v21 + 32;
  v65 = 0;
  v66 = v22;
  v23 = sub_100218020();
  if (v23 == 5 || v65 != v66 >> 1)
  {
    v26 = type metadata accessor for DecodingError();
    swift_allocError();
    v28 = v27;
    sub_100035D04(&qword_10033EA78, &qword_100275A60);
    *v28 = &type metadata for ProxControlDemoClientMessage;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v26 - 8) + 104))(v28, enum case for DecodingError.typeMismatch(_:), v26);
    swift_willThrow();
    (*(v43 + 8))(v16, v13);
    swift_unknownObjectRelease();
    return sub_10000903C(v58);
  }

  if (v23 <= 1u)
  {
    if (v23)
    {
      LOBYTE(v59) = 1;
      sub_10019BE4C();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v47 + 8))(v9, v44);
      (*(v43 + 8))(v16, v13);
      swift_unknownObjectRelease();
      v36 = 0;
      v37 = 0;
      v38 = 0;
      v39 = 0;
      v40 = 0x8000000000000000;
      v41 = 1;
    }

    else
    {
      LOBYTE(v59) = 0;
      sub_10019BEA0();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v45 + 8))(v12, v57);
      (*(v43 + 8))(v16, v13);
      swift_unknownObjectRelease();
      v41 = 0;
      v36 = 0;
      v37 = 0;
      v38 = 0;
      v39 = 0;
      v40 = 0x8000000000000000;
    }
  }

  else if (v23 == 2)
  {
    LOBYTE(v59) = 2;
    sub_10019BDA4();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v57 = v16;
    v67 = 0;
    sub_10019BDF8();
    v32 = v46;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v53 = v13;
    v41 = v59;
    v36 = v60;
    v37 = v61;
    v40 = v62;
    v67 = 1;
    v33 = KeyedDecodingContainer.decode(_:forKey:)();
    v39 = v34;
    v35 = (v43 + 8);
    v54 = 0;
    v38 = v33;
    (*(v49 + 8))(v56, v32);
    (*v35)(v57, v53);
    swift_unknownObjectRelease();
  }

  else
  {
    v24 = v43;
    if (v23 == 3)
    {
      LOBYTE(v59) = 3;
      sub_10019BCFC();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      sub_10019BD50();
      v25 = v48;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v50 + 8))(v19, v25);
      (*(v24 + 8))(v16, v13);
      swift_unknownObjectRelease();
      v36 = 0;
      v37 = 0;
      v38 = 0;
      v39 = 0;
      v40 = 0x8000000000000000;
      v41 = 2;
    }

    else
    {
      LOBYTE(v59) = 4;
      sub_10019BC54();
      v30 = v53;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      sub_10019BCA8();
      v31 = v51;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v52 + 8))(v30, v31);
      (*(v24 + 8))(v16, v13);
      swift_unknownObjectRelease();
      v37 = 0;
      v38 = 0;
      v39 = 0;
      v41 = v59;
      v36 = v60;
      v40 = 0x4000000000000000;
    }
  }

  result = sub_10000903C(v58);
  *v20 = v41;
  v20[1] = v36;
  v20[2] = v37;
  v20[3] = v40;
  v20[4] = v38;
  v20[5] = v39;
  return result;
}

unint64_t sub_10019BC00()
{
  result = qword_1003499F8;
  if (!qword_1003499F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003499F8);
  }

  return result;
}

unint64_t sub_10019BC54()
{
  result = qword_100349A00;
  if (!qword_100349A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349A00);
  }

  return result;
}

unint64_t sub_10019BCA8()
{
  result = qword_100349A08;
  if (!qword_100349A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349A08);
  }

  return result;
}

unint64_t sub_10019BCFC()
{
  result = qword_100349A10;
  if (!qword_100349A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349A10);
  }

  return result;
}

unint64_t sub_10019BD50()
{
  result = qword_100349A18;
  if (!qword_100349A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349A18);
  }

  return result;
}

unint64_t sub_10019BDA4()
{
  result = qword_100349A20;
  if (!qword_100349A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349A20);
  }

  return result;
}

unint64_t sub_10019BDF8()
{
  result = qword_100349A28;
  if (!qword_100349A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349A28);
  }

  return result;
}

unint64_t sub_10019BE4C()
{
  result = qword_100349A30;
  if (!qword_100349A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349A30);
  }

  return result;
}

unint64_t sub_10019BEA0()
{
  result = qword_100349A38;
  if (!qword_100349A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349A38);
  }

  return result;
}

uint64_t sub_10019BEF4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *a2 = v2;
  return a2;
}

unint64_t sub_10019BF0C()
{
  result = qword_100349A70;
  if (!qword_100349A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349A70);
  }

  return result;
}

unint64_t sub_10019BF60()
{
  result = qword_100349A78;
  if (!qword_100349A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349A78);
  }

  return result;
}

unint64_t sub_10019BFB4()
{
  result = qword_100349A80;
  if (!qword_100349A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349A80);
  }

  return result;
}

uint64_t sub_10019C008(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6580592 && a2 == 0xE300000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001002A3840 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001002A3860 == a2)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

double sub_10019C174@<D0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v47 = a2;
  v43 = sub_100035D04(&qword_100349A88, &qword_100284278);
  v46 = *(v43 - 8);
  __chkstk_darwin(v43);
  v49 = &v38 - v3;
  v4 = sub_100035D04(&qword_100349A90, &qword_100284280);
  v5 = *(v4 - 8);
  v44 = v4;
  v45 = v5;
  __chkstk_darwin(v4);
  v48 = &v38 - v6;
  v41 = sub_100035D04(&qword_100349A98, &qword_100284288);
  v42 = *(v41 - 8);
  __chkstk_darwin(v41);
  v8 = &v38 - v7;
  v9 = sub_100035D04(&qword_100349AA0, &qword_100284290);
  v40 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = (&v38 - v10);
  v12 = sub_100035D04(&qword_100349AA8, &qword_100284298);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v38 - v14;
  v16 = a1[3];
  v51 = a1;
  sub_10000EBC0(a1, v16);
  sub_10019CA00();
  v17 = v50;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v17)
  {
    goto LABEL_8;
  }

  v39 = v11;
  v18 = v8;
  v20 = v48;
  v19 = v49;
  *&v50 = v13;
  v21 = KeyedDecodingContainer.allKeys.getter();
  v22 = (2 * *(v21 + 16)) | 1;
  v59 = v21;
  v60 = v21 + 32;
  v61 = 0;
  v62 = v22;
  v23 = sub_100218018();
  if (v23 == 4 || v61 != v62 >> 1)
  {
    v29 = type metadata accessor for DecodingError();
    swift_allocError();
    v31 = v30;
    sub_100035D04(&qword_10033EA78, &qword_100275A60);
    *v31 = &type metadata for ProxControlDemoServerMessage;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v29 - 8) + 104))(v31, enum case for DecodingError.typeMismatch(_:), v29);
    swift_willThrow();
    (*(v50 + 8))(v15, v12);
    swift_unknownObjectRelease();
LABEL_8:
    sub_10000903C(v51);
    return result;
  }

  if (v23 > 1u)
  {
    v33 = v50;
    if (v23 == 2)
    {
      LOBYTE(v52) = 2;
      sub_10019CAFC();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      sub_10019CB50();
      v34 = v44;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v45 + 8))(v20, v34);
      (*(v33 + 8))(v15, v12);
      swift_unknownObjectRelease();
      v26 = v52;
      v50 = v53;
      v25 = v54;
      v15 = v55;
      v12 = HIDWORD(v52);
      v28 = v52 & 0xFFFFFF0000000000;
      v27 = 0x8000;
    }

    else
    {
      LOBYTE(v52) = 3;
      sub_10019CA54();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      sub_10019CAA8();
      v36 = v43;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v46 + 8))(v19, v36);
      (*(v33 + 8))(v15, v12);
      swift_unknownObjectRelease();
      v26 = v52;
      v50 = v53;
      v25 = v54;
      v15 = v55;
      v9 = v57;
      v49 = v56;
      v27 = v58 & 0x3FF | 0xC000;
      v12 = HIDWORD(v52);
      v28 = v52 & 0xFFFFFF0000000000;
    }
  }

  else if (v23)
  {
    LOBYTE(v52) = 1;
    sub_10019CBA4();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    sub_10019CBF8();
    v35 = v41;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v25 = (v50 + 8);
    (*(v42 + 8))(v18, v35);
    (*v25)(v15, v12);
    swift_unknownObjectRelease();
    v28 = 0;
    v26 = v52;
    LOBYTE(v12) = BYTE4(v52);
    v63 = BYTE4(v52);
    v27 = 0x4000;
  }

  else
  {
    LOBYTE(v52) = 0;
    sub_10019CC4C();
    v24 = v39;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v25 = v24;
    v26 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v40 + 8))(v24, v9);
    (*(v50 + 8))(v15, v12);
    swift_unknownObjectRelease();
    v27 = 0;
    LOBYTE(v12) = 0;
    v28 = 0;
  }

  sub_10000903C(v51);
  v37 = v47;
  *v47 = v28 | (v12 << 32) | v26;
  result = *&v50;
  *(v37 + 1) = v50;
  v37[3] = v25;
  v37[4] = v15;
  v37[5] = v49;
  v37[6] = v9;
  *(v37 + 28) = v27;
  return result;
}

unint64_t sub_10019CA00()
{
  result = qword_100349AB0;
  if (!qword_100349AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349AB0);
  }

  return result;
}

unint64_t sub_10019CA54()
{
  result = qword_100349AB8;
  if (!qword_100349AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349AB8);
  }

  return result;
}

unint64_t sub_10019CAA8()
{
  result = qword_100349AC0;
  if (!qword_100349AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349AC0);
  }

  return result;
}

unint64_t sub_10019CAFC()
{
  result = qword_100349AC8;
  if (!qword_100349AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349AC8);
  }

  return result;
}

unint64_t sub_10019CB50()
{
  result = qword_100349AD0;
  if (!qword_100349AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349AD0);
  }

  return result;
}

unint64_t sub_10019CBA4()
{
  result = qword_100349AD8;
  if (!qword_100349AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349AD8);
  }

  return result;
}

unint64_t sub_10019CBF8()
{
  result = qword_100349AE0;
  if (!qword_100349AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349AE0);
  }

  return result;
}

unint64_t sub_10019CC4C()
{
  result = qword_100349AE8;
  if (!qword_100349AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349AE8);
  }

  return result;
}

unint64_t sub_10019CCA0()
{
  result = qword_100349B18;
  if (!qword_100349B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349B18);
  }

  return result;
}

unint64_t sub_10019CCF4()
{
  result = qword_100349B20;
  if (!qword_100349B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349B20);
  }

  return result;
}

unint64_t sub_10019CD48()
{
  result = qword_100349B28;
  if (!qword_100349B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349B28);
  }

  return result;
}

uint64_t sub_10019CE7C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10019CEC4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_10019CF28(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 58))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 57);
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

uint64_t sub_10019CF70(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 58) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 58) = 0;
    }

    if (a2)
    {
      *(result + 57) = -a2;
    }
  }

  return result;
}

uint64_t sub_10019CFDC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 33))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 32);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10019D024(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

unint64_t sub_10019D098()
{
  result = qword_100349B30;
  if (!qword_100349B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349B30);
  }

  return result;
}

unint64_t sub_10019D0F0()
{
  result = qword_100349B38;
  if (!qword_100349B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349B38);
  }

  return result;
}

unint64_t sub_10019D148()
{
  result = qword_100349B40;
  if (!qword_100349B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349B40);
  }

  return result;
}

unint64_t sub_10019D1A0()
{
  result = qword_100349B48;
  if (!qword_100349B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349B48);
  }

  return result;
}

unint64_t sub_10019D1F8()
{
  result = qword_100349B50;
  if (!qword_100349B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349B50);
  }

  return result;
}

unint64_t sub_10019D250()
{
  result = qword_100349B58;
  if (!qword_100349B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349B58);
  }

  return result;
}

unint64_t sub_10019D2A8()
{
  result = qword_100349B60;
  if (!qword_100349B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349B60);
  }

  return result;
}

unint64_t sub_10019D300()
{
  result = qword_100349B68;
  if (!qword_100349B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349B68);
  }

  return result;
}

unint64_t sub_10019D358()
{
  result = qword_100349B70;
  if (!qword_100349B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349B70);
  }

  return result;
}

unint64_t sub_10019D3B0()
{
  result = qword_100349B78;
  if (!qword_100349B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349B78);
  }

  return result;
}

unint64_t sub_10019D408()
{
  result = qword_100349B80;
  if (!qword_100349B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349B80);
  }

  return result;
}

unint64_t sub_10019D460()
{
  result = qword_100349B88;
  if (!qword_100349B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349B88);
  }

  return result;
}

unint64_t sub_10019D4B8()
{
  result = qword_100349B90;
  if (!qword_100349B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349B90);
  }

  return result;
}

unint64_t sub_10019D510()
{
  result = qword_100349B98;
  if (!qword_100349B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349B98);
  }

  return result;
}

unint64_t sub_10019D568()
{
  result = qword_100349BA0;
  if (!qword_100349BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349BA0);
  }

  return result;
}

unint64_t sub_10019D5C0()
{
  result = qword_100349BA8;
  if (!qword_100349BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349BA8);
  }

  return result;
}

unint64_t sub_10019D618()
{
  result = qword_100349BB0;
  if (!qword_100349BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349BB0);
  }

  return result;
}

unint64_t sub_10019D670()
{
  result = qword_100349BB8;
  if (!qword_100349BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349BB8);
  }

  return result;
}

unint64_t sub_10019D6C8()
{
  result = qword_100349BC0;
  if (!qword_100349BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349BC0);
  }

  return result;
}

unint64_t sub_10019D720()
{
  result = qword_100349BC8;
  if (!qword_100349BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349BC8);
  }

  return result;
}

unint64_t sub_10019D778()
{
  result = qword_100349BD0;
  if (!qword_100349BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349BD0);
  }

  return result;
}

unint64_t sub_10019D7D0()
{
  result = qword_100349BD8;
  if (!qword_100349BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349BD8);
  }

  return result;
}

unint64_t sub_10019D828()
{
  result = qword_100349BE0;
  if (!qword_100349BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349BE0);
  }

  return result;
}

unint64_t sub_10019D880()
{
  result = qword_100349BE8;
  if (!qword_100349BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349BE8);
  }

  return result;
}

unint64_t sub_10019D8D8()
{
  result = qword_100349BF0;
  if (!qword_100349BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349BF0);
  }

  return result;
}

unint64_t sub_10019D930()
{
  result = qword_100349BF8;
  if (!qword_100349BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349BF8);
  }

  return result;
}

unint64_t sub_10019D988()
{
  result = qword_100349C00;
  if (!qword_100349C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349C00);
  }

  return result;
}

unint64_t sub_10019D9E0()
{
  result = qword_100349C08;
  if (!qword_100349C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349C08);
  }

  return result;
}

unint64_t sub_10019DA38()
{
  result = qword_100349C10;
  if (!qword_100349C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349C10);
  }

  return result;
}

unint64_t sub_10019DA90()
{
  result = qword_100349C18;
  if (!qword_100349C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349C18);
  }

  return result;
}

unint64_t sub_10019DAE8()
{
  result = qword_100349C20;
  if (!qword_100349C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349C20);
  }

  return result;
}

unint64_t sub_10019DB40()
{
  result = qword_100349C28;
  if (!qword_100349C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349C28);
  }

  return result;
}

unint64_t sub_10019DB94()
{
  result = qword_100349C40;
  if (!qword_100349C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349C40);
  }

  return result;
}

unint64_t sub_10019DBE8()
{
  result = qword_100349C48;
  if (!qword_100349C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349C48);
  }

  return result;
}

unint64_t sub_10019DC3C()
{
  result = qword_100349C50;
  if (!qword_100349C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349C50);
  }

  return result;
}

unint64_t sub_10019DC90()
{
  result = qword_100349C68;
  if (!qword_100349C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349C68);
  }

  return result;
}

unint64_t sub_10019DCE4()
{
  result = qword_100349C70;
  if (!qword_100349C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349C70);
  }

  return result;
}

unint64_t sub_10019DD38()
{
  result = qword_100349C90;
  if (!qword_100349C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349C90);
  }

  return result;
}

unint64_t sub_10019DD8C()
{
  result = qword_100349C98;
  if (!qword_100349C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349C98);
  }

  return result;
}

unint64_t sub_10019DDE0()
{
  result = qword_100349CA0;
  if (!qword_100349CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349CA0);
  }

  return result;
}

unint64_t sub_10019DE34()
{
  result = qword_100349CA8;
  if (!qword_100349CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349CA8);
  }

  return result;
}

unint64_t sub_10019DE88()
{
  result = qword_100349CD8;
  if (!qword_100349CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349CD8);
  }

  return result;
}

unint64_t sub_10019DEDC()
{
  result = qword_100349D08;
  if (!qword_100349D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349D08);
  }

  return result;
}

uint64_t sub_10019DF30(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100035D4C(&qword_100349CB0, &qword_1002855A8);
    sub_10019DFB8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10019DFB8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LaunchAppRequest.Option(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10019DFFC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x436E6F6973736573 && a2 == 0xEE006465676E6168;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6168436574617473 && a2 == 0xEC0000006465676ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746E657665 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746365666665 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_10019E164@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v73 = sub_100035D04(&qword_100349D70, &qword_100285608);
  v68 = *(v73 - 8);
  __chkstk_darwin(v73);
  v72 = &v61 - v3;
  v67 = sub_100035D04(&qword_100349D78, &qword_100285610);
  v69 = *(v67 - 8);
  __chkstk_darwin(v67);
  v71 = &v61 - v4;
  v5 = sub_100035D04(&qword_100349D80, &qword_100285618);
  v6 = *(v5 - 8);
  v65 = v5;
  v66 = v6;
  __chkstk_darwin(v5);
  v8 = &v61 - v7;
  v9 = sub_100035D04(&qword_100349D88, &qword_100285620);
  v64 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v61 - v10;
  v12 = sub_100035D04(&qword_100349D90, &qword_100285628);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v61 - v14;
  v16 = a1[3];
  v75 = a1;
  sub_10000EBC0(a1, v16);
  sub_10019F490();
  v17 = v74;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v17)
  {
    return sub_10000903C(v75);
  }

  v61 = v9;
  v62 = v8;
  v18 = v11;
  v20 = v71;
  v19 = v72;
  v63 = 0;
  v21 = v73;
  v74 = v13;
  v22 = KeyedDecodingContainer.allKeys.getter();
  v23 = (2 * *(v22 + 16)) | 1;
  v76 = v22;
  v77 = v22 + 32;
  v78 = 0;
  v79 = v23;
  v24 = sub_100218018();
  v25 = v12;
  if (v24 == 4 || v78 != v79 >> 1)
  {
    v27 = type metadata accessor for DecodingError();
    swift_allocError();
    v29 = v28;
    sub_100035D04(&qword_10033EA78, &qword_100275A60);
    *v29 = &type metadata for HandoffSessionMessage;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v27 - 8) + 104))(v29, enum case for DecodingError.typeMismatch(_:), v27);
    swift_willThrow();
    (*(v74 + 8))(v15, v12);
    goto LABEL_9;
  }

  v80 = v24;
  if (v24 > 1u)
  {
    v31 = v70;
    if (v24 == 2)
    {
      v81 = 2;
      sub_10019F538();
      v32 = v20;
      v33 = v25;
      v34 = v63;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v35 = v74;
      if (!v34)
      {
        v36 = v31;
        v37 = v67;
        v38 = 0;
        v47 = KeyedDecodingContainer.decode(_:forKey:)();
        v49 = v48;
        v63 = 0;
        (*(v69 + 8))(v32, v37);
        (*(v35 + 8))(v15, v25);
        swift_unknownObjectRelease();
        v50 = 0;
        v51 = v36;
        goto LABEL_21;
      }
    }

    else
    {
      v81 = 3;
      sub_10019F4E4();
      v41 = v19;
      v33 = v25;
      v42 = v63;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v35 = v74;
      if (!v42)
      {
        v45 = KeyedDecodingContainer.decode(_:forKey:)();
        v46 = v41;
        v49 = v58;
        v63 = 0;
        v59 = v45;
        v51 = v31;
        (*(v68 + 8))(v46, v21);
        v47 = v59;
        (*(v35 + 8))(v15, v25);
        swift_unknownObjectRelease();
        v50 = 0;
        v38 = 0;
        goto LABEL_21;
      }
    }

    (*(v35 + 8))(v15, v33);
    goto LABEL_9;
  }

  if (v24)
  {
    v81 = 1;
    sub_10019F58C();
    v40 = v62;
    v39 = v63;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    if (v39)
    {
      goto LABEL_7;
    }

    v44 = v65;
    v38 = 0;
    v56 = KeyedDecodingContainer.decode(_:forKey:)();
    v49 = v57;
    v63 = 0;
    (*(v66 + 8))(v40, v44);
    (*(v74 + 8))(v15, v25);
    v47 = v56;
    swift_unknownObjectRelease();
    v50 = 0;
    v51 = v70;
  }

  else
  {
    v81 = 0;
    sub_10019F5E0();
    v26 = v63;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    if (v26)
    {
LABEL_7:
      (*(v74 + 8))(v15, v25);
LABEL_9:
      swift_unknownObjectRelease();
      return sub_10000903C(v75);
    }

    v81 = 0;
    v43 = v61;
    v72 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v73 = v52;
    v53 = v15;
    v81 = 1;
    v54 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v55 = (v74 + 8);
    v63 = 0;
    v50 = v54;
    v38 = v60;
    (*(v64 + 8))(v18, v43);
    (*v55)(v53, v25);
    swift_unknownObjectRelease();
    v51 = v70;
    v47 = v72;
    v49 = v73;
  }

LABEL_21:
  result = sub_10000903C(v75);
  *v51 = v47;
  *(v51 + 8) = v49;
  *(v51 + 16) = v50;
  *(v51 + 24) = v38;
  *(v51 + 32) = v80;
  return result;
}

uint64_t sub_10019EA30(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7055656369766564 && a2 == 0xEC00000065746164;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F4C656369766564 && a2 == 0xEA00000000007473 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001002A3880 == a2)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

double sub_10019EB5C@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v40 = sub_100035D04(&qword_100349D20, &qword_1002855E8);
  v42 = *(v40 - 8);
  __chkstk_darwin(v40);
  v43 = &v37 - v3;
  v38 = sub_100035D04(&qword_100349D28, &qword_1002855F0);
  v41 = *(v38 - 8);
  __chkstk_darwin(v38);
  v5 = &v37 - v4;
  v6 = sub_100035D04(&qword_100349D30, &qword_1002855F8);
  v39 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v37 - v7;
  v9 = sub_100035D04(&qword_100349D38, &qword_100285600);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v37 - v11;
  v13 = a1[3];
  v46 = a1;
  sub_10000EBC0(a1, v13);
  sub_10019F298();
  v14 = v45;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v14)
  {
    goto LABEL_8;
  }

  v37 = v6;
  *&v45 = v10;
  v15 = v43;
  v16 = v44;
  v17 = v12;
  v18 = KeyedDecodingContainer.allKeys.getter();
  v19 = (2 * *(v18 + 16)) | 1;
  v55 = v18;
  v56 = v18 + 32;
  v57 = 0;
  v58 = v19;
  v20 = sub_100218008();
  if (v20 == 3 || v57 != v58 >> 1)
  {
    v25 = type metadata accessor for DecodingError();
    swift_allocError();
    v27 = v26;
    sub_100035D04(&qword_10033EA78, &qword_100275A60);
    *v27 = &type metadata for RangingProxyStateMessage;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v25 - 8) + 104))(v27, enum case for DecodingError.typeMismatch(_:), v25);
    swift_willThrow();
    (*(v45 + 8))(v17, v9);
    swift_unknownObjectRelease();
LABEL_8:
    sub_10000903C(v46);
    return result;
  }

  v59 = v20;
  if (v20)
  {
    if (v20 == 1)
    {
      LOBYTE(v47) = 1;
      sub_10019F394();
      v21 = v5;
      v8 = v17;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v22 = v38;
      v23 = KeyedDecodingContainer.decode(_:forKey:)();
      v24 = v21;
      v33 = v23;
      v35 = v34;
      (*(v41 + 8))(v24, v22);
      v36 = v45 + 8;
      (*(v45 + 8))(v8, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      LOBYTE(v47) = 2;
      sub_10019F2EC();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      sub_10019F340();
      v22 = v40;
      KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
      v32 = v45;
      (*(v42 + 8))(v15, v22);
      (*(v32 + 8))(v12, v9);
      swift_unknownObjectRelease();
      v33 = v47;
      v35 = v48;
      v45 = v49;
      LODWORD(v8) = v50;
      v36 = v51;
      LOBYTE(v22) = v52;
      *v54 = *v53;
      *(&v54[1] + 7) = *&v53[15];
    }
  }

  else
  {
    LOBYTE(v47) = 0;
    sub_10019F3E8();
    v29 = v12;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    sub_10019F43C();
    v30 = v37;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v31 = v45;
    (*(v39 + 8))(v8, v30);
    (*(v31 + 8))(v29, v9);
    swift_unknownObjectRelease();
    v33 = v47;
    v35 = v48;
    v45 = v49;
    LODWORD(v8) = v50;
    v36 = v51;
    LOBYTE(v22) = v52;
    v60 = v51;
  }

  sub_10000903C(v46);
  *v16 = v33;
  *(v16 + 8) = v35;
  *(v16 + 16) = v45;
  *(v16 + 32) = v8;
  *(v16 + 36) = v36;
  *(v16 + 37) = v22;
  result = v54[0];
  *(v16 + 38) = *v54;
  *(v16 + 53) = *(&v54[1] + 7);
  *(v16 + 57) = v59;
  return result;
}

unint64_t sub_10019F298()
{
  result = qword_100349D40;
  if (!qword_100349D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349D40);
  }

  return result;
}

unint64_t sub_10019F2EC()
{
  result = qword_100349D48;
  if (!qword_100349D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349D48);
  }

  return result;
}

unint64_t sub_10019F340()
{
  result = qword_100349D50;
  if (!qword_100349D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349D50);
  }

  return result;
}

unint64_t sub_10019F394()
{
  result = qword_100349D58;
  if (!qword_100349D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349D58);
  }

  return result;
}

unint64_t sub_10019F3E8()
{
  result = qword_100349D60;
  if (!qword_100349D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349D60);
  }

  return result;
}

unint64_t sub_10019F43C()
{
  result = qword_100349D68;
  if (!qword_100349D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349D68);
  }

  return result;
}

unint64_t sub_10019F490()
{
  result = qword_100349D98;
  if (!qword_100349D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349D98);
  }

  return result;
}

unint64_t sub_10019F4E4()
{
  result = qword_100349DA0;
  if (!qword_100349DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349DA0);
  }

  return result;
}

unint64_t sub_10019F538()
{
  result = qword_100349DA8;
  if (!qword_100349DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349DA8);
  }

  return result;
}

unint64_t sub_10019F58C()
{
  result = qword_100349DB0;
  if (!qword_100349DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349DB0);
  }

  return result;
}

unint64_t sub_10019F5E0()
{
  result = qword_100349DB8;
  if (!qword_100349DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349DB8);
  }

  return result;
}

unint64_t sub_10019F634()
{
  result = qword_100349DC8;
  if (!qword_100349DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349DC8);
  }

  return result;
}

unint64_t sub_10019F688()
{
  result = qword_100349DF0;
  if (!qword_100349DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349DF0);
  }

  return result;
}

unint64_t sub_10019F6DC()
{
  result = qword_100349DF8;
  if (!qword_100349DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349DF8);
  }

  return result;
}

unint64_t sub_10019F730()
{
  result = qword_100349E38;
  if (!qword_100349E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349E38);
  }

  return result;
}

uint64_t sub_10019F784(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_100035D4C(&qword_100349E40, &qword_100285690);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10019F7FC()
{
  result = qword_100349E50;
  if (!qword_100349E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349E50);
  }

  return result;
}

unint64_t sub_10019F850()
{
  result = qword_100349E68;
  if (!qword_100349E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349E68);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ProxControlDemoClientMessage.OverrideMessage.Overrides.Value(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 5))
  {
    return (*a1 + 127);
  }

  v3 = ((*(a1 + 4) >> 7) & 0xFFFFFF81 | (2 * ((*(a1 + 4) >> 1) & 0x3F))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for ProxControlDemoClientMessage.OverrideMessage.Overrides.Value(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 4) = 0;
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 4) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

__n128 sub_10019FAC0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 30) = *(a2 + 30);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10019FAD4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 38))
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

uint64_t sub_10019FB1C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 36) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 38) = 1;
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

    *(result + 38) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10019FB88()
{
  result = qword_100349E70;
  if (!qword_100349E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349E70);
  }

  return result;
}

unint64_t sub_10019FBE0()
{
  result = qword_100349E78;
  if (!qword_100349E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349E78);
  }

  return result;
}

unint64_t sub_10019FC38()
{
  result = qword_100349E80;
  if (!qword_100349E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349E80);
  }

  return result;
}

unint64_t sub_10019FC90()
{
  result = qword_100349E88;
  if (!qword_100349E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349E88);
  }

  return result;
}

unint64_t sub_10019FCE8()
{
  result = qword_100349E90;
  if (!qword_100349E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349E90);
  }

  return result;
}

unint64_t sub_10019FD40()
{
  result = qword_100349E98;
  if (!qword_100349E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349E98);
  }

  return result;
}

unint64_t sub_10019FD98()
{
  result = qword_100349EA0;
  if (!qword_100349EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349EA0);
  }

  return result;
}

unint64_t sub_10019FDF0()
{
  result = qword_100349EA8;
  if (!qword_100349EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349EA8);
  }

  return result;
}

unint64_t sub_10019FE48()
{
  result = qword_100349EB0;
  if (!qword_100349EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349EB0);
  }

  return result;
}

unint64_t sub_10019FEA0()
{
  result = qword_100349EB8;
  if (!qword_100349EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349EB8);
  }

  return result;
}

unint64_t sub_10019FEF8()
{
  result = qword_100349EC0;
  if (!qword_100349EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349EC0);
  }

  return result;
}

unint64_t sub_10019FF50()
{
  result = qword_100349EC8;
  if (!qword_100349EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349EC8);
  }

  return result;
}

unint64_t sub_10019FFA8()
{
  result = qword_100349ED0;
  if (!qword_100349ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349ED0);
  }

  return result;
}

unint64_t sub_1001A0000()
{
  result = qword_100349ED8;
  if (!qword_100349ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349ED8);
  }

  return result;
}

unint64_t sub_1001A0058()
{
  result = qword_100349EE0;
  if (!qword_100349EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349EE0);
  }

  return result;
}

unint64_t sub_1001A00B0()
{
  result = qword_100349EE8;
  if (!qword_100349EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349EE8);
  }

  return result;
}

unint64_t sub_1001A0108()
{
  result = qword_100349EF0;
  if (!qword_100349EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349EF0);
  }

  return result;
}

unint64_t sub_1001A0160()
{
  result = qword_100349EF8;
  if (!qword_100349EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349EF8);
  }

  return result;
}

unint64_t sub_1001A01B8()
{
  result = qword_100349F00;
  if (!qword_100349F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349F00);
  }

  return result;
}

unint64_t sub_1001A0210()
{
  result = qword_100349F08;
  if (!qword_100349F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349F08);
  }

  return result;
}

unint64_t sub_1001A0268()
{
  result = qword_100349F10;
  if (!qword_100349F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349F10);
  }

  return result;
}

unint64_t sub_1001A02C0()
{
  result = qword_100349F18;
  if (!qword_100349F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349F18);
  }

  return result;
}

unint64_t sub_1001A0318()
{
  result = qword_100349F20;
  if (!qword_100349F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349F20);
  }

  return result;
}

unint64_t sub_1001A0370()
{
  result = qword_100349F28;
  if (!qword_100349F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349F28);
  }

  return result;
}

unint64_t sub_1001A03C8()
{
  result = qword_100349F30;
  if (!qword_100349F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349F30);
  }

  return result;
}

unint64_t sub_1001A0420()
{
  result = qword_100349F38;
  if (!qword_100349F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349F38);
  }

  return result;
}

unint64_t sub_1001A0478()
{
  result = qword_100349F40;
  if (!qword_100349F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349F40);
  }

  return result;
}

unint64_t sub_1001A04D0()
{
  result = qword_100349F48;
  if (!qword_100349F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349F48);
  }

  return result;
}

unint64_t sub_1001A0528()
{
  result = qword_100349F50;
  if (!qword_100349F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349F50);
  }

  return result;
}

unint64_t sub_1001A0580()
{
  result = qword_100349F58;
  if (!qword_100349F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349F58);
  }

  return result;
}

unint64_t sub_1001A05D8()
{
  result = qword_100349F60;
  if (!qword_100349F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349F60);
  }

  return result;
}

unint64_t sub_1001A0630()
{
  result = qword_100349F68;
  if (!qword_100349F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349F68);
  }

  return result;
}

unint64_t sub_1001A0688()
{
  result = qword_100349F70;
  if (!qword_100349F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349F70);
  }

  return result;
}

unint64_t sub_1001A06E0()
{
  result = qword_100349F78;
  if (!qword_100349F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349F78);
  }

  return result;
}

unint64_t sub_1001A0738()
{
  result = qword_100349F80;
  if (!qword_100349F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349F80);
  }

  return result;
}

unint64_t sub_1001A0790()
{
  result = qword_100349F88;
  if (!qword_100349F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349F88);
  }

  return result;
}

unint64_t sub_1001A07E8()
{
  result = qword_100349F90;
  if (!qword_100349F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349F90);
  }

  return result;
}

unint64_t sub_1001A0840()
{
  result = qword_100349F98;
  if (!qword_100349F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349F98);
  }

  return result;
}

unint64_t sub_1001A0898()
{
  result = qword_100349FA0;
  if (!qword_100349FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349FA0);
  }

  return result;
}

unint64_t sub_1001A08F0()
{
  result = qword_100349FA8;
  if (!qword_100349FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349FA8);
  }

  return result;
}

unint64_t sub_1001A0948()
{
  result = qword_100349FB0;
  if (!qword_100349FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349FB0);
  }

  return result;
}

unint64_t sub_1001A09A0()
{
  result = qword_100349FB8;
  if (!qword_100349FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349FB8);
  }

  return result;
}

unint64_t sub_1001A09F8()
{
  result = qword_100349FC0;
  if (!qword_100349FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349FC0);
  }

  return result;
}

unint64_t sub_1001A0A50()
{
  result = qword_100349FC8;
  if (!qword_100349FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349FC8);
  }

  return result;
}

unint64_t sub_1001A0AA8()
{
  result = qword_100349FD0;
  if (!qword_100349FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349FD0);
  }

  return result;
}

unint64_t sub_1001A0B00()
{
  result = qword_100349FD8;
  if (!qword_100349FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349FD8);
  }

  return result;
}

unint64_t sub_1001A0B58()
{
  result = qword_100349FE0;
  if (!qword_100349FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349FE0);
  }

  return result;
}

unint64_t sub_1001A0BB0()
{
  result = qword_100349FE8;
  if (!qword_100349FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349FE8);
  }

  return result;
}

unint64_t sub_1001A0C08()
{
  result = qword_100349FF0;
  if (!qword_100349FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349FF0);
  }

  return result;
}

unint64_t sub_1001A0C60()
{
  result = qword_100349FF8;
  if (!qword_100349FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349FF8);
  }

  return result;
}

unint64_t sub_1001A0CB8()
{
  result = qword_10034A000;
  if (!qword_10034A000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034A000);
  }

  return result;
}

unint64_t sub_1001A0D10()
{
  result = qword_10034A008;
  if (!qword_10034A008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034A008);
  }

  return result;
}

unint64_t sub_1001A0D68()
{
  result = qword_10034A010;
  if (!qword_10034A010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034A010);
  }

  return result;
}

unint64_t sub_1001A0DBC()
{
  result = qword_10034A030;
  if (!qword_10034A030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034A030);
  }

  return result;
}

unint64_t sub_1001A0E10()
{
  result = qword_10034A038;
  if (!qword_10034A038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034A038);
  }

  return result;
}

unint64_t sub_1001A0E64()
{
  result = qword_10034A040;
  if (!qword_10034A040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034A040);
  }

  return result;
}

unint64_t sub_1001A0EB8()
{
  result = qword_10034A048;
  if (!qword_10034A048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034A048);
  }

  return result;
}

unint64_t sub_1001A0F0C()
{
  result = qword_10034A068;
  if (!qword_10034A068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034A068);
  }

  return result;
}

uint64_t sub_1001A0F60(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65636E6174736964 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F69676572 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1001A10B8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100035D04(&qword_10034A070, &qword_100286BB0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - v7;
  sub_10000EBC0(a1, a1[3]);
  sub_1001A1344();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000903C(a1);
  }

  v26 = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v10;
  v21 = v9;
  v25 = 1;
  v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v14 = v13;
  v20 = v12;
  v24 = 2;
  v19 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v22 = 3;
  sub_1001A1398();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v15 = v23;
  result = sub_10000903C(a1);
  v17 = v20;
  *a2 = v21;
  *(a2 + 8) = v11;
  *(a2 + 16) = v17;
  *(a2 + 24) = v14;
  BYTE4(v17) = BYTE4(v19);
  *(a2 + 32) = v19;
  *(a2 + 36) = BYTE4(v17) & 1;
  *(a2 + 37) = v15;
  return result;
}

unint64_t sub_1001A1344()
{
  result = qword_10034A078;
  if (!qword_10034A078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034A078);
  }

  return result;
}

unint64_t sub_1001A1398()
{
  result = qword_10034A080;
  if (!qword_10034A080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034A080);
  }

  return result;
}

unint64_t sub_1001A13EC()
{
  result = qword_10034A090;
  if (!qword_10034A090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034A090);
  }

  return result;
}

unint64_t sub_1001A1440()
{
  result = qword_10034A0B0;
  if (!qword_10034A0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034A0B0);
  }

  return result;
}

unint64_t sub_1001A1494()
{
  result = qword_10034A0B8;
  if (!qword_10034A0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034A0B8);
  }

  return result;
}

unint64_t sub_1001A14E8()
{
  result = qword_10034A0C0;
  if (!qword_10034A0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034A0C0);
  }

  return result;
}

unint64_t sub_1001A15B0()
{
  result = qword_10034A0E0;
  if (!qword_10034A0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034A0E0);
  }

  return result;
}

unint64_t sub_1001A1608()
{
  result = qword_10034A0E8;
  if (!qword_10034A0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034A0E8);
  }

  return result;
}

unint64_t sub_1001A1660()
{
  result = qword_10034A0F0;
  if (!qword_10034A0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034A0F0);
  }

  return result;
}

unint64_t sub_1001A16B8()
{
  result = qword_10034A0F8;
  if (!qword_10034A0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034A0F8);
  }

  return result;
}

unint64_t sub_1001A1710()
{
  result = qword_10034A100;
  if (!qword_10034A100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034A100);
  }

  return result;
}

unint64_t sub_1001A1768()
{
  result = qword_10034A108;
  if (!qword_10034A108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034A108);
  }

  return result;
}

unint64_t sub_1001A17C0()
{
  result = qword_10034A110;
  if (!qword_10034A110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034A110);
  }

  return result;
}

unint64_t sub_1001A1818()
{
  result = qword_10034A118;
  if (!qword_10034A118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034A118);
  }

  return result;
}

unint64_t sub_1001A1870()
{
  result = qword_10034A120;
  if (!qword_10034A120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034A120);
  }

  return result;
}

unint64_t sub_1001A18C8()
{
  result = qword_10034A128;
  if (!qword_10034A128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034A128);
  }

  return result;
}

unint64_t sub_1001A1920()
{
  result = qword_10034A130;
  if (!qword_10034A130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034A130);
  }

  return result;
}

unint64_t sub_1001A1978()
{
  result = qword_10034A138;
  if (!qword_10034A138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034A138);
  }

  return result;
}

unint64_t sub_1001A19D0()
{
  result = qword_10034A140;
  if (!qword_10034A140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034A140);
  }

  return result;
}

unint64_t sub_1001A1A28()
{
  result = qword_10034A148;
  if (!qword_10034A148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034A148);
  }

  return result;
}

unint64_t sub_1001A1A80()
{
  result = qword_10034A150;
  if (!qword_10034A150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034A150);
  }

  return result;
}

unint64_t sub_1001A1AD8()
{
  result = qword_10034A158;
  if (!qword_10034A158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034A158);
  }

  return result;
}

unint64_t sub_1001A1B30()
{
  result = qword_10034A160;
  if (!qword_10034A160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034A160);
  }

  return result;
}

unint64_t sub_1001A1B88()
{
  result = qword_10034A168;
  if (!qword_10034A168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034A168);
  }

  return result;
}

unint64_t sub_1001A1BE0()
{
  result = qword_10034A170;
  if (!qword_10034A170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034A170);
  }

  return result;
}

unint64_t sub_1001A1C38()
{
  result = qword_10034A178;
  if (!qword_10034A178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034A178);
  }

  return result;
}

unint64_t sub_1001A1C90()
{
  result = qword_10034A180;
  if (!qword_10034A180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034A180);
  }

  return result;
}

uint64_t sub_1001A1CF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1001A1DF0()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10034A190);
  sub_100003078(v0, qword_10034A190);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1001A1E70()
{
  sub_100035D04(&unk_10034A300, &unk_1002746D0);
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 1;
  off_10034A1A8 = result;
  return result;
}

uint64_t sub_1001A1EB8()
{
  if (qword_1003391D8 != -1)
  {
    result = swift_once();
  }

  byte_10038B440 = byte_10038B5A8;
  return result;
}

uint64_t sub_1001A1F10()
{
  v1 = OBJC_IVAR____TtC17proximitycontrold12RangingProxy____lazy_storage___nearbyInteractionEventPublisher;
  if (*(v0 + OBJC_IVAR____TtC17proximitycontrold12RangingProxy____lazy_storage___nearbyInteractionEventPublisher))
  {
    v2 = *(v0 + OBJC_IVAR____TtC17proximitycontrold12RangingProxy____lazy_storage___nearbyInteractionEventPublisher);
  }

  else
  {
    sub_100035D04(&qword_10034A438, &qword_100287690);
    sub_10000E244(&qword_10034A440, &qword_10034A438, &qword_100287690, &protocol conformance descriptor for PassthroughSubject<A, B>);
    v2 = Publisher.eraseToAnyPublisher()();
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1001A1FEC()
{
  v1 = sub_100035D04(&qword_10034A360, &qword_100287620);
  v44 = *(v1 - 8);
  v45 = v1;
  __chkstk_darwin(v1);
  v3 = &v37 - v2;
  v4 = sub_100035D04(&qword_10034A368, &qword_100287628);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v37 - v6;
  v8 = sub_100035D04(&unk_10034A370, &unk_100287630);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v37 - v10;
  v12 = sub_100035D04(&qword_10033E928, &qword_10028C7C0);
  v48 = *(v12 - 8);
  __chkstk_darwin(v12);
  v46 = &v37 - v13;
  v14 = sub_100035D04(&qword_10034A380, &qword_100287640);
  v49 = *(v14 - 8);
  __chkstk_darwin(v14);
  v47 = &v37 - v15;
  v16 = sub_100035D04(&qword_10034A388, &qword_100287648);
  __chkstk_darwin(v16);
  if (*(v0 + OBJC_IVAR____TtC17proximitycontrold12RangingProxy____lazy_storage___localMotionStatePublisher))
  {
    v20 = *(v0 + OBJC_IVAR____TtC17proximitycontrold12RangingProxy____lazy_storage___localMotionStatePublisher);
  }

  else
  {
    v41 = v18;
    v42 = v19;
    v43 = OBJC_IVAR____TtC17proximitycontrold12RangingProxy____lazy_storage___localMotionStatePublisher;
    v40 = &v37 - v17;
    sub_100035D04(&qword_10034A390, &qword_100287650);
    v21 = swift_allocObject();
    v39 = v14;
    v22 = v21;
    *(v21 + 16) = xmmword_1002727F0;
    v38 = v12;
    swift_beginAccess();
    sub_100035D04(&qword_10034A398, &qword_100287658);
    v23 = v0;
    Published.projectedValue.getter();
    swift_endAccess();
    sub_10000E244(&qword_10034A3A0, &unk_10034A370, &unk_100287630, &protocol conformance descriptor for Published<A>.Publisher);
    Publisher.map<A>(_:)();
    v37 = &protocol conformance descriptor for Publishers.Map<A, B>;
    sub_10000E244(&qword_10034A3A8, &qword_10034A368, &qword_100287628, &protocol conformance descriptor for Publishers.Map<A, B>);
    v24 = Publisher.eraseToAnyPublisher()();
    (*(v5 + 8))(v7, v4);
    (*(v9 + 8))(v11, v8);
    v22[4] = v24;

    v50 = sub_10000C49C();
    sub_100035D04(&qword_10034A3B0, &qword_100287660);
    sub_10000E244(&qword_10034A3B8, &qword_10034A3B0, &qword_100287660, &protocol conformance descriptor for CurrentValueSubject<A, B>);
    v25 = Publisher.eraseToAnyPublisher()();

    v50 = v25;
    sub_100035D04(&qword_10034A3C0, &qword_100287668);
    sub_10000E244(&qword_10034A3C8, &qword_10034A3C0, &qword_100287668, &protocol conformance descriptor for AnyPublisher<A, B>);
    Publisher.map<A>(_:)();
    v26 = v37;
    sub_10000E244(&unk_10034A3D0, &qword_10034A360, &qword_100287620, v37);
    v27 = v45;
    v28 = Publisher.eraseToAnyPublisher()();

    (*(v44 + 8))(v3, v27);
    v22[5] = v28;
    v50 = *(v23 + OBJC_IVAR____TtC17proximitycontrold12RangingProxy_localMotionStateDidChangeSubject);
    sub_100035D04(&qword_10034C750, &unk_100287670);
    sub_10000E244(&unk_10034A3E0, &qword_10034C750, &unk_100287670, &protocol conformance descriptor for PassthroughSubject<A, B>);
    v22[6] = Publisher.eraseToAnyPublisher()();
    sub_100035D04(&qword_10033D630, &unk_100274960);
    sub_10000E244(&qword_10034A3F0, &qword_10033D630, &unk_100274960, &protocol conformance descriptor for AnyPublisher<A, B>);
    v29 = v46;
    Publishers.MergeMany.init(_:)();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_100035D04(&qword_10034A3F8, &qword_100287680);
    sub_10000E244(&qword_10034A400, &qword_10033E928, &qword_10028C7C0, &protocol conformance descriptor for Publishers.MergeMany<A>);
    v30 = v47;
    v31 = v38;
    Publisher.map<A>(_:)();

    (*(v48 + 8))(v29, v31);
    sub_10000E244(&qword_10034A408, &qword_10034A380, &qword_100287640, v26);
    sub_1001AC0D8();
    v33 = v39;
    v32 = v40;
    Publisher<>.removeDuplicates()();
    (*(v49 + 8))(v30, v33);
    sub_10000E244(&qword_10034A420, &qword_10034A388, &qword_100287648, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
    v34 = v41;
    v35 = Publisher.share()();
    (*(v42 + 8))(v32, v34);
    v50 = v35;
    sub_100035D04(&qword_10034A428, &qword_100287688);
    sub_10000E244(&qword_10034A430, &qword_10034A428, &qword_100287688, &protocol conformance descriptor for Publishers.Share<A>);
    v20 = Publisher.eraseToAnyPublisher()();

    *(v23 + v43) = v20;
  }

  return v20;
}

uint64_t sub_1001A2914()
{
  v0 = type metadata accessor for DispatchTimeInterval();
  sub_100036838(v0, qword_10034A1B0);
  *sub_100003078(v0, qword_10034A1B0) = 5;
  v1 = *(*(v0 - 8) + 104);

  return v1();
}

uint64_t sub_1001A29A4(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v3;
}

void sub_1001A2A18(void *a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = a1;
  v4 = a1;
  v5 = v2;
  static Published.subscript.setter();
  if (qword_100339160 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_unknownObjectWeakAssign();
  *&v5[OBJC_IVAR____TtC17proximitycontrold12RangingProxy_numTokensAdded] = 0;
}

char *sub_1001A2B38(id a1)
{
  v2 = v1;
  v105 = type metadata accessor for Logger();
  v92 = *(v105 - 8);
  __chkstk_darwin(v105);
  v90 = v4;
  v91 = &v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100035D04(&qword_10034A448, &unk_100287698);
  v94 = *(v5 - 8);
  v95 = v5;
  __chkstk_darwin(v5);
  v93 = &v80 - v6;
  v7 = sub_100035D04(&qword_10034A450, &qword_100278A90);
  v98 = *(v7 - 8);
  v99 = v7;
  __chkstk_darwin(v7);
  v96 = &v80 - v8;
  v9 = sub_100035D04(&qword_10034A458, &qword_1002876A8);
  v100 = *(v9 - 8);
  v101 = v9;
  __chkstk_darwin(v9);
  v97 = &v80 - v10;
  v89 = sub_100035D04(&qword_10034A460, &qword_1002876B0);
  v88 = *(v89 - 8);
  __chkstk_darwin(v89);
  v87 = &v80 - v11;
  v82 = type metadata accessor for DispatchTimeInterval();
  v106 = *(v82 - 8);
  __chkstk_darwin(v82);
  v85 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for Retrier.RetryIntervalPolicy(0);
  __chkstk_darwin(v84);
  v86 = (&v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_100035D04(&qword_10034A398, &qword_100287658);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v80 - v16;
  v18 = OBJC_IVAR____TtC17proximitycontrold12RangingProxy_nearbyAgent;
  swift_unknownObjectWeakInit();
  v19 = OBJC_IVAR____TtC17proximitycontrold12RangingProxy_trackedTokens;
  KeyPath = swift_getKeyPath();
  sub_100035D04(&qword_10034A468, &qword_1002876D8);
  swift_allocObject();
  v21 = sub_10006D374(KeyPath, 0);

  *&v2[v19] = v21;
  v22 = OBJC_IVAR____TtC17proximitycontrold12RangingProxy_nearbyInteractionEventSubject;
  v23 = sub_100035D04(&qword_10034A438, &qword_100287690);
  swift_allocObject();
  *&v2[v22] = PassthroughSubject.init()();
  *&v2[OBJC_IVAR____TtC17proximitycontrold12RangingProxy____lazy_storage___nearbyInteractionEventPublisher] = 0;
  v24 = OBJC_IVAR____TtC17proximitycontrold12RangingProxy_localMotionStateDidChangeSubject;
  sub_100035D04(&qword_10034C750, &unk_100287670);
  swift_allocObject();
  *&v2[v24] = PassthroughSubject.init()();
  *&v2[OBJC_IVAR____TtC17proximitycontrold12RangingProxy____lazy_storage___localMotionStatePublisher] = 0;
  v25 = OBJC_IVAR____TtC17proximitycontrold12RangingProxy_defaults;
  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  *&v2[v25] = qword_10038B0B8;
  v26 = OBJC_IVAR____TtC17proximitycontrold12RangingProxy_lockscreenAnalytics;
  v27 = qword_1003390D8;

  if (v27 != -1)
  {
    swift_once();
  }

  *&v2[v26] = qword_10038B2D8;
  *&v2[OBJC_IVAR____TtC17proximitycontrold12RangingProxy_numTokensAdded] = 0;
  *&v2[OBJC_IVAR____TtC17proximitycontrold12RangingProxy_reactivation] = 0;
  *&v2[OBJC_IVAR____TtC17proximitycontrold12RangingProxy_reactivationRetrier] = 0;
  v2[OBJC_IVAR____TtC17proximitycontrold12RangingProxy_scheduledStopState] = 0;
  v28 = OBJC_IVAR____TtC17proximitycontrold12RangingProxy__sessionState;
  sub_100035D04(&qword_10034A470, &qword_1002876E0);
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  *&v2[v28] = v29;
  *&v2[OBJC_IVAR____TtC17proximitycontrold12RangingProxy_tasks] = &_swiftEmptySetSingleton;
  v30 = OBJC_IVAR____TtC17proximitycontrold12RangingProxy__session;
  v109[0] = 0;

  v83 = sub_100035D04(&qword_10034A280, &qword_1002873E8);
  Published.init(initialValue:)();
  (*(v15 + 32))(&v2[v30], v17, v14);
  if (qword_100339128 != -1)
  {
    swift_once();
  }

  v103 = sub_100003078(v105, qword_10034A190);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();
  v33 = os_log_type_enabled(v31, v32);
  v102 = a1;
  if (v33)
  {
    v104 = v18;
    v34 = v15;
    v35 = v14;
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v109[0] = v37;
    *v36 = 136315138;
    if (qword_100339138 != -1)
    {
      swift_once();
    }

    if (byte_10038B440)
    {
      v38 = 0x726F68636E61;
    }

    else
    {
      v38 = 0x656C69626F6DLL;
    }

    v39 = sub_100017494(v38, 0xE600000000000000, v109);

    *(v36 + 4) = v39;
    _os_log_impl(&_mh_execute_header, v31, v32, "Configuration role = %s", v36, 0xCu);
    sub_10000903C(v37);

    v14 = v35;
    v15 = v34;
  }

  else
  {
  }

  swift_unknownObjectWeakAssign();
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&_mh_execute_header, v40, v41, "Ranging was enabled", v42, 2u);
  }

  v104 = v23;

  v43 = [objc_allocWithZone(NISession) init];
  if (qword_1003391E8 != -1)
  {
    swift_once();
  }

  v44 = qword_10038B5B8;
  [v43 setDelegateQueue:qword_10038B5B8];
  swift_beginAccess();
  (*(v15 + 8))(&v2[v30], v14);
  v108 = v43;
  Published.init(initialValue:)();
  swift_endAccess();
  v45 = type metadata accessor for RangingProxy(0);
  v107.receiver = v2;
  v107.super_class = v45;
  v46 = objc_msgSendSuper2(&v107, "init");
  v109[0] = _swiftEmptyArrayStorage;
  v83 = v46;
  v81 = v44;
  sub_1000CE168(0, 5, 0);
  v47 = 0;
  v48 = v109[0];
  v49 = enum case for DispatchTimeInterval.seconds(_:);
  v50 = *(v106 + 104);
  v51 = v82;
  v52 = v85;
  do
  {
    *v52 = *(&off_100300FE0 + v47 + 32);
    v50(v52, v49, v51);
    v109[0] = v48;
    v54 = v48[2];
    v53 = v48[3];
    if (v54 >= v53 >> 1)
    {
      sub_1000CE168((v53 > 1), v54 + 1, 1);
      v48 = v109[0];
    }

    v48[2] = v54 + 1;
    (*(v106 + 32))(v48 + ((*(v106 + 80) + 32) & ~*(v106 + 80)) + *(v106 + 72) * v54, v52, v51);
    v47 += 8;
  }

  while (v47 != 40);
  v55 = v86;
  *v86 = v48;
  swift_storeEnumTagMultiPayload();
  v56 = swift_allocObject();
  v57 = v83;
  swift_unknownObjectWeakInit();

  type metadata accessor for Retrier(0);
  v58 = swift_allocObject();
  *(v58 + OBJC_IVAR____TtC17proximitycontrold7Retrier_attemptCount) = 0;
  *(v58 + OBJC_IVAR____TtC17proximitycontrold7Retrier_attemptState) = 0;
  *(v58 + 16) = sub_1001AC1D4;
  *(v58 + 24) = v56;
  *(v58 + 32) = v81;
  *(v58 + 40) = 0;
  *(v58 + 48) = 1;
  sub_1001AC1DC(v55, v58 + OBJC_IVAR____TtC17proximitycontrold7Retrier_retryInterval);
  *&v57[OBJC_IVAR____TtC17proximitycontrold12RangingProxy_reactivationRetrier] = v58;

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v59 = v109[0];
  if (v109[0])
  {
    [v109[0] setDelegate:v57];
  }

  v109[0] = sub_1001A1FEC();
  sub_100035D04(&qword_10034A478, &qword_1002876E8);
  sub_10000E244(&qword_10034A480, &qword_10034A478, &qword_1002876E8, &protocol conformance descriptor for AnyPublisher<A, B>);
  v60 = v87;
  Publisher.map<A>(_:)();

  v106 = OBJC_IVAR____TtC17proximitycontrold12RangingProxy_nearbyInteractionEventSubject;
  sub_10000E244(&qword_10034A488, &qword_10034A460, &qword_1002876B0, &protocol conformance descriptor for Publishers.Map<A, B>);
  v61 = sub_10000E244(&unk_10034A490, &qword_10034A438, &qword_100287690, &protocol conformance descriptor for PassthroughSubject<A, B>);

  v62 = v89;
  v86 = v61;
  Publisher.subscribe<A>(_:)();

  (*(v88 + 8))(v60, v62);
  v63 = OBJC_IVAR____TtC17proximitycontrold12RangingProxy_tasks;
  swift_beginAccess();
  v89 = v63;
  AnyCancellable.store(in:)();
  swift_endAccess();

  if (qword_100339130 != -1)
  {
    swift_once();
  }

  v109[0] = sub_10005E50C();
  sub_100035D04(&unk_1003436D0, &qword_1002702F0);
  sub_10000E244(&unk_10034A4A0, &unk_1003436D0, &qword_1002702F0, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  v64 = Publisher.eraseToAnyPublisher()();

  v65 = static os_log_type_t.info.getter();
  v109[0] = v64;
  v66 = v92;
  v67 = v91;
  v68 = v105;
  (*(v92 + 16))(v91, v103, v105);
  v69 = (*(v66 + 80) + 64) & ~*(v66 + 80);
  v70 = v69 + v90;
  v71 = swift_allocObject();
  *(v71 + 2) = 0;
  *(v71 + 3) = 0;
  *(v71 + 4) = 0xD000000000000015;
  *(v71 + 5) = 0x80000001002A3C50;
  *(v71 + 6) = 0;
  *(v71 + 7) = 0xE000000000000000;
  (*(v66 + 32))(&v71[v69], v67, v68);
  v71[v70] = v65;
  sub_100035D04(&unk_1003436E0, &unk_100276210);
  sub_10000E244(&qword_10034A4B0, &unk_1003436E0, &unk_100276210, &protocol conformance descriptor for AnyPublisher<A, B>);
  v72 = v93;
  Publisher.map<A>(_:)();

  sub_10000E244(&qword_10034A4B8, &qword_10034A448, &unk_100287698, &protocol conformance descriptor for Publishers.Map<A, B>);
  v73 = v95;
  v74 = Publisher.eraseToAnyPublisher()();

  (*(v94 + 8))(v72, v73);
  v109[0] = v74;
  v75 = v96;
  Publisher<>.removeDuplicates()();

  sub_10000E244(&qword_10034A4C0, &qword_10034A450, &qword_100278A90, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  v76 = v97;
  v77 = v99;
  Publisher.map<A>(_:)();
  (*(v98 + 8))(v75, v77);
  sub_10000E244(&qword_10034A4C8, &qword_10034A458, &qword_1002876A8, &protocol conformance descriptor for Publishers.Map<A, B>);

  v78 = v101;
  Publisher.subscribe<A>(_:)();

  (*(v100 + 8))(v76, v78);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v57;
}

void sub_1001A3C6C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1001A5270();
  }
}

uint64_t *sub_1001A3CC0@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  if (*(result + 8))
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = 0;
  return result;
}

unsigned __int8 *sub_1001A3CDC@<X0>(unsigned __int8 *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 2;
  return result;
}

id sub_1001A3CF0()
{
  sub_1001A5108();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RangingProxy(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1001A3EB8()
{
  if (qword_100339128 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100003078(v0, qword_10034A190);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Activating", v3, 2u);
  }

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100035D04(&qword_100345FE0, &qword_1002795C0);
  swift_allocObject();
  return Future.init(_:)();
}

double sub_1001A3FFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v19 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v9 = *(v18 - 8);
  __chkstk_darwin(v18);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  v13 = qword_1003391E8;

  if (v13 != -1)
  {
    swift_once();
  }

  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = sub_1000FBAA8;
  v14[4] = v12;
  aBlock[4] = sub_1001AC0CC;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100018AB8;
  aBlock[3] = &unk_10030F790;
  v15 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v20 = _swiftEmptyArrayStorage;
  sub_1001AC18C(&qword_10033D8C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100035D04(&unk_100343710, &qword_100271800);
  sub_10000E244(&qword_10033D8D0, &unk_100343710, &qword_100271800, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);
  (*(v19 + 8))(v8, v6);
  (*(v9 + 8))(v11, v18);

  return result;
}

void sub_1001A4340(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (sub_1000036FC())
    {
      sub_10000B620();
    }

    else
    {
      if (qword_100339128 != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      sub_100003078(v6, qword_10034A190);
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v7, v8, "Shouldn't start ranging at activation, deferring session start.", v9, 2u);
      }
    }

    if (qword_100339128 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100003078(v10, qword_10034A190);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Activated", v13, 2u);
    }

    (a2)(0, 0);
  }

  else
  {
    sub_10001618C();
    swift_allocError();
    *v5 = 0x666C6573206C696ELL;
    *(v5 + 8) = 0xE800000000000000;
    *(v5 + 16) = 9;
    a2();
  }
}

void sub_1001A46D4(NSObject *a1, uint64_t a2)
{
  v3 = v2;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v5 = v46;
  if (!v46)
  {
    if (qword_100339128 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100003078(v17, qword_10034A190);
    v18 = a1;
    v5 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      *(v20 + 4) = v18;
      *v21 = v18;
      v22 = v18;
      _os_log_impl(&_mh_execute_header, v5, v19, "### Not adding token, no session. Token = %@", v20, 0xCu);
      sub_1000030B0(v21);
    }

    goto LABEL_37;
  }

  v6 = OBJC_IVAR____TtC17proximitycontrold12RangingProxy__sessionState;
  if (*(*&v3[OBJC_IVAR____TtC17proximitycontrold12RangingProxy__sessionState] + 24) != 2)
  {
    if (qword_100339128 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100003078(v23, qword_10034A190);
    v24 = v3;
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v46 = v28;
      *v27 = 136315138;
      if (*(*&v3[v6] + 24) > 1u)
      {
        if (*(*&v3[v6] + 24) == 2)
        {
          v29 = 0xE700000000000000;
          v30 = 0x676E696E6E7572;
        }

        else
        {
          v29 = 0xE900000000000064;
          v30 = 0x65646E6570737573;
        }
      }

      else if (*(*&v3[v6] + 24))
      {
        v29 = 0xE600000000000000;
        v30 = 0x646573756170;
      }

      else
      {
        v29 = 0xE800000000000000;
        v30 = 0x6576697463616E69;
      }

      v45 = sub_100017494(v30, v29, &v46);

      *(v27 + 4) = v45;
      _os_log_impl(&_mh_execute_header, v25, v26, "Not adding token, session state = %s", v27, 0xCu);
      sub_10000903C(v28);
    }

    goto LABEL_37;
  }

  v7 = OBJC_IVAR____TtC17proximitycontrold12RangingProxy_numTokensAdded;
  if (*&v3[OBJC_IVAR____TtC17proximitycontrold12RangingProxy_numTokensAdded] > 29)
  {
    if (qword_100339128 == -1)
    {
      goto LABEL_21;
    }
  }

  else
  {
    if (qword_100339128 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100003078(v8, qword_10034A190);
    v9 = a1;
    a1 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(a1, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      *(v11 + 4) = v9;
      *v12 = v9;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, a1, v10, "Adding token: %@", v11, 0xCu);
      sub_1000030B0(v12);
    }

    [v5 _addObject:v9];
    v14 = *&v3[v7];
    v15 = __OFADD__(v14, 1);
    v16 = v14 + 1;
    if (!v15)
    {
      *&v3[v7] = v16;
      return;
    }

    __break(1u);
  }

  swift_once();
LABEL_21:
  v31 = type metadata accessor for Logger();
  sub_100003078(v31, qword_10034A190);
  v32 = a1;
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v35 = 138412290;
    *(v35 + 4) = v32;
    *v36 = v32;
    v37 = v32;
    _os_log_impl(&_mh_execute_header, v33, v34, "### Max number of tokens already added, not adding %@", v35, 0xCu);
    sub_1000030B0(v36);
  }

  v38 = *&v3[OBJC_IVAR____TtC17proximitycontrold12RangingProxy_trackedTokens];
  __chkstk_darwin(v39);
  type metadata accessor for TrackedToken(0);
  type metadata accessor for UUID();
  sub_1001AC18C(&qword_100339848, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  swift_getKeyPath();
  v40 = v38 + qword_100346AF8;

  os_unfair_lock_lock(v40);
  v46 = *(v40 + 8);

  swift_getAtKeyPath();

  os_unfair_lock_unlock(v40);

  v41 = *(v47 + 16);
  if (!v41)
  {

    v42 = _swiftEmptyArrayStorage;
    if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
    {
      goto LABEL_40;
    }

    goto LABEL_30;
  }

  v42 = sub_100009194(*(v47 + 16), 0);
  v43 = sub_100009A04(&v46, (v42 + 32), v41, v47);
  sub_100004F98(v46);
  if (v43 == v41)
  {

    if (v42 < 0)
    {
      goto LABEL_40;
    }

LABEL_30:
    if ((v42 & 0x4000000000000000) == 0)
    {
      v44 = *(v42 + 16);
LABEL_32:

      sub_1001198C4(v44, *&v3[v7]);
LABEL_37:

      return;
    }

LABEL_40:
    v44 = _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_32;
  }

  __break(1u);
}

void sub_1001A4DEC(uint64_t a1)
{
  v1 = a1;
  if (qword_100339128 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10034A190);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v21 = v6;
    v7 = 0xE700000000000000;
    *v5 = 136315138;
    v8 = 0x6E776F6E6B6E75;
    v9 = 0x4F64657265776F70;
    v10 = 0xE90000000000006ELL;
    if (v1 != 5)
    {
      v9 = 0x7463697274736572;
      v10 = 0xEA00000000006465;
    }

    v11 = 0xEC00000064657A69;
    v12 = 0x726F687475616E75;
    if (v1 != 3)
    {
      v12 = 0x4F64657265776F70;
      v11 = 0xEA00000000006666;
    }

    if (v1 <= 4u)
    {
      v9 = v12;
      v10 = v11;
    }

    v13 = 0x6E69747465736572;
    v14 = 0xE900000000000067;
    if (v1 != 1)
    {
      v13 = 0x726F707075736E75;
      v14 = 0xEB00000000646574;
    }

    if (v1)
    {
      v8 = v13;
      v7 = v14;
    }

    if (v1 <= 2u)
    {
      v15 = v8;
    }

    else
    {
      v15 = v9;
    }

    if (v1 <= 2u)
    {
      v16 = v7;
    }

    else
    {
      v16 = v10;
    }

    v17 = sub_100017494(v15, v16, &v21);

    *(v5 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v3, v4, "BT State changed to %s", v5, 0xCu);
    sub_10000903C(v6);
  }

  if (sub_1001A9F9C(v1))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v21)
    {
    }

    else
    {
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&_mh_execute_header, v18, v19, "BT turned ON, reactivating session", v20, 2u);
      }

      sub_1001A5270();
    }
  }
}

void sub_1001A5108()
{
  if (qword_100339128 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100003078(v0, qword_10034A190);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Invalidate", v3, 2u);
  }

  sub_1001AC418();

  sub_1001A692C(v4, v5);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  [v6 invalidate];
}

double sub_1001A5270()
{
  v1 = OBJC_IVAR____TtC17proximitycontrold12RangingProxy_reactivation;
  if (*&v0[OBJC_IVAR____TtC17proximitycontrold12RangingProxy_reactivation])
  {
    if (qword_100339128 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100003078(v2, qword_10034A190);
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v3, "### Duplicate simultaneous reactivation?", v4, 2u);
    }
  }

  else
  {
    v6 = v0;
    if (qword_100339128 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100003078(v7, qword_10034A190);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Reactivating", v10, 2u);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v17)
    {
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v11, v12, "Invalidating existing session", v13, 2u);
      }

      [v17 invalidate];
      swift_getKeyPath();
      swift_getKeyPath();
      v14 = v6;
      static Published.subscript.setter();
      if (qword_100339160 != -1)
      {
        swift_once();
      }

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      swift_unknownObjectWeakAssign();

      *&v14[OBJC_IVAR____TtC17proximitycontrold12RangingProxy_numTokensAdded] = 0;
      *(*&v14[OBJC_IVAR____TtC17proximitycontrold12RangingProxy__sessionState] + 24) = 0;

      sub_10000C49C();
      CurrentValueSubject.send(_:)();

      sub_1000143FC();
    }

    sub_1001A3EB8();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_100035D04(&qword_100345FE0, &qword_1002795C0);
    sub_10000E244(&qword_1003436B0, &qword_100345FE0, &qword_1002795C0, &protocol conformance descriptor for Future<A, B>);
    v15 = Publisher.sink(receiveCompletion:receiveValue:)();

    *&v6[v1] = v15;
  }

  return result;
}

double sub_1001A571C(uint64_t *a1, uint64_t a2)
{
  if (!*a1)
  {
    if (qword_100339128 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100003078(v8, qword_10034A190);
    v3 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v3, v9))
    {
      goto LABEL_11;
    }

    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v3, v9, "Reactivated", v10, 2u);
LABEL_10:

LABEL_11:

    goto LABEL_13;
  }

  if (qword_100339128 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10034A190);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "### Reactivated: %@", v5, 0xCu);
    sub_1000030B0(v6);

    goto LABEL_10;
  }

LABEL_13:
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    *&Strong[OBJC_IVAR____TtC17proximitycontrold12RangingProxy_reactivation] = 0;
  }

  return result;
}

double sub_1001A594C(uint64_t a1)
{
  v2 = *&v1[OBJC_IVAR____TtC17proximitycontrold12RangingProxy_trackedTokens];
  type metadata accessor for TrackedToken(0);
  type metadata accessor for UUID();
  sub_1001AC18C(&qword_100339848, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  swift_getKeyPath();
  v3 = v2 + qword_100346AF8;

  os_unfair_lock_lock(v3);
  v25 = *(v3 + 8);

  swift_getAtKeyPath();

  os_unfair_lock_unlock(v3);

  v4 = *(v26 + 16);
  if (v4)
  {
    v5 = sub_100009194(*(v26 + 16), 0);
    v6 = sub_100009A04(&v25, (v5 + 32), v4, v26);
    sub_100004F98(v25);
    if (v6 != v4)
    {
      __break(1u);
LABEL_26:
      swift_once();
      goto LABEL_19;
    }

    if (v5 < 0)
    {
      goto LABEL_23;
    }
  }

  else
  {

    v5 = _swiftEmptyArrayStorage;
    if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
    {
      goto LABEL_23;
    }
  }

  if ((v5 & 0x4000000000000000) == 0)
  {
    v7 = *(v5 + 16);
    if (!v7)
    {
LABEL_24:

      return result;
    }

    goto LABEL_8;
  }

LABEL_23:
  while (2)
  {
    v7 = _CocoaArrayWrapper.endIndex.getter();
    if (!v7)
    {
      goto LABEL_24;
    }

LABEL_8:
    v8 = 0;
    while ((v5 & 0xC000000000000001) != 0)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_17;
      }

LABEL_12:
      if (static UUID.== infix(_:_:)())
      {
        goto LABEL_18;
      }

      ++v8;
      if (v10 == v7)
      {
        goto LABEL_24;
      }
    }

    if (v8 >= *(v5 + 16))
    {
      __break(1u);
      continue;
    }

    break;
  }

  v9 = *(v5 + 8 * v8 + 32);

  v10 = v8 + 1;
  if (!__OFADD__(v8, 1))
  {
    goto LABEL_12;
  }

LABEL_17:
  __break(1u);
LABEL_18:

  v1 = *(v9 + OBJC_IVAR____TtC17proximitycontrold12TrackedToken_token);

  if (qword_100339128 != -1)
  {
    goto LABEL_26;
  }

LABEL_19:
  v11 = type metadata accessor for Logger();
  sub_100003078(v11, qword_10034A190);
  v12 = v1;

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v25 = v17;
    *v15 = 138412546;
    *(v15 + 4) = v12;
    *v16 = v12;
    *(v15 + 12) = 2080;
    v18 = v12;
    v20 = sub_1000092A0(v18, v19);
    v22 = sub_100017494(v20, v21, &v25);

    *(v15 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v13, v14, "Re-adding token %@ from %s", v15, 0x16u);
    sub_1000030B0(v16);

    sub_10000903C(v17);
  }

  sub_1001A46D4(v12, v23);
  return result;
}

void sub_1001A5D30(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100339128 != -1)
  {
LABEL_33:
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  v11 = sub_100003078(v10, qword_10034A190);
  v12 = a1;

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  v15 = os_log_type_enabled(v13, v14);
  v49[1] = v11;
  v52 = v9;
  v53 = v7;
  v51 = v12;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v17 = v12;
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v56[0] = v19;
    *v16 = 138412546;
    *(v16 + 4) = v17;
    *v18 = v17;
    *(v16 + 12) = 2080;
    v20 = v17;
    v22 = sub_1000092A0(v20, v21);
    v24 = v6;
    v25 = sub_100017494(v22, v23, v56);

    *(v16 + 14) = v25;
    v6 = v24;
    _os_log_impl(&_mh_execute_header, v13, v14, "Received %@ from %s", v16, 0x16u);
    sub_1000030B0(v18);

    sub_10000903C(v19);
  }

  v9 = OBJC_IVAR____TtC17proximitycontrold12RangingProxy_trackedTokens;
  v55 = v3;
  v26 = *(v3 + OBJC_IVAR____TtC17proximitycontrold12RangingProxy_trackedTokens);
  __chkstk_darwin(v27);
  v49[-4] = type metadata accessor for TrackedToken(0);
  v49[-3] = v6;
  v54 = v6;
  v49[-2] = sub_1001AC18C(&qword_100339848, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  swift_getKeyPath();
  v28 = v26 + qword_100346AF8;

  os_unfair_lock_lock(v28);
  v56[0] = *(v28 + 8);

  swift_getAtKeyPath();

  v29 = v56[5];
  os_unfair_lock_unlock(v28);

  v30 = *(v29 + 16);
  if (!v30)
  {

    v31 = _swiftEmptyArrayStorage;
    v50 = v9;
    if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
    {
      goto LABEL_34;
    }

    goto LABEL_9;
  }

  v31 = sub_100009194(*(v29 + 16), 0);
  v32 = sub_100009A04(v56, (v31 + 32), v30, v29);
  sub_100004F98(v56[0]);
  if (v32 == v30)
  {

    v50 = v9;
    if (v31 < 0)
    {
      goto LABEL_34;
    }

LABEL_9:
    if ((v31 & 0x4000000000000000) == 0)
    {
      v33 = *(v31 + 16);
      goto LABEL_11;
    }

LABEL_34:
    v33 = _CocoaArrayWrapper.endIndex.getter();
LABEL_11:
    v6 = OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_id;
    v7 = &OBJC_IVAR____TtC17proximitycontrold12TrackedToken_deviceID;
    if (v33)
    {
      a1 = 0;
      v3 = v31 & 0xC000000000000001;
      do
      {
        if (v3)
        {
          v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v9 = (a1 + 1);
          if (__OFADD__(a1, 1))
          {
LABEL_21:
            __break(1u);
            break;
          }
        }

        else
        {
          if (a1 >= *(v31 + 16))
          {
            __break(1u);
            goto LABEL_33;
          }

          v34 = *(v31 + 8 * a1 + 32);

          v9 = (a1 + 1);
          if (__OFADD__(a1, 1))
          {
            goto LABEL_21;
          }
        }

        if (static UUID.== infix(_:_:)())
        {

          goto LABEL_24;
        }

        ++a1;
      }

      while (v9 != v33);
    }

    v34 = 0;
LABEL_24:
    v35 = v54;
    v36 = v53;
    v37 = a2 + v6;
    v38 = v52;
    (v53[2])(v52, v37, v54);
    v39 = swift_allocObject();
    (v36[4])(v39 + OBJC_IVAR____TtC17proximitycontrold12TrackedToken_deviceID, v38, v35);
    v40 = v51;
    *(v39 + OBJC_IVAR____TtC17proximitycontrold12TrackedToken_token) = v51;
    v41 = v40;

    sub_100049C30(v39);

    if (v34)
    {
      v43 = *(v34 + OBJC_IVAR____TtC17proximitycontrold12TrackedToken_token);
      sub_100003118(0, &qword_10034A350, NIDiscoveryToken_ptr);
      v44 = v43;
      if (static NSObject.== infix(_:_:)())
      {
        v46 = Logger.logObject.getter();
        v47 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          *v48 = 0;
          _os_log_impl(&_mh_execute_header, v46, v47, "Received token is already in cache, not adding to session.", v48, 2u);
        }

        goto LABEL_31;
      }

      sub_1001A6514(v44, v45);
    }

    sub_1001A46D4(v41, v42);
LABEL_31:

    return;
  }

  __break(1u);
}

double sub_1001A6328(uint64_t a1)
{
  if (qword_100339128 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10034A190);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136315138;
    v8 = sub_1000092A0(v6, v7);
    v10 = sub_100017494(v8, v9, &v16);

    *(v5 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Removing token for %s", v5, 0xCu);
    sub_10000903C(v6);
  }

  v11 = OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_id;

  v12 = sub_10004AE8C(a1 + v11);

  if (v12)
  {
    v14 = *(v12 + OBJC_IVAR____TtC17proximitycontrold12TrackedToken_token);
    sub_1001A6514(v14, v15);
  }

  return result;
}

void sub_1001A6514(void *a1, uint64_t a2)
{
  v3 = v2;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v5 = v28;
  if (!v28)
  {
    if (qword_100339128 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100003078(v16, qword_10034A190);
    v5 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v5, v17, "### Not removing token, no session.", v18, 2u);
    }

    goto LABEL_24;
  }

  v6 = OBJC_IVAR____TtC17proximitycontrold12RangingProxy__sessionState;
  if (*(*&v3[OBJC_IVAR____TtC17proximitycontrold12RangingProxy__sessionState] + 24) == 2)
  {
    if (qword_100339128 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100003078(v7, qword_10034A190);
    v8 = a1;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v11 = 138412290;
      *(v11 + 4) = v8;
      *v6 = v8;
      v12 = v8;
      _os_log_impl(&_mh_execute_header, v9, v10, "Removing token %@", v11, 0xCu);
      sub_1000030B0(v6);
    }

    [v5 _removeObject:v8];
    v13 = *&v3[OBJC_IVAR____TtC17proximitycontrold12RangingProxy_numTokensAdded];
    v14 = __OFSUB__(v13, 1);
    v15 = v13 - 1;
    if (!v14)
    {
      *&v3[OBJC_IVAR____TtC17proximitycontrold12RangingProxy_numTokensAdded] = v15;
      return;
    }

    __break(1u);
    goto LABEL_26;
  }

  if (qword_100339128 != -1)
  {
LABEL_26:
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_100003078(v19, qword_10034A190);
  v20 = v3;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v28 = v24;
    *v23 = 136315138;
    if (*(*(v6 + v3) + 24) > 1u)
    {
      if (*(*(v6 + v3) + 24) == 2)
      {
        v25 = 0xE700000000000000;
        v26 = 0x676E696E6E7572;
      }

      else
      {
        v25 = 0xE900000000000064;
        v26 = 0x65646E6570737573;
      }
    }

    else if (*(*(v6 + v3) + 24))
    {
      v25 = 0xE600000000000000;
      v26 = 0x646573756170;
    }

    else
    {
      v25 = 0xE800000000000000;
      v26 = 0x6576697463616E69;
    }

    v27 = sub_100017494(v26, v25, &v28);

    *(v23 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v21, v22, "Not removing token, sessionState = %s", v23, 0xCu);
    sub_10000903C(v24);
  }

LABEL_24:
}

void sub_1001A692C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v8)
  {
    if (qword_100339128 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100003078(v4, qword_10034A190);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Stop", v7, 2u);
    }

    if (*(v3 + OBJC_IVAR____TtC17proximitycontrold12RangingProxy_reactivationRetrier))
    {

      sub_10001462C();
    }

    [v8 pause];
    *(*(v3 + OBJC_IVAR____TtC17proximitycontrold12RangingProxy__sessionState) + 24) = 1;

    sub_10000C49C();
    CurrentValueSubject.send(_:)();

    sub_1000143FC();
  }
}

void sub_1001A6AEC()
{
  v1 = OBJC_IVAR____TtC17proximitycontrold12RangingProxy_scheduledStopState;
  if (*(v0 + OBJC_IVAR____TtC17proximitycontrold12RangingProxy_scheduledStopState) == 1)
  {
    v2 = v0;
    if (qword_100339128 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100003078(v3, qword_10034A190);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Cancelling scheduled stop", v6, 2u);
    }

    *(v2 + v1) = 0;
  }
}

uint64_t sub_1001A6BE8(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v3 = Strong;
  v4 = [a1 deviceIdentifer];
  if (v4 && (v5 = v4, static String._unconditionallyBridgeFromObjectiveC(_:)(), v5, __chkstk_darwin(v6), v7 = (*(*&v3[OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_state] + 16) + qword_100346AF8), , os_unfair_lock_lock(v7), v8 = , sub_1001A9BF0(v8, sub_1001AC0B4), v10 = v9, , os_unfair_lock_unlock(v7), , , v10))
  {
  }

  else
  {
    v11 = [a1 discoveryToken];
    __chkstk_darwin(v11);
    v12 = (*(*&v3[OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_state] + 16) + qword_100346AF8);

    os_unfair_lock_lock(v12);

    sub_1001A9BF0(v13, sub_1001AC0AC);
    v10 = v14;

    os_unfair_lock_unlock(v12);
  }

  return v10;
}

uint64_t sub_1001A6E08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v7 = sub_1000BCFD0(v5, v6);

  LOBYTE(a3) = sub_1001A1CF8(a2, a3, v7);

  return a3 & 1;
}

uint64_t sub_1001A6EC0(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_discoveryTokenStateMachine;
  swift_beginAccess();
  v5 = *(*(a1 + v4) + 16);
  if (v5)
  {
    sub_100003118(0, &qword_10034A350, NIDiscoveryToken_ptr);
    v6 = v5;
    v7 = a2;
    v8 = static NSObject.== infix(_:_:)();
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

void sub_1001A6F70(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (*(Strong + OBJC_IVAR____TtC17proximitycontrold12RangingProxy_scheduledStopState) == 1)
    {
      *(Strong + OBJC_IVAR____TtC17proximitycontrold12RangingProxy_scheduledStopState) = 0;
      if (qword_100339128 != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for Logger();
      sub_100003078(v3, qword_10034A190);
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&_mh_execute_header, v4, v5, "Stopping after delay", v6, 2u);
      }

      sub_1001A692C(v7, v8);
    }
  }
}

void sub_1001A70CC(uint64_t a1)
{
  sub_1001A71B0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1001A71B0(uint64_t a1)
{
  if (!qword_10034A278)
  {
    sub_100035D4C(&qword_10034A280, &qword_1002873E8);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &qword_10034A278);
    }
  }
}

uint64_t sub_1001A727C()
{
  v1 = v0;
  sub_100035D04(&unk_10033D890, &qword_100275EB0);
  v2 = swift_allocObject();
  v3 = v2;
  *(v2 + 16) = xmmword_10026F050;
  *(v2 + 32) = 0xD000000000000012;
  *(v2 + 40) = 0x80000001002A3B90;
  if (qword_100339138 != -1)
  {
    v2 = swift_once();
  }

  v4 = byte_10038B440;
  v5 = *(v0 + OBJC_IVAR____TtC17proximitycontrold12RangingProxy_trackedTokens);
  __chkstk_darwin(v2);
  type metadata accessor for TrackedToken(0);
  type metadata accessor for UUID();
  sub_1001AC18C(&qword_100339848, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  swift_getKeyPath();
  v6 = v5 + qword_100346AF8;

  os_unfair_lock_lock(v6);
  v48._countAndFlagsBits = *(v6 + 8);

  swift_getAtKeyPath();

  os_unfair_lock_unlock(v6);

  v7 = *(v46 + 16);
  if (v7)
  {
    v8 = sub_100009194(*(v46 + 16), 0);
    v9 = sub_100009A04(&v48, (v8 + 32), v7, v46);
    sub_100004F98(v48._countAndFlagsBits);
    if (v9 != v7)
    {
      __break(1u);
LABEL_42:
      v3 = sub_100009088((v10 > 1), v5, 1, v3);
      goto LABEL_39;
    }

    if (v8 < 0)
    {
      goto LABEL_40;
    }

LABEL_8:
    if ((v8 & 0x4000000000000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_40;
  }

  v8 = _swiftEmptyArrayStorage;
  if ((_swiftEmptyArrayStorage & 0x8000000000000000) == 0)
  {
    goto LABEL_8;
  }

LABEL_40:
  _CocoaArrayWrapper.endIndex.getter();
LABEL_9:

  v48._countAndFlagsBits = 0;
  v48._object = 0xE000000000000000;
  _StringGuts.grow(_:)(43);

  v48._countAndFlagsBits = 0x3D656C6F52;
  v48._object = 0xE500000000000000;
  if (v4)
  {
    v11 = 0x726F68636E61;
  }

  else
  {
    v11 = 0x656C69626F6DLL;
  }

  v12 = 0xE600000000000000;
  String.append(_:)(*&v11);

  v13._countAndFlagsBits = 8236;
  v13._object = 0xE200000000000000;
  String.append(_:)(v13);
  v14._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v14);

  v15._countAndFlagsBits = 0xD000000000000011;
  v15._object = 0x80000001002A3BB0;
  String.append(_:)(v15);
  v16._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v16);

  v17._countAndFlagsBits = 0x20736E656B6F7420;
  v17._object = 0xED00006465646461;
  String.append(_:)(v17);
  v47 = v48;
  if (*(v1 + OBJC_IVAR____TtC17proximitycontrold12RangingProxy_reactivation))
  {
    v18._countAndFlagsBits = 0x697463616572202CLL;
    v18._object = 0xEE00676E69746176;
    String.append(_:)(v18);
  }

  if (*(v1 + OBJC_IVAR____TtC17proximitycontrold12RangingProxy_scheduledStopState) == 1)
  {
    v19._object = 0x80000001002A3BD0;
    v19._countAndFlagsBits = 0xD000000000000010;
    String.append(_:)(v19);
  }

  v48._countAndFlagsBits = 0;
  v48._object = 0xE000000000000000;
  _StringGuts.grow(_:)(24);

  v48._countAndFlagsBits = 0xD000000000000016;
  v48._object = 0x80000001002A3BF0;
  if (qword_100339130 != -1)
  {
    swift_once();
  }

  if (*(off_10034A1A8 + 24))
  {
    v20 = 1702195828;
  }

  else
  {
    v20 = 0x65736C6166;
  }

  if (*(off_10034A1A8 + 24))
  {
    v21 = 0xE400000000000000;
  }

  else
  {
    v21 = 0xE500000000000000;
  }

  v22 = v21;
  String.append(_:)(*&v20);

  String.append(_:)(v48);

  v23 = OBJC_IVAR____TtC17proximitycontrold12RangingProxy_tasks;
  swift_beginAccess();
  v24 = *(v1 + v23);
  if ((v24 & 0xC000000000000001) != 0)
  {

    v25 = __CocoaSet.count.getter();
  }

  else
  {
    v25 = *(v24 + 16);
  }

  v45 = v25;
  v26._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v26);

  v27._countAndFlagsBits = 0x3D736B736174202CLL;
  v27._object = 0xE800000000000000;
  String.append(_:)(v27);

  v29 = *(v3 + 2);
  v28 = *(v3 + 3);
  if (v29 >= v28 >> 1)
  {
    v3 = sub_100009088((v28 > 1), v29 + 1, 1, v3);
  }

  *(v3 + 2) = v29 + 1;
  *&v3[16 * v29 + 32] = v47;
  if (*(*(v1 + OBJC_IVAR____TtC17proximitycontrold12RangingProxy__sessionState) + 24) > 1u)
  {
    if (*(*(v1 + OBJC_IVAR____TtC17proximitycontrold12RangingProxy__sessionState) + 24) == 2)
    {
      v30 = 0xE700000000000000;
      v31 = 0x676E696E6E7572;
    }

    else
    {
      v30 = 0xE900000000000064;
      v31 = 0x65646E6570737573;
    }
  }

  else if (*(*(v1 + OBJC_IVAR____TtC17proximitycontrold12RangingProxy__sessionState) + 24))
  {
    v30 = 0xE600000000000000;
    v31 = 0x646573756170;
  }

  else
  {
    v30 = 0xE800000000000000;
    v31 = 0x6576697463616E69;
  }

  v32 = v30;
  String.append(_:)(*&v31);

  v33._countAndFlagsBits = 41;
  v33._object = 0xE100000000000000;
  String.append(_:)(v33);
  v35 = *(v3 + 2);
  v34 = *(v3 + 3);
  if (v35 >= v34 >> 1)
  {
    v3 = sub_100009088((v34 > 1), v35 + 1, 1, v3);
  }

  *(v3 + 2) = v35 + 1;
  v36 = &v3[16 * v35];
  *(v36 + 4) = 0x206E6F6973736553;
  *(v36 + 5) = 0xE900000000000028;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v1 = 0x206E6F6973736553;
  v37 = [0x206E6F6973736553 description];
  v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v40 = v39;

  v41._countAndFlagsBits = v38;
  v41._object = v40;
  String.append(_:)(v41);

  v7 = 2108704;
  v8 = 0xE300000000000000;
  v9 = *(v3 + 2);
  v10 = *(v3 + 3);
  v5 = v9 + 1;
  if (v9 >= v10 >> 1)
  {
    goto LABEL_42;
  }

LABEL_39:

  *(v3 + 2) = v5;
  v42 = &v3[16 * v9];
  *(v42 + 4) = v7;
  *(v42 + 5) = v8;
  sub_100035D04(&qword_1003397D0, &qword_1002729A0);
  sub_10000E244(&qword_10033D8A0, &qword_1003397D0, &qword_1002729A0, &protocol conformance descriptor for [A]);
  v43 = BidirectionalCollection<>.joined(separator:)();

  return v43;
}

void sub_1001A7B4C(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v9 = Strong, v10 = sub_1001A6BE8(v7), v9, v10))
  {
    if (qword_100339128 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100003078(v11, qword_10034A190);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v39[7] = v4;
      v14 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v39[0] = v38;
      *v14 = 136315394;
      v16 = sub_1000092A0(v38, v15);
      v18 = sub_100017494(v16, v17, v39);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2080;
      v19 = 0xE100000000000000;
      v20 = 63;
      if (a3 == 1)
      {
        v20 = 0x65646E4572656570;
        v19 = 0xE900000000000064;
      }

      if (a3)
      {
        v21 = v20;
      }

      else
      {
        v21 = 0x74756F656D6974;
      }

      if (a3)
      {
        v22 = v19;
      }

      else
      {
        v22 = 0xE700000000000000;
      }

      v23 = sub_100017494(v21, v22, v39);

      *(v14 + 14) = v23;
      _os_log_impl(&_mh_execute_header, v12, v13, "REMOVED %s, reason: %s", v14, 0x16u);
      swift_arrayDestroy();
    }

    sub_10000D4C4(5);

    sub_100073658();
    sub_10015C174(v10);
    v24 = *(a4 + OBJC_IVAR____TtC17proximitycontrold12RangingProxy_numTokensAdded);
    v25 = __OFSUB__(v24, 1);
    v26 = v24 - 1;
    if (v25)
    {
      __break(1u);
    }

    else
    {
      *(a4 + OBJC_IVAR____TtC17proximitycontrold12RangingProxy_numTokensAdded) = v26;
      swift_beginAccess();
      v27 = swift_unknownObjectWeakLoadStrong();
      if (v27)
      {
        v28 = v27;
        sub_1001A594C(v10);
      }
    }
  }

  else
  {
    if (qword_100339128 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_100003078(v29, qword_10034A190);
    v30 = v7;
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v39[0] = v34;
      *v33 = 136315138;
      v35 = sub_10017BC10();
      v37 = sub_100017494(v35, v36, v39);

      *(v33 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v31, v32, "### DidRemove unknown nearby object %s", v33, 0xCu);
      sub_10000903C(v34);
    }
  }
}

void sub_1001A8030(void **a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v4 = Strong, v5 = sub_1001A6BE8(v2), v4, v5))
  {
    v6 = NINearbyObject.distance.getter();
    if ((v6 & 0x100000000) == 0)
    {
      v7 = v6;

      LOBYTE(v19) = 0;
      sub_10000D8F4(v7);
    }

    sub_10015C3CC(v5);
    v8 = [v2 distanceMeasurementQuality];
    v9 = v5 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_lastDistanceMeasurementQuality;
    *v9 = v8;
    *(v9 + 8) = 0;
  }

  else
  {
    if (qword_100339128 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100003078(v10, qword_10034A190);
    v11 = v2;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v19 = v15;
      *v14 = 136315138;
      v16 = sub_10017BC10();
      v18 = sub_100017494(v16, v17, &v19);

      *(v14 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v12, v13, "### Update for unknown nearby object %s", v14, 0xCu);
      sub_10000903C(v15);
    }
  }
}

uint64_t sub_1001A8458(void *a1, uint64_t a2)
{
  if (qword_100339128 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100003078(v3, qword_10034A190);
  v4 = a1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v7 = 136315650;
    *(v7 + 4) = sub_100017494(0xD000000000000025, 0x80000001002A3AA0, &v14);
    *(v7 + 12) = 2080;
    type metadata accessor for NIMotionActivityState(0);
    v9 = String.init<A>(describing:)();
    v11 = sub_100017494(v9, v10, &v14);

    *(v7 + 14) = v11;
    *(v7 + 22) = 2112;
    *(v7 + 24) = v4;
    *v8 = v4;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s: state=%s, session=%@", v7, 0x20u);
    sub_1000030B0(v8);

    swift_arrayDestroy();
  }

  return PassthroughSubject.send(_:)();
}

uint64_t getEnumTagSinglePayload for NearbyInteractionEvent(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for NearbyInteractionEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t sub_1001A8794()
{
  result = qword_10034A2E8;
  if (!qword_10034A2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034A2E8);
  }

  return result;
}

uint64_t sub_1001A87E8()
{
  v1 = 0x6576697463616E69;
  v2 = 0x676E696E6E7572;
  if (*v0 != 2)
  {
    v2 = 0x65646E6570737573;
  }

  if (*v0)
  {
    v1 = 0x646573756170;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1001A8868()
{
  result = qword_10034A2F0;
  if (!qword_10034A2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034A2F0);
  }

  return result;
}

void sub_1001A88BC(void *a3@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a3 = v4;
}

void sub_1001A893C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1001A2A18(v1, v3);
}

void sub_1001A896C(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_88:
    v9 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_121:
      v8 = sub_1001282A4(v8);
    }

    v99 = v5;
    v100 = *(v8 + 2);
    if (v100 >= 2)
    {
      while (*a3)
      {
        v5 = v100 - 1;
        v101 = *&v8[16 * v100];
        v102 = *&v8[16 * v100 + 24];
        sub_1001A964C((*a3 + 8 * v101), (*a3 + 8 * *&v8[16 * v100 + 16]), (*a3 + 8 * v102), v9);
        if (v99)
        {
          goto LABEL_98;
        }

        if (v102 < v101)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1001282A4(v8);
        }

        if (v100 - 2 >= *(v8 + 2))
        {
          goto LABEL_115;
        }

        v103 = &v8[16 * v100];
        *v103 = v101;
        *(v103 + 1) = v102;
        sub_100128218(v100 - 1);
        v100 = *(v8 + 2);
        if (v100 <= 1)
        {
          goto LABEL_98;
        }
      }

      goto LABEL_125;
    }

LABEL_98:

    return;
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7;
    v10 = v7 + 1;
    if (v7 + 1 < v6)
    {
      v105 = v5;
      v11 = *(*a3 + 8 * v10);
      v5 = 8 * v7;
      v12 = v7;
      v13 = (*a3 + 8 * v7);
      v15 = *v13;
      v14 = v13 + 2;
      v16 = v11;
      v17 = v15;
      [v16 radius];
      v19 = v18;
      [v17 radius];
      v21 = v20;

      v22 = v12 + 2;
      while (v6 != v22)
      {
        v23 = *(v14 - 1);
        v24 = *v14;
        v25 = v23;
        [v24 radius];
        v27 = v26;
        [v25 radius];
        v29 = v28;

        ++v22;
        ++v14;
        if (v19 < v21 == v27 >= v29)
        {
          v6 = (v22 - 1);
          break;
        }
      }

      v9 = v12;
      if (v19 < v21)
      {
        if (v6 < v12)
        {
          goto LABEL_118;
        }

        if (v12 < v6)
        {
          v30 = 8 * v6 - 8;
          v31 = v6;
          v32 = v12;
          do
          {
            if (v32 != --v31)
            {
              v34 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v33 = *(v34 + v5);
              *(v34 + v5) = *(v34 + v30);
              *(v34 + v30) = v33;
            }

            v32 = (v32 + 1);
            v30 -= 8;
            v5 += 8;
          }

          while (v32 < v31);
        }
      }

      v10 = v6;
      v5 = v105;
    }

    v35 = a3[1];
    if (v10 < v35)
    {
      if (__OFSUB__(v10, v9))
      {
        goto LABEL_117;
      }

      if (v10 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_119;
        }

        if (v9 + a4 >= v35)
        {
          v36 = a3[1];
        }

        else
        {
          v36 = v9 + a4;
        }

        if (v36 < v9)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v10 != v36)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v10 < v9)
    {
      goto LABEL_116;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1000AF9AC(0, *(v8 + 2) + 1, 1, v8);
    }

    v54 = *(v8 + 2);
    v53 = *(v8 + 3);
    v55 = v54 + 1;
    if (v54 >= v53 >> 1)
    {
      v8 = sub_1000AF9AC((v53 > 1), v54 + 1, 1, v8);
    }

    *(v8 + 2) = v55;
    v56 = &v8[16 * v54];
    *(v56 + 4) = v9;
    *(v56 + 5) = v10;
    v57 = *a1;
    if (!*a1)
    {
      goto LABEL_126;
    }

    v111 = v10;
    if (v54)
    {
      while (1)
      {
        v58 = v55 - 1;
        if (v55 >= 4)
        {
          break;
        }

        if (v55 == 3)
        {
          v59 = *(v8 + 4);
          v60 = *(v8 + 5);
          v69 = __OFSUB__(v60, v59);
          v61 = v60 - v59;
          v62 = v69;
LABEL_57:
          if (v62)
          {
            goto LABEL_105;
          }

          v75 = &v8[16 * v55];
          v77 = *v75;
          v76 = *(v75 + 1);
          v78 = __OFSUB__(v76, v77);
          v79 = v76 - v77;
          v80 = v78;
          if (v78)
          {
            goto LABEL_108;
          }

          v81 = &v8[16 * v58 + 32];
          v83 = *v81;
          v82 = *(v81 + 1);
          v69 = __OFSUB__(v82, v83);
          v84 = v82 - v83;
          if (v69)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v79, v84))
          {
            goto LABEL_112;
          }

          if (v79 + v84 >= v61)
          {
            if (v61 < v84)
            {
              v58 = v55 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v85 = &v8[16 * v55];
        v87 = *v85;
        v86 = *(v85 + 1);
        v69 = __OFSUB__(v86, v87);
        v79 = v86 - v87;
        v80 = v69;
LABEL_71:
        if (v80)
        {
          goto LABEL_107;
        }

        v88 = &v8[16 * v58];
        v90 = *(v88 + 4);
        v89 = *(v88 + 5);
        v69 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v69)
        {
          goto LABEL_110;
        }

        if (v91 < v79)
        {
          goto LABEL_3;
        }

LABEL_78:
        v96 = v58 - 1;
        if (v58 - 1 >= v55)
        {
          __break(1u);
LABEL_101:
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
          goto LABEL_120;
        }

        if (!*a3)
        {
          goto LABEL_123;
        }

        v97 = *&v8[16 * v96 + 32];
        v9 = *&v8[16 * v58 + 40];
        sub_1001A964C((*a3 + 8 * v97), (*a3 + 8 * *&v8[16 * v58 + 32]), (*a3 + 8 * v9), v57);
        if (v5)
        {
          goto LABEL_98;
        }

        if (v9 < v97)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1001282A4(v8);
        }

        if (v96 >= *(v8 + 2))
        {
          goto LABEL_102;
        }

        v98 = &v8[16 * v96];
        *(v98 + 4) = v97;
        *(v98 + 5) = v9;
        sub_100128218(v58);
        v55 = *(v8 + 2);
        if (v55 <= 1)
        {
          goto LABEL_3;
        }
      }

      v63 = &v8[16 * v55 + 32];
      v64 = *(v63 - 64);
      v65 = *(v63 - 56);
      v69 = __OFSUB__(v65, v64);
      v66 = v65 - v64;
      if (v69)
      {
        goto LABEL_103;
      }

      v68 = *(v63 - 48);
      v67 = *(v63 - 40);
      v69 = __OFSUB__(v67, v68);
      v61 = v67 - v68;
      v62 = v69;
      if (v69)
      {
        goto LABEL_104;
      }

      v70 = &v8[16 * v55];
      v72 = *v70;
      v71 = *(v70 + 1);
      v69 = __OFSUB__(v71, v72);
      v73 = v71 - v72;
      if (v69)
      {
        goto LABEL_106;
      }

      v69 = __OFADD__(v61, v73);
      v74 = v61 + v73;
      if (v69)
      {
        goto LABEL_109;
      }

      if (v74 >= v66)
      {
        v92 = &v8[16 * v58 + 32];
        v94 = *v92;
        v93 = *(v92 + 1);
        v69 = __OFSUB__(v93, v94);
        v95 = v93 - v94;
        if (v69)
        {
          goto LABEL_113;
        }

        if (v61 < v95)
        {
          v58 = v55 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v7 = v111;
    v6 = a3[1];
    if (v111 >= v6)
    {
      goto LABEL_88;
    }
  }

  v106 = v5;
  v37 = v9;
  v38 = *a3;
  v39 = *a3 + 8 * v10 - 8;
  v107 = v37;
  v40 = v37 - v10;
  v109 = v36;
LABEL_30:
  v110 = v10;
  v41 = *(v38 + 8 * v10);
  v42 = v40;
  v43 = v39;
  while (1)
  {
    v44 = *v43;
    v45 = v41;
    v46 = v44;
    [v45 radius];
    v48 = v47;
    [v46 radius];
    v50 = v49;

    if (v48 >= v50)
    {
LABEL_29:
      v10 = v110 + 1;
      v39 += 8;
      --v40;
      if (v110 + 1 != v109)
      {
        goto LABEL_30;
      }

      v10 = v109;
      v5 = v106;
      v9 = v107;
      goto LABEL_37;
    }

    if (!v38)
    {
      break;
    }

    v51 = *v43;
    v41 = *(v43 + 8);
    *v43 = v41;
    *(v43 + 8) = v51;
    v43 -= 8;
    if (__CFADD__(v42++, 1))
    {
      goto LABEL_29;
    }
  }

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
}

void sub_1001A8FE4(id *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
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
      v8 = sub_1001282A4(v8);
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
        sub_1001A990C((*a3 + 8 * v93), (*a3 + 8 * *&v92[16 * v91 + 16]), (*a3 + 8 * v94), v7);
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
          v92 = sub_1001282A4(v92);
        }

        if (v91 - 2 >= *(v92 + 2))
        {
          goto LABEL_116;
        }

        v95 = &v92[16 * v91];
        *v95 = v93;
        *(v95 + 1) = v94;
        sub_100128218(v91 - 1);
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
      v106 = [v13 regionSizeCategory];
      v104 = [v14 regionSizeCategory];

      v99 = v9;
      v15 = v9 + 2;
      while (v6 != v15)
      {
        v16 = *(v11 - 1);
        v17 = *v11;
        v18 = v16;
        v19 = v8;
        v20 = [v17 regionSizeCategory];
        v7 = [v18 regionSizeCategory];

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
      v8 = sub_1000AF9AC(0, *(v8 + 2) + 1, 1, v8);
    }

    v45 = *(v8 + 2);
    v44 = *(v8 + 3);
    v46 = v45 + 1;
    if (v45 >= v44 >> 1)
    {
      v8 = sub_1000AF9AC((v44 > 1), v45 + 1, 1, v8);
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
        sub_1001A990C((*a3 + 8 * v88), (*a3 + 8 * *&v8[16 * v49 + 32]), (*a3 + 8 * v89), v48);
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
          v8 = sub_1001282A4(v8);
        }

        if (v87 >= *(v8 + 2))
        {
          goto LABEL_103;
        }

        v90 = &v8[16 * v87];
        *(v90 + 4) = v88;
        *(v90 + 5) = v89;
        sub_100128218(v49);
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
    v40 = [v38 regionSizeCategory];
    v41 = [v39 regionSizeCategory];

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