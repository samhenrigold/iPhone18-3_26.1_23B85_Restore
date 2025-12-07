uint64_t sub_10035EC38@<X0>(char a1@<W1>, uint64_t *a2@<X8>)
{
  sub_1000BC4D4(&qword_1016A61D0, &unk_1013A3540);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101385D80;
  *(inited + 56) = &type metadata for BAServiceIdentifier;
  *(inited + 64) = &off_10162CAF0;
  *(inited + 32) = a1;
  v5 = (inited + 32);
  v6 = sub_100A255C8(inited);
  swift_setDeallocating();
  result = sub_100007BAC(v5);
  *a2 = v6;
  return result;
}

uint64_t sub_10035ECDC@<X0>(char **a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1000BC4D4(&qword_1016995B0, &unk_101391A80);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - v6;
  v8 = sub_1000BC4D4(&unk_1016A6310, &unk_10139DC90);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - v10;
  v12 = *a1;
  v29[3] = &type metadata for BAServiceIdentifier;
  v29[4] = &off_10162CAF0;
  LOBYTE(v29[0]) = 2;
  v13 = OBJC_IVAR____TtC12searchpartyd10Peripheral_services;
  swift_beginAccess();
  v14 = *&v12[v13];
  v28 = v29;

  v15 = sub_1012BBDB4(sub_1001DB3F8, v27, v14);

  sub_100007BAC(v29);
  if (v15)
  {
    sub_1000BC4D4(&unk_1016A6320, &qword_1013B3CD0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_101385D80;
    *(v16 + 56) = &type metadata for BACharacteristicIdentifier.UnauthorizedAirTag;
    *(v16 + 64) = &off_10162CAA0;
    *(v16 + 32) = 0;
    v17 = swift_allocObject();
    *(v17 + 16) = v15;
    *(v17 + 24) = v16;
    sub_1000BC4D4(&unk_1016CDD30, &unk_101391A90);
    swift_allocObject();

    v29[0] = Future.init(_:)();
    sub_1000041A4(&qword_1016A6330, &unk_1016CDD30, &unk_101391A90, &protocol conformance descriptor for Future<A, B>);
    v18 = Publisher.eraseToAnyPublisher()();
  }

  else
  {
    if (qword_101694690 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_1000076D4(v20, qword_10177AC90);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v26 = v9;
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "No UT service", v23, 2u);
      v9 = v26;
    }

    v29[0] = v12;
    type metadata accessor for Peripheral(0);
    v24 = v12;
    Just.init(_:)();
    sub_100101B58();
    Just.setFailureType<A>(to:)();
    (*(v5 + 8))(v7, v4);
    sub_1000041A4(&qword_1016995B8, &unk_1016A6310, &unk_10139DC90, &protocol conformance descriptor for Result<A, B>.Publisher);
    v18 = Publisher.eraseToAnyPublisher()();
    result = (*(v9 + 8))(v11, v8);
  }

  *a2 = v18;
  return result;
}

unint64_t sub_10035F14C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v10 = sub_1000BC4D4(&qword_10169E890, &unk_1013BB590);
  __chkstk_darwin(v10);
  v12 = (&v79 - v11);
  v87 = type metadata accessor for UUID();
  v86 = *(v87 - 8);
  __chkstk_darwin(v87);
  v14 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for AccessoryMetadata(0);
  __chkstk_darwin(v15);
  v17 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D2A70(a1, &v95, &unk_1016A6150, &unk_10139DB30);
  v90 = a3;
  if (v97)
  {
    v93 = v95;
    *v94 = *v96;
    *&v94[9] = *&v96[9];
    if (qword_101694690 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_1000076D4(v18, qword_10177AC90);
    sub_100101AA8(&v93, v92);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v89 = a4;
      v23 = v22;
      v91[0] = v22;
      *v21 = 136446210;
      v24 = sub_1013181BC();
      v26 = v25;
      sub_100101B04(v92);
      v27 = sub_1000136BC(v24, v26, v91);

      *(v21 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v19, v20, "readMetadata failed due to %{public}s", v21, 0xCu);
      sub_100007BAC(v23);
      a4 = v89;
    }

    else
    {

      sub_100101B04(v92);
    }

    v46 = v90;
    sub_100101B58();
    v48 = swift_allocError();
    sub_100101AA8(&v93, v49);
    *v12 = v48;
    type metadata accessor for BluetoothCommunicationCoordinator.Error(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    a4(v12);
    sub_10000B3A8(v12, &qword_10169E890, &unk_1013BB590);
    sub_100101B04(&v93);
    return sub_10035FC9C(v46);
  }

  v85 = v12;
  v28 = a2;
  v84 = a5;
  v89 = a4;
  v29 = v95;
  *&v94[8] = &type metadata for BAServiceIdentifier;
  *&v94[16] = &off_10162CAF0;
  LOBYTE(v93) = 2;
  v30 = OBJC_IVAR____TtC12searchpartyd10Peripheral_services;
  v31 = swift_beginAccess();
  v88 = v29;
  v32 = *&v29[v30];
  __chkstk_darwin(v31);
  *(&v79 - 2) = &v93;

  v33 = sub_1012BBDB4(sub_1001DB280, (&v79 - 4), v32);

  sub_100007BAC(&v93);
  if (!v33)
  {
    if (qword_101694690 != -1)
    {
      swift_once();
    }

    v50 = type metadata accessor for Logger();
    sub_1000076D4(v50, qword_10177AC90);
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();
    v53 = os_log_type_enabled(v51, v52);
    v46 = v90;
    v54 = v89;
    v55 = v88;
    if (v53)
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&_mh_execute_header, v51, v52, "No UT service", v56, 2u);
    }

    type metadata accessor for BluetoothCommunicationCoordinator.Error(0);
    v57 = v85;
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v54(v57);

    sub_10000B3A8(v57, &qword_10169E890, &unk_1013BB590);
    return sub_10035FC9C(v46);
  }

  v82 = v10;
  v83 = v28;
  *&v94[8] = &type metadata for BACharacteristicIdentifier.UnauthorizedAirTag;
  *&v94[16] = &off_10162CAA0;
  LOBYTE(v93) = 0;
  v34 = swift_beginAccess();
  v35 = *(v33 + 40);
  __chkstk_darwin(v34);
  *(&v79 - 2) = &v93;

  v36 = sub_1012BBE10(sub_1001DB2A0, (&v79 - 4), v35);

  sub_100007BAC(&v93);
  if (!v36)
  {
    v46 = v90;
    v40 = v85;
    if (qword_101694690 != -1)
    {
      swift_once();
    }

    v58 = type metadata accessor for Logger();
    sub_1000076D4(v58, qword_10177AC90);
    v42 = Logger.logObject.getter();
    v59 = static os_log_type_t.error.getter();
    v60 = os_log_type_enabled(v42, v59);
    v45 = v89;
    if (v60)
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&_mh_execute_header, v42, v59, "Missing UT Ranging Characteristic!", v61, 2u);
    }

    goto LABEL_25;
  }

  v37 = sub_100314604(76, 21760);
  v39 = v90;
  v40 = v85;
  if (v38 >> 60 == 15)
  {
    if (qword_101694690 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    sub_1000076D4(v41, qword_10177AC90);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();
    v44 = os_log_type_enabled(v42, v43);
    v45 = v89;
    v46 = v39;
    if (v44)
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&_mh_execute_header, v42, v43, "Invalid AirTag productData", v47, 2u);
    }

LABEL_25:

    type metadata accessor for BluetoothCommunicationCoordinator.Error(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v45(v40);

    sub_10000B3A8(v40, &qword_10169E890, &unk_1013BB590);
    return sub_10035FC9C(v46);
  }

  v62 = v38;
  v81 = v37;
  v63 = [*&v88[OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject] identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  result = sub_10098E9DC(0x302E302E31, 0xE500000000000000);
  if ((result & 0x100000000) == 0)
  {
    v65 = result;
    v66 = result >> 16;
    v80 = result >> 24;
    v67 = v15[9];
    v68 = type metadata accessor for AirTagVersionNumber();
    (*(*(v68 - 8) + 56))(&v17[v67], 1, 1, v68);
    v69 = &v17[v15[11]];
    *v69 = 0;
    *(v69 + 1) = 0;
    v69[16] = 1;
    v70 = &v17[v15[16]];
    *v70 = 0;
    *(v70 + 1) = 0xE000000000000000;
    (*(v86 + 32))(v17, v14, v87);
    v71 = &v17[v15[5]];
    *v71 = v81;
    *(v71 + 1) = v62;
    v72 = &v17[v15[8]];
    *v72 = v65;
    v72[2] = v66;
    v72[3] = v80;
    v73 = &v17[v15[7]];
    *v73 = 0;
    *(v73 + 1) = 0;
    v74 = &v17[v15[6]];
    *v74 = 0;
    *(v74 + 1) = 0;
    v75 = &v17[v15[10]];
    *v75 = 0;
    v75[4] = 1;
    v76 = &v17[v15[12]];
    *v76 = 0;
    v76[8] = 1;
    v77 = &v17[v15[13]];
    *v77 = 257;
    v77[4] = 0;
    v17[v15[14]] = 4;
    v17[v15[15]] = 5;
    v78 = &v17[v15[17]];
    *v78 = 0;
    v78[4] = 1;
    sub_10038B278(v17, v40, type metadata accessor for AccessoryMetadata);
    swift_storeEnumTagMultiPayload();
    v89(v40);

    sub_10000B3A8(v40, &qword_10169E890, &unk_1013BB590);
    sub_10038B428(v17, type metadata accessor for AccessoryMetadata);
    v46 = v90;
    return sub_10035FC9C(v46);
  }

  __break(1u);
  return result;
}

uint64_t sub_10035FC9C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for MACAddress();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v33 - v9;
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v2 + 32);
  *v14 = v15;
  (*(v12 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v11);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  (*(v12 + 8))(v14, v11);
  if (v15)
  {
    if (qword_101694690 == -1)
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
  v17 = type metadata accessor for Logger();
  sub_1000076D4(v17, qword_10177AC90);
  v18 = a1;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v34 = v5;
    v22 = v4;
    v23 = v21;
    v24 = swift_slowAlloc();
    v33 = v8;
    v25 = v24;
    v36[0] = v24;
    *v23 = 141558275;
    *(v23 + 4) = 1752392040;
    *(v23 + 12) = 2081;
    sub_100A22DF0(v10);
    sub_10038B3E0(&qword_1016A4210, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    (*(v34 + 8))(v10, v22);
    v29 = sub_1000136BC(v26, v28, v36);

    *(v23 + 14) = v29;
    _os_log_impl(&_mh_execute_header, v19, v20, "Cleaning up for %{private,mask.hash}s", v23, 0x16u);
    sub_100007BAC(v25);
    v8 = v33;

    v4 = v22;
    v5 = v34;
  }

  sub_100A22DF0(v8);
  swift_beginAccess();
  if (!*(*(v2 + 48) + 16))
  {
    goto LABEL_9;
  }

  sub_1007723C0(v8);
  if ((v30 & 1) == 0)
  {

LABEL_9:
    (*(v5 + 8))(v8, v4);
    goto LABEL_10;
  }

  v31 = *(v5 + 8);

  v31(v8, v4);

  v35 = 1;
  PassthroughSubject.send(completion:)();

LABEL_10:
  sub_100A22DF0(v10);
  swift_beginAccess();
  sub_1001DE440(0, v10);
  swift_endAccess();
  sub_10131FAE0(v18);
}

uint64_t sub_10036011C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v3;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = v3[4];
  *v10 = v11;
  (*(v8 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v7);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  result = (*(v8 + 8))(v10, v7);
  if (v11)
  {
    v14 = type metadata accessor for Transaction();
    __chkstk_darwin(v14);
    *&v15[-32] = v3;
    *&v15[-24] = a2;
    *&v15[-16] = a1;
    *&v15[-8] = v6;
    return static Transaction.named<A>(_:with:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1003602DC(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v42 = a3;
  v8 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  __chkstk_darwin(v8 - 8);
  v10 = v37 - v9;
  v11 = sub_1000BC4D4(&qword_10169E800, &qword_10139DC08);
  v43 = *(v11 - 8);
  v44 = v11;
  __chkstk_darwin(v11);
  v13 = v37 - v12;
  v14 = sub_1000BC4D4(&qword_10169E808, &qword_10139DC10);
  v45 = *(v14 - 8);
  v46 = v14;
  __chkstk_darwin(v14);
  v16 = v37 - v15;
  v17 = sub_1000BC4D4(&qword_10169E810, &qword_10139DC18);
  v48 = *(v17 - 8);
  v49 = v17;
  __chkstk_darwin(v17);
  v47 = v37 - v18;
  v19 = sub_1000BC4D4(&qword_10169E818, &unk_10139DC20);
  v51 = *(v19 - 8);
  __chkstk_darwin(v19);
  v50 = v37 - v20;
  sub_10038BF14();
  BinaryDecodable.init(data:)();
  if (v4)
  {
  }

  v41 = 0;
  v40 = Transaction.subscriptionCleaner.getter();
  v52[0] = 4;
  v52[1] = 0;
  v52[2] = 0;
  v52[3] = 0x2000000000000000;
  v53 = 1;
  v54 = 0;
  v22 = sub_100361E84(v52, v42, a4);
  v37[1] = v22;
  sub_10000B3A8(v52, &qword_10169E770, &qword_10139DB98);
  v52[0] = v22;
  v55 = a2[4];
  v23 = v55;
  v24 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v24 - 8) + 56))(v10, 1, 1, v24);
  v37[0] = v23;
  v42 = v19;
  sub_1000BC4D4(&qword_10169E778, &unk_10139DBA0);
  v39 = a1;
  v37[2] = a2;
  sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  v38 = a4;
  sub_1000041A4(&qword_10169E7C8, &qword_10169E778, &unk_10139DBA0, &protocol conformance descriptor for Future<A, B>);
  sub_100009D18(&qword_1016AF9C0, &qword_101695570, OS_dispatch_queue_ptr, &protocol conformance descriptor for OS_dispatch_queue);
  Publisher.receive<A>(on:options:)();
  sub_10000B3A8(v10, &unk_1016B0FE0, &unk_101391980);

  sub_1000041A4(&qword_10169E820, &qword_10169E800, &qword_10139DC08, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v25 = v44;
  Publisher.timeout(_:queue:customError:)();
  (*(v43 + 8))(v13, v25);
  sub_1000BC4D4(&qword_10169E770, &qword_10139DB98);
  sub_1000041A4(&qword_10169E828, &qword_10169E808, &qword_10139DC10, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v26 = v46;
  v27 = v47;
  Publisher.map<A>(_:)();
  (*(v45 + 8))(v16, v26);
  sub_1000BC4D4(&qword_10169E7E0, &qword_10139DC00);
  sub_1000041A4(&qword_10169E830, &qword_10169E810, &qword_10139DC18, &protocol conformance descriptor for Publishers.Map<A, B>);
  sub_1000041A4(&qword_10169E7F0, &qword_10169E7E0, &qword_10139DC00, &protocol conformance descriptor for Just<A>);
  v28 = v49;
  v29 = v50;
  Publisher.catch<A>(_:)();
  (*(v48 + 8))(v27, v28);
  v30 = swift_allocObject();
  swift_weakInit();
  v31 = swift_allocObject();
  v32 = v38;
  v33 = v39;
  v31[2] = v30;
  v31[3] = v33;
  v34 = v40;
  v31[4] = v32;
  v31[5] = v34;
  sub_1000041A4(&qword_10169E838, &qword_10169E818, &unk_10139DC20, &protocol conformance descriptor for Publishers.Catch<A, B>);

  v35 = v32;
  swift_unknownObjectRetain();
  v36 = v42;
  Publisher<>.sink(receiveValue:)();

  (*(v51 + 8))(v29, v36);
  AnyCancellable.store(in:)();
  swift_unknownObjectRelease();
}

uint64_t sub_100360A58(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    Transaction.capture()();
    if (qword_101694690 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000076D4(v7, qword_10177AC90);
    sub_1000D2A70(a1, v20, &qword_10169E770, &qword_10139DB98);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v19 = v11;
      *v10 = 136315138;
      sub_1000D2A70(v20, &v18, &qword_10169E770, &qword_10139DB98);
      sub_1000BC4D4(&qword_10169E770, &qword_10139DB98);
      v12 = String.init<A>(describing:)();
      v13 = a1;
      v14 = a4;
      v16 = v15;
      sub_10000B3A8(v20, &qword_10169E770, &qword_10139DB98);
      v17 = sub_1000136BC(v12, v16, &v19);
      a4 = v14;
      a1 = v13;

      *(v10 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v8, v9, "getProductData result: %s", v10, 0xCu);
      sub_100007BAC(v11);
    }

    else
    {

      sub_10000B3A8(v20, &qword_10169E770, &qword_10139DB98);
    }

    sub_1000D2A70(a1, v20, &qword_10169E770, &qword_10139DB98);
    if (v20[41])
    {
      sub_10000B3A8(v20, &qword_10169E770, &qword_10139DB98);
      sub_10035FC9C(a4);
    }

    else
    {

      return sub_10000B3A8(v20, &qword_10169E770, &qword_10139DB98);
    }
  }

  return result;
}

uint64_t sub_100360CFC(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = v2[4];
  *v9 = v10;
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  result = (*(v7 + 8))(v9, v6);
  if (v10)
  {
    v13 = type metadata accessor for Transaction();
    __chkstk_darwin(v13);
    *&v14[-32] = a2;
    *&v14[-24] = v2;
    *&v14[-16] = a1;
    *&v14[-8] = v5;
    return static Transaction.named<A>(_:with:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100360EB8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v64 = a4;
  v85 = a3;
  v7 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  __chkstk_darwin(v7 - 8);
  v9 = &v56 - v8;
  v10 = sub_1000BC4D4(&qword_101699450, &unk_10139DBC0);
  v66 = *(v10 - 8);
  v67 = v10;
  __chkstk_darwin(v10);
  v65 = &v56 - v11;
  v12 = sub_1000BC4D4(&qword_101699458, &qword_1013919C0);
  v68 = *(v12 - 8);
  v69 = v12;
  __chkstk_darwin(v12);
  v14 = &v56 - v13;
  v74 = sub_1000BC4D4(&qword_10169E798, &qword_10139DBD0);
  v72 = *(v74 - 8);
  __chkstk_darwin(v74);
  v70 = &v56 - v15;
  v77 = sub_1000BC4D4(&qword_10169E7A0, &qword_10139DBD8);
  v75 = *(v77 - 8);
  __chkstk_darwin(v77);
  v71 = &v56 - v16;
  v78 = sub_1000BC4D4(&qword_10169E7A8, &qword_10139DBE0);
  v76 = *(v78 - 8);
  __chkstk_darwin(v78);
  v73 = &v56 - v17;
  v18 = sub_1000BC4D4(&qword_10169E7B0, &qword_10139DBE8);
  v81 = *(v18 - 8);
  v82 = v18;
  __chkstk_darwin(v18);
  v80 = &v56 - v19;
  v20 = sub_1000BC4D4(&qword_10169E7B8, &unk_10139DBF0);
  v84 = *(v20 - 8);
  __chkstk_darwin(v20);
  v83 = &v56 - v21;
  v22 = Transaction.subscriptionCleaner.getter();
  sub_1000BC4D4(&qword_101699490, &unk_1013B3BC0);
  v79 = a2;
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  if (v4)
  {
  }

  else
  {
    v62 = v20;
    v86 = *(v85 + 32);
    v24 = v86;
    v63 = 0;
    v25 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    (*(*(v25 - 8) + 56))(v9, 1, 1, v25);
    v57 = v14;
    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    v61 = a1;
    sub_1000041A4(&qword_101699498, &qword_101699490, &unk_1013B3BC0, &protocol conformance descriptor for AnyPublisher<A, B>);
    v60 = v22;
    sub_100009D18(&qword_1016AF9C0, &qword_101695570, OS_dispatch_queue_ptr, &protocol conformance descriptor for OS_dispatch_queue);
    v26 = v24;
    v59 = v26;
    v27 = v65;
    Publisher.receive<A>(on:options:)();
    sub_10000B3A8(v9, &unk_1016B0FE0, &unk_101391980);

    v28 = swift_allocObject();
    v29 = v64;
    *(v28 + 16) = v85;
    *(v28 + 24) = v29;

    v30 = v29;
    static Subscribers.Demand.unlimited.getter();
    sub_1000BC4D4(&qword_1016972F8, &unk_1013D4DE0);
    sub_1000BC4D4(&qword_101699378, &unk_1013B60B0);
    v64 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
    sub_1000041A4(&qword_1016994A0, &qword_101699450, &unk_10139DBC0, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
    v58 = &protocol conformance descriptor for Future<A, B>;
    sub_1000041A4(&qword_1016994A8, &qword_101699378, &unk_1013B60B0, &protocol conformance descriptor for Future<A, B>);
    v31 = v57;
    v32 = v67;
    Publisher.flatMap<A, B>(maxPublishers:_:)();

    (*(v66 + 8))(v27, v32);
    v33 = swift_allocObject();
    v34 = v85;
    *(v33 + 16) = v85;
    *(v33 + 24) = v30;
    v35 = v34;

    v36 = v30;
    v67 = sub_1000BC4D4(&qword_10169E770, &qword_10139DB98);
    sub_1000041A4(&qword_1016994B0, &qword_101699458, &qword_1013919C0, &protocol conformance descriptor for Publishers.FlatMap<A, B>);
    v37 = v69;
    v38 = v70;
    Publisher.map<A>(_:)();

    (*(v68 + 8))(v31, v37);
    v39 = swift_allocObject();
    v40 = v79;
    v39[2] = v35;
    v39[3] = v40;
    v39[4] = v36;

    v69 = v36;

    static Subscribers.Demand.unlimited.getter();
    sub_1000BC4D4(&qword_10169E778, &unk_10139DBA0);
    sub_1000041A4(&qword_10169E7C0, &qword_10169E798, &qword_10139DBD0, &protocol conformance descriptor for Publishers.Map<A, B>);
    sub_1000041A4(&qword_10169E7C8, &qword_10169E778, &unk_10139DBA0, v58);
    v41 = v71;
    v42 = v74;
    Publisher.flatMap<A, B>(maxPublishers:_:)();

    (*(v72 + 8))(v38, v42);
    sub_1000041A4(&qword_10169E7D0, &qword_10169E7A0, &qword_10139DBD8, &protocol conformance descriptor for Publishers.FlatMap<A, B>);
    v43 = v73;
    v44 = v77;
    Publisher.timeout(_:queue:customError:)();
    (*(v75 + 8))(v41, v44);
    sub_1000041A4(&qword_10169E7D8, &qword_10169E7A8, &qword_10139DBE0, v64);
    v45 = v80;
    v46 = v78;
    Publisher.map<A>(_:)();
    (*(v76 + 8))(v43, v46);
    sub_1000BC4D4(&qword_10169E7E0, &qword_10139DC00);
    sub_1000041A4(&qword_10169E7E8, &qword_10169E7B0, &qword_10139DBE8, &protocol conformance descriptor for Publishers.Map<A, B>);
    sub_1000041A4(&qword_10169E7F0, &qword_10169E7E0, &qword_10139DC00, &protocol conformance descriptor for Just<A>);
    v47 = v82;
    v48 = v83;
    Publisher.catch<A>(_:)();
    (*(v81 + 8))(v45, v47);
    v49 = swift_allocObject();
    swift_weakInit();
    v50 = swift_allocObject();
    v51 = v61;
    v50[2] = v49;
    v50[3] = v51;
    v52 = v69;
    v53 = v60;
    v50[4] = v69;
    v50[5] = v53;
    sub_1000041A4(&qword_10169E7F8, &qword_10169E7B8, &unk_10139DBF0, &protocol conformance descriptor for Publishers.Catch<A, B>);
    v54 = v52;

    swift_unknownObjectRetain();
    v55 = v62;
    Publisher<>.sink(receiveValue:)();

    (*(v84 + 8))(v48, v55);
    AnyCancellable.store(in:)();
  }

  return swift_unknownObjectRelease();
}

double sub_100361AEC@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  *(a2 + 41) = 0;
  return sub_10038BE2C(v3, v2, v4, v5, v6);
}

uint64_t sub_100361B10(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_100101AA8(a1, v6);
  v6[41] = 1;
  sub_1000BC4D4(a2, a3);
  return Just.init(_:)();
}

uint64_t sub_100361B74(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    Transaction.capture()();
    if (qword_101694690 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000076D4(v7, qword_10177AC90);
    sub_1000D2A70(a1, v23, &qword_10169E770, &qword_10139DB98);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v22 = v11;
      *v10 = 136315138;
      sub_1000D2A70(v23, v21, &qword_10169E770, &qword_10139DB98);
      sub_1000BC4D4(&qword_10169E770, &qword_10139DB98);
      v12 = a4;
      v13 = String.init<A>(describing:)();
      v14 = a1;
      v16 = v15;
      sub_10000B3A8(v23, &qword_10169E770, &qword_10139DB98);
      v17 = sub_1000136BC(v13, v16, &v22);
      a1 = v14;

      *(v10 + 4) = v17;
      a4 = v12;
      _os_log_impl(&_mh_execute_header, v8, v9, "didNotify result: %s", v10, 0xCu);
      sub_100007BAC(v11);
    }

    else
    {

      sub_10000B3A8(v23, &qword_10169E770, &qword_10139DB98);
    }

    sub_1000D2A70(a1, v23, &qword_10169E770, &qword_10139DB98);
    if (v23[41])
    {
      sub_10035FC9C(a4);

      return sub_10000B3A8(v23, &qword_10169E770, &qword_10139DB98);
    }

    else
    {
      sub_10000B3A8(v23, &qword_10169E770, &qword_10139DB98);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&_mh_execute_header, v18, v19, "handleNotify success!", v20, 2u);
      }
    }
  }

  return result;
}

uint64_t sub_100361E84(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v25[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *(v3 + 32);
  *v10 = v11;
  (*(v8 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v7);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v10, v7);
  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_10:
    swift_once();
    goto LABEL_5;
  }

  sub_1000D2A70(a1, &v31, &qword_10169E770, &qword_10139DB98);
  if (v33)
  {
    v29 = v31;
    *v30 = *v32;
    *&v30[9] = *&v32[9];
    sub_100101AA8(&v29, &v27);
    v13 = swift_allocObject();
    v14 = *v28;
    v13[1] = v27;
    v13[2] = v14;
    *(v13 + 41) = *&v28[9];
    sub_1000BC4D4(&qword_10169E778, &unk_10139DBA0);
    swift_allocObject();
    v15 = Future.init(_:)();
    sub_100101B04(&v29);
    return v15;
  }

  v29 = v31;
  *v30 = *v32;
  v30[16] = v32[16];
  if (qword_101694690 != -1)
  {
    goto LABEL_10;
  }

LABEL_5:
  v16 = type metadata accessor for Logger();
  sub_1000076D4(v16, qword_10177AC90);
  sub_10038BC18(&v29, &v27);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();
  sub_10038BF70(&v29);
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v26 = v20;
    *v19 = 136315138;
    v27 = v29;
    *v28 = *v30;
    v28[16] = v30[16];
    sub_10038BC18(&v29, v25);
    v21 = String.init<A>(describing:)();
    v23 = sub_1000136BC(v21, v22, &v26);

    *(v19 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v17, v18, "Sending: %s", v19, 0xCu);
    sub_100007BAC(v20);
  }

  v15 = sub_100364B60(&v29, a2, a3);
  sub_10038BF70(&v29);
  return v15;
}

uint64_t sub_1003621E0(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  sub_100101B58();
  v5 = swift_allocError();
  sub_100101AA8(a3, v6);
  v8[0] = v5;
  v9 = 256;
  a1(v8);
  return sub_10000B3A8(v8, &qword_10169E770, &qword_10139DB98);
}

