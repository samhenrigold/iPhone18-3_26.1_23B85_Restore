unint64_t sub_100654530()
{
  result = qword_100973C78;
  if (!qword_100973C78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100973C78);
  }

  return result;
}

uint64_t _s7RequestVMa(uint64_t a1)
{
  result = qword_100987C88;
  if (!qword_100987C88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100654600(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    sub_1006546A4();
    if (v2 <= 0x3F)
    {
      sub_100654708(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1006546A4()
{
  result = qword_10097BAB0;
  if (!qword_10097BAB0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_10097BAB0);
  }

  return result;
}

void sub_100654708(uint64_t a1)
{
  if (!qword_100987C98)
  {
    sub_100280938(&unk_100987CA0, &qword_10080E828);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100987C98);
    }
  }
}

uint64_t sub_10065476C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100654790(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 49))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  v5 = v4 + 1;
  v6 = v4 - 1;
  if (v5 >= 3)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1006547F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

double sub_100654854(uint64_t a1, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(a1 + 40) = 0;
    result = 0.0;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 48) = 0;
    *a1 = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 8) = a2;
  }

  return result;
}

unint64_t sub_1006548A8()
{
  result = qword_100987CD8;
  if (!qword_100987CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100987CD8);
  }

  return result;
}

uint64_t sub_1006548FC()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100987CE0);
  v1 = sub_10000C4AC(v0, qword_100987CE0);
  if (qword_100973730 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A09D8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1006549C4()
{
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v7 - 8);
  __chkstk_darwin(v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v3);
  v4 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v4 - 8);
  v6[1] = sub_1000276B4(0, &qword_10097A620, OS_dispatch_queue_ptr);
  static DispatchQoS.utility.getter();
  v8 = _swiftEmptyArrayStorage;
  sub_10065B850(&qword_100973C60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10028088C(&unk_10097A630, &unk_1007F5680);
  sub_100011630(&qword_100973C70, &unk_10097A630, &unk_1007F5680, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v7);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_100987CF8 = result;
  return result;
}

uint64_t sub_100654C38()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100282710(v2, qword_100987D00);
  sub_10000C4AC(v0, qword_100987D00);
  if (qword_100973BC8 != -1)
  {
    swift_once();
  }

  v5 = sub_10000C4AC(v0, qword_100987D18);
  (*(v1 + 16))(v4, v5, v0);
  URL.appendingPathComponent(_:)();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_100654D80()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100282710(v2, qword_100987D18);
  sub_10000C4AC(v0, qword_100987D18);
  if (qword_100973BE0 != -1)
  {
    swift_once();
  }

  v5 = sub_10000C4AC(v0, qword_100987D50);
  (*(v1 + 16))(v4, v5, v0);
  URL.appendingPathComponent(_:)();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_100654ECC()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100282710(v2, qword_100987D30);
  sub_10000C4AC(v0, qword_100987D30);
  if (qword_100973BE0 != -1)
  {
    swift_once();
  }

  v5 = sub_10000C4AC(v0, qword_100987D50);
  (*(v1 + 16))(v4, v5, v0);
  URL.appendingPathComponent(_:)();
  return (*(v1 + 8))(v4, v0);
}

void sub_100655024()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithSuiteName:v1];

  sub_10028088C(&qword_100987DA0, &qword_10080E9A8);
  Optional.unwrap(_:file:line:)();
}

