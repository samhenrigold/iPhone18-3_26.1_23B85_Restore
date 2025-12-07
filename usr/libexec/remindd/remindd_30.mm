unint64_t sub_1002F7294@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1002F944C(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1002F72C4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1002F6E68(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1002F72F0@<X0>(uint64_t a1@<X0>, _TtC7remindd19RDXPCStorePerformer *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1002F944C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1002F7330(_BYTE *a1, const char *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8 = *a1 == 0;
  if (*a1)
  {
    v9 = 0xD000000000000016;
  }

  else
  {
    v9 = 0xD000000000000011;
  }

  if (v8)
  {
    v10 = "urrentAppVersion";
  }

  else
  {
    v10 = "listIDsToUndelete";
  }

  v11 = (v10 | 0x8000000000000000);
  if (*a2)
  {
    v12 = 0xD000000000000016;
  }

  else
  {
    v12 = 0xD000000000000011;
  }

  if (*a2)
  {
    v13 = "listIDsToUndelete";
  }

  else
  {
    v13 = "urrentAppVersion";
  }

  v14 = (v13 | 0x8000000000000000);
  if (v9 == v12 && v11 == v14)
  {
    v16 = 1;
  }

  else
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v11, a2, v12, a4, a5, a6, a7, a8;
  v14, v17, v18, v19, v20, v21, v22, v23;
  return v16 & 1;
}

Swift::Int sub_1002F73DC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    v2 = "listIDsToUndelete";
  }

  else
  {
    v2 = "urrentAppVersion";
  }

  String.hash(into:)();
  (v2 | 0x8000000000000000), v3, v4, v5, v6, v7, v8, v9;
  return Hasher._finalize()();
}

double sub_1002F745C(uint64_t a1)
{
  if (*v1)
  {
    v2 = "listIDsToUndelete";
  }

  else
  {
    v2 = "urrentAppVersion";
  }

  String.hash(into:)();

  (v2 | 0x8000000000000000), v3, v4, v5, v6, v7, v8, v9;
  return result;
}

Swift::Int sub_1002F74C8(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  if (v2)
  {
    v3 = "listIDsToUndelete";
  }

  else
  {
    v3 = "urrentAppVersion";
  }

  String.hash(into:)();
  (v3 | 0x8000000000000000), v4, v5, v6, v7, v8, v9, v10;
  return Hasher._finalize()();
}

void sub_1002F7550(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000016;
  }

  else
  {
    v2 = 0xD000000000000011;
  }

  if (*v1)
  {
    v3 = "listIDsToUndelete";
  }

  else
  {
    v3 = "urrentAppVersion";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

unint64_t sub_1002F759C()
{
  if (*v0)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 0xD000000000000011;
  }
}

Swift::Int sub_1002F75E8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1002F764C(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

void sub_1002F7698(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3._countAndFlagsBits = *a1;
  v4 = a1[1];
  v3._object = v4;
  v5 = _findStringSwitchCase(cases:string:)(&off_1008E2AD8, v3);
  v4, v6, v7, v8, v9, v10, v11, v12;
  *a2 = v5 != 0;
}

void sub_1002F7704(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_1008E1588, v3);
  object, v6, v7, v8, v9, v10, v11, v12;
  *a2 = v5 != 0;
}

uint64_t sub_1002F7780(_BYTE *a1, const char *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8 = *a1 == 0;
  if (*a1)
  {
    v9 = 0xD00000000000001ALL;
  }

  else
  {
    v9 = 0xD000000000000018;
  }

  if (v8)
  {
    v10 = "didFinishMigration";
  }

  else
  {
    v10 = "smartListIDsToUndelete";
  }

  v11 = (v10 | 0x8000000000000000);
  if (*a2)
  {
    v12 = 0xD00000000000001ALL;
  }

  else
  {
    v12 = 0xD000000000000018;
  }

  if (*a2)
  {
    v13 = "smartListIDsToUndelete";
  }

  else
  {
    v13 = "didFinishMigration";
  }

  v14 = (v13 | 0x8000000000000000);
  if (v9 == v12 && v11 == v14)
  {
    v16 = 1;
  }

  else
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v11, a2, v12, a4, a5, a6, a7, a8;
  v14, v17, v18, v19, v20, v21, v22, v23;
  return v16 & 1;
}

Swift::Int sub_1002F782C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    v2 = "smartListIDsToUndelete";
  }

  else
  {
    v2 = "didFinishMigration";
  }

  String.hash(into:)();
  (v2 | 0x8000000000000000), v3, v4, v5, v6, v7, v8, v9;
  return Hasher._finalize()();
}

double sub_1002F78AC(uint64_t a1)
{
  if (*v1)
  {
    v2 = "smartListIDsToUndelete";
  }

  else
  {
    v2 = "didFinishMigration";
  }

  String.hash(into:)();

  (v2 | 0x8000000000000000), v3, v4, v5, v6, v7, v8, v9;
  return result;
}

Swift::Int sub_1002F7918(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  if (v2)
  {
    v3 = "smartListIDsToUndelete";
  }

  else
  {
    v3 = "didFinishMigration";
  }

  String.hash(into:)();
  (v3 | 0x8000000000000000), v4, v5, v6, v7, v8, v9, v10;
  return Hasher._finalize()();
}

void sub_1002F79A0(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD00000000000001ALL;
  }

  else
  {
    v2 = 0xD000000000000018;
  }

  if (*v1)
  {
    v3 = "smartListIDsToUndelete";
  }

  else
  {
    v3 = "didFinishMigration";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

unint64_t sub_1002F79EC()
{
  if (*v0)
  {
    return 0xD00000000000001ALL;
  }

  else
  {
    return 0xD000000000000018;
  }
}

void *sub_1002F7A38()
{
  result = sub_1002F7A58();
  qword_100974D40 = result;
  return result;
}

void *sub_1002F7A58()
{
  v0 = 0;
  while (1)
  {
    v11 = &off_1008E21A0 + v0++;
    v12 = 0xE800000000000000;
    v13 = 0x44497463656A626FLL;
    switch(v11[32])
    {
      case 1:
        v12 = 0xE400000000000000;
        v13 = 1701869940;
        break;
      case 2:
        v12 = 0xE400000000000000;
        v13 = 1701667182;
        break;
      case 3:
        v13 = 0xD000000000000018;
        v12 = 0x80000001007E9180;
        break;
      case 4:
        v13 = 0xD00000000000001CLL;
        v12 = 0x80000001007EA370;
        break;
      case 5:
        v13 = 0xD000000000000019;
        v12 = 0x80000001007EA390;
        break;
      case 6:
        v13 = 0xD000000000000017;
        v12 = 0x80000001007EA3B0;
        break;
      case 7:
        v13 = 0xD00000000000001ALL;
        v12 = 0x80000001007EA350;
        break;
      case 8:
        v13 = 0xD000000000000010;
        v12 = 0x80000001007EA3D0;
        break;
      case 9:
        goto LABEL_24;
      case 10:
        v12 = 0xEC000000746C6153;
LABEL_24:
        v13 = 0x44496E6F73726570;
        break;
      case 11:
        v13 = 0xD000000000000012;
        v12 = 0x80000001007E9140;
        break;
      case 12:
        v13 = 0xD000000000000019;
        v12 = 0x80000001007EA3F0;
        break;
      case 13:
        v13 = 0xD000000000000012;
        v12 = 0x80000001007E9160;
        break;
      case 14:
        v13 = 0xD00000000000001DLL;
        v12 = 0x80000001007EA410;
        break;
      case 15:
        v13 = 0x6576697463616E69;
        break;
      case 16:
        v13 = 0xD000000000000012;
        v12 = 0x80000001007EA030;
        break;
      case 17:
        v13 = 0xD000000000000017;
        v12 = 0x80000001007EA050;
        break;
      case 18:
        v12 = 0xEB000000006E656BLL;
        v13 = 0x6F54636E79536164;
        break;
      case 19:
        v12 = 0xE900000000000079;
        v13 = 0x654B687375506164;
        break;
      case 20:
        v13 = 0xD00000000000001CLL;
        v12 = 0x80000001007EA440;
        break;
      case 21:
        v13 = 0xD00000000000001FLL;
        v12 = 0x80000001007EA460;
        break;
      case 22:
        v13 = 0xD000000000000019;
        v12 = 0x80000001007EA480;
        break;
      case 23:
        v12 = 0xED00006465746172;
        v13 = 0x67694D7361576164;
        break;
      case 24:
        v13 = 0xD000000000000017;
        v12 = 0x80000001007E8C60;
        break;
      case 25:
        v13 = 0xD000000000000011;
        v12 = 0x80000001007EA4B0;
        break;
      default:
        break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = sub_100005F4C(v13, v12);
    v23 = _swiftEmptyDictionarySingleton[2];
    v24 = (v16 & 1) == 0;
    v25 = __OFADD__(v23, v24);
    v26 = v23 + v24;
    if (v25)
    {
      break;
    }

    v27 = v16;
    if (_swiftEmptyDictionarySingleton[3] >= v26)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_34;
      }

      v32 = v15;
      sub_100373664();
      v15 = v32;
      if (v27)
      {
        goto LABEL_2;
      }

LABEL_35:
      _swiftEmptyDictionarySingleton[(v15 >> 6) + 8] |= 1 << v15;
      v28 = (_swiftEmptyDictionarySingleton[6] + 16 * v15);
      *v28 = v13;
      v28[1] = v12;
      v29 = (_swiftEmptyDictionarySingleton[7] + 16 * v15);
      *v29 = v13;
      v29[1] = v12;
      v30 = _swiftEmptyDictionarySingleton[2];
      v25 = __OFADD__(v30, 1);
      v31 = v30 + 1;
      if (v25)
      {
        goto LABEL_42;
      }

      _swiftEmptyDictionarySingleton[2] = v31;
      if (v0 == 26)
      {
        return _swiftEmptyDictionarySingleton;
      }
    }

    else
    {
      sub_10036A8F0(v26, isUniquelyReferenced_nonNull_native);
      v15 = sub_100005F4C(v13, v12);
      if ((v27 & 1) != (v16 & 1))
      {
        goto LABEL_43;
      }

LABEL_34:
      if ((v27 & 1) == 0)
      {
        goto LABEL_35;
      }

LABEL_2:
      v1 = v15;
      v12, v16, v17, v18, v19, v20, v21, v22;
      v2 = (_swiftEmptyDictionarySingleton[7] + 16 * v1);
      v3 = v2[1];
      *v2 = v13;
      v2[1] = v12;
      v3, v4, v5, v6, v7, v8, v9, v10;
      if (v0 == 26)
      {
        return _swiftEmptyDictionarySingleton;
      }
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1002F7EEC(char a1)
{
  v3 = v1;
  if (a1)
  {
    if ([v1 hasDeserializedListIDsMergeableOrdering])
    {
      v4 = [v1 serializedListIDsMergeableOrdering];
      if (v4)
      {
        v5 = v4;
        v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v8 = v7;
      }

      else
      {
        v6 = 0;
        v8 = 0xF000000000000000;
      }

      sub_1000F5104(&qword_100938C10, &unk_100795F30);
      Optional.tryUnwrap(_:file:line:)();
      result = sub_100031A14(v6, v8);
      if (!v2)
      {
        if (qword_100935E80 != -1)
        {
          swift_once();
        }

        v14 = type metadata accessor for Logger();
        sub_100006654(v14, qword_100941670);
        v15 = v3;
        v16 = Logger.logObject.getter();
        v17 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          v19 = swift_slowAlloc();
          *v18 = 138543362;
          v20 = [v15 objectID];
          *(v18 + 4) = v20;
          *v19 = v20;
          _os_log_impl(&_mh_execute_header, v16, v17, "Serialized to data from REMListStorage.listIDsMergeableOrdering during ingesting. {objectID: %{public}@}", v18, 0xCu);
          sub_1000050A4(v19, &unk_100938E70, &unk_100797230);
        }

        return v24;
      }
    }

    else
    {
      v11 = [v1 listIDsMergeableOrderingData];
      if (v11)
      {
        v12 = v11;
        v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

        return v13;
      }

      else
      {
        v21 = objc_opt_self();
        sub_1000060C8(0, &unk_10093F580, REMAccountStorage_ptr);
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v23 = String._bridgeToObjectiveC()();
        [v21 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v23];

        return swift_willThrow();
      }
    }
  }

  else
  {
    v9 = [v1 listIDsMergeableOrdering];
    return 0;
  }

  return result;
}

uint64_t sub_1002F8214(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(a4 + 16);
  *(a4 + 16) = 0x8000000000000000;
  sub_1002C8F48(a2, a1, isUniquelyReferenced_nonNull_native);
  *(a4 + 16) = v9;
  return swift_endAccess();
}

void sub_1002F829C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_1002F8320(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_100005EF0(a1, v25);
  sub_1000060C8(0, &unk_100938880, off_1008D41A8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v5 = v24;
  sub_100005EF0(a2, v25);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_18:

    return 0;
  }

  v6 = v24;
  if ([v24 daIsNotificationsCollection])
  {
    if ([v24 daIsNotificationsCollection])
    {
      goto LABEL_20;
    }

    v7 = 0;
    goto LABEL_14;
  }

  if ([v24 daDisplayOrder] < 1)
  {
    if ([v24 daIsNotificationsCollection])
    {

      return 1;
    }

    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = [v24 daDisplayOrder];
    if ([v24 daIsNotificationsCollection])
    {
      if (!v7)
      {
        goto LABEL_20;
      }

      if (v7 < 0)
      {
        return -1;
      }

      return 1;
    }
  }

LABEL_14:
  if ([v24 daDisplayOrder] < 1)
  {
    if (v7 != 0x7FFFFFFFFFFFFFFFLL)
    {

      return -1;
    }
  }

  else
  {
    v8 = [v24 daDisplayOrder];
    if (v7 != v8)
    {
      v17 = v8;

      if (v7 >= v17)
      {
        return 1;
      }

      return -1;
    }

    if ((v7 - 1) <= 0x7FFFFFFFFFFFFFFDLL)
    {

      goto LABEL_18;
    }
  }

LABEL_20:
  v10 = [v24 remObjectID];
  v11 = [v24 remObjectID];
  if (!v10)
  {
LABEL_28:
    v16 = -1;
    goto LABEL_29;
  }

  swift_beginAccess();
  v12 = *a3;
  if (!*(*a3 + 16))
  {
    swift_endAccess();
    goto LABEL_28;
  }

  v13 = v10;
  v14 = sub_10002B924(v13);
  if ((v15 & 1) == 0)
  {
    swift_endAccess();

    goto LABEL_28;
  }

  v16 = *(*(v12 + 56) + 8 * v14);
  swift_endAccess();

LABEL_29:
  if (v11)
  {
    swift_beginAccess();
    v18 = *a3;
    if (*(*a3 + 16))
    {
      v19 = v11;
      v20 = sub_10002B924(v19);
      if (v21)
      {
        v22 = *(*(v18 + 56) + 8 * v20);
        swift_endAccess();

        if (v16 != v22)
        {
          if (v16 >= v22)
          {
            return 1;
          }

          return -1;
        }

        return 0;
      }

      swift_endAccess();

      v11 = v24;
      v10 = v24;
      v6 = v19;
      v5 = v19;
    }

    else
    {
      swift_endAccess();
    }

    v23 = v5;

    v5 = v10;
    v10 = v23;
  }

  if (v16 == -1)
  {
    return 0;
  }

  return -1;
}

_TtC7remindd19RDXPCStorePerformer *sub_1002F867C(void **a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = &selRef_smartListIDsToUndelete;
  if (!*a2)
  {
    v3 = &selRef_listIDsToUndelete;
  }

  v4 = [v2 *v3];
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  sub_10000CDE4(&qword_1009391F0, &qword_1009391E0, REMObjectID_ptr, &protocol conformance descriptor for NSObject);
  v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = sub_100277EBC(v5);
  v5, v7, v8, v9, v10, v11, v12, v13;
  return v6;
}

uint64_t sub_1002F8750(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, _TtC7remindd19RDXPCStorePerformer *a5, void *a6)
{
  v7 = v6;
  if (a2 >> 60 == 15)
  {
    v8 = [v6 serializedData];
    v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    objc_allocWithZone(REMCRMergeableOrderedSet);
    sub_1001CB4B8(a1, a2);
    v15 = a3;
    v41 = sub_1002F937C(v15);

    v49 = 0;
    v42 = [v41 mergedOrderedSetWithOrderedSet:v7 error:&v49];
    if (v42)
    {
      v43 = v42;
      v44 = v49;
      v45 = [v43 serializedData];
      v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100031A14(a1, a2);
    }

    else
    {
      v47 = v49;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_100935E80 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      sub_100006654(v16, qword_100941670);
      v17 = a6;

      swift_errorRetain();
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.error.getter();
      a5, v20, v21, v22, v23, v24, v25, v26;

      if (os_log_type_enabled(v18, v19))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        *v27 = 138412802;
        *(v27 + 4) = v17;
        *v28 = v17;
        *(v27 + 12) = 2080;
        v29 = v17;
        *(v27 + 14) = sub_10000668C(a4, a5, &v49);
        *(v27 + 22) = 2080;
        swift_getErrorValue();
        v30 = Error.localizedDescription.getter();
        v32 = v31;
        v33 = sub_10000668C(v30, v31, &v49);
        v32, v34, v35, v36, v37, v38, v39, v40;
        *(v27 + 24) = v33;
        _os_log_impl(&_mh_execute_header, v18, v19, "Failed to merge ordered set for {objectID: %@, key: %s, error: %s}", v27, 0x20u);
        sub_1000050A4(v28, &unk_100938E70, &unk_100797230);

        swift_arrayDestroy();

        sub_100031A14(a1, a2);
      }

      else
      {
        sub_100031A14(a1, a2);
      }

      return 0;
    }
  }

  return v9;
}

void sub_1002F8B08(_TtC7remindd19RDXPCStorePerformer **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1004364B4(v2);
  }

  v3 = *v2->clientIdentity;
  v29[0] = &v2->clientIdentity[16];
  v29[1] = v3;
  v4 = _minimumMergeRunLength(_:)(v3);
  if (v4 >= v3)
  {
    if (v3 >= 2)
    {
      v12 = -1;
      v13 = 1;
      v14 = &v2->clientIdentity[16];
      do
      {
        v15 = *&v2->clientIdentity[8 * v13 + 16];
        v16 = v12;
        v17 = v14;
        do
        {
          v18 = *v17;
          if (v15 >= *v17)
          {
            break;
          }

          *v17 = v15;
          *(v17 + 1) = v18;
          v17 -= 8;
        }

        while (!__CFADD__(v16++, 1));
        ++v13;
        v14 += 8;
        --v12;
      }

      while (v13 != v3);
    }
  }

  else
  {
    v9 = v4;
    v10 = (v3 >> 1);
    if (v3 >= 2)
    {
      v11 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *v11->clientIdentity = v10;
    }

    else
    {
      v11 = &_swiftEmptyArrayStorage;
    }

    v27[0] = &v11->clientIdentity[16];
    v27[1] = v10;
    sub_1002F8C3C(v27, v28, v29, v9, v5, v6, v7, v8);
    *v11->clientIdentity = 0;
    v11, v20, v21, v22, v23, v24, v25, v26;
  }

  *a1 = v2;
}

