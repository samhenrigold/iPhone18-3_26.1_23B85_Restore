int main(int argc, const char **argv, const char **envp)
{
  v3 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v23 = *(v3 - 8);
  v24 = v3;
  __chkstk_darwin(v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v6);
  v7 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v7 - 8);
  qword_10000C0B8 = 0xD00000000000001FLL;
  unk_10000C0C0 = 0x8000000100006CD0;
  qword_10000C0C8 = 0xD00000000000001ALL;
  unk_10000C0D0 = 0x8000000100006CF0;
  qword_10000C0D8 = 0x7368637465667464;
  unk_10000C0E0 = 0xEF64736C6F626D79;
  v8 = type metadata accessor for Logger();
  sub_100001254(v8, qword_10000C0E8);
  sub_1000012B8(v8, qword_10000C0E8);

  Logger.init(subsystem:category:)();
  sub_1000012F0();
  v25 = qword_10000C0C8;
  v26 = unk_10000C0D0;

  v9._countAndFlagsBits = 0x72656C646E61682ELL;
  v9._object = 0xED00006575657551;
  String.append(_:)(v9);
  static DispatchQoS.unspecified.getter();
  v25 = &_swiftEmptyArrayStorage;
  sub_100006008(&qword_10000C008, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10000133C(&qword_10000C010, &qword_100006AC0);
  sub_100001384();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v23 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v24);
  qword_10000C100 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Startup", v12, 2u);
  }

  qword_10000C108 = 0;
  qword_10000C110 = 0;
  type metadata accessor for RemoteXPCListenerConnection();
  v13 = qword_10000C100;
  v14 = static RemoteXPCConnection.remoteServiceListenerConnection(serviceName:targetQueue:)();
  v16 = v15;

  qword_10000C118 = v14;
  unk_10000C120 = v16;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "Created listener", v19, 2u);
  }

  dispatch thunk of XPCListenerConnection.setPeerConnectionHandler(_:)();
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "Activate the listener and do dispatchMain", v22, 2u);
  }

  dispatch thunk of XPCConnection.activate()();

  dispatch_main();
}

uint64_t *sub_100001254(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_1000012B8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_1000012F0()
{
  result = qword_10000C000;
  if (!qword_10000C000)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10000C000);
  }

  return result;
}

uint64_t sub_10000133C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100001384()
{
  result = qword_10000C018;
  if (!qword_10000C018)
  {
    sub_1000013E8(&qword_10000C010, &qword_100006AC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C018);
  }

  return result;
}

uint64_t sub_1000013E8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void sub_100001430(uint64_t a1)
{
  v2 = sub_10000133C(&qword_10000C020, &qword_100006AF0);
  v3 = __chkstk_darwin(v2);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v34 - v7;
  v9 = __chkstk_darwin(v6);
  v11 = &v34 - v10;
  __chkstk_darwin(v9);
  v13 = (&v34 - v12);
  v14 = type metadata accessor for Logger();
  sub_1000012B8(v14, &unk_10000C0E8);
  sub_100005B7C(a1, v13, &qword_10000C020, &qword_100006AF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100003D84(v13, &qword_10000C020, &qword_100006AF0);
    sub_100005B7C(a1, v5, &qword_10000C020, &qword_100006AF0);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v35 = v18;
      *v17 = 136315138;
      sub_100005B7C(v5, v8, &qword_10000C020, &qword_100006AF0);
      v19 = String.init<A>(describing:)();
      v21 = v20;
      sub_100003D84(v5, &qword_10000C020, &qword_100006AF0);
      v22 = sub_10000379C(v19, v21, &v35);

      *(v17 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v15, v16, "Unexpected peer connection %s, ignoring.", v17, 0xCu);
      sub_100005FBC(v18);
    }

    else
    {

      sub_100003D84(v5, &qword_10000C020, &qword_100006AF0);
    }
  }

  else
  {
    v23 = *v13;
    v24 = v13[1];
    sub_100005B7C(a1, v11, &qword_10000C020, &qword_100006AF0);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v35 = v28;
      *v27 = 136315138;
      sub_100005B7C(v11, v8, &qword_10000C020, &qword_100006AF0);
      v29 = String.init<A>(describing:)();
      v31 = v30;
      sub_100003D84(v11, &qword_10000C020, &qword_100006AF0);
      v32 = sub_10000379C(v29, v31, &v35);

      *(v27 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v25, v26, "Received new connection: %s", v27, 0xCu);
      sub_100005FBC(v28);
    }

    else
    {

      sub_100003D84(v11, &qword_10000C020, &qword_100006AF0);
    }

    v33 = swift_allocObject();
    *(v33 + 16) = v23;
    *(v33 + 24) = v24;

    dispatch thunk of XPCPeerConnection.setEventHandler(_:)();

    dispatch thunk of XPCConnection.activate()();
  }
}

