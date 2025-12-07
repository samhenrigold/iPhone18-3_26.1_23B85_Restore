uint64_t sub_1000286E0(uint64_t a1)
{
  v1 = URL.lastPathComponent.getter();
  v3 = v2;
  if (v1 == URL.lastPathComponent.getter() && v3 == v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v6 & 1;
}

uint64_t sub_100028778(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    result = sub_10002C3B8(0, (v3 - result) & ~((v3 - result) >> 63), v3);
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
      sub_10002C310(0, v5, a2);
      v7 = v6;

      return v7;
    }
  }

  __break(1u);
  return result;
}

void sub_100028810(uint64_t a1@<X8>)
{
  v21 = a1;
  v2 = type metadata accessor for URL();
  v18 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_allocWithZone(NSDateFormatter) init];
  sub_10002C2AC(0xD000000000000013, 0x8000000100071860, v9);
  static Date.now.getter();
  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v6 + 8))(v8, v5);
  v11 = [v9 stringFromDate:isa];

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  sub_100027104(v4);
  if (v1)
  {
  }

  else
  {
    v19 = 0;
    v20 = 0xE000000000000000;
    _StringGuts.grow(_:)(30);

    v19 = 0xD000000000000018;
    v20 = 0x8000000100071880;
    v15._countAndFlagsBits = v12;
    v15._object = v14;
    String.append(_:)(v15);

    v16._countAndFlagsBits = 1954051118;
    v16._object = 0xE400000000000000;
    String.append(_:)(v16);
    URL.appendingPathComponent(_:)();

    (*(v18 + 8))(v4, v2);
    Data.write(to:options:)();
  }
}

uint64_t sub_100028B08()
{
  v1 = *(v0 + 16);
  swift_defaultActor_initialize();
  *(v1 + 112) = 2;
  *(v1 + 128) = 0;
  *(v1 + 120) = [objc_opt_self() fileHandleWithNullDevice];

  return _swift_task_switch(sub_100028BA4, v1, 0);
}

uint64_t sub_100028BA4()
{
  sub_100028C5C();
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1(v2);
}

void sub_100028C5C()
{
  v1 = type metadata accessor for CocoaError.Code();
  sub_100001EDC();
  v3 = v2;
  v5 = __chkstk_darwin(v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v44 = type metadata accessor for CocoaError();
  sub_100001EDC();
  v9 = v8;
  v11 = __chkstk_darwin(v10);
  v42 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v43 = &v35 - v14;
  v15 = __chkstk_darwin(v13);
  v17 = &v35 - v16;
  __chkstk_darwin(v15);
  v19 = &v35 - v18;
  sub_1000291C8();
  if (v0)
  {
    v47 = v0;
    swift_errorRetain();
    sub_1000228D4(&unk_10008E6E0, &qword_10006F890);
    if (swift_dynamicCast())
    {
      v41 = v9;
      v38 = *(v9 + 16);
      v39 = v9 + 16;
      v38(v17, v19, v44);
      sub_100004634();
      v40 = sub_10002C5B4(v20, v21, &protocol conformance descriptor for CocoaError);
      _BridgedStoredNSError.code.getter();
      static CocoaError.fileWriteNoPermission.getter();
      v22 = sub_10002C5B4(&unk_10008E6F0, &type metadata accessor for CocoaError.Code, &protocol conformance descriptor for CocoaError.Code);
      sub_1000028A8();
      dispatch thunk of RawRepresentable.rawValue.getter();
      sub_100007A38();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v23 = *(v3 + 8);
      v23(v7, v1);
      v24 = sub_1000043D8();
      (v23)(v24);
      if (v46 == v45)
      {

        sub_100026BF4(v17, "unable to access transparency log (PERM): %{public}s");
        CocoaError._nsError.getter();
        sub_100001D34();
        v25 = *(v41 + 8);
        sub_10000902C();
        v25();
        (v25)(v19, v22);
LABEL_9:

        return;
      }

      v26 = *(v41 + 8);
      v35 = v23;
      v36 = v26;
      sub_10000902C();
      v37 = v27;
      v28();
      v29 = v43;
      v38(v43, v19, v22);
      _BridgedStoredNSError.code.getter();
      static CocoaError.fileWriteOutOfSpace.getter();
      sub_1000028A8();
      dispatch thunk of RawRepresentable.rawValue.getter();
      sub_100007A38();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v30 = v35;
      (v35)(v7, v1);
      v31 = sub_1000043D8();
      v30(v31);
      if (v46 == v45)
      {

        sub_100026BF4(v29, "unable to write transparency log (OOS): %{public}s");
        CocoaError._nsError.getter();
        sub_100001D34();
        sub_10000902C();
        v32 = v36;
        v36();
        (v32)(v19, v22);
        goto LABEL_9;
      }

      v43 = v22;
      sub_10000902C();
      v36();
      v33 = v42;
      (*(v41 + 32))(v42, v19, v22);
      _BridgedStoredNSError.code.getter();
      static CocoaError.fileWriteUnknown.getter();
      sub_1000028A8();
      dispatch thunk of RawRepresentable.rawValue.getter();
      sub_100007A38();
      dispatch thunk of RawRepresentable.rawValue.getter();
      (v30)(v7, v1);
      v34 = sub_1000043D8();
      v30(v34);
      if (v46 == v45)
      {

        sub_100026BF4(v33, "unable to access storebag cache (WRITE-UNKNOWN): %{public}s");
        CocoaError._nsError.getter();
        sub_100001D34();
        (v36)(v33, v44);
        goto LABEL_9;
      }

      (v36)(v33, v44);
    }

    sub_100026E88(v0);
    swift_willThrow();
  }
}

void sub_1000291C8()
{
  v1 = v0;
  v102 = *v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v95 = *(v2 - 8);
  v96 = v2;
  __chkstk_darwin(v2);
  v93 = &v84 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for DispatchQoS();
  v92 = *(v94 - 8);
  __chkstk_darwin(v94);
  v91 = &v84 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_source.FileSystemEvent();
  v89 = *(v5 - 8);
  v90 = v5;
  __chkstk_darwin(v5);
  v88 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000228D4(&qword_10008E700, &unk_10006D360);
  __chkstk_darwin(v7 - 8);
  v9 = &v84 - v8;
  v10 = type metadata accessor for URL();
  v98 = *(v10 - 8);
  v99 = v10;
  v11 = __chkstk_darwin(v10);
  v87 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = &v84 - v14;
  v16 = __chkstk_darwin(v13);
  v97 = (&v84 - v17);
  v18 = __chkstk_darwin(v16);
  v86 = (&v84 - v19);
  v20 = __chkstk_darwin(v18);
  v22 = &v84 - v21;
  __chkstk_darwin(v20);
  v24 = &v84 - v23;
  v25 = *(v0 + 120);
  v26 = objc_opt_self();
  v27 = v25;
  v28 = [v26 fileHandleWithNullDevice];
  sub_10002A90C(0, &qword_10008E708, NSFileHandle_ptr);
  v29 = static NSObject.== infix(_:_:)();

  if ((v29 & 1) == 0)
  {
    if (qword_10008DD28 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_1000050E4(v30, qword_1000959A8);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "witnessed log vanish - refeshing", v33, 2u);
    }
  }

  if (*(v1 + 128))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    OS_dispatch_source.cancel()();
    swift_unknownObjectRelease();
    *(v1 + 128) = 0;
    swift_unknownObjectRelease();
  }

  v34 = v100;
  sub_100027634(v9);
  if (!v34)
  {
    v100 = v1;
    v85 = v24;
    v35 = v99;
    if (sub_100002694(v9, 1, v99) == 1)
    {
      sub_1000026E4(v9, &qword_10008E700, &unk_10006D360);
      v36 = v97;
      sub_100028810(v97);
      v37 = *(v98 + 16);
      v37(v15, v36, v99);
      v38 = sub_10002F268(v15);
      v47 = v37;
      v43 = v100;
      v48 = *(v100 + 120);
      *(v100 + 120) = v38;

      if (qword_10008DD28 != -1)
      {
        swift_once();
      }

      v49 = type metadata accessor for Logger();
      sub_1000050E4(v49, qword_1000959A8);
      v50 = v87;
      v51 = v97;
      v52 = v99;
      v47(v87, v97, v99);
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v86 = swift_slowAlloc();
        aBlock[0] = v86;
        *v55 = 136446210;
        v56 = URL.path.getter();
        v57 = v50;
        v59 = v58;
        v102 = *(v98 + 8);
        v102(v57, v52);
        v60 = sub_1000053A0(v56, v59, aBlock);

        *(v55 + 4) = v60;
        _os_log_impl(&_mh_execute_header, v53, v54, "created new log file at %{public}s", v55, 0xCu);
        sub_100005284(v86);

        v102(v97, v52);
      }

      else
      {

        v73 = *(v98 + 8);
        v73(v50, v52);
        v73(v51, v52);
      }
    }

    else
    {
      v39 = v98;
      v40 = v85;
      (*(v98 + 32))(v85, v9, v35);
      v41 = *(v39 + 16);
      v41(v22, v40, v35);
      v42 = sub_10002F268(v22);
      v43 = v100;
      v44 = *(v100 + 120);
      *(v100 + 120) = v42;
      v45 = v42;

      NSFileHandle.seekToEnd()();
      if (v46)
      {
        (*(v98 + 8))(v85, v99);

        return;
      }

      v102 = 0;

      v61 = v85;
      if (qword_10008DD28 != -1)
      {
        swift_once();
      }

      v62 = type metadata accessor for Logger();
      sub_1000050E4(v62, qword_1000959A8);
      v63 = v86;
      v64 = v99;
      v41(v86, v61, v99);
      v65 = Logger.logObject.getter();
      v66 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        v97 = swift_slowAlloc();
        aBlock[0] = v97;
        *v67 = 136446210;
        v68 = URL.path.getter();
        v70 = v69;
        v71 = *(v98 + 8);
        v71(v63, v64);
        v72 = sub_1000053A0(v68, v70, aBlock);

        *(v67 + 4) = v72;
        _os_log_impl(&_mh_execute_header, v65, v66, "opened log file at %{public}s", v67, 0xCu);
        sub_100005284(v97);

        v71(v85, v64);
      }

      else
      {

        v74 = *(v98 + 8);
        v74(v63, v64);
        v74(v61, v64);
      }
    }

    sub_10002A90C(0, &qword_10008E710, OS_dispatch_source_ptr);
    [*(v43 + 120) fileDescriptor];
    sub_1000228D4(&qword_10008E718, &qword_10006DC18);
    v75 = v89;
    v76 = swift_allocObject();
    *(v76 + 16) = xmmword_10006D1D0;
    static OS_dispatch_source.FileSystemEvent.rename.getter();
    static OS_dispatch_source.FileSystemEvent.delete.getter();
    aBlock[0] = v76;
    sub_10002C5B4(&qword_10008E720, &type metadata accessor for OS_dispatch_source.FileSystemEvent, &protocol conformance descriptor for OS_dispatch_source.FileSystemEvent);
    sub_1000228D4(&qword_10008E728, &qword_10006DC20);
    sub_10000F978(&qword_10008E730, &qword_10008E728, &qword_10006DC20);
    v77 = v88;
    v78 = v90;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v79 = static OS_dispatch_source.makeFileSystemObjectSource(fileDescriptor:eventMask:queue:)();
    (*(v75 + 8))(v77, v78);
    *(v43 + 128) = v79;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    swift_getObjectType();
    v80 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_10002A94C;
    aBlock[5] = v80;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000FCE0;
    aBlock[3] = &unk_100086BA8;
    v81 = _Block_copy(aBlock);

    v82 = v91;
    static DispatchQoS.unspecified.getter();
    v83 = v93;
    sub_100029FF0();
    OS_dispatch_source.setEventHandler(qos:flags:handler:)();
    _Block_release(v81);
    swift_unknownObjectRelease();
    (*(v95 + 8))(v83, v96);
    (*(v92 + 8))(v82, v94);

    if (*(v43 + 128))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      OS_dispatch_source.resume()();
      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_100029E58(uint64_t a1)
{
  v1 = sub_1000228D4(&qword_10008E750, &qword_10006F860);
  __chkstk_darwin(v1 - 8);
  v3 = &v8 - v2;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for TaskPriority();
    sub_1000026BC(v3, 1, 1, v6);
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = v5;
    sub_10005A254(0, 0, v3, &unk_10006DC30, v7);
  }

  return result;
}

