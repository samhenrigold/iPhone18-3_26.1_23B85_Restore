id sub_10017A0D4()
{
  v1 = v0;
  if (qword_1003390F8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_100348E70);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deinit", v5, 2u);
  }

  sub_10017A26C();
  v7.receiver = v1;
  v7.super_class = type metadata accessor for IDSProxy();
  return objc_msgSendSuper2(&v7, "dealloc");
}

double sub_10017A26C()
{
  v1 = v0;
  if (qword_1003390F8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_100348E70);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Invalidate", v5, 2u);
  }

  v6 = OBJC_IVAR____TtC17proximitycontrold8IDSProxy_service;
  v7 = *(v1 + OBJC_IVAR____TtC17proximitycontrold8IDSProxy_service);
  if (v7)
  {
    [v7 removeDelegate:v1];
    v8 = *(v1 + v6);
    *(v1 + v6) = 0;
  }

  sub_1001AC478();

  return result;
}

double sub_10017A3A0()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v4 = v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_100035D04(&qword_100348F48, &unk_100283390);
  v41 = *(v43 - 8);
  __chkstk_darwin(v43);
  v6 = v30 - v5;
  v42 = v0;
  v40 = OBJC_IVAR____TtC17proximitycontrold8IDSProxy_devices;
  v44 = *(*(v0 + OBJC_IVAR____TtC17proximitycontrold8IDSProxy_devices) + 32);
  v7 = sub_100035D04(&unk_100348F50, &qword_100272B30);
  v38 = sub_10000E244(&qword_100346A58, &unk_100348F50, &qword_100272B30, &protocol conformance descriptor for PassthroughSubject<A, B>);
  v39 = v7;
  v8 = Publisher.eraseToAnyPublisher()();
  if (qword_1003390F8 != -1)
  {
    swift_once();
  }

  v9 = sub_100003078(v1, qword_100348E70);
  v36 = v9;
  v10 = static os_log_type_t.info.getter();
  v44 = v8;
  v11 = *(v2 + 16);
  v35 = v2 + 16;
  v37 = v11;
  v11(v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v9, v1);
  v12 = v1;
  v31 = v1;
  v13 = *(v2 + 80);
  v34 = (v13 + 64) & ~v13;
  v30[2] = v8;
  v14 = v34 + v3;
  v32 = v34 + v3;
  v15 = swift_allocObject();
  *(v15 + 2) = 0;
  *(v15 + 3) = 0;
  *(v15 + 4) = 0x20444E554F46;
  *(v15 + 5) = 0xE600000000000000;
  *(v15 + 6) = 0;
  *(v15 + 7) = 0xE000000000000000;
  v16 = *(v2 + 32);
  v30[4] = v2 + 32;
  v33 = v16;
  v16(&v15[(v13 + 64) & ~v13], v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  v15[v14] = v10;
  v17 = sub_100035D04(&unk_100348F60, &unk_1002833A0);
  v30[6] = sub_10017B028();
  v18 = sub_10000E244(&qword_100346A60, &unk_100348F60, &unk_1002833A0, &protocol conformance descriptor for AnyPublisher<A, B>);
  v30[1] = v17;
  v30[3] = v18;
  Publisher.map<A>(_:)();

  v30[5] = sub_10000E244(&unk_100348F70, &qword_100348F48, &unk_100283390, &protocol conformance descriptor for Publishers.Map<A, B>);
  v19 = v43;
  v20 = Publisher.eraseToAnyPublisher()();

  v41 = *(v41 + 8);
  (v41)(v6, v19);
  v44 = v20;
  Publisher<>.sink(receiveValue:)();

  v21 = v42;
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v44 = *(*(v21 + v40) + 48);
  v22 = Publisher.eraseToAnyPublisher()();
  LOBYTE(v20) = static os_log_type_t.info.getter();
  v44 = v22;
  v23 = v4;
  v24 = v31;
  v37(v4, v36, v31);
  v25 = v32;
  v26 = swift_allocObject();
  *(v26 + 2) = 0;
  *(v26 + 3) = 0;
  *(v26 + 4) = 0x2054534F4CLL;
  *(v26 + 5) = 0xE500000000000000;
  *(v26 + 6) = 0;
  *(v26 + 7) = 0xE000000000000000;
  v33(&v26[v34], v23, v24);
  v26[v25] = v20;
  Publisher.map<A>(_:)();

  v27 = v43;
  v28 = Publisher.eraseToAnyPublisher()();

  (v41)(v6, v27);
  v44 = v28;
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return result;
}

void sub_10017ABB4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v2 + OBJC_IVAR____TtC17proximitycontrold8IDSProxy_dispatchQueue);
  *v7 = v8;
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    if (qword_1003390F8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v10 = type metadata accessor for Logger();
  sub_100003078(v10, qword_100348E70);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v18 = a1;
    v19 = v14;
    *v13 = 136315138;

    sub_100035D04(&qword_100348F40, &qword_100283388);
    v15 = String.init<A>(describing:)();
    v17 = sub_100017494(v15, v16, &v19);

    *(v13 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v11, v12, "Active accounts changed: %s", v13, 0xCu);
    sub_10000903C(v14);
  }

  sub_100179AA4();
}

void sub_10017AE1C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v2 + OBJC_IVAR____TtC17proximitycontrold8IDSProxy_dispatchQueue);
  *v7 = v8;
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    if (qword_1003390F8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v10 = type metadata accessor for Logger();
  sub_100003078(v10, qword_100348E70);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v11, v12))
  {

    goto LABEL_7;
  }

  v13 = swift_slowAlloc();
  *v13 = 134217984;
  if (a1)
  {
    *(v13 + 4) = *(a1 + 16);
    v14 = v13;

    _os_log_impl(&_mh_execute_header, v11, v12, "Devices changed (%ld devices)", v14, 0xCu);

LABEL_7:
    sub_100179AA4();
    return;
  }

  __break(1u);
}

unint64_t sub_10017B028()
{
  result = qword_10033B5F0;
  if (!qword_10033B5F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10033B5F0);
  }

  return result;
}

void *sub_10017B078@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = *(type metadata accessor for Logger() - 8);
  v6 = (*(v5 + 80) + 64) & ~*(v5 + 80);
  v7 = sub_1001CE3F8(*a1, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), v2 + v6, *(v2 + v6 + *(v5 + 64)));
  *a2 = v7;

  return v7;
}

uint64_t sub_10017B154(uint64_t a1, uint64_t a2)
{
  v4 = sub_100035D04(&unk_100348F30, &unk_100272540);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t NIDistanceMeasurementQuality.shortDescription.getter(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 != 2)
    {
      if (a1 == 3)
      {
        return 1919905648;
      }

      goto LABEL_8;
    }

    return 0x2820657372616F63;
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        return 0x77752820656E6966;
      }

LABEL_8:
      v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v2);

      v3._countAndFlagsBits = 41;
      v3._object = 0xE100000000000000;
      String.append(_:)(v3);
      return 0x206E776F6E6B6E55;
    }

    return 0x6669636570736E75;
  }
}

id sub_10017B360()
{
  v0 = [objc_allocWithZone(NSMeasurementFormatter) init];
  [v0 setUnitStyle:1];
  result = [v0 setUnitOptions:1];
  qword_100348F90 = v0;
  return result;
}

uint64_t sub_10017B3C4()
{
  NINearbyObject.direction.getter();
  if (v0)
  {
    return 0;
  }

  sub_1000CDF40(0, 3, 0);
  v2 = Float.description.getter();
  v5 = _swiftEmptyArrayStorage[2];
  v4 = _swiftEmptyArrayStorage[3];
  if (v5 >= v4 >> 1)
  {
    v34 = v2;
    v35 = v3;
    sub_1000CDF40((v4 > 1), v5 + 1, 1);
    v3 = v35;
    v2 = v34;
  }

  _swiftEmptyArrayStorage[2] = v5 + 1;
  v6 = &_swiftEmptyArrayStorage[2 * v5];
  v6[4] = v2;
  v6[5] = v3;
  v7 = Float.description.getter();
  v10 = _swiftEmptyArrayStorage[2];
  v9 = _swiftEmptyArrayStorage[3];
  if (v10 >= v9 >> 1)
  {
    v36 = v7;
    v37 = v8;
    sub_1000CDF40((v9 > 1), v10 + 1, 1);
    v8 = v37;
    v7 = v36;
  }

  _swiftEmptyArrayStorage[2] = v10 + 1;
  v11 = &_swiftEmptyArrayStorage[2 * v10];
  v11[4] = v7;
  v11[5] = v8;
  v12 = Float.description.getter();
  v15 = _swiftEmptyArrayStorage[2];
  v14 = _swiftEmptyArrayStorage[3];
  v16 = v15 + 1;
  if (v15 >= v14 >> 1)
  {
    v38 = v12;
    v39 = v13;
    sub_1000CDF40((v14 > 1), v15 + 1, 1);
    v13 = v39;
    v12 = v38;
  }

  _swiftEmptyArrayStorage[2] = v16;
  v17 = &_swiftEmptyArrayStorage[2 * v15];
  v17[4] = v12;
  v17[5] = v13;
  sub_1000CE020(0, v15 + 1, 0);
  v18 = &_swiftEmptyArrayStorage[5];
  do
  {

    String.index(_:offsetBy:limitedBy:)();
    v19 = String.subscript.getter();
    v21 = v20;
    v23 = v22;
    v25 = v24;

    v27 = _swiftEmptyArrayStorage[2];
    v26 = _swiftEmptyArrayStorage[3];
    if (v27 >= v26 >> 1)
    {
      sub_1000CE020((v26 > 1), v27 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v27 + 1;
    v28 = &_swiftEmptyArrayStorage[4 * v27];
    v28[4] = v19;
    v28[5] = v21;
    v28[6] = v23;
    v28[7] = v25;
    v18 += 2;
    --v16;
  }

  while (v16);

  sub_100035D04(&qword_100348FA0, &qword_1002834A0);
  sub_10000E244(&qword_100348FA8, &qword_100348FA0, &qword_1002834A0, &protocol conformance descriptor for [A]);
  sub_10017C330();
  v29 = Sequence<>.joined(separator:)();
  v31 = v30;

  v32._countAndFlagsBits = v29;
  v32._object = v31;
  String.append(_:)(v32);

  v33._countAndFlagsBits = 41;
  v33._object = 0xE100000000000000;
  String.append(_:)(v33);
  return 40;
}

uint64_t sub_10017B724()
{
  v0 = sub_100035D04(&qword_100348FB8, &qword_1002834A8);
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v10 - v5;
  if ((NINearbyObject.distance.getter() & 0x100000000) != 0)
  {
    return 0;
  }

  v7 = [objc_opt_self() meters];
  sub_100003118(0, &qword_100348FC0, NSUnitLength_ptr);
  Measurement.init(value:unit:)();
  (*(v1 + 32))(v6, v4, v0);
  if (qword_100339100 != -1)
  {
    swift_once();
  }

  v8 = NSMeasurementFormatter.string<A>(from:)();
  (*(v1 + 8))(v6, v0);
  return v8;
}

uint64_t NINearbyObject.description.getter()
{
  v1 = 0xE300000000000000;
  v28[0] = 4023401;
  v28[1] = 0xE300000000000000;
  v2 = [v0 deviceIdentifier];
  if (v2)
  {
    v3 = v2;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v4 = String.init<A>(describing:)();
    v1 = v5;
  }

  else
  {
    v4 = 7104878;
  }

  v6 = v1;
  String.append(_:)(*&v4);

  v7 = v28[0];
  v8 = v28[1];
  v9 = sub_100009088(0, 1, 1, _swiftEmptyArrayStorage);
  v11 = *(v9 + 2);
  v10 = *(v9 + 3);
  if (v11 >= v10 >> 1)
  {
    v9 = sub_100009088((v10 > 1), v11 + 1, 1, v9);
  }

  *(v9 + 2) = v11 + 1;
  v12 = &v9[16 * v11];
  *(v12 + 4) = v7;
  *(v12 + 5) = v8;
  v13 = sub_10017B724();
  if (v14)
  {
    v28[0] = 0x3D74736964;
    v28[1] = 0xE500000000000000;
    String.append(_:)(*&v13);

    v16 = *(v9 + 2);
    v15 = *(v9 + 3);
    if (v16 >= v15 >> 1)
    {
      v9 = sub_100009088((v15 > 1), v16 + 1, 1, v9);
    }

    *(v9 + 2) = v16 + 1;
    v17 = &v9[16 * v16];
    *(v17 + 4) = 0x3D74736964;
    *(v17 + 5) = 0xE500000000000000;
  }

  v18 = sub_10017B3C4();
  if (v19)
  {
    v28[0] = 1030908260;
    v28[1] = 0xE400000000000000;
    String.append(_:)(*&v18);

    v21 = *(v9 + 2);
    v20 = *(v9 + 3);
    if (v21 >= v20 >> 1)
    {
      v9 = sub_100009088((v20 > 1), v21 + 1, 1, v9);
    }

    *(v9 + 2) = v21 + 1;
    v22 = &v9[16 * v21];
    *(v22 + 4) = 1030908260;
    *(v22 + 5) = 0xE400000000000000;
  }

  strcpy(v28, "NearbyObject ");
  sub_100035D04(&qword_1003397D0, &qword_1002729A0);
  sub_10000E244(&qword_10033D8A0, &qword_1003397D0, &qword_1002729A0, &protocol conformance descriptor for [A]);
  v23 = BidirectionalCollection<>.joined(separator:)();
  v25 = v24;

  v26._countAndFlagsBits = v23;
  v26._object = v25;
  String.append(_:)(v26);

  return v28[0];
}

uint64_t sub_10017BC10()
{
  v1 = v0;
  sub_100035D04(&unk_10033D890, &qword_100275EB0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10026F050;
  strcpy((v2 + 32), "NINearbyObject");
  *(v2 + 47) = -18;
  v3 = [v0 deviceIdentifer];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    v8._countAndFlagsBits = v5;
    v8._object = v7;
    String.append(_:)(v8);

    v10 = *(v2 + 16);
    v9 = *(v2 + 24);
    if (v10 >= v9 >> 1)
    {
      v2 = sub_100009088((v9 > 1), v10 + 1, 1, v2);
    }

    *(v2 + 16) = v10 + 1;
    v11 = v2 + 16 * v10;
    *(v11 + 32) = 4023401;
    *(v11 + 40) = 0xE300000000000000;
  }

  if (([v1 relationship] & 2) != 0)
  {
    v12 = sub_100009088(0, 1, 1, _swiftEmptyArrayStorage);
    v14 = *(v12 + 2);
    v13 = *(v12 + 3);
    if (v14 >= v13 >> 1)
    {
      v12 = sub_100009088((v13 > 1), v14 + 1, 1, v12);
    }

    *(v12 + 2) = v14 + 1;
    v15 = &v12[16 * v14];
    *(v15 + 4) = 0x6E776F6E6BLL;
    *(v15 + 5) = 0xE500000000000000;
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  if (([v1 relationship] & 4) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_100009088(0, *(v12 + 2) + 1, 1, v12);
    }

    v17 = *(v12 + 2);
    v16 = *(v12 + 3);
    if (v17 >= v16 >> 1)
    {
      v12 = sub_100009088((v16 > 1), v17 + 1, 1, v12);
    }

    *(v12 + 2) = v17 + 1;
    v18 = &v12[16 * v17];
    *(v18 + 4) = 0x6E656B6F74;
    *(v18 + 5) = 0xE500000000000000;
  }

  else if (!*(v12 + 2))
  {

    goto LABEL_21;
  }

  sub_100035D04(&qword_1003397D0, &qword_1002729A0);
  sub_10000E244(&qword_10033D8A0, &qword_1003397D0, &qword_1002729A0, &protocol conformance descriptor for [A]);
  v19 = BidirectionalCollection<>.joined(separator:)();
  v21 = v20;

  v22._countAndFlagsBits = v19;
  v22._object = v21;
  String.append(_:)(v22);

  v23._countAndFlagsBits = 93;
  v23._object = 0xE100000000000000;
  String.append(_:)(v23);
  v25 = *(v2 + 16);
  v24 = *(v2 + 24);
  if (v25 >= v24 >> 1)
  {
    v2 = sub_100009088((v24 > 1), v25 + 1, 1, v2);
  }

  *(v2 + 16) = v25 + 1;
  v26 = v2 + 16 * v25;
  *(v26 + 32) = 0x5B3D6C6572;
  *(v26 + 40) = 0xE500000000000000;
LABEL_21:
  if ((NINearbyObject.distance.getter() & 0x100000000) == 0)
  {
    v27._countAndFlagsBits = Float.description.getter();
    String.append(_:)(v27);

    v28._countAndFlagsBits = 109;
    v28._object = 0xE100000000000000;
    String.append(_:)(v28);
    v29._countAndFlagsBits = NIDistanceMeasurementQuality.shortDescription.getter([v1 distanceMeasurementQuality]);
    String.append(_:)(v29);

    v30._countAndFlagsBits = 41;
    v30._object = 0xE100000000000000;
    String.append(_:)(v30);
    v31._countAndFlagsBits = 10272;
    v31._object = 0xE200000000000000;
    String.append(_:)(v31);

    v33 = *(v2 + 16);
    v32 = *(v2 + 24);
    if (v33 >= v32 >> 1)
    {
      v2 = sub_100009088((v32 > 1), v33 + 1, 1, v2);
    }

    *(v2 + 16) = v33 + 1;
    v34 = v2 + 16 * v33;
    *(v34 + 32) = 0x3D74736964;
    *(v34 + 40) = 0xE500000000000000;
  }

  v35 = sub_10017B3C4();
  if (v36)
  {
    String.append(_:)(*&v35);

    v38 = *(v2 + 16);
    v37 = *(v2 + 24);
    if (v38 >= v37 >> 1)
    {
      v2 = sub_100009088((v37 > 1), v38 + 1, 1, v2);
    }

    *(v2 + 16) = v38 + 1;
    v39 = v2 + 16 * v38;
    *(v39 + 32) = 1030908260;
    *(v39 + 40) = 0xE400000000000000;
  }

  sub_100035D04(&qword_1003397D0, &qword_1002729A0);
  sub_10000E244(&qword_10033D8A0, &qword_1003397D0, &qword_1002729A0, &protocol conformance descriptor for [A]);
  v40 = BidirectionalCollection<>.joined(separator:)();
  v42 = v41;

  v43._countAndFlagsBits = v40;
  v43._object = v42;
  String.append(_:)(v43);

  v44._countAndFlagsBits = 62;
  v44._object = 0xE100000000000000;
  String.append(_:)(v44);
  return 60;
}

uint64_t NINearbyObjectRemovalReason.description.getter(uint64_t a1)
{
  v1 = 63;
  if (a1 == 1)
  {
    v1 = 0x65646E4572656570;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0x74756F656D6974;
  }
}

uint64_t sub_10017C1C8()
{
  v1 = 63;
  if (*v0 == 1)
  {
    v1 = 0x65646E4572656570;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x74756F656D6974;
  }
}

uint64_t NINearbyObjectUpdateRate.description.getter(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 != 2)
    {
      if (a1 == 3)
      {
        return 1701736302;
      }

      goto LABEL_8;
    }

    return 0x65746E4972657375;
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        return 0x7962646E617473;
      }

LABEL_8:
      v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v2);

      return 0x3A6E776F6E6B6E75;
    }

    return 0x64656375646572;
  }
}

unint64_t sub_10017C330()
{
  result = qword_100348FB0;
  if (!qword_100348FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348FB0);
  }

  return result;
}

uint64_t sub_10017C384(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(void *))
{
  v5[0] = a1;
  v5[1] = a2;
  v6 = a3 & 1;
  return a4(v5);
}

void sub_10017C3C4(void (*a1)(void ***), uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    sub_10024D824(_swiftEmptyArrayStorage);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v8 = swift_allocObject();
    *(v8 + 16) = sub_10017C5A8;
    *(v8 + 24) = v5;
    v16 = sub_10017C794;
    v17 = v8;
    aBlock = _NSConcreteStackBlock;
    v13 = 1107296256;
    v14 = sub_10017C6E8;
    v15 = &unk_10030D290;
    v9 = _Block_copy(&aBlock);

    [Strong _createUserActivityDataWithOptions:isa completionHandler:v9];
    _Block_release(v9);
  }

  else
  {

    sub_10001618C();
    v10 = swift_allocError();
    *v11 = 0x666C6573206C696ELL;
    *(v11 + 8) = 0xE800000000000000;
    *(v11 + 16) = 9;
    aBlock = v10;
    v13 = 0;
    LOBYTE(v14) = 1;
    a1(&aBlock);
  }
}

uint64_t sub_10017C5A8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(v3 + 16);
  v6[0] = a1;
  v6[1] = a2;
  v7 = a3 & 1;
  return v4(v6);
}

uint64_t sub_10017C5E8(uint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(uint64_t, unint64_t, uint64_t))
{
  if (a2 >> 60 == 15)
  {
    if (a3)
    {
      swift_errorRetain();
      v6 = a3;
    }

    else
    {
      sub_10001618C();
      v6 = swift_allocError();
      *v10 = 0xD00000000000001BLL;
      *(v10 + 8) = 0x80000001002A3090;
      *(v10 + 16) = 9;
    }

    a4(v6, 0, 1);
  }

  else
  {
    sub_10006DA04(a1, a2);
    a4(a1, a2, 0);

    return sub_10006DB04(a1, a2);
  }
}

double sub_10017C6E8(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {

    v6 = v4;
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {

    v8 = 0xF000000000000000;
  }

  v9 = a3;
  v5(v4, v8, a3);

  sub_10006DB04(v4, v8);

  return result;
}

double sub_10017C79C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

uint64_t sub_10017C7F0()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_100348FC8);
  sub_100003078(v0, qword_100348FC8);
  return Logger.init(subsystem:category:)();
}

double sub_10017C870()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return result;
}

uint64_t sub_10017C8E8()
{
  v1 = OBJC_IVAR____TtC17proximitycontrold23RemoteFollowerPresenter____lazy_storage___remoteFollowerNoticePresenter;
  if (*(v0 + OBJC_IVAR____TtC17proximitycontrold23RemoteFollowerPresenter____lazy_storage___remoteFollowerNoticePresenter))
  {
    v2 = *(v0 + OBJC_IVAR____TtC17proximitycontrold23RemoteFollowerPresenter____lazy_storage___remoteFollowerNoticePresenter);
  }

  else
  {
    v3 = sub_10017C974();
    type metadata accessor for RemoteFollowerNoticePresenter();
    swift_allocObject();
    v2 = sub_10011DB50(v3);
    *(v0 + v1) = v2;
  }

  return v2;
}

void *sub_10017C974()
{
  v1 = OBJC_IVAR____TtC17proximitycontrold23RemoteFollowerPresenter____lazy_storage___remoteFollowerNoticePresenterModel;
  if (*(v0 + OBJC_IVAR____TtC17proximitycontrold23RemoteFollowerPresenter____lazy_storage___remoteFollowerNoticePresenterModel))
  {
    v2 = *(v0 + OBJC_IVAR____TtC17proximitycontrold23RemoteFollowerPresenter____lazy_storage___remoteFollowerNoticePresenterModel);
  }

  else
  {
    v3 = swift_allocObject();
    swift_weakInit();
    v4 = swift_allocObject();
    swift_weakInit();
    type metadata accessor for RemoteFollowerNoticePresenterModel();
    v2 = swift_allocObject();
    v2[2] = sub_100184370;
    v2[3] = v3;
    v2[4] = sub_100184378;
    v2[5] = v4;
    *(v0 + v1) = v2;
  }

  return v2;
}

void *sub_10017CA60(uint64_t a1)
{
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return 0;
  }

  swift_unownedRetainStrong();

  v1 = sub_100142E20();

  v2 = v1[4];
  v3 = v2;

  if (v2)
  {
    sub_100183744(&qword_10033E808, type metadata accessor for RapportProxy, &unk_100296888);
  }

  return v2;
}

double sub_10017CB34(uint64_t *a1, uint64_t a2, unint64_t a3, void **a4, void **a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1001808DC(a1, a2, a3, a4, a5, a6);
  }

  return result;
}

double sub_10017CBD8(char *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_10017D29C(a1, a2);
  }

  return result;
}

double sub_10017CC4C(uint64_t *a1)
{
  sub_1000938C4();

  sub_100035D04(&qword_100349280, &qword_1002835F0);
  sub_100035D04(&qword_100349288, &qword_1002835F8);
  sub_10000E244(&qword_100349290, &qword_100349280, &qword_1002835F0, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher.map<A>(_:)();

  return result;
}

double sub_10017CD48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_10017E350(a1, a2);
  }

  return result;
}

double sub_10017CDBC(uint64_t *a1)
{
  sub_100093E5C();

  sub_100035D04(&qword_100349270, &qword_1002835E8);
  sub_100035D04(&qword_100349268, &qword_1002835E0);
  sub_10000E244(&qword_100349278, &qword_100349270, &qword_1002835E8, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher.map<A>(_:)();

  return result;
}

uint64_t sub_10017CEB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(sub_100035D04(&qword_100349268, &qword_1002835E0) + 48);
  sub_100183B28(a1, a3, type metadata accessor for NoticeEffect);
  *(a3 + v6) = a2;
}

double sub_10017CF38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_10017E924(a1, a2);
  }

  return result;
}

uint64_t sub_10017CFAC()
{
  v1 = v0;
  if (qword_100339108 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_100348FC8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deinit", v5, 2u);
  }

  swift_unownedRelease();
  v6 = OBJC_IVAR____TtC17proximitycontrold23RemoteFollowerPresenter__keepAliveMessage;
  v7 = sub_100035D04(&qword_100349220, &unk_1002835C0);
  (*(*(v7 - 8) + 8))(v1 + v6, v7);

  return v1;
}