uint64_t sub_1000018B4(uint64_t a1, uint64_t a2)
{
  v64 = a2;
  v3 = sub_10000133C(&qword_10000C028, &qword_100006AF8);
  v4 = __chkstk_darwin(v3);
  v63 = v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v8 = v62 - v7;
  __chkstk_darwin(v6);
  v10 = v62 - v9;
  v11 = type metadata accessor for XPCDictionary();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = v62 - v17;
  __chkstk_darwin(v16);
  v20 = v62 - v19;
  v21 = type metadata accessor for Logger();
  v22 = sub_1000012B8(v21, &unk_10000C0E8);
  sub_100005B7C(a1, v10, &qword_10000C028, &qword_100006AF8);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v12 + 32))(v20, v10, v11);
    v31 = *(v12 + 16);
    v63 = v20;
    v31(v18, v20, v11);
    v62[0] = v22;
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.info.getter();
    v34 = os_log_type_enabled(v32, v33);
    v62[1] = v12;
    if (v34)
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v65 = v36;
      *v35 = 136315138;
      v31(v15, v18, v11);
      v37 = String.init<A>(describing:)();
      v39 = v38;
      v40 = *(v12 + 8);
      v40(v18, v11);
      v41 = sub_10000379C(v37, v39, &v65);

      *(v35 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v32, v33, "Received new message: %s", v35, 0xCu);
      sub_100005FBC(v36);
    }

    else
    {

      v40 = *(v12 + 8);
      v40(v18, v11);
    }

    v43 = v11;
    v44 = v63;
    v45 = XPCDictionary.subscript.getter();
    if (v45 == 2 || (v45 & 1) == 0)
    {
      if (XPCDictionary.subscript.getter())
      {
        result = swift_unknownObjectRelease();
        if (!qword_10000C108)
        {
          String.utf8CString.getter();
          v56 = os_transaction_create();

          qword_10000C108 = v56;
          result = swift_unknownObjectRelease();
        }

        if (__OFADD__(qword_10000C110, 1))
        {
          __break(1u);
          return result;
        }

        ++qword_10000C110;
        sub_100002164(v44, v64);
      }

      else
      {
        if (!XPCDictionary.subscript.getter())
        {
          XPCDictionary.subscript.getter();
        }

        swift_unknownObjectRelease();
      }

      return (v40)(v44, v43);
    }

    if (qword_10000C108)
    {
      v46 = qword_10000C110;
      v47 = qword_10000C110 - 1;
      if (qword_10000C110 >= 1)
      {
        --qword_10000C110;
        v46 = v47;
      }

      if (!v46)
      {
        qword_10000C108 = 0;
        swift_unknownObjectRelease();
        v59 = Logger.logObject.getter();
        v60 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v59, v60))
        {
          v61 = swift_slowAlloc();
          *v61 = 0;
          _os_log_impl(&_mh_execute_header, v59, v60, "Doing fast exit, per OS reviewers.", v61, 2u);
        }

        xpc_transaction_exit_clean();
        return (v40)(v44, v43);
      }

      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 134217984;
        *(v50 + 4) = qword_10000C110;
        v51 = "Not exiting yet because of %ld outstanding transactions.";
        v52 = v49;
        v53 = v48;
        v54 = v50;
        v55 = 12;