uint64_t sub_100029F74()
{
  sub_100028C5C();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100029FF0()
{
  type metadata accessor for DispatchWorkItemFlags();
  sub_10002C5B4(&qword_10008E738, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000228D4(&qword_10008E740, &qword_10006E180);
  sub_10000F978(&qword_10008E748, &qword_10008E740, &qword_10006E180);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t sub_10002A0C8(uint64_t a1, void *a2, uint64_t a3)
{
  v50._countAndFlagsBits = a1;
  v50._object = a2;
  v3 = type metadata accessor for String.Encoding();
  sub_100001EDC();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_100001EAC();
  v9 = v8 - v7;
  v10 = type metadata accessor for Date();
  sub_100001EDC();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_100001EAC();
  v16 = v15 - v14;
  _StringGuts.grow(_:)(27);

  v53 = 40;
  v54 = 0xE100000000000000;
  static Date.now.getter();
  v17 = Date.description.getter();
  v19 = v18;
  v20 = v10;
  v21 = v3;
  (*(v12 + 8))(v16, v20);
  v22._countAndFlagsBits = v17;
  v22._object = v19;
  String.append(_:)(v22);

  v23._countAndFlagsBits = 5972009;
  v23._object = 0xE300000000000000;
  String.append(_:)(v23);
  String.append(_:)(v50);
  v24._object = 0x8000000100071840;
  v24._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v24);
  static String.Encoding.utf8.getter();
  v25 = String.data(using:allowLossyConversion:)();
  v27 = v26;
  v28 = *(v5 + 8);
  v28(v9, v21);
  if (v27 >> 60 == 15)
  {

    sub_10002A810(v29, v30, v31);
    swift_allocError();
    return swift_willThrow();
  }

  else
  {
    v53 = v25;
    v54 = v27;
    Data.append(_:)();
    static String.Encoding.utf8.getter();
    v33 = String.data(using:allowLossyConversion:)();
    v35 = v34;
    result = (v28)(v9, v21);
    if (v35 >> 60 == 15)
    {
      __break(1u);
    }

    else
    {

      Data.append(_:)();
      sub_100022E50(v33, v35);
      v36 = *(v49 + 120);
      v51 = v53;
      v52 = v54;
      v37 = v36;
      v38 = sub_100009AEC();
      v40 = sub_100025CD8(v38, v39);
      sub_10002A8B8(v40, v41, v42);
      NSFileHandle.write<A>(contentsOf:)();
      if (v48)
      {

        sub_100005954(v51, v52);
      }

      else
      {
        sub_100005954(v51, v52);

        v43 = *(v49 + 120);
        v51 = 0;
        if ([v43 synchronizeAndReturnError:&v51])
        {
          v44 = v51;
        }

        else
        {
          v45 = v51;
          _convertNSErrorToError(_:)();

          swift_willThrow();
        }
      }

      v46 = sub_100009AEC();
      return sub_100005954(v46, v47);
    }
  }

  return result;
}

uint64_t sub_10002A464()
{
  swift_unknownObjectRelease();
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_10002A494()
{
  sub_10002A464();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10002A4E4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x73746E657665 && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

Swift::Int sub_10002A558()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_10002A5B0(void *a1, uint64_t a2)
{
  v4 = sub_1000228D4(&qword_10008E770, &qword_10006DDC8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v12 - v6;
  v8 = sub_100008DE4(a1, a1[3]);
  sub_10002C560(v8, v9, v10);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12[1] = a2;
  sub_1000228D4(&qword_10008E780, &unk_10006FFD0);
  sub_10000847C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v7, v4);
}

Swift::Int sub_10002A70C(uint64_t a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_10002A750@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10002A4E4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_10002A77C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10002C560(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_10002A7B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10002C560(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

unint64_t sub_10002A810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10008E6A8;
  if (!qword_10008E6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E6A8);
  }

  return result;
}

unint64_t sub_10002A864(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10008E6D0;
  if (!qword_10008E6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E6D0);
  }

  return result;
}

unint64_t sub_10002A8B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10008E6D8;
  if (!qword_10008E6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E6D8);
  }

  return result;
}

uint64_t sub_10002A90C(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_10002A954(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001BF00;

  return sub_100029F54(a1, v4, v5, v6);
}

Swift::Int sub_10002AA08(uint64_t a1)
{
  v2 = *(a1 + 8);
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
        type metadata accessor for URL();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for URL() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_10002AE58(v8, v9, a1, v4);
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
    return sub_10002AB38(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_10002AB38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for URL();
  v9 = __chkstk_darwin(v8);
  v50 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  result = __chkstk_darwin(v11);
  v16 = &v40 - v15;
  v42 = a2;
  if (a3 != a2)
  {
    v17 = v14;
    v18 = *a4;
    v20 = *(v13 + 16);
    v19 = v13 + 16;
    v21 = *(v19 + 56);
    v51 = (v19 - 8);
    v52 = v20;
    v53 = v19;
    v48 = (v19 + 16);
    v49 = v18;
    v22 = v18 + v21 * (a3 - 1);
    v47 = -v21;
    v23 = a1 - a3;
    v41 = v21;
    v24 = v18 + v21 * a3;
    while (2)
    {
      v45 = v22;
      v46 = a3;
      v43 = v24;
      v44 = v23;
      v25 = v22;
      while (1)
      {
        v26 = v52;
        v52(v16, v24, v8);
        v26(v17, v25, v8);
        v27 = URL.lastPathComponent.getter();
        v28 = v16;
        v29 = v17;
        v31 = v30;
        if (v27 == URL.lastPathComponent.getter() && v31 == v32)
        {
          break;
        }

        v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v35 = *v51;
        (*v51)(v29, v8);
        result = (v35)(v28, v8);
        v17 = v29;
        v16 = v28;
        if (v34)
        {
          if (!v49)
          {
            __break(1u);
            return result;
          }

          v36 = *v48;
          v37 = v50;
          (*v48)(v50, v24, v8);
          swift_arrayInitWithTakeFrontToBack();
          result = (v36)(v25, v37, v8);
          v25 += v47;
          v24 += v47;
          if (!__CFADD__(v23++, 1))
          {
            continue;
          }
        }

        goto LABEL_14;
      }

      v39 = *v51;
      (*v51)(v29, v8);
      result = (v39)(v28, v8);
      v17 = v29;
      v16 = v28;
LABEL_14:
      a3 = v46 + 1;
      v22 = v45 + v41;
      v23 = v44 - 1;
      v24 = v43 + v41;
      if (v46 + 1 != v42)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_10002AE58(unint64_t *a1, uint64_t a2, char **a3, uint64_t a4)
{
  v5 = v4;
  v145 = a1;
  v8 = type metadata accessor for URL();
  v9 = __chkstk_darwin(v8);
  v150 = &v141 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v163 = &v141 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = &v141 - v14;
  v16 = __chkstk_darwin(v13);
  v17 = __chkstk_darwin(v16);
  v159 = &v141 - v18;
  v19 = __chkstk_darwin(v17);
  v158 = &v141 - v20;
  v21 = __chkstk_darwin(v19);
  __chkstk_darwin(v21);
  v26 = &v141 - v22;
  v156 = v23;
  v157 = a3;
  v27 = a3[1];
  if (v27 < 1)
  {
    v29 = _swiftEmptyArrayStorage;
LABEL_114:
    v168 = *v145;
    if (!v168)
    {
      goto LABEL_156;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_116;
    }

    goto LABEL_150;
  }

  v164 = v24;
  v141 = a4;
  v28 = 0;
  v168 = v23 + 16;
  v166 = (v23 + 32);
  v167 = (v23 + 8);
  v29 = _swiftEmptyArrayStorage;
  v160 = v8;
  v152 = v15;
  v142 = v25;
  v144 = &v141 - v22;
  while (1)
  {
    v30 = v28;
    v31 = v28 + 1;
    v147 = v28;
    if (v28 + 1 < v27)
    {
      v162 = v27;
      v143 = v29;
      v32 = v26;
      v33 = *v157;
      v34 = *(v23 + 72);
      v35 = v25;
      v155 = v28 + 1;
      v36 = v28;
      v37 = &v33[v34 * (v28 + 1)];
      v38 = *(v23 + 16);
      v38(v32, v37, v8);
      v39 = &v33[v34 * v36];
      v40 = v144;
      v154 = v38;
      v38(v35, v39, v8);
      LODWORD(v161) = sub_1000286E0(v40);
      if (v5)
      {
        v140 = *v167;
        (*v167)(v35, v8);
        (v140)(v40, v8);
LABEL_124:

        return;
      }

      v146 = 0;
      v29 = v167;
      v41 = *v167;
      (*v167)(v35, v8);
      v153 = v41;
      (v41)(v40, v8);
      v42 = v147 + 2;
      v43 = &v33[v34 * (v147 + 2)];
      v31 = v155;
      v44 = v34;
      v165 = v34;
      v45 = v162;
      while (1)
      {
        v46 = v42;
        if (v31 + 1 >= v45)
        {
          break;
        }

        v47 = v31;
        v48 = v160;
        v5 = v154;
        (v154)(v158, v43, v160);
        v5(v159, v37, v48);
        v49 = URL.lastPathComponent.getter();
        v51 = v50;
        if (v49 == URL.lastPathComponent.getter() && v51 == v52)
        {
          v54 = 0;
        }

        else
        {
          v54 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        v55 = v160;
        v29 = v153;
        (v153)(v159, v160);
        (v29)(v158, v55);
        v44 = v165;
        v43 += v165;
        v37 += v165;
        v31 = v47 + 1;
        v42 = v46 + 1;
        v45 = v162;
        if ((v161 ^ v54))
        {
          goto LABEL_16;
        }
      }

      v31 = v45;
LABEL_16:
      if (v161)
      {
        v30 = v147;
        if (v31 < v147)
        {
          goto LABEL_149;
        }

        v5 = v146;
        if (v147 >= v31)
        {
          v23 = v156;
          v29 = v143;
          v8 = v160;
          v15 = v152;
          goto LABEL_39;
        }

        if (v45 >= v46)
        {
          v56 = v46;
        }

        else
        {
          v56 = v45;
        }

        v57 = v44 * (v56 - 1);
        v58 = v44 * v56;
        v59 = v147;
        v60 = v147 * v44;
        v61 = v31;
        do
        {
          if (v59 != --v61)
          {
            v62 = *v157;
            if (!*v157)
            {
              goto LABEL_154;
            }

            v63 = v160;
            v162 = *v166;
            v162(v150, &v62[v60], v160);
            v64 = v60 < v57 || &v62[v60] >= &v62[v58];
            if (v64)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v60 != v57)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v162(&v62[v57], v150, v63);
            v5 = v146;
            v44 = v165;
          }

          ++v59;
          v57 -= v44;
          v58 -= v44;
          v60 += v44;
        }

        while (v59 < v61);
      }

      else
      {
        v5 = v146;
      }

      v23 = v156;
      v29 = v143;
      v8 = v160;
      v15 = v152;
      v30 = v147;
    }

LABEL_39:
    v65 = v157[1];
    if (v31 < v65)
    {
      if (__OFSUB__(v31, v30))
      {
        goto LABEL_146;
      }

      if (v31 - v30 < v141)
      {
        break;
      }
    }

LABEL_62:
    if (v31 < v30)
    {
      goto LABEL_145;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_100022F2C();
      v29 = v131;
    }

    v88 = *(v29 + 2);
    v87 = *(v29 + 3);
    v89 = v88 + 1;
    v155 = v31;
    if (v88 >= v87 >> 1)
    {
      sub_100022F2C();
      v29 = v132;
    }

    *(v29 + 2) = v89;
    v90 = v29 + 32;
    v91 = &v29[16 * v88 + 32];
    v92 = v155;
    *v91 = v147;
    *(v91 + 1) = v92;
    v165 = *v145;
    if (!v165)
    {
      goto LABEL_155;
    }

    if (v88)
    {
      while (1)
      {
        v93 = v89 - 1;
        v94 = &v90[16 * v89 - 16];
        v95 = &v29[16 * v89];
        if (v89 >= 4)
        {
          break;
        }

        if (v89 == 3)
        {
          v96 = *(v29 + 4);
          v97 = *(v29 + 5);
          v106 = __OFSUB__(v97, v96);
          v98 = v97 - v96;
          v99 = v106;
LABEL_82:
          if (v99)
          {
            goto LABEL_132;
          }

          v111 = *v95;
          v110 = *(v95 + 1);
          v112 = __OFSUB__(v110, v111);
          v113 = v110 - v111;
          v114 = v112;
          if (v112)
          {
            goto LABEL_135;
          }

          v115 = *(v94 + 1);
          v116 = v115 - *v94;
          if (__OFSUB__(v115, *v94))
          {
            goto LABEL_138;
          }

          if (__OFADD__(v113, v116))
          {
            goto LABEL_140;
          }

          if (v113 + v116 >= v98)
          {
            if (v98 < v116)
            {
              v93 = v89 - 2;
            }

            goto LABEL_104;
          }

          goto LABEL_97;
        }

        if (v89 < 2)
        {
          goto LABEL_134;
        }

        v118 = *v95;
        v117 = *(v95 + 1);
        v106 = __OFSUB__(v117, v118);
        v113 = v117 - v118;
        v114 = v106;
LABEL_97:
        if (v114)
        {
          goto LABEL_137;
        }

        v120 = *v94;
        v119 = *(v94 + 1);
        v106 = __OFSUB__(v119, v120);
        v121 = v119 - v120;
        if (v106)
        {
          goto LABEL_139;
        }

        if (v121 < v113)
        {
          goto LABEL_111;
        }

LABEL_104:
        if (v93 - 1 >= v89)
        {
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
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
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
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
          goto LABEL_148;
        }

        if (!*v157)
        {
          goto LABEL_152;
        }

        v125 = v29;
        v126 = &v90[16 * v93 - 16];
        v29 = *v126;
        v127 = &v90[16 * v93];
        v128 = *(v127 + 1);
        sub_10002BA1C(&(*v157)[*(v156 + 72) * *v126], &(*v157)[*(v156 + 72) * *v127], &(*v157)[*(v156 + 72) * v128], v165);
        if (v5)
        {
          goto LABEL_124;
        }

        if (v128 < v29)
        {
          goto LABEL_127;
        }

        v129 = *(v125 + 2);
        if (v93 > v129)
        {
          goto LABEL_128;
        }

        *v126 = v29;
        *(v126 + 1) = v128;
        if (v93 >= v129)
        {
          goto LABEL_129;
        }

        v89 = v129 - 1;
        memmove(&v90[16 * v93], v127 + 16, 16 * (v129 - 1 - v93));
        v29 = v125;
        *(v125 + 2) = v129 - 1;
        v130 = v129 > 2;
        v15 = v152;
        if (!v130)
        {
          goto LABEL_111;
        }
      }

      v100 = &v90[16 * v89];
      v101 = *(v100 - 8);
      v102 = *(v100 - 7);
      v106 = __OFSUB__(v102, v101);
      v103 = v102 - v101;
      if (v106)
      {
        goto LABEL_130;
      }

      v105 = *(v100 - 6);
      v104 = *(v100 - 5);
      v106 = __OFSUB__(v104, v105);
      v98 = v104 - v105;
      v99 = v106;
      if (v106)
      {
        goto LABEL_131;
      }

      v107 = *(v95 + 1);
      v108 = v107 - *v95;
      if (__OFSUB__(v107, *v95))
      {
        goto LABEL_133;
      }

      v106 = __OFADD__(v98, v108);
      v109 = v98 + v108;
      if (v106)
      {
        goto LABEL_136;
      }

      if (v109 >= v103)
      {
        v123 = *v94;
        v122 = *(v94 + 1);
        v106 = __OFSUB__(v122, v123);
        v124 = v122 - v123;
        if (v106)
        {
          goto LABEL_144;
        }

        if (v98 < v124)
        {
          v93 = v89 - 2;
        }

        goto LABEL_104;
      }

      goto LABEL_82;
    }

LABEL_111:
    v23 = v156;
    v27 = v157[1];
    v28 = v155;
    v8 = v160;
    v25 = v142;
    v26 = v144;
    if (v155 >= v27)
    {
      goto LABEL_114;
    }
  }

  v66 = (v30 + v141);
  if (__OFADD__(v30, v141))
  {
    goto LABEL_147;
  }

  if (v66 >= v65)
  {
    v66 = v157[1];
  }

  if (v66 < v30)
  {
LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
LABEL_150:
    v29 = sub_10002C024(v29);
LABEL_116:
    v133 = v29 + 16;
    v134 = *(v29 + 2);
    while (v134 >= 2)
    {
      if (!*v157)
      {
        goto LABEL_153;
      }

      v135 = v29;
      v29 += 16 * v134;
      v136 = *v29;
      v137 = &v133[2 * v134];
      v138 = v137[1];
      sub_10002BA1C(&(*v157)[*(v156 + 72) * *v29], &(*v157)[*(v156 + 72) * *v137], &(*v157)[*(v156 + 72) * v138], v168);
      if (v5)
      {
        break;
      }

      if (v138 < v136)
      {
        goto LABEL_141;
      }

      if (v134 - 2 >= *v133)
      {
        goto LABEL_142;
      }

      *v29 = v136;
      *(v29 + 1) = v138;
      v139 = *v133 - v134;
      if (*v133 < v134)
      {
        goto LABEL_143;
      }

      v134 = *v133 - 1;
      memmove(v137, v137 + 2, 16 * v139);
      *v133 = v134;
      v29 = v135;
    }

    goto LABEL_124;
  }

  if (v31 == v66)
  {
    goto LABEL_62;
  }

  v143 = v29;
  v146 = v5;
  v67 = *v157;
  v68 = *(v23 + 72);
  v165 = *(v23 + 16);
  v69 = &v67[v68 * (v31 - 1)];
  v161 = -v68;
  v162 = v67;
  v70 = (v30 - v31);
  v148 = v68;
  v149 = v66;
  v71 = &v67[v31 * v68];
  v72 = v164;
LABEL_48:
  v154 = v69;
  v155 = v31;
  v151 = v71;
  v153 = v70;
  while (1)
  {
    v73 = v165;
    (v165)(v72, v71, v8);
    v73(v15, v69, v8);
    v74 = v15;
    v75 = URL.lastPathComponent.getter();
    v76 = v8;
    v78 = v77;
    if (v75 == URL.lastPathComponent.getter() && v78 == v79)
    {

      v86 = *v167;
      (*v167)(v74, v76);
      (v86)(v72, v76);
      v8 = v76;
      v15 = v74;
      goto LABEL_60;
    }

    v81 = v72;
    v82 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v83 = *v167;
    (*v167)(v74, v76);
    (v83)(v81, v76);
    v8 = v76;
    v15 = v74;
    if ((v82 & 1) == 0)
    {
      v72 = v164;
LABEL_60:
      v31 = v155 + 1;
      v69 = &v154[v148];
      v70 = v153 - 1;
      v71 = &v151[v148];
      if ((v155 + 1) == v149)
      {
        v31 = v149;
        v5 = v146;
        v29 = v143;
        v30 = v147;
        goto LABEL_62;
      }

      goto LABEL_48;
    }

    if (!v162)
    {
      break;
    }

    v84 = *v166;
    v85 = v163;
    (*v166)(v163, v71, v76);
    swift_arrayInitWithTakeFrontToBack();
    v84(v69, v85, v76);
    v69 += v161;
    v71 += v161;
    v64 = __CFADD__(v70++, 1);
    v72 = v164;
    if (v64)
    {
      goto LABEL_60;
    }
  }

  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
}

uint64_t sub_10002BA1C(char *a1, unint64_t a2, char *a3, unint64_t a4)
{
  v8 = type metadata accessor for URL();
  v9 = __chkstk_darwin(v8);
  v71 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v70 = &v64 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = &v64 - v14;
  result = __chkstk_darwin(v13);
  v20 = *(v19 + 72);
  if (!v20)
  {
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    return result;
  }

  v21 = a2 - a1 == 0x8000000000000000 && v20 == -1;
  if (v21)
  {
    goto LABEL_72;
  }

  v22 = &a3[-a2];
  if (&a3[-a2] == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_73;
  }

  v24 = (a2 - a1) / v20;
  v77 = a1;
  v76 = a4;
  v72 = (v17 + 8);
  v73 = (v17 + 16);
  v25 = v22 / v20;
  if (v24 < v22 / v20)
  {
    v68 = &v64 - v18;
    v70 = v15;
    sub_10005FE5C(a1, (a2 - a1) / v20, a4);
    v71 = (a4 + v24 * v20);
    v75 = v71;
    v26 = a4;
    v27 = v20;
    v67 = v8;
    v69 = a3;
    while (1)
    {
      if (v26 >= v71 || a2 >= a3)
      {
        goto LABEL_70;
      }

      v29 = a1;
      v30 = *v73;
      v31 = v68;
      v32 = a2;
      (*v73)(v68, a2, v8);
      v74 = v26;
      v33 = v70;
      v30();
      v34 = URL.lastPathComponent.getter();
      v36 = v35;
      if (v34 == URL.lastPathComponent.getter() && v36 == v37)
      {

        v44 = *v72;
        (*v72)(v33, v8);
        v44(v31, v8);
      }

      else
      {
        v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v40 = *v72;
        (*v72)(v33, v8);
        v40(v31, v8);
        if (v39)
        {
          v41 = v32;
          a2 = v32 + v27;
          v42 = v29;
          if (v29 < v32 || v29 >= a2)
          {
            v8 = v67;
            swift_arrayInitWithTakeFrontToBack();
            a3 = v69;
          }

          else
          {
            a3 = v69;
            v8 = v67;
            if (v29 != v41)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v26 = v74;
          goto LABEL_40;
        }
      }

      v26 = v74 + v27;
      v42 = v29;
      v45 = v29 < v74 || v29 >= v26;
      a2 = v32;
      if (v45)
      {
        v8 = v67;
        swift_arrayInitWithTakeFrontToBack();
        a3 = v69;
      }

      else
      {
        a3 = v69;
        v8 = v67;
        if (v29 != v74)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v76 = v26;
LABEL_40:
      a1 = (v42 + v27);
      v77 = a1;
    }
  }

  sub_10005FE5C(a2, v22 / v20, a4);
  v74 = a4;
  v46 = a4 + v25 * v20;
  v47 = -v20;
  v48 = v46;
  v68 = -v20;
LABEL_42:
  v69 = a2;
  v67 = a2 + v47;
  v49 = a3;
  v65 = v48;
  while (1)
  {
    if (v46 <= v74)
    {
      v77 = v69;
      v75 = v48;
      goto LABEL_70;
    }

    if (v69 <= a1)
    {
      break;
    }

    v66 = v48;
    v50 = v46 + v47;
    v51 = *v73;
    (*v73)(v70, v46 + v47, v8);
    (v51)(v71, v67, v8);
    v52 = URL.lastPathComponent.getter();
    v54 = v53;
    if (v52 == URL.lastPathComponent.getter() && v54 == v55)
    {
      v57 = 0;
    }

    else
    {
      v57 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v58 = &v49[v68];
    v59 = *v72;
    (*v72)(v71, v8);
    v59(v70, v8);
    if (v57)
    {
      v61 = v49 < v69 || v58 >= v69;
      a3 = v58;
      if (v61)
      {
        a2 = v67;
        swift_arrayInitWithTakeFrontToBack();
        v48 = v66;
        v47 = v68;
      }

      else
      {
        v63 = v66;
        v62 = v67;
        v48 = v66;
        v21 = v49 == v69;
        a2 = v67;
        v47 = v68;
        if (!v21)
        {
          swift_arrayInitWithTakeBackToFront();
          a2 = v62;
          v48 = v63;
        }
      }

      goto LABEL_42;
    }

    if (v49 < v46 || v58 >= v46)
    {
      swift_arrayInitWithTakeFrontToBack();
      v49 = v58;
      v46 = v50;
      v48 = v50;
      v47 = v68;
    }

    else
    {
      v48 = v50;
      v21 = v46 == v49;
      v49 = v58;
      v46 = v50;
      v47 = v68;
      if (!v21)
      {
        swift_arrayInitWithTakeBackToFront();
        v49 = v58;
        v46 = v50;
        v48 = v50;
      }
    }
  }

  v77 = v69;
  v75 = v65;
LABEL_70:
  sub_10002C038(&v77, &v76, &v75);
  return 1;
}

uint64_t sub_10002C038(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for URL();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_20;
  }

  v9 = v4 + (v5 - v4) / v7 * v7;
  if (v3 < v4 || v3 >= v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_10002C118(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000228D4(&unk_10008E240, &unk_10006CCA0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

id sub_10002C218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  type metadata accessor for URLResourceKey(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v10 = [a5 contentsOfDirectoryAtURL:a1 includingPropertiesForKeys:isa options:a3 error:a4];

  return v10;
}

void sub_10002C2AC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();

  [a3 setDateFormat:v4];
}

void sub_10002C310(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < a1 || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    type metadata accessor for URL();

    return;
  }

LABEL_10:
  __break(1u);
}

uint64_t sub_10002C3B8(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_10002C404(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000228D4(&qword_10008E700, &unk_10006D360);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002C474(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000228D4(&qword_10008E700, &unk_10006D360);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10002C50C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10008E768;
  if (!qword_10008E768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E768);
  }

  return result;
}

unint64_t sub_10002C560(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10008E778;
  if (!qword_10008E778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E778);
  }

  return result;
}

uint64_t sub_10002C5B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_BYTE *sub_10002C5FC(_BYTE *result, int a2, int a3)
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

unint64_t sub_10002C6AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10008E798;
  if (!qword_10008E798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E798);
  }

  return result;
}

unint64_t sub_10002C704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10008E7A0;
  if (!qword_10008E7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E7A0);
  }

  return result;
}

unint64_t sub_10002C75C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10008E7A8;
  if (!qword_10008E7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E7A8);
  }

  return result;
}

uint64_t sub_10002C7C0()
{
  v5 = *v0;
  v6 = v5;
  sub_100005CC0(&v6, &v4);
  v1._countAndFlagsBits = 58;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  String.append(_:)(v0[1]);
  v2._countAndFlagsBits = 58;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  String.append(_:)(v0[2]);
  return v5._countAndFlagsBits;
}

xpc_object_t sub_10002C83C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v24 = _swiftEmptyArrayStorage;
    v2 = &v24;
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = sub_10002E848(a1);
    v5 = a1;
    v7 = v6;
    v8 = 0;
    v9 = a1 + 56;
    if ((v4 & 0x8000000000000000) == 0)
    {
      while (v4 < 1 << *(v5 + 32))
      {
        v10 = v4 >> 6;
        if ((*(v9 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
        {
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

        if (*(v5 + 36) != v7)
        {
          goto LABEL_26;
        }

        v22 = v8;
        v23 = v3;
        xpc_int64_create(*(*(v5 + 48) + 8 * v4));
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        result = specialized ContiguousArray._endMutation()();
        if (v23)
        {
          __break(1u);
          return result;
        }

        v2 = 1 << *(v5 + 32);
        if (v4 >= v2)
        {
          goto LABEL_27;
        }

        v12 = *(v9 + 8 * v10);
        if ((v12 & (1 << v4)) == 0)
        {
          goto LABEL_28;
        }

        if (*(v5 + 36) != v7)
        {
          goto LABEL_29;
        }

        v13 = v12 & (-2 << (v4 & 0x3F));
        if (v13)
        {
          v2 = __clz(__rbit64(v13)) | v4 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v14 = v10 << 6;
          v15 = v10 + 1;
          v16 = (a1 + 64 + 8 * v10);
          while (v15 < (v2 + 63) >> 6)
          {
            v18 = *v16++;
            v17 = v18;
            v14 += 64;
            ++v15;
            if (v18)
            {
              sub_10002E888(v4, v7, 0);
              v5 = a1;
              v2 = __clz(__rbit64(v17)) + v14;
              goto LABEL_17;
            }
          }

          sub_10002E888(v4, v7, 0);
          v5 = a1;
        }

LABEL_17:
        v8 = v22 + 1;
        if (v22 + 1 == v1)
        {
          goto LABEL_20;
        }

        v3 = 0;
        v7 = *(v5 + 36);
        v4 = v2;
        if (v2 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_20:
    v2 = v24;
  }

  if (v2 < 0 || (v2 & 0x4000000000000000) != 0)
  {
LABEL_30:
    v19 = sub_10002E4E8(v2);
  }

  else
  {
    v19 = xpc_array_create(((v2 & 0xFFFFFFFFFFFFFF8) + 32), *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10));
  }

  v20 = v19;

  return v20;
}

uint64_t sub_10002CA98()
{
  v0 = type metadata accessor for Logger();
  sub_100025BD8(v0, qword_10008E7B0);
  sub_1000050E4(v0, qword_10008E7B0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10002CB0C()
{
  sub_100004680();
  v1[4] = v2;
  v1[5] = v0;
  v1[3] = v3;
  v1[6] = *v0;
  v4 = type metadata accessor for DispatchQoS.QoSClass();
  v1[7] = v4;
  v1[8] = *(v4 - 8);
  v1[9] = sub_100003D60();
  v5 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1[10] = v5;
  v1[11] = *(v5 - 8);
  v1[12] = sub_100003D60();
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  v1[13] = v6;
  sub_100001D80(v6);
  v1[14] = sub_100003D60();
  v7 = type metadata accessor for DispatchQoS();
  sub_100001D80(v7);
  v1[15] = sub_100003D60();

  return _swift_task_switch(sub_10002CCB0, 0, 0);
}

uint64_t sub_10002CCB0()
{
  v23 = v0;
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 24);
  swift_defaultActor_initialize();
  v2[14] = 0;
  type metadata accessor for Session(0);
  v4 = Dictionary.init(dictionaryLiteral:)();
  v2[18] = v3;
  v2[19] = v4;

  *(v0 + 128) = XPCIncomingConnection.auditToken.getter(v1);
  *(v0 + 136) = v5;
  *(v0 + 144) = v6;
  *(v0 + 152) = v7;
  if (swift_stdlib_isStackAllocationSafe())
  {
    sub_10002D198(&v21, v0 + 160, (v0 + 128), v0 + 4256);
  }

  else
  {
    v8 = swift_slowAlloc();
    sub_10002D198(&v21, v8, (v0 + 128), v8 + 4096);
    sub_100004664();
  }

  v9 = v22;
  v18 = *(v0 + 96);
  v10 = *(v0 + 88);
  v19 = *(v0 + 80);
  v12 = *(v0 + 64);
  v11 = *(v0 + 72);
  v20 = *(v0 + 56);
  v13 = *(v0 + 40);
  v13[16] = v21;
  v13[17] = v9;
  sub_10002E894();
  v21 = 0;
  v22 = 0xE000000000000000;
  _StringGuts.grow(_:)(26);

  v21 = 0xD000000000000018;
  v22 = 0x8000000100071970;
  v14 = v13[16];
  v15 = v13[17];

  v16._countAndFlagsBits = v14;
  v16._object = v15;
  String.append(_:)(v16);

  static DispatchQoS.default.getter();
  *(v0 + 16) = _swiftEmptyArrayStorage;
  sub_100015ECC(&qword_10008E8B0, 255, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000228D4(&qword_10008E8B8, &qword_10006E190);
  sub_10002E8D8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v10 + 104))(v18, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v19);
  (*(v12 + 104))(v11, enum case for DispatchQoS.QoSClass.default(_:), v20);
  static OS_dispatch_queue.global(qos:)();
  (*(v12 + 8))(v11, v20);
  v13[15] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();

  return _swift_task_switch(sub_10002D078, v13, 0);
}

uint64_t sub_10002D078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100002760();
  sub_100002618();
  v13 = *(v12 + 32);
  v14 = *(v12 + 40);
  v15 = *(v14 + 120);
  type metadata accessor for XPCConnection();
  swift_allocObject();
  v16 = v15;

  v17 = XPCConnection.init(conn:targetQ:delegate:)(v13, v16, v14, &off_100086DC8);

  *(v14 + 112) = v17;

  sub_100008E44();

  return v20(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_10002D198@<X0>(uint64_t *__return_ptr a1@<X8>, uint64_t buffer@<X0>, audit_token_t *audittoken@<X2>, uint64_t a4@<X1>)
{
  *buffer = 0;
  if (!buffer)
  {
    goto LABEL_9;
  }

  if (a4 - buffer > 0xFFFFFFFFLL)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return buffer;
  }

  buffer = proc_pidpath_audittoken(audittoken, buffer, a4 - buffer);
  if (buffer < 1)
  {
    v7 = 0xE700000000000000;
    v5 = 0x6E776F6E6B6E75;
  }

  else
  {
    v5 = String.init(cString:)();
    v7 = v6;
    v12[0] = 47;
    v12[1] = 0xE100000000000000;
    __chkstk_darwin(v5);
    v11[2] = v12;
    buffer = sub_10002E744(sub_100014E24, v11, v5, v7);
    if ((v8 & 1) == 0)
    {
      v9 = String.index(after:)();
      sub_10002D2D8(v9, v5, v7);
      v5 = static String._fromSubstring(_:)();
      v7 = v10;
    }
  }

  *a1 = v5;
  a1[1] = v7;
  return buffer;
}

unint64_t sub_10002D2D8(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 < result >> 14)
  {
    __break(1u);
  }

  else
  {
    v4 = String.subscript.getter();

    return v4;
  }

  return result;
}

BOOL sub_10002D37C()
{
  sub_10000464C();
  sub_100015ECC(v0, v1, v2, &unk_10006DFE0);
  v3 = Identifiable<>.id.getter();
  return v3 == Identifiable<>.id.getter();
}

void sub_10002D404()
{
  sub_10000464C();
  sub_100015ECC(v0, v1, v2, &unk_10006DFE0);
  v3 = Identifiable<>.id.getter();
  Hasher._combine(_:)(v3);
}

uint64_t sub_10002D48C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000228D4(&qword_10008E750, &qword_10006F860);
  sub_100001D80(v9);
  sub_100003EC8();
  __chkstk_darwin(v10);
  v12 = v27 - v11;
  sub_10002E6E0(a3, v27 - v11, &qword_10008E750, &qword_10006F860);
  v13 = type metadata accessor for TaskPriority();
  v14 = sub_10000B7A4();
  v16 = sub_100002694(v14, v15, v13);

  if (v16 == 1)
  {
    sub_1000026E4(v12, &qword_10008E750, &qword_10006F860);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_1000026E4(a3, &qword_10008E750, &qword_10006F860);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000026E4(a3, &qword_10008E750, &qword_10006F860);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

void sub_10002D764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_100010548();
  a21 = v24;
  a22 = v25;
  sub_100003EBC();
  a20 = v22;
  if (qword_10008DD30 != -1)
  {
    sub_1000097DC(&qword_10008DD30);
  }

  v26 = type metadata accessor for Logger();
  sub_10000B6D0(v26, qword_10008E7B0);
  swift_errorRetain();
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = sub_100004D20();
    sub_100004F18();
    sub_100005B3C();
    *v29 = 136446210;
    swift_getErrorValue();
    v30 = Error.localizedDescription.getter();
    v32 = sub_1000053A0(v30, v31, &a11);

    *(v29 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v27, v28, "failed initializing session: %{public}s", v29, 0xCu);
    sub_100005284(v23);
    sub_100001D1C(v23);
    sub_100004664();
  }

  reply = xpc_dictionary_create_reply(*(v22 + 96));
  if (reply)
  {
    v34 = reply;
    v35 = *(v22 + 104);
    xpc_dictionary_set_string(reply, "error", "init failed");
    v36 = *(v35 + 112);
    if (!v36)
    {
      __break(1u);
      return;
    }

    v37 = *(v36 + 16);
    swift_unknownObjectRetain();

    xpc_connection_send_message(v37, v34);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
  }

  sub_100001EF0();
  v47 = v38;

  sub_100001D4C();
  sub_100008E28();

  v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, v47, a11, a12, a13, a14);
}

void sub_10002D9D8(void *a1)
{
  v2 = v1;
  v4 = XPC_ERROR_CONNECTION_INVALID.getter();
  swift_unknownObjectRelease();
  if (v4 == a1)
  {
    if (qword_10008DD30 != -1)
    {
      sub_1000097DC(&qword_10008DD30);
    }

    v20 = type metadata accessor for Logger();
    sub_10000B6D0(v20, qword_10008E7B0);

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.info.getter();

    if (sub_100005B24())
    {
      v23 = sub_100004D20();
      v24 = sub_100004F18();
      v29 = v24;
      *v23 = 136446210;
      *(v23 + 4) = sub_1000053A0(*(v2 + 128), *(v2 + 136), &v29);
      _os_log_impl(&_mh_execute_header, v21, v22, "XPC client %{public}s closed connection", v23, 0xCu);
      sub_100005284(v24);
      sub_100004664();
      sub_100001D1C(v23);
    }

    sub_1000155B4();
  }

  else
  {
    v5 = XPC_ERROR_CONNECTION_INTERRUPTED.getter();
    swift_unknownObjectRelease();
    if (v5 == a1)
    {
      if (qword_10008DD30 != -1)
      {
        sub_1000097DC(&qword_10008DD30);
      }

      v25 = type metadata accessor for Logger();
      sub_10000B6D0(v25, qword_10008E7B0);

      oslog = Logger.logObject.getter();
      v26 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(oslog, v26))
      {
        sub_100004D20();
        v27 = sub_100004414();
        v29 = v27;
        *v5 = 136446210;
        *(v5 + 4) = sub_1000053A0(*(v2 + 128), *(v2 + 136), &v29);
        _os_log_impl(&_mh_execute_header, oslog, v26, "XPC client %{public}s interrupted connection", v5, 0xCu);
        sub_100005284(v27);
        sub_100001D1C(v27);
        sub_100003910();
      }
    }

    else
    {
      v6 = xpc_copy_description(a1);
      v7 = String.init(cString:)();
      v9 = v8;
      if (qword_10008DD30 != -1)
      {
        sub_1000097DC(&qword_10008DD30);
      }

      v10 = type metadata accessor for Logger();
      sub_10000B6D0(v10, qword_10008E7B0);

      v11 = Logger.logObject.getter();
      static os_log_type_t.info.getter();

      if (sub_1000127C4())
      {
        v12 = sub_100004D20();
        v13 = sub_100004F18();
        v29 = v13;
        *v12 = 136315138;
        v14 = sub_1000053A0(v7, v9, &v29);

        *(v12 + 4) = v14;
        sub_100003C34();
        _os_log_impl(v15, v16, v17, v18, v19, 0xCu);
        sub_100005284(v13);
        sub_100001D1C(v13);
        sub_100001D64();
      }

      else
      {
      }

      sub_1000155B4();

      free(v6);
    }
  }
}

uint64_t sub_10002DD40()
{
  sub_100004680();
  sub_100003B0C();
  sub_100001D58();
  *v2 = v1;
  v3 = *v0;
  sub_1000043E4();
  *v4 = v3;
  *(v6 + 104) = v5;

  v7 = sub_10000BE90();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10002DE58()
{
  sub_100004F30();
  if (v0[13])
  {
    v1 = v0[10];
    swift_beginAccess();
    swift_retain_n();
    swift_isUniquelyReferenced_nonNull_native();
    v5 = *(v1 + 152);
    sub_100012378();
    *(v1 + 152) = v5;
    swift_endAccess();

    v2 = v0[13];
  }

  else
  {
    v2 = 0;
  }

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_10002DF38()
{
  sub_100004680();
  sub_100003B0C();
  v1 = *v0;
  sub_1000043E4();
  *v2 = v1;

  return _swift_task_switch(sub_10002E024, 0, 0);
}

__n128 sub_10002E234(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_10002E248(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_10002E288(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_10002E2E4()
{
  sub_10000464C();
  sub_100015ECC(v0, v1, v2, &unk_10006DFA0);
  return dispatch thunk of Hashable._rawHashValue(seed:)();
}

uint64_t sub_10002E36C@<X0>(uint64_t *a3@<X8>)
{
  result = Identifiable<>.id.getter();
  *a3 = result;
  return result;
}

void *sub_10002E44C(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_5;
  }

  v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  while (1)
  {
    v2 = sub_100023370(v1, 0);

    specialized _ArrayBuffer._copyContents(initializing:)();
    v4 = v3;

    if (v4 == v1)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v1 = _CocoaArrayWrapper.endIndex.getter();
    if (!v1)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return v2;
}

xpc_object_t sub_10002E4E8(int64_t a1)
{
  v1 = sub_10002E530(a1);
  v2 = v1[2];

  return xpc_array_create(v1 + 4, v2);
}

void *sub_10002E530(int64_t a1)
{
  if (a1 < 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = (a1 & 0xFFFFFFFFFFFFFF8);
  }

  AssociatedObject = objc_getAssociatedObject(v2, _swiftEmptyArrayStorage);
  if (AssociatedObject)
  {
    v4 = AssociatedObject;
  }

  else
  {
    objc_sync_enter(v2);
    v5 = objc_getAssociatedObject(v2, _swiftEmptyArrayStorage);
    if (v5)
    {
      v4 = v5;
      swift_retain_n();
    }

    else
    {
      v4 = sub_10002E44C(a1);

      objc_setAssociatedObject(v2, _swiftEmptyArrayStorage, v4, 1);
    }

    objc_sync_exit(v2);
  }

  return v4;
}

uint64_t sub_10002E5EC(uint64_t a1)
{
  v2 = type metadata accessor for XPCObject(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002E648()
{
  v0 = swift_task_alloc();
  v1 = sub_100003900(v0);
  *v1 = v2;
  v3 = sub_10000C650(v1);

  return v4(v3);
}

uint64_t sub_10002E6E0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_1000228D4(a3, a4);
  v5 = sub_100004EA4();
  v6(v5);
  return a2;
}

unint64_t sub_10002E744(uint64_t (*a1)(void *), uint64_t a2, unint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3;
  }

  v7 = 7;
  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v7 = 11;
  }

  v8 = v7 | (v6 << 16);
  while (1)
  {
    if (v8 < 0x4000)
    {
      return 0;
    }

    v8 = String.index(before:)();
    v13[0] = String.subscript.getter();
    v13[1] = v9;
    v10 = a1(v13);
    if (v4)
    {
      break;
    }

    v11 = v10;

    if (v11)
    {
      return v8;
    }
  }

  return v8;
}

uint64_t sub_10002E888(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

unint64_t sub_10002E894()
{
  result = qword_10008E8A8;
  if (!qword_10008E8A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10008E8A8);
  }

  return result;
}

unint64_t sub_10002E8D8()
{
  result = qword_10008E8C0;
  if (!qword_10008E8C0)
  {
    sub_100025D78(&qword_10008E8B8, &qword_10006E190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E8C0);
  }

  return result;
}

uint64_t sub_10002E93C()
{
}

uint64_t sub_10002E960(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return sub_100001F2C(sub_10002E980, v2);
}

uint64_t sub_10002E980()
{
  sub_100004680();
  v1 = sub_10000DD08(v0[2], v0[3]);
  v0[5] = v2;
  if (v2)
  {
    v3 = v0[4];
    v0[6] = v1;
    v4 = *(v3 + 128);
    v0[7] = v4;

    return _swift_task_switch(sub_10002EA24, v4, 0);
  }

  else
  {
    sub_100001D4C();

    return v5();
  }
}

uint64_t sub_10002EA24()
{
  sub_100004680();
  sub_100067604(*(v0 + 48), *(v0 + 40));

  sub_100001D4C();

  return v1();
}

uint64_t sub_10002EA8C()
{
  sub_100004680();
  v1[3] = v0;
  v2 = type metadata accessor for StorebagCache.Location(0);
  sub_100001D80(v2);
  v1[4] = sub_100003D60();
  v3 = type metadata accessor for DispatchQoS.QoSClass();
  v1[5] = v3;
  v1[6] = *(v3 - 8);
  v1[7] = sub_100003D60();
  v4 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1[8] = v4;
  v1[9] = *(v4 - 8);
  v1[10] = sub_100003D60();
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  v1[11] = v5;
  sub_100001D80(v5);
  v1[12] = sub_100003D60();
  v6 = type metadata accessor for DispatchQoS();
  sub_100001D80(v6);
  v1[13] = sub_100003D60();

  return _swift_task_switch(sub_10002EBF8, 0, 0);
}

uint64_t sub_10002EBF8()
{
  v1 = v0[9];
  v7 = v0[10];
  v8 = v0[8];
  v3 = v0[6];
  v2 = v0[7];
  v9 = v0[5];
  v10 = v0[3];
  v11 = v0[4];
  swift_defaultActor_initialize();
  sub_10002E894();
  static DispatchQoS.default.getter();
  v0[2] = _swiftEmptyArrayStorage;
  sub_10000F4A8(&qword_10008E8B0, 255, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000228D4(&qword_10008E8B8, &qword_10006E190);
  sub_10000F978(&qword_10008E8C0, &qword_10008E8B8, &qword_10006E190);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v7, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v8);
  (*(v3 + 104))(v2, enum case for DispatchQoS.QoSClass.default(_:), v9);
  static OS_dispatch_queue.global(qos:)();
  (*(v3 + 8))(v2, v9);
  *(v10 + 120) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v4 = type metadata accessor for URL();
  sub_1000026BC(v11, 1, 1, v4);
  type metadata accessor for StorebagCache(0);
  swift_allocObject();
  v5 = swift_task_alloc();
  v0[14] = v5;
  *v5 = v0;
  v5[1] = sub_10002EE70;

  return sub_100065124();
}

uint64_t sub_10002EE70()
{
  sub_100004680();
  sub_100001D58();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 120) = v3;

  return _swift_task_switch(sub_10002EF68, 0, 0);
}

uint64_t sub_10002EF68()
{
  v1 = *(v0 + 24);
  *(v1 + 128) = *(v0 + 120);
  sub_1000228D4(&qword_10008E9B0, &qword_10006E198);
  v2 = type metadata accessor for NWInterface.InterfaceType();
  sub_100001EDC();
  v4 = v3;
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10006CAD0;
  (*(v4 + 104))(v6 + v5, enum case for NWInterface.InterfaceType.loopback(_:), v2);
  type metadata accessor for NWPathMonitor();
  swift_allocObject();
  *(v1 + 112) = NWPathMonitor.init(prohibitedInterfaceTypes:)();

  return _swift_task_switch(sub_10002F0B8, v1, 0);
}

uint64_t sub_10002F0B8()
{
  v1 = *(*(v0 + 24) + 120);

  v2 = v1;
  NWPathMonitor.start(queue:)();

  v3 = *(v0 + 8);
  v4 = *(v0 + 24);

  return v3(v4);
}

uint64_t sub_10002F188()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_10002F1C0()
{
  sub_10002F188();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10002F210(uint64_t a1, uint64_t a2)
{
  result = sub_10000F4A8(&qword_10008E9A0, a2, type metadata accessor for StorebagCoordinator, &unk_10006E14C);
  *(a1 + 8) = result;
  return result;
}

id sub_10002F268(uint64_t a1)
{
  URL._bridgeToObjectiveC()(__stack_chk_guard);
  v3 = v2;
  v13 = 0;
  v4 = [swift_getObjCClassFromMetadata() fileHandleForWritingToURL:v2 error:&v13];

  v5 = v13;
  if (v4)
  {
    v6 = type metadata accessor for URL();
    sub_100003C44();
    v8 = *(v7 + 8);
    v9 = v5;
    v8(a1, v6);
  }

  else
  {
    v10 = v13;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    type metadata accessor for URL();
    sub_100003C44();
    (*(v11 + 8))(a1);
  }

  return v4;
}

uint64_t sub_10002F3B0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10002F44C;

  return NSURLSession.data(for:delegate:)(a1, 0);
}

uint64_t sub_10002F44C(uint64_t a1, unint64_t a2, void *a3)
{

  if (!v3)
  {
    sub_100005954(a1, a2);
  }

  sub_100001D4C();

  return v7();
}

uint64_t sub_10002F564(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000334A8;

  return sub_10002F3B0(a1);
}

uint64_t sub_10002F5FC(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v24[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v24[-v9];
  strcpy(v25, "/tmp/rtc_mock");
  v25[7] = -4864;
  if (a1)
  {
    v11 = 0x6D69746C6165725FLL;
  }

  else
  {
    v11 = 0;
  }

  if (a1)
  {
    v12 = 0xE900000000000065;
  }

  else
  {
    v12 = 0xE000000000000000;
  }

  v13 = v12;
  String.append(_:)(*&v11);

  URL.init(fileURLWithPath:)();

  v14 = URL.checkResourceIsReachable()();
  if (v15)
  {

LABEL_10:
    v16 = [objc_opt_self() defaultManager];
    URL.path.getter();
    v17 = String._bridgeToObjectiveC()();

    [v16 createFileAtPath:v17 contents:0 attributes:0];

    goto LABEL_11;
  }

  if (!v14)
  {
    goto LABEL_10;
  }

LABEL_11:
  sub_1000326B0();
  (*(v5 + 16))(v8, v10, v4);
  v18 = sub_10002F268(v8);
  NSFileHandle.seekToEnd()();
  if (v19)
  {
    swift_unexpectedError();
    result = swift_deallocPartialClassInstance();
    __break(1u);
  }

  else
  {
    sub_1000228D4(&qword_10008EB80, &qword_10006E350);
    v20 = swift_allocObject();
    *(v20 + 24) = 0;
    *(v20 + 16) = v18;
    v21 = sub_100009AEC();
    v22(v21);
    *(v2 + 16) = v20;
    return v2;
  }

  return result;
}

uint64_t sub_10002F8E4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_10002F904, 0, 0);
}

uint64_t sub_10002F904()
{
  v1 = URLRequest.httpBody.getter();
  if (v2 >> 60 != 15)
  {
    v3 = v1;
    v4 = v2;
    v5 = *(*(v0 + 24) + 16);
    v6 = swift_task_alloc();
    *(v6 + 16) = v3;
    *(v6 + 24) = v4;
    os_unfair_lock_lock(v5 + 6);
    sub_100032694(&v5[4]);
    os_unfair_lock_unlock(v5 + 6);
    sub_100022E50(v3, v4);
  }

  sub_100001D4C();

  return v7();
}

uint64_t sub_10002F9E0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = type metadata accessor for String.Encoding();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a2;
  v18 = a3;
  sub_10002A8B8(v8, v11, v12);
  result = NSFileHandle.write<A>(contentsOf:)();
  if (!v3)
  {
    static String.Encoding.utf8.getter();
    v14 = String.data(using:allowLossyConversion:)();
    v16 = v15;
    result = (*(v7 + 8))(v10, v6);
    if (v16 >> 60 == 15)
    {
      __break(1u);
    }

    else
    {
      v17 = v14;
      v18 = v16;
      NSFileHandle.write<A>(contentsOf:)();
      return sub_100005954(v17, v18);
    }
  }

  return result;
}

uint64_t sub_10002FB4C()
{

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t sub_10002FBA8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000334A8;

  return sub_10002F8E4(a1);
}

uint64_t sub_10002FC40()
{
  v0 = type metadata accessor for Logger();
  sub_100025BD8(v0, qword_1000959C0);
  sub_1000050E4(v0, qword_1000959C0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10002FCC0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D695474736F70 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6449746E65696C63 && a2 == 0xE800000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x52656C706D61735FLL && a2 == 0xEB00000000657461;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x73746E657665 && a2 == 0xE600000000000000)
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

uint64_t sub_10002FE28(char a1)
{
  result = 0x656D695474736F70;
  switch(a1)
  {
    case 1:
      result = 0x6449746E65696C63;
      break;
    case 2:
      result = 0x52656C706D61735FLL;
      break;
    case 3:
      result = 0x73746E657665;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10002FEAC(void *a1)
{
  v3 = v1;
  v5 = sub_1000228D4(&qword_10008EBA0, &qword_10006E418);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13[-v7];
  v9 = sub_100008DE4(a1, a1[3]);
  sub_1000331A4(v9, v10, v11);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v16 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v14 = *(v3 + 32);
    v13[15] = 3;
    sub_1000228D4(&qword_10008EBB0, &qword_10006E420);
    sub_1000331F8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100030094@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10002FCC0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000300BC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10002FE20();
  *a1 = result;
  return result;
}

uint64_t sub_1000300E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1000331A4(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_100030120(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1000331A4(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

void sub_100030198(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14[2] = a3;
  v14[0] = a1;
  v14[1] = a2;
  v5 = *(v3 + OBJC_IVAR____TtC13rtcreportingd11BackendHTTP_filters);
  v6 = *(v5 + 16);
  v7 = v5 + 32;

  for (i = 0; v6 != i; ++i)
  {
    if (i >= *(v5 + 16))
    {
      __break(1u);
      return;
    }

    sub_100009658(v7, v11);
    v9 = v12;
    v10 = v13;
    sub_100008DE4(v11, v12);
    (*(v10 + 16))(v14, v9, v10);
    if (v4)
    {
      sub_100005284(v11);

      return;
    }

    sub_100005284(v11);
    v7 += 40;
  }
}

uint64_t sub_1000302B4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC13rtcreportingd11BackendHTTP_filters);
  result = v5 + 32;
  v7 = -*(v5 + 16);
  v8 = -1;
  while (1)
  {
    v9 = v7 + v8;
    if (v7 + v8 == -1)
    {
      return v9 != -1;
    }

    if (++v8 >= *(v5 + 16))
    {
      break;
    }

    v10 = result + 40;
    sub_100009658(result, v14);
    v11 = v15;
    v12 = v16;
    sub_100008DE4(v14, v15);
    v13 = (*(v12 + 24))(a1, a2, v11, v12);
    sub_100005284(v14);
    result = v10;
    if (v13)
    {
      return v9 != -1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10003039C(uint64_t a1)
{
  v2[25] = a1;
  v2[26] = v1;
  v2[27] = *v1;
  v3 = type metadata accessor for EventValue(0);
  v2[28] = v3;
  sub_10000392C(v3);
  v2[29] = v4;
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  sub_1000228D4(&qword_10008F370, &qword_10006E358);
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v2[34] = v5;
  sub_10000392C(v5);
  v2[35] = v6;
  v2[36] = swift_task_alloc();
  v7 = type metadata accessor for URLRequest();
  v2[37] = v7;
  sub_10000392C(v7);
  v2[38] = v8;
  v2[39] = swift_task_alloc();
  v9 = type metadata accessor for JSONEncoder.OutputFormatting();
  v2[40] = v9;
  sub_10000392C(v9);
  v2[41] = v10;
  v2[42] = swift_task_alloc();

  return _swift_task_switch(sub_1000305C8, v1, 0);
}

uint64_t sub_1000305C8()
{
  v133 = v0;
  v1 = v0[25];
  v2 = *(v1 + 16);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    v132[0] = _swiftEmptyArrayStorage;
    sub_10001C5CC(0, v2, 0);
    v3 = _swiftEmptyArrayStorage;
    v4 = (v1 + 48);
    do
    {
      forHTTPHeaderField = v2;
      v5 = v3;
      v6 = *(v4 - 2);
      v7 = *(v4 - 1);
      v8 = *v4;

      sub_100030198(v6, v7, v8);
      v10 = v9;
      v12 = v11;
      v14 = v13;

      v3 = v5;
      v132[0] = v5;
      v16 = *(v5 + 16);
      v15 = *(v5 + 24);
      v17 = v16 + 1;
      if (v16 >= v15 >> 1)
      {
        sub_10001C5CC((v15 > 1), v16 + 1, 1);
        v17 = v16 + 1;
        v3 = v132[0];
      }

      v3[2] = v17;
      v18 = &v3[3 * v16];
      v18[4] = v10;
      v18[5] = v12;
      v18[6] = v14;
      v4 += 3;
      v0 = forHTTPHeaderField_8;
      v2 = forHTTPHeaderField - 1;
    }

    while (forHTTPHeaderField != 1);
  }

  else
  {
    v17 = _swiftEmptyArrayStorage[2];
  }

  v19 = 0;
  v20 = 0;
  v21 = v3 + 6;
  v127 = v17;
  forHTTPHeaderFielda = _swiftEmptyArrayStorage;
  v126 = v3;
  while (v17 != v20)
  {
    if (v20 >= v3[2])
    {
      __break(1u);
      goto LABEL_74;
    }

    v22 = v0[26];
    v23 = v0;
    v24 = *(v21 - 2);
    v25 = *(v21 - 1);
    v26 = *v21;
    v132[0] = v24;
    v132[1] = v25;
    v132[2] = v26;

    if (sub_100031DD8(v132, v22))
    {
      v27 = forHTTPHeaderFielda;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10001C5CC(0, forHTTPHeaderFielda[2] + 1, 1);
        v27 = forHTTPHeaderFielda;
      }

      v29 = v27[2];
      v28 = v27[3];
      if (v29 >= v28 >> 1)
      {
        sub_10001C5CC((v28 > 1), v29 + 1, 1);
        v27 = forHTTPHeaderFielda;
      }

      v27[2] = v29 + 1;
      forHTTPHeaderFielda = v27;
      v30 = &v27[3 * v29];
      v30[4] = v24;
      v30[5] = v25;
      v30[6] = v26;
      v0 = forHTTPHeaderField_8;
      v3 = v126;
    }

    else
    {

      v0 = v23;
    }

    v17 = v127;
    v21 += 3;
    ++v20;
  }

  if (!forHTTPHeaderFielda[2])
  {

    sub_100001D8C();

    sub_100001D4C();
    goto LABEL_35;
  }

  if (qword_10008DD38 != -1)
  {
    goto LABEL_75;
  }

LABEL_21:
  v31 = type metadata accessor for Logger();
  v0[43] = sub_1000050E4(v31, qword_1000959C0);

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v132[0] = v35;
    *v34 = 134349314;
    *(v34 + 4) = forHTTPHeaderFielda[2];

    *(v34 + 12) = 2082;
    sub_1000046A8();
    sub_10003327C(v36, v37, &protocol conformance descriptor for URL);
    v38 = dispatch thunk of CustomStringConvertible.description.getter();
    v40 = sub_1000053A0(v38, v39, v132);

    *(v34 + 14) = v40;
    _os_log_impl(&_mh_execute_header, v32, v33, "submitting %{public}ld events to %{public}s", v34, 0x16u);
    sub_100005284(v35);
    sub_100001D1C(v35);
    sub_100001D1C(v34);
  }

  else
  {
  }

  v41 = sub_100031CE4();
  v42 = sub_1000302B4(0x6449746E65696C63, 0xE800000000000000);
  v43 = v0[26];
  if (v42)
  {
    v128 = 0;
    v44 = 0xE000000000000000;
  }

  else
  {
    v44 = *(v43 + OBJC_IVAR____TtC13rtcreportingd11BackendHTTP_clientID + 8);
    v128 = *(v43 + OBJC_IVAR____TtC13rtcreportingd11BackendHTTP_clientID);
  }

  v45 = *(v43 + OBJC_IVAR____TtC13rtcreportingd11BackendHTTP_samplingThreshold);
  v46 = forHTTPHeaderFielda[2];
  v47 = _swiftEmptyArrayStorage;
  if (v46)
  {
    v132[0] = _swiftEmptyArrayStorage;
    sub_100060C64(0, v46, 0);
    v47 = v132[0];
    v48 = *(v132[0] + 16);
    v49 = forHTTPHeaderFielda + 6;
    do
    {
      v50 = *v49;
      v132[0] = v47;
      v51 = v47[3];

      if (v48 >= v51 >> 1)
      {
        sub_100060C64((v51 > 1), v48 + 1, 1);
        v47 = v132[0];
      }

      v47[2] = v48 + 1;
      v47[v48 + 4] = v50;
      v49 += 3;
      ++v48;
      --v46;
    }

    while (v46);
  }

  v52 = forHTTPHeaderField_8[40];
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  forHTTPHeaderField_8[44] = JSONEncoder.init()();
  sub_1000228D4(&qword_10008E6B0, &qword_10006DC00);
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_10006CAD0;
  static JSONEncoder.OutputFormatting.prettyPrinted.getter();
  forHTTPHeaderField_8[20] = v53;
  sub_10003327C(&qword_10008E6B8, &type metadata accessor for JSONEncoder.OutputFormatting, &protocol conformance descriptor for JSONEncoder.OutputFormatting);
  sub_1000228D4(&qword_10008E6C0, &qword_10006DC08);
  sub_100032A78();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v54 = dispatch thunk of JSONEncoder.outputFormatting.setter();
  *(forHTTPHeaderField_8 + 12) = v41;
  forHTTPHeaderField_8[13] = v128;
  forHTTPHeaderField_8[14] = v44;
  forHTTPHeaderField_8[15] = v45;
  forHTTPHeaderField_8[16] = v47;
  sub_100032ADC(v54, v55, v56);
  v57 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  forHTTPHeaderField_8[45] = v19;
  forHTTPHeaderField_8[46] = v57;
  forHTTPHeaderField_8[47] = v58;
  if (v19)
  {

    sub_100001D8C();

    sub_100001D4C();
LABEL_35:
    sub_10000CD5C();

    __asm { BRAA            X1, X16 }
  }

  if (qword_10008DDD0 != -1)
  {
    v57 = swift_once();
  }

  if (byte_100095B10)
  {

    v62 = forHTTPHeaderField_8[46];
    v63 = forHTTPHeaderField_8[47];
    (*(forHTTPHeaderField_8[35] + 16))(forHTTPHeaderField_8[36], forHTTPHeaderField_8[26] + OBJC_IVAR____TtC13rtcreportingd11BackendHTTP_url, forHTTPHeaderField_8[34]);
    URLRequest.init(url:cachePolicy:timeoutInterval:)();
    v64 = sub_100004EA4();
    sub_100032098(v64, v65);
    sub_10000BBB4();
    if (!v71 & v70)
    {
      sub_100025CD8(forHTTPHeaderField_8[46], forHTTPHeaderField_8[47]);
    }

    else
    {
      v72 = sub_100003B18();
      sub_100025CD8(v72, v73);
      sub_100003B18();
    }

    forHTTPHeaderField_8[52] = v63;
    forHTTPHeaderField_8[53] = v62;
    URLRequest.httpBody.setter();
    URLRequest.httpMethod.setter();
    if (v62 >> 60 != 15)
    {
      sub_100009AF8("Content-Encoding");
    }

    v74 = forHTTPHeaderField_8[39];
    v121 = forHTTPHeaderField_8[30];
    v123 = forHTTPHeaderField_8[29];
    v125 = forHTTPHeaderField_8[32];
    v75 = forHTTPHeaderField_8[26];
    v76.value._countAndFlagsBits = sub_10000BEA0();
    v77._object = 0xE600000000000000;
    URLRequest.setValue(_:forHTTPHeaderField:)(v76, v77);
    sub_100002908();
    v78.value._countAndFlagsBits = sub_10000BEA0();
    v79._countAndFlagsBits = forHTTPHeaderField_8;
    URLRequest.setValue(_:forHTTPHeaderField:)(v78, v79);
    forHTTPHeaderField_8[21] = Data.count.getter();
    v80 = dispatch thunk of CustomStringConvertible.description.getter();
    sub_100009038(v80, v81);

    memcpy(forHTTPHeaderField_8 + 2, (v75 + OBJC_IVAR____TtC13rtcreportingd11BackendHTTP_extraHeaders), 0x50uLL);
    v19 = 0;
    v82 = sub_100023C54() + 64;
    sub_10000981C();
    while (1)
    {
      while (1)
      {
        if (!v52)
        {
          v0 = forHTTPHeaderField_8;
          while (1)
          {
            v83 = v19 + 1;
            if (__OFADD__(v19, 1))
            {
              break;
            }

            if (v83 >= v74)
            {
              v113 = forHTTPHeaderField_8[32];
              v114 = sub_1000228D4(&unk_10008FD40, &unk_100070040);
              sub_1000026BC(v113, 1, 1, v114);
              v52 = 0;
              goto LABEL_60;
            }

            v52 = *(v82 + 8 * v83);
            ++v19;
            if (v52)
            {
              v19 = v83;
              goto LABEL_59;
            }
          }

LABEL_74:
          __break(1u);
LABEL_75:
          swift_once();
          goto LABEL_21;
        }

        v0 = forHTTPHeaderField_8;
LABEL_59:
        v84 = v0[32];
        sub_100007A54();
        v86 = *v85;
        sub_10000B708(v87, v119, v121, v123);
        v88 = sub_1000228D4(&unk_10008FD40, &unk_100070040);
        *v84 = v86;
        v96 = sub_100003C54(v88, v89, v90, v91, v92, v93, v94, v95, v120, v122, v124, v125);
        v0 = forHTTPHeaderField_8;
        sub_1000166B4(v96, v97);
        v98 = sub_100012478();
        sub_1000026BC(v98, v99, v100, v101);

LABEL_60:
        v102 = v0[33];
        sub_1000164F4(v0[32], v102);
        v103 = sub_1000228D4(&unk_10008FD40, &unk_100070040);
        if (sub_100002694(v102, 1, v103) == 1)
        {

          sub_1000170E0(OBJC_IVAR____TtC13rtcreportingd11BackendHTTP_target);
          v115 = swift_task_alloc();
          v0[54] = v115;
          *v115 = v0;
          sub_100001F34(v115);
          sub_100011958(v0[39]);
          sub_10000CD5C();

          __asm { BRAA            X3, X16 }
        }

        v104 = v0[33];
        forHTTPHeaderFielda = *v104;
        sub_10000C670(v104);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v106 = v0[30];
        if (EnumCaseMultiPayload)
        {
          break;
        }

        v107 = *v106;
        v109 = *(v121 + 8);
LABEL_67:
        v111 = v109;
        v112._countAndFlagsBits = forHTTPHeaderFielda;
        v112._object = &unk_100070040;
        URLRequest.setValue(_:forHTTPHeaderField:)(*&v107, v112);
      }

      if (EnumCaseMultiPayload == 2)
      {
        forHTTPHeaderField_8[22] = *v106;
        v107 = dispatch thunk of CustomStringConvertible.description.getter();
        v109 = v110;
        goto LABEL_67;
      }

      if (EnumCaseMultiPayload == 1)
      {
        forHTTPHeaderField_8[23] = *v106;
        v107 = dispatch thunk of CustomStringConvertible.description.getter();
        v109 = v108;
        goto LABEL_67;
      }

      sub_10001C5EC(v106);
    }
  }

  v66 = qword_100095AF8;
  forHTTPHeaderField_8[48] = qword_100095AF8;
  if (v66)
  {
    v67 = forHTTPHeaderField_8[26];

    v68 = v67 + OBJC_IVAR____TtC13rtcreportingd11BackendHTTP_name;
    forHTTPHeaderField_8[49] = *(v67 + OBJC_IVAR____TtC13rtcreportingd11BackendHTTP_name);
    forHTTPHeaderField_8[50] = *(v68 + 8);
    sub_10000CD5C();
  }

  else
  {
    __break(1u);
  }

  return _swift_task_switch(v57, v58, v59);
}

uint64_t sub_10003130C()
{
  v1 = *(v0 + 360);
  sub_10002A0C8(*(v0 + 392), *(v0 + 400), *(v0 + 368));
  *(v0 + 408) = v1;
  if (v1)
  {
    v2 = *(v0 + 208);
    v3 = sub_100031B4C;
  }

  else
  {
    v4 = *(v0 + 208);

    v3 = sub_1000313B0;
    v2 = v4;
  }

  return _swift_task_switch(v3, v2, 0);
}

void sub_1000313B0()
{
  v80 = v0;
  v2 = v0[51];
  v3 = v0[46];
  v4 = v0[47];
  v5 = v0[36];
  (*(v0[35] + 16))(v5, v0[26] + OBJC_IVAR____TtC13rtcreportingd11BackendHTTP_url, v0[34]);
  URLRequest.init(url:cachePolicy:timeoutInterval:)();
  v6 = sub_100004EA4();
  sub_100032098(v6, v7);
  v77 = v0;
  if (v2)
  {
    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    v10 = os_log_type_enabled(v8, v9);
    v5 = v0[46];
    if (v10)
    {
      v11 = swift_slowAlloc();
      v1 = swift_slowAlloc();
      v79 = v1;
      *v11 = 136446210;
      swift_getErrorValue();
      v12 = Error.localizedDescription.getter();
      v14 = sub_1000053A0(v12, v13, &v79);

      *(v11 + 4) = v14;
      sub_100011728(&_mh_execute_header, v15, v16, "failed to compress payload: %{public}s");
      sub_100005284(v1);
      sub_100001D1C(v1);
      sub_100001D1C(v11);
    }

    else
    {
    }

    v19 = sub_100009AEC();
    sub_100025CD8(v19, v20);
    v4 = 0;
    v3 = 0xF000000000000000;
  }

  else
  {
    sub_10000BBB4();
    if (!v18 & v17)
    {
      sub_100025CD8(v0[46], v0[47]);
    }

    else
    {
      v21 = sub_100003B18();
      sub_100025CD8(v21, v22);
      sub_100003B18();
    }
  }

  v0[52] = v4;
  v0[53] = v3;
  URLRequest.httpBody.setter();
  URLRequest.httpMethod.setter();
  if (v3 >> 60 != 15)
  {
    sub_100009AF8("Content-Encoding");
  }

  v23 = v0[39];
  v72 = v0[30];
  v74 = v0[29];
  v76 = v0[32];
  v24 = v0[26];
  v25.value._countAndFlagsBits = sub_10000BEA0();
  v26._object = 0xE600000000000000;
  URLRequest.setValue(_:forHTTPHeaderField:)(v25, v26);
  sub_100002908();
  v27.value._countAndFlagsBits = sub_10000BEA0();
  v28._countAndFlagsBits = v5;
  URLRequest.setValue(_:forHTTPHeaderField:)(v27, v28);
  v0[21] = Data.count.getter();
  v29 = dispatch thunk of CustomStringConvertible.description.getter();
  sub_100009038(v29, v30);

  v31 = (v24 + OBJC_IVAR____TtC13rtcreportingd11BackendHTTP_extraHeaders);
  v32 = v0;
  memcpy(v0 + 2, v31, 0x50uLL);
  v33 = 0;
  v34 = sub_100023C54() + 64;
  sub_10000981C();
  while (v1)
  {
LABEL_17:
    v36 = v32[32];
    sub_100007A54();
    v38 = *v37;
    sub_10000B708(v39, v70, v72, v74);
    v40 = sub_1000228D4(&unk_10008FD40, &unk_100070040);
    *v36 = v38;
    v32 = v77;
    v48 = sub_100003C54(v40, v41, v42, v43, v44, v45, v46, v47, v71, v73, v75, v76);
    sub_1000166B4(v48, v49);
    v50 = sub_100012478();
    sub_1000026BC(v50, v51, v52, v53);

LABEL_18:
    v54 = v32[33];
    sub_1000164F4(v32[32], v54);
    v55 = sub_1000228D4(&unk_10008FD40, &unk_100070040);
    if (sub_100002694(v54, 1, v55) == 1)
    {

      sub_1000170E0(OBJC_IVAR____TtC13rtcreportingd11BackendHTTP_target);
      v78 = (v67 + *v67);
      v68 = swift_task_alloc();
      v32[54] = v68;
      *v68 = v32;
      sub_100001F34(v68);
      v69 = sub_100011958(v32[39]);

      v78(v69);
      return;
    }

    v56 = v32[33];
    v57 = *v56;
    sub_10000C670(v56);
    v32 = v77;
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v59 = v77[30];
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v77[22] = *v59;
        goto LABEL_24;
      }

      if (EnumCaseMultiPayload == 1)
      {
        v77[23] = *v59;
LABEL_24:
        v60 = dispatch thunk of CustomStringConvertible.description.getter();
        v62 = v61;
        goto LABEL_26;
      }

      sub_10001C5EC(v59);
    }

    else
    {
      v60 = *v59;
      v62 = *(v72 + 8);
LABEL_26:
      v63 = v62;
      v64._countAndFlagsBits = v57;
      v64._object = &unk_10008FD40;
      URLRequest.setValue(_:forHTTPHeaderField:)(*&v60, v64);
    }
  }

  while (1)
  {
    v35 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    if (v35 >= v23)
    {
      v65 = v32[32];
      v66 = sub_1000228D4(&unk_10008FD40, &unk_100070040);
      sub_1000026BC(v65, 1, 1, v66);
      v1 = 0;
      goto LABEL_18;
    }

    v1 = *(v34 + 8 * v35);
    ++v33;
    if (v1)
    {
      v33 = v35;
      goto LABEL_17;
    }
  }

  __break(1u);
}

uint64_t sub_100031940()
{
  v2 = *v1;
  *(*v1 + 440) = v0;

  v3 = *(v2 + 208);
  if (v0)
  {
    v4 = sub_100031C10;
  }

  else
  {
    v4 = sub_100031A6C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100031A6C()
{
  sub_100007BEC();
  sub_100005954(v1, v0);
  v5 = sub_100004EA4();
  sub_100022E50(v5, v6);
  (*(v4 + 8))(v2, v3);
  sub_100001D8C();

  sub_100001D4C();

  return v7();
}

uint64_t sub_100031B4C()
{

  v0 = sub_100004EA4();
  sub_100005954(v0, v1);

  sub_100004F3C();

  sub_100001D4C();

  return v2();
}

uint64_t sub_100031C10()
{
  sub_100007BEC();
  sub_100005954(v1, v0);
  v5 = sub_100004EA4();
  sub_100022E50(v5, v6);
  (*(v4 + 8))(v2, v3);
  sub_100004F3C();

  sub_100001D4C();

  return v7();
}

double sub_100031CE4()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000302B4(0x656D695474736F70, 0xE800000000000000);
  result = 0.0;
  if ((v4 & 1) == 0)
  {
    static Date.now.getter();
    getTimeIntervalSince1970(Date:)();
    v7 = v6;
    (*(v1 + 8))(v3, v0);
    return v7;
  }

  return result;
}

uint64_t sub_100031DD8(uint64_t *a1, uint64_t a2)
{
  v3 = sub_10001BD74(*a1, a1[1], a1[2]);
  if (v4)
  {
    return 1;
  }

  v5 = v3;
  v6 = *(a2 + OBJC_IVAR____TtC13rtcreportingd11BackendHTTP_allowedCategories);
  if (*(v6 + 16) && (sub_100047B2C(v3, v6) & 1) == 0)
  {
    if (qword_10008DD38 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_1000050E4(v18, qword_1000959C0);

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v9, v10))
    {
      goto LABEL_16;
    }

    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22 = v12;
    *v11 = 134218242;
    *(v11 + 4) = v5;
    *(v11 + 12) = 2082;
    v19 = sub_100032198();
    v21 = sub_1000053A0(v19, v20, &v22);

    *(v11 + 14) = v21;
    v16 = "removing event with category %ld from submission to %{public}s due to allowlist";
    goto LABEL_15;
  }

  v7 = *(a2 + OBJC_IVAR____TtC13rtcreportingd11BackendHTTP_deniedCategories);
  if (!*(v7 + 16) || (sub_100047B2C(v5, v7) & 1) == 0)
  {
    return 1;
  }

  if (qword_10008DD38 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_1000050E4(v8, qword_1000959C0);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  if (!os_log_type_enabled(v9, v10))
  {
    goto LABEL_16;
  }

  v11 = swift_slowAlloc();
  v12 = swift_slowAlloc();
  v22 = v12;
  *v11 = 134218242;
  *(v11 + 4) = v5;
  *(v11 + 12) = 2082;
  v13 = sub_100032198();
  v15 = sub_1000053A0(v13, v14, &v22);

  *(v11 + 14) = v15;
  v16 = "removing event with category %ld from submission to %{public}s due to denylist";
LABEL_15:
  _os_log_impl(&_mh_execute_header, v9, v10, v16, v11, 0x16u);
  sub_100005284(v12);

LABEL_16:

  return 0;
}

uint64_t sub_100032098(uint64_t result, unint64_t a2)
{
  v4 = result;
  switch(a2 >> 62)
  {
    case 1uLL:
      if (result >> 32 >= result)
      {
        sub_100025CD8(result, a2);
        v9 = sub_100009AEC();
        goto LABEL_9;
      }

      __break(1u);
      break;
    case 2uLL:
      v6 = *(result + 16);
      v7 = *(result + 24);
      sub_100025CD8(result, a2);
      v8 = &v11;
      v9 = v6;
      v10 = v7;
LABEL_9:
      result = sub_100032BC8(v9, v10, v4, a2, v8);
      if (!v2)
      {
        goto LABEL_10;
      }

      break;
    case 3uLL:
      result = 0;
      v5 = 0;
      goto LABEL_5;
    default:
      v5 = a2 & 0xFFFFFFFFFFFFFFLL;
LABEL_5:
      result = sub_100032B30(result, v5, v4, a2, &v11);
      if (!v2)
      {
LABEL_10:
        result = v11;
      }

      break;
  }

  return result;
}

uint64_t sub_100032198()
{
  String.append(_:)(*(v0 + OBJC_IVAR____TtC13rtcreportingd11BackendHTTP_name));
  v1._countAndFlagsBits = 539828258;
  v1._object = 0xE400000000000000;
  String.append(_:)(v1);
  type metadata accessor for URL();
  sub_1000046A8();
  sub_10003327C(v2, v3, &protocol conformance descriptor for URL);
  v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 41;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  return 8744;
}

uint64_t sub_100032270()
{

  v1 = OBJC_IVAR____TtC13rtcreportingd11BackendHTTP_url;
  type metadata accessor for URL();
  sub_100003C44();
  (*(v2 + 8))(v0 + v1);
  sub_100005284((v0 + OBJC_IVAR____TtC13rtcreportingd11BackendHTTP_target));

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_100032380()
{
  sub_100032270();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for BackendHTTP(uint64_t a1)
{
  result = qword_10008EA80;
  if (!qword_10008EA80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100032400(uint64_t a1)
{
  result = type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1000324EC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100032580;

  return sub_10003039C(a1);
}

uint64_t sub_100032580()
{

  sub_100001D4C();

  return v0();
}

unint64_t sub_1000326B0()
{
  result = qword_10008E708;
  if (!qword_10008E708)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10008E708);
  }

  return result;
}

uint64_t sub_1000326F4@<X0>(Bytef *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2 - a1;
  memset(&strm.zfree, 0, 40);
  if (a1)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  memset(&strm.avail_in, 0, 64);
  if ((v12 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (HIDWORD(v12))
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  strm.avail_in = v12;
  if (!a1)
  {
    goto LABEL_24;
  }

  strm.next_in = a1;
  v13 = deflateInit2_(&strm, -1, 8, 31, 8, 0, "1.2.12", 112);
  if (v13)
  {
    v16 = v13;
    sub_100032C88(v13, v14, v15);
    swift_allocError();
    *v17 = v16;
    return swift_willThrow();
  }

  if ((deflateBound(&strm, v11) & 0x8000000000000000) != 0)
  {
    goto LABEL_22;
  }

  v31 = Data.init(count:)();
  v32 = v19;
  v20 = sub_100032CDC(&v31, &strm);
  if (v20 != 1)
  {
    v24 = v20;
    Logger.init()();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 67240192;
      *(v27 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v25, v26, "zlib returned unexpected status %{public}d", v27, 8u);
    }

    (*(v8 + 8))(v10, v7);
    *a4 = xmmword_10006E1C0;
    v28 = v31;
    v29 = v32;
    goto LABEL_19;
  }

  if ((strm.total_out & 0x8000000000000000) != 0)
  {
    goto LABEL_23;
  }

  Data._Representation.count.setter();
  v21 = v31;
  v22 = v32;
  v23 = Data.count.getter();
  if (v23 >= Data.count.getter())
  {
    *a4 = xmmword_10006E1C0;
  }

  else
  {
    *a4 = v21;
    *(a4 + 8) = v22;
    sub_100025CD8(v21, v22);
  }

  v28 = v21;
  v29 = v22;
LABEL_19:
  sub_100005954(v28, v29);
  return deflateEnd(&strm);
}

uint64_t sub_1000329F4@<X0>(z_streamp strm@<X2>, uint64_t result@<X0>, uint64_t a3@<X1>, _DWORD *a4@<X8>)
{
  if (result)
  {
    v5 = a3 - result;
  }

  else
  {
    v5 = 0;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  total_out = strm->total_out;
  v7 = v5 >= total_out;
  v8 = v5 - total_out;
  if (!v7)
  {
    goto LABEL_12;
  }

  if (HIDWORD(v8))
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  strm->avail_out = v8;
  if (result)
  {
    if ((total_out & 0x8000000000000000) == 0)
    {
      strm->next_out = (total_out + result);
      result = deflate(strm, 4);
      *a4 = result;
      return result;
    }

    goto LABEL_14;
  }

LABEL_15:
  __break(1u);
  return result;
}

unint64_t sub_100032A78()
{
  result = qword_10008E6C8;
  if (!qword_10008E6C8)
  {
    sub_100025D78(&qword_10008E6C0, &qword_10006DC08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E6C8);
  }

  return result;
}

unint64_t sub_100032ADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10008EB90;
  if (!qword_10008EB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008EB90);
  }

  return result;
}

uint64_t sub_100032B30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = a1;
  v10 = WORD2(a2);
  v9 = a2;
  sub_1000326F4(&v8, &v8 + BYTE6(a2), a5);
  return sub_100005954(a3, a4);
}

Bytef *sub_100032BC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, unint64_t a4@<X4>, uint64_t a5@<X8>)
{
  result = __DataStorage._bytes.getter();
  v11 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  v12 = __OFSUB__(a2, a1);
  v13 = a2 - a1;
  if (v12)
  {
    __break(1u);
    goto LABEL_13;
  }

  v14 = __DataStorage._length.getter();
  if (v14 >= v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  v16 = &v11[v15];
  if (v11)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  sub_1000326F4(v11, v17, a5);
  return sub_100005954(a3, a4);
}

unint64_t sub_100032C88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10008EB98;
  if (!qword_10008EB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008EB98);
  }

  return result;
}

uint64_t sub_100032CDC(uint64_t *a1, z_streamp strm)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = v2;
  switch(v3 >> 62)
  {
    case 1uLL:
      v11 = v3 & 0x3FFFFFFFFFFFFFFFLL;

      sub_100005954(v4, v3);
      *a1 = xmmword_10006E1D0;
      sub_100005954(0, 0xC000000000000000);
      v12 = v4 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_14;
      }

      if (v12 < v4)
      {
        goto LABEL_18;
      }

      if (__DataStorage._bytes.getter() && __OFSUB__(v4, __DataStorage._offset.getter()))
      {
        goto LABEL_19;
      }

      type metadata accessor for __DataStorage();
      swift_allocObject();
      v13 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

      v11 = v13;
LABEL_14:
      if (v12 < v4)
      {
        __break(1u);
LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
      }

      v5 = sub_100033058(v4, v4 >> 32, v11, strm);

      *a1 = v4;
      a1[1] = v11 | 0x4000000000000000;
      return v5;
    case 2uLL:

      sub_100005954(v4, v3);
      *&v17 = v4;
      *(&v17 + 1) = v3 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_10006E1D0;
      sub_100005954(0, 0xC000000000000000);
      Data.LargeSlice.ensureUniqueReference()();
      v9 = *(&v17 + 1);
      v10 = sub_100033058(*(v17 + 16), *(v17 + 24), *(&v17 + 1), strm);
      *a1 = v17;
      a1[1] = v9 | 0x8000000000000000;
      if (!v2)
      {
        return v10;
      }

      return v5;
    case 3uLL:
      *(&v17 + 7) = 0;
      *&v17 = 0;
      sub_1000329F4(strm, &v17, &v17, &v16);
      if (!v2)
      {
        return v16;
      }

      return v5;
    default:
      v5 = v4 >> 40;
      sub_100005954(v4, v3);
      *&v17 = v4;
      WORD4(v17) = v3;
      BYTE10(v17) = BYTE2(v3);
      BYTE11(v17) = BYTE3(v3);
      BYTE12(v17) = BYTE4(v3);
      BYTE13(v17) = BYTE5(v3);
      BYTE14(v17) = BYTE6(v3);
      sub_1000329F4(strm, &v17, &v17 + BYTE6(v3), &v16);
      if (!v2)
      {
        v5 = v16;
      }

      v8 = DWORD2(v17) | ((WORD6(v17) | (BYTE14(v17) << 16)) << 32);
      *a1 = v17;
      a1[1] = v8;
      return v5;
  }
}

uint64_t sub_100033058(uint64_t a1, uint64_t a2, uint64_t a3, z_stream *a4)
{
  result = __DataStorage._bytes.getter();
  if (!result)
  {
    goto LABEL_12;
  }

  v9 = result;
  result = __DataStorage._offset.getter();
  v10 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v11 = __OFSUB__(a2, a1);
  v12 = a2 - a1;
  if (v11)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v13 = __DataStorage._length.getter();
  if (v13 >= v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  result = sub_1000329F4(a4, v9 + v10, v9 + v10 + v14, &v15);
  if (!v4)
  {
    return v15;
  }

  return result;
}

uint64_t sub_10003310C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_10003314C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000331A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10008EBA8;
  if (!qword_10008EBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008EBA8);
  }

  return result;
}

unint64_t sub_1000331F8()
{
  result = qword_10008EBB8;
  if (!qword_10008EBB8)
  {
    sub_100025D78(&qword_10008EBB0, &qword_10006E420);
    sub_10000847C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008EBB8);
  }

  return result;
}

uint64_t sub_10003327C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_BYTE *storeEnumTagSinglePayload for BackendHTTP.POSTData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1000333A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10008EBC0;
  if (!qword_10008EBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008EBC0);
  }

  return result;
}

unint64_t sub_1000333FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10008EBC8;
  if (!qword_10008EBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008EBC8);
  }

  return result;
}

