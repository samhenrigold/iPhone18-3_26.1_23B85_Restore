uint64_t sub_10006A518()
{
  sub_100001ED0();
  sub_100004B10();
  v0 = swift_task_alloc();
  v1 = sub_100004B00(v0);
  *v1 = v2;
  v1[1] = sub_10000F254;
  sub_100008570();

  return sub_100065068();
}

__n128 sub_10006A5AC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_10006A5B8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10006A5D8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_10006A614(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10006A65C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100065020(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10006A6C4()
{
  sub_100001ED0();
  sub_100004B10();
  v0 = swift_task_alloc();
  v1 = sub_100004B00(v0);
  *v1 = v2;
  v3 = sub_100004F40(v1);

  return v4(v3);
}

uint64_t sub_10006A754()
{
  sub_100001ED0();
  sub_100004B10();
  v0 = swift_task_alloc();
  v1 = sub_100004B00(v0);
  *v1 = v2;
  v3 = sub_100004F40(v1);

  return v4(v3);
}

uint64_t sub_10006A7E4()
{
  sub_100002BAC();
  sub_100001EF4();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_10006A8C8(uint64_t a1, uint64_t a2)
{
  v4 = _s6PolicyVMa_0(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10006A92C()
{
  result = qword_1001B8BC0;
  if (!qword_1001B8BC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1001B8BC0);
  }

  return result;
}

uint64_t sub_10006A970()
{
  sub_100001ED0();
  v0 = swift_task_alloc();
  v1 = sub_100004B00(v0);
  *v1 = v2;
  v1[1] = sub_10006A7E4;
  sub_100008570();

  return sub_100092238();
}

uint64_t sub_10006AA6C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10006AAAC()
{
  sub_100001ED0();
  v0 = swift_task_alloc();
  v1 = sub_100004B00(v0);
  *v1 = v2;
  v1[1] = sub_10000F254;
  sub_100008570();

  return sub_1001511D4();
}

uint64_t sub_10006AB4C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_1000055A4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10006AB90()
{
  result = qword_1001B8C00;
  if (!qword_1001B8C00)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001B8C00);
  }

  return result;
}

uint64_t sub_10006AC38()
{
  sub_100002BAC();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10000F254;

  return sub_1000B7454(v3, v0);
}

__n128 sub_10006AD20(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_10006AD2C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10006AD4C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_10006ADAC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10006ADCC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

void sub_10006AE08(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_10006AE54@<X0>(uint64_t *a3@<X8>)
{
  String.utf8CString.getter();
  remote_service_listener = xpc_remote_connection_create_remote_service_listener();

  a3[3] = &type metadata for RemoteXPCConnection;
  a3[4] = &off_1001B1F68;
  *a3 = remote_service_listener;
  return result;
}

uint64_t sub_10006AEF4()
{
  v0 = type metadata accessor for Logger();
  sub_100065A60(v0, qword_1001B8D28);
  sub_10000641C(v0, qword_1001B8D28);
  subsystemName.getter();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10006AF68()
{
  v0 = sub_100065020(&qword_1001B8DD8, &qword_10016F918);
  __chkstk_darwin(v0);
  v2 = &v64 - v1;
  v3 = IOPSCopyPowerSourcesInfo();
  if (!v3)
  {
    if (qword_1001B88C0 != -1)
    {
      sub_100004F70(&qword_1001B88C0);
    }

    v19 = type metadata accessor for Logger();
    v20 = sub_10000A4F4(v19, qword_1001B8D28);
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = sub_100007648();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Failed to create power source snapshot.", v22, 2u);
      sub_100002BB8(v22);
    }

    return 0;
  }

  v4 = v3;
  v5 = IOPSCopyPowerSourcesList(v3);
  if (!v5)
  {
    if (qword_1001B88C0 != -1)
    {
      sub_100004F70(&qword_1001B88C0);
    }

    v32 = type metadata accessor for Logger();
    v33 = sub_10000A4F4(v32, qword_1001B8D28);
    v34 = static os_log_type_t.default.getter();
    if (sub_100006468(v34))
    {
      v35 = sub_100007648();
      *v35 = 0;
      sub_100008348();
      _os_log_impl(v36, v37, v38, v39, v35, 2u);
      sub_100002BB8(v35);
    }

    goto LABEL_64;
  }

  v6 = v5;
  v7 = swift_allocObject();
  *(v7 + 16) = v4;
  swift_unknownObjectRetain_n();
  v8 = v6;

  v65 = v8;
  NSArray.makeIterator()();
  v9 = &v2[*(sub_100065020(&qword_1001B8DE0, &qword_10016F920) + 44)];
  *v9 = sub_10006B83C;
  *(v9 + 1) = v7;
  v64 = v7;
  v10 = &v2[*(sub_100065020(&qword_1001B8DE8, &qword_10016F928) + 36)];
  *v10 = sub_10006B85C;
  v10[1] = 0;
  v11 = &v2[*(v0 + 44)];
  *v11 = sub_10006B864;
  *(v11 + 1) = 0;
  type metadata accessor for NSFastEnumerationIterator();
  sub_10006B890();
  while (1)
  {
    while (1)
    {
      dispatch thunk of IteratorProtocol.next()();
      v68 = v70;
      v69 = v71;
      if (!*(&v71 + 1))
      {
        swift_unknownObjectRelease();

        v23 = v65;

        sub_10000C790(v2, &qword_1001B8DD8, &qword_10016F918);
        if (qword_1001B88C0 != -1)
        {
          sub_100004F70(&qword_1001B88C0);
        }

        v24 = type metadata accessor for Logger();
        v25 = sub_10000A4F4(v24, qword_1001B8D28);
        v26 = static os_log_type_t.default.getter();
        if (sub_100006468(v26))
        {
          v27 = sub_100007648();
          *v27 = 0;
          sub_100008348();
          _os_log_impl(v28, v29, v30, v31, v27, 2u);
          sub_100002BB8(v27);
        }

        goto LABEL_64;
      }

      sub_10006B8DC(&v68, &v66);
      sub_100003370(&v66, v67);
      v12 = _bridgeAnythingToObjectiveC<A>(_:)();
      v13 = IOPSGetPowerSourceDescription(v4, v12);
      swift_unknownObjectRelease();
      if (v13)
      {
        break;
      }

      sub_100003324(&v66);
    }

    v14 = v13;
    sub_100003324(&v66);
    *&v68 = 1701869908;
    *(&v68 + 1) = 0xE400000000000000;
    v15 = [(__CFDictionary *)v14 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
    swift_unknownObjectRelease();
    if (v15)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v68 = 0u;
      v69 = 0u;
    }

    sub_100005B8C();
    if (!v16)
    {
      sub_10000C790(&v70, &unk_1001BB100, &qword_100171BA0);
      goto LABEL_19;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_19;
    }

    if (v66 == 0x6C616E7265746E49 && *(&v66 + 1) == 0xEF79726574746142)
    {
      break;
    }

    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v18)
    {

      v40 = v65;

      goto LABEL_36;
    }

LABEL_19:
  }

  v40 = v65;

LABEL_36:
  swift_unknownObjectRelease();
  sub_10000C790(v2, &qword_1001B8DD8, &qword_10016F918);
  *&v68 = 0x6772616843207349;
  *(&v68 + 1) = 0xEB00000000676E69;
  v41 = [(__CFDictionary *)v14 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v41)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v68 = 0u;
    v69 = 0u;
  }

  sub_100005B8C();
  if (v42)
  {
    if ((swift_dynamicCast() & 1) != 0 && v66 == 1)
    {
      if (qword_1001B88C0 != -1)
      {
        sub_100004F70(&qword_1001B88C0);
      }

      v43 = type metadata accessor for Logger();
      v44 = sub_10000A4F4(v43, qword_1001B8D28);
      v45 = static os_log_type_t.default.getter();
      if (sub_100006468(v45))
      {
        goto LABEL_56;
      }

      goto LABEL_57;
    }
  }

  else
  {
    sub_10000C790(&v70, &unk_1001BB100, &qword_100171BA0);
  }

  *&v68 = 0x6772616843207349;
  *(&v68 + 1) = 0xEA00000000006465;
  v46 = [(__CFDictionary *)v14 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v46)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v68 = 0u;
    v69 = 0u;
  }

  sub_100005B8C();
  if (v47)
  {
    if ((swift_dynamicCast() & 1) != 0 && v66 == 1)
    {
      if (qword_1001B88C0 != -1)
      {
        sub_100004F70(&qword_1001B88C0);
      }

      v48 = type metadata accessor for Logger();
      v44 = sub_10000A4F4(v48, qword_1001B8D28);
      v49 = static os_log_type_t.default.getter();
      if (sub_100006468(v49))
      {
LABEL_56:
        v50 = sub_100007648();
        *v50 = 0;
        sub_100008348();
        _os_log_impl(v51, v52, v53, v54, v50, 2u);
        sub_100002BB8(v50);
      }

LABEL_57:

      swift_unknownObjectRelease();
      return 1;
    }
  }

  else
  {
    sub_10000C790(&v70, &unk_1001BB100, &qword_100171BA0);
  }

  if (qword_1001B88C0 != -1)
  {
    sub_100004F70(&qword_1001B88C0);
  }

  v56 = type metadata accessor for Logger();
  v57 = sub_10000A4F4(v56, qword_1001B8D28);
  v58 = static os_log_type_t.default.getter();
  if (sub_100006468(v58))
  {
    v59 = sub_100007648();
    *v59 = 0;
    sub_100008348();
    _os_log_impl(v60, v61, v62, v63, v59, 2u);
    sub_100002BB8(v59);
  }

LABEL_64:
  swift_unknownObjectRelease();
  return 0;
}

CFDictionaryRef sub_10006B7B0@<X0>(void *a1@<X0>, const void *a2@<X1>, CFDictionaryRef *a3@<X8>)
{
  sub_100003370(a1, a1[3]);
  v5 = _bridgeAnythingToObjectiveC<A>(_:)();
  v6 = IOPSGetPowerSourceDescription(a2, v5);
  result = swift_unknownObjectRelease();
  if (v6)
  {
    result = v6;
  }

  *a3 = v6;
  return result;
}

id sub_10006B850(id result)
{
  if (result)
  {
    return result;
  }

  __break(1u);
  return result;
}

id sub_10006B864@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = sub_10006B850(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_10006B890()
{
  result = qword_1001B8DF0;
  if (!qword_1001B8DF0)
  {
    type metadata accessor for NSFastEnumerationIterator();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001B8DF0);
  }

  return result;
}

_OWORD *sub_10006B8DC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10006B8EC()
{
  v0 = type metadata accessor for Logger();
  sub_100065A60(v0, qword_1001B8DF8);
  sub_10000641C(v0, qword_1001B8DF8);
  subsystemName.getter();
  return Logger.init(subsystem:category:)();
}

Swift::Int sub_10006B9A8(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

Swift::Int sub_10006BA0C(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_10006BA90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetPolicy();
  sub_100002BDC();
  v6 = v5;
  v8 = __chkstk_darwin(v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v21 - v11;
  v13 = *(v6 + 16);
  v13(&v21 - v11, a2, v4);
  v14 = *(v6 + 88);
  v15 = v14(v12, v4);
  v16 = 0;
  v17 = enum case for AssetPolicy.standard(_:);
  if (v15 != enum case for AssetPolicy.standard(_:))
  {
    if (v15 != enum case for AssetPolicy.unloadCached(_:))
    {
      goto LABEL_9;
    }

    v16 = 1;
  }

  v13(v10, a1, v4);
  v18 = v14(v10, v4);
  if (v18 == v17)
  {
    v19 = 0;
    return v16 < v19;
  }

  if (v18 == enum case for AssetPolicy.unloadCached(_:))
  {
    v19 = 1;
    return v16 < v19;
  }

LABEL_9:
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_10006BC30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  UUID.init()();
  v15 = v8 + OBJC_IVAR____TtCC13modelmanagerd14RequestManager14ExecutionGroup_unsafeManagerOwnedState;
  type metadata accessor for DaemonRequest(0);
  sub_100065020(&qword_1001B8F70, &qword_10016FB88);
  sub_10005E68C(&qword_1001B8F78, type metadata accessor for DaemonRequest, &unk_10017466C);
  v16 = Dictionary.init(dictionaryLiteral:)();
  *v15 = 0;
  *(v15 + 8) = 0;
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  *(v15 + 32) = v16;
  *(v8 + OBJC_IVAR____TtCC13modelmanagerd14RequestManager14ExecutionGroup_assets) = a1;
  v17 = (v8 + OBJC_IVAR____TtCC13modelmanagerd14RequestManager14ExecutionGroup_acquireBlock);
  *v17 = a3;
  v17[1] = a4;
  v18 = (v8 + OBJC_IVAR____TtCC13modelmanagerd14RequestManager14ExecutionGroup_releaseBlock);
  *v18 = a5;
  v18[1] = a6;
  *(v8 + OBJC_IVAR____TtCC13modelmanagerd14RequestManager14ExecutionGroup_runtimeAssets) = a2;
  v19 = OBJC_IVAR____TtCC13modelmanagerd14RequestManager14ExecutionGroup_inferenceProviderDescriptor;
  v20 = type metadata accessor for InferenceProviderDescriptor();
  v21 = *(v20 - 8);
  v34 = a7;
  (*(v21 + 16))(v8 + v19, a7, v20);
  v22 = qword_1001B88C8;

  if (v22 != -1)
  {
    sub_100004F90();
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_10000641C(v23, qword_1001B8DF8);
  sub_10000A868();

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v24, v25))
  {
    sub_100002F10();
    v26 = swift_slowAlloc();
    sub_100011828();
    v35 = swift_slowAlloc();
    *v26 = 136315394;

    v27 = sub_10005F1EC();
    v29 = v28;

    sub_100004A3C(v27, v29, &v35);
    sub_100001F0C();

    *(v26 + 4) = v27;
    *(v26 + 12) = 2080;
    sub_10006BFAC(a1);
    sub_10000A868();

    Array.description.getter();
    v30 = sub_1000079DC();
    sub_100007C14(v30, v31, &v35);
    sub_10000A868();

    *(v26 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v24, v25, "Created new %s with assets %s", v26, 0x16u);
    swift_arrayDestroy();
    sub_100002BD0();

    sub_100002BD0();
  }

  else
  {
  }

  (*(v21 + 8))(v34, v20);
  return v8;
}

uint64_t sub_10006BFAC(uint64_t a1)
{
  v2 = type metadata accessor for ModelCatalogAsset(0);
  v32 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  sub_100002B8C();
  v31 = (v4 - v3);
  v5 = *(a1 + 16);
  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10002045C(0, v5, 0);
  result = sub_10001E724();
  v9 = result;
  v10 = 0;
  v35 = a1 + 56;
  v28 = a1 + 64;
  v29 = v5;
  v11 = 1;
  v30 = a1;
  if ((result & 0x8000000000000000) == 0)
  {
    while (v9 < v11 << *(a1 + 32))
    {
      v12 = v9 >> 6;
      v13 = v11 << v9;
      if ((*(v35 + 8 * (v9 >> 6)) & (v11 << v9)) == 0)
      {
        goto LABEL_24;
      }

      if (*(a1 + 36) != v7)
      {
        goto LABEL_25;
      }

      v34 = v8;
      v33 = v7;
      sub_10005F6CC(*(a1 + 48) + *(v32 + 72) * v9, v31);
      v15 = *v31;
      v14 = v31[1];

      result = sub_10005F730(v31);
      v17 = _swiftEmptyArrayStorage[2];
      v16 = _swiftEmptyArrayStorage[3];
      if (v17 >= v16 >> 1)
      {
        result = sub_10002045C((v16 > 1), v17 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v17 + 1;
      v18 = &_swiftEmptyArrayStorage[2 * v17];
      v18[4] = v15;
      v18[5] = v14;
      if (v34)
      {
        goto LABEL_29;
      }

      a1 = v30;
      v11 = 1;
      v19 = 1 << *(v30 + 32);
      if (v9 >= v19)
      {
        goto LABEL_26;
      }

      v20 = *(v35 + 8 * v12);
      if ((v20 & v13) == 0)
      {
        goto LABEL_27;
      }

      if (*(v30 + 36) != v33)
      {
        goto LABEL_28;
      }

      v21 = v20 & (-2 << (v9 & 0x3F));
      if (v21)
      {
        v19 = __clz(__rbit64(v21)) | v9 & 0x7FFFFFFFFFFFFFC0;
        v22 = v29;
      }

      else
      {
        v23 = v12 << 6;
        v24 = v12 + 1;
        v22 = v29;
        v25 = (v28 + 8 * v12);
        while (v24 < (v19 + 63) >> 6)
        {
          v27 = *v25++;
          v26 = v27;
          v23 += 64;
          ++v24;
          if (v27)
          {
            result = sub_10000319C(v9, v33);
            v19 = __clz(__rbit64(v26)) + v23;
            goto LABEL_19;
          }
        }

        result = sub_10000319C(v9, v33);
      }

LABEL_19:
      if (++v10 == v22)
      {
        return _swiftEmptyArrayStorage;
      }

      v8 = 0;
      v7 = *(v30 + 36);
      v9 = v19;
      if (v19 < 0)
      {
        break;
      }
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
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_10006C26C(uint64_t a1, uint64_t a2)
{
  v43 = type metadata accessor for CustomAssetConfiguration();
  sub_100002BDC();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_100002B8C();
  v42 = v8 - v7;
  v9 = type metadata accessor for ModelCatalogAsset(0);
  v50 = *(v9 - 8);
  __chkstk_darwin(v9 - 8);
  sub_100002B8C();
  v53 = (v11 - v10);
  v12 = *(a1 + 16);
  if (v12)
  {
    sub_10002045C(0, v12, 0);
    v54 = _swiftEmptyArrayStorage;
    result = sub_10001E724();
    v16 = result;
    v17 = 0;
    v18 = a1 + 56;
    v48 = a2;
    v49 = OBJC_IVAR____TtCC13modelmanagerd14RequestManager14ExecutionGroup_runtimeAssets;
    v41 = v5;
    v44 = a1 + 64;
    v45 = v12;
    v19 = 1;
    v46 = a1 + 56;
    v47 = a1;
    if ((result & 0x8000000000000000) == 0)
    {
      while (v16 < v19 << *(a1 + 32))
      {
        v20 = v16 >> 6;
        v21 = v19 << v16;
        if ((*(v18 + 8 * (v16 >> 6)) & (v19 << v16)) == 0)
        {
          goto LABEL_29;
        }

        if (*(a1 + 36) != v14)
        {
          goto LABEL_30;
        }

        v52 = v15;
        v51 = v14;
        sub_10005F6CC(*(a1 + 48) + *(v50 + 72) * v16, v53);
        v22 = *(a2 + v49);
        v24 = *v53;
        v23 = v53[1];
        if (*(v22 + 16) && (v25 = sub_1000236F4(v24, v23), (v26 & 1) != 0))
        {
          (*(v41 + 16))(v42, *(v22 + 56) + *(v41 + 72) * v25, v43);
          v24 = CustomAssetConfiguration.identifier.getter();
          v23 = v27;
          (*(v41 + 8))(v42, v43);
        }

        else
        {
        }

        result = sub_10005F730(v53);
        v28 = v54;
        v30 = v54[2];
        v29 = v54[3];
        if (v30 >= v29 >> 1)
        {
          result = sub_10002045C((v29 > 1), v30 + 1, 1);
          v28 = v54;
        }

        v28[2] = v30 + 1;
        v31 = &v28[2 * v30];
        v31[4] = v24;
        v31[5] = v23;
        if (v52)
        {
          goto LABEL_34;
        }

        a1 = v47;
        a2 = v48;
        v19 = 1;
        v32 = 1 << *(v47 + 32);
        v18 = v46;
        if (v16 >= v32)
        {
          goto LABEL_31;
        }

        v33 = *(v46 + 8 * v20);
        if ((v33 & v21) == 0)
        {
          goto LABEL_32;
        }

        v54 = v28;
        if (*(v47 + 36) != v51)
        {
          goto LABEL_33;
        }

        v34 = v33 & (-2 << (v16 & 0x3F));
        if (v34)
        {
          v32 = __clz(__rbit64(v34)) | v16 & 0x7FFFFFFFFFFFFFC0;
          v35 = v45;
        }

        else
        {
          v36 = v20 << 6;
          v37 = v20 + 1;
          v35 = v45;
          v38 = (v44 + 8 * v20);
          while (v37 < (v32 + 63) >> 6)
          {
            v40 = *v38++;
            v39 = v40;
            v36 += 64;
            ++v37;
            if (v40)
            {
              result = sub_10000319C(v16, v51);
              v32 = __clz(__rbit64(v39)) + v36;
              goto LABEL_23;
            }
          }

          result = sub_10000319C(v16, v51);
        }

LABEL_23:
        if (++v17 == v35)
        {

          return v54;
        }

        v15 = 0;
        v14 = *(v47 + 36);
        v16 = v32;
        if (v32 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t sub_10006C65C(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for InferenceProviderDescriptor();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

__n128 sub_10006C750(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10006C764(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
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

uint64_t sub_10006C7A4(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_10006C844(char a1)
{
  result = 0x6C616974696E69;
  switch(a1)
  {
    case 1:
      v3 = 0x726975716361;
      goto LABEL_6;
    case 2:
      v3 = 0x747563657865;
      goto LABEL_6;
    case 3:
      v3 = 0x7361656C6572;
LABEL_6:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6E69000000000000;
      break;
    case 4:
      result = 1701736292;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10006C8D4()
{
  type metadata accessor for ModelCatalogAsset(0);
  sub_100002BDC();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_100002B8C();
  v6 = v5 - v4;
  v7 = *(v0 + OBJC_IVAR____TtCC13modelmanagerd14RequestManager14ExecutionGroup_assets);
  v8 = 1 << *(v7 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v7 + 56);
  v11 = (v8 + 63) >> 6;

  v13 = 0;
  v14 = 0;
  while (v10)
  {
    v15 = v13;
LABEL_10:
    v16 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    sub_10005F6CC(*(v7 + 48) + *(v2 + 72) * (v16 | (v15 << 6)), v6);
    v17 = AssetCost.onDeviceMemory.getter();
    result = sub_10005F730(v6);
    v18 = __CFADD__(v14, v17);
    v14 += v17;
    if (v18)
    {
      __break(1u);
LABEL_13:

      return v14;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v11)
    {
      goto LABEL_13;
    }

    v10 = *(v7 + 56 + 8 * v15);
    ++v13;
    if (v10)
    {
      v13 = v15;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10006CA4C(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return sub_10000396C(a1, a1);
}

uint64_t sub_10006CA64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_100002BAC();
  v18 = sub_10000A3F4();
  if (*v16 <= 1u)
  {
    v28 = *(v16 + 1);
    *(v17 + 56) = v28;
    if (v28)
    {

      v29 = swift_task_alloc();
      *(v17 + 64) = v29;
      v18 = sub_100065020(&qword_1001B8F60, &unk_100171260);
      *v29 = v17;
      v29[1] = sub_10006CB88;
      v22 = &protocol self-conformance witness table for Error;
      v20 = &type metadata for () + 1;
      v19 = v28;
      v21 = v18;
    }

    else
    {
      __break(1u);
    }

    return Task.value.getter(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12, a13, a14, a15, a16);
  }

  else
  {
    sub_100001F00();

    return v26();
  }
}

uint64_t sub_10006CB88()
{
  sub_100001ED0();
  sub_100001EF4();
  v3 = v2;
  sub_100003960();
  *v4 = v3;
  v5 = *v1;
  sub_100002B9C();
  *v6 = v5;

  if (v0)
  {
    v7 = *(v3 + 40);

    v8 = sub_10006FA60;
    v9 = v7;
  }

  else
  {
    v9 = *(v3 + 40);
    v8 = sub_10006CCB4;
  }

  return _swift_task_switch(v8, v9, 0);
}

uint64_t sub_10006CCB4()
{
  sub_100002BAC();

  sub_100001F00();

  return v0();
}

uint64_t sub_10006CD0C(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return sub_10000396C(a1, a1);
}

uint64_t sub_10006CD24()
{
  sub_100002BAC();
  v2 = sub_10000A3F4();
  if (*v0 == 4)
  {
    sub_100001F00();

    return v3();
  }

  else
  {
    v5 = *(v0 + 24);
    *(v1 + 56) = v5;
    if (v5)
    {

      v2 = swift_task_alloc();
      *(v1 + 64) = v2;
      *v2 = v1;
      v2[1] = sub_10006CE24;
    }

    else
    {
      __break(1u);
    }

    return Task<>.value.getter(v2);
  }
}

uint64_t sub_10006CE24()
{
  sub_100002BAC();
  sub_100001EF4();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;

  sub_10000CC50();

  return _swift_task_switch(v3, v4, v5);
}

void *sub_10006CF3C()
{
  v9 = *(v0 + 32);
  v1 = *(v9 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = sub_1000106D0();
  sub_1001495F4();
  v4 = v3;
  v5 = v8;
  sub_10006F420(&v9, v7);
  sub_100007F18(v5);
  if (v4 != v1)
  {
    __break(1u);
    return _swiftEmptyArrayStorage;
  }

  return v2;
}

void sub_10006CFF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v71 = a3;
  v10 = sub_100065020(&qword_1001BB050, &qword_10016F6E0);
  __chkstk_darwin(v10 - 8);
  v12 = v67 - v11;
  v13 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  sub_100002BDC();
  v76 = v14;
  __chkstk_darwin(v15);
  v73 = v67 - v16;
  v17 = (v6 + OBJC_IVAR____TtCC13modelmanagerd14RequestManager14ExecutionGroup_unsafeManagerOwnedState);
  sub_1000136EC();
  swift_beginAccess();
  v18 = *v17;
  if ((v18 - 1) >= 2)
  {
    if ((v18 - 3) < 2)
    {
      if (qword_1001B88C8 != -1)
      {
        sub_100004F90();
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_10000641C(v19, qword_1001B8DF8);

      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v20, v21))
      {
        sub_1000033D0();
        v22 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        v74 = v71;
        *v22 = 136315650;
        v23 = v73;
        RequestMetadata.id.getter();
        sub_10002E9D0();
        v24 = dispatch thunk of CustomStringConvertible.description.getter();
        v26 = v25;
        (*(v76 + 8))(v23, v13);
        sub_100004A3C(v24, v26, &v74);
        sub_100009540();

        *(v22 + 4) = v24;
        *(v22 + 12) = 2080;
        v27 = sub_10005F1EC();
        sub_100004A3C(v27, v28, &v74);
        sub_100003170();

        *(v22 + 14) = v6;
        *(v22 + 22) = 2080;
        v29 = sub_10006C844(v18);
        sub_100004A3C(v29, v30, &v74);
        sub_100003170();

        *(v22 + 24) = v6;
        _os_log_impl(&_mh_execute_header, v20, v21, "Tried to add request %s to %s in illegal state %s", v22, 0x20u);
        swift_arrayDestroy();
        sub_100002BD0();

        sub_100002BD0();
      }

      v31 = type metadata accessor for ModelManagerError();
      sub_10005E68C(&qword_1001B8F50, &type metadata accessor for ModelManagerError, &protocol conformance descriptor for ModelManagerError);
      swift_allocError();
      (*(*(v31 - 8) + 104))(v32, enum case for ModelManagerError.internalError(_:), v31);
      swift_willThrow();
      return;
    }

    sub_10006D7A4(a1);
  }

  v69 = a4;
  v70 = v5;
  v72 = v6;
  v33 = *(v17 + 1);
  if (v33)
  {
    v74 = 0;
    v75 = 0xE000000000000000;

    _StringGuts.grow(_:)(25);

    v74 = 0x2074736575716552;
    v75 = 0xE800000000000000;
    v67[2] = OBJC_IVAR____TtC13modelmanagerd13DaemonRequest_metadata;
    v34 = v73;
    RequestMetadata.id.getter();
    v67[1] = sub_10002E9D0();
    v35._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v35);

    v36 = *(v76 + 8);
    v68 = v13;
    v76 += 8;
    v67[0] = v36;
    v36(v34, v13);
    v37._countAndFlagsBits = 0x6974756365784520;
    v37._object = 0xEF6B736154206E6FLL;
    String.append(_:)(v37);
    v38 = type metadata accessor for TaskPriority();
    sub_100009BFC(v12, 1, 1, v38);
    sub_100006484();
    v41 = a2;
    v42 = sub_10005E68C(v39, v40, &unk_100174018);
    v43 = swift_allocObject();
    v43[2] = a1;
    v43[3] = v42;
    v44 = v71;
    v45 = v72;
    v43[4] = a1;
    v43[5] = v45;
    v43[6] = v41;
    v43[7] = v33;
    v46 = v69;
    v43[8] = v44;
    v43[9] = v46;
    swift_retain_n();
    v71 = v33;

    sub_100012478();
    sub_100128ED0();
    v48 = v47;
    v49 = *v17;
    v50 = *(v17 + 1);
    v51 = *(v17 + 2);
    v53 = *(v17 + 3);
    v52 = *(v17 + 4);

    swift_isUniquelyReferenced_nonNull_native();
    v74 = v52;
    v69 = v48;
    sub_100117650(v48, v41);
    v54 = v74;
    *v17 = v49;
    *(v17 + 1) = v50;
    *(v17 + 2) = v51;
    *(v17 + 3) = v53;
    *(v17 + 4) = v54;

    if (qword_1001B88C8 != -1)
    {
      sub_100004F90();
      swift_once();
    }

    v55 = type metadata accessor for Logger();
    sub_10000641C(v55, qword_1001B8DF8);
    v56 = v72;

    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v57, v58))
    {
      sub_100002F10();
      v59 = swift_slowAlloc();
      sub_100011828();
      v74 = swift_slowAlloc();
      *v59 = 136315394;
      v60 = v73;
      RequestMetadata.id.getter();
      v61 = v68;
      v62 = dispatch thunk of CustomStringConvertible.description.getter();
      v64 = v63;
      (v67[0])(v60, v61);
      sub_100004A3C(v62, v64, &v74);
      sub_100009540();

      *(v59 + 4) = v62;
      *(v59 + 12) = 2080;
      v65 = sub_10005F1EC();
      sub_100004A3C(v65, v66, &v74);
      sub_100003170();

      *(v59 + 14) = v56;
      _os_log_impl(&_mh_execute_header, v57, v58, "Added request %s to %s", v59, 0x16u);
      sub_100013D14();
      swift_arrayDestroy();
      sub_100002BD0();

      sub_100002BD0();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10006D7A4(uint64_t a1)
{
  v3 = sub_100065020(&qword_1001BB050, &qword_10016F6E0);
  __chkstk_darwin(v3 - 8);
  v4 = v1 + OBJC_IVAR____TtCC13modelmanagerd14RequestManager14ExecutionGroup_unsafeManagerOwnedState;
  sub_1000136EC();
  swift_beginAccess();
  *v4 = 1;
  sub_10005F1EC();
  v5._countAndFlagsBits = 0x6572697571634120;
  v5._object = 0xED00006B73615420;
  String.append(_:)(v5);
  type metadata accessor for TaskPriority();
  sub_10000884C();
  sub_100006484();
  v8 = sub_10005E68C(v6, v7, &unk_100174018);
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = v8;
  v9[4] = a1;
  v9[5] = v1;
  swift_retain_n();

  sub_100012478();
  sub_100128ED0();
  v11 = v10;
  sub_10005F1EC();
  v12._countAndFlagsBits = 0x6574756365784520;
  v12._object = 0xED00006B73615420;
  String.append(_:)(v12);
  sub_10000884C();
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = v8;
  v13[4] = a1;
  v13[5] = v11;
  v13[6] = v1;
  swift_retain_n();

  sub_100012478();
  sub_100128ED0();
  v15 = v14;
  sub_10005F1EC();
  v16._countAndFlagsBits = 0x657361656C655220;
  v16._object = 0xED00006B73615420;
  String.append(_:)(v16);
  sub_10000884C();
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = v8;
  v17[4] = a1;
  v17[5] = v15;
  v17[6] = v1;
  swift_retain_n();

  sub_100012478();
  sub_1000652FC();
  *(v4 + 8) = v11;
  *(v4 + 16) = v15;
  *(v4 + 24) = v18;
}

uint64_t sub_10006DAAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v16[5] = a8;
  v16[6] = v26;
  v16[3] = a5;
  v16[4] = a6;
  v16[2] = a4;
  v18 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  v16[7] = v18;
  v16[8] = *(v18 - 8);
  v16[9] = swift_task_alloc();
  v19 = swift_task_alloc();
  v16[10] = v19;
  v20 = sub_100065020(&qword_1001B8F60, &unk_100171260);
  *v19 = v16;
  v19[1] = sub_10006DBF0;

  return Task.value.getter(v20, a7, &type metadata for () + 1, v20, &protocol self-conformance witness table for Error, v21, v22, v23, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_10006DBF0()
{
  sub_100002BAC();
  sub_100001EF4();
  sub_100003960();
  *v3 = v2;
  v4 = *v1;
  sub_100002B9C();
  *v5 = v4;
  *(v6 + 88) = v0;

  sub_10000CC50();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10006DD00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  sub_10000385C();
  a21 = v23;
  a22 = v24;
  sub_100003284();
  a20 = v22;
  if (qword_1001B88C8 != -1)
  {
    sub_100004F90();
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_10000641C(v25, qword_1001B8DF8);

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v29 = v22[8];
    v28 = v22[9];
    v30 = v22[7];
    sub_100002F10();
    v31 = swift_slowAlloc();
    sub_100011828();
    a11 = swift_slowAlloc();
    *v31 = 136315394;
    v32 = sub_10005F1EC();
    sub_1000239D4(v32, v33, v34, v35, v36, v37);

    sub_100009D60();
    RequestMetadata.id.getter();
    sub_10002E9D0();
    v38 = dispatch thunk of CustomStringConvertible.description.getter();
    v40 = v39;
    (*(v29 + 8))(v28, v30);
    v41 = sub_100004A3C(v38, v40, &a11);

    *(v31 + 14) = v41;
    _os_log_impl(&_mh_execute_header, v26, v27, "%s executing request %s", v31, 0x16u);
    swift_arrayDestroy();
    sub_100002BD0();

    sub_100002BD0();
  }

  v52 = v22[5] + *v22[5];
  v42 = swift_task_alloc();
  v22[12] = v42;
  *v42 = v22;
  v42[1] = sub_10005CCAC;
  sub_100003540();

  return v43(v43, v44, v45, v46, v47, v48, v49, v50, a9, v52, a11, a12, a13, a14);
}

uint64_t sub_10006DF88()
{
  sub_100002BAC();
  sub_10006E0CC(*(v0 + 24), *(v0 + 16), *(v0 + 32));

  sub_100001F00();

  return v1();
}

uint64_t sub_10006DFF4()
{
  sub_100002BAC();
  sub_10006E0CC(*(v0 + 24), *(v0 + 16), *(v0 + 32));

  sub_100001F00();

  return v1();
}

uint64_t sub_10006E060()
{
  sub_100002BAC();
  sub_10006E0CC(*(v0 + 24), *(v0 + 16), *(v0 + 32));

  sub_100001F00();

  return v1();
}

uint64_t sub_10006E0CC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = (a1 + OBJC_IVAR____TtCC13modelmanagerd14RequestManager14ExecutionGroup_unsafeManagerOwnedState);
  swift_beginAccess();
  v5 = *v4;
  v6 = *(v4 + 1);
  v7 = *(v4 + 2);
  v9 = *(v4 + 3);
  v8 = *(v4 + 4);

  sub_10005E2C8(a3);
  if (v10)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v8 + 24);
    sub_100065020(&qword_1001B8F80, &qword_10016FB90);
    _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v12);

    sub_100065020(&qword_1001B8F70, &qword_10016FB88);
    sub_10005E68C(&qword_1001B8F78, type metadata accessor for DaemonRequest, &unk_10017466C);
    _NativeDictionary._delete(at:)();
  }

  *v4 = v5;
  *(v4 + 1) = v6;
  *(v4 + 2) = v7;
  *(v4 + 3) = v9;
  *(v4 + 4) = v8;
}

uint64_t sub_10006E288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return _swift_task_switch(sub_10006E2A8, a4, 0);
}

uint64_t sub_10006E2A8()
{
  sub_1000033DC();
  v20 = v0;
  if (qword_1001B88C8 != -1)
  {
    sub_100004F90();
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[7] = sub_10000641C(v1, qword_1001B8DF8);

  v2 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_1000059A8();
  if (sub_100019C50())
  {
    v3 = v0[6];
    sub_100002F10();
    v4 = swift_slowAlloc();
    sub_100011828();
    v19[0] = swift_slowAlloc();
    *v4 = 136315394;
    v5 = sub_10005F1EC();
    v7 = sub_100004A3C(v5, v6, v19);

    *(v4 + 4) = v7;
    *(v4 + 12) = 2080;
    v8 = *(v3 + OBJC_IVAR____TtCC13modelmanagerd14RequestManager14ExecutionGroup_assets);

    v9 = sub_10006C26C(v8, v3);
    Array.description.getter();
    v10 = sub_1000079DC();
    sub_100007C14(v10, v11, v19);
    sub_10000A868();

    *(v4 + 14) = v9;
    sub_1000057CC(&_mh_execute_header, v12, v13, "%s acquiring assets %s");
    sub_10000F0A4();
    sub_100002BD0();

    sub_100002BD0();
  }

  sub_100008354();
  v18 = v14;
  v15 = swift_task_alloc();
  v0[8] = v15;
  *v15 = v0;
  v15[1] = sub_10006E4C8;
  v16 = v0[6];

  return v18(v16);
}

uint64_t sub_10006E4C8()
{
  sub_100001ED0();
  v2 = *v1;
  sub_100003960();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 72) = v0;

  v5 = *(v2 + 40);
  if (v0)
  {
    v6 = sub_10006E76C;
  }

  else
  {
    v6 = sub_10006E5EC;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10006E5EC()
{
  sub_1000033DC();
  v16 = v0;

  v1 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_1000059A8();
  if (sub_100019C50())
  {
    v2 = *(v0 + 48);
    sub_100002F10();
    v3 = swift_slowAlloc();
    sub_100011828();
    v15[0] = swift_slowAlloc();
    *v3 = 136315394;
    v4 = sub_10005F1EC();
    sub_100004A3C(v4, v5, v15);

    sub_100009D60();
    v6 = sub_10006BFAC(*(v2 + OBJC_IVAR____TtCC13modelmanagerd14RequestManager14ExecutionGroup_assets));
    Array.description.getter();
    v7 = sub_1000079DC();
    sub_100007C14(v7, v8, v15);
    sub_10000A868();

    *(v3 + 14) = v6;
    sub_1000057CC(&_mh_execute_header, v9, v10, "%s finished acquiring assets %s");
    sub_10000F0A4();
    sub_100002BD0();

    sub_100002BD0();
  }

  v11 = *(v0 + 48);
  v12 = OBJC_IVAR____TtCC13modelmanagerd14RequestManager14ExecutionGroup_unsafeManagerOwnedState;
  sub_1000136EC();
  swift_beginAccess();
  *(v11 + v12) = 2;
  sub_100001F00();

  return v13();
}

uint64_t sub_10006E76C()
{
  sub_1000033DC();
  v15 = v0;

  v1 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_1000059A8();
  if (sub_100019C50())
  {
    v2 = *(v0 + 48);
    sub_100002F10();
    v3 = swift_slowAlloc();
    sub_100011828();
    v14[0] = swift_slowAlloc();
    *v3 = 136315394;
    v4 = sub_10005F1EC();
    v6 = sub_100004A3C(v4, v5, v14);

    *(v3 + 4) = v6;
    *(v3 + 12) = 2080;
    v7 = sub_10006BFAC(*(v2 + OBJC_IVAR____TtCC13modelmanagerd14RequestManager14ExecutionGroup_assets));
    Array.description.getter();
    v8 = sub_1000079DC();
    sub_100007C14(v8, v9, v14);
    sub_10000A868();

    *(v3 + 14) = v7;
    sub_1000057CC(&_mh_execute_header, v10, v11, "%s failed to acquire assets %s");
    sub_10000F0A4();
    sub_100002BD0();

    sub_100002BD0();
  }

  swift_willThrow();
  sub_100001F00();

  return v12();
}

uint64_t sub_10006E8D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v16[5] = a4;
  v16[6] = a6;
  v18 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  v16[7] = v18;
  v16[8] = *(v18 - 8);
  v16[9] = swift_task_alloc();
  v19 = swift_task_alloc();
  v16[10] = v19;
  v20 = sub_100065020(&qword_1001B8F60, &unk_100171260);
  v16[11] = v20;
  *v19 = v16;
  v19[1] = sub_10006EA08;

  return Task.value.getter(v20, a5, &type metadata for () + 1, v20, &protocol self-conformance witness table for Error, v21, v22, v23, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_10006EA08()
{
  sub_100002BAC();
  sub_100001EF4();
  sub_100003960();
  *v3 = v2;
  v4 = *v1;
  sub_100002B9C();
  *v5 = v4;
  *(v6 + 96) = v0;

  sub_10000CC50();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10006EEC8()
{
  sub_100002BAC();

  sub_100001F00();

  return v0();
}

uint64_t sub_10006EF24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v16[2] = a4;
  v16[3] = a6;
  v18 = swift_task_alloc();
  v16[4] = v18;
  v19 = sub_100065020(&qword_1001B8F60, &unk_100171260);
  *v18 = v16;
  v18[1] = sub_10005F390;

  return Task.value.getter(v19, a5, &type metadata for () + 1, v19, &protocol self-conformance witness table for Error, v20, v21, v22, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_10006EFF0()
{
  sub_1000033DC();
  v14 = v0;
  if (qword_1001B88C8 != -1)
  {
    sub_100004F90();
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000641C(v1, qword_1001B8DF8);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    sub_100002F10();
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    sub_1000033D0();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v4 = 136315394;
    v7 = sub_10005F1EC();
    v9 = sub_100004A3C(v7, v8, &v13);

    *(v4 + 4) = v9;
    *(v4 + 12) = 2112;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v10;
    *v5 = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "Suppressing acquire task failure for %s with error %@", v4, 0x16u);
    sub_10006F830(v5);
    sub_100002BD0();

    sub_100003324(v6);
    sub_100002BD0();

    sub_100002BD0();
  }

  else
  {
  }

  sub_100060FE4();
  sub_100001F00();

  return v11();
}

uint64_t sub_10006F20C(uint64_t a1)
{
  type metadata accessor for UUID();
  sub_10005F2BC(&qword_1001B8C00, &protocol conformance descriptor for UUID);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_10006F270()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  v0 = sub_10005F2BC(&qword_1001B8C00, &protocol conformance descriptor for UUID);
  sub_10000317C(v0, v1);
  return Hasher._finalize()();
}

Swift::Int sub_10006F324(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  v1 = sub_10005F2BC(&qword_1001B8C00, &protocol conformance descriptor for UUID);
  sub_10000317C(v1, v2);
  return Hasher._finalize()();
}

uint64_t sub_10006F420(uint64_t a1, uint64_t a2)
{
  v4 = sub_100065020(&qword_1001B8F40, &unk_10016FB20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006F490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_1000033DC();
  sub_10000BF38();
  v18 = v16[6];
  v19 = v16[7];
  v20 = v16[8];
  v21 = swift_task_alloc();
  v22 = sub_100004B00(v21);
  *v22 = v23;
  v22[1] = sub_10006F558;
  v24 = sub_100008580();

  return sub_10006DAAC(v24, v25, v26, v27, v17, v18, v19, v20, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_10006F558()
{
  sub_100002BAC();
  sub_100001EF4();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;

  sub_100001F00();

  return v3();
}

uint64_t sub_10006F638()
{
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  v3 = sub_100004B00(v2);
  *v3 = v4;
  v3[1] = sub_10006FA64;
  v5 = sub_100008580();

  return sub_10006E288(v5, v6, v7, v8, v1);
}

uint64_t sub_10006F6E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_10000BF38();
  v18 = *(v16 + 48);
  v19 = swift_task_alloc();
  v20 = sub_100004B00(v19);
  *v20 = v21;
  v20[1] = sub_10006FA64;
  v22 = sub_100008580();

  return sub_10006E8D0(v22, v23, v24, v25, v17, v18, v26, v27, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_10006F788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_10000BF38();
  v18 = *(v16 + 48);
  v19 = swift_task_alloc();
  v20 = sub_100004B00(v19);
  *v20 = v21;
  v20[1] = sub_10006F558;
  v22 = sub_100008580();

  return sub_10006EF24(v22, v23, v24, v25, v17, v18, v26, v27, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_10006F830(uint64_t a1)
{
  v2 = sub_100065020(&qword_1001B8F68, &qword_10016FB80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s14ExecutionGroupC17ManagerOwnedStateV5StateOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s14ExecutionGroupC17ManagerOwnedStateV5StateOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10006FA08()
{
  result = qword_1001B8F88;
  if (!qword_1001B8F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001B8F88);
  }

  return result;
}

uint64_t sub_10006FA6C()
{
  v0 = type metadata accessor for Logger();
  sub_100065A60(v0, qword_1001B8F90);
  sub_10000641C(v0, qword_1001B8F90);
  subsystemName.getter();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10006FAD8()
{
  type metadata accessor for EventReporter();
  *(v0 + 16) = EventReporter.__allocating_init()();
  return v0;
}

void sub_10006FBD8()
{
  sub_1000055B0();
  v78 = v1;
  v79 = v0;
  v76 = v3;
  v77 = v2;
  v5 = v4;
  v82 = v6;
  v83 = v7;
  v81 = v8;
  v66 = type metadata accessor for AppleIntelligenceReportingError();
  sub_100002BDC();
  v65 = v9;
  __chkstk_darwin(v10);
  sub_100009C24();
  sub_100002BF0();
  __chkstk_darwin(v11);
  sub_1000079F8();
  sub_100002BF0();
  __chkstk_darwin(v12);
  sub_1000079F8();
  v67 = v13;
  sub_100002F1C();
  __chkstk_darwin(v14);
  v62 = v60 - v15;
  v16 = sub_100065020(&qword_1001B9048, &qword_10016FCB8);
  sub_100002F04(v16);
  sub_100004B1C();
  __chkstk_darwin(v17);
  v75 = v60 - v18;
  v19 = sub_100065020(&qword_1001B9050, &qword_10016FCC0);
  sub_100002F04(v19);
  sub_100004B1C();
  __chkstk_darwin(v20);
  v21 = sub_100065020(&qword_1001B9058, &qword_10016FCC8);
  sub_100002F04(v21);
  sub_100004B1C();
  __chkstk_darwin(v22);
  type metadata accessor for AppleIntelligenceEvent();
  sub_100002BDC();
  v84 = v24;
  v85 = v23;
  __chkstk_darwin(v23);
  sub_100002B8C();
  v27 = v26 - v25;
  v28 = subsystemName.getter();
  v73 = v29;
  v74 = v28;
  v30 = sub_100065020(&qword_1001B9060, &unk_10016FCD0);
  v31 = sub_100002F04(v30);
  v33 = *(v32 + 64);
  __chkstk_darwin(v31);
  v34 = type metadata accessor for UUID();
  sub_100003978();
  sub_100009BFC(v35, v36, v37, v34);
  v60[1] = v5;
  v38 = *&aExecuterqueuer[8 * v5];
  v71 = *&aExecuterqueuer[8 * v5 + 24];
  v72 = v38;
  type metadata accessor for UUIDIdentifier();
  sub_100003978();
  v80 = v39;
  v43 = sub_100009BFC(v40, v41, v42, v39);
  v70 = v60;
  __chkstk_darwin(v43);
  v44 = sub_10002E90C(v83, v60 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0), &qword_1001B9060, &unk_10016FCD0);
  v69 = v60;
  v63 = v33;
  __chkstk_darwin(v44);
  v64 = *(v34 - 8);
  v61 = *(v64 + 16);
  v61(v60 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0), v82, v34);
  sub_1000039A8();
  v68 = v34;
  sub_100009BFC(v45, v46, v47, v34);

  Dictionary.init(dictionaryLiteral:)();
  AppleIntelligenceUseCase.init(useCaseIdentifier:parameters:)();
  type metadata accessor for AppleIntelligenceUseCase();
  sub_1000039A8();
  sub_100009BFC(v48, v49, v50, v51);
  type metadata accessor for AppleIntelligenceReportingMetadata();
  sub_100003978();
  sub_100009BFC(v52, v53, v54, v55);

  v56 = v84;
  sub_100005600();
  v57 = v85;
  AppleIntelligenceInferenceEvent.init(subsystem:sessionIdentifier:stepIdentifier:invocationRequestIdentifier:clientRequestIdentifier:modelManagerRequestIdentifier:errors:useCaseIdentifier:additionalUseCaseIdentifiers:requestorBundleIdentifier:onBehalfOfBundleIdentifier:inferenceProviderIdentifier:assetBundleIdentifier:assets:metadata:)();
  (*(v56 + 104))(v27, enum case for AppleIntelligenceEvent.inference(_:), v57);
  if (*(v79 + 16))
  {

    v58 = v81;
    _s26AppleIntelligenceReporting13EventReporterC04emitab5StartD09eventInfoAA14UUIDIdentifierVAA0abD0O_tAA0abC5ErrorOYKF();
    (*(v56 + 8))(v27, v57);

    v59 = 0;
  }

  else
  {
    (*(v56 + 8))(v27, v57);
    v59 = 1;
    v58 = v81;
  }

  sub_100009BFC(v58, v59, 1, v80);
  sub_100002EEC();
}

void sub_1000706AC()
{
  sub_1000055B0();
  v1 = v0;
  v2 = type metadata accessor for EKExtensionIdentity(0);
  sub_100002BDC();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_100002B8C();
  v8 = v7 - v6;
  v9 = *(v1 + 16);
  if (v9)
  {
    v19 = _swiftEmptyArrayStorage;
    sub_100071020(0, v9, 0);
    v10 = _swiftEmptyArrayStorage;
    v11 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);
    do
    {
      sub_1000714C8(v11, v8);
      v19 = v10;
      v14 = v10[2];
      v13 = v10[3];
      if (v14 >= v13 >> 1)
      {
        sub_100071020(v13 > 1, v14 + 1, 1);
        v10 = v19;
      }

      v17 = v2;
      v18 = &off_1001B11E0;
      v15 = sub_10000366C(&v16);
      sub_1000714C8(v8, v15);
      v10[2] = v14 + 1;
      sub_100004A04(&v16, &v10[5 * v14 + 4]);
      sub_10007152C(v8);
      v11 += v12;
      --v9;
    }

    while (v9);
  }

  sub_100002EEC();
}

char *sub_1000708B4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return sub_100004FA4(a3, result);
  }

  return result;
}

char *sub_1000708FC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[4 * a2] <= a3)
  {
    return sub_100004FA4(a3, result);
  }

  return result;
}

char *sub_10007091C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return sub_100004FA4(a3, result);
  }

  return result;
}

void sub_100070988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  sub_1000189A4();
  if (v10 && (sub_100065020(a4, a5), sub_100002C00(), v6 + *(v11 + 72) * v5 > v7))
  {
    if (v7 != v6)
    {
      sub_100003AF0();

      swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    sub_100065020(a4, a5);
    sub_100003AF0();

    swift_arrayInitWithTakeFrontToBack();
  }
}

uint64_t sub_100070B10(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100070F08()
{
  sub_1000199F0();
  sub_10001B4AC();
  *v0 = v1;
}

void sub_1000710E8()
{
  sub_1000055B0();
  sub_10000BF48();
  if (v8)
  {
    sub_100012660();
    if (v10 != v11)
    {
      sub_100005FE0();
      if (v10)
      {
LABEL_24:
        __break(1u);
        return;
      }

      sub_10000A210();
    }
  }

  else
  {
    v9 = v5;
  }

  v12 = *(v0 + 16);
  if (v9 <= v12)
  {
    v13 = *(v0 + 16);
  }

  else
  {
    v13 = v9;
  }

  if (!v13)
  {
    v15 = _swiftEmptyArrayStorage;
    goto LABEL_18;
  }

  sub_100065020(v6, v7);
  v14 = *(*(sub_100065020(v2, v1) - 8) + 72);
  v15 = sub_1000129D8();
  v16 = j__malloc_size(v15);
  if (!v14)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v16 - v4 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_23;
  }

  sub_10000886C(v16 - v4);
LABEL_18:
  v18 = *(sub_100065020(v2, v1) - 8);
  if (v3)
  {
    v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    sub_100070988(v0 + v19, v12, v15 + v19, v2, v1);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_10000781C();
  }

  sub_100002EEC();
}

void sub_1000712CC(char a1, uint64_t a2, char a3, char *a4)
{
  if (a3)
  {
    sub_100012660();
    if (v7 != v8)
    {
      sub_100005FE0();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_10000A210();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = *(a4 + 2);
  if (v6 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    sub_100065020(&qword_1001B90C0, &qword_10016FD38);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 4);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || &v14[4 * v9] <= v13)
    {
      memmove(v13, v14, 4 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v9);
  }
}

void sub_1000713B8()
{
  sub_10000BF48();
  if (v7)
  {
    sub_100012660();
    if (v9 != v10)
    {
      sub_100005FE0();
      if (v9)
      {
        __break(1u);
        return;
      }

      sub_10000A210();
    }
  }

  else
  {
    v8 = v4;
  }

  v11 = v0[2];
  if (v8 <= v11)
  {
    v12 = v0[2];
  }

  else
  {
    v12 = v8;
  }

  if (v12)
  {
    sub_100065020(v5, v6);
    v13 = swift_allocObject();
    v14 = j__malloc_size(v13);
    sub_10000886C(v14 - 32);
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
  }

  if (v3)
  {
    if (v13 != v0 || &v0[5 * v11 + 4] <= v13 + 4)
    {
      memmove(v13 + 4, v0 + 4, 40 * v11);
    }

    v0[2] = 0;
  }

  else
  {
    sub_100065020(v2, v1);
    swift_arrayInitWithCopy();
  }
}

uint64_t sub_1000714C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EKExtensionIdentity(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10007152C(uint64_t a1)
{
  v2 = type metadata accessor for EKExtensionIdentity(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for StepIdentifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for StepIdentifier(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1000716F0(char a1)
{
  if (!a1)
  {
    return 0x5265747563657865;
  }

  if (a1 == 1)
  {
    return 0x7165526575657571;
  }

  return 0x536D726177657270;
}

unint64_t sub_100071768(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1001AFE48, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

Swift::Int sub_1000717D4()
{
  v0 = Hasher.init(_seed:)();
  sub_100004FB4(v0);
  return Hasher._finalize()();
}

Swift::Int sub_100071810(Swift::UInt64 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

uint64_t sub_1000718AC(uint64_t a1, unsigned __int8 a2)
{
  String.hash(into:)();
}

uint64_t sub_100071958(uint64_t a1, char a2)
{
  String.hash(into:)();
}

Swift::Int sub_1000719D0(uint64_t a1, char a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_100071A54(uint64_t a1, char a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_100071B14(uint64_t a1)
{
  v1 = Hasher.init(_seed:)();
  sub_100004FB4(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100071B4C(uint64_t a1, Swift::UInt64 a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  return Hasher._finalize()();
}

unint64_t sub_100071B90@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100071768(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100071BC0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000716F0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_100071BF0()
{
  result = qword_1001B9160;
  if (!qword_1001B9160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001B9160);
  }

  return result;
}

uint64_t sub_100071C44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v24 = a5;
  v25 = a6;
  v23 = a4;
  v12 = sub_100065020(&qword_1001B9058, &qword_10016FCC8);
  __chkstk_darwin(v12 - 8);
  v14 = &v22 - v13;
  v15 = type metadata accessor for UUIDIdentifier();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUIDIdentifier.init()();
  v19 = *(v7 + 16);
  if (v19)
  {
    v20 = *(v7 + 24);
    (*(v16 + 16))(v14, v18, v15);
    sub_100009BFC(v14, 0, 1, v15);

    v19(a1, a2, a3, v14, v23, v24, v25);
    sub_100016484(v19, v20);
    sub_100072080(v14);
  }

  (*(v16 + 32))(a7, v18, v15);
  return sub_100009BFC(a7, 0, 1, v15);
}

uint64_t sub_100071E18(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(v8 + 32);
  if (v9)
  {
    v17 = result;
    v18 = *(v8 + 40);

    v9(v17, a2, a3, a4, a5, a6, a7, a8);

    return sub_100016484(v9, v18);
  }

  return result;
}

uint64_t sub_100071EE4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(v5 + 48);
  if (v6)
  {
    v11 = result;
    v12 = *(v5 + 56);

    v6(v11, a2, a3, a4, a5);

    return sub_100016484(v6, v12);
  }

  return result;
}

uint64_t *sub_100071F8C()
{
  sub_100016484(v0[2], v0[3]);
  sub_100016484(v0[4], v0[5]);
  sub_100016484(v0[6], v0[7]);
  return v0;
}

uint64_t sub_100071FBC()
{
  sub_100071F8C();

  return _swift_deallocClassInstance(v0, 64, 7);
}

uint64_t sub_100072080(uint64_t a1)
{
  v2 = sub_100065020(&qword_1001B9058, &qword_10016FCC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000720F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetPolicy();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v19 - v9;
  v11 = *(v5 + 16);
  v11(&v19 - v9, a2, v4);
  v12 = *(v5 + 88);
  v13 = v12(v10, v4);
  v14 = 0;
  v15 = enum case for AssetPolicy.standard(_:);
  if (v13 != enum case for AssetPolicy.standard(_:))
  {
    if (v13 != enum case for AssetPolicy.unloadCached(_:))
    {
      goto LABEL_9;
    }

    v14 = 1;
  }

  v11(v8, a1, v4);
  v16 = v12(v8, v4);
  if (v16 == v15)
  {
    v17 = 0;
    return v14 >= v17;
  }

  if (v16 == enum case for AssetPolicy.unloadCached(_:))
  {
    v17 = 1;
    return v14 >= v17;
  }

LABEL_9:
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_1000722B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetPolicy();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v19 - v9;
  v11 = *(v5 + 16);
  v11(&v19 - v9, a1, v4);
  v12 = *(v5 + 88);
  v13 = v12(v10, v4);
  v14 = 0;
  v15 = enum case for AssetPolicy.standard(_:);
  if (v13 != enum case for AssetPolicy.standard(_:))
  {
    if (v13 != enum case for AssetPolicy.unloadCached(_:))
    {
      goto LABEL_9;
    }

    v14 = 1;
  }

  v11(v8, a2, v4);
  v16 = v12(v8, v4);
  if (v16 == v15)
  {
    v17 = 0;
    return v14 >= v17;
  }

  if (v16 == enum case for AssetPolicy.unloadCached(_:))
  {
    v17 = 1;
    return v14 >= v17;
  }

LABEL_9:
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

void *sub_100072460(uint64_t a1)
{
  v2 = v1;
  v41 = type metadata accessor for Assertion.DaemonRep();
  sub_100002BDC();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_100002B8C();
  v40 = v8 - v7;
  v9 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v9)
  {
    sub_10002045C(0, v9, 0);
    sub_100025128();
    result = sub_100009540();
    v13 = 0;
    v14 = a1 + 56;
    v35 = a1 + 64;
    v36 = v9;
    v37 = v5;
    v38 = a1;
    v39 = a1 + 56;
    if ((v1 & 0x8000000000000000) == 0)
    {
      while (v2 < 1 << *(a1 + 32))
      {
        v15 = v2 >> 6;
        if ((*(v14 + 8 * (v2 >> 6)) & (1 << v2)) == 0)
        {
          goto LABEL_24;
        }

        if (*(a1 + 36) != v11)
        {
          goto LABEL_25;
        }

        v44 = v12;
        v42 = v13;
        v43 = v11;
        v16 = result;
        (*(v5 + 16))(v40, *(a1 + 48) + *(v5 + 72) * v2, v41);
        v17 = Assertion.DaemonRep.policy.getter();
        v19 = v18;
        (*(v5 + 8))(v40, v41);
        result = v16;
        v21 = v16[2];
        v20 = v16[3];
        if (v21 >= v20 >> 1)
        {
          sub_10002045C((v20 > 1), v21 + 1, 1);
          result = v16;
        }

        result[2] = v21 + 1;
        v22 = &result[2 * v21];
        v22[4] = v17;
        v22[5] = v19;
        v14 = v39;
        if (v44)
        {
          goto LABEL_29;
        }

        v5 = v37;
        a1 = v38;
        v23 = 1 << *(v38 + 32);
        if (v2 >= v23)
        {
          goto LABEL_26;
        }

        v24 = *(v39 + 8 * v15);
        if ((v24 & (1 << v2)) == 0)
        {
          goto LABEL_27;
        }

        if (*(v38 + 36) != v43)
        {
          goto LABEL_28;
        }

        v25 = v24 & (-2 << (v2 & 0x3F));
        if (v25)
        {
          v23 = __clz(__rbit64(v25)) | v2 & 0x7FFFFFFFFFFFFFC0;
          v26 = v36;
        }

        else
        {
          v27 = v15 << 6;
          v28 = v15 + 1;
          v26 = v36;
          v29 = (v35 + 8 * v15);
          while (v28 < (v23 + 63) >> 6)
          {
            v31 = *v29++;
            v30 = v31;
            v27 += 64;
            ++v28;
            if (v31)
            {
              v32 = sub_100003170();
              sub_100016E94(v32, v33, 0);
              result = v23;
              v23 = __clz(__rbit64(v30)) + v27;
              goto LABEL_19;
            }
          }

          v34 = result;
          sub_100016E94(v2, v43, 0);
          result = v34;
        }

LABEL_19:
        v13 = v42 + 1;
        if (v42 + 1 == v26)
        {
          return result;
        }

        v12 = 0;
        v11 = *(v38 + 36);
        v2 = v23;
        if (v23 < 0)
        {
          break;
        }
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
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  return result;
}

uint64_t sub_100072770(uint64_t a1)
{
  v49 = type metadata accessor for Assertion.DaemonRep();
  v3 = *(v49 - 8);
  __chkstk_darwin(v49);
  v48 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_100065020(&qword_1001B8B78, &qword_10016F740);
  v5 = *(v47 - 8);
  __chkstk_darwin(v47);
  v7 = &v37 - v6;
  v8 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v8)
  {
    v44 = v7;
    v37 = v1;
    v53 = _swiftEmptyArrayStorage;
    v10 = v8;
    sub_100070B58(0, v8, 0);
    v11 = v53;
    result = sub_100025128();
    v14 = v3;
    v15 = result;
    v16 = 0;
    v52 = a1 + 56;
    v45 = v5;
    v46 = v14;
    v42 = v14 + 8;
    v43 = v14 + 16;
    v40 = a1;
    v41 = v5 + 32;
    v38 = a1 + 64;
    v39 = v10;
    if ((result & 0x8000000000000000) == 0)
    {
      while (v15 < 1 << *(a1 + 32))
      {
        v17 = v15 >> 6;
        if ((*(v52 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
        {
          goto LABEL_25;
        }

        if (*(a1 + 36) != v12)
        {
          goto LABEL_26;
        }

        v51 = v13;
        v50 = v12;
        v18 = v46;
        v20 = v48;
        v19 = v49;
        (*(v46 + 16))(v48, *(a1 + 48) + *(v46 + 72) * v15, v49);
        v21 = v44;
        Assertion.DaemonRep.id.getter();
        v22 = v20;
        v23 = v11;
        (*(v18 + 8))(v22, v19);
        v53 = v11;
        v25 = v11[2];
        v24 = v11[3];
        if (v25 >= v24 >> 1)
        {
          sub_100070B58(v24 > 1, v25 + 1, 1);
          v23 = v53;
        }

        v23[2] = v25 + 1;
        v11 = v23;
        result = (*(v45 + 32))(v23 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v25, v21, v47);
        if (v51)
        {
          goto LABEL_30;
        }

        a1 = v40;
        v26 = 1 << *(v40 + 32);
        if (v15 >= v26)
        {
          goto LABEL_27;
        }

        v27 = *(v52 + 8 * v17);
        if ((v27 & (1 << v15)) == 0)
        {
          goto LABEL_28;
        }

        if (*(v40 + 36) != v50)
        {
          goto LABEL_29;
        }

        v28 = v27 & (-2 << (v15 & 0x3F));
        if (v28)
        {
          v26 = __clz(__rbit64(v28)) | v15 & 0x7FFFFFFFFFFFFFC0;
          v29 = v39;
        }

        else
        {
          v30 = v17 << 6;
          v31 = v17 + 1;
          v32 = (v38 + 8 * v17);
          while (v31 < (v26 + 63) >> 6)
          {
            v34 = *v32++;
            v33 = v34;
            v30 += 64;
            ++v31;
            if (v34)
            {
              v35 = v39;
              result = sub_100016E94(v15, v50, 0);
              v29 = v35;
              v26 = __clz(__rbit64(v33)) + v30;
              goto LABEL_19;
            }
          }

          v36 = v39;
          result = sub_100016E94(v15, v50, 0);
          v29 = v36;
        }

LABEL_19:
        if (++v16 == v29)
        {
          return v11;
        }

        v13 = 0;
        v12 = *(a1 + 36);
        v15 = v26;
        if (v26 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }

  return result;
}

uint64_t sub_100072B78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  if (*(a3 + 16) && (v8 = sub_1000236F4(a1, a2), (a2 & 1) != 0))
  {
    v9 = v8;
    v10 = *(a3 + 56);
    v11 = a4(0);
    sub_100002C00();
    (*(v12 + 16))(a5, v10 + *(v12 + 72) * v9, v11);
    v13 = a5;
    v14 = 0;
    v15 = 1;
    v16 = v11;
  }

  else
  {
    (a4)(0, a2);
    v13 = sub_100007A04();
  }

  return sub_100009BFC(v13, v14, v15, v16);
}

uint64_t sub_100072C40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    sub_1000236F4(a1, a2);
    if (v3)
    {
    }
  }

  return sub_1000062B0();
}

double sub_100072C94@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) && (v3 = sub_1001173E4(), (v4 & 1) != 0))
  {
    sub_1000190EC(v3);
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

double sub_100072CDC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_1000236F4(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_10000603C(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t sub_100072D40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1000236F4(a1, a2);
  if (v5)
  {
    return *(*(a3 + 56) + 8 * v4);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100072D98()
{
  v0 = type metadata accessor for Logger();
  sub_100065A60(v0, qword_1001B9218);
  sub_10000641C(v0, qword_1001B9218);
  subsystemName.getter();
  return Logger.init(subsystem:category:)();
}

char *sub_100072E0C()
{
  sub_100003324(v0 + 14);
  sub_100003324(v0 + 19);

  sub_100003324(v0 + 25);
  sub_100003324(v0 + 30);

  v1 = OBJC_IVAR____TtC13modelmanagerd13PolicyManager__workQueue;
  sub_100065020(&qword_1001B9400, &qword_1001700B0);
  sub_100002C00();
  (*(v2 + 8))(&v0[v1]);

  v3 = OBJC_IVAR____TtC13modelmanagerd13PolicyManager__currentPolicy;
  type metadata accessor for Policy();
  sub_100002C00();
  (*(v4 + 8))(&v0[v3]);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_100072F18()
{
  sub_100072E0C();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100072F44()
{
  sub_100002BAC();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = sub_100065020(&qword_1001B9420, &qword_100170118);
  sub_100002F44(v5);
  v1[6] = v6;
  v1[7] = *(v7 + 64);
  v1[8] = swift_task_alloc();
  v8 = sub_100002C10();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_100073004()
{
  sub_10000D054();
  sub_1000033DC();
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[3];
  v6 = v0[2];
  sub_10001E72C(v0[4], v2, &qword_1001B9420, &qword_100170118);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = (v1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_allocObject();
  v0[9] = v9;
  sub_10002F6B4(v2, v9 + v7, &qword_1001B9420, &qword_100170118);
  *(v9 + v8) = v3;
  v10 = (v9 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v10 = v6;
  v10[1] = v5;

  v11 = swift_task_alloc();
  v0[10] = v11;
  sub_100065020(&qword_1001B9400, &qword_1001700B0);
  sub_100026B34();
  *v11 = v12;
  v11[1] = sub_1000731C0;
  sub_100010B78();
  sub_1000062BC();

  return __s20ModelManagerServices9WorkQueueV15runBlockAndWait11description10isolatedTo7performqd__SS_xYiqd__yYaqd_0_YKctYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lF(v13, v14, v15);
}

uint64_t sub_1000731C0()
{
  sub_100002BAC();
  sub_100001EF4();
  v3 = v2;
  sub_100003960();
  *v4 = v3;
  v5 = *v1;
  sub_100002B9C();
  *v6 = v5;

  if (!v0)
  {

    v8 = sub_100002C10();

    return _swift_task_switch(v8, v9, v10);
  }

  return result;
}

uint64_t sub_1000732C0()
{
  sub_100002BAC();

  sub_100001F00();

  return v0();
}

uint64_t sub_100073318()
{
  sub_100002BAC();
  v1[3] = v2;
  v1[4] = v0;
  v3 = type metadata accessor for Assertion.DaemonRep();
  v1[5] = v3;
  sub_100002F44(v3);
  v1[6] = v4;
  v1[7] = *(v5 + 64);
  v1[8] = swift_task_alloc();
  v6 = sub_100002C10();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1000733CC()
{
  sub_10000D054();
  sub_1000033DC();
  v1 = v0[4];
  (*(v0[6] + 16))(v0[8], v0[3], v0[5]);
  v2 = swift_allocObject();
  v0[9] = v2;
  *(v2 + 16) = v1;
  sub_1000135D0();
  v3();

  v4 = swift_task_alloc();
  v0[10] = v4;
  sub_100065020(&qword_1001B9400, &qword_1001700B0);
  sub_100065020(&qword_1001B8F60, &unk_100171260);
  sub_100026B34();
  *v4 = v5;
  v4[1] = sub_100073570;
  sub_1000062BC();

  return __s20ModelManagerServices9WorkQueueV15runBlockAndWait11description10isolatedTo7performqd__SS_xYiqd__yYaqd_0_YKctYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lF(v6, v7, v8);
}

uint64_t sub_100073570()
{
  sub_100001ED0();
  sub_100001EF4();
  v3 = v2;
  sub_100003960();
  *v4 = v3;
  v5 = *v1;
  sub_100002B9C();
  *v6 = v5;

  v7 = *(v3 + 32);
  if (v0)
  {
    v8 = sub_1000736EC;
  }

  else
  {
    v8 = sub_100073694;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100073694()
{
  sub_100002BAC();

  sub_100002F54();

  return v0();
}

uint64_t sub_1000736EC()
{
  sub_100002BAC();

  sub_100001F00();

  return v0();
}

uint64_t sub_100073748()
{
  sub_100002BAC();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_100065020(&qword_1001B8B78, &qword_10016F740);
  v1[4] = v3;
  sub_100002F44(v3);
  v1[5] = v4;
  v1[6] = *(v5 + 64);
  v1[7] = swift_task_alloc();
  v6 = sub_100002C10();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_100073808()
{
  sub_10000D054();
  sub_1000033DC();
  v1 = v0[6];
  v2 = v0[5];
  v3 = v0[3];
  (*(v2 + 16))(v0[7], v0[2], v0[4]);
  v4 = (v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = swift_allocObject();
  v0[8] = v5;
  sub_1000135D0();
  v6();
  *(v5 + v4) = v3;

  v7 = swift_task_alloc();
  v0[9] = v7;
  sub_100065020(&qword_1001B9400, &qword_1001700B0);
  sub_100026B34();
  *v7 = v8;
  v7[1] = sub_100073988;
  sub_100009E4C();
  sub_100010B78();
  sub_1000062BC();

  return __s20ModelManagerServices9WorkQueueV15runBlockAndWait11description10isolatedTo7performqd__SS_xYiqd__yYaqd_0_YKctYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lF(v9, v10, v11);
}

uint64_t sub_100073988()
{
  sub_100002BAC();
  sub_100001EF4();
  v3 = v2;
  sub_100003960();
  *v4 = v3;
  v5 = *v1;
  sub_100002B9C();
  *v6 = v5;

  if (!v0)
  {

    v8 = sub_100002C10();

    return _swift_task_switch(v8, v9, v10);
  }

  return result;
}

uint64_t sub_100073A88()
{
  sub_100002BAC();

  sub_100001F00();

  return v0();
}

void sub_100073AF8()
{
  v1 = *(v0 + 64);
  sub_100003370((v1 + 112), *(v1 + 136));
  if (qword_1001B8AA0 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for FilePath();
  v2 = sub_10000641C(v20, qword_1001BEB20);
  v3 = sub_1000EE598(v2);
  v5 = v4;
  v6 = sub_10007B5C8(v3, v4);
  v8 = v7;
  v9 = *(v0 + 64);
  sub_10008D16C(v3, v5);
  *(v9 + 280) = v6;

  swift_beginAccess();
  *(v9 + 304) = v8;

  if (os_variant_has_internal_content())
  {
    sub_100003370((v1 + 112), *(v1 + 136));
    if (qword_1001B8AA8 != -1)
    {
      swift_once();
    }

    v10 = sub_10000641C(v20, qword_1001BEB38);
    v11 = sub_1000EE598(v10);
    v13 = v12;
    sub_10007B5C8(v11, v12);
    v14 = *(v0 + 64);
    sub_10008D16C(v11, v13);
    v15 = *(v14 + 280);

    *(v14 + 280) = sub_100074404(v16, v15, v14);

    swift_beginAccess();

    sub_1001406BC(v17);
    swift_endAccess();
  }

  sub_1000744DC();
  sub_100001F00();
  sub_100003540();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_100074064@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v6 = sub_100065020(&qword_1001B9480, &qword_1001701A8);
  __chkstk_darwin(v6 - 8);
  v8 = (v24 - v7);
  v25 = a1;

  sub_100127F2C();

  v9 = sub_100065020(&qword_1001B9458, &qword_100174250);
  result = sub_10000C6C0(v8, 1, v9);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v24[1] = v3;
    v12 = *v8;
    v11 = v8[1];
    v13 = *(v9 + 48);
    v14 = type metadata accessor for Policy();
    v15 = *(v14 - 8);
    (*(v15 + 8))(v8 + v13, v14);
    if (qword_1001B88D8 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_10000641C(v16, qword_1001B9218);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v24[0] = a1;
      v20 = a3;
      v21 = v19;
      v22 = swift_slowAlloc();
      v26 = v22;
      *v21 = 136315138;
      v23 = sub_100004A3C(v12, v11, &v26);

      *(v21 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v17, v18, "Internal policy file contains policy with same name as existing policy: %s", v21, 0xCu);
      sub_100003324(v22);

      a3 = v20;
      a1 = v24[0];
    }

    else
    {
    }

    return (*(v15 + 16))(a3, a1, v14);
  }

  return result;
}

uint64_t sub_10007432C(uint64_t a1, uint64_t a2, uint64_t a3)
{

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a2;
  sub_10007C698(a1, sub_10007C628, 0, isUniquelyReferenced_nonNull_native, &v9, a3, &_swift_bridgeObjectRelease, sub_100079504);

  if (v3)
  {
  }

  else
  {
    return v9;
  }
}

uint64_t sub_100074404(uint64_t a1, uint64_t a2, uint64_t a3)
{

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a2;
  sub_10007C698(a1, sub_10007C628, 0, isUniquelyReferenced_nonNull_native, &v9, a3, &_swift_release, sub_100074064);

  if (v3)
  {
  }

  else
  {
    return v9;
  }
}

uint64_t sub_1000744DC()
{
  v1 = *(v0 + 280);
  swift_beginAccess();
  swift_bridgeObjectRetain_n();

  *(v0 + 296) = sub_10007432C(v2, v1, v1);
}

uint64_t sub_100074558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v5[7] = a2;
  v5[8] = a3;
  sub_100065020(&qword_1001B9420, &qword_100170118);
  v5[11] = swift_task_alloc();

  return _swift_task_switch(sub_1000745FC, a3, 0);
}

uint64_t sub_1000745FC()
{
  sub_10000636C();
  type metadata accessor for Policy();
  v2 = sub_100012484();
  if (sub_10000C6C0(v2, 1, v3) == 1)
  {
    v5 = v1[9];
    v4 = v1[10];

    sub_100072460(v6);
    sub_100009540();

    v1[5] = v5;
    v1[6] = v4;
    v7 = swift_task_alloc();
    *(v7 + 16) = v1 + 5;
    sub_100009A9C(sub_10001609C, v7, v0);
    sub_100005F2C();
  }

  sub_10001E72C(v1[7], v1[11], &qword_1001B9420, &qword_100170118);
  swift_beginAccess();

  sub_1000FF1B4();
  swift_endAccess();
  sub_1000744DC();

  sub_100002F54();

  return v8();
}

uint64_t sub_10007484C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  v6 = type metadata accessor for Assertion.DaemonRep();
  v4[5] = v6;
  v4[6] = *(v6 - 8);
  v4[7] = swift_task_alloc();
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  sub_100065020(&qword_1001B9420, &qword_100170118);
  v4[11] = swift_task_alloc();

  return _swift_task_switch(sub_100074970, a2, 0);
}

uint64_t sub_100074970(uint64_t a1)
{
  v93 = v1;
  v2 = v1[11];
  v3 = v1[2];
  Assertion.DaemonRep.policy.getter();
  v4 = *(v3 + 296);

  v5 = sub_100007660();
  sub_100072B78(v5, v6, v4, v7, v8);

  v9 = type metadata accessor for Policy();
  v10 = sub_10000C6C0(v2, 1, v9);
  sub_10000C7F0(v2, &qword_1001B9420);
  if (v10 == 1)
  {
    if (qword_1001B88D8 != -1)
    {
      sub_100004FDC(&qword_1001B88D8);
    }

    v11 = type metadata accessor for Logger();
    v12 = sub_10000641C(v11, qword_1001B9218);
    v13 = sub_100007660();
    v14(v13);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    v17 = os_log_type_enabled(v15, v16);
    v19 = v1[6];
    v18 = v1[7];
    v20 = v1[5];
    if (v17)
    {
      sub_100007698();
      v21 = sub_100003890();
      v92[0] = v21;
      *v12 = 136315138;
      v22 = Assertion.DaemonRep.policy.getter();
      v24 = v23;
      (*(v19 + 8))(v18, v20);
      v25 = sub_100004A3C(v22, v24, v92);

      *(v12 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v15, v16, "Failed to acquire assertion: Policy %s does not exist", v12, 0xCu);
      sub_100003324(v21);
      sub_100002BB8(v21);
      sub_10000706C();
    }

    else
    {

      (*(v19 + 8))(v18, v20);
    }

    v48 = v1[4];
    type metadata accessor for ModelManagerError();
    sub_10000814C(&qword_1001B8F50, &type metadata accessor for ModelManagerError, &protocol conformance descriptor for ModelManagerError);
    v49 = swift_allocError();
    v51 = v50;
    *v50 = Assertion.DaemonRep.policy.getter();
    v51[1] = v52;
    sub_100006098();
    (*(v53 + 104))(v51);
    swift_willThrow();
    *v48 = v49;

    sub_100001F00();
    goto LABEL_19;
  }

  v26 = v1[3];
  v27 = *(v1[2] + OBJC_IVAR____TtC13modelmanagerd13PolicyManager__assertions);

  LOBYTE(v26) = sub_1000751F4(v26, v27);

  if (v26)
  {
    if (qword_1001B88D8 != -1)
    {
      sub_100004FDC(&qword_1001B88D8);
    }

    v28 = v1[6];
    v29 = v1[3];
    v30 = type metadata accessor for Logger();
    sub_10000641C(v30, qword_1001B9218);
    v31 = *(v28 + 16);
    v32 = sub_100007660();
    v31(v32);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.fault.getter();
    if (sub_100002F80(v34))
    {
      v35 = v1[8];
      v37 = v1[5];
      v36 = v1[6];
      sub_100007698();
      v90 = sub_10000767C();
      v92[0] = v90;
      *v29 = 136315138;
      v38 = sub_100004CA4();
      v31(v38);
      v39 = String.init<A>(describing:)();
      v41 = v40;
      (*(v36 + 8))(v35, v37);
      v42 = sub_100004A3C(v39, v41, v92);

      *(v29 + 4) = v42;
      sub_100003DD0();
      _os_log_impl(v43, v44, v45, v46, v47, 0xCu);
      sub_100003324(v90);
      sub_100002BB8(v90);
      sub_100002F64();
    }

    else
    {

      v75 = sub_1000060A4();
      v76(v75);
    }

    sub_100002F54();
LABEL_19:
    sub_100003D04();

    __asm { BRAA            X1, X16 }
  }

  if (qword_1001B88D8 != -1)
  {
    sub_100004FDC(&qword_1001B88D8);
  }

  v54 = v1[6];
  v55 = v1[3];
  v56 = type metadata accessor for Logger();
  sub_10000641C(v56, qword_1001B9218);
  v57 = *(v54 + 16);
  v58 = sub_100007660();
  v57(v58);
  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.default.getter();
  v61 = sub_100002F80(v60);
  v62 = v1[10];
  if (v61)
  {
    v64 = v1[5];
    v63 = v1[6];
    sub_100007698();
    v89 = sub_10000767C();
    v92[0] = v89;
    v65 = sub_10001AF84(4.8149e-34);
    v57(v65);
    sub_100007B78();
    v66 = String.init<A>(describing:)();
    v91 = v57;
    v68 = v67;
    (*(v63 + 8))(v62, v64);
    v69 = sub_100004A3C(v66, v68, v92);
    v57 = v91;

    *(v55 + 4) = v69;
    sub_100003DD0();
    _os_log_impl(v70, v71, v72, v73, v74, 0xCu);
    sub_100003324(v89);
    sub_100002BB8(v89);
    sub_100002F64();
  }

  else
  {
    v79 = v1[5];
    v80 = v1[6];

    (*(v80 + 8))(v62, v79);
  }

  v81 = sub_100065020(&qword_1001B9438, &qword_100170150);
  v82 = sub_100011A30(v81);
  v83 = sub_100026B6C(v82, xmmword_10016FF40);
  v57(v83);
  sub_100065D3C();
  v1[12] = v84;
  v85 = swift_task_alloc();
  v1[13] = v85;
  *v85 = v1;
  v85[1] = sub_100075054;
  sub_100003D04();

  return sub_100075874(v86);
}

void sub_100075054()
{
  sub_100003884();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;

  sub_100003D20();

  __asm { BRAA            X1, X16 }
}

BOOL sub_1000751F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Assertion.DaemonRep();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_10000814C(&qword_1001B8BA0, &type metadata accessor for Assertion.DaemonRep, &protocol conformance descriptor for Assertion.DaemonRep);
  v16 = a1;
  v8 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v9 = a2 + 56;
  v17 = a2;
  v10 = ~(-1 << *(a2 + 32));
  do
  {
    v11 = v8 & v10;
    v12 = (1 << (v8 & v10)) & *(v9 + (((v8 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    v13 = v12 != 0;
    if (!v12)
    {
      break;
    }

    (*(v5 + 16))(v7, *(v17 + 48) + *(v5 + 72) * v11, v4);
    sub_10000814C(&qword_1001B8BA8, &type metadata accessor for Assertion.DaemonRep, &protocol conformance descriptor for Assertion.DaemonRep);
    v14 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v5 + 8))(v7, v4);
    v8 = v11 + 1;
  }

  while ((v14 & 1) == 0);
  return v13;
}

void sub_1000753F8()
{
  sub_1000055B0();
  if (*(v2 + 16))
  {
    sub_1000135C4();
    v3 = type metadata accessor for UUID();
    sub_10005F2BC(&qword_1001B8C00, &protocol conformance descriptor for UUID);
    sub_100012484();
    v13 = v1;
    dispatch thunk of Hashable._rawHashValue(seed:)();
    v14 = v0 + 56;
    sub_100012A00();
    v6 = ~v5;
    do
    {
      v7 = v4 & v6;
      if (((1 << (v4 & v6)) & *(v14 + (((v4 & v6) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
      {
        break;
      }

      v8 = *(v3 - 8);
      __chkstk_darwin(v4);
      v10 = &v13 - v9;
      (*(v8 + 16))(&v13 - v9, *(v0 + 48) + *(v11 + 72) * v7, v3);
      sub_10005F2BC(&qword_1001B94A8, &protocol conformance descriptor for UUID);
      sub_10008D330();
      v12 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v8 + 8))(v10, v3);
      v4 = v7 + 1;
    }

    while ((v12 & 1) == 0);
  }

  sub_100002EEC();
}

void sub_1000755A4()
{
  sub_1000055B0();
  sub_1000135C4();
  v26 = type metadata accessor for ModelCatalogAsset(0);
  sub_100002BDC();
  __chkstk_darwin(v3);
  sub_100002B8C();
  v6 = (v5 - v4);
  if (!*(v0 + 16))
  {
    goto LABEL_48;
  }

  Hasher.init(_seed:)();
  sub_10000C228(&v29);
  Hasher._finalize()();
  sub_100012A00();
  v9 = v8 & ~v7;
  v28 = v10;
  if (((*(v10 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    goto LABEL_48;
  }

  v27 = ~v7;
  v11 = *v1;
  v12 = v1[1];
  while (1)
  {
    sub_100003B04();
    sub_10000931C();
    v13 = *v6 == v11 && v6[1] == v12;
    if (!v13 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_47;
    }

    sub_100016458();
    if (!v13)
    {
      goto LABEL_47;
    }

    if (v2 && v15 != v14)
    {
      break;
    }

LABEL_23:
    if (sub_1000BB718(v6[3], v1[3]) & 1) != 0 && (sub_1000BB718(v6[4], v1[4]) & 1) != 0 && (static AssetCost.== infix(_:_:)())
    {
      sub_10000BF5C();
      if (v13)
      {
        sub_10000BF5C();
        if (v13)
        {
          sub_10000BF5C();
          if (v13)
          {
            sub_10000BF5C();
            if (v13)
            {
              sub_10000BF5C();
              if (v13)
              {
                v20 = *(v26 + 56);
                v21 = *(v6 + v20);
                v22 = *(v1 + v20);
                v23 = *(v21 + 16);
                if (v23 == *(v22 + 16))
                {
                  if (!v23 || v21 == v22)
                  {
LABEL_46:
                    sub_10000BF5C();
                    if (v13)
                    {
                      goto LABEL_50;
                    }
                  }

                  else
                  {
                    v2 = (v21 + 40);
                    v24 = (v22 + 40);
                    while (1)
                    {
                      v25 = *(v2 - 1) == *(v24 - 1) && *v2 == *v24;
                      if (!v25 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                      {
                        break;
                      }

                      v2 += 2;
                      v24 += 2;
                      if (!--v23)
                      {
                        goto LABEL_46;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_47:
    sub_100011314();
    sub_10000D2AC(v6);
    v9 = (v9 + 1) & v27;
    if (((*(v28 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      goto LABEL_48;
    }
  }

  v17 = (v15 + 40);
  v18 = (v14 + 40);
  while (v2)
  {
    v19 = *(v17 - 1) == *(v18 - 1) && *v17 == *v18;
    if (!v19 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_47;
    }

    v17 += 2;
    v18 += 2;
    v2 = (v2 - 1);
    if (!v2)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_50:
  sub_100011314();
  sub_10000D2AC(v6);
LABEL_48:
  sub_100002EEC();
}

uint64_t sub_100075874(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_10000396C(a1, v1);
}

uint64_t sub_10007588C()
{
  sub_100003884();
  v1 = v0[3];
  v2 = OBJC_IVAR____TtC13modelmanagerd13PolicyManager__assertions;
  v0[4] = OBJC_IVAR____TtC13modelmanagerd13PolicyManager__assertions;
  v3 = *(v1 + v2);

  v5 = sub_100078B74(v4, v3);
  v0[5] = v5;
  v6 = *(v1 + v2);

  sub_10007B7D0(v5, v6);
  sub_100005F2C();

  if (v1)
  {

    sub_100001F00();
    sub_100003D20();

    __asm { BRAA            X1, X16 }
  }

  v9 = swift_task_alloc();
  v0[6] = v9;
  *v9 = v0;
  sub_10000766C(v9);
  sub_100003D20();

  return sub_100078F00();
}

uint64_t sub_1000759B0()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = *(v1 + 24);
  v3 = *v0;
  sub_100002B9C();
  *v4 = v3;

  return _swift_task_switch(sub_100075ACC, v2, 0);
}

uint64_t sub_100075ACC()
{
  sub_100001ED0();
  v1 = *(v0 + 24);
  v2 = OBJC_IVAR____TtC13modelmanagerd13PolicyManager__transaction;
  if (!*(v1 + OBJC_IVAR____TtC13modelmanagerd13PolicyManager__transaction) && *(*(v1 + *(v0 + 32)) + 16))
  {
    type metadata accessor for _OSTransaction();
    *(v1 + v2) = _OSTransaction.__allocating_init(_:)();
  }

  sub_100001F00();

  return v3();
}

uint64_t sub_100075B88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v5 = sub_100065020(&qword_1001B8B78, &qword_10016F740);
  v3[4] = v5;
  v3[5] = *(v5 - 8);
  v3[6] = swift_task_alloc();

  return _swift_task_switch(sub_100075C58, a3, 0);
}

uint64_t sub_100075C58()
{
  v29 = v0;
  if (qword_1001B88D8 != -1)
  {
    sub_100004FDC(&qword_1001B88D8);
  }

  v1 = v0[5];
  v2 = type metadata accessor for Logger();
  v3 = sub_10000641C(v2, qword_1001B9218);
  v4 = *(v1 + 16);
  v5 = sub_100007660();
  v4(v5);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[5];
  v9 = v0[6];
  v11 = v0[4];
  if (v8)
  {
    sub_100007698();
    v27 = sub_100003890();
    v28 = v27;
    *v3 = 136315138;
    sub_10001B2C0(&qword_1001B9430, &qword_1001B8B78, &qword_10016F740, &protocol conformance descriptor for UUIDIdentifier<A>);
    v26 = v7;
    v12 = v4;
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v10 + 8))(v9, v11);
    v16 = v13;
    v4 = v12;
    v17 = sub_100004A3C(v16, v15, &v28);

    *(v3 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v6, v26, "Releasing assertion: %s", v3, 0xCu);
    sub_100003324(v27);
    sub_100002BB8(v27);
    sub_10000706C();
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = sub_100065020(&qword_1001B9098, &unk_10016FD00);
  v19 = sub_100011A30(v18);
  v20 = sub_100026B6C(v19, xmmword_10016FF40);
  v4(v20);
  sub_100065FA8();
  v0[7] = v21;
  v22 = swift_task_alloc();
  v0[8] = v22;
  *v22 = v0;
  sub_10000766C(v22);
  sub_100003540();

  return sub_100075FE8(v23);
}

uint64_t sub_100075ED0()
{
  sub_100002BAC();
  sub_100001EF4();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;

  sub_100002F54();

  return v3();
}

uint64_t sub_100075FE8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_10000396C(a1, v1);
}

uint64_t sub_100076000()
{
  sub_10000636C();
  v1 = v0[2];
  v2 = v0[3];
  v3 = OBJC_IVAR____TtC13modelmanagerd13PolicyManager__assertions;
  v0[4] = OBJC_IVAR____TtC13modelmanagerd13PolicyManager__assertions;

  v5 = sub_10008A428(v4, v1);
  v0[5] = v5;
  v6 = *(v2 + v3);

  sub_10007B7D0(v5, v6);
  sub_100005F2C();

  v7 = swift_task_alloc();
  v0[6] = v7;
  *v7 = v0;
  sub_10000766C(v7);

  return sub_100078F00();
}

uint64_t sub_10007613C()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = *(v1 + 24);
  v3 = *v0;
  sub_100002B9C();
  *v4 = v3;

  return _swift_task_switch(sub_100076258, v2, 0);
}

uint64_t sub_100076258()
{
  sub_100002BAC();
  v1 = *(v0 + 24);
  if (*(v1 + OBJC_IVAR____TtC13modelmanagerd13PolicyManager__transaction) && !*(*(v1 + *(v0 + 32)) + 16))
  {
    *(v1 + OBJC_IVAR____TtC13modelmanagerd13PolicyManager__transaction) = 0;
  }

  sub_100001F00();

  return v2();
}

uint64_t sub_1000762D4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_10000396C(a1, v1);
}

uint64_t sub_1000762EC()
{
  sub_100003884();
  v2 = v0[2];
  v1 = v0[3];
  sub_100002EE0();
  v3 = swift_allocObject();
  v0[4] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  v4 = swift_task_alloc();
  v0[5] = v4;
  sub_100065020(&qword_1001B9400, &qword_1001700B0);
  sub_100026B34();
  *v4 = v5;
  v4[1] = sub_100076424;
  sub_100009E4C();
  sub_100010B78();

  return __s20ModelManagerServices9WorkQueueV15runBlockAndWait11description10isolatedTo7performqd__SS_xYiqd__yYaqd_0_YKctYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lF(v6, v7, v8);
}

uint64_t sub_100076424()
{
  sub_100002BAC();
  sub_100001EF4();
  v3 = v2;
  sub_100003960();
  *v4 = v3;
  v5 = *v1;
  sub_100002B9C();
  *v6 = v5;

  if (!v0)
  {

    v8 = sub_100002C10();

    return _swift_task_switch(v8, v9, v10);
  }

  return result;
}

uint64_t sub_100076520(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  return _swift_task_switch(sub_100076540, a3, 0);
}

uint64_t sub_100076540()
{
  sub_1000033DC();
  v15 = v0;
  v2 = v0[3];

  v4 = sub_10008AA34(v3, v2);
  v0[4] = v4;
  if (*(v4 + 16))
  {
    if (qword_1001B88D8 != -1)
    {
      sub_100004FDC(&qword_1001B88D8);
    }

    v5 = type metadata accessor for Logger();
    sub_10000641C(v5, qword_1001B9218);
    sub_100003170();

    v6 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    sub_100005F2C();

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      sub_100007698();
      v7 = sub_100003890();
      v14 = v7;
      *v1 = 136315138;
      type metadata accessor for Assertion.DaemonRep();
      sub_10000814C(&qword_1001B8BA0, &type metadata accessor for Assertion.DaemonRep, &protocol conformance descriptor for Assertion.DaemonRep);
      v8 = Set.description.getter();
      v10 = sub_100004A3C(v8, v9, &v14);

      *(v1 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Restoring assertions: %s", v1, 0xCu);
      sub_100003324(v7);
      sub_100002BB8(v7);
      sub_10000706C();
    }

    v11 = swift_task_alloc();
    v0[5] = v11;
    *v11 = v0;
    sub_10000766C(v11);

    return sub_100075874(v4);
  }

  else
  {

    sub_100002F54();

    return v13();
  }
}

uint64_t sub_100076774()
{
  sub_100002BAC();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_10007687C(uint64_t a1)
{
  *(v2 + 16) = v1;
  *(v2 + 40) = a1;
  return sub_10000396C(a1, v1);
}

uint64_t sub_100076898()
{
  sub_100003884();
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  v3 = swift_allocObject();
  *(v0 + 24) = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;

  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  sub_100065020(&qword_1001B9400, &qword_1001700B0);
  sub_100026B34();
  *v4 = v5;
  v4[1] = sub_1000769E0;
  sub_100010B78();
  sub_100003D20();

  return __s20ModelManagerServices9WorkQueueV15runBlockAndWait11description10isolatedTo7performqd__SS_xYiqd__yYaqd_0_YKctYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lF(v6, v7, v8);
}

uint64_t sub_1000769E0()
{
  sub_100002BAC();
  sub_100001EF4();
  v3 = v2;
  sub_100003960();
  *v4 = v3;
  v5 = *v1;
  sub_100002B9C();
  *v6 = v5;

  if (!v0)
  {

    v8 = sub_100002C10();

    return _swift_task_switch(v8, v9, v10);
  }

  return result;
}

uint64_t sub_100076ADC(uint64_t a1, uint64_t a2, int a3)
{
  *(v3 + 64) = a3;
  *(v3 + 16) = a2;
  v5 = type metadata accessor for Assertion.DaemonRep();
  *(v3 + 24) = v5;
  *(v3 + 32) = *(v5 - 8);
  *(v3 + 40) = swift_task_alloc();

  return _swift_task_switch(sub_100076BD0, a2, 0);
}

uint64_t sub_100076BD0()
{
  sub_1000033DC();
  v52 = v0;
  v1 = *(v0 + 64);
  v2 = *(*(v0 + 16) + OBJC_IVAR____TtC13modelmanagerd13PolicyManager__assertions);
  v3 = swift_task_alloc();
  *(v3 + 16) = v1;
  v4 = *(v2 + 32) & 0x3F;
  sub_100003878();
  v6 = (v5 + 63) >> 6;
  v7 = 8 * v6;

  if (v4 > 0xD)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v44 = v3;
    v42[1] = v42;
    v50 = v0;
    v9 = *(v0 + 32);
    __chkstk_darwin(v8);
    v43 = v6;
    v45 = (v42 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0));
    sub_100011624(0, v6, v45);
    v6 = 0;
    v49 = v2;
    v3 = v2 + 56;
    sub_100002F28();
    v12 = v11 & v10;
    v2 = (v13 + 63) >> 6;
    v48 = v9 + 16;
    v46 = 0;
    v47 = v9 + 8;
    while (v12)
    {
      sub_10002F700();
LABEL_10:
      v7 = *(v50 + 40);
      v18 = *(v50 + 24);
      v0 = *(v50 + 64);
      (*(v9 + 16))(v7, *(v49 + 48) + *(v9 + 72) * (v14 | (v6 << 6)), v18);
      v19 = Assertion.DaemonRep.acquirerPID.getter();
      (*(v9 + 8))(v7, v18);
      if (v19 == v0)
      {
        sub_100005AF4();
        sub_10000CCF0(v20);
        if (__OFADD__(v46++, 1))
        {
          __break(1u);
LABEL_14:
          v22 = sub_10008C1EC(v45, v43, v46, v49);
          v0 = v50;
          v3 = v44;
          goto LABEL_15;
        }
      }
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v2)
      {
        goto LABEL_14;
      }

      ++v15;
      if (*(v3 + 8 * v6))
      {
        sub_1000062A0();
        v12 = v17 & v16;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_27:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v41 = swift_slowAlloc();
  v22 = sub_10008C15C(v41, v6, v2, sub_100078464);

  sub_100002BB8(v41);
LABEL_15:

  sub_100072770(v22);
  sub_100009540();

  sub_1000776E8();
  *(v0 + 48) = v23;
  if (!*(v23 + 16))
  {

    sub_100001F00();
    sub_1000062BC();

    __asm { BRAA            X1, X16 }
  }

  if (qword_1001B88D8 != -1)
  {
    sub_100004FDC(&qword_1001B88D8);
  }

  v24 = type metadata accessor for Logger();
  sub_10000641C(v24, qword_1001B9218);
  sub_100003170();

  v25 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_100005F2C();

  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = *(v0 + 64);
    swift_slowAlloc();
    v27 = sub_100003890();
    v51 = v27;
    *v3 = 67109378;
    *(v3 + 4) = v26;
    *(v3 + 8) = 2080;
    v28 = sub_100007B78();
    sub_100065020(v28, v29);
    sub_1000081B4();
    sub_10001B2C0(v30, &qword_1001B8B78, &qword_10016F740, v31);
    v32 = Set.description.getter();
    v34 = sub_100004A3C(v32, v33, &v51);

    *(v3 + 10) = v34;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Releasing all assertions from pid %d: %s", v3, 0x12u);
    sub_100003324(v27);
    sub_100002BB8(v27);
    sub_10000706C();
  }

  v35 = swift_task_alloc();
  *(v0 + 56) = v35;
  *v35 = v0;
  v35[1] = sub_1000770FC;
  sub_1000062BC();

  return sub_100075FE8(v36);
}

uint64_t sub_1000770FC()
{
  sub_100001ED0();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

void sub_100077310()
{
  sub_1000055B0();
  sub_10002A104();
  type metadata accessor for StateDump.AssetState();
  sub_100002BDC();
  __chkstk_darwin(v2);
  sub_10000A51C();
  __chkstk_darwin(v3);
  sub_100007D80();
  sub_10000814C(&qword_1001B95C8, &type metadata accessor for StateDump.AssetState, &protocol conformance descriptor for StateDump.AssetState);
  sub_100012484();
  v4 = Set.init(minimumCapacity:)();
  sub_10001E654(v4);
  if (v0)
  {
    sub_100008390();
    do
    {
      v5 = sub_100001F30();
      v1(v5);
      v6 = sub_10001858C();
      sub_10007D654(v6, v7);
      v8 = sub_100013D38();
      v9(v8);
      sub_100019188();
    }

    while (!v10);
  }

  else
  {
    sub_100003170();
  }

  sub_100011BA4();
  sub_100002EEC();
}

void sub_100077448()
{
  sub_1000055B0();
  sub_10002A104();
  type metadata accessor for StateDump.SessionState();
  sub_100002BDC();
  __chkstk_darwin(v2);
  sub_10000A51C();
  __chkstk_darwin(v3);
  sub_100007D80();
  sub_10000814C(&qword_1001B95B0, &type metadata accessor for StateDump.SessionState, &protocol conformance descriptor for StateDump.SessionState);
  sub_100012484();
  v4 = Set.init(minimumCapacity:)();
  sub_10001E654(v4);
  if (v0)
  {
    sub_100008390();
    do
    {
      v5 = sub_100001F30();
      v1(v5);
      v6 = sub_10001858C();
      sub_10007D91C(v6, v7);
      v8 = sub_100013D38();
      v9(v8);
      sub_100019188();
    }

    while (!v10);
  }

  else
  {
    sub_100003170();
  }

  sub_100011BA4();
  sub_100002EEC();
}

void sub_100077580()
{
  sub_1000055B0();
  sub_10002A104();
  type metadata accessor for StateDump.RequestState();
  sub_100002BDC();
  __chkstk_darwin(v2);
  sub_10000A51C();
  __chkstk_darwin(v3);
  sub_100007D80();
  sub_10000814C(&qword_1001B9598, &type metadata accessor for StateDump.RequestState, &protocol conformance descriptor for StateDump.RequestState);
  sub_100012484();
  v4 = Set.init(minimumCapacity:)();
  sub_10001E654(v4);
  if (v0)
  {
    sub_100008390();
    do
    {
      v5 = sub_100001F30();
      v1(v5);
      v6 = sub_10001858C();
      sub_10007DBE4(v6, v7);
      v8 = sub_100013D38();
      v9(v8);
      sub_100019188();
    }

    while (!v10);
  }

  else
  {
    sub_100003170();
  }

  sub_100011BA4();
  sub_100002EEC();
}

void sub_1000776E8()
{
  sub_1000055B0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = sub_100005F38(v9, v7);
  v13 = sub_100065020(v11, v12);
  sub_100002BDC();
  v15 = v14;
  __chkstk_darwin(v16);
  sub_100005630();
  sub_100016678();
  __chkstk_darwin(v17);
  sub_10000C1B0();
  sub_1000081B4();
  sub_10001B2C0(v4, v8, v6, v18);
  v19 = Set.init(minimumCapacity:)();
  sub_10001E654(v19);
  if (v8)
  {
    v25 = *(v15 + 16);
    v20 = v10 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v21 = *(v15 + 72);
    do
    {
      v25(v0, v20, v13);
      v22 = sub_100004CA4();
      v2(v22);
      v23 = sub_100005FEC();
      v24(v23);
      v20 += v21;
      --v8;
    }

    while (v8);
  }

  else
  {
    sub_100003170();
  }

  sub_100011BA4();
  sub_100002EEC();
}

void sub_100077864()
{
  sub_1000055B0();
  sub_10002A104();
  type metadata accessor for StateDump.RemoteRequestState();
  sub_100002BDC();
  __chkstk_darwin(v2);
  sub_10000A51C();
  __chkstk_darwin(v3);
  sub_100007D80();
  sub_10000814C(&qword_1001B9568, &type metadata accessor for StateDump.RemoteRequestState, &protocol conformance descriptor for StateDump.RemoteRequestState);
  sub_100012484();
  v4 = Set.init(minimumCapacity:)();
  sub_10001E654(v4);
  if (v0)
  {
    sub_100008390();
    do
    {
      v5 = sub_100001F30();
      v1(v5);
      v6 = sub_10001858C();
      sub_10007E174(v6, v7);
      v8 = sub_100013D38();
      v9(v8);
      sub_100019188();
    }

    while (!v10);
  }

  else
  {
    sub_100003170();
  }

  sub_100011BA4();
  sub_100002EEC();
}

void sub_10007799C()
{
  sub_1000055B0();
  sub_10002A104();
  type metadata accessor for StateDump.InferenceProviderState.ActiveRequest();
  sub_100002BDC();
  __chkstk_darwin(v2);
  sub_10000A51C();
  __chkstk_darwin(v3);
  sub_100007D80();
  sub_10000814C(&qword_1001B9550, &type metadata accessor for StateDump.InferenceProviderState.ActiveRequest, &protocol conformance descriptor for StateDump.InferenceProviderState.ActiveRequest);
  sub_100012484();
  v4 = Set.init(minimumCapacity:)();
  sub_10001E654(v4);
  if (v0)
  {
    sub_100008390();
    do
    {
      v5 = sub_100001F30();
      v1(v5);
      v6 = sub_10001858C();
      sub_10007E43C(v6, v7);
      v8 = sub_100013D38();
      v9(v8);
      sub_100019188();
    }

    while (!v10);
  }

  else
  {
    sub_100003170();
  }

  sub_100011BA4();
  sub_100002EEC();
}

void sub_100077AD4()
{
  sub_1000055B0();
  sub_10002A104();
  type metadata accessor for InferenceProviderAssetDescriptor();
  sub_100002BDC();
  __chkstk_darwin(v2);
  sub_10000A51C();
  __chkstk_darwin(v3);
  sub_100007D80();
  sub_10000814C(&qword_1001B94B8, &type metadata accessor for InferenceProviderAssetDescriptor, &protocol conformance descriptor for InferenceProviderAssetDescriptor);
  sub_100012484();
  v4 = Set.init(minimumCapacity:)();
  sub_10001E654(v4);
  if (v0)
  {
    sub_100008390();
    do
    {
      v5 = sub_100001F30();
      v1(v5);
      v6 = sub_10001858C();
      sub_10007E94C(v6, v7);
      v8 = sub_100013D38();
      v9(v8);
      sub_100019188();
    }

    while (!v10);
  }

  else
  {
    sub_100003170();
  }

  sub_100011BA4();
  sub_100002EEC();
}

void sub_100077C0C()
{
  sub_1000134E8();
  v4 = sub_10002A104();
  v5 = type metadata accessor for InferenceProviderManager.InferenceProviderExtensionInformation(v4);
  sub_100002BDC();
  __chkstk_darwin(v6);
  sub_100005630();
  sub_100018C20();
  __chkstk_darwin(v7);
  sub_10001885C();
  sub_10000814C(&qword_1001B9510, type metadata accessor for InferenceProviderManager.InferenceProviderExtensionInformation, &unk_100171504);
  sub_100004CA4();
  Set.init(minimumCapacity:)();
  v8 = *(v0 + 16);
  if (v8)
  {
    sub_10000CB40();
    do
    {
      sub_10000CF04();
      sub_10000931C();
      sub_10007F0E4(v2, v1);
      sub_10000D2AC(v2);
      v5 += v3;
      --v8;
    }

    while (v8);
  }

  sub_100009C38();
}

void sub_100077D78()
{
  sub_1000055B0();
  v2 = v1;
  v3 = type metadata accessor for UUID();
  sub_10005F2BC(&qword_1001B8C00, &protocol conformance descriptor for UUID);
  sub_100012484();
  v4 = Set.init(minimumCapacity:)();
  v5 = sub_10001E654(v4);
  if (v0)
  {
    v6 = *(v3 - 8);
    v7 = *(v6 + 16);
    v15 = v6 + 16;
    v16 = v7;
    v8 = v2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v10 = *(v6 + 64);
    v9 = *(v6 + 72);
    v13[1] = v2;
    v14 = v9;
    v11 = (v6 + 8);
    do
    {
      v12 = __chkstk_darwin(v5);
      __chkstk_darwin(v12);
      sub_10002AB2C();
      v16();
      sub_10007EE00();
      v5 = (*v11)(v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
      v8 += v14;
      --v0;
    }

    while (v0);
  }

  else
  {
    sub_100003170();
  }

  sub_100011BA4();
  sub_100002EEC();
}

void sub_100077EE0(uint64_t a1)
{
  sub_10000E8DC(a1);
  v5 = type metadata accessor for DaemonRequest(0);
  sub_10000814C(&qword_1001B8F78, type metadata accessor for DaemonRequest, &unk_10017466C);
  sub_100012484();
  v7[1] = Set.init(minimumCapacity:)();
  sub_10000E8DC(a1);
  sub_10001D2F0();
  while (1)
  {
    if (v5 == v1)
    {

      return;
    }

    if (v2)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v1 >= *(v3 + 16))
      {
        goto LABEL_11;
      }

      v6 = *(a1 + 8 * v1 + 32);
    }

    if (__OFADD__(v1, 1))
    {
      break;
    }

    sub_10007D34C(v7, v6);

    ++v1;
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

void static AssetPolicy.< infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1000055B0();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = type metadata accessor for AssetPolicy();
  sub_100002BDC();
  v27 = v26;
  __chkstk_darwin(v28);
  sub_100005630();
  sub_100018C20();
  __chkstk_darwin(v29);
  v31 = &a9 - v30;
  v32 = *(v27 + 16);
  v32(&a9 - v30, v24, v25);
  v33 = *(v27 + 88);
  v34 = v33(v31, v25);
  v35 = enum case for AssetPolicy.standard(_:);
  if ((v34 == enum case for AssetPolicy.standard(_:) || v34 == enum case for AssetPolicy.unloadCached(_:)) && ((v36 = sub_10000D01C(), (v32)(v36), v37 = v33(v20, v25), v37 == v35) || v37 == enum case for AssetPolicy.unloadCached(_:)))
  {
    sub_100002EEC();
  }

  else
  {
    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }
}

uint64_t type metadata accessor for PolicyManager(uint64_t a1)
{
  result = qword_1001B9260;
  if (!qword_1001B9260)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100078224(uint64_t a1)
{
  sub_100078330(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Policy();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100078330(uint64_t a1)
{
  if (!qword_1001B9270)
  {
    type metadata accessor for PolicyManager(255);
    sub_10000814C(&qword_1001B8BE0, type metadata accessor for PolicyManager, &unk_100170070);
    v1 = type metadata accessor for WorkQueue();
    if (!v2)
    {
      atomic_store(v1, &qword_1001B9270);
    }
  }
}

uint64_t sub_1000783C4()
{
  sub_100001ED0();
  sub_1000135C4();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_100004B00(v3);
  *v4 = v5;
  v6 = sub_10003F82C(v4);

  return sub_100076ADC(v6, v1, v2);
}

void sub_1000784A4()
{
  sub_1000055B0();
  v74 = v2;
  v57 = type metadata accessor for RequestPriority();
  sub_100002BDC();
  v76 = v3;
  __chkstk_darwin(v4);
  sub_100005630();
  v73 = v5 - v6;
  sub_100002F1C();
  __chkstk_darwin(v7);
  sub_100016678();
  v9 = __chkstk_darwin(v8);
  v11 = &v53[-v10];
  __chkstk_darwin(v9);
  v75 = &v53[-v12];
  sub_100003B1C();
  v13 = type metadata accessor for AssetPolicy();
  sub_100002BDC();
  v15 = v14;
  __chkstk_darwin(v16);
  sub_100005630();
  sub_100018C20();
  v18 = __chkstk_darwin(v17);
  v20 = &v53[-v19];
  __chkstk_darwin(v18);
  v22 = &v53[-v21];
  v65 = Policy.memoryBudget.getter();
  v64 = v23;
  v61 = Policy.memoryBudget.getter();
  v66 = v24;
  Policy.assetPolicy.getter();
  Policy.assetPolicy.getter();
  v71 = v22;
  sub_1000789B0(v20, v0, v22);
  v69 = v15;
  v25 = *(v15 + 8);
  v25(v0, v13);
  v70 = v20;
  v72 = v13;
  v67 = v25;
  v68 = v15 + 8;
  v25(v20, v13);
  Policy.cancelPriority.getter();
  Policy.cancelPriority.getter();
  sub_10000814C(&qword_1001B9428, &type metadata accessor for RequestPriority, &protocol conformance descriptor for RequestPriority);
  v26 = v57;
  v27 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v28 = v76;
  v29 = *(v76 + 8);
  v30 = (v27 & 1) == 0;
  if (v27)
  {
    v31 = v11;
  }

  else
  {
    v31 = v1;
  }

  if (v30)
  {
    v32 = v11;
  }

  else
  {
    v32 = v1;
  }

  v62 = *(v76 + 8);
  v63 = v76 + 8;
  v29(v31, v26);
  v33 = v26;
  (*(v28 + 32))(v75, v32, v26);
  v34 = COERCE_DOUBLE(Policy.inactiveAssetTimeout.getter());
  v36 = v35;
  *&v37 = COERCE_DOUBLE(Policy.inactiveAssetTimeout.getter());
  if (v36)
  {
    v59 = v38;
    v34 = *&v37;
  }

  else
  {
    v59 = 0;
    if ((v38 & 1) == 0)
    {
      v34 = sub_10001874C(v37, v34);
    }
  }

  *&v39 = COERCE_DOUBLE(Policy.assetTransitionDelay.getter());
  v41 = v40;
  *&v42 = COERCE_DOUBLE(Policy.assetTransitionDelay.getter());
  if (v41)
  {
    v56 = v43;
    v58 = *&v42;
  }

  else if (v43)
  {
    v58 = *&v39;
    v56 = 0;
  }

  else
  {
    v56 = 0;
    v58 = sub_10001874C(v42, *&v39);
  }

  *&v44 = COERCE_DOUBLE(Policy.unentitledBackgroundInferenceWindow.getter());
  v46 = v45;
  *&v47 = COERCE_DOUBLE(Policy.unentitledBackgroundInferenceWindow.getter());
  v60 = v34;
  if (v46)
  {
    v55 = *&v47;
    v54 = v48;
  }

  else
  {
    v54 = 0;
    if (v48)
    {
      v55 = *&v44;
    }

    else
    {
      v55 = sub_10001874C(v47, *&v44);
    }
  }

  if (v61 >= v65)
  {
    v49 = v65;
  }

  else
  {
    v49 = v61;
  }

  if (v66)
  {
    v49 = v65;
  }

  v64 &= 1u;
  if (v64)
  {
    v49 = v61;
  }

  v65 = v49;
  Policy.unentitledBackgroundInferenceCap.getter();
  Policy.unentitledBackgroundInferenceCap.getter();
  v50 = v71;
  v51 = v72;
  (*(v69 + 16))(v70, v71, v72);
  v52 = v75;
  (*(v76 + 16))(v73, v75, v33);
  Policy.init(assetPolicy:memoryBudget:cancelPriority:inactiveAssetTimeout:assetTransitionDelay:unentitledBackgroundInferenceWindow:unentitledBackgroundInferenceCap:)();
  v62(v52, v33);
  v67(v50, v51);
  sub_100002EEC();
}

uint64_t sub_1000789B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a1;
  v25 = a3;
  v4 = type metadata accessor for AssetPolicy();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v22 - v9;
  v11 = *(v5 + 16);
  v24 = a2;
  v11(&v22 - v9, a2, v4);
  v12 = *(v5 + 88);
  v13 = v12(v10, v4);
  v14 = enum case for AssetPolicy.standard(_:);
  v15 = enum case for AssetPolicy.unloadCached(_:);
  if (v13 != enum case for AssetPolicy.standard(_:) && v13 != enum case for AssetPolicy.unloadCached(_:))
  {
    goto LABEL_12;
  }

  v17 = v13;
  v18 = v23;
  (v11)(v8);
  v19 = v12(v8, v4);
  if (v19 == v14)
  {
    v20 = v24;
    return (v11)(v25, v20, v4);
  }

  if (v19 == v15)
  {
    v20 = v24;
    if (v17 == v14)
    {
      v20 = v18;
    }

    return (v11)(v25, v20, v4);
  }

LABEL_12:
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_100078B74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Assertion.DaemonRep();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = v25 - v10;
  result = __chkstk_darwin(v9);
  v14 = v25 - v13;
  v15 = 0;
  v26 = a1;
  v27 = a2;
  v18 = *(a1 + 56);
  v17 = a1 + 56;
  v16 = v18;
  v19 = 1 << *(v17 - 24);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v25[2] = v5 + 32;
  v25[3] = v5 + 16;
  v25[1] = v5 + 8;
  if ((v20 & v16) != 0)
  {
    do
    {
      v23 = v15;
LABEL_9:
      v24 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      (*(v5 + 16))(v14, *(v26 + 48) + *(v5 + 72) * (v24 | (v23 << 6)), v4);
      (*(v5 + 32))(v8, v14, v4);
      sub_10007CDBC(v11, v8);
      result = (*(v5 + 8))(v11, v4);
    }

    while (v21);
  }

  while (1)
  {
    v23 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v23 >= v22)
    {

      return v27;
    }

    v21 = *(v17 + 8 * v23);
    ++v15;
    if (v21)
    {
      v15 = v23;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_100078D90()
{
  sub_1000055B0();
  v2 = sub_10002A104();
  v3 = type metadata accessor for ModelCatalogAsset(v2);
  v4 = sub_100002F44(v3);
  __chkstk_darwin(v4);
  sub_10000A51C();
  __chkstk_darwin(v5);
  sub_100016678();
  __chkstk_darwin(v6);
  sub_10000C1B0();
  v7 = 0;
  sub_100002F28();
  v10 = v9 & v8;
  v12 = (v11 + 63) >> 6;
  if ((v9 & v8) != 0)
  {
    do
    {
      v13 = v7;
LABEL_7:
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      sub_100012D60(v14 | (v13 << 6));
      sub_10000931C();
      sub_100005FEC();
      sub_10000D460();
      sub_10001858C();
      sub_100008B58();
      sub_100011314();
      sub_10000D2AC(v1);
    }

    while (v10);
  }

  while (1)
  {
    v13 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v13 >= v12)
    {

      sub_100002EEC();
      return;
    }

    v10 = *(v0 + 56 + 8 * v13);
    ++v7;
    if (v10)
    {
      v7 = v13;
      goto LABEL_7;
    }
  }

  __break(1u);
}

uint64_t sub_100078F00()
{
  sub_100002BAC();
  v1[10] = v2;
  v1[11] = v0;
  v3 = type metadata accessor for Policy();
  v1[12] = v3;
  sub_100002F44(v3);
  v1[13] = v4;
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v5 = sub_100002C10();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_100078FC4()
{
  v36 = v0;
  sub_100079814();
  if (qword_1001B88D8 != -1)
  {
    sub_100004FDC(&qword_1001B88D8);
  }

  v1 = v0[12];
  v2 = v0[13];
  v3 = type metadata accessor for Logger();
  v0[17] = sub_10000641C(v3, qword_1001B9218);
  v4 = *(v2 + 16);
  v5 = sub_1000062B0();
  v4(v5);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = sub_100002F80(v7);
  v9 = v0[15];
  if (v8)
  {
    v10 = v0[13];
    v11 = v0[12];
    sub_100007698();
    v34 = sub_10000767C();
    v35 = v34;
    v12 = sub_10001AF84(4.8149e-34);
    v4(v12);
    sub_100007B78();
    v13 = String.init<A>(describing:)();
    v15 = v14;
    v16 = *(v10 + 8);
    v16(v9, v11);
    v17 = sub_100004A3C(v13, v15, &v35);

    *(v1 + 4) = v17;
    sub_100003DD0();
    _os_log_impl(v18, v19, v20, v21, v22, 0xCu);
    sub_100003324(v34);
    sub_100002BB8(v34);
    sub_100002F64();
  }

  else
  {
    v23 = v0[12];
    v24 = v0[13];

    v16 = *(v24 + 8);
    v16(v9, v23);
  }

  v0[18] = v16;
  v25 = v0[16];
  v26 = v0[11];
  v27 = sub_100072460(v0[10]);
  v28 = sub_100077254(v27);
  v0[19] = v28;
  sub_100007130(v26 + 200, (v0 + 2));
  v29 = *(v26 + 192);
  sub_10000814C(&qword_1001B8BE0, type metadata accessor for PolicyManager, &unk_100170070);
  v30 = swift_task_alloc();
  v0[20] = v30;
  v30[2] = v25;
  v30[3] = v28;
  v30[4] = v0 + 2;
  v30[5] = v29;
  v31 = swift_task_alloc();
  v0[21] = v31;
  *v31 = v0;
  v31[1] = sub_10007927C;
  v37 = &type metadata for () + 1;
  sub_100003540();

  return withTaskGroup<A, B>(of:returning:isolation:body:)();
}

uint64_t sub_10007927C()
{
  sub_100001ED0();
  sub_100001EF4();
  v2 = *(v1 + 88);
  v3 = *v0;
  sub_100002B9C();
  *v4 = v3;

  return _swift_task_switch(sub_1000793BC, v2, 0);
}

uint64_t sub_1000793BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1000094B0();
  sub_10000636C();
  v11 = v10[16];
  v12 = v10[12];
  v13 = v10[13];
  v14 = v10[11];
  *(v14 + OBJC_IVAR____TtC13modelmanagerd13PolicyManager__assertions) = v10[10];

  v15 = OBJC_IVAR____TtC13modelmanagerd13PolicyManager__currentPolicy;
  sub_1000187D8(v14 + OBJC_IVAR____TtC13modelmanagerd13PolicyManager__currentPolicy);
  (*(v13 + 24))(v14 + v15, v11, v12);
  swift_endAccess();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (sub_100002F80(v17))
  {
    *swift_slowAlloc() = 0;
    sub_100003DD0();
    _os_log_impl(v18, v19, v20, v21, v22, 2u);
    sub_100002F64();
  }

  v23 = v10[18];
  v24 = v10[16];
  v25 = v10[12];

  sub_100003324(v10 + 2);
  v23(v24, v25);

  sub_100001F00();
  sub_100006378();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10);
}

uint64_t sub_100079504@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v6 = sub_100065020(&qword_1001B9480, &qword_1001701A8);
  __chkstk_darwin(v6 - 8);
  v8 = (v24 - v7);
  v25 = a1;
  sub_100127F2C();
  v9 = sub_100065020(&qword_1001B9458, &qword_100174250);
  result = sub_10000C6C0(v8, 1, v9);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v24[1] = v3;
    v12 = *v8;
    v11 = v8[1];
    v13 = *(v9 + 48);
    v14 = type metadata accessor for Policy();
    v15 = *(v14 - 8);
    (*(v15 + 8))(v8 + v13, v14);
    if (qword_1001B88D8 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_10000641C(v16, qword_1001B9218);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v24[0] = a1;
      v20 = a3;
      v21 = v19;
      v22 = swift_slowAlloc();
      v26 = v22;
      *v21 = 136315138;
      v23 = sub_100004A3C(v12, v11, &v26);

      *(v21 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v17, v18, "Trial policy with same name as file policy: %s", v21, 0xCu);
      sub_100003324(v22);

      a3 = v20;
      a1 = v24[0];
    }

    else
    {
    }

    return (*(v15 + 16))(a3, a1, v14);
  }

  return result;
}

void sub_100079814()
{
  sub_1000055B0();
  v103 = v0;
  v2 = v1;
  v98 = v3;
  v4 = 0;
  v5 = type metadata accessor for RequestPriority();
  v6 = sub_100002F04(v5);
  __chkstk_darwin(v6);
  sub_100002B8C();
  v96 = v8 - v7;
  sub_100003B1C();
  v9 = type metadata accessor for AssetPolicy();
  v10 = sub_100002F04(v9);
  __chkstk_darwin(v10);
  sub_100002B8C();
  v94[1] = v12 - v11;
  sub_100003B1C();
  v108 = type metadata accessor for Policy();
  sub_100002BDC();
  v95 = v13;
  __chkstk_darwin(v14);
  sub_100005630();
  v102 = v15 - v16;
  sub_100002F1C();
  __chkstk_darwin(v17);
  v99 = v94 - v18;
  v19 = &qword_10016F740;
  v20 = sub_100065020(&qword_1001B8B78, &qword_10016F740);
  sub_100002BDC();
  v22 = v21;
  sub_100004B1C();
  __chkstk_darwin(v23);
  v115 = v94 - v24;
  sub_100003B1C();
  v25 = type metadata accessor for Assertion.DaemonRep();
  sub_100002BDC();
  v27 = v26;
  __chkstk_darwin(v28);
  sub_100005630();
  v107 = v29 - v30;
  sub_100002F1C();
  __chkstk_darwin(v31);
  v33 = v94 - v32;
  sub_1000081B4();
  v36 = sub_10001B2C0(v34, &qword_1001B8B78, &qword_10016F740, v35);
  v106 = v20;
  v94[0] = v36;
  v37 = Dictionary.init(dictionaryLiteral:)();
  v38 = v2 + 56;
  sub_100002F28();
  sub_100057A30();
  v40 = v39 >> 6;
  v110 = v27 + 16;
  v111 = v27;
  v100 = v22 + 16;
  v101 = v22;
  v104 = (v22 + 8);
  v109 = v27 + 8;

  v97 = 0;
  v113 = v2 + 56;
  v114 = v25;
  v112 = v2;
  v105 = v33;
  if (&qword_10016F740)
  {
LABEL_6:
    while (1)
    {
      (*(v111 + 16))(v33, *(v2 + 48) + *(v111 + 72) * (__clz(__rbit64(v19)) | (v4 << 6)), v25);
      v42 = v115;
      Assertion.DaemonRep.id.getter();
      v43 = Assertion.DaemonRep.policy.getter();
      v25 = v44;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v116 = v37;
      sub_100117378(v42);
      v48 = *(v37 + 2);
      v49 = (v47 & 1) == 0;
      v50 = v48 + v49;
      if (__OFADD__(v48, v49))
      {
        break;
      }

      v51 = v46;
      v52 = v47;
      sub_100065020(&qword_1001B9418, &qword_100170110);
      v33 = &v116;
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v50))
      {
        v33 = v116;
        sub_100117378(v115);
        if ((v52 & 1) != (v54 & 1))
        {
          goto LABEL_36;
        }

        v51 = v53;
      }

      v37 = v116;
      if (v52)
      {
        v55 = (*(v116 + 7) + 16 * v51);
        *v55 = v43;
        v55[1] = v25;

        (*v104)(v115, v106);
        v56 = sub_100045740();
        v57(v56);
      }

      else
      {
        *&v116[8 * (v51 >> 6) + 64] |= 1 << v51;
        v58 = v101;
        v59 = v115;
        v33 = v106;
        (*(v101 + 16))(*(v37 + 6) + *(v101 + 72) * v51, v115, v106);
        v60 = (*(v37 + 7) + 16 * v51);
        *v60 = v43;
        v60[1] = v25;
        (*(v58 + 8))(v59, v33);
        v61 = sub_100045740();
        v62(v61);
        v63 = *(v37 + 2);
        v64 = __OFADD__(v63, 1);
        v65 = v63 + 1;
        if (v64)
        {
          goto LABEL_33;
        }

        *(v37 + 2) = v65;
      }

      v19 &= v19 - 1;
      v2 = v112;
      v38 = v113;
      if (!v19)
      {
        goto LABEL_2;
      }
    }

LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    sub_100004FDC(&qword_1001B88D8);
  }

  else
  {
    while (1)
    {
LABEL_2:
      v41 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      if (v41 >= v40)
      {
        break;
      }

      v19 = *(v38 + 8 * v41);
      ++v4;
      if (v19)
      {
        v4 = v41;
        goto LABEL_6;
      }
    }

    if (qword_1001B88D8 != -1)
    {
      goto LABEL_34;
    }
  }

  v66 = type metadata accessor for Logger();
  sub_10000641C(v66, qword_1001B9218);
  sub_100003170();

  v67 = Logger.logObject.getter();
  v68 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v67, v68))
  {
    sub_100007698();
    v69 = sub_10000767C();
    v116 = v69;
    *v40 = 136315138;
    Dictionary.description.getter();

    v70 = sub_100007B78();
    v73 = sub_100004A3C(v70, v71, v72);

    *(v40 + 4) = v73;
    _os_log_impl(&_mh_execute_header, v67, v68, "Building effective policy from assertions: %s", v40, 0xCu);
    sub_100003324(v69);
    sub_10000706C();
    sub_100002F64();
  }

  else
  {
  }

  v40 = v97;
  v74 = v98;
  v75 = v95;
  default argument 0 of Policy.init(assetPolicy:memoryBudget:cancelPriority:inactiveAssetTimeout:assetTransitionDelay:unentitledBackgroundInferenceWindow:unentitledBackgroundInferenceCap:)();
  default argument 2 of Policy.init(assetPolicy:memoryBudget:cancelPriority:inactiveAssetTimeout:assetTransitionDelay:unentitledBackgroundInferenceWindow:unentitledBackgroundInferenceCap:)();
  v76 = v99;
  Policy.init(assetPolicy:memoryBudget:cancelPriority:inactiveAssetTimeout:assetTransitionDelay:unentitledBackgroundInferenceWindow:unentitledBackgroundInferenceCap:)();
  (*(v75 + 16))(v74, v76, v108);
  sub_100012714();
  v79 = v78 & v77;
  v81 = (v80 + 63) >> 6;
  v82 = (v75 + 8);

  v83 = 0;
  v84 = v102;
  while (1)
  {
    if (!v79)
    {
      v86 = v114;
      v87 = v107;
      while (1)
      {
        v85 = v83 + 1;
        if (__OFADD__(v83, 1))
        {
          goto LABEL_31;
        }

        if (v85 >= v81)
        {
          (*v82)(v99, v108);

          sub_100002EEC();
          return;
        }

        v79 = *(v113 + 8 * v85);
        ++v83;
        if (v79)
        {
          goto LABEL_27;
        }
      }
    }

    v85 = v83;
    v86 = v114;
    v87 = v107;
LABEL_27:
    (*(v111 + 16))(v87, *(v112 + 48) + *(v111 + 72) * (__clz(__rbit64(v79)) | (v85 << 6)), v86);
    sub_10007A00C(v74, v87, v103, v84);
    if (v40)
    {
      break;
    }

    v79 &= v79 - 1;
    v88 = sub_10002EAEC();
    v89(v88);
    (*v82)(v74, v108);
    v90 = sub_100007B78();
    v91(v90);
    v83 = v85;
  }

  v92 = sub_10002EAEC();
  v93(v92);
  (*v82)(v74, v108);
  __break(1u);
LABEL_36:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_10007A00C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v38 = a1;
  v7 = type metadata accessor for Assertion.DaemonRep();
  v36 = *(v7 - 8);
  v37 = v7;
  __chkstk_darwin(v7);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100065020(&qword_1001B9420, &qword_100170118);
  __chkstk_darwin(v10 - 8);
  v12 = &v34 - v11;
  v13 = type metadata accessor for Policy();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = Assertion.DaemonRep.policy.getter();
  v19 = v18;
  v20 = *(a3 + 296);

  sub_100072B78(v17, v19, v20, &type metadata accessor for Policy, v12);

  if (sub_10000C6C0(v12, 1, v13) == 1)
  {
    v35 = a4;
    sub_10000C7F0(v12, &qword_1001B9420);
    if (qword_1001B88D8 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_10000641C(v21, qword_1001B9218);
    v23 = v36;
    v22 = v37;
    (*(v36 + 16))(v9, a2, v37);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v39 = v27;
      *v26 = 136315138;
      v28 = Assertion.DaemonRep.policy.getter();
      v29 = v23;
      v31 = v30;
      (*(v29 + 8))(v9, v37);
      v32 = sub_100004A3C(v28, v31, &v39);

      *(v26 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v24, v25, "Error while building policy: No such policy %s", v26, 0xCu);
      sub_100003324(v27);
    }

    else
    {

      (*(v23 + 8))(v9, v22);
    }

    return (*(v14 + 16))(v35, v38, v13);
  }

  else
  {
    (*(v14 + 32))(v16, v12, v13);
    sub_1000784A4();
    return (*(v14 + 8))(v16, v13);
  }
}

uint64_t sub_10007A404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v6[8] = a3;
  v6[9] = a4;
  v6[7] = a2;
  v7 = type metadata accessor for Policy();
  v6[12] = v7;
  v8 = *(v7 - 8);
  v6[13] = v8;
  v6[14] = *(v8 + 64);
  v6[15] = swift_task_alloc();
  sub_100065020(&qword_1001BB050, &qword_10016F6E0);
  v6[16] = swift_task_alloc();

  return _swift_task_switch(sub_10007A50C, 0, 0);
}

uint64_t sub_10007A50C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v22 = *(v20 + 120);
  v21 = *(v20 + 128);
  v23 = *(v20 + 104);
  v24 = *(v20 + 112);
  v25 = *(v20 + 96);
  v26 = *(v20 + 80);
  v48 = *(v20 + 88);
  v49 = *(v20 + 72);
  v46 = *(v20 + 64);
  v47 = type metadata accessor for TaskPriority();
  sub_100009BFC(v21, 1, 1, v47);
  v45 = *(v23 + 16);
  v27 = sub_100004CA4();
  v28(v27);
  sub_100007130(v26, v20 + 16);
  v44 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v29 = (((v24 + v44 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  *(v30 + 16) = 0;
  *(v30 + 24) = 0;
  v43 = *(v23 + 32);
  v43(v30 + v44, v22, v25);
  *(v30 + ((v24 + v44 + 7) & 0xFFFFFFFFFFFFFFF8)) = v49;
  sub_100004A04((v20 + 16), v30 + v29);

  sub_10007AE90();
  sub_10000C7F0(v21, &qword_1001BB050);
  v31 = sub_100007A04();
  sub_100009BFC(v31, v32, v33, v47);
  v45(v22, v46, v25);
  v34 = swift_allocObject();
  *(v34 + 16) = 0;
  *(v34 + 24) = 0;
  v43(v34 + v44, v22, v25);
  *(v34 + ((v24 + v44 + 7) & 0xFFFFFFFFFFFFFFF8)) = v49;
  *(v34 + v29) = v48;

  sub_10007AE90();
  sub_10000C7F0(v21, &qword_1001BB050);
  v35 = swift_task_alloc();
  *(v20 + 136) = v35;
  v36 = sub_100065020(&qword_1001B9408, &qword_100174090);
  *v35 = v20;
  v35[1] = sub_10007A7D0;

  return TaskGroup.awaitAllRemainingTasks(isolation:)(0, 0, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_10007A7D0()
{
  sub_100002BAC();
  sub_100001EF4();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;

  sub_100001F00();

  return v3();
}

uint64_t sub_10007A8E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[10] = a4;
  v7 = type metadata accessor for AssetPolicy();
  v6[13] = v7;
  v6[14] = *(v7 - 8);
  v6[15] = swift_task_alloc();
  v8 = type metadata accessor for Policy();
  v6[16] = v8;
  v6[17] = *(v8 - 8);
  v6[18] = swift_task_alloc();
  v6[19] = _s6PolicyVMa_0(0);
  v6[20] = swift_task_alloc();

  return _swift_task_switch(sub_10007AA64, 0, 0);
}

uint64_t sub_10007AA64()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[17];
  v4 = v0[18];
  v5 = v0[16];
  v21 = v0[15];
  v22 = v5;
  v6 = v0[14];
  v24 = v0[13];
  v25 = v0[12];
  v23 = v0[11];
  v20 = v0[10];
  type metadata accessor for _OSActivity();
  v0[21] = swift_initStackObject();
  v0[22] = sub_10001B160("Setting AssetManager policy", 27, 2);
  (*(v3 + 16))(v4, v20, v5);

  Policy.assetPolicy.getter();
  v7 = Policy.memoryBudget.getter();
  LOBYTE(v20) = v8;
  v9 = Policy.inactiveAssetTimeout.getter();
  v11 = v10;
  v12 = Policy.assetTransitionDelay.getter();
  v19 = v13;
  (*(v3 + 8))(v4, v22);
  (*(v6 + 32))(v1, v21, v24);
  v14 = v1 + v2[5];
  *v14 = v7;
  *(v14 + 8) = v20 & 1;
  *(v1 + v2[8]) = v23;
  v15 = *&v9;
  if (v11)
  {
    v15 = 900.0;
  }

  *(v1 + v2[6]) = v15;
  v16 = *&v12;
  if (v19)
  {
    v16 = 10.0;
  }

  *(v1 + v2[7]) = v16;
  sub_100003370(v25, v25[3]);
  v17 = swift_task_alloc();
  v0[23] = v17;
  *v17 = v0;
  v17[1] = sub_10007AC94;

  return sub_1000C92F8();
}

uint64_t sub_10007AC94()
{
  sub_100002BAC();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;

  return _swift_task_switch(sub_10007ADB0, 0, 0);
}

uint64_t sub_10007ADB0()
{
  sub_100003884();
  sub_100005F70();
  sub_10000D2AC(v0);
  sub_1000187D8(v1 + 24);
  os_activity_scope_leave((v1 + 24));
  swift_endAccess();

  sub_100001F00();

  return v2();
}

void sub_10007AE90()
{
  sub_1000134E8();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_100065020(&qword_1001BB050, &qword_10016F6E0);
  sub_100002F04(v8);
  sub_100004B1C();
  __chkstk_darwin(v9);
  v11 = v20 - v10;
  sub_10001E72C(v7, v20 - v10, &qword_1001BB050, &qword_10016F6E0);
  v12 = type metadata accessor for TaskPriority();
  if (sub_10000C6C0(v11, 1, v12) == 1)
  {
    sub_10000C7F0(v11, &qword_1001BB050);
  }

  else
  {
    TaskPriority.rawValue.getter();
    sub_100006098();
    (*(v13 + 8))(v11, v12);
  }

  if (*(v3 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v14 = dispatch thunk of Actor.unownedExecutor.getter();
    v16 = v15;
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  v17 = *v1;
  sub_100002EE0();
  v18 = swift_allocObject();
  *(v18 + 16) = v5;
  *(v18 + 24) = v3;
  v19 = (v16 | v14);
  if (v16 | v14)
  {
    v21[0] = 0;
    v21[1] = 0;
    v19 = v21;
    v21[2] = v14;
    v21[3] = v16;
  }

  v20[1] = 1;
  v20[2] = v19;
  v20[3] = v17;
  swift_task_create();

  sub_100009C38();
}

uint64_t sub_10007B06C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[10] = a4;
  v7 = type metadata accessor for RequestPriority();
  v6[13] = v7;
  v6[14] = *(v7 - 8);
  v6[15] = swift_task_alloc();
  v8 = type metadata accessor for Policy();
  v6[16] = v8;
  v6[17] = *(v8 - 8);
  v6[18] = swift_task_alloc();
  v6[19] = _s6PolicyVMa(0);
  v6[20] = swift_task_alloc();

  return _swift_task_switch(sub_10007B1E8, 0, 0);
}

uint64_t sub_10007B1E8()
{
  v1 = v0[20];
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[16];
  v19 = v0[15];
  v20 = v0[19];
  v5 = v0[14];
  v21 = v0[13];
  v6 = v0[10];
  v18 = v0[11];
  type metadata accessor for _OSActivity();
  v0[21] = swift_initStackObject();
  v0[22] = sub_10001B160("Setting RequestManager policy", 29, 2);
  (*(v3 + 16))(v2, v6, v4);

  Policy.cancelPriority.getter();
  v7 = Policy.unentitledBackgroundInferenceWindow.getter();
  v9 = v8;
  v10 = Policy.unentitledBackgroundInferenceCap.getter();
  v12 = v11;
  (*(v3 + 8))(v2, v4);
  *(v1 + v20[7]) = v18;
  (*(v5 + 32))(v1, v19, v21);
  v13 = *&v7;
  if (v9)
  {
    v13 = 86400.0;
  }

  *(v1 + v20[5]) = v13;
  v14 = 204;
  if ((v12 & 1) == 0)
  {
    v14 = v10;
  }

  *(v1 + v20[6]) = v14;
  v15 = swift_task_alloc();
  v0[23] = v15;
  *v15 = v0;
  v15[1] = sub_10007B3CC;
  sub_100003D04();

  return sub_10013B4B8();
}

uint64_t sub_10007B3CC()
{
  sub_100002BAC();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;

  return _swift_task_switch(sub_10007B4E8, 0, 0);
}

uint64_t sub_10007B4E8()
{
  sub_100003884();
  sub_100005F70();
  sub_10000D2AC(v0);
  sub_1000187D8(v1 + 24);
  os_activity_scope_leave((v1 + 24));
  swift_endAccess();

  sub_100001F00();

  return v2();
}

uint64_t sub_10007B5C8(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_10008D1C4();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

  if (!v2)
  {
    return v4;
  }

  return result;
}

void sub_10007B664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_10000355C();
  if (v31 == v32 || (v33 = v32, *(v31 + 16) != *(v32 + 16)))
  {
LABEL_21:
    sub_100005F10();
  }

  else
  {
    v34 = 0;
    v35 = v31 + 56;
    sub_10002B00C();
    sub_100057A30();
    v37 = v36 >> 6;
    if (v30)
    {
      while (2)
      {
        sub_1000137E0();
LABEL_10:
        v43 = (*(v38 + 48) + 16 * (v39 | (v34 << 6)));
        v45 = *v43;
        v44 = v43[1];
        Hasher.init(_seed:)();

        String.hash(into:)();
        Hasher._finalize()();
        sub_100012A00();
        v48 = ~v47;
        do
        {
          v49 = v46 & v48;
          if (((*(v33 + 56 + (((v46 & v48) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v46 & v48)) & 1) == 0)
          {

            goto LABEL_21;
          }

          v50 = (*(v33 + 48) + 16 * v49);
          if (*v50 == v45 && v50[1] == v44)
          {
            break;
          }

          v52 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v46 = v49 + 1;
        }

        while ((v52 & 1) == 0);

        if (v30)
        {
          continue;
        }

        break;
      }
    }

    v40 = v34;
    while (1)
    {
      v34 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        break;
      }

      if (v34 >= v37)
      {
        goto LABEL_21;
      }

      ++v40;
      if (*(v35 + 8 * v34))
      {
        sub_1000062A0();
        v30 = v42 & v41;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t sub_10007B7D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Assertion.DaemonRep();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v43 = &v32 - v10;
  result = __chkstk_darwin(v9);
  v13 = &v32 - v12;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v14 = 0;
  v15 = *(a1 + 56);
  v33 = a1 + 56;
  v16 = 1 << *(a1 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v39 = v5 + 32;
  v41 = a2 + 56;
  v42 = v5 + 16;
  v20 = (v5 + 8);
  v34 = v19;
  v35 = &v32 - v12;
  v36 = v5;
  v37 = a1;
  if (v18)
  {
    while (2)
    {
      v21 = __clz(__rbit64(v18));
      v38 = (v18 - 1) & v18;
LABEL_13:
      v24 = *(a1 + 48);
      v40 = *(v5 + 72);
      v25 = *(v5 + 16);
      v25(v13, v24 + v40 * (v21 | (v14 << 6)), v4);
      (*(v5 + 32))(v43, v13, v4);
      sub_10000814C(&qword_1001B8BA0, &type metadata accessor for Assertion.DaemonRep, &protocol conformance descriptor for Assertion.DaemonRep);
      v26 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v27 = a2;
      v28 = ~(-1 << *(a2 + 32));
      do
      {
        v29 = v26 & v28;
        if (((*(v41 + (((v26 & v28) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v26 & v28)) & 1) == 0)
        {
          (*v20)(v43, v4);
          return 0;
        }

        v25(v8, *(v27 + 48) + v29 * v40, v4);
        sub_10000814C(&qword_1001B8BA8, &type metadata accessor for Assertion.DaemonRep, &protocol conformance descriptor for Assertion.DaemonRep);
        v30 = dispatch thunk of static Equatable.== infix(_:_:)();
        v31 = *v20;
        (*v20)(v8, v4);
        v26 = v29 + 1;
      }

      while ((v30 & 1) == 0);
      result = (v31)(v43, v4);
      a2 = v27;
      v5 = v36;
      a1 = v37;
      v19 = v34;
      v13 = v35;
      v18 = v38;
      if (v38)
      {
        continue;
      }

      break;
    }
  }

  v22 = v14;
  while (1)
  {
    v14 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v14 >= v19)
    {
      return 1;
    }

    v23 = *(v33 + 8 * v14);
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v38 = (v23 - 1) & v23;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_10007BB54()
{
  sub_1000055B0();
  v4 = sub_10000C1A0();
  type metadata accessor for ModelCatalogAsset(v4);
  sub_100002BDC();
  __chkstk_darwin(v5);
  sub_100005630();
  v8 = (v6 - v7);
  __chkstk_darwin(v9);
  v110 = (v97 - v10);
  sub_100002F1C();
  __chkstk_darwin(v11);
  v13 = v97 - v12;
  if (v1 == v0 || *(v1 + 16) != *(v0 + 16))
  {
LABEL_125:
    sub_100002EEC();
  }

  else
  {
    sub_10002B00C();
    v19 = -1;
    if (v16 < 64)
    {
      v20 = ~(-1 << v16);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & v15;
    v22 = (v16 + 63) >> 6;
    v109 = v0 + 56;
    if (v21)
    {
      do
      {
        sub_100014454(v14);
        v26 = __clz(__rbit64(v25));
        v97[0] = (v25 - 1) & v25;
LABEL_13:
        v98 = v23;
        v101 = v1;
        v100 = v24;
        v108 = *(v24 + 72);
        sub_100012D60(v26 | (v23 << 6));
        sub_10000931C();
        v99 = v13;
        sub_10000D460();
        Hasher.init(_seed:)();
        sub_10000C228(&v113);
        v31 = Hasher._finalize()();
        v32 = -1 << *(v0 + 32);
        v33 = v31 & ~v32;
        if (((*(v109 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
        {
LABEL_124:
          sub_10000D2AC(v110);
          goto LABEL_125;
        }

        v106 = ~v32;
        v107 = v0;
        v34 = *v110;
        v111 = v110[1];
        v112 = v34;
        while (1)
        {
          sub_100003B04();
          sub_10000931C();
          v35 = *v8 == v112 && v8[1] == v111;
          if (!v35 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            goto LABEL_119;
          }

          v36 = v8[2];
          v37 = v110[2];
          v38 = *(v36 + 16);
          if (v38 != *(v37 + 16))
          {
            goto LABEL_119;
          }

          if (v38)
          {
            v39 = v36 == v37;
          }

          else
          {
            v39 = 1;
          }

          if (!v39)
          {
            v40 = (v36 + 40);
            v19 = v37 + 40;
            do
            {
              if (!v38)
              {
                __break(1u);
LABEL_127:
                __break(1u);
                goto LABEL_128;
              }

              v41 = *(v40 - 1) == *(v19 - 8) && *v40 == *v19;
              if (!v41 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
              {
                goto LABEL_119;
              }

              v40 += 2;
              v19 += 16;
            }

            while (--v38);
          }

          v42 = v8[3];
          v43 = v110[3];
          v44 = *(v42 + 16);
          if (v44 != *(v43 + 16))
          {
            goto LABEL_119;
          }

          if (v44)
          {
            v45 = v42 == v43;
          }

          else
          {
            v45 = 1;
          }

          if (!v45)
          {
            sub_100003290();
            if (v56)
            {
              v62 = v57 == v58;
            }

            else
            {
              v62 = 0;
            }

            v104 = v44;
            if (!v62)
            {
              sub_100012E28();
              v2 = v8;
              _stringCompareWithSmolCheck(_:_:expecting:)();
              sub_10000CC5C();
              v44 = v104;
              if ((v63 & 1) == 0)
              {
                goto LABEL_119;
              }
            }

            v64 = 0;
            v65 = 1;
            v103 = v43;
            if (v19)
            {
LABEL_75:
              if (v3)
              {
                if (v60 != v61 || v19 != v3)
                {
                  if (sub_1000267D0() & 1) == 0 || ((v2 ^ v19))
                  {
                    goto LABEL_119;
                  }

                  goto LABEL_85;
                }

                goto LABEL_84;
              }
            }

            else
            {
              while (!v3)
              {
LABEL_84:
                if ((v2 ^ v59))
                {
                  goto LABEL_119;
                }

LABEL_85:
                if (v44 == v65)
                {
                  goto LABEL_39;
                }

                if (v65 >= v44)
                {
                  goto LABEL_127;
                }

                sub_100007F94();
                if (!v35 || v67 != v68)
                {
                  v105 = v64;
                  v70 = v42;
                  v71 = v2;
                  v72 = v8;
                  v73 = v59;
                  v74 = v65;
                  v75 = v3;
                  v76 = v33;
                  v77 = v60;
                  v78 = v61;
                  v79 = _stringCompareWithSmolCheck(_:_:expecting:)();
                  v61 = v78;
                  v60 = v77;
                  v33 = v76;
                  v3 = v75;
                  v65 = v74;
                  v59 = v73;
                  v8 = v72;
                  v2 = v71;
                  v42 = v70;
                  v44 = v104;
                  v64 = v105;
                  if ((v79 & 1) == 0)
                  {
                    goto LABEL_119;
                  }
                }

                v64 += 40;
                ++v65;
                if (v19)
                {
                  goto LABEL_75;
                }
              }
            }

            goto LABEL_119;
          }

LABEL_39:
          v46 = v8[4];
          v47 = v110[4];
          v48 = *(v46 + 16);
          if (v48 != *(v47 + 16))
          {
            goto LABEL_119;
          }

          if (!v48 || v46 == v47)
          {
            break;
          }

          sub_100003290();
          if (v80)
          {
            v86 = v81 == v82;
          }

          else
          {
            v86 = 0;
          }

          v103 = v48;
          if (!v86)
          {
            sub_100012E28();
            v2 = v87;
            _stringCompareWithSmolCheck(_:_:expecting:)();
            sub_10000CC5C();
            v48 = v103;
            if ((v88 & 1) == 0)
            {
              goto LABEL_119;
            }
          }

          v89 = 0;
          v90 = 1;
          if (v19)
          {
LABEL_100:
            if (v3)
            {
              if (v84 != v85 || v19 != v3)
              {
                if (sub_1000267D0() & 1) == 0 || ((v2 ^ v19))
                {
                  goto LABEL_119;
                }

                goto LABEL_110;
              }

              goto LABEL_109;
            }
          }

          else
          {
            while (!v3)
            {
LABEL_109:
              if ((v2 ^ v83))
              {
                break;
              }

LABEL_110:
              if (v48 == v90)
              {
                goto LABEL_45;
              }

              if (v90 >= v48)
              {
                goto LABEL_129;
              }

              sub_100007F94();
              if (!v35 || v92 != v93)
              {
                v104 = v89;
                v105 = v90;
                sub_100012E28();
                v2 = v95;
                _stringCompareWithSmolCheck(_:_:expecting:)();
                sub_10000CC5C();
                v48 = v103;
                v89 = v104;
                v90 = v105;
                if ((v96 & 1) == 0)
                {
                  break;
                }
              }

              v89 += 40;
              ++v90;
              if (v19)
              {
                goto LABEL_100;
              }
            }
          }

LABEL_119:
          sub_100011314();
          sub_10000D2AC(v8);
          v33 = (v33 + 1) & v106;
          if (((*(v109 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
          {
            goto LABEL_124;
          }
        }

LABEL_45:
        if ((static AssetCost.== infix(_:_:)() & 1) == 0)
        {
          goto LABEL_119;
        }

        sub_100019A08();
        if (!v35)
        {
          goto LABEL_119;
        }

        sub_100019A08();
        if (!v35)
        {
          goto LABEL_119;
        }

        sub_100019A08();
        if (!v35)
        {
          goto LABEL_119;
        }

        sub_100019A08();
        if (!v35)
        {
          goto LABEL_119;
        }

        sub_100019A08();
        if (!v35)
        {
          goto LABEL_119;
        }

        v50 = *(v102 + 56);
        v51 = *(v8 + v50);
        v52 = *(v110 + v50);
        v53 = *(v51 + 16);
        if (v53 != *(v52 + 16))
        {
          goto LABEL_119;
        }

        if (v53 && v51 != v52)
        {
          v54 = (v51 + 40);
          v19 = v52 + 40;
          do
          {
            v55 = *(v54 - 1) == *(v19 - 8) && *v54 == *v19;
            if (!v55 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              goto LABEL_119;
            }

            v54 += 2;
            v19 += 16;
          }

          while (--v53);
        }

        sub_100019A08();
        if (!v35)
        {
          goto LABEL_119;
        }

        sub_100007190();
        sub_10000D2AC(v8);
        sub_10000D2AC(v110);
        v0 = v107;
        v1 = v101;
        v14 = v102;
        v13 = v99;
        v17 = v98;
        v18 = v97[2];
        v19 = -1;
        v22 = v97[1];
      }

      while (v97[0]);
    }

    v27 = v17;
    while (1)
    {
      v28 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v28 >= v22)
      {
        goto LABEL_125;
      }

      ++v27;
      if (*(v18 + 8 * v28))
      {
        sub_100014454(v14);
        sub_1000062A0();
        v97[0] = v30 & v29;
        goto LABEL_13;
      }
    }

LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
    __break(1u);
  }
}

Swift::Int sub_10007C228(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v45 = type metadata accessor for Policy();
  v5 = *(v45 - 8);
  __chkstk_darwin(v45);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_100065020(&qword_1001B9478, &qword_1001701A0);
  v42 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (!*(v7 + 16))
  {
LABEL_32:

LABEL_33:
    *v3 = v9;
    return result;
  }

  v38 = v2;
  v10 = 0;
  v11 = (v7 + 64);
  v12 = 1 << *(v7 + 32);
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & *(v7 + 64);
  v15 = (v12 + 63) >> 6;
  v39 = (v5 + 16);
  v40 = v7;
  v41 = v5;
  v43 = (v5 + 32);
  v16 = result + 64;
  if (!v14)
  {
LABEL_7:
    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v19 = v11[v10];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v14 = (v19 - 1) & v19;
        goto LABEL_12;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_33;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      sub_100011624(0, (v36 + 63) >> 6, v11);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
    goto LABEL_32;
  }

  while (1)
  {
    v17 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
LABEL_12:
    v20 = v17 | (v10 << 6);
    v21 = *(v7 + 56);
    v22 = (*(v7 + 48) + 16 * v20);
    v24 = *v22;
    v23 = v22[1];
    v25 = *(v41 + 72);
    v26 = v21 + v25 * v20;
    if (v42)
    {
      (*v43)(v44, v26, v45);
    }

    else
    {
      (*v39)(v44, v26, v45);
    }

    Hasher.init(_seed:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v27 = -1 << *(v9 + 32);
    v28 = result & ~v27;
    v29 = v28 >> 6;
    if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
    {
      break;
    }

    v30 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
    *(v16 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
    v35 = (*(v9 + 48) + 16 * v30);
    *v35 = v24;
    v35[1] = v23;
    result = (*v43)(*(v9 + 56) + v25 * v30, v44, v45);
    ++*(v9 + 16);
    v7 = v40;
    if (!v14)
    {
      goto LABEL_7;
    }
  }

  v31 = 0;
  v32 = (63 - v27) >> 6;
  while (++v29 != v32 || (v31 & 1) == 0)
  {
    v33 = v29 == v32;
    if (v29 == v32)
    {
      v29 = 0;
    }

    v31 |= v33;
    v34 = *(v16 + 8 * v29);
    if (v34 != -1)
    {
      v30 = __clz(__rbit64(~v34)) + (v29 << 6);
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_10007C5A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for Policy();
  (*(*(v7 - 8) + 16))(a1, a4, v7);

  return a2;
}

uint64_t sub_10007C628@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(sub_100065020(&qword_1001B9458, &qword_100174250) + 48);
  v5 = sub_100065020(&qword_1001B9460, &qword_100170188);
  result = sub_10007C5A8(a2 + *(v5 + 48), *a1, a1[1], a1 + v4);
  *a2 = result;
  a2[1] = v7;
  return result;
}

uint64_t sub_10007C698(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void *a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t, uint64_t, uint64_t))
{
  v80 = a8;
  v75 = a7;
  v81 = a6;
  v87 = a5;
  v86 = a4;
  sub_10002A104();
  v11 = type metadata accessor for Policy();
  sub_100002BDC();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_100005630();
  v17 = v15 - v16;
  v19 = __chkstk_darwin(v18);
  v21 = v73 - v20;
  __chkstk_darwin(v19);
  sub_10000C1B0();
  v22 = sub_100065020(&qword_1001B9468, &qword_100170190);
  sub_100002F04(v22);
  sub_100004B1C();
  __chkstk_darwin(v23);
  v25 = (v73 - v24);
  v26 = sub_1000062B0();
  sub_10008CAB0(v26, v27, a3, v28);
  v73[0] = v93;
  v85 = (v13 + 32);
  v77 = v13 + 16;
  v78 = (v13 + 8);
  v83 = v13;
  v76 = (v13 + 40);
  v74 = v8;

  v73[1] = a3;

  v79 = v21;
  for (i = v25; ; v25 = i)
  {
    sub_10008CAEC(v25);
    v29 = sub_100065020(&qword_1001B9460, &qword_100170188);
    if (sub_10000C6C0(v25, 1, v29) == 1)
    {
      sub_100007F18(v92);
      v60 = sub_10000C978();
      v61(v60);
    }

    v30 = v17;
    v31 = v9;
    v33 = *v25;
    v32 = v25[1];
    v90 = *v25;
    v91 = v32;
    v34 = *v85;
    v35 = v31;
    v36 = v11;
    (*v85)();
    v37 = *v87;
    v38 = sub_100005FEC();
    v41 = sub_1000236F4(v38, v39);
    v42 = v37[2];
    v43 = (v40 & 1) == 0;
    v44 = v42 + v43;
    if (__OFADD__(v42, v43))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      v67 = sub_10000C978();
      v68(v67);
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_21;
    }

    v45 = v40;
    if (v37[3] >= v44)
    {
      if ((v86 & 1) == 0)
      {
        sub_100065020(&qword_1001B9470, &qword_100170198);
        _NativeDictionary.copy()();
      }
    }

    else
    {
      sub_10007C228(v44, v86 & 1);
      v46 = sub_100005FEC();
      v48 = sub_1000236F4(v46, v47);
      if ((v45 & 1) != (v49 & 1))
      {
        goto LABEL_20;
      }

      v41 = v48;
    }

    v50 = *v87;
    if (v45)
    {
      break;
    }

    v50[(v41 >> 6) + 8] |= 1 << v41;
    v55 = (v50[6] + 16 * v41);
    *v55 = v33;
    v55[1] = v32;
    v56 = v50[7] + *(v83 + 72) * v41;
    v9 = v35;
    v11 = v36;
    (v34)(v56, v35, v36);
    v57 = v50[2];
    v58 = __OFADD__(v57, 1);
    v59 = v57 + 1;
    if (v58)
    {
      goto LABEL_19;
    }

    v50[2] = v59;
    v17 = v30;
LABEL_14:
    v86 = 1;
  }

  v51 = *(v83 + 72) * v41;
  v17 = v30;
  (*(v83 + 16))(v30, v50[7] + v51, v36);
  v52 = v79;
  v9 = v35;
  v53 = v84;
  v80(v17, v35, v81);
  v84 = v53;
  if (!v53)
  {
    v54 = *v78;
    (*v78)(v17, v36);
    v54(v35, v36);
    v11 = v36;

    (*v76)(v50[7] + v51, v52, v36);
    goto LABEL_14;
  }

  v63 = *v78;
  (*v78)(v17, v36);
  v94 = v84;
  swift_errorRetain();
  sub_100065020(&qword_1001B8F60, &unk_100171260);
  if ((swift_dynamicCast() & 1) == 0)
  {

    v64 = sub_100004CA4();
    (v63)(v64);
    sub_100007F18(v92);

    v65 = sub_10000C978();
    return v66(v65);
  }

LABEL_21:
  v88 = 0;
  v89 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  v69._object = 0x8000000100175B60;
  v69._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v69);
  _print_unlocked<A, B>(_:_:)();
  v70._countAndFlagsBits = 39;
  v70._object = 0xE100000000000000;
  String.append(_:)(v70);
  v71 = sub_10000C978();
  v72(v71);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_10007CC90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_10000355C();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = *v30;
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._finalize()();
  sub_100011E24();
  v40 = ~v39;
  while (1)
  {
    v41 = v38 & v40;
    if (((1 << (v38 & v40)) & *(v37 + 56 + (((v38 & v40) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      break;
    }

    v42 = (*(v37 + 48) + 16 * v41);
    v43 = *v42 == v34 && v42[1] == v32;
    if (v43 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v44 = (*(v37 + 48) + 16 * v41);
      v45 = v44[1];
      *v36 = *v44;
      v36[1] = v45;

      goto LABEL_11;
    }

    v38 = v41 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v49 = *v30;

  v47 = sub_10000CF04();
  sub_1000837F0(v47, v48, v41, isUniquelyReferenced_nonNull_native);
  *v30 = v49;
  *v36 = v34;
  v36[1] = v32;
LABEL_11:
  sub_100005F10();
}

BOOL sub_10007CDBC(char *a1, char *a2)
{
  v22 = a1;
  v4 = type metadata accessor for Assertion.DaemonRep();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v8 = *v2;
  sub_10000814C(&qword_1001B8BA0, &type metadata accessor for Assertion.DaemonRep, &protocol conformance descriptor for Assertion.DaemonRep);
  v27 = a2;
  v9 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v24 = v8;
  v25 = v8 + 56;
  v10 = ~(-1 << *(v8 + 32));
  v26 = v5 + 16;
  v23 = v5 + 8;
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v25 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      v17 = v21;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = v27;
      (*(v5 + 16))(v7, v27, v4);
      v28 = *v17;
      sub_100083958(v7, v11, isUniquelyReferenced_nonNull_native);
      *v17 = v28;
      (*(v5 + 32))(v22, v19, v4);
      return v12 == 0;
    }

    v13 = *(v5 + 72) * v11;
    v14 = *(v5 + 16);
    v14(v7, *(v24 + 48) + v13, v4);
    sub_10000814C(&qword_1001B8BA8, &type metadata accessor for Assertion.DaemonRep, &protocol conformance descriptor for Assertion.DaemonRep);
    v15 = dispatch thunk of static Equatable.== infix(_:_:)();
    v16 = *(v5 + 8);
    v16(v7, v4);
    if (v15)
    {
      break;
    }

    v9 = v11 + 1;
  }

  v16(v27, v4);
  v14(v22, *(v24 + 48) + v13, v4);
  return v12 == 0;
}

BOOL sub_10007D084(char *a1, char *a2)
{
  v22 = a1;
  v4 = sub_100065020(&qword_1001B8B78, &qword_10016F740);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - v6;
  v21 = v2;
  v8 = *v2;
  sub_10001B2C0(&qword_1001B8B88, &qword_1001B8B78, &qword_10016F740, &protocol conformance descriptor for UUIDIdentifier<A>);
  v27 = a2;
  v9 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v24 = v8;
  v25 = v8 + 56;
  v10 = ~(-1 << *(v8 + 32));
  v26 = v5 + 16;
  v23 = v5 + 8;
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v25 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      v17 = v21;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = v27;
      (*(v5 + 16))(v7, v27, v4);
      v28 = *v17;
      sub_100083C08(v7, v11, isUniquelyReferenced_nonNull_native);
      *v17 = v28;
      (*(v5 + 32))(v22, v19, v4);
      return v12 == 0;
    }

    v13 = *(v5 + 72) * v11;
    v14 = *(v5 + 16);
    v14(v7, *(v24 + 48) + v13, v4);
    sub_10001B2C0(&qword_1001B8B90, &qword_1001B8B78, &qword_10016F740, &protocol conformance descriptor for UUIDIdentifier<A>);
    v15 = dispatch thunk of static Equatable.== infix(_:_:)();
    v16 = *(v5 + 8);
    v16(v7, v4);
    if (v15)
    {
      break;
    }

    v9 = v11 + 1;
  }

  v16(v27, v4);
  v14(v22, *(v24 + 48) + v13, v4);
  return v12 == 0;
}

void sub_10007D4FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_10000355C();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v39 = *v30;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v36);
  v40 = Hasher._finalize()();
  v41 = ~(-1 << *(v39 + 32));
  while (1)
  {
    v42 = v40 & v41;
    if (((1 << (v40 & v41)) & *(v39 + 56 + (((v40 & v41) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v47 = *v30;

      sub_100084074(v36, v34, v32, v42, isUniquelyReferenced_nonNull_native);
      *v30 = v47;
      *v38 = v36;
      *(v38 + 8) = v34;
      *(v38 + 16) = v32;
      goto LABEL_7;
    }

    if (*(*(v39 + 48) + 24 * v42) == v36)
    {
      break;
    }

    v40 = v42 + 1;
  }

  v44 = *(v39 + 48) + 24 * v42;
  v45 = *(v44 + 8);
  v46 = *(v44 + 16);
  *v38 = *v44;
  *(v38 + 8) = v45;
  *(v38 + 16) = v46;

LABEL_7:
  sub_100005F10();
}

BOOL sub_10007D654(char *a1, char *a2)
{
  v22 = a1;
  v4 = type metadata accessor for StateDump.AssetState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v8 = *v2;
  sub_10000814C(&qword_1001B95C8, &type metadata accessor for StateDump.AssetState, &protocol conformance descriptor for StateDump.AssetState);
  v27 = a2;
  v9 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v24 = v8;
  v25 = v8 + 56;
  v10 = ~(-1 << *(v8 + 32));
  v26 = v5 + 16;
  v23 = v5 + 8;
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v25 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      v17 = v21;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = v27;
      (*(v5 + 16))(v7, v27, v4);
      v28 = *v17;
      sub_1000841D4(v7, v11, isUniquelyReferenced_nonNull_native);
      *v17 = v28;
      (*(v5 + 32))(v22, v19, v4);
      return v12 == 0;
    }

    v13 = *(v5 + 72) * v11;
    v14 = *(v5 + 16);
    v14(v7, *(v24 + 48) + v13, v4);
    sub_10000814C(&qword_1001B95D0, &type metadata accessor for StateDump.AssetState, &protocol conformance descriptor for StateDump.AssetState);
    v15 = dispatch thunk of static Equatable.== infix(_:_:)();
    v16 = *(v5 + 8);
    v16(v7, v4);
    if (v15)
    {
      break;
    }

    v9 = v11 + 1;
  }

  v16(v27, v4);
  v14(v22, *(v24 + 48) + v13, v4);
  return v12 == 0;
}

BOOL sub_10007D91C(char *a1, char *a2)
{
  v22 = a1;
  v4 = type metadata accessor for StateDump.SessionState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v8 = *v2;
  sub_10000814C(&qword_1001B95B0, &type metadata accessor for StateDump.SessionState, &protocol conformance descriptor for StateDump.SessionState);
  v27 = a2;
  v9 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v24 = v8;
  v25 = v8 + 56;
  v10 = ~(-1 << *(v8 + 32));
  v26 = v5 + 16;
  v23 = v5 + 8;
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v25 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      v17 = v21;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = v27;
      (*(v5 + 16))(v7, v27, v4);
      v28 = *v17;
      sub_100084484(v7, v11, isUniquelyReferenced_nonNull_native);
      *v17 = v28;
      (*(v5 + 32))(v22, v19, v4);
      return v12 == 0;
    }

    v13 = *(v5 + 72) * v11;
    v14 = *(v5 + 16);
    v14(v7, *(v24 + 48) + v13, v4);
    sub_10000814C(&qword_1001B95B8, &type metadata accessor for StateDump.SessionState, &protocol conformance descriptor for StateDump.SessionState);
    v15 = dispatch thunk of static Equatable.== infix(_:_:)();
    v16 = *(v5 + 8);
    v16(v7, v4);
    if (v15)
    {
      break;
    }

    v9 = v11 + 1;
  }

  v16(v27, v4);
  v14(v22, *(v24 + 48) + v13, v4);
  return v12 == 0;
}

BOOL sub_10007DBE4(char *a1, char *a2)
{
  v22 = a1;
  v4 = type metadata accessor for StateDump.RequestState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v8 = *v2;
  sub_10000814C(&qword_1001B9598, &type metadata accessor for StateDump.RequestState, &protocol conformance descriptor for StateDump.RequestState);
  v27 = a2;
  v9 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v24 = v8;
  v25 = v8 + 56;
  v10 = ~(-1 << *(v8 + 32));
  v26 = v5 + 16;
  v23 = v5 + 8;
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v25 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      v17 = v21;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = v27;
      (*(v5 + 16))(v7, v27, v4);
      v28 = *v17;
      sub_100084734(v7, v11, isUniquelyReferenced_nonNull_native);
      *v17 = v28;
      (*(v5 + 32))(v22, v19, v4);
      return v12 == 0;
    }

    v13 = *(v5 + 72) * v11;
    v14 = *(v5 + 16);
    v14(v7, *(v24 + 48) + v13, v4);
    sub_10000814C(&qword_1001B95A0, &type metadata accessor for StateDump.RequestState, &protocol conformance descriptor for StateDump.RequestState);
    v15 = dispatch thunk of static Equatable.== infix(_:_:)();
    v16 = *(v5 + 8);
    v16(v7, v4);
    if (v15)
    {
      break;
    }

    v9 = v11 + 1;
  }

  v16(v27, v4);
  v14(v22, *(v24 + 48) + v13, v4);
  return v12 == 0;
}

BOOL sub_10007DEAC(char *a1, char *a2)
{
  v22 = a1;
  v4 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - v6;
  v21 = v2;
  v8 = *v2;
  sub_10001B2C0(&qword_1001B9580, &qword_1001B8F48, &qword_10016FB30, &protocol conformance descriptor for UUIDIdentifier<A>);
  v27 = a2;
  v9 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v24 = v8;
  v25 = v8 + 56;
  v10 = ~(-1 << *(v8 + 32));
  v26 = v5 + 16;
  v23 = v5 + 8;
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v25 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      v17 = v21;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = v27;
      (*(v5 + 16))(v7, v27, v4);
      v28 = *v17;
      sub_1000849E4(v7, v11, isUniquelyReferenced_nonNull_native);
      *v17 = v28;
      (*(v5 + 32))(v22, v19, v4);
      return v12 == 0;
    }

    v13 = *(v5 + 72) * v11;
    v14 = *(v5 + 16);
    v14(v7, *(v24 + 48) + v13, v4);
    sub_10001B2C0(&qword_1001B9588, &qword_1001B8F48, &qword_10016FB30, &protocol conformance descriptor for UUIDIdentifier<A>);
    v15 = dispatch thunk of static Equatable.== infix(_:_:)();
    v16 = *(v5 + 8);
    v16(v7, v4);
    if (v15)
    {
      break;
    }

    v9 = v11 + 1;
  }

  v16(v27, v4);
  v14(v22, *(v24 + 48) + v13, v4);
  return v12 == 0;
}

BOOL sub_10007E174(char *a1, char *a2)
{
  v22 = a1;
  v4 = type metadata accessor for StateDump.RemoteRequestState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v8 = *v2;
  sub_10000814C(&qword_1001B9568, &type metadata accessor for StateDump.RemoteRequestState, &protocol conformance descriptor for StateDump.RemoteRequestState);
  v27 = a2;
  v9 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v24 = v8;
  v25 = v8 + 56;
  v10 = ~(-1 << *(v8 + 32));
  v26 = v5 + 16;
  v23 = v5 + 8;
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v25 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      v17 = v21;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = v27;
      (*(v5 + 16))(v7, v27, v4);
      v28 = *v17;
      sub_100084C90(v7, v11, isUniquelyReferenced_nonNull_native);
      *v17 = v28;
      (*(v5 + 32))(v22, v19, v4);
      return v12 == 0;
    }

    v13 = *(v5 + 72) * v11;
    v14 = *(v5 + 16);
    v14(v7, *(v24 + 48) + v13, v4);
    sub_10000814C(&qword_1001B9570, &type metadata accessor for StateDump.RemoteRequestState, &protocol conformance descriptor for StateDump.RemoteRequestState);
    v15 = dispatch thunk of static Equatable.== infix(_:_:)();
    v16 = *(v5 + 8);
    v16(v7, v4);
    if (v15)
    {
      break;
    }

    v9 = v11 + 1;
  }

  v16(v27, v4);
  v14(v22, *(v24 + 48) + v13, v4);
  return v12 == 0;
}

BOOL sub_10007E43C(char *a1, char *a2)
{
  v22 = a1;
  active = type metadata accessor for StateDump.InferenceProviderState.ActiveRequest();
  v5 = *(active - 8);
  __chkstk_darwin(active);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v8 = *v2;
  sub_10000814C(&qword_1001B9550, &type metadata accessor for StateDump.InferenceProviderState.ActiveRequest, &protocol conformance descriptor for StateDump.InferenceProviderState.ActiveRequest);
  v27 = a2;
  v9 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v24 = v8;
  v25 = v8 + 56;
  v10 = ~(-1 << *(v8 + 32));
  v26 = v5 + 16;
  v23 = v5 + 8;
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v25 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      v17 = v21;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = v27;
      (*(v5 + 16))(v7, v27, active);
      v28 = *v17;
      sub_100084F40(v7, v11, isUniquelyReferenced_nonNull_native);
      *v17 = v28;
      (*(v5 + 32))(v22, v19, active);
      return v12 == 0;
    }

    v13 = *(v5 + 72) * v11;
    v14 = *(v5 + 16);
    v14(v7, *(v24 + 48) + v13, active);
    sub_10000814C(&qword_1001B9558, &type metadata accessor for StateDump.InferenceProviderState.ActiveRequest, &protocol conformance descriptor for StateDump.InferenceProviderState.ActiveRequest);
    v15 = dispatch thunk of static Equatable.== infix(_:_:)();
    v16 = *(v5 + 8);
    v16(v7, active);
    if (v15)
    {
      break;
    }

    v9 = v11 + 1;
  }

  v16(v27, active);
  v14(v22, *(v24 + 48) + v13, active);
  return v12 == 0;
}

void sub_10007E704()
{
  sub_1000055B0();
  v2 = v1;
  type metadata accessor for StateDump.InferenceProviderState();
  sub_100002BDC();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_100002B8C();
  v8 = v7 - v6;
  v26 = v0;
  sub_10000CD8C();
  sub_10000814C(v9, v10, &protocol conformance descriptor for StateDump.InferenceProviderState);
  sub_100012484();
  dispatch thunk of Hashable._rawHashValue(seed:)();
  sub_100011E24();
  v13 = ~v12;
  while (1)
  {
    v14 = v11 & v13;
    sub_100006358();
    if (((v15 << v14) & v16) == 0)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_10002AB2C();
      v24();
      v27 = *v26;
      sub_1000851F0(v8, v14, isUniquelyReferenced_nonNull_native);
      *v26 = v27;
      sub_10002AB2C();
      v25();
      goto LABEL_7;
    }

    sub_10000A050();
    v17 = *(v4 + 16);
    sub_100036E1C();
    v17();
    sub_10000CD8C();
    v19 = sub_10000814C(&qword_1001B9540, v18, &protocol conformance descriptor for StateDump.InferenceProviderState);
    v21 = sub_100035368(v8, v2, v20, v19);
    v22 = *(v4 + 8);
    sub_10000CBD8();
    v22();
    if (v21)
    {
      break;
    }

    v11 = v14 + 1;
  }

  sub_10000CBD8();
  v22();
  sub_10000A050();
  sub_100036E1C();
  v17();
LABEL_7:
  sub_100002EEC();
}

BOOL sub_10007E94C(char *a1, char *a2)
{
  v22 = a1;
  v4 = type metadata accessor for InferenceProviderAssetDescriptor();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v8 = *v2;
  sub_10000814C(&qword_1001B94B8, &type metadata accessor for InferenceProviderAssetDescriptor, &protocol conformance descriptor for InferenceProviderAssetDescriptor);
  v27 = a2;
  v9 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v24 = v8;
  v25 = v8 + 56;
  v10 = ~(-1 << *(v8 + 32));
  v26 = v5 + 16;
  v23 = v5 + 8;
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v25 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      v17 = v21;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = v27;
      (*(v5 + 16))(v7, v27, v4);
      v28 = *v17;
      sub_1000854A0(v7, v11, isUniquelyReferenced_nonNull_native);
      *v17 = v28;
      (*(v5 + 32))(v22, v19, v4);
      return v12 == 0;
    }

    v13 = *(v5 + 72) * v11;
    v14 = *(v5 + 16);
    v14(v7, *(v24 + 48) + v13, v4);
    sub_10000814C(&qword_1001B94C0, &type metadata accessor for InferenceProviderAssetDescriptor, &protocol conformance descriptor for InferenceProviderAssetDescriptor);
    v15 = dispatch thunk of static Equatable.== infix(_:_:)();
    v16 = *(v5 + 8);
    v16(v7, v4);
    if (v15)
    {
      break;
    }

    v9 = v11 + 1;
  }

  v16(v27, v4);
  v14(v22, *(v24 + 48) + v13, v4);
  return v12 == 0;
}

void sub_10007EC14()
{
  sub_1000055B0();
  v2 = v1;
  type metadata accessor for InferenceProviderExtensionConnection.TerminationHandlerWrapper(0);
  sub_100002BDC();
  __chkstk_darwin(v3);
  sub_100002B8C();
  v6 = v5 - v4;
  v14 = v0;
  v7 = *v0;
  Hasher.init(_seed:)();
  v15 = v2;
  UUID.hash(into:)();
  Hasher._finalize()();
  sub_100011E24();
  v10 = ~v9;
  while (1)
  {
    v11 = v8 & v10;
    if (((1 << (v8 & v10)) & *(v7 + 56 + (((v8 & v10) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_10000931C();
      v16 = *v14;
      sub_100085750(v6, v11, isUniquelyReferenced_nonNull_native);
      *v14 = v16;
      sub_10000D460();
      goto LABEL_7;
    }

    sub_100005B9C();
    sub_10000931C();
    v12 = static UUID.== infix(_:_:)();
    sub_100005618();
    sub_10000D2AC(v6);
    if (v12)
    {
      break;
    }

    v8 = v11 + 1;
  }

  sub_100005618();
  sub_10000D2AC(v15);
  sub_100005B9C();
  sub_10000931C();
LABEL_7:
  sub_100002EEC();
}

void sub_10007EE00()
{
  sub_1000055B0();
  v2 = v1;
  v29 = v3;
  v4 = type metadata accessor for UUID();
  v28 = v0;
  v5 = *v0;
  sub_10005F2BC(&qword_1001B8C00, &protocol conformance descriptor for UUID);
  sub_100012484();
  v34 = v2;
  dispatch thunk of Hashable._rawHashValue(seed:)();
  sub_100011E24();
  v32 = ~v7;
  v33 = v8;
  v30 = v5;
  v31 = v4 - 8;
  while (1)
  {
    v9 = v6 & v32;
    if (((1 << (v6 & v32)) & *(v33 + (((v6 & v32) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      v20 = v28;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = *(v4 - 8);
      sub_100004B1C();
      __chkstk_darwin(v23);
      v25 = &v27 - v24;
      v26 = v34;
      (*(v22 + 16))(&v27 - v24, v34, v4);
      v36 = *v20;
      sub_1000859A4(v25, v9, isUniquelyReferenced_nonNull_native);
      *v20 = v36;
      (*(v22 + 32))(v29, v26, v4);
      goto LABEL_7;
    }

    v35 = &v27;
    v10 = *(v4 - 8);
    __chkstk_darwin(v6);
    v12 = &v27 - v11;
    v14 = *(v13 + 72) * v9;
    v15 = *(v10 + 16);
    v15(&v27 - v11, *(v30 + 48) + v14, v4);
    v16 = sub_10005F2BC(&qword_1001B94A8, &protocol conformance descriptor for UUID);
    v18 = sub_100035368(v12, v34, v17, v16);
    v19 = *(v10 + 8);
    v19(v12, v4);
    if (v18)
    {
      break;
    }

    v6 = v9 + 1;
  }

  v19(v34, v4);
  v15(v29, *(v30 + 48) + v14, v4);
LABEL_7:
  sub_100002EEC();
}

uint64_t sub_10007F0E4(uint64_t a1, void *a2)
{
  v23 = a1;
  v4 = type metadata accessor for InferenceProviderManager.InferenceProviderExtensionInformation(0);
  v5 = __chkstk_darwin(v4);
  v7 = (&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v21 = (&v21 - v8);
  v22 = v2;
  v9 = *v2;
  Hasher.init(_seed:)();
  v10 = *a2;
  v11 = a2[1];
  String.hash(into:)();
  v24 = v4;
  type metadata accessor for UUID();
  sub_10005F2BC(&qword_1001B8C00, &protocol conformance descriptor for UUID);
  v25 = a2;
  dispatch thunk of Hashable.hash(into:)();
  v12 = Hasher._finalize()();
  v13 = -1 << *(v9 + 32);
  v14 = v12 & ~v13;
  if ((*(v9 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    while (1)
    {
      sub_10000931C();
      v16 = *v7 == v10 && v7[1] == v11;
      if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (static UUID.== infix(_:_:)())
      {
        break;
      }

      sub_10000D2AC(v7);
      v14 = (v14 + 1) & v15;
      if (((*(v9 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    sub_10000D2AC(v7);
    sub_10000D2AC(v25);
    sub_10000931C();
    return 0;
  }

  else
  {
LABEL_10:
    v17 = v22;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = v21;
    sub_10000931C();
    v26 = *v17;
    sub_100085C1C(v19, v14, isUniquelyReferenced_nonNull_native);
    *v17 = v26;
    sub_10000D460();
    return 1;
  }
}

void sub_10007F3D4()
{
  sub_1000055B0();
  sub_100065020(&qword_1001B94D0, &unk_100171E80);
  sub_100002BDC();
  v2 = v1;
  sub_100004B1C();
  __chkstk_darwin(v3);
  sub_10008D314();
  sub_1000081B4();
  sub_10001B2C0(v4, &qword_1001B94D0, &unk_100171E80, v5);
  sub_100012484();
  dispatch thunk of Hashable._rawHashValue(seed:)();
  sub_100011E24();
  sub_1000294B8();
  while (1)
  {
    v7 = v6 & v0;
    sub_100006358();
    if (((v8 << v7) & v9) == 0)
    {
      swift_isUniquelyReferenced_nonNull_native();
      sub_10002AB2C();
      v18();
      v19 = sub_1000265A0();
      sub_1000861B4(v19, v20, v21);
      *v23 = v24;
      sub_10002AB2C();
      v22();
      goto LABEL_7;
    }

    v10 = sub_10008D2D0();
    (qword_1001B94D0)(v10);
    sub_1000039B4();
    sub_10001B2C0(&qword_1001B94E8, &qword_1001B94D0, &unk_100171E80, v11);
    v12 = sub_10008D330();
    v16 = sub_100035368(v12, v13, v14, v15);
    v17 = *(v2 + 8);
    sub_10000CBD8();
    v17();
    if (v16)
    {
      break;
    }

    v6 = v7 + 1;
  }

  sub_10000CBD8();
  v17();
  sub_10000A050();
  sub_100036E1C();
  (qword_1001B94D0)();
LABEL_7:
  sub_100002EEC();
}

Swift::Int sub_10007F978(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100065020(&qword_1001B9498, &qword_1001701B0);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    while (1)
    {
      if (!__CocoaSet.Iterator.next()())
      {

        return v2;
      }

      sub_10000E094();
      swift_dynamicCast();
      v3 = *(v2 + 16);
      if (*(v2 + 24) <= v3)
      {
        sub_1000834A4(v3 + 1);
      }

      v2 = v15;
      result = NSObject._rawHashValue(seed:)(*(v15 + 40));
      v5 = v15 + 56;
      v6 = -1 << *(v15 + 32);
      v7 = result & ~v6;
      v8 = v7 >> 6;
      if (((-1 << v7) & ~*(v15 + 56 + 8 * (v7 >> 6))) == 0)
      {
        break;
      }

      v9 = __clz(__rbit64((-1 << v7) & ~*(v15 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
      *(*(v15 + 48) + 8 * v9) = v14;
      ++*(v15 + 16);
    }

    v10 = 0;
    v11 = (63 - v6) >> 6;
    while (++v8 != v11 || (v10 & 1) == 0)
    {
      v12 = v8 == v11;
      if (v8 == v11)
      {
        v8 = 0;
      }

      v10 |= v12;
      v13 = *(v5 + 8 * v8);
      if (v13 != -1)
      {
        v9 = __clz(__rbit64(~v13)) + (v8 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return result;
}

Swift::Int sub_10007FB34(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100065020(&qword_1001B9410, &qword_100170108);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

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
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_100011624(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    Hasher.init(_seed:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v5 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v12 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_10007FD90(uint64_t a1)
{
  v2 = v1;
  v36 = type metadata accessor for Assertion.DaemonRep();
  v3 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_100065020(&qword_1001B8B98, &qword_10016F750);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_27:

    *v2 = v7;
    return result;
  }

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
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      sub_100011624(0, (v28 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = *(v5 + 48) + *(v3 + 72) * (v15 | (v8 << 6));
    v19 = *(v3 + 32);
    v32 = *(v3 + 72);
    v33 = v19;
    v19(v35, v18, v36);
    sub_10000814C(&qword_1001B8BA0, &type metadata accessor for Assertion.DaemonRep, &protocol conformance descriptor for Assertion.DaemonRep);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v20 = -1 << *(v7 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = v33(*(v7 + 48) + v23 * v32, v35, v36);
    ++*(v7 + 16);
    v5 = v31;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v24 = 0;
  v25 = (63 - v20) >> 6;
  while (++v22 != v25 || (v24 & 1) == 0)
  {
    v26 = v22 == v25;
    if (v22 == v25)
    {
      v22 = 0;
    }

    v24 |= v26;
    v27 = *(v14 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1000800E8(uint64_t a1)
{
  v2 = v1;
  v36 = sub_100065020(&qword_1001B8B78, &qword_10016F740);
  v3 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v29 - v4;
  v5 = *v1;
  sub_100065020(&qword_1001B8B80, &qword_10016F748);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_27:

    *v2 = v7;
    return result;
  }

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
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      sub_100011624(0, (v28 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = *(v5 + 48) + *(v3 + 72) * (v15 | (v8 << 6));
    v19 = *(v3 + 32);
    v32 = *(v3 + 72);
    v33 = v19;
    v19(v35, v18, v36);
    sub_10001B2C0(&qword_1001B8B88, &qword_1001B8B78, &qword_10016F740, &protocol conformance descriptor for UUIDIdentifier<A>);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v20 = -1 << *(v7 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = v33(*(v7 + 48) + v23 * v32, v35, v36);
    ++*(v7 + 16);
    v5 = v31;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v24 = 0;
  v25 = (63 - v20) >> 6;
  while (++v22 != v25 || (v24 & 1) == 0)
  {
    v26 = v22 == v25;
    if (v22 == v25)
    {
      v22 = 0;
    }

    v24 |= v26;
    v27 = *(v14 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_100080494(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for ModelCatalogAsset(0);
  v23 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v22 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_100065020(&qword_1001B9440, &qword_100170160);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v20 = v1;
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
    for (i = result + 56; v12; ++*(v7 + 16))
    {
      v12 &= v12 - 1;
LABEL_12:
      sub_10000D460();
      Hasher.init(_seed:)();
      sub_10000C228(v24);
      Hasher._finalize()();
      v16 = i;
      v17 = _HashTable.nextHole(atOrAfter:)();
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      result = sub_10000D460();
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        return result;
      }

      if (v8 >= v13)
      {
        break;
      }

      v15 = v9[v8];
      ++v14;
      if (v15)
      {
        v12 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v18 = 1 << *(v5 + 32);
    if (v18 >= 64)
    {
      sub_100011624(0, (v18 + 63) >> 6, v5 + 56);
    }

    else
    {
      *v9 = -1 << v18;
    }

    v2 = v20;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

Swift::Int sub_100080730(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100065020(&qword_1001B9448, &qword_100170168);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v30 = v3;
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
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      sub_100011624(0, (v29 + 63) >> 6, v7);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = *(v3 + 48) + 24 * (v13 | (v6 << 6));
    v17 = *v16;
    v18 = *(v16 + 8);
    v19 = *(v16 + 16);
    Hasher.init(_seed:)();
    Hasher._combine(_:)(v17);
    result = Hasher._finalize()();
    v20 = -1 << *(v5 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = *(v5 + 48) + 24 * v23;
    *v28 = v17;
    *(v28 + 8) = v18;
    *(v28 + 16) = v19;
    ++*(v5 + 16);
    v3 = v30;
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v24 = 0;
  v25 = (63 - v20) >> 6;
  while (++v22 != v25 || (v24 & 1) == 0)
  {
    v26 = v22 == v25;
    if (v22 == v25)
    {
      v22 = 0;
    }

    v24 |= v26;
    v27 = *(v12 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1000809A4(uint64_t a1)
{
  v2 = v1;
  v36 = type metadata accessor for StateDump.AssetState();
  v3 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_100065020(&qword_1001B95D8, &qword_100170220);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_27:

    *v2 = v7;
    return result;
  }

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
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      sub_100011624(0, (v28 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = *(v5 + 48) + *(v3 + 72) * (v15 | (v8 << 6));
    v19 = *(v3 + 32);
    v32 = *(v3 + 72);
    v33 = v19;
    v19(v35, v18, v36);
    sub_10000814C(&qword_1001B95C8, &type metadata accessor for StateDump.AssetState, &protocol conformance descriptor for StateDump.AssetState);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v20 = -1 << *(v7 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = v33(*(v7 + 48) + v23 * v32, v35, v36);
    ++*(v7 + 16);
    v5 = v31;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v24 = 0;
  v25 = (63 - v20) >> 6;
  while (++v22 != v25 || (v24 & 1) == 0)
  {
    v26 = v22 == v25;
    if (v22 == v25)
    {
      v22 = 0;
    }

    v24 |= v26;
    v27 = *(v14 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}