void sub_100362270(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v163 = a1;
  v164 = a3;
  v162 = type metadata accessor for AccessoryMetadataManager.MetadataInfo(0);
  __chkstk_darwin(v162);
  v158 = &v152 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&qword_1016A62A0, &unk_101396E10);
  __chkstk_darwin(v7 - 8);
  v159 = &v152 - v8;
  v157 = type metadata accessor for AccessoryMetadata(0);
  v156 = *(v157 - 8);
  v9 = __chkstk_darwin(v157);
  v160 = &v152 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v161 = &v152 - v11;
  v12 = type metadata accessor for MACAddress();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v152 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v152 - v17;
  v19 = type metadata accessor for DispatchPredicate();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = (&v152 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = *(v4 + 32);
  *v22 = v23;
  (*(v20 + 104))(v22, enum case for DispatchPredicate.onQueue(_:), v19);
  v24 = v23;
  v25 = _dispatchPreconditionTest(_:)();
  (*(v20 + 8))(v22, v19);
  if ((v25 & 1) == 0)
  {
    __break(1u);
    goto LABEL_62;
  }

  sub_100A22DF0(v18);
  swift_beginAccess();
  v26 = *(v4 + 48);
  if (!*(v26 + 16))
  {
LABEL_17:
    v25 = *(v13 + 8);
    (v25)(v18, v12);
    if (qword_101694690 == -1)
    {
LABEL_18:
      v51 = type metadata accessor for Logger();
      sub_1000076D4(v51, qword_10177AC90);
      v52 = a2;
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v53, v54))
      {
        v55 = v25;
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v169 = v57;
        *v56 = 141558275;
        *(v56 + 4) = 1752392040;
        *(v56 + 12) = 2081;
        sub_100A22DF0(v16);
        sub_10038B3E0(&qword_1016A4210, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
        v58 = dispatch thunk of CustomStringConvertible.description.getter();
        v60 = v59;
        v55(v16, v12);
        v61 = sub_1000136BC(v58, v60, &v169);

        *(v56 + 14) = v61;
        _os_log_impl(&_mh_execute_header, v53, v54, "Missing coordinator for %{private,mask.hash}s", v56, 0x16u);
        sub_100007BAC(v57);
      }

      v62 = 8;
      v49 = v164;
      goto LABEL_21;
    }

LABEL_62:
    swift_once();
    goto LABEL_18;
  }

  v27 = sub_1007723C0(v18);
  if ((v28 & 1) == 0)
  {

    goto LABEL_17;
  }

  v29 = *(*(v26 + 56) + 8 * v27);
  v30 = *(v13 + 8);

  v30(v18, v12);

  v31 = v163;
  sub_1001011C0(v163, &v169);
  sub_1000BC4D4(&qword_1016972F8, &unk_1013D4DE0);
  if (swift_dynamicCast())
  {
    v32 = v165[0];
    v33 = v165[1];
    v34 = v165[2];
    v35 = v166;
    LODWORD(v36) = v167;
    if (v167)
    {
      v37 = 4;
    }

    else
    {
      v37 = 0;
    }

    v38 = (v166 >> 60) & 3 | v37;
    if (v38 > 3)
    {
      if (v38 == 4)
      {
        if (qword_101694690 != -1)
        {
          swift_once();
        }

        v123 = type metadata accessor for Logger();
        sub_1000076D4(v123, qword_10177AC90);
        v124 = Logger.logObject.getter();
        v125 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v124, v125))
        {
          v126 = swift_slowAlloc();
          v127 = swift_slowAlloc();
          v169 = v127;
          *v126 = 136315138;
          v128 = sub_1010D840C(v32);
          v130 = sub_1000136BC(v128, v129, &v169);

          *(v126 + 4) = v130;
          _os_log_impl(&_mh_execute_header, v124, v125, "Received capabilities %s", v126, 0xCu);
          sub_100007BAC(v127);
        }

        v49 = v164;
        *(v29 + OBJC_IVAR____TtCC12searchpartyd24AccessoryMetadataManagerP33_9E4B9D7C2AC40BB201ED52E047F00DA919MetadataCoordinator_info + v162[8]) = v32;
        sub_10038BF14();
        BinaryDecodable.init(data:)();

        v149 = 0;
        v150 = 7;
        goto LABEL_57;
      }

      if (v38 == 5)
      {
        v72 = v165[0] >> 16;
        v73 = v165[0] >> 24;
        if (qword_101694690 != -1)
        {
          swift_once();
        }

        v163 = v29;
        v74 = type metadata accessor for Logger();
        sub_1000076D4(v74, qword_10177AC90);
        v75 = Logger.logObject.getter();
        v76 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v75, v76))
        {
          v77 = swift_slowAlloc();
          v152 = swift_slowAlloc();
          v165[0] = v152;
          *v77 = 136315138;
          v154 = v73 << 24;
          v155 = v72 << 16;
          v153 = v32;
          v78 = (v73 << 24) | v155 | v32;
          v79 = sub_10098E010();
          v81 = v80;
          v169 = 0x756C615677617220;
          v170 = 0xEA00000000002065;
          v82 = sub_10098E0F0(v78);
          v84 = v83;
          v85 = Data.hexString.getter();
          v87 = v86;
          sub_100016590(v82, v84);
          v88._countAndFlagsBits = v85;
          v88._object = v87;
          String.append(_:)(v88);

          v89 = v169;
          v90 = v170;
          v169 = v79;
          v170 = v81;

          v91._countAndFlagsBits = v89;
          v91._object = v90;
          String.append(_:)(v91);

          v92 = sub_1000136BC(v169, v170, v165);

          *(v77 + 4) = v92;
          _os_log_impl(&_mh_execute_header, v75, v76, "Received firmwareVersion %s", v77, 0xCu);
          sub_100007BAC(v152);

          v93 = v153;
          v94 = v155;
          v95 = v154;
        }

        else
        {

          v93 = v32;
          v94 = v72 << 16;
          v95 = v73 << 24;
        }

        v131 = v160;
        v132 = v159;
        v133 = v158;
        v134 = v157;
        v135 = v156;
        v136 = v93 | v94 | v95;
        v137 = v163 + OBJC_IVAR____TtCC12searchpartyd24AccessoryMetadataManagerP33_9E4B9D7C2AC40BB201ED52E047F00DA919MetadataCoordinator_info;
        v138 = v163 + OBJC_IVAR____TtCC12searchpartyd24AccessoryMetadataManagerP33_9E4B9D7C2AC40BB201ED52E047F00DA919MetadataCoordinator_info + v162[7];
        *v138 = v136;
        *(v138 + 4) = 0;
        sub_10038B278(v137, v133, type metadata accessor for AccessoryMetadataManager.MetadataInfo);
        sub_1003635A8(v133, v132);
        if ((*(v135 + 48))(v132, 1, v134) == 1)
        {

          sub_10000B3A8(v132, &qword_1016A62A0, &unk_101396E10);
          v49 = v164;
        }

        else
        {
          v139 = v132;
          v140 = v161;
          sub_10038BEAC(v139, v161, type metadata accessor for AccessoryMetadata);
          sub_10038B278(v140, v131, type metadata accessor for AccessoryMetadata);
          v141 = Logger.logObject.getter();
          v142 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v141, v142))
          {
            v143 = swift_slowAlloc();
            v144 = swift_slowAlloc();
            v169 = v144;
            *v143 = 136315138;
            v145 = sub_100230E34();
            v147 = v146;
            sub_10038B428(v131, type metadata accessor for AccessoryMetadata);
            v148 = sub_1000136BC(v145, v147, &v169);

            *(v143 + 4) = v148;
            _os_log_impl(&_mh_execute_header, v141, v142, "AccessoryMetadata %s", v143, 0xCu);
            sub_100007BAC(v144);
          }

          else
          {

            sub_10038B428(v131, type metadata accessor for AccessoryMetadata);
          }

          v49 = v164;

          v151 = v161;
          PassthroughSubject.send(_:)();

          sub_10038B428(v151, type metadata accessor for AccessoryMetadata);
        }

        *(v49 + 32) = 0;
        *v49 = 0u;
        *(v49 + 16) = 0u;
        goto LABEL_22;
      }
    }

    else
    {
      if (v38 == 2)
      {
        if (qword_101694690 != -1)
        {
          swift_once();
        }

        v110 = type metadata accessor for Logger();
        sub_1000076D4(v110, qword_10177AC90);
        sub_100017D5C(v32, v33);
        v111 = Logger.logObject.getter();
        v112 = static os_log_type_t.default.getter();
        sub_10038BCE4(v32, v33, v34, v35, v36);
        if (os_log_type_enabled(v111, v112))
        {
          v113 = swift_slowAlloc();
          v114 = swift_slowAlloc();
          v169 = v114;
          *v113 = 136315138;
          v115 = sub_100313D58(v32, v33);
          v163 = v34;
          v117 = sub_1000136BC(v115, v116, &v169);
          LODWORD(v161) = v112;
          v118 = v32;
          v119 = v36;
          v36 = v117;
          v34 = v163;

          *(v113 + 4) = v36;
          LOBYTE(v36) = v119;
          v32 = v118;
          _os_log_impl(&_mh_execute_header, v111, v161, "Received productData %s", v113, 0xCu);
          sub_100007BAC(v114);
        }

        v49 = v164;
        v120 = (v29 + OBJC_IVAR____TtCC12searchpartyd24AccessoryMetadataManagerP33_9E4B9D7C2AC40BB201ED52E047F00DA919MetadataCoordinator_info + v162[5]);
        v121 = *v120;
        v122 = v120[1];
        *v120 = v32;
        v120[1] = v33;
        sub_100017D5C(v32, v33);
        sub_100006654(v121, v122);
        sub_10038BF14();
        BinaryDecodable.init(data:)();

        sub_10038BCE4(v32, v33, v34, v35, v36);
        v149 = 0;
        v150 = 5;
        goto LABEL_57;
      }

      if (v38 == 3)
      {
        v39 = qword_101694690;

        if (v39 != -1)
        {
          swift_once();
        }

        v40 = type metadata accessor for Logger();
        sub_1000076D4(v40, qword_10177AC90);

        v41 = Logger.logObject.getter();
        v42 = static os_log_type_t.default.getter();
        sub_10038BCE4(v32, v33, v34, v35, v36);
        v43 = os_log_type_enabled(v41, v42);
        v163 = v34;
        if (v43)
        {
          v44 = swift_slowAlloc();
          v45 = swift_slowAlloc();
          v169 = v45;
          *v44 = 136315138;

          v46 = sub_1000136BC(v32, v33, &v169);
          v47 = v34;
          v48 = v46;
          sub_10038BCE4(v32, v33, v47, v35, v36);
          *(v44 + 4) = v48;
          _os_log_impl(&_mh_execute_header, v41, v42, "Received modelName %s", v44, 0xCu);
          sub_100007BAC(v45);
        }

        v49 = v164;
        v50 = (v29 + OBJC_IVAR____TtCC12searchpartyd24AccessoryMetadataManagerP33_9E4B9D7C2AC40BB201ED52E047F00DA919MetadataCoordinator_info + v162[6]);
        *v50 = v32;
        v50[1] = v33;

        sub_10038BF14();
        BinaryDecodable.init(data:)();

        sub_10038BCE4(v32, v33, v163, v35, v36);
        v149 = 0;
        v150 = 6;
LABEL_57:
        *v49 = v150;
        *(v49 + 8) = 0;
        *(v49 + 16) = 0;
        *(v49 + 24) = 0x2000000000000000;
        *(v49 + 32) = 1;
        goto LABEL_23;
      }
    }

    if (qword_101694690 != -1)
    {
      swift_once();
    }

    v96 = type metadata accessor for Logger();
    sub_1000076D4(v96, qword_10177AC90);
    sub_10038BE2C(v32, v33, v34, v35, v36);
    v97 = Logger.logObject.getter();
    v98 = static os_log_type_t.error.getter();
    sub_10038BCE4(v32, v33, v34, v35, v36);
    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      v165[0] = v100;
      *v99 = 136315138;
      v169 = v32;
      v170 = v33;
      v171 = v34;
      v172 = v35;
      v173 = v36;
      sub_10038BE2C(v32, v33, v34, v35, v36);
      v101 = String.init<A>(describing:)();
      v163 = v34;
      v103 = sub_1000136BC(v101, v102, v165);
      LODWORD(v162) = v36;
      v104 = v103;

      *(v99 + 4) = v104;
      _os_log_impl(&_mh_execute_header, v97, v98, "Unexpected command %s", v99, 0xCu);
      sub_100007BAC(v100);

      v105 = v32;
      v106 = v33;
      v107 = v163;
      v108 = v35;
      v109 = v162;
    }

    else
    {

      v105 = v32;
      v106 = v33;
      v107 = v34;
      v108 = v35;
      v109 = v36;
    }

    sub_10038BCE4(v105, v106, v107, v108, v109);
    v49 = v164;
    v62 = 10;
  }

  else
  {
    if (qword_101694690 != -1)
    {
      swift_once();
    }

    v63 = type metadata accessor for Logger();
    sub_1000076D4(v63, qword_10177AC90);
    sub_1001011C0(v31, &v169);
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v168 = v67;
      *v66 = 136315138;
      sub_1001011C0(&v169, v165);
      v68 = String.init<A>(describing:)();
      v70 = v69;
      sub_100007BAC(&v169);
      v71 = sub_1000136BC(v68, v70, &v168);

      *(v66 + 4) = v71;
      _os_log_impl(&_mh_execute_header, v64, v65, "Invalid command from payload %s", v66, 0xCu);
      sub_100007BAC(v67);
    }

    else
    {

      sub_100007BAC(&v169);
    }

    v49 = v164;
    v62 = 14;
  }

LABEL_21:
  *v49 = v62;
  *(v49 + 8) = 0u;
  *(v49 + 24) = 0u;
LABEL_22:
  *(v49 + 40) = 11;
  v149 = 1;
LABEL_23:
  *(v49 + 41) = v149;
}

uint64_t sub_1003635A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AccessoryMetadata(0);
  v5 = *(v4 - 1);
  v6 = __chkstk_darwin(v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v6 + 36);
  v10 = type metadata accessor for AirTagVersionNumber();
  (*(*(v10 - 8) + 56))(&v8[v9], 1, 1, v10);
  v11 = &v8[v4[11]];
  *v11 = 0;
  *(v11 + 1) = 0;
  v11[16] = 1;
  v12 = &v8[v4[16]];
  *v12 = 0;
  *(v12 + 1) = 0xE000000000000000;
  v13 = type metadata accessor for AccessoryMetadataManager.MetadataInfo(0);
  v14 = (a1 + v13[5]);
  v15 = v14[1];
  if (v15 >> 60 == 15 || (v16 = (a1 + v13[6]), (v17 = v16[1]) == 0) || (v18 = (a1 + v13[7]), (v18[1] & 1) != 0))
  {
    sub_10038B428(a1, type metadata accessor for AccessoryMetadataManager.MetadataInfo);
    sub_10000B3A8(&v8[v9], &qword_10169A0C0, &unk_10139DBB0);
    return (*(v5 + 56))(a2, 1, 1, v4);
  }

  else
  {
    v34 = v13;
    v20 = *v14;
    v36 = *v16;
    v21 = *v18;
    v22 = HIWORD(*v18);
    v35 = HIBYTE(*v18);
    v23 = type metadata accessor for UUID();
    (*(*(v23 - 8) + 16))(v8, a1, v23);
    v24 = &v8[v4[5]];
    *v24 = v20;
    v24[1] = v15;
    v25 = &v8[v4[8]];
    *v25 = v21;
    v25[2] = v22;
    v25[3] = v35;
    v26 = &v8[v4[7]];
    *v26 = v36;
    *(v26 + 1) = v17;
    v27 = &v8[v4[6]];
    *v27 = 0;
    *(v27 + 1) = 0;
    sub_10002E98C(v20, v15);

    result = sub_10098E9DC(0x302E302E31, 0xE500000000000000);
    if ((result & 0x100000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v28 = &v8[v4[10]];
      *v28 = result;
      v28[4] = 0;
      v29 = &v8[v4[12]];
      *v29 = 0;
      v29[8] = 1;
      v30 = *(a1 + v34[8]);
      sub_10038B428(a1, type metadata accessor for AccessoryMetadataManager.MetadataInfo);
      v31 = &v8[v4[13]];
      *v31 = v30;
      v31[4] = 0;
      v8[v4[14]] = 4;
      v8[v4[15]] = 5;
      v32 = &v8[v4[17]];
      *v32 = 0;
      v32[4] = 1;
      sub_10038B278(v8, a2, type metadata accessor for AccessoryMetadata);
      (*(v5 + 56))(a2, 0, 1, v4);
      return sub_10038B428(v8, type metadata accessor for AccessoryMetadata);
    }
  }

  return result;
}

uint64_t sub_100363918(uint64_t a1, unint64_t a2, void *a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = v4[4];
  *v12 = v13;
  (*(v10 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v9);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v12, v9);
  if (v13)
  {
    if (qword_101694690 == -1)
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
  v15 = type metadata accessor for Logger();
  sub_1000076D4(v15, qword_10177AC90);
  sub_100017D5C(a1, a2);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();
  if (!os_log_type_enabled(v16, v17))
  {
    sub_100016590(a1, a2);
LABEL_16:

    v25 = swift_allocObject();
    swift_weakInit();
    v26 = swift_allocObject();
    v26[2] = v25;
    v26[3] = a3;
    v26[4] = a1;
    v26[5] = a2;
    v26[6] = v8;
    sub_1000BC4D4(&qword_101699378, &unk_1013B60B0);
    swift_allocObject();
    sub_100017D5C(a1, a2);
    v27 = a3;
    return Future.init(_:)();
  }

  result = swift_slowAlloc();
  *result = 134349056;
  v19 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v19 != 2)
    {
      v20 = 0;
      goto LABEL_15;
    }

    v22 = *(a1 + 16);
    v21 = *(a1 + 24);
    v23 = __OFSUB__(v21, v22);
    v20 = v21 - v22;
    if (!v23)
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  else if (!v19)
  {
    v20 = BYTE6(a2);
LABEL_15:
    *(result + 4) = v20;
    v24 = result;
    sub_100016590(a1, a2);
    _os_log_impl(&_mh_execute_header, v16, v17, "didNotify data length %{public}ld", v24, 0xCu);

    goto LABEL_16;
  }

  LODWORD(v20) = HIDWORD(a1) - a1;
  if (!__OFSUB__(HIDWORD(a1), a1))
  {
    v20 = v20;
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_100363C34(void (*a1)(_BYTE *), uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void (*a6)(char *, uint64_t))
{
  v117 = a6;
  v118 = a5;
  v113 = type metadata accessor for BinaryDecodingError();
  v111 = *(v113 - 8);
  __chkstk_darwin(v113);
  v112 = &v103 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for BinaryDecoder();
  v108 = *(v109 - 8);
  __chkstk_darwin(v109);
  v107 = &v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for Bit();
  v116 = *(v114 - 8);
  v11 = __chkstk_darwin(v114);
  v13 = &v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v110 = &v103 - v14;
  v15 = type metadata accessor for MACAddress();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v103 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v103 - v20;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    memset(v122, 0, sizeof(v122));
    LOBYTE(v123) = 11;
    v124 = 1;
    a1(v122);
    return sub_10000B3A8(v122, &qword_101699380, &unk_1013918F0);
  }

  v23 = Strong;
  sub_100A22DF0(v21);
  swift_beginAccess();
  v24 = *(v23 + 48);
  v25 = *(v24 + 16);
  v115 = v23;
  if (!v25)
  {
LABEL_19:
    v118 = a2;
    v117 = *(v16 + 8);
    v117(v21, v15);
    if (qword_101694690 != -1)
    {
      swift_once();
    }

    v68 = type metadata accessor for Logger();
    sub_1000076D4(v68, qword_10177AC90);
    v69 = a4;
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      *v122 = v73;
      *v72 = 141558275;
      *(v72 + 4) = 1752392040;
      *(v72 + 12) = 2081;
      sub_100A22DF0(v19);
      sub_10038B3E0(&qword_1016A4210, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
      v74 = dispatch thunk of CustomStringConvertible.description.getter();
      v75 = a1;
      v77 = v76;
      v117(v19, v15);
      v78 = sub_1000136BC(v74, v77, v122);
      a1 = v75;

      *(v72 + 14) = v78;
      _os_log_impl(&_mh_execute_header, v70, v71, "Missing coordinator for %{private,mask.hash}s", v72, 0x16u);
      sub_100007BAC(v73);
    }

    *v122 = 8;
    memset(&v122[8], 0, 32);
    LOBYTE(v123) = 11;
    v124 = 1;
    a1(v122);

    return sub_10000B3A8(v122, &qword_101699380, &unk_1013918F0);
  }

  v26 = sub_1007723C0(v21);
  if ((v27 & 1) == 0)
  {

    goto LABEL_19;
  }

  v28 = *(*(v24 + 56) + 8 * v26);
  v29 = *(v16 + 8);

  v29(v21, v15);

  v30 = (v28 + OBJC_IVAR____TtCC12searchpartyd24AccessoryMetadataManagerP33_9E4B9D7C2AC40BB201ED52E047F00DA919MetadataCoordinator_readBuffer);
  v31 = *(v28 + OBJC_IVAR____TtCC12searchpartyd24AccessoryMetadataManagerP33_9E4B9D7C2AC40BB201ED52E047F00DA919MetadataCoordinator_readBuffer);
  v32 = *(v28 + OBJC_IVAR____TtCC12searchpartyd24AccessoryMetadataManagerP33_9E4B9D7C2AC40BB201ED52E047F00DA919MetadataCoordinator_readBuffer + 8);
  if (v32 >> 60 == 15)
  {
    v33 = 0;
  }

  else
  {
    v33 = *(v28 + OBJC_IVAR____TtCC12searchpartyd24AccessoryMetadataManagerP33_9E4B9D7C2AC40BB201ED52E047F00DA919MetadataCoordinator_readBuffer);
  }

  v34 = 0xC000000000000000;
  if (v32 >> 60 != 15)
  {
    v34 = *(v28 + OBJC_IVAR____TtCC12searchpartyd24AccessoryMetadataManagerP33_9E4B9D7C2AC40BB201ED52E047F00DA919MetadataCoordinator_readBuffer + 8);
  }

  v120 = v33;
  v121 = v34;
  sub_10002E98C(v31, v32);
  v35 = v118;
  v36 = v117;
  sub_100017D5C(v118, v117);
  sub_100ED428C(1uLL, v35, v36, v122);
  v37 = *v122;
  Data.append(_:)();
  sub_100016590(v37, *(&v37 + 1));
  v38 = v120;
  v39 = v121;
  v40 = *v30;
  v41 = v30[1];
  *v30 = v120;
  v30[1] = v39;
  v105 = v30;
  sub_100017D5C(v38, v39);
  sub_100006654(v40, v41);
  if (qword_101694690 != -1)
  {
    swift_once();
  }

  v42 = type metadata accessor for Logger();
  v106 = sub_1000076D4(v42, qword_10177AC90);
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v103 = v45;
    v104 = swift_slowAlloc();
    *v122 = v104;
    *v45 = 136315138;
    swift_beginAccess();
    v46 = v28;
    v48 = v120;
    v47 = v121;
    sub_100017D5C(v120, v121);
    v49 = Data.description.getter();
    v50 = a1;
    v52 = v51;
    v53 = v48;
    v28 = v46;
    sub_100016590(v53, v47);
    v54 = sub_1000136BC(v49, v52, v122);
    a1 = v50;
    v36 = v117;

    v55 = v103;
    *(v103 + 1) = v54;
    _os_log_impl(&_mh_execute_header, v43, v44, "localReadBuffer %s", v55, 0xCu);
    sub_100007BAC(v104);
  }

  v56 = v114;
  v57 = v116;
  v58 = v118;
  v59 = sub_100017C08(v118, v36);
  if ((v59 & 0x100) != 0)
  {
    goto LABEL_25;
  }

  v122[0] = v59;
  sub_1000198E8();
  v60 = FixedWidthInteger.bits()();
  if (!*(v60 + 16))
  {

LABEL_25:
    type metadata accessor for AccessoryMetadataManager.Error(0);
    sub_10038B3E0(&qword_10169E730, type metadata accessor for AccessoryMetadataManager.Error, &unk_10139DCD8);
    v79 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_100016590(v120, v121);
    v80 = v113;
    goto LABEL_26;
  }

  v104 = v28;
  (*(v57 + 16))(v110, v60 + ((*(v57 + 80) + 32) & ~*(v57 + 80)), v56);

  (*(v57 + 104))(v13, enum case for Bit.one(_:), v56);
  sub_10038B3E0(&qword_101698660, &type metadata accessor for Bit, &protocol conformance descriptor for Bit);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v63 = *(v57 + 8);
  v61 = v57 + 8;
  v62 = v63;
  (v63)(v13, v56);
  if (v122[0] == v119)
  {
    v103 = v62;
    v116 = v61;
    v64 = v107;
    BinaryDecoder.init()();
    swift_beginAccess();
    v66 = v120;
    v65 = v121;
    sub_100017D5C(v120, v121);
    v67 = sub_10038BDD8();
    BinaryDecoder.decode<A>(_:from:)();
    sub_100016590(v66, v65);
    v96 = *v122;
    v97 = *&v122[16];
    LOBYTE(v66) = v122[32];
    v98 = *v105;
    v99 = v105[1];
    *v105 = xmmword_10138BBF0;
    sub_100006654(v98, v99);
    *&v122[24] = &type metadata for AccessoryNonOwnerCommand;
    *&v122[32] = v67;
    v123 = sub_10038BD74();
    v100 = swift_allocObject();
    *v122 = v100;
    *(v100 + 16) = v96;
    *(v100 + 32) = v97;
    *(v100 + 48) = v66;
    v124 = 0;
    v101 = sub_10038BE2C(v96, *(&v96 + 1), v97, *(&v97 + 1), v66);
    (a1)(v122, v101);

    sub_10038BCE4(v96, *(&v96 + 1), v97, *(&v97 + 1), v66);
    (*(v108 + 8))(v64, v109);
    (v103)(v110, v114);
    sub_10000B3A8(v122, &qword_101699380, &unk_1013918F0);
    return sub_100016590(v120, v121);
  }

  sub_10038B3E0(&qword_101696E30, &type metadata accessor for BinaryDecodingError, &protocol conformance descriptor for BinaryDecodingError);
  v80 = v113;
  v79 = swift_allocError();
  (*(v111 + 104))(v95, enum case for BinaryDecodingError.insufficientData(_:), v80);
  swift_willThrow();
  (v62)(v110, v56);
  sub_100016590(v120, v121);
LABEL_26:
  *v122 = v79;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v81 = v112;
  if (!swift_dynamicCast())
  {
LABEL_32:

    sub_100017D5C(v58, v36);
    v86 = Logger.logObject.getter();
    v87 = static os_log_type_t.info.getter();
    sub_100016590(v58, v36);
    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      *v122 = v89;
      *v88 = 136315138;
      v90 = Data.hexString.getter();
      v92 = sub_1000136BC(v90, v91, v122);

      *(v88 + 4) = v92;
      _os_log_impl(&_mh_execute_header, v86, v87, "Failed to decode data %s", v88, 0xCu);
      sub_100007BAC(v89);
    }

    v93 = *v105;
    v94 = v105[1];
    *v105 = xmmword_10138BBF0;
    sub_100006654(v93, v94);
    *v122 = v79;
    LOBYTE(v123) = 10;
    v124 = 1;
    swift_errorRetain();
    a1(v122);

    return sub_10000B3A8(v122, &qword_101699380, &unk_1013918F0);
  }

  v82 = v111;
  if ((*(v111 + 88))(v81, v80) != enum case for BinaryDecodingError.insufficientData(_:))
  {
    (*(v82 + 8))(v81, v80);
    goto LABEL_32;
  }

  v83 = Logger.logObject.getter();
  v84 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v83, v84))
  {
    v85 = swift_slowAlloc();
    *v85 = 0;
    _os_log_impl(&_mh_execute_header, v83, v84, "insufficientData. Keep reading...", v85, 2u);
  }
}