void sub_1002F8C3C(char **a1, const char *a2, uint64_t *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v10 = a3[1];
  if (v10 < 1)
  {
    v12 = &_swiftEmptyArrayStorage;
LABEL_88:
    v9 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v12 = sub_1004361F4(v12, a2, a3, a4, a5, a6, a7, a8);
    }

    clientIdentity = v12->clientIdentity;
    v80 = *v12->clientIdentity;
    if (v80 >= 2)
    {
      while (*a3)
      {
        v81 = (v12 + 16 * v80);
        v82 = *v81;
        v83 = &clientIdentity[2 * v80];
        v84 = v83[1];
        sub_1002F9188((*a3 + 8 * *v81), (*a3 + 8 * *v83), (*a3 + 8 * v84), v9);
        if (v8)
        {
          goto LABEL_97;
        }

        if (v84 < v82)
        {
          goto LABEL_114;
        }

        if (v80 - 2 >= *clientIdentity)
        {
          goto LABEL_115;
        }

        *v81 = v82;
        v81[1] = v84;
        v85 = *clientIdentity - v80;
        if (*clientIdentity < v80)
        {
          goto LABEL_116;
        }

        v80 = *clientIdentity - 1;
        memmove(v83, v83 + 2, 16 * v85);
        *clientIdentity = v80;
        if (v80 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_126;
    }

LABEL_97:
    v12, a2, a3, a4, a5, a6, a7, a8;
    return;
  }

  v11 = 0;
  v12 = &_swiftEmptyArrayStorage;
  v86 = a4;
  while (1)
  {
    v13 = v11++;
    if (v11 < v10)
    {
      v14 = *(*a3 + 8 * v11);
      v15 = *(*a3 + 8 * v13);
      v16 = v13 + 2;
      v17 = v14;
      while (v10 != v16)
      {
        v18 = *(*a3 + 8 * v16);
        v19 = (v14 < v15) ^ (v18 >= v17);
        ++v16;
        v17 = v18;
        if ((v19 & 1) == 0)
        {
          v11 = v16 - 1;
          if (v14 >= v15)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v11 = v10;
      if (v14 >= v15)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v11 < v13)
      {
        goto LABEL_119;
      }

      if (v13 < v11)
      {
        v20 = v11 - 1;
        v21 = v13;
        do
        {
          if (v21 != v20)
          {
            v24 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = *(v24 + 8 * v21);
            *(v24 + 8 * v21) = *(v24 + 8 * v20);
            *(v24 + 8 * v20) = v22;
          }
        }

        while (++v21 < v20--);
        v10 = a3[1];
      }
    }

LABEL_20:
    if (v11 < v10)
    {
      if (__OFSUB__(v11, v13))
      {
        goto LABEL_118;
      }

      if (v11 - v13 < a4)
      {
        if (__OFADD__(v13, a4))
        {
          goto LABEL_120;
        }

        if (a4 + v13 < v10)
        {
          v10 = a4 + v13;
        }

        if (v10 < v13)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v11 != v10)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v11 < v13)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_1003658B8(0, *v12->clientIdentity + 1, 1, v12, a5, a6, a7, a8);
    }

    v9 = *v12->clientIdentity;
    v33 = *&v12->clientIdentity[8];
    v34 = v9 + 1;
    if (v9 >= v33 >> 1)
    {
      v12 = sub_1003658B8((v33 > 1), v9 + 1, 1, v12, a5, a6, a7, a8);
    }

    *v12->clientIdentity = v34;
    v35 = &v12->clientIdentity[16];
    v36 = &v12->clientIdentity[16 * v9 + 16];
    *v36 = v13;
    *(v36 + 1) = v11;
    v88 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v9)
    {
      while (1)
      {
        v9 = v34 - 1;
        if (v34 >= 4)
        {
          break;
        }

        if (v34 == 3)
        {
          v37 = *&v12->clientIdentity[16];
          v38 = *&v12->clientIdentity[24];
          v47 = __OFSUB__(v38, v37);
          v39 = v38 - v37;
          v40 = v47;
LABEL_57:
          if (v40)
          {
            goto LABEL_104;
          }

          v53 = &v12->super.isa + 2 * v34;
          v55 = *v53;
          v54 = v53[1];
          v56 = __OFSUB__(v54, v55);
          v57 = v54 - v55;
          v58 = v56;
          if (v56)
          {
            goto LABEL_106;
          }

          v59 = &v35[16 * v9];
          v61 = *v59;
          v60 = *(v59 + 1);
          v47 = __OFSUB__(v60, v61);
          v62 = v60 - v61;
          if (v47)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v57, v62))
          {
            goto LABEL_111;
          }

          if (v57 + v62 >= v39)
          {
            if (v39 < v62)
            {
              v9 = v34 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v34 < 2)
        {
          goto LABEL_112;
        }

        v63 = &v12->super.isa + 2 * v34;
        v65 = *v63;
        v64 = v63[1];
        v47 = __OFSUB__(v64, v65);
        v57 = v64 - v65;
        v58 = v47;
LABEL_72:
        if (v58)
        {
          goto LABEL_108;
        }

        v66 = &v35[16 * v9];
        v68 = *v66;
        v67 = *(v66 + 1);
        v47 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v47)
        {
          goto LABEL_110;
        }

        if (v69 < v57)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v9 - 1 >= v34)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
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
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v74 = &v35[16 * v9 - 16];
        v75 = *v74;
        v76 = &v35[16 * v9];
        v77 = *(v76 + 1);
        sub_1002F9188((*a3 + 8 * *v74), (*a3 + 8 * *v76), (*a3 + 8 * v77), v88);
        if (v8)
        {
          goto LABEL_97;
        }

        if (v77 < v75)
        {
          goto LABEL_99;
        }

        if (v9 > *v12->clientIdentity)
        {
          goto LABEL_100;
        }

        *v74 = v75;
        *(v74 + 1) = v77;
        v78 = *v12->clientIdentity;
        if (v9 >= v78)
        {
          goto LABEL_101;
        }

        v34 = v78 - 1;
        memmove(&v35[16 * v9], v76 + 16, 16 * (v78 - 1 - v9));
        *v12->clientIdentity = v78 - 1;
        if (v78 <= 2)
        {
          goto LABEL_3;
        }
      }

      v41 = &v35[16 * v34];
      v42 = *(v41 - 8);
      v43 = *(v41 - 7);
      v47 = __OFSUB__(v43, v42);
      v44 = v43 - v42;
      if (v47)
      {
        goto LABEL_102;
      }

      v46 = *(v41 - 6);
      v45 = *(v41 - 5);
      v47 = __OFSUB__(v45, v46);
      v39 = v45 - v46;
      v40 = v47;
      if (v47)
      {
        goto LABEL_103;
      }

      v48 = &v12->super.isa + 2 * v34;
      v50 = *v48;
      v49 = v48[1];
      v47 = __OFSUB__(v49, v50);
      v51 = v49 - v50;
      if (v47)
      {
        goto LABEL_105;
      }

      v47 = __OFADD__(v39, v51);
      v52 = v39 + v51;
      if (v47)
      {
        goto LABEL_107;
      }

      if (v52 >= v44)
      {
        v70 = &v35[16 * v9];
        v72 = *v70;
        v71 = *(v70 + 1);
        v47 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v47)
        {
          goto LABEL_113;
        }

        if (v39 < v73)
        {
          v9 = v34 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v10 = a3[1];
    a4 = v86;
    if (v11 >= v10)
    {
      goto LABEL_88;
    }
  }

  v25 = *a3;
  v26 = *a3 + 8 * v11 - 8;
  v27 = v13 - v11;
LABEL_30:
  v28 = *(v25 + 8 * v11);
  v29 = v27;
  v30 = v26;
  while (1)
  {
    v31 = *v30;
    if (v28 >= *v30)
    {
LABEL_29:
      ++v11;
      v26 += 8;
      --v27;
      if (v11 != v10)
      {
        goto LABEL_30;
      }

      v11 = v10;
      goto LABEL_37;
    }

    if (!v25)
    {
      break;
    }

    *v30 = v28;
    v30[1] = v31;
    --v30;
    if (__CFADD__(v29++, 1))
    {
      goto LABEL_29;
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

uint64_t sub_1002F9188(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (v21 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

id sub_1002F937C(uint64_t a1)
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  v8 = 0;
  v4 = [v1 initWithReplicaIDSource:a1 serializedData:isa error:&v8];

  if (v4)
  {
    v5 = v8;
  }

  else
  {
    v6 = v8;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v4;
}

unint64_t sub_1002F944C(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2)
{
  v3 = _findStringSwitchCaseWithCache(cases:string:cache:)();
  a2, v4, v5, v6, v7, v8, v9, v10;
  if (v3 >= 0x1A)
  {
    return 26;
  }

  else
  {
    return v3;
  }
}

void sub_1002F94A0(void *a1, void *a2)
{
  if ([a1 type] != 1)
  {
    return;
  }

  v4 = [a1 objectID];
  v5 = [objc_opt_self() localAccountID];
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  v6 = static NSObject.== infix(_:_:)();

  if (v6)
  {
    return;
  }

  v7 = [a2 managedObjectContext];
  if (v7 && (v8 = v7, v9 = [v7 transactionAuthor], v8, v9))
  {
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13._object = 0x80000001007EFF80;
    v13._countAndFlagsBits = 0xD000000000000010;
    if (String.hasPrefix(_:)(v13) || (v21._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)(), object = v21._object, v23 = String.hasPrefix(_:)(v21), object, v24, v25, v26, v27, v28, v29, v30, v23) || (v31._countAndFlagsBits = 0xD000000000000016, v31._object = 0x80000001007F4730, String.hasPrefix(_:)(v31)))
    {

      goto LABEL_20;
    }

    v66[0] = v10;
    v66[1] = v12;
    sub_10013BCF4();
    if (StringProtocol.contains<A>(_:)())
    {
LABEL_20:
      v12, v14, v15, v16, v17, v18, v19, v20;
      return;
    }

    if (qword_100935E80 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_100006654(v38, qword_100941670);

    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.fault.getter();
    v12, v41, v42, v43, v44, v45, v46, v47;
    if (os_log_type_enabled(v39, v40))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v66[0] = v56;
      *v55 = 136315138;
      v57 = sub_10000668C(v10, v12, v66);
      v12, v58, v59, v60, v61, v62, v63, v64;
      *(v55 + 4) = v57;
      _os_log_impl(&_mh_execute_header, v39, v40, "Creating Extraneous Local Account {author: %s}", v55, 0xCu);
      sub_10000607C(v56);
    }

    else
    {
      v12, v48, v49, v50, v51, v52, v53, v54;
    }
  }

  else
  {
    if (qword_100935E80 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_100006654(v32, qword_100941670);
    v33 = a1;
    oslog = Logger.logObject.getter();
    v34 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(oslog, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v35 = 138412290;
      *(v35 + 4) = v33;
      *v36 = v33;
      v37 = v33;
      _os_log_impl(&_mh_execute_header, oslog, v34, "NSManagedObjectContext missing author when updating account.type {storage: %@}", v35, 0xCu);
      sub_1000050A4(v36, &unk_100938E70, &unk_100797230);
    }
  }
}

void sub_1002F9914(void *a1, uint64_t a2, SEL *a3, const char *a4, const char *a5)
{
  v8 = [a1 *a3];
  if (v8)
  {
    v9 = v8;
    if (qword_100935E80 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100006654(v10, qword_100941670);
    v11 = a1;
    v12 = v9;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.info.getter();

    v15 = &selRef_persistentStoreForIdentifier_;
    if (os_log_type_enabled(v13, v14))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138543618;
      v18 = [v11 remObjectID];
      *(v16 + 4) = v18;
      *v17 = v18;
      *(v16 + 12) = 2048;
      v19 = [v12 topLevelElementIDs];
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
      v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v20 >> 62)
      {
        v28 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v28 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v20, v21, v22, v23, v24, v25, v26, v27;
      *(v16 + 14) = v28;

      _os_log_impl(&_mh_execute_header, v13, v14, a4, v16, 0x16u);
      sub_1000050A4(v17, &unk_100938E70, &unk_100797230);

      v15 = &selRef_persistentStoreForIdentifier_;
    }

    else
    {

      v13 = v12;
    }

    v35 = [v11 v15[106]];
    v36 = [objc_opt_self() defaultCenter];
    type metadata accessor for REMManualOrderingCDIngestor();
    v37 = swift_allocObject();
    *(v37 + 16) = v35;
    *(v37 + 24) = v36;
    sub_1000F5104(&unk_100939D60, &unk_1007959E0);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_1007953F0;
    *(v38 + 32) = v12;
    oslog = v12;
    sub_1005F9E88(v38, v37);

    v38, v39, v40, v41, v42, v43, v44, v45;
  }

  else
  {
    if (qword_100935E80 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_100006654(v29, qword_100941670);
    v30 = a1;
    oslog = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 138543362;
      v34 = [v30 remObjectID];
      *(v32 + 4) = v34;
      *v33 = v34;
      _os_log_impl(&_mh_execute_header, oslog, v31, a5, v32, 0xCu);
      sub_1000050A4(v33, &unk_100938E70, &unk_100797230);
    }
  }
}

void sub_1002F9D20(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v377 = type metadata accessor for UUID();
  v8 = *(v377 - 8);
  *&v10 = __chkstk_darwin(v377, v9).n128_u64[0];
  v376 = &v361 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v381 = a2;
  v12 = [a2 createResolutionTokenMapIfNecessary];
  v387 = a1;
  v13 = [a1 resolutionTokenMap];
  if (!v13)
  {
    if (qword_100935E80 != -1)
    {
      swift_once();
    }

    v313 = type metadata accessor for Logger();
    sub_100006654(v313, qword_100941670);
    v314 = v387;

    v315 = Logger.logObject.getter();
    v316 = static os_log_type_t.fault.getter();
    a3, v317, v318, v319, v320, v321, v322, v323;

    if (os_log_type_enabled(v315, v316))
    {
      v324 = swift_slowAlloc();
      v325 = swift_slowAlloc();
      v326 = swift_slowAlloc();
      *&v386[0] = v326;
      *v324 = 138543618;
      v327 = [v314 objectID];
      *(v324 + 4) = v327;
      *v325 = v327;
      *(v324 + 12) = 2082;
      v328 = *(a3 + 16);
      v329 = &_swiftEmptyArrayStorage;
      if (v328)
      {
        v381 = v325;
        v387 = v326;
        v372 = v12;
        *&v384 = &_swiftEmptyArrayStorage;
        sub_100026EF4(0, v328, 0);
        v329 = v384;
        v330 = (a3 + 32);
        v331 = *(v384 + 16);
        v332 = 16 * v331;
        do
        {
          v333 = *v330++;
          v334 = sub_1002F6E68(v333);
          *&v384 = v329;
          v336 = *&v329->clientIdentity[8];
          v337 = v331 + 1;
          if (v331 >= v336 >> 1)
          {
            v380 = v334;
            v339 = v335;
            sub_100026EF4((v336 > 1), v337, 1);
            v335 = v339;
            v334 = v380;
            v329 = v384;
          }

          *v329->clientIdentity = v337;
          v338 = v329 + v332;
          *(v338 + 4) = v334;
          *(v338 + 5) = v335;
          v332 += 16;
          v331 = v337;
          --v328;
        }

        while (v328);
        v12 = v372;
        v326 = v387;
        v325 = v381;
      }

      v340 = Array.description.getter();
      v342 = v341;
      v329, v341, v343, v344, v345, v346, v347, v348;
      v349 = sub_10000668C(v340, v342, v386);
      v342, v350, v351, v352, v353, v354, v355, v356;
      *(v324 + 14) = v349;
      _os_log_impl(&_mh_execute_header, v315, v316, "REMAccountStorageCDIngestor: merge(storage:into cdAccount:...) cannot proceed because storage.resolutionTokenMap is nil {objectID: %{public}@, keys: %{public}s}", v324, 0x16u);
      sub_1000050A4(v325, &unk_100938E70, &unk_100797230);

      sub_10000607C(v326);
    }

    v357 = objc_opt_self();
    sub_1000060C8(0, &unk_10093F580, REMAccountStorage_ptr);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v359 = String._bridgeToObjectiveC()();
    v360 = [v357 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v359];

    v379 = v360;
    swift_willThrow();
LABEL_147:

    return;
  }

  v14 = v13;
  v380 = sub_10069588C(v13, a3);
  v23 = *(a3 + 16);
  if (!v23)
  {

LABEL_144:
    goto LABEL_147;
  }

  v367 = v14;
  v24 = (a3 + 32);
  v374 = 0x80000001007E8C60;
  v371 = 0x80000001007E9140;
  v375 = "didFinishMigration";
  v368 = (v8 + 8);
  *&v22 = 138412546;
  v365 = v22;
  *&v22 = 136315138;
  v373 = v22;
  v378 = a4;
  v372 = v12;
  while (2)
  {
    v26 = *v24++;
    v25 = v26;
    switch(v26)
    {
      case 1:
        v79 = v387;
        v80 = v381;
        sub_1002F94A0(v387, v381);
        v81 = [v79 type];
        v82 = 0x7FFFLL;
        if (v81 < 0x7FFF)
        {
          v82 = v81;
        }

        if (v82 <= -32768)
        {
          v83 = -32768;
        }

        else
        {
          v83 = v82;
        }

        [v80 setType:v83];
        goto LABEL_5;
      case 2:
        v49 = [v387 name];
        if (!v49)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v52 = v51;
          v49 = String._bridgeToObjectiveC()();
          v52, v53, v54, v55, v56, v57, v58, v59;
        }

        [v381 setName:v49];
        goto LABEL_107;
      case 3:
        v84 = v379;
        v85 = sub_1002F7EEC(*(a4 + 16));
        v379 = v84;
        if (!v84)
        {
          v88 = v85;
          v89 = v87;
          v370 = v86;
          v90 = v24;
          v369 = [v387 listIDsMergeableOrderingReplicaIDSource];
          v91 = *(a4 + 16);
          v92 = v380;
          v93 = v381;
          v94 = [v381 createResolutionTokenMapIfNecessary];
          v95 = String._bridgeToObjectiveC()();
          v96 = [v94 mergeWithMap:v92 forKey:v95];

          if (v91 != 1)
          {
            v366 = v94;
            v177 = [v93 remObjectID];
            v104 = v89;
            if (!v177)
            {
              if (qword_100935E80 != -1)
              {
                swift_once();
              }

              v258 = type metadata accessor for Logger();
              sub_100006654(v258, qword_100941670);
              v259 = v381;
              v260 = v375;

              v261 = Logger.logObject.getter();
              v262 = static os_log_type_t.error.getter();
              (v260 | 0x8000000000000000), v263, v264, v265, v266, v267, v268, v269;

              v24 = v90;
              if (os_log_type_enabled(v261, v262))
              {
                v277 = swift_slowAlloc();
                v363 = v261;
                v278 = v277;
                v279 = v260;
                v280 = swift_slowAlloc();
                v364 = swift_slowAlloc();
                *&v386[0] = v364;
                *v278 = v365;
                v281 = [v259 objectID];
                *(v278 + 4) = v281;
                *v280 = v281;
                *(v278 + 12) = 2080;
                *(v278 + 14) = sub_10000668C(0xD000000000000018, (v279 | 0x8000000000000000), v386);
                v282 = v262;
                v283 = v363;
                _os_log_impl(&_mh_execute_header, v363, v282, "Can't merge list ordering for account because remObjectID is nil {account.objectID: %@, key: %s}", v278, 0x16u);
                sub_1000050A4(v280, &unk_100938E70, &unk_100797230);

                sub_10000607C(v364);

                (v279 | 0x8000000000000000), v284, v285, v286, v287, v288, v289, v290;
              }

              else
              {
                (v260 | 0x8000000000000000), v270, v271, v272, v273, v274, v275, v276;
              }

              v257 = &v388;
              goto LABEL_130;
            }

            v115 = v177;
            v178 = String._bridgeToObjectiveC()();
            v179 = [v93 valueForKey:v178];

            if (v179)
            {
              _bridgeAnyObjectToAny(_:)();
              swift_unknownObjectRelease();
            }

            else
            {
              v384 = 0u;
              v385 = 0u;
            }

            v386[0] = v384;
            v386[1] = v385;
            v24 = v90;
            if (*(&v385 + 1))
            {
              v291 = swift_dynamicCast();
              if (v291)
              {
                v113 = v382;
              }

              else
              {
                v113 = 0;
              }

              if (v291)
              {
                v114 = v383;
              }

              else
              {
                v114 = 0xF000000000000000;
              }

              if (v104)
              {
LABEL_121:
                v299 = v104;
                v300 = v375;
                v364 = v104;
                v301 = v369;
                v363 = sub_1002F8750(v113, v114, v369, 0xD000000000000018, (v375 | 0x8000000000000000), v115);
                v362 = v302;

                sub_100031A14(v113, v114);
                (v300 | 0x8000000000000000), v303, v304, v305, v306, v307, v308, v309;

                v104 = v364;
                v113 = v363;
                v114 = v362;
LABEL_124:
                v105 = v370;
                goto LABEL_125;
              }
            }

            else
            {
              sub_1000050A4(v386, &qword_100939ED0, &qword_100791B10);
              v113 = 0;
              v114 = 0xF000000000000000;
              if (v104)
              {
                goto LABEL_121;
              }
            }

            (v375 | 0x8000000000000000), v292, v293, v294, v295, v296, v297, v298;

            goto LABEL_124;
          }

          v24 = v90;
          v104 = v89;
          if ((v96 & 1) == 0)
          {
            (v375 | 0x8000000000000000), v97, v98, v99, v100, v101, v102, v103;
            v257 = &v389;
LABEL_130:

            v310 = v88;
            v311 = v370;
            goto LABEL_131;
          }

          v105 = v370;
          sub_1001CB4B8(v88, v370);
          (v375 | 0x8000000000000000), v106, v107, v108, v109, v110, v111, v112;
          v113 = v88;
          v114 = v105;
          v115 = v369;
LABEL_125:

          if (v114 >> 60 != 15)
          {
            isa = Data._bridgeToObjectiveC()().super.isa;
            [v381 setListIDsMergeableOrdering:isa];
            sub_100031A14(v88, v105);

            sub_100031A14(v113, v114);
            goto LABEL_132;
          }

          v310 = v88;
          v311 = v105;
LABEL_131:
          sub_100031A14(v310, v311);

LABEL_132:
          v12 = v372;
          a4 = v378;
LABEL_5:
          if (!--v23)
          {

            goto LABEL_144;
          }

          continue;
        }

        return;
      case 4:
      case 8:
        goto LABEL_5;
      case 5:
        goto LABEL_5;
      case 6:
        goto LABEL_5;
      case 7:
        if (qword_100935E80 != -1)
        {
          swift_once();
        }

        v127 = type metadata accessor for Logger();
        sub_100006654(v127, qword_100941670);
        v49 = Logger.logObject.getter();
        v128 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v49, v128))
        {
          v129 = swift_slowAlloc();
          *v129 = 0;
          _os_log_impl(&_mh_execute_header, v49, v128, "Actually really doing nothing for a merge on .listsDADisplayOrderChanged", v129, 2u);
        }

        goto LABEL_107;
      case 9:
        v49 = [v387 personID];
        [v381 setPersonID:v49];
        goto LABEL_107;
      case 10:
        if (qword_100935E88 != -1)
        {
          swift_once();
        }

        v116 = qword_100974D40;
        if (*(qword_100974D40 + 16))
        {
          v117 = sub_100005F4C(0x44496E6F73726570, 0xEC000000746C6153);
          v119 = v118;
          0xEC000000746C6153, v118, v120, v121, v122, v123, v124, v125;
          if (v119)
          {
            v126 = *(*(v116 + 56) + 16 * v117 + 8);

            goto LABEL_96;
          }
        }

        else
        {
          0xEC000000746C6153, v15, v16, v17, v18, v19, v20, v21;
        }

        if (qword_100936128 != -1)
        {
          swift_once();
        }

        v205 = type metadata accessor for Logger();
        sub_100006654(v205, qword_100946C50);
        v206 = Logger.logObject.getter();
        v207 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v206, v207))
        {
          v208 = swift_slowAlloc();
          v209 = swift_slowAlloc();
          *&v386[0] = v209;
          *v208 = v373;
          v370 = v24;
          v126 = 0xEC000000746C6153;
          v210 = v12;
          v211 = sub_10000668C(0x44496E6F73726570, 0xEC000000746C6153, v386);
          0xEC000000746C6153, v212, v213, v214, v215, v216, v217, v218;
          *(v208 + 4) = v211;
          v12 = v210;
          _os_log_impl(&_mh_execute_header, v206, v207, "Unknown ingestable key {key: %s}", v208, 0xCu);
          sub_10000607C(v209);

          v24 = v370;
        }

        else
        {

          v126 = 0xEC000000746C6153;
        }

LABEL_96:
        v233 = String._bridgeToObjectiveC()();
        v126, v234, v235, v236, v237, v238, v239, v240;
        v241 = [v12 mergeWithMap:v380 forKey:v233];

        if ((v241 & 1) == 0)
        {
          goto LABEL_4;
        }

        v242 = [v387 personIDSalt];
        a4 = v378;
        if (v242)
        {
          v243 = v242;
          v244 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v246 = v245;

          v49 = Data._bridgeToObjectiveC()().super.isa;
          sub_10001BBA0(v244, v246);
        }

        else
        {
          v49 = 0;
        }

        [v381 setPersonIDSalt:v49];
LABEL_107:

        goto LABEL_5;
      case 11:
      case 13:
        if (qword_100935E88 != -1)
        {
          swift_once();
        }

        v27 = v12;
        v28 = qword_100974D40;
        v29 = sub_1002F6E68(v25);
        v37 = v29;
        v38 = v30;
        if (*(v28 + 16))
        {
          v39 = sub_100005F4C(v29, v30);
          v41 = v40;
          v38, v40, v42, v43, v44, v45, v46, v47;
          if (v41)
          {
            v48 = *(*(v28 + 56) + 16 * v39 + 8);

            goto LABEL_65;
          }
        }

        else
        {
          v30, v30, v31, v32, v33, v34, v35, v36;
        }

        if (qword_100936128 != -1)
        {
          swift_once();
        }

        v141 = type metadata accessor for Logger();
        sub_100006654(v141, qword_100946C50);
        v142 = Logger.logObject.getter();
        v143 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v142, v143))
        {
          v144 = swift_slowAlloc();
          v145 = swift_slowAlloc();
          v370 = v37;
          v146 = v38;
          v147 = v145;
          *&v386[0] = v145;
          *v144 = v373;
          v148 = v24;
          v149 = v27;
          v150 = sub_10000668C(v370, v146, v386);
          v146, v151, v152, v153, v154, v155, v156, v157;
          *(v144 + 4) = v150;
          v158 = v149;
          v24 = v148;
          _os_log_impl(&_mh_execute_header, v142, v143, "Unknown ingestable key {key: %s}", v144, 0xCu);
          sub_10000607C(v147);
          v38 = v146;
          v37 = v370;

          v12 = v158;

          v48 = v38;
          v159 = v378;
          goto LABEL_66;
        }

        v48 = v38;
LABEL_65:
        v159 = v378;
        v12 = v27;
LABEL_66:
        v160 = String._bridgeToObjectiveC()();
        v48, v161, v162, v163, v164, v165, v166, v167;
        v168 = [v12 mergeWithMap:v380 forKey:v160];

        if ((v168 & 1) == 0)
        {
          a4 = v159;
          goto LABEL_5;
        }

        a4 = v159;
        if (v37 == 0xD000000000000012 && v371 == v38)
        {
          v38, v15, 0xD000000000000012, v17, v18, v19, v20, v21;
LABEL_72:
          v60 = [v387 didChooseToMigrate];
          v61 = "setDidChooseToMigrate:";
          goto LABEL_103;
        }

        v169 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v38, v170, v171, v172, v173, v174, v175, v176;
        if (v169)
        {
          goto LABEL_72;
        }

        v60 = [v387 didFinishMigration];
        v61 = "setDidFinishMigration:";
LABEL_103:
        [v381 v61];
        goto LABEL_5;
      case 12:
        v60 = [v387 didChooseToMigrateLocally];
        v61 = "setDidChooseToMigrateLocally:";
        goto LABEL_103;
      case 14:
        v50 = [v387 persistenceCloudSchemaVersion];
        [v381 setPersistenceCloudSchemaVersion:v50];
        goto LABEL_5;
      case 15:
        v60 = [v387 inactive];
        v61 = "setInactive:";
        goto LABEL_103;
      case 16:
        v49 = [v387 externalIdentifier];
        [v381 setExternalIdentifier:v49];
        goto LABEL_107;
      case 17:
        v49 = [v387 externalModificationTag];
        [v381 setExternalModificationTag:v49];
        goto LABEL_107;
      case 18:
        v49 = [v387 daSyncToken];
        [v381 setDaSyncToken:v49];
        goto LABEL_107;
      case 19:
        v49 = [v387 daPushKey];
        [v381 setDaPushKey:v49];
        goto LABEL_107;
      case 20:
        v49 = [v387 daConstraintsDescriptionPath];
        [v381 setDaConstraintsDescriptionPath:v49];
        goto LABEL_107;
      case 21:
        v60 = [v387 daAllowsCalendarAddDeleteModify];
        v61 = "setDaAllowsCalendarAddDeleteModify:";
        goto LABEL_103;
      case 22:
        v60 = [v387 daSupportsSharedCalendars];
        v61 = "setDaSupportsSharedCalendars:";
        goto LABEL_103;
      case 23:
        if (qword_100935E88 != -1)
        {
          swift_once();
        }

        v130 = qword_100974D40;
        if (*(qword_100974D40 + 16))
        {
          v131 = sub_100005F4C(0x67694D7361576164, 0xED00006465746172);
          v133 = v132;
          0xED00006465746172, v132, v134, v135, v136, v137, v138, v139;
          if (v133)
          {
            v140 = *(*(v130 + 56) + 16 * v131 + 8);

            goto LABEL_100;
          }
        }

        else
        {
          0xED00006465746172, v15, v16, v17, v18, v19, v20, v21;
        }

        if (qword_100936128 != -1)
        {
          swift_once();
        }

        v219 = type metadata accessor for Logger();
        sub_100006654(v219, qword_100946C50);
        v220 = Logger.logObject.getter();
        v221 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v220, v221))
        {
          v222 = swift_slowAlloc();
          v223 = swift_slowAlloc();
          *&v386[0] = v223;
          *v222 = v373;
          v370 = v24;
          v140 = 0xED00006465746172;
          v224 = v12;
          v225 = sub_10000668C(0x67694D7361576164, 0xED00006465746172, v386);
          0xED00006465746172, v226, v227, v228, v229, v230, v231, v232;
          *(v222 + 4) = v225;
          v12 = v224;
          _os_log_impl(&_mh_execute_header, v220, v221, "Unknown ingestable key {key: %s}", v222, 0xCu);
          sub_10000607C(v223);

          v24 = v370;
        }

        else
        {

          v140 = 0xED00006465746172;
        }

LABEL_100:
        v247 = String._bridgeToObjectiveC()();
        v140, v248, v249, v250, v251, v252, v253, v254;
        v255 = [v12 mergeWithMap:v380 forKey:v247];

        if (v255)
        {
          v256 = [v387 daWasMigrated];
          [v381 setDaWasMigrated:v256];
        }

LABEL_4:
        a4 = v378;
        goto LABEL_5;
      case 24:
        if (qword_100935E88 != -1)
        {
          swift_once();
        }

        v62 = qword_100974D40;
        if (*(qword_100974D40 + 16))
        {
          v63 = a4;
          v64 = v374;
          v65 = sub_100005F4C(0xD000000000000017, v374);
          v67 = v66;
          v68 = v64;
          a4 = v63;
          v68, v66, v69, v70, v71, v72, v73, v74;
          if (v67)
          {
            v75 = *(*(v62 + 56) + 16 * v65 + 8);

            goto LABEL_82;
          }
        }

        else
        {
          v374, v15, v16, v17, v18, v19, v20, v21;
        }

        if (qword_100936128 != -1)
        {
          swift_once();
        }

        v180 = type metadata accessor for Logger();
        sub_100006654(v180, qword_100946C50);
        v181 = Logger.logObject.getter();
        v182 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v181, v182))
        {
          v183 = swift_slowAlloc();
          v184 = swift_slowAlloc();
          *&v386[0] = v184;
          *v183 = v373;
          v185 = v374;
          v186 = v12;
          v187 = sub_10000668C(0xD000000000000017, v374, v386);
          v185, v188, v189, v190, v191, v192, v193, v194;
          *(v183 + 4) = v187;
          v12 = v186;
          a4 = v378;
          _os_log_impl(&_mh_execute_header, v181, v182, "Unknown ingestable key {key: %s}", v183, 0xCu);
          sub_10000607C(v184);
        }

        v75 = v374;
LABEL_82:
        v195 = String._bridgeToObjectiveC()();
        v75, v196, v197, v198, v199, v200, v201, v202;
        v203 = [v12 mergeWithMap:v380 forKey:v195];

        if (v203)
        {
          v204 = [v387 minimumSupportedVersion];
          [v381 setMinimumSupportedVersion:v204];
        }

        goto LABEL_5;
      case 25:
        v60 = [v387 debugSyncDisabled];
        v61 = "setDebugSyncDisabled:";
        goto LABEL_103;
      default:
        v76 = [v387 objectID];
        v77 = [v76 uuid];

        v78 = v376;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v49 = UUID._bridgeToObjectiveC()().super.isa;
        (*v368)(v78, v377);
        [v381 setIdentifier:v49];
        goto LABEL_107;
    }
  }
}

void sub_1002FB558(void *a1, uint64_t a2, char a3, uint64_t a4)
{
  v5 = v4;
  if ((a3 & 1) == 0)
  {
    v17 = [a1 listIDsToUndelete];
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    sub_10000CDE4(&qword_1009391F0, &qword_1009391E0, REMObjectID_ptr, &protocol conformance descriptor for NSObject);
    v18 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    if ((v18 & 0xC000000000000001) != 0)
    {
      __CocoaSet.makeIterator()();
      Set.Iterator.init(_cocoa:)();
      v18 = v95;
      v19 = v96;
      v20 = v97;
      v21 = v98;
      v22 = v99;
    }

    else
    {
      v21 = 0;
      v29 = -1 << *(v18 + 32);
      v19 = v18 + 56;
      v20 = ~v29;
      v30 = -v29;
      if (v30 < 64)
      {
        v31 = ~(-1 << v30);
      }

      else
      {
        v31 = -1;
      }

      v22 = v31 & *(v18 + 56);
    }

    v32 = (v20 + 64) >> 6;
    v87 = v18;
    v89 = v19;
    while (1)
    {
      if (v18 < 0)
      {
        if (!__CocoaSet.Iterator.next()())
        {
          goto LABEL_36;
        }

        swift_dynamicCast();
        v46 = v105;
        v44 = v21;
        v45 = v22;
        if (!v105)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v42 = v21;
        v43 = v22;
        v44 = v21;
        if (!v22)
        {
          while (1)
          {
            v44 = v42 + 1;
            if (__OFADD__(v42, 1))
            {
              __break(1u);
              goto LABEL_70;
            }

            if (v44 >= v32)
            {
              break;
            }

            v43 = *(v19 + 8 * v44);
            ++v42;
            if (v43)
            {
              goto LABEL_22;
            }
          }

LABEL_36:
          sub_10001B860(v18);
          return;
        }

LABEL_22:
        v45 = (v43 - 1) & v43;
        v46 = *(*(v18 + 48) + ((v44 << 9) | (8 * __clz(__rbit64(v43)))));
        if (!v46)
        {
          goto LABEL_36;
        }
      }

      sub_1006883B8(0, v46, a4);
      if (v5)
      {
        v86 = v18;
LABEL_67:
        sub_10001B860(v86);

        return;
      }

      v91 = v45;
      v48 = v47;
      [v48 setParentAccount:a2];
      v49 = [v48 createResolutionTokenMapIfNecessary];
      if (qword_1009366C8 != -1)
      {
        swift_once();
      }

      v50 = qword_1009752A0;
      if (*(qword_1009752A0 + 16) && (v51 = sub_100005F4C(0x6341746E65726170, 0xEF4449746E756F63), (v52 & 1) != 0))
      {
        v33 = *(*(v50 + 56) + 16 * v51 + 8);
      }

      else
      {
        if (qword_100936128 != -1)
        {
          swift_once();
        }

        v53 = type metadata accessor for Logger();
        sub_100006654(v53, qword_100946C50);
        v54 = Logger.logObject.getter();
        v55 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v54, v55))
        {
          v56 = swift_slowAlloc();
          v57 = swift_slowAlloc();
          v105 = v57;
          *v56 = 136315138;
          *(v56 + 4) = sub_10000668C(0x6341746E65726170, 0xEF4449746E756F63, &v105);
          _os_log_impl(&_mh_execute_header, v54, v55, "Unknown ingestable key {key: %s}", v56, 0xCu);
          sub_10000607C(v57);
          v5 = 0;
        }

        v33 = 0xEF4449746E756F63;
        v18 = v87;
      }

      v34 = String._bridgeToObjectiveC()();
      v33, v35, v36, v37, v38, v39, v40, v41;
      [v49 updateForKey:v34];

      v21 = v44;
      v19 = v89;
      v22 = v91;
    }
  }

  v7 = [a1 smartListIDsToUndelete];
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  sub_10000CDE4(&qword_1009391F0, &qword_1009391E0, REMObjectID_ptr, &protocol conformance descriptor for NSObject);
  v8 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v8 & 0xC000000000000001) != 0)
  {
    v16 = __CocoaSet.count.getter();
  }

  else
  {
    v16 = *(v8 + 16);
  }

  v8, v9, v10, v11, v12, v13, v14, v15;
  if (!v16)
  {
    return;
  }

  v23 = [a1 smartListIDsToUndelete];
  v24 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v24 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v24 = v100;
    v25 = v101;
    v26 = v102;
    v27 = v103;
    v28 = v104;
  }

  else
  {
    v27 = 0;
    v58 = -1 << *(v24 + 32);
    v25 = v24 + 56;
    v26 = ~v58;
    v59 = -v58;
    if (v59 < 64)
    {
      v60 = ~(-1 << v59);
    }

    else
    {
      v60 = -1;
    }

    v28 = v60 & *(v24 + 56);
  }

  v61 = (v26 + 64) >> 6;
  v90 = v25;
  v88 = v24;
  while (v24 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (swift_dynamicCast(), v46 = v105, v73 = v27, v74 = v28, !v105))
    {
LABEL_63:
      sub_10001B860(v24);
      return;
    }

