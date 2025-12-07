uint64_t sub_1010E5D24()
{
  v16 = v0;
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v15 = v5;
    *v3 = 136315394;
    *(v3 + 4) = sub_1000136BC(0xD000000000000026, 0x800000010137B4A0, &v15);
    *(v3 + 12) = 2114;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 14) = v6;
    *v4 = v6;
    _os_log_impl(&_mh_execute_header, v1, v2, "%s failed due to %{public}@", v3, 0x16u);
    sub_10000B3A8(v4, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v5);
  }

  v7 = v0[9];
  v8 = v0[10];
  v9 = v0[8];
  v10 = v0[5];
  v11 = v0[4];
  v12 = *(sub_1000BC4D4(&unk_1016C7DD0, &unk_101406148) + 48);
  sub_1010FC79C(v11, v9, type metadata accessor for DiscoveredObject);
  (*(v8 + 56))(v9 + v12, 1, 1, v7);
  swift_storeEnumTagMultiPayload();
  v10(v9);

  sub_10000B3A8(v9, &qword_1016C7DC8, &qword_101406140);

  v13 = v0[1];

  return v13();
}

uint64_t sub_1010E600C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for DiscoveredObject(0);
  v70 = *(v7 - 8);
  __chkstk_darwin(v7);
  v71 = v8;
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  __chkstk_darwin(v10 - 8);
  v58 = &v51 - v11;
  v12 = type metadata accessor for MACAddress();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v61 = sub_1000BC4D4(&qword_1016A94D0, &qword_1013BB4C0);
  v59 = *(v61 - 8);
  __chkstk_darwin(v61);
  v72 = &v51 - v15;
  v16 = sub_1000BC4D4(&qword_1016C7DE0, &qword_101406158);
  v62 = *(v16 - 8);
  v63 = v16;
  __chkstk_darwin(v16);
  v60 = &v51 - v17;
  v18 = sub_1000BC4D4(&qword_1016C7DE8, &qword_101406160);
  v65 = *(v18 - 8);
  v66 = v18;
  __chkstk_darwin(v18);
  v64 = &v51 - v19;
  v20 = sub_1000BC4D4(&unk_1016C7DF0, &qword_101406168);
  v68 = *(v20 - 8);
  v69 = v20;
  __chkstk_darwin(v20);
  v67 = &v51 - v21;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v55 = v9;
    v56 = a1;
    v57 = a2;
    v23 = *(v7 + 32);
    v24 = result;
    v53 = result;
    v25 = swift_allocObject();
    swift_weakInit();
    v26 = *(v13 + 16);
    v54 = a4;
    v26(&v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a4 + v23, v12);
    v27 = (*(v13 + 80) + 16) & ~*(v13 + 80);
    v28 = swift_allocObject();
    (*(v13 + 32))(v28 + v27, &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
    *(v28 + ((v14 + v27 + 7) & 0xFFFFFFFFFFFFFFF8)) = v25;
    sub_1000BC4D4(&qword_10169E840, &unk_101406170);
    swift_allocObject();

    v73 = Future.init(_:)();
    sub_1000041A4(&unk_1016C7E00, &qword_10169E840, &unk_101406170, &protocol conformance descriptor for Future<A, B>);
    v29 = Publisher.eraseToAnyPublisher()();

    v73 = v29;
    v74 = *(v24 + 24);
    v30 = v74;
    v31 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v32 = v58;
    v52 = *(*(v31 - 8) + 56);
    v52(v58, 1, 1, v31);
    v33 = v30;
    sub_1000BC4D4(&qword_1016A9518, &qword_1013BB500);
    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    sub_1000041A4(&unk_1016C7E10, &qword_1016A9518, &qword_1013BB500, &protocol conformance descriptor for AnyPublisher<A, B>);
    sub_1004682F0();
    Publisher.receive<A>(on:options:)();
    sub_10000B3A8(v32, &unk_1016B0FE0, &unk_101391980);

    if (qword_101695260 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
    sub_1000076D4(v34, qword_1016C7A70);
    v73 = *(v53 + 24);
    v35 = v73;
    v52(v32, 1, 1, v31);
    sub_1000041A4(&qword_1016A9528, &qword_1016A94D0, &qword_1013BB4C0, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
    v36 = v35;
    v38 = v60;
    v37 = v61;
    v39 = v72;
    Publisher.timeout<A>(_:scheduler:options:customError:)();
    sub_10000B3A8(v32, &unk_1016B0FE0, &unk_101391980);

    (*(v59 + 8))(v39, v37);
    sub_1000BC4D4(&qword_10169E890, &unk_1013BB590);
    sub_1000041A4(&qword_1016C7E20, &qword_1016C7DE0, &qword_101406158, &protocol conformance descriptor for Publishers.Timeout<A, B>);
    v40 = v63;
    v41 = v64;
    Publisher.map<A>(_:)();
    (*(v62 + 8))(v38, v40);
    sub_1000BC4D4(&qword_1016C7DA8, &qword_101406138);
    sub_1000041A4(&qword_1016C7E28, &qword_1016C7DE8, &qword_101406160, &protocol conformance descriptor for Publishers.Map<A, B>);
    sub_1000041A4(&qword_1016C7DB8, &qword_1016C7DA8, &qword_101406138, &protocol conformance descriptor for Just<A>);
    v42 = v66;
    v43 = v67;
    Publisher.catch<A>(_:)();
    (*(v65 + 8))(v41, v42);
    v44 = v55;
    sub_1010FC79C(v54, v55, type metadata accessor for DiscoveredObject);
    v45 = (*(v70 + 80) + 16) & ~*(v70 + 80);
    v46 = (v71 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
    v47 = swift_allocObject();
    sub_1010FC734(v44, v47 + v45, type metadata accessor for DiscoveredObject);
    v48 = (v47 + v46);
    v49 = v57;
    *v48 = v56;
    v48[1] = v49;
    sub_1000041A4(&qword_1016C7E30, &unk_1016C7DF0, &qword_101406168, &protocol conformance descriptor for Publishers.Catch<A, B>);

    v50 = v69;
    Publisher<>.sink(receiveValue:)();

    (*(v68 + 8))(v43, v50);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();
  }

  return result;
}

uint64_t sub_1010E6A64(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000BC4D4(a2, a3);
  __chkstk_darwin(v4);
  sub_1010FC79C(a1, &v7 - v5, type metadata accessor for BluetoothCommunicationCoordinator.Error);
  swift_storeEnumTagMultiPayload();
  return Just.init(_:)();
}

uint64_t sub_1010E6B40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v21 = *v3;
  v22 = a3;
  v6 = type metadata accessor for DiscoveredObject(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = v4[3];
  *v12 = v13;
  (*(v10 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v9);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  result = (*(v10 + 8))(v12, v9);
  if (v13)
  {
    v16 = swift_allocObject();
    swift_weakInit();
    sub_1010FC79C(a1, &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DiscoveredObject);
    v17 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = v16;
    sub_1010FC734(&v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for DiscoveredObject);
    *(v18 + ((v8 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = v21;
    sub_1000BC4D4(&qword_1016C7D38, &qword_101406108);
    swift_allocObject();
    v23 = Future.init(_:)();
    sub_1000041A4(&qword_1016C7D40, &qword_1016C7D38, &qword_101406108, &protocol conformance descriptor for Future<A, B>);
    v19 = Publisher.eraseToAnyPublisher()();

    return v19;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1010E6E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for DiscoveredObject(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  __chkstk_darwin(v10 - 8);
  v12 = &v49 - v11;
  v13 = sub_1000BC4D4(&qword_1016C7D48, &qword_101406110);
  v60 = *(v13 - 8);
  v61 = v13;
  __chkstk_darwin(v13);
  v15 = &v49 - v14;
  v64 = sub_1000BC4D4(&qword_1016C7D50, &qword_101406118);
  v62 = *(v64 - 8);
  __chkstk_darwin(v64);
  v59 = &v49 - v16;
  v17 = sub_1000BC4D4(&qword_1016C7D58, &qword_101406120);
  v65 = *(v17 - 8);
  v66 = v17;
  __chkstk_darwin(v17);
  v63 = &v49 - v18;
  v19 = sub_1000BC4D4(&qword_1016C7D60, &qword_101406128);
  v68 = *(v19 - 8);
  v69 = v19;
  __chkstk_darwin(v19);
  v67 = &v49 - v20;
  v21 = sub_1000BC4D4(&qword_1016C7D68, &qword_101406130);
  v71 = *(v21 - 8);
  v72 = v21;
  __chkstk_darwin(v21);
  v70 = &v49 - v22;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v54 = v8;
    v55 = v9;
    v56 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    v57 = a1;
    v58 = a2;
    v24 = result;
    v51 = result;

    v25 = sub_10035B054();

    v73 = v25;
    v74 = *(v24 + 24);
    v26 = v74;
    v27 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v28 = *(v27 - 8);
    v50 = *(v28 + 56);
    v49 = v28 + 56;
    v50(v12, 1, 1, v27);
    v29 = v26;
    v53 = a4;
    sub_1000BC4D4(&unk_1016C7D70, &qword_1013BB580);
    v30 = sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    sub_1000041A4(&qword_1016A95C8, &unk_1016C7D70, &qword_1013BB580, &protocol conformance descriptor for AnyPublisher<A, B>);
    sub_1004682F0();
    v52 = v30;
    Publisher.receive<A>(on:options:)();
    sub_10000B3A8(v12, &unk_1016B0FE0, &unk_101391980);

    type metadata accessor for BluetoothCommunicationCoordinator.Error(0);
    sub_1000041A4(&unk_1016C7D80, &qword_1016C7D48, &qword_101406110, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
    sub_1010FBFB0(&qword_1016A95D0, type metadata accessor for BluetoothCommunicationCoordinator.Error, &unk_101409F40);
    v31 = v59;
    v32 = v61;
    Publisher<>.setFailureType<A>(to:)();
    (*(v60 + 8))(v15, v32);
    if (qword_101695260 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
    sub_1000076D4(v33, qword_1016C7A70);
    v73 = *(v51 + 24);
    v34 = v73;
    v50(v12, 1, 1, v27);
    sub_1000041A4(&unk_1016C7D90, &qword_1016C7D50, &qword_101406118, &protocol conformance descriptor for Publishers.SetFailureType<A, B>);
    v35 = v34;
    v37 = v63;
    v36 = v64;
    Publisher.timeout<A>(_:scheduler:options:customError:)();
    sub_10000B3A8(v12, &unk_1016B0FE0, &unk_101391980);

    (*(v62 + 8))(v31, v36);
    sub_1000BC4D4(&qword_10169E890, &unk_1013BB590);
    sub_1000041A4(&qword_1016C7DA0, &qword_1016C7D58, &qword_101406120, &protocol conformance descriptor for Publishers.Timeout<A, B>);
    v38 = v66;
    v39 = v67;
    Publisher.map<A>(_:)();
    (*(v65 + 8))(v37, v38);
    sub_1000BC4D4(&qword_1016C7DA8, &qword_101406138);
    sub_1000041A4(&qword_1016C7DB0, &qword_1016C7D60, &qword_101406128, &protocol conformance descriptor for Publishers.Map<A, B>);
    sub_1000041A4(&qword_1016C7DB8, &qword_1016C7DA8, &qword_101406138, &protocol conformance descriptor for Just<A>);
    v40 = v69;
    v41 = v70;
    Publisher.catch<A>(_:)();
    (*(v68 + 8))(v39, v40);
    v42 = v56;
    sub_1010FC79C(v53, v56, type metadata accessor for DiscoveredObject);
    v43 = (*(v54 + 80) + 16) & ~*(v54 + 80);
    v44 = (v55 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
    v45 = swift_allocObject();
    sub_1010FC734(v42, v45 + v43, type metadata accessor for DiscoveredObject);
    v46 = (v45 + v44);
    v47 = v58;
    *v46 = v57;
    v46[1] = v47;
    sub_1000041A4(&qword_1016C7DC0, &qword_1016C7D68, &qword_101406130, &protocol conformance descriptor for Publishers.Catch<A, B>);

    v48 = v72;
    Publisher<>.sink(receiveValue:)();

    (*(v71 + 8))(v41, v48);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();
  }

  return result;
}

uint64_t sub_1010E783C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1010FC79C(a1, a2, type metadata accessor for AccessoryMetadata);
  sub_1000BC4D4(&qword_10169E890, &unk_1013BB590);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1010E78A8(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4)
{
  v58 = a4;
  v59 = a3;
  v60 = a2;
  v53 = type metadata accessor for BluetoothCommunicationCoordinator.Error(0);
  v5 = __chkstk_darwin(v53);
  v56 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v52 - v7;
  v57 = sub_1000BC4D4(&qword_1016C7DC8, &qword_101406140);
  __chkstk_darwin(v57);
  v10 = &v52 - v9;
  v11 = type metadata accessor for DiscoveredObject(0);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v52 - v15;
  v17 = type metadata accessor for AccessoryMetadata(0);
  v54 = *(v17 - 8);
  v55 = v17;
  __chkstk_darwin(v17);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1000BC4D4(&qword_10169E890, &unk_1013BB590);
  __chkstk_darwin(v20);
  v22 = &v52 - v21;
  sub_1000D2A70(a1, &v52 - v21, &qword_10169E890, &unk_1013BB590);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1010FC734(v22, v8, type metadata accessor for BluetoothCommunicationCoordinator.Error);
    v23 = v8;
    if (qword_101694708 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_1000076D4(v24, qword_10177AD20);
    sub_1010FC79C(v60, v14, type metadata accessor for DiscoveredObject);
    v25 = v8;
    v26 = v56;
    sub_1010FC79C(v25, v56, type metadata accessor for BluetoothCommunicationCoordinator.Error);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v61 = v31;
      *v29 = 136446466;
      v32 = sub_1002E1B74();
      v34 = v33;
      sub_1010FC804(v14, type metadata accessor for DiscoveredObject);
      v35 = sub_1000136BC(v32, v34, &v61);

      *(v29 + 4) = v35;
      *(v29 + 12) = 2114;
      sub_1010FBFB0(&qword_1016A95D0, type metadata accessor for BluetoothCommunicationCoordinator.Error, &unk_101409F40);
      swift_allocError();
      sub_1010FC79C(v26, v36, type metadata accessor for BluetoothCommunicationCoordinator.Error);
      v37 = _swift_stdlib_bridgeErrorToNSError();
      sub_1010FC804(v26, type metadata accessor for BluetoothCommunicationCoordinator.Error);
      *(v29 + 14) = v37;
      *v30 = v37;
      _os_log_impl(&_mh_execute_header, v27, v28, "Failed to fetch metadata for %{public}s. Error %{public}@", v29, 0x16u);
      sub_10000B3A8(v30, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v31);
    }

    else
    {

      sub_1010FC804(v26, type metadata accessor for BluetoothCommunicationCoordinator.Error);
      sub_1010FC804(v14, type metadata accessor for DiscoveredObject);
    }

    v38 = v23;
    v39 = type metadata accessor for BluetoothCommunicationCoordinator.Error;
  }

  else
  {
    sub_1010FC734(v22, v19, type metadata accessor for AccessoryMetadata);
    if (qword_101694708 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    sub_1000076D4(v40, qword_10177AD20);
    v41 = v60;
    sub_1010FC79C(v60, v16, type metadata accessor for DiscoveredObject);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v61 = v45;
      *v44 = 136446210;
      v46 = sub_1002E1B74();
      v48 = v47;
      sub_1010FC804(v16, type metadata accessor for DiscoveredObject);
      v49 = sub_1000136BC(v46, v48, &v61);

      *(v44 + 4) = v49;
      _os_log_impl(&_mh_execute_header, v42, v43, "Successfully fetched metadata for %{public}s", v44, 0xCu);
      sub_100007BAC(v45);
    }

    else
    {

      sub_1010FC804(v16, type metadata accessor for DiscoveredObject);
    }

    v50 = *(sub_1000BC4D4(&unk_1016C7DD0, &unk_101406148) + 48);
    sub_1010FC79C(v41, v10, type metadata accessor for DiscoveredObject);
    sub_1010FC79C(v19, &v10[v50], type metadata accessor for AccessoryMetadata);
    (*(v54 + 56))(&v10[v50], 0, 1, v55);
    swift_storeEnumTagMultiPayload();
    v59(v10);
    sub_10000B3A8(v10, &qword_1016C7DC8, &qword_101406140);
    v39 = type metadata accessor for AccessoryMetadata;
    v38 = v19;
  }

  return sub_1010FC804(v38, v39);
}

uint64_t sub_1010E8050(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016A62A0, &unk_101396E10);
  v34 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v6 = &v29 - v5;
  v7 = type metadata accessor for DiscoveredObject(0);
  v32 = *(v7 - 8);
  v8 = *(v32 + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v10 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v29 - v11;
  if (qword_101694708 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000076D4(v13, qword_10177AD20);
  v33 = a1;
  sub_1010FC79C(a1, v12, type metadata accessor for DiscoveredObject);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v30 = a2;
    v17 = v16;
    v18 = swift_slowAlloc();
    v31 = v6;
    v19 = v18;
    v35 = v18;
    *v17 = 136446210;
    v20 = sub_1002E1B74();
    v22 = v21;
    sub_1010FC804(v12, type metadata accessor for DiscoveredObject);
    v23 = sub_1000136BC(v20, v22, &v35);

    *(v17 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v14, v15, "Validate %{public}s", v17, 0xCu);
    sub_100007BAC(v19);
    v6 = v31;

    a2 = v30;
  }

  else
  {

    sub_1010FC804(v12, type metadata accessor for DiscoveredObject);
  }

  v24 = swift_allocObject();
  swift_weakInit();
  sub_1010FC79C(v33, v10, type metadata accessor for DiscoveredObject);
  sub_1000D2A70(a2, v6, &qword_1016A62A0, &unk_101396E10);
  v25 = (*(v32 + 80) + 24) & ~*(v32 + 80);
  v26 = (v8 + *(v34 + 80) + v25) & ~*(v34 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = v24;
  sub_1010FC734(v10, v27 + v25, type metadata accessor for DiscoveredObject);
  sub_1010FC0D4(v6, v27 + v26);
  sub_1000BC4D4(&qword_1016C7CA0, &qword_1014060B8);
  swift_allocObject();
  return Future.init(_:)();
}

uint64_t sub_1010E844C(unsigned __int8 *a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5)
{
  v155 = a5;
  v156 = a1;
  v7 = sub_1000BC4D4(&qword_1016C7CA8, &qword_1014060C0);
  v153 = *(v7 - 8);
  v154 = v7;
  __chkstk_darwin(v7);
  v152 = &v125 - v8;
  v134 = sub_1000BC4D4(&unk_1016C7CB0, &qword_1014060C8);
  v132 = *(v134 - 8);
  __chkstk_darwin(v134);
  v131 = &v125 - v9;
  v10 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  __chkstk_darwin(v10 - 8);
  v151 = &v125 - v11;
  v138 = type metadata accessor for AccessoryMetadata(0);
  v139 = *(v138 - 8);
  __chkstk_darwin(v138);
  v130 = &v125 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000BC4D4(&qword_1016A62A0, &unk_101396E10);
  v141 = *(v13 - 8);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v125 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v142 = &v125 - v18;
  v140 = v19;
  __chkstk_darwin(v17);
  v21 = &v125 - v20;
  v144 = sub_1000BC4D4(&qword_1016C7CC0, &qword_1013BB5D8);
  v143 = *(v144 - 8);
  v22 = __chkstk_darwin(v144);
  v137 = &v125 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v129 = &v125 - v24;
  v25 = sub_1000BC4D4(&qword_1016C7CC8, &qword_1014060D0);
  v145 = *(v25 - 8);
  v146 = v25;
  v26 = __chkstk_darwin(v25);
  v136 = &v125 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v128 = &v125 - v28;
  v29 = sub_1000BC4D4(&qword_1016C7CD0, &qword_1014060D8);
  v147 = *(v29 - 8);
  v148 = v29;
  v30 = __chkstk_darwin(v29);
  v135 = &v125 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v127 = &v125 - v32;
  v33 = type metadata accessor for DiscoveredObject(0);
  v157 = *(v33 - 8);
  v34 = __chkstk_darwin(v33 - 8);
  v36 = &v125 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __chkstk_darwin(v34);
  v39 = &v125 - v38;
  v158 = v40;
  __chkstk_darwin(v37);
  v149 = &v125 - v41;
  v42 = sub_1000BC4D4(&qword_1016C7CD8, &unk_1014060E0);
  v126 = *(v42 - 8);
  __chkstk_darwin(v42);
  v44 = &v125 - v43;
  v45 = swift_allocObject();
  *(v45 + 16) = v156;
  *(v45 + 24) = a2;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v133 = v45;
    v46 = *a4;
    v47 = a4[1];
    v156 = a4;
    if (v47)
    {
      if (v46)
      {
        v48 = qword_101694708;

        v49 = v151;
        if (v48 != -1)
        {
          swift_once();
        }

        v50 = type metadata accessor for Logger();
        sub_1000076D4(v50, qword_10177AD20);
        sub_1010FC79C(v156, v36, type metadata accessor for DiscoveredObject);
        v51 = Logger.logObject.getter();
        v52 = static os_log_type_t.error.getter();
        v53 = os_log_type_enabled(v51, v52);
        v54 = Strong;
        if (v53)
        {
          v55 = swift_slowAlloc();
          v56 = swift_slowAlloc();
          v159 = v56;
          *v55 = 136446210;
          v57 = sub_1002E1B74();
          v59 = v58;
          sub_1010FC804(v36, type metadata accessor for DiscoveredObject);
          v60 = sub_1000136BC(v57, v59, &v159);

          *(v55 + 4) = v60;
          _os_log_impl(&_mh_execute_header, v51, v52, "Unsupported type %{public}s", v55, 0xCu);
          sub_100007BAC(v56);

LABEL_8:

LABEL_23:
          v159 = 0;
          sub_1000BC4D4(&qword_1016C7CE8, &qword_1014060F0);
          v87 = v131;
          Just.init(_:)();
          sub_1000041A4(&qword_1016C7D28, &unk_1016C7CB0, &qword_1014060C8, &protocol conformance descriptor for Just<A>);
          v88 = v134;
          v82 = Publisher.eraseToAnyPublisher()();
          (*(v132 + 8))(v87, v88);
          v71 = v149;
          goto LABEL_24;
        }

        v86 = v36;
        goto LABEL_22;
      }

      v83 = sub_1002E1B4C();
      v49 = v151;
      if ((v83 - 2) >= 2)
      {
        v98 = v157;
        if (v83)
        {
          v71 = v149;
          sub_1010FC79C(v156, v149, type metadata accessor for DiscoveredObject);
          v121 = (*(v98 + 80) + 24) & ~*(v98 + 80);
          v122 = swift_allocObject();
          v123 = Strong;
          *(v122 + 16) = Strong;
          sub_1010FC734(v71, v122 + v121, type metadata accessor for DiscoveredObject);
          sub_1000041A4(&qword_1016C7D28, &unk_1016C7CB0, &qword_1014060C8, &protocol conformance descriptor for Just<A>);

          Deferred.init(createPublisher:)();
          sub_1000041A4(&qword_1016C7D30, &qword_1016C7CD8, &unk_1014060E0, &protocol conformance descriptor for Deferred<A>);
          v82 = Publisher.eraseToAnyPublisher()();
          v124 = v42;
          v54 = v123;
          (*(v126 + 8))(v44, v124);
          goto LABEL_24;
        }

        v99 = qword_101694708;

        if (v99 != -1)
        {
          swift_once();
        }

        v100 = type metadata accessor for Logger();
        sub_1000076D4(v100, qword_10177AD20);
        sub_1010FC79C(v156, v39, type metadata accessor for DiscoveredObject);
        v51 = Logger.logObject.getter();
        v101 = static os_log_type_t.error.getter();
        v102 = os_log_type_enabled(v51, v101);
        v54 = Strong;
        if (v102)
        {
          v103 = swift_slowAlloc();
          v104 = swift_slowAlloc();
          v159 = v104;
          *v103 = 136446210;
          v105 = sub_1002E1B74();
          v107 = v106;
          sub_1010FC804(v39, type metadata accessor for DiscoveredObject);
          v108 = sub_1000136BC(v105, v107, &v159);

          *(v103 + 4) = v108;
          _os_log_impl(&_mh_execute_header, v51, v101, "Unsupported type %{public}s", v103, 0xCu);
          sub_100007BAC(v104);

          goto LABEL_8;
        }

        v86 = v39;
LABEL_22:
        sub_1010FC804(v86, type metadata accessor for DiscoveredObject);
        goto LABEL_23;
      }

      v54 = Strong;
      sub_1000D2A70(v155, v21, &qword_1016A62A0, &unk_101396E10);
      v84 = v139;
      if ((*(v139 + 48))(v21, 1, v138) == 1)
      {
        v85 = _swiftEmptyArrayStorage;
      }

      else
      {
        v109 = v130;
        sub_1010FC734(v21, v130, type metadata accessor for AccessoryMetadata);
        sub_1000BC4D4(&unk_1016A62B0, &unk_10139DA70);
        v110 = (*(v84 + 80) + 32) & ~*(v84 + 80);
        v85 = swift_allocObject();
        *(v85 + 1) = xmmword_101385D80;
        sub_1010FC734(v109, v85 + v110, type metadata accessor for AccessoryMetadata);
      }

      v111 = sub_100366634(v85);

      v159 = v111;
      v160 = *(v54 + 24);
      v112 = v160;
      v113 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
      (*(*(v113 - 8) + 56))(v49, 1, 1, v113);
      v114 = v112;
      sub_1000BC4D4(&qword_1016C7CE0, &unk_10139DA90);
      sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
      sub_1000041A4(&qword_1016A9530, &qword_1016C7CE0, &unk_10139DA90, &protocol conformance descriptor for Future<A, B>);
      sub_1004682F0();
      v115 = v129;
      Publisher.receive<A>(on:options:)();
      sub_10000B3A8(v49, &unk_1016B0FE0, &unk_101391980);

      v71 = v149;
      sub_1010FC79C(v156, v149, type metadata accessor for DiscoveredObject);
      v116 = v142;
      sub_1000D2A70(v155, v142, &qword_1016A62A0, &unk_101396E10);
      v117 = (*(v157 + 80) + 24) & ~*(v157 + 80);
      v118 = (v158 + *(v141 + 80) + v117) & ~*(v141 + 80);
      v119 = swift_allocObject();
      *(v119 + 16) = v54;
      sub_1010FC734(v71, v119 + v117, type metadata accessor for DiscoveredObject);
      sub_1010FC0D4(v116, v119 + v118);

      sub_1000BC4D4(&qword_1016C7CE8, &qword_1014060F0);
      sub_1000041A4(&qword_1016C7CF0, &qword_1016C7CC0, &qword_1013BB5D8, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
      v76 = v128;
      v120 = v144;
      Publisher.map<A>(_:)();

      (*(v143 + 8))(v115, v120);
      v159 = 0;
      sub_1000041A4(&qword_1016C7CF8, &qword_1016C7CC8, &qword_1014060D0, &protocol conformance descriptor for Publishers.Map<A, B>);
      v78 = &v159;
    }

    else
    {
      if (v46 == 1)
      {
        v61 = 1;
      }

      else
      {
        v61 = 2 * (v46 == 2);
      }

      v54 = Strong;
      sub_1000D2A70(v155, v16, &qword_1016A62A0, &unk_101396E10);
      v62 = v139;
      if ((*(v139 + 48))(v16, 1, v138) == 1)
      {
        v63 = _swiftEmptyArrayStorage;
      }

      else
      {
        v64 = v130;
        sub_1010FC734(v16, v130, type metadata accessor for AccessoryMetadata);
        sub_1000BC4D4(&unk_1016A62B0, &unk_10139DA70);
        v65 = (*(v62 + 80) + 32) & ~*(v62 + 80);
        v63 = swift_allocObject();
        *(v63 + 1) = xmmword_101385D80;
        sub_1010FC734(v64, v63 + v65, type metadata accessor for AccessoryMetadata);
      }

      v66 = sub_1003666F4(v63, v61);

      v159 = v66;
      v160 = *(v54 + 24);
      v67 = v160;
      v68 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
      v49 = v151;
      (*(*(v68 - 8) + 56))(v151, 1, 1, v68);
      v69 = v67;
      sub_1000BC4D4(&qword_1016C7CE0, &unk_10139DA90);
      sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
      sub_1000041A4(&qword_1016A9530, &qword_1016C7CE0, &unk_10139DA90, &protocol conformance descriptor for Future<A, B>);
      sub_1004682F0();
      v70 = v137;
      Publisher.receive<A>(on:options:)();
      sub_10000B3A8(v49, &unk_1016B0FE0, &unk_101391980);

      v71 = v149;
      sub_1010FC79C(v156, v149, type metadata accessor for DiscoveredObject);
      v72 = v142;
      sub_1000D2A70(v155, v142, &qword_1016A62A0, &unk_101396E10);
      v73 = (*(v157 + 80) + 24) & ~*(v157 + 80);
      v74 = (v158 + *(v141 + 80) + v73) & ~*(v141 + 80);
      v75 = swift_allocObject();
      *(v75 + 16) = v54;
      sub_1010FC734(v71, v75 + v73, type metadata accessor for DiscoveredObject);
      sub_1010FC0D4(v72, v75 + v74);

      sub_1000BC4D4(&qword_1016C7CE8, &qword_1014060F0);
      sub_1000041A4(&qword_1016C7CF0, &qword_1016C7CC0, &qword_1013BB5D8, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
      v76 = v136;
      v77 = v144;
      Publisher.map<A>(_:)();

      (*(v143 + 8))(v70, v77);
      v159 = 0;
      sub_1000041A4(&qword_1016C7CF8, &qword_1016C7CC8, &qword_1014060D0, &protocol conformance descriptor for Publishers.Map<A, B>);
      v78 = &v161;
    }

    v79 = *(v78 - 32);
    v80 = v146;
    Publisher.replaceError(with:)();
    (*(v145 + 8))(v76, v80);
    sub_1000041A4(&qword_1016C7D00, &qword_1016C7CD0, &qword_1014060D8, &protocol conformance descriptor for Publishers.ReplaceError<A>);
    v81 = v148;
    v82 = Publisher.eraseToAnyPublisher()();
    (*(v147 + 8))(v79, v81);
LABEL_24:
    v159 = v82;
    v160 = *(v54 + 24);
    v89 = v160;
    v90 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    (*(*(v90 - 8) + 56))(v49, 1, 1, v90);

    v91 = v89;
    sub_1000BC4D4(&qword_1016C7D08, &unk_1014060F8);
    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    sub_1000041A4(&qword_1016C7D10, &qword_1016C7D08, &unk_1014060F8, &protocol conformance descriptor for AnyPublisher<A, B>);
    sub_1004682F0();
    v92 = v152;
    Publisher.receive<A>(on:options:)();
    sub_10000B3A8(v49, &unk_1016B0FE0, &unk_101391980);

    sub_1010FC79C(v156, v71, type metadata accessor for DiscoveredObject);
    v93 = (*(v157 + 80) + 32) & ~*(v157 + 80);
    v94 = swift_allocObject();
    v95 = v133;
    *(v94 + 16) = sub_100407A2C;
    *(v94 + 24) = v95;
    sub_1010FC734(v71, v94 + v93, type metadata accessor for DiscoveredObject);
    sub_1000041A4(&unk_1016C7D18, &qword_1016C7CA8, &qword_1014060C0, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
    v96 = v154;
    Publisher<>.sink(receiveValue:)();

    (*(v153 + 8))(v92, v96);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();
  }
}

uint64_t sub_1010E9AE0(uint64_t a1, unsigned __int8 *a2)
{
  v3 = sub_1000BC4D4(&qword_1016A62A0, &unk_101396E10);
  __chkstk_darwin(v3 - 8);
  v5 = v13 - v4;
  v6 = sub_1000BC4D4(&qword_101697268, &qword_101394FE0);
  __chkstk_darwin(v6 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for AccessoryProductInfo(0);
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = type metadata accessor for AccessoryMetadata(0);
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  v11 = sub_1010EA1EC(a2, v8, v5);
  sub_10000B3A8(v5, &qword_1016A62A0, &unk_101396E10);
  sub_10000B3A8(v8, &qword_101697268, &qword_101394FE0);
  v13[1] = v11;
  sub_1000BC4D4(&qword_1016C7CE8, &qword_1014060F0);
  return Just.init(_:)();
}

uint64_t sub_1010E9CB4@<X0>(uint64_t *a1@<X0>, unsigned __int8 *a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v8 = sub_1000BC4D4(&qword_101697268, &qword_101394FE0);
  __chkstk_darwin(v8 - 8);
  v10 = &v18 - v9;
  v11 = *a1;
  v12 = *(*a1 + 16);
  v13 = type metadata accessor for AccessoryProductInfo(0);
  v14 = *(v13 - 8);
  v15 = v14;
  if (v12)
  {
    sub_1010FC79C(v11 + ((*(v14 + 80) + 32) & ~*(v14 + 80)), v10, type metadata accessor for AccessoryProductInfo);
    (*(v15 + 56))(v10, 0, 1, v13);
  }

  else
  {
    (*(v14 + 56))(v10, 1, 1, v13);
  }

  v16 = sub_1010EA1EC(a2, v10, a3);
  result = sub_10000B3A8(v10, &qword_101697268, &qword_101394FE0);
  *a4 = v16;
  return result;
}

void sub_1010E9E24(void **a1, id a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for DiscoveredObject(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  if (v10)
  {
    v11 = qword_101694708;
    v12 = v10;
    if (v11 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_1000076D4(v13, qword_10177AD20);
    v14 = v12;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v35 = a2;
      v18 = v17;
      v19 = swift_slowAlloc();
      v36 = v19;
      *v18 = 136446210;
      v20 = [v14 debugDescription];
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;

      v24 = sub_1000136BC(v21, v23, &v36);

      *(v18 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v15, v16, "Successfully constructed unknown beacon %{public}s", v18, 0xCu);
      sub_100007BAC(v19);

      a2 = v35;
    }

    v35 = v14;
    (a2)(v10, 0);

    v25 = v35;
  }

  else
  {
    if (qword_101694708 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_1000076D4(v26, qword_10177AD20);
    sub_1010FC79C(a4, v9, type metadata accessor for DiscoveredObject);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v36 = v30;
      *v29 = 136446210;
      v31 = sub_1002E1B74();
      v33 = v32;
      sub_1010FC804(v9, type metadata accessor for DiscoveredObject);
      v34 = sub_1000136BC(v31, v33, &v36);

      *(v29 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v27, v28, "Failed to construct unknown beacon: %{public}s", v29, 0xCu);
      sub_100007BAC(v30);
    }

    else
    {

      sub_1010FC804(v9, type metadata accessor for DiscoveredObject);
    }
  }
}

id sub_1010EA1EC(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v332 = a3;
  v333 = a2;
  v346 = a1;
  v5 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  __chkstk_darwin(v5 - 8);
  v301 = v277 - v6;
  v303 = type metadata accessor for SharedBeaconRecord(0);
  v297 = *(v303 - 8);
  v7 = __chkstk_darwin(v303);
  v295 = v277 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v302 = v277 - v10;
  __chkstk_darwin(v9);
  v298 = v277 - v11;
  v12 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  __chkstk_darwin(v12 - 8);
  v300 = v277 - v13;
  v14 = sub_1000BC4D4(&unk_1016C1120, &qword_1013C49D0);
  __chkstk_darwin(v14 - 8);
  v324 = v277 - v15;
  v311 = type metadata accessor for BeaconKeyManager.IndexInformation(0);
  v323 = *(v311 - 8);
  v16 = __chkstk_darwin(v311);
  v308 = v277 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v307 = v277 - v19;
  __chkstk_darwin(v18);
  v305 = v277 - v20;
  v317 = type metadata accessor for DispatchTime();
  v316 = *(v317 - 8);
  v21 = __chkstk_darwin(v317);
  v314 = v277 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v315 = v277 - v23;
  v309 = sub_1000BC4D4(&qword_1016A9590, &unk_1013BB520);
  __chkstk_darwin(v309);
  v310 = v277 - v24;
  v25 = sub_1000BC4D4(&unk_1016C7C90, &qword_1013BB4B0);
  __chkstk_darwin(v25 - 8);
  v322 = v277 - v26;
  v350 = type metadata accessor for WildModeAssociationRecord(0);
  v321 = *(v350 - 1);
  v27 = __chkstk_darwin(v350);
  v313 = v277 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v306 = v277 - v30;
  v31 = __chkstk_darwin(v29);
  v318 = v277 - v32;
  __chkstk_darwin(v31);
  v334 = (v277 - v33);
  v34 = sub_1000BC4D4(&qword_101697268, &qword_101394FE0);
  __chkstk_darwin(v34 - 8);
  v338 = v277 - v35;
  v36 = sub_1000BC4D4(&qword_1016A62A0, &unk_101396E10);
  __chkstk_darwin(v36 - 8);
  v336 = v277 - v37;
  v38 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v39 = __chkstk_darwin(v38 - 8);
  v325 = v277 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __chkstk_darwin(v39);
  v337 = v277 - v42;
  __chkstk_darwin(v41);
  v335 = v277 - v43;
  v326 = type metadata accessor for Date();
  v343 = *(v326 - 8);
  __chkstk_darwin(v326);
  v342 = v277 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v46 = __chkstk_darwin(v45 - 8);
  v327 = v277 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v328 = (v277 - v48);
  v344 = type metadata accessor for MACAddress();
  v347 = *(v344 - 8);
  v49 = __chkstk_darwin(v344);
  v319 = v277 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v49);
  v341 = v277 - v51;
  v52 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v53 = __chkstk_darwin(v52 - 8);
  v320 = v277 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v53);
  v56 = v277 - v55;
  v349 = type metadata accessor for UUID();
  v345 = *(v349 - 8);
  v57 = __chkstk_darwin(v349);
  v299 = v277 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v57);
  v348 = v277 - v59;
  v60 = type metadata accessor for WildModeTrackingLocation(0);
  v312 = *(v60 - 1);
  __chkstk_darwin(v60);
  v62 = (v277 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0));
  v63 = type metadata accessor for DiscoveredObject(0);
  __chkstk_darwin(v63);
  v65 = v277 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for DispatchPredicate();
  v67 = *(v66 - 8);
  __chkstk_darwin(v66);
  v69 = (v277 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0));
  v340 = v4;
  v70 = *(v4 + 24);
  *v69 = v70;
  (*(v67 + 104))(v69, enum case for DispatchPredicate.onQueue(_:), v66);
  v71 = v70;
  v72 = _dispatchPreconditionTest(_:)();
  v74 = *(v67 + 8);
  v73 = v67 + 8;
  v74(v69, v66);
  if ((v72 & 1) == 0)
  {
    __break(1u);
    goto LABEL_81;
  }

  v76 = v346;
  v77 = &v346[*(v63 + 36)];
  v66 = v77[1];
  if ((v66 & 0x2000000000000000) != 0)
  {
    return 0;
  }

  v72 = *v77;
  v78 = *v346;
  if (v346[1] == 1)
  {
    sub_100017D5C(*v77, v77[1]);
    if (v78)
    {
      if (qword_101694708 != -1)
      {
        swift_once();
      }

      v79 = type metadata accessor for Logger();
      sub_1000076D4(v79, qword_10177AD20);
      sub_1010FC79C(v76, v65, type metadata accessor for DiscoveredObject);
      v80 = Logger.logObject.getter();
      v81 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        v354 = swift_slowAlloc();
        *v82 = 136315394;
        *(v82 + 4) = sub_1000136BC(0xD00000000000002ELL, 0x800000010137B400, &v354);
        *(v82 + 12) = 2082;
        v83 = sub_1002E1B74();
        v84 = v72;
        v86 = v85;
        sub_1010FC804(v65, type metadata accessor for DiscoveredObject);
        v87 = sub_1000136BC(v83, v86, &v354);

        *(v82 + 14) = v87;
        _os_log_impl(&_mh_execute_header, v80, v81, "%s Unsupported type %{public}s", v82, 0x16u);
        swift_arrayDestroy();

        sub_10001E524(v84, v66);
      }

      else
      {
        sub_10001E524(v72, v66);

        sub_1010FC804(v65, type metadata accessor for DiscoveredObject);
      }

      return 0;
    }

    v331 = v56;
    v296 = 1;
    v293 = 0;
    v329 = v72;
    v330 = v66;
  }

  else
  {
    v296 = v346[1];
    v329 = 0;
    v330 = 0xB000000000000000;
    v293 = v78;
    v331 = v56;
  }

  v88 = *(v340 + 96);
  v89 = OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_currentLocation;
  swift_beginAccess();
  v90 = *(v88 + v89);
  LODWORD(v290) = v78;
  if (v90)
  {
    v91 = v90;
    sub_100029784(v72, v66);
    v65 = v91;
    [v65 coordinate];
    *v62 = v92;
    [v65 coordinate];
    v62[1] = v93;
    [v65 horizontalAccuracy];
    v62[2] = v94;
    v95 = [v65 timestamp];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v60 = sub_100A5DE18(0, 1, 1, _swiftEmptyArrayStorage);
    v73 = v60[2];
    v75 = v60[3];
    v63 = v73 + 1;
    v70 = v349;
    if (v73 < v75 >> 1)
    {
LABEL_13:

      v60[2] = v63;
      sub_1010FC734(v62, v60 + ((*(v312 + 80) + 32) & ~*(v312 + 80)) + *(v312 + 72) * v73, type metadata accessor for WildModeTrackingLocation);
      goto LABEL_15;
    }

LABEL_81:
    v60 = sub_100A5DE18((v75 > 1), v63, 1, v60);
    goto LABEL_13;
  }

  sub_100017D5C(v72, v66);
  v60 = _swiftEmptyArrayStorage;
  v70 = v349;
LABEL_15:
  UUID.init()();
  v96 = v345 + 7;
  v97 = v345[7];
  v97(v331, 1, 1, v70);
  sub_100017D5C(v72, v66);
  v98 = static MACAddress.length.getter();
  sub_10002EA98(v98, v72, v66, &v352);
  v99 = v328;
  MACAddress.init(data:type:)();
  v100 = v347;
  v101 = *(v347 + 48);
  v102 = v344;
  v292 = v347 + 48;
  v291 = v101;
  result = v101(v99, 1, v344);
  v339 = v66;
  v312 = v72;
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v304 = swift_allocBox();
    v294 = v104;
    v105 = *(v100 + 32);
    v281 = v100 + 32;
    v280 = v105;
    v105(v341, v99, v102);

    static Date.trustedNow.getter(v342);
    v328 = v60;
    v106 = *(v343 + 56);
    v107 = v326;
    v106(v335, 1, 1, v326);
    v289 = sub_1002E1B4C();
    sub_1000D2A70(v332, v336, &qword_1016A62A0, &unk_101396E10);
    sub_1000D2A70(v333, v338, &qword_101697268, &qword_101394FE0);
    v106(v337, 1, 1, v107);
    v108 = v296 ^ 1;
    if (v290)
    {
      v108 = 1;
    }

    LODWORD(v346) = v108;
    v282 = v350[5];
    v109 = v334;
    v279 = v96;
    v278 = v97;
    v97(v334 + v282, 1, 1, v70);
    v283 = v350[6];
    v110 = v350[11];
    v106(v109 + v110, 1, 1, v107);
    v111 = (v109 + v350[12]);
    v112 = v350[14];
    v285 = v112;
    v113 = type metadata accessor for AccessoryMetadata(0);
    (*(*(v113 - 8) + 56))(v109 + v112, 1, 1, v113);
    v114 = v100;
    v115 = v350[15];
    v116 = type metadata accessor for AccessoryProductInfo(0);
    (*(*(v116 - 8) + 56))(v109 + v115, 1, 1, v116);
    v284 = v350[16];
    v117 = v350[17];
    v286 = v117;
    sub_100309400(v329, v330);
    *(v109 + v117) = sub_100908B38(_swiftEmptyArrayStorage);
    v118 = v350[18];
    static Date.trustedNow.getter(v109 + v118);
    v106(v109 + v118, 0, 1, v107);
    v287 = v350[19];
    v106(v109 + v287, 1, 1, v107);
    v290 = v350[21];
    v288 = (v109 + v350[22]);
    v119 = v345[2];
    v277[1] = v345 + 2;
    v277[0] = v119;
    v119(v109, v348, v349);
    sub_1001DA61C(v331, v109 + v282, &qword_1016980D0, &unk_10138F3B0);
    *(v109 + v283) = 0;
    (*(v114 + 16))(v109 + v350[7], v341, v344);
    *(v109 + v350[8]) = v328;
    *(v109 + v350[9]) = 3;
    (*(v343 + 16))(v109 + v350[10], v342, v107);
    v120 = v109 + v110;
    v121 = v335;
    sub_1001DA61C(v335, v120, &unk_101696900, &unk_10138B1E0);
    v111[1] = 0;
    v111[2] = 0;
    *v111 = 0;
    *(v109 + v350[13]) = v289;
    v122 = v336;
    sub_1001DA61C(v336, v109 + v285, &qword_1016A62A0, &unk_101396E10);
    v123 = v338;
    sub_1001DA61C(v338, v109 + v115, &qword_101697268, &qword_101394FE0);
    *(v109 + v284) = 7;
    v124 = v325;
    static Date.trustedNow.getter(v325);
    v106(v124, 0, 1, v107);
    v125 = v350;
    sub_1008CCF08(v124, v109 + v118);
    sub_1000D2A70(v109 + v118, v124, &unk_101696900, &unk_10138B1E0);
    sub_1001DE1F0(v124, 7);
    sub_10000B3A8(v123, &qword_101697268, &qword_101394FE0);
    sub_10000B3A8(v122, &qword_1016A62A0, &unk_101396E10);
    v126 = v121;
    v127 = v125;
    sub_10000B3A8(v126, &unk_101696900, &unk_10138B1E0);
    (*(v343 + 8))(v342, v107);
    v128 = *(v347 + 8);
    v129 = v344;
    v347 += 8;
    v128(v341, v344);
    sub_10000B3A8(v331, &qword_1016980D0, &unk_10138F3B0);
    v130 = v345 + 1;
    v131 = v348;
    v348 = v345[1];
    (v348)(v131, v349);
    sub_1008CCF08(v337, v109 + v287);
    v132 = (v109 + v125[20]);
    v133 = v330;
    *v132 = v329;
    v132[1] = v133;
    *(v109 + v290) = v346;
    v134 = v288;
    *v288 = v293;
    v134[1] = v296;
    sub_1010FC734(v109, v294, type metadata accessor for WildModeAssociationRecord);
    v135 = *(v340 + 32);
    swift_unownedRetainStrong();
    v136 = v312;
    v137 = v339;
    sub_100017D5C(v312, v339);
    v138 = static MACAddress.length.getter();
    sub_10002EA98(v138, v136, v137, &v352);
    v139 = v327;
    MACAddress.init(data:type:)();
    result = v291(v139, 1, v129);
    if (result != 1)
    {
      v140 = v319;
      v280(v319, v139, v129);
      v141 = v322;
      sub_10125FD10(v140, v322);

      v128(v140, v129);
      v142 = (*(v321 + 48))(v141, 1, v127);
      v143 = v324;
      v144 = v323;
      if (v142 != 1)
      {
        v188 = v141;
        v189 = v318;
        sub_1010FC734(v188, v318, type metadata accessor for WildModeAssociationRecord);
        if (qword_101694708 != -1)
        {
          swift_once();
        }

        v190 = type metadata accessor for Logger();
        v191 = sub_1000076D4(v190, qword_10177AD20);
        v192 = v306;
        sub_1010FC79C(v189, v306, type metadata accessor for WildModeAssociationRecord);
        v193 = v312;
        v194 = v339;
        sub_100017D5C(v312, v339);
        v350 = v191;
        v195 = Logger.logObject.getter();
        v196 = static os_log_type_t.default.getter();
        sub_10001E524(v193, v194);
        if (os_log_type_enabled(v195, v196))
        {
          v197 = v192;
          v198 = swift_slowAlloc();
          v199 = swift_slowAlloc();
          v347 = v135;
          v351 = v199;
          *v198 = 136446466;
          sub_1010FBFB0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v200 = dispatch thunk of CustomStringConvertible.description.getter();
          v202 = v201;
          v203 = v339;
          sub_1010FC804(v197, type metadata accessor for WildModeAssociationRecord);
          v204 = sub_1000136BC(v200, v202, &v351);

          *(v198 + 4) = v204;
          *(v198 + 12) = 2082;
          v352 = v193;
          v353 = v203;
          sub_10002EE9C();
          v205 = RawRepresentable<>.hexString.getter();
          v207 = sub_1000136BC(v205, v206, &v351);

          *(v198 + 14) = v207;
          _os_log_impl(&_mh_execute_header, v195, v196, "Found existing record %{public}s for advt %{public}s", v198, 0x16u);
          swift_arrayDestroy();
          v189 = v318;
        }

        else
        {

          sub_1010FC804(v192, type metadata accessor for WildModeAssociationRecord);
        }

        v351 = 0;
        v228 = dispatch_group_create();
        dispatch_group_enter(v228);
        swift_unownedRetainStrong();
        v229 = v313;
        sub_1010FC79C(v189, v313, type metadata accessor for WildModeAssociationRecord);
        sub_1010ED0B4(v229, v328, v332, v333);

        sub_1009F1D18(v229);
        if (qword_101694BE8 != -1)
        {
          swift_once();
        }

        sub_1000076D4(v190, qword_10177BA08);
        v230 = Logger.logObject.getter();
        v231 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v230, v231))
        {
          v232 = swift_slowAlloc();
          *v232 = 67109120;
          _os_log_impl(&_mh_execute_header, v230, v231, "Requesting SPUnknownBeaconsChangedNotification to be posted. Bypass rate limit? %{BOOL}d", v232, 8u);
        }

        ThrottledDarwinPoster.post(bypassRateLimit:)(0);
        if (v233)
        {
        }

        v234 = v310;
        sub_1010FC79C(v229, v310, type metadata accessor for WildModeAssociationRecord);
        swift_storeEnumTagMultiPayload();
        sub_1010ED718(v234, v228, v304, &v351);

        v235 = v312;
        sub_10000B3A8(v234, &qword_1016A9590, &unk_1013BB520);
        sub_1010FC804(v229, type metadata accessor for WildModeAssociationRecord);
        v236 = v314;
        static DispatchTime.now()();
        v237 = v315;
        + infix(_:_:)();
        v238 = *(v316 + 8);
        v239 = v317;
        v238(v236, v317);
        OS_dispatch_group.wait(timeout:)();
        v238(v237, v239);
        if (static DispatchTimeoutResult.== infix(_:_:)())
        {
          v240 = Logger.logObject.getter();
          v241 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v240, v241))
          {
            v242 = swift_slowAlloc();
            *v242 = 0;
            _os_log_impl(&_mh_execute_header, v240, v241, "Timed out modifying UT record", v242, 2u);

            sub_10001E524(v235, v339);
            sub_100308D64(v329, v330);
          }

          else
          {
            sub_10001E524(v235, v339);
            sub_100308D64(v329, v330);
          }

          sub_1010FC804(v318, type metadata accessor for WildModeAssociationRecord);
        }

        else
        {
          sub_1010FC804(v189, type metadata accessor for WildModeAssociationRecord);

          swift_beginAccess();
          if (!v351)
          {
            goto LABEL_68;
          }

          sub_100308D64(v329, v330);
          sub_10001E524(v235, v339);
        }

        goto LABEL_75;
      }

      v345 = v130;
      sub_10000B3A8(v141, &unk_1016C7C90, &qword_1013BB4B0);
      swift_unownedRetainStrong();
      type metadata accessor for BeaconKeyManager(0);
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();

      v145 = 1;
      v146 = v320;
      v278(v320, 1, 1, v349);
      v147 = sub_1012DD334(v136, v339, v146);
      v148 = v147[2];
      if (v148)
      {
        sub_1010FC79C(v147 + ((*(v144 + 80) + 32) & ~*(v144 + 80)) + *(v144 + 72) * (v148 - 1), v143, type metadata accessor for BeaconKeyManager.IndexInformation);
        v145 = 0;
      }

      v149 = v308;
      v150 = v307;

      sub_10000B3A8(v320, &qword_1016980D0, &unk_10138F3B0);
      v151 = v145;
      v152 = v311;
      (*(v144 + 56))(v143, v151, 1, v311);
      if ((*(v144 + 48))(v143, 1, v152) == 1)
      {

        v153 = &unk_1016C1120;
        v154 = &qword_1013C49D0;
        v155 = v143;
      }

      else
      {
        v208 = v305;
        sub_1010FC734(v143, v305, type metadata accessor for BeaconKeyManager.IndexInformation);
        if (qword_101694708 != -1)
        {
          swift_once();
        }

        v209 = type metadata accessor for Logger();
        sub_1000076D4(v209, qword_10177AD20);
        sub_1010FC79C(v208, v150, type metadata accessor for BeaconKeyManager.IndexInformation);
        sub_1010FC79C(v208, v149, type metadata accessor for BeaconKeyManager.IndexInformation);
        v210 = v339;
        sub_100017D5C(v136, v339);
        v211 = Logger.logObject.getter();
        v212 = static os_log_type_t.default.getter();
        sub_10001E524(v136, v210);
        if (os_log_type_enabled(v211, v212))
        {
          v213 = v149;
          v214 = swift_slowAlloc();
          v215 = swift_slowAlloc();
          v347 = v135;
          v351 = v215;
          *v214 = 136315650;
          sub_1010FBFB0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v216 = dispatch thunk of CustomStringConvertible.description.getter();
          v217 = v150;
          v219 = v218;
          sub_1010FC804(v217, type metadata accessor for BeaconKeyManager.IndexInformation);
          v220 = sub_1000136BC(v216, v219, &v351);

          *(v214 + 4) = v220;
          *(v214 + 12) = 2082;
          sub_1000035D0((v213 + *(v311 + 20)), *(v213 + *(v311 + 20) + 24));
          v221 = dispatch thunk of CustomStringConvertible.description.getter();
          v223 = v222;
          v136 = v312;
          sub_1010FC804(v213, type metadata accessor for BeaconKeyManager.IndexInformation);
          v224 = sub_1000136BC(v221, v223, &v351);

          *(v214 + 14) = v224;
          *(v214 + 22) = 2080;
          v352 = v136;
          v353 = v339;
          sub_10002EE9C();
          v225 = RawRepresentable<>.hexString.getter();
          v227 = sub_1000136BC(v225, v226, &v351);

          *(v214 + 24) = v227;

          _os_log_impl(&_mh_execute_header, v211, v212, "Found beacon %s\nand index %{public}s\nfor advt %s.", v214, 0x20u);
          swift_arrayDestroy();
          v135 = v347;
        }

        else
        {

          sub_1010FC804(v150, type metadata accessor for BeaconKeyManager.IndexInformation);
          sub_1010FC804(v149, type metadata accessor for BeaconKeyManager.IndexInformation);
        }

        v243 = v303;
        v244 = v302;
        v245 = v301;
        swift_unownedRetainStrong();
        v246 = v300;
        v247 = v305;
        sub_100AA33AC(v305, v300);

        v248 = type metadata accessor for OwnedBeaconRecord(0);
        v249 = (*(*(v248 - 8) + 48))(v246, 1, v248);
        sub_10000B3A8(v246, &unk_1016A9A20, &qword_10138B280);
        if (v249 != 1)
        {
          v250 = Logger.logObject.getter();
          v251 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v250, v251))
          {
            v252 = swift_slowAlloc();
            *v252 = 0;
            _os_log_impl(&_mh_execute_header, v250, v251, "Beacon belongs to owner. Not including in scan results", v252, 2u);

            sub_10001E524(v136, v339);
            sub_100308D64(v329, v330);
          }

          else
          {
            sub_10001E524(v136, v339);
            sub_100308D64(v329, v330);
          }

          sub_1010FC804(v247, type metadata accessor for BeaconKeyManager.IndexInformation);
          goto LABEL_75;
        }

        swift_unownedRetainStrong();
        sub_100AA5198(v247, v245);

        if ((*(v297 + 48))(v245, 1, v243) != 1)
        {
          v256 = v298;
          sub_1010FC734(v245, v298, type metadata accessor for SharedBeaconRecord);
          v257 = *(v256 + v243[16]);
          v156 = v294;
          if (v257 == 4 || v257 == 1)
          {
            sub_1010FC79C(v298, v244, type metadata accessor for SharedBeaconRecord);
            v258 = Logger.logObject.getter();
            v259 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v258, v259))
            {
              v260 = swift_slowAlloc();
              v261 = swift_slowAlloc();
              v352 = v261;
              *v260 = 136315138;
              sub_1010FC79C(v244, v295, type metadata accessor for SharedBeaconRecord);
              v262 = String.init<A>(describing:)();
              v263 = v244;
              v264 = v262;
              v266 = v265;
              sub_1010FC804(v263, type metadata accessor for SharedBeaconRecord);
              v267 = sub_1000136BC(v264, v266, &v352);
              v136 = v312;

              *(v260 + 4) = v267;
              _os_log_impl(&_mh_execute_header, v258, v259, "Found shared beacon %s", v260, 0xCu);
              sub_100007BAC(v261);
            }

            else
            {

              sub_1010FC804(v244, type metadata accessor for SharedBeaconRecord);
            }

            sub_1010FC804(v247, type metadata accessor for BeaconKeyManager.IndexInformation);
            v268 = v350;
            v269 = v350[5];
            sub_10000B3A8(v156 + v269, &qword_1016980D0, &unk_10138F3B0);
            v270 = v298;
            v271 = v349;
            (v277[0])(v156 + v269, v298 + v243[5], v349);
            v278(v156 + v269, 0, 1, v271);
            v272 = (v270 + v243[7]);
            v273 = *v272;
            v275 = *(v272 + 1);
            v274 = *(v272 + 2);

            sub_1010FC804(v270, type metadata accessor for SharedBeaconRecord);
            v276 = (v156 + v268[12]);
            *v276 = v273;
            v276[1] = v275;
            v276[2] = v274;
          }

          else
          {
            sub_1010FC804(v298, type metadata accessor for SharedBeaconRecord);
            sub_1010FC804(v247, type metadata accessor for BeaconKeyManager.IndexInformation);
          }

          goto LABEL_25;
        }

        sub_1010FC804(v247, type metadata accessor for BeaconKeyManager.IndexInformation);
        v153 = &unk_101698C30;
        v154 = &unk_101392630;
        v155 = v245;
      }

      sub_10000B3A8(v155, v153, v154);
      v156 = v294;
LABEL_25:
      if (qword_101694708 != -1)
      {
        swift_once();
      }

      v157 = type metadata accessor for Logger();
      sub_1000076D4(v157, qword_10177AD20);
      v158 = v339;
      sub_100029784(v136, v339);

      v159 = Logger.logObject.getter();
      v160 = static os_log_type_t.default.getter();

      sub_10001E524(v136, v158);
      if (os_log_type_enabled(v159, v160))
      {
        v161 = swift_slowAlloc();
        v347 = v135;
        v162 = v136;
        v163 = v161;
        v351 = swift_slowAlloc();
        *v163 = 136446466;
        swift_beginAccess();
        v164 = v299;
        v165 = v156;
        v166 = v349;
        (v277[0])(v299, v165, v349);
        sub_1010FBFB0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v167 = dispatch thunk of CustomStringConvertible.description.getter();
        v169 = v168;
        v170 = v166;
        v156 = v294;
        (v348)(v164, v170);
        v171 = sub_1000136BC(v167, v169, &v351);

        *(v163 + 4) = v171;
        *(v163 + 12) = 2082;
        v352 = v162;
        v353 = v339;
        sub_10002EE9C();
        v172 = RawRepresentable<>.hexString.getter();
        v174 = sub_1000136BC(v172, v173, &v351);

        *(v163 + 14) = v174;
        _os_log_impl(&_mh_execute_header, v159, v160, "Saving new record %{public}s for advt %{public}s", v163, 0x16u);
        swift_arrayDestroy();
      }

      v175 = swift_allocObject();
      *(v175 + 16) = 0;
      v176 = dispatch_group_create();
      dispatch_group_enter(v176);
      swift_unownedRetainStrong();
      swift_beginAccess();
      v177 = v334;
      sub_1010FC79C(v156, v334, type metadata accessor for WildModeAssociationRecord);
      v178 = swift_allocObject();
      v178[2] = v176;
      v179 = v340;
      v178[3] = v304;
      v178[4] = v179;
      v178[5] = v175;

      v180 = v176;

      sub_100D76818(v177, sub_1010FC000, v178);

      sub_1010FC804(v177, type metadata accessor for WildModeAssociationRecord);
      v181 = v314;
      static DispatchTime.now()();
      v182 = v315;
      + infix(_:_:)();
      v183 = *(v316 + 8);
      v184 = v317;
      v183(v181, v317);
      OS_dispatch_group.wait(timeout:)();
      v183(v182, v184);
      if (static DispatchTimeoutResult.== infix(_:_:)())
      {
        v185 = Logger.logObject.getter();
        v186 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v185, v186))
        {
          v187 = swift_slowAlloc();
          *v187 = 0;
          _os_log_impl(&_mh_execute_header, v185, v186, "Timed out saving new UT record", v187, 2u);
        }

        sub_100308D64(v329, v330);

        goto LABEL_46;
      }

      swift_beginAccess();
      if (*(v175 + 16))
      {
        sub_100308D64(v329, v330);
LABEL_46:
        sub_10001E524(v312, v339);

LABEL_75:

        return 0;
      }

      v235 = v312;