uint64_t sub_100364B60(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v11 = *(v3 + 32);
  *v10 = v11;
  (*(v8 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v7);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  result = (*(v8 + 8))(v10, v7);
  if (v11)
  {
    v14 = swift_allocObject();
    swift_weakInit();
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    *(v15 + 24) = a3;
    v16 = *(a1 + 16);
    *(v15 + 32) = *a1;
    *(v15 + 48) = v16;
    *(v15 + 64) = *(a1 + 32);
    *(v15 + 72) = a2;
    sub_1000BC4D4(&qword_10169E778, &unk_10139DBA0);
    swift_allocObject();
    v17 = a3;
    sub_10038BC18(a1, v19);

    return Future.init(_:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100364D30(void (*a1)(_BYTE *), uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v49 = a6;
  v50 = a5;
  v9 = type metadata accessor for BinaryEncoder();
  v51 = *(v9 - 8);
  v52 = v9;
  __chkstk_darwin(v9);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MACAddress();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v49 - v17;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    v53 = a2;
    sub_100A22DF0(v18);
    swift_beginAccess();
    v21 = *(v20 + 48);
    if (*(v21 + 16))
    {

      v22 = sub_1007723C0(v18);
      if (v23)
      {
        v24 = *(*(v21 + 56) + 8 * v22);
        v25 = *(v13 + 8);

        v25(v18, v12);

        v26 = (v24 + OBJC_IVAR____TtCC12searchpartyd24AccessoryMetadataManagerP33_9E4B9D7C2AC40BB201ED52E047F00DA919MetadataCoordinator_writePromise);
        v27 = *(v24 + OBJC_IVAR____TtCC12searchpartyd24AccessoryMetadataManagerP33_9E4B9D7C2AC40BB201ED52E047F00DA919MetadataCoordinator_writePromise);
        v28 = *(v24 + OBJC_IVAR____TtCC12searchpartyd24AccessoryMetadataManagerP33_9E4B9D7C2AC40BB201ED52E047F00DA919MetadataCoordinator_writePromise + 8);
        v29 = v53;
        *v26 = a1;
        v26[1] = v29;

        sub_1000BB27C(v27, v28);
        BinaryEncoder.init()();
        v30 = v50;
        v31 = *(v50 + 16);
        *v54 = *v50;
        *&v54[16] = v31;
        v54[32] = *(v50 + 32);
        sub_10038BD74();
        v43 = BinaryEncoder.encode<A>(_:)();
        v45 = v44;
        v46 = Data.chunked(into:)();
        v47 = sub_1001D97CC(v46);

        swift_beginAccess();
        sub_100398324(v47);
        swift_endAccess();
        sub_100365428(v49, v30, a4);
        sub_100016590(v43, v45);

        return (*(v51 + 8))(v11, v52);
      }
    }

    v51 = v20;
    v52 = a1;
    v32 = *(v13 + 8);
    v32(v18, v12);
    if (qword_101694690 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_1000076D4(v33, qword_10177AC90);
    v34 = a4;
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v54 = v38;
      *v37 = 141558275;
      *(v37 + 4) = 1752392040;
      *(v37 + 12) = 2081;
      sub_100A22DF0(v16);
      sub_10038B3E0(&qword_1016A4210, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
      v39 = dispatch thunk of CustomStringConvertible.description.getter();
      v41 = v40;
      v32(v16, v12);
      v42 = sub_1000136BC(v39, v41, v54);

      *(v37 + 14) = v42;
      _os_log_impl(&_mh_execute_header, v35, v36, "Missing coordinator for %{private,mask.hash}s", v37, 0x16u);
      sub_100007BAC(v38);
    }

    *v54 = 8;
    memset(&v54[8], 0, 32);
    v55 = 267;
    v52(v54);
  }

  else
  {
    memset(v54, 0, sizeof(v54));
    v55 = 267;
    a1(v54);
  }

  return sub_10000B3A8(v54, &qword_10169E770, &qword_10139DB98);
}

void sub_100365428(uint64_t a1, __int128 *a2, void *a3)
{
  v4 = v3;
  v99 = a2;
  v104 = a1;
  v103 = type metadata accessor for DispatchTime();
  v102 = *(v103 - 8);
  v6 = __chkstk_darwin(v103);
  v100 = &v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v101 = &v92 - v8;
  v9 = type metadata accessor for MACAddress();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v92 - v14;
  v16 = type metadata accessor for DispatchPredicate();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v92 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v4 + 32);
  *v19 = v20;
  (*(v17 + 104))(v19, enum case for DispatchPredicate.onQueue(_:), v16);
  v21 = v20;
  LOBYTE(v20) = _dispatchPreconditionTest(_:)();
  (*(v17 + 8))(v19, v16);
  if ((v20 & 1) == 0)
  {
    __break(1u);
    goto LABEL_35;
  }

  sub_100A22DF0(v15);
  swift_beginAccess();
  v22 = *(v4 + 48);
  if (!*(v22 + 16))
  {
LABEL_17:
    v19 = *(v10 + 8);
    (v19)(v15, v9);
    if (qword_101694690 == -1)
    {
LABEL_18:
      v64 = type metadata accessor for Logger();
      sub_1000076D4(v64, qword_10177AC90);
      v65 = a3;
      v66 = Logger.logObject.getter();
      v67 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        *&v110 = v69;
        *v68 = 141558275;
        *(v68 + 4) = 1752392040;
        *(v68 + 12) = 2081;
        sub_100A22DF0(v13);
        sub_10038B3E0(&qword_1016A4210, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
        v70 = dispatch thunk of CustomStringConvertible.description.getter();
        v72 = v71;
        (v19)(v13, v9);
        v73 = sub_1000136BC(v70, v72, &v110);

        *(v68 + 14) = v73;
        _os_log_impl(&_mh_execute_header, v66, v67, "Missing coordinator for %{private,mask.hash}s", v68, 0x16u);
        sub_100007BAC(v69);
      }

      return;
    }

LABEL_35:
    swift_once();
    goto LABEL_18;
  }

  v23 = sub_1007723C0(v15);
  if ((v24 & 1) == 0)
  {

    goto LABEL_17;
  }

  v25 = *(*(v22 + 56) + 8 * v23);
  v26 = *(v10 + 8);

  v26(v15, v9);

  v27 = OBJC_IVAR____TtCC12searchpartyd24AccessoryMetadataManagerP33_9E4B9D7C2AC40BB201ED52E047F00DA919MetadataCoordinator_writeQueue;
  swift_beginAccess();
  v28 = *(v25 + v27);
  if (v28[2])
  {
    swift_beginAccess();
    v29 = v28[4];
    v30 = v28[5];
    sub_100017D5C(v29, v30);
    v93 = v27;
    sub_100A077EC(0, 1);
    swift_endAccess();
    if (qword_101694690 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    v32 = sub_1000076D4(v31, qword_10177AC90);
    sub_100017D5C(v29, v30);
    v95 = v32;
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.info.getter();
    sub_100016590(v29, v30);
    v35 = os_log_type_enabled(v33, v34);
    v97 = v30;
    v98 = v29;
    v94 = a3;
    if (v35)
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *&v110 = v37;
      *v36 = 136315138;
      sub_100017D5C(v98, v30);
      v38 = Data.description.getter();
      v40 = v39;
      sub_100016590(v98, v97);
      v41 = sub_1000136BC(v38, v40, &v110);

      *(v36 + 4) = v41;
      v30 = v97;
      _os_log_impl(&_mh_execute_header, v33, v34, "processQueuedUpdates: writing %s.", v36, 0xCu);
      sub_100007BAC(v37);
      v29 = v98;
    }

    v42 = swift_allocObject();
    *(v42 + 16) = 0u;
    v43 = v42 + 16;
    *(v42 + 32) = 0u;
    *(v42 + 48) = 0;
    *(v42 + 56) = 267;
    v44 = dispatch_group_create();
    dispatch_group_enter(v44);
    *&v110 = sub_100A59B98(v29, v30);
    v45 = swift_allocObject();
    *(v45 + 16) = v42;
    *(v45 + 24) = v44;
    v96 = v42;

    v46 = v44;
    sub_1000BC4D4(&qword_1016C4520, &unk_1013B6090);
    sub_1000041A4(&qword_101699348, &qword_1016C4520, &unk_1013B6090, &protocol conformance descriptor for AnyPublisher<A, B>);
    Publisher.oneshot(_:)();

    v47 = v100;
    static DispatchTime.now()();
    v48 = v101;
    + infix(_:_:)();
    isa = v102[1].isa;
    v50 = v103;
    isa(v47, v103);
    v102 = v46;
    OS_dispatch_group.wait(timeout:)();
    isa(v48, v50);
    if (static DispatchTimeoutResult.== infix(_:_:)())
    {
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        _os_log_impl(&_mh_execute_header, v51, v52, "Timed out waiting for writeFuture", v53, 2u);
      }
    }

    swift_beginAccess();
    sub_1000D2A70(v43, &v110, &qword_1016B1CA0, &qword_1013918C0);
    if (v112)
    {
      v108 = v110;
      v109[0] = *v111;
      *(v109 + 9) = *&v111[9];
      sub_100101AA8(&v108, v106);
      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.error.getter();
      v56 = os_log_type_enabled(v54, v55);
      v57 = v97;
      if (v56)
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v105 = v59;
        *v58 = 136446210;
        v60 = sub_1013181BC();
        v62 = v61;
        sub_100101B04(v106);
        v63 = sub_1000136BC(v60, v62, &v105);

        *(v58 + 4) = v63;
        _os_log_impl(&_mh_execute_header, v54, v55, "writeFuture error: %{public}s", v58, 0xCu);
        sub_100007BAC(v59);
      }

      else
      {

        sub_100101B04(v106);
      }

      v87 = *(v25 + OBJC_IVAR____TtCC12searchpartyd24AccessoryMetadataManagerP33_9E4B9D7C2AC40BB201ED52E047F00DA919MetadataCoordinator_writePromise);
      if (v87)
      {
        v88 = *(v25 + OBJC_IVAR____TtCC12searchpartyd24AccessoryMetadataManagerP33_9E4B9D7C2AC40BB201ED52E047F00DA919MetadataCoordinator_writePromise + 8);
        sub_100101B58();
        v89 = swift_allocError();
        sub_100101AA8(&v108, v90);
        v106[0] = v89;
        v107 = 256;

        v87(v106);
        sub_1000BB27C(v87, v88);

        sub_100016590(v98, v57);
        sub_10000B3A8(v106, &qword_10169E770, &qword_10139DB98);
      }

      else
      {
        sub_100016590(v98, v57);
      }

      sub_100101B04(&v108);
    }

    else
    {

      v78 = Logger.logObject.getter();
      v79 = v25;
      v80 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v78, v80))
      {
        v81 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        v106[0] = v82;
        *v81 = 134218242;
        *(v81 + 4) = *(*(v79 + v93) + 16);

        *(v81 + 12) = 2080;

        v83 = Array.description.getter();
        v85 = v84;

        v86 = sub_1000136BC(v83, v85, v106);

        *(v81 + 14) = v86;
        _os_log_impl(&_mh_execute_header, v78, v80, "writeFuture success. writeQueue [%ld] %s", v81, 0x16u);
        sub_100007BAC(v82);
      }

      else
      {
      }

      v91 = v98;
      sub_100365428(v104, v99, v94);

      sub_100016590(v91, v97);
    }
  }

  else
  {
    v74 = *(v25 + OBJC_IVAR____TtCC12searchpartyd24AccessoryMetadataManagerP33_9E4B9D7C2AC40BB201ED52E047F00DA919MetadataCoordinator_writePromise);
    if (v74)
    {
      v75 = *(v25 + OBJC_IVAR____TtCC12searchpartyd24AccessoryMetadataManagerP33_9E4B9D7C2AC40BB201ED52E047F00DA919MetadataCoordinator_writePromise + 8);
      v76 = v99;
      v77 = v99[1];
      v110 = *v99;
      *v111 = v77;
      v111[16] = *(v99 + 32);
      v112 = 0;
      sub_100012908(v74, v75);
      sub_10038BC18(v76, v106);
      v74(&v110);
      sub_1000BB27C(v74, v75);

      sub_10000B3A8(&v110, &qword_10169E770, &qword_10139DB98);
      return;
    }
  }
}

void sub_10036611C(uint64_t a1, uint64_t a2, NSObject *a3)
{
  swift_beginAccess();
  sub_10038BC74(a1, a2 + 16);
  dispatch_group_leave(a3);
}

uint64_t sub_10036617C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100366220(uint64_t a1)
{
  result = type metadata accessor for AccessoryMetadataManager.MetadataInfo(319);
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

void sub_100366328(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    sub_1002359B8(319, &unk_10169E6F0, &type metadata for AccessoryProductData);
    if (v2 <= 0x3F)
    {
      sub_1002359B8(319, &qword_1016BD350, &type metadata for String);
      if (v3 <= 0x3F)
      {
        sub_1002359B8(319, &qword_10169A138, &type metadata for VersionNumber);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_100366414(uint64_t a1)
{
  sub_1000D2A70(a1, &v10, &unk_1016A6150, &unk_10139DB30);
  if ((v12 & 1) == 0)
  {
    return sub_10000B3A8(&v10, &unk_1016A6150, &unk_10139DB30);
  }

  v8 = v10;
  *v9 = *v11;
  *&v9[9] = *&v11[9];
  sub_100101B58();
  swift_willThrowTypedImpl();
  v1 = swift_allocError();
  *v2 = v8;
  v2[1] = *v9;
  *(v2 + 25) = *&v9[9];
  *&v10 = v1;
  swift_errorRetain();
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  swift_willThrowTypedImpl();
  v3 = static os_log_type_t.error.getter();
  if (qword_1016950B0 != -1)
  {
    swift_once();
  }

  v4 = qword_10177C3F8;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_101385D80;
  v6 = _convertErrorToNSError(_:)();
  *(v5 + 56) = sub_100008BB8(0, &qword_10169E020, NSError_ptr);
  *(v5 + 64) = sub_100009D18(&qword_1016BC310, &qword_10169E020, NSError_ptr, &protocol conformance descriptor for NSObject);
  *(v5 + 32) = v6;
  os_log(_:dso:log:_:_:)(v3, &_mh_execute_header, v4, "Error from cancelConnection: %@", 31, 2, v5);
}

uint64_t sub_100366634(uint64_t a1)
{
  v3 = *v1;
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = 3;
  *(v4 + 32) = v3;
  sub_1000BC4D4(&qword_1016C7CE0, &unk_10139DA90);
  swift_allocObject();

  return Future.init(_:)();
}

uint64_t sub_1003666F4(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = *v3;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 32) = v6;
  sub_1000BC4D4(&qword_1016C7CE0, &unk_10139DA90);
  swift_allocObject();

  return Future.init(_:)();
}

uint64_t sub_1003667B8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v10 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v10 - 8);
  v12 = &v16 - v11;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  *(v14 + 32) = a3;
  *(v14 + 40) = a4;
  *(v14 + 48) = a1;
  *(v14 + 56) = a2;
  *(v14 + 64) = a5;

  sub_10025EDD4(0, 0, v12, &unk_10139DAA8, v14);
}

uint64_t sub_1003668F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 24) = a6;
  *(v7 + 32) = a7;
  *(v7 + 128) = a5;
  *(v7 + 16) = a4;
  *(v7 + 40) = sub_1000BC4D4(&qword_10169E748, &unk_10139DAB0);
  *(v7 + 48) = swift_task_alloc();
  *(v7 + 56) = *(type metadata accessor for AccessoryMetadata(0) - 8);
  *(v7 + 64) = swift_task_alloc();
  sub_1000BC4D4(&qword_1016985F0, &unk_10139D780);
  *(v7 + 72) = swift_task_alloc();
  type metadata accessor for AccessoryInfoEndPoint(0);
  *(v7 + 80) = swift_task_alloc();
  *(v7 + 88) = swift_task_alloc();

  return _swift_task_switch(sub_100366A68, 0, 0);
}

uint64_t sub_100366A68()
{
  v1 = qword_101694698;

  if (v1 != -1)
  {
    swift_once();
  }

  v2 = qword_10177ACA8;

  v3 = swift_task_alloc();
  *(v0 + 96) = v3;
  *v3 = v0;
  v3[1] = sub_100366B6C;
  v4 = *(v0 + 16);
  v5 = *(v0 + 128);

  return sub_100ED2090(v4, 0, v5, v2);
}

uint64_t sub_100366B6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v4[13] = a1;
  v4[14] = a2;
  v4[15] = a3;

  return _swift_task_switch(sub_100366C70, 0, 0);
}

uint64_t sub_100366C70()
{
  v47 = v0;
  v1 = *(v0 + 104);
  if (v1)
  {
    v2 = *(v0 + 16);
    v3 = *(v2 + 16);
    v42 = *(v0 + 104);
    if (v3)
    {
      v4 = *(v0 + 56);
      v5 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
      v6 = *(v4 + 72);
      p_weak_ivar_lyt = &BeaconKeyManager.weak_ivar_lyt;
      do
      {
        if (p_weak_ivar_lyt[210] != -1)
        {
          swift_once();
        }

        v8 = *(v0 + 64);
        v9 = type metadata accessor for Logger();
        sub_1000076D4(v9, qword_10177AC90);
        sub_10038B278(v5, v8, type metadata accessor for AccessoryMetadata);
        v10 = Logger.logObject.getter();
        v11 = static os_log_type_t.info.getter();
        v12 = os_log_type_enabled(v10, v11);
        v13 = *(v0 + 64);
        if (v12)
        {
          v14 = swift_slowAlloc();
          v15 = swift_slowAlloc();
          v46 = v15;
          *v14 = 136315138;
          v16 = p_weak_ivar_lyt;
          v17 = sub_100230E34();
          v19 = v18;
          sub_10038B428(v13, type metadata accessor for AccessoryMetadata);
          v20 = v17;
          p_weak_ivar_lyt = v16;
          v21 = sub_1000136BC(v20, v19, &v46);

          *(v14 + 4) = v21;
          _os_log_impl(&_mh_execute_header, v10, v11, "retrieveProductInfo: %s", v14, 0xCu);
          sub_100007BAC(v15);
          v6 = v43;
          v0 = v45;
        }

        else
        {

          sub_10038B428(v13, type metadata accessor for AccessoryMetadata);
        }

        v5 += v6;
        --v3;
      }

      while (v3);
      v1 = *(v0 + 104);
    }

    v23 = *(v0 + 112);
    v22 = *(v0 + 120);
    v24 = *(v0 + 80);
    v25 = *(v0 + 88);
    v26 = *(v0 + 72);
    v27 = *(v0 + 32);
    v44 = *(v0 + 24);
    sub_1010C16DC(*(v0 + 128), v25);
    type metadata accessor for SearchPartyURLSessionFactory(0);
    swift_allocObject();
    v28 = type metadata accessor for FMNMockingPreferences();
    (*(*(v28 - 8) + 56))(v26, 1, 1, v28);
    v29 = FMNURLSessionFactory.init(mockSessionCreationBlock:preferences:)();
    type metadata accessor for ServerInteractionController(0);
    v30 = swift_allocObject();
    sub_10038B278(v25, v24, type metadata accessor for AccessoryInfoEndPoint);
    v31 = sub_100620924(v24, v29, v30);
    sub_10038B428(v25, type metadata accessor for AccessoryInfoEndPoint);
    sub_10038B5CC(v1, v23, v22);
    sub_1004FC6D8(v42, v23, v22, 0, v31);
    sub_100165328(v1, v23, v22);
    v32 = swift_allocObject();
    *(v32 + 16) = v44;
    *(v32 + 24) = v27;

    Future.addFailure(block:)();

    v33 = swift_allocObject();
    *(v33 + 16) = v44;
    *(v33 + 24) = v27;

    Future.addSuccess(block:)();
    sub_100165328(v1, v23, v22);
  }

  else
  {
    if (qword_101694690 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_1000076D4(v34, qword_10177AC90);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "retrieveProductInfo: invalid parameters", v37, 2u);
    }

    v38 = *(v0 + 48);
    v39 = *(v0 + 24);

    type metadata accessor for BluetoothCommunicationCoordinator.Error(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v39(v38);
    sub_10000B3A8(v38, &qword_10169E748, &unk_10139DAB0);
  }

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_10036720C(uint64_t a1, void (*a2)(void *))
{
  v4 = sub_1000BC4D4(&qword_10169E748, &unk_10139DAB0);
  __chkstk_darwin(v4);
  v6 = (&v14 - v5);
  if (qword_101694690 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1000076D4(v7, qword_10177AC90);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138543362;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v12;
    *v11 = v12;
    _os_log_impl(&_mh_execute_header, v8, v9, "Error in product info request %{public}@", v10, 0xCu);
    sub_10000B3A8(v11, &qword_10169BB30, &unk_10138B3C0);
  }

  *v6 = a1;
  type metadata accessor for BluetoothCommunicationCoordinator.Error(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  a2(v6);
  return sub_10000B3A8(v6, &qword_10169E748, &unk_10139DAB0);
}

uint64_t sub_100367424(void *a1, void (*a2)(char *), uint64_t a3)
{
  v117 = sub_1000BC4D4(&qword_10169E748, &unk_10139DAB0);
  __chkstk_darwin(v117);
  v7 = v108 - v6;
  v8 = type metadata accessor for AccessoryInfoResponseContent(0);
  v9 = __chkstk_darwin(v8 - 8);
  v121 = (v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v120 = v108 - v11;
  v12 = sub_1000BC4D4(&qword_101697268, &qword_101394FE0);
  __chkstk_darwin(v12 - 8);
  v116 = v108 - v13;
  v14 = type metadata accessor for AccessoryProductInfo(0);
  v123 = *(v14 - 8);
  v124 = v14;
  v15 = __chkstk_darwin(v14);
  v128 = (v108 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15);
  v119 = v108 - v17;
  v18 = type metadata accessor for AccessoryInfoResponseType(0);
  v126 = *(v18 - 8);
  v127 = v18;
  v19 = __chkstk_darwin(v18);
  *&v113 = v108 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = v108 - v21;
  v23 = type metadata accessor for FMNServerInteractionController.FMNResponseFields();
  v125 = *(v23 - 8);
  v24 = __chkstk_darwin(v23);
  v26 = v108 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v24);
  v111 = v108 - v28;
  __chkstk_darwin(v27);
  v30 = v108 - v29;
  v31 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v31 - 8);
  v32 = FMNServerInteractionController.FMNResponseFields.statusCode.getter();
  v118 = a2;
  if (v32 != 200)
  {
    v46 = a1;
    if (qword_101694690 == -1)
    {
LABEL_8:
      v47 = type metadata accessor for Logger();
      sub_1000076D4(v47, qword_10177AC90);
      v48 = v125;
      (*(v125 + 16))(v26, v46, v23);
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v114 = v7;
        v52 = v51;
        v53 = swift_slowAlloc();
        v130[0] = v53;
        *v52 = 136315138;
        sub_10038B3E0(&qword_1016A62C0, &type metadata accessor for FMNServerInteractionController.FMNResponseFields, &protocol conformance descriptor for FMNServerInteractionController.FMNResponseFields);
        v54 = dispatch thunk of CustomStringConvertible.description.getter();
        v56 = v55;
        (*(v48 + 8))(v26, v23);
        v57 = sub_1000136BC(v54, v56, v130);

        *(v52 + 4) = v57;
        _os_log_impl(&_mh_execute_header, v49, v50, "Product info check failed: %s", v52, 0xCu);
        sub_100007BAC(v53);

        v7 = v114;
      }

      else
      {

        (*(v48 + 8))(v26, v23);
      }

      type metadata accessor for BluetoothCommunicationCoordinator.Error(0);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      v118(v7);
      return sub_10000B3A8(v7, &qword_10169E748, &unk_10139DAB0);
    }

LABEL_51:
    swift_once();
    goto LABEL_8;
  }

  v112 = v23;
  v33 = FMNServerInteractionController.FMNResponseFields.data.getter();
  v35 = v34;
  static String.Encoding.utf8.getter();
  v36 = String.init(data:encoding:)();
  v38 = v37;
  sub_100016590(v33, v35);
  v114 = v7;
  if (v38)
  {
    v122 = v36;
    if (qword_101694690 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    sub_1000076D4(v39, qword_10177AC90);

    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v130[0] = v43;
      *v42 = 136315138;
      v44 = a3;
      v45 = sub_1000136BC(v122, v38, v130);

      *(v42 + 4) = v45;
      a3 = v44;
      _os_log_impl(&_mh_execute_header, v40, v41, "response data: %s", v42, 0xCu);
      sub_100007BAC(v43);
      a2 = v118;
      v7 = v114;
    }

    else
    {
    }
  }

  v115 = a1;
  v58 = v112;
  if (qword_101694690 != -1)
  {
    swift_once();
  }

  v59 = type metadata accessor for Logger();
  v60 = sub_1000076D4(v59, qword_10177AC90);
  v61 = v125;
  v62 = *(v125 + 16);
  v108[1] = v125 + 16;
  v108[0] = v62;
  v62(v30, v115, v58);
  v122 = v60;
  v63 = Logger.logObject.getter();
  v64 = v30;
  v65 = static os_log_type_t.default.getter();
  v66 = os_log_type_enabled(v63, v65);
  v110 = a3;
  if (v66)
  {
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v130[0] = v68;
    *v67 = 136446210;
    sub_10038B3E0(&qword_1016A62C0, &type metadata accessor for FMNServerInteractionController.FMNResponseFields, &protocol conformance descriptor for FMNServerInteractionController.FMNResponseFields);
    v69 = dispatch thunk of CustomStringConvertible.description.getter();
    v71 = v70;
    v109 = *(v61 + 8);
    v109(v64, v58);
    v72 = sub_1000136BC(v69, v71, v130);

    *(v67 + 4) = v72;
    _os_log_impl(&_mh_execute_header, v63, v65, "response: %{public}s", v67, 0xCu);
    sub_100007BAC(v68);

    a2 = v118;
    v7 = v114;
  }

  else
  {

    v109 = *(v61 + 8);
    v109(v30, v58);
  }

  v73 = v113;
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  v74 = JSONDecoder.init()();
  v23 = FMNServerInteractionController.FMNResponseFields.data.getter();
  v76 = v75;
  sub_10038B488();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  sub_100016590(v23, v76);
  v78 = v130[0];
  if (*(v130[0] + 16))
  {
    v112 = v74;

    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v79, v80))
    {
      v23 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v130[0] = v81;
      *v23 = 136315138;
      v129 = v78;

      v82 = String.init<A>(describing:)();
      v84 = sub_1000136BC(v82, v83, v130);

      *(v23 + 4) = v84;
      _os_log_impl(&_mh_execute_header, v79, v80, "decodedResponse: %s", v23, 0xCu);
      sub_100007BAC(v81);
    }

    v26 = v116;
    v7 = v124;
    v125 = *(v78 + 16);
    if (v125)
    {
      v86 = 0;
      v115 = (v123 + 56);
      v87 = (v123 + 48);
      v46 = _swiftEmptyArrayStorage;
      *&v85 = 134217984;
      v113 = v85;
      while (v86 < *(v78 + 16))
      {
        sub_10038B278(v78 + ((*(v126 + 80) + 32) & ~*(v126 + 80)) + *(v126 + 72) * v86, v22, type metadata accessor for AccessoryInfoResponseType);
        sub_10038B278(v22, v73, type metadata accessor for AccessoryInfoResponseType);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v88 = *v73;
          v89 = Logger.logObject.getter();
          v23 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v89, v23))
          {
            v90 = swift_slowAlloc();
            *v90 = v113;
            *(v90 + 4) = v88;
            _os_log_impl(&_mh_execute_header, v89, v23, "Failed to retrieve product info with server status: %ld", v90, 0xCu);
            v26 = v116;
          }

          v7 = v124;
          (*v115)(v26, 1, 1, v124);
        }

        else
        {
          v23 = v120;
          sub_10038BEAC(v73, v120, type metadata accessor for AccessoryInfoResponseContent);
          v91 = v121;
          sub_10038B278(v23, v121, type metadata accessor for AccessoryInfoResponseContent);
          sub_10119A0F4(v91, v26);
          sub_10038B428(v23, type metadata accessor for AccessoryInfoResponseContent);
        }

        sub_10038B428(v22, type metadata accessor for AccessoryInfoResponseType);
        if ((*v87)(v26, 1, v7) == 1)
        {
          sub_10000B3A8(v26, &qword_101697268, &qword_101394FE0);
        }

        else
        {
          v92 = v119;
          sub_10038BEAC(v26, v119, type metadata accessor for AccessoryProductInfo);
          sub_10038BEAC(v92, v128, type metadata accessor for AccessoryProductInfo);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v46 = sub_100A5CAE4(0, v46[2] + 1, 1, v46);
          }

          v23 = v46[2];
          v93 = v46[3];
          if (v23 >= v93 >> 1)
          {
            v46 = sub_100A5CAE4((v93 > 1), v23 + 1, 1, v46);
          }

          v46[2] = v23 + 1;
          sub_10038BEAC(v128, v46 + ((*(v123 + 80) + 32) & ~*(v123 + 80)) + *(v123 + 72) * v23, type metadata accessor for AccessoryProductInfo);
        }

        if (v125 == ++v86)
        {
          goto LABEL_43;
        }
      }

      __break(1u);
      goto LABEL_51;
    }

    v46 = _swiftEmptyArrayStorage;
LABEL_43:

    if (v46[2])
    {
      v7 = v114;
      *v114 = v46;
      swift_storeEnumTagMultiPayload();
      v118(v7);
    }

    else
    {

      v103 = Logger.logObject.getter();
      v104 = static os_log_type_t.error.getter();
      v105 = os_log_type_enabled(v103, v104);
      v7 = v114;
      v106 = v118;
      if (v105)
      {
        v107 = swift_slowAlloc();
        *v107 = 0;
        _os_log_impl(&_mh_execute_header, v103, v104, "Empty productInfos!", v107, 2u);
      }

      type metadata accessor for BluetoothCommunicationCoordinator.Error(0);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      v106(v7);
    }
  }

  else
  {

    v94 = v111;
    v95 = v112;
    (v108[0])(v111, v115, v112);
    v96 = Logger.logObject.getter();
    v97 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      v128 = swift_slowAlloc();
      v130[0] = v128;
      *v98 = 136446210;
      sub_10038B3E0(&qword_1016A62C0, &type metadata accessor for FMNServerInteractionController.FMNResponseFields, &protocol conformance descriptor for FMNServerInteractionController.FMNResponseFields);
      v99 = dispatch thunk of CustomStringConvertible.description.getter();
      v101 = v100;
      v109(v94, v95);
      v102 = sub_1000136BC(v99, v101, v130);

      *(v98 + 4) = v102;
      _os_log_impl(&_mh_execute_header, v96, v97, "invalidResponse: %{public}s", v98, 0xCu);
      sub_100007BAC(v128);
    }

    else
    {

      v109(v94, v95);
    }

    type metadata accessor for BluetoothCommunicationCoordinator.Error(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    a2(v7);
  }

  return sub_10000B3A8(v7, &qword_10169E748, &unk_10139DAB0);
}

uint64_t sub_100368640()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10169E3B0);
  v1 = sub_1000076D4(v0, qword_10169E3B0);
  if (qword_101694690 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177AC90);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100368708()
{
  v0 = type metadata accessor for UUID();
  __chkstk_darwin(v0 - 8);
  v1 = sub_1000BC4D4(&qword_101698E38, &unk_101395BA0);
  __chkstk_darwin(v1 - 8);
  v3 = &v6 - v2;
  type metadata accessor for WorkItemQueue();
  v4 = type metadata accessor for WorkItemQueue.WarningOptions();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  UUID.init()();
  result = WorkItemQueue.__allocating_init(name:identifier:warningOptions:)();
  qword_10169E3C8 = result;
  return result;
}

uint64_t sub_100368844(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 192) = a3;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  sub_1000BC4D4(&qword_101697270, &qword_10138BDD0);
  *(v3 + 32) = swift_task_alloc();
  v4 = type metadata accessor for CentralManager.State();
  *(v3 + 40) = v4;
  *(v3 + 48) = *(v4 - 8);
  *(v3 + 56) = swift_task_alloc();
  sub_1000BC4D4(&unk_1016C1200, &qword_1013B6240);
  *(v3 + 64) = swift_task_alloc();

  return _swift_task_switch(sub_100368978, 0, 0);
}

uint64_t sub_100368978()
{
  v1 = v0[8];
  v0[9] = type metadata accessor for CentralManager();
  v2 = type metadata accessor for CentralManager.Options();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_100368A68;
  v4 = v0[8];

  return CentralManager.__allocating_init(options:)(v4);
}

uint64_t sub_100368A68(uint64_t a1)
{
  *(*v1 + 88) = a1;

  return _swift_task_switch(sub_100368B68, 0, 0);
}

uint64_t sub_100368B68()
{
  (*(v0[6] + 104))(v0[7], enum case for CentralManager.State.poweredOn(_:), v0[5]);
  v1 = swift_task_alloc();
  v0[12] = v1;
  v2 = sub_10038B3E0(&unk_1016C1160, &type metadata accessor for CentralManager, &protocol conformance descriptor for CentralManager);
  *v1 = v0;
  v1[1] = sub_100368C64;
  v3 = v0[9];
  v4 = v0[7];

  return CentralManagerProtocol.await(state:)(v4, v3, v2);
}

uint64_t sub_100368C64()
{
  v2 = *v1;
  v3 = *v1;
  v2[13] = v0;

  v4 = v2[7];
  v5 = v2[6];
  v6 = v2[5];
  if (v0)
  {
    (*(v5 + 8))(v4, v6);

    return _swift_task_switch(sub_1003694FC, 0, 0);
  }

  else
  {
    (*(v5 + 8))(v4, v6);
    v10 = (&async function pointer to dispatch thunk of CentralManager.retrievePeripheral(macAddress:) + async function pointer to dispatch thunk of CentralManager.retrievePeripheral(macAddress:));
    v7 = swift_task_alloc();
    v2[14] = v7;
    *v7 = v3;
    v7[1] = sub_100368E5C;
    v8 = v2[3];

    return v10(v8);
  }
}