uint64_t sub_10017D120()
{
  sub_10017CFAC();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RemoteFollowerPresenter(uint64_t a1)
{
  result = qword_100349038;
  if (!qword_100349038)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10017D1CC(uint64_t a1)
{
  sub_1001825CC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double sub_10017D29C(char *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100035D04(&unk_100349050, &qword_100283530);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v101 = &v84 - v10;
  v11 = sub_100035D04(&qword_10034C680, &qword_100270390);
  __chkstk_darwin(v11 - 8);
  v95 = &v84 - v12;
  v96 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  v94 = *(v96 - 8);
  __chkstk_darwin(v96);
  v14 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100035D04(&qword_1003492C8, &qword_100283738);
  v90 = *(v15 - 8);
  v91 = v15;
  __chkstk_darwin(v15);
  v17 = &v84 - v16;
  v18 = sub_100035D04(&qword_1003492D0, &qword_100283740);
  v92 = *(v18 - 8);
  v93 = v18;
  __chkstk_darwin(v18);
  v89 = &v84 - v19;
  v20 = sub_100035D04(&qword_1003492D8, &qword_100283748);
  v98 = *(v20 - 8);
  v99 = v20;
  __chkstk_darwin(v20);
  v97 = &v84 - v21;
  v22 = type metadata accessor for RemoteFollowerMessage(0);
  v100 = *(v22 - 8);
  __chkstk_darwin(v22);
  v24 = &v84 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100339108 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_100003078(v25, qword_100348FC8);

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();

  v28 = os_log_type_enabled(v26, v27);
  v103 = v3;
  v104 = a2;
  v102 = v22;
  if (v28)
  {
    v85 = v27;
    v86 = v9;
    v87 = v14;
    v88 = v24;
    v29 = swift_slowAlloc();
    v105 = swift_slowAlloc();
    *v29 = 136315650;
    *(v29 + 4) = sub_100017494(0xD000000000000016, 0x800000010029F5B0, &v105);
    *(v29 + 12) = 2080;
    if (a1)
    {
      v106 = 60;
      v107 = 0xE100000000000000;
      v30 = UUID.uuidString.getter();
      sub_10000B584(8, v30, v31);

      v32 = static String._fromSubstring(_:)();
      v34 = v33;

      v35._countAndFlagsBits = v32;
      v35._object = v34;
      String.append(_:)(v35);

      v36._countAndFlagsBits = 32;
      v36._object = 0xE100000000000000;
      String.append(_:)(v36);
      v39._countAndFlagsBits = sub_1000092A0(v37, v38);
      String.append(_:)(v39);

      v40._countAndFlagsBits = 62;
      v40._object = 0xE100000000000000;
      String.append(_:)(v40);
      v41 = v106;
      v42 = v107;
    }

    else
    {
      v42 = 0xE300000000000000;
      v41 = 7104878;
    }

    v44 = sub_100017494(v41, v42, &v105);

    *(v29 + 14) = v44;
    *(v29 + 22) = 2080;
    if (v104)
    {
      v106 = 60;
      v107 = 0xE100000000000000;
      v45 = UUID.uuidString.getter();
      sub_10000B584(8, v45, v46);
      v84 = v17;

      v47 = static String._fromSubstring(_:)();
      v49 = v48;

      v50._countAndFlagsBits = v47;
      v50._object = v49;
      String.append(_:)(v50);

      v51._countAndFlagsBits = 32;
      v51._object = 0xE100000000000000;
      String.append(_:)(v51);
      v17 = v84;
      v54._countAndFlagsBits = sub_1000092A0(v52, v53);
      String.append(_:)(v54);

      v55._countAndFlagsBits = 62;
      v55._object = 0xE100000000000000;
      String.append(_:)(v55);
      v56 = v106;
      v57 = v107;
      v24 = v88;
      v22 = v102;
      v14 = v87;
    }

    else
    {
      v57 = 0xE300000000000000;
      v24 = v88;
      v22 = v102;
      v14 = v87;
      v56 = 7104878;
    }

    v58 = sub_100017494(v56, v57, &v105);

    *(v29 + 24) = v58;
    _os_log_impl(&_mh_execute_header, v26, v85, "%s: session=%s, oldSession=%s", v29, 0x20u);
    swift_arrayDestroy();

    v43 = v103;
    v9 = v86;
    if (a1)
    {
      goto LABEL_13;
    }

LABEL_22:
    *(v43 + OBJC_IVAR____TtC17proximitycontrold23RemoteFollowerPresenter_keepAliveTask) = 0;

    v80 = v101;
    (*(v100 + 56))(v101, 1, 1, v22);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_100009848(v80, v9, &unk_100349050, &qword_100283530);

    static Published.subscript.setter();
    sub_1000097E8(v80, &unk_100349050, &qword_100283530);
    if (!v104)
    {
      return result;
    }

    goto LABEL_23;
  }

  v43 = v3;
  if (!a1)
  {
    goto LABEL_22;
  }

LABEL_13:

  if ((sub_100092F70(v59, v60) & 1) == 0)
  {
    if (qword_100338F18 != -1)
    {
      swift_once();
    }

    v61 = *(qword_10038B0B8 + 112);
    v62 = sub_1000031CC();

    if ((v62 & 1) == 0)
    {

      goto LABEL_22;
    }
  }

  UUID.init()();
  v63 = &v24[*(v22 + 20)];
  *v63 = 0x401C000000000000;
  v63[8] = 0;
  sub_10008D35C();
  sub_100151F24(v24);

  swift_beginAccess();
  sub_100035D04(&qword_100349220, &unk_1002835C0);
  Published.projectedValue.getter();
  swift_endAccess();
  static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)();
  v101 = a1;
  if (qword_1003391E8 != -1)
  {
    swift_once();
  }

  v64 = qword_10038B5B8;
  v106 = qword_10038B5B8;
  v65 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v66 = v95;
  (*(*(v65 - 8) + 56))(v95, 1, 1, v65);
  sub_100003118(0, &qword_100339320, OS_dispatch_queue_ptr);
  sub_10000E244(&qword_1003492E0, &qword_1003492C8, &qword_100283738, &protocol conformance descriptor for Published<A>.Publisher);
  sub_1000513CC();
  v67 = v64;
  v68 = v89;
  v69 = v91;
  Publisher.debounce<A>(for:scheduler:options:)();
  sub_1000097E8(v66, &qword_10034C680, &qword_100270390);

  (*(v94 + 8))(v14, v96);
  (*(v90 + 8))(v17, v69);
  sub_10000E244(&qword_1003492E8, &qword_1003492D0, &qword_100283740, &protocol conformance descriptor for Publishers.Debounce<A, B>);
  v70 = v97;
  v71 = v93;
  v72 = v102;
  Publisher.compactMap<A>(_:)();
  (*(v92 + 8))(v68, v71);
  v73 = swift_allocObject();
  v74 = v103;
  swift_weakInit();
  v75 = swift_allocObject();
  v76 = v101;
  *(v75 + 16) = v73;
  *(v75 + 24) = v76;
  sub_10000E244(&qword_1003492F0, &qword_1003492D8, &qword_100283748, &protocol conformance descriptor for Publishers.CompactMap<A, B>);

  v77 = v99;
  v78 = Publisher<>.sink(receiveValue:)();

  (*(v98 + 8))(v70, v77);
  sub_100183D58(v24, type metadata accessor for RemoteFollowerMessage);
  *(v74 + OBJC_IVAR____TtC17proximitycontrold23RemoteFollowerPresenter_keepAliveTask) = v78;

  v22 = v72;
  if (v104)
  {
LABEL_23:

    if (sub_100092F70(v81, v82))
    {
      UUID.init()();
      v83 = &v24[*(v22 + 20)];
      *v83 = 0;
      v83[8] = 2;
      sub_10008D35C();
      sub_100151F24(v24);

      sub_100183D58(v24, type metadata accessor for RemoteFollowerMessage);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_10017DF4C(char *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100035D04(&unk_100349050, &qword_100283530);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v32 - v9;
  v11 = type metadata accessor for RemoteFollowerMessage(0);
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v32 - v16;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v35 = result;
    if (qword_100339108 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100003078(v19, qword_100348FC8);
    sub_100183B28(a1, v17, type metadata accessor for RemoteFollowerMessage);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v32 = v12;
      v23 = v22;
      v24 = swift_slowAlloc();
      v34 = a3;
      v25 = v24;
      v36 = v24;
      *v23 = 136315138;
      sub_100183B28(v17, v15, type metadata accessor for RemoteFollowerMessage);
      v26 = String.init<A>(describing:)();
      v33 = v11;
      v27 = a1;
      v28 = v8;
      v30 = v29;
      sub_100183D58(v17, type metadata accessor for RemoteFollowerMessage);
      v31 = sub_100017494(v26, v30, &v36);
      v8 = v28;
      a1 = v27;
      v11 = v33;

      *(v23 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v20, v21, "Sending Keep Alive message: %s", v23, 0xCu);
      sub_10000903C(v25);

      v12 = v32;
    }

    else
    {

      sub_100183D58(v17, type metadata accessor for RemoteFollowerMessage);
    }

    sub_10008D35C();
    sub_100151F24(a1);

    sub_100183B28(a1, v10, type metadata accessor for RemoteFollowerMessage);
    (*(v12 + 56))(v10, 0, 1, v11);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_100009848(v10, v8, &unk_100349050, &qword_100283530);
    static Published.subscript.setter();
    return sub_1000097E8(v10, &unk_100349050, &qword_100283530);
  }

  return result;
}

uint64_t sub_10017E350(uint64_t a1, uint64_t a2)
{
  v49 = a1;
  v3 = sub_100035D04(&unk_100349050, &qword_100283530);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v42 - v7;
  v9 = type metadata accessor for RemoteFollowerMessage(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100339108 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100003078(v13, qword_100348FC8);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v44 = v10;
    v46 = v8;
    v16 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v53 = v43;
    *v16 = 136315650;
    *(v16 + 4) = sub_100017494(0x5F28656C646E6168, 0xEE00293A726F663ALL, &v53);
    *(v16 + 12) = 2080;
    v47 = v6;
    v48 = v2;
    v45 = v9;
    if (v49 == 2)
    {
      v17 = 0xE500000000000000;
      v18 = 0x6D6F6F6C62;
    }

    else if (v49 == 3)
    {
      v17 = 0xE400000000000000;
      v18 = 1886352499;
    }

    else
    {
      v51 = 0;
      v52 = 0xE000000000000000;
      v21._countAndFlagsBits = 0x2D776F6C67;
      v21._object = 0xE500000000000000;
      String.append(_:)(v21);
      v50 = v49 & 1;
      _print_unlocked<A, B>(_:_:)();
      v18 = v51;
      v17 = v52;
    }

    v22 = sub_100017494(v18, v17, &v53);

    *(v16 + 14) = v22;
    *(v16 + 22) = 2080;
    v51 = 60;
    v52 = 0xE100000000000000;
    v23 = UUID.uuidString.getter();
    sub_10000B584(8, v23, v24);

    v25 = static String._fromSubstring(_:)();
    v27 = v26;

    v28._countAndFlagsBits = v25;
    v28._object = v27;
    String.append(_:)(v28);

    v29._countAndFlagsBits = 32;
    v29._object = 0xE100000000000000;
    String.append(_:)(v29);
    v32._countAndFlagsBits = sub_1000092A0(v30, v31);
    String.append(_:)(v32);

    v33._countAndFlagsBits = 62;
    v33._object = 0xE100000000000000;
    String.append(_:)(v33);
    v34 = sub_100017494(v51, v52, &v53);

    *(v16 + 24) = v34;
    _os_log_impl(&_mh_execute_header, v14, v15, "%s: effect=%s, session=%s", v16, 0x20u);
    swift_arrayDestroy();

    v6 = v47;
    v9 = v45;
    v8 = v46;
    v10 = v44;
  }

  else
  {
  }

  result = sub_100092F70(v19, v20);
  if (result)
  {
    if (v49 == 2)
    {
      v36 = v49;
    }

    else
    {
      if (v49 != 3)
      {
        v37 = (v49 & 1) << 8;
        v36 = 1;
        goto LABEL_18;
      }

      v36 = 0;
    }

    v37 = 512;
LABEL_18:
    v38 = v36 | v37;
    UUID.init()();
    v39 = &v12[*(v9 + 20)];
    *v39 = v38;
    v39[8] = 1;
    sub_10008D35C();
    sub_100151F24(v12);

    if (qword_100338F18 != -1)
    {
      swift_once();
    }

    v40 = *(qword_10038B0B8 + 688);
    v41 = sub_1000031CC();

    if ((v41 & 1) == 0)
    {
      sub_100183B28(v12, v8, type metadata accessor for RemoteFollowerMessage);
      (*(v10 + 56))(v8, 0, 1, v9);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_100009848(v8, v6, &unk_100349050, &qword_100283530);

      static Published.subscript.setter();
      sub_1000097E8(v8, &unk_100349050, &qword_100283530);
    }

    return sub_100183D58(v12, type metadata accessor for RemoteFollowerMessage);
  }

  return result;
}

uint64_t sub_10017E924(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v121 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v109 = &v105[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v108 = &v105[-v9];
  v10 = sub_100035D04(&qword_10033E800, &qword_100278E80);
  __chkstk_darwin(v10 - 8);
  v12 = &v105[-v11];
  v13 = sub_100035D04(&qword_1003492A0, &qword_1002836F0);
  v113 = *(v13 - 8);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v105[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v114 = v15;
  __chkstk_darwin(v14);
  v18 = &v105[-v17];
  v19 = type metadata accessor for NoticeContext(0);
  v111 = *(v19 - 8);
  v112 = v19;
  __chkstk_darwin(v19);
  v21 = &v105[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v116 = type metadata accessor for NoticeEffect(0);
  v22 = __chkstk_darwin(v116);
  v117 = &v105[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v22);
  v25 = &v105[-v24];
  if (qword_100339108 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  sub_100003078(v26, qword_100348FC8);
  v118 = a1;
  sub_100183B28(a1, v25, type metadata accessor for NoticeEffect);

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();

  v29 = os_log_type_enabled(v27, v28);
  v110 = v6;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v119 = v12;
    v31 = v30;
    v107 = swift_slowAlloc();
    v124[0] = v107;
    *v31 = 136315650;
    *(v31 + 4) = sub_100017494(0x5F28656C646E6168, 0xEE00293A726F663ALL, v124);
    v120 = v18;
    *(v31 + 12) = 2080;
    v106 = v28;
    v32 = sub_1001AF844();
    v115 = v16;
    v34 = v33;
    sub_100183D58(v25, type metadata accessor for NoticeEffect);
    v35 = sub_100017494(v32, v34, v124);

    *(v31 + 14) = v35;
    *(v31 + 22) = 2080;
    v122 = 60;
    v123 = 0xE100000000000000;
    v36 = UUID.uuidString.getter();
    sub_10000B584(8, v36, v37);

    v38 = static String._fromSubstring(_:)();
    v40 = v39;

    v41._countAndFlagsBits = v38;
    v41._object = v40;
    String.append(_:)(v41);
    v16 = v115;

    v42._countAndFlagsBits = 32;
    v42._object = 0xE100000000000000;
    String.append(_:)(v42);
    v45._countAndFlagsBits = sub_1000092A0(v43, v44);
    String.append(_:)(v45);

    v46._countAndFlagsBits = 62;
    v46._object = 0xE100000000000000;
    String.append(_:)(v46);
    v47 = sub_100017494(v122, v123, v124);

    *(v31 + 24) = v47;
    v18 = v120;
    _os_log_impl(&_mh_execute_header, v27, v106, "%s: effect=%s, session=%s", v31, 0x20u);
    swift_arrayDestroy();

    v12 = v119;
  }

  else
  {

    v48 = sub_100183D58(v25, type metadata accessor for NoticeEffect);
  }

  result = sub_100093088(v48, v49);
  v51 = v121;
  if (result)
  {
    v52 = v117;
    sub_100183B28(v118, v117, type metadata accessor for NoticeEffect);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v65 = type metadata accessor for NoticeEffect;
        v66 = v52;
      }

      else
      {
        v117 = v3;
        v118 = a2;
        v115 = v16;
        v119 = v12;
        v120 = v18;
        v80 = v108;
        UUID.init()();
        v116 = UUID.uuidString.getter();
        v107 = v81;
        v82 = *(v51 + 8);
        v83 = v110;
        v82(v80, v110);
        if (qword_100338F18 != -1)
        {
          swift_once();
        }

        v84 = *(qword_10038B0B8 + 72);
        v85 = sub_1000610A0();

        v86 = v112;
        type metadata accessor for NoticeTapAction(0);
        swift_storeEnumTagMultiPayload();
        v87 = v21;
        v88 = &v21[*(v86 + 32)];
        v89 = v109;
        UUID.init()();
        v90 = UUID.uuidString.getter();
        v92 = v91;
        v82(v89, v83);
        *v88 = v90;
        *(v88 + 1) = v92;
        strcpy(v88 + 16, "Handoff Hint");
        v88[29] = 0;
        *(v88 + 15) = -5120;
        type metadata accessor for NoticeContent(0);
        swift_storeEnumTagMultiPayload();
        v93 = v107;
        *v87 = v116;
        *(v87 + 8) = v93;
        *(v87 + 16) = v85 & 1;
        *(v87 + *(v86 + 28)) = 0;
        v94 = v120;
        sub_100183B28(v87, v120, type metadata accessor for NoticeContext);
        (*(v111 + 56))(v94, 0, 1, v86);
        v95 = type metadata accessor for TaskPriority();
        (*(*(v95 - 8) + 56))(v119, 1, 1, v95);
        v96 = v117;
        v121 = v117[4];
        swift_unownedRetainStrong();
        sub_100009848(v94, v115, &qword_1003492A0, &qword_1002836F0);
        v97 = qword_1003391F0;
        v98 = v118;

        if (v97 != -1)
        {
          swift_once();
        }

        v99 = qword_10038B5C0;
        v100 = sub_100183744(&qword_1003492A8, type metadata accessor for WorkActor, &unk_10028D774);
        v101 = (*(v113 + 80) + 32) & ~*(v113 + 80);
        v102 = (v114 + v101 + 7) & 0xFFFFFFFFFFFFFFF8;
        v103 = (v102 + 15) & 0xFFFFFFFFFFFFFFF8;
        v104 = swift_allocObject();
        *(v104 + 16) = v99;
        *(v104 + 24) = v100;
        sub_100183B90(v115, v104 + v101);
        *(v104 + v102) = v98;
        *(v104 + v103) = v96;
        *(v104 + ((v103 + 15) & 0xFFFFFFFFFFFFFFF8)) = v121;

        sub_100240220(0, 0, v119, &unk_100283700, v104);

        sub_1000097E8(v120, &qword_1003492A0, &qword_1002836F0);
        v65 = type metadata accessor for NoticeContext;
        v66 = v87;
      }

      return sub_100183D58(v66, v65);
    }

    v119 = v12;
    v120 = v18;
    if (!EnumCaseMultiPayload)
    {
      sub_100183F10(v52, v21, type metadata accessor for NoticeContext);
      sub_100183B28(v21, v18, type metadata accessor for NoticeContext);
      (*(v111 + 56))(v18, 0, 1, v112);
      v54 = type metadata accessor for TaskPriority();
      (*(*(v54 - 8) + 56))(v12, 1, 1, v54);
      v55 = v3[4];
      swift_unownedRetainStrong();
      sub_100009848(v18, v16, &qword_1003492A0, &qword_1002836F0);
      v56 = qword_1003391F0;

      v57 = a2;
      v117 = v3;
      v58 = v16;
      v121 = v21;
      if (v56 != -1)
      {
        swift_once();
      }

      v59 = qword_10038B5C0;
      v60 = sub_100183744(&qword_1003492A8, type metadata accessor for WorkActor, &unk_10028D774);
      v61 = (*(v113 + 80) + 32) & ~*(v113 + 80);
      v62 = (v114 + v61 + 7) & 0xFFFFFFFFFFFFFFF8;
      v63 = (v62 + 15) & 0xFFFFFFFFFFFFFFF8;
      v64 = swift_allocObject();
      *(v64 + 16) = v59;
      *(v64 + 24) = v60;
      sub_100183B90(v58, v64 + v61);
      *(v64 + v62) = v57;
      *(v64 + v63) = v117;
      *(v64 + ((v63 + 15) & 0xFFFFFFFFFFFFFFF8)) = v55;

      sub_100240220(0, 0, v119, &unk_100283710, v64);

      sub_1000097E8(v120, &qword_1003492A0, &qword_1002836F0);
      v65 = type metadata accessor for NoticeContext;
      v66 = v121;
      return sub_100183D58(v66, v65);
    }

    v67 = *v52;
    v68 = v52[1];
    v116 = v52[2];
    v117 = v67;
    v121 = v68;
    sub_10017F688(v67, v68, v116, v18);
    v69 = type metadata accessor for TaskPriority();
    (*(*(v69 - 8) + 56))(v12, 1, 1, v69);
    v70 = v3[4];
    swift_unownedRetainStrong();
    sub_100009848(v18, v16, &qword_1003492A0, &qword_1002836F0);
    v71 = qword_1003391F0;
    v118 = a2;

    v72 = v3;
    v73 = v16;
    if (v71 != -1)
    {
      swift_once();
    }

    v74 = qword_10038B5C0;
    v75 = sub_100183744(&qword_1003492A8, type metadata accessor for WorkActor, &unk_10028D774);
    v76 = (*(v113 + 80) + 32) & ~*(v113 + 80);
    v77 = (v114 + v76 + 7) & 0xFFFFFFFFFFFFFFF8;
    v78 = (v77 + 15) & 0xFFFFFFFFFFFFFFF8;
    v79 = swift_allocObject();
    *(v79 + 16) = v74;
    *(v79 + 24) = v75;
    sub_100183B90(v73, v79 + v76);
    *(v79 + v77) = v118;
    *(v79 + v78) = v72;
    *(v79 + ((v78 + 15) & 0xFFFFFFFFFFFFFFF8)) = v70;

    sub_100240220(0, 0, v119, &unk_100283708, v79);

    sub_100077374(v117, v121, v116);
    return sub_1000097E8(v120, &qword_1003492A0, &qword_1002836F0);
  }

  return result;
}

uint64_t sub_10017F688@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for LeaderNoticeTapAction(0);
  __chkstk_darwin(v8);
  v10 = (&v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 == 1)
  {
    UUID.init()();
    v15 = UUID.uuidString.getter();
    v17 = v16;
    (*(v12 + 8))(v14, v11);
    v18 = type metadata accessor for NoticeContext(0);
    type metadata accessor for NoticeTapAction(0);
    swift_storeEnumTagMultiPayload();
    v19 = (a4 + v18[8]);
    v20 = [objc_opt_self() localizedStringForKey:3];
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    *v19 = 0;
    v19[1] = 0xE000000000000000;
    v19[2] = v21;
    v19[3] = v23;
    type metadata accessor for NoticeContent(0);
    swift_storeEnumTagMultiPayload();
    *a4 = v15;
    *(a4 + 8) = v17;
LABEL_6:
    *(a4 + 16) = 0;
    *(a4 + v18[7]) = 1;
    return (*(*(v18 - 1) + 56))(a4, 0, 1, v18);
  }

  if ((a2 & 1) == 0)
  {
    UUID.init()();
    v35 = UUID.uuidString.getter();
    v37 = v36;
    (*(v12 + 8))(v14, v11);
    swift_storeEnumTagMultiPayload();
    v18 = type metadata accessor for NoticeContext(0);
    sub_10021CC90((a4 + v18[6]));
    sub_100183D58(v10, type metadata accessor for LeaderNoticeTapAction);
    v38 = (a4 + v18[8]);
    *v38 = 0;
    v38[1] = 0xE000000000000000;
    v38[2] = 0x414944454DLL;
    v38[3] = 0xE500000000000000;
    type metadata accessor for NoticeContent(0);
    swift_storeEnumTagMultiPayload();
    *a4 = v35;
    *(a4 + 8) = v37;
    *(a4 + 16) = 0;
    *(a4 + v18[7]) = 1;
    return (*(*(v18 - 1) + 56))(a4, 0, 1, v18);
  }

  v24 = a1;
  v25 = [v24 callUUID];
  if (v25)
  {
    v26 = v25;
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    UUID.init()();
    v30 = UUID.uuidString.getter();
    v47 = v31;
    (*(v12 + 8))(v14, v11);
    *v10 = v27;
    v10[1] = v29;
    swift_storeEnumTagMultiPayload();
    v18 = type metadata accessor for NoticeContext(0);
    sub_10021CC90((a4 + v18[6]));
    sub_100183D58(v10, type metadata accessor for LeaderNoticeTapAction);
    v32 = v18[8];

    v33 = (a4 + v32);
    *v33 = 0;
    v33[1] = 0xE000000000000000;
    v33[2] = 1280065859;
    v33[3] = 0xE400000000000000;
    type metadata accessor for NoticeContent(0);
    swift_storeEnumTagMultiPayload();
    v34 = v47;
    *a4 = v30;
    *(a4 + 8) = v34;
    goto LABEL_6;
  }

  if (qword_100339108 != -1)
  {
    swift_once();
  }

  v40 = type metadata accessor for Logger();
  sub_100003078(v40, qword_100348FC8);
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&_mh_execute_header, v41, v42, "### No callUUID", v43, 2u);
  }

  v44 = type metadata accessor for NoticeContext(0);
  v45 = *(*(v44 - 8) + 56);

  return v45(a4, 1, 1, v44);
}

uint64_t sub_10017FB94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[18] = a6;
  v7[19] = a7;
  v7[16] = a4;
  v7[17] = a5;
  v7[20] = sub_100035D04(&unk_10034C700, &qword_100273D30);
  v7[21] = swift_task_alloc();
  v7[22] = type metadata accessor for ExperienceEvent(0);
  v7[23] = swift_task_alloc();
  sub_100035D04(&qword_1003492A0, &qword_1002836F0);
  v7[24] = swift_task_alloc();
  v8 = type metadata accessor for NoticeContext(0);
  v7[25] = v8;
  v7[26] = *(v8 - 8);
  v7[27] = swift_task_alloc();
  if (qword_1003391F0 != -1)
  {
    swift_once();
  }

  v7[28] = qword_10038B5C0;
  type metadata accessor for WorkActor();
  v7[29] = sub_100183744(&qword_1003492A8, type metadata accessor for WorkActor, &unk_10028D774);
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v7[30] = v10;
  v7[31] = v9;

  return (_swift_task_switch)(sub_10017FD90, v10, v9);
}

uint64_t sub_10017FD90()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 208);
  v3 = *(v0 + 192);
  sub_100009848(*(v0 + 128), v3, &qword_1003492A0, &qword_1002836F0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100035D04(&qword_1003492B0, &unk_100283718);
    sub_10000E244(&qword_1003492B8, &qword_1003492B0, &unk_100283718, &unk_10027EBE0);
    v4 = swift_allocError();
    *v5 = 0xD000000000000010;
    v5[1] = 0x80000001002A32D0;
    swift_willThrow();
LABEL_8:
    v19 = *(v0 + 184);
    v21 = *(v0 + 160);
    v20 = *(v0 + 168);
    swift_errorRetain();
    sub_10014FEEC(v4, (v0 + 16));
    v31 = *(v0 + 32);
    v32 = *(v0 + 16);
    v30 = *(v0 + 48);
    v22 = *(v0 + 64);
    v23 = UUID.uuidString.getter();
    v25 = v24;
    *v19 = v32;
    *(v19 + 16) = v31;
    *(v19 + 32) = v30;
    *(v19 + 48) = v22;
    *(v19 + 56) = 2;
    swift_storeEnumTagMultiPayload();
    v26 = (v20 + *(v21 + 48));
    v27 = (v20 + *(v21 + 64));
    sub_100183B28(v19, v20, type metadata accessor for ExperienceEvent);
    *v26 = v23;
    v26[1] = v25;
    *v27 = 0;
    v27[1] = 0xE000000000000000;
    sub_100184230(v0 + 16, v0 + 72);
    PassthroughSubject.send(_:)();
    sub_10018428C(v0 + 16);

    sub_1000097E8(v20, &unk_10034C700, &qword_100273D30);
    sub_100183D58(v19, type metadata accessor for ExperienceEvent);

    v28 = *(v0 + 8);

    return v28();
  }

  v6 = sub_100183F10(*(v0 + 192), *(v0 + 216), type metadata accessor for NoticeContext);
  v8 = sub_100070D94(v6, v7);
  *(v0 + 256) = v8;
  if (!v8)
  {
    v17 = *(v0 + 216);
    sub_100035D04(&qword_100346AD0, &qword_10027E290);
    sub_10000E244(&qword_100346AD8, &qword_100346AD0, &qword_10027E290, &unk_10027EBE0);
    v4 = swift_allocError();
    *v18 = 0xD000000000000018;
    v18[1] = 0x80000001002A32F0;
    swift_willThrow();
    sub_100183D58(v17, type metadata accessor for NoticeContext);
    goto LABEL_8;
  }

  v9 = v8;
  v11 = *(v0 + 224);
  v10 = *(v0 + 232);
  v12 = *(v0 + 216);
  v14 = *(v0 + 136);
  v13 = *(v0 + 144);
  v15 = swift_task_alloc();
  *(v0 + 264) = v15;
  v15[2] = v13;
  v15[3] = v12;
  v15[4] = v14;
  v15[5] = v9;
  v16 = swift_task_alloc();
  *(v0 + 272) = v16;
  *v16 = v0;
  v16[1] = sub_1001801DC;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v16, v11, v10, 0xD000000000000025, 0x80000001002A3310, sub_1001842E0, v15, &type metadata for () + 8);
}

uint64_t sub_1001801DC()
{
  v2 = *v1;
  *(*v1 + 280) = v0;

  v3 = *(v2 + 248);
  v4 = *(v2 + 240);
  if (v0)
  {
    v5 = sub_1001804C4;
  }

  else
  {
    v5 = sub_100180318;
  }

  return (_swift_task_switch)(v5, v4, v3);
}

uint64_t sub_100180318(uint64_t a1)
{
  v2 = v1[32];
  v13 = v1[27];
  v3 = v1[23];
  v4 = v1[20];
  v5 = v1[21];
  v6 = UUID.uuidString.getter();
  v8 = v7;
  *v3 = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0;
  *(v3 + 56) = 3;
  swift_storeEnumTagMultiPayload();
  v9 = (v5 + *(v4 + 48));
  v10 = (v5 + *(v4 + 64));
  sub_100183B28(v3, v5, type metadata accessor for ExperienceEvent);
  *v9 = v6;
  v9[1] = v8;
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  PassthroughSubject.send(_:)();

  sub_1000097E8(v5, &unk_10034C700, &qword_100273D30);
  sub_100183D58(v3, type metadata accessor for ExperienceEvent);
  sub_100183D58(v13, type metadata accessor for NoticeContext);

  v11 = v1[1];

  return v11();
}

uint64_t sub_1001804C4()
{
  v1 = *(v0 + 216);

  sub_100183D58(v1, type metadata accessor for NoticeContext);
  v2 = *(v0 + 280);
  v3 = *(v0 + 184);
  v5 = *(v0 + 160);
  v4 = *(v0 + 168);
  swift_errorRetain();
  sub_10014FEEC(v2, (v0 + 16));
  v15 = *(v0 + 32);
  v16 = *(v0 + 16);
  v14 = *(v0 + 48);
  v6 = *(v0 + 64);
  v7 = UUID.uuidString.getter();
  v9 = v8;
  *v3 = v16;
  *(v3 + 16) = v15;
  *(v3 + 32) = v14;
  *(v3 + 48) = v6;
  *(v3 + 56) = 2;
  swift_storeEnumTagMultiPayload();
  v10 = (v4 + *(v5 + 48));
  v11 = (v4 + *(v5 + 64));
  sub_100183B28(v3, v4, type metadata accessor for ExperienceEvent);
  *v10 = v7;
  v10[1] = v9;
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  sub_100184230(v0 + 16, v0 + 72);
  PassthroughSubject.send(_:)();
  sub_10018428C(v0 + 16);

  sub_1000097E8(v4, &unk_10034C700, &qword_100273D30);
  sub_100183D58(v3, type metadata accessor for ExperienceEvent);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1001806C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v18 = a5;
  v7 = sub_100035D04(&qword_1003492C0, &unk_100283728);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - v9;
  sub_10017C8E8();
  v11 = UUID.uuidString.getter();
  v13 = v12;
  (*(v8 + 16))(v10, a1, v7);
  v14 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v15 = swift_allocObject();
  (*(v8 + 32))(v15 + v14, v10, v7);
  sub_10011DD84(a3, v11, v13, v18, sub_1001842EC, v15);
}

uint64_t sub_100180868(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    sub_100035D04(&qword_1003492C0, &unk_100283728);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_100035D04(&qword_1003492C0, &unk_100283728);
    return CheckedContinuation.resume(returning:)();
  }
}