unint64_t sub_100033454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10008EBD0;
  if (!qword_10008EBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008EBD0);
  }

  return result;
}

uint64_t sub_1000334AC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000334FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void *sub_100033554(void *result, int a2)
{
  if (a2 < 0)
  {
    result[1] = 0;
    result[2] = 0;
    *result = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_100033584(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x73746E65696C63 && a2 == 0xE700000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_100033600@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100033584(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_100033638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10001D044(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_100033674(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10001D044(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

uint64_t sub_1000336B0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10001CE18(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

unint64_t sub_1000336E0()
{
  result = qword_10008EBF0;
  if (!qword_10008EBF0)
  {
    v1 = sub_100025D78(&qword_10008EBE8, &qword_10006E5D8);
    sub_100033764(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008EBF0);
  }

  return result;
}

unint64_t sub_100033764(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10008EBF8;
  if (!qword_10008EBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008EBF8);
  }

  return result;
}

uint64_t sub_1000337C4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_100033804(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_100033854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10008EC00;
  if (!qword_10008EC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008EC00);
  }

  return result;
}

unint64_t sub_1000338AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10008EC08;
  if (!qword_10008EC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008EC08);
  }

  return result;
}

unint64_t sub_100033904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10008EC10;
  if (!qword_10008EC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008EC10);
  }

  return result;
}

void *sub_100033958(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1000228D4(&qword_10008EE20, &qword_10006E8C0);
    v1 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v1 = &_swiftEmptyDictionarySingleton;
  }

  v4 = v1;

  sub_1000378FC(v2, 1, &v4);

  return v4;
}

uint64_t sub_100033A0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = v3 - 1;
    v6 = type metadata accessor for URL();
    (*(*(v6 - 8) + 16))(a2, a1 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 72) * v5, v6);
    v7 = a2;
    v8 = 0;
    v9 = 1;
    v10 = v6;
  }

  else
  {
    type metadata accessor for URL();
    sub_1000058C8();
  }

  return sub_1000026BC(v7, v8, v9, v10);
}