uint64_t sub_100368E5C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 120) = a1;
  *(v3 + 128) = v1;

  if (v1)
  {
    v4 = sub_100369584;
  }

  else
  {
    v4 = sub_100368F70;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100368F70()
{
  v1 = *(v0 + 120);
  if (v1)
  {
    v2 = *(v0 + 32);
    v3 = type metadata accessor for ConnectUseCase();
    (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
    v4 = swift_task_alloc();
    *(v0 + 136) = v4;
    *v4 = v0;
    v4[1] = sub_100369198;
    v5 = *(v0 + 32);
    v6 = *(v0 + 16);
    v7 = *(v0 + 192);

    return sub_1011FC38C(v6, v1, v7, v5);
  }

  else
  {
    v9 = *(v0 + 24);
    type metadata accessor for AccessoryMetadataManager.Error(0);
    sub_10038B3E0(&qword_10169E730, type metadata accessor for AccessoryMetadataManager.Error, &unk_10139DCD8);
    swift_allocError();
    v11 = v10;
    v12 = type metadata accessor for MACAddress();
    (*(*(v12 - 8) + 16))(v11, v9, v12);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_100369198()
{
  v2 = *v1;
  v2[18] = v0;

  if (v0)
  {
    sub_10000B3A8(v2[4], &qword_101697270, &qword_10138BDD0);

    return _swift_task_switch(sub_1003697C0, 0, 0);
  }

  else
  {
    sub_10000B3A8(v2[4], &qword_101697270, &qword_10138BDD0);
    v5 = (&async function pointer to dispatch thunk of Peripheral.cancelConnection() + async function pointer to dispatch thunk of Peripheral.cancelConnection());
    v3 = swift_task_alloc();
    v2[19] = v3;
    *v3 = v2;
    v3[1] = sub_100369350;

    return v5();
  }
}

uint64_t sub_100369350()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_10036986C;
  }

  else
  {
    v2 = sub_100369464;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100369464()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003694FC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100369584()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10036960C()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_100369934;
  }

  else
  {
    v2 = sub_100369720;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100369720(uint64_t a1)
{
  swift_willThrow();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_1003697C0()
{
  v0[21] = v0[18];
  v3 = (&async function pointer to dispatch thunk of Peripheral.cancelConnection() + async function pointer to dispatch thunk of Peripheral.cancelConnection());
  v1 = swift_task_alloc();
  v0[22] = v1;
  *v1 = v0;
  v1[1] = sub_10036960C;

  return v3();
}

uint64_t sub_10036986C()
{
  sub_10038B428(v0[2], type metadata accessor for RawAccessoryMetadata);
  v0[21] = v0[20];
  v3 = (&async function pointer to dispatch thunk of Peripheral.cancelConnection() + async function pointer to dispatch thunk of Peripheral.cancelConnection());
  v1 = swift_task_alloc();
  v0[22] = v1;
  *v1 = v0;
  v1[1] = sub_10036960C;

  return v3();
}

uint64_t sub_100369934()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003699D4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 200) = a4;
  *(v5 + 208) = a5;
  *(v5 + 1096) = a2;
  *(v5 + 184) = a1;
  *(v5 + 192) = a3;
  v6 = type metadata accessor for CentralManager.Error();
  *(v5 + 216) = v6;
  *(v5 + 224) = *(v6 - 8);
  *(v5 + 232) = swift_task_alloc();
  v7 = sub_1000BC4D4(&qword_1016973C8, &qword_1013B6210);
  *(v5 + 240) = v7;
  *(v5 + 248) = *(v7 - 8);
  *(v5 + 256) = swift_task_alloc();
  *(v5 + 264) = swift_task_alloc();
  *(v5 + 272) = swift_task_alloc();
  *(v5 + 280) = swift_task_alloc();
  *(v5 + 288) = swift_task_alloc();
  *(v5 + 296) = swift_task_alloc();
  *(v5 + 304) = swift_task_alloc();
  *(v5 + 312) = swift_task_alloc();
  *(v5 + 320) = swift_task_alloc();
  *(v5 + 328) = swift_task_alloc();
  v8 = sub_1000BC4D4(&qword_101697240, &unk_10138BDA0);
  *(v5 + 336) = v8;
  *(v5 + 344) = *(v8 - 8);
  *(v5 + 352) = swift_task_alloc();
  *(v5 + 360) = swift_task_alloc();
  *(v5 + 368) = swift_task_alloc();
  *(v5 + 376) = swift_task_alloc();
  *(v5 + 384) = swift_task_alloc();
  *(v5 + 392) = swift_task_alloc();
  *(v5 + 400) = swift_task_alloc();
  *(v5 + 408) = swift_task_alloc();
  *(v5 + 416) = swift_task_alloc();
  *(v5 + 424) = swift_task_alloc();
  *(v5 + 432) = swift_task_alloc();
  v9 = sub_1000BC4D4(&qword_101697248, &qword_1013DC4D0);
  *(v5 + 440) = v9;
  *(v5 + 448) = *(v9 - 8);
  *(v5 + 456) = swift_task_alloc();

  return _swift_task_switch(sub_100369CB8, 0, 0);
}

uint64_t sub_100369CB8()
{
  if (*(v0 + 1096) >= 2u)
  {
    type metadata accessor for Service();
    Identifier.init(stringLiteral:)();
    static Task<>.checkCancellation()();
    v4 = swift_task_alloc();
    *(v0 + 464) = v4;
    *v4 = v0;
    v4[1] = sub_100369FD8;
    v6 = *(v0 + 200);
    v5 = *(v0 + 208);

    return dispatch thunk of PeripheralProtocol.connect()(v6, v5);
  }

  else
  {
    sub_100101B58();
    swift_allocError();
    *v1 = 2;
    *(v1 + 8) = 0u;
    *(v1 + 24) = 0u;
    *(v1 + 40) = 11;
    swift_willThrow();

    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_100369FD8()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v2[134] = v0;
    v4 = swift_task_alloc();
    v2[135] = v4;
    *v4 = v3;
    v4[1] = sub_10036FF84;
    v5 = v2[26];
    v6 = v2[25];

    return dispatch thunk of PeripheralProtocol.cancelConnection()(v6, v5);
  }

  else
  {
    v7 = swift_task_alloc();
    v2[59] = v7;
    *v7 = v3;
    v7[1] = sub_10036A19C;
    v8 = v2[25];
    v9 = v2[26];
    v10 = v2[57];

    return dispatch thunk of PeripheralProtocol.subscript.getter(v10, v8, v9);
  }
}

uint64_t sub_10036A19C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[60] = a1;
  v3[61] = v1;

  if (v1)
  {
    v3[134] = v1;
    v5 = swift_task_alloc();
    v3[135] = v5;
    *v5 = v4;
    v5[1] = sub_10036FF84;
    v6 = v3[26];
    v7 = v3[25];

    return dispatch thunk of PeripheralProtocol.cancelConnection()(v7, v6);
  }

  else
  {

    return _swift_task_switch(sub_10036A328, 0, 0);
  }
}

uint64_t sub_10036A328(uint64_t a1)
{
  v2 = v1[61];
  static Task<>.checkCancellation()();
  if (v2)
  {
    swift_unknownObjectRelease();
    v1[134] = v2;
    v3 = swift_task_alloc();
    v1[135] = v3;
    *v3 = v1;
    v3[1] = sub_10036FF84;
    v5 = v1[25];
    v4 = v1[26];

    return dispatch thunk of PeripheralProtocol.cancelConnection()(v5, v4);
  }

  else
  {
    v6 = v1[43];
    sub_101123C58(0, 11, 0);
    type metadata accessor for Characteristic();
    for (i = 0; i != 11; ++i)
    {
      Identifier.init(stringLiteral:)();
      v9 = _swiftEmptyArrayStorage[2];
      v8 = _swiftEmptyArrayStorage[3];
      if (v9 >= v8 >> 1)
      {
        sub_101123C58((v8 > 1), v9 + 1, 1);
      }

      v1[62] = _swiftEmptyArrayStorage;
      v10 = v1[54];
      v11 = v1[42];
      _swiftEmptyArrayStorage[2] = v9 + 1;
      (*(v6 + 32))(_swiftEmptyArrayStorage + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v9, v10, v11);
    }

    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v1[63] = AssociatedTypeWitness;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v1[64] = AssociatedConformanceWitness;
    v14 = swift_task_alloc();
    v1[65] = v14;
    *v14 = v1;
    v14[1] = sub_10036A6B4;

    return dispatch thunk of ServiceProtocol.discover(characteristicIdentifiers:)(_swiftEmptyArrayStorage, AssociatedTypeWitness, AssociatedConformanceWitness);
  }
}

uint64_t sub_10036A6B4()
{
  *(*v1 + 528) = v0;

  if (v0)
  {
    v2 = sub_100370248;
  }

  else
  {

    v2 = sub_10036A7E8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10036A7E8(uint64_t a1)
{
  v2 = v1[66];
  static Task<>.checkCancellation()();
  if (v2)
  {
LABEL_2:
    swift_unknownObjectRelease();
    v1[134] = v2;
    v3 = swift_task_alloc();
    v1[135] = v3;
    *v3 = v1;
    v3[1] = sub_10036FF84;
    v5 = v1[25];
    v4 = v1[26];

    return dispatch thunk of PeripheralProtocol.cancelConnection()(v5, v4);
  }

  v6 = v1[24];
  if (v6 <= 4)
  {
    if (v6 > 1)
    {
      if (v6 == 2)
      {
        type metadata accessor for Characteristic();
        Identifier.init(stringLiteral:)();
        v16 = swift_task_alloc();
        v1[81] = v16;
        *v16 = v1;
        v16[1] = sub_10036BEB8;
        v8 = v1[63];
        v9 = v1[64];
        v10 = v1[51];
      }

      else if (v6 == 3)
      {
        type metadata accessor for Characteristic();
        Identifier.init(stringLiteral:)();
        v18 = swift_task_alloc();
        v1[88] = v18;
        *v18 = v1;
        v18[1] = sub_10036C6C8;
        v8 = v1[63];
        v9 = v1[64];
        v10 = v1[50];
      }

      else
      {
        type metadata accessor for Characteristic();
        Identifier.init(stringLiteral:)();
        v7 = swift_task_alloc();
        v1[95] = v7;
        *v7 = v1;
        v7[1] = sub_10036CED8;
        v8 = v1[63];
        v9 = v1[64];
        v10 = v1[49];
      }

      goto LABEL_26;
    }

    if (!v6)
    {
      type metadata accessor for Characteristic();
      Identifier.init(stringLiteral:)();
      v14 = swift_task_alloc();
      v1[67] = v14;
      *v14 = v1;
      v14[1] = sub_10036AE98;
      v8 = v1[63];
      v9 = v1[64];
      v10 = v1[53];
      goto LABEL_26;
    }

    if (v6 == 1)
    {
      type metadata accessor for Characteristic();
      Identifier.init(stringLiteral:)();
      v12 = swift_task_alloc();
      v1[74] = v12;
      *v12 = v1;
      v12[1] = sub_10036B6A8;
      v8 = v1[63];
      v9 = v1[64];
      v10 = v1[52];
      goto LABEL_26;
    }

LABEL_29:
    type metadata accessor for AccessoryMetadataManager.Error(0);
    sub_10038B3E0(&qword_10169E730, type metadata accessor for AccessoryMetadataManager.Error, &unk_10139DCD8);
    v20 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v2 = v20;
    goto LABEL_2;
  }

  if (v6 <= 6)
  {
    if (v6 == 5)
    {
      type metadata accessor for Characteristic();
      Identifier.init(stringLiteral:)();
      v15 = swift_task_alloc();
      v1[102] = v15;
      *v15 = v1;
      v15[1] = sub_10036D6E8;
      v8 = v1[63];
      v9 = v1[64];
      v10 = v1[48];
    }

    else
    {
      type metadata accessor for Characteristic();
      Identifier.init(stringLiteral:)();
      v13 = swift_task_alloc();
      v1[106] = v13;
      *v13 = v1;
      v13[1] = sub_10036DF44;
      v8 = v1[63];
      v9 = v1[64];
      v10 = v1[47];
    }

    goto LABEL_26;
  }

  if (v6 == 7)
  {
    type metadata accessor for Characteristic();
    Identifier.init(stringLiteral:)();
    v17 = swift_task_alloc();
    v1[113] = v17;
    *v17 = v1;
    v17[1] = sub_10036E754;
    v8 = v1[63];
    v9 = v1[64];
    v10 = v1[46];
    goto LABEL_26;
  }

  if (v6 == 8)
  {
    type metadata accessor for Characteristic();
    Identifier.init(stringLiteral:)();
    v19 = swift_task_alloc();
    v1[120] = v19;
    *v19 = v1;
    v19[1] = sub_10036EF64;
    v8 = v1[63];
    v9 = v1[64];
    v10 = v1[45];
    goto LABEL_26;
  }

  if (v6 != 9)
  {
    goto LABEL_29;
  }

  type metadata accessor for Characteristic();
  Identifier.init(stringLiteral:)();
  v11 = swift_task_alloc();
  v1[127] = v11;
  *v11 = v1;
  v11[1] = sub_10036F774;
  v8 = v1[63];
  v9 = v1[64];
  v10 = v1[44];
LABEL_26:

  return dispatch thunk of ServiceProtocol.subscript.getter(v10, v8, v9);
}

uint64_t sub_10036AE98(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[68] = a1;
  v3[69] = v1;

  if (v1)
  {
    (*(v3[43] + 8))(v3[53], v3[42]);

    return _swift_task_switch(sub_100370300, 0, 0);
  }

  else
  {
    (*(v3[43] + 8))(v3[53], v3[42]);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v7 = swift_task_alloc();
    v3[70] = v7;
    *v7 = v4;
    v7[1] = sub_10036B0B4;
    v8 = v3[41];

    return dispatch thunk of CharacteristicProtocol.read()(v8, AssociatedTypeWitness, AssociatedConformanceWitness);
  }
}

uint64_t sub_10036B0B4()
{
  v2 = *v1;
  v2[71] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1003703AC, 0, 0);
  }

  else
  {
    swift_unknownObjectRelease();
    v3 = swift_task_alloc();
    v2[72] = v3;
    v4 = sub_1000041A4(&qword_1016C11D0, &qword_1016973C8, &qword_1013B6210, &protocol conformance descriptor for AsyncThrowingStream<A, B>);
    *v3 = v2;
    v3[1] = sub_10036B278;
    v5 = v2[30];

    return AsyncSequence.first()(v2 + 20, v5, v4);
  }
}

uint64_t sub_10036B278()
{
  v2 = *v1;
  *(*v1 + 584) = v0;

  (*(v2[31] + 8))(v2[41], v2[30]);
  if (v0)
  {
    v3 = sub_100370464;
  }

  else
  {
    v3 = sub_10036B3E0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10036B3E0()
{
  v1 = v0[21];
  if (v1 >> 60 == 15)
  {
    type metadata accessor for AccessoryMetadataManager.Error(0);
    sub_10038B3E0(&qword_10169E730, type metadata accessor for AccessoryMetadataManager.Error, &unk_10139DCD8);
    v2 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    swift_unknownObjectRelease();
    v0[134] = v2;
    v3 = swift_task_alloc();
    v0[135] = v3;
    *v3 = v0;
    v3[1] = sub_10036FF84;
    v5 = v0[25];
    v4 = v0[26];

    return dispatch thunk of PeripheralProtocol.cancelConnection()(v5, v4);
  }

  else
  {
    v8 = v0[20];
    swift_unknownObjectRelease();
    (*(v0[56] + 8))(v0[57], v0[55]);

    v6 = v0[1];

    return v6(v8, v1);
  }
}

uint64_t sub_10036B6A8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[75] = a1;
  v3[76] = v1;

  if (v1)
  {
    (*(v3[43] + 8))(v3[52], v3[42]);

    return _swift_task_switch(sub_100370510, 0, 0);
  }

  else
  {
    (*(v3[43] + 8))(v3[52], v3[42]);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v7 = swift_task_alloc();
    v3[77] = v7;
    *v7 = v4;
    v7[1] = sub_10036B8C4;
    v8 = v3[40];

    return dispatch thunk of CharacteristicProtocol.read()(v8, AssociatedTypeWitness, AssociatedConformanceWitness);
  }
}

uint64_t sub_10036B8C4()
{
  v2 = *v1;
  v2[78] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1003705BC, 0, 0);
  }

  else
  {
    swift_unknownObjectRelease();
    v3 = swift_task_alloc();
    v2[79] = v3;
    v4 = sub_1000041A4(&qword_1016C11D0, &qword_1016973C8, &qword_1013B6210, &protocol conformance descriptor for AsyncThrowingStream<A, B>);
    *v3 = v2;
    v3[1] = sub_10036BA88;
    v5 = v2[30];

    return AsyncSequence.first()(v2 + 18, v5, v4);
  }
}

uint64_t sub_10036BA88()
{
  v2 = *v1;
  *(*v1 + 640) = v0;

  (*(v2[31] + 8))(v2[40], v2[30]);
  if (v0)
  {
    v3 = sub_100370674;
  }

  else
  {
    v3 = sub_10036BBF0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10036BBF0()
{
  v1 = v0[19];
  if (v1 >> 60 == 15)
  {
    type metadata accessor for AccessoryMetadataManager.Error(0);
    sub_10038B3E0(&qword_10169E730, type metadata accessor for AccessoryMetadataManager.Error, &unk_10139DCD8);
    v2 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    swift_unknownObjectRelease();
    v0[134] = v2;
    v3 = swift_task_alloc();
    v0[135] = v3;
    *v3 = v0;
    v3[1] = sub_10036FF84;
    v5 = v0[25];
    v4 = v0[26];

    return dispatch thunk of PeripheralProtocol.cancelConnection()(v5, v4);
  }

  else
  {
    v8 = v0[18];
    swift_unknownObjectRelease();
    (*(v0[56] + 8))(v0[57], v0[55]);

    v6 = v0[1];

    return v6(v8, v1);
  }
}

uint64_t sub_10036BEB8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[82] = a1;
  v3[83] = v1;

  if (v1)
  {
    (*(v3[43] + 8))(v3[51], v3[42]);

    return _swift_task_switch(sub_100370720, 0, 0);
  }

  else
  {
    (*(v3[43] + 8))(v3[51], v3[42]);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v7 = swift_task_alloc();
    v3[84] = v7;
    *v7 = v4;
    v7[1] = sub_10036C0D4;
    v8 = v3[39];

    return dispatch thunk of CharacteristicProtocol.read()(v8, AssociatedTypeWitness, AssociatedConformanceWitness);
  }
}

uint64_t sub_10036C0D4()
{
  v2 = *v1;
  v2[85] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1003707CC, 0, 0);
  }

  else
  {
    swift_unknownObjectRelease();
    v3 = swift_task_alloc();
    v2[86] = v3;
    v4 = sub_1000041A4(&qword_1016C11D0, &qword_1016973C8, &qword_1013B6210, &protocol conformance descriptor for AsyncThrowingStream<A, B>);
    *v3 = v2;
    v3[1] = sub_10036C298;
    v5 = v2[30];

    return AsyncSequence.first()(v2 + 16, v5, v4);
  }
}

uint64_t sub_10036C298()
{
  v2 = *v1;
  *(*v1 + 696) = v0;

  (*(v2[31] + 8))(v2[39], v2[30]);
  if (v0)
  {
    v3 = sub_100370884;
  }

  else
  {
    v3 = sub_10036C400;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10036C400()
{
  v1 = v0[17];
  if (v1 >> 60 == 15)
  {
    type metadata accessor for AccessoryMetadataManager.Error(0);
    sub_10038B3E0(&qword_10169E730, type metadata accessor for AccessoryMetadataManager.Error, &unk_10139DCD8);
    v2 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    swift_unknownObjectRelease();
    v0[134] = v2;
    v3 = swift_task_alloc();
    v0[135] = v3;
    *v3 = v0;
    v3[1] = sub_10036FF84;
    v5 = v0[25];
    v4 = v0[26];

    return dispatch thunk of PeripheralProtocol.cancelConnection()(v5, v4);
  }

  else
  {
    v8 = v0[16];
    swift_unknownObjectRelease();
    (*(v0[56] + 8))(v0[57], v0[55]);

    v6 = v0[1];

    return v6(v8, v1);
  }
}

uint64_t sub_10036C6C8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[89] = a1;
  v3[90] = v1;

  if (v1)
  {
    (*(v3[43] + 8))(v3[50], v3[42]);

    return _swift_task_switch(sub_100370930, 0, 0);
  }

  else
  {
    (*(v3[43] + 8))(v3[50], v3[42]);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v7 = swift_task_alloc();
    v3[91] = v7;
    *v7 = v4;
    v7[1] = sub_10036C8E4;
    v8 = v3[38];

    return dispatch thunk of CharacteristicProtocol.read()(v8, AssociatedTypeWitness, AssociatedConformanceWitness);
  }
}

uint64_t sub_10036C8E4()
{
  v2 = *v1;
  v2[92] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1003709DC, 0, 0);
  }

  else
  {
    swift_unknownObjectRelease();
    v3 = swift_task_alloc();
    v2[93] = v3;
    v4 = sub_1000041A4(&qword_1016C11D0, &qword_1016973C8, &qword_1013B6210, &protocol conformance descriptor for AsyncThrowingStream<A, B>);
    *v3 = v2;
    v3[1] = sub_10036CAA8;
    v5 = v2[30];

    return AsyncSequence.first()(v2 + 14, v5, v4);
  }
}

uint64_t sub_10036CAA8()
{
  v2 = *v1;
  *(*v1 + 752) = v0;

  (*(v2[31] + 8))(v2[38], v2[30]);
  if (v0)
  {
    v3 = sub_100370A94;
  }

  else
  {
    v3 = sub_10036CC10;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10036CC10()
{
  v1 = v0[15];
  if (v1 >> 60 == 15)
  {
    type metadata accessor for AccessoryMetadataManager.Error(0);
    sub_10038B3E0(&qword_10169E730, type metadata accessor for AccessoryMetadataManager.Error, &unk_10139DCD8);
    v2 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    swift_unknownObjectRelease();
    v0[134] = v2;
    v3 = swift_task_alloc();
    v0[135] = v3;
    *v3 = v0;
    v3[1] = sub_10036FF84;
    v5 = v0[25];
    v4 = v0[26];

    return dispatch thunk of PeripheralProtocol.cancelConnection()(v5, v4);
  }

  else
  {
    v8 = v0[14];
    swift_unknownObjectRelease();
    (*(v0[56] + 8))(v0[57], v0[55]);

    v6 = v0[1];

    return v6(v8, v1);
  }
}

uint64_t sub_10036CED8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[96] = a1;
  v3[97] = v1;

  if (v1)
  {
    (*(v3[43] + 8))(v3[49], v3[42]);

    return _swift_task_switch(sub_100370B40, 0, 0);
  }

  else
  {
    (*(v3[43] + 8))(v3[49], v3[42]);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v7 = swift_task_alloc();
    v3[98] = v7;
    *v7 = v4;
    v7[1] = sub_10036D0F4;
    v8 = v3[37];

    return dispatch thunk of CharacteristicProtocol.read()(v8, AssociatedTypeWitness, AssociatedConformanceWitness);
  }
}

uint64_t sub_10036D0F4()
{
  v2 = *v1;
  v2[99] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100370BEC, 0, 0);
  }

  else
  {
    swift_unknownObjectRelease();
    v3 = swift_task_alloc();
    v2[100] = v3;
    v4 = sub_1000041A4(&qword_1016C11D0, &qword_1016973C8, &qword_1013B6210, &protocol conformance descriptor for AsyncThrowingStream<A, B>);
    *v3 = v2;
    v3[1] = sub_10036D2B8;
    v5 = v2[30];

    return AsyncSequence.first()(v2 + 12, v5, v4);
  }
}

uint64_t sub_10036D2B8()
{
  v2 = *v1;
  *(*v1 + 808) = v0;

  (*(v2[31] + 8))(v2[37], v2[30]);
  if (v0)
  {
    v3 = sub_100370CA4;
  }

  else
  {
    v3 = sub_10036D420;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10036D420()
{
  v1 = v0[13];
  if (v1 >> 60 == 15)
  {
    type metadata accessor for AccessoryMetadataManager.Error(0);
    sub_10038B3E0(&qword_10169E730, type metadata accessor for AccessoryMetadataManager.Error, &unk_10139DCD8);
    v2 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    swift_unknownObjectRelease();
    v0[134] = v2;
    v3 = swift_task_alloc();
    v0[135] = v3;
    *v3 = v0;
    v3[1] = sub_10036FF84;
    v5 = v0[25];
    v4 = v0[26];

    return dispatch thunk of PeripheralProtocol.cancelConnection()(v5, v4);
  }

  else
  {
    v8 = v0[12];
    swift_unknownObjectRelease();
    (*(v0[56] + 8))(v0[57], v0[55]);

    v6 = v0[1];

    return v6(v8, v1);
  }
}

uint64_t sub_10036D6E8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 824) = a1;

  if (v1)
  {
    v5 = v3[48];
    v6 = v3[42];
    v7 = v3[43];

    (*(v7 + 8))(v5, v6);

    return _swift_task_switch(sub_100370D50, 0, 0);
  }

  else
  {
    (*(v3[43] + 8))(v3[48], v3[42]);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v10 = swift_task_alloc();
    v3[104] = v10;
    *v10 = v4;
    v10[1] = sub_10036D910;
    v11 = v3[36];

    return dispatch thunk of CharacteristicProtocol.read()(v11, AssociatedTypeWitness, AssociatedConformanceWitness);
  }
}

uint64_t sub_10036D910()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    swift_unknownObjectRelease();

    return _swift_task_switch(sub_10038C488, 0, 0);
  }

  else
  {
    swift_unknownObjectRelease();
    v4 = swift_task_alloc();
    *(v2 + 840) = v4;
    v5 = sub_1000041A4(&qword_1016C11D0, &qword_1016973C8, &qword_1013B6210, &protocol conformance descriptor for AsyncThrowingStream<A, B>);
    *v4 = v3;
    v4[1] = sub_10036DAE4;
    v6 = *(v2 + 240);

    return AsyncSequence.first()(v2 + 80, v6, v5);
  }
}

uint64_t sub_10036DAE4()
{
  v2 = *v1;

  v3 = v2[36];
  v4 = v2[31];
  v5 = v2[30];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = sub_10038C488;
  }

  else
  {
    (*(v4 + 8))(v3, v5);
    v6 = sub_10036DC7C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10036DC7C()
{
  v1 = v0[11];
  if (v1 >> 60 == 15)
  {
    type metadata accessor for AccessoryMetadataManager.Error(0);
    sub_10038B3E0(&qword_10169E730, type metadata accessor for AccessoryMetadataManager.Error, &unk_10139DCD8);
    v2 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    swift_unknownObjectRelease();
    v0[134] = v2;
    v3 = swift_task_alloc();
    v0[135] = v3;
    *v3 = v0;
    v3[1] = sub_10036FF84;
    v5 = v0[25];
    v4 = v0[26];

    return dispatch thunk of PeripheralProtocol.cancelConnection()(v5, v4);
  }

  else
  {
    v8 = v0[10];
    swift_unknownObjectRelease();
    (*(v0[56] + 8))(v0[57], v0[55]);

    v6 = v0[1];

    return v6(v8, v1);
  }
}

uint64_t sub_10036DF44(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[107] = a1;
  v3[108] = v1;

  if (v1)
  {
    (*(v3[43] + 8))(v3[47], v3[42]);

    return _swift_task_switch(sub_100370E7C, 0, 0);
  }

  else
  {
    (*(v3[43] + 8))(v3[47], v3[42]);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v7 = swift_task_alloc();
    v3[109] = v7;
    *v7 = v4;
    v7[1] = sub_10036E160;
    v8 = v3[35];

    return dispatch thunk of CharacteristicProtocol.read()(v8, AssociatedTypeWitness, AssociatedConformanceWitness);
  }
}

uint64_t sub_10036E160()
{
  v2 = *v1;
  v2[110] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100370F28, 0, 0);
  }

  else
  {
    swift_unknownObjectRelease();
    v3 = swift_task_alloc();
    v2[111] = v3;
    v4 = sub_1000041A4(&qword_1016C11D0, &qword_1016973C8, &qword_1013B6210, &protocol conformance descriptor for AsyncThrowingStream<A, B>);
    *v3 = v2;
    v3[1] = sub_10036E324;
    v5 = v2[30];

    return AsyncSequence.first()(v2 + 8, v5, v4);
  }
}

uint64_t sub_10036E324()
{
  v2 = *v1;
  *(*v1 + 896) = v0;

  (*(v2[31] + 8))(v2[35], v2[30]);
  if (v0)
  {
    v3 = sub_100370FE0;
  }

  else
  {
    v3 = sub_10036E48C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10036E48C()
{
  v1 = v0[9];
  if (v1 >> 60 == 15)
  {
    type metadata accessor for AccessoryMetadataManager.Error(0);
    sub_10038B3E0(&qword_10169E730, type metadata accessor for AccessoryMetadataManager.Error, &unk_10139DCD8);
    v2 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    swift_unknownObjectRelease();
    v0[134] = v2;
    v3 = swift_task_alloc();
    v0[135] = v3;
    *v3 = v0;
    v3[1] = sub_10036FF84;
    v5 = v0[25];
    v4 = v0[26];

    return dispatch thunk of PeripheralProtocol.cancelConnection()(v5, v4);
  }

  else
  {
    v8 = v0[8];
    swift_unknownObjectRelease();
    (*(v0[56] + 8))(v0[57], v0[55]);

    v6 = v0[1];

    return v6(v8, v1);
  }
}

uint64_t sub_10036E754(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[114] = a1;
  v3[115] = v1;

  if (v1)
  {
    (*(v3[43] + 8))(v3[46], v3[42]);

    return _swift_task_switch(sub_10037108C, 0, 0);
  }

  else
  {
    (*(v3[43] + 8))(v3[46], v3[42]);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v7 = swift_task_alloc();
    v3[116] = v7;
    *v7 = v4;
    v7[1] = sub_10036E970;
    v8 = v3[34];

    return dispatch thunk of CharacteristicProtocol.read()(v8, AssociatedTypeWitness, AssociatedConformanceWitness);
  }
}

uint64_t sub_10036E970()
{
  v2 = *v1;
  v2[117] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100371138, 0, 0);
  }

  else
  {
    swift_unknownObjectRelease();
    v3 = swift_task_alloc();
    v2[118] = v3;
    v4 = sub_1000041A4(&qword_1016C11D0, &qword_1016973C8, &qword_1013B6210, &protocol conformance descriptor for AsyncThrowingStream<A, B>);
    *v3 = v2;
    v3[1] = sub_10036EB34;
    v5 = v2[30];

    return AsyncSequence.first()(v2 + 6, v5, v4);
  }
}