void sub_1001808DC(uint64_t *a1, uint64_t a2, unint64_t a3, void **a4, void **a5, uint64_t a6)
{
  v92 = a6;
  v104 = a4;
  v101 = a2;
  v8 = a1;
  v9 = *a1;
  v98 = a1[1];
  v99 = v9;
  v10 = sub_100035D04(&qword_10033E800, &qword_100278E80);
  __chkstk_darwin(v10 - 8);
  v89 = &v85 - v11;
  v94 = type metadata accessor for URL();
  v91 = *(v94 - 8);
  v12 = __chkstk_darwin(v94);
  v90 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v93 = &v85 - v14;
  v100 = type metadata accessor for LeaderNoticeTapAction(0);
  v15 = __chkstk_darwin(v100);
  v95 = (&v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __chkstk_darwin(v15);
  v97 = &v85 - v18;
  __chkstk_darwin(v17);
  v96 = &v85 - v19;
  v20 = sub_100035D04(&unk_10034C700, &qword_100273D30);
  __chkstk_darwin(v20);
  v22 = &v85 - v21;
  v102 = type metadata accessor for ExperienceEvent(0);
  __chkstk_darwin(v102);
  v24 = (&v85 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100339108 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  v26 = sub_100003078(v25, qword_100348FC8);
  sub_1001835CC(v8, &aBlock);

  v103 = v26;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  sub_100183628(v8);

  if (os_log_type_enabled(v27, v28))
  {
    v87 = v20;
    v29 = swift_slowAlloc();
    v86 = a3;
    v30 = v29;
    v105[0] = swift_slowAlloc();
    *v30 = 136315906;
    *(v30 + 4) = sub_100017494(0xD00000000000003BLL, 0x80000001002A3290, v105);
    *(v30 + 12) = 2080;
    v88 = v8;
    v31 = sub_1001AFCB8();
    v33 = sub_100017494(v31, v32, v105);

    *(v30 + 14) = v33;
    *(v30 + 22) = 2080;
    *(v30 + 24) = sub_100017494(v101, v86, v105);
    *(v30 + 32) = 2080;
    if (a5)
    {
      aBlock = v104;
      v107 = a5;

      v34 = String.init<A>(describing:)();
      v36 = v35;
    }

    else
    {
      v36 = 0xE300000000000000;
      v34 = 7104878;
    }

    v41 = sub_100017494(v34, v36, v105);

    *(v30 + 34) = v41;
    _os_log_impl(&_mh_execute_header, v27, v28, "%s: event=%s, contextID=%s, sessionID=%s", v30, 0x2Au);
    swift_arrayDestroy();

    v8 = v88;
    v20 = v87;
    if (!a5)
    {
      goto LABEL_12;
    }
  }

  else
  {

    if (!a5)
    {
LABEL_12:
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&_mh_execute_header, v42, v43, "### No sessionID", v44, 2u);
      }

      return;
    }
  }

  swift_unownedRetainStrong();
  v37 = *(v8 + 1);
  *v24 = *v8;
  v24[1] = v37;
  v24[2] = *(v8 + 2);
  *(v24 + 41) = *(v8 + 41);
  swift_storeEnumTagMultiPayload();
  v38 = &v22[*(v20 + 48)];
  v39 = &v22[*(v20 + 64)];
  sub_100183B28(v24, v22, type metadata accessor for ExperienceEvent);
  *v38 = v104;
  v38[1] = a5;
  *v39 = 0xD000000000000014;
  *(v39 + 1) = 0x80000001002A3270;
  sub_1001835CC(v8, &aBlock);

  PassthroughSubject.send(_:)();
  sub_1000097E8(v22, &unk_10034C700, &qword_100273D30);
  sub_100183D58(v24, type metadata accessor for ExperienceEvent);

  if (*(v8 + 56) != 1 || v8[1] >> 60 == 15)
  {
    return;
  }

  type metadata accessor for JSONDecoder();
  swift_allocObject();
  sub_10006DADC(v99, v98);
  JSONDecoder.init()();
  sub_100183744(&qword_100349298, type metadata accessor for LeaderNoticeTapAction, &unk_100290904);
  v40 = v97;
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  v45 = v96;
  sub_100183F10(v40, v96, type metadata accessor for LeaderNoticeTapAction);
  v46 = v95;
  sub_100183B28(v45, v95, type metadata accessor for LeaderNoticeTapAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v57 = v91;
    v58 = v93;
    v59 = v94;
    (*(v91 + 32))(v93, v46, v94);
    v60 = v90;
    (*(v57 + 16))(v90, v58, v59);
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = v57;
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      aBlock = v65;
      *v64 = 136315138;
      sub_100183744(&qword_100343268, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v66 = dispatch thunk of CustomStringConvertible.description.getter();
      v68 = v67;
      v69 = v60;
      v70 = *(v63 + 8);
      v70(v69, v94);
      v45 = v96;
      v71 = sub_100017494(v66, v68, &aBlock);

      *(v64 + 4) = v71;
      _os_log_impl(&_mh_execute_header, v61, v62, "Opening url: %s", v64, 0xCu);
      sub_10000903C(v65);
      v59 = v94;
    }

    else
    {

      v76 = v60;
      v70 = *(v57 + 8);
      v70(v76, v59);
    }

    v77 = [objc_opt_self() sharedApplication];
    v78 = v93;
    URL._bridgeToObjectiveC()(&v112);
    v80 = v79;
    v110 = nullsub_1;
    v111 = 0;
    aBlock = _NSConcreteStackBlock;
    v107 = 1107296256;
    v108 = sub_10017C79C;
    v109 = &unk_10030D380;
    v81 = _Block_copy(&aBlock);
    [v77 openURL:v80 withCompletionHandler:v81];
    _Block_release(v81);

    sub_100183628(v8);
    v70(v78, v59);
    goto LABEL_36;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v49 = *v46;
    v48 = v46[1];
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&_mh_execute_header, v50, v51, "Transfering call", v52, 2u);
    }

    swift_unownedRetainStrong();

    v53 = sub_1001817B0(v92);

    if (v53)
    {
      v54 = type metadata accessor for TaskPriority();
      v55 = v89;
      (*(*(v54 - 8) + 56))(v89, 1, 1, v54);
      v56 = swift_allocObject();
      v56[2] = 0;
      v56[3] = 0;
      v56[4] = v49;
      v56[5] = v48;
      v56[6] = v53;

      sub_100240220(0, 0, v55, &unk_100283658, v56);
      sub_100183628(v8);

LABEL_36:
      sub_100183D58(v45, type metadata accessor for LeaderNoticeTapAction);
      return;
    }

LABEL_33:
    v82 = Logger.logObject.getter();
    v83 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      *v84 = 0;
      _os_log_impl(&_mh_execute_header, v82, v83, "### No mapping device", v84, 2u);
    }

    sub_100183628(v8);

    goto LABEL_36;
  }

  v72 = Logger.logObject.getter();
  v73 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    *v74 = 0;
    _os_log_impl(&_mh_execute_header, v72, v73, "Transfering media", v74, 2u);
  }

  swift_unownedRetainStrong();

  v75 = sub_1001817B0(v92);

  if (!v75)
  {
    goto LABEL_33;
  }

  if (qword_100338F98 != -1)
  {
    swift_once();
  }

  sub_1001FAF20(v75);
  sub_100183D58(v45, type metadata accessor for LeaderNoticeTapAction);
  sub_100183628(v8);
}

uint64_t sub_1001817B0(uint64_t a1)
{
  v2 = v1;
  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v4;
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v5 = sub_1000851E8(&v29), (v6 & 1) != 0))
  {
    sub_10001766C(*(a1 + 56) + 32 * v5, &v30);
    sub_1000516C4(&v29);
    v7 = swift_dynamicCast();
    if (v7)
    {
      v8 = v27[0];
    }

    else
    {
      v8 = 0;
    }

    if (v7)
    {
      v9 = v27[1];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    sub_1000516C4(&v29);
    v8 = 0;
    v9 = 0;
  }

  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v10;
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v11 = sub_1000851E8(&v29), (v12 & 1) != 0))
  {
    sub_10001766C(*(a1 + 56) + 32 * v11, &v30);
    sub_1000516C4(&v29);
    v13 = swift_dynamicCast();
    if (v13)
    {
      v14 = v27[0];
    }

    else
    {
      v14 = 0;
    }

    if (v13)
    {
      v15 = v27[1];
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    sub_1000516C4(&v29);
    v14 = 0;
    v15 = 0;
  }

  strcpy(v27, "rangingToken");
  BYTE5(v27[1]) = 0;
  HIWORD(v27[1]) = -5120;
  v28 = 0;
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v16 = sub_1000851E8(&v29), (v17 & 1) != 0))
  {
    sub_10001766C(*(a1 + 56) + 32 * v16, &v30);
    sub_1000516C4(&v29);
    v18 = swift_dynamicCast();
    if (v18)
    {
      sub_100003118(0, &qword_10034A350, NIDiscoveryToken_ptr);
      v19 = sub_10017B1C8(v27[0], v27[1]);
      v18 = sub_100010708(v27[0], v27[1]);
      v28 = v19;
      goto LABEL_25;
    }
  }

  else
  {
    v18 = sub_1000516C4(&v29);
  }

  v19 = 0;
LABEL_25:
  __chkstk_darwin(v18);
  type metadata accessor for HandoffDevice(0);
  type metadata accessor for UUID();
  sub_100183744(&qword_100339848, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  swift_getKeyPath();
  v20 = v2 + qword_100346AF8;
  os_unfair_lock_lock(v20);
  v29 = *(v20 + 8);

  swift_getAtKeyPath();

  v21 = v30;
  os_unfair_lock_unlock(v20);

  v22 = *(v21 + 16);
  if (!v22)
  {
LABEL_28:

    v23 = _swiftEmptyArrayStorage;
    goto LABEL_29;
  }

  v23 = sub_100009194(*(v21 + 16), 0);
  v24 = sub_100009A04(&v29, v23 + 4, v22, v21);
  sub_100004F98(v29);
  if (v24 != v22)
  {
    __break(1u);
    goto LABEL_28;
  }

LABEL_29:

  v25 = sub_10018378C(v23, v8, v9, v14, v15, &v28);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  return v25;
}

uint64_t sub_100181BBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[6] = a4;
  return (_swift_task_switch)(sub_100181BE0, 0, 0);
}

uint64_t sub_100181BE0()
{
  v23 = v0;
  if (qword_100339180 != -1)
  {
    swift_once();
  }

  CurrentValueSubject.value.getter();
  v1 = *(v0 + 40);
  if (v1 == 254)
  {
    CurrentValueSubject.value.getter();

    v2 = *(v0 + 16);
    v1 = *(v0 + 24);
  }

  else
  {
    v2 = *(v0 + 32);
  }

  *(v0 + 72) = v2;
  *(v0 + 25) = v1;
  if (v1 == 255)
  {
    goto LABEL_9;
  }

  if (v1)
  {
LABEL_8:
    sub_100036718(v2, v1);
LABEL_9:
    if (qword_100339108 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100003078(v3, qword_100348FC8);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v7 = *(v0 + 48);
      v6 = *(v0 + 56);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v22 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_100017494(v7, v6, &v22);
      _os_log_impl(&_mh_execute_header, v4, v5, "### Active call doesn't match uuid: %s", v8, 0xCu);
      sub_10000903C(v9);
    }

    v10 = *(v0 + 8);

    return v10();
  }

  v13 = *(v0 + 48);
  v12 = *(v0 + 56);
  v14 = [v2 callUUID];
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  if (v15 == v13 && v17 == v12)
  {
  }

  else
  {
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v18 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  v19 = qword_10038B4E8;
  *(v0 + 80) = qword_10038B4E8;
  v19;
  v20 = swift_task_alloc();
  *(v0 + 88) = v20;
  *v20 = v0;
  v20[1] = sub_100181F44;
  v21 = *(v0 + 64);

  return sub_1001FB388(v21, v2);
}

uint64_t sub_100181F44()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_1001820C4;
  }

  else
  {

    v3 = sub_100182060;
  }

  return (_swift_task_switch)(v3, 0, 0);
}

uint64_t sub_100182060()
{
  sub_100036718(*(v0 + 72), *(v0 + 25));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001820C4()
{
  if (qword_100339108 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100003078(v1, qword_100348FC8);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 72);
  v6 = *(v0 + 25);
  if (v4)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "### Failed to transfer call: %@", v7, 0xCu);
    sub_1000097E8(v8, &qword_100339940, &unk_100272C50);

    sub_100036718(v5, v6);
  }

  else
  {
    sub_100036718(*(v0 + 72), *(v0 + 25));
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_100182298()
{
  v0 = type metadata accessor for RemoteFollowerMessage(0);
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = v21 - v5;
  v7 = sub_100035D04(&unk_100349050, &qword_100283530);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v21 - v11;
  v21[0] = 0;
  v21[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(90);
  v13._countAndFlagsBits = 0xD000000000000030;
  v13._object = 0x80000001002A31F0;
  String.append(_:)(v13);
  Double.write<A>(to:)();
  v14._object = 0x80000001002A3230;
  v14._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v14);
  Double.write<A>(to:)();
  v15._object = 0x80000001002A3250;
  v15._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v15);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  sub_100009848(v12, v10, &unk_100349050, &qword_100283530);
  if ((*(v1 + 48))(v10, 1, v0) == 1)
  {
    v16 = 0xE300000000000000;
    v17 = 7104878;
  }

  else
  {
    sub_100183F10(v10, v6, type metadata accessor for RemoteFollowerMessage);
    sub_100183B28(v6, v4, type metadata accessor for RemoteFollowerMessage);
    v17 = String.init<A>(describing:)();
    v16 = v18;
    sub_100183D58(v6, type metadata accessor for RemoteFollowerMessage);
  }

  sub_1000097E8(v12, &unk_100349050, &qword_100283530);
  v19._countAndFlagsBits = v17;
  v19._object = v16;
  String.append(_:)(v19);

  return v21[0];
}

void sub_1001825CC(uint64_t a1)
{
  if (!qword_100349048)
  {
    sub_100035D4C(&unk_100349050, &qword_100283530);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &qword_100349048);
    }
  }
}

double sub_100182654()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return result;
}

uint64_t sub_1001826D0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_100035D04(&unk_100349050, &qword_100283530);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v10 - v7;
  sub_100009848(a1, &v10 - v7, &unk_100349050, &qword_100283530);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100009848(v8, v6, &unk_100349050, &qword_100283530);

  static Published.subscript.setter();
  return sub_1000097E8(v8, &unk_100349050, &qword_100283530);
}