uint64_t sub_100033AD0()
{
  v0 = type metadata accessor for Logger();
  sub_100025BD8(v0, qword_10008EC18);
  sub_1000050E4(v0, qword_10008EC18);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100033B9C()
{
  sub_100004680();
  *(v1 + 120) = v0;
  *(v1 + 304) = v2;
  *(v1 + 128) = *v0;
  v3 = sub_1000228D4(&qword_10008EE10, &qword_10006E8B8);
  *(v1 + 136) = v3;
  *(v1 + 144) = *(v3 - 8);
  *(v1 + 152) = swift_task_alloc();

  return _swift_task_switch(sub_100033C90, 0, 0);
}

uint64_t sub_100033C90()
{
  sub_100002624();
  v1 = v0[15];
  swift_defaultActor_initialize();
  sub_10000534C();
  *(v1 + 120) = Dictionary.init(dictionaryLiteral:)();
  *(v1 + 128) = 0;
  *(v1 + 136) = &_swiftEmptySetSingleton;
  sub_1000228D4(&qword_10008F3B0, &unk_10006E8A0);
  sub_10000534C();
  *(v1 + 144) = Dictionary.init(dictionaryLiteral:)();
  *(v1 + 152) = 0;
  v0[20] = type metadata accessor for CachedSession(0);
  sub_10000534C();
  *(v1 + 168) = Dictionary.init(dictionaryLiteral:)();
  type metadata accessor for StorebagCoordinator();
  swift_allocObject();
  v2 = swift_task_alloc();
  v0[21] = v2;
  *v2 = v0;
  sub_10000BBC8(v2);

  return sub_10002EA8C();
}

uint64_t sub_100033DC8()
{
  sub_100004680();
  sub_100003B0C();
  *(v1 + 176) = v0;

  return _swift_task_switch(sub_100033EC0, 0, 0);
}

uint64_t sub_100033EC0()
{
  sub_100002624();
  v1 = *(v0 + 120);
  *(v1 + 112) = *(v0 + 176);
  v2 = type metadata accessor for SubmitEagerEventsActivity();
  v3 = sub_100016084(&qword_10008EE18, 255, type metadata accessor for SubmitEagerEventsActivity, &unk_10006ED10);
  type metadata accessor for XPCActivity();
  swift_allocObject();
  *(v1 + 160) = sub_10004A850(v2, v3);
  v4 = sub_10000BE90();

  return _swift_task_switch(v4, v5, v6);
}

void sub_100033F9C()
{
  sub_100004680();
  if (*(v0 + 304))
  {

    sub_10000FF74();
    v2 = *(v0 + 120);

    v1(v2);
  }

  else
  {
    v3 = qword_100095AD8;
    *(v0 + 184) = qword_100095AD8;
    if (v3)
    {

      v4 = swift_task_alloc();
      *(v0 + 192) = v4;
      *v4 = v0;
      sub_10000BBC8(v4);

      sub_10003ACEC(5);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_100034084()
{
  sub_100002624();
  v2 = v0;
  sub_100003B0C();
  v4 = v3;
  sub_100002928();
  *v5 = v4;
  v6 = *v1;
  sub_1000043E4();
  *v7 = v6;
  v4[25] = v8;
  v4[26] = v2;

  sub_100001F64();
  v4[27] = sub_100016084(v9, v10, v11, &unk_10006E838);
  swift_getObjectType();
  v13 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v2)
  {
    v14 = sub_100034DF8;
  }

  else
  {
    v14 = sub_100034204;
  }

  return _swift_task_switch(v14, v13, v12);
}

uint64_t sub_100034488()
{
  v2 = *v1;
  sub_1000043E4();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 248) = v0;

  if (v0)
  {

    swift_getObjectType();
    dispatch thunk of Actor.unownedExecutor.getter();
    sub_100005B48();
    v6 = sub_100034F48;
  }

  else
  {

    swift_getObjectType();
    dispatch thunk of Actor.unownedExecutor.getter();
    sub_100005B48();
    v6 = sub_100034614;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_100034778()
{
  sub_100002624();
  v3 = v2;
  sub_100003B0C();
  v5 = v4;
  sub_100002928();
  *v6 = v5;
  v7 = *v1;
  sub_1000043E4();
  *v8 = v7;

  if (v0)
  {

    sub_100001F64();
    sub_100016084(v9, v10, v11, &unk_10006E838);
    v12 = swift_task_alloc();
    *(v5 + 280) = v12;
    *v12 = v7;
    v13 = sub_100003C68(v12);

    return sub_100036630(v13);
  }

  else
  {

    *(v5 + 272) = v3;
    sub_100001F64();
    sub_100016084(v15, v16, v17, &unk_10006E838);
    swift_getObjectType();
    dispatch thunk of Actor.unownedExecutor.getter();
    sub_100005B48();
    v18 = sub_100004D54();

    return _swift_task_switch(v18, v19, v20);
  }
}

uint64_t sub_10003493C()
{
  sub_100002624();
  v1 = *(*(v0 + 272) + 16);

  if (v1)
  {
    if (qword_10008DD40 != -1)
    {
      sub_10000986C();
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000B6D0(v2, qword_10008EC18);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (sub_100003B24(v4))
    {
      v5 = sub_10001196C();
      sub_100009140(v5);
      sub_1000028B8();
      _os_log_impl(v6, v7, v8, v9, v10, 2u);
      sub_100003910();
    }

    byte_10008F120 = 0;
  }

  v11 = swift_task_alloc();
  *(v0 + 280) = v11;
  *v11 = v0;
  v12 = sub_100003C68(v11);

  return sub_100036630(v12);
}

uint64_t sub_100034A48()
{
  sub_100002624();
  sub_100003B0C();
  v2 = v1;
  sub_100002928();
  *v3 = v2;
  v4 = *v0;
  sub_1000043E4();
  *v5 = v4;

  sub_100001F64();
  *(v2 + 288) = sub_100016084(v6, v7, v8, &unk_10006E838);
  swift_getObjectType();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_100005B48();
  v9 = sub_100004D54();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_100034B84()
{
  sub_100004680();
  v1 = *(*(v0 + 120) + 160);
  *(v0 + 296) = v1;

  return _swift_task_switch(sub_100034BF8, v1, 0);
}

uint64_t sub_100034BF8()
{
  sub_100002624();
  sub_1000490A4(2);

  swift_getObjectType();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_100005B48();
  v0 = sub_100004D54();

  return _swift_task_switch(v0, v1, v2);
}

uint64_t sub_100034C84()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = [objc_opt_self() defaultCenter];
  v4 = MCEffectiveSettingsChangedNotification;
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = v2;
  v0[6] = sub_1000385BC;
  v0[7] = v5;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_1000352CC;
  v0[5] = &unk_1000873A0;
  v6 = _Block_copy(v0 + 2);

  v7 = [v3 addObserverForName:v4 object:0 queue:0 usingBlock:v6];
  _Block_release(v6);

  swift_unknownObjectRelease();

  sub_10000FF74();
  v9 = v0[15];

  return v8(v9);
}

uint64_t sub_100035098(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000228D4(&qword_10008E750, &qword_10006F860);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  if (qword_10008DD40 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000050E4(v6, qword_10008EC18);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "received notification for MC effective settings change", v9, 2u);
  }

  v10 = type metadata accessor for TaskPriority();
  sub_1000026BC(v5, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a2;

  sub_10002D48C(0, 0, v5, &unk_10006E8D8, v11);
}

uint64_t sub_10003523C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100010C30;

  return sub_100036630(v1);
}

uint64_t sub_1000352CC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Notification();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1000353C0()
{
  sub_100004680();
  *(v0 + 152) = *(v0 + 288);
  swift_errorRetain();
  sub_1000228D4(&unk_10008E6E0, &qword_10006F890);
  if (swift_dynamicCast() && *(v0 + 308) == 1)
  {

    sub_10000FF74();

    return v1(0);
  }

  else
  {

    sub_100001D4C();

    return v3();
  }
}

uint64_t sub_1000354C4()
{
  sub_100004680();
  sub_1000490A4(2);
  v0 = sub_10000BE90();

  return _swift_task_switch(v0, v1, v2);
}

void sub_100035528()
{
  if (__OFADD__(*(*(v0 + 256) + 152), 1))
  {
    __break(1u);
  }

  else
  {
    sub_100004680();
    *(v2 + 152) = v3;
    v4 = *(v0 + 280);

    sub_10000FF74();

    v5(v4);
  }
}

uint64_t (*sub_1000355A4(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  v6 = sub_100038588(0x28uLL);
  *a1 = v6;
  v6[4] = sub_100037D30(v6, a2, a3);
  return sub_100035618;
}

void sub_100035618(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_10003567C()
{
  sub_100002624();
  if (*(*(v0 + 16) + 152) <= 0)
  {
    if (qword_10008DD40 != -1)
    {
      sub_10000986C();
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000B6D0(v12, qword_10008EC18);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.info.getter();
    if (sub_100003B24(v14))
    {
      v15 = sub_10001196C();
      sub_100009140(v15);
      sub_1000028B8();
      _os_log_impl(v16, v17, v18, v19, v20, 2u);
      sub_100003910();
    }

    byte_10008F120 = 1;
    sub_100001D4C();

    return v21();
  }

  else
  {
    if (qword_10008DD40 != -1)
    {
      sub_10000986C();
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_10000B6D0(v1, qword_10008EC18);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.info.getter();
    if (sub_100003B24(v3))
    {
      v4 = sub_10001196C();
      sub_100009140(v4);
      sub_1000028B8();
      _os_log_impl(v5, v6, v7, v8, v9, 2u);
      sub_100003910();
    }

    v10 = *(v0 + 16);

    v11 = *(v10 + 160);
    *(v0 + 24) = v11;

    return _swift_task_switch(sub_10003581C, v11, 0);
  }
}

uint64_t sub_10003581C()
{
  sub_100004680();
  sub_1000490A4(2);
  sub_100001D4C();

  return v0();
}

uint64_t sub_100035878()
{
  if (qword_10008DD40 != -1)
  {
    sub_10000986C();
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000050E4(v2, qword_10008EC18);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v1 = v0[12];
    v5 = sub_100004D20();
    sub_100004F18();
    *v5 = 136446210;
    v6 = sub_100009AEC();
    *(v5 + 4) = sub_1000053A0(v6, v7, v8);
    _os_log_impl(&_mh_execute_header, v3, v4, "eviction timer fired: %{public}s", v5, 0xCu);
    v9 = sub_1000387B0();
    sub_100001D1C(v9);
    sub_100001D1C(v5);
  }

  v10 = v0[11];
  sub_100008D90(v10 + 120, (v0 + 5));
  v11 = *(v10 + 120);
  if (*(v11 + 16))
  {
    v13 = v0[12];
    v12 = v0[13];

    v14 = sub_100003BC0(v13, v12);
    if (v15)
    {
      v16 = *(*(v11 + 56) + 8 * v14);

      if (v16)
      {
        v17 = sub_100004EB0();
        sub_10000277C(v17, (v0 + 8));
        v18 = sub_10000BEAC();
        sub_10004FD68(v18, v19);
        swift_endAccess();

        sub_100001D4C();
        sub_10000C690();

        __asm { BRAA            X1, X16 }
      }
    }

    else
    {
    }
  }

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v22, v23))
  {
    sub_100004D20();
    v32 = sub_100006FB8();
    *(v1 + 4) = sub_100038770(4.8751e-34, v32, v24);
    sub_100038750(&_mh_execute_header, v25, v26, "requesting eviction for %{public}s");
    sub_10000393C();
    sub_100003D78();
  }

  v27 = swift_task_alloc();
  v0[16] = v27;
  *v27 = v0;
  v27[1] = sub_100035B34;
  sub_10000C690();

  return sub_10002E960(v28, v29);
}

uint64_t sub_100035B34()
{
  sub_100004680();
  sub_100003B0C();
  v1 = *v0;
  sub_1000043E4();
  *v2 = v1;

  v3 = sub_100009A40();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_100035C2C()
{
  sub_100002624();
  v1 = sub_100004EB0();
  sub_10000277C(v1, v0 + 64);
  v2 = sub_10000BEAC();
  sub_10004FD68(v2, v3);
  swift_endAccess();

  sub_100001D4C();

  return v4();
}

uint64_t sub_100035CB4()
{
  sub_100002624();
  v1 = sub_100004EB0();
  sub_10000277C(v1, v0 + 16);
  v2 = sub_10000BEAC();
  sub_10004FD68(v2, v3);
  swift_endAccess();

  sub_100001D4C();

  return v4();
}

uint64_t sub_100035D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_100035D60, a6, 0);
}

uint64_t sub_100035D60()
{
  sub_100005464();
  if (qword_10008DD40 != -1)
  {
    sub_10000986C();
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000B6D0(v2, qword_10008EC18);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    sub_100004D20();
    v12 = sub_100006FB8();
    *(v1 + 4) = sub_100038770(4.8751e-34, v12, v5);
    sub_100038750(&_mh_execute_header, v6, v7, "requesting immediate eviction for %{public}s");
    sub_10000393C();
    sub_100003D78();
  }

  v8 = swift_task_alloc();
  v0[5] = v8;
  *v8 = v0;
  v8[1] = sub_100035EC0;
  v10 = v0[2];
  v9 = v0[3];

  return sub_10002E960(v10, v9);
}

uint64_t sub_100035EC0()
{
  sub_100004680();
  sub_100003B0C();
  v1 = *v0;
  sub_1000043E4();
  *v2 = v1;

  sub_100001D4C();

  return v3();
}

uint64_t sub_100035FA0()
{
  sub_100004680();
  *(v1 + 128) = v2;
  *(v1 + 136) = v0;
  *(v1 + 216) = v3;
  *(v1 + 120) = v4;
  v5 = sub_1000228D4(&qword_10008EDF8, &unk_10006E860);
  sub_100001D80(v5);
  *(v1 + 144) = swift_task_alloc();
  *(v1 + 152) = swift_task_alloc();
  v6 = type metadata accessor for CachedSession(0);
  *(v1 + 160) = v6;
  sub_100001D80(v6);
  *(v1 + 168) = swift_task_alloc();
  v7 = sub_100009A40();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10003606C()
{
  v2 = v0[19];
  v1 = v0[20];
  sub_10000277C(v0[17] + 168, (v0 + 8));
  v3 = sub_100009AEC();
  sub_10004580C(v3, v4, v5);
  swift_endAccess();
  if (sub_100002694(v2, 1, v1) == 1)
  {
    sub_1000376E0(v0[19]);
LABEL_8:

    sub_10000FF74();

    return v21(0);
  }

  v6 = v0[21];
  sub_100037748(v0[19], v6);
  v7 = *v6;
  v0[22] = *v6;
  v8 = v6[1];
  v0[23] = v8;
  v9 = sub_10000BEAC();
  v11 = sub_1000055F0(v9, v10);
  v12 = v0[21];
  if ((v11 & 1) == 0)
  {
    sub_1000377AC(v12);
    goto LABEL_8;
  }

  v13 = v0[20];
  v14 = v0[18];
  v15 = v12[2];
  v16 = v12[3];
  v17 = v12[4];
  v18 = v12[5];
  v0[2] = v7;
  v0[3] = v8;
  v0[4] = v15;
  v0[5] = v16;
  v0[6] = v17;
  v0[7] = v18;
  sub_100037808(v12, v14);
  sub_1000026BC(v14, 0, 1, v13);
  type metadata accessor for Session(0);
  swift_allocObject();

  v19 = swift_task_alloc();
  v0[24] = v19;
  *v19 = v0;
  v19[1] = sub_1000362BC;

  return sub_10005B5B8();
}

uint64_t sub_1000362BC(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  sub_1000043E4();
  *v6 = v5;
  *v6 = *v2;
  *(v5 + 200) = v1;

  v7 = *(v4 + 136);
  if (v1)
  {
    v8 = sub_100036474;
  }

  else
  {
    *(v5 + 208) = a1;
    v8 = sub_1000363F0;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1000363F0()
{
  sub_100002624();
  v1 = *(v0 + 208);
  sub_1000377AC(*(v0 + 168));

  sub_10000FF74();

  return v2(v1);
}

void sub_100036474()
{
  sub_100013D4C(v0[22], v0[23], 0);
  if (qword_10008DD40 != -1)
  {
    sub_10000986C();
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000B6D0(v1, qword_10008EC18);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.fault.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[21];
  if (v4)
  {
    v6 = sub_100004D20();
    v13 = sub_100004F18();
    *v6 = 136446210;
    swift_getErrorValue();
    v7 = Error.localizedDescription.getter();
    v9 = sub_1000053A0(v7, v8, &v13);

    *(v6 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "failed to rehydrate session: %{public}s", v6, 0xCu);
    v10 = sub_1000387B0();
    sub_100001D1C(v10);
    sub_100001D1C(v6);
  }

  else
  {
  }

  sub_1000377AC(v5);

  sub_10000FF74();
  sub_10000C690();

  __asm { BRAA            X2, X16 }
}

void sub_100036648()
{
  v1 = qword_100095AD8;
  *(v0 + 56) = qword_100095AD8;
  if (v1)
  {
    sub_100004680();

    v2 = swift_task_alloc();
    *(v0 + 64) = v2;
    *v2 = v0;
    sub_10000BBC8(v2);

    sub_10003B048();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000366EC()
{
  sub_100004680();
  sub_100003B0C();
  v3 = v2;
  sub_100002928();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 176) = v5;
  *(v3 + 72) = v0;

  if (v0)
  {
    v6 = *(v3 + 48);
    v7 = sub_100037038;
  }

  else
  {
    v8 = *(v3 + 48);

    v7 = sub_100036804;
    v6 = v8;
  }

  return _swift_task_switch(v7, v6, 0);
}

void sub_100036804()
{
  sub_100002624();
  v1 = *(v0 + 176);
  if (v1 == 2)
  {
    if (qword_10008DD40 != -1)
    {
      sub_10000986C();
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000B6D0(v2, qword_10008EC18);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (sub_100003B24(v4))
    {
      v5 = sub_10001196C();
      sub_100009140(v5);
      sub_1000028B8();
      _os_log_impl(v6, v7, v8, v9, v10, 2u);
      sub_100003910();
    }

    v11 = qword_100095AD8;
    *(v0 + 128) = qword_100095AD8;
    if (v11)
    {

      v12 = swift_task_alloc();
      *(v0 + 136) = v12;
      *v12 = v0;
      v13 = sub_100036D5C;
LABEL_15:
      v12[1] = v13;

      sub_10003B308(v12);
      return;
    }

    __break(1u);
    goto LABEL_22;
  }

  if (DiagnosticLogSubmissionEnabled() != (v1 & 1))
  {
    if (qword_10008DD40 != -1)
    {
      sub_10000986C();
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000B6D0(v14, qword_10008EC18);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (sub_100003B24(v16))
    {
      v17 = *(v0 + 176);
      v18 = swift_slowAlloc();
      *v18 = 67240448;
      *(v18 + 4) = v17 & 1;
      *(v18 + 8) = 1026;
      *(v18 + 10) = DiagnosticLogSubmissionEnabled();
      sub_1000028B8();
      _os_log_impl(v19, v20, v21, v22, v23, 0xEu);
      sub_100003910();
    }

    v24 = qword_100095AD8;
    *(v0 + 80) = qword_100095AD8;
    if (v24)
    {

      v12 = swift_task_alloc();
      *(v0 + 88) = v12;
      *v12 = v0;
      v13 = sub_100036A80;
      goto LABEL_15;
    }

LABEL_22:
    __break(1u);
    return;
  }

  sub_100001D4C();

  v25();
}

uint64_t sub_100036A80()
{
  sub_100004680();
  sub_100003B0C();
  v3 = v2;
  sub_100002928();
  *v4 = v3;
  v5 = *v1;
  sub_1000043E4();
  *v6 = v5;
  *(v3 + 96) = v0;

  if (v0)
  {
    v7 = *(v3 + 48);
    v8 = sub_100037150;
  }

  else
  {
    v9 = *(v3 + 48);

    v8 = sub_100036B90;
    v7 = v9;
  }

  return _swift_task_switch(v8, v7, 0);
}

void sub_100036B90()
{
  v1 = qword_100095AD8;
  *(v0 + 104) = qword_100095AD8;
  if (v1)
  {
    sub_100004680();

    DiagnosticLogSubmissionEnabled();
    v2 = swift_task_alloc();
    *(v0 + 112) = v2;
    *v2 = v0;
    sub_10000BBC8(v2);

    sub_10003B454();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100036C3C()
{
  sub_100004680();
  sub_100003B0C();
  v3 = v2;
  sub_100002928();
  *v4 = v3;
  v5 = *v1;
  sub_1000043E4();
  *v6 = v5;
  *(v3 + 120) = v0;

  if (v0)
  {
    v7 = *(v3 + 48);

    return _swift_task_switch(sub_100037268, v7, 0);
  }

  else
  {

    sub_100001D4C();

    return v8();
  }
}

uint64_t sub_100036D5C()
{
  sub_100004680();
  sub_100003B0C();
  v3 = v2;
  sub_100002928();
  *v4 = v3;
  v5 = *v1;
  sub_1000043E4();
  *v6 = v5;
  *(v3 + 144) = v0;

  if (v0)
  {
    v7 = *(v3 + 48);
    v8 = sub_100037380;
  }

  else
  {
    v9 = *(v3 + 48);

    v8 = sub_100036E6C;
    v7 = v9;
  }

  return _swift_task_switch(v8, v7, 0);
}

void sub_100036E6C()
{
  v1 = qword_100095AD8;
  *(v0 + 152) = qword_100095AD8;
  if (v1)
  {
    sub_100004680();

    DiagnosticLogSubmissionEnabled();
    v2 = swift_task_alloc();
    *(v0 + 160) = v2;
    *v2 = v0;
    sub_10000BBC8(v2);

    sub_10003B454();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100036F18()
{
  sub_100004680();
  sub_100003B0C();
  v3 = v2;
  sub_100002928();
  *v4 = v3;
  v5 = *v1;
  sub_1000043E4();
  *v6 = v5;
  *(v3 + 168) = v0;

  if (v0)
  {
    v7 = *(v3 + 48);

    return _swift_task_switch(sub_100037498, v7, 0);
  }

  else
  {

    sub_100001D4C();

    return v8();
  }
}

void *sub_1000375B0()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_100037600()
{
  sub_1000375B0();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100037650(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_100037690(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_1000376E0(uint64_t a1)
{
  v2 = sub_1000228D4(&qword_10008EDF8, &unk_10006E860);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100037748(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CachedSession(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000377AC(uint64_t a1)
{
  v2 = type metadata accessor for CachedSession(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100037808(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CachedSession(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003786C()
{
  sub_100003F58();
  sub_100005464();
  sub_10001605C();
  v0 = swift_task_alloc();
  v1 = sub_100003900(v0);
  *v1 = v2;
  sub_100001F7C(v1);
  sub_1000127DC();
  sub_100008E70();

  return sub_100035D3C(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1000378FC(uint64_t a1, char a2, void *a3)
{
  v46 = a3;
  v6 = type metadata accessor for CachedSession(0);
  v44 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000228D4(&qword_10008EE10, &qword_10006E8B8);
  v10 = __chkstk_darwin(v9);
  v45 = (&v39 - v12);
  v43 = *(a1 + 16);
  if (!v43)
  {
  }

  v39 = v3;
  v40 = a1;
  v13 = 0;
  v14 = *(v10 + 48);
  v41 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v42 = v14;
  while (1)
  {
    if (v13 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_22;
    }

    v15 = v11;
    v16 = v45;
    sub_100038634(v41 + *(v11 + 72) * v13, v45);
    v18 = v16[1];
    v49 = *v16;
    v17 = v49;
    v50 = v18;
    v19 = v8;
    sub_100037748(v16 + v42, v8);
    v20 = *v46;
    v22 = sub_100003BC0(v17, v18);
    v23 = v20[2];
    v24 = (v21 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      goto LABEL_19;
    }

    v26 = v21;
    if (v20[3] < v25)
    {
      break;
    }

    if (a2)
    {
      if (v21)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_1000228D4(&qword_10008EE28, &qword_10006E8C8);
      _NativeDictionary.copy()();
      if (v26)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v29 = *v46;
    *(*v46 + 8 * (v22 >> 6) + 64) |= 1 << v22;
    v30 = (v29[6] + 16 * v22);
    *v30 = v17;
    v30[1] = v18;
    v31 = v29[7] + *(v44 + 72) * v22;
    v8 = v19;
    sub_100037748(v19, v31);
    v32 = v29[2];
    v33 = __OFADD__(v32, 1);
    v34 = v32 + 1;
    if (v33)
    {
      goto LABEL_20;
    }

    ++v13;
    v29[2] = v34;
    a2 = 1;
    a1 = v40;
    v11 = v15;
    if (v43 == v13)
    {
    }
  }

  sub_10006055C(v25, a2 & 1);
  v27 = sub_100003BC0(v17, v18);
  if ((v26 & 1) != (v28 & 1))
  {
    goto LABEL_21;
  }

  v22 = v27;
  if ((v26 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v35 = swift_allocError();
  swift_willThrow();
  v51 = v35;
  swift_errorRetain();
  sub_1000228D4(&unk_10008E6E0, &qword_10006F890);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_1000377AC(v19);
  }

LABEL_22:
  v47 = 0;
  v48 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  v37._object = 0x8000000100071D70;
  v37._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v37);
  _print_unlocked<A, B>(_:_:)();
  v38._countAndFlagsBits = 39;
  v38._object = 0xE100000000000000;
  String.append(_:)(v38);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void (*sub_100037D30(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  v6 = sub_100038588(0x50uLL);
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6[8] = sub_100038044(v6);
  v6[9] = sub_100037E28(v6 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_100037DC8;
}

void sub_100037DC8(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_100037E28(uint64_t *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1)
{
  v5 = v4;
  v10 = sub_100038588(0x30uLL);
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v11 = *v4;
  v12 = sub_100003BC0(a2, a3);
  *(v10 + 40) = v13 & 1;
  v14 = *(v11 + 16);
  v15 = (v13 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_10;
  }

  v17 = v12;
  v18 = v13;
  sub_1000228D4(&qword_10008EE08, &qword_10006E898);
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(a4 & 1, v16))
  {
    v19 = sub_100003BC0(a2, a3);
    if ((v18 & 1) == (v20 & 1))
    {
      v17 = v19;
      goto LABEL_5;
    }

LABEL_10:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_5:
  v10[4] = v17;
  if (v18)
  {
    v21 = *(*(*v5 + 56) + 8 * v17);
  }

  else
  {
    v21 = 0;
  }

  *v10 = v21;
  return sub_100037F68;
}

void sub_100037F68(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 40);
  if (v2)
  {
    v4 = v1[4];
    v5 = *v1[3];
    if (v3)
    {
      *(*(v5 + 56) + 8 * v4) = v2;
    }

    else
    {
      sub_10000D044(v4, v1[1], v1[2], v2, v5);
    }
  }

  else if ((*a1)[5])
  {
    sub_10000D9BC(*(*v1[3] + 48) + 16 * v1[4]);
    sub_1000228D4(&qword_10008F3B0, &unk_10006E8A0);
    _NativeDictionary._delete(at:)();
  }

  free(v1);
}

uint64_t (*sub_100038044(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_10003806C;
}

uint64_t sub_100038078(uint64_t *a1, uint64_t a2)
{
  v6 = *a1;

  result = sub_100038394(v6, a2);
  v9 = v2;
  if (v2)
  {

    return v3;
  }

  if (v8)
  {
    v3 = *(v6 + 16);
LABEL_5:

    return v3;
  }

  v3 = result;
  v10 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v11 = 24 * result;
    v36 = a1;
    v37 = a2;
    while (1)
    {
      v12 = *(v6 + 16);
      if (v10 == v12)
      {
        goto LABEL_5;
      }

      if (v10 >= v12)
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v39 = v10;
      v40 = v6;
      v42 = v11;
      v13 = (v6 + v11);
      v14 = *(v6 + v11 + 72);
      *&v38 = *(v6 + v11 + 64);
      v16 = *(a2 + 112);
      v15 = *(a2 + 120);
      v41[0] = 46;
      v41[1] = 0xE100000000000000;
      __chkstk_darwin(result);
      v35[2] = v41;

      if (sub_100014A44(0x7FFFFFFFFFFFFFFFLL, 1, sub_100014E24, v35, v16, v15, v17)[2])
      {
        swift_bridgeObjectRetain_n();

        a2 = v37;
        v16 = static String._fromSubstring(_:)();
        v15 = v18;
        swift_bridgeObjectRelease_n();
      }

      else
      {
      }

      if (v38 == v16 && v14 == v15)
      {
        break;
      }

      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v20)
      {
        goto LABEL_29;
      }

      v21 = v39;
      v6 = v40;
      v22 = v42;
      if (v39 != v3)
      {
        if ((v3 & 0x8000000000000000) != 0)
        {
          goto LABEL_32;
        }

        v23 = *(v40 + 16);
        if (v3 >= v23)
        {
          goto LABEL_33;
        }

        if (v39 >= v23)
        {
          goto LABEL_34;
        }

        v24 = v9;
        v25 = v40 + 32 + 24 * v3;
        v38 = *v25;
        v26 = *(v25 + 16);
        v27 = v13[7];
        v28 = v13[8];
        v29 = v13[9];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10003A81C();
          v6 = v34;
        }

        v30 = v36;
        v31 = (v6 + 24 * v3);
        v31[4] = v27;
        v31[5] = v28;
        v31[6] = v29;

        if (v21 >= *(v6 + 16))
        {
          goto LABEL_35;
        }

        v32 = v42;
        v33 = v6 + v42;
        *(v33 + 56) = v38;
        *(v33 + 72) = v26;

        v22 = v32;
        *v30 = v6;
        v9 = v24;
        a2 = v37;
      }

      ++v3;
LABEL_30:
      v10 = v21 + 1;
      v11 = v22 + 24;
    }

LABEL_29:
    v21 = v39;
    v6 = v40;
    v22 = v42;
    goto LABEL_30;
  }

LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_100038394(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a1 + 16);
  v15 = a2;
  v16 = v3;
  for (i = (a1 + 48); ; i = v18 + 3)
  {
    if (v16 == v2)
    {

      return 0;
    }

    v6 = *(i - 1);
    v5 = *i;
    v18 = i;
    v8 = *(v15 + 112);
    v7 = *(v15 + 120);
    v17[0] = 46;
    v17[1] = 0xE100000000000000;
    __chkstk_darwin(a1);
    v14[2] = v17;

    if (sub_100014A44(0x7FFFFFFFFFFFFFFFLL, 1, sub_10001F5FC, v14, v8, v7, v9)[2])
    {
      swift_bridgeObjectRetain_n();

      v8 = static String._fromSubstring(_:)();
      v7 = v10;
      swift_bridgeObjectRelease_n();
    }

    else
    {
    }

    if (v6 == v8 && v5 == v7)
    {

      return v2;
    }

    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v12)
    {
      break;
    }

    ++v2;
  }

  return v2;
}

void *sub_100038588(size_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t sub_1000385C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000228D4(&qword_10008EE10, &qword_10006E8B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100038634(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000228D4(&qword_10008EE10, &qword_10006E8B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000386A4()
{
  sub_100002624();
  v0 = swift_task_alloc();
  v1 = sub_100003900(v0);
  *v1 = v2;
  sub_100001F7C(v1);

  return sub_10003523C();
}

void sub_100038750(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

unint64_t sub_100038770(float a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  *v5 = a1;

  return sub_1000053A0(v4, v3, va);
}

void *sub_100038790(uint64_t a1, uint64_t a2)
{

  return sub_100060CC4(0, a2, 0);
}

uint64_t sub_1000387CC()
{
  sub_1000228D4(&qword_10008EEE8, &unk_10006F660);
  v0 = sub_1000228D4(&qword_10008EEF0, &qword_10006E980);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10006E8F0;
  v4 = (v3 + v2);
  v5 = *(v0 + 48);
  *v4 = XPC_ACTIVITY_REPEATING;
  *(v4 + v5) = 1;
  type metadata accessor for XPCObject(0);
  swift_storeEnumTagMultiPayload();
  v6 = (v4 + v1);
  v7 = *(v0 + 48);
  *v6 = XPC_ACTIVITY_DELAY;
  *(v6 + v7) = 86400;
  swift_storeEnumTagMultiPayload();
  v8 = (v4 + 2 * v1);
  v9 = *(v0 + 48);
  *v8 = XPC_ACTIVITY_GRACE_PERIOD;
  *(v8 + v9) = 43200;
  swift_storeEnumTagMultiPayload();
  v10 = (v4 + 3 * v1);
  v11 = (v10 + *(v0 + 48));
  *v10 = XPC_ACTIVITY_PRIORITY;
  *v11 = String.init(cString:)();
  v11[1] = v12;
  swift_storeEnumTagMultiPayload();
  v13 = (v4 + 4 * v1);
  v14 = *(v0 + 48);
  *v13 = XPC_ACTIVITY_ALLOW_BATTERY;
  *(v13 + v14) = 0;
  result = swift_storeEnumTagMultiPayload();
  if (!XPC_ACTIVITY_POWER_NAP)
  {
    __break(1u);
    goto LABEL_11;
  }

  v16 = *(v0 + 48);
  v17 = (v4 + 5 * v1);
  *v17 = XPC_ACTIVITY_POWER_NAP;
  *(v17 + v16) = 1;
  result = swift_storeEnumTagMultiPayload();
  if (!XPC_ACTIVITY_RANDOM_INITIAL_DELAY)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v18 = (v4 + 6 * v1);
  v19 = *(v0 + 48);
  *v18 = XPC_ACTIVITY_RANDOM_INITIAL_DELAY;
  *(v18 + v19) = 43200;
  result = swift_storeEnumTagMultiPayload();
  if (!XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v20 = (&v4[v1] - v1);
  v21 = *(v0 + 48);
  *v20 = XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY;
  *(v20 + v21) = 1;
  result = swift_storeEnumTagMultiPayload();
  if (!XPC_ACTIVITY_REQUIRE_INEXPENSIVE_NETWORK_CONNECTIVITY)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v22 = *(v0 + 48);
  v23 = &v4[v1];
  *v23 = XPC_ACTIVITY_REQUIRE_INEXPENSIVE_NETWORK_CONNECTIVITY;
  *(v23 + v22) = 1;
  result = swift_storeEnumTagMultiPayload();
  if (!XPC_ACTIVITY_NETWORK_DOWNLOAD_SIZE)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v24 = (v4 + 9 * v1);
  v25 = *(v0 + 48);
  *v24 = XPC_ACTIVITY_NETWORK_DOWNLOAD_SIZE;
  *(v24 + v25) = 0x100000;
  result = swift_storeEnumTagMultiPayload();
  if (!XPC_ACTIVITY_EXPECTED_DURATION)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v26 = (v4 + 10 * v1);
  v27 = *(v0 + 48);
  *v26 = XPC_ACTIVITY_EXPECTED_DURATION;
  *(v26 + v27) = XPC_ACTIVITY_INTERVAL_1_MIN;
  result = swift_storeEnumTagMultiPayload();
  if (!XPC_ACTIVITY_GROUP_NAME)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v28 = (v4 + 11 * v1);
  v29 = (v28 + *(v0 + 48));
  *v28 = XPC_ACTIVITY_GROUP_NAME;
  *v29 = 0xD00000000000001DLL;
  v29[1] = 0x8000000100071DE0;
  result = swift_storeEnumTagMultiPayload();
  if (XPC_ACTIVITY_GROUP_CONCURRENCY_LIMIT)
  {
    v30 = (v4 + 12 * v1);
    v31 = *(v0 + 48);
    *v30 = XPC_ACTIVITY_GROUP_CONCURRENCY_LIMIT;
    *(v30 + v31) = 1;
    swift_storeEnumTagMultiPayload();
    sub_1000228D4(&qword_10008EEF8, &unk_10006F670);
    sub_100038DC4();
    result = Dictionary.init(dictionaryLiteral:)();
    qword_100095A28 = result;
    return result;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_100038BF0()
{
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100038C44()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10001BF00;

  return sub_100038BDC();
}

double sub_100038CD0()
{
  if (qword_10008DD48 != -1)
  {
    swift_once();
  }

  return result;
}

unint64_t sub_100038D48(uint64_t a1)
{
  result = sub_100038D70();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100038D70()
{
  result = qword_10008EEE0;
  if (!qword_10008EEE0)
  {
    type metadata accessor for RefreshStorebagsActivity();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008EEE0);
  }

  return result;
}

unint64_t sub_100038DC4()
{
  result = qword_10008EF00;
  if (!qword_10008EF00)
  {
    sub_100025D78(&qword_10008EEF8, &unk_10006F670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008EF00);
  }

  return result;
}

uint64_t sub_100038E28()
{
  v0 = type metadata accessor for Logger();
  sub_100025BD8(v0, qword_10008EF08);
  sub_1000050E4(v0, qword_10008EF08);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100038EAC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  swift_unknownObjectRetain();
  result = sub_10003A634((v2 + 112), a1, a2);
  v6 = *(*(v2 + 112) + 16);
  if (v6 < result)
  {
    __break(1u);
  }

  else
  {
    sub_10003A928(result, v6);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_100038F34(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v2[7] = *v1;
  return _swift_task_switch(sub_100038F7C, v1, 0);
}

uint64_t sub_100038F7C()
{
  sub_100004F30();
  v1 = v0[6];
  v2 = swift_beginAccess();
  if (*(*(v1 + 112) + 16))
  {
    v5 = v0[6];
    v6 = v0[7];
    v7 = v0[5];
    sub_100001F94();
    sub_10003A5EC(v8, v9, v10, &unk_10006E9D0);
    v11 = swift_task_alloc();
    v0[8] = v11;
    v11[2] = v5;
    v11[3] = v7;
    v11[4] = v6;
    v12 = swift_task_alloc();
    v0[9] = v12;
    *v12 = v0;
    v12[1] = sub_10003911C;

    return withTaskGroup<A, B>(of:returning:isolation:body:)();
  }

  else
  {
    sub_10003A3A4(v2, v3, v4);
    swift_allocError();
    swift_willThrow();
    sub_100001D4C();

    return v13();
  }
}

uint64_t sub_10003911C()
{
  sub_100004680();
  sub_100003B0C();
  v2 = *(v1 + 48);
  v3 = *v0;
  sub_1000043E4();
  *v4 = v3;

  return _swift_task_switch(sub_100011090, v2, 0);
}

uint64_t sub_100039238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  v5[12] = a2;
  v5[13] = a3;
  sub_1000228D4(&qword_10008E750, &qword_10006F860);
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();

  return _swift_task_switch(sub_1000392E8, a3, 0);
}

uint64_t sub_1000392E8()
{
  v1 = *(v0 + 104);
  swift_beginAccess();
  v2 = *(v1 + 112);
  v3 = *(v2 + 16);
  if (v3)
  {
    v31 = **(v0 + 96);
    v4 = type metadata accessor for TaskPriority();

    v5 = 32;
    v30 = v4;
    v32 = v2;
    do
    {
      v33 = v3;
      v7 = *(v0 + 128);
      v6 = *(v0 + 136);
      v8 = *(v0 + 112);
      v9 = *(v0 + 120);
      v10 = *(v0 + 104);
      v34 = *(v2 + v5);
      v11 = sub_100002938();
      sub_1000026BC(v11, v12, v13, v4);
      v14 = swift_allocObject();
      *(v14 + 16) = 0;
      *(v14 + 24) = 0;
      *(v14 + 32) = v34;
      *(v14 + 48) = v8;
      *(v14 + 56) = v10;
      *(v14 + 64) = v9;
      sub_10003A4CC(v6, v7);
      LODWORD(v7) = sub_100002694(v7, 1, v4);
      swift_unknownObjectRetain_n();

      v15 = *(v0 + 128);
      if (v7 == 1)
      {
        sub_1000026E4(*(v0 + 128), &qword_10008E750, &qword_10006F860);
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(*(v4 - 8) + 8))(v15, v4);
      }

      if (*(v14 + 16))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v16 = dispatch thunk of Actor.unownedExecutor.getter();
        v18 = v17;
        swift_unknownObjectRelease();
      }

      else
      {
        v16 = 0;
        v18 = 0;
      }

      v19 = swift_allocObject();
      *(v19 + 16) = &unk_10006EA18;
      *(v19 + 24) = v14;

      if (v18 | v16)
      {
        v20 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v16;
        *(v0 + 40) = v18;
      }

      else
      {
        v20 = 0;
      }

      v21 = *(v0 + 136);
      *(v0 + 72) = 1;
      *(v0 + 80) = v20;
      *(v0 + 88) = v31;
      swift_task_create();

      swift_unknownObjectRelease();

      sub_1000026E4(v21, &qword_10008E750, &qword_10006F860);
      v5 += 16;
      v2 = v32;
      v3 = v33 - 1;
      v4 = v30;
    }

    while (v33 != 1);
  }

  v22 = *(v0 + 104);
  sub_100001F94();
  v26 = sub_10003A5EC(v23, v24, v25, &unk_10006E9D0);
  v27 = swift_task_alloc();
  *(v0 + 144) = v27;
  v28 = sub_1000228D4(&qword_10008F010, &qword_10006EA28);
  *v27 = v0;
  v27[1] = sub_100039680;

  return TaskGroup.awaitAllRemainingTasks(isolation:)(v22, v26, v28);
}

uint64_t sub_100039680()
{
  sub_100004680();
  sub_100003B0C();
  v1 = *v0;
  sub_1000043E4();
  *v2 = v1;

  sub_100001D4C();

  return v3();
}

uint64_t sub_100039798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[13] = a5;
  v7[14] = a7;
  v7[12] = a4;
  sub_1000228D4(&qword_10008F018, &qword_10006EA30);
  v7[15] = swift_task_alloc();
  v10 = type metadata accessor for CocoaError();
  v7[16] = v10;
  v7[17] = *(v10 - 8);
  v7[18] = swift_task_alloc();
  v11 = type metadata accessor for URLError.Code();
  v7[19] = v11;
  v7[20] = *(v11 - 8);
  v7[21] = swift_task_alloc();
  v7[22] = swift_task_alloc();
  sub_1000228D4(&qword_10008F020, &qword_10006EA38);
  v7[23] = swift_task_alloc();
  v12 = type metadata accessor for URLError();
  v7[24] = v12;
  v7[25] = *(v12 - 8);
  v7[26] = swift_task_alloc();
  ObjectType = swift_getObjectType();
  v16 = (*(a5 + 24) + **(a5 + 24));
  v14 = swift_task_alloc();
  v7[27] = v14;
  *v14 = v7;
  v14[1] = sub_100039A68;

  return v16(a6, ObjectType, a5);
}

uint64_t sub_100039A68()
{
  sub_100004F30();
  sub_100003B0C();
  v3 = v2;
  v4 = *v1;
  sub_1000043E4();
  *v5 = v4;
  *(v3 + 224) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100039CDC, 0, 0);
  }

  else
  {

    sub_100001D4C();

    return v6();
  }
}

uint64_t sub_100039BE0()
{
  sub_100004680();
  sub_100038EAC(*(v0 + 96), *(v0 + 104));

  return _swift_task_switch(sub_100039C48, 0, 0);
}

uint64_t sub_100039C48()
{
  sub_100004F30();

  sub_100009064();

  sub_100001D4C();

  return v0();
}

uint64_t sub_100039CDC()
{
  v39 = v0;
  *(v0 + 56) = *(v0 + 224);
  swift_errorRetain();
  sub_1000228D4(&unk_10008E6E0, &qword_10006F890);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 136);
    v1 = *(v0 + 144);
    v4 = *(v0 + 120);
    v3 = *(v0 + 128);
    sub_1000026BC(v4, 0, 1, v3);
    (*(v2 + 32))(v1, v4, v3);
    LOBYTE(v4) = CocoaError.isCoderError.getter();
    (*(v2 + 8))(v1, v3);
    if (v4)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v5 = *(v0 + 120);
    v6 = sub_100002938();
    sub_1000026BC(v6, v7, v8, v9);
    sub_1000026E4(v5, &qword_10008F018, &qword_10006EA30);
  }

  *(v0 + 64) = *(v0 + 224);
  swift_errorRetain();
  if (swift_dynamicCast())
  {
    v11 = *(v0 + 200);
    v10 = *(v0 + 208);
    v12 = *(v0 + 184);
    v13 = *(v0 + 192);
    v15 = *(v0 + 168);
    v14 = *(v0 + 176);
    v17 = *(v0 + 152);
    v16 = *(v0 + 160);
    sub_1000026BC(v12, 0, 1, v13);
    (*(v11 + 32))(v10, v12, v13);
    sub_10003A5EC(&qword_10008F028, 255, &type metadata accessor for URLError, &protocol conformance descriptor for URLError);
    _BridgedStoredNSError.code.getter();
    static URLError.Code.cancelled.getter();
    sub_10003A5EC(&qword_10008F030, 255, &type metadata accessor for URLError.Code, &protocol conformance descriptor for URLError.Code);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v18 = *(v16 + 8);
    v18(v15, v17);
    v18(v14, v17);
    (*(v11 + 8))(v10, v13);
    if (*(v0 + 80) == *(v0 + 88))
    {
LABEL_7:

      sub_100009064();

      sub_100001D4C();

      return v19();
    }
  }

  else
  {
    v21 = *(v0 + 184);
    v22 = sub_100002938();
    sub_1000026BC(v22, v23, v24, v25);
    sub_1000026E4(v21, &qword_10008F020, &qword_10006EA38);
  }

  if (qword_10008DD50 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  sub_1000050E4(v26, qword_10008EF08);
  swift_errorRetain();
  swift_unknownObjectRetain();
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v27, v28))
  {
    v37 = *(v0 + 96);
    v29 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v29 = 136446466;
    *(v0 + 40) = v37;
    swift_unknownObjectRetain();
    sub_1000228D4(&qword_10008E208, &qword_10006CC68);
    v30 = String.init<A>(describing:)();
    v32 = sub_1000053A0(v30, v31, &v38);

    *(v29 + 4) = v32;
    *(v29 + 12) = 2082;
    swift_getErrorValue();
    v33 = Error.localizedDescription.getter();
    v35 = sub_1000053A0(v33, v34, &v38);

    *(v29 + 14) = v35;
    _os_log_impl(&_mh_execute_header, v27, v28, "disabling backend '%{public}s' which returned error: %{public}s", v29, 0x16u);
    swift_arrayDestroy();
  }

  v36 = *(v0 + 112);

  return _swift_task_switch(sub_100039BE0, v36, 0);
}

uint64_t sub_10003A1FC()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10003A258(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100010C30;

  return sub_100038F34(a1);
}

uint64_t sub_10003A2EC()
{
  sub_100004F30();
  v2 = v1;
  v4 = v3;
  v5 = v0[2];
  v6 = v0[3];
  v7 = v0[4];
  v8 = swift_task_alloc();
  v9 = sub_100003900(v8);
  *v9 = v10;
  v9[1] = sub_100010C30;

  return sub_100039238(v4, v2, v5, v6, v7);
}

unint64_t sub_10003A3A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10008F008;
  if (!qword_10008F008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008F008);
  }

  return result;
}

uint64_t sub_10003A3F8(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = swift_task_alloc();
  v10 = sub_100003900(v9);
  *v10 = v11;
  v10[1] = sub_100010C2C;

  return sub_100039798(a1, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_10003A4CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000228D4(&qword_10008E750, &qword_10006F860);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003A53C(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = swift_task_alloc();
  v5 = sub_100003900(v4);
  *v5 = v6;
  v5[1] = sub_100010C30;

  return sub_1000042B8(a1, v3);
}

uint64_t sub_10003A5EC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_10003A634(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  swift_unknownObjectRetain();
  result = sub_10003A78C(v6, a2);
  v9 = result;
  if (v3)
  {
    goto LABEL_4;
  }

  if (v8)
  {
    v9 = *(v6 + 16);
LABEL_4:
    swift_unknownObjectRelease();
    return v9;
  }

  v10 = result + 1;
  if (!__OFADD__(result, 1))
  {
    for (i = 16 * result + 48; ; i += 16)
    {
      v12 = *(v6 + 16);
      if (v10 == v12)
      {
        break;
      }

      if (v10 >= v12)
      {
        __break(1u);
LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      if (*(v6 + i) != a2)
      {
        if (v10 != v9)
        {
          if (v9 >= v12)
          {
            goto LABEL_19;
          }

          v15 = *(v6 + i);
          v14 = *(v6 + 32 + 16 * v9);
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_10003A830();
            v6 = v13;
          }

          *(v6 + 16 * v9 + 32) = v15;
          result = swift_unknownObjectRelease();
          if (v10 >= *(v6 + 16))
          {
            goto LABEL_20;
          }

          *(v6 + i) = v14;
          result = swift_unknownObjectRelease();
          *a1 = v6;
        }

        ++v9;
      }

      ++v10;
    }

    goto LABEL_4;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_10003A78C(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  for (i = (a1 + 32); ; i += 2)
  {
    if (*(a1 + 16) == v2)
    {
      v4 = 0;
      goto LABEL_7;
    }

    if (*i == a2)
    {
      break;
    }

    ++v2;
  }

  v4 = v2;
LABEL_7:
  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_10003A844(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_100056A84(result, 1);
  v8 = *v2;
  v9 = *v2 + 32;
  v10 = (v9 + 24 * v5);
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v11 = *(v8 + 16);
  if (__OFSUB__(v11, a2))
  {
    goto LABEL_16;
  }

  result = sub_10005FE74((v9 + 24 * a2), v11 - a2, v10);
  v12 = *(v8 + 16);
  v13 = __OFADD__(v12, v7);
  v14 = v12 - v6;
  if (!v13)
  {
    *(v8 + 16) = v14;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_10003A928(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = (result - a2);
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_100056A6C(result, 1);
  v8 = *v2;
  v9 = *v2 + 32;
  v10 = (v9 + 16 * v5);
  sub_1000228D4(&qword_10008E208, &qword_10006CC68);
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v11 = *(v8 + 16);
  if (__OFSUB__(v11, a2))
  {
    goto LABEL_16;
  }

  result = sub_10001EFDC((v9 + 16 * a2), v11 - a2, v10);
  v12 = *(v8 + 16);
  v13 = __OFADD__(v12, v7);
  v14 = v12 - v6;
  if (!v13)
  {
    *(v8 + 16) = v14;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

_BYTE *storeEnumTagSinglePayload for BackendGroup.Error(_BYTE *result, int a2, int a3)
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

unint64_t sub_10003AAC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10008F038;
  if (!qword_10008F038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008F038);
  }

  return result;
}

uint64_t sub_10003AB18(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  if (*(v3 + 24) == 1)
  {
    sub_10002282C(a1, a2, a3);
    swift_allocError();
    *v5 = 1;
    *(v5 + 8) = 0xD00000000000001DLL;
    *(v5 + 16) = 0x8000000100071310;
    return swift_willThrow();
  }

  else
  {
    result = sub_100009400(a1, a2, a3);
    if (!v4)
    {
      a3();
    }
  }

  return result;
}

uint64_t sub_10003ABE4(void (*a1)(uint64_t *__return_ptr, uint64_t))
{
  type metadata accessor for SQLiteDB.Transaction();
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 16) = v1;

  sub_10002211C(0xD000000000000011, 0x80000001000712D0, v5);
  if (v2)
  {
  }

  a1(&v8, v4);
  if ((*(v4 + 24) & 1) == 0)
  {
    sub_10002211C(0x54494D4D4F43, 0xE600000000000000, v6);
  }

  return v8;
}

uint64_t sub_10003ACEC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_100007C10(a1, v1);
}

uint64_t sub_10003AD04()
{
  sub_100004680();
  *(v0 + 32) = *(*(v0 + 24) + 112);

  v1 = sub_100002948();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_10003AD6C()
{
  sub_100002624();
  sub_100001D10();
  v0 = sub_100007C28(163);
  sub_100023AE0(v0, v1, v2, v3, v4);
  sub_10000FF74();

  return v5();
}

uint64_t sub_10003AE0C(uint64_t a1)
{
  v2 = *(v1[7] + 112);
  v1[8] = v2;
  v1[9] = 0;
  return sub_100007C10(a1, v2);
}

uint64_t sub_10003AE28()
{
  sub_100004F30();
  v2 = *(v1 + 72);
  type metadata accessor for SQLiteDB.Transaction();
  inited = swift_initStackObject();
  sub_100005080(inited);
  sub_10002211C(0xD000000000000011, 0x80000001000712D0, v4);
  if (v2)
  {

    sub_100005150();
    goto LABEL_4;
  }

  v7 = sub_10003DC84(v0, v5, v6, (v1 + 48));
  if ((*(v0 + 24) & 1) == 0)
  {
    sub_100017144(v7, v8, v9);
  }

  if (*(v1 + 48) != 5)
  {
    sub_100009B24();
LABEL_4:
    sub_100010590();

    __asm { BRAA            X1, X16 }
  }

  *(v1 + 72) = 0;
  sub_100010590();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_10003AF40(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_100007C10(a1, v1);
}

uint64_t sub_10003AF58()
{
  sub_100004680();
  *(v0 + 32) = *(*(v0 + 24) + 112);

  v1 = sub_100002948();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_10003AFC0()
{
  sub_100002624();
  sub_100001D10();
  v0 = sub_100007C28(155);
  sub_100023AE0(v0, v1, v2, v3, v4);
  sub_10000FF74();

  return v5();
}

uint64_t sub_10003B048()
{
  sub_100004680();
  *(v1 + 24) = v0;
  v2 = swift_task_alloc();
  *(v1 + 32) = v2;
  *v2 = v1;
  sub_10000BBD4(v2);
  v4 = sub_10000BEB8(v3);

  return sub_10003CEA4(v4, v5);
}

uint64_t sub_10003B0D4()
{
  sub_100002624();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  sub_1000043E4();
  *v6 = v5;
  *(v4 + 40) = v0;

  if (v0)
  {
    v7 = *(v4 + 24);

    return _swift_task_switch(sub_10003B21C, v7, 0);
  }

  else
  {
    v8 = *(v5 + 8);

    return v8(v3 != 0);
  }
}

uint64_t sub_10003B21C()
{
  sub_100004680();
  *(v0 + 16) = *(v0 + 40);
  swift_errorRetain();
  sub_1000228D4(&unk_10008E6E0, &qword_10006F890);
  if (!swift_dynamicCast() || *(v0 + 48))
  {

    sub_100001D4C();

    return v3();
  }

  else
  {

    sub_10000FF74();

    return v1(2);
  }
}

uint64_t sub_10003B320(uint64_t a1)
{
  v2 = *(v1[7] + 112);
  v1[8] = v2;
  v1[9] = 0;
  return sub_100007C10(a1, v2);
}

uint64_t sub_10003B33C()
{
  sub_100004F30();
  v2 = *(v1 + 72);
  type metadata accessor for SQLiteDB.Transaction();
  inited = swift_initStackObject();
  sub_100005080(inited);
  sub_10002211C(0xD000000000000011, 0x80000001000712D0, v4);
  if (v2)
  {

    sub_100005150();
    goto LABEL_4;
  }

  v7 = sub_10003ED40(v0, v5, v6, (v1 + 48));
  if ((*(v0 + 24) & 1) == 0)
  {
    sub_100017144(v7, v8, v9);
  }

  if (*(v1 + 48) != 50)
  {
    sub_100009B24();
LABEL_4:
    sub_100010590();

    __asm { BRAA            X1, X16 }
  }

  *(v1 + 72) = 0;
  sub_100010590();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_10003B454()
{
  sub_100004680();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  sub_10000BBD4(v1);
  v3 = sub_10000BEB8(v2);

  return sub_10003D1B4(v3, v4, v5);
}

uint64_t sub_10003B4E4()
{
  sub_100004680();
  v1 = *v0;
  sub_1000043E4();
  *v2 = v1;

  sub_100001D4C();

  return v3();
}

uint64_t sub_10003B5C8@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v47 = type metadata accessor for URLResourceValues();
  sub_100001EDC();
  v6 = v5;
  __chkstk_darwin(v7);
  v46 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000228D4(&qword_10008E758, &qword_10006DC38);
  v10 = sub_100001D80(v9);
  __chkstk_darwin(v10);
  v12 = &v43 - v11;
  v13 = type metadata accessor for URL();
  sub_100001EDC();
  v15 = v14;
  v17 = __chkstk_darwin(v16);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v43 - v20;
  if ((a1 & 1) == 0)
  {
    v43 = a2;
    v44 = v6;
    v45 = [objc_opt_self() defaultManager];
    v24 = NSHomeDirectory();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    URL.init(fileURLWithPath:isDirectory:)();

    sub_100001D10();
    URL.appendingPathComponent(_:isDirectory:)();
    v25 = *(v15 + 8);
    v25(v19, v13);
    sub_1000228D4(&qword_10008E760, &qword_10006DC40);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10006CAD0;
    *(inited + 32) = NSURLIsDirectoryKey;
    v27 = NSURLIsDirectoryKey;
    sub_100019E64(inited);
    sub_100008E88();
    URL.resourceValues(forKeys:)();
    if (v2)
    {

      sub_1000026BC(v12, 1, 1, v47);
      sub_10003EFCC(v12);
    }

    else
    {

      v29 = v47;
      sub_1000026BC(v12, 0, 1, v47);
      v30 = URLResourceValues.isDirectory.getter();
      (*(v44 + 8))(v12, v29);
      if (v30 != 2)
      {
        v31 = v45;
        if (v30)
        {
          goto LABEL_15;
        }

        goto LABEL_7;
      }
    }

    v31 = v45;
LABEL_7:
    URL._bridgeToObjectiveC()(v28);
    v33 = v32;
    v48 = 0;
    v34 = [v31 createDirectoryAtURL:v32 withIntermediateDirectories:1 attributes:0 error:&v48];

    if (!v34)
    {
      v38 = v48;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      return (v25)(v21, v13);
    }

    v35 = v48;
    URLResourceValues.init()();
    URLResourceValues.isExcludedFromBackup.setter();
    sub_100008E88();
    URL.setResourceValues(_:)();
    if (v2)
    {

      v36 = sub_1000175C8();
      v37(v36);
      return (v25)(v21, v13);
    }

    v40 = sub_1000175C8();
    v41(v40);
LABEL_15:
    v42 = v43;
    URL.appendingPathComponent(_:isDirectory:)();

    v25(v21, v13);
    v22 = v42;
    v23 = 0;
    return sub_1000026BC(v22, v23, 1, v13);
  }

  v22 = a2;
  v23 = 1;
  return sub_1000026BC(v22, v23, 1, v13);
}

Swift::Int sub_10003BA98(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

uint64_t sub_10003BAF4()
{
  v0 = type metadata accessor for Logger();
  sub_100025BD8(v0, qword_10008F040);
  sub_1000050E4(v0, qword_10008F040);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10003BB7C()
{
  if (qword_10008DDC0 != -1)
  {
    swift_once();
  }

  if (byte_100095B00)
  {
    return 0x140000000;
  }

  else
  {
    return 3221225472;
  }
}

uint64_t sub_10003BBDC()
{
  sub_100004680();
  *(v1 + 56) = v0;
  *(v1 + 184) = v2;
  *(v1 + 64) = *v0;
  v3 = sub_1000228D4(&qword_10008E758, &qword_10006DC38);
  sub_100001D80(v3);
  *(v1 + 72) = swift_task_alloc();
  v4 = type metadata accessor for URL();
  *(v1 + 80) = v4;
  *(v1 + 88) = *(v4 - 8);
  *(v1 + 96) = swift_task_alloc();
  v5 = type metadata accessor for SQLiteDB.Location(0);
  sub_100001D80(v5);
  *(v1 + 104) = swift_task_alloc();
  *(v1 + 112) = swift_task_alloc();
  *(v1 + 120) = swift_task_alloc();

  return _swift_task_switch(sub_10003BD38, 0, 0);
}

uint64_t sub_10003BD38()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 184);
  swift_defaultActor_initialize();
  sub_10003B5C8(v2 & 1, v1);
  v3 = *(v0 + 112);
  v4 = *(v0 + 80);
  sub_100003C88(*(v0 + 120));
  if (sub_100002694(v3, 1, v4) == 1)
  {
    sub_10003F094(*(v0 + 112), type metadata accessor for SQLiteDB.Location);
    goto LABEL_14;
  }

  (*(*(v0 + 88) + 32))(*(v0 + 96), *(v0 + 112), *(v0 + 80));
  sub_1000228D4(&qword_10008E760, &qword_10006DC40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10006CAD0;
  *(inited + 32) = NSURLFileSizeKey;
  v6 = NSURLFileSizeKey;
  sub_100019E64(inited);
  URL.resourceValues(forKeys:)();
  v7 = *(v0 + 72);

  v8 = type metadata accessor for URLResourceValues();
  sub_1000026BC(v7, 0, 1, v8);
  v9 = URLResourceValues.fileSize.getter();
  LOBYTE(inited) = v10;
  (*(*(v8 - 8) + 8))(v7, v8);
  if ((inited & 1) != 0 || sub_10003BB7C() >= v9)
  {
    (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 80));
LABEL_14:
    v19 = *(v0 + 104);
    sub_100003C88(*(v0 + 120));
    type metadata accessor for SQLiteDB();
    swift_allocObject();
    *(*(v0 + 56) + 112) = sub_1000221F8(v19);
    v22 = swift_task_alloc();
    *(v0 + 128) = v22;
    *v22 = v0;
    v22[1] = sub_10003C2BC;
    v23 = sub_10000BEB8(0x6E6F6973726576);

    return sub_10003D02C(v23, v24);
  }

  if (qword_10008DDE0 != -1)
  {
    swift_once();
  }

  if (byte_100095B12)
  {
    if (qword_10008DD58 != -1)
    {
      sub_1000046E8(&qword_10008DD58);
    }

    v11 = type metadata accessor for Logger();
    sub_1000050E4(v11, qword_10008F040);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    v14 = os_log_type_enabled(v12, v13);
    v16 = *(v0 + 88);
    v15 = *(v0 + 96);
    v17 = *(v0 + 80);
    if (v14)
    {
      v18 = swift_slowAlloc();
      *(v18 + 14) = sub_10000914C(v18, 3.9123e-34);
      _os_log_impl(&_mh_execute_header, v12, v13, "cache size %{public}ld exceeded maximum %{public}ld - cache delete overridden", v18, 0x16u);
      sub_100001D1C(v18);
    }

    (*(v16 + 8))(v15, v17);
    goto LABEL_14;
  }

  if (qword_10008DD58 != -1)
  {
    sub_1000046E8(&qword_10008DD58);
  }

  v25 = type metadata accessor for Logger();
  sub_1000050E4(v25, qword_10008F040);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *(v28 + 14) = sub_10000914C(v28, 3.9123e-34);
    _os_log_impl(&_mh_execute_header, v26, v27, "cache size %{public}ld exceeded maximum %{public}ld - deleting cache", v28, 0x16u);
    sub_100001D1C(v28);
  }

  v29 = *(v0 + 120);
  v31 = *(v0 + 88);
  v30 = *(v0 + 96);
  v32 = *(v0 + 80);

  sub_100022DA8(v33, v34, v35);
  sub_100011748();
  swift_allocError();
  *v36 = 1;
  swift_willThrow();
  (*(v31 + 8))(v30, v32);
  sub_10003F094(v29, type metadata accessor for SQLiteDB.Location);
  swift_defaultActor_destroy();
  swift_deallocPartialClassInstance();
  sub_100008F30();

  sub_100001D4C();

  return v20();
}

uint64_t sub_10003C2BC()
{
  sub_100004EC0();
  sub_100004F30();
  v3 = v2;
  v4 = *v1;
  sub_1000043E4();
  *v5 = v4;
  *v5 = *v1;
  *(v4 + 136) = v0;

  if (!v0)
  {
    *(v4 + 144) = v3;
    sub_10000445C();
    sub_10003F0EC(v6, v7, v8, &unk_10006EB28);
    swift_getObjectType();
    dispatch thunk of Actor.unownedExecutor.getter();
    sub_100005B48();
    sub_100003F70();
  }

  sub_100002794();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_10003C434()
{
  sub_100004680();

  sub_10000445C();
  sub_10003F0EC(v0, v1, v2, &unk_10006EB28);
  swift_getObjectType();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_100005B48();
  sub_100003F70();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_10003C4D4()
{
  sub_100004680();
  v1 = swift_task_alloc();
  *(v0 + 152) = v1;
  *v1 = v0;
  sub_100003990(v1);

  return sub_10003C9E4(0);
}

uint64_t sub_10003C544()
{
  sub_100004EC0();
  sub_100004F30();
  if (*(v0 + 144) > 5)
  {
    sub_100008F30();
    sub_100007A78();

    sub_10000FF74();
    sub_100002794();

    return v7(v5, v6, v7, v8, v9, v10, v11, v12);
  }

  else
  {
    v1 = swift_task_alloc();
    *(v0 + 152) = v1;
    *v1 = v0;
    sub_100003990(v1);
    sub_100002794();

    return sub_10003C9E4(v2);
  }
}

uint64_t sub_10003C634()
{
  sub_100004EC0();
  sub_100004F30();
  v2 = *v1;
  sub_1000043E4();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 160) = v0;

  sub_10000445C();
  v7 = sub_10003F0EC(v4, v5, v6, &unk_10006EB28);
  if (v0)
  {
    *(v2 + 168) = v7;
  }

  swift_getObjectType();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_100005B48();
  sub_100003F70();
  sub_100002794();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_10003C7B0()
{
  sub_100004EC0();
  sub_100004F30();
  sub_100008F30();
  sub_100007A78();

  sub_10000FF74();
  sub_100002794();

  return v2(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_10003C844()
{
  sub_100004680();
  *(v0 + 176) = *(*(v0 + 56) + 112);

  v1 = sub_100002948();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_10003C8B0()
{
  sub_100002624();
  sub_100021888();

  swift_getObjectType();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_100005B48();
  sub_100003F70();

  return _swift_task_switch(v0, v1, v2);
}

uint64_t sub_10003C940()
{
  sub_100004EC0();
  sub_100004F30();
  swift_willThrow();
  sub_100007A78();

  sub_100008F30();

  sub_100001D4C();
  sub_100002794();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_10003C9E4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_10003CA04, v1, 0);
}

uint64_t sub_10003CA04()
{
  sub_100002624();
  if (v0[2])
  {
    if (qword_10008DD58 != -1)
    {
      sub_1000046E8(&qword_10008DD58);
    }

    v1 = type metadata accessor for Logger();
    sub_1000050E4(v1, qword_10008F040);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "unsupported prior database version - deleting disk cache", v4, 2u);
      sub_100001D1C(v4);
    }

    sub_100022DA8(v5, v6, v7);
    sub_100011748();
    swift_allocError();
    *v8 = 1;
    swift_willThrow();
    sub_100001D4C();

    return v9();
  }

  else
  {
    v11 = *(v0[3] + 112);
    v0[4] = v11;

    return _swift_task_switch(sub_10003CB70, v11, 0);
  }
}

uint64_t sub_10003CB70()
{
  sub_100002624();
  sub_100001D10();
  v2 = sub_100007C28(1174);
  sub_10002211C(v2, v3, v4);
  if (v0)
  {
    sub_100005150();

    return v5();
  }

  else
  {
    v7 = swift_task_alloc();
    *(v1 + 40) = v7;
    *v7 = v1;
    v7[1] = sub_10003CC68;
    v8 = sub_10000BEB8(0x6E6F6973726576);

    return sub_10003D1B4(v8, v9, 6);
  }
}

uint64_t sub_10003CC68()
{
  sub_100002624();
  v2 = *v1;
  v3 = *v1;
  sub_1000043E4();
  *v4 = v3;

  if (v0)
  {
    v5 = *(v3 + 8);

    return v5();
  }

  else
  {
    v7 = *(v2 + 24);

    return _swift_task_switch(sub_10003CDA0, v7, 0);
  }
}

uint64_t sub_10003CDA0()
{
  sub_100002624();
  if (qword_10008DD58 != -1)
  {
    sub_1000046E8(&qword_10008DD58);
  }

  v0 = type metadata accessor for Logger();
  sub_1000050E4(v0, qword_10008F040);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 134217984;
    *(v3 + 4) = 6;
    _os_log_impl(&_mh_execute_header, v1, v2, "initialized disk cache with version %lld", v3, 0xCu);
    sub_100001D1C(v3);
  }

  sub_100009B24();

  return v4();
}

uint64_t sub_10003CEA4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_10003CEC8, v2, 0);
}

uint64_t sub_10003CEC8()
{
  sub_100004680();
  *(v0 + 40) = *(*(v0 + 32) + 112);

  v1 = sub_100002948();

  return _swift_task_switch(v1, v2, v3);
}

void sub_10003CF30()
{
  sub_100004F30();
  sub_100001D10();
  v2 = sub_100007C28(37);
  v5 = sub_100009400(v2, v3, v4);
  if (v0)
  {

    sub_100005150();
    sub_100010590();

    __asm { BRAA            X1, X16 }
  }

  sub_10003D3D4(v5, *(v1 + 16), *(v1 + 24), sub_100021E40);

  sub_10000FF74();
  sub_100010590();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_10003D02C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_10003D050, v2, 0);
}

uint64_t sub_10003D050()
{
  sub_100004680();
  *(v0 + 40) = *(*(v0 + 32) + 112);

  v1 = sub_100002948();

  return _swift_task_switch(v1, v2, v3);
}

void sub_10003D0B8()
{
  sub_100004F30();
  sub_100001D10();
  v2 = sub_100007C28(37);
  v5 = sub_100009400(v2, v3, v4);
  if (v0)
  {

    sub_100005150();
    sub_100010590();

    __asm { BRAA            X1, X16 }
  }

  sub_10003D3D4(v5, *(v1 + 16), *(v1 + 24), sub_100021E6C);

  sub_10000FF74();
  sub_100010590();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_10003D1B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_10003D1D8, v3, 0);
}

uint64_t sub_10003D1D8(uint64_t a1)
{
  v2 = *(*(v1 + 40) + 112);
  *(v1 + 48) = v2;
  return sub_100007C10(a1, v2);
}

uint64_t sub_10003D1F4()
{
  sub_100002624();
  sub_100001D10();
  v2 = sub_100007C28(96);
  v5 = sub_100009400(v2, v3, v4);
  if (v0)
  {
    v1[7] = v0;
    v6 = v1[5];
    v7 = sub_10003D2AC;
  }

  else
  {
    sub_10003D2D0(v5, v1[2], v1[3], v1[4]);

    v6 = v1[5];
    v7 = sub_100013BB0;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_10003D2D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1000228D4(&qword_10008FDB0, &qword_1000700B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10006D1D0;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = &off_1000862B0;
  *(inited + 32) = a2;
  *(inited + 40) = a3;
  *(inited + 96) = &type metadata for Int64;
  *(inited + 104) = &off_100086270;
  *(inited + 72) = a4;

  sub_100009524(inited);
  if (v4)
  {
    swift_setDeallocating();
    return sub_10000C4AC();
  }

  else
  {
    swift_setDeallocating();
    sub_10000C4AC();
    while (1)
    {
      result = sub_10000C50C();
      if (!result)
      {
        break;
      }
    }
  }

  return result;
}

uint64_t sub_10003D3D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  sub_1000228D4(&qword_10008FDB0, &qword_1000700B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10006CAD0;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = &off_1000862B0;
  *(inited + 32) = a2;
  *(inited + 40) = a3;

  sub_100009524(inited);
  swift_setDeallocating();
  if (v4)
  {
    return sub_10000C4AC();
  }

  sub_10000C4AC();
  return a4(a1);
}

uint64_t sub_10003D4BC()
{
  sub_100004680();
  sub_100005954(*(v0 + 80), *(v0 + 88));

  sub_100001D4C();

  return v1();
}

uint64_t sub_10003D550(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  return sub_100001F2C(sub_10003D570, v2);
}

uint64_t sub_10003D570(uint64_t a1)
{
  v2 = *(*(v1 + 104) + 112);
  *(v1 + 112) = v2;
  return sub_100007C10(a1, v2);
}

uint64_t sub_10003D58C()
{
  sub_100004EC0();
  sub_100004F30();
  sub_100001D10();
  v2 = sub_100007C28(46);
  sub_100009400(v2, v3, v4);
  if (v0)
  {
    sub_100005150();
  }

  else
  {
    v6 = *(v1 + 88);
    v5 = *(v1 + 96);
    sub_1000228D4(&qword_10008FDB0, &qword_1000700B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10006CAD0;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = &off_1000862B0;
    *(inited + 32) = v6;
    *(inited + 40) = v5;

    sub_100009524(inited);
    swift_setDeallocating();
    sub_10000C4AC();
    while (sub_10000C50C())
    {
    }

    sub_100009B24();
  }

  sub_100002794();

  return v9(v8, v9, v10, v11, v12, v13, v14, v15);
}

void *sub_10003D6C8()
{
  v3 = _swiftEmptyArrayStorage;
  while (1)
  {
    v1 = sub_10000C50C();
    if (v0)
    {
    }

    if (!v1)
    {
      break;
    }

    sub_10003D74C(v1, &v3);
  }

  return v3;
}

uint64_t sub_10003D74C(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for CachedSession(0);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v40 - v9;

  v12 = sub_10000D148(v11, 0);
  if (!v13)
  {
    goto LABEL_13;
  }

  v15 = v12;
  v16 = v13;
  v47 = v5;

  v18 = sub_10000D148(v17, 2);
  if (!v19)
  {
LABEL_12:

LABEL_13:
    sub_100022DA8(v12, v13, v14);
    swift_allocError();
    *v39 = 0;
    return swift_willThrow();
  }

  v20 = v19;
  v45 = v18;
  v46 = a2;

  v22 = sub_10000D148(v21, 3);
  if (!v23)
  {
LABEL_11:

    goto LABEL_12;
  }

  v24 = v23;
  v44 = v22;

  v26 = sub_10000D148(v25, 4);
  if (!v27)
  {

    goto LABEL_11;
  }

  v28 = *(a1 + 16);
  v42 = v27;
  v43 = v26;
  v41 = sqlite3_column_int64(v28, 1);
  v29 = sqlite3_column_double(v28, 5);
  sqlite3_column_int64(v28, 6);
  v30 = sub_100043FF4(v41);
  if (v30 == 3)
  {
    v31 = 0;
  }

  else
  {
    v31 = v30;
  }

  LODWORD(v41) = v31;
  Date.init(timeIntervalSince1970:)();
  v32 = v44;
  *v10 = v45;
  *(v10 + 1) = v20;
  *(v10 + 2) = v32;
  *(v10 + 3) = v24;
  v33 = v42;
  *(v10 + 4) = v43;
  *(v10 + 5) = v33;
  *(v10 + 6) = v15;
  *(v10 + 7) = v16;
  *(v10 + 8) = v29;
  v10[72] = v41;
  v34 = &v10[*(v4 + 36)];
  *v34 = 0;
  v34[4] = 1;
  sub_10003F034(v10, v8, type metadata accessor for CachedSession);
  v35 = v46;
  sub_1000455B4();
  v36 = *(*v35 + 16);
  sub_100045628(v36);
  sub_10003F094(v10, type metadata accessor for CachedSession);
  v37 = *v35;
  *(v37 + 16) = v36 + 1;
  return sub_100037748(v8, v37 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v36);
}

uint64_t sub_10003DA14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[18] = a3;
  v4[19] = v3;
  v4[16] = a1;
  v4[17] = a2;
  return sub_100001F2C(sub_10003DA34, v3);
}

uint64_t sub_10003DA34()
{
  sub_100002624();
  v1 = *(*(v0 + 152) + 112);
  *(v0 + 160) = v1;

  return _swift_task_switch(sub_10003DAB8, v1, 0);
}

void sub_10003DAB8()
{
  sub_100001D10();
  v2 = sub_100007C28(154);
  sub_100009400(v2, v3, v4);
  if (v0)
  {

    sub_100005150();
    sub_100005358();

    __asm { BRAA            X1, X16 }
  }

  v5 = v1[17];
  v6 = v1[18];
  v7 = v1[16];
  sub_1000228D4(&qword_10008FDB0, &qword_1000700B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10006D1D0;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = &off_1000862B0;
  *(inited + 32) = v7;
  *(inited + 40) = v5;
  *(inited + 96) = &type metadata for Int;
  *(inited + 104) = &off_100086250;
  *(inited + 72) = v6;

  sub_100009524(inited);
  swift_setDeallocating();
  sub_10000C4AC();
  sub_10003D6C8();

  sub_10000FF74();
  sub_100005358();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_10003DC84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (*(a1 + 24) == 1)
  {
    sub_10002282C(a1, a2, a3);
    swift_allocError();
    *v6 = 1;
    *(v6 + 8) = 0xD00000000000001DLL;
    *(v6 + 16) = 0x8000000100071310;
    return swift_willThrow();
  }

  else
  {
    result = sub_100009400(0xD000000000000040, 0x8000000100072470, a3);
    if (!v4)
    {
      while (sub_10000C50C())
      {
      }

      result = sub_100022074();
      *a4 = result;
    }
  }

  return result;
}