uint64_t sub_10036EB34()
{
  v2 = *v1;
  *(*v1 + 952) = v0;

  (*(v2[31] + 8))(v2[34], v2[30]);
  if (v0)
  {
    v3 = sub_1003711F0;
  }

  else
  {
    v3 = sub_10036EC9C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10036EC9C()
{
  v1 = v0[7];
  if (v1 >> 60 == 15)
  {
    type metadata accessor for AccessoryMetadataManager.Error(0);
    sub_10038B3E0(&qword_10169E730, type metadata accessor for AccessoryMetadataManager.Error, &unk_10139DCD8);
    v2 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    swift_unknownObjectRelease();
    v0[134] = v2;
    v3 = swift_task_alloc();
    v0[135] = v3;
    *v3 = v0;
    v3[1] = sub_10036FF84;
    v5 = v0[25];
    v4 = v0[26];

    return dispatch thunk of PeripheralProtocol.cancelConnection()(v5, v4);
  }

  else
  {
    v8 = v0[6];
    swift_unknownObjectRelease();
    (*(v0[56] + 8))(v0[57], v0[55]);

    v6 = v0[1];

    return v6(v8, v1);
  }
}

uint64_t sub_10036EF64(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[121] = a1;
  v3[122] = v1;

  if (v1)
  {
    (*(v3[43] + 8))(v3[45], v3[42]);

    return _swift_task_switch(sub_10037129C, 0, 0);
  }

  else
  {
    (*(v3[43] + 8))(v3[45], v3[42]);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v7 = swift_task_alloc();
    v3[123] = v7;
    *v7 = v4;
    v7[1] = sub_10036F180;
    v8 = v3[33];

    return dispatch thunk of CharacteristicProtocol.read()(v8, AssociatedTypeWitness, AssociatedConformanceWitness);
  }
}

uint64_t sub_10036F180()
{
  v2 = *v1;
  v2[124] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100371348, 0, 0);
  }

  else
  {
    swift_unknownObjectRelease();
    v3 = swift_task_alloc();
    v2[125] = v3;
    v4 = sub_1000041A4(&qword_1016C11D0, &qword_1016973C8, &qword_1013B6210, &protocol conformance descriptor for AsyncThrowingStream<A, B>);
    *v3 = v2;
    v3[1] = sub_10036F344;
    v5 = v2[30];

    return AsyncSequence.first()(v2 + 4, v5, v4);
  }
}

uint64_t sub_10036F344()
{
  v2 = *v1;
  *(*v1 + 1008) = v0;

  (*(v2[31] + 8))(v2[33], v2[30]);
  if (v0)
  {
    v3 = sub_100371400;
  }

  else
  {
    v3 = sub_10036F4AC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10036F4AC()
{
  v1 = v0[5];
  if (v1 >> 60 == 15)
  {
    type metadata accessor for AccessoryMetadataManager.Error(0);
    sub_10038B3E0(&qword_10169E730, type metadata accessor for AccessoryMetadataManager.Error, &unk_10139DCD8);
    v2 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    swift_unknownObjectRelease();
    v0[134] = v2;
    v3 = swift_task_alloc();
    v0[135] = v3;
    *v3 = v0;
    v3[1] = sub_10036FF84;
    v5 = v0[25];
    v4 = v0[26];

    return dispatch thunk of PeripheralProtocol.cancelConnection()(v5, v4);
  }

  else
  {
    v8 = v0[4];
    swift_unknownObjectRelease();
    (*(v0[56] + 8))(v0[57], v0[55]);

    v6 = v0[1];

    return v6(v8, v1);
  }
}

uint64_t sub_10036F774(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[128] = a1;
  v3[129] = v1;

  if (v1)
  {
    (*(v3[43] + 8))(v3[44], v3[42]);

    return _swift_task_switch(sub_1003714AC, 0, 0);
  }

  else
  {
    (*(v3[43] + 8))(v3[44], v3[42]);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v7 = swift_task_alloc();
    v3[130] = v7;
    *v7 = v4;
    v7[1] = sub_10036F990;
    v8 = v3[32];

    return dispatch thunk of CharacteristicProtocol.read()(v8, AssociatedTypeWitness, AssociatedConformanceWitness);
  }
}

uint64_t sub_10036F990()
{
  v2 = *v1;
  v2[131] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1003717A8, 0, 0);
  }

  else
  {
    swift_unknownObjectRelease();
    v3 = swift_task_alloc();
    v2[132] = v3;
    v4 = sub_1000041A4(&qword_1016C11D0, &qword_1016973C8, &qword_1013B6210, &protocol conformance descriptor for AsyncThrowingStream<A, B>);
    *v3 = v2;
    v3[1] = sub_10036FB54;
    v5 = v2[30];

    return AsyncSequence.first()(v2 + 2, v5, v4);
  }
}

uint64_t sub_10036FB54()
{
  v2 = *v1;
  *(*v1 + 1064) = v0;

  (*(v2[31] + 8))(v2[32], v2[30]);
  if (v0)
  {
    v3 = sub_100371AAC;
  }

  else
  {
    v3 = sub_10036FCBC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10036FCBC()
{
  v1 = v0[3];
  if (v1 >> 60 == 15)
  {
    type metadata accessor for AccessoryMetadataManager.Error(0);
    sub_10038B3E0(&qword_10169E730, type metadata accessor for AccessoryMetadataManager.Error, &unk_10139DCD8);
    v2 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    swift_unknownObjectRelease();
    v0[134] = v2;
    v3 = swift_task_alloc();
    v0[135] = v3;
    *v3 = v0;
    v3[1] = sub_10036FF84;
    v5 = v0[25];
    v4 = v0[26];

    return dispatch thunk of PeripheralProtocol.cancelConnection()(v5, v4);
  }

  else
  {
    v8 = v0[2];
    swift_unknownObjectRelease();
    (*(v0[56] + 8))(v0[57], v0[55]);

    v6 = v0[1];

    return v6(v8, v1);
  }
}

uint64_t sub_10036FF84()
{
  *(*v1 + 1088) = v0;

  if (v0)
  {
    v2 = sub_100371DA8;
  }

  else
  {
    v2 = sub_100370098;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100370098(uint64_t a1)
{
  v3 = v1[56];
  v2 = v1[57];
  v4 = v1[55];
  swift_willThrow();
  (*(v3 + 8))(v2, v4);

  v5 = v1[1];

  return v5();
}

uint64_t sub_100370248()
{

  swift_unknownObjectRelease();
  v0[134] = v0[66];
  v1 = swift_task_alloc();
  v0[135] = v1;
  *v1 = v0;
  v1[1] = sub_10036FF84;
  v3 = v0[25];
  v2 = v0[26];

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v3, v2);
}

uint64_t sub_100370300()
{
  swift_unknownObjectRelease();
  v0[134] = v0[69];
  v1 = swift_task_alloc();
  v0[135] = v1;
  *v1 = v0;
  v1[1] = sub_10036FF84;
  v3 = v0[25];
  v2 = v0[26];

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v3, v2);
}

uint64_t sub_1003703AC()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v0[134] = v0[71];
  v1 = swift_task_alloc();
  v0[135] = v1;
  *v1 = v0;
  v1[1] = sub_10036FF84;
  v3 = v0[25];
  v2 = v0[26];

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v3, v2);
}

uint64_t sub_100370464()
{
  swift_unknownObjectRelease();
  v0[134] = v0[73];
  v1 = swift_task_alloc();
  v0[135] = v1;
  *v1 = v0;
  v1[1] = sub_10036FF84;
  v3 = v0[25];
  v2 = v0[26];

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v3, v2);
}

uint64_t sub_100370510()
{
  swift_unknownObjectRelease();
  v0[134] = v0[76];
  v1 = swift_task_alloc();
  v0[135] = v1;
  *v1 = v0;
  v1[1] = sub_10036FF84;
  v3 = v0[25];
  v2 = v0[26];

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v3, v2);
}

uint64_t sub_1003705BC()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v0[134] = v0[78];
  v1 = swift_task_alloc();
  v0[135] = v1;
  *v1 = v0;
  v1[1] = sub_10036FF84;
  v3 = v0[25];
  v2 = v0[26];

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v3, v2);
}

uint64_t sub_100370674()
{
  swift_unknownObjectRelease();
  v0[134] = v0[80];
  v1 = swift_task_alloc();
  v0[135] = v1;
  *v1 = v0;
  v1[1] = sub_10036FF84;
  v3 = v0[25];
  v2 = v0[26];

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v3, v2);
}

uint64_t sub_100370720()
{
  swift_unknownObjectRelease();
  v0[134] = v0[83];
  v1 = swift_task_alloc();
  v0[135] = v1;
  *v1 = v0;
  v1[1] = sub_10036FF84;
  v3 = v0[25];
  v2 = v0[26];

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v3, v2);
}

uint64_t sub_1003707CC()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v0[134] = v0[85];
  v1 = swift_task_alloc();
  v0[135] = v1;
  *v1 = v0;
  v1[1] = sub_10036FF84;
  v3 = v0[25];
  v2 = v0[26];

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v3, v2);
}

uint64_t sub_100370884()
{
  swift_unknownObjectRelease();
  v0[134] = v0[87];
  v1 = swift_task_alloc();
  v0[135] = v1;
  *v1 = v0;
  v1[1] = sub_10036FF84;
  v3 = v0[25];
  v2 = v0[26];

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v3, v2);
}

uint64_t sub_100370930()
{
  swift_unknownObjectRelease();
  v0[134] = v0[90];
  v1 = swift_task_alloc();
  v0[135] = v1;
  *v1 = v0;
  v1[1] = sub_10036FF84;
  v3 = v0[25];
  v2 = v0[26];

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v3, v2);
}

uint64_t sub_1003709DC()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v0[134] = v0[92];
  v1 = swift_task_alloc();
  v0[135] = v1;
  *v1 = v0;
  v1[1] = sub_10036FF84;
  v3 = v0[25];
  v2 = v0[26];

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v3, v2);
}

uint64_t sub_100370A94()
{
  swift_unknownObjectRelease();
  v0[134] = v0[94];
  v1 = swift_task_alloc();
  v0[135] = v1;
  *v1 = v0;
  v1[1] = sub_10036FF84;
  v3 = v0[25];
  v2 = v0[26];

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v3, v2);
}

uint64_t sub_100370B40()
{
  swift_unknownObjectRelease();
  v0[134] = v0[97];
  v1 = swift_task_alloc();
  v0[135] = v1;
  *v1 = v0;
  v1[1] = sub_10036FF84;
  v3 = v0[25];
  v2 = v0[26];

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v3, v2);
}

uint64_t sub_100370BEC()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v0[134] = v0[99];
  v1 = swift_task_alloc();
  v0[135] = v1;
  *v1 = v0;
  v1[1] = sub_10036FF84;
  v3 = v0[25];
  v2 = v0[26];

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v3, v2);
}

uint64_t sub_100370CA4()
{
  swift_unknownObjectRelease();
  v0[134] = v0[101];
  v1 = swift_task_alloc();
  v0[135] = v1;
  *v1 = v0;
  v1[1] = sub_10036FF84;
  v3 = v0[25];
  v2 = v0[26];

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v3, v2);
}

uint64_t sub_100370D50()
{
  type metadata accessor for AccessoryMetadataManager.Error(0);
  sub_10038B3E0(&qword_10169E730, type metadata accessor for AccessoryMetadataManager.Error, &unk_10139DCD8);
  v1 = swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  swift_unknownObjectRelease();
  v0[134] = v1;
  v2 = swift_task_alloc();
  v0[135] = v2;
  *v2 = v0;
  v2[1] = sub_10036FF84;
  v4 = v0[25];
  v3 = v0[26];

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v4, v3);
}

uint64_t sub_100370E7C()
{
  swift_unknownObjectRelease();
  v0[134] = v0[108];
  v1 = swift_task_alloc();
  v0[135] = v1;
  *v1 = v0;
  v1[1] = sub_10036FF84;
  v3 = v0[25];
  v2 = v0[26];

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v3, v2);
}

uint64_t sub_100370F28()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v0[134] = v0[110];
  v1 = swift_task_alloc();
  v0[135] = v1;
  *v1 = v0;
  v1[1] = sub_10036FF84;
  v3 = v0[25];
  v2 = v0[26];

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v3, v2);
}

uint64_t sub_100370FE0()
{
  swift_unknownObjectRelease();
  v0[134] = v0[112];
  v1 = swift_task_alloc();
  v0[135] = v1;
  *v1 = v0;
  v1[1] = sub_10036FF84;
  v3 = v0[25];
  v2 = v0[26];

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v3, v2);
}

uint64_t sub_10037108C()
{
  swift_unknownObjectRelease();
  v0[134] = v0[115];
  v1 = swift_task_alloc();
  v0[135] = v1;
  *v1 = v0;
  v1[1] = sub_10036FF84;
  v3 = v0[25];
  v2 = v0[26];

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v3, v2);
}

uint64_t sub_100371138()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v0[134] = v0[117];
  v1 = swift_task_alloc();
  v0[135] = v1;
  *v1 = v0;
  v1[1] = sub_10036FF84;
  v3 = v0[25];
  v2 = v0[26];

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v3, v2);
}

uint64_t sub_1003711F0()
{
  swift_unknownObjectRelease();
  v0[134] = v0[119];
  v1 = swift_task_alloc();
  v0[135] = v1;
  *v1 = v0;
  v1[1] = sub_10036FF84;
  v3 = v0[25];
  v2 = v0[26];

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v3, v2);
}

uint64_t sub_10037129C()
{
  swift_unknownObjectRelease();
  v0[134] = v0[122];
  v1 = swift_task_alloc();
  v0[135] = v1;
  *v1 = v0;
  v1[1] = sub_10036FF84;
  v3 = v0[25];
  v2 = v0[26];

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v3, v2);
}

uint64_t sub_100371348()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v0[134] = v0[124];
  v1 = swift_task_alloc();
  v0[135] = v1;
  *v1 = v0;
  v1[1] = sub_10036FF84;
  v3 = v0[25];
  v2 = v0[26];

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v3, v2);
}

uint64_t sub_100371400()
{
  swift_unknownObjectRelease();
  v0[134] = v0[126];
  v1 = swift_task_alloc();
  v0[135] = v1;
  *v1 = v0;
  v1[1] = sub_10036FF84;
  v3 = v0[25];
  v2 = v0[26];

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v3, v2);
}

uint64_t sub_1003714AC()
{
  v1 = v0[129];
  v0[22] = v1;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  if (swift_dynamicCast())
  {
    if ((*(v0[28] + 88))(v0[29], v0[27]) == enum case for CentralManager.Error.missingCharacteristic(_:))
    {

      swift_unknownObjectRelease();
      (*(v0[56] + 8))(v0[57], v0[55]);

      v2 = v0[1];

      return v2(0, 0xC000000000000000);
    }

    v5 = v0[28];
    v4 = v0[29];
    v6 = v0[27];
    swift_unknownObjectRelease();
    (*(v5 + 8))(v4, v6);
  }

  else
  {
    swift_unknownObjectRelease();
  }

  v0[134] = v1;
  v7 = swift_task_alloc();
  v0[135] = v7;
  *v7 = v0;
  v7[1] = sub_10036FF84;
  v9 = v0[25];
  v8 = v0[26];

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v9, v8);
}

uint64_t sub_1003717A8()
{
  swift_unknownObjectRelease();
  v1 = v0[131];
  v0[22] = v1;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  if (swift_dynamicCast())
  {
    if ((*(v0[28] + 88))(v0[29], v0[27]) == enum case for CentralManager.Error.missingCharacteristic(_:))
    {

      swift_unknownObjectRelease();
      (*(v0[56] + 8))(v0[57], v0[55]);

      v2 = v0[1];

      return v2(0, 0xC000000000000000);
    }

    v5 = v0[28];
    v4 = v0[29];
    v6 = v0[27];
    swift_unknownObjectRelease();
    (*(v5 + 8))(v4, v6);
  }

  else
  {
    swift_unknownObjectRelease();
  }

  v0[134] = v1;
  v7 = swift_task_alloc();
  v0[135] = v7;
  *v7 = v0;
  v7[1] = sub_10036FF84;
  v9 = v0[25];
  v8 = v0[26];

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v9, v8);
}

uint64_t sub_100371AAC()
{
  v1 = v0[133];
  v0[22] = v1;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  if (swift_dynamicCast())
  {
    if ((*(v0[28] + 88))(v0[29], v0[27]) == enum case for CentralManager.Error.missingCharacteristic(_:))
    {

      swift_unknownObjectRelease();
      (*(v0[56] + 8))(v0[57], v0[55]);

      v2 = v0[1];

      return v2(0, 0xC000000000000000);
    }

    v5 = v0[28];
    v4 = v0[29];
    v6 = v0[27];
    swift_unknownObjectRelease();
    (*(v5 + 8))(v4, v6);
  }

  else
  {
    swift_unknownObjectRelease();
  }

  v0[134] = v1;
  v7 = swift_task_alloc();
  v0[135] = v7;
  *v7 = v0;
  v7[1] = sub_10036FF84;
  v9 = v0[25];
  v8 = v0[26];

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v9, v8);
}

uint64_t sub_100371DA8()
{
  if (qword_101695010 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177C348);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138543362;
    v6 = _convertErrorToNSError(_:)();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "cancelConnection error in readRawAccessoryMetadata() catch block: %{public}@", v4, 0xCu);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v8 = v0[56];
  v7 = v0[57];
  v9 = v0[55];
  swift_willThrow();
  (*(v8 + 8))(v7, v9);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10037208C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for MACAddress();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v3[7] = *(v5 + 64);
  v3[8] = swift_task_alloc();

  return _swift_task_switch(sub_100372158, 0, 0);
}

uint64_t sub_100372158()
{
  if (qword_1016946A8 != -1)
  {
    swift_once();
  }

  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[4];
  (*(v4 + 16))(v1, v0[3], v3);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = (v2 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = swift_allocObject();
  v0[9] = v8;
  (*(v4 + 32))(v8 + v6, v1, v3);
  *(v8 + v7) = v5;
  v13 = (&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult<A>(_:) + async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult<A>(_:));
  v9 = swift_task_alloc();
  v0[10] = v9;
  v10 = type metadata accessor for AccessoryMetadata(0);
  *v9 = v0;
  v9[1] = sub_1003722F4;
  v11 = v0[2];

  return v13(v11, &unk_10139DAD0, v8, v10);
}

uint64_t sub_1003722F4()
{
  v2 = *v1;
  *(v2 + 88) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10038C434, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_10037243C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for MACAddress();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v3[7] = *(v5 + 64);
  v3[8] = swift_task_alloc();

  return _swift_task_switch(sub_100372508, 0, 0);
}

uint64_t sub_100372508()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[4];
  (*(v4 + 16))(v1, v0[3], v3);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = (v2 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = swift_allocObject();
  v0[9] = v8;
  (*(v4 + 32))(v8 + v6, v1, v3);
  *(v8 + v7) = v5;
  v9 = swift_task_alloc();
  v0[10] = v9;
  v10 = type metadata accessor for AccessoryMetadata(0);
  *v9 = v0;
  v9[1] = sub_100372668;
  v11 = v0[2];

  return withTimeout<A>(_:block:)(v11, 0x40AAD21B3B700000, 3, &unk_10139DAE0, v8, v10);
}

uint64_t sub_100372668()
{
  v2 = *v1;
  *(v2 + 88) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1003727B0, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1003727B0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10037281C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = type metadata accessor for CentralManager.State();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  sub_1000BC4D4(&unk_1016C1200, &qword_1013B6240);
  v3[9] = swift_task_alloc();
  v5 = type metadata accessor for MACAddress();
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();

  return _swift_task_switch(sub_100372974, 0, 0);
}

uint64_t sub_100372974()
{
  v24 = v0;
  if (qword_1016946A0 != -1)
  {
    swift_once();
  }

  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v4 = v0[4];
  v5 = type metadata accessor for Logger();
  v0[13] = sub_1000076D4(v5, qword_10169E3B0);
  v6 = *(v2 + 16);
  v0[14] = v6;
  v0[15] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v3);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[11];
  v10 = v0[12];
  v12 = v0[10];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v13 = 136446466;
    *(v13 + 4) = sub_1000136BC(0xD000000000000031, 0x80000001013516D0, &v23);
    *(v13 + 12) = 2082;
    sub_10038B3E0(&qword_1016A4210, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v11 + 8))(v10, v12);
    v17 = sub_1000136BC(v14, v16, &v23);

    *(v13 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s for address %{public}s", v13, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v18 = v0[9];
  v0[16] = type metadata accessor for CentralManager();
  v19 = type metadata accessor for CentralManager.Options();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  v20 = swift_task_alloc();
  v0[17] = v20;
  *v20 = v0;
  v20[1] = sub_100372C8C;
  v21 = v0[9];

  return CentralManager.__allocating_init(options:)(v21);
}

uint64_t sub_100372C8C(uint64_t a1)
{
  *(*v1 + 144) = a1;

  return _swift_task_switch(sub_100372D8C, 0, 0);
}

uint64_t sub_100372D8C()
{
  (*(v0[7] + 104))(v0[8], enum case for CentralManager.State.poweredOn(_:), v0[6]);
  v1 = swift_task_alloc();
  v0[19] = v1;
  v2 = sub_10038B3E0(&unk_1016C1160, &type metadata accessor for CentralManager, &protocol conformance descriptor for CentralManager);
  *v1 = v0;
  v1[1] = sub_100372E88;
  v3 = v0[16];
  v4 = v0[8];

  return CentralManagerProtocol.await(state:)(v4, v3, v2);
}

uint64_t sub_100372E88()
{
  v2 = *v1;
  v3 = *v1;
  v2[20] = v0;

  v4 = v2[8];
  v5 = v2[7];
  v6 = v2[6];
  if (v0)
  {
    (*(v5 + 8))(v4, v6);

    return _swift_task_switch(sub_100373674, 0, 0);
  }

  else
  {
    (*(v5 + 8))(v4, v6);
    v10 = (&async function pointer to dispatch thunk of CentralManager.retrievePeripheral(macAddress:) + async function pointer to dispatch thunk of CentralManager.retrievePeripheral(macAddress:));
    v7 = swift_task_alloc();
    v2[21] = v7;
    *v7 = v3;
    v7[1] = sub_100373080;
    v8 = v2[4];

    return v10(v8);
  }
}