LABEL_68:
      swift_unownedRetainStrong();
      v253 = v294;
      swift_beginAccess();
      v254 = v334;
      sub_1010FC79C(v253, v334, type metadata accessor for WildModeAssociationRecord);
      v255 = sub_10125EC08(v254);

      sub_10001E524(v235, v339);
      sub_100308D64(v329, v330);
      sub_1010FC804(v254, type metadata accessor for WildModeAssociationRecord);

      return v255;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1010ED0B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v58 = a3;
  v59 = a4;
  v5 = sub_1000BC4D4(&qword_101697268, &qword_101394FE0);
  __chkstk_darwin(v5 - 8);
  v60 = &v49 - v6;
  v7 = type metadata accessor for AccessoryProductInfo(0);
  v61 = *(v7 - 8);
  v62 = v7;
  __chkstk_darwin(v7);
  v51 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000BC4D4(&qword_1016A62A0, &unk_101396E10);
  __chkstk_darwin(v9 - 8);
  v54 = &v49 - v10;
  v11 = type metadata accessor for AccessoryMetadata(0);
  v56 = *(v11 - 8);
  v57 = v11;
  __chkstk_darwin(v11);
  v50 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for WildModeTrackingLocation(0);
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13 - 8);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v49 - v18;
  v55 = type metadata accessor for WildModeAssociationRecord(0);
  v20 = v55[8];
  v63 = a1;
  v53 = v20;
  v21 = *(a1 + v20);
  v66 = v21;

  sub_10039A27C(v22);
  v23 = sub_10112A9D8(v66);

  v24 = v23[2];
  if (v24)
  {
    v25 = sub_1003A87B8(v23[2], 0);
    v26 = sub_1003AA07C(&v66, v25 + ((*(v14 + 80) + 32) & ~*(v14 + 80)), v24, v23);
    result = sub_1000128F8(v66);
    if (v26 == v24)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v25 = _swiftEmptyArrayStorage;
LABEL_5:
  v52 = v21;
  v28 = v25[2];
  if (v28)
  {
    v29 = 0;
    v30 = _swiftEmptyArrayStorage;
    v64 = v25[2];
    v65 = v17;
    while (v29 < v25[2])
    {
      v31 = (*(v14 + 80) + 32) & ~*(v14 + 80);
      v32 = *(v14 + 72);
      sub_1010FC79C(v25 + v31 + v32 * v29, v19, type metadata accessor for WildModeTrackingLocation);
      if (sub_1010E16B4())
      {
        result = sub_1010FC804(v19, type metadata accessor for WildModeTrackingLocation);
      }

      else
      {
        sub_1010FC734(v19, v17, type metadata accessor for WildModeTrackingLocation);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v66 = v30;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_101124B70(0, v30[2] + 1, 1);
          v30 = v66;
        }

        v35 = v30[2];
        v34 = v30[3];
        if (v35 >= v34 >> 1)
        {
          sub_101124B70((v34 > 1), v35 + 1, 1);
          v30 = v66;
        }

        v30[2] = v35 + 1;
        v36 = v30 + v31 + v35 * v32;
        v17 = v65;
        result = sub_1010FC734(v65, v36, type metadata accessor for WildModeTrackingLocation);
        v28 = v64;
      }

      if (v28 == ++v29)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
    v30 = _swiftEmptyArrayStorage;
LABEL_17:

    v37 = v63;
    v38 = v53;
    *(v63 + v53) = v30;
    sub_1010E1C04((v37 + v38));
    v39 = v54;
    sub_1000D2A70(v58, v54, &qword_1016A62A0, &unk_101396E10);
    v41 = v56;
    v40 = v57;
    if ((*(v56 + 48))(v39, 1, v57) == 1)
    {
      sub_10000B3A8(v39, &qword_1016A62A0, &unk_101396E10);
    }

    else
    {
      v42 = v50;
      sub_1010FC734(v39, v50, type metadata accessor for AccessoryMetadata);
      v43 = v55[14];
      sub_10000B3A8(v37 + v43, &qword_1016A62A0, &unk_101396E10);
      sub_1010FC734(v42, v37 + v43, type metadata accessor for AccessoryMetadata);
      (*(v41 + 56))(v37 + v43, 0, 1, v40);
    }

    v45 = v61;
    v44 = v62;
    v46 = v60;
    sub_1000D2A70(v59, v60, &qword_101697268, &qword_101394FE0);
    if ((*(v45 + 48))(v46, 1, v44) == 1)
    {
      return sub_10000B3A8(v46, &qword_101697268, &qword_101394FE0);
    }

    else
    {
      v47 = v51;
      sub_1010FC734(v46, v51, type metadata accessor for AccessoryProductInfo);
      v48 = v55[15];
      sub_10000B3A8(v37 + v48, &qword_101697268, &qword_101394FE0);
      sub_1010FC734(v47, v37 + v48, type metadata accessor for AccessoryProductInfo);
      return (*(v45 + 56))(v37 + v48, 0, 1, v44);
    }
  }

  return result;
}