LABEL_53:
    sub_1006883E0(1, v46, a4);
    if (v5)
    {
      v86 = v24;
      goto LABEL_67;
    }

    v92 = v74;
    v76 = v75;
    [v76 setParentAccount:a2];
    v77 = [v76 createResolutionTokenMapIfNecessary];
    if (qword_100935C70 != -1)
    {
      swift_once();
    }

    v78 = qword_100974C80;
    if (*(qword_100974C80 + 16) && (v79 = sub_100005F4C(0x6341746E65726170, 0xEF4449746E756F63), (v80 & 1) != 0))
    {
      v62 = *(*(v78 + 56) + 16 * v79 + 8);
    }

    else
    {
      if (qword_100936128 != -1)
      {
        swift_once();
      }

      v81 = type metadata accessor for Logger();
      sub_100006654(v81, qword_100946C50);
      v82 = Logger.logObject.getter();
      v83 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v82, v83))
      {
        v84 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        v105 = v85;
        *v84 = 136315138;
        *(v84 + 4) = sub_10000668C(0x6341746E65726170, 0xEF4449746E756F63, &v105);
        _os_log_impl(&_mh_execute_header, v82, v83, "Unknown ingestable key {key: %s}", v84, 0xCu);
        sub_10000607C(v85);
        v5 = 0;
      }

      v62 = 0xEF4449746E756F63;
    }

    v63 = String._bridgeToObjectiveC()();
    v62, v64, v65, v66, v67, v68, v69, v70;
    [v77 updateForKey:v63];

    v27 = v73;
    v25 = v90;
    v28 = v92;
    v24 = v88;
  }

  v71 = v27;
  v72 = v28;
  v73 = v27;
  if (v28)
  {
LABEL_49:
    v74 = (v72 - 1) & v72;
    v46 = *(*(v24 + 48) + ((v73 << 9) | (8 * __clz(__rbit64(v72)))));
    if (!v46)
    {
      goto LABEL_63;
    }

    goto LABEL_53;
  }

  while (1)
  {
    v73 = v71 + 1;
    if (__OFADD__(v71, 1))
    {
      break;
    }

    if (v73 >= v61)
    {
      goto LABEL_63;
    }

    v72 = *(v25 + 8 * v73);
    ++v71;
    if (v72)
    {
      goto LABEL_49;
    }
  }

LABEL_70:
  __break(1u);
}

uint64_t sub_1002FBEA0(void *a1, void *a2)
{
  v102 = a2;
  v103 = type metadata accessor for UUID();
  v3 = *(v103 - 8);
  __chkstk_darwin(v103, v4);
  v95 = &storeController - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v6 - 8, v7);
  v9 = &storeController - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v11);
  v13 = &storeController - v12;
  v14 = swift_allocObject();
  *(v14 + 16) = _swiftEmptyDictionarySingleton;
  v15 = v14 + 16;
  v16 = [objc_opt_self() cdEntityName];
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  v98 = a1;
  v20 = sub_1000FF9FC(v17, v19);
  v19, v21, v22, v23, v24, v25, v26, v27;
  v108 = sub_1002FF4C4;
  v109 = v14;
  aBlock = _NSConcreteStackBlock;
  v105 = 1107296256;
  v106 = sub_1002FFDC4;
  v107 = &unk_1008ED5D8;
  v28 = _Block_copy(&aBlock);
  v99 = v14;

  [v20 enumerateObjectsUsingBlock:v28];
  _Block_release(v28);

  v29 = swift_allocObject();
  *(v29 + 16) = v15;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_1002FF4CC;
  *(v30 + 24) = v29;
  v108 = sub_1002FF4D4;
  v109 = v30;
  aBlock = _NSConcreteStackBlock;
  v105 = 1107296256;
  v106 = sub_1005E2238;
  v107 = &unk_1008ED650;
  v31 = _Block_copy(&aBlock);

  v32 = [v102 sortedArrayWithOptions:16 usingComparator:v31];
  _Block_release(v31);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_23:
    __break(1u);
  }

  else
  {
    v34 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    aBlock = v34;
    sub_1000060C8(0, &unk_100938880, off_1008D41A8);
    sub_1000F5104(&qword_10093CB40, &qword_1007A4450);
    sub_10000CB48(&qword_1009418B0, &qword_10093CB40, &qword_1007A4450, &protocol conformance descriptor for [A]);
    v35 = Sequence.elements<A>(ofType:)();
    v36 = v34;
    isEscapingClosureAtFileLocation = v35;
    v36, v37, v38, v39, v40, v41, v42, v43;
    aBlock = &_swiftEmptyArrayStorage;
    if (!(isEscapingClosureAtFileLocation >> 62))
    {
      v102 = (isEscapingClosureAtFileLocation & 0xFFFFFFFFFFFFFF8);
      v51 = *((isEscapingClosureAtFileLocation & 0xFFFFFFFFFFFFFF8) + 0x10);
      v97 = v29;
      if (v51)
      {
        goto LABEL_4;
      }

LABEL_25:
      v55 = &_swiftEmptyArrayStorage;
      goto LABEL_26;
    }
  }

  v102 = (isEscapingClosureAtFileLocation & 0xFFFFFFFFFFFFFF8);
  v51 = _CocoaArrayWrapper.endIndex.getter();
  v97 = v29;
  if (!v51)
  {
    goto LABEL_25;
  }

LABEL_4:
  v52 = 0;
  v101 = isEscapingClosureAtFileLocation & 0xC000000000000001;
  v53 = &v3->clientIdentity[40];
  v54 = &v3->clientIdentity[32];
  clientIdentity = v3->clientIdentity;
  v55 = &_swiftEmptyArrayStorage;
  storeController = v3->storeController;
  v100 = v51;
  do
  {
    v96 = v55;
    v56 = v52;
    while (1)
    {
      if (v101)
      {
        v29 = isEscapingClosureAtFileLocation;
        v57 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v56 >= *(v102 + 2))
        {
          goto LABEL_22;
        }

        v29 = isEscapingClosureAtFileLocation;
        v57 = *(isEscapingClosureAtFileLocation + 8 * v56 + 32);
      }

      isEscapingClosureAtFileLocation = v57;
      v52 = v56 + 1;
      if (__OFADD__(v56, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v58 = [(RDXPCStorePerformer *)v57 identifier];
      if (v58)
      {
        v59 = v58;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v60 = 0;
      }

      else
      {
        v60 = 1;
      }

      v3 = v103;
      (*v53)(v9, v60, 1, v103);
      sub_100100FB4(v9, v13);
      if (!(*v54)(v13, 1, v3))
      {
        break;
      }

      sub_1000050A4(v13, &unk_100939D90, "8\n\r");
      ++v56;
      isEscapingClosureAtFileLocation = v29;
      if (v52 == v100)
      {
        v55 = v96;
        goto LABEL_26;
      }
    }

    v61 = v95;
    (*clientIdentity)(v95, v13, v103);
    sub_1000050A4(v13, &unk_100939D90, "8\n\r");
    v96 = UUID.uuidString.getter();
    v3 = v62;
    (*storeController)(v61, v103);
    v96 = String._bridgeToObjectiveC()();
    v3, v63, v64, v65, v66, v67, v68, v69;

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v3 = *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v55 = aBlock;
    isEscapingClosureAtFileLocation = v29;
  }

  while (v52 != v100);
LABEL_26:
  isEscapingClosureAtFileLocation, v44, v45, v46, v47, v48, v49, v50;
  v70 = sub_100271218(v55);
  v55, v71, v72, v73, v74, v75, v76, v77;
  v78 = objc_allocWithZone(NSOrderedSet);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v70, v80, v81, v82, v83, v84, v85, v86;
  v87 = [v78 initWithArray:isa];

  v88 = v98;
  v89 = [v98 orderedSet];
  v90 = [v89 isEqual:v87];

  if (v90)
  {
    v88;
  }

  else
  {
    v91 = [v88 replicaIDSource];
    [objc_allocWithZone(REMCRMergeableOrderedSet) initWithReplicaIDSource:v91 orderedSet:v87];
  }

  return v90 ^ 1;
}

void sub_1002FC650()
{
  v171 = type metadata accessor for UUID();
  v162 = *(v171 - 8);
  __chkstk_darwin(v171, v0);
  v164 = v161 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v2 - 8, v3);
  v170 = v161 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v6);
  v169 = v161 - v7;
  v8 = type metadata accessor for NSFastEnumerationIterator();
  *&v174 = *(v8 - 8);
  __chkstk_darwin(v8, v9);
  v11 = v161 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = &_swiftEmptyArrayStorage;
  v180 = &_swiftEmptyArrayStorage;
  NSOrderedSet.makeIterator()();
  sub_1002FF4DC();
  dispatch thunk of IteratorProtocol.next()();
  if (v179)
  {
    v173 = &_swiftEmptyArrayStorage;
    do
    {
      sub_100005EE0(&v178, v177);
      sub_100005EF0(v177, v176);
      sub_1000060C8(0, &unk_100938880, off_1008D41A8);
      if (swift_dynamicCast())
      {
        v13 = v175;
        v14 = [v175 daIsNotificationsCollection];
        sub_10000607C(v177);
        if (v14)
        {
        }

        else
        {
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v180 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v180 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v173 = *((v180 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v173 = v180;
        }
      }

      else
      {
        sub_10000607C(v177);
      }

      dispatch thunk of IteratorProtocol.next()();
    }

    while (v179);
  }

  else
  {
    v173 = &_swiftEmptyArrayStorage;
  }

  (*(v174 + 8))(v11, v8);
  v22 = v173;
  v23 = v173 >> 62;
  if (v173 >> 62)
  {
    v24 = _CocoaArrayWrapper.endIndex.getter();
    if (v24)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v24 = *((v173 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v24)
    {
LABEL_14:
      *&v178 = &_swiftEmptyArrayStorage;
      sub_100253AF4(0, v24 & ~(v24 >> 63), 0);
      if (v24 < 0)
      {
LABEL_83:
        __break(1u);

        __break(1u);
        return;
      }

      *&v174 = v24;
      v25 = 0;
      v12 = v178;
      do
      {
        if ((v22 & 0xC000000000000001) != 0)
        {
          v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v26 = *&v22->clientIdentity[8 * v25 + 16];
        }

        v27 = v26;
        v28 = [v26 daDisplayOrder];

        *&v178 = v12;
        v30 = *v12->clientIdentity;
        v29 = *&v12->clientIdentity[8];
        v31 = v30 + 1;
        if (v30 >= v29 >> 1)
        {
          sub_100253AF4((v29 > 1), v30 + 1, 1);
          v12 = v178;
        }

        ++v25;
        *v12->clientIdentity = v31;
        *&v12->clientIdentity[8 * v30 + 16] = v28;
      }

      while (v174 != v25);
      goto LABEL_25;
    }
  }

  *&v174 = v24;
  v31 = *_swiftEmptyArrayStorage.clientIdentity;
  v32 = &_swiftEmptyArrayStorage;
  if (v31)
  {
LABEL_25:
    v32 = &_swiftEmptyArrayStorage;
    v33 = 32;
    do
    {
      v36 = *(&v12->super.isa + v33);
      if (v36 >= 1)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v178 = v32;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100253AF4(0, *v32->clientIdentity + 1, 1);
          v32 = v178;
        }

        v35 = *v32->clientIdentity;
        v34 = *&v32->clientIdentity[8];
        if (v35 >= v34 >> 1)
        {
          sub_100253AF4((v34 > 1), v35 + 1, 1);
          v32 = v178;
        }

        *v32->clientIdentity = v35 + 1;
        *&v32->clientIdentity[8 * v35 + 16] = v36;
      }

      v33 += 8;
      --v31;
    }

    while (v31);
  }

  v12, v15, v16, v17, v18, v19, v20, v21;
  *&v178 = v32;

  sub_1002F8B08(&v178);

  v172 = v178;
  v38 = v174;
  if (qword_100935E80 != -1)
  {
    goto LABEL_81;
  }

  while (1)
  {
    v39 = type metadata accessor for Logger();
    v40 = sub_100006654(v39, qword_100941670);

    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v50 = swift_slowAlloc();
      *v50 = 134217984;
      if (v23)
      {
        v51 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v51 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v23 = v171;
      *(v50 + 4) = v51;
      v22, v43, v44, v45, v46, v47, v48, v49;
      _os_log_impl(&_mh_execute_header, v41, v42, "Going to back propagate ordering changes to CD lists {listsCount: %ld}", v50, 0xCu);
    }

    else
    {

      v22, v52, v53, v54, v55, v56, v57, v58;
      v23 = v171;
    }

    v66 = v170;
    if (v38 < 0)
    {
      __break(1u);
      goto LABEL_83;
    }

    v161[1] = v40;
    v67 = &_swiftEmptyArrayStorage;
    if (!v38)
    {
      break;
    }

    v68 = 0;
    v69 = 0;
    v70 = *(v172 + 16);
    v71 = v22 & 0xC000000000000001;
    v168 = v172 + 32;
    v166 = (v162 + 7);
    v165 = (v162 + 6);
    v163 = (v162 + 2);
    ++v162;
    v167 = v22 & 0xC000000000000001;
    while (1)
    {
      v72 = v71 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *&v22->clientIdentity[8 * v69 + 16];
      v22 = v72;
      v73 = [(RDXPCStorePerformer *)v72 daDisplayOrder];
      v74 = v73;
      if (v69 >= v70)
      {
        v75 = 0;
      }

      else
      {
        if (v69 >= *(v172 + 16))
        {
          goto LABEL_80;
        }

        v75 = *(v168 + 8 * v69);
      }

      if (__OFADD__(v68, 1))
      {
        break;
      }

      if ((v68 + 1) <= v75)
      {
        v68 = v75;
      }

      else
      {
        v68 = (v68 + 1);
      }

      if (v73 == v68)
      {
      }

      else
      {
        [(RDXPCStorePerformer *)v22 setDaDisplayOrder:v68];
        v76 = [(RDXPCStorePerformer *)v22 identifier];
        if (v76)
        {
          v77 = v76;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v78 = 0;
        }

        else
        {
          v78 = 1;
        }

        (*v166)(v66, v78, 1, v23);
        v79 = v169;
        sub_100100FB4(v66, v169);
        if ((*v165)(v79, 1, v23))
        {
          sub_1000050A4(v79, &unk_100939D90, "8\n\r");
          v80 = 0;
          v81 = 0;
        }

        else
        {
          v82 = v164;
          (*v163)(v164, v79, v23);
          sub_1000050A4(v79, &unk_100939D90, "8\n\r");
          v80 = UUID.uuidString.getter();
          v81 = v83;
          (*v162)(v82, v23);
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v67 = sub_100367B18(0, (*v67->clientIdentity + 1), 1, v67, v84, v85, v86, v87);
        }

        v89 = *v67->clientIdentity;
        v88 = *&v67->clientIdentity[8];
        if (v89 >= v88 >> 1)
        {
          v67 = sub_100367B18((v88 > 1), (v89 + 1), 1, v67, v84, v85, v86, v87);
        }

        *v67->clientIdentity = v89 + 1;
        v90 = &v67->super.isa + 4 * v89;
        v90[4] = v80;
        v90[5] = v81;
        v90[6] = v74;
        v90[7] = v68;
        v66 = v170;
        v23 = v171;
        v38 = v174;
        v71 = v167;
      }

      ++v69;
      v22 = v173;
      if (v38 == v69)
      {
        goto LABEL_68;
      }
    }

    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    swift_once();
  }

LABEL_68:
  v22, v59, v60, v61, v62, v63, v64, v65;

  p_super = Logger.logObject.getter();
  v92 = static os_log_type_t.info.getter();
  v67, v93, v94, v95, v96, v97, v98, v99;
  if (os_log_type_enabled(p_super, v92))
  {
    v107 = swift_slowAlloc();
    v108 = swift_slowAlloc();
    v116 = v108;
    *&v178 = v108;
    *v107 = 136315138;
    v117 = *v67->clientIdentity;
    if (v117)
    {
      v170 = v108;
      v171 = v107;
      LODWORD(v172) = v92;
      v173 = p_super;
      *&v177[0] = &_swiftEmptyArrayStorage;
      sub_100253B24(0, v117, 0);
      v118 = *&v177[0];
      v119 = &v67->clientIdentity[40];
      v174 = xmmword_100791340;
      do
      {
        v121 = *(v119 - 3);
        v120 = *(v119 - 2);
        v122 = *(v119 - 1);
        v123 = *v119;
        sub_1000F5104(&qword_100939EB0, &qword_1007989A0);
        v124 = swift_allocObject();
        *(v124 + 16) = v174;
        *(v124 + 56) = &type metadata for Int64;
        *(v124 + 64) = &protocol witness table for Int64;
        *(v124 + 72) = v123;
        *(v124 + 32) = v122;
        *(v124 + 96) = &type metadata for Int64;
        *(v124 + 104) = &protocol witness table for Int64;
        swift_bridgeObjectRetain_n();
        v125 = String.init(format:_:)();
        v127 = v126;
        v120, v126, v128, v129, v130, v131, v132, v133;
        *&v177[0] = v118;
        v142 = *v118->clientIdentity;
        v141 = *&v118->clientIdentity[8];
        if (v142 >= v141 >> 1)
        {
          sub_100253B24((v141 > 1), v142 + 1, 1);
          v118 = *&v177[0];
        }

        v119 += 32;
        *v118->clientIdentity = v142 + 1;
        v143 = &v118->super.isa + 4 * v142;
        v143[4] = v121;
        v143[5] = v120;
        v143[6] = v125;
        v143[7] = v127;
        --v117;
      }

      while (v117);
      v67, v134, v135, v136, v137, v138, v139, v140;
      p_super = &v173->super;
      LOBYTE(v92) = v172;
      v116 = v170;
      v107 = v171;
    }

    else
    {
      v67, v109, v110, v111, v112, v113, v114, v115;
      v118 = &_swiftEmptyArrayStorage;
    }

    sub_1000F5104(&qword_10093ECC8, &qword_1007B4CD0);
    v144 = Array.description.getter();
    v146 = v145;
    v118, v145, v147, v148, v149, v150, v151, v152;
    v153 = sub_10000668C(v144, v146, &v178);
    v146, v154, v155, v156, v157, v158, v159, v160;
    *(v107 + 4) = v153;
    _os_log_impl(&_mh_execute_header, p_super, v92, "Back propagated ordering changes to CD lists - {changes: %s}", v107, 0xCu);
    sub_10000607C(v116);
  }

  else
  {
    v67, v100, v101, v102, v103, v104, v105, v106;
  }
}

void sub_1002FD1B4(void *a1, void *a2, char *a3, uint64_t a4)
{
  v351 = a1;
  v7 = type metadata accessor for UUID();
  v8 = *&v7[-1].shareRecordIDToRootRecordIDLock[2];
  __chkstk_darwin(v7, v9);
  v343 = &v329 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v11 - 8, v12);
  v341 = &v329 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v15);
  v342 = &v329 - v16;
  __chkstk_darwin(v17, v18);
  v20 = &v329 - v19;
  __chkstk_darwin(v21, v22);
  v348 = &v329 - v23;
  __chkstk_darwin(v24, v25);
  v27 = (&v329 - v26);
  *&v30 = __chkstk_darwin(v28, v29).n128_u64[0];
  v353 = (&v329 - v31);
  v32 = [a3 listsDADisplayOrderChanged];
  v33 = &selRef_isEmpty;
  v354 = v7;
  v346 = a2;
  v344 = a4;
  v349 = v20;
  if (!v32)
  {
LABEL_32:
    v345 = v8;
    v87 = v33;
    if (qword_100935E80 != -1)
    {
      swift_once();
    }

    v88 = type metadata accessor for Logger();
    v89 = sub_100006654(v88, qword_100941670);
    v90 = a3;
    v91 = v351;
    v92 = Logger.logObject.getter();
    v93 = static os_log_type_t.debug.getter();

    LODWORD(v338) = v93;
    v94 = os_log_type_enabled(v92, v93);
    v340 = v89;
    v339 = v91;
    if (!v94)
    {

      v121 = v345;
LABEL_63:
      v142 = [v90 v87[83]];
      if (v142)
      {
        v143 = v142;
        v144 = swift_allocObject();
        *(v144 + 16) = _swiftEmptyDictionarySingleton;
        v145 = (v144 + 16);
        v360 = sub_1002FF4BC;
        v361 = v144;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        *&v359 = sub_1002FFDC4;
        *(&v359 + 1) = &unk_1008ED560;
        v146 = _Block_copy(&aBlock);

        [v143 enumerateObjectsUsingBlock:v146];
        _Block_release(v146);
        swift_beginAccess();
        v147 = *v145;

        v148 = v339;
        sub_1000FEA70(v339, v147, 0);

        v147, v149, v150, v151, v152, v153, v154, v155;
        v156 = v90;
        v157 = v148;
        v158 = Logger.logObject.getter();
        v159 = static os_log_type_t.debug.getter();

        v160 = os_log_type_enabled(v158, v159);
        v350 = v157;
        v351 = v143;
        if (!v160)
        {

          goto LABEL_96;
        }

        LODWORD(v336) = v159;
        v338 = v158;
        v161 = swift_slowAlloc();
        v162 = swift_slowAlloc();
        v335 = swift_slowAlloc();
        *&aBlock = v335;
        *v161 = 138412546;
        v163 = [v156 remObjectID];
        *(v161 + 4) = v163;
        v334 = v162;
        *v162 = v163;
        v337 = v161;
        *(v161 + 12) = 2080;
        v357 = v157;
        sub_1000060C8(0, &unk_100938880, off_1008D41A8);
        sub_1000060C8(0, &unk_100950C20, NSMutableOrderedSet_ptr);
        sub_10000CDE4(&qword_1009374C8, &unk_100950C20, NSMutableOrderedSet_ptr, &protocol conformance descriptor for NSOrderedSet);
        v164 = Sequence.elements<A>(ofType:)();
        v172 = v164;
        if (v164 >> 62)
        {
LABEL_93:
          v353 = (v172 & 0xFFFFFFFFFFFFFF8);
          v173 = _CocoaArrayWrapper.endIndex.getter();
          if (v173)
          {
LABEL_67:
            v174 = 0;
            v352 = (v172 & 0xC000000000000001);
            v175 = (v345 + 56);
            v176 = (v345 + 48);
            v333 = v345 + 16;
            v332 = (v345 + 8);
            v177 = &_swiftEmptyArrayStorage;
            do
            {
              v339 = v177;
              v178 = v174;
              while (1)
              {
                if (v352)
                {
                  v179 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  if (v178 >= v353[2].isa)
                  {
                    goto LABEL_92;
                  }

                  v179 = *(v172 + 8 * v178 + 32);
                }

                v180 = v179;
                v174 = (v178 + 1);
                if (__OFADD__(v178, 1))
                {
                  __break(1u);
LABEL_92:
                  __break(1u);
                  goto LABEL_93;
                }

                v181 = [v179 identifier];
                if (v181)
                {
                  v182 = v349;
                  v183 = v181;
                  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                  v7 = v354;
                  v184 = 0;
                }

                else
                {
                  v184 = 1;
                  v182 = v349;
                }

                (*v175)(v182, v184, 1, v7);
                v185 = v182;
                v186 = v348;
                sub_100100FB4(v185, v348);
                if (!(*v176)(v186, 1, v7))
                {
                  break;
                }

                sub_1000050A4(v186, &unk_100939D90, "8\n\r");
                v178 = (v178 + 1);
                if (v174 == v173)
                {
                  v177 = v339;
                  goto LABEL_95;
                }
              }

              v187 = v343;
              (*v333)(v343, v186, v7);
              sub_1000050A4(v186, &unk_100939D90, "8\n\r");
              v188 = UUID.uuidString.getter();
              v331 = v189;

              (*v332)(v187, v7);
              v177 = v339;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v177 = sub_100365788(0, *v177->clientIdentity + 1, 1, v177, v168, v169, v170, v171);
              }

              v191 = *v177->clientIdentity;
              v190 = *&v177->clientIdentity[8];
              if (v191 >= v190 >> 1)
              {
                v177 = sub_100365788((v190 > 1), v191 + 1, 1, v177, v168, v169, v170, v171);
              }

              *v177->clientIdentity = v191 + 1;
              v192 = v177 + 16 * v191;
              v193 = v331;
              *(v192 + 4) = v188;
              *(v192 + 5) = v193;
              v7 = v354;
            }

            while (v174 != v173);
            goto LABEL_95;
          }
        }

        else
        {
          v353 = (v164 & 0xFFFFFFFFFFFFFF8);
          v173 = *((v164 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v173)
          {
            goto LABEL_67;
          }
        }

        v177 = &_swiftEmptyArrayStorage;
LABEL_95:
        v172, v165, v166, v167, v168, v169, v170, v171;
        v204 = Array.description.getter();
        v205 = v177;
        v207 = v206;
        v205, v206, v208, v209, v210, v211, v212, v213;
        v214 = sub_10000668C(v204, v207, &aBlock);
        v207, v215, v216, v217, v218, v219, v220, v221;
        v222 = v337;
        *(v337 + 14) = v214;
        v223 = v338;
        _os_log_impl(&_mh_execute_header, v338, v336, "sorting ordered set account.lists - after - {account: %@, lists: %s}", v222, 0x16u);
        sub_1000050A4(v334, &unk_100938E70, &unk_100797230);

        sub_10000607C(v335);

        a2 = v346;
        v121 = v345;
        v157 = v350;
        v143 = v351;
LABEL_96:
        v224 = String._bridgeToObjectiveC()();
        v225 = [a2 mutableOrderedSetValueForKey:v224];

        v353 = v225;
        if ([v225 count]>= 1)
        {
          v226 = swift_allocObject();
          *(v226 + 16) = _swiftEmptyDictionarySingleton;
          v227 = (v226 + 16);
          v360 = sub_1002FFDC8;
          v361 = v226;
          *&aBlock = _NSConcreteStackBlock;
          *(&aBlock + 1) = 1107296256;
          *&v359 = sub_1002FFDC4;
          *(&v359 + 1) = &unk_1008ED588;
          v228 = a2;
          v229 = _Block_copy(&aBlock);

          [v143 enumerateObjectsUsingBlock:v229];
          _Block_release(v229);
          swift_beginAccess();
          v230 = *v227;

          v231 = v353;
          sub_1000FEA70(v353, v230, 0);

          v230, v232, v233, v234, v235, v236, v237, v238;
          v239 = v231;
          v240 = v228;
          v241 = Logger.logObject.getter();
          v242 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v241, v242))
          {
            v243 = swift_slowAlloc();
            v244 = swift_slowAlloc();
            v357 = v244;
            *v243 = 136446466;
            v245 = [v240 remObjectID];
            if (v245)
            {
              v246 = v245;
              v247 = [v245 description];

              v7 = v354;
              v248 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v250 = v249;
            }

            else
            {
              v248 = 7104878;
              v250 = 0xE300000000000000;
            }

            v251 = sub_10000668C(v248, v250, &v357);
            v250, v252, v253, v254, v255, v256, v257, v258;
            *(v243 + 4) = v251;
            *(v243 + 12) = 2048;
            v259 = [v239 count];

            *(v243 + 14) = v259;
            _os_log_impl(&_mh_execute_header, v241, v242, "REMAccountStorage+CDIngestor.mutateOrdering(): Sorted account.smartLists {account: %{public}s, #smartLists: %ld}", v243, 0x16u);
            sub_10000607C(v244);

            a2 = v346;
            v121 = v345;
            v157 = v350;
            v143 = v351;
          }

          else
          {

            a2 = v346;
            v143 = v351;
          }
        }

        v260 = [a2 identifier];
        if (v260)
        {
          v261 = v341;
          v262 = v260;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v263 = 0;
        }

        else
        {
          v263 = 1;
          v261 = v341;
        }

        (*(v121 + 7))(v261, v263, 1, v7);
        v264 = v342;
        sub_100100FB4(v261, v342);
        if ((*(v121 + 6))(v264, 1, v7))
        {
          sub_1000050A4(v264, &unk_100939D90, "8\n\r");
        }

        else
        {
          v277 = v343;
          (*(v121 + 2))(v343, v264, v7);
          sub_1000050A4(v264, &unk_100939D90, "8\n\r");
          UUID.uuidString.getter();
          v279 = v278;
          (*(v121 + 1))(v277, v7);
          v280 = *(v344 + 80);
          v281 = a2;
          v282 = String._bridgeToObjectiveC()();
          v279, v283, v284, v285, v286, v287, v288, v289;
          v290 = [v280 storeForAccountIdentifier:v282];

          a2 = v281;
          if (v290)
          {
            v291 = sub_100724C50();
            v292 = v347;
            sub_100718C70(v157, v291, v143, v290);
            if (v292)
            {
            }

            v347 = 0;
            v301 = v157;
            v302 = v291;
            v303 = v301;
            v304 = v281;
            v305 = v302;
            v306 = Logger.logObject.getter();
            v307 = static os_log_type_t.info.getter();

            if (os_log_type_enabled(v306, v307))
            {
              LODWORD(v354) = v307;
              v308 = swift_slowAlloc();
              v352 = swift_slowAlloc();
              v357 = v352;
              *v308 = 136446722;
              v309 = [v304 remObjectID];
              if (v309)
              {
                v310 = v309;
                v311 = [v309 description];

                v312 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v314 = v313;
              }

              else
              {
                v312 = 7104878;
                v314 = 0xE300000000000000;
              }

              v315 = sub_10000668C(v312, v314, &v357);
              v314, v316, v317, v318, v319, v320, v321, v322;
              *(v308 + 4) = v315;
              *(v308 + 12) = 2048;
              v323 = [v305 count];

              *(v308 + 14) = v323;
              *(v308 + 22) = 2048;
              v324 = [(RDXPCStorePerformer *)v303 count];

              *(v308 + 24) = v324;
              _os_log_impl(&_mh_execute_header, v306, v354, "REMAccountStorage+CDIngestor.mutateOrdering(): Sorted intermixed ordered IDs for CSLs and Lists in REMCDAccountListData {account: %{public}s, #csls: %ld, #lists: %ld}", v308, 0x20u);
              sub_10000607C(v352);

              a2 = v346;
              v143 = v351;
            }

            else
            {

              a2 = v281;
            }

            goto LABEL_123;
          }
        }

        v265 = a2;
        v266 = Logger.logObject.getter();
        v267 = static os_log_type_t.fault.getter();

        if (os_log_type_enabled(v266, v267))
        {
          v268 = a2;
          v269 = swift_slowAlloc();
          v354 = swift_slowAlloc();
          v357 = v354;
          *v269 = 136446210;
          v270 = [v265 remObjectID];
          if (v270)
          {
            v271 = v270;
            v272 = v143;
            v273 = [v270 description];

            v274 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v276 = v275;

            v143 = v272;
            v268 = v346;
          }

          else
          {
            v274 = 7104878;
            v276 = 0xE300000000000000;
          }

          v293 = sub_10000668C(v274, v276, &v357);
          v276, v294, v295, v296, v297, v298, v299, v300;
          *(v269 + 4) = v293;
          _os_log_impl(&_mh_execute_header, v266, v267, "REMAccountStorage+CDIngestor.mutateOrdering(): Could not proceed to upsertOrderedIdentifiersForAccountListView() because there is problem finding the persistent store for the account {account: %{public}s}", v269, 0xCu);
          sub_10000607C(v354);

          a2 = v268;
        }

        else
        {
        }

LABEL_123:
        if (*(v344 + 17) & 1) == 0 && (v325 = [a2 accountTypeHost], v326 = objc_msgSend(v325, "isLocal"), v325, (v326) || (v327 = objc_msgSend(a2, "accountTypeHost"), v328 = objc_msgSend(v327, "isCalDav"), v327, v328))
        {
          sub_1002FC650();
        }

        return;
      }

      v194 = v90;
      v195 = Logger.logObject.getter();
      v196 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v195, v196))
      {
        v197 = swift_slowAlloc();
        v198 = swift_slowAlloc();
        v199 = swift_slowAlloc();
        *&aBlock = v199;
        *v197 = 138543618;
        v200 = [v194 objectID];
        *(v197 + 4) = v200;
        *v198 = v200;
        *(v197 + 12) = 2082;
        *(v197 + 14) = sub_10000668C(0x737473696CLL, 0xE500000000000000, &aBlock);
        _os_log_impl(&_mh_execute_header, v195, v196, "REMAccountStorageCDIngestor: mutateOrdering(...) cannot proceed because storage.listIDsMergeableOrdering is nil {objectID: %{public}@, key: %{public}s}", v197, 0x16u);
        sub_1000050A4(v198, &unk_100938E70, &unk_100797230);

        sub_10000607C(v199);
      }

      v201 = objc_opt_self();
      sub_1000060C8(0, &unk_10094F0C0, REMListStorage_ptr);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v56 = String._bridgeToObjectiveC()();
      v57 = [v201 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v56];