LABEL_27:
        _os_log_impl(&_mh_execute_header, v53, v52, v51, v54, v55);
      }
    }

    else
    {
      v48 = Logger.logObject.getter();
      v57 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v48, v57))
      {
        v58 = swift_slowAlloc();
        *v58 = 0;
        v51 = "There is no ongoing transaction to cancel, ignoring";
        v52 = v57;
        v53 = v48;
        v54 = v58;
        v55 = 2;
        goto LABEL_27;
      }
    }

    return (v40)(v44, v43);
  }

  sub_100003D84(v10, &qword_10000C028, &qword_100006AF8);
  sub_100005B7C(a1, v8, &qword_10000C028, &qword_100006AF8);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v65 = v26;
    *v25 = 136315138;
    sub_100005B7C(v8, v63, &qword_10000C028, &qword_100006AF8);
    v27 = String.init<A>(describing:)();
    v29 = v28;
    sub_100003D84(v8, &qword_10000C028, &qword_100006AF8);
    v30 = sub_10000379C(v27, v29, &v65);

    *(v25 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v23, v24, "Received error message: %s, cancelling.", v25, 0xCu);
    sub_100005FBC(v26);
  }

  else
  {

    sub_100003D84(v8, &qword_10000C028, &qword_100006AF8);
  }

  return dispatch thunk of XPCConnection.cancel()();
}

uint64_t sub_100002164(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000133C(&qword_10000C030, &qword_100006B00);
  __chkstk_darwin(v3 - 8);
  v5 = &v31 - v4;
  v6 = type metadata accessor for XPCDictionary();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for Logger();
  sub_1000012B8(v13, &unk_10000C0E8);
  v14 = XPCDictionary.sideChannel.getter();
  if (v2)
  {
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Can't decode side channel, cancelling.", v17, 2u);
    }

    dispatch thunk of XPCConnection.cancel()();
  }

  if (v14)
  {
    v19 = v7;
    v20 = v14;

    XPCDictionary.createReply()();
    if ((*(v19 + 48))(v5, 1, v6) == 1)
    {
      sub_100003D84(v5, &qword_10000C030, &qword_100006B00);
      sub_100005784(&_swiftEmptyArrayStorage);
      type metadata accessor for XPCError();
      sub_100006008(&qword_10000C038, &type metadata accessor for XPCError, &protocol conformance descriptor for XPCError);
      swift_allocError();
      static XPCError.unknown(_:from:userInfo:)();

      swift_willThrow();
    }

    (*(v19 + 32))(v12, v5, v6);
    v24 = sub_100002CA4();
    v31 = v19;
    v36 = v24[2];
    LOBYTE(v37) = 0;
    sub_1000058B4();
    XPCDictionary.subscript.setter();
    dispatch thunk of XPCConnection.send(message:)();
    type metadata accessor for XPCObjectEncoder();
    swift_allocObject();

    result = XPCObjectEncoder.init(underlyingConnection:)();
    v39 = result;
    v33 = v24[2];
    if (!v33)
    {
      v30 = *(v31 + 8);
LABEL_17:
      v30(v12, v6);
    }

    v34 = v20;
    v35 = v24;
    v25 = 0;
    v26 = v24 + 6;
    v32 = (v31 + 8);
    v31 = (v31 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    while (v25 < v35[2])
    {
      v28 = *(v26 - 1);
      v27 = *v26;
      v29 = *(v26 - 2);

      XPCDictionary.init()();
      v36 = v29;
      v37 = v28;
      v38 = v27;
      sub_100005908();
      XPCObjectEncoder.encode<A>(_:)();
      ++v25;
      XPCDictionary.subscript.setter();
      XPCSideChannel.send(message:)();

      v30 = *v32;
      result = (*v32)(v10, v6);
      v26 += 3;
      if (v33 == v25)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Side channel is nil, cancelling.", v23, 2u);
    }

    return dispatch thunk of XPCConnection.cancel()();
  }

  return result;
}