uint64_t sub_100182800(uint64_t a1)
{
  v2 = v1;
  v74 = a1;
  v3 = sub_100035D04(&qword_100349200, &qword_100283590);
  v68 = *(v3 - 8);
  v69 = v3;
  __chkstk_darwin(v3);
  v67 = v54 - v4;
  v5 = sub_100035D04(&qword_100349208, &unk_100283598);
  v71 = *(v5 - 8);
  v72 = v5;
  __chkstk_darwin(v5);
  v70 = v54 - v6;
  v7 = sub_100035D04(&qword_10034C660, &qword_100278DD0);
  v65 = *(v7 - 8);
  v66 = v7;
  __chkstk_darwin(v7);
  v64 = v54 - v8;
  v9 = sub_100035D04(&qword_100349210, &qword_1002835A8);
  v59 = *(v9 - 8);
  v60 = v9;
  __chkstk_darwin(v9);
  v58 = v54 - v10;
  v11 = sub_100035D04(&qword_100349218, &unk_1002835B0);
  v62 = *(v11 - 8);
  v63 = v11;
  __chkstk_darwin(v11);
  v61 = v54 - v12;
  v57 = sub_100035D04(&qword_10033B298, &qword_100271E18);
  v56 = *(v57 - 8);
  __chkstk_darwin(v57);
  v55 = v54 - v13;
  v14 = sub_100035D04(&qword_100349220, &unk_1002835C0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v54 - v16;
  v18 = sub_100035D04(&unk_100349050, &qword_100283530);
  v19 = __chkstk_darwin(v18);
  v21 = v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = v54 - v22;
  *(v2 + 16) = xmmword_1002834B0;
  v24 = OBJC_IVAR____TtC17proximitycontrold23RemoteFollowerPresenter__keepAliveMessage;
  v25 = type metadata accessor for RemoteFollowerMessage(0);
  (*(*(v25 - 8) + 56))(v23, 1, 1, v25);
  sub_100009848(v23, v21, &unk_100349050, &qword_100283530);
  Published.init(initialValue:)();
  sub_1000097E8(v23, &unk_100349050, &qword_100283530);
  (*(v15 + 32))(v2 + v24, v17, v14);
  *(v2 + OBJC_IVAR____TtC17proximitycontrold23RemoteFollowerPresenter_presentingNotice) = 0;
  *(v2 + OBJC_IVAR____TtC17proximitycontrold23RemoteFollowerPresenter____lazy_storage___remoteFollowerNoticePresenter) = 0;
  *(v2 + OBJC_IVAR____TtC17proximitycontrold23RemoteFollowerPresenter____lazy_storage___remoteFollowerNoticePresenterModel) = 0;
  *(v2 + OBJC_IVAR____TtC17proximitycontrold23RemoteFollowerPresenter_keepAliveTask) = 0;
  v73 = v2 + OBJC_IVAR____TtC17proximitycontrold23RemoteFollowerPresenter_tasks;
  *(v2 + OBJC_IVAR____TtC17proximitycontrold23RemoteFollowerPresenter_tasks) = &_swiftEmptySetSingleton;
  if (qword_100339108 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  sub_100003078(v26, qword_100348FC8);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&_mh_execute_header, v27, v28, "Init", v29, 2u);
  }

  *(v2 + 32) = v74;
  v30 = swift_unownedRetain();
  v77 = sub_100140E18();
  v75 = 0;
  v76 = 0;
  v31 = sub_100035D04(&qword_10034C6B0, &qword_1002703C0);
  sub_100035D04(&qword_10033B3D0, &qword_100271F60);
  v32 = sub_10000E244(&qword_1003398E0, &qword_10034C6B0, &qword_1002703C0, &protocol conformance descriptor for AnyPublisher<A, B>);
  v33 = v55;
  v54[2] = v31;
  v54[1] = v32;
  Publisher.scan<A>(_:_:)();
  sub_10000E244(&qword_10033B3D8, &qword_10033B298, &qword_100271E18, &protocol conformance descriptor for Publishers.Scan<A, B>);
  v34 = v57;
  v35 = Publisher.eraseToAnyPublisher()();

  (*(v56 + 8))(v33, v34);
  v75 = v35;
  v36 = swift_allocObject();
  swift_weakInit();
  v37 = swift_allocObject();
  *(v37 + 16) = sub_100183520;
  *(v37 + 24) = v36;

  sub_100035D04(&qword_10033B3E0, &qword_100271F68);
  sub_10000E244(&qword_10033B3E8, &qword_10033B3E0, &qword_100271F68, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v57 = OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___sessionPublisher;
  v75 = *(v30 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___sessionPublisher);
  v56 = type metadata accessor for HandoffSession(0);

  v38 = v64;
  Publisher.compactMap<A>(_:)();

  sub_100035D04(&qword_100349228, &qword_1002835D0);
  v39 = v58;
  v40 = v66;
  Publishers.CompactMap.map<A>(_:)();
  v54[0] = v2;
  v65 = *(v65 + 8);
  (v65)(v38, v40);
  v55 = &protocol conformance descriptor for Publishers.CompactMap<A, B>;
  sub_10000E244(&qword_100349230, &qword_100349210, &qword_1002835A8, &protocol conformance descriptor for Publishers.CompactMap<A, B>);
  sub_10000E244(&qword_100349238, &qword_100349228, &qword_1002835D0, &protocol conformance descriptor for Publishers.Map<A, B>);
  v41 = v60;
  v42 = v61;
  Publisher<>.switchToLatest()();
  (*(v59 + 8))(v39, v41);
  v43 = swift_allocObject();
  swift_weakInit();
  v44 = swift_allocObject();
  *(v44 + 16) = sub_100183530;
  *(v44 + 24) = v43;
  sub_10000E244(&qword_100349240, &qword_100349218, &unk_1002835B0, &protocol conformance descriptor for Publishers.SwitchToLatest<A, B>);
  v45 = v63;
  Publisher<>.sink(receiveValue:)();

  (*(v62 + 8))(v42, v45);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v75 = *(v74 + v57);

  Publisher.compactMap<A>(_:)();

  sub_100035D04(&qword_100349248, &qword_1002835D8);
  v46 = v67;
  Publishers.CompactMap.map<A>(_:)();
  (v65)(v38, v40);
  sub_10000E244(&qword_100349250, &qword_100349200, &qword_100283590, v55);
  sub_10000E244(&qword_100349258, &qword_100349248, &qword_1002835D8, &protocol conformance descriptor for Publishers.Map<A, B>);
  v47 = v69;
  v48 = v70;
  Publisher<>.switchToLatest()();
  (*(v68 + 8))(v46, v47);
  v49 = swift_allocObject();
  v50 = v54[0];
  swift_weakInit();

  v51 = swift_allocObject();
  *(v51 + 16) = sub_100183568;
  *(v51 + 24) = v49;
  sub_10000E244(&qword_100349260, &qword_100349208, &unk_100283598, &protocol conformance descriptor for Publishers.SwitchToLatest<A, B>);
  v52 = v72;
  Publisher<>.sink(receiveValue:)();

  (*(v71 + 8))(v48, v52);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v50;
}

uint64_t sub_100183570(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = sub_100035D04(&qword_100349268, &qword_1002835E0);
  return v3(a1, *(a1 + *(v4 + 48)));
}

uint64_t sub_10018367C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000E6584;

  return sub_100181BBC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100183744(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10018378C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void **a6)
{
  if (a1 >> 62)
  {
LABEL_40:
    v33 = a1;
    v9 = _CocoaArrayWrapper.endIndex.getter();
    a1 = v33;
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
LABEL_3:
      v10 = 0;
      v38 = a1 & 0xFFFFFFFFFFFFFF8;
      v39 = a1 & 0xC000000000000001;
      v37 = a1 + 32;
      v35 = v9;
      while (1)
      {
        if (v39)
        {
          v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v12 = __OFADD__(v10++, 1);
          if (v12)
          {
LABEL_36:
            __break(1u);
LABEL_37:

            return v11;
          }
        }

        else
        {
          if (v10 >= *(v38 + 16))
          {
            __break(1u);
            goto LABEL_40;
          }

          v11 = *(v37 + 8 * v10);

          v12 = __OFADD__(v10++, 1);
          if (v12)
          {
            goto LABEL_36;
          }
        }

        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        v15 = sub_1000BCFD0(v13, v14);

        if (a3)
        {
          if (v15[2])
          {
            Hasher.init(_seed:)();
            String.hash(into:)();
            v16 = Hasher._finalize()();
            v17 = -1 << *(v15 + 32);
            v18 = v16 & ~v17;
            if ((*(v15 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v18))
            {
              v19 = ~v17;
              do
              {
                v20 = (v15[6] + 16 * v18);
                v21 = *v20 == a2 && v20[1] == a3;
                if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {
                  goto LABEL_37;
                }

                v18 = (v18 + 1) & v19;
              }

              while (((*(v15 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v18) & 1) != 0);
            }
          }
        }

        if (a5)
        {
          if (v15[2])
          {
            Hasher.init(_seed:)();
            String.hash(into:)();
            v22 = Hasher._finalize()();
            v23 = -1 << *(v15 + 32);
            v24 = v22 & ~v23;
            if ((*(v15 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v24))
            {
              v25 = ~v23;
              do
              {
                v26 = (v15[6] + 16 * v24);
                v27 = *v26 == a4 && v26[1] == a5;
                if (v27 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {
                  goto LABEL_37;
                }

                v24 = (v24 + 1) & v25;
              }

              while (((*(v15 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v24) & 1) != 0);
            }
          }
        }

        v28 = *a6;
        if (*a6)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          v29 = v28;
          static Published.subscript.getter();

          v30 = *(v40 + OBJC_IVAR____TtC17proximitycontrold8Identity_nearbyID);
          v31 = v30;

          if (!v30)
          {

            goto LABEL_32;
          }

          v32 = [v29 isEqual:v31];

          if (v32)
          {
            return v11;
          }
        }

LABEL_32:
        if (v10 == v35)
        {
          return 0;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_100183B28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100183B90(uint64_t a1, uint64_t a2)
{
  v4 = sub_100035D04(&qword_1003492A0, &qword_1002836F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100183C00(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_100035D04(&qword_1003492A0, &qword_1002836F0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v1 + v7);
  v12 = *(v1 + v8);
  v13 = *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1000E6584;

  return sub_10017FB94(a1, v9, v10, v1 + v6, v11, v12, v13);
}

uint64_t sub_100183D58(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100183DB8(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_100035D04(&qword_1003492A0, &qword_1002836F0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v1 + v7);
  v12 = *(v1 + v8);
  v13 = *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_10009D6D4;

  return sub_10017FB94(a1, v9, v10, v1 + v6, v11, v12, v13);
}

uint64_t sub_100183F10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100183F78()
{
  v1 = *(sub_100035D04(&qword_1003492A0, &qword_1002836F0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;
  v6 = type metadata accessor for NoticeContext(0);
  if (!(*(*(v6 - 8) + 48))(v0 + v3, 1, v6))
  {

    v7 = v5 + *(v6 + 24);
    type metadata accessor for NoticeTapAction(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      v9 = type metadata accessor for URL();
      (*(*(v9 - 8) + 8))(v7, v9);
    }

    else if (!EnumCaseMultiPayload)
    {
      sub_100010708(*v7, *(v7 + 8));
    }

    v10 = v5 + *(v6 + 32);
    type metadata accessor for NoticeContent(0);
    v11 = swift_getEnumCaseMultiPayload();
    if (v11 > 1)
    {
      if (v11 != 2)
      {
        if (v11 != 3)
        {
          goto LABEL_16;
        }

        v12 = v10 + *(type metadata accessor for ShareableContentExposedContext(0) + 20);

        v13 = *(type metadata accessor for ShareableContent(0) + 20);
        v14 = type metadata accessor for URL();
        v15 = *(v14 - 8);
        if (!(*(v15 + 48))(v12 + v13, 1, v14))
        {
          (*(v15 + 8))(v12 + v13, v14);
        }

        goto LABEL_15;
      }
    }

    else if (v11 >= 2)
    {
      goto LABEL_16;
    }

LABEL_15:
  }

LABEL_16:

  return _swift_deallocObject(v0, ((((((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1001842EC(uint64_t a1)
{
  sub_100035D04(&qword_1003492C0, &unk_100283728);

  return sub_100180868(a1);
}

uint64_t sub_1001843C8(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for HandoffTargetStatus(0);
  __chkstk_darwin(v4);
  v6 = &v16[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100035D04(&unk_100349338, &qword_1002837E0);
  __chkstk_darwin(v7);
  v9 = (&v16[-1] - v8);
  sub_100009848(v2, &v16[-1] - v8, &unk_100349338, &qword_1002837E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = *v9;
    v16[0] = 0;
    v16[1] = 0xE000000000000000;
    v16[4] = v10;
    sub_100035D04(&unk_100346020, &qword_100271A00);
    _print_unlocked<A, B>(_:_:)();

    return v16[0];
  }

  else
  {
    sub_10018C7B8(v9, v6);
    v16[3] = v4;
    v12 = sub_10000F798(v16);
    sub_10018C81C(v6, v12, type metadata accessor for HandoffTargetStatus);
    if (a1 == 2 || (a1 & 1) == 0)
    {
      v13 = sub_1000CF5E0(v16);
    }

    else
    {
      v13 = sub_100057AD4(v16);
    }

    v14 = v13;
    sub_10018C9D0(v6, type metadata accessor for HandoffTargetStatus);
    sub_10000903C(v16);
    return v14;
  }
}

uint64_t sub_1001845C0()
{
  v1 = OBJC_IVAR____TtC17proximitycontrold24HandoffStateMachineModel_sessionID;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_weakDestroy();
  sub_1000097E8(v0 + OBJC_IVAR____TtC17proximitycontrold24HandoffStateMachineModel_remoteStatus, &qword_100349620, &qword_1002838B8);

  return swift_deallocClassInstance();
}

void sub_1001846C4(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    sub_1001847E4(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1001847E4(uint64_t a1)
{
  if (!qword_100349330)
  {
    sub_100035D4C(&unk_100349338, &qword_1002837E0);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100349330);
    }
  }
}

uint64_t sub_100184848()
{

  CurrentValueSubject.value.getter();
  v0 = v2;
  if ((~v2 & 0xFEFE) != 0)
  {
  }

  else
  {
    CurrentValueSubject.value.getter();

    return v3;
  }

  return v0;
}

void sub_1001848C4(void (*a1)(void, void, void))
{
  v3 = type metadata accessor for UUID();
  v240 = *(v3 - 8);
  v241 = v3;
  __chkstk_darwin(v3);
  v239 = &v237 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100035D04(&qword_100349620, &qword_1002838B8);
  v6 = __chkstk_darwin(v5 - 8);
  v245 = &v237 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v238 = (&v237 - v8);
  v9 = type metadata accessor for OSSignpostID();
  v246 = *(v9 - 8);
  *&v247 = v9;
  __chkstk_darwin(v9);
  v248 = &v237 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v250 = type metadata accessor for ExperienceEffect(0);
  __chkstk_darwin(v250);
  v249 = (&v237 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for ExperienceEvent(0);
  v254 = *(v12 - 8);
  v13 = __chkstk_darwin(v12);
  v15 = &v237 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v244 = (&v237 - v17);
  v18 = __chkstk_darwin(v16);
  v243 = &v237 - v19;
  v20 = __chkstk_darwin(v18);
  v242 = &v237 - v21;
  v22 = __chkstk_darwin(v20);
  v251 = &v237 - v23;
  v24 = __chkstk_darwin(v22);
  v255 = (&v237 - v25);
  v26 = __chkstk_darwin(v24);
  *&v252 = &v237 - v27;
  v28 = __chkstk_darwin(v26);
  v30 = &v237 - v29;
  __chkstk_darwin(v28);
  v32 = &v237 - v31;
  sub_10018C81C(a1, &v237 - v31, type metadata accessor for ExperienceEvent);
  v256 = v1;
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();
  v35 = os_log_type_enabled(v33, v34);
  v259 = v12;
  *&v253 = v15;
  if (v35)
  {
    v36 = a1;
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *&v273[0] = v38;
    *v37 = 136315138;
    v39 = sub_100243F84();
    v41 = v40;
    sub_10018C9D0(v32, type metadata accessor for ExperienceEvent);
    v42 = sub_100017494(v39, v41, v273);

    *(v37 + 4) = v42;
    _os_log_impl(&_mh_execute_header, v33, v34, "⬆️ Send: %s", v37, 0xCu);
    sub_10000903C(v38);

    a1 = v36;
  }

  else
  {

    sub_10018C9D0(v32, type metadata accessor for ExperienceEvent);
  }

  v43 = v256;
  v257 = OBJC_IVAR____TtC17proximitycontrold19HandoffStateMachine__state;

  CurrentValueSubject.value.getter();
  v44 = v270[0];
  v45 = v255;
  if ((~LOWORD(v270[0]) & 0xFEFE) != 0)
  {
  }

  else
  {
    CurrentValueSubject.value.getter();

    v44 = v273[0];
  }

  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v258 = qword_10038B0B8;
  v46 = *(qword_10038B0B8 + 96);
  v47 = sub_1000031CC();

  if (v47 & 1) != 0 && (v44 & 0xE000) == 0 && (v44)
  {
    sub_10018C81C(a1, v30, type metadata accessor for ExperienceEvent);
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      sub_10018C9D0(v30, type metadata accessor for ExperienceEvent);
      goto LABEL_22;
    }

    v48 = *v30;
    if (v48 != 1)
    {
      if (v48 != 2)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }

    sub_10006F838();
    v49 = sub_1001DF2A4();

    if ((v49 & 1) == 0)
    {

      goto LABEL_21;
    }

    v50 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v50)
    {
LABEL_21:
      sub_100187320(a1);
    }
  }

LABEL_22:

  CurrentValueSubject.value.getter();
  v51 = LOWORD(v270[0]);
  if ((~LOWORD(v270[0]) & 0xFEFE) != 0)
  {
  }

  else
  {
    CurrentValueSubject.value.getter();

    v51 = LOWORD(v273[0]);
  }

  v52 = v258[16];
  v53 = sub_1000031CC();

  if ((v53 & 1) != 0 && (v51 >> 13 < 2 || v51 >> 13 == 4 && v51 == 32769))
  {
    v54 = v252;
    sub_10018C81C(a1, v252, type metadata accessor for ExperienceEvent);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      if (*v54 == 3)
      {
        sub_100187BF4(a1);
      }
    }

    else
    {
      sub_10018C9D0(v54, type metadata accessor for ExperienceEvent);
    }
  }

  CurrentValueSubject.value.getter();
  v55 = LOWORD(v270[0]);
  if ((~LOWORD(v270[0]) & 0xFEFE) != 0)
  {
  }

  else
  {
    CurrentValueSubject.value.getter();

    v55 = LOWORD(v273[0]);
  }

  v56 = v258[16];
  v57 = sub_1000031CC();

  if ((v57 & 1) == 0 && !(v55 >> 14))
  {
    *v45 = 3;
    swift_storeEnumTagMultiPayload();
    v58 = sub_1002454A4(a1, v45);
    sub_10018C9D0(v45, type metadata accessor for ExperienceEvent);
    if (v58)
    {
      goto LABEL_98;
    }

    *v45 = xmmword_100278920;
    v45[16] = 4;
    swift_storeEnumTagMultiPayload();
    v59 = sub_1002454A4(a1, v45);
    sub_10018C9D0(v45, type metadata accessor for ExperienceEvent);
    if (v59)
    {
      goto LABEL_98;
    }
  }

  CurrentValueSubject.value.getter();
  v60 = LOWORD(v270[0]);
  if ((~LOWORD(v270[0]) & 0xFEFE) != 0)
  {

    if (v60 >> 13)
    {
      goto LABEL_47;
    }
  }

  else
  {
    CurrentValueSubject.value.getter();

    if (LOWORD(v273[0]) >> 13)
    {
      goto LABEL_47;
    }
  }

  *v45 = 2;
  swift_storeEnumTagMultiPayload();
  v61 = sub_1002454A4(a1, v45);
  sub_10018C9D0(v45, type metadata accessor for ExperienceEvent);
  if (v61)
  {
    v62 = v249;
    *v249 = xmmword_100271890;
    *(v62 + 16) = 0;
    swift_storeEnumTagMultiPayload();
    sub_10018C018(v62, a1);
    sub_10018C9D0(v62, type metadata accessor for ExperienceEffect);
    *v62 = 0;
    *(v62 + 8) = 0;
    *(v62 + 16) = -125;
    swift_storeEnumTagMultiPayload();
    sub_10018C018(v62, a1);
    sub_10018C9D0(v62, type metadata accessor for ExperienceEffect);
  }

LABEL_47:

  CurrentValueSubject.value.getter();
  v63 = v270[0];
  if ((~LOWORD(v270[0]) & 0xFEFE) != 0)
  {
  }

  else
  {
    CurrentValueSubject.value.getter();

    v63 = v273[0];
  }

  if ((v63 & 0xE000) == 0x2000 && (v63 & 1) == 0)
  {
    sub_100035D04(&qword_10033F058, &unk_1002789B0);
    v64 = *(v254 + 72);
    v65 = (*(v254 + 80) + 32) & ~*(v254 + 80);
    v66 = swift_allocObject();
    *(v66 + 16) = xmmword_1002727F0;
    v67 = v66 + v65;
    v252 = xmmword_100271890;
    *v67 = xmmword_100271890;
    *(v67 + 16) = 4;
    swift_storeEnumTagMultiPayload();
    v68 = v67 + v64;
    *v68 = v252;
    *(v68 + 16) = -124;
    swift_storeEnumTagMultiPayload();
    *(v67 + 2 * v64) = 0;
    swift_storeEnumTagMultiPayload();
    LOBYTE(v64) = sub_1000D0DB0(a1, v66);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    if (v64)
    {
      sub_100187688(a1);
      return;
    }
  }

  CurrentValueSubject.value.getter();
  v69 = LOWORD(v270[0]);
  if ((~LOWORD(v270[0]) & 0xFEFE) != 0)
  {

    if (v69 != 0x8000)
    {
      goto LABEL_102;
    }
  }

  else
  {
    CurrentValueSubject.value.getter();

    if (LOWORD(v273[0]) != 0x8000)
    {
      goto LABEL_102;
    }
  }

  v70 = v251;
  sub_10018C81C(a1, v251, type metadata accessor for ExperienceEvent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 8:
      sub_10018C81C(v70, v244, type metadata accessor for ExperienceEvent);
      type metadata accessor for TransferEvent(0);
      v82 = swift_getEnumCaseMultiPayload();
      if (v82 != 6)
      {
        if (v82 == 5)
        {
          v83 = *(v43 + OBJC_IVAR____TtC17proximitycontrold19HandoffStateMachine_model);
          v84 = v238;
          *v238 = *v244;
          v85 = sub_100035D04(&unk_100349338, &qword_1002837E0);
        }

        else
        {
          if (v82 != 4)
          {
            sub_10018C9D0(v244, type metadata accessor for TransferEvent);
            break;
          }

          v83 = *(v43 + OBJC_IVAR____TtC17proximitycontrold19HandoffStateMachine_model);
          v84 = v238;
          sub_10018C7B8(v244, v238);
          v85 = sub_100035D04(&unk_100349338, &qword_1002837E0);
        }

        swift_storeEnumTagMultiPayload();
        (*(*(v85 - 8) + 56))(v84, 0, 1, v85);
        v86 = OBJC_IVAR____TtC17proximitycontrold24HandoffStateMachineModel_remoteStatus;
        swift_beginAccess();
        v87 = v83 + v86;
        v70 = v251;
        sub_1000369A4(v84, v87, &qword_100349620, &qword_1002838B8);
        swift_endAccess();
        break;
      }

      v88 = *v244;
      v89 = *v244 >> 62;
      if (v89)
      {
        if (v89 != 2 || v88 != 0x8000000000000000)
        {
          sub_1000D680C(v88);
          break;
        }
      }

      else
      {
        sub_1000D680C(v88);
      }

      v80 = *(v43 + OBJC_IVAR____TtC17proximitycontrold19HandoffStateMachine_model);
      v81 = OBJC_IVAR____TtC17proximitycontrold24HandoffStateMachineModel_isShareableContentLocalResolved;
      goto LABEL_88;
    case 3:
      v77 = v243;
      sub_10018C81C(v70, v243, type metadata accessor for ExperienceEvent);
      v78 = *v77;
      if (v78 == 8)
      {
        v80 = *(v43 + OBJC_IVAR____TtC17proximitycontrold19HandoffStateMachine_model);
        v81 = OBJC_IVAR____TtC17proximitycontrold24HandoffStateMachineModel_dwellTimedOut;
      }

      else
      {
        if (v78 != 7)
        {
          break;
        }

        v79 = v248;
        static OSSignpostID.exclusive.getter();
        static os_signpost_type_t.begin.getter();
        if (qword_100338F20 != -1)
        {
          swift_once();
          v70 = v251;
        }

        os_signpost(_:dso:log:name:signpostID:_:_:)();
        (*(v246 + 8))(v79, v247);
        v80 = *(v43 + OBJC_IVAR____TtC17proximitycontrold19HandoffStateMachine_model);
        v81 = OBJC_IVAR____TtC17proximitycontrold24HandoffStateMachineModel_dwellExpired;
      }

LABEL_88:
      *(v80 + v81) = 1;
      break;
    case 0:
      v72 = v242;
      sub_10018C81C(v70, v242, type metadata accessor for ExperienceEvent);
      v73 = *v72;
      v74 = *(v72 + 8);
      v75 = *(v72 + 16);
      if (v75 < 0 && (v75 & 0x7F) == 4 && v73 == 2 && !v74)
      {
        v76 = v248;
        static OSSignpostID.exclusive.getter();
        static os_signpost_type_t.end.getter();
        if (qword_100338F20 != -1)
        {
          swift_once();
          v70 = v251;
        }

        os_signpost(_:dso:log:name:signpostID:_:_:)();
        (*(v246 + 8))(v76, v247);
      }

      else
      {
        sub_1000D65DC(v73, v74, v75);
      }

      break;
  }

  sub_10018C9D0(v70, type metadata accessor for ExperienceEvent);
  v90 = *(v43 + OBJC_IVAR____TtC17proximitycontrold19HandoffStateMachine_model);
  if (*(v90 + OBJC_IVAR____TtC17proximitycontrold24HandoffStateMachineModel_dwellExpired) != 1)
  {
    goto LABEL_102;
  }

  v91 = OBJC_IVAR____TtC17proximitycontrold24HandoffStateMachineModel_remoteStatus;
  swift_beginAccess();
  v92 = v245;
  sub_100009848(v90 + v91, v245, &qword_100349620, &qword_1002838B8);
  v93 = sub_100035D04(&unk_100349338, &qword_1002837E0);
  LODWORD(v91) = (*(*(v93 - 8) + 48))(v92, 1, v93);
  sub_1000097E8(v92, &qword_100349620, &qword_1002838B8);
  if (v91 != 1 && ((*(v90 + OBJC_IVAR____TtC17proximitycontrold24HandoffStateMachineModel_isShareableContentLocalResolved) & 1) != 0 || (*(v90 + OBJC_IVAR____TtC17proximitycontrold24HandoffStateMachineModel_dwellWaitsForLocalShareableContent) & 1) == 0))
  {
LABEL_98:
    sub_1001897C4(a1);
    return;
  }

  v94 = *(v90 + OBJC_IVAR____TtC17proximitycontrold24HandoffStateMachineModel_dwellTimedOut);
  static OSSignpostID.exclusive.getter();
  v43 = v256;
  if (v94 == 1)
  {
    static os_signpost_type_t.end.getter();
    if (qword_100338F20 != -1)
    {
      swift_once();
    }

    v95 = v248;
    os_signpost(_:dso:log:name:signpostID:_:_:)();
    (*(v246 + 8))(v95, v247);
    goto LABEL_98;
  }

  static os_signpost_type_t.begin.getter();
  if (qword_100338F20 != -1)
  {
    swift_once();
  }

  v96 = v248;
  os_signpost(_:dso:log:name:signpostID:_:_:)();
  (*(v246 + 8))(v96, v247);
LABEL_102:
  v97 = v253;
  sub_10018C81C(a1, v253, type metadata accessor for ExperienceEvent);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_10018C9D0(v97, type metadata accessor for ExperienceEvent);
    goto LABEL_116;
  }

  v98 = *v97;
  if ((v98 - 5) < 5)
  {
    goto LABEL_116;
  }

  if (v98 == 4)
  {
    v99 = 0;
  }

  else
  {
    v99 = *v97;
  }

  CurrentValueSubject.value.getter();
  v100 = LOWORD(v270[0]);
  if ((~LOWORD(v270[0]) & 0xFEFE) != 0)
  {

    v101 = v100 >> 13;
    if (v100 >> 13)
    {
LABEL_109:
      if (v101 == 1)
      {
        if (v99 <= 1 && (v100 & 0x100) == 0)
        {
          goto LABEL_193;
        }
      }

      else if (v101 == 4 && v99 <= 2 && v100 == 0x8000 && (*(*(v43 + OBJC_IVAR____TtC17proximitycontrold19HandoffStateMachine_model) + OBJC_IVAR____TtC17proximitycontrold24HandoffStateMachineModel_dwellExpired) & 1) == 0)
      {
        goto LABEL_193;
      }

      goto LABEL_116;
    }
  }

  else
  {
    CurrentValueSubject.value.getter();

    v100 = LOWORD(v273[0]);
    v101 = LOWORD(v273[0]) >> 13;
    if (v101)
    {
      goto LABEL_109;
    }
  }

  sub_10006F838();
  v181 = sub_1001DF2A4();

  if (v181)
  {
    if (v99 < 2)
    {
      goto LABEL_193;
    }
  }

  else if (!v99)
  {
    goto LABEL_193;
  }

LABEL_116:

  CurrentValueSubject.value.getter();
  v102 = LOWORD(v270[0]);
  if ((~LOWORD(v270[0]) & 0xFEFE) != 0)
  {
  }

  else
  {
    CurrentValueSubject.value.getter();

    v102 = LOWORD(v273[0]);
  }

  if (v102 >> 13 != 1)
  {
    if (v102 >> 13 != 4 || v102 != 0x8000)
    {
      goto LABEL_133;
    }

    goto LABEL_124;
  }

  if ((v102 & 0x100) != 0)
  {
    sub_100035D04(&qword_10033F058, &unk_1002789B0);
    v129 = *(v254 + 72);
    v130 = (*(v254 + 80) + 32) & ~*(v254 + 80);
    v131 = swift_allocObject();
    *(v131 + 16) = xmmword_100283750;
    v132 = v131 + v130;
    v252 = xmmword_100278910;
    *v132 = xmmword_100278910;
    *(v132 + 56) = 0;
    swift_storeEnumTagMultiPayload();
    v133 = v131 + v130 + v129;
    sub_10001618C();
    *&v253 = a1;
    v134 = swift_allocError();
    *v135 = 0;
    *(v135 + 8) = 0xE000000000000000;
    *(v135 + 16) = 11;
    sub_10014FEEC(v134, v264);
    v136 = v265;
    v137 = v264[1];
    *v133 = v264[0];
    *(v133 + 16) = v137;
    *(v133 + 32) = v136;
    *(v133 + 40) = v266;
    *(v133 + 56) = 32;
    swift_storeEnumTagMultiPayload();
    v138 = v132 + 2 * v129;
    *v138 = v252;
    *(v138 + 16) = 1;
    swift_storeEnumTagMultiPayload();
    v139 = v132 + 3 * v129;
    *v139 = v252;
    *(v139 + 16) = 2;
    swift_storeEnumTagMultiPayload();
    v140 = v132 + 4 * v129;
    *v140 = v252;
    *(v140 + 16) = 3;
    swift_storeEnumTagMultiPayload();
    v141 = v132 + 5 * v129;
    v142 = swift_allocError();
    *v143 = 0;
    *(v143 + 8) = 0xE000000000000000;
    *(v143 + 16) = 11;
    *v141 = v142;
    *(v141 + 8) = 0;
    *(v141 + 16) = 0;
    swift_storeEnumTagMultiPayload();
    v144 = v132 + 6 * v129;
    *v144 = v252;
    *(v144 + 16) = -127;
    swift_storeEnumTagMultiPayload();
    v145 = v132 + 7 * v129;
    *v145 = v252;
    *(v145 + 16) = -126;
    swift_storeEnumTagMultiPayload();
    v146 = v132 + 8 * v129;
    *v146 = v252;
    *(v146 + 16) = -125;
    swift_storeEnumTagMultiPayload();
    v147 = v132 + 9 * v129;
    a1 = v253;
    v45 = v255;
    v148 = swift_allocError();
    *v149 = 0;
    *(v149 + 8) = 0xE000000000000000;
    *(v149 + 16) = 11;
    *v147 = v148;
    *(v147 + 8) = 0;
    *(v147 + 16) = 0x80;
    swift_storeEnumTagMultiPayload();
    *(v132 + 10 * v129) = 3;
    swift_storeEnumTagMultiPayload();
    *(v132 + 11 * v129) = 0;
    swift_storeEnumTagMultiPayload();
    LOBYTE(v147) = sub_1000D0DB0(a1, v131);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    if ((v147 & 1) == 0)
    {
      goto LABEL_133;
    }

LABEL_193:
    v189 = a1;
    v190 = 0;
    goto LABEL_199;
  }

LABEL_124:
  sub_100035D04(&qword_10033F058, &unk_1002789B0);
  v103 = *(v254 + 72);
  v104 = (*(v254 + 80) + 32) & ~*(v254 + 80);
  v105 = swift_allocObject();
  *(v105 + 16) = xmmword_100283760;
  v106 = v105 + v104;
  v253 = xmmword_100278910;
  *v106 = xmmword_100278910;
  *(v106 + 16) = 1;
  swift_storeEnumTagMultiPayload();
  v107 = v105 + v104 + v103;
  *v107 = v253;
  *(v107 + 16) = 2;
  swift_storeEnumTagMultiPayload();
  v108 = v105 + v104 + 2 * v103;
  *v108 = v253;
  *(v108 + 16) = 3;
  swift_storeEnumTagMultiPayload();
  v109 = v105 + v104 + 3 * v103;
  sub_10001618C();
  v110 = swift_allocError();
  *v111 = 0;
  *(v111 + 8) = 0xE000000000000000;
  *(v111 + 16) = 11;
  *v109 = v110;
  *(v109 + 8) = 0;
  *(v109 + 16) = 0;
  swift_storeEnumTagMultiPayload();
  v112 = v106 + 4 * v103;
  v252 = xmmword_100274290;
  *v112 = xmmword_100274290;
  *(v112 + 16) = 4;
  swift_storeEnumTagMultiPayload();
  v113 = v106 + 5 * v103;
  *v113 = v253;
  *(v113 + 16) = -127;
  swift_storeEnumTagMultiPayload();
  v114 = v106 + 6 * v103;
  *v114 = v253;
  *(v114 + 16) = -126;
  swift_storeEnumTagMultiPayload();
  v115 = v106 + 7 * v103;
  *v115 = v253;
  *(v115 + 16) = -125;
  swift_storeEnumTagMultiPayload();
  v116 = v106 + 8 * v103;
  v45 = v255;
  v117 = swift_allocError();
  *v118 = 0;
  *(v118 + 8) = 0xE000000000000000;
  *(v118 + 16) = 11;
  *v116 = v117;
  *(v116 + 8) = 0;
  *(v116 + 16) = 0x80;
  swift_storeEnumTagMultiPayload();
  v43 = v256;
  v119 = v106 + 9 * v103;
  *v119 = v252;
  *(v119 + 16) = -124;
  swift_storeEnumTagMultiPayload();
  LOBYTE(v116) = sub_1000D0DB0(a1, v105);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if (v116)
  {
    goto LABEL_193;
  }

  v120 = v258[129];
  v121 = sub_1000031CC();

  if (v121)
  {
    *v45 = 1;
    v45[8] = 1;
    swift_storeEnumTagMultiPayload();
    v122 = sub_1002454A4(a1, v45);
    sub_10018C9D0(v45, type metadata accessor for ExperienceEvent);
    if (v122)
    {
      goto LABEL_193;
    }
  }

  v123 = v258[127];
  v124 = sub_1000031CC();

  if (v124)
  {
    *v45 = 1;
    v45[8] = 0;
    swift_storeEnumTagMultiPayload();
    v125 = sub_1002454A4(a1, v45);
    sub_10018C9D0(v45, type metadata accessor for ExperienceEvent);
    if (v125)
    {
      goto LABEL_193;
    }
  }

  v126 = v258[128];
  v127 = sub_1000031CC();

  if (v127)
  {
    *v45 = 0;
    v45[8] = 0;
    swift_storeEnumTagMultiPayload();
    v128 = sub_1002454A4(a1, v45);
    sub_10018C9D0(v45, type metadata accessor for ExperienceEvent);
    if (v128)
    {
      goto LABEL_193;
    }
  }

LABEL_133:

  CurrentValueSubject.value.getter();
  v150 = LOWORD(v270[0]);
  if ((~LOWORD(v270[0]) & 0xFEFE) != 0)
  {
  }

  else
  {
    CurrentValueSubject.value.getter();

    v150 = LOWORD(v273[0]);
  }

  if ((v150 & 0xFFFFC001) == 0x4000)
  {
    sub_100035D04(&qword_10033F058, &unk_1002789B0);
    v151 = *(v254 + 72);
    v152 = (*(v254 + 80) + 32) & ~*(v254 + 80);
    v153 = swift_allocObject();
    *(v153 + 16) = xmmword_1002725A0;
    v154 = (v153 + v152);
    *v154 = 0;
    swift_storeEnumTagMultiPayload();
    v154[v151] = 1;
    swift_storeEnumTagMultiPayload();
    LOBYTE(v151) = sub_1000D0DB0(a1, v153);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    if (v151)
    {
      sub_10018B0B0(a1);
      return;
    }
  }

  CurrentValueSubject.value.getter();
  v155 = LOWORD(v270[0]);
  if ((~LOWORD(v270[0]) & 0xFEFE) != 0)
  {
  }

  else
  {
    CurrentValueSubject.value.getter();

    v155 = LOWORD(v273[0]);
  }

  if ((v155 >> 13) - 2 < 2 || v155 >> 13 == 4 && v155 == 32769)
  {
    v156 = sub_100035D04(&qword_10033F058, &unk_1002789B0);
    v157 = *(v254 + 72);
    v158 = *(v254 + 80);
    v159 = (v158 + 32) & ~v158;
    v245 = 2 * v157;
    v251 = v158;
    *&v252 = v156;
    v160 = swift_allocObject();
    *(v160 + 16) = xmmword_1002725A0;
    v161 = a1;
    v162 = v160 + v159;
    *v162 = 1;
    *(v162 + 40) = 0u;
    *(v162 + 24) = 0u;
    *(v162 + 8) = 0u;
    *(v162 + 56) = 0x80;
    swift_storeEnumTagMultiPayload();
    v163 = v160 + v159 + v157;
    v244 = sub_10001618C();
    v164 = swift_allocError();
    *v165 = 0;
    *(v165 + 8) = 0xE000000000000000;
    *(v165 + 16) = 11;
    sub_10014FEEC(v164, v267);
    v166 = v268;
    v167 = v267[1];
    *v163 = v267[0];
    *(v163 + 16) = v167;
    *(v163 + 32) = v166;
    *(v163 + 40) = v269;
    *(v163 + 56) = 32;
    swift_storeEnumTagMultiPayload();
    *&v253 = v161;
    LOBYTE(v163) = sub_1000D0DB0(v161, v160);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    if (v163)
    {
      v168 = v239;
      v169 = v240;
      v170 = v241;
      (*(v240 + 16))(v239, *(v43 + OBJC_IVAR____TtC17proximitycontrold19HandoffStateMachine_model) + OBJC_IVAR____TtC17proximitycontrold24HandoffStateMachineModel_sessionID, v241);
      sub_10001B7F4();
      v171 = v248;
      OSSignpostID.init(_:)();
      (*(v169 + 8))(v168, v170);
      static os_signpost_type_t.end.getter();
      if (qword_100338F20 != -1)
      {
        swift_once();
      }

      os_signpost(_:dso:log:name:signpostID:_:_:)();
      (*(v246 + 8))(v171, v247);
    }

    CurrentValueSubject.value.getter();
    v172 = v270[0];
    if ((~LOWORD(v270[0]) & 0xFEFE) != 0)
    {
    }

    else
    {
      CurrentValueSubject.value.getter();

      v172 = v273[0];
    }

    v173 = v245;
    v248 = (4 * v157);
    v174 = v253;
    if ((v172 & 0xE000) == 0x4000 && (v175 = swift_allocObject(), *(v175 + 16) = xmmword_1002727F0, v176 = v175 + v159, *v176 = 0u, *(v176 + 16) = 0u, *(v176 + 32) = 0u, *(v176 + 48) = 0, *(v176 + 56) = 0x80, swift_storeEnumTagMultiPayload(), v177 = v175 + v159 + v157, *v177 = 3, *(v177 + 8) = 0u, *(v177 + 24) = 0u, *(v177 + 40) = 0u, *(v177 + 56) = 66, swift_storeEnumTagMultiPayload(), *(v176 + v173) = 2, swift_storeEnumTagMultiPayload(), v178 = sub_1000D0DB0(v174, v175), swift_setDeallocating(), swift_arrayDestroy(), swift_deallocClassInstance(), v178))
    {
      v179 = v249;
      *v249 = xmmword_100271890;
      *(v179 + 16) = 0;
      swift_storeEnumTagMultiPayload();
      sub_10018C018(v179, v174);
      sub_10018C9D0(v179, type metadata accessor for ExperienceEffect);
      *v179 = 0;
      *(v179 + 8) = 0;
      *(v179 + 16) = -125;
      swift_storeEnumTagMultiPayload();
      sub_10018C018(v179, v174);
      sub_10018C9D0(v179, type metadata accessor for ExperienceEffect);
    }

    else
    {

      CurrentValueSubject.value.getter();
      v180 = v270[0];
      if ((~LOWORD(v270[0]) & 0xFEFE) != 0)
      {
      }

      else
      {
        CurrentValueSubject.value.getter();

        v180 = v273[0];
      }

      if ((v180 & 0xE000) == 0x6000)
      {
        v182 = v248;
        v183 = swift_allocObject();
        *(v183 + 16) = xmmword_100274B30;
        v184 = v183 + v159;
        v247 = xmmword_100278910;
        *v184 = xmmword_100278910;
        *(v184 + 16) = 2;
        swift_storeEnumTagMultiPayload();
        v185 = v183 + v159 + v157;
        *v185 = v247;
        *(v185 + 16) = 3;
        swift_storeEnumTagMultiPayload();
        v186 = v183 + v159 + v173;
        *v186 = v247;
        *(v186 + 16) = -126;
        swift_storeEnumTagMultiPayload();
        v187 = v183 + v159 + 3 * v157;
        *v187 = v247;
        *(v187 + 16) = -125;
        swift_storeEnumTagMultiPayload();
        v182[v184] = 2;
        swift_storeEnumTagMultiPayload();
        v188 = sub_1000D0DB0(v253, v183);
        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        if (v188)
        {
          v189 = v253;
          v190 = 0;
          goto LABEL_199;
        }
      }

      CurrentValueSubject.value.getter();
      v191 = LOWORD(v270[0]);
      if ((~LOWORD(v270[0]) & 0xFEFE) != 0)
      {
      }

      else
      {
        CurrentValueSubject.value.getter();

        v191 = LOWORD(v273[0]);
      }

      v174 = v253;
      if (v191 == 32769)
      {
        v192 = swift_allocObject();
        *(v192 + 16) = xmmword_1002727F0;
        v193 = v192 + v159;
        v247 = xmmword_100278910;
        *v193 = xmmword_100278910;
        *(v193 + 16) = -126;
        swift_storeEnumTagMultiPayload();
        v194 = v192 + v159 + v157;
        *v194 = v247;
        *(v194 + 16) = -125;
        swift_storeEnumTagMultiPayload();
        *(v193 + v173) = 9;
        swift_storeEnumTagMultiPayload();
        v195 = sub_1000D0DB0(v174, v192);
        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        if (v195)
        {
          v189 = v174;
          v190 = 0;
          goto LABEL_199;
        }
      }
    }

    v196 = v255;
    *v255 = 1;
    *(v196 + 8) = 0u;
    *(v196 + 24) = 0u;
    *(v196 + 40) = 0u;
    *(v196 + 56) = 66;
    swift_storeEnumTagMultiPayload();
    v197 = sub_1002454A4(v174, v196);
    sub_10018C9D0(v196, type metadata accessor for ExperienceEvent);
    if (v197)
    {
      v198 = v249;
      swift_storeEnumTagMultiPayload();
      sub_10018C018(v198, v174);
      sub_10018C9D0(v198, type metadata accessor for ExperienceEffect);
    }

    *&v247 = 3 * v157;
    v199 = swift_allocObject();
    *(v199 + 16) = xmmword_1002727F0;
    v200 = v199 + v159;
    *v200 = 5;
    *(v200 + 40) = 0u;
    *(v200 + 24) = 0u;
    *(v200 + 8) = 0u;
    *(v200 + 56) = 66;
    swift_storeEnumTagMultiPayload();
    v201 = v199 + v159 + v157;
    *v201 = 2;
    *(v201 + 8) = 0u;
    *(v201 + 24) = 0u;
    *(v201 + 40) = 0u;
    *(v201 + 56) = 2;
    swift_storeEnumTagMultiPayload();
    *(v200 + v173) = 1;
    swift_storeEnumTagMultiPayload();
    v202 = sub_1000D0DB0(v174, v199);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    if (v202)
    {
      v203 = v249;
      *v249 = 0;
      *(v203 + 8) = 0;
      *(v203 + 16) = 0;
      *(v203 + 24) = 4;
      swift_storeEnumTagMultiPayload();
      sub_10018C018(v203, v174);
      sub_10018C9D0(v203, type metadata accessor for ExperienceEffect);
    }

    v246 = 8 * v157;
    v204 = swift_allocObject();
    *(v204 + 16) = xmmword_100278900;
    v205 = v204 + v159;
    v206 = swift_allocError();
    *v207 = 0;
    *(v207 + 8) = 0xE000000000000000;
    *(v207 + 16) = 11;
    sub_10014FEEC(v206, v270);
    v208 = v271;
    v209 = v270[1];
    *v205 = v270[0];
    *(v205 + 16) = v209;
    *(v205 + 32) = v208;
    *(v205 + 40) = v272;
    *(v205 + 56) = 64;
    swift_storeEnumTagMultiPayload();
    v210 = v205 + v157;
    *v210 = xmmword_100278910;
    *(v210 + 56) = 0;
    swift_storeEnumTagMultiPayload();
    v211 = v205 + v245;
    v212 = swift_allocError();
    *v213 = 0;
    *(v213 + 8) = 0xE000000000000000;
    *(v213 + 16) = 11;
    sub_10014FEEC(v212, v273);
    v214 = v274;
    v215 = v273[1];
    *v211 = v273[0];
    *(v211 + 16) = v215;
    *(v211 + 32) = v214;
    *(v211 + 40) = v275;
    *(v211 + 56) = 32;
    swift_storeEnumTagMultiPayload();
    v216 = v205 + v247;
    *v216 = 3;
    *(v216 + 8) = 0u;
    *(v216 + 24) = 0u;
    *(v216 + 40) = 0u;
    *(v216 + 56) = 2;
    swift_storeEnumTagMultiPayload();
    v217 = v248;
    v218 = &v248[v205];
    *v218 = 0;
    *(v218 + 1) = 0xE000000000000000;
    v219 = v261;
    *(v218 + 1) = v260;
    *(v218 + 2) = v219;
    *(v218 + 6) = v262;
    v218[56] = 0;
    swift_storeEnumTagMultiPayload();
    *&v217[v157 + v205] = 2;
    type metadata accessor for TransferEvent(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    *(v205 + 6 * v157) = 3;
    swift_storeEnumTagMultiPayload();
    a1 = v253;
    *(v205 + v246 - v157) = 0;
    swift_storeEnumTagMultiPayload();
    v220 = sub_1000D0DB0(a1, v204);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    if (v220)
    {
      v189 = a1;
      v190 = 0;
      goto LABEL_199;
    }

    v45 = v255;
  }

  CurrentValueSubject.value.getter();
  v221 = v263;
  if ((~v263 & 0xFEFE) != 0)
  {
  }

  else
  {
    CurrentValueSubject.value.getter();

    v221 = v260;
  }

  if (v221 & 0xE000) == 0x4000 && (v221 & 0x100) != 0 && (v221)
  {
    v222 = v258[49];
    v223 = sub_1000031CC();

    if (v223)
    {
      *v45 = 0;
      v45[56] = 96;
      swift_storeEnumTagMultiPayload();
      v224 = sub_1002454A4(a1, v45);
      sub_10018C9D0(v45, type metadata accessor for ExperienceEvent);
      if (v224)
      {
        goto LABEL_196;
      }
    }

    v225 = v258[60];
    v226 = sub_10005F4F0();

    if (v226)
    {
    }

    else
    {
      v227 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v227 & 1) == 0)
      {
        goto LABEL_197;
      }
    }

    *v45 = 1;
    v45[56] = 96;
    swift_storeEnumTagMultiPayload();
    v228 = sub_1002454A4(a1, v45);
    sub_10018C9D0(v45, type metadata accessor for ExperienceEvent);
    if (v228)
    {
LABEL_196:

      sub_1001C049C(16385);

      v229 = v249;
      *v249 = 3;
      swift_storeEnumTagMultiPayload();
      sub_10018C018(v229, a1);
      sub_10018C9D0(v229, type metadata accessor for ExperienceEffect);
      *v229 = xmmword_100271890;
      *(v229 + 16) = 0;
      swift_storeEnumTagMultiPayload();
      sub_10018C018(v229, a1);
      sub_10018C9D0(v229, type metadata accessor for ExperienceEffect);
      *v229 = 0;
      *(v229 + 8) = 0;
      *(v229 + 16) = -125;
      swift_storeEnumTagMultiPayload();
      sub_10018C018(v229, a1);
      sub_10018C9D0(v229, type metadata accessor for ExperienceEffect);
    }
  }

LABEL_197:
  sub_100035D04(&qword_10033F058, &unk_1002789B0);
  v230 = *(v254 + 72);
  v231 = (*(v254 + 80) + 32) & ~*(v254 + 80);
  v232 = swift_allocObject();
  *(v232 + 16) = xmmword_100278930;
  v233 = (v232 + v231);
  *v233 = 6;
  swift_storeEnumTagMultiPayload();
  v234 = &v233[v230];
  *v234 = 0;
  v234[8] = 2;
  swift_storeEnumTagMultiPayload();
  v235 = &v233[2 * v230];
  *v235 = 0;
  v235[8] = 4;
  swift_storeEnumTagMultiPayload();
  v236 = &v233[3 * v230];
  *v236 = 0;
  v236[8] = 6;
  swift_storeEnumTagMultiPayload();
  LOBYTE(v230) = sub_1000D0DB0(a1, v232);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if ((v230 & 1) == 0)
  {
    return;
  }

  v189 = a1;
  v190 = 1;
LABEL_199:
  sub_10018B868(v189, v190);
}

void sub_100187320(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ExperienceEffect(0);
  __chkstk_darwin(v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_100017494(0x5F28746E69486F74, 0xEA0000000000293ALL, &v18);
    _os_log_impl(&_mh_execute_header, v7, v8, "%s", v9, 0xCu);
    sub_10000903C(v10);
  }

  v11 = *(v2 + OBJC_IVAR____TtC17proximitycontrold19HandoffStateMachine_model);
  sub_10006F838();
  v12 = sub_1001DF2A4();

  if (v12)
  {
    v13 = 0x2000;
  }

  else
  {
    v13 = 8448;
  }

  sub_1001C049C(v13);

  v14 = OBJC_IVAR____TtC17proximitycontrold24HandoffStateMachineModel_hintBannerType;
  if (*(v11 + OBJC_IVAR____TtC17proximitycontrold24HandoffStateMachineModel_hintBannerType))
  {
    if (*(v11 + OBJC_IVAR____TtC17proximitycontrold24HandoffStateMachineModel_hintBannerType) == 1)
    {
      *v6 = 0;
      *(v6 + 1) = 0;
      v6[16] = 0;
    }

    else
    {
      *v6 = 0;
      *(v6 + 1) = 0;
      v6[16] = -124;
    }

    swift_storeEnumTagMultiPayload();
    sub_10018C018(v6, a1);
    sub_10018C9D0(v6, type metadata accessor for ExperienceEffect);
  }

  if (*(v11 + OBJC_IVAR____TtC17proximitycontrold24HandoffStateMachineModel_hintNoticeEnabled) == 1)
  {
    type metadata accessor for NoticeEffect(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    sub_10018C018(v6, a1);
    sub_10018C9D0(v6, type metadata accessor for ExperienceEffect);
  }

  v15 = OBJC_IVAR____TtC17proximitycontrold24HandoffStateMachineModel_hintShockwaveEnabled;
  if (*(v11 + OBJC_IVAR____TtC17proximitycontrold24HandoffStateMachineModel_hintShockwaveEnabled) == 1)
  {
    *v6 = 0;
    swift_storeEnumTagMultiPayload();
    sub_10018C018(v6, a1);
    sub_10018C9D0(v6, type metadata accessor for ExperienceEffect);
  }

  if (!*(v11 + v14))
  {

LABEL_19:
    if ((*(v11 + v15) & 1) == 0)
    {
      sub_100187688(a1);
    }

    return;
  }

  v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v16)
  {
    goto LABEL_19;
  }
}

void sub_100187688(uint64_t a1)
{
  v2 = v1;
  v31 = type metadata accessor for ExperienceEffect(0);
  v4 = __chkstk_darwin(v31);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v29 - v7;
  v9 = type metadata accessor for ExperienceEvent(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10018C81C(a1, v11, type metadata accessor for ExperienceEvent);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v30 = a1;
    v15 = v14;
    v29 = swift_slowAlloc();
    v33 = v29;
    *v15 = 136315394;
    *(v15 + 4) = sub_100017494(0xD000000000000017, 0x80000001002A3580, &v33);
    *(v15 + 12) = 2080;
    v16 = sub_100243F84();
    v18 = v17;
    sub_10018C9D0(v11, type metadata accessor for ExperienceEvent);
    v19 = sub_100017494(v16, v18, &v33);

    *(v15 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v12, v13, "%s: event=%s", v15, 0x16u);
    swift_arrayDestroy();

    a1 = v30;
  }

  else
  {

    sub_10018C9D0(v11, type metadata accessor for ExperienceEvent);
  }

  CurrentValueSubject.value.getter();
  v20 = v34;
  if ((~v34 & 0xFEFE) != 0)
  {
  }

  else
  {
    CurrentValueSubject.value.getter();

    v20 = v33;
  }

  if ((v20 & 0xE000) == 0x2000)
  {

    sub_1001C049C(v20 & 0x100 | 0x2001);

    if ((v20 & 0x100) != 0)
    {
      *v8 = 0;
      swift_storeEnumTagMultiPayload();
      sub_10018C018(v8, a1);
      sub_10018C9D0(v8, type metadata accessor for ExperienceEffect);
    }

    if ((*(*(v2 + OBJC_IVAR____TtC17proximitycontrold19HandoffStateMachine_model) + OBJC_IVAR____TtC17proximitycontrold24HandoffStateMachineModel_hintShockwaveEnabled) & 1) == 0)
    {
      *v8 = 0;
      swift_storeEnumTagMultiPayload();
      sub_10018C018(v8, a1);
      sub_10018C9D0(v8, type metadata accessor for ExperienceEffect);
      *v8 = 4;
      swift_storeEnumTagMultiPayload();
      sub_10018C018(v8, a1);
      sub_10018C9D0(v8, type metadata accessor for ExperienceEffect);
    }

    *v6 = (v20 & 0x100) == 0;
    swift_storeEnumTagMultiPayload();
    sub_10018C018(v6, a1);
    sub_10018C9D0(v6, type metadata accessor for ExperienceEffect);
  }

  else
  {

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v33 = v24;
      *v23 = 136315138;

      CurrentValueSubject.value.getter();
      v25 = v32;
      if ((~v32 & 0xFEFE) != 0)
      {
      }

      else
      {
        CurrentValueSubject.value.getter();

        v25 = v34;
      }

      v26 = sub_100243CA8(v25);
      v28 = sub_100017494(v26, v27, &v33);

      *(v23 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v21, v22, "### Invalid state: %s", v23, 0xCu);
      sub_10000903C(v24);
    }
  }
}

uint64_t sub_100187BF4(void (*a1)(void, void, void))
{
  v2 = v1;
  v110 = a1;
  v3 = sub_100035D04(&qword_10033E800, &qword_100278E80);
  __chkstk_darwin(v3 - 8);
  v114 = &v101[-v4];
  v107 = type metadata accessor for ContinuousClock.Instant();
  v113 = *(v107 - 8);
  v5 = __chkstk_darwin(v107);
  v7 = &v101[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __chkstk_darwin(v5);
  v111 = &v101[-v9];
  v10 = __chkstk_darwin(v8);
  v105 = &v101[-v11];
  v12 = __chkstk_darwin(v10);
  v117 = &v101[-v13];
  v14 = __chkstk_darwin(v12);
  v118 = &v101[-v15];
  v106 = v16;
  __chkstk_darwin(v14);
  v116 = &v101[-v17];
  v18 = sub_100035D04(&qword_10033C280, &qword_100272A80);
  __chkstk_darwin(v18 - 8);
  v109 = &v101[-v19];
  v108 = type metadata accessor for ExperienceEffect(0);
  __chkstk_darwin(v108);
  v21 = &v101[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = sub_100035D04(&qword_100349620, &qword_1002838B8);
  __chkstk_darwin(v22 - 8);
  v24 = &v101[-v23];
  v25 = type metadata accessor for OSSignpostID();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v101[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v104 = OBJC_IVAR____TtC17proximitycontrold19HandoffStateMachine_log;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();
  v31 = os_log_type_enabled(v29, v30);
  v112 = v7;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v119[0] = v33;
    *v32 = 136315138;
    *(v32 + 4) = sub_100017494(0x286C6C6577446F74, 0xEB00000000293A5FLL, v119);
    _os_log_impl(&_mh_execute_header, v29, v30, "%s", v32, 0xCu);
    sub_10000903C(v33);
  }

  static OSSignpostID.exclusive.getter();
  static os_signpost_type_t.begin.getter();
  if (qword_100338F20 != -1)
  {
    swift_once();
  }

  os_signpost(_:dso:log:name:signpostID:_:_:)();
  (*(v26 + 8))(v28, v25);
  v34 = *(v2 + OBJC_IVAR____TtC17proximitycontrold19HandoffStateMachine_model);
  *(v34 + OBJC_IVAR____TtC17proximitycontrold24HandoffStateMachineModel_dwellExpired) = 0;
  *(v34 + OBJC_IVAR____TtC17proximitycontrold24HandoffStateMachineModel_dwellTimedOut) = 0;
  v35 = sub_100035D04(&unk_100349338, &qword_1002837E0);
  v36 = *(*(v35 - 8) + 56);
  v36(v24, 1, 1, v35);
  v37 = v2;
  v38 = OBJC_IVAR____TtC17proximitycontrold24HandoffStateMachineModel_remoteStatus;
  swift_beginAccess();
  sub_1000369A4(v24, v34 + v38, &qword_100349620, &qword_1002838B8);
  swift_endAccess();
  v39 = OBJC_IVAR____TtC17proximitycontrold24HandoffStateMachineModel_isShareableContentLocalResolved;
  *(v34 + OBJC_IVAR____TtC17proximitycontrold24HandoffStateMachineModel_isShareableContentLocalResolved) = 0;
  v115 = v37;

  sub_1001C049C(0x8000);

  *v24 = xmmword_100270E80;
  v40 = type metadata accessor for HandoffTargetStatus(0);
  *(v24 + 3) = 0;
  *(v24 + 4) = 0;
  *(v24 + 2) = 0;
  v24[40] = 0;
  v41 = *(v40 + 20);
  v42 = type metadata accessor for ShareableContent(0);
  (*(*(v42 - 8) + 56))(&v24[v41], 1, 1, v42);
  *&v24[*(v40 + 24)] = 0;
  swift_storeEnumTagMultiPayload();
  v36(v24, 0, 1, v35);
  swift_beginAccess();
  sub_1000369A4(v24, v34 + v38, &qword_100349620, &qword_1002838B8);
  swift_endAccess();
  *(v34 + v39) = 1;
  v43 = *(v34 + OBJC_IVAR____TtC17proximitycontrold24HandoffStateMachineModel_dwellBannerType);
  if (*(v34 + OBJC_IVAR____TtC17proximitycontrold24HandoffStateMachineModel_dwellBannerType))
  {
    v45 = v116;
    v44 = v117;
    v46 = v118;
    v47 = v110;
    *v21 = 0;
    *(v21 + 1) = 0;
    if (v43 == 1)
    {
      v21[16] = 0;
      swift_storeEnumTagMultiPayload();
      v48 = v115;
      sub_10018C018(v21, v47);
      sub_10018C9D0(v21, type metadata accessor for ExperienceEffect);
      *v21 = 0;
      *(v21 + 1) = 0;
      v21[16] = -125;
    }

    else
    {
      v21[16] = -124;
      swift_storeEnumTagMultiPayload();
      v48 = v115;
      sub_10018C018(v21, v47);
      sub_10018C9D0(v21, type metadata accessor for ExperienceEffect);
      *v21 = *(v34 + OBJC_IVAR____TtC17proximitycontrold24HandoffStateMachineModel_dwellAnimationDuration);
      *(v21 + 1) = 0;
      v21[16] = 0x80;
      swift_storeEnumTagMultiPayload();
      sub_10018C018(v21, v47);
      sub_10018C9D0(v21, type metadata accessor for ExperienceEffect);
      *v21 = xmmword_100271890;
      v21[16] = 0;
    }
  }

  else
  {
    *v21 = xmmword_100271890;
    v21[16] = 0;
    swift_storeEnumTagMultiPayload();
    v47 = v110;
    v48 = v115;
    sub_10018C018(v21, v110);
    sub_10018C9D0(v21, type metadata accessor for ExperienceEffect);
    *v21 = 0;
    *(v21 + 1) = 0;
    v21[16] = -125;
    v45 = v116;
    v44 = v117;
    v46 = v118;
  }

  swift_storeEnumTagMultiPayload();
  sub_10018C018(v21, v47);
  sub_10018C9D0(v21, type metadata accessor for ExperienceEffect);
  if (*(v34 + OBJC_IVAR____TtC17proximitycontrold24HandoffStateMachineModel_dwellNoticeEnabled) == 1)
  {
    type metadata accessor for NoticeEffect(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    sub_10018C018(v21, v47);
    sub_10018C9D0(v21, type metadata accessor for ExperienceEffect);
  }

  if (*(v34 + OBJC_IVAR____TtC17proximitycontrold24HandoffStateMachineModel_dwellShockwaveEnabled) != 1)
  {
    if (qword_100338F18 != -1)
    {
      swift_once();
    }

    v51 = *(qword_10038B0B8 + 192);
    v52 = sub_1000031CC();

    if ((v52 & 1) == 0)
    {
      *v21 = 0;
      goto LABEL_22;
    }

LABEL_20:
    *v21 = 3;
LABEL_22:
    swift_storeEnumTagMultiPayload();
    sub_10018C018(v21, v47);
    sub_10018C9D0(v21, type metadata accessor for ExperienceEffect);
    goto LABEL_23;
  }

  *v21 = 0;
  swift_storeEnumTagMultiPayload();
  sub_10018C018(v21, v47);
  sub_10018C9D0(v21, type metadata accessor for ExperienceEffect);
  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v49 = *(qword_10038B0B8 + 208);
  v50 = sub_1000031CC();

  if (v50)
  {
    goto LABEL_20;
  }

LABEL_23:
  v53 = v109;
  static Date.now.getter();
  v54 = type metadata accessor for Date();
  (*(*(v54 - 8) + 56))(v53, 0, 1, v54);
  v55 = OBJC_IVAR____TtC17proximitycontrold19HandoffStateMachine_dwellStartTime;
  swift_beginAccess();
  sub_1000369A4(v53, v48 + v55, &qword_10033C280, &qword_100272A80);
  swift_endAccess();
  v56 = *(v48 + OBJC_IVAR____TtC17proximitycontrold19HandoffStateMachine_dwellID);
  v57 = __OFADD__(v56, 1);
  v58 = v56 + 1;
  if (v57)
  {
    __break(1u);
LABEL_30:
    swift_once();
    goto LABEL_28;
  }

  v103 = OBJC_IVAR____TtC17proximitycontrold19HandoffStateMachine_dwellID;
  *(v48 + OBJC_IVAR____TtC17proximitycontrold19HandoffStateMachine_dwellID) = v58;
  static ContinuousClock.Instant.now.getter();
  static Duration.seconds(_:)();
  ContinuousClock.Instant.advanced(by:)();
  v59 = v113;
  v60 = v44;
  v61 = (v113 + 8);
  v62 = *(v113 + 8);
  v63 = v107;
  v62(v46, v107);
  static ContinuousClock.Instant.now.getter();
  static Duration.seconds(_:)();
  ContinuousClock.Instant.advanced(by:)();
  v62(v46, v63);
  v64 = v60;
  v65 = *(v59 + 16);
  v66 = v105;
  v67 = v45;
  v65(v105, v45, v63);
  v68 = v111;
  v110 = v65;
  v65(v111, v64, v63);
  v69 = Logger.logObject.getter();
  v70 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    v104 = swift_slowAlloc();
    v119[0] = v104;
    *v71 = 136315394;
    v72 = v110;
    v110(v118, v66, v63);
    v73 = String.init<A>(describing:)();
    v102 = v70;
    v74 = v73;
    v76 = v75;
    v62(v66, v63);
    v77 = sub_100017494(v74, v76, v119);

    *(v71 + 4) = v77;
    *(v71 + 12) = 2080;
    v78 = v111;
    v72(v118, v111, v63);
    v79 = String.init<A>(describing:)();
    v81 = v80;
    v62(v78, v63);
    v82 = sub_100017494(v79, v81, v119);

    *(v71 + 14) = v82;
    v83 = v118;
    _os_log_impl(&_mh_execute_header, v69, v102, "Scheduling dwellExpired:%s dwellTimeout:%s", v71, 0x16u);
    swift_arrayDestroy();
    v84 = v116;

    v85 = v114;
  }

  else
  {

    v62(v68, v63);
    v62(v66, v63);
    v85 = v114;
    v84 = v67;
    v83 = v118;
  }

  v108 = v62;
  v109 = v61;
  v86 = type metadata accessor for TaskPriority();
  (*(*(v86 - 8) + 56))(v85, 1, 1, v86);
  v53 = swift_allocObject();
  v87 = v115;
  swift_weakInit();
  v115 = *(v87 + v103);
  v88 = v110;
  v110(v83, v84, v63);
  v88(v112, v117, v63);
  v89 = qword_1003391F0;

  v46 = v63;
  if (v89 != -1)
  {
    goto LABEL_30;
  }

LABEL_28:
  v90 = qword_10038B5C0;
  v91 = sub_10018C5EC(&qword_1003492A8, type metadata accessor for WorkActor, &unk_10028D774);
  v92 = v113;
  v93 = *(v113 + 80);
  v94 = (v93 + 32) & ~v93;
  v95 = (v106 + v93 + v94) & ~v93;
  v96 = (v106 + v95 + 7) & 0xFFFFFFFFFFFFFFF8;
  v97 = swift_allocObject();
  *(v97 + 16) = v90;
  *(v97 + 24) = v91;
  v98 = *(v92 + 32);
  v98(v97 + v94, v118, v46);
  v98(v97 + v95, v112, v46);
  *(v97 + v96) = v53;
  *(v97 + ((v96 + 15) & 0xFFFFFFFFFFFFFFF8)) = v115;

  sub_1000DBA98(0, 0, v114, &unk_1002838C8, v97);

  v99 = v108;
  v108(v117, v46);
  return v99(v116, v46);
}

uint64_t sub_100188B70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v7[8] = a4;
  v7[9] = a5;
  v7[12] = sub_100035D04(&unk_10034C700, &qword_100273D30);
  v7[13] = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  v7[14] = v8;
  v7[15] = *(v8 - 8);
  v7[16] = swift_task_alloc();
  v7[17] = type metadata accessor for ExperienceEvent(0);
  v7[18] = swift_task_alloc();
  v9 = type metadata accessor for ContinuousClock();
  v7[19] = v9;
  v7[20] = *(v9 - 8);
  v7[21] = swift_task_alloc();
  v10 = sub_100035D04(&qword_100349628, &qword_1002838D0);
  v7[22] = v10;
  v7[23] = *(v10 - 8);
  v7[24] = swift_task_alloc();
  v7[25] = swift_task_alloc();
  v7[26] = swift_task_alloc();
  if (qword_1003391F0 != -1)
  {
    swift_once();
  }

  type metadata accessor for WorkActor();
  sub_10018C5EC(&qword_1003492A8, type metadata accessor for WorkActor, &unk_10028D774);
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  v7[27] = v12;
  v7[28] = v11;

  return (_swift_task_switch)(sub_100188E08, v12, v11);
}

uint64_t sub_100188E08()
{
  v2 = *(v0 + 176);
  v1 = *(v0 + 184);
  v3 = *(v0 + 72);
  v4 = *(v0 + 64);
  sub_100035D04(&qword_100349630, qword_1002838D8);
  v5 = *(v1 + 72);
  *(v0 + 232) = v5;
  v6 = *(v1 + 80);
  *(v0 + 288) = v6;
  v7 = (v6 + 32) & ~v6;
  v8 = swift_allocObject();
  *(v0 + 240) = v8;
  *(v8 + 16) = xmmword_1002725A0;
  v9 = v8 + v7;
  v10 = *(v2 + 48);
  v11 = type metadata accessor for ContinuousClock.Instant();
  *(v0 + 248) = v11;
  v12 = *(v11 - 8);
  *(v0 + 256) = v12;
  v13 = *(v12 + 16);
  v13(v9, v4, v11);
  *(v9 + v10) = 7;
  v14 = v9 + v5;
  v15 = *(v2 + 48);
  v13(v14, v3, v11);
  *(v14 + v15) = 8;
  swift_beginAccess();
  *(v0 + 264) = 0;
  v16 = *(v0 + 248);
  v17 = *(v0 + 256);
  v19 = *(v0 + 200);
  v18 = *(v0 + 208);
  v20 = *(v0 + 176);
  sub_100009848(*(v0 + 240) + ((*(v0 + 288) + 32) & ~*(v0 + 288)), v18, &qword_100349628, &qword_1002838D0);
  v21 = *(v20 + 48);
  LOBYTE(v5) = *(v18 + v21);
  (*(v17 + 32))(v19, v18, v16);
  *(v19 + v21) = v5;
  *(v0 + 48) = 0;
  *(v0 + 40) = 0;
  *(v0 + 56) = 1;
  static Clock<>.continuous.getter();
  v22 = swift_task_alloc();
  *(v0 + 272) = v22;
  v23 = sub_10018C5EC(&qword_100349618, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  *v22 = v0;
  v22[1] = sub_100189088;
  v24 = *(v0 + 200);
  v25 = *(v0 + 168);
  v26 = *(v0 + 152);

  return static Task<>.sleep<A>(until:tolerance:clock:)(v24, v0 + 40, v25, v26, v23);
}

uint64_t sub_100189088()
{
  v2 = *v1;
  *(*v1 + 280) = v0;

  (*(v2[20] + 8))(v2[21], v2[19]);
  if (v0)
  {
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v3 = v2[27];
    v4 = v2[28];
    v5 = sub_1001896E8;
  }

  else
  {
    v3 = v2[27];
    v4 = v2[28];
    v5 = sub_10018920C;
  }

  return (_swift_task_switch)(v5, v3, v4);
}

uint64_t sub_10018920C()
{
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    sub_1000097E8(*(v0 + 200), &qword_100349628, &qword_1002838D0);
LABEL_12:

    v18 = *(v0 + 8);

    return v18();
  }

  v2 = Strong;

  CurrentValueSubject.value.getter();
  v3 = *(v0 + 59);
  if ((~v3 & 0xFEFE) != 0)
  {

    if (v3 != 0x8000)
    {
      goto LABEL_4;
    }
  }

  else
  {
    CurrentValueSubject.value.getter();

    if (*(v0 + 57) != 0x8000)
    {
LABEL_4:
      v4 = *(v0 + 200);

      sub_1000097E8(v4, &qword_100349628, &qword_1002838D0);
      goto LABEL_11;
    }
  }

  if (*(v2 + OBJC_IVAR____TtC17proximitycontrold19HandoffStateMachine_dwellID) == *(v0 + 88) && (v5 = OBJC_IVAR____TtC17proximitycontrold19HandoffStateMachine_model, swift_weakLoadStrong()))
  {
    v37 = *(v0 + 256);
    v38 = *(v0 + 248);
    v7 = *(v0 + 192);
    v6 = *(v0 + 200);
    v8 = *(v0 + 144);
    v32 = *(v0 + 176);
    v10 = *(v0 + 120);
    v9 = *(v0 + 128);
    v11 = *(v0 + 104);
    v34 = *(v0 + 96);
    v35 = v6;
    v33 = *(v0 + 112);

    v36 = v7;
    sub_100009848(v6, v7, &qword_100349628, &qword_1002838D0);
    *v8 = *(v7 + *(v32 + 48));
    swift_storeEnumTagMultiPayload();
    (*(v10 + 16))(v9, *(v2 + v5) + OBJC_IVAR____TtC17proximitycontrold24HandoffStateMachineModel_sessionID, v33);
    v12 = UUID.uuidString.getter();
    v14 = v13;
    (*(v10 + 8))(v9, v33);
    v15 = (v11 + *(v34 + 48));
    v16 = (v11 + *(v34 + 64));
    sub_10018C81C(v8, v11, type metadata accessor for ExperienceEvent);
    *v15 = v12;
    v15[1] = v14;
    *v16 = 0;
    v16[1] = 0xE000000000000000;
    PassthroughSubject.send(_:)();
    sub_1000097E8(v11, &unk_10034C700, &qword_100273D30);
    sub_10018C9D0(v8, type metadata accessor for ExperienceEvent);
    sub_1000097E8(v35, &qword_100349628, &qword_1002838D0);

    (*(v37 + 8))(v36, v38);
  }

  else
  {
    sub_1000097E8(*(v0 + 200), &qword_100349628, &qword_1002838D0);
  }

LABEL_11:
  v17 = *(v0 + 264) + 1;
  if (*(v0 + 264) == 1)
  {
    goto LABEL_12;
  }

  *(v0 + 264) = v17;
  v20 = *(v0 + 248);
  v21 = *(v0 + 256);
  v23 = *(v0 + 200);
  v22 = *(v0 + 208);
  v24 = *(v0 + 176);
  sub_100009848(*(v0 + 240) + ((*(v0 + 288) + 32) & ~*(v0 + 288)) + *(v0 + 232) * v17, v22, &qword_100349628, &qword_1002838D0);
  v25 = *(v24 + 48);
  v26 = *(v22 + v25);
  (*(v21 + 32))(v23, v22, v20);
  *(v23 + v25) = v26;
  *(v0 + 48) = 0;
  *(v0 + 40) = 0;
  *(v0 + 56) = 1;
  static Clock<>.continuous.getter();
  v27 = swift_task_alloc();
  *(v0 + 272) = v27;
  v28 = sub_10018C5EC(&qword_100349618, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  *v27 = v0;
  v27[1] = sub_100189088;
  v29 = *(v0 + 200);
  v30 = *(v0 + 168);
  v31 = *(v0 + 152);

  return static Task<>.sleep<A>(until:tolerance:clock:)(v29, v0 + 40, v30, v31, v28);
}

uint64_t sub_1001896E8()
{
  sub_1000097E8(*(v0 + 200), &qword_100349628, &qword_1002838D0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001897C4(uint64_t a1)
{
  v2 = v1;
  v144 = a1;
  v134 = type metadata accessor for OSSignpostID();
  v133 = *(v134 - 8);
  __chkstk_darwin(v134);
  v132 = &v119[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_100035D04(&qword_10033E800, &qword_100278E80);
  __chkstk_darwin(v4 - 8);
  v145 = &v119[-v5];
  v6 = type metadata accessor for ContinuousClock.Instant();
  v130 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v129 = &v119[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v128 = v8;
  __chkstk_darwin(v7);
  v141 = &v119[-v9];
  v142 = type metadata accessor for ExperienceEffect(0);
  v10 = __chkstk_darwin(v142);
  v121 = &v119[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v143 = &v119[-v12];
  v123 = sub_100035D04(&qword_10033E570, &unk_100274720);
  v124 = *(v123 - 8);
  __chkstk_darwin(v123);
  v14 = &v119[-v13];
  v15 = sub_100035D04(&unk_100349338, &qword_1002837E0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v119[-v17];
  v19 = sub_100035D04(&qword_10033C280, &qword_100272A80);
  __chkstk_darwin(v19 - 8);
  v21 = &v119[-v20];
  v138 = type metadata accessor for Date();
  v137 = *(v138 - 1);
  v22 = __chkstk_darwin(v138);
  v122 = &v119[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v22);
  v25 = &v119[-v24];
  v126 = OBJC_IVAR____TtC17proximitycontrold19HandoffStateMachine__state;

  CurrentValueSubject.value.getter();
  v131 = v6;
  v125 = v14;
  if ((~LOWORD(v146[0]) & 0xFEFE) != 0)
  {
    v120 = LOWORD(v146[0]);
  }

  else
  {
    CurrentValueSubject.value.getter();

    v120 = v151;
  }

  v26 = *(v1 + OBJC_IVAR____TtC17proximitycontrold19HandoffStateMachine_model);
  v139 = OBJC_IVAR____TtC17proximitycontrold24HandoffStateMachineModel_device;
  v136 = sub_100070168();
  v135 = v27;
  v140 = v28;
  v29 = OBJC_IVAR____TtC17proximitycontrold19HandoffStateMachine_dwellStartTime;
  swift_beginAccess();
  sub_100009848(v2 + v29, v21, &qword_10033C280, &qword_100272A80);
  v30 = v137;
  v31 = v138;
  v32 = (*(v137 + 48))(v21, 1, v138);
  if (v32 == 1)
  {
    sub_1000097E8(v21, &qword_10033C280, &qword_100272A80);
    v33 = 0.0;
  }

  else
  {
    (*(v30 + 32))(v25, v21, v31);
    Date.timeIntervalSinceNow.getter();
    v35 = v34;
    (*(v30 + 8))(v25, v31);
    v33 = -v35;
  }

  sub_10001618C();
  v36 = swift_allocError();
  *v37 = 0;
  *(v37 + 8) = 0xE000000000000000;
  *(v37 + 16) = 12;
  *&v151 = 0;
  *(&v151 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(55);
  v146[0] = v151;
  v38._object = 0x80000001002A3500;
  v38._countAndFlagsBits = 0x1000000000000015;
  String.append(_:)(v38);
  *(&v152 + 1) = &type metadata for HandoffActionContext;
  v39 = swift_allocObject();
  *&v151 = v39;
  *(v39 + 16) = 523;
  *(v39 + 18) = 0;
  *(v39 + 32) = 0;
  *(v39 + 40) = 0;
  *(v39 + 24) = v36;
  v127 = v36;
  swift_errorRetain();
  v40 = sub_100057B10(&v151);
  v42 = v41;
  sub_10000903C(&v151);
  v43._countAndFlagsBits = v40;
  v43._object = v42;
  String.append(_:)(v43);

  v44._countAndFlagsBits = 2105354;
  v44._object = 0xE300000000000000;
  String.append(_:)(v44);
  v45 = OBJC_IVAR____TtC17proximitycontrold24HandoffStateMachineModel_remoteStatus;
  swift_beginAccess();
  v46 = (*(v16 + 48))(v26 + v45, 1, v15);
  v47 = v125;
  if (v46)
  {
    v48 = 0x80000001002A3520;
    v49 = 0xD000000000000019;
  }

  else
  {
    sub_100009848(v26 + v45, v18, &unk_100349338, &qword_1002837E0);
    v50 = sub_1001843C8(1);
    v48 = v51;
    sub_1000097E8(v18, &unk_100349338, &qword_1002837E0);
    v49 = v50;
  }

  v52 = v48;
  String.append(_:)(*&v49);

  v53._countAndFlagsBits = 2105354;
  v53._object = 0xE300000000000000;
  String.append(_:)(v53);
  if (v140 == 1)
  {
    v54 = 0x80000001002A3540;
    v55 = 0xD00000000000001ALL;
  }

  else
  {
    v56 = v136;
    *&v151 = v136;
    BYTE8(v151) = v135 & 1;
    *&v152 = v140;

    v57 = v56;
    v55 = String.init<A>(describing:)();
    v54 = v58;
  }

  v59 = v54;
  String.append(_:)(*&v55);

  v60._countAndFlagsBits = 2105354;
  v60._object = 0xE300000000000000;
  String.append(_:)(v60);
  v61 = *(*(*(v26 + v139) + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice__mediaRemoteDisplayContext) + 24);
  if (v61)
  {
    *&v151 = *(*(*(v26 + v139) + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice__mediaRemoteDisplayContext) + 24);
    sub_10018C76C();
    v62 = v61;
    v63 = String.init<A>(describing:)();
    v65 = v64;
  }

  else
  {
    v65 = 0x80000001002A3560;
    v63 = 0xD00000000000001ELL;
  }

  v66 = v65;
  String.append(_:)(*&v63);

  v67._countAndFlagsBits = 0x6C6C65774420200ALL;
  v67._object = 0xEF203A656D697420;
  String.append(_:)(v67);
  if (v32 == 1)
  {
    v68 = 0xE300000000000000;
    v69 = 7104878;
  }

  else
  {
    *&v151 = v33;
    v69 = String.init<A>(describing:)();
    v68 = v70;
  }

  v71 = v68;
  String.append(_:)(*&v69);

  v72 = v146[0];

  v73 = Logger.logObject.getter();
  v74 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    *&v151 = v76;
    *v75 = 136315138;
    *(v75 + 4) = sub_100017494(v72, *(&v72 + 1), &v151);
    _os_log_impl(&_mh_execute_header, v73, v74, "%s", v75, 0xCu);
    sub_10000903C(v76);
  }

  v77 = v145;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v79 = Strong;
    sub_10008D594(&v151);
    v147 = v151;
    v148 = v152;
    v149 = v153;
    v80 = v155;
    v150 = v154;
    static Date.now.getter();
    v81 = v47;
    v82 = &v47[*(v123 + 48)];
    v83 = v81;
    (*(v137 + 32))();
    *v82 = v72;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v80 = sub_1000AFF4C(0, v80[2] + 1, 1, v80);
    }

    v85 = v80[2];
    v84 = v80[3];
    v86 = v143;
    if (v85 >= v84 >> 1)
    {
      v80 = sub_1000AFF4C((v84 > 1), v85 + 1, 1, v80);
    }

    v80[2] = v85 + 1;
    sub_100098288(v83, v80 + ((*(v124 + 80) + 32) & ~*(v124 + 80)) + *(v124 + 72) * v85);
    v87 = v79 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___report;
    v88 = *(v79 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___report);
    v89 = *(v79 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___report + 16);
    v90 = *(v79 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___report + 32);
    v146[3] = *(v79 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___report + 48);
    v146[2] = v90;
    v146[1] = v89;
    v146[0] = v88;
    v91 = v149;
    *(v87 + 16) = v148;
    *(v87 + 32) = v91;
    v92 = v150;
    *v87 = v147;
    *(v87 + 48) = v92;
    *(v87 + 56) = v80;
    sub_1000097E8(v146, &qword_10033E428, &qword_100274640);

    v77 = v145;
  }

  else
  {

    v86 = v143;
  }

  sub_1001C049C(32769);

  if (*(v26 + OBJC_IVAR____TtC17proximitycontrold24HandoffStateMachineModel_shockwaveEnabled) == 1)
  {
    *v86 = 1;
    swift_storeEnumTagMultiPayload();
    v93 = v86;
  }

  else
  {
    if ((v120 >> 13) - 1 >= 3)
    {
      v93 = v121;
      if (v120 >> 13 == 4)
      {
        if ((v120 & 0xFFFE) == 0x8000)
        {
          v94 = 1;
        }

        else
        {
          v94 = 2;
        }
      }

      else
      {
        v94 = 2;
      }
    }

    else
    {
      v94 = 1;
      v93 = v121;
    }

    *v93 = v94;
    swift_storeEnumTagMultiPayload();
  }

  v95 = v144;
  sub_10018C018(v93, v144);
  sub_10018C9D0(v93, type metadata accessor for ExperienceEffect);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  sub_10000A0B4(v96, v97);

  v98 = [objc_opt_self() localizedStringForKey:22];
  v99 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v101 = v100;

  *v86 = v99;
  *(v86 + 8) = v101;
  *(v86 + 16) = -126;
  swift_storeEnumTagMultiPayload();
  sub_10018C018(v86, v95);
  sub_10018C9D0(v86, type metadata accessor for ExperienceEffect);
  v102 = v129;
  static ContinuousClock.Instant.now.getter();
  static Duration.seconds(_:)();
  v103 = v141;
  ContinuousClock.Instant.advanced(by:)();
  v104 = v130;
  v105 = v131;
  v138 = *(v130 + 8);
  (v138)(v102, v131);
  v106 = type metadata accessor for TaskPriority();
  (*(*(v106 - 8) + 56))(v77, 1, 1, v106);
  v107 = swift_allocObject();
  swift_weakInit();
  v139 = v2;
  v137 = *(v2 + OBJC_IVAR____TtC17proximitycontrold19HandoffStateMachine_dwellID);
  (*(v104 + 16))(v102, v103, v105);
  v108 = qword_1003391F0;

  if (v108 != -1)
  {
    swift_once();
  }

  v109 = qword_10038B5C0;
  v110 = sub_10018C5EC(&qword_1003492A8, type metadata accessor for WorkActor, &unk_10028D774);
  v111 = (*(v104 + 80) + 32) & ~*(v104 + 80);
  v112 = (v128 + v111 + 7) & 0xFFFFFFFFFFFFFFF8;
  v113 = swift_allocObject();
  v114 = v104;
  v115 = v113;
  *(v113 + 16) = v109;
  *(v113 + 24) = v110;
  (*(v114 + 32))(v113 + v111, v102, v105);
  *(v115 + v112) = v107;
  *(v115 + ((v112 + 15) & 0xFFFFFFFFFFFFFFF8)) = v137;

  sub_1000DBA98(0, 0, v145, &unk_1002838B0, v115);

  (v138)(v141, v105);
  v116 = v132;
  static OSSignpostID.exclusive.getter();
  static os_signpost_type_t.end.getter();
  if (qword_100338F20 != -1)
  {
    swift_once();
  }

  os_signpost(_:dso:log:name:signpostID:_:_:)();
  (*(v133 + 8))(v116, v134);
  v117 = v143;
  *v143 = 2;
  swift_storeEnumTagMultiPayload();
  sub_10018C018(v117, v144);
  sub_100077374(v136, v135, v140);

  return sub_10018C9D0(v117, type metadata accessor for ExperienceEffect);
}

uint64_t sub_10018A900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  v6[11] = sub_100035D04(&unk_10034C700, &qword_100273D30);
  v6[12] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v6[13] = v7;
  v6[14] = *(v7 - 8);
  v6[15] = swift_task_alloc();
  v6[16] = type metadata accessor for ExperienceEvent(0);
  v6[17] = swift_task_alloc();
  v8 = type metadata accessor for ContinuousClock();
  v6[18] = v8;
  v6[19] = *(v8 - 8);
  v6[20] = swift_task_alloc();
  if (qword_1003391F0 != -1)
  {
    swift_once();
  }

  type metadata accessor for WorkActor();
  sub_10018C5EC(&qword_1003492A8, type metadata accessor for WorkActor, &unk_10028D774);
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[21] = v10;
  v6[22] = v9;

  return (_swift_task_switch)(sub_10018AB18, v10, v9);
}

uint64_t sub_10018AB18(uint64_t a1)
{
  *(v1 + 48) = 0;
  *(v1 + 40) = 0;
  *(v1 + 56) = 1;
  static Clock<>.continuous.getter();
  v2 = swift_task_alloc();
  *(v1 + 184) = v2;
  v3 = sub_10018C5EC(&qword_100349618, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  *v2 = v1;
  v2[1] = sub_10018AC10;
  v4 = *(v1 + 160);
  v5 = *(v1 + 144);
  v6 = *(v1 + 64);

  return static Task<>.sleep<A>(until:tolerance:clock:)(v6, v1 + 40, v4, v5, v3);
}

uint64_t sub_10018AC10()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *(*v1 + 152);
  v5 = *(*v1 + 144);
  *(*v1 + 192) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 168);
  v7 = *(v2 + 176);
  if (v0)
  {
    v8 = sub_10018B020;
  }

  else
  {
    v8 = sub_10018AD88;
  }

  return (_swift_task_switch)(v8, v6, v7);
}

uint64_t sub_10018AD88()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;

    CurrentValueSubject.value.getter();
    v3 = *(v0 + 59);
    if ((~v3 & 0xFEFE) != 0)
    {
    }

    else
    {
      CurrentValueSubject.value.getter();

      v3 = *(v0 + 57);
    }

    if (v3 == 32769 && *(v2 + OBJC_IVAR____TtC17proximitycontrold19HandoffStateMachine_dwellID) == *(v0 + 80))
    {
      v4 = OBJC_IVAR____TtC17proximitycontrold19HandoffStateMachine_model;
      if (swift_weakLoadStrong())
      {
        v5 = *(v0 + 136);
        v6 = *(v0 + 112);
        v7 = *(v0 + 120);
        v8 = *(v0 + 96);
        v9 = *(v0 + 104);
        v17 = *(v0 + 88);

        *v5 = 9;
        swift_storeEnumTagMultiPayload();
        (*(v6 + 16))(v7, *(v2 + v4) + OBJC_IVAR____TtC17proximitycontrold24HandoffStateMachineModel_sessionID, v9);
        v10 = UUID.uuidString.getter();
        v12 = v11;
        (*(v6 + 8))(v7, v9);
        v13 = (v8 + *(v17 + 48));
        v14 = (v8 + *(v17 + 64));
        sub_10018C81C(v5, v8, type metadata accessor for ExperienceEvent);
        *v13 = v10;
        v13[1] = v12;
        *v14 = 0;
        v14[1] = 0xE000000000000000;
        PassthroughSubject.send(_:)();
        sub_1000097E8(v8, &unk_10034C700, &qword_100273D30);
        sub_10018C9D0(v5, type metadata accessor for ExperienceEvent);
      }
    }
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_10018B020()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_10018B0B0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v51 = *(v4 - 8);
  v52 = v4;
  __chkstk_darwin(v4);
  v50 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ExperienceEffect(0);
  __chkstk_darwin(v6);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ExperienceEvent(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for OSSignpostID();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  static OSSignpostID.exclusive.getter();
  static os_signpost_type_t.end.getter();
  if (qword_100338F20 != -1)
  {
    swift_once();
  }

  v46 = qword_10038B0C8;
  os_signpost(_:dso:log:name:signpostID:_:_:)();
  v16 = *(v13 + 8);
  v48 = v13 + 8;
  v45 = v16;
  v16(v15, v12);
  v17 = OBJC_IVAR____TtC17proximitycontrold19HandoffStateMachine_log;
  sub_10018C81C(a1, v11, type metadata accessor for ExperienceEvent);
  *&v44 = v17;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  v20 = os_log_type_enabled(v18, v19);
  v49 = v12;
  v47 = v15;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v54 = v43;
    *v21 = 136315394;
    *(v21 + 4) = sub_100017494(0xD00000000000001BLL, 0x80000001002A34E0, &v54);
    *(v21 + 12) = 2080;
    v22 = sub_100243F84();
    v23 = v8;
    v24 = v2;
    v25 = a1;
    v27 = v26;
    sub_10018C9D0(v11, type metadata accessor for ExperienceEvent);
    v28 = sub_100017494(v22, v27, &v54);
    a1 = v25;
    v2 = v24;
    v8 = v23;

    *(v21 + 14) = v28;
    _os_log_impl(&_mh_execute_header, v18, v19, "%s: event=%s", v21, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10018C9D0(v11, type metadata accessor for ExperienceEvent);
  }

  CurrentValueSubject.value.getter();
  v29 = v55;
  if ((~v55 & 0xFEFE) != 0)
  {
  }

  else
  {
    CurrentValueSubject.value.getter();

    v29 = v54;
  }

  if (v29 >> 13 == 3)
  {

    sub_1001C049C(24577);
  }

  else if (v29 >> 13 == 2)
  {

    sub_1001C049C(v29 & 0x100 | 0x4001);

    v44 = xmmword_100271890;
    *v8 = xmmword_100271890;
    v8[16] = 0;
    swift_storeEnumTagMultiPayload();
    sub_10018C018(v8, a1);
    sub_10018C9D0(v8, type metadata accessor for ExperienceEffect);
    *v8 = v44;
    v8[16] = -125;
    swift_storeEnumTagMultiPayload();
    sub_10018C018(v8, a1);
    sub_10018C9D0(v8, type metadata accessor for ExperienceEffect);
    v30 = v50;
    v31 = v51;
    v32 = v52;
    (*(v51 + 16))(v50, *(v2 + OBJC_IVAR____TtC17proximitycontrold19HandoffStateMachine_model) + OBJC_IVAR____TtC17proximitycontrold24HandoffStateMachineModel_sessionID, v52);
    sub_10001B7F4();
    v33 = v47;
    OSSignpostID.init(_:)();
    (*(v31 + 8))(v30, v32);
    static os_signpost_type_t.begin.getter();
    os_signpost(_:dso:log:name:signpostID:_:_:)();
    v45(v33, v49);
    if ((v29 & 0x100) != 0)
    {
      *v8 = 2;
    }

    else
    {
      *v8 = 3;
    }

    swift_storeEnumTagMultiPayload();
    sub_10018C018(v8, a1);
    sub_10018C9D0(v8, type metadata accessor for ExperienceEffect);
  }

  else
  {

    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v54 = v37;
      *v36 = 136315138;

      CurrentValueSubject.value.getter();
      v38 = v53;
      if ((~v53 & 0xFEFE) != 0)
      {
      }

      else
      {
        CurrentValueSubject.value.getter();

        v38 = v55;
      }

      v39 = sub_100243CA8(v38);
      v41 = sub_100017494(v39, v40, &v54);

      *(v36 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v34, v35, "### Invalid state: %s", v36, 0xCu);
      sub_10000903C(v37);
    }
  }
}

uint64_t sub_10018B868(uint64_t a1, int a2)
{
  v3 = v2;
  v51 = type metadata accessor for ExperienceEffect(0);
  __chkstk_darwin(v51);
  v7 = &v43[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_100035D04(&qword_10033C280, &qword_100272A80);
  __chkstk_darwin(v8 - 8);
  v48 = &v43[-v9];
  v10 = type metadata accessor for Date();
  v47 = *(v10 - 8);
  __chkstk_darwin(v10);
  v45 = &v43[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v46 = type metadata accessor for ExperienceEvent(0);
  v12 = __chkstk_darwin(v46);
  v14 = &v43[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v16 = &v43[-v15];
  v50 = a1;
  sub_10018C81C(a1, &v43[-v15], type metadata accessor for ExperienceEvent);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  v19 = os_log_type_enabled(v17, v18);
  v49 = v10;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v44 = a2;
    v21 = v20;
    v52[0] = swift_slowAlloc();
    *v21 = 136315650;
    *(v21 + 4) = sub_100017494(0xD00000000000001ALL, 0x80000001002A34C0, v52);
    *(v21 + 12) = 2080;
    v22 = sub_100243F84();
    v24 = v23;
    sub_10018C9D0(v16, type metadata accessor for ExperienceEvent);
    v25 = sub_100017494(v22, v24, v52);

    *(v21 + 14) = v25;
    *(v21 + 22) = 1024;
    v26 = v44;
    *(v21 + 24) = v44 & 1;
    _os_log_impl(&_mh_execute_header, v17, v18, "%s: event=%s, forceFinish=%{BOOL}d", v21, 0x1Cu);
    swift_arrayDestroy();
  }

  else
  {

    sub_10018C9D0(v16, type metadata accessor for ExperienceEvent);
    v26 = a2;
  }

  v27 = v50;
  sub_10018C81C(v50, v14, type metadata accessor for ExperienceEvent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v29 = v47;
  if (EnumCaseMultiPayload == 7)
  {
    if (v14[8] == 1)
    {
      sub_100037298(8);
    }
  }

  else
  {
    sub_10018C9D0(v14, type metadata accessor for ExperienceEvent);
  }

  CurrentValueSubject.value.getter();
  v30 = v53;
  if ((~v53 & 0xFEFE) != 0)
  {
  }

  else
  {
    CurrentValueSubject.value.getter();

    v30 = LOWORD(v52[0]);
  }

  v31 = OBJC_IVAR____TtC17proximitycontrold19HandoffStateMachine_dwellStartTime;
  swift_beginAccess();
  v32 = v3 + v31;
  v33 = v48;
  sub_100009848(v32, v48, &qword_10033C280, &qword_100272A80);
  v34 = v49;
  if ((*(v29 + 48))(v33, 1, v49) == 1)
  {
    sub_1000097E8(v33, &qword_10033C280, &qword_100272A80);
    if (v26)
    {
      goto LABEL_20;
    }

LABEL_15:
    v37 = sub_100070EF4();
    if (v37 == 4)
    {
      v38 = 0;
    }

    else
    {
      v38 = v37;
    }

    sub_10006F838();
    v39 = sub_1001DF2A4();

    if (v39)
    {
      if (v38 < 2u)
      {
        goto LABEL_20;
      }
    }

    else if (!v38)
    {
      goto LABEL_20;
    }

    v40 = 0;
    goto LABEL_23;
  }

  v35 = v26;
  v36 = v45;
  (*(v29 + 32))(v45, v33, v34);
  Date.timeIntervalSinceNow.getter();
  (*(v29 + 8))(v36, v34);
  if ((v35 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_20:
  v40 = -32512;
LABEL_23:

  sub_1001C049C(v40);

  *v7 = 5;
  swift_storeEnumTagMultiPayload();
  sub_10018C018(v7, v27);
  sub_10018C9D0(v7, type metadata accessor for ExperienceEffect);
  *v7 = xmmword_100271890;
  v7[16] = 0;
  swift_storeEnumTagMultiPayload();
  sub_10018C018(v7, v27);
  sub_10018C9D0(v7, type metadata accessor for ExperienceEffect);
  v41 = (v30 >> 13) - 2 < 2 || v30 >> 13 == 4 && v30 == 32769;
  *v7 = v41;
  *(v7 + 1) = 0;
  v7[16] = -125;
  swift_storeEnumTagMultiPayload();
  sub_10018C018(v7, v27);
  sub_10018C9D0(v7, type metadata accessor for ExperienceEffect);
  *v7 = 5;
  swift_storeEnumTagMultiPayload();
  sub_10018C018(v7, v27);
  sub_10018C9D0(v7, type metadata accessor for ExperienceEffect);
  *v7 = 3;
  swift_storeEnumTagMultiPayload();
  sub_10018C018(v7, v27);
  sub_10018C9D0(v7, type metadata accessor for ExperienceEffect);
  *(v7 + 1) = 0;
  *(v7 + 2) = 0;
  *v7 = 2;
  v7[24] = 4;
  swift_storeEnumTagMultiPayload();
  sub_10018C018(v7, v27);
  sub_10018C9D0(v7, type metadata accessor for ExperienceEffect);
  *v7 = 2;
  swift_storeEnumTagMultiPayload();
  sub_10018C018(v7, v27);
  sub_10018C9D0(v7, type metadata accessor for ExperienceEffect);
  *(v7 + 1) = 0;
  *(v7 + 2) = 0;
  *v7 = 0;
  v7[24] = 3;
  swift_storeEnumTagMultiPayload();
  sub_10018C018(v7, v27);
  return sub_10018C9D0(v7, type metadata accessor for ExperienceEffect);
}

uint64_t sub_10018C018(uint64_t a1, uint64_t a2)
{
  v5 = sub_100035D04(&qword_10033B530, &unk_1002783D0);
  __chkstk_darwin(v5);
  v7 = v23 - v6;
  v8 = type metadata accessor for ExperienceEffect(0);
  __chkstk_darwin(v8 - 8);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10018C81C(a1, v10, type metadata accessor for ExperienceEffect);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v23[1] = v2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v25 = v15;
    *v14 = 136315138;
    v16 = sub_100244CC4();
    v24 = v5;
    v17 = a1;
    v18 = a2;
    v20 = v19;
    sub_10018C9D0(v10, type metadata accessor for ExperienceEffect);
    v21 = sub_100017494(v16, v20, &v25);
    a2 = v18;
    a1 = v17;
    v5 = v24;

    *(v14 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v11, v12, "⭐️ Emit: %s", v14, 0xCu);
    sub_10000903C(v15);
  }

  else
  {

    sub_10018C9D0(v10, type metadata accessor for ExperienceEffect);
  }

  sub_10018C81C(a1, v7, type metadata accessor for ExperienceEffect);
  sub_10018C81C(a2, &v7[*(v5 + 36)], type metadata accessor for ExperienceEvent);
  PassthroughSubject.send(_:)();
  return sub_1000097E8(v7, &qword_10033B530, &unk_1002783D0);
}

uint64_t sub_10018C2CC()
{
  v1 = OBJC_IVAR____TtC17proximitycontrold19HandoffStateMachine_log;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1000097E8(v0 + OBJC_IVAR____TtC17proximitycontrold19HandoffStateMachine_dwellStartTime, &qword_10033C280, &qword_100272A80);

  return swift_deallocClassInstance();
}

void sub_10018C3F0(uint64_t a1)
{
  type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    sub_10018C4E8(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10018C4E8(uint64_t a1)
{
  if (!qword_10033CCC0)
  {
    type metadata accessor for Date();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_10033CCC0);
    }
  }
}

uint64_t sub_10018C540(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1000CCEF4(a1, WitnessTable);
}

uint64_t sub_10018C594(uint64_t a1)
{
  result = sub_10018C5EC(&qword_100349610, type metadata accessor for HandoffStateMachine, &unk_100283814);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10018C5EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10018C634(uint64_t a1)
{
  v4 = *(type metadata accessor for ContinuousClock.Instant() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + v6);
  v10 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10009D6D4;

  return sub_10018A900(a1, v7, v8, v1 + v5, v9, v10);
}

unint64_t sub_10018C76C()
{
  result = qword_10033D520;
  if (!qword_10033D520)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10033D520);
  }

  return result;
}

uint64_t sub_10018C7B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HandoffTargetStatus(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10018C81C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10018C884(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for ContinuousClock.Instant() - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 32) & ~v6;
  v8 = *(v5 + 64);
  v9 = (v8 + v6 + v7) & ~v6;
  v10 = (v8 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = *(v1 + v10);
  v14 = *(v1 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8));
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_1000E6584;

  return sub_100188B70(a1, v11, v12, v1 + v7, v1 + v9, v13, v14);
}

uint64_t sub_10018C9D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10018CA40(char a1, char a2)
{
  if (a1 == a2)
  {
    v2 = 0;
    return v2 ^ 1u;
  }

  sub_100035D04(&qword_100349650, qword_100283A18);
  if (!a1 || !a2)
  {
    v5 = a1 == 0;
    goto LABEL_18;
  }

  if (a1 == 4 || a2 == 4)
  {
    v5 = a1 == 4;
    goto LABEL_18;
  }

  if (a1 == 1 || a2 == 1)
  {
    v5 = a1 == 1;
    goto LABEL_18;
  }

  if (a1 == 2 || a2 == 2)
  {
    v5 = a1 == 2;
LABEL_18:
    v2 = v5;
    return v2 ^ 1u;
  }

  if (a1 == 3 || a2 == 3)
  {
    v5 = a1 == 3;
    goto LABEL_18;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_10018CB34(char a1, char a2)
{
  if (a2 == a1)
  {
    return 0;
  }

  sub_100035D04(&qword_100349650, qword_100283A18);
  if (a1 && a2)
  {
    if (a1 == 4 || a2 == 4)
    {
      return a2 == 4;
    }

    else if (a1 == 1 || a2 == 1)
    {
      return a2 == 1;
    }

    else if (a1 == 2 || a2 == 2)
    {
      return a2 == 2;
    }

    else
    {
      if (a1 != 3 && a2 != 3)
      {
        result = _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
        return result;
      }

      return a2 == 3;
    }
  }

  else
  {
    return a2 == 0;
  }
}

uint64_t sub_10018CC34(char a1, char a2)
{
  if (a2 == a1)
  {
    v2 = 0;
    return v2 ^ 1u;
  }

  sub_100035D04(&qword_100349650, qword_100283A18);
  if (!a1 || !a2)
  {
    v5 = a2 == 0;
    goto LABEL_18;
  }

  if (a1 == 4 || a2 == 4)
  {
    v5 = a2 == 4;
    goto LABEL_18;
  }

  if (a1 == 1 || a2 == 1)
  {
    v5 = a2 == 1;
    goto LABEL_18;
  }

  if (a1 == 2 || a2 == 2)
  {
    v5 = a2 == 2;
LABEL_18:
    v2 = v5;
    return v2 ^ 1u;
  }

  if (a1 == 3 || a2 == 3)
  {
    v5 = a2 == 3;
    goto LABEL_18;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

unint64_t sub_10018CD4C()
{
  result = qword_100349638;
  if (!qword_100349638)
  {
    sub_100035D4C(&qword_100349640, qword_100283928);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349638);
  }

  return result;
}

unint64_t sub_10018CDB0()
{
  result = qword_100349648;
  if (!qword_100349648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349648);
  }

  return result;
}

unint64_t sub_10018CE34()
{
  v1 = *v0;
  v2 = 0x41746E6572727563;
  v3 = 0x4D746E6572727563;
  v4 = 0x43746E6572727563;
  if (v1 != 3)
  {
    v4 = 0x54746E6572727563;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000013;
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

uint64_t sub_10018CEF4(char a1, char a2)
{
  if (a1 == a2)
  {
    return 0;
  }

  sub_100035D04(&qword_100349650, qword_100283A18);
  if (a1 && a2)
  {
    if (a1 == 4 || a2 == 4)
    {
      return a1 == 4;
    }

    else if (a1 == 1 || a2 == 1)
    {
      return a1 == 1;
    }

    else if (a1 == 2 || a2 == 2)
    {
      return a1 == 2;
    }

    else
    {
      if (a1 != 3 && a2 != 3)
      {
        result = _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
        return result;
      }

      return a1 == 3;
    }
  }

  else
  {
    return a1 == 0;
  }
}

uint64_t sub_10018CFE4(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (a1 == 0xD000000000000029 && 0x800000010029F040 == a2)
  {
    goto LABEL_3;
  }

  v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v5)
  {
    return v2;
  }

  v2 = 1;
  if (a1 == 0xD00000000000002FLL && 0x800000010029F010 == a2)
  {
    goto LABEL_3;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v7)
  {
    return v2;
  }

  v2 = 2;
  if (a1 == 0xD000000000000029 && 0x800000010029EFE0 == a2)
  {
    goto LABEL_3;
  }

  v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v8)
  {
    return v2;
  }

  v2 = 3;
  if (a1 == 0xD000000000000028 && 0x800000010029EFB0 == a2)
  {
    goto LABEL_3;
  }

  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v9)
  {
    return v2;
  }

  v2 = 4;
  if (a1 == 0xD000000000000029 && 0x800000010029EF80 == a2)
  {
LABEL_3:
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v10)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }

  return v2;
}

uint64_t sub_10018D360()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10038B420);
  sub_100003078(v0, qword_10038B420);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10018D3E0()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_100349658);
  v1 = sub_100003078(v0, qword_100349658);
  if (qword_100339110 != -1)
  {
    swift_once();
  }

  v2 = sub_100003078(v0, qword_10038B420);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_10018D4A8()
{
  v1 = v0;
  if (qword_100339118 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_100349658);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deinit", v5, 2u);
  }

  sub_10018EFC8();
  v7.receiver = v1;
  v7.super_class = type metadata accessor for RapportProxy();
  return objc_msgSendSuper2(&v7, "dealloc");
}

uint64_t sub_10018D6E0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  if (qword_100339118 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100003078(v3, qword_100349658);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Activate", v6, 2u);
  }

  sub_10018DEAC();
  sub_10018E4F4();
  v7 = [objc_allocWithZone(RPCompanionLinkClient) init];
  [v7 setControlFlags:6];
  [v7 setDispatchQueue:*&v1[OBJC_IVAR____TtC17proximitycontrold12RapportProxy_dispatchQueue]];
  [v7 setFlags:1];
  v9 = *&v1[OBJC_IVAR____TtC17proximitycontrold12RapportProxy_rpCLDeviceDiscoverySubject];
  v8 = *&v1[OBJC_IVAR____TtC17proximitycontrold12RapportProxy_rpCLDeviceDiscoverySubject + 8];
  v10 = *&v1[OBJC_IVAR____TtC17proximitycontrold12RapportProxy_rpCLDeviceDiscoverySubject + 16];
  v11 = swift_allocObject();
  v11[2] = v9;
  v11[3] = v8;
  v11[4] = v10;
  v11[5] = ObjectType;
  v43 = sub_100192E04;
  v44 = v11;
  aBlock = _NSConcreteStackBlock;
  v40 = 1107296256;
  v41 = sub_100002B88;
  v42 = &unk_10030D610;
  v12 = _Block_copy(&aBlock);

  [v7 setDeviceFoundHandler:v12];
  _Block_release(v12);
  v13 = swift_allocObject();
  v13[2] = v9;
  v13[3] = v8;
  v13[4] = v10;
  v13[5] = ObjectType;
  v43 = sub_100192E58;
  v44 = v13;
  aBlock = _NSConcreteStackBlock;
  v40 = 1107296256;
  v41 = sub_100002B88;
  v42 = &unk_10030D660;
  v14 = _Block_copy(&aBlock);

  [v7 setDeviceLostHandler:v14];
  _Block_release(v14);
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = ObjectType;
  v43 = sub_100005D88;
  v44 = v16;
  aBlock = _NSConcreteStackBlock;
  v40 = 1107296256;
  v41 = sub_100005D14;
  v42 = &unk_10030D6D8;
  v17 = _Block_copy(&aBlock);

  [v7 setDeviceChangedHandler:v17];
  _Block_release(v17);
  sub_100035D04(&qword_1003496F0, &qword_100283AE8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10026F050;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v19;
  *(inited + 48) = 1;
  v20 = sub_10024DF3C(inited);
  swift_setDeallocating();
  sub_1000097E8(inited + 32, &qword_1003496F8, &unk_100283AF0);
  v21 = String._bridgeToObjectiveC()();
  sub_10011A938(v20);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v23 = swift_allocObject();
  *(v23 + 16) = v1;
  v43 = sub_100192E64;
  v44 = v23;
  aBlock = _NSConcreteStackBlock;
  v40 = 1107296256;
  v41 = sub_10018E988;
  v42 = &unk_10030D728;
  v24 = _Block_copy(&aBlock);
  v25 = v1;

  [v7 registerEventID:v21 options:isa handler:v24];
  _Block_release(v24);

  v26 = String._bridgeToObjectiveC()();
  sub_10011A938(v20);
  v27 = Dictionary._bridgeToObjectiveC()().super.isa;

  v28 = swift_allocObject();
  *(v28 + 16) = v25;
  v43 = sub_100192E88;
  v44 = v28;
  aBlock = _NSConcreteStackBlock;
  v40 = 1107296256;
  v41 = sub_10018EA48;
  v42 = &unk_10030D778;
  v29 = _Block_copy(&aBlock);
  v30 = v25;

  [v7 registerRequestID:v26 options:v27 handler:v29];
  _Block_release(v29);

  v31 = String._bridgeToObjectiveC()();
  sub_10011A938(v20);

  v32 = Dictionary._bridgeToObjectiveC()().super.isa;

  v33 = swift_allocObject();
  *(v33 + 16) = v30;
  v43 = sub_100192EAC;
  v44 = v33;
  aBlock = _NSConcreteStackBlock;
  v40 = 1107296256;
  v41 = sub_10018EA48;
  v42 = &unk_10030D7C8;
  v34 = _Block_copy(&aBlock);
  v35 = v30;

  [v7 registerRequestID:v31 options:v32 handler:v34];
  _Block_release(v34);

  v36 = *&v35[OBJC_IVAR____TtC17proximitycontrold12RapportProxy_rpCLClient];
  *&v35[OBJC_IVAR____TtC17proximitycontrold12RapportProxy_rpCLClient] = v7;
  v37 = v7;

  *(swift_allocObject() + 16) = v37;
  sub_100035D04(&qword_100345FE0, &qword_1002795C0);
  swift_allocObject();
  return Future.init(_:)();
}

double sub_10018DEAC()
{
  v1 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  v32 = *(v1 - 8);
  v33 = v1;
  __chkstk_darwin(v1);
  v29 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100035D04(&qword_100349700, &qword_100283B00);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - v5;
  v7 = sub_100035D04(&qword_100349708, &qword_100283B08);
  v25 = *(v7 - 8);
  v26 = v7;
  __chkstk_darwin(v7);
  v9 = &v24 - v8;
  v10 = sub_100035D04(&qword_100349710, &qword_100283B10);
  v11 = *(v10 - 8);
  v27 = v10;
  v28 = v11;
  __chkstk_darwin(v10);
  v13 = &v24 - v12;
  v14 = sub_100035D04(&qword_100349718, &qword_100283B18);
  v15 = *(v14 - 8);
  v30 = v14;
  v31 = v15;
  __chkstk_darwin(v14);
  v17 = &v24 - v16;
  v18 = *(v0 + OBJC_IVAR____TtC17proximitycontrold12RapportProxy_rpCLDeviceDiscoverySubject + 8);
  v34 = *(v0 + OBJC_IVAR____TtC17proximitycontrold12RapportProxy_rpCLDeviceDiscoverySubject);
  v35 = v18;

  sub_100035D04(&qword_100346A10, &qword_100283B20);
  sub_10000E244(&qword_100346A18, &qword_100346A10, &qword_100283B20, &protocol conformance descriptor for PassthroughSubject<A, B>);
  Publishers.Merge.init(_:_:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100035D04(&qword_100349720, &unk_100283B28);
  sub_10000E244(&qword_100349728, &qword_100349700, &qword_100283B00, &protocol conformance descriptor for Publishers.Merge<A, B>);
  Publisher.compactMap<A>(_:)();

  (*(v4 + 8))(v6, v3);
  sub_10000E244(&qword_100349730, &qword_100349708, &qword_100283B08, &protocol conformance descriptor for Publishers.CompactMap<A, B>);
  sub_100192EF8();
  v19 = v26;
  Publisher<>.removeDuplicates()();
  (*(v25 + 8))(v9, v19);
  v20 = v29;
  static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)();
  v34 = *(v0 + OBJC_IVAR____TtC17proximitycontrold12RapportProxy_dispatchQueue);
  sub_100003118(0, &qword_100339320, OS_dispatch_queue_ptr);
  sub_10000E244(&qword_100349740, &qword_100349710, &qword_100283B10, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  sub_100076FC4(&qword_10034B420, &qword_100339320, OS_dispatch_queue_ptr, &protocol conformance descriptor for OS_dispatch_queue);
  v21 = v27;
  Publisher.throttle<A>(for:scheduler:latest:)();
  (*(v32 + 8))(v20, v33);
  (*(v28 + 8))(v13, v21);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10000E244(&qword_100349748, &qword_100349718, &qword_100283B18, &protocol conformance descriptor for Publishers.Throttle<A, B>);
  v22 = v30;
  Publisher<>.sink(receiveValue:)();

  (*(v31 + 8))(v17, v22);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return result;
}

void sub_10018E4F4()
{
  v1 = v0;
  DeviceClass = GestaltGetDeviceClass();
  if (DeviceClass == 7 || DeviceClass == 4)
  {
    v3 = *(v0 + OBJC_IVAR____TtC17proximitycontrold12RapportProxy_airplayPrefs);
    if (v3)
    {
      v4 = qword_100339118;
      v5 = v3;
      if (v4 != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      sub_100003078(v6, qword_100349658);
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v7, v8, "Start observing AirPlay settings", v9, 2u);
      }

      v10 = String._bridgeToObjectiveC()();
      [v5 addObserver:v1 forKeyPath:v10 options:1 context:0];

      v11 = String._bridgeToObjectiveC()();
      [v5 addObserver:v1 forKeyPath:v11 options:1 context:0];
    }
  }
}

uint64_t sub_10018E6B8(void *a1)
{
  if (qword_100339118 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_100349658);
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, v5, "FOUND %@", v6, 0xCu);
    sub_1000097E8(v7, &qword_100339940, &unk_100272C50);
  }

  result = sub_10019278C(v3);
  if ((result & 1) == 0)
  {
    return PassthroughSubject.send(_:)();
  }

  return result;
}

uint64_t sub_10018E820(void *a1)
{
  if (qword_100339118 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_100349658);
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, v5, "LOST %@", v6, 0xCu);
    sub_1000097E8(v7, &qword_100339940, &unk_100272C50);
  }

  result = sub_10019278C(v3);
  if ((result & 1) == 0)
  {
    return PassthroughSubject.send(_:)();
  }

  return result;
}

uint64_t sub_10018E988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  if (a3)
  {
    a3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v4(v5, a3);
}

uint64_t sub_10018EA48(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v6 = *(a1 + 32);
  v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  if (a3)
  {
    a3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v8 = _Block_copy(a4);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;

  v6(v7, a3, sub_100192EE0, v9);
}

void sub_10018EB54(uint64_t a1, objc_class *a2, uint64_t a3, uint64_t a4)
{
  isa = a2;
  if (a1)
  {
    v7.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    if (!isa)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7.super.isa = 0;
  if (a2)
  {
LABEL_3:
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

LABEL_4:
  if (a3)
  {
    v8 = _convertErrorToNSError(_:)();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  (*(a4 + 16))(a4, v7.super.isa, isa);
}

void sub_10018EC3C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1000FBAA8;
  *(v7 + 24) = v6;
  v9[4] = sub_100192ED8;
  v9[5] = v7;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_100124498;
  v9[3] = &unk_10030D868;
  v8 = _Block_copy(v9);

  [a3 activateWithCompletion:v8];
  _Block_release(v8);
}

uint64_t sub_10018ED4C(uint64_t a1, void (*a2)(uint64_t, uint64_t))
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_100339118 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100003078(v4, qword_100349658);
    swift_errorRetain();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      swift_errorRetain();
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v9;
      *v8 = v9;
      _os_log_impl(&_mh_execute_header, v5, v6, "### Activated %@", v7, 0xCu);
      sub_1000097E8(v8, &qword_100339940, &unk_100272C50);
    }

    swift_errorRetain();
    a2(a1, 1);
  }

  else
  {
    if (qword_100339118 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100003078(v11, qword_100349658);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Activated", v14, 2u);
    }

    return (a2)(0, 0);
  }
}

void sub_10018EFC8()
{
  v1 = v0;
  if (qword_100339118 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_100349658);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Invalidate", v5, 2u);
  }

  v6 = OBJC_IVAR____TtC17proximitycontrold12RapportProxy_rpCLClient;
  v7 = *(v1 + OBJC_IVAR____TtC17proximitycontrold12RapportProxy_rpCLClient);
  if (v7)
  {
    [v7 invalidate];
    v8 = *(v1 + v6);
    *(v1 + v6) = 0;
  }

  sub_10018F0DC();
}

void sub_10018F0DC()
{
  v1 = v0;
  DeviceClass = GestaltGetDeviceClass();
  if (DeviceClass == 7 || DeviceClass == 4)
  {
    v3 = *(v0 + OBJC_IVAR____TtC17proximitycontrold12RapportProxy_airplayPrefs);
    if (v3)
    {
      v4 = qword_100339118;
      v5 = v3;
      if (v4 != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      sub_100003078(v6, qword_100349658);
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v7, v8, "Stop observing AirPlay settings", v9, 2u);
      }

      v10 = String._bridgeToObjectiveC()();
      [v5 removeObserver:v1 forKeyPath:v10];

      v11 = String._bridgeToObjectiveC()();
      [v5 removeObserver:v1 forKeyPath:v11];
    }
  }
}

uint64_t sub_10018F290(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v2;
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v3 = sub_1000851E8(v21), (v4 & 1) != 0))
  {
    sub_10001766C(*(a1 + 56) + 32 * v3, &v22);
    sub_1000516C4(v21);
    swift_dynamicCast();
  }

  else
  {
    sub_1000516C4(v21);
  }

  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v5;
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v6 = sub_1000851E8(v21), (v7 & 1) != 0))
  {
    sub_10001766C(*(a1 + 56) + 32 * v6, &v22);
    sub_1000516C4(v21);
    swift_dynamicCast();
  }

  else
  {
    sub_1000516C4(v21);
  }

  strcpy(v19, "rangingToken");
  BYTE5(v19[1]) = 0;
  HIWORD(v19[1]) = -5120;
  v20 = 0;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v8 = sub_1000851E8(v21), (v9 & 1) == 0))
  {
    sub_1000516C4(v21);
    goto LABEL_15;
  }

  sub_10001766C(*(a1 + 56) + 32 * v8, &v22);
  sub_1000516C4(v21);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:
    v10 = 0;
    goto LABEL_16;
  }

  sub_100003118(0, &qword_10034A350, NIDiscoveryToken_ptr);
  v10 = sub_10017B1C8(v19[0], v19[1]);
  sub_100010708(v19[0], v19[1]);
  v20 = v10;
LABEL_16:
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = __chkstk_darwin(Strong);
    v13 = (*(*(v12 + OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_state) + 16) + qword_100346AF8);
    v14 = v12;

    os_unfair_lock_lock(v13);

    sub_1001A9BF0(v15, sub_100192DF4);
    v17 = v16;

    os_unfair_lock_unlock(v13);

    v10 = v20;
  }

  else
  {

    v17 = 0;
  }

  return v17;
}

uint64_t sub_10018F614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void **a6)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v13 = sub_1000BCFD0(v11, v12);

  if (a3 && (sub_1001A1CF8(a2, a3, v13) & 1) != 0)
  {

    return 1;
  }

  if (a5)
  {
    v15 = sub_1001A1CF8(a4, a5, v13);

    if (v15)
    {
      return 1;
    }

    v16 = *a6;
    if (!*a6)
    {
      return 0;
    }
  }

  else
  {

    v16 = *a6;
    if (!*a6)
    {
      return 0;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v17 = v16;
  static Published.subscript.getter();

  v18 = *(v21 + OBJC_IVAR____TtC17proximitycontrold8Identity_nearbyID);
  v19 = v18;

  if (v18)
  {
    v20 = [v17 isEqual:v19];

    if (v20)
    {
      return 1;
    }
  }

  else
  {
  }

  return 0;
}

double sub_10018F7D4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, void (*a10)(void), uint64_t a11, uint64_t a12, uint64_t a13)
{
  sub_1001920A8(a1, a2, a3, a4, a5, a6, a8, a9, a10, a11, a12, a13);

  return result;
}

uint64_t *sub_10018F844(uint64_t *result, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t (*a5)(void, void, uint64_t))
{
  v5 = *result;
  if (*result)
  {
    if (qword_100339118 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100003078(v9, qword_100349658);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v12 = 136315394;
      v13 = sub_100017494(a2, a3, &v18);
      *(v12 + 4) = v13;
      *(v12 + 12) = 2080;
      v15 = sub_1000092A0(v13, v14);
      v17 = sub_100017494(v15, v16, &v18);

      *(v12 + 14) = v17;
      _os_log_impl(&_mh_execute_header, v10, v11, "### request %s failed to %s", v12, 0x16u);
      swift_arrayDestroy();
    }

    return a5(0, 0, v5);
  }

  return result;
}

void sub_10018FA18(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, Class isa, uint64_t a7, uint64_t a8, char a9)
{
  v14 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v16 = *(Strong + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_pairedConnection);
    *(Strong + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_pairedConnection) = v14;
    v17 = v14;
  }

  v18 = String._bridgeToObjectiveC()();
  sub_10011A14C(a5);
  v19.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  if (isa)
  {
    sub_10011A14C(isa);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  v20 = swift_allocObject();
  *(v20 + 16) = a7;
  *(v20 + 24) = a8;
  *(v20 + 32) = a9 & 1;
  *(v20 + 40) = a2;
  aBlock[4] = sub_100192FB0;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100151C6C;
  aBlock[3] = &unk_10030D8E0;
  v21 = _Block_copy(aBlock);

  [v14 sendRequestID:v18 request:v19.super.isa options:isa responseHandler:v21];
  _Block_release(v21);
}

double sub_10018FC1C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t), uint64_t a5, char a6, uint64_t a7)
{
  a4(a1, a2, a3);
  if ((a6 & 1) == 0)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_10007306C();
    }
  }

  return result;
}

void sub_10018FCC0()
{
  v1 = *(v0 + OBJC_IVAR____TtC17proximitycontrold12RapportProxy_rpCLClient);
  if (v1)
  {
    v12 = v1;
    if ([v12 controlFlags] == 6)
    {
    }

    else
    {
      if (qword_100339118 != -1)
      {
        swift_once();
      }

      v2 = type metadata accessor for Logger();
      sub_100003078(v2, qword_100349658);
      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        *v5 = 136315394;
        type metadata accessor for RPControlFlags(0);
        v6 = String.init<A>(describing:)();
        v8 = sub_100017494(v6, v7, &v13);

        *(v5 + 4) = v8;
        *(v5 + 12) = 2080;
        v9 = String.init<A>(describing:)();
        v11 = sub_100017494(v9, v10, &v13);

        *(v5 + 14) = v11;
        _os_log_impl(&_mh_execute_header, v3, v4, "Updating control flags: %s -> %s", v5, 0x16u);
        swift_arrayDestroy();
      }

      [v12 setControlFlags:6];
    }
  }
}

void sub_10018FFF4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = swift_allocObject();
  v7[2] = sub_10019301C;
  v7[3] = v6;
  v7[4] = a3;
  v10[4] = sub_10019305C;
  v10[5] = v7;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_100124498;
  v10[3] = &unk_10030D980;
  v8 = _Block_copy(v10);

  v9 = a3;

  [v9 activateWithCompletion:v8];
  _Block_release(v8);
}