LABEL_89:
      v203 = v57;

      v347 = v203;
      swift_willThrow();
      return;
    }

    v335 = v92;
    v352 = v27;
    v95 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    v333 = swift_slowAlloc();
    *&aBlock = v333;
    *v95 = 138412546;
    v336 = v90;
    v97 = [v90 remObjectID];
    *(v95 + 4) = v97;
    v332 = v96;
    *v96 = v97;
    v334 = v95;
    *(v95 + 12) = 2080;
    *&v355 = v91;
    sub_1000060C8(0, &unk_100938880, off_1008D41A8);
    v83 = NSMutableOrderedSet_ptr;
    v81 = sub_1000060C8(0, &unk_100950C20, NSMutableOrderedSet_ptr);
    sub_10000CDE4(&qword_1009374C8, &unk_100950C20, NSMutableOrderedSet_ptr, &protocol conformance descriptor for NSOrderedSet);
    v98 = Sequence.elements<A>(ofType:)();
    v35 = v98;
    if (v98 >> 62)
    {
      v351 = (v98 & 0xFFFFFFFFFFFFFF8);
      a3 = _CocoaArrayWrapper.endIndex.getter();
      if (a3)
      {
LABEL_37:
        v8 = 0;
        v350 = (v35 & 0xC000000000000001);
        v33 = (v345 + 56);
        v106 = (v345 + 48);
        v331 = (v345 + 16);
        v107 = &_swiftEmptyArrayStorage;
        v330 = (v345 + 8);
        do
        {
          v337 = v107;
          v108 = v8;
          while (1)
          {
            if (v350)
            {
              v109 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v108 >= *(v351 + 2))
              {
                goto LABEL_58;
              }

              v109 = *(v35 + 8 * v108 + 32);
            }

            v81 = v109;
            v8 = v108 + 1;
            if (__OFADD__(v108, 1))
            {
              __break(1u);
LABEL_58:
              __break(1u);
              goto LABEL_59;
            }

            v110 = [v109 identifier];
            if (v110)
            {
              v111 = v110;
              v112 = v352;
              static UUID._unconditionallyBridgeFromObjectiveC(_:)();

              v113 = 0;
            }

            else
            {
              v113 = 1;
              v112 = v352;
            }

            v7 = v354;
            (*v33)(v112, v113, 1, v354);
            v114 = v112;
            v83 = v353;
            sub_100100FB4(v114, v353);
            if (!(*v106)(v83, 1, v7))
            {
              break;
            }

            sub_1000050A4(v83, &unk_100939D90, "8\n\r");
            ++v108;
            if (v8 == a3)
            {
              v107 = v337;
              goto LABEL_62;
            }
          }

          v115 = v343;
          (*v331)(v343, v83, v7);
          sub_1000050A4(v83, &unk_100939D90, "8\n\r");
          v83 = UUID.uuidString.getter();
          v329 = v116;

          (*v330)(v115, v7);
          v107 = v337;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v107 = sub_100365788(0, *v107->clientIdentity + 1, 1, v107, v102, v103, v104, v105);
          }

          v118 = *v107->clientIdentity;
          v117 = *&v107->clientIdentity[8];
          v81 = (v118 + 1);
          if (v118 >= v117 >> 1)
          {
            v107 = sub_100365788((v117 > 1), v118 + 1, 1, v107, v102, v103, v104, v105);
          }

          *v107->clientIdentity = v81;
          v119 = v107 + 16 * v118;
          v120 = v329;
          *(v119 + 4) = v83;
          *(v119 + 5) = v120;
          v7 = v354;
        }

        while (v8 != a3);
        goto LABEL_62;
      }
    }

    else
    {
      v351 = (v98 & 0xFFFFFFFFFFFFFF8);
      a3 = *((v98 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (a3)
      {
        goto LABEL_37;
      }
    }

    v107 = &_swiftEmptyArrayStorage;
LABEL_62:
    v35, v99, v100, v101, v102, v103, v104, v105;
    v122 = Array.description.getter();
    v123 = v107;
    v125 = v124;
    v123, v124, v126, v127, v128, v129, v130, v131;
    v132 = sub_10000668C(v122, v125, &aBlock);
    v125, v133, v134, v135, v136, v137, v138, v139;
    v140 = v334;
    *(v334 + 14) = v132;
    v141 = v335;
    _os_log_impl(&_mh_execute_header, v335, v338, "sorting ordered set account.lists - before - {account: %@, lists: %s}", v140, 0x16u);
    sub_1000050A4(v332, &unk_100938E70, &unk_100797230);

    sub_10000607C(v333);

    a2 = v346;
    v121 = v345;
    v87 = &selRef_isEmpty;
    v90 = v336;
    goto LABEL_63;
  }

  v352 = v27;
  if (qword_100935E80 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  sub_100006654(v34, qword_100941670);
  v35 = a3;
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = v8;
    v40 = swift_slowAlloc();
    *v38 = 138412290;
    v41 = [v35 remObjectID];
    *(v38 + 4) = v41;
    *v40 = v41;
    _os_log_impl(&_mh_execute_header, v36, v37, "Some lists have changes in .daDisplayOrder so DA display orders is taking precedence as the true sort hint - {account: %@}", v38, 0xCu);
    sub_1000050A4(v40, &unk_100938E70, &unk_100797230);
    v8 = v39;

    v7 = v354;
  }

  v42 = [v35 listIDsMergeableOrdering];
  if (!v42)
  {
    v47 = v35;
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *&aBlock = v52;
      *v50 = 138543618;
      v53 = [(RDXPCStorePerformer *)v47 objectID];
      *(v50 + 4) = v53;
      *v51 = v53;
      *(v50 + 12) = 2082;
      *(v50 + 14) = sub_10000668C(0x737473696CLL, 0xE500000000000000, &aBlock);
      _os_log_impl(&_mh_execute_header, v48, v49, "REMAccountStorageCDIngestor: mutateOrdering(...) cannot proceed because storage.listIDsMergeableOrdering is nil {objectID: %{public}@, key: %{public}s}", v50, 0x16u);
      sub_1000050A4(v51, &unk_100938E70, &unk_100797230);

      sub_10000607C(v52);
    }

    v54 = objc_opt_self();
    sub_1000060C8(0, &unk_10093F580, REMAccountStorage_ptr);
    v55 = swift_getObjCClassFromMetadata();
    v56 = String._bridgeToObjectiveC()();
    v57 = [v54 unexpectedNilPropertyWithClass:v55 property:v56];
    goto LABEL_89;
  }

  v43 = v42;
  v44 = v347;
  v45 = sub_1002FBEA0(v42, v351);
  v347 = v44;
  if (v44)
  {

    return;
  }

  v350 = v46;
  if ((v45 & 1) == 0)
  {
    v340 = v43;
    a2 = v346;
LABEL_31:
    [v35 setListsDADisplayOrderChanged:0];

    v27 = v352;
    goto LABEL_32;
  }

  v58 = [v35 resolutionTokenMap];
  if (v58)
  {
    v340 = v43;
    v339 = v58;
    sub_100693A78(3);
    v60 = v59;
    v61 = String._bridgeToObjectiveC()();
    v60, v62, v63, v64, v65, v66, v67, v68;
    [(RDXPCStorePerformer *)v339 updateForKey:v61];

    [v35 setListIDsMergeableOrdering:v350];
    if ([v351 firstObject])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v355 = 0u;
      v356 = 0u;
    }

    aBlock = v355;
    v359 = v356;
    if (*(&v356 + 1))
    {
      sub_1000060C8(0, &unk_100938880, off_1008D41A8);
      if (swift_dynamicCast())
      {
        v81 = v357;
        v82 = [(RDXPCStorePerformer *)v357 account];
        if (v82)
        {
          v83 = v82;
          v84 = v347;
          sub_1002F9D20(v35, v82, &off_1008E2B60, v344);
          v347 = v84;
          if (v84)
          {

            return;
          }

LABEL_59:

          goto LABEL_30;
        }
      }
    }

    else
    {
      sub_1000050A4(&aBlock, &qword_100939ED0, &qword_100791B10);
    }

    v83 = Logger.logObject.getter();
    v85 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v83, v85))
    {
      v86 = swift_slowAlloc();
      *v86 = 0;
      _os_log_impl(&_mh_execute_header, v83, v85, "Cannot get any REMCDAccount from the ordered set of lists in the account.", v86, 2u);
    }

LABEL_30:
    a2 = v346;

    goto LABEL_31;
  }

  v69 = v35;
  v70 = Logger.logObject.getter();
  v71 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v74 = v43;
    v75 = swift_slowAlloc();
    *&aBlock = v75;
    *v72 = 138543618;
    v76 = [(RDXPCStorePerformer *)v69 objectID];
    *(v72 + 4) = v76;
    *v73 = v76;
    *(v72 + 12) = 2082;
    *(v72 + 14) = sub_10000668C(0x737473696CLL, 0xE500000000000000, &aBlock);
    _os_log_impl(&_mh_execute_header, v70, v71, "REMAccountStorageCDIngestor: mutateOrdering() cannot proceed because storage.resolutionTokenMap is nil {objectID: %{public}@, key: %{public}s}", v72, 0x16u);
    sub_1000050A4(v73, &unk_100938E70, &unk_100797230);

    sub_10000607C(v75);
    v43 = v74;
  }

  v77 = objc_opt_self();
  sub_1000060C8(0, &unk_10093F580, REMAccountStorage_ptr);
  v78 = swift_getObjCClassFromMetadata();
  v79 = String._bridgeToObjectiveC()();
  v80 = [v77 unexpectedNilPropertyWithClass:v78 property:v79];

  v347 = v80;
  swift_willThrow();
}

void sub_1002FF0BC(void *a1, uint64_t a2)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v15 = 0;
  while (v6)
  {
    v16 = v6;
LABEL_11:
    v6 = (v16 - 1) & v16;
    if (*(a2 + 16))
    {
      v18 = (*(a2 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v16)))));
      v19 = *v18;
      v20 = v18[1];

      v21 = sub_100005F4C(v19, v20);
      if (v22)
      {
        sub_100005EF0(*(a2 + 56) + 32 * v21, v96);
        sub_100005EE0(v96, &v97);
        v93 = v19;
        v29 = String._bridgeToObjectiveC()();
        sub_10000F61C(&v97, v98);
        v30 = [a1 postAccountPropertyChangeNotificationWithKey:v29 changedValue:_bridgeAnythingToObjectiveC<A>(_:)()];

        swift_unknownObjectRelease();
        if (v30)
        {
          v20, v31, v32, v33, v34, v35, v36, v37;
        }

        else
        {
          if (qword_100935E80 != -1)
          {
            swift_once();
          }

          v38 = type metadata accessor for Logger();
          sub_100006654(v38, qword_100941670);
          sub_100005EF0(&v97, v96);

          v39 = a1;
          v40 = Logger.logObject.getter();
          v41 = static os_log_type_t.error.getter();
          v20, v42, v43, v44, v45, v46, v47, v48;

          if (os_log_type_enabled(v40, v41))
          {
            v91 = v41;
            log = v40;
            v49 = swift_slowAlloc();
            v99 = swift_slowAlloc();
            *v49 = 136315650;
            v50 = [v39 remObjectID];
            if (v50)
            {
              v51 = v50;
              v52 = [v50 description];

              v90 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v54 = v53;

              v55 = v90;
            }

            else
            {
              v54 = 0xE300000000000000;
              v55 = 7104878;
            }

            v63 = sub_10000668C(v55, v54, &v99);
            v54, v64, v65, v66, v67, v68, v69, v70;
            *(v49 + 4) = v63;
            *(v49 + 12) = 2080;
            v71 = sub_10000668C(v93, v20, &v99);
            v20, v72, v73, v74, v75, v76, v77, v78;
            *(v49 + 14) = v71;
            *(v49 + 22) = 2080;
            sub_100005EF0(v96, v95);
            v79 = String.init<A>(describing:)();
            v81 = v80;
            sub_10000607C(v96);
            v82 = sub_10000668C(v79, v81, &v99);
            v81, v83, v84, v85, v86, v87, v88, v89;
            *(v49 + 24) = v82;
            _os_log_impl(&_mh_execute_header, log, v91, "REMCDAccountStorage+CDIngestor: Could not post RDStoreControllerREMAccountPropertiesDidUpdate due to unexpected values {remObjectID: %s, changedKey: %s, changedValue: %s}", v49, 0x20u);
            swift_arrayDestroy();
          }

          else
          {

            v20, v56, v57, v58, v59, v60, v61, v62;
            sub_10000607C(v96);
          }
        }

        sub_10000607C(&v97);
      }

      else
      {
        v20, v22, v23, v24, v25, v26, v27, v28;
      }
    }
  }

  while (1)
  {
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v17 >= v7)
    {
      a2, v8, v9, v10, v11, v12, v13, v14;

      return;
    }

    v16 = *(v3 + 8 * v17);
    ++v15;
    if (v16)
    {
      v15 = v17;
      goto LABEL_11;
    }
  }

  __break(1u);
}

unint64_t sub_1002FF4DC()
{
  result = qword_10093F7A0;
  if (!qword_10093F7A0)
  {
    type metadata accessor for NSFastEnumerationIterator();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093F7A0);
  }

  return result;
}

id sub_1002FF534(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, _TtC7remindd19RDXPCStorePerformer *a5, void *a6)
{
  if (a2 >> 60 == 15)
  {
    if (qword_100935E80 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100006654(v10, qword_100941670);
    v11 = a6;

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    a5, v14, v15, v16, v17, v18, v19, v20;

    if (os_log_type_enabled(v12, v13))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v32 = v23;
      *v21 = 138412546;
      *(v21 + 4) = v11;
      *v22 = v11;
      *(v21 + 12) = 2080;
      v24 = v11;
      *(v21 + 14) = sub_10000668C(a4, a5, &v32);
      _os_log_impl(&_mh_execute_header, v12, v13, "Unexpected nil mergeable ordering data {objectID: %@, key: %s}", v21, 0x16u);
      sub_1000050A4(v22, &unk_100938E70, &unk_100797230);

      sub_10000607C(v23);
    }

    v25 = [objc_allocWithZone(NSOrderedSet) init];
    v26 = [objc_allocWithZone(REMCRMergeableOrderedSet) initWithReplicaIDSource:a3 orderedSet:v25];
  }

  else
  {
    v29 = objc_allocWithZone(REMCRMergeableOrderedSet);
    sub_1001CB4B8(a1, a2);
    v30 = a3;
    v26 = sub_1002F937C(v30);

    sub_100031A14(a1, a2);
  }

  return v26;
}

uint64_t getEnumTagSinglePayload for REMAccountStorageCDIngestor.ValueKey(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE7)
  {
    goto LABEL_17;
  }

  if (a2 + 25 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 25) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 25;
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

      return (*a1 | (v4 << 8)) - 25;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 25;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1A;
  v8 = v6 - 26;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for REMAccountStorageCDIngestor.ValueKey(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 25 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 25) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE7)
  {
    v4 = 0;
  }

  if (a2 > 0xE6)
  {
    v5 = ((a2 - 231) >> 8) + 1;
    *result = a2 + 25;
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
    *result = a2 + 25;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1002FFB90()
{
  result = qword_1009418C8;
  if (!qword_1009418C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009418C8);
  }

  return result;
}

unint64_t sub_1002FFC2C()
{
  result = qword_1009418E0;
  if (!qword_1009418E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009418E0);
  }

  return result;
}

unint64_t sub_1002FFCC8()
{
  result = qword_1009418F8;
  if (!qword_1009418F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009418F8);
  }

  return result;
}

unint64_t sub_1002FFD64()
{
  result = qword_100941910;
  if (!qword_100941910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100941910);
  }

  return result;
}

uint64_t sub_1002FFDD8()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100941920);
  v1 = sub_100006654(v0, qword_100941920);
  if (qword_100936448 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975020);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1002FFED0(_TtC7remindd19RDXPCStorePerformer *a1)
{
  v2 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v2 - 8, v3);
  v5 = &v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v7);
  v9 = &v87 - v8;
  __chkstk_darwin(v10, v11);
  v99 = &v87 - v12;
  v98 = type metadata accessor for Date();
  v13 = *(v98 - 8);
  __chkstk_darwin(v98, v14);
  v16 = &v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17, v18);
  v93 = &v87 - v19;
  __chkstk_darwin(v20, v21);
  v100 = &v87 - v22;
  v101 = &_swiftEmptyArrayStorage;
  v88 = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_34:
    v23 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v23 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v97 = a1;
  v90 = v9;
  v91 = v16;
  v89 = v5;
  if (v23)
  {
    v24 = 0;
    v5 = (a1 & 0xC000000000000001);
    v9 = (a1 & 0xFFFFFFFFFFFFFF8);
    v25 = v13;
    do
    {
      if (v5)
      {
        v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v24 >= *(v9 + 2))
        {
          goto LABEL_33;
        }

        v26 = *&a1->clientIdentity[8 * v24 + 16];
      }

      a1 = v26;
      v13 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v27 = [(RDXPCStorePerformer *)v26 request];
      v16 = [v27 content];

      LOBYTE(v27) = UNNotificationContent.firesBeforeFirstUnlock.getter();
      if (v27)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v16 = *(v101 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v24;
      a1 = v97;
    }

    while (v13 != v23);
    v13 = v25;
    v28 = v101;
    v9 = v90;
    v16 = v91;
    v5 = v89;
    if ((v101 & 0x8000000000000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_35;
  }

  v28 = &_swiftEmptyArrayStorage;
  if ((&_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
  {
    goto LABEL_35;
  }

LABEL_17:
  if ((v28 & 0x4000000000000000) != 0)
  {
LABEL_35:
    v50 = v28;
    v29 = _CocoaArrayWrapper.endIndex.getter();
    v28 = v50;
    if (!v29)
    {
      goto LABEL_36;
    }

    goto LABEL_19;
  }

  v29 = *(v28 + 16);
  if (!v29)
  {
LABEL_36:

    v34 = &_swiftEmptyArrayStorage;
    goto LABEL_37;
  }

LABEL_19:
  v30 = v28;
  v101 = &_swiftEmptyArrayStorage;
  sub_100253574(0, v29 & ~(v29 >> 63), 0);
  if (v29 < 0)
  {
    __break(1u);

    __break(1u);
    return result;
  }

  v31 = 0;
  v32 = v30;
  v33 = v30 & 0xC000000000000001;
  v34 = v101;
  v35 = (v13 + 32);
  v94 = (v13 + 56);
  v95 = v33;
  v92 = (v13 + 48);
  v96 = v32;
  v36 = v99;
  do
  {
    if (v95)
    {
      v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v37 = *(v32 + 8 * v31 + 32);
    }

    v38 = v37;
    v39 = [v37 request];
    v40 = [v39 content];

    v41 = [v40 date];
    if (v41)
    {
      v42 = v93;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v43 = *v35;
      v44 = v99;
      v45 = v42;
      v46 = v98;
      (*v35)(v99, v45, v98);
      (*v94)(v44, 0, 1, v46);
      v43(v100, v44, v46);
    }

    else
    {
      v46 = v98;
      (*v94)(v36, 1, 1, v98);
      v47 = [v38 date];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      if ((*v92)(v36, 1, v46) != 1)
      {
        sub_1000050A4(v99, &unk_100938850, qword_100795AE0);
      }
    }

    v101 = v34;
    v49 = *v34->clientIdentity;
    v48 = *&v34->clientIdentity[8];
    if (v49 >= v48 >> 1)
    {
      sub_100253574((v48 > 1), v49 + 1, 1);
      v34 = v101;
    }

    ++v31;
    *v34->clientIdentity = v49 + 1;
    (*(v13 + 32))(v34 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v49, v100, v46);
    v32 = v96;
  }

  while (v29 != v31);

  v9 = v90;
  v16 = v91;
  v5 = v89;
  a1 = v97;
LABEL_37:
  v101 = v34;

  sub_100302DB8(&v101);
  v34, v51, v52, v53, v54, v55, v56, v57;
  v58 = v101;
  if (qword_100935E90 != -1)
  {
    swift_once();
  }

  v59 = type metadata accessor for Logger();
  sub_100006654(v59, qword_100941920);

  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v60, v61))
  {
    v69 = swift_slowAlloc();
    *v69 = 134218240;
    v70 = v97;
    if (v88)
    {
      v71 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v71 = *((v97 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v69 + 4) = v71;
    v70, v62, v63, v64, v65, v66, v67, v68;
    *(v69 + 12) = 2048;
    *(v69 + 14) = *v58->clientIdentity;

    _os_log_impl(&_mh_execute_header, v60, v61, "RDBeforeFirstUnlockNotificationEngine: Found %ld delivered notifications, %ld considered for lastPresentAlarmDate.", v69, 0x16u);

    v16 = v91;
  }

  else
  {

    a1, v72, v73, v74, v75, v76, v77, v78;
  }

  Date.init()();
  v79 = [objc_opt_self() daemonUserDefaults];
  __chkstk_darwin(v79, v80);
  *(&v87 - 2) = v16;
  sub_10059B448(sub_10030513C, v58, v5);
  v81 = *(v13 + 48);
  v82 = v98;
  if (v81(v5, 1, v98) == 1)
  {
    v83 = *v58->clientIdentity;
    if (v83)
    {
      v82 = v98;
      (*(v13 + 16))(v9, v58 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * (v83 - 1), v98);
      v84 = 0;
    }

    else
    {
      v84 = 1;
      v82 = v98;
    }

    (*(v13 + 56))(v9, v84, 1, v82);
    if (v81(v5, 1, v82) != 1)
    {
      sub_1000050A4(v5, &unk_100938850, qword_100795AE0);
    }
  }

  else
  {

    (*(v13 + 32))(v9, v5, v82);
    (*(v13 + 56))(v9, 0, 1, v82);
  }

  if (v81(v9, 1, v82) == 1)
  {
    isa = 0;
  }

  else
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v13 + 8))(v9, v82);
  }

  [v79 setLastPresentAlarmDate:isa];

  return (*(v13 + 8))(v16, v82);
}