void sub_1010ED718(uint64_t a1, NSObject *a2, uint64_t a3, void *a4)
{
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for WildModeAssociationRecord(0);
  v6 = __chkstk_darwin(v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v37 - v10;
  __chkstk_darwin(v9);
  v13 = &v37 - v12;
  v14 = sub_1000BC4D4(&qword_1016A9590, &unk_1013BB520);
  __chkstk_darwin(v14);
  v16 = (&v37 - v15);
  v17 = swift_projectBox();
  sub_1000D2A70(a1, v16, &qword_1016A9590, &unk_1013BB520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *v16;
    if (qword_101694708 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_1000076D4(v19, qword_10177AD20);
    swift_errorRetain();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v39 = v18;
      v40[0] = v23;
      *v22 = 136315138;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v24 = String.init<A>(describing:)();
      v26 = sub_1000136BC(v24, v25, v40);

      *(v22 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v20, v21, "Failed to update existing UT record. %s", v22, 0xCu);
      sub_100007BAC(v23);
    }

    v27 = v37;
    swift_beginAccess();
    *v27 = v18;
  }

  else
  {
    sub_1010FC734(v16, v13, type metadata accessor for WildModeAssociationRecord);
    if (qword_101694708 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_1000076D4(v28, qword_10177AD20);
    sub_1010FC79C(v13, v11, type metadata accessor for WildModeAssociationRecord);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v40[0] = v32;
      *v31 = 136315138;
      sub_1010FC79C(v11, v8, type metadata accessor for WildModeAssociationRecord);
      v33 = String.init<A>(describing:)();
      v35 = v34;
      sub_1010FC804(v11, type metadata accessor for WildModeAssociationRecord);
      v36 = sub_1000136BC(v33, v35, v40);

      *(v31 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v29, v30, "Successfully modified existing record %s", v31, 0xCu);
      sub_100007BAC(v32);
    }

    else
    {

      sub_1010FC804(v11, type metadata accessor for WildModeAssociationRecord);
    }

    swift_beginAccess();
    sub_1010FC00C(v13, v17);
  }

  dispatch_group_leave(v38);
}

void sub_1010EDBD0(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v43[1] = a4;
  v45 = a2;
  v44 = type metadata accessor for WildModeAssociationRecord(0);
  v7 = __chkstk_darwin(v44);
  v9 = v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = v43 - v11;
  __chkstk_darwin(v10);
  v14 = v43 - v13;
  v15 = sub_1000BC4D4(&qword_1016A9590, &unk_1013BB520);
  __chkstk_darwin(v15);
  v17 = (v43 - v16);
  v18 = swift_projectBox();
  sub_1000D2A70(a1, v17, &qword_1016A9590, &unk_1013BB520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = *v17;
    if (qword_101694708 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_1000076D4(v20, qword_10177AD20);
    swift_errorRetain();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138543362;
      swift_errorRetain();
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 4) = v25;
      *v24 = v25;
      _os_log_impl(&_mh_execute_header, v21, v22, "Failed to save new UT record. %{public}@", v23, 0xCu);
      sub_10000B3A8(v24, &qword_10169BB30, &unk_10138B3C0);
    }

    swift_beginAccess();
    *(a5 + 16) = v19;
  }

  else
  {
    v43[0] = v18;
    sub_1010FC734(v17, v14, type metadata accessor for WildModeAssociationRecord);
    if (qword_101694708 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_1000076D4(v26, qword_10177AD20);
    sub_1010FC79C(v14, v12, type metadata accessor for WildModeAssociationRecord);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v46[0] = v30;
      *v29 = 136446210;
      sub_1010FC79C(v12, v9, type metadata accessor for WildModeAssociationRecord);
      v31 = v44;
      v32 = String.init<A>(describing:)();
      v34 = v33;
      sub_1010FC804(v12, type metadata accessor for WildModeAssociationRecord);
      v35 = sub_1000136BC(v32, v34, v46);

      *(v29 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v27, v28, "Successfully saved new record %{public}s", v29, 0xCu);
      sub_100007BAC(v30);
    }

    else
    {

      sub_1010FC804(v12, type metadata accessor for WildModeAssociationRecord);
      v31 = v44;
    }

    v36 = v43[0];
    swift_beginAccess();
    sub_1010FC070(v14, v36);
    v37 = v14[*(v31 + 64)];
    if (v37 != 8)
    {
      if ((v37 & 0xFA) != 0)
      {
        swift_unownedRetainStrong();
        if (qword_101694BE8 != -1)
        {
          swift_once();
        }

        sub_1000076D4(v26, qword_10177BA08);
        v38 = Logger.logObject.getter();
        v39 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          *v40 = 67109120;
          _os_log_impl(&_mh_execute_header, v38, v39, "Requesting SPUnknownBeaconsChangedNotification to be posted. Bypass rate limit? %{BOOL}d", v40, 8u);
        }

        ThrottledDarwinPoster.post(bypassRateLimit:)(0);
        if (v41)
        {
        }
      }

      if (v37 > 6 || v37 == 2)
      {
        swift_unownedRetainStrong();
        sub_100A8AF58();
      }
    }

    sub_1010FC804(v14, type metadata accessor for WildModeAssociationRecord);
  }

  dispatch_group_leave(v45);
}