Swift::Int sub_100002820()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100002894(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_1000028D8()
{
  if (*v0)
  {
    return 0x6E617254656C6966;
  }

  else
  {
    return 0x68746150656C6966;
  }
}

uint64_t sub_10000291C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x68746150656C6966 && a2 == 0xE800000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E617254656C6966 && a2 == 0xEC00000072656673)
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

uint64_t sub_100002A14(uint64_t a1)
{
  v2 = sub_100005D40();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100002A50(uint64_t a1)
{
  v2 = sub_100005D40();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100002A8C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[0] = a4;
  v6 = sub_10000133C(&qword_10000C098, &qword_100006BC8);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v11 - v8;
  sub_100005CFC(a1, a1[3]);
  sub_100005D40();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v4)
  {
    v11[1] = v11[0];
    v12 = 1;
    type metadata accessor for XPCFileTransfer();
    sub_100006008(&qword_10000C0A0, &type metadata accessor for XPCFileTransfer, &protocol conformance descriptor for XPCFileTransfer);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_100002C54@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_100005D94(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

void *sub_100002CA4()
{
  v0 = swift_allocObject();
  v1 = sub_10000561C(&off_1000085C8);
  sub_100005994(&unk_1000085E8);
  *(v0 + 16) = v1;
  v2 = swift_allocObject();
  *(v2 + 16) = &_swiftEmptySetSingleton;
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v0;
  v8[4] = sub_100005A28;
  v8[5] = v3;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_100003310;
  v8[3] = &unk_1000086B8;
  v4 = _Block_copy(v8);

  dyld_for_each_installed_shared_cache();
  _Block_release(v4);
  swift_beginAccess();

  v6 = sub_100003370(v5);

  return v6;
}

uint64_t sub_100002E34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a3;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &aBlock[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &aBlock[-1] - v10;
  __chkstk_darwin(v9);
  v13 = &aBlock[-1] - v12;
  swift_slowAlloc();
  dyld_shared_cache_copy_uuid();
  UUID.init(uuid:)();
  swift_beginAccess();
  v14 = *(a2 + 16);

  v15 = sub_1000030F0(v13, v14);

  if (v15)
  {
    return (*(v5 + 8))(v13, v4);
  }

  (*(v5 + 16))(v8, v13, v4);
  swift_beginAccess();
  sub_100003DE4(v11, v8);
  swift_endAccess();
  v17 = *(v5 + 8);
  v17(v11, v4);

  aBlock[4] = sub_100005A58;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003308;
  aBlock[3] = &unk_1000086E0;
  v18 = _Block_copy(aBlock);

  dyld_shared_cache_for_each_file();
  _Block_release(v18);
  return (v17)(v13, v4);
}

uint64_t sub_1000030F0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_100006008(&qword_10000C068, &type metadata accessor for UUID, &protocol conformance descriptor for UUID), v7 = dispatch thunk of Hashable._rawHashValue(seed:)(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_100006008(&qword_10000C070, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_100003318(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void *sub_100003370(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for URL();
  __chkstk_darwin(v4 - 8);
  v35 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  result = &_swiftEmptyArrayStorage;
  if (v6)
  {
    v40 = &_swiftEmptyArrayStorage;
    sub_1000054DC(0, v6, 0);
    v39 = v40;
    v8 = a1 + 56;
    result = _HashTable.startBucket.getter();
    v9 = result;
    v10 = 0;
    v31 = a1 + 64;
    v32 = v6;
    v33 = a1 + 56;
    v34 = a1;
    while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(a1 + 32))
    {
      v12 = v9 >> 6;
      if ((*(v8 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
      {
        goto LABEL_24;
      }

      v13 = *(a1 + 36);
      v37 = v10;
      v38 = v13;
      v14 = (*(a1 + 48) + 16 * v9);
      v15 = *v14;
      v16 = v14[1];
      swift_bridgeObjectRetain_n();
      URL.init(fileURLWithPath:)();
      type metadata accessor for XPCFileTransfer();
      swift_allocObject();
      v17 = XPCFileTransfer.init(forFileAt:)();
      if (v2)
      {

        return swift_bridgeObjectRelease_n();
      }

      v18 = v17;
      v36 = 0;

      v19 = v39;
      v40 = v39;
      v21 = v39[2];
      v20 = v39[3];
      if (v21 >= v20 >> 1)
      {
        result = sub_1000054DC((v20 > 1), v21 + 1, 1);
        v19 = v40;
      }

      v19[2] = v21 + 1;
      v22 = &v19[3 * v21];
      v22[4] = v15;
      v22[5] = v16;
      v22[6] = v18;
      a1 = v34;
      v11 = 1 << *(v34 + 32);
      if (v9 >= v11)
      {
        goto LABEL_25;
      }

      v8 = v33;
      v23 = *(v33 + 8 * v12);
      if ((v23 & (1 << v9)) == 0)
      {
        goto LABEL_26;
      }

      v39 = v19;
      if (v38 != *(v34 + 36))
      {
        goto LABEL_27;
      }

      v24 = v23 & (-2 << (v9 & 0x3F));
      if (v24)
      {
        v11 = __clz(__rbit64(v24)) | v9 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v25 = v12 << 6;
        v26 = v12 + 1;
        v27 = (v31 + 8 * v12);
        while (v26 < (v11 + 63) >> 6)
        {
          v29 = *v27++;
          v28 = v29;
          v25 += 64;
          ++v26;
          if (v29)
          {
            result = sub_100005A48(v9, v38, 0);
            v11 = __clz(__rbit64(v28)) + v25;
            goto LABEL_4;
          }
        }

        result = sub_100005A48(v9, v38, 0);
      }

LABEL_4:
      v10 = v37 + 1;
      v9 = v11;
      v2 = v36;
      if (v37 + 1 == v32)
      {
        return v39;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  return result;
}

unint64_t sub_10000366C(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_1000036E4(a1, a2, v4);
}

unint64_t sub_1000036E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_10000379C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100003868(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_100005BF4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100005FBC(v11);
  return v7;
}

unint64_t sub_100003868(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100003974(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_100003974(uint64_t a1, unint64_t a2)
{
  v3 = sub_1000039C0(a1, a2);
  sub_100003AF0(&off_1000085A0);
  return v3;
}

char *sub_1000039C0(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_100003BDC(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100003BDC(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100003AF0(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_100003C50(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100003BDC(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_10000133C(&qword_10000C090, &qword_100006B30);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100003C50(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000133C(&qword_10000C090, &qword_100006B30);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_100003D44()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100003D84(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10000133C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100003DE4(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_100006008(&qword_10000C068, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_100006008(&qword_10000C070, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_1000047D0(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_1000040C4(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_100004A74(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_100004214(uint64_t a1)
{
  v2 = v1;
  v36 = type metadata accessor for UUID();
  v3 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_10000133C(&qword_10000C078, &qword_100006B18);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_100006008(&qword_10000C068, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

Swift::Int sub_100004570(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000133C(&qword_10000C060, &qword_100006B10);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1000047D0(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100004214(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_100004BF4();
      goto LABEL_12;
    }

    sub_100004F88(v10 + 1);
  }

  v12 = *v3;
  sub_100006008(&qword_10000C068, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_100006008(&qword_10000C070, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_100004A74(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_100004570(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_100004E2C();
      goto LABEL_16;
    }

    sub_1000052A4(v8 + 1);
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_100004BF4()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000133C(&qword_10000C078, &qword_100006B18);
  v6 = *v0;
  v7 = static _SetStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_100004E2C()
{
  v1 = v0;
  sub_10000133C(&qword_10000C060, &qword_100006B10);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_100004F88(uint64_t a1)
{
  v2 = v1;
  v33 = type metadata accessor for UUID();
  v3 = *(v33 - 8);
  __chkstk_darwin(v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_10000133C(&qword_10000C078, &qword_100006B18);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_100006008(&qword_10000C068, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }

  return result;
}

Swift::Int sub_1000052A4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000133C(&qword_10000C060, &qword_100006B10);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

char *sub_1000054DC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000054FC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000054FC(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000133C(&qword_10000C050, &qword_100006B08);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

Swift::Int sub_10000561C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000133C(&qword_10000C060, &qword_100006B10);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

unint64_t sub_100005784(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000133C(&qword_10000C080, &qword_100006B20);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100005B7C(v4, &v13, &qword_10000C088, &qword_100006B28);
      v5 = v13;
      v6 = v14;
      result = sub_10000366C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100005BE4(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

unint64_t sub_1000058B4()
{
  result = qword_10000C040;
  if (!qword_10000C040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C040);
  }

  return result;
}

unint64_t sub_100005908()
{
  result = qword_10000C048;
  if (!qword_10000C048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C048);
  }

  return result;
}

uint64_t sub_10000595C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000059E8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100005A30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005A48(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_100005A58(uint64_t result)
{
  if (result)
  {
    v1 = String.init(cString:)();
    v3 = v2;
    strcpy(v4, ".development");
    BYTE5(v4[1]) = 0;
    HIWORD(v4[1]) = -5120;
    sub_100005B28();
    if ((StringProtocol.contains<A>(_:)() & 1) == 0)
    {
      swift_beginAccess();
      sub_1000040C4(v4, v1, v3);
      swift_endAccess();
    }
  }

  return result;
}

unint64_t sub_100005B28()
{
  result = qword_10000C058;
  if (!qword_10000C058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C058);
  }

  return result;
}

uint64_t sub_100005B7C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000133C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

_OWORD *sub_100005BE4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100005BF4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

__n128 sub_100005C50(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_100005C64(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_100005CAC(uint64_t result, int a2, int a3)
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

void *sub_100005CFC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_100005D40()
{
  result = qword_10000C230[0];
  if (!qword_10000C230[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10000C230);
  }

  return result;
}

uint64_t sub_100005D94(void *a1)
{
  v3 = sub_10000133C(&qword_10000C0A8, &qword_100006BD0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9[-v5];
  v7 = a1[4];
  sub_100005CFC(a1, a1[3]);
  sub_100005D40();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v10 = 0;
    v7 = KeyedDecodingContainer.decode(_:forKey:)();
    type metadata accessor for XPCFileTransfer();
    v9[15] = 1;
    sub_100006008(&qword_10000C0B0, &type metadata accessor for XPCFileTransfer, &protocol conformance descriptor for XPCFileTransfer);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_100005FBC(a1);
  return v7;
}

uint64_t sub_100005FBC(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_100006008(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for TransferResponseItem.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TransferResponseItem.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000061CC()
{
  result = qword_10000C340[0];
  if (!qword_10000C340[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10000C340);
  }

  return result;
}

unint64_t sub_100006224()
{
  result = qword_10000C450;
  if (!qword_10000C450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C450);
  }

  return result;
}

unint64_t sub_10000627C()
{
  result = qword_10000C458[0];
  if (!qword_10000C458[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10000C458);
  }

  return result;
}

uint64_t XPCDictionary.subscript.getter()
{
  return XPCDictionary.subscript.getter();
}

{
  return XPCDictionary.subscript.getter();
}

uint64_t XPCDictionary.subscript.setter()
{
  return XPCDictionary.subscript.setter();
}

{
  return XPCDictionary.subscript.setter();
}