BOOL sub_1003007F8(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Date();
  sub_1003050A8(&qword_1009464D0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  return (dispatch thunk of static Comparable.< infix(_:_:)() & 1) == 0;
}

void sub_10030088C()
{
  v0 = type metadata accessor for DispatchTimeInterval();
  v83 = *(v0 - 8);
  v84 = v0;
  __chkstk_darwin(v0, v1);
  v82 = &v68 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3, v4);
  v81 = &v68 - v5;
  v6 = type metadata accessor for DispatchWallTime();
  v79 = *(v6 - 8);
  v80 = v6;
  __chkstk_darwin(v6, v7);
  v77 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v10);
  v78 = &v68 - v11;
  v12 = type metadata accessor for OS_dispatch_source.TimerFlags();
  ObjectType = *(v12 - 8);
  __chkstk_darwin(v12, v13);
  v15 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchWorkItemFlags();
  v86 = *(v16 - 8);
  __chkstk_darwin(v16, v17);
  v19 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20, v22);
  v85 = &v68 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v24 - 8, v25);
  v27 = &v68 - v26;
  v28 = type metadata accessor for Date();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28, v30);
  v32 = &v68 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100301E90(v27);
  if ((*(v29 + 48))(v27, 1, v28) == 1)
  {
    sub_1000050A4(v27, &unk_100938850, qword_100795AE0);
    if (qword_100935E90 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100006654(v33, qword_100941920);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "RDBeforeFirstUnlockNotificationEngine: Not going to presenting before first unlock notification as we don't have a due date.", v36, 2u);
    }
  }

  else
  {
    v71 = v29;
    v37 = *(v29 + 32);
    v72 = v28;
    v37(v32, v27, v28);
    Date.timeIntervalSinceNow.getter();
    v75 = v20;
    v74 = v21;
    v73 = v19;
    v70 = v32;
    if (v38 <= 0.0)
    {
      if (qword_100935E90 != -1)
      {
        swift_once();
      }

      v58 = type metadata accessor for Logger();
      sub_100006654(v58, qword_100941920);
      v59 = Logger.logObject.getter();
      v60 = static os_log_type_t.default.getter();
      v61 = os_log_type_enabled(v59, v60);
      v62 = v71;
      if (v61)
      {
        v63 = swift_slowAlloc();
        *v63 = 0;
        _os_log_impl(&_mh_execute_header, v59, v60, "RDBeforeFirstUnlockNotificationEngine: Presenting before first unlock notification now because we have already passed the due date.", v63, 2u);
      }

      v64 = swift_allocObject();
      swift_weakInit();
      v92 = sub_1003050F8;
      v93 = v64;
      aBlock = _NSConcreteStackBlock;
      v89 = 1107296256;
      v90 = sub_100019200;
      v91 = &unk_1008ED9E0;
      v65 = _Block_copy(&aBlock);

      v66 = v85;
      static DispatchQoS.unspecified.getter();
      v87 = &_swiftEmptyArrayStorage;
      sub_1003050A8(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1000F5104(&unk_100939E50, &unk_100791AD0);
      sub_10000CB90(&qword_100936EA0, &unk_100939E50, &unk_100791AD0);
      v67 = v73;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v65);
      (*(v86 + 8))(v67, v16);
      (*(v74 + 8))(v66, v75);
      (*(v62 + 8))(v70, v72);
    }

    else
    {
      if (qword_100935E90 != -1)
      {
        swift_once();
      }

      v69 = v16;
      v39 = type metadata accessor for Logger();
      sub_100006654(v39, qword_100941920);
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&_mh_execute_header, v40, v41, "RDBeforeFirstUnlockNotificationEngine: Scheduling to present before first unlock notification at a future time.", v42, 2u);
      }

      sub_1000060C8(0, &qword_100941A18, OS_dispatch_source_ptr);
      aBlock = &_swiftEmptyArrayStorage;
      sub_1003050A8(&qword_100941A20, &type metadata accessor for OS_dispatch_source.TimerFlags, &protocol conformance descriptor for OS_dispatch_source.TimerFlags);
      sub_1000F5104(&qword_100941A28, &unk_1007A1C10);
      sub_10000CB90(&qword_100941A30, &qword_100941A28, &unk_1007A1C10);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v68 = static OS_dispatch_source.makeTimerSource(flags:queue:)();
      (*(ObjectType + 8))(v15, v12);
      ObjectType = swift_getObjectType();
      v43 = v77;
      static DispatchWallTime.now()();
      v44 = v78;
      + infix(_:_:)();
      v45 = v80;
      v79 = *(v79 + 8);
      (v79)(v43, v80);
      v47 = v83;
      v46 = v84;
      v48 = *(v83 + 104);
      v49 = v81;
      v48(v81, enum case for DispatchTimeInterval.never(_:), v84);
      v50 = v82;
      *v82 = 0;
      v48(v50, enum case for DispatchTimeInterval.nanoseconds(_:), v46);
      v51 = v68;
      OS_dispatch_source_timer.schedule(wallDeadline:repeating:leeway:)();
      v52 = *(v47 + 8);
      v52(v50, v46);
      v52(v49, v46);
      (v79)(v44, v45);
      v53 = swift_allocObject();
      swift_weakInit();
      v54 = swift_allocObject();
      *(v54 + 16) = v53;
      *(v54 + 24) = v51;
      v92 = sub_1003050F0;
      v93 = v54;
      aBlock = _NSConcreteStackBlock;
      v89 = 1107296256;
      v90 = sub_100019200;
      v91 = &unk_1008ED9B8;
      v55 = _Block_copy(&aBlock);

      swift_unknownObjectRetain();
      v56 = v85;
      static DispatchQoS.unspecified.getter();
      v57 = v73;
      sub_1003015F4();
      OS_dispatch_source.setEventHandler(qos:flags:handler:)();
      _Block_release(v55);
      (*(v86 + 8))(v57, v69);
      (*(v74 + 8))(v56, v75);

      OS_dispatch_source.activate()();
      swift_unknownObjectRelease();
      (*(v71 + 8))(v70, v72);
    }
  }
}

uint64_t sub_10030146C(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1003024F0();
  }

  return result;
}

void sub_1003014C4(uint64_t a1)
{
  if (qword_100935E90 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006654(v1, qword_100941920);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "RDBeforeFirstUnlockNotificationEngine: Presenting before first unlock notification as we're now due.", v4, 2u);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1003024F0();
  }

  swift_getObjectType();
  OS_dispatch_source.cancel()();
}

uint64_t sub_1003015F4()
{
  type metadata accessor for DispatchWorkItemFlags();
  sub_1003050A8(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000CB90(&qword_100936EA0, &unk_100939E50, &unk_100791AD0);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t sub_1003016FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v25 = a1;
  v7 = v4;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v8 - 8);
  __chkstk_darwin(v8, v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for DispatchQoS();
  v12 = *(v26 - 8);
  __chkstk_darwin(v26, v13);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100935E90 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100006654(v16, qword_100941920);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v24 = v15;
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, v25, v19, 2u);
    v15 = v24;
  }

  v20 = swift_allocObject();
  v25 = *(v7 + 24);
  *(v20 + 16) = v25;
  aBlock[4] = a3;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = a4;
  v21 = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  static DispatchQoS.unspecified.getter();
  v28 = &_swiftEmptyArrayStorage;
  sub_1003050A8(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000CB90(&qword_100936EA0, &unk_100939E50, &unk_100791AD0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);
  (*(v27 + 8))(v11, v8);
  (*(v12 + 8))(v15, v26);
}

void sub_100301AA8(void *a1)
{
  v36 = a1;
  v1 = type metadata accessor for RDUserNotificationCategory();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1, v3);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6, v7);
  v10 = &v35 - v9;
  v11 = enum case for RDUserNotificationCategory.beforeFirstUnlock(_:);
  v12 = *(v2 + 104);
  (v12)(&v35 - v9, enum case for RDUserNotificationCategory.beforeFirstUnlock(_:), v1, v8);
  RDUserNotificationCategory.rawValue.getter();
  v14 = v13;
  v15 = *(v2 + 8);
  v15(v10, v1);
  v12(v5, v11, v1);
  RDUserNotificationCategory.rawValue.getter();
  v17 = v16;
  v15(v5, v1);
  v18 = String._bridgeToObjectiveC()();
  v14, v19, v20, v21, v22, v23, v24, v25;
  v26 = String._bridgeToObjectiveC()();
  v17, v27, v28, v29, v30, v31, v32, v33;
  aBlock[4] = sub_100301CDC;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100042968;
  aBlock[3] = &unk_1008ED940;
  v34 = _Block_copy(aBlock);

  [v36 releaseNotificationWithIdentifier:v18 reference:v26 completion:v34];
  _Block_release(v34);
}

void sub_100301CDC(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_100935E90 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100006654(v1, qword_100941920);
    swift_errorRetain();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v17 = v5;
      *v4 = 136315138;
      swift_getErrorValue();
      v6 = Error.localizedDescription.getter();
      v8 = v7;
      v9 = sub_10000668C(v6, v7, &v17);
      v8, v10, v11, v12, v13, v14, v15, v16;
      *(v4 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v2, v3, "Failed to dismiss before first unlock notification {error: %s}", v4, 0xCu);
      sub_10000607C(v5);
    }

    else
    {
    }
  }
}

uint64_t sub_100301E90@<X0>(uint64_t a1@<X8>)
{
  v70 = a1;
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1, v3);
  v65 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v6);
  v66 = &v63 - v7;
  __chkstk_darwin(v8, v9);
  v69 = &v63 - v10;
  v11 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v11 - 8, v12);
  v68 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v15);
  v17 = &v63 - v16;
  __chkstk_darwin(v18, v19);
  v21 = &v63 - v20;
  __chkstk_darwin(v22, v23);
  v25 = &v63 - v24;
  __chkstk_darwin(v26, v27);
  v72 = &v63 - v28;
  __chkstk_darwin(v29, v30);
  v32 = &v63 - v31;
  __chkstk_darwin(v33, v34);
  v71 = &v63 - v35;
  v36 = objc_opt_self();
  v37 = [v36 daemonUserDefaults];
  v38 = [v37 lastPresentAlarmDate];

  if (v38)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v39 = v2;
    v40 = *(v2 + 56);
    v40(v32, 0, 1, v1);
  }

  else
  {
    v39 = v2;
    v40 = *(v2 + 56);
    v40(v32, 1, 1, v1);
  }

  v41 = v32;
  v42 = v71;
  sub_10012F7FC(v41, v71);
  v43 = [v36 daemonUserDefaults];
  v44 = [v43 nextScheduledAlarmDate];

  v45 = v69;
  if (v44)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v46 = 0;
  }

  else
  {
    v46 = 1;
  }

  v67 = v39 + 56;
  v40(v25, v46, 1, v1);
  v47 = v72;
  sub_10012F7FC(v25, v72);
  sub_10012F78C(v42, v21);
  v48 = *(v39 + 48);
  if (v48(v21, 1, v1) == 1)
  {
    v17 = v21;
    goto LABEL_11;
  }

  v64 = v40;
  v49 = *(v39 + 32);
  v49(v45, v21, v1);
  sub_10012F78C(v47, v17);
  if (v48(v17, 1, v1) == 1)
  {
    (*(v39 + 8))(v45, v1);
    v42 = v71;
    v47 = v72;
    v40 = v64;
LABEL_11:
    sub_1000050A4(v17, &unk_100938850, qword_100795AE0);
    v50 = v42;
    v51 = v68;
    sub_10012F7FC(v50, v68);
    if (v48(v51, 1, v1) == 1)
    {
      sub_10012F7FC(v47, v70);
      result = (v48)(v51, 1, v1);
      if (result != 1)
      {
        return sub_1000050A4(v51, &unk_100938850, qword_100795AE0);
      }
    }

    else
    {
      sub_1000050A4(v47, &unk_100938850, qword_100795AE0);
      v53 = v70;
      (*(v39 + 32))(v70, v51, v1);
      return (v40)(v53, 0, 1, v1);
    }

    return result;
  }

  v54 = v66;
  v49(v66, v17, v1);
  v55 = v65;
  Date.init()();
  sub_1003050A8(&qword_1009464D0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v56 = v49;
  if (dispatch thunk of static Comparable.< infix(_:_:)() & 1) != 0 || (dispatch thunk of static Comparable.< infix(_:_:)())
  {
    v57 = dispatch thunk of static Comparable.< infix(_:_:)();
  }

  else
  {
    v57 = dispatch thunk of static Comparable.>= infix(_:_:)();
  }

  v58 = v57;
  v59 = v45;
  v60 = *(v39 + 8);
  v60(v55, v1);
  sub_1000050A4(v72, &unk_100938850, qword_100795AE0);
  sub_1000050A4(v71, &unk_100938850, qword_100795AE0);
  if (v58)
  {
    v61 = v45;
  }

  else
  {
    v61 = v54;
  }

  if (v58)
  {
    v59 = v54;
  }

  v60(v61, v1);
  v62 = v70;
  v56(v70, v59, v1);
  return (v64)(v62, 0, 1, v1);
}

void sub_1003024F0()
{
  v56 = type metadata accessor for RDUserNotificationCategory();
  v1 = *(v56 - 8);
  __chkstk_darwin(v56, v2);
  v58 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4, v5);
  v55 = &v55 - v6;
  v7 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v7 - 8, v8);
  v10 = &v55 - v9;
  v11 = type metadata accessor for RDUserNotificationType();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11, v13);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchPredicate();
  v17 = *(v16 - 8);
  v19 = __chkstk_darwin(v16, v18);
  v21 = (&v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v57 = v0;
  v22 = v0[2];
  *v21 = v22;
  (*(v17 + 104))(v21, enum case for DispatchPredicate.onQueue(_:), v16, v19);
  v23 = v22;
  LOBYTE(v22) = _dispatchPreconditionTest(_:)();
  (*(v17 + 8))(v21, v16);
  if (v22)
  {
    (*(v12 + 104))(v15, enum case for RDUserNotificationType.beforeFirstUnlock(_:), v11);
    v24 = sub_1002D833C(0, 0, 0);
    (*(v12 + 8))(v15, v11);
    sub_100301E90(v10);
    v25 = type metadata accessor for Date();
    v26 = *(v25 - 8);
    isa = 0;
    if ((*(v26 + 48))(v10, 1, v25) != 1)
    {
      isa = Date._bridgeToObjectiveC()().super.isa;
      (*(v26 + 8))(v10, v25);
    }

    [v24 setDate:isa];

    v28 = v56;
    v57 = v57[3];
    v29 = enum case for RDUserNotificationCategory.beforeFirstUnlock(_:);
    v30 = *(v1 + 104);
    v31 = v55;
    v30(v55, enum case for RDUserNotificationCategory.beforeFirstUnlock(_:), v56);
    RDUserNotificationCategory.rawValue.getter();
    v33 = v32;
    v34 = *(v1 + 8);
    v34(v31, v28);
    v35 = v58;
    v30(v58, v29, v28);
    RDUserNotificationCategory.rawValue.getter();
    v37 = v36;
    v34(v35, v28);
    v38 = String._bridgeToObjectiveC()();
    v33, v39, v40, v41, v42, v43, v44, v45;
    v46 = String._bridgeToObjectiveC()();
    v37, v47, v48, v49, v50, v51, v52, v53;
    aBlock[4] = sub_1003029E0;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100042968;
    aBlock[3] = &unk_1008ED8C8;
    v54 = _Block_copy(aBlock);

    [v57 retainNotificationWithIdentifier:v38 reference:v46 content:v24 skipBanner:0 completion:v54];
    _Block_release(v54);
  }

  else
  {
    __break(1u);
  }
}

void sub_1003029E0(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_100935E90 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100006654(v1, qword_100941920);
    swift_errorRetain();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v30 = v5;
      *v4 = 136315138;
      swift_getErrorValue();
      v6 = Error.localizedDescription.getter();
      v8 = v7;
      v9 = sub_10000668C(v6, v7, &v30);
      v8, v10, v11, v12, v13, v14, v15, v16;
      *(v4 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v2, v3, "RDBeforeFirstUnlockNotificationEngine: Unable to post Before First Unlock notification {error: %s}", v4, 0xCu);
      sub_10000607C(v5);
    }

    else
    {
    }
  }

  else
  {
    if (qword_100935E90 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100006654(v17, qword_100941920);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "RDBeforeFirstUnlockNotificationEngine: Posted Before First Unlock notification", v20, 2u);
    }

    type metadata accessor for Analytics();
    sub_1000F5104(&unk_100939240, &unk_100798990);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100791300;
    *(inited + 32) = 0x696669746E656449;
    *(inited + 40) = 0xEA00000000007265;
    sub_1000060C8(0, &unk_10093F610, NSString_ptr);
    *(inited + 48) = NSString.init(stringLiteral:)();
    v22 = sub_10038D880(inited);
    swift_setDeallocating();
    sub_1000050A4(inited + 32, &unk_100939250, &unk_100795D30);
    static Analytics.postEvent(_:payload:duration:)();
    v22, v23, v24, v25, v26, v27, v28, v29;
  }
}

uint64_t sub_100302D3C()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_100302DB8(_TtC7remindd19RDXPCStorePerformer **a1)
{
  v2 = *(type metadata accessor for Date() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1004364C8(v3);
  }

  v4 = *v3->clientIdentity;
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_100302E60(v5);
  *a1 = v3;
}

void sub_100302E60(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = &_swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for Date();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *v6->clientIdentity = v5;
      }

      v7 = *(type metadata accessor for Date() - 8);
      v15[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v15[1] = v5;
      sub_100303210(v15, v16, a1, v4);
      *v6->clientIdentity = 0;
      v6, v8, v9, v10, v11, v12, v13, v14;
      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_100302F8C(0, v2, 1, a1);
  }
}

void sub_100302F8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for Date();
  __chkstk_darwin(v8, v9);
  v43 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v12);
  v47 = &v33 - v13;
  v17 = __chkstk_darwin(v14, v15);
  v46 = &v33 - v18;
  v35 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v44 = *(v16 + 16);
    v45 = v16 + 16;
    v20 = *(v16 + 72);
    v21 = (v16 + 8);
    v22 = (v19 + v20 * (a3 - 1));
    v40 = -v20;
    v41 = (v16 + 32);
    v23 = a1 - a3;
    v42 = v19;
    v34 = v20;
    v24 = v19 + v20 * a3;
LABEL_5:
    v38 = v22;
    v39 = a3;
    v36 = v24;
    v37 = v23;
    while (1)
    {
      v25 = v46;
      v26 = v44;
      (v44)(v46, v24, v8, v17);
      v27 = v47;
      v26(v47, v22, v8);
      v28 = static Date.> infix(_:_:)();
      v29 = *v21;
      (*v21)(v27, v8);
      v29(v25, v8);
      if ((v28 & 1) == 0)
      {
LABEL_4:
        a3 = v39 + 1;
        v22 = &v38[v34];
        v23 = v37 - 1;
        v24 = v36 + v34;
        if (v39 + 1 == v35)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v42)
      {
        break;
      }

      v30 = *v41;
      v31 = v43;
      (*v41)(v43, v24, v8);
      swift_arrayInitWithTakeFrontToBack();
      v30(v22, v31, v8);
      v22 += v40;
      v24 += v40;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_100303210(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v6 = v4;
  v131 = a1;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v134 = &v127 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13, v14);
  v142 = &v127 - v15;
  __chkstk_darwin(v16, v17);
  v148 = &v127 - v18;
  v27 = __chkstk_darwin(v19, v20);
  v147 = &v127 - v28;
  v29 = a3[1];
  if (v29 < 1)
  {
    v31 = &_swiftEmptyArrayStorage;
LABEL_95:
    v5 = *v131;
    if (!*v131)
    {
      goto LABEL_136;
    }

    a4 = v31;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v122 = a4;
    }

    else
    {
LABEL_130:
      v122 = sub_1004361F4(a4, v21, v22, v31, v23, v24, v25, v26);
    }

    v123 = v6;
    v150 = v122;
    a4 = *v122->clientIdentity;
    if (a4 >= 2)
    {
      v124 = v10;
      v10 = a3;
      a3 = v124;
      while (*v10)
      {
        v125 = *(&v122->super.isa + 2 * a4);
        v104 = v122;
        v6 = *&v122->clientIdentity[16 * a4 + 8];
        sub_100303BFC(*v10 + a3[9] * v125, (*v10 + a3[9] * *&v122->clientIdentity[16 * a4]), *v10 + a3[9] * v6, v5);
        if (v123)
        {
          goto LABEL_108;
        }

        if (v6 < v125)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v104 = sub_1004361F4(v104, v21, v22, v31, v23, v24, v25, v26);
        }

        if (a4 - 2 >= *v104->clientIdentity)
        {
          goto LABEL_124;
        }

        v126 = &v104->super.isa + 2 * a4;
        *v126 = v125;
        v126[1] = v6;
        v150 = v104;
        sub_100436168(a4 - 1);
        v122 = v150;
        a4 = *v150->clientIdentity;
        if (a4 <= 1)
        {
          goto LABEL_107;
        }
      }

      goto LABEL_134;
    }