double sub_1010EE1DC@<D0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a2 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  swift_beginAccess();
  v11 = a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(a1 + 48);
  *(a1 + 48) = 0x8000000000000000;
  sub_101002C6C(v11, v9, isUniquelyReferenced_nonNull_native);
  (*(v7 + 8))(v9, v6);
  *(a1 + 48) = v14;
  swift_endAccess();
  swift_beginAccess();
  *a3 = *(a1 + 40);

  return result;
}

void sub_1010EE35C(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_1000BC4D4(&qword_1016BBE10, &qword_1013E9D98);
    sub_1000041A4(&qword_1016BBE18, &qword_1016BBE10, &qword_1013E9D98, &protocol conformance descriptor for XPCSession<A>);
    Set.Iterator.init(_cocoa:)();
    v3 = v16;
    v4 = v17;
    v6 = v18;
    v5 = v19;
    v7 = v20;
  }

  else
  {
    v8 = -1 << *(a1 + 32);
    v4 = a1 + 56;
    v6 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(a1 + 56);

    v5 = 0;
  }

  while (v3 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (sub_1000BC4D4(&qword_1016BBE10, &qword_1013E9D98), swift_dynamicCast(), v13 = v5, v14 = v7, !v21))
    {
LABEL_19:
      sub_1000128F8(v3);
      return;
    }

LABEL_17:
    XPCSession.proxy.getter();
    if (v21)
    {
      [v21 discoveredUnknownAccessory:a2];
      swift_unknownObjectRelease();
    }

    v5 = v13;
    v7 = v14;
  }

  v11 = v5;
  v12 = v7;
  v13 = v5;
  if (v7)
  {
LABEL_13:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v3 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));

    if (!v15)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= ((v6 + 64) >> 6))
    {
      goto LABEL_19;
    }

    v12 = *(v4 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

void sub_1010EE598(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_1000BC4D4(&qword_1016BBE10, &qword_1013E9D98);
    sub_1000041A4(&qword_1016BBE18, &qword_1016BBE10, &qword_1013E9D98, &protocol conformance descriptor for XPCSession<A>);
    Set.Iterator.init(_cocoa:)();
    v2 = v16;
    v3 = v17;
    v4 = v18;
    v5 = v19;
    v6 = v20;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  while (v2 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (sub_1000BC4D4(&qword_1016BBE10, &qword_1013E9D98), swift_dynamicCast(), v12 = v5, v13 = v6, !v21))
    {
LABEL_19:
      sub_1000128F8(v2);
      return;
    }

LABEL_17:
    XPCSession.proxy.getter();
    if (v21)
    {
      v15 = _convertErrorToNSError(_:)();
      [v21 unknownAccessoryDiscoveryError:v15];

      swift_unknownObjectRelease();
    }

    v5 = v12;
    v6 = v13;
  }

  v10 = v5;
  v11 = v6;
  v12 = v5;
  if (v6)
  {
LABEL_13:
    v13 = (v11 - 1) & v11;
    v14 = *(*(v2 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));

    if (!v14)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((v4 + 64) >> 6))
    {
      goto LABEL_19;
    }

    v11 = *(v3 + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

void sub_1010EE7E4(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_1000BC4D4(&qword_1016BBE10, &qword_1013E9D98);
    sub_1000041A4(&qword_1016BBE18, &qword_1016BBE10, &qword_1013E9D98, &protocol conformance descriptor for XPCSession<A>);
    Set.Iterator.init(_cocoa:)();
    v1 = v14;
    v2 = v15;
    v3 = v16;
    v4 = v17;
    v5 = v18;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  while (v1 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (sub_1000BC4D4(&qword_1016BBE10, &qword_1013E9D98), swift_dynamicCast(), v11 = v4, v12 = v5, !v19))
    {
LABEL_19:
      sub_1000128F8(v1);
      return;
    }

LABEL_17:
    XPCSession.proxy.getter();
    if (v19)
    {
      [v19 unknownAccessoryDiscoveryFinished];
      swift_unknownObjectRelease();
    }

    v4 = v11;
    v5 = v12;
  }

  v9 = v4;
  v10 = v5;
  v11 = v4;
  if (v5)
  {
LABEL_13:
    v12 = (v10 - 1) & v10;
    v13 = *(*(v1 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));

    if (!v13)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= ((v3 + 64) >> 6))
    {
      goto LABEL_19;
    }

    v10 = *(v2 + 8 * v11);
    ++v9;
    if (v10)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

void sub_1010EEA14(void *a1)
{
  v2 = v1;
  sub_1000BC4D4(&qword_1016BBE10, &qword_1013E9D98);
  swift_allocObject();
  v4 = a1;
  v5 = XPCSession.init(connection:)();
  if (v5)
  {
    v6 = v5;
    v7 = *(v2 + 16);
    v8 = swift_allocObject();
    *(v8 + 16) = v2;
    *(v8 + 24) = v6;
    v4 = swift_allocObject();
    v4[2] = sub_1010FBFF8;
    v4[3] = v8;
    aBlock[4] = sub_1000D2FB0;
    aBlock[5] = v4;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10013FE14;
    aBlock[3] = &unk_101666998;
    v9 = _Block_copy(aBlock);

    dispatch_sync(v7, v9);

    _Block_release(v9);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
    goto LABEL_11;
  }

  if (qword_101694708 != -1)
  {
LABEL_11:
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_1000076D4(v11, qword_10177AD20);
  v12 = v4;
  oslog = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    *(v14 + 4) = v12;
    *v15 = v12;
    v16 = v12;
    _os_log_impl(&_mh_execute_header, oslog, v13, "Failed to make XPCSession from %@", v14, 0xCu);
    sub_10000B3A8(v15, &qword_10169BB30, &unk_10138B3C0);
  }
}

uint64_t sub_1010EECF8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 40);
  if ((v4 & 0xC000000000000001) != 0)
  {

    v5 = __CocoaSet.count.getter();
  }

  else
  {
    v5 = *(v4 + 16);
  }

  swift_beginAccess();

  sub_100DF2408(&v19, a2);
  swift_endAccess();

  if (qword_101694708 != -1)
  {
LABEL_24:
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177AD20);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134218240;
    *(v9 + 4) = v5;
    *(v9 + 12) = 2048;
    v5 = *(a1 + 40);
    if ((v5 & 0xC000000000000001) != 0)
    {

      v10 = __CocoaSet.count.getter();
    }

    else
    {
      v10 = *(v5 + 16);
    }

    *(v9 + 14) = v10;

    _os_log_impl(&_mh_execute_header, v7, v8, "Session count: %ld -> %ld", v9, 0x16u);
  }

  else
  {
  }

  swift_beginAccess();
  a1 = *(a1 + 48);
  v11 = 1 << *(a1 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a1 + 64);
  v14 = (v11 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v15 = 0;
  while (v13)
  {
    v16 = v15;
LABEL_20:
    v17 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v5 = *(*(a1 + 56) + ((v16 << 9) | (8 * v17)));
    XPCSession.proxy.getter();
    if (v19)
    {
      [v19 discoveredUnknownAccessory:v5];
      swift_unknownObjectRelease();
    }

    v15 = v16;
  }

  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v16 >= v14)
    {
      break;
    }

    v13 = *(a1 + 64 + 8 * v16);
    ++v15;
    if (v13)
    {
      goto LABEL_20;
    }
  }
}

void sub_1010EEFF4(void *a1, void *a2)
{
  v57 = a2;
  v3 = type metadata accessor for DispatchPredicate();
  v51 = *(v3 - 8);
  v52 = v3;
  __chkstk_darwin(v3);
  v50 = (&v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  v53 = a1;
  v55 = a1[5];
  if ((v55 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_1000BC4D4(&qword_1016BBE10, &qword_1013E9D98);
    sub_1000041A4(&qword_1016BBE18, &qword_1016BBE10, &qword_1013E9D98, &protocol conformance descriptor for XPCSession<A>);
    Set.Iterator.init(_cocoa:)();
    v5 = v60;
    v6 = v61;
    v7 = v62;
    v8 = v63;
    v9 = v64;
  }

  else
  {
    v10 = -1 << *(v55 + 32);
    v6 = v55 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(v55 + 56);
    v5 = v55;
    swift_bridgeObjectRetain_n();
    v8 = 0;
  }

  v54 = v7;
  v13 = (v7 + 64) >> 6;
  if (v5 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v14 = v8;
  v15 = v9;
  v16 = v8;
  if (!v9)
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
        goto LABEL_19;
      }

      v15 = *(v6 + 8 * v16);
      ++v14;
      if (v15)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_44;
  }

LABEL_12:
  v17 = (v15 - 1) & v15;
  v18 = *(*(v5 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));

  if (v18)
  {
    while (1)
    {
      v56 = v9;
      v20 = v5;
      sub_100008BB8(0, &qword_1016C21A0, NSObject_ptr);
      v21 = XPCSession.connection.getter();
      v22 = static NSObject.== infix(_:_:)();

      if (v22)
      {
        break;
      }

      v8 = v16;
      v9 = v17;
      v5 = v20;
      if ((v20 & 0x8000000000000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_14:
      v19 = __CocoaSet.Iterator.next()();
      if (v19)
      {
        v58 = v19;
        sub_1000BC4D4(&qword_1016BBE10, &qword_1013E9D98);
        swift_dynamicCast();
        v18 = v59;
        v16 = v8;
        v17 = v9;
        if (v59)
        {
          continue;
        }
      }

      goto LABEL_19;
    }

    sub_1000128F8(v20);

    v30 = v53;
    v31 = v53[5];
    if ((v31 & 0xC000000000000001) != 0)
    {

      v32 = __CocoaSet.count.getter();
    }

    else
    {
      v32 = *(v31 + 16);
    }

    swift_beginAccess();
    sub_1010F8A5C(v18);
    swift_endAccess();

    v33 = v30[5];
    if ((v33 & 0xC000000000000001) != 0)
    {

      v34 = __CocoaSet.count.getter();
    }

    else
    {
      v34 = *(v33 + 16);
    }

    if (qword_101694708 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_1000076D4(v35, qword_10177AD20);

    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 134218240;
      *(v38 + 4) = v32;
      *(v38 + 12) = 2048;
      v39 = v30[5];
      if ((v39 & 0xC000000000000001) != 0)
      {

        v40 = __CocoaSet.count.getter();
      }

      else
      {
        v40 = *(v39 + 16);
      }

      *(v38 + 14) = v40;

      _os_log_impl(&_mh_execute_header, v36, v37, "Session count: %ld -> %ld", v38, 0x16u);

      if (v34)
      {
        goto LABEL_42;
      }
    }

    else
    {

      if (v34)
      {
        goto LABEL_42;
      }
    }

    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&_mh_execute_header, v41, v42, "Final session removed", v43, 2u);
    }

    sub_10131ECB4();
    v44 = v30[2];
    v46 = v50;
    v45 = v51;
    *v50 = v44;
    v47 = v52;
    (*(v45 + 104))(v46, enum case for DispatchPredicate.onQueue(_:), v52);
    v48 = v44;
    LOBYTE(v44) = _dispatchPreconditionTest(_:)();

    (*(v45 + 8))(v46, v47);
    if ((v44 & 1) == 0)
    {
      __break(1u);
      return;
    }

    v30[7] = 0;
LABEL_42:

    return;
  }

LABEL_19:
  sub_1000128F8(v5);

  if (qword_101694708 != -1)
  {
LABEL_44:
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_1000076D4(v23, qword_10177AD20);
  v24 = v57;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v27 = 138412290;
    *(v27 + 4) = v24;
    *v28 = v24;
    v29 = v24;
    _os_log_impl(&_mh_execute_header, v25, v26, "Could not find existing session for %@", v27, 0xCu);
    sub_10000B3A8(v28, &qword_10169BB30, &unk_10138B3C0);
  }
}

uint64_t sub_1010EF708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v6[5] = swift_task_alloc();
  v7 = type metadata accessor for URL();
  v6[6] = v7;
  v6[7] = *(v7 - 8);
  v6[8] = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  v6[9] = v8;
  v9 = *(v8 - 8);
  v6[10] = v9;
  v6[11] = *(v9 + 64);
  v6[12] = swift_task_alloc();
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  v6[15] = type metadata accessor for WildModeAssociationRecord(0);
  v6[16] = swift_task_alloc();
  v10 = swift_task_alloc();
  v6[17] = v10;
  *v10 = v6;
  v10[1] = sub_1010EF8E0;

  return daemon.getter();
}

uint64_t sub_1010EF8E0(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[18] = a1;

  v3 = swift_task_alloc();
  v2[19] = v3;
  v4 = type metadata accessor for Daemon();
  v2[20] = v4;
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_1010FBFB0(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[21] = v6;
  v7 = sub_1010FBFB0(&qword_101698D20, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_1010EFAC0;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1010EFAC0(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 176) = a1;
  *(v4 + 184) = v1;

  if (v1)
  {
    v5 = sub_1010F0A6C;
    v6 = 0;
  }

  else
  {

    v5 = sub_1010EFBF8;
    v6 = a1;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_1010EFBF8()
{
  v1 = v0[22];
  v2 = v0[14];
  v3 = v0[10];
  v4 = v0[9];
  v5 = v0[2];
  v6 = *(v3 + 16);
  v0[24] = v6;
  v0[25] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v4);
  v7 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v8 = swift_allocObject();
  v0[26] = v8;
  *(v8 + 16) = v1;
  (*(v3 + 32))(v8 + v7, v2, v4);

  v9 = swift_task_alloc();
  v0[27] = v9;
  *v9 = v0;
  v9[1] = sub_1010EFD68;
  v11 = v0[15];
  v10 = v0[16];

  return unsafeBlocking<A>(context:_:)(v10, 0xD000000000000010, 0x800000010134A8C0, sub_1001BCC5C, v8, v11);
}

uint64_t sub_1010EFD68()
{
  v2 = *v1;
  v2[28] = v0;

  if (v0)
  {
    v3 = v2[22];

    return _swift_task_switch(sub_1010F01C4, v3, 0);
  }

  else
  {

    v4 = swift_task_alloc();
    v2[29] = v4;
    *v4 = v2;
    v4[1] = sub_1010EFEDC;

    return daemon.getter();
  }
}

uint64_t sub_1010EFEDC(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 240) = a1;

  v5 = swift_task_alloc();
  *(v3 + 248) = v5;
  v6 = type metadata accessor for OwnerCommandService(0);
  v7 = sub_1010FBFB0(&unk_1016B10E0, type metadata accessor for OwnerCommandService, &unk_10140DB10);
  *v5 = v4;
  v5[1] = sub_1010F0090;
  v8 = *(v2 + 168);
  v9 = *(v2 + 160);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_1010F0090(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 256) = a1;
  *(v3 + 264) = v1;

  if (v1)
  {
    v4 = sub_1010F0DAC;
  }

  else
  {
    v4 = sub_1010F056C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1010F01C4()
{

  return _swift_task_switch(sub_1010F022C, 0, 0);
}

uint64_t sub_1010F022C()
{
  v25 = v0;

  if (qword_101694708 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177AD20);
  (*(v3 + 16))(v1, v4, v2);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[12];
  v11 = v0[9];
  v10 = v0[10];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = v23;
    *v12 = 136446466;
    sub_1010FBFB0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v10 + 8))(v9, v11);
    v16 = sub_1000136BC(v13, v15, &v24);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2114;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v17;
    *v22 = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Error fetching encrypted serial number for %{public}s. Error %{public}@", v12, 0x16u);
    sub_10000B3A8(v22, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v23);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = v0[5];
  v19 = v0[3];
  (*(v0[7] + 56))(v18, 1, 1, v0[6]);
  v19(v18);

  sub_10000B3A8(v18, &unk_101696AC0, &qword_101390A60);

  v20 = v0[1];

  return v20();
}

uint64_t sub_1010F056C()
{
  v23 = v0;
  if (qword_101694708 != -1)
  {
    swift_once();
  }

  v1 = v0[24];
  v2 = v0[13];
  v3 = v0[9];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177AD20);
  v1(v2, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[13];
  v10 = v0[9];
  v11 = v0[10];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22 = v13;
    *v12 = 136446210;
    sub_1010FBFB0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v11 + 8))(v9, v10);
    v17 = sub_1000136BC(v14, v16, &v22);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Fetching encrypted serial number for %{public}s", v12, 0xCu);
    sub_100007BAC(v13);
  }

  else
  {

    (*(v11 + 8))(v9, v10);
  }

  v18 = swift_task_alloc();
  v0[34] = v18;
  *v18 = v0;
  v18[1] = sub_1010F07DC;
  v19 = v0[16];
  v20 = v0[8];

  return sub_1012226E0(v20, v19);
}

uint64_t sub_1010F07DC()
{
  *(*v1 + 280) = v0;

  if (v0)
  {
    v2 = sub_1010F110C;
  }

  else
  {
    v2 = sub_1010F08F0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1010F08F0()
{
  v1 = v0[16];
  v3 = v0[7];
  v2 = v0[8];
  v5 = v0[5];
  v4 = v0[6];
  v6 = v0[3];
  (*(v3 + 16))(v5, v2, v4);
  (*(v3 + 56))(v5, 0, 1, v4);
  v6(v5);

  sub_10000B3A8(v5, &unk_101696AC0, &qword_101390A60);
  (*(v3 + 8))(v2, v4);
  sub_1010FC804(v1, type metadata accessor for WildModeAssociationRecord);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1010F0A6C()
{
  v25 = v0;

  if (qword_101694708 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177AD20);
  (*(v3 + 16))(v1, v4, v2);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[12];
  v11 = v0[9];
  v10 = v0[10];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = v23;
    *v12 = 136446466;
    sub_1010FBFB0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v10 + 8))(v9, v11);
    v16 = sub_1000136BC(v13, v15, &v24);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2114;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v17;
    *v22 = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Error fetching encrypted serial number for %{public}s. Error %{public}@", v12, 0x16u);
    sub_10000B3A8(v22, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v23);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = v0[5];
  v19 = v0[3];
  (*(v0[7] + 56))(v18, 1, 1, v0[6]);
  v19(v18);

  sub_10000B3A8(v18, &unk_101696AC0, &qword_101390A60);

  v20 = v0[1];

  return v20();
}

uint64_t sub_1010F0DAC()
{
  v26 = v0;
  v1 = v0[16];

  sub_1010FC804(v1, type metadata accessor for WildModeAssociationRecord);
  if (qword_101694708 != -1)
  {
    swift_once();
  }

  v2 = v0[12];
  v3 = v0[9];
  v4 = v0[10];
  v5 = v0[2];
  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177AD20);
  (*(v4 + 16))(v2, v5, v3);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[12];
  v12 = v0[9];
  v11 = v0[10];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = v24;
    *v13 = 136446466;
    sub_1010FBFB0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v11 + 8))(v10, v12);
    v17 = sub_1000136BC(v14, v16, &v25);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2114;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v18;
    *v23 = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "Error fetching encrypted serial number for %{public}s. Error %{public}@", v13, 0x16u);
    sub_10000B3A8(v23, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v24);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v19 = v0[5];
  v20 = v0[3];
  (*(v0[7] + 56))(v19, 1, 1, v0[6]);
  v20(v19);

  sub_10000B3A8(v19, &unk_101696AC0, &qword_101390A60);

  v21 = v0[1];

  return v21();
}

uint64_t sub_1010F110C()
{
  v26 = v0;
  v1 = v0[16];

  sub_1010FC804(v1, type metadata accessor for WildModeAssociationRecord);
  if (qword_101694708 != -1)
  {
    swift_once();
  }

  v2 = v0[12];
  v3 = v0[9];
  v4 = v0[10];
  v5 = v0[2];
  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177AD20);
  (*(v4 + 16))(v2, v5, v3);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[12];
  v12 = v0[9];
  v11 = v0[10];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = v24;
    *v13 = 136446466;
    sub_1010FBFB0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v11 + 8))(v10, v12);
    v17 = sub_1000136BC(v14, v16, &v25);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2114;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v18;
    *v23 = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "Error fetching encrypted serial number for %{public}s. Error %{public}@", v13, 0x16u);
    sub_10000B3A8(v23, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v24);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v19 = v0[5];
  v20 = v0[3];
  (*(v0[7] + 56))(v19, 1, 1, v0[6]);
  v20(v19);

  sub_10000B3A8(v19, &unk_101696AC0, &qword_101390A60);

  v21 = v0[1];

  return v21();
}