id sub_10065510C()
{
  v0 = type metadata accessor for URL();
  sub_100282710(v0, qword_100987D50);
  sub_10000C4AC(v0, qword_100987D50);
  result = sub_1001F149C();
  if (result)
  {
    v2 = result;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    URL.init(fileURLWithPath:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1006551AC()
{
  if (qword_100973BC8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for URL();
  v1 = sub_10000C4AC(v0, qword_100987D18);
  sub_1006553A4(v1);
}

void sub_1006553A4(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v47 = *(v2 - 8);
  v48 = v2;
  v3 = __chkstk_darwin(v2);
  v46 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v45 - v5;
  v7 = type metadata accessor for CocoaError.Code();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v12);
  v14 = v13;
  v49 = 0;
  v15 = [v11 removeItemAtURL:v13 error:&v49];

  if (v15)
  {
    v16 = v49;
  }

  else
  {
    v17 = v49;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    static CocoaError.fileNoSuchFile.getter();
    sub_10065B850(&qword_100987DA8, &type metadata accessor for CocoaError.Code, &protocol conformance descriptor for CocoaError.Code);
    LOBYTE(v17) = static _ErrorCodeProtocol.~= infix(_:_:)();

    (*(v8 + 8))(v10, v7);
    if (v17)
    {

      v19 = v47;
      v18 = v48;
      if (qword_100973BB0 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_10000C4AC(v20, qword_100987CE0);
      (*(v19 + 16))(v6, a1, v18);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v49 = v24;
        *v23 = 136315138;
        sub_10065B850(&qword_100975160, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v25 = dispatch thunk of CustomStringConvertible.description.getter();
        v27 = v26;
        (*(v19 + 8))(v6, v18);
        v28 = sub_10000C4E4(v25, v27, &v49);

        *(v23 + 4) = v28;
        _os_log_impl(&_mh_execute_header, v21, v22, "removeFileIfExists - Doesn't exist: %s", v23, 0xCu);
        sub_10000C60C(v24);
      }

      else
      {

        (*(v19 + 8))(v6, v18);
      }
    }

    else
    {
      v30 = v47;
      v29 = v48;
      if (qword_100973BB0 != -1)
      {
        swift_once();
      }

      v31 = type metadata accessor for Logger();
      sub_10000C4AC(v31, qword_100987CE0);
      v32 = v46;
      (*(v30 + 16))(v46, a1, v29);
      swift_errorRetain();
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        *v35 = 136315394;
        sub_10065B850(&qword_100975160, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v36 = dispatch thunk of CustomStringConvertible.description.getter();
        v37 = v32;
        v38 = v36;
        v40 = v39;
        (*(v30 + 8))(v37, v29);
        v41 = sub_10000C4E4(v38, v40, &v49);

        *(v35 + 4) = v41;
        *(v35 + 12) = 2080;
        swift_getErrorValue();
        v42 = Error.localizedDescription.getter();
        v44 = sub_10000C4E4(v42, v43, &v49);

        *(v35 + 14) = v44;
        _os_log_impl(&_mh_execute_header, v33, v34, "removeFileIfExists - couldn't delete %s:\n%s", v35, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        (*(v30 + 8))(v32, v29);
      }

      swift_willThrow();
    }
  }
}

void sub_100655A2C()
{
  if (qword_100973BB0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000C4AC(v0, qword_100987CE0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "purgeAvatars", v3, 2u);
  }

  if (qword_100973BC0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for URL();
  v5 = sub_10000C4AC(v4, qword_100987D00);
  sub_1006553A4(v5);
}

uint64_t sub_100655C98(unint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for URL();
  v68 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v66 = &v55 - v9;
  __chkstk_darwin(v8);
  v62 = &v55 - v10;
  v67 = sub_1006565BC(a1, a2);
  v12 = v11;
  if (qword_100973BB0 != -1)
  {
    goto LABEL_32;
  }

  while (1)
  {
    v13 = type metadata accessor for Logger();
    v14 = sub_10000C4AC(v13, qword_100987CE0);

    v59 = v14;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    v17 = os_log_type_enabled(v15, v16);
    v58 = v7;
    if (v17)
    {
      v18 = swift_slowAlloc();
      v72[0] = swift_slowAlloc();
      *v18 = 136315394;
      *(v18 + 4) = sub_10000C4E4(a1, a2, v72);
      *(v18 + 12) = 2080;
      *(v18 + 14) = sub_10000C4E4(v67, v12, v72);
      _os_log_impl(&_mh_execute_header, v15, v16, "evictContactIdentifier: %s, compressed: %s", v18, 0x16u);
      swift_arrayDestroy();
    }

    v7 = v12;
    v19 = [objc_opt_self() defaultManager];
    if (qword_100973BC0 != -1)
    {
      swift_once();
    }

    v57 = sub_10000C4AC(v4, qword_100987D00);
    URL._bridgeToObjectiveC()(&v73);
    v21 = v20;
    v72[0] = 0;
    v22 = [v19 contentsOfDirectoryAtURL:v20 includingPropertiesForKeys:0 options:0 error:v72];

    v23 = v72[0];
    v56 = a1;
    if (!v22)
    {
      break;
    }

    v55 = a2;
    v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v23;

    v65 = *(v24 + 16);
    if (v65)
    {
      a1 = 0;
      v60 = (v68 + 8);
      v63 = (v68 + 32);
      v64 = v68 + 16;
      v26 = _swiftEmptyArrayStorage;
      v61 = v4;
      a2 = v62;
      while (a1 < *(v24 + 16))
      {
        v12 = (*(v68 + 80) + 32) & ~*(v68 + 80);
        v27 = *(v68 + 72);
        (*(v68 + 16))(a2, v24 + v12 + v27 * a1, v4);
        v72[0] = URL.absoluteString.getter();
        v72[1] = v28;
        v69 = v67;
        v70 = v7;
        sub_10001229C();
        v29 = StringProtocol.contains<A>(_:)();

        if (v29)
        {
          v30 = a2;
          v31 = v7;
          v32 = *v63;
          (*v63)(v66, v30, v4);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v71 = v26;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_10028FAB4(0, v26[2] + 1, 1);
            v26 = v71;
          }

          v35 = v26[2];
          v34 = v26[3];
          if (v35 >= v34 >> 1)
          {
            sub_10028FAB4((v34 > 1), v35 + 1, 1);
            v26 = v71;
          }

          v26[2] = v35 + 1;
          v36 = v26 + v12 + v35 * v27;
          v4 = v61;
          v32(v36, v66, v61);
          v7 = v31;
          a2 = v62;
        }

        else
        {
          (*v60)(a2, v4);
        }

        if (v65 == ++a1)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
    }

    else
    {
      v26 = _swiftEmptyArrayStorage;
LABEL_20:

      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v72[0] = v41;
        *v40 = 136315138;
        v42 = Array.description.getter();
        v44 = sub_10000C4E4(v42, v43, v72);

        *(v40 + 4) = v44;
        _os_log_impl(&_mh_execute_header, v38, v39, "Removing URLs: %s", v40, 0xCu);
        sub_10000C60C(v41);
      }

      v12 = v58;
      v45 = v26[2];
      if (!v45)
      {
      }

      v7 = 0;
      a1 = 0;
      a2 = v68 + 16;
      v46 = (v68 + 8);
      while (v7 < v26[2])
      {
        (*(v68 + 16))(v12, v26 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v7, v4);
        sub_1006553A4(v12);
        ++v7;
        (*v46)(v12, v4);
        if (v45 == v7)
        {
        }
      }
    }

    __break(1u);
LABEL_32:
    swift_once();
  }

  v37 = v72[0];

  _convertNSErrorToError(_:)();

  swift_willThrow();

  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v48, v49))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v53 = a2;
    v54 = v52;
    v72[0] = v52;
    *v51 = 136315138;
    *(v51 + 4) = sub_10000C4E4(v56, v53, v72);
    _os_log_impl(&_mh_execute_header, v48, v49, "Failed to remove specific contactID: %s, removing all", v51, 0xCu);
    sub_10000C60C(v54);
  }

  sub_1006553A4(v57);
}

uint64_t sub_1006565BC(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for SHA256();
  v37 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SHA256Digest();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for String.Encoding();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static String.Encoding.utf8.getter();
  v13 = String.data(using:allowLossyConversion:)();
  v15 = v14;
  (*(v10 + 8))(v12, v9);
  v41 = v13;
  v42 = v15;
  sub_10028088C(&qword_100974E10, &qword_1007FC4C0);
  Optional.unwrap(_:file:line:)();
  sub_10028BCC0(v41, v42);
  v16 = v38[0];
  v17 = v38[1];
  sub_10065B850(&unk_100983280, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
  dispatch thunk of HashFunction.init()();
  sub_100294008(v16, v17);
  sub_100635718(v16, v17, v4);
  sub_100026AC0(v16, v17);
  dispatch thunk of HashFunction.finalize()();
  (*(v37 + 8))(v4, v2);
  v39 = v5;
  v40 = sub_10065B850(&unk_10097F060, &type metadata accessor for SHA256Digest, &protocol conformance descriptor for SHA256Digest);
  v18 = sub_10002F604(v38);
  (*(v6 + 16))(v18, v8, v5);
  sub_10002CDC0(v38, v39);
  dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
  (*(v6 + 8))(v8, v5);
  v19 = v41;
  v20 = v42;
  sub_10000C60C(v38);
  v37 = v19;
  v21 = Data.base64EncodedString(options:)(0);
  sub_10054141C(5, v21._countAndFlagsBits, v21._object);

  if (Substring.distance(from:to:)() != 5)
  {
    if (qword_100973BB0 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_10000C4AC(v22, qword_100987CE0);

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v35 = v24;
      v26 = v25;
      v34 = swift_slowAlloc();
      v38[0] = v34;
      *v26 = 136315138;

      v27 = static String._fromSubstring(_:)();
      v36 = v20;
      v28 = v27;
      v30 = v29;

      v31 = sub_10000C4E4(v28, v30, v38);

      *(v26 + 4) = v31;
      v20 = v36;
      _os_log_impl(&_mh_execute_header, v23, v35, "Failed to form valid lossyContactID, unexpected hash length: %s", v26, 0xCu);
      sub_10000C60C(v34);
    }
  }

  v32 = static String._fromSubstring(_:)();

  sub_100026AC0(v37, v20);
  sub_100026AC0(v16, v17);
  return v32;
}

uint64_t sub_100656D78(CGImage *a1, char *a2, unint64_t a3, char *a4)
{
  v5 = v4;
  v25 = a2;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100973BB0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10000C4AC(v13, qword_100987CE0);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v23 = a4;
    v24 = v9;
    v17 = a1;
    v18 = v16;
    v19 = v10;
    v20 = swift_slowAlloc();
    v26 = v20;
    *v18 = 136315138;
    *(v18 + 4) = sub_10000C4E4(v25, a3, &v26);
    sub_10000C60C(v20);
    v10 = v19;
    v5 = v4;

    a1 = v17;
    a4 = v23;
    v9 = v24;
  }

  result = sub_1006580F0();
  if (!v5)
  {
    sub_100658C3C(v25, a3, a4, v12);
    sub_100659BA8(a1, v12);
    return (*(v10 + 8))(v12, v9);
  }

  return result;
}

uint64_t static SDXPCHelperImageCache.cacheIsEmpty()()
{
  v0 = [objc_opt_self() defaultManager];
  if (qword_100973BC8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for URL();
  sub_10000C4AC(v1, qword_100987D18);
  URL.path.getter();
  v2 = String._bridgeToObjectiveC()();

  v3 = [v0 fileExistsAtPath:v2];

  return v3 ^ 1;
}

CGImageRef sub_1006571EC(char *a1, unint64_t a2, char *a3)
{
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v38 - v12;
  result = sub_1006580F0();
  if (!v3)
  {
    v42 = 0;
    sub_100658C3C(a1, a2, a3, v13);
    URL._bridgeToObjectiveC()(v15);
    v17 = v16;
    v18 = CGImageSourceCreateWithURL(v16, 0);

    if (v18)
    {
      ImageAtIndex = CGImageSourceCreateImageAtIndex(v18, 0, 0);

      if (qword_100973BB0 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_10000C4AC(v20, qword_100987CE0);
      (*(v8 + 16))(v11, v13, v7);

      v21 = ImageAtIndex;
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.default.getter();
      v41 = ImageAtIndex;
      v24 = v23;

      v40 = v24;
      if (os_log_type_enabled(v22, v24))
      {
        v25 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v44 = v39;
        *v25 = 136315650;
        *(v25 + 4) = sub_10000C4E4(a1, a2, &v44);
        *(v25 + 12) = 2080;
        sub_10065B850(&qword_100975160, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v38 = v22;
        v26 = dispatch thunk of CustomStringConvertible.description.getter();
        v28 = v27;
        v29 = *(v8 + 8);
        v29(v11, v7);
        v30 = sub_10000C4E4(v26, v28, &v44);

        *(v25 + 14) = v30;
        *(v25 + 22) = 2080;
        v31 = v41;
        v43 = v41;
        sub_10028088C(&qword_100987D98, &qword_10080E998);
        v32 = Optional.debugDescription.getter();
        v34 = sub_10000C4E4(v32, v33, &v44);

        *(v25 + 24) = v34;
        v35 = v38;
        swift_arrayDestroy();

        v29(v13, v7);
        return v31;
      }

      else
      {

        v37 = *(v8 + 8);
        v37(v11, v7);
        v37(v13, v7);
        return v41;
      }
    }

    else
    {
      type metadata accessor for SDXPCHelperImageCache.CacheError(0);
      sub_10065B850(&qword_100987D90, type metadata accessor for SDXPCHelperImageCache.CacheError, &unk_10080E9BC);
      swift_allocError();
      (*(v8 + 16))(v36, v13, v7);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      return (*(v8 + 8))(v13, v7);
    }
  }

  return result;
}

uint64_t sub_100657730()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v55 = *(v2 - 8);
  v3 = __chkstk_darwin(v2);
  v53 = v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v51 = v49 - v6;
  v7 = __chkstk_darwin(v5);
  v59 = v49 - v8;
  __chkstk_darwin(v7);
  v10 = v49 - v9;
  v11 = objc_opt_self();
  v12 = [v11 defaultManager];
  if (qword_100973BC8 != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    sub_10000C4AC(v2, qword_100987D18);
    URL._bridgeToObjectiveC()(v13);
    v15 = v14;
    v60 = 0;
    v16 = [v12 contentsOfDirectoryAtURL:v14 includingPropertiesForKeys:0 options:0 error:&v60];

    v17 = v60;
    if (!v16)
    {
      v29 = v60;
LABEL_31:
      _convertNSErrorToError(_:)();

      return swift_willThrow();
    }

    v49[1] = v1;
    v50 = v11;
    v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v17;

    v20 = *(v18 + 16);
    v54 = v2;
    v58 = v20;
    if (v20)
    {
      v11 = 0;
      v1 = v55;
      v56 = (v55 + 32);
      v57 = (v55 + 16);
      v52 = (v55 + 8);
      v21 = _swiftEmptyArrayStorage;
      while (v11 < *(v18 + 16))
      {
        v22 = (*(v1 + 80) + 32) & ~*(v1 + 80);
        v12 = *(v1 + 72);
        (*(v1 + 16))(v10, v18 + v22 + v12 * v11, v2);
        if (URL.hasDirectoryPath.getter())
        {
          (*v52)(v10, v2);
        }

        else
        {
          v23 = *v56;
          (*v56)(v59, v10, v2);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v60 = v21;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_10028FAB4(0, v21[2] + 1, 1);
            v21 = v60;
          }

          v26 = v21[2];
          v25 = v21[3];
          v27 = v21;
          if (v26 >= v25 >> 1)
          {
            sub_10028FAB4((v25 > 1), v26 + 1, 1);
            v27 = v60;
          }

          v27[2] = v26 + 1;
          v28 = v27 + v22 + v26 * v12;
          v2 = v54;
          v23(v28, v59, v54);
          v1 = v55;
          v21 = v27;
        }

        if (v58 == ++v11)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
      goto LABEL_36;
    }

    v21 = _swiftEmptyArrayStorage;
    v1 = v55;
LABEL_16:
    v56 = v21;

    v30 = [v50 defaultManager];
    if (qword_100973BC0 != -1)
    {
      swift_once();
    }

    sub_10000C4AC(v2, qword_100987D00);
    URL._bridgeToObjectiveC()(v31);
    v33 = v32;
    v60 = 0;
    v34 = [v30 contentsOfDirectoryAtURL:v32 includingPropertiesForKeys:0 options:0 error:&v60];

    v35 = v60;
    if (!v34)
    {
      v29 = v60;

      goto LABEL_31;
    }

    v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;

    v37 = v56;
    v59 = *(v10 + 2);
    if (!v59)
    {
      break;
    }

    v38 = 0;
    v57 = (v1 + 32);
    v58 = v1 + 16;
    v52 = (v1 + 8);
    v11 = _swiftEmptyArrayStorage;
    v39 = v51;
    while (v38 < *(v10 + 2))
    {
      v40 = (*(v1 + 80) + 32) & ~*(v1 + 80);
      v12 = *(v1 + 72);
      (*(v1 + 16))(v39, &v10[v40 + v12 * v38], v2);
      if (URL.hasDirectoryPath.getter())
      {
        (*v52)(v39, v2);
      }

      else
      {
        v41 = *v57;
        (*v57)(v53, v39, v2);
        v42 = swift_isUniquelyReferenced_nonNull_native();
        v60 = v11;
        if ((v42 & 1) == 0)
        {
          sub_10028FAB4(0, *(v11 + 16) + 1, 1);
          v11 = v60;
        }

        v44 = *(v11 + 16);
        v43 = *(v11 + 24);
        if (v44 >= v43 >> 1)
        {
          sub_10028FAB4((v43 > 1), v44 + 1, 1);
          v11 = v60;
        }

        *(v11 + 16) = v44 + 1;
        v45 = v11 + v40 + v44 * v12;
        v2 = v54;
        v41(v45, v53, v54);
        v1 = v55;
        v37 = v56;
        v39 = v51;
      }

      if (v59 == ++v38)
      {
        goto LABEL_33;
      }
    }

LABEL_36:
    __break(1u);
LABEL_37:
    swift_once();
  }

  v11 = _swiftEmptyArrayStorage;
LABEL_33:

  v47 = v37[2];

  v48 = *(v11 + 16);

  result = v47 + v48;
  if (__OFADD__(v47, v48))
  {
    __break(1u);
  }

  return result;
}

id SDXPCHelperImageCache.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SDXPCHelperImageCache.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SDXPCHelperImageCache();
  return objc_msgSendSuper2(&v2, "init");
}

id SDXPCHelperImageCache.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for SDXPCHelperImageCache();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_100657E80()
{
  v0 = [objc_opt_self() defaultManager];
  if (qword_100973BC8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for URL();
  v2 = sub_10000C4AC(v1, qword_100987D18);
  URL._bridgeToObjectiveC()(v3);
  v5 = v4;
  v16 = 0;
  v6 = [v0 contentsOfDirectoryAtURL:v4 includingPropertiesForKeys:0 options:0 error:&v16];

  v7 = v16;
  if (v6)
  {
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v7;

    v10 = *(v8 + 16);

    if (qword_100973BB0 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000C4AC(v11, qword_100987CE0);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 134218496;
      *(v14 + 4) = v10;
      *(v14 + 12) = 2048;
      *(v14 + 14) = 500;
      *(v14 + 22) = 1024;
      *(v14 + 24) = v10 > 0x1F4;
      _os_log_impl(&_mh_execute_header, v12, v13, "ensureCacheNotFull - numItems = %ld, limit = %ld, shouldPurge = %{BOOL}d", v14, 0x1Cu);
    }

    if (v10 >= 0x1F5)
    {
      sub_1006553A4(v2);
    }
  }

  else
  {
    v15 = v16;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

uint64_t sub_1006580F0()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for URLResourceValues();
  v71 = *(v6 - 8);
  __chkstk_darwin(v6);
  v79 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100973BD0 != -1)
  {
LABEL_49:
    swift_once();
  }

  v8 = sub_10000C4AC(v2, qword_100987D30);
  v9 = v1;
  sub_1006553A4(v8);
  if (v1)
  {

    v9 = 0;
  }

  v80 = v9;
  if (qword_100973BD8 != -1)
  {
    swift_once();
  }

  v10 = qword_100987D48;
  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 stringForKey:v11];

  v72 = v6;
  v75 = v10;
  v74 = "Key should encode to UTF8.";
  if (v12)
  {
    v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;
  }

  else
  {
    v77 = 0;
    v14 = 0;
  }

  v78 = v2;
  v15 = String._bridgeToObjectiveC()();
  v16 = MGGetStringAnswer();
  if (!v16)
  {
    __break(1u);
  }

  v17 = v16;
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  if (v14 && (v18 == v77 && v14 == v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {

    v21 = v78;
  }

  else
  {
    v76 = v3;
    if (qword_100973BB0 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    v23 = sub_10000C4AC(v22, qword_100987CE0);

    v73 = v23;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      *v26 = 136315394;
      v27 = sub_10000C4E4(v18, v20, &v81);

      *(v26 + 4) = v27;
      *(v26 + 12) = 2080;
      if (v14)
      {
        v28 = v77;
      }

      else
      {
        v28 = 0xD000000000000015;
      }

      if (!v14)
      {
        v14 = 0x8000000100789F30;
      }

      v29 = sub_10000C4E4(v28, v14, &v81);

      *(v26 + 14) = v29;
      _os_log_impl(&_mh_execute_header, v24, v25, "currentBuild(%s) != lastBuildUpdate(%s), purging.", v26, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v30 = v80;
    v21 = v78;
    v3 = v76;
    if (qword_100973BC8 != -1)
    {
      swift_once();
    }

    v31 = sub_10000C4AC(v21, qword_100987D18);
    sub_1006553A4(v31);
    if (v30)
    {

      swift_errorRetain();
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v81 = v35;
        *v34 = 136315138;
        swift_getErrorValue();
        v36 = Error.localizedDescription.getter();
        v38 = sub_10000C4E4(v36, v37, &v81);

        *(v34 + 4) = v38;
        _os_log_impl(&_mh_execute_header, v32, v33, "Couldn't purge for bundle version change: %s", v34, 0xCu);
        sub_10000C60C(v35);
        v21 = v78;

        v3 = v76;
      }

      else
      {
      }

      v80 = 0;
    }

    else
    {
      v80 = 0;
      v39 = String._bridgeToObjectiveC()();
      [(NSString *)v75 setObject:v17 forKey:v39];
    }
  }

  v40 = v5;
  URLResourceValues.init()();
  URLResourceValues.isExcludedFromBackup.setter();
  sub_10028088C(&unk_100974FD0, &qword_10080E9A0);
  v41 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v77 = v3[9];
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1007F8A70;
  v70 = v42;
  v43 = v42 + v41;
  if (qword_100973BC8 != -1)
  {
    swift_once();
  }

  v44 = sub_10000C4AC(v21, qword_100987D18);
  v45 = (v3 + 2);
  v46 = v3[2];
  v46(v43, v44, v21);
  if (qword_100973BC0 != -1)
  {
    swift_once();
  }

  v47 = sub_10000C4AC(v21, qword_100987D00);
  v46(v43 + v77, v47, v21);
  v74 = (v3 + 1);
  v76 = NSFileProtectionKey;
  v6 = 2;
  v75 = NSFileProtectionCompleteUnlessOpen;
  v69 = v43;
  v3 = v43;
  v73 = v46;
  while (1)
  {
    v2 = v45;
    v46(v40, v3, v21);
    v48 = [objc_opt_self() defaultManager];
    v5 = v40;
    URL._bridgeToObjectiveC()(v49);
    v51 = v50;
    v52 = v76;
    v83[0] = v76;
    type metadata accessor for FileProtectionType(0);
    v83[4] = v53;
    v54 = v75;
    v83[1] = v75;
    sub_10028088C(&qword_1009746B8, &qword_1007F6598);
    v1 = static _DictionaryStorage.allocate(capacity:)();
    v55 = v52;
    v56 = v54;
    sub_10065B7D4(v83, &v81);
    v57 = v81;
    v58 = sub_1005818A4();
    if (v59)
    {
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v1[(v58 >> 6) + 8] |= 1 << v58;
    *(v1[6] + 8 * v58) = v57;
    sub_1000106E0(&v82, (v1[7] + 32 * v58));
    v60 = v1[2];
    v61 = __OFADD__(v60, 1);
    v62 = v60 + 1;
    if (v61)
    {
      goto LABEL_48;
    }

    v1[2] = v62;
    sub_100005508(v83, &qword_1009746C0, &qword_1007F65A0);
    type metadata accessor for FileAttributeKey(0);
    sub_10065B850(&qword_100974750, type metadata accessor for FileAttributeKey, &unk_1007F74CC);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v81 = 0;
    v64 = [v48 createDirectoryAtURL:v51 withIntermediateDirectories:1 attributes:isa error:&v81];

    if (!v64)
    {
      v68 = v81;

      _convertNSErrorToError(_:)();

      swift_willThrow();
      v21 = v78;
      v40 = v5;
      goto LABEL_46;
    }

    v65 = v81;
    v66 = v80;
    v40 = v5;
    URL.setResourceValues(_:)();
    v21 = v78;
    if (v66)
    {
      break;
    }

    v80 = 0;
    (*v74)(v5, v78);
    v3 = (v3 + v77);
    --v6;
    v45 = v2;
    v46 = v73;
    if (!v6)
    {
      (*(v71 + 8))(v79, v72);
      swift_setDeallocating();
      swift_arrayDestroy();
      return swift_deallocClassInstance();
    }
  }

LABEL_46:
  (*v74)(v40, v21);
  return (*(v71 + 8))(v79, v72);
}

uint64_t sub_100658C3C@<X0>(char *a1@<X0>, unint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v67 = a2;
  v66 = a1;
  v77 = a4;
  v5 = type metadata accessor for URL();
  v78 = *(v5 - 8);
  v79 = v5;
  v6 = __chkstk_darwin(v5);
  v75 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v76 = &v65 - v8;
  v9 = type metadata accessor for SHA256();
  v69 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SHA256Digest();
  v71 = *(v12 - 8);
  __chkstk_darwin(v12);
  v70 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for String.Encoding();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = a3;
  v74 = a3;

  sub_100659DCC(&v82);
  v68 = v82;
  v18 = sub_10028088C(&unk_100976C20, &unk_1007F9D80);
  v72 = sub_100011630(&qword_10097F070, &unk_100976C20, &unk_1007F9D80, &protocol conformance descriptor for [A]);
  v73 = v18;
  v19 = BidirectionalCollection<>.joined(separator:)();
  v21 = v20;
  v82 = v66;
  v83 = v67;

  v22._countAndFlagsBits = 124;
  v22._object = 0xE100000000000000;
  String.append(_:)(v22);
  v23._countAndFlagsBits = v19;
  v23._object = v21;
  String.append(_:)(v23);

  static String.Encoding.utf8.getter();
  v24 = String.data(using:allowLossyConversion:)();
  v26 = v25;

  (*(v15 + 8))(v17, v14);
  v86 = v24;
  v87 = v26;
  sub_10028088C(&qword_100974E10, &qword_1007FC4C0);
  Optional.unwrap(_:file:line:)();
  sub_10028BCC0(v86, v87);
  v27 = v82;
  v28 = v83;
  sub_10065B850(&unk_100983280, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
  dispatch thunk of HashFunction.init()();
  sub_100294008(v27, v28);
  sub_100635718(v27, v28, v11);
  sub_100026AC0(v27, v28);
  v29 = v70;
  dispatch thunk of HashFunction.finalize()();
  v30 = v11;
  v31 = v68;
  (*(v69 + 8))(v30, v9);
  v84 = v12;
  v85 = sub_10065B850(&unk_10097F060, &type metadata accessor for SHA256Digest, &protocol conformance descriptor for SHA256Digest);
  v32 = sub_10002F604(&v82);
  v33 = v71;
  (*(v71 + 16))(v32, v29, v12);
  sub_10002CDC0(&v82, v84);
  dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
  (*(v33 + 8))(v29, v12);
  v34 = v86;
  v35 = v87;
  sub_10000C60C(&v82);
  v36 = Data.base64EncodedString(options:)(0);
  countAndFlagsBits = v36._countAndFlagsBits;
  sub_100026AC0(v34, v35);
  v38 = *(v31 + 2);
  if (v38)
  {
    v69 = v36._countAndFlagsBits;
    v70 = v27;
    v71 = v28;
    v82 = _swiftEmptyArrayStorage;
    sub_10028FBDC(0, v38, 0);
    v39 = v82;
    v40 = (v31 + 40);
    do
    {
      v41 = *(v40 - 1);
      v42 = *v40;

      v43 = sub_1006565BC(v41, v42);
      v45 = v44;

      v82 = v39;
      v47 = *(v39 + 2);
      v46 = *(v39 + 3);
      if (v47 >= v46 >> 1)
      {
        sub_10028FBDC((v46 > 1), v47 + 1, 1);
        v39 = v82;
      }

      *(v39 + 2) = v47 + 1;
      v48 = &v39[16 * v47];
      *(v48 + 4) = v43;
      *(v48 + 5) = v45;
      v40 += 2;
      --v38;
    }

    while (v38);

    v27 = v70;
    v28 = v71;
    countAndFlagsBits = v69;
  }

  else
  {

    v39 = _swiftEmptyArrayStorage;
  }

  v82 = v39;
  v49 = BidirectionalCollection<>.joined(separator:)();
  v51 = v50;

  v52 = HIBYTE(v51) & 0xF;
  if ((v51 & 0x2000000000000000) == 0)
  {
    v52 = v49 & 0xFFFFFFFFFFFFLL;
  }

  if (v52)
  {
    v53 = 124;
  }

  else
  {
    v53 = 0;
  }

  if (v52)
  {
    v54 = 0xE100000000000000;
  }

  else
  {
    v54 = 0xE000000000000000;
  }

  v82 = v49;
  v83 = v51;

  v55._countAndFlagsBits = v53;
  v55._object = v54;
  String.append(_:)(v55);

  v56._countAndFlagsBits = countAndFlagsBits;
  v56._object = v36._object;
  String.append(_:)(v56);

  v86 = 47;
  v87 = 0xE100000000000000;
  v80 = 42;
  v81 = 0xE100000000000000;
  sub_10001229C();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  if (*(v74 + 2))
  {
    if (qword_100973BC0 != -1)
    {
      swift_once();
    }

    v57 = qword_100987D00;
  }

  else
  {
    if (qword_100973BC8 != -1)
    {
      swift_once();
    }

    v57 = qword_100987D18;
  }

  v58 = v79;
  v59 = sub_10000C4AC(v79, v57);
  v60 = v78;
  v61 = v75;
  (*(v78 + 16))(v75, v59, v58);
  v62 = v76;
  URL.appendingPathComponent(_:)();

  v63 = *(v60 + 8);
  v63(v61, v58);
  URL.appendingPathExtension(_:)();
  sub_100026AC0(v27, v28);
  return (v63)(v62, v58);
}

void sub_1006594D8(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v38 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v34 - v6;
  if (qword_100973BB0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000C4AC(v8, qword_100987CE0);
  v9 = *(v3 + 16);
  v9(v7, a1, v2);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v37 = a1;
    v13 = v12;
    v35 = swift_slowAlloc();
    v36 = v3 + 16;
    v40 = v35;
    *v13 = 136315138;
    sub_10065B850(&qword_100975160, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v9;
    v16 = v2;
    v18 = v17;
    (*(v3 + 8))(v7, v16);
    v19 = sub_10000C4E4(v14, v18, &v40);
    v2 = v16;
    v9 = v15;

    *(v13 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v10, v11, "markPurgeable: %s", v13, 0xCu);
    sub_10000C60C(v35);

    a1 = v37;
  }

  else
  {

    (*(v3 + 8))(v7, v2);
  }

  sub_1000276B4(0, &qword_100987DB0, NSFileHandle_ptr);
  v20 = v38;
  v9(v38, a1, v2);
  v21 = v39;
  v22 = sub_100659984(v20);
  if (!v21)
  {
    v23 = v22;
    v24 = [v22 fileDescriptor];
    v40 = 67585;
    v25 = ffsctl(v24, 0xC0084A44uLL, &v40, 0);
    if (v25)
    {
      v26 = v25;
      sub_10028088C(&unk_100987070, &unk_10080DA00);
      v27 = v9;
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1007F5670;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 40) = v29;
      *(inited + 72) = v2;
      v30 = sub_10002F604((inited + 48));
      v27(v30, a1, v2);
      v31 = NSPOSIXErrorDomain;
      sub_100011040(inited);
      swift_setDeallocating();
      sub_100005508(inited + 32, &qword_1009744D0, &qword_1007F8A20);
      v32 = objc_allocWithZone(NSError);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v32 initWithDomain:v31 code:v26 userInfo:isa];

      swift_willThrow();
    }

    sub_100659ADC(v23);
  }
}

id sub_100659984(uint64_t a1)
{
  URL._bridgeToObjectiveC()(__stack_chk_guard);
  v3 = v2;
  v12 = 0;
  v4 = [swift_getObjCClassFromMetadata() fileHandleForReadingFromURL:v2 error:&v12];

  v5 = v12;
  if (v4)
  {
    v6 = type metadata accessor for URL();
    v7 = *(*(v6 - 8) + 8);
    v8 = v5;
    v7(a1, v6);
  }

  else
  {
    v9 = v12;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v10 = type metadata accessor for URL();
    (*(*(v10 - 8) + 8))(a1, v10);
  }

  return v4;
}

id sub_100659ADC(void *a1)
{
  v5 = 0;
  v1 = [a1 closeAndReturnError:&v5];
  v2 = v5;
  if (v1)
  {

    return v2;
  }

  else
  {
    v4 = v5;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void sub_100659BA8(CGImage *a1, uint64_t a2)
{
  sub_1006553A4(a2);
  if (!v2)
  {
    sub_100657E80();
    URL._bridgeToObjectiveC()(v5);
    v7 = v6;
    v8 = CGImageDestinationCreateWithURL(v6, kUTTypePNG, 1uLL, 0);

    if (v8)
    {
      CGImageDestinationAddImage(v8, a1, 0);
      if (CGImageDestinationFinalize(v8))
      {
        sub_1006594D8(a2);
      }

      else
      {
        type metadata accessor for SDXPCHelperImageCache.CacheError(0);
        sub_10065B850(&qword_100987D90, type metadata accessor for SDXPCHelperImageCache.CacheError, &unk_10080E9BC);
        swift_allocError();
        v13 = v12;
        v14 = type metadata accessor for URL();
        (*(*(v14 - 8) + 16))(v13, a2, v14);
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
      }
    }

    else
    {
      type metadata accessor for SDXPCHelperImageCache.CacheError(0);
      sub_10065B850(&qword_100987D90, type metadata accessor for SDXPCHelperImageCache.CacheError, &unk_10080E9BC);
      swift_allocError();
      v10 = v9;
      v11 = type metadata accessor for URL();
      (*(*(v11 - 8) + 16))(v10, a2, v11);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }
  }
}

Swift::Int sub_100659DCC(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1004978F4(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_100659E38(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_100659E38(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_10065A000(v7, v8, a1, v4);
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
    return sub_100659F30(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100659F30(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10065A000(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_1004973B4(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_10065A5DC((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = _stringCompareWithSmolCheck(_:_:expecting:)();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10028E6A8(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_10028E6A8((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_10065A5DC((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1004973B4(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_100497328(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

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
  return result;
}

uint64_t sub_10065A5DC(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t _s16DaemoniOSLibrary21SDXPCHelperImageCacheC5evict17contactIdentifierySS_tFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v8 = *(v15 - 8);
  __chkstk_darwin(v15);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100973BB8 != -1)
  {
    swift_once();
  }

  v14[1] = qword_100987CF8;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  aBlock[4] = sub_10065B898;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = &unk_1008ECC38;
  v12 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v16 = _swiftEmptyArrayStorage;
  sub_10065B850(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100011630(&qword_100976150, &unk_1009765A0, &qword_1007F97B0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);
  (*(v5 + 8))(v7, v4);
  (*(v8 + 8))(v10, v15);
}

uint64_t _s16DaemoniOSLibrary21SDXPCHelperImageCacheC05clearE8WithSyncyySbFZ_0(char a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100973BB0 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000C4AC(v10, qword_100987CE0);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 67109120;
    *(v13 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v11, v12, "clearCacheWithSync: %{BOOL}d", v13, 8u);
  }

  v14 = qword_100973BB8;
  if ((a1 & 1) == 0)
  {
    goto LABEL_10;
  }

  if (qword_100973BB8 != -1)
  {
    swift_once();
  }

  v15 = qword_100987CF8;
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1006551AC;
  *(v2 + 24) = 0;
  v26 = sub_100561E60;
  v27 = v2;
  aBlock = _NSConcreteStackBlock;
  v23 = 1107296256;
  v24 = sub_100695A9C;
  v25 = &unk_1008ECCD8;
  v7 = _Block_copy(&aBlock);
  v5 = v27;

  dispatch_sync(v15, v7);
  _Block_release(v7);
  LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

  if (v15)
  {
    __break(1u);
LABEL_10:
    v19 = v6;
    v20 = v3;
    if (v14 != -1)
    {
      swift_once();
    }

    v26 = sub_1006551AC;
    v27 = 0;
    aBlock = _NSConcreteStackBlock;
    v23 = 1107296256;
    v24 = sub_100011678;
    v25 = &unk_1008ECC88;
    v17 = _Block_copy(&aBlock);
    static DispatchQoS.unspecified.getter();
    v21 = _swiftEmptyArrayStorage;
    sub_10065B850(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
    sub_100011630(&qword_100976150, &unk_1009765A0, &qword_1007F97B0, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v17);
    (*(v20 + 8))(v5, v2);
    (*(v7 + 1))(v9, v19);
  }

  return result;
}

uint64_t _s16DaemoniOSLibrary21SDXPCHelperImageCacheC12purgeAvatarsyyFZ_0()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v4 = *(v10 - 8);
  __chkstk_darwin(v10);
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100973BB8 != -1)
  {
    swift_once();
  }

  v9[1] = qword_100987CF8;
  aBlock[4] = sub_100655A2C;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = &unk_1008ECC60;
  v7 = _Block_copy(aBlock);
  static DispatchQoS.unspecified.getter();
  v11 = _swiftEmptyArrayStorage;
  sub_10065B850(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100011630(&qword_100976150, &unk_1009765A0, &qword_1007F97B0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v7);
  (*(v1 + 8))(v3, v0);
  return (*(v4 + 8))(v6, v10);
}

uint64_t _s16DaemoniOSLibrary21SDXPCHelperImageCacheC03setD0_6forKey10contactIDsySo10CGImageRefa_SSSaySSGtFZ_0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v12 = *(v20 - 8);
  __chkstk_darwin(v20);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100973BB8 != -1)
  {
    swift_once();
  }

  v19[1] = qword_100987CF8;
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = a3;
  v15[5] = a4;
  aBlock[4] = sub_10065B844;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = &unk_1008ECBE8;
  v16 = _Block_copy(aBlock);
  v17 = a1;

  static DispatchQoS.unspecified.getter();
  v21 = _swiftEmptyArrayStorage;
  sub_10065B850(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100011630(&qword_100976150, &unk_1009765A0, &qword_1007F97B0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
  (*(v9 + 8))(v11, v8);
  (*(v12 + 8))(v14, v20);
}

uint64_t type metadata accessor for SDXPCHelperImageCache.CacheError(uint64_t a1)
{
  result = qword_100987E28;
  if (!qword_100987E28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10065B7D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10028088C(&qword_1009746C0, &qword_1007F65A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10065B850(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10065B8A0(uint64_t a1)
{
  result = type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

id sub_10065B928()
{
  v1 = *(_s16VisionApproveiOSV18InitialLockContextVMa(0) + 44);
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
LABEL_5:
    v5 = v2;
    return v3;
  }

  result = [objc_allocWithZone(SDAuthenticationApprovePrompt) init];
  if (result)
  {
    *(v0 + v1) = result;
    v3 = result;
    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_10065B998()
{
  sub_10028088C(&qword_100975660, &qword_1007FA820);
  result = swift_allocObject();
  *(result + 16) = xmmword_1008018C0;
  if (qword_100973BE8 != -1)
  {
    v1 = result;
    swift_once();
    result = v1;
  }

  *(result + 56) = &type metadata for SDAuthentication.Operation.RecordDiscoveryEnd;
  *(result + 64) = &off_10097BB90;
  *(result + 96) = &type metadata for SDAuthentication.Operation.RecordSessionStart;
  *(result + 104) = &off_10097BDE8;
  *(result + 136) = &type metadata for SDAuthentication.Operation.RecordKeyExchangeStart;
  *(result + 144) = &off_10097BDD0;
  *(result + 176) = &type metadata for SDAuthentication.Operation.CheckIsBluetoothEnabled;
  *(result + 184) = &off_10097BDB8;
  *(result + 216) = &type metadata for SDAuthentication.Operation.CheckRemoteDeviceOSVersionIsSupported;
  *(result + 224) = &off_10097BE00;
  *(result + 256) = &type metadata for SDAuthentication.Operation.RecordApproveClientBundleID;
  *(result + 264) = &off_10097BC80;
  *(result + 296) = &type metadata for SDAuthentication.Operation.RecordRemoteDevice;
  *(result + 304) = &off_10097BD70;
  *(result + 336) = &type metadata for SDAuthentication.Operation.CheckLocalSecurityPolicy;
  *(result + 344) = &off_10097BD58;
  *(result + 376) = &type metadata for SDAuthentication.Operation.CheckACMTokenExists;
  *(result + 384) = &off_10097BC68;
  *(result + 416) = &type metadata for SDAuthentication.Operation.IncludeApproveMetadataInMessage;
  *(result + 424) = &off_10097BC50;
  *(result + 456) = &type metadata for SDAuthentication.Operation.SendApprovePromptMessage;
  *(result + 464) = &off_10097BC38;
  return result;
}

void sub_10065BB40(uint64_t a1)
{
  type metadata accessor for SDAuthenticationCommonOperationInput(319);
  if (v1 <= 0x3F)
  {
    sub_100349E3C();
    if (v2 <= 0x3F)
    {
      sub_1002A6C44(319, &qword_1009756D8, &type metadata for AuthenticationPolicies, &type metadata accessor for Array);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10065BC48(uint64_t a1)
{
  sub_1002A6B2C(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for SDAuthenticationSessionMetrics(319);
    if (v2 <= 0x3F)
    {
      sub_1002A6BEC(319);
      if (v3 <= 0x3F)
      {
        sub_1002A6C44(319, qword_1009771F0, &type metadata for String, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          sub_1002A6C44(319, &qword_100975790, &type metadata for Bool, &type metadata accessor for Optional);
          if (v5 <= 0x3F)
          {
            sub_1002A6C44(319, &unk_100978AB0, &type metadata for Data, &type metadata accessor for Optional);
            if (v6 <= 0x3F)
            {
              sub_1002A6C94(319, &qword_100975798, &unk_1009757A0, off_1008C8D00);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_10065BE28(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 49))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_10065BE84(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_10065BEF8(uint64_t a1)
{
  v2 = v1 + *(a1 + 40);
  v3 = *v2;
  sub_1002A9924(*v2, *(v2 + 8));
  return v3;
}

id sub_10065BF64@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_10028088C(&qword_100975660, &qword_1007FA820);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1007F8A70;
  if (qword_100973BE8 != -1)
  {
    swift_once();
  }

  *(v6 + 56) = &type metadata for SDAuthentication.Operation.CheckLocalSecurityPolicy;
  *(v6 + 64) = &off_10097BD58;
  *(v6 + 96) = &type metadata for SDAuthentication.Operation.RequestUserApproval;
  *(v6 + 104) = &off_10097C228;
  *a3 = v6;
  if ([a1 hasBundleID] && objc_msgSend(a1, "hasAppName") && objc_msgSend(a1, "hasBiometricOnly"))
  {
    v7 = *(_s16VisionApproveiOSV17InitialKeyContextVMa(0) + 20);
    v8 = _s16VisionApproveiOSV26HandleApprovePromptContextVMa(0);
    sub_10065E75C(a2 + v7, a3 + v8[5], type metadata accessor for SDAuthenticationSessionMetrics);
    result = [a1 bundleID];
    if (result)
    {
      v10 = result;
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      v14 = (a3 + v8[6]);
      *v14 = v11;
      v14[1] = v13;
      result = [a1 appName];
      if (result)
      {
        v15 = result;
        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;

        v19 = (a3 + v8[7]);
        *v19 = v16;
        v19[1] = v18;
        LOBYTE(v15) = [a1 biometricOnly];

        result = sub_10065E7C4(a2, _s16VisionApproveiOSV17InitialKeyContextVMa);
        *(a3 + v8[8]) = v15;
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    _StringGuts.grow(_:)(55);
    v20._object = 0x8000000100789AF0;
    v20._countAndFlagsBits = 0xD000000000000035;
    String.append(_:)(v20);
    v21 = [a1 description];
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    v25._countAndFlagsBits = v22;
    v25._object = v24;
    String.append(_:)(v25);

    LODWORD(v22) = sub_100010F88(1, 0, 0xE000000000000000);
    v27 = v26;
    sub_1000115C8();
    swift_allocError();
    *v28 = v22;
    *(v28 + 8) = v27;
    swift_willThrow();

    sub_10065E7C4(a2, _s16VisionApproveiOSV17InitialKeyContextVMa);
  }

  return result;
}

uint64_t sub_10065C264@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t *a4@<X8>)
{
  sub_10028088C(&qword_100975660, &qword_1007FA820);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1007F8A70;
  if (qword_100973BE8 != -1)
  {
    swift_once();
  }

  *(v8 + 56) = &type metadata for SDAuthentication.Operation.UseApprovalACMTokenForIncludingFirstAKSTokenWithLTKSessionInMessage;
  *(v8 + 64) = &off_10097C210;
  *(v8 + 96) = &type metadata for SDAuthentication.Operation.SendRequestMessage;
  *(v8 + 104) = &off_10097BCF8;
  *a4 = v8;
  *(a4 + 1) = xmmword_1007F8A80;
  v9 = _s16VisionApproveiOSV24HandleUserApprovalResultVMa(0);
  *(a4 + *(v9 + 28)) = 0;
  *(a4 + *(v9 + 32)) = 0;
  if (a2 >> 60 == 15)
  {
    v10 = sub_100010F88(30, 0xD00000000000001CLL, 0x8000000100789B30);
    v12 = v11;
    sub_1000115C8();
    swift_allocError();
    *v13 = v10;
    *(v13 + 8) = v12;
    swift_willThrow();
    sub_10028BCC0(a1, a2);

    sub_10065E7C4(a3, _s16VisionApproveiOSV26HandleApprovePromptContextVMa);

    return sub_10028BCC0(a4[1], a4[2]);
  }

  else
  {
    v15 = v9;
    sub_100294008(a1, a2);
    sub_10028BCC0(a1, a2);

    sub_10028BCC0(a4[1], a4[2]);
    a4[1] = a1;
    a4[2] = a2;
    v16 = _s16VisionApproveiOSV26HandleApprovePromptContextVMa(0);
    sub_10065E75C(a3 + *(v16 + 20), a4 + *(v15 + 24), type metadata accessor for SDAuthenticationSessionMetrics);
    return sub_10065E7C4(a3, _s16VisionApproveiOSV26HandleApprovePromptContextVMa);
  }
}

uint64_t sub_10065C490()
{
  v1 = *(v0 + 8);
  sub_1002A9924(v1, *(v0 + 16));
  return v1;
}

id sub_10065C52C()
{
  v1 = *(_s16VisionApproveiOSV20HandleRequestContextVMa(0) + 32);
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
LABEL_5:
    v5 = v2;
    return v3;
  }

  result = [objc_allocWithZone(SDAuthenticationResponse) init];
  if (result)
  {
    *(v0 + v1) = result;
    v3 = result;
    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

id sub_10065C59C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_10028088C(&qword_100975660, &qword_1007FA820);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1007FA7E0;
  if (qword_100973BE8 != -1)
  {
    swift_once();
  }

  *(v6 + 56) = &type metadata for SDAuthentication.Operation.RecordKeyExchangeEnd;
  *(v6 + 64) = &off_10097C1F8;
  *(v6 + 96) = &type metadata for SDAuthentication.Operation.RecordTokenExchangeStart;
  *(v6 + 104) = &off_10097C1E0;
  *(v6 + 136) = &type metadata for SDAuthentication.Operation.UseApproveTokenForIncludingFirstAKSTokenWithLTKSessionInMessage;
  *(v6 + 144) = &off_10097C1C8;
  *(v6 + 176) = &type metadata for SDAuthentication.Operation.SendResponseMessage;
  *(v6 + 184) = &off_10097C1B0;
  *a3 = v6;
  v7 = _s16VisionApproveiOSV20HandleRequestContextVMa(0);
  v8 = a3 + v7[6];
  *v8 = xmmword_1007F8A80;
  *(a3 + v7[8]) = 0;
  *(a3 + v7[9]) = 1;
  if ([a1 hasAksToken])
  {
    v9 = _s16VisionApproveiOSV18InitialLockContextVMa(0);
    sub_10065E75C(a2 + *(v9 + 20), a3 + v7[5], type metadata accessor for SDAuthenticationSessionMetrics);
    v10 = (a2 + *(v9 + 40));
    v11 = *v10;
    v12 = v10[1];
    v13 = *v8;
    v14 = *(v8 + 1);
    *v8 = *v10;
    *(v8 + 1) = v12;
    sub_1002A9924(v11, v12);
    sub_10028BCC0(v13, v14);
    result = [a1 aksToken];
    if (result)
    {
      v16 = result;
      v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      result = sub_10065E7C4(a2, _s16VisionApproveiOSV18InitialLockContextVMa);
      v20 = (a3 + v7[7]);
      *v20 = v17;
      v20[1] = v19;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v21 = sub_100010F88(1, 0xD000000000000028, 0x8000000100789B50);
    v23 = v22;
    sub_1000115C8();
    swift_allocError();
    *v24 = v21;
    *(v24 + 8) = v23;
    swift_willThrow();

    sub_10065E7C4(a2, _s16VisionApproveiOSV18InitialLockContextVMa);

    return sub_10028BCC0(*v8, *(v8 + 1));
  }

  return result;
}

uint64_t sub_10065C86C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v3 = a3(a1, a2);
  v4 = [v3 data];

  if (v4)
  {
    v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

    return v5;
  }

  else
  {
    v7 = sub_100010F88(10, 0xD00000000000001ALL, 0x8000000100789BF0);
    v9 = v8;
    sub_1000115C8();
    swift_allocError();
    *v10 = v7;
    *(v10 + 8) = v9;
    return swift_willThrow();
  }
}

id sub_10065C940(uint64_t (*a1)(void), Class *a2)
{
  v4 = *(a1(0) + 28);
  v5 = *(v2 + v4);
  if (v5)
  {
    v6 = *(v2 + v4);
LABEL_5:
    v8 = v5;
    return v6;
  }

  result = [objc_allocWithZone(*a2) init];
  if (result)
  {
    *(v2 + v4) = result;
    v6 = result;
    v5 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

id sub_10065C9C0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_10028088C(&qword_100975660, &qword_1007FA820);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1007F8A70;
  if (qword_100973BE8 != -1)
  {
    swift_once();
  }

  *(v6 + 56) = &type metadata for SDAuthentication.Operation.IncludeNextAKSTokenWithLTKSessionInMessage;
  *(v6 + 64) = &off_10097C198;
  *(v6 + 96) = &type metadata for SDAuthentication.Operation.SendTokenMessage;
  *(v6 + 104) = &off_10097C180;
  *a3 = v6;
  v7 = _s16VisionApproveiOSV21HandleResponseContextVMa(0);
  *(a3 + v7[7]) = 0;
  *(a3 + v7[8]) = 7;
  if ([a1 hasAksToken])
  {
    v8 = _s16VisionApproveiOSV24HandleUserApprovalResultVMa(0);
    sub_10065E75C(a2 + *(v8 + 24), a3 + v7[5], type metadata accessor for SDAuthenticationSessionMetrics);
    result = [a1 aksToken];
    if (result)
    {
      v10 = result;
      v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      result = sub_10065E7C4(a2, _s16VisionApproveiOSV24HandleUserApprovalResultVMa);
      v14 = (a3 + v7[6]);
      *v14 = v11;
      v14[1] = v13;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v15 = sub_100010F88(1, 0xD000000000000029, 0x8000000100789B80);
    v17 = v16;
    sub_1000115C8();
    swift_allocError();
    *v18 = v15;
    *(v18 + 8) = v17;
    swift_willThrow();

    sub_10065E7C4(a2, _s16VisionApproveiOSV24HandleUserApprovalResultVMa);
  }

  return result;
}

id sub_10065CC44@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_10028088C(&qword_100975660, &qword_1007FA820);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1007FA7E0;
  if (qword_100973BE8 != -1)
  {
    swift_once();
  }

  *(v6 + 56) = &type metadata for SDAuthentication.Operation.RecordTokenExchangeEnd;
  *(v6 + 64) = &off_10097C168;
  *(v6 + 96) = &type metadata for SDAuthentication.Operation.ConsumeAKSTokenWithLTKSession;
  *(v6 + 104) = &off_10097C150;
  *(v6 + 136) = &type metadata for SDAuthentication.Operation.SendConfirmation;
  *(v6 + 144) = &off_10097C270;
  *(v6 + 176) = &type metadata for SDAuthentication.Operation.RecordSessionFinished;
  *(v6 + 184) = &off_10097BB00;
  *a3 = v6;
  v7 = _s16VisionApproveiOSV18HandleTokenContextVMa(0);
  *(a3 + v7[7]) = 0;
  *(a3 + v7[8]) = 2;
  if ([a1 hasAksToken])
  {
    v8 = _s16VisionApproveiOSV20HandleRequestContextVMa(0);
    sub_10065E75C(a2 + *(v8 + 20), a3 + v7[5], type metadata accessor for SDAuthenticationSessionMetrics);
    result = [a1 aksToken];
    if (result)
    {
      v10 = result;
      v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      result = sub_10065E7C4(a2, _s16VisionApproveiOSV20HandleRequestContextVMa);
      v14 = (a3 + v7[6]);
      *v14 = v11;
      v14[1] = v13;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v15 = sub_100010F88(1, 0xD000000000000019, 0x8000000100789BB0);
    v17 = v16;
    sub_1000115C8();
    swift_allocError();
    *v18 = v15;
    *(v18 + 8) = v17;
    swift_willThrow();

    sub_10065E7C4(a2, _s16VisionApproveiOSV20HandleRequestContextVMa);
  }

  return result;
}

uint64_t sub_10065CE88(uint64_t a1, uint64_t a2, void (*a3)(void, void))
{
  v4 = (v3 + *(a1 + 24));
  v5 = *v4;
  a3(*v4, v4[1]);
  return v5;
}

uint64_t sub_10065CF30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), Class *a4)
{
  v4 = sub_10065C940(a3, a4);
  v5 = [v4 data];

  if (v5)
  {
    v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

    return v6;
  }

  else
  {
    v8 = sub_100010F88(10, 0xD00000000000001ALL, 0x8000000100789BF0);
    v10 = v9;
    sub_1000115C8();
    swift_allocError();
    *v11 = v8;
    *(v11 + 8) = v10;
    return swift_willThrow();
  }
}

uint64_t sub_10065D008@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_10028088C(&qword_100975660, &qword_1007FA820);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1007F5670;
  if (qword_100973BE8 != -1)
  {
    swift_once();
  }

  *(v6 + 56) = &type metadata for SDAuthentication.Operation.HandleSucceededResult;
  *(v6 + 64) = &off_10097C258;
  *a3 = v6;
  if ([a1 hasSuccess])
  {
    v7 = *(_s16VisionApproveiOSV21HandleResponseContextVMa(0) + 20);
    v8 = _s16VisionApproveiOSV25HandleConfirmationContextVMa(0);
    sub_10065E75C(a2 + v7, a3 + *(v8 + 20), type metadata accessor for SDAuthenticationSessionMetrics);
    LOBYTE(v7) = [a1 success];

    result = sub_10065E7C4(a2, _s16VisionApproveiOSV21HandleResponseContextVMa);
    *(a3 + *(v8 + 24)) = v7;
  }

  else
  {
    v10 = sub_100010F88(1, 0xD000000000000016, 0x8000000100789BD0);
    v12 = v11;
    sub_1000115C8();
    swift_allocError();
    *v13 = v10;
    *(v13 + 8) = v12;
    swift_willThrow();

    sub_10065E7C4(a2, _s16VisionApproveiOSV21HandleResponseContextVMa);
  }

  return result;
}

void sub_10065D1D0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v171 = a2;
  v164 = a3;
  v135 = _s16VisionApproveiOSV25HandleConfirmationContextVMa(0);
  __chkstk_darwin(v135);
  v139 = (&v134 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_10028088C(&qword_100988038, &qword_10080EC28);
  __chkstk_darwin(v5 - 8);
  v144 = &v134 - v6;
  v136 = _s16VisionApproveiOSV18HandleTokenContextVMa(0);
  __chkstk_darwin(v136);
  v143 = (&v134 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_10028088C(&qword_100988040, &qword_10080EC30);
  __chkstk_darwin(v8 - 8);
  v150 = &v134 - v9;
  v145 = _s16VisionApproveiOSV21HandleResponseContextVMa(0);
  v142 = *(v145 - 8);
  v10 = __chkstk_darwin(v145);
  v137 = &v134 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v138 = &v134 - v13;
  __chkstk_darwin(v12);
  v149 = (&v134 - v14);
  v15 = sub_10028088C(&qword_100988048, &qword_10080EC38);
  __chkstk_darwin(v15 - 8);
  v156 = &v134 - v16;
  v151 = _s16VisionApproveiOSV20HandleRequestContextVMa(0);
  v148 = *(v151 - 8);
  v17 = __chkstk_darwin(v151);
  v140 = &v134 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v141 = &v134 - v20;
  __chkstk_darwin(v19);
  v155 = (&v134 - v21);
  v22 = sub_10028088C(&qword_100988050, &qword_10080EC40);
  __chkstk_darwin(v22 - 8);
  v163 = &v134 - v23;
  v24 = _s16VisionApproveiOSV18InitialLockContextVMa(0);
  v161 = *(v24 - 8);
  v162 = v24;
  v25 = __chkstk_darwin(v24);
  v153 = &v134 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v154 = &v134 - v27;
  v157 = _s16VisionApproveiOSV24HandleUserApprovalResultVMa(0);
  v152 = *(v157 - 8);
  v28 = __chkstk_darwin(v157);
  v146 = &v134 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v147 = &v134 - v31;
  __chkstk_darwin(v30);
  v160 = (&v134 - v32);
  v33 = sub_10028088C(&qword_100988058, &qword_10080EC48);
  __chkstk_darwin(v33 - 8);
  v35 = &v134 - v34;
  v36 = _s16VisionApproveiOSV26HandleApprovePromptContextVMa(0);
  v165 = *(v36 - 8);
  v166 = v36;
  v37 = __chkstk_darwin(v36);
  v158 = &v134 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __chkstk_darwin(v37);
  v159 = &v134 - v40;
  __chkstk_darwin(v39);
  v42 = (&v134 - v41);
  v43 = sub_10028088C(&qword_100988060, &unk_10080EC50);
  __chkstk_darwin(v43 - 8);
  v45 = &v134 - v44;
  v46 = _s16VisionApproveiOSV17InitialKeyContextVMa(0);
  v47 = *(v46 - 8);
  v48 = __chkstk_darwin(v46);
  v50 = &v134 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v48);
  v52 = &v134 - v51;
  sub_1002A9938(a1, v170);
  sub_10028088C(&qword_1009819F0, &unk_1007FAAA0);
  sub_1000276B4(0, &unk_1009757A0, off_1008C8D00);
  if (swift_dynamicCast())
  {
    v53 = v168;
    sub_1002A9938(v171, v170);
    sub_10028088C(&qword_1009758D8, &unk_1007F8C30);
    v54 = swift_dynamicCast();
    v55 = *(v47 + 56);
    if (!v54)
    {
      v55(v45, 1, 1, v46);
      sub_100005508(v45, &qword_100988060, &unk_10080EC50);
      v70 = sub_100010F88(10, 0xD000000000000046, 0x8000000100789AA0);
      v72 = v71;
      sub_1000115C8();
      swift_allocError();
      *v73 = v70;
      *(v73 + 8) = v72;
      swift_willThrow();

      return;
    }

    v55(v45, 0, 1, v46);
    sub_10065E6F4(v45, v52, _s16VisionApproveiOSV17InitialKeyContextVMa);
    sub_10065E75C(v52, v50, _s16VisionApproveiOSV17InitialKeyContextVMa);
    v56 = v53;
    v57 = v167;
    sub_10065BF64(v56, v50, v42);
    if (v57)
    {
      v58 = _s16VisionApproveiOSV17InitialKeyContextVMa;
      v59 = v52;
LABEL_33:
      sub_10065E7C4(v59, v58);

      return;
    }

    v95 = v164;
    v164[3] = v166;
    v95[4] = &off_1008ED170;
    v96 = sub_10002F604(v95);
    sub_10065E6F4(v42, v96, _s16VisionApproveiOSV26HandleApprovePromptContextVMa);

    v97 = _s16VisionApproveiOSV17InitialKeyContextVMa;
    v98 = v52;
    goto LABEL_43;
  }

  v60 = v171;
  sub_1002A9938(a1, v170);
  if (!swift_dynamicCast())
  {
    sub_1002A9938(a1, v170);
    sub_1000276B4(0, &qword_1009758B8, off_1008C8D48);
    if (swift_dynamicCast())
    {
      v74 = v168;
      sub_1002A9938(v60, v170);
      sub_10028088C(&qword_1009758D8, &unk_1007F8C30);
      v76 = v162;
      v75 = v163;
      v77 = swift_dynamicCast();
      v78 = *(v161 + 56);
      if (v77)
      {
        v78(v75, 0, 1, v76);
        v79 = v154;
        sub_10065E6F4(v75, v154, _s16VisionApproveiOSV18InitialLockContextVMa);
        v80 = v153;
        sub_10065E75C(v79, v153, _s16VisionApproveiOSV18InitialLockContextVMa);
        v56 = v74;
        v81 = v155;
        v82 = v167;
        sub_10065C59C(v56, v80, v155);
        if (v82)
        {
          v83 = _s16VisionApproveiOSV18InitialLockContextVMa;
LABEL_32:
          v58 = v83;
          v59 = v79;
          goto LABEL_33;
        }

        v117 = v164;
        v164[3] = v151;
        v117[4] = &off_1008ED1A0;
        v118 = sub_10002F604(v117);
        sub_10065E6F4(v81, v118, _s16VisionApproveiOSV20HandleRequestContextVMa);

        v119 = _s16VisionApproveiOSV18InitialLockContextVMa;
        goto LABEL_42;
      }

      v78(v75, 1, 1, v76);
      sub_100005508(v75, &qword_100988050, &qword_10080EC40);
      v99 = "sult, message may be replayed";
      v100 = 0xD000000000000047;
    }

    else
    {
      sub_1002A9938(a1, v170);
      sub_1000276B4(0, &qword_1009758C0, off_1008C8D50);
      if (swift_dynamicCast())
      {
        v74 = v168;
        sub_1002A9938(v60, v170);
        sub_10028088C(&qword_1009758D8, &unk_1007F8C30);
        v88 = v156;
        v89 = v157;
        v90 = swift_dynamicCast();
        v91 = *(v152 + 56);
        if (v90)
        {
          v91(v88, 0, 1, v89);
          v79 = v147;
          sub_10065E6F4(v88, v147, _s16VisionApproveiOSV24HandleUserApprovalResultVMa);
          v92 = v146;
          sub_10065E75C(v79, v146, _s16VisionApproveiOSV24HandleUserApprovalResultVMa);
          v56 = v74;
          v93 = v149;
          v94 = v167;
          sub_10065C9C0(v56, v92, v149);
          if (v94)
          {
            v83 = _s16VisionApproveiOSV24HandleUserApprovalResultVMa;
            goto LABEL_32;
          }

          v124 = v164;
          v164[3] = v145;
          v124[4] = &off_1008ED1B8;
          v125 = sub_10002F604(v124);
          sub_10065E6F4(v93, v125, _s16VisionApproveiOSV21HandleResponseContextVMa);

          v119 = _s16VisionApproveiOSV24HandleUserApprovalResultVMa;
LABEL_42:
          v97 = v119;
          v98 = v79;
          goto LABEL_43;
        }

        v91(v88, 1, 1, v89);
        sub_100005508(v88, &qword_100988048, &qword_10080EC38);
        v99 = ", message may be replayed";
        v100 = 0xD00000000000004DLL;
      }

      else
      {
        sub_1002A9938(a1, v170);
        sub_1000276B4(0, &qword_1009758C8, off_1008C8D58);
        if (swift_dynamicCast())
        {
          v74 = v168;
          sub_1002A9938(v60, v170);
          sub_10028088C(&qword_1009758D8, &unk_1007F8C30);
          v101 = v150;
          v102 = v151;
          v103 = swift_dynamicCast();
          v104 = *(v148 + 56);
          if (v103)
          {
            v104(v101, 0, 1, v102);
            v79 = v141;
            sub_10065E6F4(v101, v141, _s16VisionApproveiOSV20HandleRequestContextVMa);
            v105 = v140;
            sub_10065E75C(v79, v140, _s16VisionApproveiOSV20HandleRequestContextVMa);
            v56 = v74;
            v106 = v143;
            v107 = v167;
            sub_10065CC44(v56, v105, v143);
            if (v107)
            {
              v83 = _s16VisionApproveiOSV20HandleRequestContextVMa;
              goto LABEL_32;
            }

            v130 = v164;
            v164[3] = v136;
            v130[4] = &off_1008ED1D0;
            v131 = sub_10002F604(v130);
            sub_10065E6F4(v106, v131, _s16VisionApproveiOSV18HandleTokenContextVMa);

            v119 = _s16VisionApproveiOSV20HandleRequestContextVMa;
            goto LABEL_42;
          }

          v104(v101, 1, 1, v102);
          sub_100005508(v101, &qword_100988040, &qword_10080EC30);
          v99 = "t, message may be replayed";
          v100 = 0xD000000000000049;
        }

        else
        {
          sub_1002A9938(a1, v170);
          sub_1000276B4(0, &qword_1009758D0, off_1008C8D08);
          if (!swift_dynamicCast())
          {
            v120 = sub_100010F88(10, 0xD00000000000001FLL, 0x80000001007898F0);
            v122 = v121;
            sub_1000115C8();
            swift_allocError();
            *v123 = v120;
            *(v123 + 8) = v122;
            swift_willThrow();
            return;
          }

          v74 = v168;
          sub_1002A9938(v60, v170);
          sub_10028088C(&qword_1009758D8, &unk_1007F8C30);
          v110 = v144;
          v111 = v145;
          v112 = swift_dynamicCast();
          v113 = *(v142 + 56);
          if (v112)
          {
            v113(v110, 0, 1, v111);
            v79 = v138;
            sub_10065E6F4(v110, v138, _s16VisionApproveiOSV21HandleResponseContextVMa);
            v114 = v137;
            sub_10065E75C(v79, v137, _s16VisionApproveiOSV21HandleResponseContextVMa);
            v56 = v74;
            v115 = v139;
            v116 = v167;
            sub_10065D008(v56, v114, v139);
            if (v116)
            {
              v83 = _s16VisionApproveiOSV21HandleResponseContextVMa;
              goto LABEL_32;
            }

            v132 = v164;
            v164[3] = v135;
            v132[4] = &off_1008ED1E8;
            v133 = sub_10002F604(v132);
            sub_10065E6F4(v115, v133, _s16VisionApproveiOSV25HandleConfirmationContextVMa);

            v119 = _s16VisionApproveiOSV21HandleResponseContextVMa;
            goto LABEL_42;
          }

          v113(v110, 1, 1, v111);
          sub_100005508(v110, &qword_100988038, &qword_10080EC28);
          v99 = "Invalid message object received";
          v100 = 0xD00000000000004ALL;
        }
      }
    }

    v126 = sub_100010F88(10, v100, v99 | 0x8000000000000000);
    v128 = v127;
    sub_1000115C8();
    swift_allocError();
    *v129 = v126;
    *(v129 + 8) = v128;
    swift_willThrow();

    return;
  }

  v62 = v168;
  v61 = v169;
  sub_1002A9938(v60, v170);
  sub_10028088C(&qword_1009758D8, &unk_1007F8C30);
  v63 = v166;
  v64 = swift_dynamicCast();
  v65 = *(v165 + 56);
  if (!v64)
  {
    v65(v35, 1, 1, v63);
    sub_100005508(v35, &qword_100988058, &qword_10080EC48);
    v84 = sub_100010F88(10, 0xD00000000000004FLL, 0x8000000100789A50);
    v86 = v85;
    sub_1000115C8();
    swift_allocError();
    *v87 = v84;
    *(v87 + 8) = v86;
    swift_willThrow();
    goto LABEL_15;
  }

  v65(v35, 0, 1, v63);
  v66 = v159;
  sub_10065E6F4(v35, v159, _s16VisionApproveiOSV26HandleApprovePromptContextVMa);
  v67 = v158;
  sub_10065E75C(v66, v158, _s16VisionApproveiOSV26HandleApprovePromptContextVMa);
  sub_1002A9924(v62, v61);

  v68 = v160;
  v69 = v167;
  sub_10065C264(v62, v61, v67, v160);
  if (v69)
  {
    sub_10065E7C4(v66, _s16VisionApproveiOSV26HandleApprovePromptContextVMa);
LABEL_15:
    sub_10028BCC0(v62, v61);

    return;
  }

  v108 = v164;
  v164[3] = v157;
  v108[4] = &off_1008ED188;
  v109 = sub_10002F604(v108);
  sub_10065E6F4(v68, v109, _s16VisionApproveiOSV24HandleUserApprovalResultVMa);
  sub_10028BCC0(v62, v61);

  v97 = _s16VisionApproveiOSV26HandleApprovePromptContextVMa;
  v98 = v66;
LABEL_43:
  sub_10065E7C4(v98, v97);
}

uint64_t sub_10065E6F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10065E75C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10065E7C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_10065E84C(uint64_t a1)
{
  sub_1002A6B2C(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for SDAuthenticationSessionMetrics(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10065E90C(uint64_t a1)
{
  sub_1002A6B2C(319);
  if (v1 <= 0x3F)
  {
    sub_1002A6C44(319, &unk_100978AB0, &type metadata for Data, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      type metadata accessor for SDAuthenticationSessionMetrics(319);
      if (v3 <= 0x3F)
      {
        sub_1002A6C94(319, &unk_1009759E8, &qword_1009758B8, off_1008C8D48);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10065EA2C(uint64_t a1)
{
  sub_1002A6B2C(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for SDAuthenticationSessionMetrics(319);
    if (v2 <= 0x3F)
    {
      sub_1002A6C44(319, &unk_100978AB0, &type metadata for Data, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_1002A6C94(319, &unk_100975A90, &qword_1009758C0, off_1008C8D50);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_10065EBC4()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100988420);
  v1 = sub_10000C4AC(v0, qword_100988420);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10065EC8C()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  sub_1000276B4(0, &qword_10097A620, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v7[1] = _swiftEmptyArrayStorage;
  sub_100664BFC(&qword_100973C60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10028088C(&unk_10097A630, &unk_1007F5680);
  sub_1002808D4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v0);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_100988438 = result;
  return result;
}

uint64_t sub_10065EED4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for SFAirDropReceive.AskRequest.ItemInfo();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v4 = static AirDropActor.shared;

  return _swift_task_switch(sub_10065EFD8, v4, 0);
}

uint64_t sub_10065EFD8(uint64_t a1)
{
  v2 = *(SFAirDropReceive.AskRequest.files.getter() + 16);

  if (v2)
  {
    v3 = *(SFAirDropReceive.AskRequest.urlItems.getter() + 16);

    if (!v3)
    {
      v6 = objc_allocWithZone(LSApplicationRecord);
      v7 = sub_10066F3F8(0xD000000000000019, 0x800000010079A850, 1);
      v14 = v1[5];
      v15 = v1[3];
      v16 = *(v15 + 16);
      v41 = v15;
      *(v15 + 16) = v7;

      v17 = SFAirDropReceive.AskRequest.items.getter();
      v18 = 0;
      v38 = v17 + 56;
      v44 = v17;
      v19 = -1;
      v20 = -1 << *(v17 + 32);
      if (-v20 < 64)
      {
        v19 = ~(-1 << -v20);
      }

      v21 = v19 & *(v17 + 56);
      v39 = OBJC_IVAR____TtC16DaemoniOSLibrary29SDAirDropContentHandlerPhotos_hasVideos;
      v40 = OBJC_IVAR____TtC16DaemoniOSLibrary29SDAirDropContentHandlerPhotos_hasPhotos;
      v37 = (63 - v20) >> 6;
      v42 = (v14 + 8);
      v43 = v14;
      while (v21)
      {
LABEL_19:
        v30 = v1[6];
        v29 = v1[7];
        v31 = v1[4];
        (*(v43 + 16))(v29, *(v44 + 48) + *(v43 + 72) * (__clz(__rbit64(v21)) | (v18 << 6)), v31);
        (*(v43 + 32))(v30, v29, v31);
        SFAirDropReceive.AskRequest.ItemInfo.fileType.getter();

        v32 = String._bridgeToObjectiveC()();

        v33 = SFIsPhotosAssetBundle();

        if (v33)
        {

          SFAirDropReceive.AskRequest.ItemInfo.fileSubType.getter();
          if (!v34)
          {
            v35 = v1[6];
            v36 = v1[4];

            (*v42)(v35, v36);
            goto LABEL_3;
          }
        }

        v21 &= v21 - 1;
        v22 = v1[6];
        v23 = v1[4];
        v24 = String._bridgeToObjectiveC()();
        v25 = SFIsImage();

        v26 = String._bridgeToObjectiveC()();

        v27 = SFIsVideo();

        (*v42)(v22, v23);
        *(v41 + v40) = (*(v41 + v40) | v25) & 1;
        *(v41 + v39) = (*(v41 + v39) | v27) & 1;
        if (((v25 | v27 | v33) & 1) == 0)
        {

          goto LABEL_3;
        }
      }

      while (1)
      {
        v28 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        if (v28 >= v37)
        {

          v2 = 1;
          goto LABEL_4;
        }

        v21 = *(v38 + 8 * v28);
        ++v18;
        if (v21)
        {
          v18 = v28;
          goto LABEL_19;
        }
      }

      __break(1u);
      swift_once();
      v8 = type metadata accessor for Logger();
      sub_10000C4AC(v8, qword_100988420);
      swift_errorRetain();
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        *v11 = 138412290;
        swift_errorRetain();
        v13 = _swift_stdlib_bridgeErrorToNSError();
        *(v11 + 4) = v13;
        *v12 = v13;
        _os_log_impl(&_mh_execute_header, v9, v10, "Failed to get Photos application: %@", v11, 0xCu);
        sub_100005508(v12, &qword_100975400, &qword_1007F65D0);
      }

      else
      {
      }
    }

LABEL_3:
    v2 = 0;
  }

LABEL_4:

  v4 = v1[1];

  return v4(v2);
}

void sub_10065F468(uint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v4) = a2;
  v5 = type metadata accessor for SFAirDropReceive.AskRequest.ItemInfo();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  *&v55 = &v45 - v10;
  v11 = OBJC_IVAR____TtC16DaemoniOSLibrary29SDAirDropContentHandlerPhotos_hasPhotos;
  if (*(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary29SDAirDropContentHandlerPhotos_hasPhotos) == 1 && *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary29SDAirDropContentHandlerPhotos_hasVideos) == 1)
  {
    v47 = v4;
    v12 = SFAirDropReceive.AskRequest.items.getter();
    v48 = 0;
    v49 = 0;
    v46 = 0;
    v11 = 0;
    v3 = v12 + 56;
    v13 = *(v12 + 56);
    v54 = v12;
    v14 = 1 << *(v12 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v4 = v15 & v13;
    v16 = (v14 + 63) >> 6;
    v52 = v6 + 16;
    v51 = v6 + 32;
    v50 = (v6 + 8);
    v53 = v6;
    while (v4)
    {
LABEL_11:
      v18 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
      v19 = v55;
      (*(v6 + 16))(v55, *(v54 + 48) + *(v6 + 72) * (v18 | (v11 << 6)), v5);
      (*(v6 + 32))(v9, v19, v5);
      SFAirDropReceive.AskRequest.ItemInfo.fileType.getter();

      v20 = String._bridgeToObjectiveC()();

      v21 = SFIsPhotosAssetBundle();

      if (v21 && (, SFAirDropReceive.AskRequest.ItemInfo.fileSubType.getter(), !v22))
      {
        (*v50)(v9, v5);
        v6 = v53;
      }

      else
      {
        v23 = String._bridgeToObjectiveC()();
        v24 = SFIsImage();

        if (v24)
        {
          (*v50)(v9, v5);

          v27 = __OFADD__(v46, 1);
          v48 = ++v46;
          v6 = v53;
          if (v27)
          {
            __break(1u);
            goto LABEL_22;
          }
        }

        else
        {
          v25 = String._bridgeToObjectiveC()();

          v26 = SFIsVideo();

          (*v50)(v9, v5);
          v6 = v53;
          if (v26)
          {
            v27 = __OFADD__(v49++, 1);
            if (v27)
            {
LABEL_48:
              __break(1u);
              goto LABEL_49;
            }
          }
        }
      }
    }

    while (1)
    {
      v17 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        goto LABEL_48;
      }

      if (v17 >= v16)
      {
        break;
      }

      v4 = *(v3 + 8 * v17);
      ++v11;
      if (v4)
      {
        v11 = v17;
        goto LABEL_11;
      }
    }

    sub_10028088C(&qword_1009775E0, &unk_1007FAD10);
    inited = swift_initStackObject();
    v55 = xmmword_1007F8A70;
    *(inited + 16) = xmmword_1007F8A70;
    *(inited + 32) = 0x4F544F4850;
    v36 = v48;
    *(inited + 40) = 0xE500000000000000;
    *(inited + 48) = v36;
    *(inited + 56) = 0x4F45444956;
    *(inited + 64) = 0xE500000000000000;
    v37 = v49;
    *(inited + 72) = v49;
    v38 = v47;
    sub_1003D8D18(inited, v47 & 1);
    swift_setDeallocating();
    sub_10028088C(&qword_100981D40, &unk_1007FA6C0);
    swift_arrayDestroy();
    v39 = String._bridgeToObjectiveC()();
    v40 = SFLocalizedStringForKey();

    v41 = v37 <= 1 || v36 <= 1;
    if (!v41 || (v38 & 1) != 0)
    {
      if (!v40)
      {
        goto LABEL_50;
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
      v43 = swift_allocObject();
      *(v43 + 16) = v55;
      *(v43 + 56) = &type metadata for Int;
      *(v43 + 64) = &protocol witness table for Int;
      *(v43 + 32) = v36;
      *(v43 + 96) = &type metadata for Int;
      *(v43 + 104) = &protocol witness table for Int;
      *(v43 + 72) = v37;
    }

    else if (v36 < 2)
    {
      if (v37 < 2)
      {
        if (!v40)
        {
          goto LABEL_53;
        }

        static String._unconditionallyBridgeFromObjectiveC(_:)();

        static String.localizedStringWithFormat(_:_:)();
        goto LABEL_29;
      }

      if (!v40)
      {
        goto LABEL_52;
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_1007F5670;
      *(v44 + 56) = &type metadata for Int;
      *(v44 + 64) = &protocol witness table for Int;
      *(v44 + 32) = v37;
    }

    else
    {
      if (!v40)
      {
        goto LABEL_51;
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_1007F5670;
      *(v42 + 56) = &type metadata for Int;
      *(v42 + 64) = &protocol witness table for Int;
      *(v42 + 32) = v36;
    }

LABEL_28:
    static String.localizedStringWithFormat(_:_:)();

LABEL_29:

    return;
  }

LABEL_22:
  v28 = *(SFAirDropReceive.AskRequest.files.getter() + 16);

  if (*(v3 + v11))
  {
    v29 = 0x4F544F4850;
  }

  else
  {
    if (*(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary29SDAirDropContentHandlerPhotos_hasVideos) != 1)
    {
      return;
    }

    v29 = 0x4F45444956;
  }

  sub_10028088C(&qword_1009775E0, &unk_1007FAD10);
  v30 = swift_initStackObject();
  v55 = xmmword_1007F5670;
  *(v30 + 16) = xmmword_1007F5670;
  *(v30 + 32) = v29;
  v31 = v30 + 32;
  *(v30 + 40) = 0xE500000000000000;
  *(v30 + 48) = v28;
  sub_1003D8D18(v30, v4 & 1);
  swift_setDeallocating();
  sub_100005508(v31, &qword_100981D40, &unk_1007FA6C0);
  v32 = String._bridgeToObjectiveC()();

  v33 = SFLocalizedStringForKey();

  if (v33)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
    v34 = swift_allocObject();
    *(v34 + 16) = v55;
    *(v34 + 56) = &type metadata for Int;
    *(v34 + 64) = &protocol witness table for Int;
    *(v34 + 32) = v28;
    goto LABEL_28;
  }

LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
}

uint64_t sub_10065FC5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[10] = a3;
  v6[11] = a4;
  v6[8] = a1;
  v6[9] = a2;
  v9 = type metadata accessor for URL();
  v6[14] = v9;
  v6[15] = *(v9 - 8);
  v6[16] = swift_task_alloc();
  v10 = swift_allocObject();
  v6[17] = v10;
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  v11 = qword_1009735E0;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = static AirDropActor.shared;
  v6[18] = static AirDropActor.shared;

  return _swift_task_switch(sub_10065FD8C, v12, 0);
}

uint64_t sub_10065FD8C()
{
  v0[19] = [objc_opt_self() sharedPhotoLibrary];
  if (qword_100973BF8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for SDAirDropDownloadDestinationProvideriOS();
  v2 = swift_allocObject();
  v0[5] = v1;
  v0[6] = &off_1008D8778;
  v0[2] = v2;
  sub_10002CDC0(v0 + 2, v1);
  v3 = swift_task_alloc();
  v0[20] = v3;
  *v3 = v0;
  v3[1] = sub_10065FEB0;
  v4 = v0[16];
  v5 = v0[11];

  return sub_10027D7A0(v4, v5);
}

uint64_t sub_10065FEB0()
{
  v2 = *v1;
  *(v2 + 168) = v0;

  v3 = *(v2 + 144);
  if (v0)
  {

    v4 = sub_100660298;
  }

  else
  {
    v4 = sub_10065FFE8;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10065FFE8()
{
  v1 = v0[18];
  v2 = v0[19];
  v4 = v0[16];
  v3 = v0[17];
  v6 = v0[12];
  v5 = v0[13];
  v7 = sub_100664BFC(&qword_100977C00, type metadata accessor for AirDropActor, &protocol conformance descriptor for AirDropActor);
  v8 = swift_task_alloc();
  v0[22] = v8;
  v8[2] = v6;
  v8[3] = v2;
  v8[4] = v5;
  v8[5] = v4;
  v8[6] = sub_10066426C;
  v8[7] = v3;
  v9 = swift_task_alloc();
  v0[23] = v9;
  v10 = sub_10028088C(&qword_100975610, &qword_1007F89B0);
  *v9 = v0;
  v9[1] = sub_100660160;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 7, v1, v7, 0xD000000000000027, 0x800000010078B120, sub_1006642A4, v8, v10);
}

uint64_t sub_100660160()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = *(v2 + 144);
    v4 = sub_1006603F4;
  }

  else
  {
    v5 = *(v2 + 144);

    v4 = sub_100660328;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100660298(uint64_t a1)
{
  v2 = v1[19];
  swift_willThrow();

  sub_10000C60C(v1 + 2);

  v3 = v1[1];

  return v3();
}

uint64_t sub_100660328()
{
  v11 = v0;
  v1 = v0[19];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[14];
  v5 = v0[9];
  v7 = v0[7];
  v6 = v0[8];
  v10 = 0x3FF0000000000000;
  v5(&v10);

  *v6 = v7;
  (*(v3 + 8))(v2, v4);
  sub_10000C60C(v0 + 2);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1006603F4()
{
  v1 = v0[16];
  v2 = v0[14];
  v3 = v0[15];

  (*(v3 + 8))(v1, v2);
  v4 = v0[19];
  swift_willThrow();

  sub_10000C60C(v0 + 2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1006604B4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v36 = a4;
  v37 = a7;
  v34 = a6;
  v41 = a3;
  v38 = a1;
  v40 = sub_10028088C(&qword_100988628, &unk_10080EFF0);
  v9 = *(v40 - 8);
  v35 = *(v9 + 64);
  __chkstk_darwin(v40);
  v39 = &v34 - v10;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100973BF0 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_10000C4AC(v15, qword_100988420);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 134217984;
    *(v18 + 4) = *(a2 + 16);

    _os_log_impl(&_mh_execute_header, v16, v17, "PHPhotoLibrary preparing import of %ld items", v18, 0xCu);
  }

  else
  {
  }

  v19 = swift_allocObject();
  *(v19 + 16) = _swiftEmptyArrayStorage;
  (*(v12 + 16))(&v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a5, v11);
  v20 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v21 = (v13 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  v23 = v36;
  *(v22 + 2) = v19;
  *(v22 + 3) = v23;
  *(v22 + 4) = a2;
  (*(v12 + 32))(&v22[v20], v14, v11);
  v24 = &v22[v21];
  v25 = v37;
  *v24 = v34;
  v24[1] = v25;
  v46 = sub_1006642B4;
  v47 = v22;
  aBlock = _NSConcreteStackBlock;
  v43 = 1107296256;
  v44 = sub_100011678;
  v45 = &unk_1008ED340;
  v26 = _Block_copy(&aBlock);

  v27 = v39;
  v28 = v40;
  (*(v9 + 16))(v39, v38, v40);
  v29 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v30 = (v35 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  *(v31 + 16) = a2;
  (*(v9 + 32))(v31 + v29, v27, v28);
  *(v31 + v30) = v19;
  v46 = sub_10066434C;
  v47 = v31;
  aBlock = _NSConcreteStackBlock;
  v43 = 1107296256;
  v44 = sub_100660DA8;
  v45 = &unk_1008ED390;
  v32 = _Block_copy(&aBlock);

  [v41 performChanges:v26 completionHandler:v32];
  _Block_release(v32);
  _Block_release(v26);
}

uint64_t sub_100660958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(double), uint64_t a6)
{
  v7 = sub_1006615F0(a3, a4, a5, a6);
  swift_beginAccess();
  *(a1 + 16) = v7;
}

uint64_t sub_1006609BC(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    if (qword_100973BF0 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000C4AC(v6, qword_100988420);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 134217984;
      *(v9 + 4) = *(a3 + 16);

      _os_log_impl(&_mh_execute_header, v7, v8, "PHPhotoLibrary performChanges reported success for %ld items", v9, 0xCu);
    }

    else
    {
    }

    swift_beginAccess();

    sub_10028088C(&qword_100988628, &unk_10080EFF0);
    return CheckedContinuation.resume(returning:)();
  }

  else
  {
    if (qword_100973BF0 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000C4AC(v11, qword_100988420);

    swift_errorRetain();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v26[0] = v16;
      *v14 = 138412546;
      if (a2)
      {
        swift_errorRetain();
        v17 = _swift_stdlib_bridgeErrorToNSError();
        v18 = v17;
      }

      else
      {
        v17 = 0;
        v18 = 0;
      }

      *(v14 + 4) = v17;
      *v15 = v18;
      *(v14 + 12) = 2080;
      type metadata accessor for URL();
      v20 = Array.description.getter();
      v22 = sub_10000C4E4(v20, v21, v26);

      *(v14 + 14) = v22;
      _os_log_impl(&_mh_execute_header, v12, v13, "PHPhotoLibrary performChanges failed with error %@ for items %s", v14, 0x16u);
      sub_100005508(v15, &qword_100975400, &qword_1007F65D0);

      sub_10000C60C(v16);
    }

    v23 = a2;
    if (!a2)
    {
      v24 = type metadata accessor for SFAirDropReceive.Failure();
      sub_100664BFC(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure, &protocol conformance descriptor for SFAirDropReceive.Failure);
      v23 = swift_allocError();
      (*(*(v24 - 8) + 104))(v25, enum case for SFAirDropReceive.Failure.moveToAppFailed(_:), v24);
    }

    v26[0] = v23;
    swift_errorRetain();
    sub_10028088C(&qword_100988628, &unk_10080EFF0);
    return CheckedContinuation.resume(throwing:)();
  }
}

void sub_100660DA8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_100660E20(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  v5 = v3;

  return SFProgressTask.init(_:initialProgress:operation:file:line:)();
}

uint64_t sub_100660EF8(uint64_t a1, int a2, uint64_t a3)
{
  v49 = a2;
  v54 = a1;
  v4 = type metadata accessor for SFAirDropReceive.Transfer();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v53 = v6;
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v8 - 8);
  v10 = &v43 - v9;
  v55 = type metadata accessor for UUID();
  v11 = *(v55 - 8);
  v12 = __chkstk_darwin(v55);
  v51 = v13;
  v52 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v43 - v14;
  v16 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v47 = *(v16 - 8);
  v48 = v16;
  __chkstk_darwin(v16);
  v44 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  __chkstk_darwin(v18 - 8);
  v46 = &v43 - v19;
  v20 = sub_10028088C(&unk_1009892C0, &qword_10080F030);
  __chkstk_darwin(v20 - 8);
  v22 = (&v43 - v21);
  sub_10000FF90(a3, &v43 - v21, &unk_1009892C0, &qword_10080F030);
  v23 = type metadata accessor for SFAirDropReceive.ItemDestination();
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    sub_100005508(v22, &unk_1009892C0, &qword_10080F030);
LABEL_15:
    v35 = v15;
    v50 = v15;
    v36 = v54;
    SFAirDropReceive.Transfer.receiveID.getter();
    v37 = type metadata accessor for TaskPriority();
    (*(*(v37 - 8) + 56))(v10, 1, 1, v37);
    (*(v5 + 16))(v7, v36, v4);
    v38 = v52;
    v39 = v55;
    (*(v11 + 16))(v52, v35, v55);
    v40 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v41 = (v53 + *(v11 + 80) + v40) & ~*(v11 + 80);
    v42 = swift_allocObject();
    (*(v5 + 32))(v42 + v40, v7, v4);
    (*(v11 + 32))(v42 + v41, v38, v39);
    static Task<>.noThrow(priority:operation:)();

    sub_100005508(v10, &qword_100976160, &qword_1007F8770);
    return (*(v11 + 8))(v50, v39);
  }

  if ((*(v24 + 88))(v22, v23) != enum case for SFAirDropReceive.ItemDestination.customApp(_:))
  {
    (*(v24 + 8))(v22, v23);
    goto LABEL_15;
  }

  (*(v24 + 96))(v22, v23);
  if (*v22 == 0xD000000000000034 && 0x800000010078AA10 == v22[1])
  {
  }

  else
  {
    v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v25 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  if ((v49 & 1) == 0)
  {
    goto LABEL_15;
  }

  v26 = v45;
  if (qword_100973BF0 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  sub_10000C4AC(v27, qword_100988420);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&_mh_execute_header, v28, v29, "Photos transfer succeeded with moveToApp selected; not cleaning up until Share Sheet is done", v30, 2u);
  }

  v31 = v44;
  SFAirDropReceive.Transfer.id.getter();
  v32 = v46;
  SFAirDrop.TransferIdentifier.id.getter();
  (*(v47 + 8))(v31, v48);
  (*(v11 + 56))(v32, 0, 1, v55);
  v33 = OBJC_IVAR____TtC16DaemoniOSLibrary29SDAirDropContentHandlerPhotos_transferID;
  swift_beginAccess();
  sub_1005E884C(v32, v26 + v33);
  return swift_endAccess();
}

char *sub_1006615F0(uint64_t a1, uint64_t a2, void (*a3)(double), uint64_t a4)
{
  v230 = a4;
  v229 = a3;
  v221 = a2;
  v248 = a1;
  v4 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v4 - 8);
  v235 = &v207[-v5];
  v6 = sub_10028088C(&unk_100974E00, &qword_1007F8940);
  __chkstk_darwin(v6 - 8);
  v218 = &v207[-v7];
  v243 = type metadata accessor for URLResourceValues();
  v264 = *(v243 - 8);
  __chkstk_darwin(v243);
  v255 = &v207[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v242 = sub_10028088C(&qword_100975180, &qword_100805430);
  __chkstk_darwin(v242);
  v249 = &v207[-v9];
  v232 = type metadata accessor for UTType();
  v10 = *(v232 - 8);
  v11 = __chkstk_darwin(v232);
  v244 = &v207[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v233 = &v207[-v13];
  v14 = type metadata accessor for URL();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v212 = &v207[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = __chkstk_darwin(v16);
  urlString = &v207[-v19];
  v21 = __chkstk_darwin(v18);
  v217 = &v207[-v22];
  v23 = __chkstk_darwin(v21);
  v216 = &v207[-v24];
  v25 = __chkstk_darwin(v23);
  v213 = &v207[-v26];
  v27 = __chkstk_darwin(v25);
  v224 = &v207[-v28];
  v29 = __chkstk_darwin(v27);
  v220 = &v207[-v30];
  v31 = __chkstk_darwin(v29);
  v219 = &v207[-v32];
  v33 = __chkstk_darwin(v31);
  v214 = &v207[-v34];
  v35 = __chkstk_darwin(v33);
  v226 = &v207[-v36];
  v37 = __chkstk_darwin(v35);
  v225 = &v207[-v38];
  v39 = __chkstk_darwin(v37);
  v223 = &v207[-v40];
  __chkstk_darwin(v39);
  v42 = &v207[-v41];
  v260 = sub_10028088C(&qword_10097A3B0, &unk_1007FD5B0);
  v43 = *(v260 - 8);
  __chkstk_darwin(v260);
  v246 = &v207[-v44];
  v45 = sub_10028088C(&qword_10097A3B8, &qword_1007FE9C0);
  v46 = __chkstk_darwin(v45 - 8);
  v259 = &v207[-((v47 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v46);
  v258 = &v207[-v48];
  v49 = type metadata accessor for UUID();
  v50 = *(v49 - 8);
  __chkstk_darwin(v49);
  v52 = &v207[-((v51 + 15) & 0xFFFFFFFFFFFFFFF0)];
  UUID.init()();
  v227 = UUID.uuidString.getter();
  v237 = v53;
  (*(v50 + 8))(v52, v49);
  v54 = 0;
  v55 = 0;
  baseURL = *(v248 + 16);
  v262 = (v15 + 16);
  v257 = (v43 + 56);
  v256 = (v43 + 48);
  v57 = v255;
  v253 = (v15 + 32);
  v252 = NSURLContentTypeKey;
  p_urlString = &v264->_urlString;
  v240 = "com.apple.frontboard.visibility";
  v254 = (v15 + 8);
  v231 = (v10 + 32);
  v247 = v15;
  v215 = (v15 + 48);
  v58 = (&baseURL->super.isa + 1);
  v228 = (v10 + 8);
  v59 = v14;
  *(&v60 + 1) = 2;
  *&v251._clients = xmmword_1007F5670;
  *&v60 = 136315138;
  v222 = v60;
  *&v60 = 136315394;
  v245 = v60;
  v239 = _swiftEmptyArrayStorage;
  v236 = _swiftEmptyArrayStorage;
  v238 = _swiftEmptyArrayStorage;
  v251._baseURL = baseURL;
  v251._urlString = urlString;
  v261 = v42;
  while (2)
  {
    v62 = v259;
    v61 = v260;
    while (1)
    {
      if (v54 == baseURL)
      {
        v64 = 1;
        v264 = baseURL;
      }

      else
      {
        if (v54 >= baseURL)
        {
          __break(1u);
LABEL_99:
          __break(1u);
          goto LABEL_100;
        }

        v65 = (&v54->super.isa + 1);
        if (__OFADD__(v54, 1))
        {
          goto LABEL_99;
        }

        v66 = v247;
        v67 = v248 + ((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * v54;
        v68 = *(v61 + 48);
        v69 = v246;
        *v246 = v54;
        (*(v66 + 16))(v69 + v68, v67, v59);
        sub_10002C4E4(v69, v62, &qword_10097A3B0, &unk_1007FD5B0);
        v64 = 0;
        v264 = v65;
      }

      (*v257)(v62, v64, 1, v61);
      v70 = v258;
      sub_10002C4E4(v62, v258, &qword_10097A3B8, &qword_1007FE9C0);
      if ((*v256)(v70, 1, v61) == 1)
      {

        v202 = type metadata accessor for TaskPriority();
        v203 = v235;
        (*(*(v202 - 8) + 56))(v235, 1, 1, v202);
        v204 = swift_allocObject();
        v205 = v239;
        v204[2] = v234;
        v204[3] = v205;
        v204[4] = v238;
        v206 = swift_allocObject();
        *(v206 + 16) = &unk_10080F018;
        *(v206 + 24) = v204;

        static Task<>.noThrow(priority:operation:)();

        sub_100005508(v203, &qword_100976160, &qword_1007F8770);
        return v236;
      }

      v71 = *v70;
      v72 = *v253;
      (*v253)(v42, &v70[*(v61 + 48)], v59);
      sub_10028088C(&qword_100976C30, &qword_1007F8818);
      inited = swift_initStackObject();
      *(inited + 16) = *&v251._clients;
      v74 = v252;
      *(inited + 32) = v252;
      v75 = v74;
      sub_1002F13BC(inited);
      swift_setDeallocating();
      sub_10029A730(inited + 32);
      URL.resourceValues(forKeys:)();
      if (!v55)
      {
        break;
      }

      v263 = 0;
      v42 = v261;
      if (qword_100973BF0 != -1)
      {
        swift_once();
      }

      v76 = type metadata accessor for Logger();
      sub_10000C4AC(v76, qword_100988420);
      (*v262)(urlString, v42, v59);
      swift_errorRetain();
      v77 = Logger.logObject.getter();
      v78 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v251.super.isa = swift_slowAlloc();
        isa = v251.super.isa;
        *v79 = v245;
        sub_100664BFC(&qword_100975160, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v81 = dispatch thunk of CustomStringConvertible.description.getter();
        v83 = v82;
        v250 = *v254;
        v250(v251._urlString, v59);
        v84 = sub_10000C4E4(v81, v83, &isa);
        v42 = v261;

        *(v79 + 4) = v84;
        *(v79 + 12) = 2112;
        swift_errorRetain();
        v85 = _swift_stdlib_bridgeErrorToNSError();
        *(v79 + 14) = v85;
        *v80 = v85;
        _os_log_impl(&_mh_execute_header, v77, v78, "Could not get UTType for URL %s: %@", v79, 0x16u);
        sub_100005508(v80, &qword_100975400, &qword_1007F65D0);

        sub_10000C60C(v251.super.isa);

        v250(v42, v59);
        urlString = v251._urlString;
      }

      else
      {

        v63 = *v254;
        (*v254)(urlString, v59);
        v63(v42, v59);
      }

      v57 = v255;
      v62 = v259;
      v61 = v260;
      baseURL = v251._baseURL;
      v55 = v263;
      v54 = v264;
    }

    URLResourceValues.contentType.getter();
    (*p_urlString)(v57, v243);
    Optional.tryUnwrap(_:file:line:)();
    sub_100005508(v249, &qword_100975180, &qword_100805430);
    v86 = v233;
    (*v231)(v233, v244, v232);
    UTType.identifier.getter();
    v87 = String._bridgeToObjectiveC()();

    v88 = SFIsPhotosAssetBundle();

    if (v88)
    {
      v89 = objc_allocWithZone(PFAssetBundle);
      URL._bridgeToObjectiveC()(v90);
      v92 = v91;
      v93 = [v89 initWithAssetBundleAtURL:v91];

      if (v93)
      {
        v263 = [objc_opt_self() creationRequestForAssetFromAssetBundle:v93];
        sub_1000276B4(0, &qword_100974730, NSUserDefaults_ptr);
        v94 = static NSUserDefaults.airdrop.getter();
        v95 = SFAirDropUserDefaults.moveToAppEnabled.getter();

        if ((v95 & 1) == 0)
        {

          goto LABEL_63;
        }

        URL._bridgeToObjectiveC()(&v251);
        v97 = v96;
        isa = 0;
        v250 = v93;
        v98 = [v93 writeDowngradedRepresentationToDirectory:v96 error:&isa];

        v99 = isa;
        if (v98)
        {
          v100 = v225;
          static URL._unconditionallyBridgeFromObjectiveC(_:)();
          v101 = v99;

          (*v262)(v226, v100, v59);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v239 = sub_10028E2D4(0, v239[2] + 1, 1, v239);
          }

          v103 = v239[2];
          v102 = v239[3];
          if (v103 >= v102 >> 1)
          {
            v239 = sub_10028E2D4((v102 > 1), v103 + 1, 1, v239);
          }

          v104 = v247;
          (*(v247 + 8))(v225, v59);
          v105 = v239;
          v239[2] = v103 + 1;
          v72(&v105[((*(v104 + 80) + 32) & ~*(v104 + 80)) + *(v104 + 72) * v103], v226, v59);
          v55 = 0;
LABEL_63:
          v126 = v263;
          if (v263)
          {
LABEL_64:
            v158 = String._bridgeToObjectiveC()();
            [(objc_class *)v126 setImportSessionID:v158];

            [(objc_class *)v126 setImportedBy:13];
            v159 = [(objc_class *)v126 placeholderForCreatedAsset];
            v263 = v126;
            if (v159)
            {
              v160 = v159;
              v161 = [v159 localIdentifier];

              v162 = v161;
              if (!v161)
              {
                static String._unconditionallyBridgeFromObjectiveC(_:)();
                v162 = String._bridgeToObjectiveC()();
              }

              v163 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v165 = v164;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v251.super.isa = v55;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v238 = sub_10028E1C8(0, *(v238 + 2) + 1, 1, v238);
              }

              v168 = *(v238 + 2);
              v167 = *(v238 + 3);
              if (v168 >= v167 >> 1)
              {
                v238 = sub_10028E1C8((v167 > 1), v168 + 1, 1, v238);
              }

              v169 = v238;
              *(v238 + 2) = v168 + 1;
              v170 = &v169[16 * v168];
              *(v170 + 4) = v163;
              *(v170 + 5) = v165;
              if (*(v236 + 2))
              {

                v86 = v233;
                urlString = v251._urlString;
                goto LABEL_91;
              }

              v171 = sub_1001EB3F4(v162);

              static String._unconditionallyBridgeFromObjectiveC(_:)();
              v172 = v218;
              URL.init(string:)();

              v173 = (*v215)(v172, 1, v59);
              urlString = v251._urlString;
              v55 = v251.super.isa;
              if (v173 == 1)
              {
                sub_100005508(v172, &unk_100974E00, &qword_1007F8940);
                v86 = v233;
              }

              else
              {
                v196 = v216;
                v72(v216, v172, v59);
                (*v262)(v217, v196, v59);
                v197 = swift_isUniquelyReferenced_nonNull_native();
                v86 = v233;
                if ((v197 & 1) == 0)
                {
                  v236 = sub_10028E2D4(0, *(v236 + 2) + 1, 1, v236);
                }

                v199 = *(v236 + 2);
                v198 = *(v236 + 3);
                if (v199 >= v198 >> 1)
                {
                  v236 = sub_10028E2D4((v198 > 1), v199 + 1, 1, v236);
                }

                v200 = v247;
                (*(v247 + 8))(v216, v59);
                v201 = v236;
                *(v236 + 2) = v199 + 1;
                v72(&v201[((*(v200 + 80) + 32) & ~*(v200 + 80)) + *(v200 + 72) * v199], v217, v59);
LABEL_91:
                v55 = v251.super.isa;
              }
            }

LABEL_95:
            if (!__OFADD__(v71, 1))
            {
              v229((v71 + 1) / v58);

              (*v228)(v86, v232);
              v42 = v261;
              (*v254)(v261, v59);
              baseURL = v251._baseURL;
              v54 = v264;
              continue;
            }

LABEL_100:
            __break(1u);
          }
        }

        else
        {
          v181 = isa;
          _convertNSErrorToError(_:)();

          swift_willThrow();
          v126 = v263;
          if (qword_100973BF0 != -1)
          {
            swift_once();
          }

          v251.super.isa = 0;
          v182 = type metadata accessor for Logger();
          sub_10000C4AC(v182, qword_100988420);
          v183 = v212;
          (*v262)(v212, v261, v59);
          swift_errorRetain();
          v184 = Logger.logObject.getter();
          v185 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v184, v185))
          {
            v186 = swift_slowAlloc();
            v210 = swift_slowAlloc();
            v211 = swift_slowAlloc();
            isa = v211;
            *v186 = v245;
            sub_100664BFC(&qword_100975160, &type metadata accessor for URL, &protocol conformance descriptor for URL);
            v209 = v184;
            v187 = dispatch thunk of CustomStringConvertible.description.getter();
            v208 = v185;
            v188 = urlString;
            v189 = v126;
            v191 = v190;
            (*v254)(v183, v59);
            v192 = sub_10000C4E4(v187, v191, &isa);
            v126 = v189;
            urlString = v188;

            *(v186 + 4) = v192;
            *(v186 + 12) = 2112;
            swift_errorRetain();
            v193 = _swift_stdlib_bridgeErrorToNSError();
            *(v186 + 14) = v193;
            v194 = v210;
            *v210 = v193;
            v195 = v209;
            _os_log_impl(&_mh_execute_header, v209, v208, "Failed to downgrade asset bundle %s with error: %@", v186, 0x16u);
            sub_100005508(v194, &qword_100975400, &qword_1007F65D0);

            sub_10000C60C(v211);

            v57 = v255;
          }

          else
          {

            (*v254)(v183, v59);
          }

          v86 = v233;
          v55 = v251.super.isa;
          if (v126)
          {
            goto LABEL_64;
          }
        }

LABEL_94:
        v263 = 0;
        goto LABEL_95;
      }

      if (qword_100973BF0 != -1)
      {
        swift_once();
      }

      v136 = type metadata accessor for Logger();
      sub_10000C4AC(v136, qword_100988420);
      v137 = v223;
      (*v262)(v223, v261, v59);
      v138 = Logger.logObject.getter();
      v139 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v138, v139))
      {
        v140 = swift_slowAlloc();
        v141 = v57;
        v142 = swift_slowAlloc();
        isa = v142;
        *v140 = v222;
        sub_100664BFC(&qword_100975160, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v143 = dispatch thunk of CustomStringConvertible.description.getter();
        v144 = v137;
        v146 = v145;
        (*v254)(v144, v59);
        v147 = sub_10000C4E4(v143, v146, &isa);

        *(v140 + 4) = v147;
        v148 = v139;
        v149 = v138;
        v150 = "PFAssetBundle initWithAssetBundleAtURL(%s) returned nil";
        goto LABEL_79;
      }

LABEL_80:

      (*v254)(v137, v59);
LABEL_81:
      v263 = 0;
      v86 = v233;
      v55 = 0;
      goto LABEL_95;
    }

    break;
  }

  UTType.identifier.getter();
  v106 = String._bridgeToObjectiveC()();

  v107 = SFIsLivePhotos();

  if (!v107)
  {
    UTType.identifier.getter();
    v122 = String._bridgeToObjectiveC()();

    v123 = SFIsVideo();

    if ((v123 & 1) != 0 || (UTType.identifier.getter(), v124 = String._bridgeToObjectiveC()(), , v125 = SFIsImage(), v124, v125))
    {
      v126 = [objc_opt_self() creationRequestForAsset];
      v127 = [objc_allocWithZone(PHAssetResourceCreationOptions) init];
      if (v126)
      {
        if (v123)
        {
          v128 = 2;
        }

        else
        {
          v128 = 1;
        }

        URL._bridgeToObjectiveC()(1);
        v130 = v129;
        [(objc_class *)v126 addResourceWithType:v128 fileURL:v129 options:v127];
      }

      sub_1000276B4(0, &qword_100974730, NSUserDefaults_ptr);
      v131 = static NSUserDefaults.airdrop.getter();
      v132 = SFAirDropUserDefaults.moveToAppEnabled.getter();

      if (v132)
      {
        (*v262)(v224, v261, v59);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v239 = sub_10028E2D4(0, v239[2] + 1, 1, v239);
        }

        v134 = v239[2];
        v133 = v239[3];
        if (v134 >= v133 >> 1)
        {
          v239 = sub_10028E2D4((v133 > 1), v134 + 1, 1, v239);
        }

        v135 = v239;
        v239[2] = v134 + 1;
        v72(&v135[((*(v247 + 80) + 32) & ~*(v247 + 80)) + *(v247 + 72) * v134], v224, v59);
      }

      else
      {
      }

      v86 = v233;
      if (v126)
      {
        goto LABEL_64;
      }

      goto LABEL_94;
    }

    if (qword_100973BF0 != -1)
    {
      swift_once();
    }

    v174 = type metadata accessor for Logger();
    sub_10000C4AC(v174, qword_100988420);
    v137 = v213;
    (*v262)(v213, v261, v59);
    v138 = Logger.logObject.getter();
    v175 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v138, v175))
    {
      goto LABEL_80;
    }

    v140 = swift_slowAlloc();
    v141 = v57;
    v142 = swift_slowAlloc();
    isa = v142;
    *v140 = v222;
    sub_100664BFC(&qword_100975160, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v176 = dispatch thunk of CustomStringConvertible.description.getter();
    v177 = v137;
    v179 = v178;
    (*v254)(v177, v59);
    v180 = sub_10000C4E4(v176, v179, &isa);

    *(v140 + 4) = v180;
    v148 = v175;
    v149 = v138;
    v150 = "Not a Photos type %s. Ignoring";
    goto LABEL_79;
  }

  v108 = objc_allocWithZone(PFVideoComplement);
  URL._bridgeToObjectiveC()(v109);
  v111 = v110;
  v112 = [v108 initWithBundleAtURL:v110];

  if (!v112)
  {
    if (qword_100973BF0 != -1)
    {
      swift_once();
    }

    v151 = type metadata accessor for Logger();
    sub_10000C4AC(v151, qword_100988420);
    v137 = v214;
    (*v262)(v214, v261, v59);
    v138 = Logger.logObject.getter();
    v152 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v138, v152))
    {
      goto LABEL_80;
    }

    v140 = swift_slowAlloc();
    v141 = v57;
    v142 = swift_slowAlloc();
    isa = v142;
    *v140 = v222;
    sub_100664BFC(&qword_100975160, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v153 = dispatch thunk of CustomStringConvertible.description.getter();
    v154 = v137;
    v156 = v155;
    (*v254)(v154, v59);
    v157 = sub_10000C4E4(v153, v156, &isa);

    *(v140 + 4) = v157;
    v148 = v152;
    v149 = v138;
    v150 = "PFVideoComplement initWithBundleAtURL(%s) returned nil";
LABEL_79:
    _os_log_impl(&_mh_execute_header, v149, v148, v150, v140, 0xCu);
    sub_10000C60C(v142);
    v57 = v141;
    urlString = v251._urlString;

    goto LABEL_81;
  }

  v263 = [objc_opt_self() creationRequestForAssetFromVideoComplementBundle:v112];
  sub_1000276B4(0, &qword_100974730, NSUserDefaults_ptr);
  v113 = static NSUserDefaults.airdrop.getter();
  v114 = SFAirDropUserDefaults.moveToAppEnabled.getter();

  if ((v114 & 1) == 0)
  {

LABEL_62:
    v86 = v233;
    goto LABEL_63;
  }

  result = [v112 videoPath];
  if (result)
  {
    v116 = result;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v117 = v219;
    URL.init(fileURLWithPath:)();

    (*v262)(v220, v117, v59);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v239 = sub_10028E2D4(0, v239[2] + 1, 1, v239);
    }

    v119 = v239[2];
    v118 = v239[3];
    if (v119 >= v118 >> 1)
    {
      v239 = sub_10028E2D4((v118 > 1), v119 + 1, 1, v239);
    }

    v120 = v247;
    (*(v247 + 8))(v219, v59);
    v121 = v239;
    v239[2] = v119 + 1;
    v72(&v121[((*(v120 + 80) + 32) & ~*(v120 + 80)) + *(v120 + 72) * v119], v220, v59);
    goto LABEL_62;
  }

  __break(1u);
  return result;
}

uint64_t sub_100663650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v4 = static AirDropActor.shared;

  return _swift_task_switch(sub_1006636F0, v4, 0);
}

uint64_t sub_1006636F0()
{
  v1 = v0[4];
  v2 = v0[2];
  *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary29SDAirDropContentHandlerPhotos_unprivatizedURLs) = v0[3];

  *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary29SDAirDropContentHandlerPhotos_assetIdentifiers) = v1;

  v3 = v0[1];

  return v3();
}

uint64_t sub_100663794()
{
  sub_100005508(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary29SDAirDropContentHandlerPhotos_transferID, &unk_100976120, &qword_1007F9260);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SDAirDropContentHandlerPhotos(uint64_t a1)
{
  result = qword_100988490;
  if (!qword_100988490)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100663884(uint64_t a1)
{
  sub_100383ECC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100663940@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SDAirDropContentHandlerPhotos(0);
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  v3 = OBJC_IVAR____TtC16DaemoniOSLibrary29SDAirDropContentHandlerPhotos_transferID;
  v4 = type metadata accessor for UUID();
  result = (*(*(v4 - 8) + 56))(v2 + v3, 1, 1, v4);
  *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary29SDAirDropContentHandlerPhotos_unprivatizedURLs) = _swiftEmptyArrayStorage;
  *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary29SDAirDropContentHandlerPhotos_assetIdentifiers) = _swiftEmptyArrayStorage;
  *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary29SDAirDropContentHandlerPhotos_hasPhotos) = 0;
  *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary29SDAirDropContentHandlerPhotos_hasVideos) = 0;
  *a1 = v2;
  return result;
}

uint64_t sub_100663A08(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100289000;

  return sub_10065EED4(a1);
}

uint64_t sub_100663AE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  v15[1] = 0;
  (*(v7 + 16))(v9, a3, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = (v8 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  (*(v7 + 32))(v13 + v11, v9, v6);
  *(v13 + v12) = a1;
  *(v13 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8)) = v10;

  sub_10028088C(&qword_100975610, &qword_1007F89B0);
  return SFProgressTask.init(_:initialProgress:operation:file:line:)();
}

uint64_t sub_100663D0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1004A9D84;

  return sub_100664408(a2, a3);
}

id sub_100663DC8(uint64_t a1)
{
  v5 = 0;
  v1 = [swift_getObjCClassFromMetadata() handleForPredicate:a1 error:&v5];
  if (v1)
  {
    v2 = v5;
  }

  else
  {
    v3 = v5;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v1;
}

uint64_t sub_100663E8C()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() predicateMatchingBundleIdentifier:v0];

  sub_1000276B4(0, &unk_10097E9A0, RBSProcessHandle_ptr);
  v2 = v1;
  v3 = sub_100663DC8(v2);

  v4 = [v3 currentState];
  if (v4 && (v5 = v4, v6 = [v4 endowmentNamespaces], v5, v6))
  {
    v7 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v8 = sub_100569230(0xD00000000000001FLL, 0x800000010079A870, v7);

    v9 = v8 ^ 1;
  }

  else
  {

    v9 = 1;
  }

  return v9 & 1;
}

uint64_t sub_100664130(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(type metadata accessor for UUID() - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v3 + v10);
  v12 = *(v3 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v4 + 16) = v13;
  *v13 = v4;
  v13[1] = sub_100005C04;

  return sub_10065FC5C(a1, a2, a3, v3 + v9, v11, v12);
}

uint64_t sub_10066426C(double a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_1006642B4()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = *(v6 + 1);

  return sub_100660958(v3, v4, v5, v0 + v2, v7, v8);
}

uint64_t sub_10066434C(char a1, uint64_t a2)
{
  v5 = *(sub_10028088C(&qword_100988628, &unk_10080EFF0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v2 + 16);

  return sub_1006609BC(a1, a2, v8, v2 + v6, v7);
}

uint64_t sub_100664408(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = type metadata accessor for UUID();
  v3[11] = v4;
  v5 = *(v4 - 8);
  v3[12] = v5;
  v3[13] = *(v5 + 64);
  v3[14] = swift_task_alloc();
  v6 = type metadata accessor for SFAirDropReceive.Transfer();
  v3[15] = v6;
  v7 = *(v6 - 8);
  v3[16] = v7;
  v3[17] = *(v7 + 64);
  v3[18] = swift_task_alloc();
  sub_10028088C(&qword_100976160, &qword_1007F8770);
  v3[19] = swift_task_alloc();
  sub_10028088C(&unk_100976120, &qword_1007F9260);
  v3[20] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v8 = static AirDropActor.shared;
  v3[21] = static AirDropActor.shared;

  return _swift_task_switch(sub_1006645E4, v8, 0);
}

uint64_t sub_1006645E4()
{
  v1 = v0[10];
  v0[22] = [objc_allocWithZone(type metadata accessor for SDAirDropMoveToAppShareSheet()) init];
  v2 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary29SDAirDropContentHandlerPhotos_unprivatizedURLs);
  v0[23] = v2;

  v3 = swift_task_alloc();
  v0[24] = v3;
  *v3 = v0;
  v3[1] = sub_1006646C8;

  return sub_10066D568(v2);
}

uint64_t sub_1006646C8(char a1)
{
  v3 = *v2;
  *(v3 + 56) = v1;
  *(v3 + 48) = a1;
  *(v3 + 40) = v2;
  *(v3 + 200) = v1;

  if (v1)
  {
    v4 = *(v3 + 168);
    v5 = sub_100664AAC;
  }

  else
  {
    v6 = *(v3 + 176);
    v7 = *(v3 + 168);

    v5 = sub_100664808;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100664808()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  v4 = *(v0 + 80);
  v5 = OBJC_IVAR____TtC16DaemoniOSLibrary29SDAirDropContentHandlerPhotos_transferID;
  swift_beginAccess();
  sub_10000FF90(v4 + v5, v1, &unk_100976120, &qword_1007F9260);
  LODWORD(v2) = (*(v3 + 48))(v1, 1, v2);
  sub_100005508(v1, &unk_100976120, &qword_1007F9260);
  if (v2 != 1)
  {
    v7 = *(v0 + 144);
    v6 = *(v0 + 152);
    v8 = *(v0 + 128);
    v22 = *(v0 + 136);
    v9 = *(v0 + 112);
    v10 = *(v0 + 120);
    v11 = *(v0 + 96);
    v23 = v6;
    v12 = *(v0 + 88);
    v14 = *(v0 + 64);
    v13 = *(v0 + 72);
    v15 = type metadata accessor for TaskPriority();
    (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
    (*(v8 + 16))(v7, v13, v10);
    (*(v11 + 16))(v9, v14, v12);
    v16 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v17 = (v22 + *(v11 + 80) + v16) & ~*(v11 + 80);
    v18 = swift_allocObject();
    (*(v8 + 32))(v18 + v16, v7, v10);
    (*(v11 + 32))(v18 + v17, v9, v12);
    static Task<>.noThrow(priority:operation:)();

    sub_100005508(v23, &qword_100976160, &qword_1007F8770);
  }

  v19 = *(v0 + 48);

  v20 = *(v0 + 8);

  return v20(v19);
}

uint64_t sub_100664AAC()
{
  v1 = *(v0 + 176);

  v2 = *(v0 + 8);

  return v2(0);
}

uint64_t sub_100664B54()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100005C04;

  return sub_100663650(v2, v3, v4);
}

uint64_t sub_100664BFC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100664C44()
{
  v1 = type metadata accessor for SFAirDropReceive.Transfer();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return _swift_deallocObject(v0, v7 + v8);
}

uint64_t sub_100664D94(uint64_t a1)
{
  v2[45] = a1;
  v2[46] = v1;
  v2[47] = *v1;
  v3 = type metadata accessor for String.Encoding();
  v2[48] = v3;
  v2[49] = *(v3 - 8);
  v2[50] = swift_task_alloc();
  v4 = type metadata accessor for Date();
  v2[51] = v4;
  v2[52] = *(v4 - 8);
  v2[53] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v2[54] = v5;
  v2[55] = *(v5 - 8);
  v2[56] = swift_task_alloc();
  v2[57] = swift_task_alloc();
  v2[58] = swift_task_alloc();
  v2[59] = swift_task_alloc();
  v2[60] = swift_task_alloc();
  if (qword_1009735E8 != -1)
  {
    swift_once();
  }

  v2[61] = static IDMSActor.shared;
  v6 = swift_task_alloc();
  v2[62] = v6;
  *v6 = v2;
  v6[1] = sub_100665004;

  return sub_100324F0C();
}

uint64_t sub_100665004()
{
  v1 = *(*v0 + 488);

  return _swift_task_switch(sub_100665140, v1, 0);
}

uint64_t sub_100665140()
{
  v85 = v0;
  v1 = v0[46];
  if (*(v1 + 32) == 1)
  {
    v3 = v0[52];
    v2 = v0[53];
    v4 = v0[51];
    v81 = v0[47];
    URL.appendingPathComponent(_:)();
    v5 = swift_allocObject();
    _StringGuts.grow(_:)(24);

    v84._countAndFlagsBits = 0xD000000000000015;
    v84._object = 0x800000010079A940;
    Date.init()();
    sub_100418E5C();
    v6._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v6);

    (*(v3 + 8))(v2, v4);
    v7._countAndFlagsBits = 10;
    v7._object = 0xE100000000000000;
    String.append(_:)(v7);
    *(v5 + 16) = 0xD000000000000015;
    *(v5 + 24) = 0x800000010079A940;
    v8._object = 0x800000010079A960;
    v8._countAndFlagsBits = 0xD000000000000024;
    String.append(_:)(v8);
    v9 = swift_allocObject();
    *(v9 + 16) = 0;
    v10 = swift_allocObject();
    *(v10 + 16) = 0;
    v11 = swift_allocObject();
    *(v11 + 16) = 0;
    v79 = (v11 + 16);
    v12 = swift_allocObject();
    *(v12 + 16) = 0;
    v13 = *(v1 + 16);
    sub_100666670();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v15 = swift_allocObject();
    v15[2] = v9;
    v15[3] = v10;
    v15[4] = v5;
    v15[5] = v11;
    v15[6] = v12;
    v15[7] = v81;
    v0[6] = sub_1006666BC;
    v0[7] = v15;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_10032765C;
    v0[5] = &unk_1008ED4F8;
    v16 = _Block_copy(v0 + 2);
    v17 = v13;
    v82 = v9;

    v83 = v5;

    v0[40] = 0;
    v18 = [v17 enumerateKeyType:ObjCClassFromMetadata valueType:ObjCClassFromMetadata error:v0 + 40 handler:v16];
    _Block_release(v16);

    v19 = v0[40];
    if (v18)
    {
      v20 = v0[57];
      v78 = v0[58];
      v21 = v0[55];
      v76 = v0[59];
      v77 = v0[54];
      swift_beginAccess();
      v22 = v19;
      v23._object = 0x800000010079A990;
      v23._countAndFlagsBits = 0xD000000000000024;
      String.append(_:)(v23);
      v24._countAndFlagsBits = 0x3A7972616D6D7553;
      v24._object = 0xE90000000000000ALL;
      String.append(_:)(v24);
      swift_endAccess();
      _StringGuts.grow(_:)(18);

      v84._countAndFlagsBits = 0x6E65206C61746F54;
      v84._object = 0xEF203A7365697274;
      swift_beginAccess();
      v0[41] = *(v9 + 16);
      v25._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v25);

      v26._countAndFlagsBits = 10;
      v26._object = 0xE100000000000000;
      String.append(_:)(v26);
      swift_beginAccess();
      String.append(_:)(v84);
      swift_endAccess();

      _StringGuts.grow(_:)(20);

      v84._countAndFlagsBits = 0xD000000000000011;
      v84._object = 0x800000010079A9C0;
      swift_beginAccess();
      v0[42] = *(v10 + 16);
      v27._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v27);

      v28._countAndFlagsBits = 10;
      v28._object = 0xE100000000000000;
      String.append(_:)(v28);
      swift_beginAccess();
      String.append(_:)(v84);
      swift_endAccess();

      _StringGuts.grow(_:)(19);

      v84._countAndFlagsBits = 0xD000000000000010;
      v84._object = 0x800000010079A9E0;
      swift_beginAccess();
      v0[43] = *v79;
      v29._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v29);

      v30._countAndFlagsBits = 10;
      v30._object = 0xE100000000000000;
      String.append(_:)(v30);
      swift_beginAccess();
      String.append(_:)(v84);
      swift_endAccess();

      _StringGuts.grow(_:)(18);

      v84._countAndFlagsBits = 0x6E65207972746552;
      v84._object = 0xEF203A7365697274;
      swift_beginAccess();
      v0[44] = *(v12 + 16);
      v31._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v31);

      v32._countAndFlagsBits = 10;
      v32._object = 0xE100000000000000;
      String.append(_:)(v32);
      swift_beginAccess();
      String.append(_:)(v84);
      swift_endAccess();

      _StringGuts.grow(_:)(18);

      v84._countAndFlagsBits = 0x6573616261746144;
      v84._object = 0xEF203A6874617020;
      sub_10032A41C(v20);
      URL.appendingPathComponent(_:)();
      v33 = *(v21 + 8);
      v33(v20, v77);
      URL.appendingPathComponent(_:)();
      v33(v76, v77);
      URL.appendingPathExtension(_:)();
      v33(v20, v77);
      v34 = URL.path.getter();
      v36 = v35;
      v33(v78, v77);
      v37._countAndFlagsBits = v34;
      v37._object = v36;
      String.append(_:)(v37);

      v38._countAndFlagsBits = 10;
      v38._object = 0xE100000000000000;
      String.append(_:)(v38);
      swift_beginAccess();
      v39._countAndFlagsBits = 0x6573616261746144;
      v39._object = 0xEF203A6874617020;
      String.append(_:)(v39);
      swift_endAccess();

      v40 = *(v83 + 24);
      v0[38] = *(v83 + 16);
      v0[39] = v40;

      static String.Encoding.utf8.getter();
      sub_10001229C();
      StringProtocol.write(to:atomically:encoding:)();
      (*(v0[49] + 8))(v0[50], v0[48]);

      if (qword_100973C00 != -1)
      {
        swift_once();
      }

      v58 = v0[60];
      v60 = v0[55];
      v59 = v0[56];
      v61 = v0[54];
      v62 = type metadata accessor for Logger();
      sub_10000C4AC(v62, qword_100988630);
      (*(v60 + 16))(v59, v58, v61);
      v63 = Logger.logObject.getter();
      v64 = static os_log_type_t.default.getter();
      v65 = os_log_type_enabled(v63, v64);
      v66 = v0[56];
      v67 = v0[54];
      if (v65)
      {
        v68 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v84._countAndFlagsBits = v80;
        *v68 = 136315138;
        v69 = URL.path.getter();
        v71 = v70;
        v33(v66, v67);
        v72 = sub_10000C4E4(v69, v71, &v84._countAndFlagsBits);

        *(v68 + 4) = v72;
        _os_log_impl(&_mh_execute_header, v63, v64, "IDMS database dumped to: %s", v68, 0xCu);
        sub_10000C60C(v80);
      }

      else
      {

        v33(v66, v67);
      }

      v73 = Logger.logObject.getter();
      v74 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        *v75 = 134217984;
        *(v75 + 4) = *(v82 + 16);

        _os_log_impl(&_mh_execute_header, v73, v74, "Total entries dumped: %ld", v75, 0xCu);
      }

      else
      {
      }

      v33(v0[60], v0[54]);
    }

    else
    {
      v45 = v19;
      _convertNSErrorToError(_:)();

      swift_willThrow();

      if (qword_100973C00 != -1)
      {
        swift_once();
      }

      v46 = type metadata accessor for Logger();
      sub_10000C4AC(v46, qword_100988630);
      swift_errorRetain();
      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.error.getter();

      v49 = os_log_type_enabled(v47, v48);
      v50 = v0[60];
      v51 = v0[54];
      v52 = v0[55];
      if (v49)
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        *v53 = 138412290;
        swift_errorRetain();
        v55 = _swift_stdlib_bridgeErrorToNSError();
        *(v53 + 4) = v55;
        *v54 = v55;
        _os_log_impl(&_mh_execute_header, v47, v48, "Failed to dump IDMS database: %@", v53, 0xCu);
        sub_10028924C(v54);
      }

      else
      {
      }

      (*(v52 + 8))(v50, v51);
    }
  }

  else
  {
    if (qword_100973C00 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    sub_10000C4AC(v41, qword_100988630);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&_mh_execute_header, v42, v43, "Store not loaded, cannot dump", v44, 2u);
    }
  }

  v56 = v0[1];

  return v56();
}

uint64_t sub_100665F48()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100988630);
  v1 = sub_10000C4AC(v0, qword_100988630);
  if (qword_100973708 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A0960);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_100666010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v80 = a6;
  v12 = type metadata accessor for Date();
  v78 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v79 = v19;
  swift_beginAccess();
  v20 = *(a4 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
    goto LABEL_19;
  }

  *(a4 + 16) = v22;
  v23._countAndFlagsBits = 0x2D44495344746C61;
  v23._object = 0xE800000000000000;
  if (!String.hasPrefix(_:)(v23))
  {
    v32._countAndFlagsBits = 0x2D4449656C707061;
    v32._object = 0xE800000000000000;
    if (!String.hasPrefix(_:)(v32))
    {
      v44._countAndFlagsBits = 0x2D7972746572;
      v44._object = 0xE600000000000000;
      if (!String.hasPrefix(_:)(v44))
      {
        v83 = 0x6E776F6E6B6E555BLL;
        v84 = 0xEA0000000000205DLL;
        v67._countAndFlagsBits = v15;
        v67._object = v17;
        String.append(_:)(v67);

        v68._countAndFlagsBits = 2112800;
        v68._object = 0xE300000000000000;
        String.append(_:)(v68);
        v69._countAndFlagsBits = v18;
        v69._object = v79;
        String.append(_:)(v69);

        v70._countAndFlagsBits = 10;
        v70._object = 0xE100000000000000;
        String.append(_:)(v70);
        v71 = v83;
        v72 = v84;
        swift_beginAccess();
        v73._countAndFlagsBits = v71;
        v73._object = v72;
        String.append(_:)(v73);
        goto LABEL_10;
      }

      swift_beginAccess();
      v45 = *(a8 + 16);
      v21 = __OFADD__(v45, 1);
      v46 = v45 + 1;
      if (!v21)
      {
        *(a8 + 16) = v46;
        v47 = String.count.getter();
        sub_10032AA40(v47, v15, v17);

        v48 = static String._fromSubstring(_:)();
        v50 = v49;

        v81 = 0;
        v51 = v79;
        if (sub_10032A938(v18, v79, &v81))
        {
          Date.init(timeIntervalSince1970:)();
          v52 = [objc_allocWithZone(NSDateFormatter) init];
          [v52 setDateStyle:2];
          [v52 setTimeStyle:2];
          isa = Date._bridgeToObjectiveC()().super.isa;
          v54 = [v52 stringFromDate:isa];

          v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v57 = v56;

          v81 = 0;
          v82 = 0xE000000000000000;
          _StringGuts.grow(_:)(19);

          v81 = 0x205D79727465525BLL;
          v82 = 0xE800000000000000;
          v58._countAndFlagsBits = v48;
          v58._object = v50;
          String.append(_:)(v58);

          v59._countAndFlagsBits = 540945696;
          v59._object = 0xE400000000000000;
          String.append(_:)(v59);
          v60._countAndFlagsBits = v55;
          v60._object = v57;
          String.append(_:)(v60);

          v61._countAndFlagsBits = 10272;
          v61._object = 0xE200000000000000;
          String.append(_:)(v61);
          v62._countAndFlagsBits = v18;
          v62._object = v51;
          String.append(_:)(v62);

          v63._countAndFlagsBits = 2601;
          v63._object = 0xE200000000000000;
          String.append(_:)(v63);
          v64 = v81;
          v65 = v82;
          swift_beginAccess();
          v66._countAndFlagsBits = v64;
          v66._object = v65;
          String.append(_:)(v66);
          swift_endAccess();

          (*(v78 + 8))(v14, v12);
          return;
        }

        v81 = 0x205D79727465525BLL;
        v82 = 0xE800000000000000;
        v74._countAndFlagsBits = v48;
        v74._object = v50;
        String.append(_:)(v74);

        v75._countAndFlagsBits = 540945696;
        v75._object = 0xE400000000000000;
        String.append(_:)(v75);
        v76._countAndFlagsBits = v18;
        v76._object = v51;
        String.append(_:)(v76);
        goto LABEL_9;
      }

LABEL_21:
      __break(1u);
      return;
    }

    swift_beginAccess();
    v33 = *(a7 + 16);
    v21 = __OFADD__(v33, 1);
    v34 = v33 + 1;
    if (!v21)
    {
      *(a7 + 16) = v34;
      v35 = String.count.getter();
      sub_10032AA40(v35, v15, v17);

      v27 = static String._fromSubstring(_:)();
      v29 = v36;

      v30 = 0x5D656C646E61485BLL;
      v31 = 0xE900000000000020;
      goto LABEL_8;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  swift_beginAccess();
  v24 = *(a5 + 16);
  v21 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v21)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  *(a5 + 16) = v25;
  v26 = String.count.getter();
  sub_10032AA40(v26, v15, v17);

  v27 = static String._fromSubstring(_:)();
  v29 = v28;

  v30 = 0x44495344746C415BLL;
  v31 = 0xEA0000000000205DLL;
LABEL_8:
  v81 = v30;
  v82 = v31;
  v37._countAndFlagsBits = v27;
  v37._object = v29;
  String.append(_:)(v37);

  v38._countAndFlagsBits = 540945696;
  v38._object = 0xE400000000000000;
  String.append(_:)(v38);
  v39._countAndFlagsBits = v18;
  v39._object = v79;
  String.append(_:)(v39);
LABEL_9:

  v40._countAndFlagsBits = 10;
  v40._object = 0xE100000000000000;
  String.append(_:)(v40);
  v41 = v81;
  v42 = v82;
  swift_beginAccess();
  v43._countAndFlagsBits = v41;
  v43._object = v42;
  String.append(_:)(v43);
LABEL_10:
  swift_endAccess();
}

unint64_t sub_100666670()
{
  result = qword_100974E28;
  if (!qword_100974E28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100974E28);
  }

  return result;
}

uint64_t type metadata accessor for SDAuthenticationSessionMetrics(uint64_t a1)
{
  result = qword_1009886B8;
  if (!qword_1009886B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100666760(uint64_t a1)
{
  sub_1006668FC(319, &unk_100980A98, type metadata accessor for SFAuthenticationErrorCode);
  if (v1 <= 0x3F)
  {
    sub_1002F2B90(319, qword_1009771F0, &type metadata for String);
    if (v2 <= 0x3F)
    {
      sub_1002F2B90(319, &qword_1009771E8, &type metadata for Double);
      if (v3 <= 0x3F)
      {
        sub_1002F2B90(319, &qword_100975790, &type metadata for Bool);
        if (v4 <= 0x3F)
        {
          sub_1002F2B90(319, &qword_10097DDF8, &type metadata for Float);
          if (v5 <= 0x3F)
          {
            sub_1006668FC(319, &qword_10097DB80, &type metadata accessor for Date);
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

void sub_1006668FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void sub_100666950()
{
  v1 = v0;
  v2 = type metadata accessor for SDAuthenticationSessionMetrics(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v145 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10028088C(&qword_1009750C0, &qword_1007F90F0);
  v5 = swift_allocObject();
  v147 = xmmword_1007F5670;
  *(v5 + 16) = xmmword_1007F5670;
  *(v5 + 32) = UUID.uuidString.getter();
  *(v5 + 40) = v6;
  if (qword_100973C08 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000C4AC(v7, qword_100988648);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Logging metrics", v10, 2u);
  }

  v11 = *(v1 + 80);
  if (v11 != 2)
  {
    v148 = 0;
    v149 = 0xE000000000000000;
    _StringGuts.grow(_:)(24);

    v148 = 0xD000000000000016;
    v149 = 0x80000001007931C0;
    if (v11)
    {
      v12 = 1702195828;
    }

    else
    {
      v12 = 0x65736C6166;
    }

    if (v11)
    {
      v13 = 0xE400000000000000;
    }

    else
    {
      v13 = 0xE500000000000000;
    }

    v14 = v13;
    String.append(_:)(*&v12);

    v15 = v148;
    v16 = v149;
    v18 = *(v5 + 16);
    v17 = *(v5 + 24);
    if (v18 >= v17 >> 1)
    {
      v5 = sub_10028E1C8((v17 > 1), v18 + 1, 1, v5);
    }

    *(v5 + 16) = v18 + 1;
    v19 = v5 + 16 * v18;
    *(v19 + 32) = v15;
    *(v19 + 40) = v16;
  }

  v20 = sub_1006689F4();
  if ((v21 & 1) == 0)
  {
    v22 = v20;
    v148 = 0;
    v149 = 0xE000000000000000;
    _StringGuts.grow(_:)(33);

    v148 = 0xD00000000000001ELL;
    v149 = 0x80000001007931A0;
    sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
    v23 = swift_allocObject();
    *(v23 + 16) = v147;
    *(v23 + 56) = &type metadata for Double;
    *(v23 + 64) = &protocol witness table for Double;
    *(v23 + 32) = v22;
    v24._countAndFlagsBits = String.init(format:_:)();
    String.append(_:)(v24);

    v25._countAndFlagsBits = 115;
    v25._object = 0xE100000000000000;
    String.append(_:)(v25);
    v26 = v148;
    v27 = v149;
    v29 = *(v5 + 16);
    v28 = *(v5 + 24);
    if (v29 >= v28 >> 1)
    {
      v5 = sub_10028E1C8((v28 > 1), v29 + 1, 1, v5);
    }

    *(v5 + 16) = v29 + 1;
    v30 = v5 + 16 * v29;
    *(v30 + 32) = v26;
    *(v30 + 40) = v27;
  }

  v31 = sub_100668C74();
  if ((v32 & 1) == 0)
  {
    v33 = v31;
    v148 = 0;
    v149 = 0xE000000000000000;
    _StringGuts.grow(_:)(44);

    v148 = 0xD000000000000029;
    v149 = 0x8000000100793170;
    sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
    v34 = swift_allocObject();
    *(v34 + 16) = v147;
    *(v34 + 56) = &type metadata for Double;
    *(v34 + 64) = &protocol witness table for Double;
    *(v34 + 32) = v33;
    v35._countAndFlagsBits = String.init(format:_:)();
    String.append(_:)(v35);

    v36._countAndFlagsBits = 115;
    v36._object = 0xE100000000000000;
    String.append(_:)(v36);
    v37 = v148;
    v38 = v149;
    v40 = *(v5 + 16);
    v39 = *(v5 + 24);
    if (v40 >= v39 >> 1)
    {
      v5 = sub_10028E1C8((v39 > 1), v40 + 1, 1, v5);
    }

    *(v5 + 16) = v40 + 1;
    v41 = v5 + 16 * v40;
    *(v41 + 32) = v37;
    *(v41 + 40) = v38;
  }

  v42 = sub_100667AB0();
  if ((v43 & 1) == 0)
  {
    v44 = v42;
    v148 = 0;
    v149 = 0xE000000000000000;
    _StringGuts.grow(_:)(27);

    v148 = 0xD000000000000018;
    v149 = 0x8000000100793150;
    sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
    v45 = swift_allocObject();
    *(v45 + 16) = v147;
    *(v45 + 56) = &type metadata for Double;
    *(v45 + 64) = &protocol witness table for Double;
    *(v45 + 32) = v44;
    v46._countAndFlagsBits = String.init(format:_:)();
    String.append(_:)(v46);

    v47._countAndFlagsBits = 115;
    v47._object = 0xE100000000000000;
    String.append(_:)(v47);
    v48 = v148;
    v49 = v149;
    v51 = *(v5 + 16);
    v50 = *(v5 + 24);
    if (v51 >= v50 >> 1)
    {
      v5 = sub_10028E1C8((v50 > 1), v51 + 1, 1, v5);
    }

    *(v5 + 16) = v51 + 1;
    v52 = v5 + 16 * v51;
    *(v52 + 32) = v48;
    *(v52 + 40) = v49;
  }

  v53 = sub_100667D30();
  if ((v54 & 1) == 0)
  {
    v55 = v53;
    v148 = 0;
    v149 = 0xE000000000000000;
    _StringGuts.grow(_:)(30);

    v148 = 0xD00000000000001BLL;
    v149 = 0x8000000100793130;
    sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
    v56 = swift_allocObject();
    *(v56 + 16) = v147;
    *(v56 + 56) = &type metadata for Double;
    *(v56 + 64) = &protocol witness table for Double;
    *(v56 + 32) = v55;
    v57._countAndFlagsBits = String.init(format:_:)();
    String.append(_:)(v57);

    v58._countAndFlagsBits = 115;
    v58._object = 0xE100000000000000;
    String.append(_:)(v58);
    v59 = v148;
    v60 = v149;
    v62 = *(v5 + 16);
    v61 = *(v5 + 24);
    if (v62 >= v61 >> 1)
    {
      v5 = sub_10028E1C8((v61 > 1), v62 + 1, 1, v5);
    }

    *(v5 + 16) = v62 + 1;
    v63 = v5 + 16 * v62;
    *(v63 + 32) = v59;
    *(v63 + 40) = v60;
  }

  v64 = sub_100667FB0();
  if ((v65 & 1) == 0)
  {
    v66 = v64;
    v148 = 0;
    v149 = 0xE000000000000000;
    _StringGuts.grow(_:)(32);

    v148 = 0xD00000000000001DLL;
    v149 = 0x800000010079AA00;
    sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
    v67 = swift_allocObject();
    *(v67 + 16) = v147;
    *(v67 + 56) = &type metadata for Double;
    *(v67 + 64) = &protocol witness table for Double;
    *(v67 + 32) = v66;
    v68._countAndFlagsBits = String.init(format:_:)();
    String.append(_:)(v68);

    v69._countAndFlagsBits = 115;
    v69._object = 0xE100000000000000;
    String.append(_:)(v69);
    v70 = v148;
    v71 = v149;
    v73 = *(v5 + 16);
    v72 = *(v5 + 24);
    if (v73 >= v72 >> 1)
    {
      v5 = sub_10028E1C8((v72 > 1), v73 + 1, 1, v5);
    }

    *(v5 + 16) = v73 + 1;
    v74 = v5 + 16 * v73;
    *(v74 + 32) = v70;
    *(v74 + 40) = v71;
  }

  v75 = sub_100668230();
  if ((v76 & 1) == 0)
  {
    v77 = v75;
    v148 = 0;
    v149 = 0xE000000000000000;
    _StringGuts.grow(_:)(31);

    v148 = 0xD00000000000001CLL;
    v149 = 0x8000000100793110;
    sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
    v78 = swift_allocObject();
    *(v78 + 16) = v147;
    *(v78 + 56) = &type metadata for Double;
    *(v78 + 64) = &protocol witness table for Double;
    *(v78 + 32) = v77;
    v79._countAndFlagsBits = String.init(format:_:)();
    String.append(_:)(v79);

    v80._countAndFlagsBits = 115;
    v80._object = 0xE100000000000000;
    String.append(_:)(v80);
    v81 = v148;
    v82 = v149;
    v84 = *(v5 + 16);
    v83 = *(v5 + 24);
    if (v84 >= v83 >> 1)
    {
      v5 = sub_10028E1C8((v83 > 1), v84 + 1, 1, v5);
    }

    *(v5 + 16) = v84 + 1;
    v85 = v5 + 16 * v84;
    *(v85 + 32) = v81;
    *(v85 + 40) = v82;
  }

  v86 = sub_1006684B0();
  if ((v87 & 1) == 0)
  {
    v88 = v86;
    v148 = 0;
    v149 = 0xE000000000000000;
    _StringGuts.grow(_:)(28);

    v148 = 0xD000000000000019;
    v149 = 0x80000001007930F0;
    sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
    v89 = swift_allocObject();
    *(v89 + 16) = v147;
    *(v89 + 56) = &type metadata for Double;
    *(v89 + 64) = &protocol witness table for Double;
    *(v89 + 32) = v88;
    v90._countAndFlagsBits = String.init(format:_:)();
    String.append(_:)(v90);

    v91._countAndFlagsBits = 115;
    v91._object = 0xE100000000000000;
    String.append(_:)(v91);
    v92 = v148;
    v93 = v149;
    v95 = *(v5 + 16);
    v94 = *(v5 + 24);
    if (v95 >= v94 >> 1)
    {
      v5 = sub_10028E1C8((v94 > 1), v95 + 1, 1, v5);
    }

    *(v5 + 16) = v95 + 1;
    v96 = v5 + 16 * v95;
    *(v96 + 32) = v92;
    *(v96 + 40) = v93;
  }

  v97 = sub_100668774();
  if ((v98 & 1) == 0)
  {
    v99 = v97;
    v148 = 0;
    v149 = 0xE000000000000000;
    _StringGuts.grow(_:)(25);

    v148 = 0xD000000000000016;
    v149 = 0x80000001007930D0;
    sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
    v100 = swift_allocObject();
    *(v100 + 16) = v147;
    *(v100 + 56) = &type metadata for Double;
    *(v100 + 64) = &protocol witness table for Double;
    *(v100 + 32) = v99;
    v101._countAndFlagsBits = String.init(format:_:)();
    String.append(_:)(v101);

    v102._countAndFlagsBits = 115;
    v102._object = 0xE100000000000000;
    String.append(_:)(v102);
    v103 = v148;
    v104 = v149;
    v106 = *(v5 + 16);
    v105 = *(v5 + 24);
    if (v106 >= v105 >> 1)
    {
      v5 = sub_10028E1C8((v105 > 1), v106 + 1, 1, v5);
    }

    *(v5 + 16) = v106 + 1;
    v107 = v5 + 16 * v106;
    *(v107 + 32) = v103;
    *(v107 + 40) = v104;
  }

  v108 = sub_100667830();
  if ((v109 & 1) == 0)
  {
    v110 = v108;
    v146 = v4;
    sub_100667AB0();
    if (v111)
    {
      v112 = 0;
    }

    else
    {
      v112 = 0xD000000000000013;
    }

    if (v111)
    {
      v113 = 0xE000000000000000;
    }

    else
    {
      v113 = 0x80000001007930B0;
    }

    v148 = 0;
    v149 = 0xE000000000000000;
    _StringGuts.grow(_:)(31);

    v148 = 0xD000000000000017;
    v149 = 0x8000000100793090;
    v114._countAndFlagsBits = v112;
    v114._object = v113;
    String.append(_:)(v114);

    v115._countAndFlagsBits = 2112800;
    v115._object = 0xE300000000000000;
    String.append(_:)(v115);
    sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
    v116 = swift_allocObject();
    *(v116 + 16) = v147;
    *(v116 + 56) = &type metadata for Double;
    *(v116 + 64) = &protocol witness table for Double;
    *(v116 + 32) = v110;
    v117._countAndFlagsBits = String.init(format:_:)();
    String.append(_:)(v117);

    v118._countAndFlagsBits = 115;
    v118._object = 0xE100000000000000;
    String.append(_:)(v118);
    v119 = v148;
    v120 = v149;
    v122 = *(v5 + 16);
    v121 = *(v5 + 24);
    if (v122 >= v121 >> 1)
    {
      v5 = sub_10028E1C8((v121 > 1), v122 + 1, 1, v5);
    }

    *(v5 + 16) = v122 + 1;
    v123 = v5 + 16 * v122;
    *(v123 + 32) = v119;
    *(v123 + 40) = v120;
    v4 = v146;
  }

  v148 = v5;
  sub_10028088C(&unk_100976C20, &unk_1007F9D80);
  sub_1003117AC();
  v124 = BidirectionalCollection<>.joined(separator:)();
  v126 = v125;

  v127 = [objc_opt_self() standardUserDefaults];
  v128 = String._bridgeToObjectiveC()();
  v129 = String._bridgeToObjectiveC()();
  [v127 setObject:v128 forKey:v129];

  v130 = Logger.logObject.getter();
  v131 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v130, v131))
  {
    v132 = swift_slowAlloc();
    v133 = swift_slowAlloc();
    v148 = v133;
    *v132 = 136315138;
    v134 = sub_10000C4E4(v124, v126, &v148);

    *(v132 + 4) = v134;
    _os_log_impl(&_mh_execute_header, v130, v131, "%s", v132, 0xCu);
    sub_10000C60C(v133);
  }

  else
  {
  }

  sub_1006693C4(v1, v4);
  v135 = Logger.logObject.getter();
  v136 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v135, v136))
  {
    v137 = swift_slowAlloc();
    v138 = swift_slowAlloc();
    v148 = v138;
    *v137 = 136315138;
    v139 = sub_100668FE8();
    v140 = [v139 eventPayload];

    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    v141 = Dictionary.description.getter();
    v143 = v142;

    sub_100669428(v4);
    v144 = sub_10000C4E4(v141, v143, &v148);

    *(v137 + 4) = v144;
    _os_log_impl(&_mh_execute_header, v135, v136, "metrics: %s", v137, 0xCu);
    sub_10000C60C(v138);
  }

  else
  {

    sub_100669428(v4);
  }
}

uint64_t sub_100667768()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100988648);
  v1 = sub_10000C4AC(v0, qword_100988648);
  if (qword_100973758 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A0A50);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100667830()
{
  v1 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v24 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v24 - v12;
  v14 = type metadata accessor for SDAuthenticationSessionMetrics(0);
  sub_1002E4E88(v0 + *(v14 + 48), v6);
  v15 = *(v8 + 48);
  if (v15(v6, 1, v7) == 1)
  {
    v16 = v6;
LABEL_5:
    sub_100016C08(v16);
    return 0;
  }

  v25 = v11;
  v17 = v6;
  v18 = *(v8 + 32);
  v18(v13, v17, v7);
  sub_1002E4E88(v0 + *(v14 + 52), v4);
  if (v15(v4, 1, v7) == 1)
  {
    (*(v8 + 8))(v13, v7);
    v16 = v4;
    goto LABEL_5;
  }

  v20 = v25;
  v18(v25, v4, v7);
  Date.timeIntervalSince(_:)();
  v22 = v21;
  v23 = *(v8 + 8);
  v23(v20, v7);
  v23(v13, v7);
  return v22;
}

uint64_t sub_100667AB0()
{
  v1 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v24 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v24 - v12;
  v14 = type metadata accessor for SDAuthenticationSessionMetrics(0);
  sub_1002E4E88(v0 + *(v14 + 56), v6);
  v15 = *(v8 + 48);
  if (v15(v6, 1, v7) == 1)
  {
    v16 = v6;
LABEL_5:
    sub_100016C08(v16);
    return 0;
  }

  v25 = v11;
  v17 = v6;
  v18 = *(v8 + 32);
  v18(v13, v17, v7);
  sub_1002E4E88(v0 + *(v14 + 60), v4);
  if (v15(v4, 1, v7) == 1)
  {
    (*(v8 + 8))(v13, v7);
    v16 = v4;
    goto LABEL_5;
  }

  v20 = v25;
  v18(v25, v4, v7);
  Date.timeIntervalSince(_:)();
  v22 = v21;
  v23 = *(v8 + 8);
  v23(v20, v7);
  v23(v13, v7);
  return v22;
}

uint64_t sub_100667D30()
{
  v1 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v24 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v24 - v12;
  v14 = type metadata accessor for SDAuthenticationSessionMetrics(0);
  sub_1002E4E88(v0 + *(v14 + 64), v6);
  v15 = *(v8 + 48);
  if (v15(v6, 1, v7) == 1)
  {
    v16 = v6;
LABEL_5:
    sub_100016C08(v16);
    return 0;
  }

  v25 = v11;
  v17 = v6;
  v18 = *(v8 + 32);
  v18(v13, v17, v7);
  sub_1002E4E88(v0 + *(v14 + 68), v4);
  if (v15(v4, 1, v7) == 1)
  {
    (*(v8 + 8))(v13, v7);
    v16 = v4;
    goto LABEL_5;
  }

  v20 = v25;
  v18(v25, v4, v7);
  Date.timeIntervalSince(_:)();
  v22 = v21;
  v23 = *(v8 + 8);
  v23(v20, v7);
  v23(v13, v7);
  return v22;
}

uint64_t sub_100667FB0()
{
  v1 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v24 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v24 - v12;
  v14 = type metadata accessor for SDAuthenticationSessionMetrics(0);
  sub_1002E4E88(v0 + *(v14 + 72), v6);
  v15 = *(v8 + 48);
  if (v15(v6, 1, v7) == 1)
  {
    v16 = v6;
LABEL_5:
    sub_100016C08(v16);
    return 0;
  }

  v25 = v11;
  v17 = v6;
  v18 = *(v8 + 32);
  v18(v13, v17, v7);
  sub_1002E4E88(v0 + *(v14 + 76), v4);
  if (v15(v4, 1, v7) == 1)
  {
    (*(v8 + 8))(v13, v7);
    v16 = v4;
    goto LABEL_5;
  }

  v20 = v25;
  v18(v25, v4, v7);
  Date.timeIntervalSince(_:)();
  v22 = v21;
  v23 = *(v8 + 8);
  v23(v20, v7);
  v23(v13, v7);
  return v22;
}

uint64_t sub_100668230()
{
  v1 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v24 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v24 - v12;
  v14 = type metadata accessor for SDAuthenticationSessionMetrics(0);
  sub_1002E4E88(v0 + *(v14 + 80), v6);
  v15 = *(v8 + 48);
  if (v15(v6, 1, v7) == 1)
  {
    v16 = v6;
LABEL_5:
    sub_100016C08(v16);
    return 0;
  }

  v25 = v11;
  v17 = v6;
  v18 = *(v8 + 32);
  v18(v13, v17, v7);
  sub_1002E4E88(v0 + *(v14 + 84), v4);
  if (v15(v4, 1, v7) == 1)
  {
    (*(v8 + 8))(v13, v7);
    v16 = v4;
    goto LABEL_5;
  }

  v20 = v25;
  v18(v25, v4, v7);
  Date.timeIntervalSince(_:)();
  v22 = v21;
  v23 = *(v8 + 8);
  v23(v20, v7);
  v23(v13, v7);
  return v22;
}

uint64_t sub_1006684B0()
{
  v1 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v28 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v28 - v12;
  v14 = type metadata accessor for SDAuthenticationSessionMetrics(0);
  if (*(v0 + *(v14 + 92)))
  {
    *&result = 0.0;
    return result;
  }

  v16 = v14;
  sub_1002E4E88(v0 + *(v14 + 88), v6);
  v17 = *(v8 + 48);
  if (v17(v6, 1, v7) == 1)
  {
    v18 = v6;
LABEL_7:
    sub_100016C08(v18);
    *&result = 0.0;
    return result;
  }

  v29 = v8;
  v19 = v6;
  v20 = *(v8 + 32);
  v20(v13, v19, v7);
  sub_1002E4E88(v0 + *(v16 + 80), v4);
  if (v17(v4, 1, v7) == 1)
  {
    (*(v29 + 8))(v13, v7);
    v18 = v4;
    goto LABEL_7;
  }

  v20(v11, v4, v7);
  Date.timeIntervalSince(_:)();
  v22 = v21;
  *&v23 = COERCE_DOUBLE(sub_100668230());
  v25 = v24;
  v26 = *(v29 + 8);
  v26(v11, v7);
  v26(v13, v7);
  v27 = *&v23;
  if (v25)
  {
    v27 = 0.0;
  }

  *&result = v22 - v27;
  return result;
}

uint64_t sub_100668774()
{
  v1 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v24 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v24 - v12;
  v14 = type metadata accessor for SDAuthenticationSessionMetrics(0);
  sub_1002E4E88(v0 + *(v14 + 96), v6);
  v15 = *(v8 + 48);
  if (v15(v6, 1, v7) == 1)
  {
    v16 = v6;
LABEL_5:
    sub_100016C08(v16);
    return 0;
  }

  v25 = v11;
  v17 = v6;
  v18 = *(v8 + 32);
  v18(v13, v17, v7);
  sub_1002E4E88(v0 + *(v14 + 100), v4);
  if (v15(v4, 1, v7) == 1)
  {
    (*(v8 + 8))(v13, v7);
    v16 = v4;
    goto LABEL_5;
  }

  v20 = v25;
  v18(v25, v4, v7);
  Date.timeIntervalSince(_:)();
  v22 = v21;
  v23 = *(v8 + 8);
  v23(v20, v7);
  v23(v13, v7);
  return v22;
}

uint64_t sub_1006689F4()
{
  v1 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v24 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v24 - v12;
  v14 = type metadata accessor for SDAuthenticationSessionMetrics(0);
  sub_1002E4E88(v0 + *(v14 + 104), v6);
  v15 = *(v8 + 48);
  if (v15(v6, 1, v7) == 1)
  {
    v16 = v6;
LABEL_5:
    sub_100016C08(v16);
    return 0;
  }

  v25 = v11;
  v17 = v6;
  v18 = *(v8 + 32);
  v18(v13, v17, v7);
  sub_1002E4E88(v0 + *(v14 + 48), v4);
  if (v15(v4, 1, v7) == 1)
  {
    (*(v8 + 8))(v13, v7);
    v16 = v4;
    goto LABEL_5;
  }

  v20 = v25;
  v18(v25, v4, v7);
  Date.timeIntervalSince(_:)();
  v22 = v21;
  v23 = *(v8 + 8);
  v23(v20, v7);
  v23(v13, v7);
  return v22;
}

uint64_t sub_100668C74()
{
  v1 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v22 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v22 - v12;
  v14 = type metadata accessor for SDAuthenticationSessionMetrics(0);
  sub_1002E4E88(v0 + *(v14 + 48), v6);
  v15 = *(v8 + 48);
  if (v15(v6, 1, v7) == 1)
  {
    v16 = v6;
LABEL_5:
    sub_100016C08(v16);
    return 0;
  }

  v23 = v11;
  v22 = *(v8 + 32);
  v22(v13, v6, v7);
  sub_1002E4E88(v0 + *(v14 + 108), v4);
  if (v15(v4, 1, v7) == 1)
  {
    (*(v8 + 8))(v13, v7);
    v16 = v4;
    goto LABEL_5;
  }

  v18 = v23;
  v22(v23, v4, v7);
  Date.timeIntervalSince(_:)();
  v20 = v19;
  v21 = *(v8 + 8);
  v21(v18, v7);
  v21(v13, v7);
  return v20;
}

uint64_t sub_100668EF8(_BYTE *a1, Swift::UInt a2)
{
  v3 = v2;
  v6 = _s12StateMetricsVMa(0);
  v7 = v6[5];
  v8 = type metadata accessor for SDAuthenticationSessionMetrics(0);
  result = sub_1000168F4(&a1[v7], v3 + *(v8 + 104));
  *(v3 + 80) = *a1;
  v10 = *&a1[v6[7]];
  if (*(v10 + 16))
  {
    result = sub_10057091C(a2);
    if (v11)
    {
      v12 = (*(v10 + 56) + 16 * result);
      v14 = *v12;
      v13 = v12[1];

      *(v3 + 16) = v14;
      *(v3 + 24) = v13;
    }
  }

  v15 = *&a1[v6[8]];
  if (*(v15 + 16))
  {
    result = sub_10057091C(a2);
    if (v16)
    {
      v17 = (*(v15 + 56) + 16 * result);
      v19 = *v17;
      v18 = v17[1];

      *(v3 + 32) = v19;
      *(v3 + 40) = v18;
    }
  }

  return result;
}

id sub_100668FE8()
{
  result = [objc_allocWithZone(SFWatchAuthenticationEvent) init];
  if ((*v0 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    [result setAuthenticationType:?];
    v3 = *(v0 + 12) | (*(v0 + 8) == 0);
    if (!(*(v0 + 12) & 1 | (*(v0 + 8) == 0)))
    {
      [v2 setFailureReason:?];
    }

    [v2 setSucceeded:v3 & 1];
    v4 = *(v0 + 48);
    if (*(v0 + 56))
    {
      v4 = 0.0;
    }

    [v2 setArTrackingDistance:v4];

    v5 = String._bridgeToObjectiveC()();

    [v2 setApproveClientBundleID:v5];

    LODWORD(v6) = *(v0 + 84);
    if (*(v0 + 88))
    {
      *&v6 = 0.0;
    }

    [v2 setRangingDistance:v6];
    [v2 setScreenOn:*(v0 + 80) & 1];
    v7 = COERCE_DOUBLE(sub_100667AB0()) * 1000.0;
    if (v8)
    {
      v7 = 0.0;
    }

    [v2 setDiscoveryDuration:v7];
    v9 = COERCE_DOUBLE(sub_100667D30()) * 1000.0;
    if (v10)
    {
      v9 = 0.0;
    }

    [v2 setKeyExchangeDuration:v9];
    v11 = COERCE_DOUBLE(sub_100667FB0()) * 1000.0;
    if (v12)
    {
      v11 = 0.0;
    }

    [v2 setTokenExchangeDuration:v11];
    v13 = COERCE_DOUBLE(sub_100668230()) * 1000.0;
    if (v14)
    {
      v13 = 0.0;
    }

    [v2 setAwdlBringUpDuration:v13];
    v15 = COERCE_DOUBLE(sub_100668774()) * 1000.0;
    if (v16)
    {
      v15 = 0.0;
    }

    [v2 setRangingDuration:v15];
    v17 = COERCE_DOUBLE(sub_1006684B0()) * 1000.0;
    if (v18)
    {
      v17 = 0.0;
    }

    [v2 setPeerFoundDuration:v17];
    v19 = COERCE_DOUBLE(sub_100667830()) * 1000.0;
    if (v20)
    {
      v19 = 0.0;
    }

    [v2 setTotalDuration:v19];
    v21 = COERCE_DOUBLE(sub_1006689F4());
    if (v22)
    {
      v21 = 0.0;
    }

    [v2 setTimeSinceBoot:v21];
    v23 = COERCE_DOUBLE(sub_100668C74());
    if (v24)
    {
      v23 = 0.0;
    }

    [v2 setTimeSinceRemoteUnlocked:v23];

    v25 = String._bridgeToObjectiveC()();

    [v2 setRemoteHardwareModel:v25];

    v26 = String._bridgeToObjectiveC()();

    [v2 setRemoteSoftwareVersion:v26];

    v27 = [v2 remoteHardwareModel];
    if (!v27)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = String._bridgeToObjectiveC()();
    }

    [v2 setWatchHardwareModel:v27];

    v28 = [v2 remoteSoftwareVersion];
    if (!v28)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = String._bridgeToObjectiveC()();
    }

    [v2 setWatchSoftwareVersion:v28];

    return v2;
  }

  return result;
}

uint64_t sub_1006693C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SDAuthenticationSessionMetrics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100669428(uint64_t a1)
{
  v2 = type metadata accessor for SDAuthenticationSessionMetrics(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100669484(uint64_t a1, unint64_t a2)
{
  v16 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationAKSAuthSession_aksSession);
  v5 = v16;
  sub_10028088C(&qword_100988820, &qword_10080F118);
  Optional.tryUnwrap(_:file:line:)();

  if (!v3)
  {
    v6 = v15;
    if (a2 >> 60 == 15)
    {
      isa = 0;
    }

    else
    {
      isa = Data._bridgeToObjectiveC()().super.isa;
    }

    v15 = 0;
    v8 = [v6 stepSessionWithData:isa outputData:&v15];

    if (v8)
    {
      v16 = v15;
      v9 = v15;
      sub_10028088C(&qword_100988828, &unk_10080F120);
      Optional.tryUnwrap(_:file:line:)();
    }

    else
    {
      v10 = v15;
      v11 = sub_100010F88(10, 0xD000000000000017, 0x800000010079AB10);
      v13 = v12;
      sub_1000115C8();
      swift_allocError();
      *v14 = v11;
      *(v14 + 8) = v13;
      swift_willThrow();
    }
  }
}

id sub_1006696B8()
{
  v2 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationAKSAuthSession_aksSession);
  sub_10028088C(&qword_100988820, &qword_10080F118);
  Optional.tryUnwrap(_:file:line:)();

  if (!v1)
  {
    v3 = [v9 generateSessionToken];
    if (v3)
    {
      v4 = v3;
      v2 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v2 = sub_100010F88(10, 0xD00000000000001ELL, 0x800000010079AAF0);
      v7 = v6;
      sub_1000115C8();
      swift_allocError();
      *v8 = v2;
      *(v8 + 8) = v7;
      swift_willThrow();
    }
  }

  return v2;
}

void sub_100669814(uint64_t a1, unint64_t a2)
{
  v68 = a1;
  v3 = v2;
  v5 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationAKSAuthSession_type);
  v6 = a2 >> 60;
  if (a2 >> 60 != 15 && v5 == 6)
  {
    v69 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationAKSAuthSession_aksManager);
    v8 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationAKSAuthSession_peerDevice + 24);
    v7 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationAKSAuthSession_peerDevice + 32);
    v9 = sub_10002CDC0((v2 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationAKSAuthSession_peerDevice), v8);
    v67 = &v66;
    v10 = *(v8 - 8);
    __chkstk_darwin(v9);
    v12 = &v66 - v11;
    (*(v10 + 16))(&v66 - v11);
    v13 = *(v7 + 8);
    sub_100294008(v68, a2);
    v13(v8, v7);
    v15 = v14;
    (*(v10 + 8))(v12, v8);
    if (v15)
    {
      v16 = String._bridgeToObjectiveC()();
    }

    else
    {
      v16 = 0;
    }

    v27 = v68;
    isa = Data._bridgeToObjectiveC()().super.isa;
    v28 = [v69 aksAuthSessionForDeviceID:v16 attestation:1 sessionType:8 escrowSecret:isa];
    sub_10028BCC0(v27, a2);

    goto LABEL_34;
  }

  LODWORD(v67) = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationAKSAuthSession_role);
  v69 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationAKSAuthSession_aksManager);
  v17 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationAKSAuthSession_peerDevice + 24);
  v18 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationAKSAuthSession_peerDevice + 32);
  v19 = sub_10002CDC0((v2 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationAKSAuthSession_peerDevice), v17);
  v66 = &v66;
  v20 = *(v17 - 8);
  __chkstk_darwin(v19);
  v22 = &v66 - v21;
  (*(v20 + 16))(&v66 - v21);
  (*(v18 + 8))(v17, v18);
  v24 = v23;
  (*(v20 + 8))(v22, v17);
  if (v5 != 7)
  {
    if (v24)
    {
      isa = String._bridgeToObjectiveC()();
    }

    else
    {
      isa = 0;
    }

    if (v5 <= 10)
    {
      if (v5 == 4)
      {
        v29 = 7;
        goto LABEL_29;
      }

      if (v5 == 6)
      {
        v29 = 8;
        goto LABEL_29;
      }
    }

    else
    {
      switch(v5)
      {
        case 11:
          v30 = 0;
          v29 = 10;
LABEL_32:
          v31 = 0;
          goto LABEL_33;
        case 19:
          v29 = 10;
          goto LABEL_29;
        case 20:
          v29 = 9;
LABEL_29:
          v30 = (v5 - 3) < 2;
          v31 = 1;
LABEL_33:
          v28 = [v69 aksAuthSessionForDeviceID:isa originator:v67 usingEscrow:v30 attestation:v31 sessionType:{v29, v66}];
          goto LABEL_34;
      }
    }

    v30 = (v5 - 3) < 2;
    v31 = 1;
    v29 = 2;
    if (v5 == 3 || v5 == 5)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  if (v24)
  {
    v25 = String._bridgeToObjectiveC()();
  }

  else
  {
    v25 = 0;
  }

  if (v6 > 0xE)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
  }

  v28 = [v69 aksAuthorizationSessionForDeviceID:v25 attestation:1 originator:v67 externalACMContext:isa sessionType:{9, v66}];

LABEL_34:
  v32 = *(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationAKSAuthSession_aksSession);
  *(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationAKSAuthSession_aksSession) = v28;
  v33 = v28;

  if (!v33)
  {
    v34 = (v3 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationAKSAuthSession_peerDevice);
    v35 = *(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationAKSAuthSession_peerDevice + 24);
    v36 = *(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationAKSAuthSession_peerDevice + 32);
    v37 = sub_10002CDC0(v34, v35);
    v38 = *(v35 - 8);
    __chkstk_darwin(v37);
    v40 = &v66 - v39;
    (*(v38 + 16))(&v66 - v39);
    (*(v36 + 8))(v35, v36);
    v42 = v41;
    (*(v38 + 8))(v40, v35);
    if (v42)
    {
      v43 = String._bridgeToObjectiveC()();
    }

    else
    {
      v43 = 0;
    }

    v48 = [v69 cachedEscrowSecretExistsForDeviceID:v43];

    if (v48)
    {
      v49 = v34[3];
      v50 = v34[4];
      v51 = sub_10002CDC0(v34, v49);
      v52 = *(v49 - 8);
      __chkstk_darwin(v51);
      v54 = &v66 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v52 + 16))(v54);
      (*(v50 + 8))(v49, v50);
      v56 = v55;
      (*(v52 + 8))(v54, v49);
      if (v56)
      {
        v57 = String._bridgeToObjectiveC()();
      }

      else
      {
        v57 = 0;
      }

      v60 = [v69 cachedEscrowSecretIsValidForDeviceID:v57];

      if (v60)
      {
        v61 = 0xD00000000000001DLL;
        v58 = 0x800000010079AB70;
        v59 = 10;
LABEL_50:
        v62 = sub_100010F88(v59, v61, v58);
        v64 = v63;
        sub_1000115C8();
        swift_allocError();
        *v65 = v62;
        *(v65 + 8) = v64;
        swift_willThrow();
        return;
      }

      v58 = 0x800000010079AB50;
      v59 = 22;
    }

    else
    {
      v58 = 0x800000010079AB30;
      v59 = 10;
    }

    v61 = 0xD000000000000015;
    goto LABEL_50;
  }

  if (([v33 sessionIsValid] & 1) == 0)
  {
    v44 = sub_100010F88(10, 0xD000000000000013, 0x800000010079AB90);
    v46 = v45;
    sub_1000115C8();
    swift_allocError();
    *v47 = v44;
    *(v47 + 8) = v46;
    swift_willThrow();
  }
}

void sub_10066A014()
{
  v2 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationAKSAuthSession_aksSession);
  sub_10028088C(&qword_100988820, &qword_10080F118);
  Optional.tryUnwrap(_:file:line:)();

  if (!v1)
  {
    if (([v7 confirmSession] & 1) == 0)
    {
      v3 = sub_100010F88(10, 0xD00000000000001DLL, 0x800000010079ABB0);
      v5 = v4;
      sub_1000115C8();
      swift_allocError();
      *v6 = v3;
      *(v6 + 8) = v5;
      swift_willThrow();
    }
  }
}

id sub_10066A140()
{
  v1 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationAKSAuthSession_role);
  v2 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationAKSAuthSession_aksManager);
  v4 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationAKSAuthSession_peerDevice + 24);
  v3 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationAKSAuthSession_peerDevice + 32);
  v5 = sub_10002CDC0((v0 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationAKSAuthSession_peerDevice), v4);
  v6 = *(v4 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - v7;
  (*(v6 + 16))(&v15 - v7);
  (*(v3 + 8))(v4, v3);
  v10 = v9;
  (*(v6 + 8))(v8, v4);
  if (v1)
  {
    if (v10)
    {
      v11 = String._bridgeToObjectiveC()();
    }

    else
    {
      v11 = 0;
    }

    v12 = &selRef_deviceEnabledAsKeyForIDSDeviceID_;
  }

  else
  {
    if (v10)
    {
      v11 = String._bridgeToObjectiveC()();
    }

    else
    {
      v11 = 0;
    }

    v12 = &selRef_deviceEnabledAsKey_;
  }

  v13 = [v2 *v12];

  return v13;
}

uint64_t sub_10066A2F4()
{
  v1 = OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationAKSAuthSession_sessionID;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_10000C60C((v0 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationAKSAuthSession_peerDevice));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SDAuthenticationAKSAuthSession(uint64_t a1)
{
  result = qword_100988770;
  if (!qword_100988770)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10066A414(uint64_t a1)
{
  result = type metadata accessor for UUID();
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

uint64_t SFAirDropReceive.Failure.legacyFailureReason.getter()
{
  v1 = v0;
  v2 = type metadata accessor for SFAirDropReceive.Failure();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == enum case for SFAirDropReceive.Failure.unsupportedType(_:))
  {
    (*(v3 + 96))(v5, v2);

    v7 = *(sub_10028088C(&unk_10097C640, &unk_1008012A8) + 48);
    v8 = type metadata accessor for URL();
    (*(*(v8 - 8) + 8))(&v5[v7], v8);
    return 1;
  }

  if (v6 == enum case for SFAirDropReceive.Failure.unexpected(_:))
  {
    (*(v3 + 8))(v5, v2);
    return 1;
  }

  if (v6 == enum case for SFAirDropReceive.Failure.declined(_:))
  {
    return 3;
  }

  if (v6 == enum case for SFAirDropReceive.Failure.askDismissed(_:) || v6 == enum case for SFAirDropReceive.Failure.senderCancelled(_:))
  {
    return 0;
  }

  if (v6 == enum case for SFAirDropReceive.Failure.receiverCancelled(_:))
  {
    return 3;
  }

  if (v6 == enum case for SFAirDropReceive.Failure.mixedTypes(_:))
  {
    return 2;
  }

  v9 = 1;
  if (v6 == enum case for SFAirDropReceive.Failure.missingDownloadDirectory(_:) || v6 == enum case for SFAirDropReceive.Failure.missingOwnContact(_:) || v6 == enum case for SFAirDropReceive.Failure.streamError(_:) || v6 == enum case for SFAirDropReceive.Failure.askNotHandled(_:) || v6 == enum case for SFAirDropReceive.Failure.incompleteTransfer(_:) || v6 == enum case for SFAirDropReceive.Failure.badRequest(_:))
  {
    return v9;
  }

  if (v6 == enum case for SFAirDropReceive.Failure.moveToAppFailed(_:))
  {
    return 3;
  }

  if (v6 == enum case for SFAirDropReceive.Failure.insufficientStorage(_:))
  {
    return 1;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_10066A7C8(uint64_t a1, uint64_t a2, int a3)
{
  v20 = a3;
  v19 = a2;
  v21 = a1;
  v4 = sub_10028088C(&qword_100988938, &qword_10080F1F8);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v18 - v9;
  __chkstk_darwin(v8);
  v12 = &v18 - v11;
  v13 = *(v3 + *((swift_isaMask & *v3) + 0x58));
  os_unfair_lock_lock(v13 + 4);
  v14 = *((swift_isaMask & *v3) + 0x68);
  swift_beginAccess();
  sub_10000FF90(v3 + v14, v12, &qword_100988938, &qword_10080F1F8);
  v15 = sub_10028088C(&qword_100988940, &unk_10080F200);
  v16 = *(v15 - 8);
  (*(v16 + 56))(v10, 1, 1, v15);
  swift_beginAccess();
  sub_10000C788(v10, v3 + v14, &qword_100988938, &qword_10080F1F8);
  swift_endAccess();
  os_unfair_lock_unlock(v13 + 4);
  sub_10000FF90(v12, v7, &qword_100988938, &qword_10080F1F8);
  if ((*(v16 + 48))(v7, 1, v15) == 1)
  {
    sub_100005508(v12, &qword_100988938, &qword_10080F1F8);
    return sub_100005508(v7, &qword_100988938, &qword_10080F1F8);
  }

  else
  {
    v22 = v21;
    if (v20)
    {
      swift_errorRetain();
      CheckedContinuation.resume(throwing:)();
    }

    else
    {
      v23 = v19;

      CheckedContinuation.resume(returning:)();
    }

    sub_100005508(v12, &qword_100988938, &qword_10080F1F8);
    return (*(v16 + 8))(v7, v15);
  }
}

uint64_t sub_10066AAA8(uint64_t a1, int a2)
{
  v18 = a2;
  v19 = a1;
  v3 = sub_10028088C(&qword_100988910, &qword_10080F1C0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __chkstk_darwin(v4);
  v9 = &v17[-v8];
  __chkstk_darwin(v7);
  v11 = &v17[-v10];
  v12 = *(v2 + *((swift_isaMask & *v2) + 0x58));
  os_unfair_lock_lock(v12 + 4);
  v13 = *((swift_isaMask & *v2) + 0x68);
  swift_beginAccess();
  sub_10000FF90(v2 + v13, v11, &qword_100988910, &qword_10080F1C0);
  v14 = sub_10028088C(&qword_100988918, &qword_10080F1C8);
  v15 = *(v14 - 8);
  (*(v15 + 56))(v9, 1, 1, v14);
  swift_beginAccess();
  sub_10000C788(v9, v2 + v13, &qword_100988910, &qword_10080F1C0);
  swift_endAccess();
  os_unfair_lock_unlock(v12 + 4);
  sub_10000FF90(v11, v6, &qword_100988910, &qword_10080F1C0);
  if ((*(v15 + 48))(v6, 1, v14) == 1)
  {
    sub_100005508(v11, &qword_100988910, &qword_10080F1C0);
    return sub_100005508(v6, &qword_100988910, &qword_10080F1C0);
  }

  else
  {
    if (v18)
    {
      v20 = v19;
      swift_errorRetain();
      CheckedContinuation.resume(throwing:)();
    }

    else
    {
      LOBYTE(v20) = v19;
      CheckedContinuation.resume(returning:)();
    }

    sub_100005508(v11, &qword_100988910, &qword_10080F1C0);
    return (*(v15 + 8))(v6, v14);
  }
}

uint64_t sub_10066AD7C(uint64_t a1, int a2)
{
  v18 = a2;
  v19 = a1;
  v3 = sub_10028088C(&qword_100988928, &qword_10080F1D0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __chkstk_darwin(v4);
  v9 = &v17[-v8];
  __chkstk_darwin(v7);
  v11 = &v17[-v10];
  v12 = *(v2 + *((swift_isaMask & *v2) + 0x58));
  os_unfair_lock_lock(v12 + 4);
  v13 = *((swift_isaMask & *v2) + 0x68);
  swift_beginAccess();
  sub_10000FF90(v2 + v13, v11, &qword_100988928, &qword_10080F1D0);
  v14 = sub_10028088C(&qword_100988930, &qword_10080F1D8);
  v15 = *(v14 - 8);
  (*(v15 + 56))(v9, 1, 1, v14);
  swift_beginAccess();
  sub_10000C788(v9, v2 + v13, &qword_100988928, &qword_10080F1D0);
  swift_endAccess();
  os_unfair_lock_unlock(v12 + 4);
  sub_10000FF90(v11, v6, &qword_100988928, &qword_10080F1D0);
  if ((*(v15 + 48))(v6, 1, v14) == 1)
  {
    sub_100005508(v11, &qword_100988928, &qword_10080F1D0);
    return sub_100005508(v6, &qword_100988928, &qword_10080F1D0);
  }

  else
  {
    if (v18)
    {
      v20 = v19;
      swift_errorRetain();
      CheckedContinuation.resume(throwing:)();
    }

    else
    {
      LOBYTE(v20) = v19 & 1;
      CheckedContinuation.resume(returning:)();
    }

    sub_100005508(v11, &qword_100988928, &qword_10080F1D0);
    return (*(v15 + 8))(v6, v14);
  }
}

void sub_10066B054(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v60 = a7;
  v61 = a8;
  v58 = a5;
  v59 = a6;
  v62 = a4;
  v14 = sub_10028088C(&qword_100988938, &qword_10080F1F8);
  __chkstk_darwin(v14 - 8);
  v16 = &v58 - v15;
  v17 = *(a2 + *((swift_isaMask & *a2) + 0x58));
  os_unfair_lock_lock(v17 + 4);
  v18 = sub_10028088C(&qword_100988940, &unk_10080F200);
  v19 = *(v18 - 8);
  (*(v19 + 16))(v16, a1, v18);
  (*(v19 + 56))(v16, 0, 1, v18);
  v20 = *((swift_isaMask & *a2) + 0x68);
  swift_beginAccess();
  sub_10000C788(v16, a2 + v20, &qword_100988938, &qword_10080F1F8);
  swift_endAccess();
  os_unfair_lock_unlock(v17 + 4);
  v21 = swift_allocObject();
  *(v21 + 16) = a2;
  *(v21 + 24) = a3;
  aBlock[4] = sub_10066E2D4;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100035F9C;
  aBlock[3] = &unk_1008ED668;
  v22 = _Block_copy(aBlock);
  v23 = objc_opt_self();
  v24 = a2;
  v25 = [v23 responderWithHandler:{v22, v58, v59, v60, v61}];
  _Block_release(v22);

  if (!v62)
  {
    v26 = objc_allocWithZone(SBSRemoteAlertDefinition);
    v27 = String._bridgeToObjectiveC()();
    v28 = String._bridgeToObjectiveC()();
    v29 = [v26 initWithServiceName:v27 viewControllerClassName:v28];

    v30 = [objc_allocWithZone(SBSRemoteAlertConfigurationContext) init];
    if (a9)
    {
      sub_1003CE294(a9);
      v31.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v31.super.isa = 0;
    }

    [v30 setUserInfo:v31.super.isa];

    v32 = [objc_allocWithZone(BSMutableSettings) init];
    [v32 setFlag:1 forSetting:a10];
    v33 = objc_allocWithZone(BSAction);
    v61 = v32;
    v62 = v25;
    v34 = [v33 initWithInfo:v32 responder:v25];
    sub_10028088C(&qword_100974F70, &unk_100804260);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007FD580;
    *(inited + 32) = v34;
    v36 = v34;
    sub_1002F48BC(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    sub_10066E15C();
    sub_10066E1A8(&qword_100988920, sub_10066E15C, &protocol conformance descriptor for NSObject);
    isa = Set._bridgeToObjectiveC()().super.isa;

    [v30 setActions:isa];

    if (qword_100973938 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_10000C4AC(v38, qword_100980650);
    v39 = v29;
    v40 = v30;
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v60 = v36;
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      aBlock[0] = v59;
      *v43 = 138412546;
      *(v43 + 4) = v39;
      v58 = v44;
      *v44 = v39;
      *(v43 + 12) = 2080;
      v45 = v39;
      v46 = [v40 userInfo];
      if (v46)
      {
        v47 = v46;
        static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        v48 = Dictionary.description.getter();
        v50 = v49;
      }

      else
      {
        v50 = 0x8000000100799D00;
        v48 = 0xD00000000000002BLL;
      }

      v51 = sub_10000C4E4(v48, v50, aBlock);

      *(v43 + 14) = v51;
      _os_log_impl(&_mh_execute_header, v41, v42, "SDAirDropRemoteViewController activating with definition: %@ and userInfo: %s", v43, 0x16u);
      sub_100005508(v58, &qword_100975400, &qword_1007F65D0);

      sub_10000C60C(v59);

      v36 = v60;
    }

    else
    {
    }

    v52 = [objc_opt_self() newHandleWithDefinition:v39 configurationContext:v40];
    v53 = *((swift_isaMask & *v24) + 0x60);
    v54 = *(v24 + v53);
    *(v24 + v53) = v52;

    v55 = *(v24 + v53);
    if (!v55)
    {
      goto LABEL_19;
    }

    [v55 registerObserver:v24];
    v56 = *(v24 + v53);
    if (a11)
    {
      if (!v56)
      {
LABEL_19:

        v25 = v61;
        goto LABEL_20;
      }

      [v56 registerObserver:a11];
      v56 = *(v24 + v53);
    }

    if (v56)
    {
      v57 = v56;
      [v57 activateWithContext:0];
    }

    goto LABEL_19;
  }

LABEL_20:
}

void sub_10066B7B4(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v60 = a7;
  v61 = a8;
  v58 = a5;
  v59 = a6;
  v62 = a4;
  v14 = sub_10028088C(&qword_100988910, &qword_10080F1C0);
  __chkstk_darwin(v14 - 8);
  v16 = &v58 - v15;
  v17 = *(a2 + *((swift_isaMask & *a2) + 0x58));
  os_unfair_lock_lock(v17 + 4);
  v18 = sub_10028088C(&qword_100988918, &qword_10080F1C8);
  v19 = *(v18 - 8);
  (*(v19 + 16))(v16, a1, v18);
  (*(v19 + 56))(v16, 0, 1, v18);
  v20 = *((swift_isaMask & *a2) + 0x68);
  swift_beginAccess();
  sub_10000C788(v16, a2 + v20, &qword_100988910, &qword_10080F1C0);
  swift_endAccess();
  os_unfair_lock_unlock(v17 + 4);
  v21 = swift_allocObject();
  *(v21 + 16) = a2;
  *(v21 + 24) = a3;
  aBlock[4] = sub_10066E154;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100035F9C;
  aBlock[3] = &unk_1008ED578;
  v22 = _Block_copy(aBlock);
  v23 = objc_opt_self();
  v24 = a2;
  v25 = [v23 responderWithHandler:{v22, v58, v59, v60, v61}];
  _Block_release(v22);

  if (!v62)
  {
    v26 = objc_allocWithZone(SBSRemoteAlertDefinition);
    v27 = String._bridgeToObjectiveC()();
    v28 = String._bridgeToObjectiveC()();
    v29 = [v26 initWithServiceName:v27 viewControllerClassName:v28];

    v30 = [objc_allocWithZone(SBSRemoteAlertConfigurationContext) init];
    if (a9)
    {
      sub_1003CE294(a9);
      v31.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v31.super.isa = 0;
    }

    [v30 setUserInfo:v31.super.isa];

    v32 = [objc_allocWithZone(BSMutableSettings) init];
    [v32 setFlag:1 forSetting:a10];
    v33 = objc_allocWithZone(BSAction);
    v61 = v32;
    v62 = v25;
    v34 = [v33 initWithInfo:v32 responder:v25];
    sub_10028088C(&qword_100974F70, &unk_100804260);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007FD580;
    *(inited + 32) = v34;
    v36 = v34;
    sub_1002F48BC(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    sub_10066E15C();
    sub_10066E1A8(&qword_100988920, sub_10066E15C, &protocol conformance descriptor for NSObject);
    isa = Set._bridgeToObjectiveC()().super.isa;

    [v30 setActions:isa];

    if (qword_100973938 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_10000C4AC(v38, qword_100980650);
    v39 = v29;
    v40 = v30;
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v60 = v36;
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      aBlock[0] = v59;
      *v43 = 138412546;
      *(v43 + 4) = v39;
      v58 = v44;
      *v44 = v39;
      *(v43 + 12) = 2080;
      v45 = v39;
      v46 = [v40 userInfo];
      if (v46)
      {
        v47 = v46;
        static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        v48 = Dictionary.description.getter();
        v50 = v49;
      }

      else
      {
        v50 = 0x8000000100799D00;
        v48 = 0xD00000000000002BLL;
      }

      v51 = sub_10000C4E4(v48, v50, aBlock);

      *(v43 + 14) = v51;
      _os_log_impl(&_mh_execute_header, v41, v42, "SDAirDropRemoteViewController activating with definition: %@ and userInfo: %s", v43, 0x16u);
      sub_100005508(v58, &qword_100975400, &qword_1007F65D0);

      sub_10000C60C(v59);

      v36 = v60;
    }

    else
    {
    }

    v52 = [objc_opt_self() newHandleWithDefinition:v39 configurationContext:v40];
    v53 = *((swift_isaMask & *v24) + 0x60);
    v54 = *(v24 + v53);
    *(v24 + v53) = v52;

    v55 = *(v24 + v53);
    if (!v55)
    {
      goto LABEL_19;
    }

    [v55 registerObserver:v24];
    v56 = *(v24 + v53);
    if (a11)
    {
      if (!v56)
      {
LABEL_19:

        v25 = v61;
        goto LABEL_20;
      }

      [v56 registerObserver:a11];
      v56 = *(v24 + v53);
    }

    if (v56)
    {
      v57 = v56;
      [v57 activateWithContext:0];
    }

    goto LABEL_19;
  }

LABEL_20:
}

void sub_10066BF14(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v60 = a7;
  v61 = a8;
  v58 = a5;
  v59 = a6;
  v62 = a4;
  v14 = sub_10028088C(&qword_100988928, &qword_10080F1D0);
  __chkstk_darwin(v14 - 8);
  v16 = &v58 - v15;
  v17 = *(a2 + *((swift_isaMask & *a2) + 0x58));
  os_unfair_lock_lock(v17 + 4);
  v18 = sub_10028088C(&qword_100988930, &qword_10080F1D8);
  v19 = *(v18 - 8);
  (*(v19 + 16))(v16, a1, v18);
  (*(v19 + 56))(v16, 0, 1, v18);
  v20 = *((swift_isaMask & *a2) + 0x68);
  swift_beginAccess();
  sub_10000C788(v16, a2 + v20, &qword_100988928, &qword_10080F1D0);
  swift_endAccess();
  os_unfair_lock_unlock(v17 + 4);
  v21 = swift_allocObject();
  *(v21 + 16) = a2;
  *(v21 + 24) = a3;
  aBlock[4] = sub_10066E1F0;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100035F9C;
  aBlock[3] = &unk_1008ED5C8;
  v22 = _Block_copy(aBlock);
  v23 = objc_opt_self();
  v24 = a2;
  v25 = [v23 responderWithHandler:{v22, v58, v59, v60, v61}];
  _Block_release(v22);

  if (!v62)
  {
    v26 = objc_allocWithZone(SBSRemoteAlertDefinition);
    v27 = String._bridgeToObjectiveC()();
    v28 = String._bridgeToObjectiveC()();
    v29 = [v26 initWithServiceName:v27 viewControllerClassName:v28];

    v30 = [objc_allocWithZone(SBSRemoteAlertConfigurationContext) init];
    if (a9)
    {
      sub_1003CE294(a9);
      v31.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v31.super.isa = 0;
    }

    [v30 setUserInfo:v31.super.isa];

    v32 = [objc_allocWithZone(BSMutableSettings) init];
    [v32 setFlag:1 forSetting:a10];
    v33 = objc_allocWithZone(BSAction);
    v61 = v32;
    v62 = v25;
    v34 = [v33 initWithInfo:v32 responder:v25];
    sub_10028088C(&qword_100974F70, &unk_100804260);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007FD580;
    *(inited + 32) = v34;
    v36 = v34;
    sub_1002F48BC(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    sub_10066E15C();
    sub_10066E1A8(&qword_100988920, sub_10066E15C, &protocol conformance descriptor for NSObject);
    isa = Set._bridgeToObjectiveC()().super.isa;

    [v30 setActions:isa];

    if (qword_100973938 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_10000C4AC(v38, qword_100980650);
    v39 = v29;
    v40 = v30;
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v60 = v36;
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      aBlock[0] = v59;
      *v43 = 138412546;
      *(v43 + 4) = v39;
      v58 = v44;
      *v44 = v39;
      *(v43 + 12) = 2080;
      v45 = v39;
      v46 = [v40 userInfo];
      if (v46)
      {
        v47 = v46;
        static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        v48 = Dictionary.description.getter();
        v50 = v49;
      }

      else
      {
        v50 = 0x8000000100799D00;
        v48 = 0xD00000000000002BLL;
      }

      v51 = sub_10000C4E4(v48, v50, aBlock);

      *(v43 + 14) = v51;
      _os_log_impl(&_mh_execute_header, v41, v42, "SDAirDropRemoteViewController activating with definition: %@ and userInfo: %s", v43, 0x16u);
      sub_100005508(v58, &qword_100975400, &qword_1007F65D0);

      sub_10000C60C(v59);

      v36 = v60;
    }

    else
    {
    }

    v52 = [objc_opt_self() newHandleWithDefinition:v39 configurationContext:v40];
    v53 = *((swift_isaMask & *v24) + 0x60);
    v54 = *(v24 + v53);
    *(v24 + v53) = v52;

    v55 = *(v24 + v53);
    if (!v55)
    {
      goto LABEL_19;
    }

    [v55 registerObserver:v24];
    v56 = *(v24 + v53);
    if (a11)
    {
      if (!v56)
      {
LABEL_19:

        v25 = v61;
        goto LABEL_20;
      }

      [v56 registerObserver:a11];
      v56 = *(v24 + v53);
    }

    if (v56)
    {
      v57 = v56;
      [v57 activateWithContext:0];
    }

    goto LABEL_19;
  }

LABEL_20:
}

id sub_10066C674(void *a1, void *a2, uint64_t a3)
{
  if (qword_100973938 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000C4AC(v6, qword_100980650);
  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    *(v10 + 4) = v7;
    *v11 = v7;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v8, v9, "SDAirDropRemoteViewController received response: %@", v10, 0xCu);
    sub_100005508(v11, &qword_100975400, &qword_1007F65D0);
  }

  v13 = [v7 error];
  if (v13)
  {
    v14 = v13;
    v15 = v13;
    sub_10066A7C8(v14, 0, 1);
  }

  else
  {
    v16 = [v7 info];
    if (v16)
    {
      v17 = v16;
      if ([v16 objectForSetting:a3])
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        sub_1000106E0(&v21, v22);
      }

      else
      {
        memset(v22, 0, sizeof(v22));
      }

      sub_10028088C(&unk_1009746F0, &qword_1007F90B0);
      if (swift_dynamicCast() && (v18 = *(&v21 + 1)) != 0)
      {
        v19 = v21;

        sub_10066A7C8(v19, v18, 0);
        swift_bridgeObjectRelease_n();
      }

      else
      {
        sub_10066A7C8(0, 0, 0);
      }
    }

    else
    {
      sub_10066A7C8(0, 0, 0);
    }
  }

  result = *(a2 + *((swift_isaMask & *a2) + 0x60));
  if (result)
  {
    return [result invalidate];
  }

  return result;
}

id sub_10066C94C(void *a1, void *a2, uint64_t a3)
{
  if (qword_100973938 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000C4AC(v6, qword_100980650);
  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    *(v10 + 4) = v7;
    *v11 = v7;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v8, v9, "SDAirDropRemoteViewController received response: %@", v10, 0xCu);
    sub_100005508(v11, &qword_100975400, &qword_1007F65D0);
  }

  v13 = [v7 error];
  if (v13)
  {
    v14 = v13;
    v15 = v13;
    sub_10066AAA8(v14, 1);
  }

  else
  {
    v16 = [v7 info];
    if (v16)
    {
      v17 = v16;
      sub_10066AAA8([v16 BOOLForSetting:a3], 0);
    }

    else
    {
      sub_10066AAA8(0, 0);
    }
  }

  result = *(a2 + *((swift_isaMask & *a2) + 0x60));
  if (result)
  {

    return [result invalidate];
  }

  return result;
}

id sub_10066CB90(void *a1, void *a2, uint64_t a3)
{
  if (qword_100973938 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000C4AC(v6, qword_100980650);
  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    *(v10 + 4) = v7;
    *v11 = v7;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v8, v9, "SDAirDropRemoteViewController received response: %@", v10, 0xCu);
    sub_100005508(v11, &qword_100975400, &qword_1007F65D0);
  }

  v13 = [v7 error];
  if (v13)
  {
    v14 = v13;
    v15 = v13;
    sub_10066AD7C(v14, 1);
  }

  else
  {
    v16 = [v7 info];
    if (v16)
    {
      v17 = v16;
      if ([v16 objectForSetting:a3])
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        sub_1000106E0(&v20, v21);
      }

      else
      {
        memset(v21, 0, sizeof(v21));
      }

      sub_10028088C(&unk_1009746F0, &qword_1007F90B0);
      v18 = swift_dynamicCast() == 0;
      sub_10066AD7C(v18, 0);
    }

    else
    {
      sub_10066AD7C(1, 0);
    }
  }

  result = *(a2 + *((swift_isaMask & *a2) + 0x60));
  if (result)
  {
    return [result invalidate];
  }

  return result;
}

uint64_t sub_10066CE34()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_1009888C8);
  v1 = sub_10000C4AC(v0, qword_1009888C8);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10066CEFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a6;
  v7[4] = a7;
  v9 = swift_task_alloc();
  v7[5] = v9;
  *v9 = v7;
  v9[1] = sub_10066CFA8;

  return sub_10066D568(a5);
}

uint64_t sub_10066CFA8(char a1)
{
  v4 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v5 = sub_10066D140;
  }

  else
  {
    *(v4 + 56) = a1 & 1;
    v5 = sub_10066D0D4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10066D0D4()
{
  (*(v0 + 24))(*(v0 + 56), 0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10066D140()
{
  v15 = v0;
  if (qword_100973C10 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_1009888C8);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[6];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136315138;
    v0[2] = v4;
    swift_errorRetain();
    sub_10028088C(&unk_10097A930, &unk_1007F9050);
    v7 = String.init<A>(describing:)();
    v9 = sub_10000C4E4(v7, v8, &v14);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "Move to App Share Sheet failed {error: %s}", v5, 0xCu);
    sub_10000C60C(v6);
  }

  v10 = v0[6];
  v11 = v0[3];
  swift_errorRetain();
  v11(0, v10);

  v12 = v0[1];

  return v12();
}

void sub_10066D494(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

uint64_t sub_10066D568(uint64_t a1)
{
  v1[13] = a1;
  v2 = type metadata accessor for SFMoveToAppShareSheetSettings();
  v1[14] = v2;
  v1[15] = *(v2 - 8);
  v1[16] = swift_task_alloc();
  v3 = type metadata accessor for URL();
  v1[17] = v3;
  v1[18] = *(v3 - 8);
  v1[19] = swift_task_alloc();

  return _swift_task_switch(sub_10066D6B0, 0, 0);
}

uint64_t sub_10066D6B0()
{
  v66 = v0;
  v1 = *(v0 + 104);
  v65 = _swiftEmptyArrayStorage;
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 144);
    v62 = objc_opt_self();
    v6 = *(v3 + 16);
    v5 = v3 + 16;
    v4 = v6;
    v7 = v1 + ((*(v5 + 64) + 32) & ~*(v5 + 64));
    v8 = *(v5 + 56);
    v61 = _swiftEmptyArrayStorage;
    do
    {
      v9 = v64[19];
      v10 = v64[17];
      v4(v9, v7, v10);
      URL._bridgeToObjectiveC()(v11);
      v13 = v12;
      v14 = [v62 scopedResourceWithFileURL:v12 allowedAccess:2];

      (*(v5 - 8))(v9, v10);
      if (v14)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v61 = v65;
      }

      v7 += v8;
      --v2;
    }

    while (v2);
  }

  else
  {
    v61 = _swiftEmptyArrayStorage;
  }

  v15 = v61;
  if (!(v61 >> 62))
  {
    v63 = (v61 & 0xFFFFFFFFFFFFFF8);
    v16 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v17 = v64;
    if (v16)
    {
      goto LABEL_11;
    }

LABEL_30:
    v60 = _swiftEmptyArrayStorage;
    goto LABEL_31;
  }

LABEL_29:
  v63 = (v15 & 0xFFFFFFFFFFFFFF8);
  v16 = _CocoaArrayWrapper.endIndex.getter();
  v17 = v64;
  if (!v16)
  {
    goto LABEL_30;
  }

LABEL_11:
  v18 = 0;
  v19 = v15 & 0xC000000000000001;
  v60 = _swiftEmptyArrayStorage;
  do
  {
    v20 = v18;
    while (1)
    {
      if (v19)
      {
        v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v20 >= v63[2])
        {
          goto LABEL_28;
        }

        v21 = *(v15 + 8 * v20 + 32);
      }

      v22 = v21;
      v18 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v23 = objc_opt_self();
      v17[12] = 0;
      v24 = [v23 archivedDataWithRootObject:v22 requiringSecureCoding:1 error:v17 + 12];
      v25 = v17[12];
      if (v24)
      {
        break;
      }

      v26 = v25;
      _convertNSErrorToError(_:)();

      swift_willThrow();

      ++v20;
      if (v18 == v16)
      {
        goto LABEL_31;
      }
    }

    v27 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v60 = sub_10028EEAC(0, *(v60 + 2) + 1, 1, v60);
    }

    v31 = *(v60 + 2);
    v30 = *(v60 + 3);
    if (v31 >= v30 >> 1)
    {
      v60 = sub_10028EEAC((v30 > 1), v31 + 1, 1, v60);
    }

    *(v60 + 2) = v31 + 1;
    v32 = &v60[16 * v31];
    *(v32 + 4) = v27;
    *(v32 + 5) = v29;
    v15 = v61;
  }

  while (v18 != v16);
LABEL_31:

  if (*(v60 + 2))
  {
    v34 = v17[15];
    v33 = v17[16];
    v35 = v17[14];
    v36 = *(v34 + 104);
    v36(v33, enum case for SFMoveToAppShareSheetSettings.reply(_:), v35);
    v37 = SFMoveToAppShareSheetSettings.rawValue.getter();
    v38 = *(v34 + 8);
    v38(v33, v35);
    v36(v33, enum case for SFMoveToAppShareSheetSettings.shareSheetSucceeded(_:), v35);
    v39 = SFMoveToAppShareSheetSettings.rawValue.getter();
    v38(v33, v35);
    sub_10028088C(&unk_100987070, &unk_10080DA00);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007F5670;
    *(inited + 32) = static SFMoveToAppShareSheetSettings.encodedFiles.getter();
    *(inited + 40) = v41;
    *(inited + 72) = sub_10028088C(&qword_100988908, &unk_10080F1B0);
    *(inited + 48) = v60;
    v42 = sub_100011040(inited);
    v64[20] = v42;
    swift_setDeallocating();
    sub_100005508(inited + 32, &qword_1009744D0, &qword_1007F8A20);
    v43 = [objc_allocWithZone(sub_10028088C(&qword_1009800F0 &unk_100806010))];
    v64[21] = v43;
    v44 = swift_task_alloc();
    v64[22] = v44;
    *(v44 + 16) = v43;
    *(v44 + 24) = v39;
    *(v44 + 32) = xmmword_1007F84A0;
    *(v44 + 48) = 0x8000000100789280;
    *(v44 + 56) = 0xD000000000000024;
    *(v44 + 64) = 0x800000010079AC50;
    *(v44 + 72) = v42;
    *(v44 + 80) = v37;
    *(v44 + 88) = 0;
    v45 = swift_task_alloc();
    v64[23] = v45;
    v46 = sub_10028088C(&qword_10097A3C0, &qword_1007FD5D0);
    *v45 = v64;
    v45[1] = sub_10066DECC;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v64 + 25, 0, 0, 0xD00000000000006ALL, 0x80000001007892A0, sub_1004B2880, v44, v46);
  }

  else
  {

    if (qword_100973C10 != -1)
    {
      swift_once();
    }

    v47 = type metadata accessor for Logger();
    sub_10000C4AC(v47, qword_1009888C8);

    v48 = Logger.logObject.getter();
    v49 = v17;
    v50 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v48, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v65 = v52;
      *v51 = 136315138;
      v53 = Array.description.getter();
      v55 = sub_10000C4E4(v53, v54, &v65);

      *(v51 + 4) = v55;
      _os_log_impl(&_mh_execute_header, v48, v50, "Could not create encoded array of security scoped resources for files %s", v51, 0xCu);
      sub_10000C60C(v52);
    }

    v56 = type metadata accessor for SFAirDropReceive.Failure();
    sub_10066E1A8(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure, &protocol conformance descriptor for SFAirDropReceive.Failure);
    swift_allocError();
    (*(*(v56 - 8) + 104))(v57, enum case for SFAirDropReceive.Failure.moveToAppFailed(_:), v56);
    swift_willThrow();

    v58 = v49[1];

    return v58(0);
  }
}

uint64_t sub_10066DECC()
{
  v2 = *v1;
  *(v2 + 192) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10066E094, 0, 0);
  }

  else
  {
    v3 = *(v2 + 168);

    v4 = *(v2 + 200);

    v5 = *(v2 + 8);

    return v5(v4 & 1);
  }
}

uint64_t sub_10066E094()
{
  v1 = *(v0 + 168);

  v2 = *(v0 + 8);

  return v2(0);
}

unint64_t sub_10066E15C()
{
  result = qword_1009772C0;
  if (!qword_1009772C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1009772C0);
  }

  return result;
}

uint64_t sub_10066E1A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10066E200(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100005C04;

  return sub_10066CEFC(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_10066E2EC()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100988948);
  v1 = sub_10000C4AC(v0, qword_100988948);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10066E3B4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = type metadata accessor for SFAirDropReceive.AskRequest();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v5 = type metadata accessor for SFAirDropReceive.AskRequest.ItemInfo();
  v2[10] = v5;
  v2[11] = *(v5 - 8);
  v2[12] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v6 = static AirDropActor.shared;

  return _swift_task_switch(sub_10066E564, v6, 0);
}