LABEL_107:
    v122, v21, v22, v31, v23, v24, v25, v26;
    return;
  }

  v30 = 0;
  v145 = (v10 + 1);
  v146 = v10 + 2;
  v144 = (v10 + 4);
  v31 = &_swiftEmptyArrayStorage;
  v132 = a3;
  v130 = a4;
  v149 = v9;
  while (1)
  {
    v32 = v30;
    v135 = v31;
    if (v30 + 1 >= v29)
    {
      v43 = v30 + 1;
    }

    else
    {
      v140 = v29;
      v129 = v6;
      v137 = *a3;
      v33 = v137;
      v34 = v10[9];
      v5 = v137 + v34 * (v30 + 1);
      v35 = v10[2];
      v36 = v147;
      v35(v147, v5, v9, v27);
      v37 = v33 + v34 * v32;
      v38 = v148;
      v139 = v35;
      (v35)(v148, v37, v9);
      LODWORD(v141) = static Date.> infix(_:_:)();
      v39 = v9;
      v40 = v10[1];
      v40(v38, v39);
      v138 = v40;
      v40(v36, v39);
      v128 = v32;
      v41 = v32 + 2;
      v143 = v34;
      v42 = v137 + v34 * (v32 + 2);
      while (1)
      {
        v43 = v140;
        if (v140 == v41)
        {
          break;
        }

        v44 = v10;
        v45 = v147;
        v46 = v149;
        v47 = v139;
        (v139)(v147, v42, v149);
        v48 = v148;
        v47(v148, v5, v46);
        v49 = static Date.> infix(_:_:)() & 1;
        v50 = v138;
        (v138)(v48, v46);
        v51 = v45;
        v10 = v44;
        v50(v51, v46);
        ++v41;
        v42 += v143;
        v5 += v143;
        if ((v141 & 1) != v49)
        {
          v43 = v41 - 1;
          break;
        }
      }

      a3 = v132;
      v31 = v135;
      v6 = v129;
      a4 = v130;
      v9 = v149;
      v32 = v128;
      if (v141)
      {
        if (v43 < v128)
        {
          goto LABEL_127;
        }

        if (v128 < v43)
        {
          v127 = v10;
          v52 = v143 * (v43 - 1);
          v53 = v43 * v143;
          v54 = v43;
          v55 = v128;
          v56 = v128 * v143;
          do
          {
            if (v55 != --v54)
            {
              v58 = *a3;
              if (!*a3)
              {
                goto LABEL_133;
              }

              v59 = v43;
              v5 = &v58[v56];
              v141 = *v144;
              (v141)(v134, &v58[v56], v149, v31);
              if (v56 < v52 || v5 >= &v58[v53])
              {
                v57 = v149;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v57 = v149;
                if (v56 != v52)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v141(&v58[v52], v134, v57);
              a3 = v132;
              v31 = v135;
              v43 = v59;
            }

            ++v55;
            v52 -= v143;
            v53 -= v143;
            v56 += v143;
          }

          while (v55 < v54);
          v6 = v129;
          a4 = v130;
          v10 = v127;
          v9 = v149;
          v32 = v128;
        }
      }
    }

    v60 = a3[1];
    if (v43 < v60)
    {
      if (__OFSUB__(v43, v32))
      {
        goto LABEL_126;
      }

      if (v43 - v32 < a4)
      {
        if (__OFADD__(v32, a4))
        {
          goto LABEL_128;
        }

        if ((v32 + a4) >= v60)
        {
          v61 = a3[1];
        }

        else
        {
          v61 = v32 + a4;
        }

        if (v61 < v32)
        {
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        if (v43 != v61)
        {
          break;
        }
      }
    }

    v62 = v43;
    if (v43 < v32)
    {
      goto LABEL_125;
    }

LABEL_33:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v31 = v135;
    }

    else
    {
      v31 = sub_1003658B8(0, *v135->clientIdentity + 1, 1, v135, v23, v24, v25, v26);
    }

    a4 = *v31->clientIdentity;
    v63 = *&v31->clientIdentity[8];
    v5 = a4 + 1;
    if (a4 >= v63 >> 1)
    {
      v31 = sub_1003658B8((v63 > 1), a4 + 1, 1, v31, v23, v24, v25, v26);
    }

    *v31->clientIdentity = v5;
    v64 = v31 + 16 * a4;
    *(v64 + 4) = v32;
    *(v64 + 5) = v62;
    v65 = *v131;
    if (!*v131)
    {
      goto LABEL_135;
    }

    v136 = v62;
    if (a4)
    {
      while (1)
      {
        v66 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v67 = *&v31->clientIdentity[16];
          v68 = *&v31->clientIdentity[24];
          v77 = __OFSUB__(v68, v67);
          v69 = v68 - v67;
          v70 = v77;
LABEL_52:
          if (v70)
          {
            goto LABEL_114;
          }

          v83 = &v31->super.isa + 2 * v5;
          v85 = *v83;
          v84 = v83[1];
          v86 = __OFSUB__(v84, v85);
          v87 = v84 - v85;
          v88 = v86;
          if (v86)
          {
            goto LABEL_117;
          }

          v89 = &v31->clientIdentity[16 * v66 + 16];
          v91 = *v89;
          v90 = *(v89 + 1);
          v77 = __OFSUB__(v90, v91);
          v92 = v90 - v91;
          if (v77)
          {
            goto LABEL_120;
          }

          if (__OFADD__(v87, v92))
          {
            goto LABEL_121;
          }

          if (v87 + v92 >= v69)
          {
            if (v69 < v92)
            {
              v66 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v93 = &v31->super.isa + 2 * v5;
        v95 = *v93;
        v94 = v93[1];
        v77 = __OFSUB__(v94, v95);
        v87 = v94 - v95;
        v88 = v77;
LABEL_66:
        if (v88)
        {
          goto LABEL_116;
        }

        v96 = v31 + 16 * v66;
        v98 = *(v96 + 4);
        v97 = *(v96 + 5);
        v77 = __OFSUB__(v97, v98);
        v99 = v97 - v98;
        if (v77)
        {
          goto LABEL_119;
        }

        if (v99 < v87)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v66 - 1;
        if (v66 - 1 >= v5)
        {
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
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (!*a3)
        {
          goto LABEL_132;
        }

        v104 = v31;
        v105 = *&v31->clientIdentity[16 * a4 + 16];
        v5 = *&v31->clientIdentity[16 * v66 + 24];
        sub_100303BFC(*a3 + v10[9] * v105, (*a3 + v10[9] * *&v31->clientIdentity[16 * v66 + 16]), *a3 + v10[9] * v5, v65);
        if (v6)
        {
LABEL_108:
          v104, v21, v22, v31, v23, v24, v25, v26;
          return;
        }

        if (v5 < v105)
        {
          goto LABEL_110;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v104 = sub_1004361F4(v104, v21, v22, v31, v23, v24, v25, v26);
        }

        if (a4 >= *v104->clientIdentity)
        {
          goto LABEL_111;
        }

        v106 = v104 + 16 * a4;
        *(v106 + 4) = v105;
        *(v106 + 5) = v5;
        v150 = v104;
        sub_100436168(v66);
        v31 = v150;
        v5 = *v150->clientIdentity;
        v9 = v149;
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v71 = &v31->clientIdentity[16 * v5 + 16];
      v72 = *(v71 - 64);
      v73 = *(v71 - 56);
      v77 = __OFSUB__(v73, v72);
      v74 = v73 - v72;
      if (v77)
      {
        goto LABEL_112;
      }

      v76 = *(v71 - 48);
      v75 = *(v71 - 40);
      v77 = __OFSUB__(v75, v76);
      v69 = v75 - v76;
      v70 = v77;
      if (v77)
      {
        goto LABEL_113;
      }

      v78 = &v31->super.isa + 2 * v5;
      v80 = *v78;
      v79 = v78[1];
      v77 = __OFSUB__(v79, v80);
      v81 = v79 - v80;
      if (v77)
      {
        goto LABEL_115;
      }

      v77 = __OFADD__(v69, v81);
      v82 = v69 + v81;
      if (v77)
      {
        goto LABEL_118;
      }

      if (v82 >= v74)
      {
        v100 = &v31->clientIdentity[16 * v66 + 16];
        v102 = *v100;
        v101 = *(v100 + 1);
        v77 = __OFSUB__(v101, v102);
        v103 = v101 - v102;
        if (v77)
        {
          goto LABEL_122;
        }

        if (v69 < v103)
        {
          v66 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v29 = a3[1];
    v30 = v136;
    a4 = v130;
    if (v136 >= v29)
    {
      goto LABEL_95;
    }
  }

  v129 = v6;
  v107 = *a3;
  v108 = v10[9];
  v127 = v10;
  v143 = v10[2];
  v109 = v107 + v108 * (v43 - 1);
  v110 = -v108;
  v128 = v32;
  v111 = (v32 - v43);
  v141 = v107;
  v133 = v108;
  v5 = v107 + v43 * v108;
  v136 = v61;
LABEL_85:
  v139 = v109;
  v140 = v43;
  v137 = v5;
  v138 = v111;
  v112 = v109;
  while (1)
  {
    v113 = v147;
    v114 = v143;
    (v143)(v147, v5, v9, v31);
    v115 = v148;
    v114(v148, v112, v149);
    v116 = static Date.> infix(_:_:)();
    a4 = v145;
    v117 = *v145;
    v118 = v115;
    v9 = v149;
    (*v145)(v118, v149);
    v117(v113, v9);
    if ((v116 & 1) == 0)
    {
LABEL_84:
      v43 = v140 + 1;
      v109 = &v139[v133];
      v111 = v138 - 1;
      v5 = v137 + v133;
      v62 = v136;
      if (v140 + 1 != v136)
      {
        goto LABEL_85;
      }

      v6 = v129;
      a3 = v132;
      v10 = v127;
      v31 = v135;
      v32 = v128;
      if (v136 < v128)
      {
        goto LABEL_125;
      }

      goto LABEL_33;
    }

    if (!v141)
    {
      break;
    }

    a4 = v144;
    v119 = *v144;
    v120 = v142;
    (*v144)(v142, v5, v9);
    swift_arrayInitWithTakeFrontToBack();
    v119(v112, v120, v9);
    v112 += v110;
    v5 += v110;
    if (__CFADD__(v111++, 1))
    {
      goto LABEL_84;
    }
  }

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
}

void sub_100303BFC(unint64_t a1, char *a2, unint64_t a3, char *a4)
{
  v58 = type metadata accessor for Date();
  v8 = *(v58 - 8);
  __chkstk_darwin(v58, v9);
  v56 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v12);
  v55 = &v46 - v13;
  v15 = *(v14 + 72);
  if (!v15)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  if (&a2[-a1] == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_61;
  }

  v16 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_62;
  }

  v57 = a3;
  v17 = &a2[-a1] / v15;
  v61 = a1;
  v60 = a4;
  if (v17 >= v16 / v15)
  {
    v19 = v16 / v15 * v15;
    if (a4 < a2 || &a2[v19] <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v30 = &a4[v19];
    if (v19 < 1)
    {
      v34 = &a4[v19];
    }

    else
    {
      v31 = -v15;
      v50 = (v8 + 8);
      v51 = (v8 + 16);
      v32 = &a4[v19];
      v33 = v57;
      v34 = v30;
      v48 = a1;
      v49 = a4;
      v52 = -v15;
      do
      {
        v46 = v34;
        v35 = a2;
        v36 = &a2[v31];
        v53 = v35;
        v54 = v36;
        while (1)
        {
          if (v35 <= a1)
          {
            v61 = v35;
            v59 = v46;
            goto LABEL_59;
          }

          v38 = v33;
          v47 = v34;
          v57 = v33 + v31;
          v39 = &v32[v31];
          v40 = *v51;
          v41 = v55;
          v42 = v58;
          v43 = v32;
          (*v51)(v55, v39, v58);
          v44 = v56;
          (v40)(v56, v36, v42);
          LOBYTE(v40) = static Date.> infix(_:_:)();
          v45 = *v50;
          (*v50)(v44, v42);
          v45(v41, v42);
          if (v40)
          {
            break;
          }

          v34 = v39;
          v33 = v57;
          if (v38 < v43 || v57 >= v43)
          {
            swift_arrayInitWithTakeFrontToBack();
            v36 = v54;
            a1 = v48;
          }

          else
          {
            v36 = v54;
            a1 = v48;
            if (v38 != v43)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v32 = v39;
          v37 = v39 > v49;
          v31 = v52;
          v35 = v53;
          if (!v37)
          {
            a2 = v53;
            goto LABEL_58;
          }
        }

        v46 = v43;
        v33 = v57;
        if (v38 < v53 || v57 >= v53)
        {
          a2 = v54;
          swift_arrayInitWithTakeFrontToBack();
          v34 = v47;
          a1 = v48;
          v31 = v52;
        }

        else
        {
          a2 = v54;
          v34 = v47;
          a1 = v48;
          v31 = v52;
          if (v38 != v53)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v32 = v46;
      }

      while (v46 > v49);
    }

LABEL_58:
    v61 = a2;
    v59 = v34;
  }

  else
  {
    v18 = v17 * v15;
    if (a4 < a1 || a1 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v54 = &a4[v18];
    v59 = &a4[v18];
    if (v18 >= 1 && a2 < v57)
    {
      v52 = *(v8 + 16);
      v53 = (v8 + 16);
      v50 = v15;
      v51 = (v8 + 8);
      do
      {
        v21 = v55;
        v22 = v58;
        v23 = v52;
        (v52)(v55, a2, v58);
        v24 = a2;
        v25 = v56;
        v23(v56, a4, v22);
        v26 = static Date.> infix(_:_:)();
        v27 = *v51;
        (*v51)(v25, v22);
        v27(v21, v22);
        if (v26)
        {
          v28 = v50;
          a2 = &v50[v24];
          if (a1 < v24 || a1 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v24)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          v28 = v50;
          v29 = &v50[a4];
          if (a1 < a4 || a1 >= v29)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v24;
          }

          else
          {
            a2 = v24;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v60 = v29;
          a4 = &v28[a4];
        }

        a1 += v28;
        v61 = a1;
      }

      while (a4 < v54 && a2 < v57);
    }
  }

LABEL_59:
  sub_100558A28(&v61, &v60, &v59);
}

void sub_10030418C(uint64_t a1)
{
  v2 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v2 - 8, v3);
  v5 = &v14 - v4;
  if (qword_100935E90 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100006654(v6, qword_100941920);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "RDBeforeFirstUnlockNotificationEngine: Updating nextScheduledAlarmDate as we got a new future alarm date.", v9, 2u);
  }

  v10 = [objc_opt_self() daemonUserDefaults];
  sub_10012F78C(a1, v5);
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  isa = 0;
  if ((*(v12 + 48))(v5, 1, v11) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v12 + 8))(v5, v11);
  }

  [v10 setNextScheduledAlarmDate:isa];
}

uint64_t sub_100304390(void *a1, uint64_t a2, void *a3, uint64_t (*a4)(void), uint64_t a5)
{
  v149 = a5;
  v150 = a4;
  v147 = a3;
  v148 = a1;
  v6 = type metadata accessor for Date();
  v143 = *(v6 - 8);
  v144 = v6;
  __chkstk_darwin(v6, v7);
  v140 = &v137 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v10);
  v139 = &v137 - v11;
  __chkstk_darwin(v12, v13);
  v142 = &v137 - v14;
  v15 = type metadata accessor for RDUserNotificationAction();
  v145 = *(v15 - 8);
  v146 = v15;
  __chkstk_darwin(v15, v16);
  v141 = &v137 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18, v19);
  v21 = &v137 - v20;
  __chkstk_darwin(v22, v23);
  v25 = &v137 - v24;
  v26 = type metadata accessor for RDUserNotificationType();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26, v28);
  v30 = &v137 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31, v32);
  v34 = &v137 - v33;
  v37 = __chkstk_darwin(v35, v36);
  v39 = &v137 - v38;
  v40 = *(v27 + 16);
  v40(&v137 - v38, a2, v26, v37);
  v41 = (*(v27 + 88))(v39, v26);
  if (v41 == enum case for RDUserNotificationType.reminderAlarm(_:) || v41 == enum case for RDUserNotificationType.todayNotificationForSingleReminder(_:) || v41 == enum case for RDUserNotificationType.caldavSharedList(_:) || v41 == enum case for RDUserNotificationType.assignmentNotification(_:) || v41 == enum case for RDUserNotificationType.sharedListAddedReminderNotification(_:) || v41 == enum case for RDUserNotificationType.dueDateDeltaAlarm(_:))
  {
    (*(v27 + 8))(v39, v26);
  }

  else if (v41 != enum case for RDUserNotificationType.todayNotification(_:) && v41 != enum case for RDUserNotificationType.todayNotificationBadge(_:))
  {
    if (v41 == enum case for RDUserNotificationType.beforeFirstUnlock(_:))
    {
      v65 = v146;
      if (qword_100935E90 != -1)
      {
        swift_once();
      }

      v66 = type metadata accessor for Logger();
      v67 = sub_100006654(v66, qword_100941920);
      v68 = v145;
      v138 = *(v145 + 16);
      v138(v25, v147, v65);
      v69 = v148;
      v148 = v67;
      v70 = Logger.logObject.getter();
      v71 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        v151 = swift_slowAlloc();
        *v72 = 136315394;
        v73 = [v69 actionIdentifier];
        v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v76 = v75;

        v77 = sub_10000668C(v74, v76, &v151);
        v76, v78, v79, v80, v81, v82, v83, v84;
        *(v72 + 4) = v77;
        *(v72 + 12) = 2080;
        v85 = RDUserNotificationAction.rawValue.getter();
        v87 = v86;
        v88 = *(v145 + 8);
        v88(v25, v146);
        v89 = sub_10000668C(v85, v87, &v151);
        v90 = v87;
        v65 = v146;
        v90, v91, v92, v93, v94, v95, v96, v97;
        *(v72 + 14) = v89;
        _os_log_impl(&_mh_execute_header, v70, v71, "Processing notification response {actionIdentifier: %s, action: %s}", v72, 0x16u);
        swift_arrayDestroy();

        v68 = v145;
      }

      else
      {

        v88 = *(v68 + 8);
        v88(v25, v65);
      }

      v98 = v138;
      v138(v21, v147, v65);
      v99 = (*(v68 + 88))(v21, v65);
      if (v99 == enum case for RDUserNotificationAction.defaultDismiss(_:))
      {
        v100 = v142;
        Date.init()();
        v101 = objc_opt_self();
        v102 = [v101 daemonUserDefaults];
        v103 = [v102 lastPresentAlarmDate];

        v105 = v143;
        v104 = v144;
        if (v103)
        {
          v106 = v139;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          sub_1003050A8(&qword_1009464D0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
          if ((dispatch thunk of static Comparable.< infix(_:_:)() & 1) == 0)
          {
            v107 = [v101 daemonUserDefaults];
            [v107 setLastPresentAlarmDate:0];
          }

          (*(v105 + 8))(v106, v104);
        }

        v108 = [v101 daemonUserDefaults];
        v109 = [v108 nextScheduledAlarmDate];

        if (v109)
        {
          v110 = v140;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          sub_1003050A8(&qword_1009464D0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
          if ((dispatch thunk of static Comparable.< infix(_:_:)() & 1) == 0)
          {
            v111 = [v101 daemonUserDefaults];
            [v111 setNextScheduledAlarmDate:0];
          }

          (*(v105 + 8))(v110, v104);
        }

        sub_10030088C();
        (*(v105 + 8))(v100, v104);
        goto LABEL_55;
      }

      if (v99 == enum case for RDUserNotificationAction.debugDismiss(_:) || v99 == enum case for RDUserNotificationAction.markAsCompleted(_:) || v99 == enum case for RDUserNotificationAction.snoozeForOneHour(_:) || v99 == enum case for RDUserNotificationAction.snoozeForOneDay(_:) || v99 == enum case for RDUserNotificationAction.snoozeToNextThirds(_:) || v99 == enum case for RDUserNotificationAction.snoozeToNextWeekend(_:) || v99 == enum case for RDUserNotificationAction.addToReminders(_:) || v99 == enum case for RDUserNotificationAction.viewAssignmentInList(_:) || v99 == enum case for RDUserNotificationAction.declineAssignment(_:) || v99 == enum case for RDUserNotificationAction.viewRemindersInList(_:))
      {
        v112 = v141;
        v98(v141, v147, v65);
        v113 = Logger.logObject.getter();
        v114 = static os_log_type_t.fault.getter();
        if (os_log_type_enabled(v113, v114))
        {
          v115 = v112;
          v116 = swift_slowAlloc();
          v117 = v65;
          v118 = swift_slowAlloc();
          v151 = v118;
          *v116 = 136315138;
          v119 = RDUserNotificationAction.rawValue.getter();
          v121 = v120;
          v88(v115, v117);
          v122 = sub_10000668C(v119, v121, &v151);
          v121, v123, v124, v125, v126, v127, v128, v129;
          *(v116 + 4) = v122;
          _os_log_impl(&_mh_execute_header, v113, v114, "Unexpected action for notification type .beforeFirstUnlock {action: %s}", v116, 0xCu);
          sub_10000607C(v118);
        }

        else
        {

          v88(v112, v65);
        }

LABEL_55:
        v49 = Logger.logObject.getter();
        v130 = static os_log_type_t.default.getter();
        if (!os_log_type_enabled(v49, v130))
        {
LABEL_58:

          goto LABEL_59;
        }

        v131 = swift_slowAlloc();
        *v131 = 0;
        _os_log_impl(&_mh_execute_header, v49, v130, "Handled dismissal of before first unlock notification successfully.", v131, 2u);
LABEL_57:

        goto LABEL_58;
      }
    }

    else
    {
      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
    }

    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    return result;
  }

  if (qword_100935E90 != -1)
  {
    swift_once();
  }

  v47 = type metadata accessor for Logger();
  sub_100006654(v47, qword_100941920);
  (v40)(v34, a2, v26);
  v48 = v148;
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v147 = swift_slowAlloc();
    v148 = swift_slowAlloc();
    v151 = v148;
    *v51 = 136315394;
    (v40)(v30, v34, v26);
    v52 = String.init<A>(describing:)();
    v54 = v53;
    (*(v27 + 8))(v34, v26);
    v55 = sub_10000668C(v52, v54, &v151);
    v54, v56, v57, v58, v59, v60, v61, v62;
    *(v51 + 4) = v55;
    *(v51 + 12) = 2112;
    *(v51 + 14) = v48;
    v63 = v147;
    *v147 = v48;
    v64 = v48;
    _os_log_impl(&_mh_execute_header, v49, v50, "RDBeforeFirstUnlockNotificationEngine didn't expect to receive actions of this type. {type: %s, response: %@}", v51, 0x16u);
    sub_1000050A4(v63, &unk_100938E70, &unk_100797230);

    sub_10000607C(v148);

    goto LABEL_57;
  }

  (*(v27 + 8))(v34, v26);
LABEL_59:
  if (qword_100935E90 != -1)
  {
    swift_once();
  }

  v132 = type metadata accessor for Logger();
  sub_100006654(v132, qword_100941920);
  v133 = Logger.logObject.getter();
  v134 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v133, v134))
  {
    v135 = swift_slowAlloc();
    *v135 = 0;
    _os_log_impl(&_mh_execute_header, v133, v134, "Completing action handler by calling completionHandler now.", v135, 2u);
  }

  return v150();
}

uint64_t sub_1003050A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100305194()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100941B00);
  v1 = sub_100006654(v0, qword_100941B00);
  if (qword_1009364D8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10030525C(void *a1, uint64_t a2)
{
  v6 = [v2 purpose];
  if ((v6 - 1) >= 2)
  {
    if (v6)
    {
      if (qword_100935E98 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_100006654(v19, qword_100941B00);
      v20 = sub_1001F67C8(&_swiftEmptyArrayStorage);
      v21 = sub_1001F67C8(&_swiftEmptyArrayStorage);
      sub_10054573C("unknown purpose", 15, 2, v20, v21);
      __break(1u);
    }

    else
    {
      v8 = sub_100305418(a1, a2);
      if (!v3)
      {
        v9 = v8;
        v10 = objc_allocWithZone(REMAccountsDataViewInvocationResult);
        sub_1000060C8(0, &unk_10093F580, REMAccountStorage_ptr);
        isa = Array._bridgeToObjectiveC()().super.isa;
        v9, v12, v13, v14, v15, v16, v17, v18;
        [v10 initWithStorages:isa];
      }
    }
  }

  else
  {
    __chkstk_darwin(v6, v7);
    v22[2] = v2;
    sub_100402044(a2, sub_100309410, v22);
  }
}

unint64_t sub_100305418(void *a1, uint64_t a2)
{
  v4 = v3;
  v6 = a1;
  v7 = [a1 accountStoragesForAllGenericAccounts];
  sub_1000060C8(0, &unk_10093F580, REMAccountStorage_ptr);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (qword_100935E98 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100006654(v9, qword_100941B00);

  v10 = v2;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();
  v106 = v10;

  v13 = v8 >> 62;
  if (os_log_type_enabled(v11, v12))
  {
    v14 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v107 = v22;
    *v14 = 134218242;
    v104 = a2;
    v105 = v6;
    if (v13)
    {
      v23 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v23 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v14 + 4) = v23;
    v8, v15, v16, v17, v18, v19, v20, v21;
    *(v14 + 12) = 2080;
    v24 = [v106 name];
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    v28 = sub_10000668C(v25, v27, &v107);
    v27, v29, v30, v31, v32, v33, v34, v35;
    *(v14 + 14) = v28;
    _os_log_impl(&_mh_execute_header, v11, v12, "Fetching all generic account storages {cached#: %ld, name: %s}", v14, 0x16u);
    sub_10000607C(v22);

    v4 = v3;
    a2 = v104;
    v6 = v105;
  }

  else
  {

    v8, v43, v44, v45, v46, v47, v48, v49;
  }

  if (v13)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      return v8;
    }
  }

  else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return v8;
  }

  v8, v36, v37, v38, v39, v40, v41, v42;
  v50 = sub_100401AE8(a2, sub_100305CD0, 0);
  if (!v4)
  {
    v8 = v50;
    v51 = v50 >> 62;
    if (v50 >> 62)
    {
      v52 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v52 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v53 = v106;
    if (v52)
    {
      v54 = v6;

      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v107 = v65;
        *v57 = 134218242;
        if (v51)
        {
          v66 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v66 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v57 + 4) = v66;
        v8, v58, v59, v60, v61, v62, v63, v64;
        *(v57 + 12) = 2080;
        v90 = [v53 name];
        v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v93 = v92;

        v94 = sub_10000668C(v91, v93, &v107);
        v93, v95, v96, v97, v98, v99, v100, v101;
        *(v57 + 14) = v94;
        _os_log_impl(&_mh_execute_header, v55, v56, "Putting all generic account storages fetched from DB to cache {fetched#: %ld, name: %s}", v57, 0x16u);
        sub_10000607C(v65);
      }

      else
      {

        v8, v83, v84, v85, v86, v87, v88, v89;
      }

      isa = Array._bridgeToObjectiveC()().super.isa;
      [v54 setAccountStoragesForAllGenericAccountsWithStorages:isa];
    }

    else
    {
      v67 = Logger.logObject.getter();
      v68 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v107 = v70;
        *v69 = 136315138;
        v71 = [v53 name];
        v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v74 = v73;

        v75 = sub_10000668C(v72, v74, &v107);
        v74, v76, v77, v78, v79, v80, v81, v82;
        *(v69 + 4) = v75;
        _os_log_impl(&_mh_execute_header, v67, v68, "Couldn't fetch all generic account storages from database {name: %s}", v69, 0xCu);
        sub_10000607C(v70);
      }
    }
  }

  return v8;
}

void sub_10030596C()
{
  v2 = [v0 purpose];
  if (v2 >= 3)
  {
    if (qword_100935E98 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_100006654(v34, qword_100941B00);
    v35 = sub_1001F67C8(&_swiftEmptyArrayStorage);
    v36 = sub_1001F67C8(&_swiftEmptyArrayStorage);
    sub_10054573C("unknown purpose", 15, 2, v35, v36);
    __break(1u);
  }

  else
  {
    v3 = v2;
    v4 = sub_10000F8A4((v2 + 3), 0, 7u);
    sub_1003093CC((v3 + 3), 0, 7, v5, v6, v7, v8, v9);
    sub_1000060C8(0, &qword_1009399F0, off_1008D4120);
    v10 = [objc_allocWithZone(NSFetchRequest) init];
    v11 = [swift_getObjCClassFromMetadata() entity];
    [v10 setEntity:v11];

    [v10 setAffectedStores:0];
    [v10 setPredicate:v4];

    v12 = NSManagedObjectContext.fetch<A>(_:)();
    if (v1)
    {
    }

    else
    {
      v13 = v12;
      type metadata accessor for REMAccountStorageCDIngestor();
      swift_initStackObject();
      if (qword_100936098 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      v15 = sub_100006654(v14, qword_100946390);
      __chkstk_darwin(v15, v16);
      sub_1000F5104(&qword_10094F630, qword_1007A3430);
      sub_1000060C8(0, &unk_10093F580, REMAccountStorage_ptr);
      sub_100308CDC();
      v17 = Sequence.map<A>(skippingError:_:)();

      v13, v18, v19, v20, v21, v22, v23, v24;
      v25 = objc_allocWithZone(REMAccountsDataViewInvocationResult);
      isa = Array._bridgeToObjectiveC()().super.isa;
      v17, v27, v28, v29, v30, v31, v32, v33;
      [v25 initWithStorages:isa];
    }
  }
}

void sub_100305CD0(uint64_t *a1@<X8>)
{
  v3 = sub_10000F8A4(3uLL, 0, 7u);
  sub_1000060C8(0, &qword_1009399F0, off_1008D4120);
  v4 = [objc_allocWithZone(NSFetchRequest) init];
  v5 = [swift_getObjCClassFromMetadata() entity];
  [v4 setEntity:v5];

  [v4 setAffectedStores:0];
  [v4 setPredicate:v3];

  v6 = NSManagedObjectContext.fetch<A>(_:)();
  if (v1)
  {
  }

  else
  {
    v7 = v6;
    type metadata accessor for REMAccountStorageCDIngestor();
    swift_initStackObject();
    if (qword_100936098 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    v9 = sub_100006654(v8, qword_100946390);
    __chkstk_darwin(v9, v10);
    sub_1000F5104(&qword_10094F630, qword_1007A3430);
    sub_1000060C8(0, &unk_10093F580, REMAccountStorage_ptr);
    sub_100308CDC();
    v11 = Sequence.map<A>(skippingError:_:)();

    v7, v12, v13, v14, v15, v16, v17, v18;
    *a1 = v11;
  }
}

void sub_100305F98(void *a1, uint64_t a2)
{
  v4 = v3;
  v6 = [a1 inMemoryPrimaryActiveCKAccountREMObjectID];
  if (v6)
  {
    v7 = v6;
    v150 = a2;
    sub_1000F5104(&unk_100939D60, &unk_1007959E0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1007953F0;
    *(v8 + 32) = v7;
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    v9 = v7;
    isa = Array._bridgeToObjectiveC()().super.isa;
    v8, v11, v12, v13, v14, v15, v16, v17;
    v18 = [a1 accountStoragesForAccountObjectIDs:isa];

    v19 = v18;
    if (!v18)
    {
      sub_1000060C8(0, &unk_10093F580, REMAccountStorage_ptr);
      v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = Array._bridgeToObjectiveC()().super.isa;
      v20, v21, v22, v23, v24, v25, v26, v27;
    }

    sub_1000060C8(0, &unk_10093F580, REMAccountStorage_ptr);
    v28 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    if (qword_100935E98 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_100006654(v29, qword_100941B00);
    swift_bridgeObjectRetain_n();
    v30 = v9;
    v31 = v2;
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.info.getter();
    v152 = v31;

    v34 = v28 >> 62;
    if (os_log_type_enabled(v32, v33))
    {
      v148 = v19;
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v38 = v30;
      v39 = v37;
      v155 = v37;
      *v35 = 138412802;
      v40 = v38;
      *(v35 + 4) = v38;
      v147 = v36;
      *v36 = v7;
      *(v35 + 12) = 2048;
      v149 = v7;
      if (v34)
      {
        v41 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v41 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v146 = v40;
      v42 = v40;
      v28, v43, v44, v45, v46, v47, v48, v49;
      *(v35 + 14) = v41 != 0;
      v28, v50, v51, v52, v53, v54, v55, v56;
      *(v35 + 22) = 2080;
      v57 = [v152 name];
      v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v60 = v59;

      v61 = sub_10000668C(v58, v60, &v155);
      v60, v62, v63, v64, v65, v66, v67, v68;
      *(v35 + 24) = v61;
      _os_log_impl(&_mh_execute_header, v32, v33, "Fetching account storage by ObjectID {input: %@, hit?: %ld, name: %s}", v35, 0x20u);
      sub_100039860(v147);

      sub_10000607C(v39);
      v30 = v146;

      v7 = v149;
      v4 = v3;
      v34 = v28 >> 62;
      v19 = v148;
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    if (v34)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        v96 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_18;
      }
    }

    else
    {
      v96 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v96)
      {
LABEL_18:
        v28, v69, v70, v71, v72, v73, v74, v75;
        if (v96 == 1)
        {
          [objc_allocWithZone(REMAccountsDataViewInvocationResult) initWithStorages:v19];

          return;
        }

        v97 = objc_opt_self();
        v98 = String._bridgeToObjectiveC()();
        [v97 internalErrorWithDebugDescription:v98];

        swift_willThrow();
        goto LABEL_24;
      }
    }

    v28, v99, v100, v101, v102, v103, v104, v105;
    v106 = sub_100401AE8(v150, sub_100306828, 0);
    if (v4)
    {
LABEL_24:

      return;
    }

    v107 = v106;
    v108 = v30;
    v109 = v152;
    v110 = Logger.logObject.getter();
    v111 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v110, v111))
    {
      v112 = swift_slowAlloc();
      v151 = swift_slowAlloc();
      v153 = swift_slowAlloc();
      v155 = v153;
      *v112 = 138412546;
      *(v112 + 4) = v108;
      *v151 = v7;
      *(v112 + 12) = 2080;
      v113 = v108;
      v114 = [v109 name];
      v115 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v117 = v116;

      v118 = sub_10000668C(v115, v117, &v155);
      v117, v119, v120, v121, v122, v123, v124, v125;
      *(v112 + 14) = v118;
      _os_log_impl(&_mh_execute_header, v110, v111, "Putting account storage fetched from primaryActiveCloudKitAccountOptimized() to storage cache {accountID: %@, name: %s}", v112, 0x16u);
      sub_100039860(v151);

      sub_10000607C(v153);
    }

    v126 = Array._bridgeToObjectiveC()().super.isa;
    v127 = swift_allocObject();
    *(v127 + 16) = xmmword_1007953F0;
    *(v127 + 32) = v108;
    v128 = v108;
    v129 = Array._bridgeToObjectiveC()().super.isa;
    v127, v130, v131, v132, v133, v134, v135, v136;
    [a1 setAccountStorages:v126 forAccountObjectIDs:v129];

    v137 = objc_allocWithZone(REMAccountsDataViewInvocationResult);
    v138 = Array._bridgeToObjectiveC()().super.isa;
    v107, v139, v140, v141, v142, v143, v144, v145;
    [v137 initWithStorages:v138];
  }

  else
  {
    if (qword_100935E98 != -1)
    {
      swift_once();
    }

    v76 = type metadata accessor for Logger();
    sub_100006654(v76, qword_100941B00);
    v77 = v2;
    v78 = Logger.logObject.getter();
    v79 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v155 = v81;
      *v80 = 136315138;
      v82 = [v77 name];
      v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v85 = v84;

      v86 = sub_10000668C(v83, v85, &v155);
      v85, v87, v88, v89, v90, v91, v92, v93;
      *(v80 + 4) = v86;
      _os_log_impl(&_mh_execute_header, v78, v79, "No need to fetching account storage because no active primary CK account is enabled {name: %s}", v80, 0xCu);
      sub_10000607C(v81);
    }

    v94 = objc_allocWithZone(REMAccountsDataViewInvocationResult);
    sub_1000060C8(0, &unk_10093F580, REMAccountStorage_ptr);
    v95 = Array._bridgeToObjectiveC()().super.isa;
    [v94 initWithStorages:v95];
  }
}

void sub_100306828(uint64_t *a1@<X8>)
{
  if (qword_1009367D8 != -1)
  {
    swift_once();
  }

  v3 = sub_100013674(qword_1009752E8);
  if (v3)
  {
    v4 = v3;
    v5 = sub_100019990(v3);
    if (v1)
    {
    }

    else
    {
      v8 = v5;
      sub_1000F5104(&unk_100939D60, &unk_1007959E0);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1007953F0;
      *(v9 + 32) = v8;

      *a1 = v9;
    }
  }

  else
  {
    v6 = objc_opt_self();
    v7 = String._bridgeToObjectiveC()();
    [v6 internalErrorWithDebugDescription:v7];

    swift_willThrow();
  }
}

void sub_100306960(void *a1, uint64_t a2)
{
  if ([*v2 fetchREMObjectIDOnly])
  {
    sub_100308D5C(a1);
  }

  else
  {
    sub_100305F98(a1, a2);
  }
}

id sub_1003069EC(void *a1)
{
  v3 = v2;
  v4 = v1;
  v6 = [v4 fetchOption];
  if (v6 == 2)
  {
    __chkstk_darwin(2, v7);
    sub_1000F5104(&qword_10093A578, &qword_1007A1E10);
LABEL_9:
    NSManagedObjectContext.rem_performAndWait<A>(_:)();
    if (!v2)
    {
      v26 = objc_allocWithZone(REMAccountsDataViewInvocationREMObjectIDOnlyResult);
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
      isa = Array._bridgeToObjectiveC()().super.isa;
      v46, v28, v29, v30, v31, v32, v33, v34;
      v35 = [v26 initWithAccountIDs:isa];

      return v35;
    }

    return v3;
  }

  if (v6 == 1)
  {
    __chkstk_darwin(1, v7);
    sub_1000F5104(&qword_10093A578, &qword_1007A1E10);
    goto LABEL_9;
  }

  if (v6)
  {
    if (qword_100935E98 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_100006654(v36, qword_100941B00);
    v37 = v4;
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 134349056;
      *(v40 + 4) = [v37 fetchOption];

      _os_log_impl(&_mh_execute_header, v38, v39, "REMAccountsDataViewInvocation_fetchActiveCloudKitAccountObjectIDs: Unknown REMActiveCloudKitAccountFetchOption %{public}ld", v40, 0xCu);
    }

    else
    {

      v38 = v37;
    }

    v41 = objc_opt_self();
    v42 = String._bridgeToObjectiveC()();
    v3 = [v41 internalErrorWithDebugDescription:v42];

    swift_willThrow();
    return v3;
  }

  v8 = [a1 storeController];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
    v11 = [v10 inMemoryPrimaryActiveCKAccountREMObjectID];
    if (v11)
    {
      v12 = v11;
      sub_1000F5104(&unk_100939D60, &unk_1007959E0);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_1007953F0;
      *(v13 + 32) = v12;
      v14 = objc_allocWithZone(REMAccountsDataViewInvocationREMObjectIDOnlyResult);
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
      v15 = v12;
      v16 = Array._bridgeToObjectiveC()().super.isa;
      v13, v17, v18, v19, v20, v21, v22, v23;
      v24 = [v14 initWithAccountIDs:v16];

      return v24;
    }
  }

  v43 = objc_allocWithZone(REMAccountsDataViewInvocationREMObjectIDOnlyResult);
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  v44 = Array._bridgeToObjectiveC()().super.isa;
  v45 = [v43 initWithAccountIDs:v44];

  return v45;
}