uint64_t sub_1010F1494(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000BC4D4(&qword_1016BC138, &unk_101406270);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    for (; __CocoaSet.Iterator.next()(); ++*(v2 + 16))
    {
      sub_1000BC4D4(&unk_1016BC120, &unk_1013EA6D0);
      swift_dynamicCast();
      v9 = *(v2 + 16);
      if (*(v2 + 24) <= v9)
      {
        sub_100DF32B8(v9 + 1);
        v2 = v15;
      }

      sub_1000041A4(&qword_1016BC540, &unk_1016BC120, &unk_1013EA6D0, &protocol conformance descriptor for XPCSession<A>);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v4 = v2 + 56;
      v5 = -1 << *(v2 + 32);
      v6 = result & ~v5;
      v7 = v6 >> 6;
      if (((-1 << v6) & ~*(v2 + 56 + 8 * (v6 >> 6))) != 0)
      {
        v8 = __clz(__rbit64((-1 << v6) & ~*(v2 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v10 = 0;
        v11 = (63 - v5) >> 6;
        do
        {
          if (++v7 == v11 && (v10 & 1) != 0)
          {
            __break(1u);
            return result;
          }

          v12 = v7 == v11;
          if (v7 == v11)
          {
            v7 = 0;
          }

          v10 |= v12;
          v13 = *(v4 + 8 * v7);
        }

        while (v13 == -1);
        v8 = __clz(__rbit64(~v13)) + (v7 << 6);
      }

      *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
      *(*(v2 + 48) + 8 * v8) = v14;
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

Swift::Int sub_1010F16CC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000BC4D4(&unk_1016C7C70, &unk_1014060A0);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      sub_100008BB8(0, &unk_1016BBE80, SPBeaconShare_ptr);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_100DF4690(v9 + 1);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

uint64_t sub_1010F18BC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000BC4D4(&unk_1016BC1B0, &qword_1013E9ED8);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    for (; __CocoaSet.Iterator.next()(); ++*(v2 + 16))
    {
      sub_1000BC4D4(&unk_1016C2240, &qword_1013F6350);
      swift_dynamicCast();
      v9 = *(v2 + 16);
      if (*(v2 + 24) <= v9)
      {
        sub_100DF4924(v9 + 1);
        v2 = v15;
      }

      sub_1000041A4(&unk_101698BE0, &unk_1016C2240, &qword_1013F6350, &protocol conformance descriptor for XPCSession<A>);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v4 = v2 + 56;
      v5 = -1 << *(v2 + 32);
      v6 = result & ~v5;
      v7 = v6 >> 6;
      if (((-1 << v6) & ~*(v2 + 56 + 8 * (v6 >> 6))) != 0)
      {
        v8 = __clz(__rbit64((-1 << v6) & ~*(v2 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v10 = 0;
        v11 = (63 - v5) >> 6;
        do
        {
          if (++v7 == v11 && (v10 & 1) != 0)
          {
            __break(1u);
            return result;
          }

          v12 = v7 == v11;
          if (v7 == v11)
          {
            v7 = 0;
          }

          v10 |= v12;
          v13 = *(v4 + 8 * v7);
        }

        while (v13 == -1);
        v8 = __clz(__rbit64(~v13)) + (v7 << 6);
      }

      *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
      *(*(v2 + 48) + 8 * v8) = v14;
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

Swift::Int sub_1010F1AF4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000BC4D4(&unk_1016BBED0, &qword_1013E9DD8);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      sub_100008BB8(0, &qword_1016996A0, FAFamilyMember_ptr);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_100DF4E28(v9 + 1);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

Swift::Int sub_1010F1CE4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000BC4D4(&unk_1016C7F40, &unk_101406220);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      sub_100008BB8(0, &unk_1016B1680, SPSafeLocation_ptr);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_100DF58A4(v9 + 1);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

Swift::Int sub_1010F1ED4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000BC4D4(&unk_1016BBFF0, &unk_1013B35C0);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      sub_100008BB8(0, &qword_101698D00, SPHandle_ptr);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_100DF6368(v9 + 1);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

uint64_t sub_1010F20C4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000BC4D4(&qword_1016BC118, &qword_1013E9EB0);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    for (; __CocoaSet.Iterator.next()(); ++*(v2 + 16))
    {
      sub_1000BC4D4(&unk_1016BC100, &unk_1013F6310);
      swift_dynamicCast();
      v9 = *(v2 + 16);
      if (*(v2 + 24) <= v9)
      {
        sub_100DF7418(v9 + 1);
        v2 = v15;
      }

      sub_1000041A4(&unk_1016BC520, &unk_1016BC100, &unk_1013F6310, &protocol conformance descriptor for XPCSession<A>);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v4 = v2 + 56;
      v5 = -1 << *(v2 + 32);
      v6 = result & ~v5;
      v7 = v6 >> 6;
      if (((-1 << v6) & ~*(v2 + 56 + 8 * (v6 >> 6))) != 0)
      {
        v8 = __clz(__rbit64((-1 << v6) & ~*(v2 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v10 = 0;
        v11 = (63 - v5) >> 6;
        do
        {
          if (++v7 == v11 && (v10 & 1) != 0)
          {
            __break(1u);
            return result;
          }

          v12 = v7 == v11;
          if (v7 == v11)
          {
            v7 = 0;
          }

          v10 |= v12;
          v13 = *(v4 + 8 * v7);
        }

        while (v13 == -1);
        v8 = __clz(__rbit64(~v13)) + (v7 << 6);
      }

      *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
      *(*(v2 + 48) + 8 * v8) = v14;
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

Swift::Int sub_1010F22FC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000BC4D4(&unk_1016C7F50, &unk_1013B3590);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      sub_100008BB8(0, &unk_1016BC050, SPBeacon_ptr);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_100DF76BC(v9 + 1);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

uint64_t sub_1010F24EC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000BC4D4(&unk_1016BC190, &unk_101406290);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for AnyCancellable();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_100DF8424(v9 + 1);
        }

        v2 = v15;
        sub_1010FBFB0(&qword_1016BC180, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
        result = dispatch thunk of Hashable._rawHashValue(seed:)();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

Swift::Int sub_1010F2720(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000BC4D4(&unk_1016BC160, &unk_101406280);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      sub_100008BB8(0, &unk_1016C7F80, SPStandaloneBeacon_ptr);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_100DF86B8(v9 + 1);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

Swift::Int sub_1010F2910(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000BC4D4(&unk_1016BC150, &qword_1013E9EC0);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      sub_100008BB8(0, &unk_1016C7F70, SPBeaconGroup_ptr);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_100DF86CC(v9 + 1);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

uint64_t sub_1010F2B00(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000BC4D4(&qword_1016BC0E8, &unk_101406260);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    for (; __CocoaSet.Iterator.next()(); ++*(v2 + 16))
    {
      sub_1000BC4D4(&unk_1016BC0D0, qword_1013EA6A0);
      swift_dynamicCast();
      v9 = *(v2 + 16);
      if (*(v2 + 24) <= v9)
      {
        sub_100DF8954(v9 + 1);
        v2 = v15;
      }

      sub_1000041A4(&qword_1016BC500, &unk_1016BC0D0, qword_1013EA6A0, &protocol conformance descriptor for XPCSession<A>);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v4 = v2 + 56;
      v5 = -1 << *(v2 + 32);
      v6 = result & ~v5;
      v7 = v6 >> 6;
      if (((-1 << v6) & ~*(v2 + 56 + 8 * (v6 >> 6))) != 0)
      {
        v8 = __clz(__rbit64((-1 << v6) & ~*(v2 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v10 = 0;
        v11 = (63 - v5) >> 6;
        do
        {
          if (++v7 == v11 && (v10 & 1) != 0)
          {
            __break(1u);
            return result;
          }

          v12 = v7 == v11;
          if (v7 == v11)
          {
            v7 = 0;
          }

          v10 |= v12;
          v13 = *(v4 + 8 * v7);
        }

        while (v13 == -1);
        v8 = __clz(__rbit64(~v13)) + (v7 << 6);
      }

      *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
      *(*(v2 + 48) + 8 * v8) = v14;
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

Swift::Int sub_1010F2D38(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000BC4D4(&unk_1016BC170, &qword_1013D6BD8);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      sub_100008BB8(0, &unk_1016C7F90, SPTrackingAvoidanceResult_ptr);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_100DF8E14(v9 + 1);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

Swift::Int sub_1010F2F28(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000BC4D4(&unk_1016BBE60, &qword_1013E9DB8);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      sub_100008BB8(0, &qword_10169EF48, SPCBPeripheralManagerSessionKey_ptr);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_100DF9904(v9 + 1);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

Swift::Int sub_1010F3118(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000BC4D4(&unk_1016BC0C0, &qword_101406240);
    v2 = static _SetStorage.convert(_:capacity:)();
    v16 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for Service();
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_100DF9B40(v10 + 1);
        }

        v2 = v16;
        Hasher.init(_seed:)();
        v3 = *(v15 + 32);
        NSObject.hash(into:)();

        result = Hasher._finalize()();
        v5 = v16 + 56;
        v6 = -1 << *(v16 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v8 == v12;
            if (v8 == v12)
            {
              v8 = 0;
            }

            v11 |= v13;
            v14 = *(v5 + 8 * v8);
          }

          while (v14 == -1);
          v9 = __clz(__rbit64(~v14)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v16 + 48) + 8 * v9) = v15;
        ++*(v16 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

Swift::Int sub_1010F3324(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000BC4D4(&qword_1016BC0B8, &qword_1013E9E98);
    v2 = static _SetStorage.convert(_:capacity:)();
    v16 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for Characteristic();
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_100DF9D9C(v10 + 1);
        }

        v2 = v16;
        Hasher.init(_seed:)();
        v3 = *(v15 + 40);
        NSObject.hash(into:)();

        result = Hasher._finalize()();
        v5 = v16 + 56;
        v6 = -1 << *(v16 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v8 == v12;
            if (v8 == v12)
            {
              v8 = 0;
            }

            v11 |= v13;
            v14 = *(v5 + 8 * v8);
          }

          while (v14 == -1);
          v9 = __clz(__rbit64(~v14)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v16 + 48) + 8 * v9) = v15;
        ++*(v16 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

uint64_t sub_1010F3530(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000BC4D4(&qword_1016BC068, &unk_101406230);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    for (; __CocoaSet.Iterator.next()(); ++*(v2 + 16))
    {
      sub_1000BC4D4(&qword_1016B2F60, &qword_1013D3ED0);
      swift_dynamicCast();
      v9 = *(v2 + 16);
      if (*(v2 + 24) <= v9)
      {
        sub_100DF9FF8(v9 + 1);
        v2 = v15;
      }

      sub_1000041A4(&qword_1016BC4E0, &qword_1016B2F60, &qword_1013D3ED0, &protocol conformance descriptor for XPCSession<A>);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v4 = v2 + 56;
      v5 = -1 << *(v2 + 32);
      v6 = result & ~v5;
      v7 = v6 >> 6;
      if (((-1 << v6) & ~*(v2 + 56 + 8 * (v6 >> 6))) != 0)
      {
        v8 = __clz(__rbit64((-1 << v6) & ~*(v2 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v10 = 0;
        v11 = (63 - v5) >> 6;
        do
        {
          if (++v7 == v11 && (v10 & 1) != 0)
          {
            __break(1u);
            return result;
          }

          v12 = v7 == v11;
          if (v7 == v11)
          {
            v7 = 0;
          }

          v10 |= v12;
          v13 = *(v4 + 8 * v7);
        }

        while (v13 == -1);
        v8 = __clz(__rbit64(~v13)) + (v7 << 6);
      }

      *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
      *(*(v2 + 48) + 8 * v8) = v14;
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

uint64_t sub_1010F3768(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000BC4D4(&qword_1016BBEF0, &qword_1014060B0);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    for (; __CocoaSet.Iterator.next()(); ++*(v2 + 16))
    {
      sub_1000BC4D4(&unk_1016A6020, &unk_101393420);
      swift_dynamicCast();
      v9 = *(v2 + 16);
      if (*(v2 + 24) <= v9)
      {
        sub_100DFA598(v9 + 1);
        v2 = v15;
      }

      sub_1000041A4(&qword_10169A0B0, &unk_1016A6020, &unk_101393420, &protocol conformance descriptor for XPCSession<A>);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v4 = v2 + 56;
      v5 = -1 << *(v2 + 32);
      v6 = result & ~v5;
      v7 = v6 >> 6;
      if (((-1 << v6) & ~*(v2 + 56 + 8 * (v6 >> 6))) != 0)
      {
        v8 = __clz(__rbit64((-1 << v6) & ~*(v2 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v10 = 0;
        v11 = (63 - v5) >> 6;
        do
        {
          if (++v7 == v11 && (v10 & 1) != 0)
          {
            __break(1u);
            return result;
          }

          v12 = v7 == v11;
          if (v7 == v11)
          {
            v7 = 0;
          }

          v10 |= v12;
          v13 = *(v4 + 8 * v7);
        }

        while (v13 == -1);
        v8 = __clz(__rbit64(~v13)) + (v7 << 6);
      }

      *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
      *(*(v2 + 48) + 8 * v8) = v14;
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

uint64_t sub_1010F39A0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000BC4D4(&unk_1016BBFE0, &unk_101406210);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    for (; __CocoaSet.Iterator.next()(); ++*(v2 + 16))
    {
      sub_1000BC4D4(&unk_1016C2180, &unk_1013EA680);
      swift_dynamicCast();
      v9 = *(v2 + 16);
      if (*(v2 + 24) <= v9)
      {
        sub_100DFAC18(v9 + 1);
        v2 = v15;
      }

      sub_1000041A4(&unk_1016BBFD0, &unk_1016C2180, &unk_1013EA680, &protocol conformance descriptor for XPCSession<A>);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v4 = v2 + 56;
      v5 = -1 << *(v2 + 32);
      v6 = result & ~v5;
      v7 = v6 >> 6;
      if (((-1 << v6) & ~*(v2 + 56 + 8 * (v6 >> 6))) != 0)
      {
        v8 = __clz(__rbit64((-1 << v6) & ~*(v2 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v10 = 0;
        v11 = (63 - v5) >> 6;
        do
        {
          if (++v7 == v11 && (v10 & 1) != 0)
          {
            __break(1u);
            return result;
          }

          v12 = v7 == v11;
          if (v7 == v11)
          {
            v7 = 0;
          }

          v10 |= v12;
          v13 = *(v4 + 8 * v7);
        }

        while (v13 == -1);
        v8 = __clz(__rbit64(~v13)) + (v7 << 6);
      }

      *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
      *(*(v2 + 48) + 8 * v8) = v14;
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

Swift::Int sub_1010F3BD8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000BC4D4(&unk_1016BBFB0, &qword_1013E9E30);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      sub_100008BB8(0, &unk_1016BBFC0, CKRecordZoneID_ptr);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_100DFAEBC(v9 + 1);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

uint64_t sub_1010F3DC8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000BC4D4(&qword_1016BBE08, &qword_1013E9D90);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    for (; __CocoaSet.Iterator.next()(); ++*(v2 + 16))
    {
      sub_1000BC4D4(&qword_1016BBE10, &qword_1013E9D98);
      swift_dynamicCast();
      v9 = *(v2 + 16);
      if (*(v2 + 24) <= v9)
      {
        sub_100DFB0F0(v9 + 1);
        v2 = v15;
      }

      sub_1000041A4(&qword_1016BBE18, &qword_1016BBE10, &qword_1013E9D98, &protocol conformance descriptor for XPCSession<A>);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v4 = v2 + 56;
      v5 = -1 << *(v2 + 32);
      v6 = result & ~v5;
      v7 = v6 >> 6;
      if (((-1 << v6) & ~*(v2 + 56 + 8 * (v6 >> 6))) != 0)
      {
        v8 = __clz(__rbit64((-1 << v6) & ~*(v2 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v10 = 0;
        v11 = (63 - v5) >> 6;
        do
        {
          if (++v7 == v11 && (v10 & 1) != 0)
          {
            __break(1u);
            return result;
          }

          v12 = v7 == v11;
          if (v7 == v11)
          {
            v7 = 0;
          }

          v10 |= v12;
          v13 = *(v4 + 8 * v7);
        }

        while (v13 == -1);
        v8 = __clz(__rbit64(~v13)) + (v7 << 6);
      }

      *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
      *(*(v2 + 48) + 8 * v8) = v14;
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

unint64_t sub_1010F4038(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5)
{
  sub_1000BC4D4(a3, a4);
  sub_1000041A4(a5, a3, a4, &protocol conformance descriptor for XPCSession<A>);
  dispatch thunk of Hashable._rawHashValue(seed:)();
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_1010F4144(double *a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  v4 = *a1;
  if (*a1 == 0.0)
  {
    v4 = 0.0;
  }

  Hasher._combine(_:)(*&v4);
  v5 = a1[1];
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  Hasher._combine(_:)(*&v5);
  v6 = a1[2];
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  Hasher._combine(_:)(*&v6);
  v7 = type metadata accessor for WildModeTrackingLocation(0);
  type metadata accessor for Date();
  sub_1010FBFB0(&unk_101698070, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._finalize()();
  v8 = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
  result = sub_1010FC734(a1, *(a2 + 48) + *(*(v7 - 8) + 72) * v8, type metadata accessor for WildModeTrackingLocation);
  ++*(a2 + 16);
  return result;
}

unint64_t sub_1010F42CC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AnyCancellable();
  sub_1010FBFB0(&qword_1016BC180, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
  dispatch thunk of Hashable._rawHashValue(seed:)();
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_1010F43D0(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  v4 = *(a1 + 32);
  NSObject.hash(into:)();

  Hasher._finalize()();
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_1010F4480(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  v4 = *(a1 + 40);
  NSObject.hash(into:)();

  Hasher._finalize()();
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_1010F4584(uint64_t a1, void *a2)
{
  NSObject._rawHashValue(seed:)(a2[5]);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

Swift::Int sub_1010F4624(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for WildModeTrackingLocation(0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for WildModeTrackingLocation(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1010F49B4(v8, v9, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1010F4750(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1010F4750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for WildModeTrackingLocation(0);
  v9 = __chkstk_darwin(v8);
  v35 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v27 - v12;
  result = __chkstk_darwin(v11);
  v17 = &v27 - v16;
  v29 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v34 = v18;
    v28 = v19;
    v23 = v18 + v19 * a3;
LABEL_5:
    v32 = v20;
    v33 = a3;
    v30 = v23;
    v31 = v22;
    while (1)
    {
      sub_1010FC79C(v23, v17, type metadata accessor for WildModeTrackingLocation);
      sub_1010FC79C(v20, v13, type metadata accessor for WildModeTrackingLocation);
      v24 = static Date.< infix(_:_:)();
      sub_1010FC804(v13, type metadata accessor for WildModeTrackingLocation);
      result = sub_1010FC804(v17, type metadata accessor for WildModeTrackingLocation);
      if ((v24 & 1) == 0)
      {
LABEL_4:
        a3 = v33 + 1;
        v20 = v32 + v28;
        v22 = v31 - 1;
        v23 = v30 + v28;
        if (v33 + 1 == v29)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v34)
      {
        break;
      }

      v25 = v35;
      sub_1010FC734(v23, v35, type metadata accessor for WildModeTrackingLocation);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_1010FC734(v25, v20, type metadata accessor for WildModeTrackingLocation);
      v20 += v21;
      v23 += v21;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1010F49B4(unint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v104 = a1;
  v9 = type metadata accessor for WildModeTrackingLocation(0);
  v112 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v107 = &v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v115 = &v100 - v13;
  v14 = __chkstk_darwin(v12);
  v116 = &v100 - v15;
  result = __chkstk_darwin(v14);
  v18 = &v100 - v17;
  v114 = a3;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = _swiftEmptyArrayStorage;
LABEL_95:
    v5 = *v104;
    if (!*v104)
    {
      goto LABEL_134;
    }

    a4 = v21;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_128:
      result = sub_100B31E68(a4);
    }

    v118 = result;
    a4 = *(result + 16);
    if (a4 >= 2)
    {
      while (*v114)
      {
        v96 = *(result + 16 * a4);
        v97 = result;
        v98 = *(result + 16 * (a4 - 1) + 40);
        sub_1010F5318(*v114 + *(v112 + 72) * v96, *v114 + *(v112 + 72) * *(result + 16 * (a4 - 1) + 32), *v114 + *(v112 + 72) * v98, v5);
        if (v6)
        {
        }

        if (v98 < v96)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v97 = sub_100B31E68(v97);
        }

        if (a4 - 2 >= *(v97 + 2))
        {
          goto LABEL_122;
        }

        v99 = &v97[16 * a4];
        *v99 = v96;
        *(v99 + 1) = v98;
        v118 = v97;
        sub_100B31DDC(a4 - 1);
        result = v118;
        a4 = *(v118 + 16);
        if (a4 <= 1)
        {
        }
      }

      goto LABEL_132;
    }
  }

  v20 = 0;
  v21 = _swiftEmptyArrayStorage;
  v103 = a4;
  v117 = v9;
  while (1)
  {
    v22 = v20;
    v23 = v20 + 1;
    v108 = v21;
    if (v20 + 1 >= v19)
    {
      v19 = v20 + 1;
    }

    else
    {
      v24 = *(v112 + 72);
      v5 = *v114 + v24 * v23;
      v110 = *v114;
      v25 = v110;
      sub_1010FC79C(v110 + v24 * v23, v18, type metadata accessor for WildModeTrackingLocation);
      v26 = v25 + v24 * v22;
      v27 = v22;
      v28 = v116;
      sub_1010FC79C(v26, v116, type metadata accessor for WildModeTrackingLocation);
      LODWORD(v111) = static Date.< infix(_:_:)();
      sub_1010FC804(v28, type metadata accessor for WildModeTrackingLocation);
      result = sub_1010FC804(v18, type metadata accessor for WildModeTrackingLocation);
      v102 = v27;
      v29 = v27 + 2;
      v113 = v24;
      v30 = v110 + v24 * (v27 + 2);
      while (v19 != v29)
      {
        sub_1010FC79C(v30, v18, type metadata accessor for WildModeTrackingLocation);
        v31 = v116;
        sub_1010FC79C(v5, v116, type metadata accessor for WildModeTrackingLocation);
        v32 = static Date.< infix(_:_:)() & 1;
        sub_1010FC804(v31, type metadata accessor for WildModeTrackingLocation);
        result = sub_1010FC804(v18, type metadata accessor for WildModeTrackingLocation);
        ++v29;
        v30 += v113;
        v5 += v113;
        if ((v111 & 1) != v32)
        {
          v19 = v29 - 1;
          break;
        }
      }

      v22 = v102;
      a4 = v103;
      if (v111)
      {
        if (v19 < v102)
        {
          goto LABEL_125;
        }

        if (v102 < v19)
        {
          v101 = v6;
          v33 = v113 * (v19 - 1);
          v34 = v19;
          v35 = v19 * v113;
          v111 = v19;
          v36 = v102;
          v37 = v102;
          v38 = v102 * v113;
          do
          {
            if (v36 != --v34)
            {
              v39 = *v114;
              if (!*v114)
              {
                goto LABEL_131;
              }

              v5 = v39 + v38;
              sub_1010FC734(v39 + v38, v107, type metadata accessor for WildModeTrackingLocation);
              if (v38 < v33 || v5 >= v39 + v35)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v38 != v33)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_1010FC734(v107, v39 + v33, type metadata accessor for WildModeTrackingLocation);
            }

            ++v36;
            v33 -= v113;
            v35 -= v113;
            v38 += v113;
          }

          while (v36 < v34);
          v6 = v101;
          a4 = v103;
          v22 = v37;
          v19 = v111;
        }
      }
    }

    v40 = v114[1];
    if (v19 < v40)
    {
      if (__OFSUB__(v19, v22))
      {
        goto LABEL_124;
      }

      if (v19 - v22 < a4)
      {
        if (__OFADD__(v22, a4))
        {
          goto LABEL_126;
        }

        if ((v22 + a4) >= v40)
        {
          v41 = v114[1];
        }

        else
        {
          v41 = v22 + a4;
        }

        if (v41 < v22)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v19 != v41)
        {
          break;
        }
      }
    }

    v20 = v19;
    if (v19 < v22)
    {
      goto LABEL_123;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v21 = v108;
    }

    else
    {
      result = sub_100A5B430(0, *(v108 + 2) + 1, 1, v108);
      v21 = result;
    }

    a4 = *(v21 + 2);
    v42 = *(v21 + 3);
    v5 = a4 + 1;
    if (a4 >= v42 >> 1)
    {
      result = sub_100A5B430((v42 > 1), a4 + 1, 1, v21);
      v21 = result;
    }

    *(v21 + 2) = v5;
    v43 = &v21[16 * a4];
    *(v43 + 4) = v22;
    *(v43 + 5) = v20;
    v44 = *v104;
    if (!*v104)
    {
      goto LABEL_133;
    }

    if (a4)
    {
      while (1)
      {
        v45 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v46 = *(v21 + 4);
          v47 = *(v21 + 5);
          v56 = __OFSUB__(v47, v46);
          v48 = v47 - v46;
          v49 = v56;
LABEL_52:
          if (v49)
          {
            goto LABEL_112;
          }

          v62 = &v21[16 * v5];
          v64 = *v62;
          v63 = *(v62 + 1);
          v65 = __OFSUB__(v63, v64);
          v66 = v63 - v64;
          v67 = v65;
          if (v65)
          {
            goto LABEL_115;
          }

          v68 = &v21[16 * v45 + 32];
          v70 = *v68;
          v69 = *(v68 + 1);
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v66, v71))
          {
            goto LABEL_119;
          }

          if (v66 + v71 >= v48)
          {
            if (v48 < v71)
            {
              v45 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v72 = &v21[16 * v5];
        v74 = *v72;
        v73 = *(v72 + 1);
        v56 = __OFSUB__(v73, v74);
        v66 = v73 - v74;
        v67 = v56;
LABEL_66:
        if (v67)
        {
          goto LABEL_114;
        }

        v75 = &v21[16 * v45];
        v77 = *(v75 + 4);
        v76 = *(v75 + 5);
        v56 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v56)
        {
          goto LABEL_117;
        }

        if (v78 < v66)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v45 - 1;
        if (v45 - 1 >= v5)
        {
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
          goto LABEL_127;
        }

        if (!*v114)
        {
          goto LABEL_130;
        }

        v83 = v21;
        v84 = *&v21[16 * a4 + 32];
        v5 = *&v21[16 * v45 + 40];
        sub_1010F5318(*v114 + *(v112 + 72) * v84, *v114 + *(v112 + 72) * *&v21[16 * v45 + 32], *v114 + *(v112 + 72) * v5, v44);
        if (v6)
        {
        }

        if (v5 < v84)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v83 = sub_100B31E68(v83);
        }

        if (a4 >= *(v83 + 2))
        {
          goto LABEL_109;
        }

        v85 = &v83[16 * a4];
        *(v85 + 4) = v84;
        *(v85 + 5) = v5;
        v118 = v83;
        result = sub_100B31DDC(v45);
        v21 = v118;
        v5 = *(v118 + 16);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v50 = &v21[16 * v5 + 32];
      v51 = *(v50 - 64);
      v52 = *(v50 - 56);
      v56 = __OFSUB__(v52, v51);
      v53 = v52 - v51;
      if (v56)
      {
        goto LABEL_110;
      }

      v55 = *(v50 - 48);
      v54 = *(v50 - 40);
      v56 = __OFSUB__(v54, v55);
      v48 = v54 - v55;
      v49 = v56;
      if (v56)
      {
        goto LABEL_111;
      }

      v57 = &v21[16 * v5];
      v59 = *v57;
      v58 = *(v57 + 1);
      v56 = __OFSUB__(v58, v59);
      v60 = v58 - v59;
      if (v56)
      {
        goto LABEL_113;
      }

      v56 = __OFADD__(v48, v60);
      v61 = v48 + v60;
      if (v56)
      {
        goto LABEL_116;
      }

      if (v61 >= v53)
      {
        v79 = &v21[16 * v45 + 32];
        v81 = *v79;
        v80 = *(v79 + 1);
        v56 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v56)
        {
          goto LABEL_120;
        }

        if (v48 < v82)
        {
          v45 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = v114[1];
    a4 = v103;
    if (v20 >= v19)
    {
      goto LABEL_95;
    }
  }

  v101 = v6;
  v86 = v19;
  v87 = v22;
  v88 = *v114;
  v89 = *(v112 + 72);
  v90 = *v114 + v89 * (v19 - 1);
  v91 = -v89;
  v102 = v87;
  v92 = v87 - v19;
  v111 = v86;
  v105 = v89;
  v106 = v41;
  v5 = v88 + v86 * v89;
LABEL_85:
  v109 = v5;
  v110 = v92;
  v113 = v90;
  while (1)
  {
    sub_1010FC79C(v5, v18, type metadata accessor for WildModeTrackingLocation);
    v93 = v116;
    sub_1010FC79C(v90, v116, type metadata accessor for WildModeTrackingLocation);
    a4 = static Date.< infix(_:_:)();
    sub_1010FC804(v93, type metadata accessor for WildModeTrackingLocation);
    result = sub_1010FC804(v18, type metadata accessor for WildModeTrackingLocation);
    if ((a4 & 1) == 0)
    {
LABEL_84:
      v20 = v106;
      v90 = v113 + v105;
      v92 = v110 - 1;
      v5 = v109 + v105;
      if (++v111 != v106)
      {
        goto LABEL_85;
      }

      v6 = v101;
      v22 = v102;
      if (v106 < v102)
      {
        goto LABEL_123;
      }

      goto LABEL_33;
    }

    if (!v88)
    {
      break;
    }

    a4 = type metadata accessor for WildModeTrackingLocation;
    v94 = v115;
    sub_1010FC734(v5, v115, type metadata accessor for WildModeTrackingLocation);
    swift_arrayInitWithTakeFrontToBack();
    sub_1010FC734(v94, v90, type metadata accessor for WildModeTrackingLocation);
    v90 += v91;
    v5 += v91;
    if (__CFADD__(v92++, 1))
    {
      goto LABEL_84;
    }
  }

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
  return result;
}

uint64_t sub_1010F5318(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v45 = type metadata accessor for WildModeTrackingLocation(0);
  v8 = __chkstk_darwin(v45);
  v44 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v43 = &v35 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v15 = (a2 - a1) / v13;
  v48 = a1;
  v47 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v23 = a4 + v17;
    if (v17 >= 1)
    {
      v24 = -v13;
      v25 = a4 + v17;
      v39 = a1;
      v40 = a4;
      v38 = -v13;
      do
      {
        v36 = v23;
        v26 = a2;
        v27 = a2 + v24;
        v41 = v26;
        v42 = v27;
        while (1)
        {
          if (v26 <= a1)
          {
            v48 = v26;
            v46 = v36;
            goto LABEL_59;
          }

          v37 = v23;
          v29 = a3 + v24;
          v30 = v25 + v24;
          v31 = v43;
          sub_1010FC79C(v30, v43, type metadata accessor for WildModeTrackingLocation);
          v32 = v44;
          sub_1010FC79C(v27, v44, type metadata accessor for WildModeTrackingLocation);
          v33 = static Date.< infix(_:_:)();
          sub_1010FC804(v32, type metadata accessor for WildModeTrackingLocation);
          sub_1010FC804(v31, type metadata accessor for WildModeTrackingLocation);
          if (v33)
          {
            break;
          }

          v23 = v30;
          if (a3 < v25 || v29 >= v25)
          {
            a3 = v29;
            swift_arrayInitWithTakeFrontToBack();
            a1 = v39;
          }

          else
          {
            v34 = a3 == v25;
            a3 = v29;
            a1 = v39;
            if (!v34)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v25 = v30;
          v26 = v41;
          v28 = v30 > v40;
          v27 = v42;
          v24 = v38;
          if (!v28)
          {
            a2 = v41;
            goto LABEL_58;
          }
        }

        if (a3 < v41 || v29 >= v41)
        {
          a3 = v29;
          a2 = v42;
          swift_arrayInitWithTakeFrontToBack();
          v24 = v38;
          a1 = v39;
          v23 = v37;
        }

        else
        {
          v34 = a3 == v41;
          a3 = v29;
          a2 = v42;
          v24 = v38;
          a1 = v39;
          v23 = v37;
          if (!v34)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v25 > v40);
    }

LABEL_58:
    v48 = a2;
    v46 = v23;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v42 = a4 + v16;
    v46 = a4 + v16;
    if (v16 >= 1 && a2 < a3)
    {
      do
      {
        v19 = a3;
        v20 = v43;
        sub_1010FC79C(a2, v43, type metadata accessor for WildModeTrackingLocation);
        v21 = v44;
        sub_1010FC79C(a4, v44, type metadata accessor for WildModeTrackingLocation);
        v22 = static Date.< infix(_:_:)();
        sub_1010FC804(v21, type metadata accessor for WildModeTrackingLocation);
        sub_1010FC804(v20, type metadata accessor for WildModeTrackingLocation);
        if (v22)
        {
          if (a1 < a2 || a1 >= a2 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v13;
            a3 = v19;
          }

          else
          {
            a3 = v19;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v13;
          }
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v19;
          }

          else
          {
            a3 = v19;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v47 = a4 + v13;
          a4 += v13;
        }

        a1 += v13;
        v48 = a1;
      }

      while (a4 < v42 && a2 < a3);
    }
  }

LABEL_59:
  sub_10060AB8C(&v48, &v47, &v46);
  return 1;
}

uint64_t sub_1010F5848(uint64_t a1)
{
  v2 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v2 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v2 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = __CocoaSet.contains(_:)();

    if (v5)
    {
      v6 = sub_1010F8C78(v4, a1);

      return v6;
    }

    return 0;
  }

  sub_1000BC4D4(&unk_1016BC120, &unk_1013EA6D0);
  sub_1000041A4(&qword_1016BC540, &unk_1016BC120, &unk_1013EA6D0, &protocol conformance descriptor for XPCSession<A>);
  v8 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v9 = -1 << *(v2 + 32);
  v10 = v8 & ~v9;
  if (((*(v2 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
    return 0;
  }

  v11 = ~v9;
  sub_1000041A4(&qword_1016BC130, &unk_1016BC120, &unk_1013EA6D0, &protocol conformance descriptor for XPCSession<A>);
  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    v10 = (v10 + 1) & v11;
    if (((*(v2 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v1;
  v15 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100E04668();
    v13 = v15;
  }

  v14 = *(*(v13 + 48) + 8 * v10);
  sub_1010FA3B4(v10, &qword_1016BC540, &unk_1016BC120, &unk_1013EA6D0);
  result = v14;
  *v1 = v15;
  return result;
}

uint64_t sub_1010F5A64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for SharedBeaconRecord(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  Hasher.init(_seed:)();
  sub_1011D8230(v24);
  v10 = Hasher._finalize()();
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v21 = v2;
    v22 = v5;
    v23 = a2;
    v13 = ~v11;
    v14 = *(v6 + 72);
    while (1)
    {
      sub_1010FC79C(*(v9 + 48) + v14 * v12, v8, type metadata accessor for SharedBeaconRecord);
      v15 = sub_1011DB3D8(v8, a1);
      sub_1010FC804(v8, type metadata accessor for SharedBeaconRecord);
      if (v15)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        v16 = 1;
        a2 = v23;
        goto LABEL_10;
      }
    }

    v17 = v21;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v17;
    v24[0] = *v17;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_100E04934();
      v19 = v24[0];
    }

    a2 = v23;
    sub_1010FC734(*(v19 + 48) + v14 * v12, v23, type metadata accessor for SharedBeaconRecord);
    sub_1010F9F28(v12);
    v16 = 0;
    *v17 = v24[0];
LABEL_10:
    v5 = v22;
  }

  else
  {
    v16 = 1;
  }

  return (*(v6 + 56))(a2, v16, 1, v5);
}

uint64_t sub_1010F5CB0(uint64_t a1, uint64_t a2, int a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._combine(_:)(a3 & 1);
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
    return 0;
  }

  v11 = ~v9;
  v12 = *(v7 + 48);
  while (1)
  {
    v13 = v12 + 24 * v10;
    v14 = *(v13 + 16);
    v15 = *v13 == a1 && *(v13 + 8) == a2;
    if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && ((v14 ^ a3) & 1) == 0)
    {
      break;
    }

    v10 = (v10 + 1) & v11;
    if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v3;
  v20 = *v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100E04B8C();
    v18 = v20;
  }

  v19 = *(*(v18 + 48) + 24 * v10);
  sub_1010FA1B8(v10);
  result = v19;
  *v3 = v20;
  return result;
}

uint64_t sub_1010F5E2C(uint64_t a1)
{
  v2 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v2 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v2 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = __CocoaSet.contains(_:)();

    if (v5)
    {
      v6 = sub_1010F8E68(v4, a1);

      return v6;
    }

    return 0;
  }

  sub_1000BC4D4(&unk_1016C2240, &qword_1013F6350);
  sub_1000041A4(&unk_101698BE0, &unk_1016C2240, &qword_1013F6350, &protocol conformance descriptor for XPCSession<A>);
  v8 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v9 = -1 << *(v2 + 32);
  v10 = v8 & ~v9;
  if (((*(v2 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
    return 0;
  }

  v11 = ~v9;
  sub_1000041A4(&qword_1016C7FA0, &unk_1016C2240, &qword_1013F6350, &protocol conformance descriptor for XPCSession<A>);
  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    v10 = (v10 + 1) & v11;
    if (((*(v2 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v1;
  v15 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100E04CF4();
    v13 = v15;
  }

  v14 = *(*(v13 + 48) + 8 * v10);
  sub_1010FA3B4(v10, &unk_101698BE0, &unk_1016C2240, &qword_1013F6350);
  result = v14;
  *v1 = v15;
  return result;
}

double sub_1010F6048@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = *v3;
  Hasher.init(_seed:)();
  Data.hash(into:)();
  v7 = Hasher._finalize()();
  v8 = v6 + 56;
  v9 = -1 << *(v6 + 32);
  v10 = v7 & ~v9;
  if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
LABEL_64:
    result = 0.0;
    *a3 = xmmword_10138BBF0;
    return result;
  }

  v11 = ~v9;
  if (a1)
  {
    v12 = 0;
  }

  else
  {
    v12 = a2 == 0xC000000000000000;
  }

  v13 = !v12;
  v45 = v13;
  v14 = a2 >> 62;
  v15 = __OFSUB__(HIDWORD(a1), a1);
  v42 = v15;
  v40 = a2;
  v41 = HIDWORD(a1) - a1;
  v43 = v11;
  v44 = BYTE6(a2);
  v39 = a1;
  while (1)
  {
    v16 = (*(v6 + 48) + 16 * v10);
    v18 = *v16;
    v17 = v16[1];
    v19 = v17 >> 62;
    if (v17 >> 62 == 3)
    {
      break;
    }

    if (v19 > 1)
    {
      if (v19 != 2)
      {
        goto LABEL_36;
      }

      v25 = *(v18 + 16);
      v24 = *(v18 + 24);
      v26 = __OFSUB__(v24, v25);
      v23 = v24 - v25;
      if (v26)
      {
        goto LABEL_67;
      }

      if (v14 <= 1)
      {
        goto LABEL_33;
      }
    }

    else if (v19)
    {
      LODWORD(v23) = HIDWORD(v18) - v18;
      if (__OFSUB__(HIDWORD(v18), v18))
      {
        goto LABEL_68;
      }

      v23 = v23;
      if (v14 <= 1)
      {
LABEL_33:
        v27 = v44;
        if (v14)
        {
          v27 = v41;
          if (v42)
          {
            goto LABEL_66;
          }
        }

        goto LABEL_39;
      }
    }

    else
    {
      v23 = BYTE6(v17);
      if (v14 <= 1)
      {
        goto LABEL_33;
      }
    }

LABEL_37:
    if (v14 != 2)
    {
      if (!v23)
      {
        goto LABEL_62;
      }

      goto LABEL_13;
    }

    v29 = *(a1 + 16);
    v28 = *(a1 + 24);
    v26 = __OFSUB__(v28, v29);
    v27 = v28 - v29;
    if (v26)
    {
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
      goto LABEL_73;
    }

LABEL_39:
    if (v23 != v27)
    {
      goto LABEL_13;
    }

    if (v23 < 1)
    {
      goto LABEL_62;
    }

    if (v19 <= 1)
    {
      if (!v19)
      {
        *v47 = v18;
        *&v47[8] = v17;
        v47[10] = BYTE2(v17);
        v47[11] = BYTE3(v17);
        v47[12] = BYTE4(v17);
        v47[13] = BYTE5(v17);
        sub_100017D5C(v18, v17);
        v11 = v43;
        goto LABEL_61;
      }

      a2 = (v18 >> 32) - v18;
      if (v18 >> 32 < v18)
      {
        goto LABEL_69;
      }

      sub_100017D5C(v18, v17);
      v31 = __DataStorage._bytes.getter();
      if (v31)
      {
        v33 = __DataStorage._offset.getter();
        if (__OFSUB__(v18, v33))
        {
          goto LABEL_72;
        }

        v31 += v18 - v33;
      }

LABEL_58:
      __DataStorage._length.getter();
      a1 = v39;
      a2 = v40;
      sub_100771A28(v31, v39, v40, v47);
      sub_100016590(v18, v17);
      v8 = v6 + 56;
      v11 = v43;
      if (v47[0])
      {
        goto LABEL_62;
      }

      goto LABEL_13;
    }

    if (v19 == 2)
    {
      a2 = *(v18 + 16);
      v30 = *(v18 + 24);
      sub_100017D5C(v18, v17);
      v31 = __DataStorage._bytes.getter();
      if (v31)
      {
        v32 = __DataStorage._offset.getter();
        if (__OFSUB__(a2, v32))
        {
          goto LABEL_71;
        }

        v31 += a2 - v32;
      }

      v26 = __OFSUB__(v30, a2);
      a2 = v30 - a2;
      if (v26)
      {
        goto LABEL_70;
      }

      goto LABEL_58;
    }

    *&v47[6] = 0;
    *v47 = 0;
    sub_100017D5C(v18, v17);
LABEL_61:
    sub_100771A28(v47, a1, a2, &v46);
    sub_100016590(v18, v17);
    if (v46)
    {
      goto LABEL_62;
    }

LABEL_13:
    v10 = (v10 + 1) & v11;
    if (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_64;
    }
  }

  if (v18)
  {
    v20 = 0;
  }

  else
  {
    v20 = v17 == 0xC000000000000000;
  }

  v22 = !v20 || v14 < 3;
  if ((v22 | v45))
  {
LABEL_36:
    v23 = 0;
    if (v14 <= 1)
    {
      goto LABEL_33;
    }

    goto LABEL_37;
  }

LABEL_62:
  a2 = v37;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v37;
  *v47 = *v37;
  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_63;
  }

LABEL_73:
  sub_100E04D08();
  v35 = *v47;
LABEL_63:
  *a3 = *(*(v35 + 48) + 16 * v10);
  sub_1010FA5A0(v10);
  *a2 = *v47;
  return result;
}

uint64_t sub_1010F6494(uint64_t a1)
{
  v3 = *v1;
  v4 = static Hasher._hash(seed:_:)();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  while (*(*(v3 + 48) + 8 * v6) != a1)
  {
    v6 = (v6 + 1) & v7;
    if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  v12 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100E04FCC();
    v10 = v12;
  }

  v11 = *(*(v10 + 48) + 8 * v6);
  sub_1010FA774(v6);
  result = v11;
  *v1 = v12;
  return result;
}

uint64_t sub_1010F6584@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1010FBFB0(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v31 = a1;
  v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_1010FBFB0(&qword_1016984A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_100E04640();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_1010FAF94(v13, &type metadata accessor for UUID, &qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_1010F6870(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = *v1;
  Hasher.init(_seed:)();
  sub_1012C5AB0(v3);
  String.hash(into:)();

  v5 = Hasher._finalize()();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 24;
  }

  v8 = ~v6;
  while (2)
  {
    v9 = 0xE700000000000000;
    v10 = 0x6E776F6E6B6E75;
    switch(*(*(v4 + 48) + v7))
    {
      case 1:
        v10 = 0xD000000000000015;
        v9 = 0x8000000101347FF0;
        break;
      case 2:
        v10 = 0xD000000000000016;
        v9 = 0x8000000101348010;
        break;
      case 3:
        v9 = 0xE600000000000000;
        v10 = 0x657461636F6CLL;
        break;
      case 4:
        v9 = 0xEC000000676E6972;
        v10 = 0x6168537472617473;
        break;
      case 5:
        v10 = 0x72616853706F7473;
        goto LABEL_18;
      case 6:
        v12 = 2036427888;
        goto LABEL_22;
      case 7:
        v12 = 1886352499;
LABEL_22:
        v10 = v12 | 0x6E756F5300000000;
        v9 = 0xE900000000000064;
        break;
      case 8:
        v10 = 0x61654C6E69676562;
        v9 = 0xED0000676E696873;
        break;
      case 9:
        v10 = 0x687361654C646E65;
LABEL_18:
        v9 = 0xEB00000000676E69;
        break;
      case 0xA:
        v10 = 0x4654426E69676562;
        v9 = 0xEE00676E69646E69;
        break;
      case 0xB:
        v10 = 0x6E69465442646E65;
        v11 = 1735289188;
        goto LABEL_29;
      case 0xC:
        v9 = 0xEC000000676E6967;
        v10 = 0x6E61526E69676562;
        break;
      case 0xD:
        v10 = 0x69676E6152646E65;
        v9 = 0xEA0000000000676ELL;
        break;
      case 0xE:
        v10 = 0x6F4C656C62616E65;
        v9 = 0xEE0065646F4D7473;
        break;
      case 0xF:
        v10 = 0x4C656C6261736964;
        v9 = 0xEF65646F4D74736FLL;
        break;
      case 0x10:
        v9 = 0xE600000000000000;
        v10 = 0x656D616E6572;
        break;
      case 0x11:
        v10 = 0x7463656E6E6F63;
        break;
      case 0x12:
        v9 = 0xEA00000000007463;
        v10 = 0x656E6E6F63736964;
        break;
      case 0x13:
        v10 = 0xD000000000000017;
        v9 = 0x80000001013480F0;
        break;
      case 0x14:
        v9 = 0xE600000000000000;
        v10 = 0x726961706E75;
        break;
      case 0x15:
        v10 = 0x65746167656C6564;
        v9 = 0xEE00657261685364;
        break;
      case 0x16:
        v10 = 0xD000000000000013;
        v9 = 0x8000000101348120;
        break;
      case 0x17:
        v10 = 0x6F69736963657270;
        v11 = 1481004654;
LABEL_29:
        v9 = v11 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        break;
      default:
        break;
    }

    v13 = 0xE700000000000000;
    v14 = 0x6E776F6E6B6E75;
    switch(v3)
    {
      case 1:
        v13 = 0x8000000101347FF0;
        if (v10 == 0xD000000000000015)
        {
          goto LABEL_73;
        }

        goto LABEL_74;
      case 2:
        v13 = 0x8000000101348010;
        if (v10 != 0xD000000000000016)
        {
          goto LABEL_74;
        }

        goto LABEL_73;
      case 3:
        v13 = 0xE600000000000000;
        if (v10 != 0x657461636F6CLL)
        {
          goto LABEL_74;
        }

        goto LABEL_73;
      case 4:
        v13 = 0xEC000000676E6972;
        if (v10 != 0x6168537472617473)
        {
          goto LABEL_74;
        }

        goto LABEL_73;
      case 5:
        v19 = 0x72616853706F7473;
        goto LABEL_54;
      case 6:
        v20 = 2036427888;
        goto LABEL_60;
      case 7:
        v20 = 1886352499;
LABEL_60:
        v13 = 0xE900000000000064;
        if (v10 != (v20 | 0x6E756F5300000000))
        {
          goto LABEL_74;
        }

        goto LABEL_73;
      case 8:
        v13 = 0xED0000676E696873;
        if (v10 != 0x61654C6E69676562)
        {
          goto LABEL_74;
        }

        goto LABEL_73;
      case 9:
        v19 = 0x687361654C646E65;
LABEL_54:
        v13 = 0xEB00000000676E69;
        if (v10 != v19)
        {
          goto LABEL_74;
        }

        goto LABEL_73;
      case 10:
        v15 = 0x4654426E69676562;
        v16 = 0x676E69646E69;
        goto LABEL_65;
      case 11:
        v17 = 0x6E69465442646E65;
        v18 = 1735289188;
        goto LABEL_78;
      case 12:
        v13 = 0xEC000000676E6967;
        if (v10 != 0x6E61526E69676562)
        {
          goto LABEL_74;
        }

        goto LABEL_73;
      case 13:
        v13 = 0xEA0000000000676ELL;
        if (v10 != 0x69676E6152646E65)
        {
          goto LABEL_74;
        }

        goto LABEL_73;
      case 14:
        v15 = 0x6F4C656C62616E65;
        v16 = 0x65646F4D7473;
        goto LABEL_65;
      case 15:
        v13 = 0xEF65646F4D74736FLL;
        if (v10 != 0x4C656C6261736964)
        {
          goto LABEL_74;
        }

        goto LABEL_73;
      case 16:
        v13 = 0xE600000000000000;
        if (v10 != 0x656D616E6572)
        {
          goto LABEL_74;
        }

        goto LABEL_73;
      case 17:
        if (v10 != 0x7463656E6E6F63)
        {
          goto LABEL_74;
        }

        goto LABEL_73;
      case 18:
        v13 = 0xEA00000000007463;
        if (v10 != 0x656E6E6F63736964)
        {
          goto LABEL_74;
        }

        goto LABEL_73;
      case 19:
        v14 = 0xD000000000000017;
        v13 = 0x80000001013480F0;
        goto LABEL_72;
      case 20:
        v13 = 0xE600000000000000;
        if (v10 != 0x726961706E75)
        {
          goto LABEL_74;
        }

        goto LABEL_73;
      case 21:
        v15 = 0x65746167656C6564;
        v16 = 0x657261685364;
LABEL_65:
        v13 = v16 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
        if (v10 != v15)
        {
          goto LABEL_74;
        }

        goto LABEL_73;
      case 22:
        v13 = 0x8000000101348120;
        if (v10 != 0xD000000000000013)
        {
          goto LABEL_74;
        }

        goto LABEL_73;
      case 23:
        v17 = 0x6F69736963657270;
        v18 = 1481004654;
LABEL_78:
        v13 = v18 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        if (v10 != v17)
        {
          goto LABEL_74;
        }

        goto LABEL_73;
      default:
LABEL_72:
        if (v10 != v14)
        {
          goto LABEL_74;
        }

LABEL_73:
        if (v9 != v13)
        {
LABEL_74:
          v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v21)
          {
            goto LABEL_82;
          }

          v7 = (v7 + 1) & v8;
          if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
          {
            return 24;
          }

          continue;
        }

LABEL_82:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v24 = *v2;
        v26 = *v2;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100E0501C();
          v24 = v26;
        }

        v22 = *(*(v24 + 48) + v7);
        sub_1010FA8F8(v7);
        *v2 = v26;
        return v22;
    }
  }
}

uint64_t sub_1010F701C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for MACAddress();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1010FBFB0(&unk_1016BC080, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
  v31 = a1;
  v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_1010FBFB0(&unk_1016C7F60, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_100E051A8();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_1010FAF94(v13, &type metadata accessor for MACAddress, &unk_1016BC080, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_1010F7308(uint64_t a1)
{
  v2 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v2 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v2 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = __CocoaSet.contains(_:)();

    if (v5)
    {
      v6 = sub_1010F9054(v4, a1);

      return v6;
    }

    return 0;
  }

  sub_1000BC4D4(&unk_1016BC100, &unk_1013F6310);
  sub_1000041A4(&unk_1016BC520, &unk_1016BC100, &unk_1013F6310, &protocol conformance descriptor for XPCSession<A>);
  v8 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v9 = -1 << *(v2 + 32);
  v10 = v8 & ~v9;
  if (((*(v2 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
    return 0;
  }

  v11 = ~v9;
  sub_1000041A4(&qword_1016BC110, &unk_1016BC100, &unk_1013F6310, &protocol conformance descriptor for XPCSession<A>);
  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    v10 = (v10 + 1) & v11;
    if (((*(v2 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v1;
  v15 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100E05488();
    v13 = v15;
  }

  v14 = *(*(v13 + 48) + 8 * v10);
  sub_1010FA3B4(v10, &unk_1016BC520, &unk_1016BC100, &unk_1013F6310);
  result = v14;
  *v1 = v15;
  return result;
}

uint64_t sub_1010F7524(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  String.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = v8 + 56;
  v11 = -1 << *(v8 + 32);
  v12 = v9 & ~v11;
  if (((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    return 0;
  }

  v13 = ~v11;
  v14 = *(v8 + 48);
  while (1)
  {
    v15 = (v14 + 24 * v12);
    if (*v15 == a1)
    {
      v16 = *(v15 + 1) == a2 && *(v15 + 2) == a3;
      if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }
    }

    v12 = (v12 + 1) & v13;
    if (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v4;
  v21 = *v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100E04E64();
    v18 = v21;
  }

  v19 = *(*(v18 + 48) + 24 * v12);
  sub_1010FAD8C(v12);
  result = v19;
  *v4 = v21;
  return result;
}

uint64_t sub_1010F76A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for CorrelationIdentifier();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1010FBFB0(&unk_1016C7F30, &type metadata accessor for CorrelationIdentifier, &protocol conformance descriptor for CorrelationIdentifier);
  v31 = a1;
  v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_1010FBFB0(&qword_1016A5A48, &type metadata accessor for CorrelationIdentifier, &protocol conformance descriptor for CorrelationIdentifier);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_100E05628();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_1010FAF94(v13, &type metadata accessor for CorrelationIdentifier, &unk_1016C7F30, &type metadata accessor for CorrelationIdentifier, &protocol conformance descriptor for CorrelationIdentifier);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_1010F798C(uint64_t a1)
{
  v2 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v2 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v2 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = __CocoaSet.contains(_:)();

    if (v5)
    {
      v6 = sub_1010F9240(v4, a1);

      return v6;
    }

    return 0;
  }

  type metadata accessor for AnyCancellable();
  sub_1010FBFB0(&qword_1016BC180, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
  v8 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v9 = -1 << *(v2 + 32);
  v10 = v8 & ~v9;
  if (((*(v2 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
    return 0;
  }

  v11 = ~v9;
  sub_1010FBFB0(&qword_1016BC188, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    v10 = (v10 + 1) & v11;
    if (((*(v2 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v1;
  v15 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100E05888();
    v13 = v15;
  }

  v14 = *(*(v13 + 48) + 8 * v10);
  sub_1010FB290(v10);
  result = v14;
  *v1 = v15;
  return result;
}

uint64_t sub_1010F7BA4(uint64_t a1, void (*a2)(void))
{
  v4 = v2;
  v5 = *v2;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
    if (v10 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v12 == v13)
    {
      break;
    }

    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v15)
    {
      goto LABEL_11;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

LABEL_11:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v4;
  v20 = *v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a2();
    v18 = v20;
  }

  v16 = *(*(v18 + 48) + 8 * v8);
  sub_1010FB47C(v8);
  *v4 = v20;
  return v16;
}

uint64_t sub_1010F7D3C(uint64_t a1)
{
  v2 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v2 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v2 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = __CocoaSet.contains(_:)();

    if (v5)
    {
      v6 = sub_1010F941C(v4, a1);

      return v6;
    }

    return 0;
  }

  sub_1000BC4D4(&unk_1016BC0D0, qword_1013EA6A0);
  sub_1000041A4(&qword_1016BC500, &unk_1016BC0D0, qword_1013EA6A0, &protocol conformance descriptor for XPCSession<A>);
  v8 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v9 = -1 << *(v2 + 32);
  v10 = v8 & ~v9;
  if (((*(v2 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
    return 0;
  }

  v11 = ~v9;
  sub_1000041A4(&qword_1016BC0E0, &unk_1016BC0D0, qword_1013EA6A0, &protocol conformance descriptor for XPCSession<A>);
  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    v10 = (v10 + 1) & v11;
    if (((*(v2 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v1;
  v15 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100E059F0();
    v13 = v15;
  }

  v14 = *(*(v13 + 48) + 8 * v10);
  sub_1010FA3B4(v10, &qword_1016BC500, &unk_1016BC0D0, qword_1013EA6A0);
  result = v14;
  *v1 = v15;
  return result;
}

uint64_t sub_1010F7F58@<X0>(uint64_t a2@<X8>)
{
  v21 = a2;
  v3 = type metadata accessor for BeaconIdentifier(0);
  v22 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v6 = *v2;
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_1010FBFB0(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v23 = v3;
  dispatch thunk of Hashable.hash(into:)();
  v7 = Hasher._finalize()();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return (*(v22 + 56))(v21, 1, 1, v23);
  }

  v10 = ~v8;
  v11 = *(v22 + 72);
  while (1)
  {
    sub_1010FC79C(*(v6 + 48) + v11 * v9, v5, type metadata accessor for BeaconIdentifier);
    if (static UUID.== infix(_:_:)())
    {
      break;
    }

    sub_1010FC804(v5, type metadata accessor for BeaconIdentifier);
LABEL_4:
    v9 = (v9 + 1) & v10;
    if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return (*(v22 + 56))(v21, 1, 1, v23);
    }
  }

  v12 = static UUID.== infix(_:_:)();
  sub_1010FC804(v5, type metadata accessor for BeaconIdentifier);
  if ((v12 & 1) == 0)
  {
    goto LABEL_4;
  }

  v13 = v20;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v13;
  v24 = *v13;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100E05B34();
    v15 = v24;
  }

  v16 = *(v15 + 48) + v11 * v9;
  v17 = v21;
  sub_1010FC734(v16, v21, type metadata accessor for BeaconIdentifier);
  sub_1010FB65C(v9);
  *v13 = v24;
  return (*(v22 + 56))(v17, 0, 1, v23);
}

uint64_t sub_1010F8224(uint64_t a1)
{
  v2 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v2 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v2 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = __CocoaSet.contains(_:)();

    if (v5)
    {
      v6 = sub_1010F9608(v4, a1);

      return v6;
    }

    return 0;
  }

  sub_1000BC4D4(&qword_1016B2F60, &qword_1013D3ED0);
  sub_1000041A4(&qword_1016BC4E0, &qword_1016B2F60, &qword_1013D3ED0, &protocol conformance descriptor for XPCSession<A>);
  v8 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v9 = -1 << *(v2 + 32);
  v10 = v8 & ~v9;
  if (((*(v2 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
    return 0;
  }

  v11 = ~v9;
  sub_1000041A4(&qword_1016BC070, &qword_1016B2F60, &qword_1013D3ED0, &protocol conformance descriptor for XPCSession<A>);
  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    v10 = (v10 + 1) & v11;
    if (((*(v2 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v1;
  v15 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100E06074();
    v13 = v15;
  }

  v14 = *(*(v13 + 48) + 8 * v10);
  sub_1010FA3B4(v10, &qword_1016BC4E0, &qword_1016B2F60, &qword_1013D3ED0);
  result = v14;
  *v1 = v15;
  return result;
}

uint64_t sub_1010F8440(uint64_t a1)
{
  v2 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v2 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v2 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = __CocoaSet.contains(_:)();

    if (v5)
    {
      v6 = sub_1010F97F4(v4, a1);

      return v6;
    }

    return 0;
  }

  sub_1000BC4D4(&unk_1016A6020, &unk_101393420);
  sub_1000041A4(&qword_10169A0B0, &unk_1016A6020, &unk_101393420, &protocol conformance descriptor for XPCSession<A>);
  v8 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v9 = -1 << *(v2 + 32);
  v10 = v8 & ~v9;
  if (((*(v2 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
    return 0;
  }

  v11 = ~v9;
  sub_1000041A4(&unk_1016C7C80, &unk_1016A6020, &unk_101393420, &protocol conformance descriptor for XPCSession<A>);
  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    v10 = (v10 + 1) & v11;
    if (((*(v2 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v1;
  v15 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100E06210();
    v13 = v15;
  }

  v14 = *(*(v13 + 48) + 8 * v10);
  sub_1010FA3B4(v10, &qword_10169A0B0, &unk_1016A6020, &unk_101393420);
  result = v14;
  *v1 = v15;
  return result;
}

uint64_t sub_1010F865C(uint64_t a1)
{
  v2 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v2 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v2 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = __CocoaSet.contains(_:)();

    if (v5)
    {
      v6 = sub_1010F99E0(v4, a1);

      return v6;
    }

    return 0;
  }

  sub_1000BC4D4(&unk_1016C2180, &unk_1013EA680);
  sub_1000041A4(&unk_1016BBFD0, &unk_1016C2180, &unk_1013EA680, &protocol conformance descriptor for XPCSession<A>);
  v8 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v9 = -1 << *(v2 + 32);
  v10 = v8 & ~v9;
  if (((*(v2 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
    return 0;
  }

  v11 = ~v9;
  sub_1000041A4(&unk_1016C9050, &unk_1016C2180, &unk_1013EA680, &protocol conformance descriptor for XPCSession<A>);
  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    v10 = (v10 + 1) & v11;
    if (((*(v2 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v1;
  v15 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100E063C0();
    v13 = v15;
  }

  v14 = *(*(v13 + 48) + 8 * v10);
  sub_1010FA3B4(v10, &unk_1016BBFD0, &unk_1016C2180, &unk_1013EA680);
  result = v14;
  *v1 = v15;
  return result;
}

uint64_t sub_1010F88B4(void *a1, unint64_t *a2, void *a3, void (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *v5;
  if ((*v5 & 0xC000000000000001) != 0)
  {
    if (v7 < 0)
    {
      v11 = *v5;
    }

    else
    {
      v11 = v7 & 0xFFFFFFFFFFFFFF8;
    }

    v12 = a1;
    v13 = __CocoaSet.contains(_:)();

    if (v13)
    {
      v14 = sub_1010F9BCC(v11, v12, a5, a2, a3);

      return v14;
    }

    return 0;
  }

  v17 = v5;
  sub_100008BB8(0, a2, a3);
  v18 = NSObject._rawHashValue(seed:)(*(v7 + 40));
  v19 = -1 << *(v7 + 32);
  v20 = v18 & ~v19;
  if (((*(v7 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
  {
    return 0;
  }

  v21 = ~v19;
  while (1)
  {
    v22 = *(*(v7 + 48) + 8 * v20);
    v23 = static NSObject.== infix(_:_:)();

    if (v23)
    {
      break;
    }

    v20 = (v20 + 1) & v21;
    if (((*(v7 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v17;
  v27 = *v17;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a4();
    v25 = v27;
  }

  v26 = *(*(v25 + 48) + 8 * v20);
  sub_1010FB9A0(v20);
  result = v26;
  *v17 = v27;
  return result;
}

uint64_t sub_1010F8A5C(uint64_t a1)
{
  v2 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v2 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v2 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = __CocoaSet.contains(_:)();

    if (v5)
    {
      v6 = sub_1010F9D3C(v4, a1);

      return v6;
    }

    return 0;
  }

  sub_1000BC4D4(&qword_1016BBE10, &qword_1013E9D98);
  sub_1000041A4(&qword_1016BBE18, &qword_1016BBE10, &qword_1013E9D98, &protocol conformance descriptor for XPCSession<A>);
  v8 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v9 = -1 << *(v2 + 32);
  v10 = v8 & ~v9;
  if (((*(v2 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
    return 0;
  }

  v11 = ~v9;
  sub_1000041A4(&unk_1016C7C60, &qword_1016BBE10, &qword_1013E9D98, &protocol conformance descriptor for XPCSession<A>);
  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    v10 = (v10 + 1) & v11;
    if (((*(v2 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v1;
  v15 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100E063E8();
    v13 = v15;
  }

  v14 = *(*(v13 + 48) + 8 * v10);
  sub_1010FA3B4(v10, &qword_1016BBE18, &qword_1016BBE10, &qword_1013E9D98);
  result = v14;
  *v1 = v15;
  return result;
}

uint64_t sub_1010F8C78(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  v4 = __CocoaSet.count.getter();
  v5 = swift_unknownObjectRetain();
  v6 = sub_1010F1494(v5, v4);
  v13 = v6;

  sub_1000BC4D4(&unk_1016BC120, &unk_1013EA6D0);
  sub_1000041A4(&qword_1016BC540, &unk_1016BC120, &unk_1013EA6D0, &protocol conformance descriptor for XPCSession<A>);
  v7 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    sub_1000041A4(&qword_1016BC130, &unk_1016BC120, &unk_1013EA6D0, &protocol conformance descriptor for XPCSession<A>);
    while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v11 = *(*(v6 + 48) + 8 * v9);
  sub_1010FA3B4(v9, &qword_1016BC540, &unk_1016BC120, &unk_1013EA6D0);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    *v3 = v13;
    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1010F8E68(uint64_t a1, uint64_t a2)
{

  v3 = __CocoaSet.count.getter();
  v4 = swift_unknownObjectRetain();
  v5 = sub_1010F18BC(v4, v3);
  v12 = v5;

  sub_1000BC4D4(&unk_1016C2240, &qword_1013F6350);
  sub_1000041A4(&unk_101698BE0, &unk_1016C2240, &qword_1013F6350, &protocol conformance descriptor for XPCSession<A>);
  v6 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    sub_1000041A4(&qword_1016C7FA0, &unk_1016C2240, &qword_1013F6350, &protocol conformance descriptor for XPCSession<A>);
    while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v10 = *(*(v5 + 48) + 8 * v8);
  sub_1010FA3B4(v8, &unk_101698BE0, &unk_1016C2240, &qword_1013F6350);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    *v2 = v12;
    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1010F9054(uint64_t a1, uint64_t a2)
{

  v3 = __CocoaSet.count.getter();
  v4 = swift_unknownObjectRetain();
  v5 = sub_1010F20C4(v4, v3);
  v12 = v5;

  sub_1000BC4D4(&unk_1016BC100, &unk_1013F6310);
  sub_1000041A4(&unk_1016BC520, &unk_1016BC100, &unk_1013F6310, &protocol conformance descriptor for XPCSession<A>);
  v6 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    sub_1000041A4(&qword_1016BC110, &unk_1016BC100, &unk_1013F6310, &protocol conformance descriptor for XPCSession<A>);
    while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v10 = *(*(v5 + 48) + 8 * v8);
  sub_1010FA3B4(v8, &unk_1016BC520, &unk_1016BC100, &unk_1013F6310);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    *v2 = v12;
    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1010F9240(uint64_t a1, uint64_t a2)
{

  v3 = __CocoaSet.count.getter();
  v4 = swift_unknownObjectRetain();
  v5 = sub_1010F24EC(v4, v3);
  v12 = v5;
  type metadata accessor for AnyCancellable();
  sub_1010FBFB0(&qword_1016BC180, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);

  v6 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    sub_1010FBFB0(&qword_1016BC188, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
    while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v10 = *(*(v5 + 48) + 8 * v8);
  sub_1010FB290(v8);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    *v2 = v12;
    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1010F941C(uint64_t a1, uint64_t a2)
{

  v3 = __CocoaSet.count.getter();
  v4 = swift_unknownObjectRetain();
  v5 = sub_1010F2B00(v4, v3);
  v12 = v5;

  sub_1000BC4D4(&unk_1016BC0D0, qword_1013EA6A0);
  sub_1000041A4(&qword_1016BC500, &unk_1016BC0D0, qword_1013EA6A0, &protocol conformance descriptor for XPCSession<A>);
  v6 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    sub_1000041A4(&qword_1016BC0E0, &unk_1016BC0D0, qword_1013EA6A0, &protocol conformance descriptor for XPCSession<A>);
    while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v10 = *(*(v5 + 48) + 8 * v8);
  sub_1010FA3B4(v8, &qword_1016BC500, &unk_1016BC0D0, qword_1013EA6A0);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    *v2 = v12;
    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1010F9608(uint64_t a1, uint64_t a2)
{

  v3 = __CocoaSet.count.getter();
  v4 = swift_unknownObjectRetain();
  v5 = sub_1010F3530(v4, v3);
  v12 = v5;

  sub_1000BC4D4(&qword_1016B2F60, &qword_1013D3ED0);
  sub_1000041A4(&qword_1016BC4E0, &qword_1016B2F60, &qword_1013D3ED0, &protocol conformance descriptor for XPCSession<A>);
  v6 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    sub_1000041A4(&qword_1016BC070, &qword_1016B2F60, &qword_1013D3ED0, &protocol conformance descriptor for XPCSession<A>);
    while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v10 = *(*(v5 + 48) + 8 * v8);
  sub_1010FA3B4(v8, &qword_1016BC4E0, &qword_1016B2F60, &qword_1013D3ED0);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    *v2 = v12;
    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1010F97F4(uint64_t a1, uint64_t a2)
{

  v3 = __CocoaSet.count.getter();
  v4 = swift_unknownObjectRetain();
  v5 = sub_1010F3768(v4, v3);
  v12 = v5;

  sub_1000BC4D4(&unk_1016A6020, &unk_101393420);
  sub_1000041A4(&qword_10169A0B0, &unk_1016A6020, &unk_101393420, &protocol conformance descriptor for XPCSession<A>);
  v6 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    sub_1000041A4(&unk_1016C7C80, &unk_1016A6020, &unk_101393420, &protocol conformance descriptor for XPCSession<A>);
    while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v10 = *(*(v5 + 48) + 8 * v8);
  sub_1010FA3B4(v8, &qword_10169A0B0, &unk_1016A6020, &unk_101393420);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    *v2 = v12;
    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1010F99E0(uint64_t a1, uint64_t a2)
{

  v3 = __CocoaSet.count.getter();
  v4 = swift_unknownObjectRetain();
  v5 = sub_1010F39A0(v4, v3);
  v12 = v5;

  sub_1000BC4D4(&unk_1016C2180, &unk_1013EA680);
  sub_1000041A4(&unk_1016BBFD0, &unk_1016C2180, &unk_1013EA680, &protocol conformance descriptor for XPCSession<A>);
  v6 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    sub_1000041A4(&unk_1016C9050, &unk_1016C2180, &unk_1013EA680, &protocol conformance descriptor for XPCSession<A>);
    while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v10 = *(*(v5 + 48) + 8 * v8);
  sub_1010FA3B4(v8, &unk_1016BBFD0, &unk_1016C2180, &unk_1013EA680);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    *v2 = v12;
    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1010F9BCC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), unint64_t *a4, void *a5)
{
  v9 = v5;

  v10 = __CocoaSet.count.getter();
  v11 = swift_unknownObjectRetain();
  v12 = a3(v11, v10);
  v22 = v12;
  v13 = *(v12 + 40);

  v14 = NSObject._rawHashValue(seed:)(v13);
  v15 = -1 << *(v12 + 32);
  v16 = v14 & ~v15;
  if ((*(v12 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v17 = ~v15;
    sub_100008BB8(0, a4, a5);
    while (1)
    {
      v18 = *(*(v12 + 48) + 8 * v16);
      v19 = static NSObject.== infix(_:_:)();

      if (v19)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v12 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v20 = *(*(v12 + 48) + 8 * v16);
  sub_1010FB9A0(v16);
  result = static NSObject.== infix(_:_:)();
  if (result)
  {
    *v9 = v22;
    return v20;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1010F9D3C(uint64_t a1, uint64_t a2)
{

  v3 = __CocoaSet.count.getter();
  v4 = swift_unknownObjectRetain();
  v5 = sub_1010F3DC8(v4, v3);
  v12 = v5;

  sub_1000BC4D4(&qword_1016BBE10, &qword_1013E9D98);
  sub_1000041A4(&qword_1016BBE18, &qword_1016BBE10, &qword_1013E9D98, &protocol conformance descriptor for XPCSession<A>);
  v6 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    sub_1000041A4(&unk_1016C7C60, &qword_1016BBE10, &qword_1013E9D98, &protocol conformance descriptor for XPCSession<A>);
    while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v10 = *(*(v5 + 48) + 8 * v8);
  sub_1010FA3B4(v8, &qword_1016BBE18, &qword_1016BBE10, &qword_1013E9D98);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    *v2 = v12;
    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1010F9F28(int64_t a1)
{
  v22 = type metadata accessor for SharedBeaconRecord(0);
  v3 = *(v22 - 8);
  result = __chkstk_darwin(v22);
  v6 = &v23[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *v1 + 56;
  v9 = -1 << *(*v1 + 32);
  v10 = (a1 + 1) & ~v9;
  if (((1 << v10) & *(v8 + 8 * (v10 >> 6))) != 0)
  {
    v11 = ~v9;

    v12 = _HashTable.previousHole(before:)();
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) != 0)
    {
      v13 = (v12 + 1) & v11;
      v14 = *(v3 + 72);
      while (1)
      {
        v15 = v14 * v10;
        sub_1010FC79C(*(v7 + 48) + v14 * v10, v6, type metadata accessor for SharedBeaconRecord);
        Hasher.init(_seed:)();
        sub_1011D8230(v23);
        v16 = Hasher._finalize()();
        sub_1010FC804(v6, type metadata accessor for SharedBeaconRecord);
        v17 = v16 & v11;
        if (a1 >= v13)
        {
          break;
        }

        if (v17 < v13)
        {
          goto LABEL_11;
        }

LABEL_12:
        v18 = v14 * a1;
        if (v14 * a1 < v15 || *(v7 + 48) + v14 * a1 >= (*(v7 + 48) + v15 + v14))
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          a1 = v10;
          if (v18 == v15)
          {
            goto LABEL_6;
          }

          swift_arrayInitWithTakeBackToFront();
        }

        a1 = v10;
LABEL_6:
        v10 = (v10 + 1) & v11;
        if (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      if (v17 < v13)
      {
        goto LABEL_6;
      }

LABEL_11:
      if (a1 < v17)
      {
        goto LABEL_6;
      }

      goto LABEL_12;
    }

LABEL_16:

    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v19 = *(v7 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v21;
    ++*(v7 + 36);
  }

  return result;
}

unint64_t sub_1010FA1B8(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v11 = 24 * v6;
        v12 = *(*(v3 + 48) + 24 * v6 + 16);
        Hasher.init(_seed:)();

        String.hash(into:)();
        Hasher._combine(_:)(v12);
        v13 = Hasher._finalize()();

        v14 = v13 & v7;
        if (v2 >= v9)
        {
          if (v14 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v14 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v14)
        {
LABEL_11:
          v15 = *(v3 + 48);
          v16 = v15 + 24 * v2;
          v17 = (v15 + v11);
          if (24 * v2 < v11 || v16 >= v17 + 24 || v2 != v6)
          {
            v10 = *v17;
            *(v16 + 16) = *(v17 + 2);
            *v16 = v10;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1010FA3B4(unint64_t result, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v5 = result;
  v6 = *v4;
  v7 = *v4 + 56;
  v8 = -1 << *(*v4 + 32);
  v9 = (result + 1) & ~v8;
  if (((1 << v9) & *(v7 + 8 * (v9 >> 6))) != 0)
  {
    v12 = ~v8;

    v13 = _HashTable.previousHole(before:)();
    if ((*(v7 + 8 * (v9 >> 6)) & (1 << v9)) != 0)
    {
      v14 = (v13 + 1) & v12;
      sub_1000041A4(a2, a3, a4, &protocol conformance descriptor for XPCSession<A>);
      do
      {
        sub_1000BC4D4(a3, a4);
        v15 = dispatch thunk of Hashable._rawHashValue(seed:)() & v12;
        if (v5 >= v14)
        {
          if (v15 >= v14 && v5 >= v15)
          {
LABEL_16:
            v18 = *(v6 + 48);
            v19 = (v18 + 8 * v5);
            v20 = (v18 + 8 * v9);
            if (v5 != v9 || v19 >= v20 + 1)
            {
              *v19 = *v20;
              v5 = v9;
            }
          }
        }

        else if (v15 >= v14 || v5 >= v15)
        {
          goto LABEL_16;
        }

        v9 = (v9 + 1) & v12;
      }

      while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
    }

    *(v7 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v5) - 1;
  }

  else
  {
    *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v21 = *(v6 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v23;
    ++*(v6 + 36);
  }

  return result;
}

unint64_t sub_1010FA5A0(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = (*(v3 + 48) + 16 * v6);
        v11 = *v10;
        v12 = v10[1];
        Hasher.init(_seed:)();
        sub_100017D5C(v11, v12);
        Data.hash(into:)();
        v13 = Hasher._finalize()();
        sub_100016590(v11, v12);
        v14 = v13 & v7;
        if (v2 >= v9)
        {
          if (v14 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v14 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v14)
        {
LABEL_11:
          v15 = *(v3 + 48);
          v16 = (v15 + 16 * v2);
          v17 = (v15 + 16 * v6);
          if (v2 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1010FA774(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(v3 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 48);
        v11 = (v10 + 8 * v6);
        v12 = static Hasher._hash(seed:_:)() & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = (v10 + 8 * v2);
            if (v2 != v6 || v15 >= v11 + 1)
            {
              *v15 = *v11;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v16 = *(v3 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v18;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1010FA8F8(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        Hasher.init(_seed:)();
        String.hash(into:)();

        v10 = Hasher._finalize()() & v7;
        if (v2 >= v9)
        {
          if (v10 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v10 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v10)
        {
LABEL_11:
          v11 = *(v3 + 48);
          v12 = (v11 + v2);
          v13 = (v11 + v6);
          if (v2 != v6 || v12 >= v13 + 1)
          {
            *v12 = *v13;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v14 = *(v3 + 16);
  v15 = __OFSUB__(v14, 1);
  v16 = v14 - 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v16;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1010FAD8C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v11 = v4;
        v12 = *(*(v3 + 48) + 24 * v6);
        Hasher.init(_seed:)();
        Hasher._combine(_:)(v12);

        String.hash(into:)();
        v13 = Hasher._finalize()();

        v14 = v13 & v7;
        if (v2 >= v9)
        {
          if (v14 < v9)
          {
            v4 = v11;
          }

          else
          {
            v4 = v11;
            if (v2 >= v14)
            {
              goto LABEL_12;
            }
          }
        }

        else
        {
          v4 = v11;
          if (v14 >= v9 || v2 >= v14)
          {
LABEL_12:
            v15 = *(v3 + 48);
            v16 = v15 + 24 * v2;
            v17 = (v15 + 24 * v6);
            if (v2 != v6 || v16 >= v17 + 24)
            {
              v10 = *v17;
              *(v16 + 16) = *(v17 + 2);
              *v16 = v10;
              v2 = v6;
            }
          }
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_1010FAF94(int64_t a1, uint64_t (*a2)(void), unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v42 = a4;
  v43 = a5;
  v41 = a3;
  v7 = a2(0);
  v8 = *(v7 - 8);
  result = __chkstk_darwin(v7);
  v11 = &v37 - v10;
  v12 = *v5;
  v13 = *v5 + 56;
  v14 = -1 << *(*v5 + 32);
  v15 = (a1 + 1) & ~v14;
  if (((1 << v15) & *(v13 + 8 * (v15 >> 6))) != 0)
  {
    v16 = ~v14;

    v17 = _HashTable.previousHole(before:)();
    if ((*(v13 + 8 * (v15 >> 6)) & (1 << v15)) != 0)
    {
      v39 = (v17 + 1) & v16;
      v38 = *(v8 + 16);
      v44 = *(v8 + 72);
      v40 = v8 + 16;
      v18 = (v8 + 8);
      v19 = v12;
      v20 = v16;
      while (1)
      {
        v21 = v13;
        v22 = v44 * v15;
        v23 = v20;
        v38(v11, *(v19 + 48) + v44 * v15, v7);
        v24 = v19;
        sub_1010FBFB0(v41, v42, v43);
        v25 = dispatch thunk of Hashable._rawHashValue(seed:)();
        (*v18)(v11, v7);
        v20 = v23;
        v26 = v25 & v23;
        if (a1 >= v39)
        {
          if (v26 < v39 || a1 < v26)
          {
LABEL_4:
            v19 = v24;
            goto LABEL_5;
          }
        }

        else if (v26 < v39 && a1 < v26)
        {
          goto LABEL_4;
        }

        v19 = v24;
        v29 = *(v24 + 48);
        v30 = v44 * a1;
        v31 = v29 + v44 * a1;
        v32 = v29 + v22 + v44;
        if (v44 * a1 < v22 || v31 >= v32)
        {
          swift_arrayInitWithTakeFrontToBack();
LABEL_24:
          v20 = v23;
          a1 = v15;
          goto LABEL_5;
        }

        a1 = v15;
        if (v30 != v22)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_24;
        }

LABEL_5:
        v15 = (v15 + 1) & v20;
        v13 = v21;
        if (((*(v21 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
        {

          goto LABEL_28;
        }
      }
    }

    v19 = v12;
LABEL_28:
    *(v13 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v13 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
    v19 = v12;
  }

  v34 = *(v19 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v19 + 16) = v36;
    ++*(v19 + 36);
  }

  return result;
}

unint64_t sub_1010FB290(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      type metadata accessor for AnyCancellable();
      sub_1010FBFB0(&qword_1016BC180, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
      do
      {
        v10 = dispatch thunk of Hashable._rawHashValue(seed:)() & v7;
        if (v2 >= v9)
        {
          if (v10 >= v9 && v2 >= v10)
          {
LABEL_16:
            v13 = *(v3 + 48);
            v14 = (v13 + 8 * v2);
            v15 = (v13 + 8 * v6);
            if (v2 != v6 || v14 >= v15 + 1)
            {
              *v14 = *v15;
              v2 = v6;
            }
          }
        }

        else if (v10 >= v9 || v2 >= v10)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v16 = *(v3 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v18;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1010FB47C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        Hasher.init(_seed:)();
        v11 = v10;
        String.hash(into:)();
        v12 = Hasher._finalize()();

        v13 = v12 & v7;
        if (v2 >= v9)
        {
          if (v13 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v13 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v13)
        {
LABEL_11:
          v14 = *(v3 + 48);
          v15 = (v14 + 8 * v2);
          v16 = (v14 + 8 * v6);
          if (v2 != v6 || v15 >= v16 + 1)
          {
            *v15 = *v16;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v17 = *(v3 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v19;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_1010FB65C(unint64_t a1)
{
  v29 = type metadata accessor for BeaconIdentifier(0);
  v3 = *(v29 - 8);
  result = __chkstk_darwin(v29);
  v28 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  v7 = *v1 + 56;
  v8 = -1 << *(*v1 + 32);
  v9 = (a1 + 1) & ~v8;
  if (((1 << v9) & *(v7 + 8 * (v9 >> 6))) != 0)
  {
    v10 = ~v8;

    v11 = a1;
    v12 = _HashTable.previousHole(before:)();
    if ((*(v7 + 8 * (v9 >> 6)) & (1 << v9)) != 0)
    {
      v13 = (v12 + 1) & v10;
      v14 = *(v3 + 72);
      v26 = v14;
      v27 = v7;
      v15 = v28;
      do
      {
        v16 = v14 * v9;
        sub_1010FC79C(*(v6 + 48) + v14 * v9, v15, type metadata accessor for BeaconIdentifier);
        v17 = v6;
        Hasher.init(_seed:)();
        type metadata accessor for UUID();
        sub_1010FBFB0(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v18 = v13;
        dispatch thunk of Hashable.hash(into:)();
        dispatch thunk of Hashable.hash(into:)();
        v19 = Hasher._finalize()();
        sub_1010FC804(v15, type metadata accessor for BeaconIdentifier);
        v20 = v19 & v10;
        v13 = v18;
        if (v11 >= v18)
        {
          if (v20 < v18)
          {
            v6 = v17;
            v14 = v26;
            goto LABEL_5;
          }

          v6 = v17;
          v14 = v26;
          if (v11 < v20)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v6 = v17;
          v14 = v26;
          if (v20 < v13 && v11 < v20)
          {
            goto LABEL_5;
          }
        }

        v21 = v14 * v11;
        if (v14 * v11 < v16 || *(v6 + 48) + v14 * v11 >= (*(v6 + 48) + v16 + v14))
        {
          swift_arrayInitWithTakeFrontToBack();
          goto LABEL_17;
        }

        v11 = v9;
        if (v21 != v16)
        {
          swift_arrayInitWithTakeBackToFront();
LABEL_17:
          v11 = v9;
        }

LABEL_5:
        v9 = (v9 + 1) & v10;
        v7 = v27;
      }

      while (((*(v27 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
    }

    *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v11) - 1;
  }

  else
  {
    *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v22 = *(v6 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v24;
    ++*(v6 + 36);
  }

  return result;
}

unint64_t sub_1010FB9A0(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 40);
        v11 = *(*(v3 + 48) + 8 * v6);
        v12 = NSObject._rawHashValue(seed:)(v10);

        v13 = v12 & v7;
        if (v2 >= v9)
        {
          if (v13 >= v9 && v2 >= v13)
          {
LABEL_16:
            v16 = *(v3 + 48);
            v17 = (v16 + 8 * v2);
            v18 = (v16 + 8 * v6);
            if (v2 != v6 || v17 >= v18 + 1)
            {
              *v17 = *v18;
              v2 = v6;
            }
          }
        }

        else if (v13 >= v9 || v2 >= v13)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v19 = *(v3 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v21;
    ++*(v3 + 36);
  }

  return result;
}

void *sub_1010FBB40(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v29 = a3;
  v30 = a4;
  v31 = a2;
  v28 = a1;
  v23 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v23);
  v6 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v6 - 8);
  v27 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v7 = *(v27 - 8);
  __chkstk_darwin(v27);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  v24 = "yd23UnknownDiscoverySession";
  v26 = enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:);
  v25 = *(v7 + 104);
  v25(v9);
  static DispatchQoS.unspecified.getter();
  v32 = _swiftEmptyArrayStorage;
  v22[1] = sub_1010FBFB0(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  v22[0] = sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_1000041A4(&qword_10169BB70, &unk_101695580, &qword_101385D90, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v4[2] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  (v25)(v9, v26, v27);
  static DispatchQoS.unspecified.getter();
  v32 = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v4[3] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v4[5] = &_swiftEmptySetSingleton;
  v4[6] = _swiftEmptyDictionarySingleton;
  v4[7] = 0;
  v4[8] = &_swiftEmptySetSingleton;
  v10 = objc_allocWithZone(type metadata accessor for CurrentLocationMonitor());
  v4[12] = CurrentLocationMonitor.init(mode:desiredAccuracy:)(0, *&kCLLocationAccuracyHundredMeters, 0);
  if (qword_101694708 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_1000076D4(v11, qword_10177AD20);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "UnknownDiscoverySession.init()", v14, 2u);
  }

  v15 = v29;
  v5[4] = v28;
  v17 = v30;
  v16 = v31;
  v5[10] = v15;
  v5[11] = v17;
  v5[9] = v16;
  v18 = v5[12];
  swift_unownedRetain();
  v19 = v15;

  v20 = v18;
  CurrentLocationMonitor.requestLocation()();

  return v5;
}

uint64_t sub_1010FBFB0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1010FC00C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WildModeAssociationRecord(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1010FC070(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WildModeAssociationRecord(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1010FC0D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016A62A0, &unk_101396E10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1010FC144(unsigned __int8 *a1, uint64_t a2)
{
  v5 = *(type metadata accessor for DiscoveredObject(0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(sub_1000BC4D4(&qword_1016A62A0, &unk_101396E10) - 8);
  v9 = *(v2 + 16);
  v10 = v2 + ((v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_1010E844C(a1, a2, v9, (v2 + v6), v10);
}

void sub_1010FC238(void **a1)
{
  v3 = *(type metadata accessor for DiscoveredObject(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  sub_1010E9E24(a1, v4, v5, v6);
}

uint64_t sub_1010FC2AC()
{
  v1 = type metadata accessor for DiscoveredObject(0);
  v2 = (*(*(v1 - 1) + 80) + 24) & ~*(*(v1 - 1) + 80);
  v3 = v2 + *(*(v1 - 1) + 64);
  v4 = *(sub_1000BC4D4(&qword_1016A62A0, &unk_101396E10) - 8);
  v5 = (v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v4 + 64);

  v7 = v0 + v2;
  v8 = *(v7 + 16);
  if (v8 >> 60 != 15)
  {
    sub_100016590(*(v7 + 8), v8);
  }

  v9 = v1[7];
  v10 = type metadata accessor for Date();
  (*(*(v10 - 8) + 8))(v7 + v9, v10);
  v11 = v1[8];
  v12 = type metadata accessor for MACAddress();
  (*(*(v12 - 8) + 8))(v7 + v11, v12);
  sub_10001E524(*(v7 + v1[9]), *(v7 + v1[9] + 8));
  sub_100016590(*(v7 + v1[14]), *(v7 + v1[14] + 8));
  v13 = v0 + v5;
  v14 = type metadata accessor for AccessoryMetadata(0);
  if (!(*(*(v14 - 8) + 48))(v0 + v5, 1, v14))
  {
    v15 = type metadata accessor for UUID();
    (*(*(v15 - 8) + 8))(v0 + v5, v15);
    sub_100016590(*(v13 + *(v14 + 20)), *(v13 + *(v14 + 20) + 8));

    v16 = *(v14 + 36);
    v17 = type metadata accessor for AirTagVersionNumber();
    v18 = *(v17 - 8);
    if (!(*(v18 + 48))(v13 + v16, 1, v17))
    {
      (*(v18 + 8))(v13 + v16, v17);
    }
  }

  return _swift_deallocObject(v0, v5 + v6);
}

uint64_t sub_1010FC5BC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for DiscoveredObject(0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(sub_1000BC4D4(&qword_1016A62A0, &unk_101396E10) - 8);
  return sub_1010E9CB4(a1, (v2 + v6), v2 + ((v7 + *(v8 + 80)) & ~*(v8 + 80)), a2);
}

uint64_t sub_1010FC6A4()
{
  v1 = *(type metadata accessor for DiscoveredObject(0) - 8);
  v2 = *(v0 + 16);
  v3 = (v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80)));

  return sub_1010E9AE0(v2, v3);
}

uint64_t sub_1010FC734(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1010FC79C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1010FC804(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1010FC864()
{
  v1 = type metadata accessor for DiscoveredObject(0);
  v2 = (*(*(v1 - 1) + 80) + 24) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);

  v4 = v0 + v2;
  v5 = *(v0 + v2 + 16);
  if (v5 >> 60 != 15)
  {
    sub_100016590(*(v4 + 8), v5);
  }

  v6 = (v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = v1[7];
  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 8))(v4 + v7, v8);
  v9 = v1[8];
  v10 = type metadata accessor for MACAddress();
  (*(*(v10 - 8) + 8))(v4 + v9, v10);
  sub_10001E524(*(v4 + v1[9]), *(v4 + v1[9] + 8));
  sub_100016590(*(v4 + v1[14]), *(v4 + v1[14] + 8));

  return _swift_deallocObject(v0, v6 + 8);
}

uint64_t sub_1010FC9E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, unint64_t, uint64_t))
{
  v6 = *(type metadata accessor for DiscoveredObject(0) - 8);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v8 = *(v3 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *(v3 + 16);

  return a3(a1, a2, v9, v3 + v7, v8);
}

uint64_t sub_1010FCAAC()
{
  v1 = type metadata accessor for DiscoveredObject(0);
  v2 = *(*(v1 - 1) + 64);
  v3 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v4 = v0 + v3;
  v5 = *(v0 + v3 + 16);
  if (v5 >> 60 != 15)
  {
    sub_100016590(*(v4 + 8), v5);
  }

  v6 = (v2 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = v1[7];
  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 8))(v4 + v7, v8);
  v9 = v1[8];
  v10 = type metadata accessor for MACAddress();
  (*(*(v10 - 8) + 8))(v4 + v9, v10);
  sub_10001E524(*(v4 + v1[9]), *(v4 + v1[9] + 8));
  sub_100016590(*(v4 + v1[14]), *(v4 + v1[14] + 8));

  return _swift_deallocObject(v0, v6 + 16);
}