uint64_t sub_100373080(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 176) = a1;
  *(v3 + 184) = v1;

  if (v1)
  {
    v4 = sub_1003736FC;
  }

  else
  {
    v4 = sub_100373194;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100373194()
{
  v17 = v0;
  v1 = v0[22];
  if (v1)
  {

    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v16[0] = swift_slowAlloc();
      *v4 = 136446466;
      *(v4 + 4) = sub_1000136BC(0xD000000000000031, 0x80000001013516D0, v16);
      *(v4 + 12) = 2082;
      v0[2] = v1;
      type metadata accessor for Peripheral();
      sub_10038B3E0(&qword_1016972D0, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
      v5 = dispatch thunk of CustomStringConvertible.description.getter();
      v7 = sub_1000136BC(v5, v6, v16);

      *(v4 + 14) = v7;
      _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s Retrieved peripheral: %{public}s", v4, 0x16u);
      swift_arrayDestroy();
    }

    v8 = swift_task_alloc();
    v0[24] = v8;
    *v8 = v0;
    v8[1] = sub_1003734C8;
    v9 = v0[3];

    return sub_100373818(v9, v1);
  }

  else
  {
    v11 = v0[14];
    v12 = v0[10];
    v13 = v0[4];
    type metadata accessor for AccessoryMetadataManager.Error(0);
    sub_10038B3E0(&qword_10169E730, type metadata accessor for AccessoryMetadataManager.Error, &unk_10139DCD8);
    swift_allocError();
    v11(v14, v13, v12);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_1003734C8()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_100373784;
  }

  else
  {
    v2 = sub_1003735DC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003735DC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100373674()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003736FC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100373784()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100373818(uint64_t a1, uint64_t a2)
{
  v3[214] = v2;
  v3[213] = a2;
  v3[212] = a1;
  sub_1000BC4D4(&qword_10169E750, &unk_1013DC4B0);
  v3[215] = swift_task_alloc();
  v3[216] = swift_task_alloc();
  v3[217] = swift_task_alloc();
  v4 = sub_1000BC4D4(&qword_101697240, &unk_10138BDA0);
  v3[218] = v4;
  v3[219] = *(v4 - 8);
  v3[220] = swift_task_alloc();
  v5 = sub_1000BC4D4(&qword_101697248, &qword_1013DC4D0);
  v3[221] = v5;
  v3[222] = *(v5 - 8);
  v3[223] = swift_task_alloc();
  v6 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v3[224] = v6;
  v3[225] = *(v6 - 8);
  v3[226] = swift_task_alloc();
  v7 = type metadata accessor for Peripheral();
  v3[227] = v7;
  v8 = sub_10038B3E0(&qword_1016972A0, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
  v3[228] = v8;
  v9 = swift_task_alloc();
  v3[229] = v9;
  *v9 = v3;
  v9[1] = sub_100373AA0;

  return dispatch thunk of PeripheralProtocol.connect()(v7, v8);
}

uint64_t sub_100373AA0()
{
  *(*v1 + 1840) = v0;

  if (v0)
  {
    v2 = sub_100373EA8;
  }

  else
  {
    v2 = sub_100373BB4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100373BB4()
{
  v18 = v0;
  if (qword_1016946A0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[231] = sub_1000076D4(v1, qword_10169E3B0);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[226];
    v5 = v0[225];
    v6 = v0[224];
    v7 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v7 = 136446466;
    *(v7 + 4) = sub_1000136BC(0xD00000000000002FLL, 0x8000000101351710, &v17);
    *(v7 + 12) = 2082;
    dispatch thunk of PeripheralProtocol.id.getter();
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = v9;

    (*(v5 + 8))(v4, v6);
    v11 = sub_1000136BC(v8, v10, &v17);

    *(v7 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s Connected to: %{public}s", v7, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v0[232] = type metadata accessor for Service();
  Identifier.init(stringLiteral:)();
  v12 = swift_task_alloc();
  v0[233] = v12;
  *v12 = v0;
  v12[1] = sub_100374230;
  v13 = v0[228];
  v14 = v0[227];
  v15 = v0[223];

  return dispatch thunk of PeripheralProtocol.subscript.getter(v15, v14, v13);
}

uint64_t sub_100373EA8()
{
  v23 = v0;
  v0[277] = v0[230];
  if (qword_1016946A0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[278] = sub_1000076D4(v1, qword_10169E3B0);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[226];
    v5 = v0[225];
    v6 = v0[224];
    v20 = v3;
    v7 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v7 = 136446722;
    *(v7 + 4) = sub_1000136BC(0xD00000000000002FLL, 0x8000000101351710, &v22);
    *(v7 + 12) = 2082;
    dispatch thunk of PeripheralProtocol.id.getter();
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = v9;

    (*(v5 + 8))(v4, v6);
    v11 = sub_1000136BC(v8, v10, &v22);

    *(v7 + 14) = v11;
    *(v7 + 22) = 2114;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 24) = v12;
    *v21 = v12;
    _os_log_impl(&_mh_execute_header, v2, v20, "%{public}s %{public}s Error %{public}@", v7, 0x20u);
    sub_10000B3A8(v21, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();
  }

  else
  {
  }

  v13 = v0[215];
  v14 = type metadata accessor for Peripheral.DisconnectionOptions();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = swift_task_alloc();
  v0[279] = v15;
  *v15 = v0;
  v15[1] = sub_10037E770;
  v16 = v0[228];
  v17 = v0[227];
  v18 = v0[215];

  return dispatch thunk of PeripheralProtocol.cancelConnection(options:)(v18, v17, v16);
}

uint64_t sub_100374230(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[234] = a1;
  v4[235] = v1;

  (*(v3[222] + 8))(v3[223], v3[221]);
  if (v1)
  {
    v5 = sub_10037461C;
  }

  else
  {
    v5 = sub_1003743A4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1003743A4()
{
  type metadata accessor for Characteristic();
  Identifier.init(stringLiteral:)();
  v1 = sub_10038B3E0(&qword_1016972A8, &type metadata accessor for Service, &protocol conformance descriptor for Service);
  v2 = swift_task_alloc();
  v0[236] = v2;
  *v2 = v0;
  v2[1] = sub_1003744A8;
  v3 = v0[232];
  v4 = v0[220];

  return dispatch thunk of ServiceProtocol.subscript.getter(v4, v3, v1);
}

uint64_t sub_1003744A8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[237] = a1;
  v4[238] = v1;

  (*(v3[219] + 8))(v3[220], v3[218]);
  if (v1)
  {
    v5 = sub_100374BC0;
  }

  else
  {
    v5 = sub_1003749A4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10037461C()
{
  v23 = v0;
  v0[277] = v0[235];
  if (qword_1016946A0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[278] = sub_1000076D4(v1, qword_10169E3B0);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[226];
    v5 = v0[225];
    v6 = v0[224];
    v20 = v3;
    v7 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v7 = 136446722;
    *(v7 + 4) = sub_1000136BC(0xD00000000000002FLL, 0x8000000101351710, &v22);
    *(v7 + 12) = 2082;
    dispatch thunk of PeripheralProtocol.id.getter();
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = v9;

    (*(v5 + 8))(v4, v6);
    v11 = sub_1000136BC(v8, v10, &v22);

    *(v7 + 14) = v11;
    *(v7 + 22) = 2114;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 24) = v12;
    *v21 = v12;
    _os_log_impl(&_mh_execute_header, v2, v20, "%{public}s %{public}s Error %{public}@", v7, 0x20u);
    sub_10000B3A8(v21, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();
  }

  else
  {
  }

  v13 = v0[215];
  v14 = type metadata accessor for Peripheral.DisconnectionOptions();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = swift_task_alloc();
  v0[279] = v15;
  *v15 = v0;
  v15[1] = sub_10037E770;
  v16 = v0[228];
  v17 = v0[227];
  v18 = v0[215];

  return dispatch thunk of PeripheralProtocol.cancelConnection(options:)(v18, v17, v16);
}

uint64_t sub_1003749A4()
{
  *(v0 + 88) = &type metadata for PoshAccessoryNonOwnerCommand;
  v1 = sub_10038B8D0();
  *(v0 + 1912) = v1;
  *(v0 + 96) = v1;
  v2 = sub_10038B924();
  *(v0 + 1920) = v2;
  *(v0 + 104) = v2;
  *(v0 + 72) = 0;
  *(v0 + 64) = 0;
  *(v0 + 80) = 11;
  v3 = swift_task_alloc();
  *(v0 + 1928) = v3;
  *v3 = v0;
  v3[1] = sub_100374AA4;
  v4 = *(v0 + 1896);

  return sub_101213204(v0 + 16, v4, v0 + 64, &type metadata for PoshAccessoryNonOwnerCommand, v1, v2, 0);
}

uint64_t sub_100374AA4()
{
  v2 = *v1;
  *(*v1 + 1936) = v0;

  if (v0)
  {
    v3 = sub_100375730;
  }

  else
  {
    sub_100007BAC((v2 + 64));
    v3 = sub_100374F50;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100374BC0()
{
  v23 = v0;

  v0[277] = v0[238];
  if (qword_1016946A0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[278] = sub_1000076D4(v1, qword_10169E3B0);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[226];
    v5 = v0[225];
    v6 = v0[224];
    v20 = v3;
    v7 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v7 = 136446722;
    *(v7 + 4) = sub_1000136BC(0xD00000000000002FLL, 0x8000000101351710, &v22);
    *(v7 + 12) = 2082;
    dispatch thunk of PeripheralProtocol.id.getter();
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = v9;

    (*(v5 + 8))(v4, v6);
    v11 = sub_1000136BC(v8, v10, &v22);

    *(v7 + 14) = v11;
    *(v7 + 22) = 2114;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 24) = v12;
    *v21 = v12;
    _os_log_impl(&_mh_execute_header, v2, v20, "%{public}s %{public}s Error %{public}@", v7, 0x20u);
    sub_10000B3A8(v21, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();
  }

  else
  {
  }

  v13 = v0[215];
  v14 = type metadata accessor for Peripheral.DisconnectionOptions();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = swift_task_alloc();
  v0[279] = v15;
  *v15 = v0;
  v15[1] = sub_10037E770;
  v16 = v0[228];
  v17 = v0[227];
  v18 = v0[215];

  return dispatch thunk of PeripheralProtocol.cancelConnection(options:)(v18, v17, v16);
}

uint64_t sub_100374F50()
{
  v48 = v0;
  sub_1001011C0(v0 + 16, v0 + 1024);
  *(v0 + 1944) = sub_1000BC4D4(&qword_1016972F8, &unk_1013D4DE0);
  if (!swift_dynamicCast())
  {
    goto LABEL_4;
  }

  v1 = *(v0 + 1648);
  *(v0 + 1952) = v1;
  v2 = *(v0 + 1656);
  *(v0 + 1960) = v2;
  if (*(v0 + 1664))
  {
    sub_10038B978(v1, v2, *(v0 + 1664));
LABEL_4:
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Invalid productDataResponse!", v5, 2u);
    }

    type metadata accessor for AccessoryMetadataManager.Error(0);
    sub_10038B3E0(&qword_10169E730, type metadata accessor for AccessoryMetadataManager.Error, &unk_10139DCD8);
    v6 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    sub_100007BAC((v0 + 16));
    *(v0 + 2216) = v6;
    if (qword_1016946A0 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    *(v0 + 2224) = sub_1000076D4(v7, qword_10169E3B0);

    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = *(v0 + 1808);
      v11 = *(v0 + 1800);
      v12 = *(v0 + 1792);
      v44 = v9;
      v13 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v47[0] = swift_slowAlloc();
      *v13 = 136446722;
      *(v13 + 4) = sub_1000136BC(0xD00000000000002FLL, 0x8000000101351710, v47);
      *(v13 + 12) = 2082;
      dispatch thunk of PeripheralProtocol.id.getter();
      sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      v16 = v15;

      (*(v11 + 8))(v10, v12);
      v17 = sub_1000136BC(v14, v16, v47);

      *(v13 + 14) = v17;
      *(v13 + 22) = 2114;
      swift_errorRetain();
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 24) = v18;
      *v45 = v18;
      _os_log_impl(&_mh_execute_header, v8, v44, "%{public}s %{public}s Error %{public}@", v13, 0x20u);
      sub_10000B3A8(v45, &qword_10169BB30, &unk_10138B3C0);

      swift_arrayDestroy();
    }

    else
    {
    }

    v19 = *(v0 + 1720);
    v20 = type metadata accessor for Peripheral.DisconnectionOptions();
    (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
    v21 = swift_task_alloc();
    *(v0 + 2232) = v21;
    *v21 = v0;
    v21[1] = sub_10037E770;
    v22 = *(v0 + 1824);
    v23 = *(v0 + 1816);
    v24 = *(v0 + 1720);

    return dispatch thunk of PeripheralProtocol.cancelConnection(options:)(v24, v23, v22);
  }

  sub_10038B9A0(v1, v2, 0);

  sub_10038B9A0(v1, v2, 0);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  sub_10038B978(v1, v2, 0);
  if (os_log_type_enabled(v25, v26))
  {
    log = v25;
    v27 = *(v0 + 1808);
    v28 = *(v0 + 1800);
    v43 = *(v0 + 1792);
    v29 = swift_slowAlloc();
    v47[0] = swift_slowAlloc();
    *v29 = 136446466;
    dispatch thunk of PeripheralProtocol.id.getter();
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
    v30 = dispatch thunk of CustomStringConvertible.description.getter();
    v32 = v31;

    (*(v28 + 8))(v27, v43);
    v33 = sub_1000136BC(v30, v32, v47);

    *(v29 + 4) = v33;
    *(v29 + 12) = 2080;
    sub_100017D5C(v1, v2);
    v34 = sub_100313D58(v1, v2);
    v36 = v35;
    sub_10038B978(v1, v2, 0);
    v37 = sub_1000136BC(v34, v36, v47);

    *(v29 + 14) = v37;
    _os_log_impl(&_mh_execute_header, log, v26, "%{public}s productData: %s", v29, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  *(v0 + 232) = &type metadata for PoshAccessoryNonOwnerCommand;
  *(v0 + 240) = *(v0 + 1912);
  *(v0 + 208) = xmmword_10139D920;
  *(v0 + 224) = 11;
  v38 = swift_task_alloc();
  *(v0 + 1968) = v38;
  *v38 = v0;
  v38[1] = sub_100375AD4;
  v39 = *(v0 + 1920);
  v40 = *(v0 + 1912);
  v41 = *(v0 + 1896);

  return sub_101213204(v0 + 160, v41, v0 + 208, &type metadata for PoshAccessoryNonOwnerCommand, v40, v39, 0);
}

uint64_t sub_100375730()
{
  v23 = v0;

  sub_100007BAC(v0 + 8);
  v0[277] = v0[242];
  if (qword_1016946A0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[278] = sub_1000076D4(v1, qword_10169E3B0);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[226];
    v5 = v0[225];
    v6 = v0[224];
    v20 = v3;
    v7 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v7 = 136446722;
    *(v7 + 4) = sub_1000136BC(0xD00000000000002FLL, 0x8000000101351710, &v22);
    *(v7 + 12) = 2082;
    dispatch thunk of PeripheralProtocol.id.getter();
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = v9;

    (*(v5 + 8))(v4, v6);
    v11 = sub_1000136BC(v8, v10, &v22);

    *(v7 + 14) = v11;
    *(v7 + 22) = 2114;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 24) = v12;
    *v21 = v12;
    _os_log_impl(&_mh_execute_header, v2, v20, "%{public}s %{public}s Error %{public}@", v7, 0x20u);
    sub_10000B3A8(v21, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();
  }

  else
  {
  }

  v13 = v0[215];
  v14 = type metadata accessor for Peripheral.DisconnectionOptions();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = swift_task_alloc();
  v0[279] = v15;
  *v15 = v0;
  v15[1] = sub_10037E770;
  v16 = v0[228];
  v17 = v0[227];
  v18 = v0[215];

  return dispatch thunk of PeripheralProtocol.cancelConnection(options:)(v18, v17, v16);
}

uint64_t sub_100375AD4()
{
  v2 = *v1;
  *(*v1 + 1976) = v0;

  if (v0)
  {
    v3 = sub_1003764C8;
  }

  else
  {
    sub_100007BAC((v2 + 208));
    v3 = sub_100375BF0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100375BF0()
{
  v57 = v0;
  sub_1001011C0(v0 + 160, v0 + 256);
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 1624);
    *(v0 + 1984) = v1;
    v2 = *(v0 + 1632);
    *(v0 + 1992) = v2;
    v3 = *(v0 + 1640);
    if (v3 == 1)
    {
      sub_10038B9A0(v1, v2, 1);

      sub_10038B9A0(v1, v2, 1);
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.default.getter();
      sub_10038B978(v1, v2, 1);
      if (os_log_type_enabled(v4, v5))
      {
        log = v4;
        v6 = *(v0 + 1808);
        v7 = *(v0 + 1800);
        v8 = *(v0 + 1792);
        v9 = swift_slowAlloc();
        v56[0] = swift_slowAlloc();
        *v9 = 136446466;
        v53 = v5;
        dispatch thunk of PeripheralProtocol.id.getter();
        sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
        v10 = dispatch thunk of CustomStringConvertible.description.getter();
        v12 = v11;

        (*(v7 + 8))(v6, v8);
        v13 = sub_1000136BC(v10, v12, v56);

        *(v9 + 4) = v13;
        *(v9 + 12) = 2080;

        v14 = sub_1000136BC(v1, v2, v56);
        sub_10038B978(v1, v2, 1);
        *(v9 + 14) = v14;
        _os_log_impl(&_mh_execute_header, log, v53, "%{public}s manufacturerName: %s", v9, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }

      *(v0 + 376) = &type metadata for PoshAccessoryNonOwnerCommand;
      *(v0 + 384) = *(v0 + 1912);
      *(v0 + 352) = xmmword_10139D930;
      *(v0 + 368) = 11;
      v46 = swift_task_alloc();
      *(v0 + 2000) = v46;
      *v46 = v0;
      v46[1] = sub_10037689C;
      v47 = *(v0 + 1920);
      v48 = *(v0 + 1912);
      v49 = *(v0 + 1896);

      return sub_101213204(v0 + 304, v49, v0 + 352, &type metadata for PoshAccessoryNonOwnerCommand, v48, v47, 0);
    }

    sub_10038B978(v1, v2, v3);
  }

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = *(v0 + 1808);
    v18 = *(v0 + 1800);
    v19 = *(v0 + 1792);
    v20 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v56[0] = v55;
    *v20 = 136446210;
    dispatch thunk of PeripheralProtocol.id.getter();
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;

    (*(v18 + 8))(v17, v19);
    v24 = sub_1000136BC(v21, v23, v56);

    *(v20 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v15, v16, "%{public}s Invalid manufacturerNameCommandResponse!", v20, 0xCu);
    sub_100007BAC(v55);
  }

  else
  {
  }

  v25 = *(v0 + 1960);
  v26 = *(v0 + 1952);
  type metadata accessor for AccessoryMetadataManager.Error(0);
  sub_10038B3E0(&qword_10169E730, type metadata accessor for AccessoryMetadataManager.Error, &unk_10139DCD8);
  v27 = swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  sub_10038B978(v26, v25, 0);
  sub_10038B978(v26, v25, 0);
  sub_100007BAC((v0 + 160));
  sub_100007BAC((v0 + 16));
  *(v0 + 2216) = v27;
  if (qword_1016946A0 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  *(v0 + 2224) = sub_1000076D4(v28, qword_10169E3B0);

  swift_errorRetain();
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = *(v0 + 1808);
    v32 = *(v0 + 1800);
    v33 = *(v0 + 1792);
    loga = v30;
    v34 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v56[0] = swift_slowAlloc();
    *v34 = 136446722;
    *(v34 + 4) = sub_1000136BC(0xD00000000000002FLL, 0x8000000101351710, v56);
    *(v34 + 12) = 2082;
    dispatch thunk of PeripheralProtocol.id.getter();
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
    v35 = dispatch thunk of CustomStringConvertible.description.getter();
    v37 = v36;

    (*(v32 + 8))(v31, v33);
    v38 = sub_1000136BC(v35, v37, v56);

    *(v34 + 14) = v38;
    *(v34 + 22) = 2114;
    swift_errorRetain();
    v39 = _swift_stdlib_bridgeErrorToNSError();
    *(v34 + 24) = v39;
    *v54 = v39;
    _os_log_impl(&_mh_execute_header, v29, loga, "%{public}s %{public}s Error %{public}@", v34, 0x20u);
    sub_10000B3A8(v54, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();
  }

  else
  {
  }

  v40 = *(v0 + 1720);
  v41 = type metadata accessor for Peripheral.DisconnectionOptions();
  (*(*(v41 - 8) + 56))(v40, 1, 1, v41);
  v42 = swift_task_alloc();
  *(v0 + 2232) = v42;
  *v42 = v0;
  v42[1] = sub_10037E770;
  v43 = *(v0 + 1824);
  v44 = *(v0 + 1816);
  v45 = *(v0 + 1720);

  return dispatch thunk of PeripheralProtocol.cancelConnection(options:)(v45, v44, v43);
}

uint64_t sub_1003764C8()
{
  v25 = v0;
  v1 = v0[245];
  v2 = v0[244];

  sub_10038B978(v2, v1, 0);
  sub_10038B978(v2, v1, 0);
  sub_100007BAC(v0 + 2);
  sub_100007BAC(v0 + 26);
  v0[277] = v0[247];
  if (qword_1016946A0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  v0[278] = sub_1000076D4(v3, qword_10169E3B0);

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[226];
    v7 = v0[225];
    v8 = v0[224];
    v22 = v5;
    v9 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v9 = 136446722;
    *(v9 + 4) = sub_1000136BC(0xD00000000000002FLL, 0x8000000101351710, &v24);
    *(v9 + 12) = 2082;
    dispatch thunk of PeripheralProtocol.id.getter();
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;

    (*(v7 + 8))(v6, v8);
    v13 = sub_1000136BC(v10, v12, &v24);

    *(v9 + 14) = v13;
    *(v9 + 22) = 2114;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 24) = v14;
    *v23 = v14;
    _os_log_impl(&_mh_execute_header, v4, v22, "%{public}s %{public}s Error %{public}@", v9, 0x20u);
    sub_10000B3A8(v23, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();
  }

  else
  {
  }

  v15 = v0[215];
  v16 = type metadata accessor for Peripheral.DisconnectionOptions();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  v17 = swift_task_alloc();
  v0[279] = v17;
  *v17 = v0;
  v17[1] = sub_10037E770;
  v18 = v0[228];
  v19 = v0[227];
  v20 = v0[215];

  return dispatch thunk of PeripheralProtocol.cancelConnection(options:)(v20, v19, v18);
}

uint64_t sub_10037689C()
{
  v2 = *v1;
  *(*v1 + 2008) = v0;

  if (v0)
  {
    sub_10038B978(v2[248], v2[249], 1);
    v3 = sub_1003772E8;
  }

  else
  {
    sub_100007BAC(v2 + 44);
    v3 = sub_1003769C8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1003769C8()
{
  v62 = v0;
  sub_1001011C0(v0 + 304, v0 + 400);
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 1456);
    *(v0 + 2016) = v1;
    v2 = *(v0 + 1464);
    *(v0 + 2024) = v2;
    v3 = *(v0 + 1472);
    if (v3 == 2)
    {
      sub_10038B9A0(v1, v2, 2);

      sub_10038B9A0(v1, v2, 2);
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.default.getter();
      sub_10038B978(v1, v2, 2);
      if (os_log_type_enabled(v4, v5))
      {
        log = v4;
        v6 = *(v0 + 1808);
        v7 = *(v0 + 1800);
        v8 = *(v0 + 1792);
        v9 = swift_slowAlloc();
        v61[0] = swift_slowAlloc();
        *v9 = 136446466;
        v58 = v5;
        dispatch thunk of PeripheralProtocol.id.getter();
        sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
        v10 = dispatch thunk of CustomStringConvertible.description.getter();
        v12 = v11;

        (*(v7 + 8))(v6, v8);
        v13 = sub_1000136BC(v10, v12, v61);

        *(v9 + 4) = v13;
        *(v9 + 12) = 2080;

        v14 = sub_1000136BC(v1, v2, v61);
        sub_10038B978(v1, v2, 2);
        *(v9 + 14) = v14;
        _os_log_impl(&_mh_execute_header, log, v58, "%{public}s modelName: %s", v9, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }

      *(v0 + 520) = &type metadata for PoshAccessoryNonOwnerCommand;
      *(v0 + 528) = *(v0 + 1912);
      *(v0 + 496) = xmmword_10139D940;
      *(v0 + 512) = 11;
      v51 = swift_task_alloc();
      *(v0 + 2032) = v51;
      *v51 = v0;
      v51[1] = sub_1003776DC;
      v52 = *(v0 + 1920);
      v53 = *(v0 + 1912);
      v54 = *(v0 + 1896);

      return sub_101213204(v0 + 448, v54, v0 + 496, &type metadata for PoshAccessoryNonOwnerCommand, v53, v52, 0);
    }

    sub_10038B978(*(v0 + 1984), *(v0 + 1992), 1);
    v16 = v1;
    v15 = v2;
    v17 = v3;
  }

  else
  {
    v15 = *(v0 + 1992);
    v16 = *(v0 + 1984);
    v17 = 1;
  }

  sub_10038B978(v16, v15, v17);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = *(v0 + 1808);
    v21 = *(v0 + 1800);
    v22 = *(v0 + 1792);
    v23 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v61[0] = v60;
    *v23 = 136446210;
    dispatch thunk of PeripheralProtocol.id.getter();
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;

    (*(v21 + 8))(v20, v22);
    v27 = sub_1000136BC(v24, v26, v61);

    *(v23 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v18, v19, "%{public}s Invalid modelNameCommandResponse!", v23, 0xCu);
    sub_100007BAC(v60);
  }

  else
  {
  }

  v28 = *(v0 + 1992);
  v29 = *(v0 + 1984);
  v30 = *(v0 + 1960);
  v31 = *(v0 + 1952);
  type metadata accessor for AccessoryMetadataManager.Error(0);
  sub_10038B3E0(&qword_10169E730, type metadata accessor for AccessoryMetadataManager.Error, &unk_10139DCD8);
  v32 = swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  sub_10038B978(v29, v28, 1);
  sub_10038B978(v31, v30, 0);
  sub_10038B978(v31, v30, 0);
  sub_100007BAC((v0 + 304));
  sub_100007BAC((v0 + 160));
  sub_100007BAC((v0 + 16));
  *(v0 + 2216) = v32;
  if (qword_1016946A0 != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  *(v0 + 2224) = sub_1000076D4(v33, qword_10169E3B0);

  swift_errorRetain();
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = *(v0 + 1808);
    v37 = *(v0 + 1800);
    v38 = *(v0 + 1792);
    loga = v35;
    v39 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v61[0] = swift_slowAlloc();
    *v39 = 136446722;
    *(v39 + 4) = sub_1000136BC(0xD00000000000002FLL, 0x8000000101351710, v61);
    *(v39 + 12) = 2082;
    dispatch thunk of PeripheralProtocol.id.getter();
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
    v40 = dispatch thunk of CustomStringConvertible.description.getter();
    v42 = v41;

    (*(v37 + 8))(v36, v38);
    v43 = sub_1000136BC(v40, v42, v61);

    *(v39 + 14) = v43;
    *(v39 + 22) = 2114;
    swift_errorRetain();
    v44 = _swift_stdlib_bridgeErrorToNSError();
    *(v39 + 24) = v44;
    *v59 = v44;
    _os_log_impl(&_mh_execute_header, v34, loga, "%{public}s %{public}s Error %{public}@", v39, 0x20u);
    sub_10000B3A8(v59, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();
  }

  else
  {
  }

  v45 = *(v0 + 1720);
  v46 = type metadata accessor for Peripheral.DisconnectionOptions();
  (*(*(v46 - 8) + 56))(v45, 1, 1, v46);
  v47 = swift_task_alloc();
  *(v0 + 2232) = v47;
  *v47 = v0;
  v47[1] = sub_10037E770;
  v48 = *(v0 + 1824);
  v49 = *(v0 + 1816);
  v50 = *(v0 + 1720);

  return dispatch thunk of PeripheralProtocol.cancelConnection(options:)(v50, v49, v48);
}

uint64_t sub_1003772E8()
{
  v27 = v0;
  v1 = v0[249];
  v2 = v0[248];
  v3 = v0[245];
  v4 = v0[244];

  sub_10038B978(v2, v1, 1);
  sub_10038B978(v4, v3, 0);
  sub_10038B978(v4, v3, 0);
  sub_100007BAC(v0 + 20);
  sub_100007BAC(v0 + 2);
  sub_100007BAC(v0 + 44);
  v0[277] = v0[251];
  if (qword_1016946A0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  v0[278] = sub_1000076D4(v5, qword_10169E3B0);

  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[226];
    v9 = v0[225];
    v10 = v0[224];
    v24 = v7;
    v11 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v11 = 136446722;
    *(v11 + 4) = sub_1000136BC(0xD00000000000002FLL, 0x8000000101351710, &v26);
    *(v11 + 12) = 2082;
    dispatch thunk of PeripheralProtocol.id.getter();
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;

    (*(v9 + 8))(v8, v10);
    v15 = sub_1000136BC(v12, v14, &v26);

    *(v11 + 14) = v15;
    *(v11 + 22) = 2114;
    swift_errorRetain();
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 24) = v16;
    *v25 = v16;
    _os_log_impl(&_mh_execute_header, v6, v24, "%{public}s %{public}s Error %{public}@", v11, 0x20u);
    sub_10000B3A8(v25, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();
  }

  else
  {
  }

  v17 = v0[215];
  v18 = type metadata accessor for Peripheral.DisconnectionOptions();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  v19 = swift_task_alloc();
  v0[279] = v19;
  *v19 = v0;
  v19[1] = sub_10037E770;
  v20 = v0[228];
  v21 = v0[227];
  v22 = v0[215];

  return dispatch thunk of PeripheralProtocol.cancelConnection(options:)(v22, v21, v20);
}

uint64_t sub_1003776DC()
{
  v2 = *v1;
  *(*v1 + 2040) = v0;

  if (v0)
  {
    v3 = v2[253];
    v4 = v2[252];
    sub_10038B978(v2[248], v2[249], 1);
    sub_10038B978(v4, v3, 2);
    v5 = sub_10037811C;
  }

  else
  {
    sub_100007BAC(v2 + 62);
    v5 = sub_100377828;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100377828()
{
  v68 = v0;
  sub_1001011C0(v0 + 448, v0 + 544);
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 1600);
    *(v0 + 2048) = v1;
    v2 = *(v0 + 1616);
    if (v2 == 3)
    {

      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = *(v0 + 1808);
        v6 = *(v0 + 1800);
        v7 = *(v0 + 1792);
        v8 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v67[0] = v64;
        *v8 = 136446466;
        v62 = v4;
        dispatch thunk of PeripheralProtocol.id.getter();
        sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
        v9 = v7;
        v10 = dispatch thunk of CustomStringConvertible.description.getter();
        v12 = v11;

        (*(v6 + 8))(v5, v9);
        v13 = sub_1000136BC(v10, v12, v67);

        *(v8 + 4) = v13;
        *(v8 + 12) = 2048;
        *(v8 + 14) = v1;
        _os_log_impl(&_mh_execute_header, v3, v62, "%{public}s category: %llu", v8, 0x16u);
        sub_100007BAC(v64);
      }

      else
      {
      }

      *(v0 + 664) = &type metadata for PoshAccessoryNonOwnerCommand;
      *(v0 + 672) = *(v0 + 1912);
      *(v0 + 640) = xmmword_10139D950;
      *(v0 + 656) = 11;
      v56 = swift_task_alloc();
      *(v0 + 2056) = v56;
      *v56 = v0;
      v56[1] = sub_100378530;
      v57 = *(v0 + 1920);
      v58 = *(v0 + 1912);
      v59 = *(v0 + 1896);

      return sub_101213204(v0 + 592, v59, v0 + 640, &type metadata for PoshAccessoryNonOwnerCommand, v58, v57, 0);
    }

    v19 = *(v0 + 1608);
    v20 = *(v0 + 1992);
    v21 = *(v0 + 1984);
    sub_10038B978(*(v0 + 2016), *(v0 + 2024), 2);
    sub_10038B978(v21, v20, 1);
    v16 = v1;
    v17 = v19;
    v18 = v2;
  }

  else
  {
    v14 = *(v0 + 1992);
    v15 = *(v0 + 1984);
    sub_10038B978(*(v0 + 2016), *(v0 + 2024), 2);
    v16 = v15;
    v17 = v14;
    v18 = 1;
  }

  sub_10038B978(v16, v17, v18);

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = *(v0 + 1808);
    v25 = *(v0 + 1800);
    v26 = *(v0 + 1792);
    v27 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v67[0] = v65;
    *v27 = 136446210;
    dispatch thunk of PeripheralProtocol.id.getter();
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = v29;

    (*(v25 + 8))(v24, v26);
    v31 = sub_1000136BC(v28, v30, v67);

    *(v27 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v22, v23, "%{public}s Invalid categoryCommandResponse!", v27, 0xCu);
    sub_100007BAC(v65);
  }

  else
  {
  }

  v32 = *(v0 + 2024);
  v33 = *(v0 + 2016);
  v66 = *(v0 + 1992);
  v34 = *(v0 + 1984);
  v35 = *(v0 + 1960);
  v36 = *(v0 + 1952);
  type metadata accessor for AccessoryMetadataManager.Error(0);
  sub_10038B3E0(&qword_10169E730, type metadata accessor for AccessoryMetadataManager.Error, &unk_10139DCD8);
  v37 = swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  sub_10038B978(v33, v32, 2);
  sub_10038B978(v34, v66, 1);
  sub_10038B978(v36, v35, 0);
  sub_10038B978(v36, v35, 0);
  sub_100007BAC((v0 + 448));
  sub_100007BAC((v0 + 304));
  sub_100007BAC((v0 + 160));
  sub_100007BAC((v0 + 16));
  *(v0 + 2216) = v37;
  if (qword_1016946A0 != -1)
  {
    swift_once();
  }

  v38 = type metadata accessor for Logger();
  *(v0 + 2224) = sub_1000076D4(v38, qword_10169E3B0);

  swift_errorRetain();
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = *(v0 + 1808);
    v42 = *(v0 + 1800);
    v43 = *(v0 + 1792);
    v61 = v40;
    v44 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v67[0] = swift_slowAlloc();
    *v44 = 136446722;
    *(v44 + 4) = sub_1000136BC(0xD00000000000002FLL, 0x8000000101351710, v67);
    *(v44 + 12) = 2082;
    dispatch thunk of PeripheralProtocol.id.getter();
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
    v45 = dispatch thunk of CustomStringConvertible.description.getter();
    v47 = v46;

    (*(v42 + 8))(v41, v43);
    v48 = sub_1000136BC(v45, v47, v67);

    *(v44 + 14) = v48;
    *(v44 + 22) = 2114;
    swift_errorRetain();
    v49 = _swift_stdlib_bridgeErrorToNSError();
    *(v44 + 24) = v49;
    *v63 = v49;
    _os_log_impl(&_mh_execute_header, v39, v61, "%{public}s %{public}s Error %{public}@", v44, 0x20u);
    sub_10000B3A8(v63, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();
  }

  else
  {
  }

  v50 = *(v0 + 1720);
  v51 = type metadata accessor for Peripheral.DisconnectionOptions();
  (*(*(v51 - 8) + 56))(v50, 1, 1, v51);
  v52 = swift_task_alloc();
  *(v0 + 2232) = v52;
  *v52 = v0;
  v52[1] = sub_10037E770;
  v53 = *(v0 + 1824);
  v54 = *(v0 + 1816);
  v55 = *(v0 + 1720);

  return dispatch thunk of PeripheralProtocol.cancelConnection(options:)(v55, v54, v53);
}

uint64_t sub_10037811C()
{
  v29 = v0;
  v1 = v0[253];
  v2 = v0[252];
  v3 = v0[249];
  v4 = v0[248];
  v5 = v0[245];
  v6 = v0[244];

  sub_10038B978(v2, v1, 2);
  sub_10038B978(v4, v3, 1);
  sub_10038B978(v6, v5, 0);
  sub_10038B978(v6, v5, 0);
  sub_100007BAC(v0 + 38);
  sub_100007BAC(v0 + 20);
  sub_100007BAC(v0 + 2);
  sub_100007BAC(v0 + 62);
  v0[277] = v0[255];
  if (qword_1016946A0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  v0[278] = sub_1000076D4(v7, qword_10169E3B0);

  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[226];
    v11 = v0[225];
    v12 = v0[224];
    v26 = v9;
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v13 = 136446722;
    *(v13 + 4) = sub_1000136BC(0xD00000000000002FLL, 0x8000000101351710, &v28);
    *(v13 + 12) = 2082;
    dispatch thunk of PeripheralProtocol.id.getter();
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;

    (*(v11 + 8))(v10, v12);
    v17 = sub_1000136BC(v14, v16, &v28);

    *(v13 + 14) = v17;
    *(v13 + 22) = 2114;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 24) = v18;
    *v27 = v18;
    _os_log_impl(&_mh_execute_header, v8, v26, "%{public}s %{public}s Error %{public}@", v13, 0x20u);
    sub_10000B3A8(v27, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();
  }

  else
  {
  }

  v19 = v0[215];
  v20 = type metadata accessor for Peripheral.DisconnectionOptions();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  v21 = swift_task_alloc();
  v0[279] = v21;
  *v21 = v0;
  v21[1] = sub_10037E770;
  v22 = v0[228];
  v23 = v0[227];
  v24 = v0[215];

  return dispatch thunk of PeripheralProtocol.cancelConnection(options:)(v24, v23, v22);
}

uint64_t sub_100378530()
{
  v2 = *v1;
  *(*v1 + 2064) = v0;

  if (v0)
  {
    v3 = v2[253];
    v4 = v2[252];
    sub_10038B978(v2[248], v2[249], 1);
    sub_10038B978(v4, v3, 2);
    v5 = sub_100378FB0;
  }

  else
  {
    sub_100007BAC(v2 + 80);
    v5 = sub_10037867C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10037867C()
{
  v68 = v0;
  sub_1001011C0(v0 + 592, v0 + 688);
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 1552);
    *(v0 + 2072) = v1;
    v2 = *(v0 + 1568);
    if (v2 == 4)
    {

      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = *(v0 + 1808);
        v6 = *(v0 + 1800);
        v7 = *(v0 + 1792);
        v8 = swift_slowAlloc();
        v67[0] = swift_slowAlloc();
        *v8 = 136446466;
        v64 = v4;
        dispatch thunk of PeripheralProtocol.id.getter();
        sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
        v9 = dispatch thunk of CustomStringConvertible.description.getter();
        v11 = v10;

        (*(v6 + 8))(v5, v7);
        v12 = sub_1000136BC(v9, v11, v67);

        *(v8 + 4) = v12;
        *(v8 + 12) = 2080;
        v13 = sub_10098E010();
        v15 = sub_1000136BC(v13, v14, v67);

        *(v8 + 14) = v15;
        _os_log_impl(&_mh_execute_header, v3, v64, "%{public}s protocolVersion: %s", v8, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }

      *(v0 + 808) = &type metadata for PoshAccessoryNonOwnerCommand;
      *(v0 + 816) = *(v0 + 1912);
      *(v0 + 784) = xmmword_10139D960;
      *(v0 + 800) = 11;
      v58 = swift_task_alloc();
      *(v0 + 2080) = v58;
      *v58 = v0;
      v58[1] = sub_1003793CC;
      v59 = *(v0 + 1920);
      v60 = *(v0 + 1912);
      v61 = *(v0 + 1896);

      return sub_101213204(v0 + 736, v61, v0 + 784, &type metadata for PoshAccessoryNonOwnerCommand, v60, v59, 0);
    }

    v21 = *(v0 + 1560);
    v22 = *(v0 + 1992);
    v23 = *(v0 + 1984);
    sub_10038B978(*(v0 + 2016), *(v0 + 2024), 2);
    sub_10038B978(v23, v22, 1);
    v18 = v1;
    v19 = v21;
    v20 = v2;
  }

  else
  {
    v16 = *(v0 + 1992);
    v17 = *(v0 + 1984);
    sub_10038B978(*(v0 + 2016), *(v0 + 2024), 2);
    v18 = v17;
    v19 = v16;
    v20 = 1;
  }

  sub_10038B978(v18, v19, v20);

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = *(v0 + 1808);
    v27 = *(v0 + 1800);
    v28 = *(v0 + 1792);
    v29 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v67[0] = v65;
    *v29 = 136446210;
    dispatch thunk of PeripheralProtocol.id.getter();
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
    v30 = dispatch thunk of CustomStringConvertible.description.getter();
    v32 = v31;

    (*(v27 + 8))(v26, v28);
    v33 = sub_1000136BC(v30, v32, v67);

    *(v29 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v24, v25, "%{public}s Invalid protocolVersionCommandResponse!", v29, 0xCu);
    sub_100007BAC(v65);
  }

  else
  {
  }

  v34 = *(v0 + 2024);
  v35 = *(v0 + 2016);
  v66 = *(v0 + 1992);
  v36 = *(v0 + 1984);
  v37 = *(v0 + 1960);
  v38 = *(v0 + 1952);
  type metadata accessor for AccessoryMetadataManager.Error(0);
  sub_10038B3E0(&qword_10169E730, type metadata accessor for AccessoryMetadataManager.Error, &unk_10139DCD8);
  v39 = swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  sub_10038B978(v35, v34, 2);
  sub_10038B978(v36, v66, 1);
  sub_10038B978(v38, v37, 0);
  sub_10038B978(v38, v37, 0);
  sub_100007BAC((v0 + 592));
  sub_100007BAC((v0 + 448));
  sub_100007BAC((v0 + 304));
  sub_100007BAC((v0 + 160));
  sub_100007BAC((v0 + 16));
  *(v0 + 2216) = v39;
  if (qword_1016946A0 != -1)
  {
    swift_once();
  }

  v40 = type metadata accessor for Logger();
  *(v0 + 2224) = sub_1000076D4(v40, qword_10169E3B0);

  swift_errorRetain();
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = *(v0 + 1808);
    v44 = *(v0 + 1800);
    v45 = *(v0 + 1792);
    v46 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v67[0] = swift_slowAlloc();
    *v46 = 136446722;
    *(v46 + 4) = sub_1000136BC(0xD00000000000002FLL, 0x8000000101351710, v67);
    *(v46 + 12) = 2082;
    dispatch thunk of PeripheralProtocol.id.getter();
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
    v47 = dispatch thunk of CustomStringConvertible.description.getter();
    v49 = v48;

    (*(v44 + 8))(v43, v45);
    v50 = sub_1000136BC(v47, v49, v67);

    *(v46 + 14) = v50;
    *(v46 + 22) = 2114;
    swift_errorRetain();
    v51 = _swift_stdlib_bridgeErrorToNSError();
    *(v46 + 24) = v51;
    *v63 = v51;
    _os_log_impl(&_mh_execute_header, v41, v42, "%{public}s %{public}s Error %{public}@", v46, 0x20u);
    sub_10000B3A8(v63, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();
  }

  else
  {
  }

  v52 = *(v0 + 1720);
  v53 = type metadata accessor for Peripheral.DisconnectionOptions();
  (*(*(v53 - 8) + 56))(v52, 1, 1, v53);
  v54 = swift_task_alloc();
  *(v0 + 2232) = v54;
  *v54 = v0;
  v54[1] = sub_10037E770;
  v55 = *(v0 + 1824);
  v56 = *(v0 + 1816);
  v57 = *(v0 + 1720);

  return dispatch thunk of PeripheralProtocol.cancelConnection(options:)(v57, v56, v55);
}

uint64_t sub_100378FB0()
{
  v29 = v0;
  v1 = v0[253];
  v2 = v0[252];
  v3 = v0[249];
  v4 = v0[248];
  v5 = v0[245];
  v6 = v0[244];

  sub_10038B978(v2, v1, 2);
  sub_10038B978(v4, v3, 1);
  sub_10038B978(v6, v5, 0);
  sub_10038B978(v6, v5, 0);
  sub_100007BAC(v0 + 56);
  sub_100007BAC(v0 + 38);
  sub_100007BAC(v0 + 20);
  sub_100007BAC(v0 + 2);
  sub_100007BAC(v0 + 80);
  v0[277] = v0[258];
  if (qword_1016946A0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  v0[278] = sub_1000076D4(v7, qword_10169E3B0);

  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[226];
    v11 = v0[225];
    v12 = v0[224];
    v26 = v9;
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v13 = 136446722;
    *(v13 + 4) = sub_1000136BC(0xD00000000000002FLL, 0x8000000101351710, &v28);
    *(v13 + 12) = 2082;
    dispatch thunk of PeripheralProtocol.id.getter();
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;

    (*(v11 + 8))(v10, v12);
    v17 = sub_1000136BC(v14, v16, &v28);

    *(v13 + 14) = v17;
    *(v13 + 22) = 2114;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 24) = v18;
    *v27 = v18;
    _os_log_impl(&_mh_execute_header, v8, v26, "%{public}s %{public}s Error %{public}@", v13, 0x20u);
    sub_10000B3A8(v27, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();
  }

  else
  {
  }

  v19 = v0[215];
  v20 = type metadata accessor for Peripheral.DisconnectionOptions();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  v21 = swift_task_alloc();
  v0[279] = v21;
  *v21 = v0;
  v21[1] = sub_10037E770;
  v22 = v0[228];
  v23 = v0[227];
  v24 = v0[215];

  return dispatch thunk of PeripheralProtocol.cancelConnection(options:)(v24, v23, v22);
}

uint64_t sub_1003793CC()
{
  v2 = *v1;
  *(*v1 + 2088) = v0;

  if (v0)
  {
    v3 = v2[253];
    v4 = v2[252];
    sub_10038B978(v2[248], v2[249], 1);
    sub_10038B978(v4, v3, 2);
    v5 = sub_100379E54;
  }

  else
  {
    sub_100007BAC(v2 + 98);
    v5 = sub_100379518;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100379518()
{
  v68 = v0;
  sub_1001011C0(v0 + 736, v0 + 832);
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 1528);
    *(v0 + 2096) = v1;
    v2 = *(v0 + 1544);
    if (v2 == 8)
    {

      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = *(v0 + 1808);
        v6 = *(v0 + 1800);
        v7 = *(v0 + 1792);
        v8 = swift_slowAlloc();
        v67[0] = swift_slowAlloc();
        *v8 = 136446466;
        v64 = v4;
        dispatch thunk of PeripheralProtocol.id.getter();
        sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
        v9 = dispatch thunk of CustomStringConvertible.description.getter();
        v11 = v10;

        (*(v6 + 8))(v5, v7);
        v12 = sub_1000136BC(v9, v11, v67);

        *(v8 + 4) = v12;
        *(v8 + 12) = 2080;
        v13 = sub_1010D840C(v1);
        v15 = sub_1000136BC(v13, v14, v67);

        *(v8 + 14) = v15;
        _os_log_impl(&_mh_execute_header, v3, v64, "%{public}s capability: %s", v8, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }

      *(v0 + 1240) = &type metadata for PoshAccessoryNonOwnerCommand;
      *(v0 + 1248) = *(v0 + 1912);
      *(v0 + 1216) = xmmword_10139D970;
      *(v0 + 1232) = 11;
      v58 = swift_task_alloc();
      *(v0 + 2104) = v58;
      *v58 = v0;
      v58[1] = sub_10037A278;
      v59 = *(v0 + 1920);
      v60 = *(v0 + 1912);
      v61 = *(v0 + 1896);

      return sub_101213204(v0 + 880, v61, v0 + 1216, &type metadata for PoshAccessoryNonOwnerCommand, v60, v59, 0);
    }

    v21 = *(v0 + 1536);
    v22 = *(v0 + 1992);
    v23 = *(v0 + 1984);
    sub_10038B978(*(v0 + 2016), *(v0 + 2024), 2);
    sub_10038B978(v23, v22, 1);
    v18 = v1;
    v19 = v21;
    v20 = v2;
  }

  else
  {
    v16 = *(v0 + 1992);
    v17 = *(v0 + 1984);
    sub_10038B978(*(v0 + 2016), *(v0 + 2024), 2);
    v18 = v17;
    v19 = v16;
    v20 = 1;
  }

  sub_10038B978(v18, v19, v20);

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = *(v0 + 1808);
    v27 = *(v0 + 1800);
    v28 = *(v0 + 1792);
    v29 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v67[0] = v65;
    *v29 = 136446210;
    dispatch thunk of PeripheralProtocol.id.getter();
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
    v30 = dispatch thunk of CustomStringConvertible.description.getter();
    v32 = v31;

    (*(v27 + 8))(v26, v28);
    v33 = sub_1000136BC(v30, v32, v67);

    *(v29 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v24, v25, "%{public}s Invalid capabilityCommandResponse!", v29, 0xCu);
    sub_100007BAC(v65);
  }

  else
  {
  }

  v34 = *(v0 + 2024);
  v35 = *(v0 + 2016);
  v66 = *(v0 + 1992);
  v36 = *(v0 + 1984);
  v37 = *(v0 + 1960);
  v38 = *(v0 + 1952);
  type metadata accessor for AccessoryMetadataManager.Error(0);
  sub_10038B3E0(&qword_10169E730, type metadata accessor for AccessoryMetadataManager.Error, &unk_10139DCD8);
  v39 = swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  sub_10038B978(v35, v34, 2);
  sub_10038B978(v36, v66, 1);
  sub_10038B978(v38, v37, 0);
  sub_10038B978(v38, v37, 0);
  sub_100007BAC((v0 + 736));
  sub_100007BAC((v0 + 592));
  sub_100007BAC((v0 + 448));
  sub_100007BAC((v0 + 304));
  sub_100007BAC((v0 + 160));
  sub_100007BAC((v0 + 16));
  *(v0 + 2216) = v39;
  if (qword_1016946A0 != -1)
  {
    swift_once();
  }

  v40 = type metadata accessor for Logger();
  *(v0 + 2224) = sub_1000076D4(v40, qword_10169E3B0);

  swift_errorRetain();
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = *(v0 + 1808);
    v44 = *(v0 + 1800);
    v45 = *(v0 + 1792);
    v46 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v67[0] = swift_slowAlloc();
    *v46 = 136446722;
    *(v46 + 4) = sub_1000136BC(0xD00000000000002FLL, 0x8000000101351710, v67);
    *(v46 + 12) = 2082;
    dispatch thunk of PeripheralProtocol.id.getter();
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
    v47 = dispatch thunk of CustomStringConvertible.description.getter();
    v49 = v48;

    (*(v44 + 8))(v43, v45);
    v50 = sub_1000136BC(v47, v49, v67);

    *(v46 + 14) = v50;
    *(v46 + 22) = 2114;
    swift_errorRetain();
    v51 = _swift_stdlib_bridgeErrorToNSError();
    *(v46 + 24) = v51;
    *v63 = v51;
    _os_log_impl(&_mh_execute_header, v41, v42, "%{public}s %{public}s Error %{public}@", v46, 0x20u);
    sub_10000B3A8(v63, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();
  }

  else
  {
  }

  v52 = *(v0 + 1720);
  v53 = type metadata accessor for Peripheral.DisconnectionOptions();
  (*(*(v53 - 8) + 56))(v52, 1, 1, v53);
  v54 = swift_task_alloc();
  *(v0 + 2232) = v54;
  *v54 = v0;
  v54[1] = sub_10037E770;
  v55 = *(v0 + 1824);
  v56 = *(v0 + 1816);
  v57 = *(v0 + 1720);

  return dispatch thunk of PeripheralProtocol.cancelConnection(options:)(v57, v56, v55);
}

uint64_t sub_100379E54()
{
  v29 = v0;
  v1 = v0[253];
  v2 = v0[252];
  v3 = v0[249];
  v4 = v0[248];
  v5 = v0[245];
  v6 = v0[244];

  sub_10038B978(v2, v1, 2);
  sub_10038B978(v4, v3, 1);
  sub_10038B978(v6, v5, 0);
  sub_10038B978(v6, v5, 0);
  sub_100007BAC(v0 + 74);
  sub_100007BAC(v0 + 56);
  sub_100007BAC(v0 + 38);
  sub_100007BAC(v0 + 20);
  sub_100007BAC(v0 + 2);
  sub_100007BAC(v0 + 98);
  v0[277] = v0[261];
  if (qword_1016946A0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  v0[278] = sub_1000076D4(v7, qword_10169E3B0);

  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[226];
    v11 = v0[225];
    v12 = v0[224];
    v26 = v9;
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v13 = 136446722;
    *(v13 + 4) = sub_1000136BC(0xD00000000000002FLL, 0x8000000101351710, &v28);
    *(v13 + 12) = 2082;
    dispatch thunk of PeripheralProtocol.id.getter();
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;

    (*(v11 + 8))(v10, v12);
    v17 = sub_1000136BC(v14, v16, &v28);

    *(v13 + 14) = v17;
    *(v13 + 22) = 2114;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 24) = v18;
    *v27 = v18;
    _os_log_impl(&_mh_execute_header, v8, v26, "%{public}s %{public}s Error %{public}@", v13, 0x20u);
    sub_10000B3A8(v27, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();
  }

  else
  {
  }

  v19 = v0[215];
  v20 = type metadata accessor for Peripheral.DisconnectionOptions();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  v21 = swift_task_alloc();
  v0[279] = v21;
  *v21 = v0;
  v21[1] = sub_10037E770;
  v22 = v0[228];
  v23 = v0[227];
  v24 = v0[215];

  return dispatch thunk of PeripheralProtocol.cancelConnection(options:)(v24, v23, v22);
}

uint64_t sub_10037A278()
{
  v2 = *v1;
  *(*v1 + 2112) = v0;

  if (v0)
  {
    v3 = v2[253];
    v4 = v2[252];
    sub_10038B978(v2[248], v2[249], 1);
    sub_10038B978(v4, v3, 2);
    v5 = sub_10037ACCC;
  }

  else
  {
    sub_100007BAC(v2 + 152);
    v5 = sub_10037A3C4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10037A3C4()
{
  v67 = v0;
  sub_1001011C0(v0 + 880, v0 + 1264);
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 1504);
    v2 = *(v0 + 1520);
    if (v2 == 5)
    {

      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = *(v0 + 1808);
        v6 = *(v0 + 1800);
        v7 = *(v0 + 1792);
        v8 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v66[0] = v63;
        *v8 = 136446466;
        v62 = v4;
        dispatch thunk of PeripheralProtocol.id.getter();
        sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
        v9 = v7;
        v10 = dispatch thunk of CustomStringConvertible.description.getter();
        v12 = v11;

        (*(v6 + 8))(v5, v9);
        v13 = sub_1000136BC(v10, v12, v66);

        *(v8 + 4) = v13;
        *(v8 + 12) = 256;
        *(v8 + 14) = v1;
        _os_log_impl(&_mh_execute_header, v3, v62, "%{public}snetworkID: %hhu", v8, 0xFu);
        sub_100007BAC(v63);
      }

      else
      {
      }

      *(v0 + 1432) = &type metadata for PoshAccessoryNonOwnerCommand;
      *(v0 + 1440) = *(v0 + 1912);
      *(v0 + 1408) = xmmword_10139D980;
      *(v0 + 1424) = 11;
      v56 = swift_task_alloc();
      *(v0 + 2120) = v56;
      *v56 = v0;
      v56[1] = sub_10037B0F8;
      v57 = *(v0 + 1920);
      v58 = *(v0 + 1912);
      v59 = *(v0 + 1896);

      return sub_101213204(v0 + 1360, v59, v0 + 1408, &type metadata for PoshAccessoryNonOwnerCommand, v58, v57, 0);
    }

    v19 = *(v0 + 1512);
    v20 = *(v0 + 1992);
    v21 = *(v0 + 1984);
    sub_10038B978(*(v0 + 2016), *(v0 + 2024), 2);
    sub_10038B978(v21, v20, 1);
    v16 = v1;
    v17 = v19;
    v18 = v2;
  }

  else
  {
    v14 = *(v0 + 1992);
    v15 = *(v0 + 1984);
    sub_10038B978(*(v0 + 2016), *(v0 + 2024), 2);
    v16 = v15;
    v17 = v14;
    v18 = 1;
  }

  sub_10038B978(v16, v17, v18);

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = *(v0 + 1808);
    v25 = *(v0 + 1800);
    v26 = *(v0 + 1792);
    v27 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v66[0] = v64;
    *v27 = 136446210;
    dispatch thunk of PeripheralProtocol.id.getter();
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = v29;

    (*(v25 + 8))(v24, v26);
    v31 = sub_1000136BC(v28, v30, v66);

    *(v27 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v22, v23, "%{public}s Invalid networkIDCommandResponse!", v27, 0xCu);
    sub_100007BAC(v64);
  }

  else
  {
  }

  v32 = *(v0 + 2024);
  v33 = *(v0 + 2016);
  v65 = *(v0 + 1992);
  v34 = *(v0 + 1984);
  v35 = *(v0 + 1960);
  v36 = *(v0 + 1952);
  type metadata accessor for AccessoryMetadataManager.Error(0);
  sub_10038B3E0(&qword_10169E730, type metadata accessor for AccessoryMetadataManager.Error, &unk_10139DCD8);
  v37 = swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  sub_10038B978(v33, v32, 2);
  sub_10038B978(v34, v65, 1);
  sub_10038B978(v36, v35, 0);
  sub_10038B978(v36, v35, 0);
  sub_100007BAC((v0 + 880));
  sub_100007BAC((v0 + 736));
  sub_100007BAC((v0 + 592));
  sub_100007BAC((v0 + 448));
  sub_100007BAC((v0 + 304));
  sub_100007BAC((v0 + 160));
  sub_100007BAC((v0 + 16));
  *(v0 + 2216) = v37;
  if (qword_1016946A0 != -1)
  {
    swift_once();
  }

  v38 = type metadata accessor for Logger();
  *(v0 + 2224) = sub_1000076D4(v38, qword_10169E3B0);

  swift_errorRetain();
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = *(v0 + 1808);
    v42 = *(v0 + 1800);
    v43 = *(v0 + 1792);
    v44 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v66[0] = swift_slowAlloc();
    *v44 = 136446722;
    *(v44 + 4) = sub_1000136BC(0xD00000000000002FLL, 0x8000000101351710, v66);
    *(v44 + 12) = 2082;
    dispatch thunk of PeripheralProtocol.id.getter();
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
    v45 = dispatch thunk of CustomStringConvertible.description.getter();
    v47 = v46;

    (*(v42 + 8))(v41, v43);
    v48 = sub_1000136BC(v45, v47, v66);

    *(v44 + 14) = v48;
    *(v44 + 22) = 2114;
    swift_errorRetain();
    v49 = _swift_stdlib_bridgeErrorToNSError();
    *(v44 + 24) = v49;
    *v61 = v49;
    _os_log_impl(&_mh_execute_header, v39, v40, "%{public}s %{public}s Error %{public}@", v44, 0x20u);
    sub_10000B3A8(v61, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();
  }

  else
  {
  }

  v50 = *(v0 + 1720);
  v51 = type metadata accessor for Peripheral.DisconnectionOptions();
  (*(*(v51 - 8) + 56))(v50, 1, 1, v51);
  v52 = swift_task_alloc();
  *(v0 + 2232) = v52;
  *v52 = v0;
  v52[1] = sub_10037E770;
  v53 = *(v0 + 1824);
  v54 = *(v0 + 1816);
  v55 = *(v0 + 1720);

  return dispatch thunk of PeripheralProtocol.cancelConnection(options:)(v55, v54, v53);
}

uint64_t sub_10037ACCC()
{
  v29 = v0;
  v1 = v0[253];
  v2 = v0[252];
  v3 = v0[249];
  v4 = v0[248];
  v5 = v0[245];
  v6 = v0[244];

  sub_10038B978(v2, v1, 2);
  sub_10038B978(v4, v3, 1);
  sub_10038B978(v6, v5, 0);
  sub_10038B978(v6, v5, 0);
  sub_100007BAC(v0 + 92);
  sub_100007BAC(v0 + 74);
  sub_100007BAC(v0 + 56);
  sub_100007BAC(v0 + 38);
  sub_100007BAC(v0 + 20);
  sub_100007BAC(v0 + 2);
  sub_100007BAC(v0 + 152);
  v0[277] = v0[264];
  if (qword_1016946A0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  v0[278] = sub_1000076D4(v7, qword_10169E3B0);

  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[226];
    v11 = v0[225];
    v12 = v0[224];
    v26 = v9;
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v13 = 136446722;
    *(v13 + 4) = sub_1000136BC(0xD00000000000002FLL, 0x8000000101351710, &v28);
    *(v13 + 12) = 2082;
    dispatch thunk of PeripheralProtocol.id.getter();
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;

    (*(v11 + 8))(v10, v12);
    v17 = sub_1000136BC(v14, v16, &v28);

    *(v13 + 14) = v17;
    *(v13 + 22) = 2114;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 24) = v18;
    *v27 = v18;
    _os_log_impl(&_mh_execute_header, v8, v26, "%{public}s %{public}s Error %{public}@", v13, 0x20u);
    sub_10000B3A8(v27, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();
  }

  else
  {
  }

  v19 = v0[215];
  v20 = type metadata accessor for Peripheral.DisconnectionOptions();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  v21 = swift_task_alloc();
  v0[279] = v21;
  *v21 = v0;
  v21[1] = sub_10037E770;
  v22 = v0[228];
  v23 = v0[227];
  v24 = v0[215];

  return dispatch thunk of PeripheralProtocol.cancelConnection(options:)(v24, v23, v22);
}

uint64_t sub_10037B0F8()
{
  v2 = *v1;
  *(*v1 + 2128) = v0;

  if (v0)
  {
    v3 = v2[253];
    v4 = v2[252];
    sub_10038B978(v2[248], v2[249], 1);
    sub_10038B978(v4, v3, 2);
    v5 = sub_10037BB90;
  }

  else
  {
    sub_100007BAC(v2 + 176);
    v5 = sub_10037B244;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10037B244()
{
  v68 = v0;
  sub_1001011C0(v0 + 1360, v0 + 112);
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 1480);
    *(v0 + 2136) = v1;
    v2 = *(v0 + 1496);
    if (v2 == 9)
    {

      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = *(v0 + 1808);
        v6 = *(v0 + 1800);
        v7 = *(v0 + 1792);
        v8 = swift_slowAlloc();
        v67[0] = swift_slowAlloc();
        *v8 = 136446466;
        v64 = v4;
        dispatch thunk of PeripheralProtocol.id.getter();
        sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
        v9 = dispatch thunk of CustomStringConvertible.description.getter();
        v11 = v10;

        (*(v6 + 8))(v5, v7);
        v12 = sub_1000136BC(v9, v11, v67);

        *(v8 + 4) = v12;
        *(v8 + 12) = 2080;
        v13 = sub_10098E010();
        v15 = sub_1000136BC(v13, v14, v67);

        *(v8 + 14) = v15;
        _os_log_impl(&_mh_execute_header, v3, v64, "%{public}s firmwareVersion: %s", v8, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }

      *(v0 + 1192) = &type metadata for PoshAccessoryNonOwnerCommand;
      *(v0 + 1200) = *(v0 + 1912);
      *(v0 + 1168) = xmmword_10139D990;
      *(v0 + 1184) = 11;
      v58 = swift_task_alloc();
      *(v0 + 2144) = v58;
      *v58 = v0;
      v58[1] = sub_10037BFC4;
      v59 = *(v0 + 1920);
      v60 = *(v0 + 1912);
      v61 = *(v0 + 1896);

      return sub_101213204(v0 + 1312, v61, v0 + 1168, &type metadata for PoshAccessoryNonOwnerCommand, v60, v59, 0);
    }

    v21 = *(v0 + 1488);
    v22 = *(v0 + 1992);
    v23 = *(v0 + 1984);
    sub_10038B978(*(v0 + 2016), *(v0 + 2024), 2);
    sub_10038B978(v23, v22, 1);
    v18 = v1;
    v19 = v21;
    v20 = v2;
  }

  else
  {
    v16 = *(v0 + 1992);
    v17 = *(v0 + 1984);
    sub_10038B978(*(v0 + 2016), *(v0 + 2024), 2);
    v18 = v17;
    v19 = v16;
    v20 = 1;
  }

  sub_10038B978(v18, v19, v20);

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = *(v0 + 1808);
    v27 = *(v0 + 1800);
    v28 = *(v0 + 1792);
    v29 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v67[0] = v65;
    *v29 = 136446210;
    dispatch thunk of PeripheralProtocol.id.getter();
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
    v30 = dispatch thunk of CustomStringConvertible.description.getter();
    v32 = v31;

    (*(v27 + 8))(v26, v28);
    v33 = sub_1000136BC(v30, v32, v67);

    *(v29 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v24, v25, "%{public}s Invalid firmwareVersionCommandResponse!", v29, 0xCu);
    sub_100007BAC(v65);
  }

  else
  {
  }

  v34 = *(v0 + 2024);
  v35 = *(v0 + 2016);
  v66 = *(v0 + 1992);
  v36 = *(v0 + 1984);
  v37 = *(v0 + 1960);
  v38 = *(v0 + 1952);
  type metadata accessor for AccessoryMetadataManager.Error(0);
  sub_10038B3E0(&qword_10169E730, type metadata accessor for AccessoryMetadataManager.Error, &unk_10139DCD8);
  v39 = swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  sub_10038B978(v35, v34, 2);
  sub_10038B978(v36, v66, 1);
  sub_10038B978(v38, v37, 0);
  sub_10038B978(v38, v37, 0);
  sub_100007BAC((v0 + 1360));
  sub_100007BAC((v0 + 880));
  sub_100007BAC((v0 + 736));
  sub_100007BAC((v0 + 592));
  sub_100007BAC((v0 + 448));
  sub_100007BAC((v0 + 304));
  sub_100007BAC((v0 + 160));
  sub_100007BAC((v0 + 16));
  *(v0 + 2216) = v39;
  if (qword_1016946A0 != -1)
  {
    swift_once();
  }

  v40 = type metadata accessor for Logger();
  *(v0 + 2224) = sub_1000076D4(v40, qword_10169E3B0);

  swift_errorRetain();
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = *(v0 + 1808);
    v44 = *(v0 + 1800);
    v45 = *(v0 + 1792);
    v46 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v67[0] = swift_slowAlloc();
    *v46 = 136446722;
    *(v46 + 4) = sub_1000136BC(0xD00000000000002FLL, 0x8000000101351710, v67);
    *(v46 + 12) = 2082;
    dispatch thunk of PeripheralProtocol.id.getter();
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
    v47 = dispatch thunk of CustomStringConvertible.description.getter();
    v49 = v48;

    (*(v44 + 8))(v43, v45);
    v50 = sub_1000136BC(v47, v49, v67);

    *(v46 + 14) = v50;
    *(v46 + 22) = 2114;
    swift_errorRetain();
    v51 = _swift_stdlib_bridgeErrorToNSError();
    *(v46 + 24) = v51;
    *v63 = v51;
    _os_log_impl(&_mh_execute_header, v41, v42, "%{public}s %{public}s Error %{public}@", v46, 0x20u);
    sub_10000B3A8(v63, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();
  }

  else
  {
  }

  v52 = *(v0 + 1720);
  v53 = type metadata accessor for Peripheral.DisconnectionOptions();
  (*(*(v53 - 8) + 56))(v52, 1, 1, v53);
  v54 = swift_task_alloc();
  *(v0 + 2232) = v54;
  *v54 = v0;
  v54[1] = sub_10037E770;
  v55 = *(v0 + 1824);
  v56 = *(v0 + 1816);
  v57 = *(v0 + 1720);

  return dispatch thunk of PeripheralProtocol.cancelConnection(options:)(v57, v56, v55);
}

uint64_t sub_10037BB90()
{
  v29 = v0;
  v1 = v0[253];
  v2 = v0[252];
  v3 = v0[249];
  v4 = v0[248];
  v5 = v0[245];
  v6 = v0[244];

  sub_10038B978(v2, v1, 2);
  sub_10038B978(v4, v3, 1);
  sub_10038B978(v6, v5, 0);
  sub_10038B978(v6, v5, 0);
  sub_100007BAC(v0 + 110);
  sub_100007BAC(v0 + 92);
  sub_100007BAC(v0 + 74);
  sub_100007BAC(v0 + 56);
  sub_100007BAC(v0 + 38);
  sub_100007BAC(v0 + 20);
  sub_100007BAC(v0 + 2);
  sub_100007BAC(v0 + 176);
  v0[277] = v0[266];
  if (qword_1016946A0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  v0[278] = sub_1000076D4(v7, qword_10169E3B0);

  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[226];
    v11 = v0[225];
    v12 = v0[224];
    v26 = v9;
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v13 = 136446722;
    *(v13 + 4) = sub_1000136BC(0xD00000000000002FLL, 0x8000000101351710, &v28);
    *(v13 + 12) = 2082;
    dispatch thunk of PeripheralProtocol.id.getter();
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;

    (*(v11 + 8))(v10, v12);
    v17 = sub_1000136BC(v14, v16, &v28);

    *(v13 + 14) = v17;
    *(v13 + 22) = 2114;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 24) = v18;
    *v27 = v18;
    _os_log_impl(&_mh_execute_header, v8, v26, "%{public}s %{public}s Error %{public}@", v13, 0x20u);
    sub_10000B3A8(v27, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();
  }

  else
  {
  }

  v19 = v0[215];
  v20 = type metadata accessor for Peripheral.DisconnectionOptions();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  v21 = swift_task_alloc();
  v0[279] = v21;
  *v21 = v0;
  v21[1] = sub_10037E770;
  v22 = v0[228];
  v23 = v0[227];
  v24 = v0[215];

  return dispatch thunk of PeripheralProtocol.cancelConnection(options:)(v24, v23, v22);
}

uint64_t sub_10037BFC4()
{
  v2 = *v1;
  *(*v1 + 2152) = v0;

  if (v0)
  {
    v3 = sub_10037C874;
  }

  else
  {
    sub_100007BAC((v2 + 1168));
    v3 = sub_10037C0E0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10037C0E0()
{
  v55 = v0;
  sub_1001011C0(v0 + 1312, v0 + 1120);
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 1576);
    v2 = *(v0 + 1592);
    if (v2 == 6)
    {

      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = *(v0 + 1808);
        v6 = *(v0 + 1800);
        v7 = *(v0 + 1792);
        v8 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v54[0] = v51;
        *v8 = 136446466;
        v49 = v4;
        dispatch thunk of PeripheralProtocol.id.getter();
        sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
        v9 = v7;
        v10 = dispatch thunk of CustomStringConvertible.description.getter();
        v12 = v11;

        (*(v6 + 8))(v5, v9);
        v13 = sub_1000136BC(v10, v12, v54);

        *(v8 + 4) = v13;
        *(v8 + 12) = 256;
        *(v8 + 14) = v1;
        _os_log_impl(&_mh_execute_header, v3, v49, "%{public}s batteryType: %hhu", v8, 0xFu);
        sub_100007BAC(v51);
      }

      else
      {
      }

      v42 = v1;
      if (v1 >= 3u)
      {
        v42 = 3;
      }

      *(v0 + 1473) = v42;
      *(v0 + 1000) = &type metadata for PoshAccessoryNonOwnerCommand;
      *(v0 + 1008) = *(v0 + 1912);
      *(v0 + 976) = xmmword_10139D9A0;
      *(v0 + 992) = 11;
      v43 = swift_task_alloc();
      *(v0 + 2160) = v43;
      *v43 = v0;
      v43[1] = sub_10037CB78;
      v44 = *(v0 + 1920);
      v45 = *(v0 + 1912);
      v46 = *(v0 + 1896);

      return sub_101213204(v0 + 1072, v46, v0 + 976, &type metadata for PoshAccessoryNonOwnerCommand, v45, v44, 0);
    }

    sub_10038B978(*(v0 + 1576), *(v0 + 1584), v2);
  }

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = *(v0 + 1808);
    v17 = *(v0 + 1800);
    v18 = *(v0 + 1792);
    v19 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v54[0] = v52;
    *v19 = 136446210;
    dispatch thunk of PeripheralProtocol.id.getter();
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v21;

    (*(v17 + 8))(v16, v18);
    v23 = sub_1000136BC(v20, v22, v54);

    *(v19 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v14, v15, "%{public}s Invalid batteryTypeCommandResponse!", v19, 0xCu);
    sub_100007BAC(v52);
  }

  else
  {
  }

  type metadata accessor for AccessoryMetadataManager.Error(0);
  sub_10038B3E0(&qword_10169E730, type metadata accessor for AccessoryMetadataManager.Error, &unk_10139DCD8);
  v24 = swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  sub_100007BAC((v0 + 1312));
  *(v0 + 2192) = v24;

  swift_errorRetain();
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = *(v0 + 1808);
    v28 = *(v0 + 1800);
    v29 = *(v0 + 1792);
    v30 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v54[0] = v53;
    *v30 = 136446466;
    v48 = v26;
    dispatch thunk of PeripheralProtocol.id.getter();
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    v33 = v32;

    (*(v28 + 8))(v27, v29);
    v34 = sub_1000136BC(v31, v33, v54);

    *(v30 + 4) = v34;
    *(v30 + 12) = 2114;
    swift_errorRetain();
    v35 = _swift_stdlib_bridgeErrorToNSError();
    *(v30 + 14) = v35;
    *v50 = v35;
    _os_log_impl(&_mh_execute_header, v25, v48, "%{public}s Error reading BatteryLevel/BatteryType %{public}@", v30, 0x16u);
    sub_10000B3A8(v50, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v53);
  }

  else
  {
  }

  v36 = *(v0 + 1728);
  v37 = type metadata accessor for Peripheral.DisconnectionOptions();
  (*(*(v37 - 8) + 56))(v36, 1, 1, v37);
  v38 = swift_task_alloc();
  *(v0 + 2200) = v38;
  *v38 = v0;
  v38[1] = sub_10037DE90;
  v39 = *(v0 + 1824);
  v40 = *(v0 + 1816);
  v41 = *(v0 + 1728);

  return dispatch thunk of PeripheralProtocol.cancelConnection(options:)(v41, v40, v39);
}

uint64_t sub_10037C874()
{
  v23 = v0;
  sub_100007BAC(v0 + 146);
  v0[274] = v0[269];

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[226];
    v4 = v0[225];
    v5 = v0[224];
    v6 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = v21;
    *v6 = 136446466;
    v19 = v2;
    dispatch thunk of PeripheralProtocol.id.getter();
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
    v7 = dispatch thunk of CustomStringConvertible.description.getter();
    v9 = v8;

    (*(v4 + 8))(v3, v5);
    v10 = sub_1000136BC(v7, v9, &v22);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2114;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v11;
    *v20 = v11;
    _os_log_impl(&_mh_execute_header, v1, v19, "%{public}s Error reading BatteryLevel/BatteryType %{public}@", v6, 0x16u);
    sub_10000B3A8(v20, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v21);
  }

  else
  {
  }

  v12 = v0[216];
  v13 = type metadata accessor for Peripheral.DisconnectionOptions();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = swift_task_alloc();
  v0[275] = v14;
  *v14 = v0;
  v14[1] = sub_10037DE90;
  v15 = v0[228];
  v16 = v0[227];
  v17 = v0[216];

  return dispatch thunk of PeripheralProtocol.cancelConnection(options:)(v17, v16, v15);
}

uint64_t sub_10037CB78()
{
  v2 = *v1;
  *(*v1 + 2168) = v0;

  if (v0)
  {
    v3 = sub_10037D3FC;
  }

  else
  {
    sub_100007BAC((v2 + 976));
    v3 = sub_10037CC94;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10037CC94()
{
  v52 = v0;
  sub_1001011C0(v0 + 1072, v0 + 928);
  if (!swift_dynamicCast())
  {
LABEL_6:

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = *(v0 + 1808);
      v16 = *(v0 + 1800);
      v17 = *(v0 + 1792);
      v18 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v51[0] = v49;
      *v18 = 136446210;
      dispatch thunk of PeripheralProtocol.id.getter();
      sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
      v19 = dispatch thunk of CustomStringConvertible.description.getter();
      v21 = v20;

      (*(v16 + 8))(v15, v17);
      v22 = sub_1000136BC(v19, v21, v51);

      *(v18 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v13, v14, "%{public}s Invalid batteryLevelCommandResponse!", v18, 0xCu);
      sub_100007BAC(v49);
    }

    else
    {
    }

    type metadata accessor for AccessoryMetadataManager.Error(0);
    sub_10038B3E0(&qword_10169E730, type metadata accessor for AccessoryMetadataManager.Error, &unk_10139DCD8);
    v23 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_100007BAC((v0 + 1072));
    sub_100007BAC((v0 + 1312));
    *(v0 + 2192) = v23;

    swift_errorRetain();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = *(v0 + 1808);
      v27 = *(v0 + 1800);
      v28 = *(v0 + 1792);
      v29 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v51[0] = v50;
      *v29 = 136446466;
      v46 = v25;
      dispatch thunk of PeripheralProtocol.id.getter();
      sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
      v30 = dispatch thunk of CustomStringConvertible.description.getter();
      v32 = v31;

      (*(v27 + 8))(v26, v28);
      v33 = sub_1000136BC(v30, v32, v51);

      *(v29 + 4) = v33;
      *(v29 + 12) = 2114;
      swift_errorRetain();
      v34 = _swift_stdlib_bridgeErrorToNSError();
      *(v29 + 14) = v34;
      *v47 = v34;
      _os_log_impl(&_mh_execute_header, v24, v46, "%{public}s Error reading BatteryLevel/BatteryType %{public}@", v29, 0x16u);
      sub_10000B3A8(v47, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v50);
    }

    else
    {
    }

    v35 = *(v0 + 1728);
    v36 = type metadata accessor for Peripheral.DisconnectionOptions();
    (*(*(v36 - 8) + 56))(v35, 1, 1, v36);
    v37 = swift_task_alloc();
    *(v0 + 2200) = v37;
    *v37 = v0;
    v37[1] = sub_10037DE90;
    v38 = *(v0 + 1824);
    v39 = *(v0 + 1816);
    v40 = *(v0 + 1728);
    goto LABEL_17;
  }

  v1 = *(v0 + 1672);
  v2 = *(v0 + 1688);
  if (v2 != 7)
  {
    sub_10038B978(*(v0 + 1672), *(v0 + 1680), v2);
    goto LABEL_6;
  }

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 1808);
    v6 = *(v0 + 1800);
    v7 = *(v0 + 1792);
    v8 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v51[0] = v48;
    *v8 = 136446466;
    dispatch thunk of PeripheralProtocol.id.getter();
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = v10;

    (*(v6 + 8))(v5, v7);
    v12 = sub_1000136BC(v9, v11, v51);

    *(v8 + 4) = v12;
    *(v8 + 12) = 256;
    *(v8 + 14) = v1;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s batteryLevel: %hhu", v8, 0xFu);
    sub_100007BAC(v48);
  }

  else
  {
  }

  v41 = v1;
  if ((v1 & 0xFC) != 0)
  {
    v41 = 4;
  }

  *(v0 + 1474) = v41;
  v42 = *(v0 + 1736);
  v43 = type metadata accessor for Peripheral.DisconnectionOptions();
  (*(*(v43 - 8) + 56))(v42, 1, 1, v43);
  v44 = swift_task_alloc();
  *(v0 + 2176) = v44;
  *v44 = v0;
  v44[1] = sub_10037D708;
  v38 = *(v0 + 1824);
  v39 = *(v0 + 1816);
  v40 = *(v0 + 1736);
LABEL_17:

  return dispatch thunk of PeripheralProtocol.cancelConnection(options:)(v40, v39, v38);
}

uint64_t sub_10037D3FC()
{
  v23 = v0;
  sub_100007BAC(v0 + 164);
  sub_100007BAC(v0 + 122);
  v0[274] = v0[271];

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[226];
    v4 = v0[225];
    v5 = v0[224];
    v6 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = v21;
    *v6 = 136446466;
    v19 = v2;
    dispatch thunk of PeripheralProtocol.id.getter();
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
    v7 = dispatch thunk of CustomStringConvertible.description.getter();
    v9 = v8;

    (*(v4 + 8))(v3, v5);
    v10 = sub_1000136BC(v7, v9, &v22);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2114;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v11;
    *v20 = v11;
    _os_log_impl(&_mh_execute_header, v1, v19, "%{public}s Error reading BatteryLevel/BatteryType %{public}@", v6, 0x16u);
    sub_10000B3A8(v20, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v21);
  }

  else
  {
  }

  v12 = v0[216];
  v13 = type metadata accessor for Peripheral.DisconnectionOptions();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = swift_task_alloc();
  v0[275] = v14;
  *v14 = v0;
  v14[1] = sub_10037DE90;
  v15 = v0[228];
  v16 = v0[227];
  v17 = v0[216];

  return dispatch thunk of PeripheralProtocol.cancelConnection(options:)(v17, v16, v15);
}

uint64_t sub_10037D708()
{
  v2 = *v1;
  *(*v1 + 2184) = v0;

  sub_10000B3A8(*(v2 + 1736), &qword_10169E750, &unk_1013DC4B0);
  if (v0)
  {
    v3 = sub_10037DB84;
  }

  else
  {
    v3 = sub_10037D84C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10037D84C()
{
  v30 = *(v0 + 1474);
  v29 = *(v0 + 1473);
  v26 = *(v0 + 2072);
  v27 = *(v0 + 2048);
  v28 = *(v0 + 2096);
  v21 = *(v0 + 2016);
  v22 = *(v0 + 2024);
  v23 = *(v0 + 1984);
  v24 = *(v0 + 1992);
  v1 = *(v0 + 1960);
  v2 = *(v0 + 1952);
  v3 = *(v0 + 1808);
  v4 = *(v0 + 1800);
  v5 = *(v0 + 1792);
  v25 = *(v0 + 2136);
  v6 = *(v0 + 1696);
  dispatch thunk of PeripheralProtocol.id.getter();
  Identifier.id.getter();
  (*(v4 + 8))(v3, v5);
  v7 = type metadata accessor for AccessoryMetadata(0);
  v8 = v7[9];
  v9 = type metadata accessor for AirTagVersionNumber();
  (*(*(v9 - 8) + 56))(v6 + v8, 1, 1, v9);
  sub_100017D5C(v2, v1);

  sub_10038B978(v21, v22, 2);
  sub_10038B978(v23, v24, 1);
  sub_10038B978(v2, v1, 0);
  sub_10038B978(v2, v1, 0);
  sub_100007BAC((v0 + 1072));
  sub_100007BAC((v0 + 1312));
  sub_100007BAC((v0 + 1360));
  sub_100007BAC((v0 + 880));
  sub_100007BAC((v0 + 736));
  sub_100007BAC((v0 + 592));
  sub_100007BAC((v0 + 448));
  sub_100007BAC((v0 + 304));
  sub_100007BAC((v0 + 160));
  sub_100007BAC((v0 + 16));
  v10 = (v6 + v7[5]);
  *v10 = v2;
  v10[1] = v1;
  v11 = (v6 + v7[6]);
  *v11 = v23;
  v11[1] = v24;
  v12 = (v6 + v7[7]);
  *v12 = v21;
  v12[1] = v22;
  *(v6 + v7[8]) = v25;
  v13 = v6 + v7[10];
  *v13 = v26;
  *(v13 + 4) = 0;
  v14 = v6 + v7[11];
  *v14 = 0;
  *(v14 + 8) = 0;
  *(v14 + 16) = 1;
  v15 = v6 + v7[12];
  *v15 = v27;
  *(v15 + 8) = 0;
  v16 = v6 + v7[13];
  *v16 = v28;
  *(v16 + 4) = 0;
  *(v6 + v7[14]) = v29;
  *(v6 + v7[15]) = v30;
  v17 = (v6 + v7[16]);
  *v17 = 0;
  v17[1] = 0xE000000000000000;
  v18 = v6 + v7[17];
  *v18 = 0;
  *(v18 + 4) = 1;

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_10037DB84()
{
  v23 = v0;
  sub_100007BAC(v0 + 134);
  sub_100007BAC(v0 + 164);
  v0[274] = v0[273];

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[226];
    v4 = v0[225];
    v5 = v0[224];
    v6 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = v21;
    *v6 = 136446466;
    v19 = v2;
    dispatch thunk of PeripheralProtocol.id.getter();
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
    v7 = dispatch thunk of CustomStringConvertible.description.getter();
    v9 = v8;

    (*(v4 + 8))(v3, v5);
    v10 = sub_1000136BC(v7, v9, &v22);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2114;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v11;
    *v20 = v11;
    _os_log_impl(&_mh_execute_header, v1, v19, "%{public}s Error reading BatteryLevel/BatteryType %{public}@", v6, 0x16u);
    sub_10000B3A8(v20, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v21);
  }

  else
  {
  }

  v12 = v0[216];
  v13 = type metadata accessor for Peripheral.DisconnectionOptions();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = swift_task_alloc();
  v0[275] = v14;
  *v14 = v0;
  v14[1] = sub_10037DE90;
  v15 = v0[228];
  v16 = v0[227];
  v17 = v0[216];

  return dispatch thunk of PeripheralProtocol.cancelConnection(options:)(v17, v16, v15);
}

uint64_t sub_10037DE90()
{
  v2 = *v1;
  (*v1)[276] = v0;

  if (v0)
  {
    v3 = v2[253];
    v4 = v2[252];
    v5 = v2[249];
    v6 = v2[248];
    sub_10000B3A8(v2[216], &qword_10169E750, &unk_1013DC4B0);
    sub_10038B978(v6, v5, 1);
    sub_10038B978(v4, v3, 2);
    v7 = sub_10037E330;
  }

  else
  {
    sub_10000B3A8(v2[216], &qword_10169E750, &unk_1013DC4B0);
    v7 = sub_10037E014;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10037E014()
{
  v1 = v0[267];
  v27 = v0[259];
  v28 = v0[256];
  v29 = v0[262];
  v24 = v0[253];
  v25 = v0[248];
  v26 = v0[249];
  v2 = v0[245];
  v3 = v0[244];
  v23 = v0[252];
  v4 = v0[226];
  v5 = v0[225];
  v6 = v0[224];
  v7 = v0[212];
  dispatch thunk of PeripheralProtocol.id.getter();
  Identifier.id.getter();
  (*(v5 + 8))(v4, v6);
  v8 = type metadata accessor for AccessoryMetadata(0);
  v9 = v8[9];
  v10 = type metadata accessor for AirTagVersionNumber();
  (*(*(v10 - 8) + 56))(v7 + v9, 1, 1, v10);
  sub_100017D5C(v3, v2);

  sub_10038B978(v23, v24, 2);
  sub_10038B978(v25, v26, 1);
  sub_10038B978(v3, v2, 0);
  sub_10038B978(v3, v2, 0);
  sub_100007BAC(v0 + 170);
  sub_100007BAC(v0 + 110);
  sub_100007BAC(v0 + 92);
  sub_100007BAC(v0 + 74);
  sub_100007BAC(v0 + 56);
  sub_100007BAC(v0 + 38);
  sub_100007BAC(v0 + 20);
  sub_100007BAC(v0 + 2);
  v11 = (v7 + v8[5]);
  *v11 = v3;
  v11[1] = v2;
  v12 = (v7 + v8[6]);
  *v12 = v25;
  v12[1] = v26;
  v13 = (v7 + v8[7]);
  *v13 = v23;
  v13[1] = v24;
  v14 = v7 + v8[8];
  *v14 = v1;
  *(v14 + 2) = BYTE2(v1);
  *(v14 + 3) = BYTE3(v1);
  v15 = v7 + v8[10];
  *v15 = v27;
  *(v15 + 4) = 0;
  v16 = v7 + v8[11];
  *v16 = 0;
  *(v16 + 8) = 0;
  *(v16 + 16) = 1;
  v17 = v7 + v8[12];
  *v17 = v28;
  *(v17 + 8) = 0;
  v18 = v7 + v8[13];
  *v18 = v29;
  *(v18 + 4) = 0;
  *(v7 + v8[14]) = 3;
  *(v7 + v8[15]) = 4;
  v19 = (v7 + v8[16]);
  *v19 = 0;
  v19[1] = 0xE000000000000000;
  v20 = v7 + v8[17];
  *v20 = 0;
  *(v20 + 4) = 1;

  v21 = v0[1];

  return v21();
}

uint64_t sub_10037E330()
{
  v29 = v0;
  v1 = v0[253];
  v2 = v0[252];
  v3 = v0[249];
  v4 = v0[248];
  v5 = v0[245];
  v6 = v0[244];

  sub_10038B978(v2, v1, 2);
  sub_10038B978(v4, v3, 1);
  sub_10038B978(v6, v5, 0);
  sub_10038B978(v6, v5, 0);
  sub_100007BAC(v0 + 170);
  sub_100007BAC(v0 + 110);
  sub_100007BAC(v0 + 92);
  sub_100007BAC(v0 + 74);
  sub_100007BAC(v0 + 56);
  sub_100007BAC(v0 + 38);
  sub_100007BAC(v0 + 20);
  sub_100007BAC(v0 + 2);
  v0[277] = v0[276];
  if (qword_1016946A0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  v0[278] = sub_1000076D4(v7, qword_10169E3B0);

  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[226];
    v11 = v0[225];
    v12 = v0[224];
    v26 = v9;
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v13 = 136446722;
    *(v13 + 4) = sub_1000136BC(0xD00000000000002FLL, 0x8000000101351710, &v28);
    *(v13 + 12) = 2082;
    dispatch thunk of PeripheralProtocol.id.getter();
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;

    (*(v11 + 8))(v10, v12);
    v17 = sub_1000136BC(v14, v16, &v28);

    *(v13 + 14) = v17;
    *(v13 + 22) = 2114;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 24) = v18;
    *v27 = v18;
    _os_log_impl(&_mh_execute_header, v8, v26, "%{public}s %{public}s Error %{public}@", v13, 0x20u);
    sub_10000B3A8(v27, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();
  }

  else
  {
  }

  v19 = v0[215];
  v20 = type metadata accessor for Peripheral.DisconnectionOptions();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  v21 = swift_task_alloc();
  v0[279] = v21;
  *v21 = v0;
  v21[1] = sub_10037E770;
  v22 = v0[228];
  v23 = v0[227];
  v24 = v0[215];

  return dispatch thunk of PeripheralProtocol.cancelConnection(options:)(v24, v23, v22);
}

uint64_t sub_10037E770()
{
  v2 = *v1;
  *(*v1 + 2240) = v0;

  sub_10000B3A8(*(v2 + 1720), &qword_10169E750, &unk_1013DC4B0);
  if (v0)
  {
    v3 = sub_10037E978;
  }

  else
  {
    v3 = sub_10037E8B4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10037E8B4(uint64_t a1)
{
  swift_willThrow();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_10037E978()
{
  v16 = v0;

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[226];
    v4 = v0[225];
    v5 = v0[224];
    v6 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15[0] = swift_slowAlloc();
    *v6 = 136315650;
    *(v6 + 4) = sub_1000136BC(0xD00000000000002FLL, 0x8000000101351710, v15);
    *(v6 + 12) = 2082;
    dispatch thunk of PeripheralProtocol.id.getter();
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
    v7 = dispatch thunk of CustomStringConvertible.description.getter();
    v9 = v8;

    (*(v4 + 8))(v3, v5);
    v10 = sub_1000136BC(v7, v9, v15);

    *(v6 + 14) = v10;
    *(v6 + 22) = 2114;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 24) = v11;
    *v14 = v11;
    _os_log_impl(&_mh_execute_header, v1, v2, "%s %{public}s cancelConnection error: %{public}@", v6, 0x20u);
    sub_10000B3A8(v14, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();
  }

  else
  {
  }

  swift_willThrow();

  v12 = v0[1];

  return v12();
}

uint64_t sub_10037EC80(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_10037ECA4, 0, 0);
}

uint64_t sub_10037ECA4()
{
  if (qword_1016946A8 != -1)
  {
    swift_once();
  }

  v2 = v0[3];
  v1 = v0[4];
  v3 = swift_allocObject();
  v0[5] = v3;
  v3[2] = v2;
  v3[3] = v1;
  v3[4] = v1;
  v9 = &async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult<A>(_:) + async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult<A>(_:);
  v4 = v2;
  v5 = swift_task_alloc();
  v0[6] = v5;
  v6 = type metadata accessor for RawAccessoryMetadata(0);
  *v5 = v0;
  v5[1] = sub_10037EDE4;
  v7 = v0[2];

  return (v9)(v7, &unk_10139DB50, v3, v6);
}

uint64_t sub_10037EDE4()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10037EF20, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_10037EF20()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10037EF84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_10037EFA8, 0, 0);
}

uint64_t sub_10037EFA8()
{
  v1 = *(v0 + 40);
  v2 = swift_allocObject();
  *(v0 + 48) = v2;
  v3 = *(v0 + 24);
  *(v2 + 16) = v3;
  *(v2 + 32) = v1;
  v4 = v3;
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  v6 = type metadata accessor for RawAccessoryMetadata(0);
  *v5 = v0;
  v5[1] = sub_10037F0AC;
  v7 = *(v0 + 16);

  return withTimeout<A>(_:block:)(v7, 0x40AAD21B3B700000, 3, &unk_10139DB60, v2, v6);
}

uint64_t sub_10037F0AC()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10037F1E8, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_10037F1E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10037F24C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  v4 = sub_1000BC4D4(&qword_101697248, &qword_1013DC4D0);
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  v6 = sub_1000BC4D4(&qword_101697240, &unk_10138BDA0);
  v3[13] = v6;
  v3[14] = *(v6 - 8);
  v3[15] = swift_task_alloc();
  v7 = type metadata accessor for CentralManager.State();
  v3[16] = v7;
  v3[17] = *(v7 - 8);
  v3[18] = swift_task_alloc();
  sub_1000BC4D4(&unk_1016C1200, &qword_1013B6240);
  v3[19] = swift_task_alloc();

  return _swift_task_switch(sub_10037F474, 0, 0);
}

uint64_t sub_10037F474()
{
  v17 = v0;
  if (qword_1016946A0 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = type metadata accessor for Logger();
  v0[20] = sub_1000076D4(v2, qword_10169E3B0);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[5];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_1000136BC(0xD00000000000002CLL, 0x80000001013519A0, &v16);
    *(v7 + 12) = 2114;
    *(v7 + 14) = v6;
    *v8 = v6;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s for peripheral %{public}@", v7, 0x16u);
    sub_10000B3A8(v8, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v9);
  }

  v11 = v0[19];
  v0[21] = type metadata accessor for CentralManager();
  v12 = type metadata accessor for CentralManager.Options();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_task_alloc();
  v0[22] = v13;
  *v13 = v0;
  v13[1] = sub_10037F6EC;
  v14 = v0[19];

  return CentralManager.__allocating_init(options:)(v14);
}

uint64_t sub_10037F6EC(uint64_t a1)
{
  *(*v1 + 184) = a1;

  return _swift_task_switch(sub_10037F7EC, 0, 0);
}

uint64_t sub_10037F7EC()
{
  (*(v0[17] + 104))(v0[18], enum case for CentralManager.State.poweredOn(_:), v0[16]);
  v1 = swift_task_alloc();
  v0[24] = v1;
  v2 = sub_10038B3E0(&unk_1016C1160, &type metadata accessor for CentralManager, &protocol conformance descriptor for CentralManager);
  *v1 = v0;
  v1[1] = sub_10037F8E8;
  v3 = v0[21];
  v4 = v0[18];

  return CentralManagerProtocol.await(state:)(v4, v3, v2);
}

uint64_t sub_10037F8E8()
{
  v2 = *(*v1 + 144);
  v3 = *(*v1 + 136);
  v4 = *(*v1 + 128);
  *(*v1 + 200) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_100380C78;
  }

  else
  {
    v5 = sub_10037FA58;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10037FA58()
{
  v1 = v0[5];
  sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
  v2 = swift_allocObject();
  v0[26] = v2;
  *(v2 + 16) = xmmword_101385D80;
  v3 = [*(v1 + OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject) identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = (&async function pointer to dispatch thunk of CentralManager.retrievePeripherals(identifiers:) + async function pointer to dispatch thunk of CentralManager.retrievePeripherals(identifiers:));
  v4 = swift_task_alloc();
  v0[27] = v4;
  *v4 = v0;
  v4[1] = sub_10037FB88;

  return v6(v2);
}

uint64_t sub_10037FB88(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 224) = a1;
  *(v3 + 232) = v1;

  if (v1)
  {
    v4 = sub_100380D20;
  }

  else
  {

    v4 = sub_10037FCA4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10037FCA4()
{
  v1 = v0[28];
  if (v1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:

    type metadata accessor for AccessoryMetadataManager.Error(0);
    sub_10038B3E0(&qword_10169E730, type metadata accessor for AccessoryMetadataManager.Error, &unk_10139DCD8);
    swift_allocError();
    sub_100A22DF0(v5);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v6 = v0[1];

    return v6();
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_10;
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

    v3 = *(v0[28] + 32);
  }

  v0[30] = v3;

  v7 = (&async function pointer to dispatch thunk of Peripheral.connect() + async function pointer to dispatch thunk of Peripheral.connect());
  v4 = swift_task_alloc();
  v0[31] = v4;
  *v4 = v0;
  v4[1] = sub_10037FED0;

  return v7();
}