void **sub_100306E5C(void *a1, uint64_t a2)
{
  v5 = v2;
  v225 = &_swiftEmptyArrayStorage;
  v8 = &selRef_setPublicLinkLastModifiedDate_;
  isa = [v2 objectIDs];
  if (!isa)
  {
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;
    v10, v11, v12, v13, v14, v15, v16, v17;
  }

  v220 = a1;
  v18 = [a1 accountStoragesForAccountObjectIDs:isa];

  v219 = sub_1000060C8(0, &unk_10093F580, REMAccountStorage_ptr);
  v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v20 = [v5 objectIDs];
  v21 = sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v23 = sub_1001A577C(v22);
  v22, v24, v25, v26, v27, v28, v29, v30;
  v224 = v23;
  if (v19 >> 62)
  {
    v38 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v38 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v221 = v21;
  v218 = a2;
  if (v38)
  {
    if (v38 < 1)
    {
      __break(1u);
      goto LABEL_48;
    }

    v217 = v5;
    v39 = 0;
    do
    {
      if ((v19 & 0xC000000000000001) != 0)
      {
        v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v40 = *(v19 + 8 * v39 + 32);
      }

      v41 = v40;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v225 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v225 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      ++v39;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v3 = v225;
      v42 = [v41 objectID];
      v43 = sub_10019F060(v42);
    }

    while (v38 != v39);
    v5 = v217;
  }

  else
  {
    v3 = &_swiftEmptyArrayStorage;
  }

  v19, v31, v32, v33, v34, v35, v36, v37;
  if (qword_100935E98 != -1)
  {
    swift_once();
  }

  v44 = type metadata accessor for Logger();
  v45 = sub_100006654(v44, qword_100941B00);
  v19 = v224;
  swift_bridgeObjectRetain_n();
  v46 = v5;
  v22 = Logger.logObject.getter();
  LOBYTE(v38) = static os_log_type_t.info.getter();
  if (!os_log_type_enabled(&v22->super, v38))
  {

    swift_bridgeObjectRelease_n();
    if ((v224 & 0xC000000000000001) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_26;
  }

  v216[1] = v45;
  v4 = swift_slowAlloc();
  v216[0] = swift_slowAlloc();
  v223[0] = v216[0];
  *v4 = 134218754;
  v217 = v46;
  v47 = [v46 objectIDs];
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v8 >> 62))
  {
    v55 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_21;
  }

LABEL_48:
  v55 = _CocoaArrayWrapper.endIndex.getter();
LABEL_21:
  v8, v48, v49, v50, v51, v52, v53, v54;
  *(v4 + 4) = v55;
  v56 = v217;

  *(v4 + 12) = 2048;
  if (v3 >> 62)
  {
    v64 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v64 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v4 + 14) = v64;
  *(v4 + 22) = 2048;
  if ((v19 & 0xC000000000000001) != 0)
  {
    v65 = __CocoaSet.count.getter();
  }

  else
  {
    v65 = *(v19 + 16);
  }

  v19, v57, v58, v59, v60, v61, v62, v63;
  *(v4 + 24) = v65;
  v19, v123, v124, v125, v126, v127, v128, v129;
  *(v4 + 32) = 2080;
  v130 = [v56 name];
  v131 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v133 = v132;

  v134 = v131;
  v46 = v217;
  v135 = sub_10000668C(v134, v133, v223);
  v133, v136, v137, v138, v139, v140, v141, v142;
  *(v4 + 34) = v135;
  _os_log_impl(&_mh_execute_header, &v22->super, v38, "Fetching account storage by ObjectID {input#: %ld, hit#: %ld, miss#: %ld, name: %s}", v4, 0x2Au);
  sub_10000607C(v216[0]);

  if ((v19 & 0xC000000000000001) == 0)
  {
LABEL_39:
    if (!*(v19 + 16))
    {
      goto LABEL_40;
    }

    goto LABEL_27;
  }

LABEL_26:
  if (!__CocoaSet.count.getter())
  {
LABEL_40:
    v19, v66, v67, v68, v69, v70, v71, v72;
LABEL_57:
    swift_beginAccess();
    v197 = v225;
    v198 = objc_allocWithZone(REMAccountsDataViewInvocationResult);

    v199 = Array._bridgeToObjectiveC()().super.isa;
    v197, v200, v201, v202, v203, v204, v205, v206;
    v81 = [v198 initWithStorages:v199];
    v197, v207, v208, v209, v210, v211, v212, v213;

    return v81;
  }

LABEL_27:
  v73 = sub_100277EBC(v19);
  v19, v74, v75, v76, v77, v78, v79, v80;
  v81 = v216;
  __chkstk_darwin(v82, v83);
  v215[2] = v46;
  v215[3] = v73;
  v84 = v222;
  v85 = sub_100401AE8(v218, sub_100309374, v215);
  if (!v84)
  {
    v222 = 0;
    if (v85 >> 62)
    {
      v168 = v85;
      v169 = _CocoaArrayWrapper.endIndex.getter();
      v85 = v168;
      if (v169)
      {
        v93 = _CocoaArrayWrapper.endIndex.getter();
        v218 = v168;
        if ((v73 & 0x8000000000000000) != 0)
        {
          goto LABEL_52;
        }

LABEL_32:
        if ((v73 & 0x4000000000000000) == 0)
        {
          v94 = *v73->clientIdentity;
LABEL_34:
          v95 = v46;

          v96 = Logger.logObject.getter();
          v97 = static os_log_type_t.info.getter();

          v98 = os_log_type_enabled(v96, v97);
          if (v93 == v94)
          {
            if (v98)
            {
              v99 = swift_slowAlloc();
              v223[0] = swift_slowAlloc();
              *v99 = 136315394;
              v100 = Array.description.getter();
              v102 = v101;
              v103 = sub_10000668C(v100, v101, v223);
              v102, v104, v105, v106, v107, v108, v109, v110;
              *(v99 + 4) = v103;
              *(v99 + 12) = 2080;
              v111 = [v95 name];
              v112 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v114 = v113;

              v115 = sub_10000668C(v112, v114, v223);
              v114, v116, v117, v118, v119, v120, v121, v122;
              *(v99 + 14) = v115;
              _os_log_impl(&_mh_execute_header, v96, v97, "Putting account storages fetched from DB to cache {objIDs: %s, name: %s}", v99, 0x16u);
              swift_arrayDestroy();
            }

            v167 = Array._bridgeToObjectiveC()().super.isa;
            v96 = Array._bridgeToObjectiveC()().super.isa;

            [v220 setAccountStorages:v167 forAccountObjectIDs:v96];
          }

          else if (v98)
          {
            v143 = swift_slowAlloc();
            v223[0] = swift_slowAlloc();
            *v143 = 136315394;
            v144 = Array.description.getter();
            v146 = v145;

            v147 = sub_10000668C(v144, v146, v223);
            v146, v148, v149, v150, v151, v152, v153, v154;
            *(v143 + 4) = v147;
            *(v143 + 12) = 2080;
            v155 = [v95 name];
            v156 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v158 = v157;

            v159 = sub_10000668C(v156, v158, v223);
            v158, v160, v161, v162, v163, v164, v165, v166;
            *(v143 + 14) = v159;
            _os_log_impl(&_mh_execute_header, v96, v97, "Couldn't fetch all requested accounts {objIDs: %s, name: %s}", v143, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
          }

          swift_beginAccess();
          sub_100272530(v218);
          swift_endAccess();
          goto LABEL_57;
        }

LABEL_52:
        v94 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_34;
      }
    }

    else
    {
      v93 = *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v93)
      {
        v218 = v85;
        if ((v73 & 0x8000000000000000) != 0)
        {
          goto LABEL_52;
        }

        goto LABEL_32;
      }
    }

    v85, v86, v87, v88, v89, v90, v91, v92;
    v170 = v46;

    v171 = Logger.logObject.getter();
    v172 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v171, v172))
    {
      v173 = swift_slowAlloc();
      v223[0] = swift_slowAlloc();
      *v173 = 136315394;
      v174 = Array.description.getter();
      v176 = v175;

      v177 = sub_10000668C(v174, v176, v223);
      v176, v178, v179, v180, v181, v182, v183, v184;
      *(v173 + 4) = v177;
      *(v173 + 12) = 2080;
      v185 = [v170 name];
      v186 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v188 = v187;

      v189 = sub_10000668C(v186, v188, v223);
      v188, v190, v191, v192, v193, v194, v195, v196;
      *(v173 + 14) = v189;
      _os_log_impl(&_mh_execute_header, v171, v172, "None of the requested accounts could be fetched {objIDs: %s, name: %s}", v173, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    goto LABEL_57;
  }

  v3, v86, v87, v88, v89, v90, v91, v92;

  return v81;
}

void sub_10030795C(void *a1)
{
  v3 = v1;
  if (qword_100935E98 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100006654(v5, qword_100941B00);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Prefer using the store controller invoke() instead of this MoC invoke() for REMAccountsDataViewInvocation_fetchByExternalIdentifier", v8, 2u);
  }

  v9 = [v3 objectIDs];
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v11 = sub_100308FD8(v10, a1);
  v10, v12, v13, v14, v15, v16, v17, v18;
  if (!v2)
  {
    v19 = objc_allocWithZone(REMAccountsDataViewInvocationResult);
    sub_1000060C8(0, &unk_10093F580, REMAccountStorage_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
    v11, v21, v22, v23, v24, v25, v26, v27;
    [v19 initWithStorages:isa];
  }
}

void *sub_100307B60(void *a1, _TtC7remindd19RDXPCStorePerformer *a2)
{
  v4 = v2;
  v236 = &_swiftEmptyArrayStorage;
  v7 = &selRef_setPublicLinkLastModifiedDate_;
  isa = [v2 externalIdentifiers];
  if (!isa)
  {
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;
    v9, v10, v11, v12, v13, v14, v15, v16;
  }

  v233 = v3;
  v17 = [a1 accountStoragesForAccountExternalIdentifiers:isa];

  v18 = sub_1000060C8(0, &unk_10093F580, REMAccountStorage_ptr);
  v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v231 = v4;
  v20 = [v4 externalIdentifiers];
  v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v22 = sub_1001A5660(v21);
  v21, v23, v24, v25, v26, v27, v28, v29;
  v235 = v22;
  if (v19 >> 62)
  {
    v37 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v37 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v229[1] = v18;
  v230 = a2;
  v232 = a1;
  if (v37)
  {
    if (v37 < 1)
    {
      __break(1u);
      goto LABEL_45;
    }

    v38 = 0;
    a2 = &_swiftEmptyArrayStorage;
    do
    {
      if ((v19 & 0xC000000000000001) != 0)
      {
        v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v39 = *(v19 + 8 * v38 + 32);
      }

      v40 = v39;
      v41 = [v39 externalIdentifier];
      if (v41)
      {
        v42 = v41;
        v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v45 = v44;

        v46 = v40;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v236 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v236 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        a2 = v236;
        sub_10019EC58(v43, v45);
        v48 = v47;
        v45, v47, v49, v50, v51, v52, v53, v54;

        v48, v55, v56, v57, v58, v59, v60, v61;
      }

      else
      {
      }

      ++v38;
    }

    while (v37 != v38);
  }

  else
  {
    a2 = &_swiftEmptyArrayStorage;
  }

  v19, v30, v31, v32, v33, v34, v35, v36;
  if (qword_100935E98 != -1)
  {
    swift_once();
  }

  v62 = type metadata accessor for Logger();
  v63 = sub_100006654(v62, qword_100941B00);
  v19 = v235;
  swift_bridgeObjectRetain_n();
  v64 = v231;
  v21 = Logger.logObject.getter();
  LOBYTE(a1) = static os_log_type_t.info.getter();
  if (!os_log_type_enabled(&v21->super, a1))
  {

    swift_bridgeObjectRelease_n();
    v110 = v233;
    goto LABEL_25;
  }

  v7 = swift_slowAlloc();
  v231 = swift_slowAlloc();
  v234 = v231;
  *v7 = 134218754;
  v22 = v64;
  v65 = [(RDXPCStorePerformer *)v64 externalIdentifiers];
  v66 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v67 = *(v66 + 16);
  v66, v68, v69, v70, v71, v72, v73, v74;
  *(v7 + 4) = v67;

  *(v7 + 6) = 2048;
  v229[0] = v63;
  if (a2 >> 62)
  {
    goto LABEL_46;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    *(v7 + 14) = i;
    *(v7 + 11) = 2048;
    v83 = *(v19 + 16);
    v19, v75, v76, v77, v78, v79, v80, v81;
    v7[3] = v83;
    v19, v84, v85, v86, v87, v88, v89, v90;
    *(v7 + 16) = 2080;
    v91 = [(RDXPCStorePerformer *)v22 name];
    v92 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v94 = v93;

    v95 = sub_10000668C(v92, v94, &v234);
    v94, v96, v97, v98, v99, v100, v101, v102;
    *(v7 + 34) = v95;
    v64 = v22;
    _os_log_impl(&_mh_execute_header, &v21->super, a1, "Fetching account storage by ExtID {input#: %ld, hit#: %ld, miss#: %ld, name: %s}", v7, 0x2Au);
    sub_10000607C(v231);

    v110 = v233;
LABEL_25:
    v22 = *(v19 + 16);
    a1 = v232;
    if (!v22)
    {
      v19, v103, v104, v105, v106, v107, v108, v109;
      goto LABEL_41;
    }

    v7 = sub_1003689CC(*(v19 + 16), 0);
    v21 = sub_1002791DC(&v234, v7 + 4, v22, v19);
    v111 = sub_10001B860(v234);
    if (v21 == v22)
    {
      break;
    }

LABEL_45:
    __break(1u);
LABEL_46:
    ;
  }

  v113 = v229;
  __chkstk_darwin(v111, v112);
  v228[2] = v64;
  v228[3] = v7;
  v114 = sub_100401AE8(v230, sub_100308D40, v228);
  if (v110)
  {
    a2, v115, v116, v117, v118, v119, v120, v121;

    return v113;
  }

  if (v114 >> 62)
  {
    v199 = v114;
    v200 = _CocoaArrayWrapper.endIndex.getter();
    v114 = v199;
    if (v200)
    {
      v122 = _CocoaArrayWrapper.endIndex.getter();
      v114 = v199;
      goto LABEL_32;
    }
  }

  else
  {
    v122 = *((v114 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v122)
    {
LABEL_32:
      v231 = v114;
      v123 = v64;
      v124 = v7[2];
      v125 = v123;

      v126 = Logger.logObject.getter();
      v127 = static os_log_type_t.info.getter();

      v128 = os_log_type_enabled(v126, v127);
      if (v122 == v124)
      {
        if (v128)
        {
          v129 = swift_slowAlloc();
          v130 = swift_slowAlloc();
          v233 = 0;
          v234 = v130;
          *v129 = 136315394;
          v131 = Array.description.getter();
          v133 = v132;
          v134 = sub_10000668C(v131, v132, &v234);
          v133, v135, v136, v137, v138, v139, v140, v141;
          *(v129 + 4) = v134;
          *(v129 + 12) = 2080;
          v142 = [(RDXPCStorePerformer *)v125 name];
          v143 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v145 = v144;

          v146 = sub_10000668C(v143, v145, &v234);
          v145, v147, v148, v149, v150, v151, v152, v153;
          *(v129 + 14) = v146;
          _os_log_impl(&_mh_execute_header, v126, v127, "Putting account storages fetched from DB to cache {extIds: %s, name: %s}", v129, 0x16u);
          swift_arrayDestroy();
        }

        v154 = Array._bridgeToObjectiveC()().super.isa;
        v155 = Array._bridgeToObjectiveC()().super.isa;

        [a1 setAccountStorages:v154 forAccountExternalIdentifiers:v155];
      }

      else
      {
        if (v128)
        {
          v156 = swift_slowAlloc();
          v234 = swift_slowAlloc();
          *v156 = 136315394;
          v157 = Array.description.getter();
          v233 = 0;
          v158 = v157;
          v160 = v159;

          v161 = sub_10000668C(v158, v160, &v234);
          v160, v162, v163, v164, v165, v166, v167, v168;
          *(v156 + 4) = v161;
          *(v156 + 12) = 2080;
          v169 = [(RDXPCStorePerformer *)v125 name];
          v170 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v172 = v171;

          v173 = sub_10000668C(v170, v172, &v234);
          v172, v174, v175, v176, v177, v178, v179, v180;
          *(v156 + 14) = v173;
          _os_log_impl(&_mh_execute_header, v126, v127, "Couldn't fetch all requested accounts {extIds: %s, name: %s}", v156, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
        }
      }

      swift_beginAccess();
      sub_100272530(v231);
      swift_endAccess();
      goto LABEL_41;
    }
  }

  v114, v115, v116, v117, v118, v119, v120, v121;
  v201 = v64;

  v202 = Logger.logObject.getter();
  v203 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v202, v203))
  {
    v204 = swift_slowAlloc();
    v234 = swift_slowAlloc();
    *v204 = 136315394;
    v205 = Array.description.getter();
    v207 = v206;

    v208 = sub_10000668C(v205, v207, &v234);
    v207, v209, v210, v211, v212, v213, v214, v215;
    *(v204 + 4) = v208;
    *(v204 + 12) = 2080;
    v216 = [(RDXPCStorePerformer *)v201 name];
    v217 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v219 = v218;

    v220 = sub_10000668C(v217, v219, &v234);
    v219, v221, v222, v223, v224, v225, v226, v227;
    *(v204 + 14) = v220;
    _os_log_impl(&_mh_execute_header, v202, v203, "None of the requested accounts could be fetched {extIds: %s, name: %s}", v204, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

LABEL_41:
  swift_beginAccess();
  v181 = v236;
  v182 = objc_allocWithZone(REMAccountsDataViewInvocationResult);

  v183 = Array._bridgeToObjectiveC()().super.isa;
  v181, v184, v185, v186, v187, v188, v189, v190;
  v113 = [v182 initWithStorages:v183];
  v181, v191, v192, v193, v194, v195, v196, v197;

  return v113;
}

void sub_100308648(unint64_t a1@<X2>, uint64_t *a2@<X8>)
{
  v4 = sub_10000F8A4(a1, 0, 2u);
  sub_1000060C8(0, &qword_1009399F0, off_1008D4120);
  v5 = [objc_allocWithZone(NSFetchRequest) init];
  v6 = [swift_getObjCClassFromMetadata() entity];
  [v5 setEntity:v6];

  [v5 setAffectedStores:0];
  [v5 setPredicate:v4];

  v7 = NSManagedObjectContext.fetch<A>(_:)();
  if (v2)
  {
  }

  else
  {
    v8 = v7;
    type metadata accessor for REMAccountStorageCDIngestor();
    swift_initStackObject();
    if (qword_100936098 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    v10 = sub_100006654(v9, qword_100946390);
    __chkstk_darwin(v10, v11);
    sub_1000F5104(&qword_10094F630, qword_1007A3430);
    sub_1000060C8(0, &unk_10093F580, REMAccountStorage_ptr);
    sub_100308CDC();
    v12 = Sequence.map<A>(skippingError:_:)();

    v8, v13, v14, v15, v16, v17, v18, v19;
    *a2 = v12;
  }
}

_TtC7remindd19RDXPCStorePerformer *sub_1003088C8()
{
  v2 = v0;
  if (qword_100935E98 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100006654(v3, qword_100941B00);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Prefer using the store controller invoke() instead of this MoC invoke() for REMAccountsDataViewInvocation_fetchByExternalIdentifier", v6, 2u);
  }

  v7 = [v2 externalIdentifiers];
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v9 = sub_10000F8A4(v8, 0, 2u);
  sub_1000060C8(0, &qword_1009399F0, off_1008D4120);
  v10 = [objc_allocWithZone(NSFetchRequest) init];
  v11 = [swift_getObjCClassFromMetadata() entity];
  [v10 setEntity:v11];

  [v10 setAffectedStores:0];
  [v10 setPredicate:v9];

  v12 = NSManagedObjectContext.fetch<A>(_:)();
  if (v1)
  {
    v8, v13, v14, v15, v16, v17, v18, v19;
  }

  else
  {
    v20 = v12;
    type metadata accessor for REMAccountStorageCDIngestor();
    swift_initStackObject();
    if (qword_100936098 != -1)
    {
      swift_once();
    }

    v21 = sub_100006654(v3, qword_100946390);
    v48[1] = v48;
    v49 = v20;
    __chkstk_darwin(v21, v22);
    sub_1000F5104(&qword_10094F630, qword_1007A3430);
    sub_1000060C8(0, &unk_10093F580, REMAccountStorage_ptr);
    sub_100308CDC();
    v23 = Sequence.map<A>(skippingError:_:)();
    v8, v24, v25, v26, v27, v28, v29, v30;

    v20, v31, v32, v33, v34, v35, v36, v37;
    v38 = objc_allocWithZone(REMAccountsDataViewInvocationResult);
    isa = Array._bridgeToObjectiveC()().super.isa;
    v23, v40, v41, v42, v43, v44, v45, v46;
    v8 = [v38 initWithStorages:isa];
  }

  return v8;
}

unint64_t sub_100308CDC()
{
  result = qword_100941B18;
  if (!qword_100941B18)
  {
    sub_1000F514C(&qword_10094F630, qword_1007A3430);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100941B18);
  }

  return result;
}

id sub_100308D5C(void *a1)
{
  v1 = [a1 inMemoryPrimaryActiveCKAccountREMObjectID];
  if (v1)
  {
    v2 = v1;
    sub_1000F5104(&unk_100939D60, &unk_1007959E0);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1007953F0;
    *(v3 + 32) = v2;
    v4 = objc_allocWithZone(REMAccountsDataViewInvocationREMObjectIDOnlyResult);
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    v5 = v2;
    v6.super.isa = Array._bridgeToObjectiveC()().super.isa;
    v3, v7, v8, v9, v10, v11, v12, v13;
    v14 = [v4 initWithAccountIDs:v6.super.isa];
  }

  else
  {
    v15 = objc_allocWithZone(REMAccountsDataViewInvocationREMObjectIDOnlyResult);
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    v6.super.isa = Array._bridgeToObjectiveC()().super.isa;
    v14 = [v15 initWithAccountIDs:v6.super.isa];
  }

  return v14;
}

uint64_t sub_100308EA0()
{
  if (qword_100935E98 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100006654(v0, qword_100941B00);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Unexpectedly calling the invoke() with the MoC instead of with the storeController for REMAccountsDataViewInvocation_fetchPrimaryActiveCloudKitAccount", v3, 2u);
  }

  v4 = objc_opt_self();
  v5 = String._bridgeToObjectiveC()();
  [v4 internalErrorWithDebugDescription:v5];

  return swift_willThrow();
}

uint64_t sub_100308FD8(unint64_t a1, void *a2)
{
  v3 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_22:
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (v4 != v5)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        goto LABEL_21;
      }

      v6 = *(a1 + 8 * v5 + 32);
    }

    v7 = v6;
    v8 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v9 = [a2 persistentStoreOfAccountWithAccountID:v6];

    ++v5;
    if (v9)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v5 = v8;
    }
  }

  v10 = sub_10000F8A4(a1, 0, 1u);
  sub_1000060C8(0, &qword_1009399F0, off_1008D4120);
  v11 = [objc_allocWithZone(NSFetchRequest) init];
  v12 = [swift_getObjCClassFromMetadata() entity];
  [v11 setEntity:v12];

  sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v11 setAffectedStores:isa];

  [v11 setPredicate:v10];
  &_swiftEmptyArrayStorage, v14, v15, v16, v17, v18, v19, v20;
  v21 = a2;
  v22 = NSManagedObjectContext.fetch<A>(_:)();
  if (v35)
  {
  }

  else
  {
    v23 = v22;
    type metadata accessor for REMAccountStorageCDIngestor();
    swift_initStackObject();
    if (qword_100936098 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    v25 = sub_100006654(v24, qword_100946390);
    __chkstk_darwin(v25, v26);
    sub_1000F5104(&qword_10094F630, qword_1007A3430);
    sub_1000060C8(0, &unk_10093F580, REMAccountStorage_ptr);
    sub_100308CDC();
    v21 = Sequence.map<A>(skippingError:_:)();

    v23, v27, v28, v29, v30, v31, v32, v33;
  }

  return v21;
}