uint64_t sub_100190110(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return (a2)(a4, 0, a3);
  }

  swift_errorRetain();
  a2(a1, 1);
}

uint64_t sub_10019018C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v3 = sub_100007B90(v5, v2);

  return v3 & 1;
}

void sub_100190220(void *a2@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC17proximitycontrold12RapportProxy_rpCLClient);
    if (v5)
    {
      v6 = [v5 activeDevices];
      sub_100003118(0, &qword_10033D618, RPCompanionLinkDevice_ptr);
      v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v4 = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
}

void sub_1001902EC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = swift_unknownObjectWeakLoadStrong();

    if (v4)
    {
      v5 = *&v4[OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_telephonyProxy];
      sub_1001C5B78();
    }
  }
}

uint64_t RPCompanionLinkFlags.description.getter(__int16 a1)
{
  if ((a1 & 1) == 0)
  {
    v2 = _swiftEmptyArrayStorage;
    if ((a1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v2 = sub_100009088(0, 1, 1, _swiftEmptyArrayStorage);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_100009088((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  v5 = &v2[16 * v4];
  *(v5 + 4) = 0x687475616E75;
  *(v5 + 5) = 0xE600000000000000;
  if ((a1 & 2) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100009088(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_100009088((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = 0x72656B61657073;
    *(v8 + 5) = 0xE700000000000000;
  }

LABEL_12:
  if ((a1 & 4) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100009088(0, *(v2 + 2) + 1, 1, v2);
    }

    v10 = *(v2 + 2);
    v9 = *(v2 + 3);
    if (v10 >= v9 >> 1)
    {
      v2 = sub_100009088((v9 > 1), v10 + 1, 1, v2);
    }

    *(v2 + 2) = v10 + 1;
    v11 = &v2[16 * v10];
    *(v11 + 4) = 1936941424;
    *(v11 + 5) = 0xE400000000000000;
    if ((a1 & 8) == 0)
    {
LABEL_14:
      if ((a1 & 0x10) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_26;
    }
  }

  else if ((a1 & 8) == 0)
  {
    goto LABEL_14;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100009088(0, *(v2 + 2) + 1, 1, v2);
  }

  v13 = *(v2 + 2);
  v12 = *(v2 + 3);
  if (v13 >= v12 >> 1)
  {
    v2 = sub_100009088((v12 > 1), v13 + 1, 1, v2);
  }

  *(v2 + 2) = v13 + 1;
  v14 = &v2[16 * v13];
  *(v14 + 4) = 1701670760;
  *(v14 + 5) = 0xE400000000000000;
  if ((a1 & 0x10) != 0)
  {
LABEL_26:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100009088(0, *(v2 + 2) + 1, 1, v2);
    }

    v16 = *(v2 + 2);
    v15 = *(v2 + 3);
    if (v16 >= v15 >> 1)
    {
      v2 = sub_100009088((v15 > 1), v16 + 1, 1, v2);
    }

    *(v2 + 2) = v16 + 1;
    v17 = &v2[16 * v16];
    *(v17 + 4) = 7352944;
    *(v17 + 5) = 0xE300000000000000;
  }

LABEL_31:
  if ((a1 & 0x20) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100009088(0, *(v2 + 2) + 1, 1, v2);
    }

    v20 = *(v2 + 2);
    v19 = *(v2 + 3);
    if (v20 >= v19 >> 1)
    {
      v2 = sub_100009088((v19 > 1), v20 + 1, 1, v2);
    }

    *(v2 + 2) = v20 + 1;
    v21 = &v2[16 * v20];
    *(v21 + 4) = 0x6669576365736E75;
    *(v21 + 5) = 0xE900000000000069;
    if ((a1 & 0x40) == 0)
    {
LABEL_33:
      if ((a1 & 0x80) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_52;
    }
  }

  else if ((a1 & 0x40) == 0)
  {
    goto LABEL_33;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100009088(0, *(v2 + 2) + 1, 1, v2);
  }

  v23 = *(v2 + 2);
  v22 = *(v2 + 3);
  if (v23 >= v22 >> 1)
  {
    v2 = sub_100009088((v22 > 1), v23 + 1, 1, v2);
  }

  *(v2 + 2) = v23 + 1;
  v24 = &v2[16 * v23];
  *(v24 + 4) = 0x6C61636F6CLL;
  *(v24 + 5) = 0xE500000000000000;
  if ((a1 & 0x80) == 0)
  {
LABEL_34:
    if ((a1 & 0x100) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_57;
  }

LABEL_52:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100009088(0, *(v2 + 2) + 1, 1, v2);
  }

  v26 = *(v2 + 2);
  v25 = *(v2 + 3);
  if (v26 >= v25 >> 1)
  {
    v2 = sub_100009088((v25 > 1), v26 + 1, 1, v2);
  }

  *(v2 + 2) = v26 + 1;
  v27 = &v2[16 * v26];
  *(v27 + 4) = 0x72656461654C736DLL;
  *(v27 + 5) = 0xE800000000000000;
  if ((a1 & 0x100) == 0)
  {
LABEL_35:
    if ((a1 & 0x200) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_62;
  }

LABEL_57:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100009088(0, *(v2 + 2) + 1, 1, v2);
  }

  v29 = *(v2 + 2);
  v28 = *(v2 + 3);
  if (v29 >= v28 >> 1)
  {
    v2 = sub_100009088((v28 > 1), v29 + 1, 1, v2);
  }

  *(v2 + 2) = v29 + 1;
  v30 = &v2[16 * v29];
  *(v30 + 4) = 0x6E6F43616964656DLL;
  *(v30 + 5) = 0xE800000000000000;
  if ((a1 & 0x200) == 0)
  {
LABEL_36:
    if ((a1 & 0x400) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_67;
  }

LABEL_62:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100009088(0, *(v2 + 2) + 1, 1, v2);
  }

  v32 = *(v2 + 2);
  v31 = *(v2 + 3);
  if (v32 >= v31 >> 1)
  {
    v2 = sub_100009088((v31 > 1), v32 + 1, 1, v2);
  }

  *(v2 + 2) = v32 + 1;
  v33 = &v2[16 * v32];
  *(v33 + 4) = 0x6461654C72657375;
  *(v33 + 5) = 0xEA00000000007265;
  if ((a1 & 0x400) == 0)
  {
LABEL_37:
    if ((a1 & 0x800) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_72;
  }

LABEL_67:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100009088(0, *(v2 + 2) + 1, 1, v2);
  }

  v35 = *(v2 + 2);
  v34 = *(v2 + 3);
  if (v35 >= v34 >> 1)
  {
    v2 = sub_100009088((v34 > 1), v35 + 1, 1, v2);
  }

  *(v2 + 2) = v35 + 1;
  v36 = &v2[16 * v35];
  *(v36 + 4) = 6580584;
  *(v36 + 5) = 0xE300000000000000;
  if ((a1 & 0x800) == 0)
  {
LABEL_38:
    if ((a1 & 0x1000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_77;
  }

LABEL_72:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100009088(0, *(v2 + 2) + 1, 1, v2);
  }

  v38 = *(v2 + 2);
  v37 = *(v2 + 3);
  if (v38 >= v37 >> 1)
  {
    v2 = sub_100009088((v37 > 1), v38 + 1, 1, v2);
  }

  *(v2 + 2) = v38 + 1;
  v39 = &v2[16 * v38];
  *(v39 + 4) = 1769105779;
  *(v39 + 5) = 0xE400000000000000;
  if ((a1 & 0x1000) == 0)
  {
LABEL_39:
    if ((a1 & 0x4000) == 0)
    {
      goto LABEL_40;
    }

LABEL_82:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100009088(0, *(v2 + 2) + 1, 1, v2);
    }

    v44 = *(v2 + 2);
    v43 = *(v2 + 3);
    if (v44 >= v43 >> 1)
    {
      v2 = sub_100009088((v43 > 1), v44 + 1, 1, v2);
    }

    *(v2 + 2) = v44 + 1;
    v45 = &v2[16 * v44];
    *(v45 + 4) = 0x504165726F6E6769;
    *(v45 + 5) = 0xE800000000000000;
    goto LABEL_87;
  }

LABEL_77:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100009088(0, *(v2 + 2) + 1, 1, v2);
  }

  v41 = *(v2 + 2);
  v40 = *(v2 + 3);
  if (v41 >= v40 >> 1)
  {
    v2 = sub_100009088((v40 > 1), v41 + 1, 1, v2);
  }

  *(v2 + 2) = v41 + 1;
  v42 = &v2[16 * v41];
  *(v42 + 4) = 0x75706E4974786574;
  *(v42 + 5) = 0xE900000000000074;
  if ((a1 & 0x4000) != 0)
  {
    goto LABEL_82;
  }

LABEL_40:
  if (!*(v2 + 2))
  {

    return 1701736302;
  }

LABEL_87:
  sub_100035D04(&qword_1003397D0, &qword_1002729A0);
  sub_10000E244(&qword_10033D8A0, &qword_1003397D0, &qword_1002729A0, &protocol conformance descriptor for [A]);
  v46 = BidirectionalCollection<>.joined(separator:)();
  v48 = v47;

  v49._countAndFlagsBits = v46;
  v49._object = v48;
  String.append(_:)(v49);

  v50._countAndFlagsBits = 93;
  v50._object = 0xE100000000000000;
  String.append(_:)(v50);
  return 91;
}

uint64_t RPStatusFlags.description.getter(uint64_t a1)
{
  if ((a1 & 1) == 0)
  {
    v2 = _swiftEmptyArrayStorage;
    if ((a1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v2 = sub_100009088(0, 1, 1, _swiftEmptyArrayStorage);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_100009088((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  v5 = &v2[16 * v4];
  *(v5 + 4) = 0x657069507462;
  *(v5 + 5) = 0xE600000000000000;
  if ((a1 & 2) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100009088(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_100009088((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = 6646882;
    *(v8 + 5) = 0xE300000000000000;
  }

LABEL_12:
  if ((a1 & 4) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100009088(0, *(v2 + 2) + 1, 1, v2);
    }

    v10 = *(v2 + 2);
    v9 = *(v2 + 3);
    if (v10 >= v9 >> 1)
    {
      v2 = sub_100009088((v9 > 1), v10 + 1, 1, v2);
    }

    *(v2 + 2) = v10 + 1;
    v11 = &v2[16 * v10];
    *(v11 + 4) = 0x6172666E69;
    *(v11 + 5) = 0xE500000000000000;
    if ((a1 & 8) == 0)
    {
LABEL_14:
      if ((a1 & 0x10) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_27;
    }
  }

  else if ((a1 & 8) == 0)
  {
    goto LABEL_14;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100009088(0, *(v2 + 2) + 1, 1, v2);
  }

  v13 = *(v2 + 2);
  v12 = *(v2 + 3);
  if (v13 >= v12 >> 1)
  {
    v2 = sub_100009088((v12 > 1), v13 + 1, 1, v2);
  }

  *(v2 + 2) = v13 + 1;
  v14 = &v2[16 * v13];
  *(v14 + 4) = 1818523489;
  *(v14 + 5) = 0xE400000000000000;
  if ((a1 & 0x10) == 0)
  {
LABEL_15:
    if ((a1 & 0x20) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_32;
  }

LABEL_27:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100009088(0, *(v2 + 2) + 1, 1, v2);
  }

  v16 = *(v2 + 2);
  v15 = *(v2 + 3);
  if (v16 >= v15 >> 1)
  {
    v2 = sub_100009088((v15 > 1), v16 + 1, 1, v2);
  }

  *(v2 + 2) = v16 + 1;
  v17 = &v2[16 * v16];
  *(v17 + 4) = 7233902;
  *(v17 + 5) = 0xE300000000000000;
  if ((a1 & 0x20) != 0)
  {
LABEL_32:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100009088(0, *(v2 + 2) + 1, 1, v2);
    }

    v19 = *(v2 + 2);
    v18 = *(v2 + 3);
    if (v19 >= v18 >> 1)
    {
      v2 = sub_100009088((v18 > 1), v19 + 1, 1, v2);
    }

    *(v2 + 2) = v19 + 1;
    v20 = &v2[16 * v19];
    *(v20 + 4) = 0x7065656C7361;
    *(v20 + 5) = 0xE600000000000000;
  }

LABEL_37:
  if ((a1 & 0x40) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100009088(0, *(v2 + 2) + 1, 1, v2);
    }

    v23 = *(v2 + 2);
    v22 = *(v2 + 3);
    if (v23 >= v22 >> 1)
    {
      v2 = sub_100009088((v22 > 1), v23 + 1, 1, v2);
    }

    *(v2 + 2) = v23 + 1;
    v24 = &v2[16 * v23];
    *(v24 + 4) = 0x6F696E61706D6F63;
    *(v24 + 5) = 0xE90000000000006ELL;
    if ((a1 & 0x80) == 0)
    {
LABEL_39:
      if ((a1 & 0x100) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_71;
    }
  }

  else if ((a1 & 0x80) == 0)
  {
    goto LABEL_39;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100009088(0, *(v2 + 2) + 1, 1, v2);
  }

  v26 = *(v2 + 2);
  v25 = *(v2 + 3);
  if (v26 >= v25 >> 1)
  {
    v2 = sub_100009088((v25 > 1), v26 + 1, 1, v2);
  }

  *(v2 + 2) = v26 + 1;
  v27 = &v2[16 * v26];
  *(v27 + 4) = 0x6C616E6F73726570;
  *(v27 + 5) = 0xE800000000000000;
  if ((a1 & 0x100) == 0)
  {
LABEL_40:
    if ((a1 & 0x200) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_76;
  }

LABEL_71:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100009088(0, *(v2 + 2) + 1, 1, v2);
  }

  v29 = *(v2 + 2);
  v28 = *(v2 + 3);
  if (v29 >= v28 >> 1)
  {
    v2 = sub_100009088((v28 > 1), v29 + 1, 1, v2);
  }

  *(v2 + 2) = v29 + 1;
  v30 = &v2[16 * v29];
  *(v30 + 4) = 0x636E795374657564;
  *(v30 + 5) = 0xE800000000000000;
  if ((a1 & 0x200) == 0)
  {
LABEL_41:
    if ((a1 & 0x400) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_81;
  }

LABEL_76:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100009088(0, *(v2 + 2) + 1, 1, v2);
  }

  v32 = *(v2 + 2);
  v31 = *(v2 + 3);
  if (v32 >= v31 >> 1)
  {
    v2 = sub_100009088((v31 > 1), v32 + 1, 1, v2);
  }

  *(v2 + 2) = v32 + 1;
  v33 = &v2[16 * v32];
  *(v33 + 4) = 0x70325069666977;
  *(v33 + 5) = 0xE700000000000000;
  if ((a1 & 0x400) == 0)
  {
LABEL_42:
    if ((a1 & 0x800) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_86;
  }

LABEL_81:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100009088(0, *(v2 + 2) + 1, 1, v2);
  }

  v35 = *(v2 + 2);
  v34 = *(v2 + 3);
  if (v35 >= v34 >> 1)
  {
    v2 = sub_100009088((v34 > 1), v35 + 1, 1, v2);
  }

  *(v2 + 2) = v35 + 1;
  v36 = &v2[16 * v35];
  *(v36 + 4) = 0x696475416576696CLL;
  *(v36 + 5) = 0xE90000000000006FLL;
  if ((a1 & 0x800) == 0)
  {
LABEL_43:
    if ((a1 & 0x1000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_91;
  }

LABEL_86:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100009088(0, *(v2 + 2) + 1, 1, v2);
  }

  v38 = *(v2 + 2);
  v37 = *(v2 + 3);
  if (v38 >= v37 >> 1)
  {
    v2 = sub_100009088((v37 > 1), v38 + 1, 1, v2);
  }

  *(v2 + 2) = v38 + 1;
  v39 = &v2[16 * v38];
  *(v39 + 4) = 0x65746F6D6572;
  *(v39 + 5) = 0xE600000000000000;
  if ((a1 & 0x1000) == 0)
  {
LABEL_44:
    if ((a1 & 0x2000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_96;
  }

LABEL_91:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100009088(0, *(v2 + 2) + 1, 1, v2);
  }

  v41 = *(v2 + 2);
  v40 = *(v2 + 3);
  if (v41 >= v40 >> 1)
  {
    v2 = sub_100009088((v40 > 1), v41 + 1, 1, v2);
  }

  *(v2 + 2) = v41 + 1;
  v42 = &v2[16 * v41];
  *(v42 + 4) = 0x7473657567;
  *(v42 + 5) = 0xE500000000000000;
  if ((a1 & 0x2000) == 0)
  {
LABEL_45:
    if ((a1 & 0x4000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_101;
  }

LABEL_96:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100009088(0, *(v2 + 2) + 1, 1, v2);
  }

  v44 = *(v2 + 2);
  v43 = *(v2 + 3);
  if (v44 >= v43 >> 1)
  {
    v2 = sub_100009088((v43 > 1), v44 + 1, 1, v2);
  }

  *(v2 + 2) = v44 + 1;
  v45 = &v2[16 * v44];
  *(v45 + 4) = 1701670760;
  *(v45 + 5) = 0xE400000000000000;
  if ((a1 & 0x4000) == 0)
  {
LABEL_46:
    if ((a1 & 0x8000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_106;
  }

LABEL_101:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100009088(0, *(v2 + 2) + 1, 1, v2);
  }

  v47 = *(v2 + 2);
  v46 = *(v2 + 3);
  if (v47 >= v46 >> 1)
  {
    v2 = sub_100009088((v46 > 1), v47 + 1, 1, v2);
  }

  *(v2 + 2) = v47 + 1;
  v48 = &v2[16 * v47];
  *(v48 + 4) = 0x796C696D6166;
  *(v48 + 5) = 0xE600000000000000;
  if ((a1 & 0x8000) == 0)
  {
LABEL_47:
    if ((a1 & 0x10000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_111;
  }

LABEL_106:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100009088(0, *(v2 + 2) + 1, 1, v2);
  }

  v50 = *(v2 + 2);
  v49 = *(v2 + 3);
  if (v50 >= v49 >> 1)
  {
    v2 = sub_100009088((v49 > 1), v50 + 1, 1, v2);
  }

  *(v2 + 2) = v50 + 1;
  v51 = &v2[16 * v50];
  *(v51 + 4) = 0x646572696170;
  *(v51 + 5) = 0xE600000000000000;
  if ((a1 & 0x10000) == 0)
  {
LABEL_48:
    if ((a1 & 0x20000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_116;
  }

LABEL_111:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100009088(0, *(v2 + 2) + 1, 1, v2);
  }

  v53 = *(v2 + 2);
  v52 = *(v2 + 3);
  if (v53 >= v52 >> 1)
  {
    v2 = sub_100009088((v52 > 1), v53 + 1, 1, v2);
  }

  *(v2 + 2) = v53 + 1;
  v54 = &v2[16 * v53];
  *(v54 + 4) = 30324;
  *(v54 + 5) = 0xE200000000000000;
  if ((a1 & 0x20000) == 0)
  {
LABEL_49:
    if ((a1 & 0x40000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_121;
  }

LABEL_116:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100009088(0, *(v2 + 2) + 1, 1, v2);
  }

  v56 = *(v2 + 2);
  v55 = *(v2 + 3);
  if (v56 >= v55 >> 1)
  {
    v2 = sub_100009088((v55 > 1), v56 + 1, 1, v2);
  }

  *(v2 + 2) = v56 + 1;
  v57 = &v2[16 * v56];
  *(v57 + 4) = 0x646E65697266;
  *(v57 + 5) = 0xE600000000000000;
  if ((a1 & 0x40000) == 0)
  {
LABEL_50:
    if ((a1 & 0x80000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_126;
  }

LABEL_121:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100009088(0, *(v2 + 2) + 1, 1, v2);
  }

  v59 = *(v2 + 2);
  v58 = *(v2 + 3);
  if (v59 >= v58 >> 1)
  {
    v2 = sub_100009088((v58 > 1), v59 + 1, 1, v2);
  }

  *(v2 + 2) = v59 + 1;
  v60 = &v2[16 * v59];
  *(v60 + 4) = 0x6863756F74;
  *(v60 + 5) = 0xE500000000000000;
  if ((a1 & 0x80000) == 0)
  {
LABEL_51:
    if ((a1 & 0x100000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_131;
  }

LABEL_126:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100009088(0, *(v2 + 2) + 1, 1, v2);
  }

  v62 = *(v2 + 2);
  v61 = *(v2 + 3);
  if (v62 >= v61 >> 1)
  {
    v2 = sub_100009088((v61 > 1), v62 + 1, 1, v2);
  }

  *(v2 + 2) = v62 + 1;
  v63 = &v2[16 * v62];
  *(v63 + 4) = 0x72656E776FLL;
  *(v63 + 5) = 0xE500000000000000;
  if ((a1 & 0x100000) == 0)
  {
LABEL_52:
    if ((a1 & 0x200000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_136;
  }

LABEL_131:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100009088(0, *(v2 + 2) + 1, 1, v2);
  }

  v65 = *(v2 + 2);
  v64 = *(v2 + 3);
  if (v65 >= v64 >> 1)
  {
    v2 = sub_100009088((v64 > 1), v65 + 1, 1, v2);
  }

  *(v2 + 2) = v65 + 1;
  v66 = &v2[16 * v65];
  *(v66 + 4) = 0x64756F6C63;
  *(v66 + 5) = 0xE500000000000000;
  if ((a1 & 0x200000) == 0)
  {
LABEL_53:
    if ((a1 & 0x400000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_141;
  }

LABEL_136:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100009088(0, *(v2 + 2) + 1, 1, v2);
  }

  v68 = *(v2 + 2);
  v67 = *(v2 + 3);
  if (v68 >= v67 >> 1)
  {
    v2 = sub_100009088((v67 > 1), v68 + 1, 1, v2);
  }

  *(v2 + 2) = v68 + 1;
  v69 = &v2[16 * v68];
  *(v69 + 4) = 0x496E676953707061;
  *(v69 + 5) = 0xE90000000000006ELL;
  if ((a1 & 0x400000) == 0)
  {
LABEL_54:
    if ((a1 & 0x800000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_146;
  }

LABEL_141:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100009088(0, *(v2 + 2) + 1, 1, v2);
  }

  v71 = *(v2 + 2);
  v70 = *(v2 + 3);
  if (v71 >= v70 >> 1)
  {
    v2 = sub_100009088((v70 > 1), v71 + 1, 1, v2);
  }

  *(v2 + 2) = v71 + 1;
  v72 = &v2[16 * v71];
  *(v72 + 4) = 0x646E61486C6C6163;
  *(v72 + 5) = 0xEB0000000066666FLL;
  if ((a1 & 0x800000) == 0)
  {
LABEL_55:
    if ((a1 & 0x1000000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_151;
  }

LABEL_146:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100009088(0, *(v2 + 2) + 1, 1, v2);
  }

  v74 = *(v2 + 2);
  v73 = *(v2 + 3);
  if (v74 >= v73 >> 1)
  {
    v2 = sub_100009088((v73 > 1), v74 + 1, 1, v2);
  }

  *(v2 + 2) = v74 + 1;
  v75 = &v2[16 * v74];
  *(v75 + 4) = 0x796150656C707061;
  *(v75 + 5) = 0xE800000000000000;
  if ((a1 & 0x1000000) == 0)
  {
LABEL_56:
    if ((a1 & 0x2000000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_156;
  }

LABEL_151:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100009088(0, *(v2 + 2) + 1, 1, v2);
  }

  v77 = *(v2 + 2);
  v76 = *(v2 + 3);
  if (v77 >= v76 >> 1)
  {
    v2 = sub_100009088((v76 > 1), v77 + 1, 1, v2);
  }

  *(v2 + 2) = v77 + 1;
  v78 = &v2[16 * v77];
  *(v78 + 4) = 6452085;
  *(v78 + 5) = 0xE300000000000000;
  if ((a1 & 0x2000000) == 0)
  {
LABEL_57:
    if ((a1 & 0x4000000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_161;
  }

LABEL_156:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100009088(0, *(v2 + 2) + 1, 1, v2);
  }

  v80 = *(v2 + 2);
  v79 = *(v2 + 3);
  if (v80 >= v79 >> 1)
  {
    v2 = sub_100009088((v79 > 1), v80 + 1, 1, v2);
  }

  *(v2 + 2) = v80 + 1;
  v81 = &v2[16 * v80];
  strcpy(v81 + 32, "awdlDegraded");
  v81[45] = 0;
  *(v81 + 23) = -5120;
  if ((a1 & 0x4000000) == 0)
  {
LABEL_58:
    if ((a1 & 0x800000000) == 0)
    {
      goto LABEL_59;
    }

LABEL_166:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100009088(0, *(v2 + 2) + 1, 1, v2);
    }

    v86 = *(v2 + 2);
    v85 = *(v2 + 3);
    if (v86 >= v85 >> 1)
    {
      v2 = sub_100009088((v85 > 1), v86 + 1, 1, v2);
    }

    *(v2 + 2) = v86 + 1;
    v87 = &v2[16 * v86];
    strcpy(v87 + 32, "communalDevice");
    v87[47] = -18;
    goto LABEL_171;
  }

LABEL_161:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100009088(0, *(v2 + 2) + 1, 1, v2);
  }

  v83 = *(v2 + 2);
  v82 = *(v2 + 3);
  if (v83 >= v82 >> 1)
  {
    v2 = sub_100009088((v82 > 1), v83 + 1, 1, v2);
  }

  *(v2 + 2) = v83 + 1;
  v84 = &v2[16 * v83];
  *(v84 + 4) = 0x727465526C647761;
  *(v84 + 5) = 0xE90000000000006FLL;
  if ((a1 & 0x800000000) != 0)
  {
    goto LABEL_166;
  }

LABEL_59:
  if (!*(v2 + 2))
  {

    return 1701736302;
  }

LABEL_171:
  sub_100035D04(&qword_1003397D0, &qword_1002729A0);
  sub_10000E244(&qword_10033D8A0, &qword_1003397D0, &qword_1002729A0, &protocol conformance descriptor for [A]);
  v88 = BidirectionalCollection<>.joined(separator:)();
  v90 = v89;

  v91._countAndFlagsBits = v88;
  v91._object = v90;
  String.append(_:)(v91);

  v92._countAndFlagsBits = 93;
  v92._object = 0xE100000000000000;
  String.append(_:)(v92);
  return 91;
}

uint64_t sub_100191AB0(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = v3;
  if (!v3)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    return 0;
  }

  return result;
}

uint64_t sub_100191C14(uint64_t a1)
{
  if (qword_100339118 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_100349658);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v24 = v6;
    *v5 = 136315138;
    v7 = sub_1001EE1E4(v6);
    v9 = sub_100017494(v7, v8, &v24);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Creating connection to %s", v5, 0xCu);
    sub_10000903C(v6);
  }

  v11 = OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_pairedConnectionFuture;
  if (!*(a1 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_pairedConnectionFuture))
  {
    v15 = sub_100191AB0(a1, v10);
    if (!v15)
    {
      sub_100192FC0();
      result = swift_allocError();
      *v20 = 3;
      return result;
    }

    v16 = v15;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v17 = v24;
    if (v24)
    {
      v18 = 1028;
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v17 = v24;
      if (!v24)
      {
        v18 = 1028;
        goto LABEL_16;
      }

      v18 = 4228352;
    }

LABEL_16:
    v21 = [objc_allocWithZone(RPCompanionLinkClient) init];
    [v21 setDestinationDevice:v16];
    if (qword_1003391E8 != -1)
    {
      swift_once();
    }

    [v21 setDispatchQueue:qword_10038B5B8];
    [v21 setFlags:1];
    [v21 setControlFlags:v18];
    *(swift_allocObject() + 16) = v21;
    sub_100035D04(&qword_100342B90, &qword_100278AF8);
    swift_allocObject();
    v22 = v21;
    v23 = Future.init(_:)();

    *(a1 + v11) = v23;

    return 0;
  }

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Attempt to create two connections on one device was ignored", v14, 2u);
  }

  return 0;
}

double sub_1001920A8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, unint64_t a8, void (*a9)(void), uint64_t a10, uint64_t a11, uint64_t a12)
{
  v16 = a9;
  v17 = swift_allocObject();
  v17[2] = a7;
  v17[3] = a8;
  v17[4] = a9;
  v17[5] = a10;
  v17[6] = a11;
  v17[7] = a12;
  v18 = OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_pairedConnectionFuture;
  v19 = *(a3 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_pairedConnectionFuture);

  if (v19)
  {
    goto LABEL_2;
  }

  v31 = sub_100191C14(a3);
  if (v31)
  {
    sub_100123D18(0, v31, a7, a8, a9);
  }

  else
  {
    v19 = *(a3 + v18);
    if (v19)
    {
LABEL_2:
      v20 = qword_100339118;

      if (v20 != -1)
      {
        swift_once();
      }

      v49 = v19;
      v21 = type metadata accessor for Logger();
      sub_100003078(v21, qword_100349658);

      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        *v24 = 136315394;
        v25 = a1;
        v26 = sub_100017494(a1, a2, &v54);
        *(v24 + 4) = v26;
        *(v24 + 12) = 2080;
        v28 = sub_1000092A0(v26, v27);
        v30 = sub_100017494(v28, v29, &v54);

        *(v24 + 14) = v30;
        _os_log_impl(&_mh_execute_header, v22, v23, "Sending request %s to %s", v24, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        v25 = a1;
      }

      v54 = v49;
      v33 = swift_allocObject();
      v33[2] = v25;
      v33[3] = a2;
      v33[4] = a3;
      v33[5] = sub_100193068;
      v33[6] = v17;
      v34 = swift_allocObject();
      swift_weakInit();
      v35 = swift_allocObject();
      *(v35 + 16) = v34;
      *(v35 + 24) = v25;
      *(v35 + 32) = a2;
      *(v35 + 40) = a4;
      *(v35 + 48) = a5;
      *(v35 + 56) = sub_100193068;
      *(v35 + 64) = v17;
      *(v35 + 72) = a6 & 1;

      swift_bridgeObjectRetain_n();
      swift_retain_n();

      sub_100035D04(&qword_100342B90, &qword_100278AF8);
      sub_10000E244(&qword_100342B98, &qword_100342B90, &qword_100278AF8, &protocol conformance descriptor for Future<A, B>);
      v36 = Publisher.sink(receiveCompletion:receiveValue:)();

      *(a3 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_pairedConnectionTask) = v36;

      return result;
    }

    if (qword_100339118 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_100003078(v37, qword_100349658);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v38, v39, "Device has no paired connection?", v40, 2u);
    }

    sub_10001618C();
    v41 = swift_allocError();
    *v42 = 0xD000000000000014;
    *(v42 + 8) = 0x800000010029F0B0;
    *(v42 + 16) = 9;
    swift_errorRetain();
    if (qword_100339040 != -1)
    {
      swift_once();
    }

    sub_100003078(v37, qword_100345B38);

    swift_errorRetain();
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v54 = v47;
      *v45 = 136315394;
      *(v45 + 4) = sub_100017494(a7, a8, &v54);
      *(v45 + 12) = 2112;
      swift_errorRetain();
      v48 = _swift_stdlib_bridgeErrorToNSError();
      *(v45 + 14) = v48;
      *v46 = v48;
      _os_log_impl(&_mh_execute_header, v43, v44, "### %s RangingTokenRequest failed: %@", v45, 0x16u);
      sub_1000097E8(v46, &qword_100339940, &unk_100272C50);
      v16 = a9;

      sub_10000903C(v47);
    }

    swift_errorRetain();
    (v16)(v41, 0, 1);
  }

  return result;
}

uint64_t sub_10019278C(void *a1)
{
  v2 = sub_100035D04(&unk_100348F30, &unk_100272540);
  __chkstk_darwin(v2 - 8);
  v4 = &v24[-v3];
  v5 = [a1 statusFlags];
  v6 = [a1 statusFlags];
  if ((v5 & 4) != 0 && (v6 & 0x800000000) == 0)
  {
    if (qword_100339118 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100003078(v7, qword_100349658);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v8, v9))
    {
      goto LABEL_8;
    }

    v10 = swift_slowAlloc();
    *v10 = 0;
    v11 = "Ignoring non-communal device.";
LABEL_7:
    _os_log_impl(&_mh_execute_header, v8, v9, v11, v10, 2u);

LABEL_8:

    return 1;
  }

  if (qword_100338FB0 != -1)
  {
    swift_once();
  }

  CurrentValueSubject.value.getter();
  v13 = v25;
  if (v25 == 2)
  {
    CurrentValueSubject.value.getter();

    v14 = v29;
    v15 = v30;
    if (v28 == 1)
    {
      return 0;
    }
  }

  else
  {
    v14 = v26;
    v15 = v27;

    if (v13 == 1)
    {
      return 0;
    }
  }

  if (v15)
  {
    if (v14 == 0x466957656C707041 && v15 == 0xEF65727563655369)
    {
    }

    else
    {
      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v16 & 1) == 0)
      {
        return 0;
      }
    }

    v17 = [a1 homeKitIdentifier];
    if (v17)
    {
      v18 = v17;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v19 = type metadata accessor for UUID();
      (*(*(v19 - 8) + 56))(v4, 0, 1, v19);
      sub_1000097E8(v4, &unk_100348F30, &unk_100272540);
    }

    else
    {
      v20 = type metadata accessor for UUID();
      (*(*(v20 - 8) + 56))(v4, 1, 1, v20);
      sub_1000097E8(v4, &unk_100348F30, &unk_100272540);
      if (qword_100338F18 != -1)
      {
        swift_once();
      }

      v21 = *(qword_10038B0B8 + 256);
      v22 = sub_1000031CC();

      if ((v22 & 1) == 0)
      {
        if (qword_100339118 != -1)
        {
          swift_once();
        }

        v23 = type metadata accessor for Logger();
        sub_100003078(v23, qword_100349658);
        v8 = Logger.logObject.getter();
        v9 = static os_log_type_t.default.getter();
        if (!os_log_type_enabled(v8, v9))
        {
          goto LABEL_8;
        }

        v10 = swift_slowAlloc();
        *v10 = 0;
        v11 = "AppleWiFiSecure detected - Ignoring guest device.";
        goto LABEL_7;
      }
    }
  }

  else
  {
  }

  return 0;
}

void sub_100192BF0(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (qword_100339118 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100003078(v4, qword_100349658);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_100017494(a1, a2, &v9);
      _os_log_impl(&_mh_execute_header, v5, v6, "Observed key path changed. kp=%s", v7, 0xCu);
      sub_10000903C(v8);
    }

    if (a1 == 0xD000000000000012 && 0x80000001002A36C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 0x776F6C6C41703270 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      sub_10018FCC0();
    }
  }
}

uint64_t sub_100192E10()
{

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_100192EF8()
{
  result = qword_100349738;
  if (!qword_100349738)
  {
    sub_100035D4C(&qword_100349720, &unk_100283B28);
    sub_100076FC4(&qword_10033D610, &qword_10033D618, RPCompanionLinkDevice_ptr, &protocol conformance descriptor for NSObject);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349738);
  }

  return result;
}

unint64_t sub_100192FC0()
{
  result = qword_100349750;
  if (!qword_100349750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349750);
  }

  return result;
}

uint64_t sub_10019301C(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v5 = a1;
  v6 = a2 & 1;
  return v3(&v5);
}

uint64_t sub_1001930D8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 177))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_100193134(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 168) = 0;
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
    *(result + 176) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 177) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 177) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}