uint64_t sub_100309374@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100308FD8(*(v2 + 24), a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

double sub_1003093CC(_TtC7remindd19RDXPCStorePerformer *a1, _TtC7remindd19RDXPCStorePerformer *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  if (a3 > 1u)
  {
    if (a3 == 2 || a3 == 6)
    {
      a2 = a1;
      goto LABEL_5;
    }
  }

  else if (!a3 || (a2 = a1, a3 == 1))
  {
    a1 = a2;
LABEL_5:
    a1, a2, a3, a4, a5, a6, a7, a8;
  }

  return result;
}

void sub_100309410(uint64_t *a1@<X8>)
{
  sub_10030596C();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_100309474()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100941B20);
  v1 = sub_100006654(v0, qword_100941B20);
  if (qword_1009364D8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10030953C(_TtC7remindd19RDXPCStorePerformer *a1@<X1>, uint64_t a2@<X2>, _TtC7remindd19RDXPCStorePerformer *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v509 = a4;
  v504 = a3;
  v488 = a2;
  v454 = a5;
  v456 = type metadata accessor for REMRemindersListDataView.TaggedModel();
  v455 = *(v456 - 8);
  __chkstk_darwin(v456, v6);
  v452 = &v443 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v9);
  v453 = &v443 - v10;
  v11 = sub_1000F5104(&qword_100938A68, &unk_10079DDF0);
  __chkstk_darwin(v11 - 8, v12);
  v461 = &v443 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v15);
  v472 = &v443 - v16;
  v473 = type metadata accessor for REMRemindersListDataView.FlatModel();
  v459 = *(v473 - 8);
  __chkstk_darwin(v473, v17);
  v460 = &v443 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19, v20);
  v471 = &v443 - v21;
  v487 = type metadata accessor for REMRemindersListDataView.CountByCompleted();
  v486 = *(v487 - 8);
  __chkstk_darwin(v487, v22);
  v457 = &v443 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v467 = sub_1000F5104(&qword_10093AE38, &unk_100798450);
  __chkstk_darwin(v467, v24);
  v465 = &v443 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26, v27);
  v478 = &v443 - v28;
  v29 = sub_1000F5104(&qword_10094B8E0, &unk_1007AABD0);
  __chkstk_darwin(v29 - 8, v30);
  v449 = &v443 - v31;
  v464 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch();
  v470 = *(v464 - 8);
  __chkstk_darwin(v464, v32);
  v462 = (&v443 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v34, v35);
  v469 = &v443 - v36;
  v474 = type metadata accessor for REMRemindersListDataView.Diff();
  v468 = *(v474 - 8);
  __chkstk_darwin(v474, v37);
  v451 = &v443 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39, v40);
  v482 = &v443 - v41;
  Style = type metadata accessor for REMHashtagLabelDataView.HashtagLabelInFilterFetchStyle();
  v484 = *(Style - 8);
  __chkstk_darwin(Style, v42);
  v505 = (&v443 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  v480 = type metadata accessor for REMHashtagLabelDataView.HashtagLabelsReferencedByCustomSmartListFiltersInvocation.Result();
  v479 = *(v480 - 8);
  __chkstk_darwin(v480, v44);
  v483 = &v443 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1000F5104(&qword_100938A70, &qword_1007ACC60);
  __chkstk_darwin(v46 - 8, v47);
  v458 = &v443 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v49, v50);
  v463 = &v443 - v51;
  __chkstk_darwin(v52, v53);
  v475 = &v443 - v54;
  __chkstk_darwin(v55, v56);
  v490 = &v443 - v57;
  Subtasks = type metadata accessor for REMRemindersListDataView.FetchSubtasks();
  v497 = *(Subtasks - 8);
  __chkstk_darwin(Subtasks, v58);
  v496 = &v443 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
  v500 = *(v60 - 8);
  v501 = v60;
  __chkstk_darwin(v60, v61);
  v450 = &v443 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v63, v64);
  v476 = &v443 - v65;
  __chkstk_darwin(v66, v67);
  v477 = &v443 - v68;
  __chkstk_darwin(v69, v70);
  v495 = &v443 - v71;
  v72 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  __chkstk_darwin(v72 - 8, v73);
  v494 = &v443 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  v493 = _s9UtilitiesO12SortingStyleOMa(0);
  __chkstk_darwin(v493, v75);
  v492 = &v443 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v77, v78);
  v498 = &v443 - v79;
  v503 = _s10PredicatesOMa(0);
  __chkstk_darwin(v503, v80);
  v466 = (&v443 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v82, v83);
  v502 = (&v443 - v84);
  v511 = type metadata accessor for REMHashtagLabelDataView.ReminderIDsIncludeExcludeOperationInvocation.Parameters();
  v506 = *&v511[-1].shareRecordIDToRootRecordIDLock[2];
  __chkstk_darwin(v511, v85);
  v87 = &v443 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for REMHashtagLabelDataView.Operation();
  v507 = *(v88 - 8);
  __chkstk_darwin(v88, v89);
  v91 = &v443 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v92, v93);
  v95 = &v443 - v94;
  __chkstk_darwin(v96, v97);
  v99 = &v443 - v98;
  v100 = type metadata accessor for REMRemindersListDataView.HashtagLabelPredicate();
  v508 = *(v100 - 8);
  __chkstk_darwin(v100, v101);
  v103 = &v443 - ((v102 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v104, v105);
  v107 = &v443 - v106;
  v108 = v510;
  sub_10030C6BC();
  if (!v108)
  {
    v446 = v103;
    v443 = v95;
    v444 = v91;
    v448 = v99;
    v491 = v87;
    v445 = v88;
    v489 = v109;
    v510 = 0;
    v447 = a1;
    REMRemindersListDataView.TaggedInvocation.Parameters.hashtagLabelPredicate.getter();
    v110 = v508;
    v111 = v508[11];
    v112 = v111(v107, v100);
    v113 = enum case for REMRemindersListDataView.HashtagLabelPredicate.and(_:);
    v114 = enum case for REMRemindersListDataView.HashtagLabelPredicate.or(_:);
    if (v112 == enum case for REMRemindersListDataView.HashtagLabelPredicate.and(_:) || v112 == enum case for REMRemindersListDataView.HashtagLabelPredicate.or(_:))
    {
      (v110[1])(v107, v100);
      v115 = v446;
    }

    else
    {
      v115 = v446;
      if (v112 != enum case for REMRemindersListDataView.HashtagLabelPredicate.allLabels(_:))
      {
        if (v112 == enum case for REMRemindersListDataView.HashtagLabelPredicate.noLabels(_:))
        {
          v116 = v502;
          swift_storeEnumTagMultiPayload();
          v117 = sub_100043AA8();
          sub_1001A4F3C(v116, _s10PredicatesOMa);
          v118 = v494;
          v119 = v509;
          REMRemindersListDataView.TaggedInvocation.Parameters.sortingStyle.getter();
          v120 = enum case for REMRemindersListDataView.SortingDirection.ascending(_:);
          v121 = type metadata accessor for REMRemindersListDataView.SortingDirection();
          v122 = v492;
          (*(*(v121 - 8) + 104))(v492, v120, v121);
          swift_storeEnumTagMultiPayload();
          v123 = v498;
          sub_1005368D8(v118, v122, v498);
          v124 = v495;
          REMRemindersListDataView.TaggedInvocation.Parameters.showCompleted.getter();
          v125 = v496;
          v126 = v497;
          v127 = Subtasks;
          (*(v497 + 104))(v496, enum case for REMRemindersListDataView.FetchSubtasks.count(_:), Subtasks);
          v511 = v117;
          v128 = v510;
          v129 = sub_100536D54(v447, v117, v123, v124, v125, &_swiftEmptyArrayStorage, 0);
          v137 = v501;
          if (v128)
          {
            v489, v130, v131, v132, v133, v134, v135, v136;

            (*(v126 + 8))(v125, v127);
            (*(v500 + 8))(v124, v137);
            sub_1001A4F3C(v123, _s9UtilitiesO12SortingStyleOMa);
            return;
          }

          v183 = v125;
          v184 = v129;
          (*(v126 + 8))(v183, v127);
          (*(v500 + 8))(v124, v137);
          v512 = v184;
          sub_1000F5104(&qword_100941B60, &qword_1007A1E48);
          type metadata accessor for REMObjectID_Codable();
          sub_10030CB0C();
          sub_10030D7F0(&qword_100943E80, &type metadata accessor for REMObjectID_Codable, &protocol conformance descriptor for NSObject);
          v185 = Sequence.compactMapToSet<A>(_:)();
          v510 = 0;
          v184, v186, v187, v188, v189, v190, v191, v192;
          sub_100393DD8(v185);
          v194 = v193;
          v185, v195, v196, v197, v198, v199, v200, v201;

          sub_1001A4F3C(v123, _s9UtilitiesO12SortingStyleOMa);
          v203 = v119;
LABEL_49:
          v273 = v447;
          v274 = v510;
          v275 = sub_10030CB70(v447, v504, v202);
          v283 = v505;
          if (v274)
          {
            v194, v276, v277, v278, v279, v280, v281, v282;
            v489, v284, v285, v286, v287, v288, v289, v290;
            return;
          }

          v291 = v275;
          v292 = sub_10030CE70(v194, v273, v203);
          if (REMRemindersListDataView.TaggedInvocation.Parameters.countCompleted.getter())
          {
            v293 = v502;
            v502->super.isa = v194;
            swift_storeEnumTagMultiPayload();

            v294 = sub_100043AA8();
            sub_1001A4F3C(v293, _s10PredicatesOMa);
            v295 = v490;
            sub_10053464C(v447, v294);
            v511 = v292;
            v508 = v291;

            v296 = 0;
            v283 = v505;
          }

          else
          {
            v511 = v292;
            v508 = v291;
            v296 = 1;
            v295 = v490;
          }

          (*(v486 + 56))(v295, v296, 1, v487);
          type metadata accessor for REMHashtagLabelDataView.HashtagLabelsReferencedByCustomSmartListFiltersInvocation();
          v297 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
          REMRemindersListDataView.TaggedInvocation.Parameters.smartListHashtagLabelsFetchStyle.getter();
          v298 = v283;
          v299 = [objc_opt_self() daemonUserDefaults];
          v300 = v483;
          sub_100035608(v447, v299, &off_1008F7C98, v488, v298, v483);
          (*(v484 + 8))(v298, Style);

          v301 = REMHashtagLabelDataView.HashtagLabelsReferencedByCustomSmartListFiltersInvocation.Result.labels.getter();
          LODWORD(v298) = REMHashtagLabelDataView.HashtagLabelsReferencedByCustomSmartListFiltersInvocation.Result.isUpToDate.getter();

          (*(v479 + 8))(v300, v480);
          v302 = [v481 fetchResultTokenToDiffAgainst];
          v303 = v482;
          sub_100534D44(v302, v482);
          v510 = 0;
          v505 = v301;

          v304 = v469;
          REMRemindersListDataView.TaggedInvocation.Parameters.remindersPrefetch.getter();
          v305 = v304;
          v306 = v470;
          v307 = v462;
          v308 = v464;
          (*(v470 + 16))(v462, v305, v464);
          v309 = (*(v306 + 88))(v307, v308);
          LODWORD(Subtasks) = v298;
          if (v309 == enum case for REMRemindersListDataView.RemindersPrefetch.initial(_:))
          {
            (*(v306 + 96))(v307, v308);
            v502 = sub_10053DB98(*v307, v511, v447, v504, 0);
            v504 = &_swiftEmptyArrayStorage;
            v310 = v478;
            v311 = v501;
            v312 = v477;
            v313 = v467;
            v314 = v466;
          }

          else
          {
            if (v309 == enum case for REMRemindersListDataView.RemindersPrefetch.updatedInserted(_:))
            {
              (*(v306 + 96))(v307, v308);
              v502 = sub_10053E698(*v307, v303, v447, v504, 0);
              v504 = &_swiftEmptyArrayStorage;
            }

            else if (v309 == enum case for REMRemindersListDataView.RemindersPrefetch.initialAndDateRange(_:))
            {
              (*(v306 + 96))(v307, v308);
              v315 = *v307;
              v316 = sub_1000F5104(&qword_100938A78, &qword_1007AABE0);
              v317 = v307;
              v318 = v447;
              v319 = v449;
              sub_100031B58(v317 + *(v316 + 48), v449, &qword_10094B8E0, &unk_1007AABD0);
              v320 = v315;
              v305 = v469;
              v321 = v511;
              v322 = v504;
              v502 = sub_10053DB98(v320, v511, v318, v504, 0);
              v511 = v321;
              v323 = v322;
              v306 = v470;
              v504 = sub_10053EBE4(v319, v321, v318, v323, 0);
              sub_1000050A4(v319, &qword_10094B8E0, &unk_1007AABD0);
            }

            else
            {
              if (v309 != enum case for REMRemindersListDataView.RemindersPrefetch.none(_:))
              {
LABEL_92:
                _diagnoseUnexpectedEnumCase<A>(type:)();
                __break(1u);
LABEL_93:
                _diagnoseUnexpectedEnumCase<A>(type:)();
                __break(1u);
                return;
              }

              v504 = &_swiftEmptyArrayStorage;
              v502 = &_swiftEmptyArrayStorage;
            }

            v310 = v478;
            v312 = v477;
            v314 = v466;
            v311 = v501;
            v313 = v467;
          }

          (*(v306 + 8))(v305, v308);
          *v314 = v194;
          swift_storeEnumTagMultiPayload();
          v507 = sub_100043AA8();
          sub_1001A4F3C(v314, _s10PredicatesOMa);
          REMRemindersListDataView.TaggedInvocation.Parameters.showCompleted.getter();
          sub_100010364(v490, v310, &qword_100938A70, &qword_1007ACC60);
          v324 = *(v313 + 48);
          v325 = v500;
          v503 = *(v500 + 16);
          v503(v310 + v324, v312, v311);
          *(v310 + *(v313 + 64)) = v511;
          v326 = v465;
          sub_100010364(v310, v465, &qword_10093AE38, &unk_100798450);
          v327 = *(v313 + 48);
          v506 = *(v326 + *(v313 + 64));
          v328 = v475;
          sub_100031B58(v326, v475, &qword_100938A70, &qword_1007ACC60);
          v329 = v326 + v327;
          v330 = v476;
          (*(v325 + 32))(v476, v329, v311);
          v331 = v463;
          sub_100010364(v328, v463, &qword_100938A70, &qword_1007ACC60);
          v332 = v486;
          v333 = v487;
          v334 = (*(v486 + 48))(v331, 1, v487);

          if (v334 == 1)
          {
            v342 = v507;
            v343 = v501;
            sub_1000050A4(v331, &qword_100938A70, &qword_1007ACC60);
            v351 = v506;
            if (*v506->clientIdentity)
            {
              v506, v344, v345, v346, v347, v348, v349, v350;

              v352 = *(v500 + 8);
              v352(v476, v343);
              sub_1000050A4(v475, &qword_100938A70, &qword_1007ACC60);
              sub_1000050A4(v478, &qword_10093AE38, &unk_100798450);
              v352(v477, v343);
LABEL_68:
              v353 = v473;
              v354 = v459;
              v355 = v472;
              v356 = v471;
              v357 = v461;
              v358 = v460;
LABEL_71:
              sub_100010364(v490, v458, &qword_100938A70, &qword_1007ACC60);
              REMRemindersListDataView.FlatModel.init(reminders:remindersCount:hasIncompleteOrCompletedReminders:prefetchedReminders:prefetchedDueReminders:)();
              v365 = v510;
              sub_10030BB78(v355);
              v510 = v365;
              if (v365)
              {
                v505, v366, v367, v368, v369, v370, v371, v372;
                v489, v373, v374, v375, v376, v377, v378, v379;

                (*(v354 + 8))(v356, v353);
                (*(v468 + 8))(v482, v474);
              }

              else
              {
                (*(v354 + 16))(v358, v356, v353);
                sub_100010364(v355, v357, &qword_100938A68, &unk_10079DDF0);
                v511 = v508;
                v380 = v453;
                REMRemindersListDataView.TaggedModel.init(flatModel:allHashtagLabels:smartListHashtagLabels:smartListHashtagLabelsUpToDate:taggedSmartList:manualOrderingID:)();
                v381 = v380;
                v382 = v455;
                v383 = v380;
                v384 = v354;
                v385 = v456;
                (*(v455 + 16))(v452, v383, v456);
                v386 = v468;
                (*(v468 + 16))(v451, v482, v474);
                sub_10030D7F0(&qword_100941B70, &type metadata accessor for REMRemindersListDataView.TaggedModel, &protocol conformance descriptor for REMRemindersListDataView.TaggedModel);
                sub_10030D7F0(&qword_100941B78, &type metadata accessor for REMRemindersListDataView.TaggedModel, &protocol conformance descriptor for REMRemindersListDataView.TaggedModel);
                REMRemindersListDataView.DefaultInvocationResult.init(model:diff:)();

                (*(v382 + 8))(v381, v385);
                sub_1000050A4(v472, &qword_100938A68, &unk_10079DDF0);
                (*(v384 + 8))(v471, v473);
                (*(v386 + 8))(v482, v474);
              }

              v387 = v490;
              goto LABEL_75;
            }

            v388 = v450;
            v503(v450, v476, v343);
            v389 = v500;
            v390 = (*(v500 + 88))(v388, v343);
            if (v390 == enum case for REMRemindersListDataView.ShowCompleted.after(_:))
            {
              v351, v391, v392, v393, v394, v395, v396, v397;
              (*(v389 + 8))(v388, v343);
              v398 = v468;
              v399 = v475;
              p_attr = (&stru_100923FF8 + 8);
LABEL_83:
              sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
              v401 = [objc_allocWithZone(NSFetchRequest) p_attr[424]];
              v402 = [swift_getObjCClassFromMetadata() entity];
              [v401 setEntity:v402];

              [v401 setAffectedStores:0];
              [v401 setPredicate:v342];
              [v401 setFetchLimit:1];
              [v401 setAffectedStores:0];
              v403 = v510;
              NSManagedObjectContext.count<A>(for:)();
              v510 = v403;
              if (v403)
              {
                v511, v404, v405, v406, v407, v408, v409, v410;
                v505, v411, v412, v413, v414, v415, v416, v417;

                v504, v418, v419, v420, v421, v422, v423, v424;
                v502, v425, v426, v427, v428, v429, v430, v431;

                v489, v432, v433, v434, v435, v436, v437, v438;
                v439 = *(v389 + 8);
                v439(v476, v343);
                sub_1000050A4(v399, &qword_100938A70, &qword_1007ACC60);
                sub_1000050A4(v478, &qword_10093AE38, &unk_100798450);
                v439(v477, v343);
                (*(v398 + 8))(v482, v474);
                v387 = v490;
LABEL_75:
                sub_1000050A4(v387, &qword_100938A70, &qword_1007ACC60);
                return;
              }

              v440 = *(v389 + 8);
              v440(v476, v343);
              sub_1000050A4(v399, &qword_100938A70, &qword_1007ACC60);
              sub_1000050A4(v478, &qword_10093AE38, &unk_100798450);
              v440(v477, v343);
              goto LABEL_68;
            }

            p_attr = &stru_100923FF8.attr;
            if (v390 == enum case for REMRemindersListDataView.ShowCompleted.allowlist(_:))
            {
              v351, v391, v392, v393, v394, v395, v396, v397;
              (*(v389 + 8))(v388, v343);
LABEL_82:
              v398 = v468;
              v399 = v475;
              goto LABEL_83;
            }

            if (v390 == enum case for REMRemindersListDataView.ShowCompleted.off(_:))
            {
              v351, v391, v392, v393, v394, v395, v396, v397;
              goto LABEL_82;
            }

            if (v390 == enum case for REMRemindersListDataView.ShowCompleted.on(_:))
            {
              v351, v391, v392, v393, v394, v395, v396, v397;

              v441 = v501;
              v442 = *(v500 + 8);
              v442(v476, v501);
              sub_1000050A4(v475, &qword_100938A70, &qword_1007ACC60);
              sub_1000050A4(v478, &qword_10093AE38, &unk_100798450);
              v442(v477, v441);
              goto LABEL_68;
            }

            goto LABEL_93;
          }

          v506, v335, v336, v337, v338, v339, v340, v341;
          v359 = v330;
          v360 = v457;
          (*(v332 + 32))(v457, v331, v333);
          v361 = REMRemindersListDataView.CountByCompleted.incomplete.getter();
          v362 = REMRemindersListDataView.CountByCompleted.completed.getter();

          (*(v332 + 8))(v360, v333);
          v363 = *(v325 + 8);
          v364 = v501;
          v363(v359, v501);
          sub_1000050A4(v328, &qword_100938A70, &qword_1007ACC60);
          sub_1000050A4(v478, &qword_10093AE38, &unk_100798450);
          v363(v477, v364);
          v353 = v473;
          v355 = v472;
          v356 = v471;
          v357 = v461;
          v358 = v460;
          if (!__OFADD__(v361, v362))
          {
            v354 = v459;
            goto LABEL_71;
          }

          goto LABEL_90;
        }

LABEL_91:
        _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
        goto LABEL_92;
      }
    }

    LODWORD(Subtasks) = v114;
    v138 = v489;
    if (v489 >> 62)
    {
      v204 = v489;
      sub_1000060C8(0, &unk_100939DB8, REMHashtagLabel_ptr);

      v138 = _bridgeCocoaArray<A>(_:)();
      v204, v205, v206, v207, v208, v209, v210, v211;
    }

    else
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      sub_1000060C8(0, &unk_100939DB8, REMHashtagLabel_ptr);
    }

    REMRemindersListDataView.TaggedInvocation.Parameters.hashtagLabelPredicate.getter();
    v139 = v111(v115, v100);
    if (v139 == v113)
    {
      v138, v140, v141, v142, v143, v144, v145, v146;
      (v110[12])(v115, v100);
      v147 = v507;
      v148 = v448;
      v149 = v445;
      (*(v507 + 13))(v448, enum case for REMHashtagLabelDataView.Operation.all(_:), v445);
      v150 = v447;
      v151 = v511;
LABEL_46:
      (v147)[2](v443, v148, v149);
      REMHashtagLabelDataView.ReminderIDsIncludeExcludeOperationInvocation.Parameters.init(include:exclude:operation:)();
      type metadata accessor for REMHashtagLabelDataView.ReminderIDsIncludeExcludeOperationInvocation();
      v511 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      v219 = v149;
      v220 = REMHashtagLabelDataView.ReminderIDsIncludeExcludeOperationInvocation.Parameters.include.getter();
      v221 = REMHashtagLabelDataView.ReminderIDsIncludeExcludeOperationInvocation.Parameters.exclude.getter();
      v222 = v444;
      REMHashtagLabelDataView.ReminderIDsIncludeExcludeOperationInvocation.Parameters.operation.getter();
      v223 = v510;
      v225 = sub_100584A24(v220, v221, v222, v150, v224);
      storeController = v506->storeController;
      v510 = v223;
      if (v223)
      {
        v227 = v147[1];
        v227(v222, v219);
        v489, v228, v229, v230, v231, v232, v233, v234;

        v220, v235, v236, v237, v238, v239, v240, v241;
        v221, v242, v243, v244, v245, v246, v247, v248;
        (*storeController)(v491, v151);
        v227(v448, v219);
        return;
      }

      v249 = v147[1];
      v250 = v225;
      v249(v222, v219);
      v220, v251, v252, v253, v254, v255, v256, v257;
      v221, v258, v259, v260, v261, v262, v263, v264;
      sub_100393DD8(v250);
      v194 = v265;
      v250, v266, v267, v268, v269, v270, v271, v272;

      (*storeController)(v491, v151);
      v249(v448, v219);
      v203 = v509;
      goto LABEL_49;
    }

    v152 = v447;
    v147 = v507;
    v148 = v448;
    if (v139 == Subtasks)
    {
      v138, v140, v141, v142, v143, v144, v145, v146;
      (v110[12])(v115, v100);
      v149 = v445;
      (v147)[13](v148, enum case for REMHashtagLabelDataView.Operation.some(_:), v445);
      v151 = v511;
      v150 = v152;
      goto LABEL_46;
    }

    if (v139 == enum case for REMRemindersListDataView.HashtagLabelPredicate.allLabels(_:))
    {
      if (v138 >> 62)
      {
        v153 = _CocoaArrayWrapper.endIndex.getter();
        v151 = v511;
        v149 = v445;
        if (v153)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v153 = *((v138 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v151 = v511;
        v149 = v445;
        if (v153)
        {
LABEL_18:
          v512 = &_swiftEmptyArrayStorage;
          sub_100026EF4(0, v153 & ~(v153 >> 63), 0);
          if ((v153 & 0x8000000000000000) == 0)
          {
            v154 = 0;
            v155 = v512;
            do
            {
              if ((v138 & 0xC000000000000001) != 0)
              {
                v156 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                v156 = *(v138 + 8 * v154 + 32);
              }

              v157 = v156;
              v158 = [v156 name];
              v159 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v161 = v160;

              v512 = v155;
              v170 = *v155->clientIdentity;
              v169 = *&v155->clientIdentity[8];
              if (v170 >= v169 >> 1)
              {
                sub_100026EF4((v169 > 1), v170 + 1, 1);
                v155 = v512;
              }

              ++v154;
              *v155->clientIdentity = v170 + 1;
              v171 = v155 + 16 * v170;
              *(v171 + 4) = v159;
              *(v171 + 5) = v161;
              v151 = v511;
            }

            while (v153 != v154);
LABEL_38:
            v138, v162, v163, v164, v165, v166, v167, v168;
            v150 = v447;
            v149 = v445;
            v147 = v507;
            v148 = v448;
LABEL_45:
            sub_1001A5660(v155);
            v155, v212, v213, v214, v215, v216, v217, v218;
            (v147)[13](v148, enum case for REMHashtagLabelDataView.Operation.some(_:), v149);
            goto LABEL_46;
          }

          __break(1u);
          goto LABEL_89;
        }
      }

LABEL_44:
      v150 = v152;
      v138, v140, v141, v142, v143, v144, v145, v146;
      v155 = &_swiftEmptyArrayStorage;
      goto LABEL_45;
    }

    if (v139 != enum case for REMRemindersListDataView.HashtagLabelPredicate.noLabels(_:))
    {
      goto LABEL_91;
    }

    v151 = v511;
    v149 = v445;
    if (v138 >> 62)
    {
      v172 = _CocoaArrayWrapper.endIndex.getter();
      if (!v172)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v172 = *((v138 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v172)
      {
        goto LABEL_44;
      }
    }

    v512 = &_swiftEmptyArrayStorage;
    sub_100026EF4(0, v172 & ~(v172 >> 63), 0);
    if ((v172 & 0x8000000000000000) == 0)
    {
      v173 = 0;
      v155 = v512;
      do
      {
        if ((v138 & 0xC000000000000001) != 0)
        {
          v174 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v174 = *(v138 + 8 * v173 + 32);
        }

        v175 = v174;
        v176 = [v174 name];
        v177 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v179 = v178;

        v512 = v155;
        v181 = *v155->clientIdentity;
        v180 = *&v155->clientIdentity[8];
        if (v181 >= v180 >> 1)
        {
          sub_100026EF4((v180 > 1), v181 + 1, 1);
          v155 = v512;
        }

        ++v173;
        *v155->clientIdentity = v181 + 1;
        v182 = v155 + 16 * v181;
        *(v182 + 4) = v177;
        *(v182 + 5) = v179;
        v151 = v511;
      }

      while (v172 != v173);
      goto LABEL_38;
    }

LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }
}