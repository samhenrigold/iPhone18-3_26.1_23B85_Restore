uint64_t sub_1000EDE70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1000EDF54@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Date();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

__n128 sub_1000EDFF8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1000EE008(uint64_t a1, int a2)
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

uint64_t sub_1000EE028(uint64_t result, int a2, int a3)
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

uint64_t sub_1000EE064(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_1000EE0DC(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1000EE15C@<X0>(void *a2@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t sub_1000EE1A0(uint64_t a1)
{
  v2 = sub_1000EE76C(&qword_1002F7D20, type metadata accessor for CKError, &unk_100226828);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1000EE20C(uint64_t a1)
{
  v2 = sub_1000EE76C(&qword_1002F7D20, type metadata accessor for CKError, &unk_100226828);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_1000EE278(uint64_t a1)
{
  v2 = sub_1000EE76C(&qword_1002F9330, type metadata accessor for CKError, &unk_100226980);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

Swift::Int sub_1000EE390(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  swift_getWitnessTable(L"%\t쓸\a", a2);
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000EE408(uint64_t a1)
{
  sub_1000EE76C(&qword_1002F9330, type metadata accessor for CKError, &unk_100226980);

  return _BridgedStoredNSError.errorCode.getter();
}

uint64_t sub_1000EE474(uint64_t a1)
{
  v2 = sub_1000EE76C(&qword_1002F9330, type metadata accessor for CKError, &unk_100226980);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_1000EE4E0(void *a1, uint64_t a2)
{
  v4 = sub_1000EE76C(&qword_1002F9330, type metadata accessor for CKError, &unk_100226980);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_1000EE594(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000EE76C(&qword_1002F9330, type metadata accessor for CKError, &unk_100226980);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_1000EE610(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000EE670(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable(L"%\t쓸\a", a3);

  return static _CFObject.== infix(_:_:)();
}

uint64_t sub_1000EE76C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000EE7B4(uint64_t a1)
{
  v2 = sub_1000EE76C(&qword_1002F7DC8, type metadata accessor for FileAttributeKey, &unk_100226A90);
  v3 = sub_1000EE76C(&unk_1002F7DD0, type metadata accessor for FileAttributeKey, &unk_100226580);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000EE870(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t *sub_1000EE8B8(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_1000EE91C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_1000EE954()
{
  result = qword_1002F7BB0;
  if (!qword_1002F7BB0)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for String, &type metadata for String, v0, v1);
    atomic_store(result, &qword_1002F7BB0);
  }

  return result;
}

uint64_t type metadata accessor for DeviceRecord(uint64_t a1)
{
  result = qword_1002F7C70;
  if (!qword_1002F7C70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000EE9F4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

uint64_t sub_1000EEA48@<X0>(void *a2@<X8>)
{
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t sub_1000EEA90(uint64_t a1)
{
  v2 = sub_1000EE76C(&qword_1002F7DB8, type metadata accessor for FileProtectionType, &unk_1002266F4);
  v3 = sub_1000EE76C(&qword_1002F7DC0, type metadata accessor for FileProtectionType, &unk_100226694);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000EEB4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000EE76C(&qword_1002F9330, type metadata accessor for CKError, &unk_100226980);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_1000EEBD0()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t sub_1000EEC0C(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_1000EEC60(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v1 = Hasher._finalize()();

  return v1;
}

uint64_t sub_1000EECD4(void *a1, uint64_t *a2)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

uint64_t sub_1000EED5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000EE870(&qword_1002F7EF0, &unk_100226C90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000EEDCC()
{
  result = qword_1002F7BD0;
  if (!qword_1002F7BD0)
  {
    result = swift_getWitnessTable(&unk_100226918, &type metadata for DeviceRecord.DeviceRecordError, v0, v1);
    atomic_store(result, &qword_1002F7BD0);
  }

  return result;
}

unint64_t sub_1000EEE20()
{
  result = qword_1002F85A0;
  if (!qword_1002F85A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1002F85A0);
  }

  return result;
}

uint64_t sub_1000EEE6C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000EE870(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t getEnumTagSinglePayload for DeviceRecord.DeviceRecordError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DeviceRecord.DeviceRecordError(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1000EF0B8(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Date();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000EF168(uint64_t a1)
{
  *(a1 + 8) = sub_1000EE76C(&qword_1002F9C20, type metadata accessor for DeviceRecord, &unk_100226AD4);
  result = sub_1000EE76C(&qword_1002F7CD0, type metadata accessor for DeviceRecord, &unk_100226958);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1000EF3E8()
{
  result = qword_1002F7D18;
  if (!qword_1002F7D18)
  {
    result = swift_getWitnessTable(&unk_1002268AC, &type metadata for DeviceRecord.DeviceRecordError, v0, v1);
    atomic_store(result, &qword_1002F7D18);
  }

  return result;
}

void sub_1000EF570(uint64_t a1, unint64_t *a2, uint64_t a3)
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

unint64_t sub_1000EF608()
{
  result = qword_1002F7D48;
  if (!qword_1002F7D48)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for Int, &type metadata for Int, v0, v1);
    atomic_store(result, &qword_1002F7D48);
  }

  return result;
}

uint64_t sub_1000EF734(uint64_t a1)
{
  result = sub_1000EE76C(&qword_1002F7D68, type metadata accessor for DeviceRecord, &unk_100226438);
  *(a1 + 8) = result;
  return result;
}

void *sub_1000EF78C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_1000EF7D0()
{
  result = qword_1002F7D78;
  if (!qword_1002F7D78)
  {
    result = swift_getWitnessTable(&unk_100226C0C, &type metadata for DeviceRecord.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002F7D78);
  }

  return result;
}

uint64_t sub_1000EF824(void *a1)
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

uint64_t sub_1000EF870(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_1000EF8C4()
{
  result = qword_1002F7D80;
  if (!qword_1002F7D80)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for Data, &type metadata for Data, v0, v1);
    atomic_store(result, &qword_1002F7D80);
  }

  return result;
}

uint64_t sub_1000EF918(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceRecord(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000EF97C(uint64_t a1)
{
  v2 = type metadata accessor for DeviceRecord(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000EF9D8()
{
  result = qword_1002F7DA0;
  if (!qword_1002F7DA0)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for Data, &type metadata for Data, v0, v1);
    atomic_store(result, &qword_1002F7DA0);
  }

  return result;
}

uint64_t sub_1000EFA2C(_BOOL8 *a1, uint64_t *a2)
{
  if (!sub_100121564(*a1, a1[1], *a2, a2[1]))
  {
    return 0;
  }

  v4 = type metadata accessor for DeviceRecord(0);
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v5 = v4[6];
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v10 = v4[7];
  v11 = *(a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = v11 == *v13 && v12 == v13[1];
  if (!v14 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v15 = v4[8];
  v16 = *(a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v19 = v16 == *v18 && v17 == v18[1];
  if (!v19 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v20 = v4[9];
  v21 = *(a1 + v20);
  v22 = *(a1 + v20 + 8);
  v23 = (a2 + v20);
  if ((v21 != *v23 || v22 != v23[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v24 = v4[10];
  v25 = *(a1 + v24);
  v26 = *(a1 + v24 + 8);
  v27 = (a2 + v24);
  if ((v25 != *v27 || v26 != v27[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v28 = v4[11];
  v29 = *(a1 + v28);
  v30 = *(a1 + v28 + 8);
  v31 = (a2 + v28);
  if ((v29 != *v31 || v30 != v31[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v32 = v4[12];

  return static Date.== infix(_:_:)(a1 + v32, a2 + v32);
}

uint64_t getEnumTagSinglePayload for DeviceRecord.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DeviceRecord.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000EFD24()
{
  result = qword_1002F7DF0;
  if (!qword_1002F7DF0)
  {
    result = swift_getWitnessTable(&unk_100226BE4, &type metadata for DeviceRecord.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002F7DF0);
  }

  return result;
}

unint64_t sub_1000EFD7C()
{
  result = qword_1002F7DF8;
  if (!qword_1002F7DF8)
  {
    result = swift_getWitnessTable(&unk_100226B54, &type metadata for DeviceRecord.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002F7DF8);
  }

  return result;
}

unint64_t sub_1000EFDD4()
{
  result = qword_1002F7E00;
  if (!qword_1002F7E00)
  {
    result = swift_getWitnessTable(&unk_100226B7C, &type metadata for DeviceRecord.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002F7E00);
  }

  return result;
}

uint64_t sub_1000EFE28(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74654D64756F6C63 && a2 == 0xED00006174616461;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000100267080 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656D616E6B63696ELL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6D754E6C65646F6DLL && a2 == 0xEB00000000726562 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x74636166756E616DLL && a2 == 0xEC00000072657275 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x49746375646F7270 && a2 == 0xE900000000000044 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x4449726F646E6576 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001002672B0 == a2)
  {

    return 8;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_1000F01AC()
{
  sub_1000EE870(&qword_1002F7ED0, &qword_100226C60);
  inited = swift_initStackObject();
  *(inited + 32) = NSFilePosixPermissions;
  *(inited + 16) = xmmword_100226100;
  *(inited + 64) = &type metadata for Int;
  *(inited + 40) = 504;
  v1 = NSFilePosixPermissions;
  v2 = sub_1000F96D4(inited);
  swift_setDeallocating();
  result = sub_1000F0700(inited + 32);
  qword_100300B08 = v2;
  return result;
}

uint64_t sub_1000F0254()
{
  v0 = [objc_opt_self() defaultManager];
  v31 = 0;
  URL.path.getter();
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 fileExistsAtPath:v1 isDirectory:&v31];

  if (v2)
  {
    if (v31)
    {
LABEL_11:

      return v2 ^ 1;
    }

    v4 = static os_log_type_t.error.getter();
    if (qword_1002F7AF0 != -1)
    {
      swift_once();
    }

    v5 = qword_100300E40;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_100226100;
    v7 = URL.description.getter();
    v9 = v8;
    *(v6 + 56) = &type metadata for String;
    *(v6 + 64) = sub_1000EE954();
    *(v6 + 32) = v7;
    *(v6 + 40) = v9;
    os_log(_:dso:log:_:_:)(v4, &_mh_execute_header, v5, "Expected a directory, but is a file: %@", 39, 2, v6);
LABEL_10:

    goto LABEL_11;
  }

  URL._bridgeToObjectiveC()(v3);
  v11 = v10;
  type metadata accessor for FileAttributeKey(0);
  sub_1000F06B8(&qword_1002F7DC8, type metadata accessor for FileAttributeKey, &unk_100226A90);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v30 = 0;
  v13 = [v0 createDirectoryAtURL:v11 withIntermediateDirectories:1 attributes:isa error:&v30];

  if (v13)
  {
    v14 = v30;
    v15 = static os_log_type_t.default.getter();
    if (qword_1002F7AF0 != -1)
    {
      swift_once();
    }

    v16 = qword_100300E40;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_100226100;
    type metadata accessor for URL();
    sub_1000F06B8(&unk_1002F9C00, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    *(v17 + 56) = &type metadata for String;
    *(v17 + 64) = sub_1000EE954();
    *(v17 + 32) = v18;
    *(v17 + 40) = v20;
    os_log(_:dso:log:_:_:)(v15, &_mh_execute_header, v16, "createdDirectory: %@", 20, 2, v17);
    goto LABEL_10;
  }

  v21 = v30;
  v22 = _convertNSErrorToError(_:)();

  swift_willThrow();
  v23 = static os_log_type_t.error.getter();
  if (qword_1002F7AF0 != -1)
  {
    swift_once();
  }

  v24 = qword_100300E40;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_100226100;
  v30 = v22;
  swift_errorRetain();
  sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
  v26 = String.init<A>(describing:)();
  v28 = v27;
  *(v25 + 56) = &type metadata for String;
  *(v25 + 64) = sub_1000EE954();
  *(v25 + 32) = v26;
  *(v25 + 40) = v28;
  os_log(_:dso:log:_:_:)(v23, &_mh_execute_header, v24, "createDirectory error: %@", 25, 2, v25);

  return v2 ^ 1;
}

uint64_t sub_1000F06B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000F0700(uint64_t a1)
{
  v2 = sub_1000EE870(&qword_1002F7FF0, &qword_100226C68);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000F0768()
{
  v0 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v1);
  v3 = v2;
  v22 = 0;
  v4 = [v0 removeItemAtURL:v2 error:&v22];

  if (!v4)
  {
    v13 = v22;
    v14 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v22 = v14;
    swift_errorRetain();
    sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
    sub_1000F0A84();
    if (!swift_dynamicCast())
    {
    }

    v15 = [v21 domain];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v16 && v19 == v18)
    {
    }

    else
    {
      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v20 & 1) == 0)
      {
LABEL_12:
        swift_willThrow();
      }
    }

    if ([v21 code] == 4)
    {
    }

    goto LABEL_12;
  }

  v5 = v22;
  v6 = static os_log_type_t.default.getter();
  if (qword_1002F7AF0 != -1)
  {
    swift_once();
  }

  v7 = qword_100300E40;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100226100;
  type metadata accessor for URL();
  sub_1000F06B8(&unk_1002F9C00, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  v9 = dispatch thunk of CustomStringConvertible.description.getter();
  v11 = v10;
  *(v8 + 56) = &type metadata for String;
  *(v8 + 64) = sub_1000EE954();
  *(v8 + 32) = v9;
  *(v8 + 40) = v11;
  os_log(_:dso:log:_:_:)(v6, &_mh_execute_header, v7, "removeDirectory: %@", 19, 2, v8);
}

unint64_t sub_1000F0A84()
{
  result = qword_1002F7ED8;
  if (!qword_1002F7ED8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1002F7ED8);
  }

  return result;
}

void sub_1000F0AD0(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = static os_log_type_t.default.getter();
    if (qword_1002F7AE0 != -1)
    {
      swift_once();
    }

    v11 = qword_100300E30;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100226100;
    *(v12 + 56) = &type metadata for String;
    *(v12 + 64) = sub_1000EE954();
    *(v12 + 32) = a4;
    *(v12 + 40) = a5;

    os_log(_:dso:log:_:_:)(v10, &_mh_execute_header, v11, "fetchAADeviceRecord: %@", 23, 2, v12);

    v13 = sub_1000F0C3C(a4, a5);
    a2();
  }

  else
  {
    a2();
  }
}

void *sub_1000F0C3C(uint64_t a1, uint64_t a2)
{
  v18[3] = &type metadata for AudioAccessoryFeatures;
  v18[4] = sub_1000F1874();
  v4 = isFeatureEnabled(_:)();
  sub_1000EF824(v18);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  sub_100103934();
  v5 = sub_1001B0F34(a1, a2);

  if (v5)
  {
    v6 = static os_log_type_t.default.getter();
    if (qword_1002F7AE0 != -1)
    {
      swift_once();
    }

    v7 = qword_100300E30;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_100226100;
    v9 = v5;
    v10 = [v9 description];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    *(v8 + 56) = &type metadata for String;
    *(v8 + 64) = sub_1000EE954();
    *(v8 + 32) = v11;
    *(v8 + 40) = v13;
    os_log(_:dso:log:_:_:)(v6, &_mh_execute_header, v7, "Found AADeviceRecord: %@", 24, 2, v8);
  }

  else
  {
    v14 = static os_log_type_t.debug.getter();
    if (qword_1002F7AE0 != -1)
    {
      swift_once();
    }

    v15 = qword_100300E30;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_100226100;
    *(v16 + 56) = &type metadata for String;
    *(v16 + 64) = sub_1000EE954();
    *(v16 + 32) = a1;
    *(v16 + 40) = a2;

    os_log(_:dso:log:_:_:)(v14, &_mh_execute_header, v15, "AADeviceRecord not found for  - %@", 34, 2, v16);
    v5 = 0;
  }

  return v5;
}

uint64_t sub_1000F0EA0(uint64_t a1, uint64_t a2)
{
  v16 = &type metadata for AudioAccessoryFeatures;
  v17 = sub_1000F1874();
  v5 = isFeatureEnabled(_:)();
  sub_1000EF824(aBlock);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v19 = 0;
  v6 = *&v2[OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_managerQueue];
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = &v19;
  v7[5] = v2;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1000F2B8C;
  *(v8 + 24) = v7;
  v17 = sub_1000F2B98;
  v18 = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100174328;
  v16 = &unk_1002BC1B8;
  v9 = _Block_copy(aBlock);
  v10 = v6;

  v11 = v2;

  dispatch_sync(v10, v9);

  _Block_release(v9);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v14 = v19;

    return v14;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000F1064(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = static os_log_type_t.default.getter();
  if (qword_1002F7AE0 != -1)
  {
    swift_once();
  }

  v7 = qword_100300E30;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100226100;
  *(v8 + 56) = &type metadata for String;
  *(v8 + 64) = sub_1000EE954();
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;

  os_log(_:dso:log:_:_:)(v6, &_mh_execute_header, v7, "fetchAADeviceRecordSync: %@", 27, 2, v8);

  v9 = sub_1000F0C3C(a1, a2);
  v10 = *a3;
  *a3 = v9;

  return _objc_release_x1(v9, v10);
}

uint64_t sub_1000F1200(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = static os_log_type_t.default.getter();
    if (qword_1002F7AE0 != -1)
    {
      swift_once();
    }

    v12 = qword_100300E30;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_100226100;
    *(v13 + 56) = &type metadata for String;
    *(v13 + 64) = sub_1000EE954();
    *(v13 + 32) = a4;
    *(v13 + 40) = a5;

    os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, v12, "CloudSync: remove AADeviceRecord with BT Address: %@", 52, 2, v13);

    sub_100103934();
    sub_1001A55A4(a4, a5, 0x6563697665444141, 0xEE0064726F636552, a2, a3);
  }

  else
  {
    sub_1000F29F8();
    swift_allocError();
    *v15 = 0;
    a2();
  }
}

uint64_t sub_1000F13D4(void *a1, int a2, uint64_t a3, void *aBlock, void (*a5)(uint64_t, uint64_t, id, void *))
{
  v7 = _Block_copy(aBlock);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  _Block_copy(v7);
  v11 = a1;
  a5(v8, v10, v11, v7);
  _Block_release(v7);
  _Block_release(v7);
}

uint64_t sub_1000F1478(uint64_t a1, void (*a2)(void), uint64_t a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = static os_log_type_t.default.getter();
    if (qword_1002F7AE0 != -1)
    {
      swift_once();
    }

    v10 = qword_100300E30;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_100226100;
    v12 = a4;
    v13 = [v12 description];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    *(v11 + 56) = &type metadata for String;
    *(v11 + 64) = sub_1000EE954();
    *(v11 + 32) = v14;
    *(v11 + 40) = v16;
    os_log(_:dso:log:_:_:)(v9, &_mh_execute_header, v10, "CloudSync: updateAADeviceRecord: %@", 35, 2, v11);

    sub_100103934();
    sub_1001B0678(v12, a2, a3);
  }

  else
  {
    sub_1000F29F8();
    swift_allocError();
    *v18 = 0;
    a2();
  }
}

uint64_t sub_1000F16E4(uint64_t a1, SEL *a2)
{
  v12[3] = &type metadata for AudioAccessoryFeatures;
  v12[4] = sub_1000F1874();
  v4 = isFeatureEnabled(_:)();
  result = sub_1000EF824(v12);
  if (v4)
  {
    v6 = OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_subscribers;
    result = swift_beginAccess();
    v7 = *(v2 + v6);
    if (v7 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      v8 = result;
      if (!result)
      {
        return result;
      }
    }

    else
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v8)
      {
        return result;
      }
    }

    if (v8 < 1)
    {
      __break(1u);
    }

    else
    {

      for (i = 0; i != v8; ++i)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v10 = *(v7 + 8 * i + 32);
          swift_unknownObjectRetain();
        }

        if ([v10 respondsToSelector:*a2])
        {
          type metadata accessor for AADeviceRecord(0);
          swift_unknownObjectRetain();
          isa = Array._bridgeToObjectiveC()().super.isa;
          [v10 *a2];
          swift_unknownObjectRelease_n();
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }
    }
  }

  return result;
}

unint64_t sub_1000F1874()
{
  result = qword_1002F9BC0;
  if (!qword_1002F9BC0)
  {
    result = swift_getWitnessTable(&unk_100227D18, &type metadata for AudioAccessoryFeatures, v0, v1);
    atomic_store(result, &qword_1002F9BC0);
  }

  return result;
}

uint64_t sub_1000F18C8()
{
  v1 = OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_subscribers;
  result = swift_beginAccess();
  v3 = *(v0 + v1);
  if (v3 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v4 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return result;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
  }

  else
  {

    for (i = 0; i != v4; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v6 = *(v3 + 8 * i + 32);
        swift_unknownObjectRetain();
      }

      if ([v6 respondsToSelector:"aaDeviceRecordsRemovedWithRecords:"])
      {
        type metadata accessor for AADeviceRecord(0);
        swift_unknownObjectRetain();
        isa = Array._bridgeToObjectiveC()().super.isa;
        [v6 aaDeviceRecordsRemovedWithRecords:isa];
        swift_unknownObjectRelease_n();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t sub_1000F1A2C(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = &type metadata for AudioAccessoryFeatures;
  v6 = sub_1000F1874();
  v45 = v6;
  v7 = isFeatureEnabled(_:)();
  result = sub_1000EF824(&v43);
  if (v7)
  {
    v9._countAndFlagsBits = 0xD00000000000002CLL;
    v9._object = 0x8000000100267570;
    String.append(_:)(v9);
    v10._object = 0x80000001002675A0;
    v10._countAndFlagsBits = 0xD00000000000002BLL;
    String.append(_:)(v10);
    v11._object = 0x80000001002675D0;
    v11._countAndFlagsBits = 0xD00000000000002BLL;
    String.append(_:)(v11);
    v12._countAndFlagsBits = 0xD00000000000002CLL;
    v12._object = 0x8000000100267600;
    String.append(_:)(v12);
    v13 = static os_log_type_t.default.getter();
    if (qword_1002F7B00 != -1)
    {
      v38 = v13;
      swift_once();
      v13 = v38;
    }

    v14 = _swiftEmptyArrayStorage;
    v42 = qword_100300E50;
    os_log(_:dso:log:_:_:)(v13, &_mh_execute_header, qword_100300E50, "-------------AADevice Records-------------", 42, 2, _swiftEmptyArrayStorage);
    sub_100103934();
    v44 = &type metadata for AudioAccessoryFeatures;
    v45 = v6;
    v15 = isFeatureEnabled(_:)();
    sub_1000EF824(&v43);
    if ((v15 & 1) == 0)
    {
      goto LABEL_11;
    }

    if (![objc_opt_self() isFirstUnlocked])
    {
      v18 = static os_log_type_t.error.getter();
      if (qword_1002F7AE8 != -1)
      {
        v3 = v18;
        swift_once();
        v18 = v3;
      }

      os_log(_:dso:log:_:_:)(v18, &_mh_execute_header, qword_100300E38, "aaDeviceRecords call failed because device is in beforeFirstUnlock state", 72, 2, _swiftEmptyArrayStorage);
      goto LABEL_11;
    }

    sub_100192340();
    if (qword_1002F7AB8 != -1)
    {
      goto LABEL_23;
    }

    while (1)
    {
      v16 = sub_1000EE91C(v2, qword_100300D88);
      (*(v3 + 16))(v5, v16, v2);
      v14 = sub_10018B1E4(v5);

      v17 = *(v3 + 8);
      v3 += 8;
      v17(v5, v2);
LABEL_11:

      if (v14 >> 62)
      {
        v19 = _CocoaArrayWrapper.endIndex.getter();
        if (!v19)
        {
        }
      }

      else
      {
        v19 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v19)
        {
        }
      }

      if (v19 >= 1)
      {
        break;
      }

      __break(1u);
LABEL_23:
      swift_once();
    }

    v20 = 0;
    v41 = v14 & 0xC000000000000001;
    v40 = xmmword_100226100;
    v39[1] = a1;
    v21 = v14;
    do
    {
      if (v41)
      {
        v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v22 = *(v14 + 8 * v20 + 32);
      }

      v23 = v22;
      ++v20;
      v24 = static os_log_type_t.default.getter();
      sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
      v25 = swift_allocObject();
      *(v25 + 16) = v40;
      v26 = v23;
      v27 = [v26 description];
      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v29;

      *(v25 + 56) = &type metadata for String;
      *(v25 + 64) = sub_1000EE954();
      *(v25 + 32) = v28;
      *(v25 + 40) = v30;
      os_log(_:dso:log:_:_:)(v24, &_mh_execute_header, v42, "%@", 2, 2, v25);

      v31 = v26;
      v32 = [v31 description];
      v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = v34;

      v43._countAndFlagsBits = 0xA2D2D2D2D2D0ALL;
      v43._object = 0xE700000000000000;
      v36._countAndFlagsBits = v33;
      v36._object = v35;
      String.append(_:)(v36);

      v37._countAndFlagsBits = 10;
      v37._object = 0xE100000000000000;
      String.append(_:)(v37);

      String.append(_:)(v43);

      v14 = v21;
    }

    while (v19 != v20);
  }

  return result;
}

uint64_t sub_1000F1F48(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void))
{
  v22 = a1;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v10 = *(v23 - 8);
  __chkstk_darwin(v23);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  *(v13 + 16) = a4;
  v27 = &type metadata for AudioAccessoryFeatures;
  v28 = sub_1000F1874();
  _Block_copy(a4);
  v14 = isFeatureEnabled(_:)();
  sub_1000EF824(aBlock);
  if (v14)
  {
    v15 = *(a3 + OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_managerQueue);
    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v17 = swift_allocObject();
    v17[2] = v16;
    v17[3] = sub_1000F2BA0;
    v18 = v22;
    v17[4] = v13;
    v17[5] = v18;
    v17[6] = a2;
    v28 = sub_1000F2BFC;
    v29 = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001742E0;
    v27 = &unk_1002BC230;
    v19 = _Block_copy(aBlock);
    v20 = v15;

    static DispatchQoS.unspecified.getter();
    v25 = _swiftEmptyArrayStorage;
    sub_1000F2A70();
    sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
    sub_1000F2AC8();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v19);

    (*(v24 + 8))(v9, v7);
    (*(v10 + 8))(v12, v23);
  }

  else
  {
    a4[2](a4, 0);
  }
}

uint64_t sub_1000F22B0(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void))
{
  v24 = a1;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for DispatchQoS();
  v10 = *(v25 - 8);
  __chkstk_darwin(v25);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  *(v13 + 16) = a4;
  v29 = &type metadata for AudioAccessoryFeatures;
  v30 = sub_1000F1874();
  _Block_copy(a4);
  v14 = isFeatureEnabled(_:)();
  sub_1000EF824(aBlock);
  if (v14)
  {
    v15 = *(a3 + OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_managerQueue);
    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v17 = swift_allocObject();
    v17[2] = v16;
    v17[3] = sub_1000F2C44;
    v18 = v24;
    v17[4] = v13;
    v17[5] = v18;
    v17[6] = a2;
    v30 = sub_1000F2B74;
    v31 = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001742E0;
    v29 = &unk_1002BC140;
    v19 = _Block_copy(aBlock);
    v20 = v15;

    static DispatchQoS.unspecified.getter();
    v27 = _swiftEmptyArrayStorage;
    sub_1000F2A70();
    sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
    sub_1000F2AC8();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v19);

    (*(v26 + 8))(v9, v7);
    (*(v10 + 8))(v12, v25);
  }

  else
  {
    sub_1000F29F8();
    swift_allocError();
    *v21 = 4;
    v22 = _convertErrorToNSError(_:)();
    (a4)[2](a4, v22);
  }
}

uint64_t sub_1000F2654(void *a1, uint64_t a2, void (**a3)(void, void))
{
  v25 = a1;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v26 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  v29 = &type metadata for AudioAccessoryFeatures;
  v30 = sub_1000F1874();
  _Block_copy(a3);
  v13 = isFeatureEnabled(_:)();
  sub_1000EF824(aBlock);
  if (v13)
  {
    v24 = v9;
    v14 = *(a2 + OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_managerQueue);
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v16 = swift_allocObject();
    v16[2] = v15;
    v16[3] = sub_1000F29F0;
    v17 = v25;
    v16[4] = v12;
    v16[5] = v17;
    v30 = sub_1000F2A4C;
    v31 = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001742E0;
    v29 = &unk_1002BC0C8;
    v18 = _Block_copy(aBlock);
    v19 = v14;

    v20 = v17;
    static DispatchQoS.unspecified.getter();
    v27 = _swiftEmptyArrayStorage;
    sub_1000F2A70();
    sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
    sub_1000F2AC8();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v18);

    (*(v6 + 8))(v8, v5);
    (*(v26 + 8))(v11, v24);
  }

  else
  {
    sub_1000F29F8();
    swift_allocError();
    *v21 = 4;
    v22 = _convertErrorToNSError(_:)();
    (a3)[2](a3, v22);
  }
}

unint64_t sub_1000F29F8()
{
  result = qword_1002F7EE0;
  if (!qword_1002F7EE0)
  {
    result = swift_getWitnessTable(&unk_100227CD8, &type metadata for DeviceManager.DeviceManagerError, v0, v1);
    atomic_store(result, &qword_1002F7EE0);
  }

  return result;
}

uint64_t sub_1000F2A58(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1000F2A70()
{
  result = qword_1002F9CB0;
  if (!qword_1002F9CB0)
  {
    v3 = type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable(&protocol conformance descriptor for DispatchWorkItemFlags, v3, v0, v1);
    atomic_store(result, &qword_1002F9CB0);
  }

  return result;
}

unint64_t sub_1000F2AC8()
{
  result = qword_1002F9CC0;
  if (!qword_1002F9CC0)
  {
    v3 = sub_1000F2B2C(&unk_1002F92D0, &unk_100227B40);
    result = swift_getWitnessTable(&protocol conformance descriptor for [A], v3, v0, v1);
    atomic_store(result, &qword_1002F9CC0);
  }

  return result;
}

uint64_t sub_1000F2B2C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000F2BB4()
{

  return _swift_deallocObject(v0, 56, 7);
}

unint64_t AAProxCardsRecord.ProxCardKeys.rawValue.getter(char a1)
{
  result = 0x62756F4465736163;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0xD00000000000001ELL;
      break;
    case 3:
      result = 0x7473654764616568;
      break;
    case 4:
      result = 0x41676E6972616568;
      break;
    case 5:
      result = 0x54676E6972616568;
      break;
    case 6:
      result = 0x7461527472616568;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 0xD000000000000011;
      break;
    case 9:
      result = 0xD000000000000012;
      break;
    case 10:
      result = 0xD000000000000013;
      break;
    case 11:
      result = 0x6F69647541627375;
      break;
    case 12:
      result = 0x6175516563696F76;
      break;
    case 13:
      result = 0x77654E7374616877;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000F2E14(char *a1, char *a2)
{
  v2 = *a2;
  v3 = AAProxCardsRecord.ProxCardKeys.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == AAProxCardsRecord.ProxCardKeys.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1000F2E9C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  AAProxCardsRecord.ProxCardKeys.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000F2F00(uint64_t a1)
{
  AAProxCardsRecord.ProxCardKeys.rawValue.getter(*v1);
  String.hash(into:)();
}

Swift::Int sub_1000F2F54(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  AAProxCardsRecord.ProxCardKeys.rawValue.getter(v2);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1000F2FB4@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s15audioaccessoryd17AAProxCardsRecordC12ProxCardKeysO8rawValueAESgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1000F2FE4@<X0>(unint64_t *a1@<X8>)
{
  result = AAProxCardsRecord.ProxCardKeys.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1000F3020()
{
  v0 = sub_1000EE870(&unk_1002F7BA0, &unk_1002270E0);
  __chkstk_darwin(v0 - 8);
  v2 = &v9 - v1;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000EE8B8(v7, qword_100300B10);
  sub_1000EE91C(v3, qword_100300B10);
  URL.init(string:)();
  result = (*(v4 + 48))(v2, 1, v3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    URL.appendingPathComponent(_:isDirectory:)();
    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

void *AAProxCardsRecord.description.getter()
{
  v1 = sub_1000EE870(&qword_1002F7EF0, &unk_100226C90);
  __chkstk_darwin(v1 - 8);
  v93 = &v88 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v88 - v4;
  __chkstk_darwin(v6);
  v8 = &v88 - v7;
  __chkstk_darwin(v9);
  v92 = &v88 - v10;
  v11 = type metadata accessor for Date();
  v96 = *(v11 - 8);
  __chkstk_darwin(v11);
  v94 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = objc_autoreleasePoolPush();
  isa = sub_100169D38(*(v0 + OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_cloudMetadata), *(v0 + OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_cloudMetadata + 8));
  v91 = v8;
  if (!isa)
  {
    isa = sub_1000F882C().super.isa;
  }

  v95 = isa;
  v101 = isa;
  sub_1000F6FF4(&v101);
  objc_autoreleasePoolPop(v13);
  swift_beginAccess();

  v16 = sub_1000F3B08(v15);

  v97 = v16;
  sub_1000EE870(&qword_1002F7F00, &qword_1002284F0);
  sub_1000FA0E0(&qword_1002F7F08, &qword_1002F7F00, &qword_1002284F0, &protocol conformance descriptor for [A]);
  v17 = BidirectionalCollection<>.joined(separator:)();
  v19 = v18;

  v97 = 0;
  v98 = 0xE000000000000000;
  _StringGuts.grow(_:)(183);
  v99 = v97;
  v100 = v98;
  v20._object = 0x80000001002677B0;
  v20._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v20);
  type metadata accessor for UUID();
  sub_1000F9EEC(&unk_1002F7BC0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID, v21, v22, v23);
  v24._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v24);

  v25._countAndFlagsBits = 2108704;
  v25._object = 0xE300000000000000;
  String.append(_:)(v25);
  String.append(_:)(*(v0 + OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_bluetoothAddress));
  v26._countAndFlagsBits = 0xD00000000000001DLL;
  v26._object = 0x80000001002677D0;
  String.append(_:)(v26);
  v97 = *(v0 + OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_fitEducationNotificationsShownCount);
  v27._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v27);
  v28 = v95;

  v29._countAndFlagsBits = 0xD000000000000014;
  v29._object = 0x80000001002677F0;
  String.append(_:)(v29);
  v30._countAndFlagsBits = v17;
  v30._object = v19;
  String.append(_:)(v30);

  v31._countAndFlagsBits = 0xD000000000000014;
  v31._object = 0x8000000100267810;
  String.append(_:)(v31);
  v32 = OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_lastModifiedDate;
  swift_beginAccess();
  v33 = v96;
  v34 = v0 + v32;
  v35 = v94;
  v89 = *(v96 + 16);
  v89(v94, v34, v11);
  sub_1000F9EEC(&qword_1002F9560, &type metadata accessor for Date, &protocol conformance descriptor for Date, v36, v37, v38);
  v39._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v39);

  v90 = *(v33 + 8);
  v90(v35, v11);
  v40._countAndFlagsBits = 0xD00000000000001ALL;
  v40._object = 0x8000000100267830;
  String.append(_:)(v40);
  v41 = [v28 creationDate];
  if (v41)
  {
    v42 = v91;
    v43 = v41;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v44 = 0;
  }

  else
  {
    v44 = 1;
    v42 = v91;
  }

  v45 = v92;
  v46 = v96;
  v47 = *(v96 + 56);
  v47(v42, v44, 1, v11);
  sub_1000EED5C(v42, v45);
  v48 = *(v46 + 48);
  v96 = v46 + 48;
  if (v48(v45, 1, v11))
  {
    sub_1000EEE6C(v45, &qword_1002F7EF0, &unk_100226C90);
    v49 = 0xE200000000000000;
    v50 = 15932;
  }

  else
  {
    v92 = v5;
    v51 = v94;
    v89(v94, v45, v11);
    sub_1000EEE6C(v45, &qword_1002F7EF0, &unk_100226C90);
    v52 = objc_opt_self();
    v53 = Date._bridgeToObjectiveC()().super.isa;
    v54 = [v52 localizedStringFromDate:v53 dateStyle:2 timeStyle:2];

    v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v56;

    v28 = v95;
    v57 = v51;
    v5 = v92;
    v90(v57, v11);
    v50 = v55;
  }

  v58 = v49;
  String.append(_:)(*&v50);

  v59._object = 0x8000000100267850;
  v59._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v59);
  v60 = [v28 modificationDate];
  if (v60)
  {
    v61 = v93;
    v62 = v60;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v63 = 0;
  }

  else
  {
    v63 = 1;
    v61 = v93;
  }

  v47(v61, v63, 1, v11);
  sub_1000EED5C(v61, v5);
  if (v48(v5, 1, v11))
  {
    sub_1000EEE6C(v5, &qword_1002F7EF0, &unk_100226C90);
    v64 = 0xE200000000000000;
    v65 = 15932;
  }

  else
  {
    v66 = v94;
    v89(v94, v5, v11);
    sub_1000EEE6C(v5, &qword_1002F7EF0, &unk_100226C90);
    v67 = objc_opt_self();
    v68 = Date._bridgeToObjectiveC()().super.isa;
    v69 = [v67 localizedStringFromDate:v68 dateStyle:2 timeStyle:2];

    v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v64 = v71;

    v28 = v95;
    v90(v66, v11);
    v65 = v70;
  }

  v72 = v64;
  String.append(_:)(*&v65);

  v73._countAndFlagsBits = 0xD000000000000013;
  v73._object = 0x8000000100267870;
  String.append(_:)(v73);
  v74 = [v28 modifiedByDevice];
  if (v74)
  {
    v75 = v74;
    v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v78 = v77;
  }

  else
  {
    v78 = 0xE200000000000000;
    v76 = 15932;
  }

  v79._countAndFlagsBits = v76;
  v79._object = v78;
  String.append(_:)(v79);

  v80._countAndFlagsBits = 0x746520202020202CLL;
  v80._object = 0xEC000000203A6761;
  String.append(_:)(v80);
  v81 = [v28 recordChangeTag];
  if (v81)
  {
    v82 = v81;
    v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v85 = v84;
  }

  else
  {
    v85 = 0xE200000000000000;
    v83 = 15932;
  }

  v86._countAndFlagsBits = v83;
  v86._object = v85;
  String.append(_:)(v86);

  return v99;
}

void *sub_1000F3B08(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    sub_1001C4E58(0, v2, 0);
    v27 = _swiftEmptyArrayStorage;
    v4 = a1 + 64;
    result = _HashTable.startBucket.getter();
    v5 = result;
    v6 = 0;
    v7 = *(a1 + 36);
    v24 = v2;
    v25 = v7;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
    {
      v9 = v5 >> 6;
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_23;
      }

      if (v7 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v26 = v6;
      v10 = (*(a1 + 48) + 16 * v5);
      v28 = *v10;
      v29 = v10[1];
      swift_bridgeObjectRetain_n();
      v11._countAndFlagsBits = 58;
      v11._object = 0xE100000000000000;
      String.append(_:)(v11);
      v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v12);

      v13 = v27;
      v15 = v27[2];
      v14 = v27[3];
      if (v15 >= v14 >> 1)
      {
        result = sub_1001C4E58((v14 > 1), v15 + 1, 1);
        v13 = v27;
      }

      v13[2] = v15 + 1;
      v16 = &v13[2 * v15];
      v16[4] = v28;
      v16[5] = v29;
      v8 = 1 << *(a1 + 32);
      if (v5 >= v8)
      {
        goto LABEL_25;
      }

      v4 = a1 + 64;
      v17 = *(a1 + 64 + 8 * v9);
      if ((v17 & (1 << v5)) == 0)
      {
        goto LABEL_26;
      }

      v27 = v13;
      v7 = v25;
      if (v25 != *(a1 + 36))
      {
        goto LABEL_27;
      }

      v18 = v17 & (-2 << (v5 & 0x3F));
      if (v18)
      {
        v8 = __clz(__rbit64(v18)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v19 = v9 << 6;
        v20 = v9 + 1;
        v21 = (a1 + 72 + 8 * v9);
        while (v20 < (v8 + 63) >> 6)
        {
          v23 = *v21++;
          v22 = v23;
          v19 += 64;
          ++v20;
          if (v23)
          {
            result = sub_1000FA948(v5, v25, 0);
            v8 = __clz(__rbit64(v22)) + v19;
            goto LABEL_4;
          }
        }

        result = sub_1000FA948(v5, v25, 0);
      }

LABEL_4:
      v6 = v26 + 1;
      v5 = v8;
      if (v26 + 1 == v24)
      {
        return v27;
      }
    }

    __break(1u);
LABEL_23:
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

uint64_t HMDeviceCloudRecord.debugDescription.getter()
{
  v1 = [v0 description];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t sub_1000F3E30(char *a1)
{
  v2 = v1;
  v4 = sub_1000EE870(&qword_1002F7EF0, &unk_100226C90);
  __chkstk_darwin(v4 - 8);
  v6 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v97 = &v88 - v8;
  v9 = type metadata accessor for Date();
  v96 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v95 = &v88 - v13;
  v14 = sub_1000EE870(&qword_1002F8000, &unk_1002262C0);
  __chkstk_darwin(v14 - 8);
  v16 = &v88 - v15;
  v17 = type metadata accessor for UUID();
  v99 = *(v17 - 8);
  __chkstk_darwin(v17);
  v98 = &v88 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (CKRecord.recordType.getter() == 0xD000000000000011 && 0x8000000100226E20 == v19)
  {
  }

  else
  {
    v20 = v19;
    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v21 & 1) == 0)
    {
      sub_1000FA7DC();
      swift_allocError();
      *v34 = 0;
      swift_willThrow();

      goto LABEL_12;
    }
  }

  v94 = v17;
  v22 = [a1 encryptedValues];
  v23 = String._bridgeToObjectiveC()();
  v24 = [v22 objectForKeyedSubscript:v23];

  if (!v24 || (v105 = v24, v101 = sub_1000EE870(&qword_1002F8610, &unk_1002262D0), (swift_dynamicCast() & 1) == 0))
  {
LABEL_9:
    v30 = static os_log_type_t.error.getter();
    if (qword_1002F7AE8 != -1)
    {
      goto LABEL_58;
    }

    goto LABEL_10;
  }

  v100 = v22;
  v92 = v102;
  v93 = v103;
  v25 = [a1 recordID];
  v26 = [v25 recordName];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = a1;

  UUID.init(uuidString:)();

  v28 = v99;
  v29 = v94;
  if ((*(v99 + 48))(v16, 1, v94) == 1)
  {

    sub_1000EEE6C(v16, &qword_1002F8000, &unk_1002262C0);
    goto LABEL_9;
  }

  v36 = v98;
  (*(v28 + 32))(v98, v16, v29);
  (*(v28 + 16))(&v2[OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_identifier], v36, v29);
  v37 = &v2[OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_bluetoothAddress];
  v38 = v93;
  *v37 = v92;
  v37[1] = v38;
  v39 = [objc_allocWithZone(NSKeyedArchiver) initRequiringSecureCoding:1];
  [v27 encodeSystemFieldsWithCoder:v39];
  [v39 finishEncoding];
  v40 = [v39 encodedData];
  v41 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v43 = v42;

  v44 = &v2[OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_cloudMetadata];
  *v44 = v41;
  v44[1] = v43;
  v45 = [v27 modificationDate];
  v46 = v27;
  if (v45)
  {
    v47 = v45;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v49 = v96;
    v48 = v97;
    v50 = v96[4];
    v50(v97, v11, v9);
    (v49[7])(v48, 0, 1, v9);
    v51 = v95;
    v50(v95, v48, v9);
    v52 = v100;
  }

  else
  {
    v49 = v96;
    v53 = v96[7];
    v53(v97, 1, 1, v9);
    v54 = [v46 creationDate];
    if (v54)
    {
      v55 = v54;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v56 = v49[4];
      v56(v6, v11, v9);
      v53(v6, 0, 1, v9);
      v51 = v95;
      v56(v95, v6, v9);
      v49 = v96;
      v57 = v96[6];
    }

    else
    {
      v53(v6, 1, 1, v9);
      v51 = v95;
      static Date.now.getter();
      v57 = v49[6];
      if (v57(v6, 1, v9) != 1)
      {
        sub_1000EEE6C(v6, &qword_1002F7EF0, &unk_100226C90);
      }
    }

    v52 = v100;
    v58 = v97;
    if (v57(v97, 1, v9) != 1)
    {
      sub_1000EEE6C(v58, &qword_1002F7EF0, &unk_100226C90);
    }
  }

  (v49[4])(&v2[OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_lastModifiedDate], v51, v9);
  v59 = String._bridgeToObjectiveC()();
  v60 = &selRef_initializedCKAfterFirstUnlockedSinceBoot;
  v61 = [v52 objectForKeyedSubscript:v59];

  v90 = v46;
  if (v61 && (v102 = v61, (swift_dynamicCast() & 1) != 0))
  {
    v62 = v105;
  }

  else
  {
    v62 = 0;
  }

  *&v2[OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_fitEducationNotificationsShownCount] = v62;
  *&v2[OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_proxCardVersions] = sub_1000F98F4(_swiftEmptyArrayStorage);
  v63 = type metadata accessor for AAProxCardsRecord(0);
  v104.receiver = v2;
  v104.super_class = v63;
  v64 = objc_msgSendSuper2(&v104, "init");
  v65 = OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_proxCardVersions;
  v96 = 0x8000000100267150;
  v97 = 0x8000000100267170;
  v95 = 0x8000000100267130;
  v92 = 0x80000001002670C0;
  v93 = 0x8000000100267110;
  v91 = 0x80000001002670A0;
  v89 = v64;
  a1 = 0;
  while (2)
  {
    v68 = *(&off_1002BBBA8 + a1++ + 32);
    v69 = String._bridgeToObjectiveC()();

    v70 = [v52 v60[235]];

    if (!v70)
    {
      goto LABEL_29;
    }

    v102 = v70;
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_29;
    }

    v71 = v105;
    v72 = v68;
    v73 = 0xED0000706154656CLL;
    v30 = 0x62756F4465736163;
    switch(v72)
    {
      case 0:
        goto LABEL_46;
      case 1:
        v30 = 0xD000000000000011;
        v73 = v91;
        goto LABEL_46;
      case 2:
        v30 = 0xD00000000000001ELL;
        v73 = v92;
        goto LABEL_46;
      case 3:
        v30 = 0x7473654764616568;
        v73 = 0xEC00000073657275;
        goto LABEL_46;
      case 4:
        v30 = 0x41676E6972616568;
        v73 = 0xED00007473697373;
        goto LABEL_46;
      case 5:
        v30 = 0x54676E6972616568;
        v73 = 0xEB00000000747365;
        goto LABEL_46;
      case 6:
        v30 = 0x7461527472616568;
        v73 = 0xE900000000000065;
        goto LABEL_46;
      case 7:
        v30 = 0xD000000000000011;
        v73 = v93;
        goto LABEL_46;
      case 8:
        v30 = 0xD000000000000011;
        v73 = v95;
        goto LABEL_46;
      case 9:
        v30 = 0xD000000000000012;
        v73 = v96;
        goto LABEL_46;
      case 10:
        v30 = 0xD000000000000013;
        v73 = v97;
        goto LABEL_46;
      case 11:
        v73 = 0xE800000000000000;
        v30 = 0x6F69647541627375;
        goto LABEL_46;
      case 12:
        v30 = 0x6175516563696F76;
        v73 = 0xEC0000007974696CLL;
        goto LABEL_46;
      case 13:
        v73 = 0xE800000000000000;
        v30 = 0x77654E7374616877;
LABEL_46:
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v105 = *&v64[v65];
        v75 = v105;
        *&v64[v65] = 0x8000000000000000;
        v76 = sub_1000F8C5C(v30, v73);
        v78 = v75[2];
        v79 = (v77 & 1) == 0;
        v80 = __OFADD__(v78, v79);
        v81 = v78 + v79;
        if (!v80)
        {
          v82 = v77;
          if (v75[3] < v81)
          {
            sub_10015C88C(v81, isUniquelyReferenced_nonNull_native);
            v76 = sub_1000F8C5C(v30, v73);
            if ((v82 & 1) != (v83 & 1))
            {
              goto LABEL_60;
            }

LABEL_51:
            v60 = &selRef_initializedCKAfterFirstUnlockedSinceBoot;
            if ((v82 & 1) == 0)
            {
              goto LABEL_52;
            }

            goto LABEL_27;
          }

          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_51;
          }

          v87 = v76;
          sub_10015D94C();
          v76 = v87;
          v60 = &selRef_initializedCKAfterFirstUnlockedSinceBoot;
          if ((v82 & 1) == 0)
          {
LABEL_52:
            v67 = v105;
            v105[(v76 >> 6) + 8] |= 1 << v76;
            v84 = (v67[6] + 16 * v76);
            *v84 = v30;
            v84[1] = v73;
            *(v67[7] + 8 * v76) = v71;
            v85 = v67[2];
            v80 = __OFADD__(v85, 1);
            v86 = v85 + 1;
            if (v80)
            {
              __break(1u);
LABEL_60:
              KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              __break(1u);
LABEL_61:
              JUMPOUT(0);
            }

            v67[2] = v86;
            goto LABEL_28;
          }

LABEL_27:
          v66 = v76;

          v67 = v105;
          *(v105[7] + 8 * v66) = v71;
LABEL_28:
          *&v64[v65] = v67;
          swift_endAccess();
          v52 = v100;
LABEL_29:
          if (a1 == 14)
          {

            swift_unknownObjectRelease();
            v20 = v89;

            (*(v99 + 8))(v98, v94);
            return v20;
          }

          continue;
        }

        __break(1u);
LABEL_58:
        swift_once();
LABEL_10:
        v20 = qword_100300E38;
        sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
        v31 = swift_allocObject();
        *(v31 + 16) = xmmword_100226100;
        *(v31 + 56) = sub_1000FA784(0, &qword_1002F85A0, CKRecord_ptr);
        *(v31 + 64) = sub_1000FA830();
        *(v31 + 32) = a1;
        v32 = a1;
        os_log(_:dso:log:_:_:)(v30, &_mh_execute_header, v20, "Invalid AAProxCardsRecord - %@", 30, 2, v31);

        sub_1000FA7DC();
        swift_allocError();
        *v33 = 4;
        swift_willThrow();
        swift_unknownObjectRelease();

LABEL_12:
        type metadata accessor for AAProxCardsRecord(0);
        swift_deallocPartialClassInstance();
        return v20;
      default:
        goto LABEL_61;
    }
  }
}

void (*sub_1000F4D10(uint64_t a1, uint64_t a2, unint64_t a3, void *a4))(uint64_t, uint64_t)
{
  v9 = type metadata accessor for Date();
  v32 = *(v9 - 8);
  v33 = v9;
  __chkstk_darwin(v9);
  v31 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = &v4[OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_cloudMetadata];
  *v11 = a2;
  *(v11 + 1) = a3;
  v12 = OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_identifier;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = *(v14 + 16);
  v38 = a1;
  v15(&v4[v12], a1, v13);
  v35 = a2;
  v36 = a3;
  sub_1000EE9F4(a2, a3);
  v34 = a4;
  v16 = [a4 bluetoothAddress];
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  v20 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v20 = v17 & 0xFFFFFFFFFFFFLL;
  }

  if (!v20 || v17 == 0xD000000000000011 && 0x8000000100267AA0 == v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    sub_1000FA7DC();
    swift_allocError();
    *v21 = 3;
    swift_willThrow();

    sub_1000EF870(v35, v36);
    v22 = *(v14 + 8);
    v22(v38, v13);
    sub_1000EF870(*v11, *(v11 + 1));
    v22(&v4[v12], v13);
    type metadata accessor for AAProxCardsRecord(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v24 = &v4[OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_bluetoothAddress];
    *v24 = v17;
    v24[1] = v19;
    v25 = v31;
    static Date.now.getter();
    (*(v32 + 32))(&v4[OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_lastModifiedDate], v25, v33);
    v26 = v34;
    v27 = [v34 fitEducationNotificationsShownCount];
    *&v4[OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_fitEducationNotificationsShownCount] = v27;
    *&v4[OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_proxCardVersions] = sub_1000F98F4(_swiftEmptyArrayStorage);
    v28 = type metadata accessor for AAProxCardsRecord(0);
    v37.receiver = v4;
    v37.super_class = v28;
    v22 = objc_msgSendSuper2(&v37, "init");
    v29 = sub_1000F50A8();
    sub_1000F5604(v29);

    sub_1000EF870(v35, v36);
    (*(v14 + 8))(v38, v13);
  }

  return v22;
}

void *sub_1000F50A8()
{
  if ([v0 caseDoubleTapVersion])
  {
    v1 = [v0 caseDoubleTapVersion];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1000F9318(v1, 0x62756F4465736163, 0xED0000706154656CLL, isUniquelyReferenced_nonNull_native);
  }

  if ([v0 chargingRemindersVersion])
  {
    v3 = [v0 chargingRemindersVersion];
    v4 = swift_isUniquelyReferenced_nonNull_native();
    sub_1000F9318(v3, 0xD000000000000011, 0x80000001002670A0, v4);
  }

  if ([v0 dynamicEndOfChargeNotificationVersion])
  {
    v5 = [v0 dynamicEndOfChargeNotificationVersion];
    v6 = swift_isUniquelyReferenced_nonNull_native();
    sub_1000F9318(v5, 0xD00000000000001ELL, 0x80000001002670C0, v6);
  }

  if ([v0 headGesturesVersion])
  {
    v7 = [v0 headGesturesVersion];
    v8 = swift_isUniquelyReferenced_nonNull_native();
    sub_1000F9318(v7, 0x7473654764616568, 0xEC00000073657275, v8);
  }

  if ([v0 hearingAssistVersion])
  {
    v9 = [v0 hearingAssistVersion];
    v10 = swift_isUniquelyReferenced_nonNull_native();
    sub_1000F9318(v9, 0x41676E6972616568, 0xED00007473697373, v10);
  }

  if ([v0 hearingTestVersion])
  {
    v11 = [v0 hearingTestVersion];
    v12 = swift_isUniquelyReferenced_nonNull_native();
    sub_1000F9318(v11, 0x54676E6972616568, 0xEB00000000747365, v12);
  }

  if ([v0 heartRateVersion])
  {
    v13 = [v0 heartRateVersion];
    v14 = swift_isUniquelyReferenced_nonNull_native();
    sub_1000F9318(v13, 0x7461527472616568, 0xE900000000000065, v14);
  }

  if ([v0 newChargingStatusVersion])
  {
    v15 = [v0 newChargingStatusVersion];
    v16 = swift_isUniquelyReferenced_nonNull_native();
    sub_1000F9318(v15, 0xD000000000000011, 0x8000000100267110, v16);
  }

  if ([v0 pauseMediaOnSleepVersion])
  {
    v17 = [v0 pauseMediaOnSleepVersion];
    v18 = swift_isUniquelyReferenced_nonNull_native();
    sub_1000F9318(v17, 0xD000000000000011, 0x8000000100267130, v18);
  }

  if ([v0 personalTranslatorVersion])
  {
    v19 = [v0 personalTranslatorVersion];
    v20 = swift_isUniquelyReferenced_nonNull_native();
    sub_1000F9318(v19, 0xD000000000000012, 0x8000000100267150, v20);
  }

  if ([v0 remoteCameraControlVersion])
  {
    v21 = [v0 remoteCameraControlVersion];
    v22 = swift_isUniquelyReferenced_nonNull_native();
    sub_1000F9318(v21, 0xD000000000000013, 0x8000000100267170, v22);
  }

  if ([v0 usbAudioVersion])
  {
    v23 = [v0 usbAudioVersion];
    v24 = swift_isUniquelyReferenced_nonNull_native();
    sub_1000F9318(v23, 0x6F69647541627375, 0xE800000000000000, v24);
  }

  if ([v0 voiceQualityVersion])
  {
    v25 = [v0 voiceQualityVersion];
    v26 = swift_isUniquelyReferenced_nonNull_native();
    sub_1000F9318(v25, 0x6175516563696F76, 0xEC0000007974696CLL, v26);
  }

  if ([v0 whatsNewVersion])
  {
    v27 = [v0 whatsNewVersion];
    v28 = swift_isUniquelyReferenced_nonNull_native();
    sub_1000F9318(v27, 0x77654E7374616877, 0xE800000000000000, v28);
  }

  return _swiftEmptyDictionarySingleton;
}

uint64_t sub_1000F5604(uint64_t a1)
{
  v2 = v1;
  v4 = 0;
  v5 = OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_proxCardVersions;
  while (2)
  {
    v7 = *(&off_1002BBBA8 + v4++ + 32);
    v8 = 0xED0000706154656CLL;
    v9 = 0x62756F4465736163;
    switch(v7)
    {
      case 1:
        v9 = 0xD000000000000011;
        v8 = 0x80000001002670A0;
        if (!*(a1 + 16))
        {
          goto LABEL_2;
        }

        goto LABEL_29;
      case 2:
        v9 = 0xD00000000000001ELL;
        v8 = 0x80000001002670C0;
        if (!*(a1 + 16))
        {
          goto LABEL_2;
        }

        goto LABEL_29;
      case 3:
        v9 = 0x7473654764616568;
        v10 = 1936028277;
        goto LABEL_17;
      case 4:
        v9 = 0x41676E6972616568;
        v8 = 0xED00007473697373;
        if (!*(a1 + 16))
        {
          goto LABEL_2;
        }

        goto LABEL_29;
      case 5:
        v9 = 0x54676E6972616568;
        v8 = 0xEB00000000747365;
        if (!*(a1 + 16))
        {
          goto LABEL_2;
        }

        goto LABEL_29;
      case 6:
        v9 = 0x7461527472616568;
        v8 = 0xE900000000000065;
        if (!*(a1 + 16))
        {
          goto LABEL_2;
        }

        goto LABEL_29;
      case 7:
        v9 = 0xD000000000000011;
        v8 = 0x8000000100267110;
        if (!*(a1 + 16))
        {
          goto LABEL_2;
        }

        goto LABEL_29;
      case 8:
        v9 = 0xD000000000000011;
        v8 = 0x8000000100267130;
        if (!*(a1 + 16))
        {
          goto LABEL_2;
        }

        goto LABEL_29;
      case 9:
        v9 = 0xD000000000000012;
        v8 = 0x8000000100267150;
        if (!*(a1 + 16))
        {
          goto LABEL_2;
        }

        goto LABEL_29;
      case 10:
        v9 = 0xD000000000000013;
        v8 = 0x8000000100267170;
        goto LABEL_28;
      case 11:
        v8 = 0xE800000000000000;
        v9 = 0x6F69647541627375;
        if (!*(a1 + 16))
        {
          goto LABEL_2;
        }

        goto LABEL_29;
      case 12:
        v9 = 0x6175516563696F76;
        v10 = 2037672300;
LABEL_17:
        v8 = v10 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        if (!*(a1 + 16))
        {
          goto LABEL_2;
        }

        goto LABEL_29;
      case 13:
        v8 = 0xE800000000000000;
        v9 = 0x77654E7374616877;
        if (!*(a1 + 16))
        {
          goto LABEL_2;
        }

        goto LABEL_29;
      default:
LABEL_28:
        if (*(a1 + 16))
        {
LABEL_29:
          v11 = sub_1000F8C5C(v9, v8);
          v13 = v12;

          if (v13)
          {
            v33 = *(*(a1 + 56) + 8 * v11);
            v14 = v7;
            v15 = 0xED0000706154656CLL;
            v16 = 0x62756F4465736163;
            switch(v14)
            {
              case 0:
                goto LABEL_46;
              case 1:
                v16 = 0xD000000000000011;
                v15 = 0x80000001002670A0;
                goto LABEL_46;
              case 2:
                v16 = 0xD00000000000001ELL;
                v15 = 0x80000001002670C0;
                goto LABEL_46;
              case 3:
                v16 = 0x7473654764616568;
                v15 = 0xEC00000073657275;
                goto LABEL_46;
              case 4:
                v16 = 0x41676E6972616568;
                v15 = 0xED00007473697373;
                goto LABEL_46;
              case 5:
                v16 = 0x54676E6972616568;
                v15 = 0xEB00000000747365;
                goto LABEL_46;
              case 6:
                v16 = 0x7461527472616568;
                v15 = 0xE900000000000065;
                goto LABEL_46;
              case 7:
                v16 = 0xD000000000000011;
                v15 = 0x8000000100267110;
                goto LABEL_46;
              case 8:
                v16 = 0xD000000000000011;
                v15 = 0x8000000100267130;
                goto LABEL_46;
              case 9:
                v16 = 0xD000000000000012;
                v15 = 0x8000000100267150;
                goto LABEL_46;
              case 10:
                v16 = 0xD000000000000013;
                v15 = 0x8000000100267170;
                goto LABEL_46;
              case 11:
                v15 = 0xE800000000000000;
                v16 = 0x6F69647541627375;
                goto LABEL_46;
              case 12:
                v16 = 0x6175516563696F76;
                v15 = 0xEC0000007974696CLL;
                goto LABEL_46;
              case 13:
                v15 = 0xE800000000000000;
                v16 = 0x77654E7374616877;
LABEL_46:
                swift_beginAccess();
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v18 = *(v2 + v5);
                v34 = v18;
                *(v2 + v5) = 0x8000000000000000;
                v19 = sub_1000F8C5C(v16, v15);
                v21 = v18[2];
                v22 = (v20 & 1) == 0;
                v23 = __OFADD__(v21, v22);
                v24 = v21 + v22;
                if (v23)
                {
                  __break(1u);
LABEL_59:
                  __break(1u);
LABEL_60:
                  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
                  __break(1u);
LABEL_61:
                  JUMPOUT(0);
                }

                v25 = v20;
                if (v18[3] >= v24)
                {
                  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                  {
                    v32 = v19;
                    sub_10015D94C();
                    v19 = v32;
                  }
                }

                else
                {
                  sub_10015C88C(v24, isUniquelyReferenced_nonNull_native);
                  v19 = sub_1000F8C5C(v16, v15);
                  if ((v25 & 1) != (v26 & 1))
                  {
                    goto LABEL_60;
                  }
                }

                if (v25)
                {
                  v27 = v19;

                  v28 = v34;
                  *(v34[7] + 8 * v27) = v33;
                }

                else
                {
                  v28 = v18;
                  v18[(v19 >> 6) + 8] |= 1 << v19;
                  v29 = (v18[6] + 16 * v19);
                  *v29 = v16;
                  v29[1] = v15;
                  *(v18[7] + 8 * v19) = v33;
                  v30 = v18[2];
                  v23 = __OFADD__(v30, 1);
                  v31 = v30 + 1;
                  if (v23)
                  {
                    goto LABEL_59;
                  }

                  v18[2] = v31;
                }

                *(v2 + v5) = v28;
                result = swift_endAccess();
                break;
              default:
                goto LABEL_61;
            }
          }
        }

        else
        {
LABEL_2:
        }

        if (v4 != 14)
        {
          continue;
        }

        return result;
    }
  }
}

char *AAProxCardsRecord.init(from:)(void *a1)
{
  v2 = sub_1000EE870(&qword_1002F7EF0, &unk_100226C90);
  __chkstk_darwin(v2 - 8);
  v82 = &v76 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v83 = &v76 - v5;
  __chkstk_darwin(v6);
  v84 = &v76 - v7;
  v8 = type metadata accessor for Date();
  v85 = *(v8 - 8);
  v86 = v8;
  __chkstk_darwin(v8);
  v10 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v76 - v12;
  v14 = type metadata accessor for UUID();
  v87 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000EE870(&qword_1002F7F10, &qword_100226CA0);
  v88 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = &v76 - v18;
  v20 = a1[3];
  v90 = a1;
  sub_1000EF78C(a1, v20);
  sub_1000F9F34();
  v21 = v89;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v21)
  {
    sub_1000EF824(v90);
    v22 = v91;
    type metadata accessor for AAProxCardsRecord(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v89 = v13;
    v81 = v10;
    v94 = 0;
    sub_1000EF8C4();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *&v91[OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_cloudMetadata] = *v92;
    LOBYTE(v92[0]) = 1;
    sub_1000F9EEC(&unk_1002F8750, &type metadata accessor for UUID, &protocol conformance descriptor for UUID, v24, v25, v26);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v27 = v91;
    v87[4](&v91[OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_identifier], v16, v14);
    LOBYTE(v92[0]) = 2;
    v28 = KeyedDecodingContainer.decode(_:forKey:)();
    v29 = &v27[OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_bluetoothAddress];
    *v29 = v28;
    v29[1] = v30;
    LOBYTE(v92[0]) = 3;
    v31 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    if (v32)
    {
      v33 = 0;
    }

    else
    {
      v33 = v31;
    }

    *&v27[OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_fitEducationNotificationsShownCount] = v33;
    *&v27[OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_proxCardVersions] = sub_1000F98F4(_swiftEmptyArrayStorage);
    v34 = v89;
    static Date.now.getter();
    v35 = v17;
    v36 = *(v85 + 32);
    (v36)(&v27[OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_lastModifiedDate], v34, v86);
    v37 = type metadata accessor for AAProxCardsRecord(0);
    v93.receiver = v27;
    v93.super_class = v37;
    v38 = objc_msgSendSuper2(&v93, "init");
    sub_1000EE870(&qword_1002F7F20, &qword_100226CA8);
    v94 = 4;
    sub_1000F9FD4(&unk_1002F7F28, &protocol witness table for String, &protocol witness table for UInt64, &protocol conformance descriptor for <> [A : B]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v87 = v36;
    v91 = v38;
    sub_1000F5604(v92[0]);
    v39 = v86;

    LOBYTE(v92[0]) = 5;
    sub_1000F9EEC(&qword_1002F7D90, &type metadata accessor for Date, &protocol conformance descriptor for Date, v40, v41, v42);
    v43 = v84;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v79 = v19;
    v80 = v35;
    v44 = v85 + 48;
    v45 = *(v85 + 48);
    if (v45(v43, 1, v39) == 1)
    {
      v77 = v45;
      v78 = v44;
      v46 = v91;
      v47 = objc_autoreleasePoolPush();
      v48 = &v46[OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_cloudMetadata];
      isa = sub_100169D38(*&v46[OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_cloudMetadata], *&v46[OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_cloudMetadata + 8]);
      v50 = v87;
      if (!isa)
      {
        isa = sub_1000F882C().super.isa;
      }

      v92[0] = isa;
      v51 = isa;
      sub_1000F6FF4(v92);
      objc_autoreleasePoolPop(v47);
      v52 = [v51 modificationDate];

      if (v52)
      {
        v53 = v89;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        (*(v88 + 8))(v79, v80);
        v54 = v83;
        v39 = v86;
        (v50)(v83, v53, v86);
        (*(v85 + 56))(v54, 0, 1, v39);
        v55 = v81;
        (v50)(v81, v54, v39);
        v56 = &unk_100300000;
        v57 = v84;
        v58 = v77(v84, 1, v39);
      }

      else
      {
        v61 = *(v85 + 56);
        v61(v83, 1, 1, v86);
        v62 = objc_autoreleasePoolPush();
        v63 = sub_100169D38(*v48, *(v48 + 1));
        if (!v63)
        {
          v63 = sub_1000F882C().super.isa;
        }

        v64 = v82;
        v92[0] = v63;
        v65 = v63;
        sub_1000F6FF4(v92);
        objc_autoreleasePoolPop(v62);
        v66 = [v65 creationDate];

        v55 = v81;
        if (v66)
        {
          v67 = v61;
          v68 = v89;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          (*(v88 + 8))(v79, v80);
          v69 = v86;
          v70 = v87;
          (v87)(v64, v68, v86);
          v67(v64, 0, 1, v69);
          v39 = v69;
          (v70)(v55, v64, v69);
          v71 = v77;
        }

        else
        {
          v72 = v86;
          v61(v64, 1, 1, v86);
          v39 = v72;
          static Date.now.getter();
          (*(v88 + 8))(v79, v80);
          v71 = v77;
          if (v77(v64, 1, v72) != 1)
          {
            sub_1000EEE6C(v82, &qword_1002F7EF0, &unk_100226C90);
          }
        }

        v73 = v83;
        v74 = v71(v83, 1, v39);
        v56 = &unk_100300000;
        v57 = v84;
        if (v74 != 1)
        {
          sub_1000EEE6C(v73, &qword_1002F7EF0, &unk_100226C90);
        }

        v58 = v71(v57, 1, v39);
      }

      if (v58 != 1)
      {
        sub_1000EEE6C(v57, &qword_1002F7EF0, &unk_100226C90);
      }
    }

    else
    {
      v59 = *(v88 + 8);
      v60 = v91;
      v59(v79, v80);
      v55 = v81;
      (v87)(v81, v43, v39);
      v56 = &unk_100300000;
    }

    v75 = v56[361];
    v22 = v91;
    swift_beginAccess();
    (*(v85 + 40))(&v22[v75], v55, v39);
    swift_endAccess();
    sub_1000EF824(v90);
  }

  return v22;
}

id HMDeviceCloudRecord.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

unint64_t sub_1000F67AC()
{
  v1 = *v0;
  v2 = 0x74654D64756F6C63;
  v3 = 0xD000000000000023;
  if (v1 != 3)
  {
    v3 = 0xD000000000000010;
  }

  v4 = 0x696669746E656469;
  if (v1 != 1)
  {
    v4 = 0xD000000000000010;
  }

  if (*v0)
  {
    v2 = v4;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000F688C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000FA56C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000F68C0(uint64_t a1)
{
  v2 = sub_1000F9F34();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000F68FC(uint64_t a1)
{
  v2 = sub_1000F9F34();

  return CodingKey.debugDescription.getter(a1, v2);
}

id AAProxCardsRecord.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AAProxCardsRecord(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t AAProxCardsRecord.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v26 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000EE870(&qword_1002F7F38, &qword_100226CB0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v25 - v9;
  sub_1000EF78C(a1, a1[3]);
  sub_1000F9F34();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_cloudMetadata + 8);
  v29 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_cloudMetadata);
  v30 = v11;
  LOBYTE(v28) = 0;
  sub_1000EE9F4(v29, v11);
  sub_1000EF9D8();
  v12 = v27;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v12)
  {
    sub_1000EF870(v29, v30);
    return (*(v8 + 8))(v10, v7);
  }

  else
  {
    v27 = v6;
    sub_1000EF870(v29, v30);
    LOBYTE(v29) = 1;
    type metadata accessor for UUID();
    sub_1000F9EEC(&qword_1002F8340, &type metadata accessor for UUID, &protocol conformance descriptor for UUID, v13, v14, v15);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v29) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v17 = v8;
    LOBYTE(v29) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v18 = OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_proxCardVersions;
    swift_beginAccess();
    v28 = *(v2 + v18);
    v31 = 4;
    sub_1000EE870(&qword_1002F7F20, &qword_100226CA8);
    sub_1000F9FD4(&unk_1002F7F40, &protocol witness table for String, &protocol witness table for UInt64, &protocol conformance descriptor for <> [A : B]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v19 = OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_lastModifiedDate;
    swift_beginAccess();
    v25[1] = v7;
    v21 = v26;
    v20 = v27;
    (*(v26 + 16))(v27, v2 + v19, v4);
    v31 = 5;
    sub_1000F9EEC(&qword_1002F7DB0, &type metadata accessor for Date, &protocol conformance descriptor for Date, v22, v23, v24);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v21 + 8))(v20, v4);
    return (*(v17 + 8))(v10, v7);
  }
}

uint64_t sub_1000F6F00()
{
  v1 = *v0 + OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_cloudMetadata;
  v2 = *v1;
  sub_1000EE9F4(*v1, *(v1 + 8));
  return v2;
}

uint64_t sub_1000F6F44@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_lastModifiedDate;
  swift_beginAccess();
  v5 = type metadata accessor for Date();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t sub_1000F6FF4(id *a1)
{
  v2 = v1;
  v4 = static os_log_type_t.debug.getter();
  if (qword_1002F7AE8 != -1)
  {
LABEL_30:
    swift_once();
  }

  v5 = qword_100300E38;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100226100;
  v7 = *a1;
  v8 = [v7 description];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  *(v6 + 56) = &type metadata for String;
  *(v6 + 64) = sub_1000EE954();
  *(v6 + 32) = v9;
  *(v6 + 40) = v11;
  os_log(_:dso:log:_:_:)(v4, &_mh_execute_header, v5, "Updating AAProxCardsRecord record: %@", 37, 2, v6);

  v12 = [v7 encryptedValues];
  swift_getObjectType();
  v28 = v12;
  CKRecordKeyValueSetting.subscript.getter();
  v14 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_bluetoothAddress);
  v13 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_bluetoothAddress + 8);
  if (!v31)
  {
    goto LABEL_8;
  }

  if (v30 != v14 || v31 != v13)
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v15)
    {
      goto LABEL_9;
    }

LABEL_8:
    v30 = v14;
    v31 = v13;

    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_9;
  }

LABEL_9:
  CKRecordKeyValueSetting.subscript.getter();
  if ((v31 & 1) != 0 || v30 != *(v2 + OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_fitEducationNotificationsShownCount))
  {
    v30 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_fitEducationNotificationsShownCount);
    CKRecordKeyValueSetting.subscript.setter();
  }

  v16 = OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_proxCardVersions;
  swift_beginAccess();
  v17 = *(v2 + v16);
  v2 = v17 + 64;
  v18 = 1 << *(v17 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v4 = v19 & *(v17 + 64);
  v20 = (v18 + 63) >> 6;

  a1 = 0;
LABEL_16:
  v21 = v28;
  if (!v4)
  {
    goto LABEL_17;
  }

  do
  {
LABEL_21:
    v23 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v24 = *(*(v17 + 56) + 8 * (v23 | (a1 << 6)));

    v25 = String._bridgeToObjectiveC()();
    v26 = [v21 objectForKeyedSubscript:v25];

    if (v26 && (v30 = v26, sub_1000EE870(&qword_1002F8610, &unk_1002262D0), (swift_dynamicCast() & 1) != 0))
    {
      if (v29 >= v24)
      {
        goto LABEL_15;
      }
    }

    else if (!v24)
    {
LABEL_15:

      goto LABEL_16;
    }

    v30 = v24;
    v21 = v28;
    CKRecordKeyValueSetting.subscript.setter();
  }

  while (v4);
  while (1)
  {
LABEL_17:
    v22 = (a1 + 1);
    if (__OFADD__(a1, 1))
    {
      __break(1u);
      goto LABEL_30;
    }

    if (v22 >= v20)
    {
      break;
    }

    v4 = *(v2 + 8 * v22);
    a1 = (a1 + 1);
    if (v4)
    {
      a1 = v22;
      goto LABEL_21;
    }
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_1000F7438@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_identifier;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

char *sub_1000F74B4@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for AAProxCardsRecord(0));
  result = AAProxCardsRecord.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

Swift::UInt64 __swiftcall AAProxCardsRecord.version(for:)(audioaccessoryd::AAProxCardsRecord::ProxCardKeys a1)
{
  v2 = AAProxCardsRecord.ProxCardKeys.rawValue.getter(a1);
  v4 = v3;
  v5 = OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_proxCardVersions;
  swift_beginAccess();
  v6 = *(v1 + v5);
  if (*(v6 + 16) && (, v7 = sub_1000F8C5C(v2, v4), v9 = v8, , (v9 & 1) != 0))
  {
    v10 = *(*(v6 + 56) + 8 * v7);

    return v10;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1000F75E4(void *a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1000F7B9C(a1))
  {
    v57 = v6;
    v58 = v4;
    v59 = v3;
    v7 = *(a1 + OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_fitEducationNotificationsShownCount);
    if (*(v1 + OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_fitEducationNotificationsShownCount) < v7)
    {
      *(v1 + OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_fitEducationNotificationsShownCount) = v7;
    }

    v8 = OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_proxCardVersions;
    swift_beginAccess();
    v9 = *(a1 + v8);
    a1 = (v9 + 64);
    v10 = 1 << *(v9 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v9 + 64);
    v13 = OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_proxCardVersions;
    v64 = v9;

    v63 = v13;
    swift_beginAccess();
    v14 = 0;
    v15 = (v10 + 63) >> 6;
    v60 = _swiftEmptyDictionarySingleton;
    v61 = xmmword_100226C80;
    v62 = v1;
    while (1)
    {
      while (1)
      {
        if (!v12)
        {
          while (1)
          {
            v16 = v14 + 1;
            if (__OFADD__(v14, 1))
            {
              __break(1u);
              goto LABEL_39;
            }

            if (v16 >= v15)
            {
              break;
            }

            v12 = a1[v16];
            ++v14;
            if (v12)
            {
              v14 = v16;
              goto LABEL_12;
            }
          }

          if (!*(v60 + 16))
          {
          }

          sub_1000F5604(v60);

          v55 = v57;
          static Date.now.getter();
          v56 = OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_lastModifiedDate;
          swift_beginAccess();
          (*(v58 + 40))(v1 + v56, v55, v59);
          return swift_endAccess();
        }

LABEL_12:
        v17 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
        v18 = v17 | (v14 << 6);
        v19 = (*(v64 + 48) + 16 * v18);
        v21 = *v19;
        v20 = v19[1];
        v22 = *(*(v64 + 56) + 8 * v18);
        v23 = *(v1 + v63);
        v24 = *(v23 + 16);

        if (v24)
        {
          break;
        }

LABEL_21:
        if (v22)
        {
          goto LABEL_15;
        }

LABEL_22:
        v37 = static os_log_type_t.info.getter();
        if (qword_1002F7AE8 != -1)
        {
          swift_once();
        }

        v38 = qword_100300E38;
        sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
        v39 = swift_allocObject();
        *(v39 + 16) = v61;
        *(v39 + 56) = &type metadata for String;
        v40 = sub_1000EE954();
        *(v39 + 32) = v21;
        *(v39 + 40) = v20;
        *(v39 + 96) = &type metadata for UInt64;
        *(v39 + 104) = &protocol witness table for UInt64;
        *(v39 + 64) = v40;
        *(v39 + 72) = v22;
        os_log(_:dso:log:_:_:)(v37, &_mh_execute_header, v38, "ProxCards '%@' was not updated to '%lu'. No change", 50, 2, v39);

        v1 = v62;
      }

      v25 = sub_1000F8C5C(v21, v20);
      if ((v26 & 1) == 0)
      {

        goto LABEL_21;
      }

      v27 = *(*(v23 + 56) + 8 * v25);

      if (v27 >= v22)
      {
        goto LABEL_22;
      }

LABEL_15:
      v28 = v60;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v65 = v28;
      v31 = sub_1000F8C5C(v21, v20);
      v32 = *(v28 + 16);
      v33 = (v30 & 1) == 0;
      v34 = v32 + v33;
      if (__OFADD__(v32, v33))
      {
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }

      if (*(v28 + 24) >= v34)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if ((v30 & 1) == 0)
          {
            goto LABEL_29;
          }
        }

        else
        {
          v41 = v30;
          sub_10015D94C();
          if ((v41 & 1) == 0)
          {
            goto LABEL_29;
          }
        }

LABEL_27:

        v60 = v65;
        *(*(v65 + 56) + 8 * v31) = v22;
        v1 = v62;
      }

      else
      {
        LODWORD(v60) = v30;
        sub_10015C88C(v34, isUniquelyReferenced_nonNull_native);
        v35 = sub_1000F8C5C(v21, v20);
        if ((v60 & 1) != (v36 & 1))
        {
          goto LABEL_42;
        }

        v31 = v35;
        if (v60)
        {
          goto LABEL_27;
        }

LABEL_29:
        v42 = v65;
        *(v65 + 8 * (v31 >> 6) + 64) |= 1 << v31;
        v43 = (v42[6] + 16 * v31);
        *v43 = v21;
        v43[1] = v20;
        *(v42[7] + 8 * v31) = v22;
        v44 = v42[2];
        v45 = __OFADD__(v44, 1);
        v46 = v44 + 1;
        if (v45)
        {
          goto LABEL_41;
        }

        v60 = v42;
        v42[2] = v46;
        v1 = v62;
      }
    }
  }

  v14 = static os_log_type_t.info.getter();
  if (qword_1002F7AE8 != -1)
  {
LABEL_39:
    swift_once();
  }

  v47 = qword_100300E38;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_100226100;
  v49 = a1;
  v50 = [v49 description];
  v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v53 = v52;

  *(v48 + 56) = &type metadata for String;
  *(v48 + 64) = sub_1000EE954();
  *(v48 + 32) = v51;
  *(v48 + 40) = v53;
  os_log(_:dso:log:_:_:)(v14, &_mh_execute_header, v47, "No change in updated ProxCardsRecord: %@", 40, 2, v48);
}

uint64_t sub_1000F7B9C(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  v2 = result;
  if (*(v1 + OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_fitEducationNotificationsShownCount) < *(result + OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_fitEducationNotificationsShownCount))
  {
    return 1;
  }

  v3 = OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_proxCardVersions;
  swift_beginAccess();
  v4 = *(*(v1 + v3) + 16);
  v5 = OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_proxCardVersions;
  swift_beginAccess();
  v6 = *&v2[v5];
  if (v4 < *(v6 + 16))
  {
    return 1;
  }

  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;
  v25 = v2;

  v11 = 0;
  v26 = v3;
  v27 = v1;
  while (v9)
  {
LABEL_15:
    v13 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v14 = v13 | (v11 << 6);
    v15 = *(*(v6 + 56) + 8 * v14);
    v16 = *(v1 + v3);
    if (!*(v16 + 16))
    {
      goto LABEL_9;
    }

    v17 = (*(v6 + 48) + 16 * v14);
    v18 = *v17;
    v19 = v17[1];

    v20 = sub_1000F8C5C(v18, v19);
    v22 = v21;

    if (v22)
    {
      v23 = *(*(v16 + 56) + 8 * v20);

      v24 = v23 >= v15;
      v3 = v26;
      v1 = v27;
      if (!v24)
      {
LABEL_18:

        return 1;
      }
    }

    else
    {

      v3 = v26;
      v1 = v27;
LABEL_9:
      if (v15)
      {
        goto LABEL_18;
      }
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v10)
    {

      return 0;
    }

    v9 = *(v6 + 64 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

CKRecord sub_1000F7D84()
{
  sub_1000FA784(0, &unk_1002F8B50, CKRecordID_ptr);
  v0 = UUID.uuidString.getter();
  v2 = v1;
  sub_1000FA784(0, &unk_1002F7FD0, CKRecordZoneID_ptr);
  v3._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3._object = v4;
  v5._countAndFlagsBits = 0xD000000000000024;
  v5._object = 0x8000000100267A50;
  isa = CKRecordZoneID.init(zoneName:ownerName:)(v5, v3).super.isa;
  v7._countAndFlagsBits = v0;
  v7._object = v2;
  v8.super.isa = CKRecordID.init(recordName:zoneID:)(v7, isa).super.isa;
  v9 = static os_log_type_t.default.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  v10 = qword_100300E38;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100226100;
  *(v11 + 56) = &type metadata for String;
  *(v11 + 64) = sub_1000EE954();
  *(v11 + 32) = 0xD000000000000011;
  *(v11 + 40) = 0x8000000100267A80;
  os_log(_:dso:log:_:_:)(v9, &_mh_execute_header, v10, "Failed to unarchive record -- creating new %@ record", 52, 2, v11);

  sub_1000FA784(0, &qword_1002F85A0, CKRecord_ptr);
  v12._countAndFlagsBits = 0xD000000000000011;
  v12._object = 0x8000000100267A80;
  return CKRecord.init(recordType:recordID:)(v12, v8);
}

CKRecord sub_1000F7F40()
{
  sub_1000FA784(0, &unk_1002F8B50, CKRecordID_ptr);
  v0 = UUID.uuidString.getter();
  v2 = v1;
  sub_1000FA784(0, &unk_1002F7FD0, CKRecordZoneID_ptr);
  v3._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3._object = v4;
  v5._object = 0x8000000100267AC0;
  v5._countAndFlagsBits = 0xD000000000000022;
  isa = CKRecordZoneID.init(zoneName:ownerName:)(v5, v3).super.isa;
  v7._countAndFlagsBits = v0;
  v7._object = v2;
  v8.super.isa = CKRecordID.init(recordName:zoneID:)(v7, isa).super.isa;
  v9 = static os_log_type_t.default.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  v10 = qword_100300E38;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100226100;
  *(v11 + 56) = &type metadata for String;
  *(v11 + 64) = sub_1000EE954();
  *(v11 + 32) = 0x654B72657473614DLL;
  *(v11 + 40) = 0xE900000000000079;
  os_log(_:dso:log:_:_:)(v9, &_mh_execute_header, v10, "Failed to unarchive record -- creating new %@ record", 52, 2, v11);

  sub_1000FA784(0, &qword_1002F85A0, CKRecord_ptr);
  v12._countAndFlagsBits = 0x654B72657473614DLL;
  v12._object = 0xE900000000000079;
  return CKRecord.init(recordType:recordID:)(v12, v8);
}

CKRecord sub_1000F8100()
{
  sub_1000FA784(0, &unk_1002F8B50, CKRecordID_ptr);
  v0 = UUID.uuidString.getter();
  v2 = v1;
  sub_1000FA784(0, &unk_1002F7FD0, CKRecordZoneID_ptr);
  v3._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3._object = v4;
  v5._object = 0x8000000100267220;
  v5._countAndFlagsBits = 0xD00000000000001ELL;
  isa = CKRecordZoneID.init(zoneName:ownerName:)(v5, v3).super.isa;
  v7._countAndFlagsBits = v0;
  v7._object = v2;
  v8.super.isa = CKRecordID.init(recordName:zoneID:)(v7, isa).super.isa;
  v9 = static os_log_type_t.default.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  v10 = qword_100300E38;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100226100;
  *(v11 + 56) = &type metadata for String;
  *(v11 + 64) = sub_1000EE954();
  strcpy((v11 + 32), "MagicSettings");
  *(v11 + 46) = -4864;
  os_log(_:dso:log:_:_:)(v9, &_mh_execute_header, v10, "Failed to unarchive record -- creating new %@ record", 52, 2, v11);

  sub_1000FA784(0, &qword_1002F85A0, CKRecord_ptr);
  v12._countAndFlagsBits = 0x746553636967614DLL;
  v12._object = 0xED000073676E6974;
  return CKRecord.init(recordType:recordID:)(v12, v8);
}

CKRecord sub_1000F82C4()
{
  sub_1000FA784(0, &unk_1002F8B50, CKRecordID_ptr);
  type metadata accessor for SoundProfileRecord(0);
  v0 = UUID.uuidString.getter();
  v2 = v1;
  sub_1000FA784(0, &unk_1002F7FD0, CKRecordZoneID_ptr);
  v3._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3._object = v4;
  v5._countAndFlagsBits = 0xD000000000000010;
  v5._object = 0x8000000100267960;
  isa = CKRecordZoneID.init(zoneName:ownerName:)(v5, v3).super.isa;
  v7._countAndFlagsBits = v0;
  v7._object = v2;
  v8.super.isa = CKRecordID.init(recordName:zoneID:)(v7, isa).super.isa;
  v9 = static os_log_type_t.default.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  v10 = qword_100300E38;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100226100;
  *(v11 + 56) = &type metadata for String;
  *(v11 + 64) = sub_1000EE954();
  *(v11 + 32) = 0xD000000000000012;
  *(v11 + 40) = 0x80000001002671C0;
  os_log(_:dso:log:_:_:)(v9, &_mh_execute_header, v10, "Failed to unarchive record -- creating new %@ record", 52, 2, v11);

  sub_1000FA784(0, &qword_1002F85A0, CKRecord_ptr);
  v12._countAndFlagsBits = 0xD000000000000012;
  v12._object = 0x80000001002671C0;
  return CKRecord.init(recordType:recordID:)(v12, v8);
}

CKRecord sub_1000F8490()
{
  sub_1000FA784(0, &unk_1002F8B50, CKRecordID_ptr);
  type metadata accessor for DeviceRecord(0);
  v0 = UUID.uuidString.getter();
  v2 = v1;
  sub_1000FA784(0, &unk_1002F7FD0, CKRecordZoneID_ptr);
  v3._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3._object = v4;
  v5._object = 0x8000000100267220;
  v5._countAndFlagsBits = 0xD00000000000001ELL;
  isa = CKRecordZoneID.init(zoneName:ownerName:)(v5, v3).super.isa;
  v7._countAndFlagsBits = v0;
  v7._object = v2;
  v8.super.isa = CKRecordID.init(recordName:zoneID:)(v7, isa).super.isa;
  v9 = static os_log_type_t.default.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  v10 = qword_100300E38;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100226100;
  *(v11 + 56) = &type metadata for String;
  *(v11 + 64) = sub_1000EE954();
  strcpy((v11 + 32), "DeviceRecord");
  *(v11 + 45) = 0;
  *(v11 + 46) = -5120;
  os_log(_:dso:log:_:_:)(v9, &_mh_execute_header, v10, "Failed to unarchive record -- creating new %@ record", 52, 2, v11);

  sub_1000FA784(0, &qword_1002F85A0, CKRecord_ptr);
  v12._countAndFlagsBits = 0x6552656369766544;
  v12._object = 0xEC00000064726F63;
  return CKRecord.init(recordType:recordID:)(v12, v8);
}

CKRecord sub_1000F8660()
{
  sub_1000FA784(0, &unk_1002F8B50, CKRecordID_ptr);
  v0 = UUID.uuidString.getter();
  v2 = v1;
  sub_1000FA784(0, &unk_1002F7FD0, CKRecordZoneID_ptr);
  v3._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3._object = v4;
  v5._countAndFlagsBits = 0xD000000000000012;
  v5._object = 0x8000000100267AF0;
  isa = CKRecordZoneID.init(zoneName:ownerName:)(v5, v3).super.isa;
  v7._countAndFlagsBits = v0;
  v7._object = v2;
  v8.super.isa = CKRecordID.init(recordName:zoneID:)(v7, isa).super.isa;
  v9 = static os_log_type_t.default.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  v10 = qword_100300E38;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100226100;
  *(v11 + 56) = &type metadata for String;
  *(v11 + 64) = sub_1000EE954();
  *(v11 + 32) = 0xD000000000000013;
  *(v11 + 40) = 0x8000000100267B10;
  os_log(_:dso:log:_:_:)(v9, &_mh_execute_header, v10, "Failed to unarchive record -- creating new %@ record", 52, 2, v11);

  sub_1000FA784(0, &qword_1002F85A0, CKRecord_ptr);
  v12._countAndFlagsBits = 0xD000000000000013;
  v12._object = 0x8000000100267B10;
  return CKRecord.init(recordType:recordID:)(v12, v8);
}

CKRecord sub_1000F882C()
{
  sub_1000FA784(0, &unk_1002F8B50, CKRecordID_ptr);
  v0 = UUID.uuidString.getter();
  v2 = v1;
  sub_1000FA784(0, &unk_1002F7FD0, CKRecordZoneID_ptr);
  v3._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3._object = v4;
  v5._countAndFlagsBits = 0xD000000000000012;
  v5._object = 0x8000000100267AF0;
  isa = CKRecordZoneID.init(zoneName:ownerName:)(v5, v3).super.isa;
  v7._countAndFlagsBits = v0;
  v7._object = v2;
  v8.super.isa = CKRecordID.init(recordName:zoneID:)(v7, isa).super.isa;
  v9 = static os_log_type_t.default.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  v10 = qword_100300E38;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100226100;
  *(v11 + 56) = &type metadata for String;
  *(v11 + 64) = sub_1000EE954();
  *(v11 + 32) = 0xD000000000000011;
  *(v11 + 40) = 0x8000000100226E20;
  os_log(_:dso:log:_:_:)(v9, &_mh_execute_header, v10, "Failed to unarchive record -- creating new %@ record", 52, 2, v11);

  sub_1000FA784(0, &qword_1002F85A0, CKRecord_ptr);
  v12._countAndFlagsBits = 0xD000000000000011;
  v12._object = 0x8000000100226E20;
  return CKRecord.init(recordType:recordID:)(v12, v8);
}

CKRecord sub_1000F89F4()
{
  sub_1000FA784(0, &unk_1002F8B50, CKRecordID_ptr);
  v0 = UUID.uuidString.getter();
  v2 = v1;
  sub_1000FA784(0, &unk_1002F7FD0, CKRecordZoneID_ptr);
  v3._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3._object = v4;
  v5._object = 0x8000000100267AF0;
  v5._countAndFlagsBits = 0xD000000000000012;
  isa = CKRecordZoneID.init(zoneName:ownerName:)(v5, v3).super.isa;
  v7._countAndFlagsBits = v0;
  v7._object = v2;
  v8.super.isa = CKRecordID.init(recordName:zoneID:)(v7, isa).super.isa;
  v9 = static os_log_type_t.default.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  v10 = qword_100300E38;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100226100;
  *(v11 + 56) = &type metadata for String;
  *(v11 + 64) = sub_1000EE954();
  strcpy((v11 + 32), "AADeviceRecord");
  *(v11 + 47) = -18;
  os_log(_:dso:log:_:_:)(v9, &_mh_execute_header, v10, "Failed to unarchive record -- creating new %@ record", 52, 2, v11);

  sub_1000FA784(0, &qword_1002F85A0, CKRecord_ptr);
  v12._countAndFlagsBits = 0x6563697665444141;
  v12._object = 0xEE0064726F636552;
  return CKRecord.init(recordType:recordID:)(v12, v8);
}

unint64_t sub_1000F8BC8(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_1000F8EBC(a1, v2);
}

unint64_t sub_1000F8C5C(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_1000F8FC0(a1, a2, v4);
}

unint64_t sub_1000F8CD4(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for CFString(0);
  sub_1000F9EEC(&qword_1002F8028, type metadata accessor for CFString, L"%\t쓸\a", v2, v3, v4);
  _CFObject.hash(into:)();
  v5 = Hasher._finalize()();

  return sub_1000F9078(a1, v5);
}

unint64_t sub_1000F8D88(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return sub_1000F9184(a1, v4, &qword_1002F85A0, CKRecord_ptr);
}

unint64_t sub_1000F8DD8(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return sub_1000F9184(a1, v4, &unk_1002F8B50, CKRecordID_ptr);
}

unint64_t sub_1000F8E28(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return sub_1000F9184(a1, v4, &unk_1002F7FD0, CKRecordZoneID_ptr);
}

unint64_t sub_1000F8E78(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_1000F9250(a1, v4);
}

unint64_t sub_1000F8EBC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
      if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1000F8FC0(uint64_t a1, uint64_t a2, uint64_t a3)
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

unint64_t sub_1000F9078(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_1000F9EEC(&qword_1002F8028, type metadata accessor for CFString, L"%\t쓸\a", v6, v7, v8);
    do
    {
      v9 = *(*(v2 + 48) + 8 * v4);
      v10 = static _CFObject.== infix(_:_:)();

      if (v10)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1000F9184(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a2 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    sub_1000FA784(0, a3, a4);
    do
    {
      v8 = *(*(v4 + 48) + 8 * v6);
      v9 = static NSObject.== infix(_:_:)();

      if (v9)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_1000F9250(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_1000FA898(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_1000FA8F4(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_1000F9318(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1000F8C5C(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = result;
      sub_10015D94C();
      result = v19;
      goto LABEL_8;
    }

    sub_10015C88C(v16, a4 & 1);
    result = sub_1000F8C5C(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_14:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * result) = a1;
  }

  else
  {
    sub_10015D8C0(result, a2, a3, a1, v21);
  }

  return result;
}

id sub_1000F9448(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1000F8E28(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_10015DC30();
      v8 = v16;
      goto LABEL_8;
    }

    sub_10015D074(v13, a3 & 1);
    v8 = sub_1000F8E28(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      sub_1000FA784(0, &unk_1002F7FD0, CKRecordZoneID_ptr);
      v8 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return _objc_release_x1(v8, v20);
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = v18[7];
    v20 = *(v19 + 8 * v8);
    *(v19 + 8 * v8) = a1;

    return _objc_release_x1(v8, v20);
  }

  sub_10015D908(v8, a2, a1, v18);

  return a2;
}

uint64_t sub_1000F958C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1000F8C5C(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_10015DD90();
      v11 = v19;
      goto LABEL_8;
    }

    sub_10015D2DC(v16, a4 & 1);
    v11 = sub_1000F8C5C(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_10015D8C0(v11, a2, a3, a1, v21);
  }
}

unint64_t sub_1000F96D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000EE870(&unk_1002F9D40, &unk_100226FB0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000FAAFC(v4, &v11, &qword_1002F7FF0, &qword_100226C68);
      v5 = v11;
      result = sub_1000F8BC8(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1000FA7CC(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000F97FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000EE870(&unk_1002F7FE0, &qword_100226FA8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_1000F8BC8(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000F98F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000EE870(&qword_1002F8030, qword_100229300);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1000F8C5C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000F99F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000EE870(&qword_1002F8040, qword_1002270C0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000FAAFC(v4, &v13, &unk_1002F9EB0, &unk_100227D50);
      v5 = v13;
      v6 = v14;
      result = sub_1000F8C5C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1000FA7CC(&v15, (v3[7] + 32 * result));
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000F9B20(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000EE870(&qword_1002F8010, &qword_100226FE0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v13 = *i;

      result = sub_1000F8C5C(v5, v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      *(v3[7] + 16 * result) = v13;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000F9C8C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(id))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    sub_1000EE870(a2, a3);
    v7 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i = (i + 24))
    {
      v15 = *i;
      v9 = *(i - 1);

      result = a4(v9);
      if (v11)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v9;
      *(v7[7] + 16 * result) = v15;
      v12 = v7[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v7[2] = v14;
      if (!--v4)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000F9D9C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000EE870(&qword_1002F7FF8, qword_100226FC0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1000F8C5C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t _s15audioaccessoryd17AAProxCardsRecordC12ProxCardKeysO8rawValueAESgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1002BBA38, v2);

  if (v3 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000F9EEC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  result = *a1;
  if (!result)
  {
    v9 = a2(255);
    result = swift_getWitnessTable(a3, v9);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000F9F34()
{
  result = qword_1002F7F18;
  if (!qword_1002F7F18)
  {
    result = swift_getWitnessTable(&unk_100226F58, &type metadata for AAProxCardsRecord.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002F7F18);
  }

  return result;
}

uint64_t type metadata accessor for AAProxCardsRecord(uint64_t a1)
{
  result = qword_1002F7FA8;
  if (!qword_1002F7FA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000F9FD4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    v9 = sub_1000F2B2C(&qword_1002F7F20, &qword_100226CA8);
    v10[0] = a2;
    v10[1] = a3;
    result = swift_getWitnessTable(a4, v9, v10);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000FA048()
{
  result = qword_1002F7F50;
  if (!qword_1002F7F50)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for AAProxCardsRecord.ProxCardKeys, &type metadata for AAProxCardsRecord.ProxCardKeys, v0, v1);
    atomic_store(result, &qword_1002F7F50);
  }

  return result;
}

uint64_t sub_1000FA0E0(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    v7 = sub_1000F2B2C(a2, a3);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000FA128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = sub_1000F9EEC(&qword_1002F7F68, type metadata accessor for AAProxCardsRecord, &unk_100226DB4, a4, a5, a6);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000FA180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(a1 + 8) = sub_1000F9EEC(&qword_1002F7F70, type metadata accessor for AAProxCardsRecord, &protocol conformance descriptor for AAProxCardsRecord, a4, a5, a6);
  result = sub_1000F9EEC(&qword_1002F7F78, type metadata accessor for AAProxCardsRecord, &protocol conformance descriptor for AAProxCardsRecord, v7, v8, v9);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1000FA20C(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Date();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AAProxCardsRecord.ProxCardKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AAProxCardsRecord.ProxCardKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000FA468()
{
  result = qword_1002F7FB8;
  if (!qword_1002F7FB8)
  {
    result = swift_getWitnessTable(&unk_100226F30, &type metadata for AAProxCardsRecord.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002F7FB8);
  }

  return result;
}

unint64_t sub_1000FA4C0()
{
  result = qword_1002F7FC0;
  if (!qword_1002F7FC0)
  {
    result = swift_getWitnessTable(&unk_100226EA0, &type metadata for AAProxCardsRecord.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002F7FC0);
  }

  return result;
}

unint64_t sub_1000FA518()
{
  result = qword_1002F7FC8;
  if (!qword_1002F7FC8)
  {
    result = swift_getWitnessTable(&unk_100226EC8, &type metadata for AAProxCardsRecord.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002F7FC8);
  }

  return result;
}

uint64_t sub_1000FA56C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74654D64756F6C63 && a2 == 0xED00006174616461;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000100267080 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000023 && 0x80000001002678F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000100267920 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001002672B0 == a2)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1000FA784(uint64_t a1, unint64_t *a2, void *a3)
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

_OWORD *sub_1000FA7CC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_1000FA7DC()
{
  result = qword_1002F8008;
  if (!qword_1002F8008)
  {
    result = swift_getWitnessTable(&unk_100227080, &type metadata for AAProxCardsRecord.AAProxCardsRecordError, v0, v1);
    atomic_store(result, &qword_1002F8008);
  }

  return result;
}

unint64_t sub_1000FA830()
{
  result = qword_1002F7BE0;
  if (!qword_1002F7BE0)
  {
    v3 = sub_1000FA784(255, &qword_1002F85A0, CKRecord_ptr);
    result = swift_getWitnessTable(&protocol conformance descriptor for NSObject, v3, v0, v1);
    atomic_store(result, &qword_1002F7BE0);
  }

  return result;
}

uint64_t sub_1000FA948(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t getEnumTagSinglePayload for BTDeferredRecord.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BTDeferredRecord.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000FAAA8()
{
  result = qword_1002F8038;
  if (!qword_1002F8038)
  {
    result = swift_getWitnessTable(&unk_100227058, &type metadata for AAProxCardsRecord.AAProxCardsRecordError, v0, v1);
    atomic_store(result, &qword_1002F8038);
  }

  return result;
}

uint64_t sub_1000FAAFC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000EE870(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000FAB84()
{
  v0 = sub_1000EE870(&unk_1002F7BA0, &unk_1002270E0);
  __chkstk_darwin(v0 - 8);
  v2 = &v9 - v1;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000EE8B8(v7, qword_100300B50);
  sub_1000EE91C(v3, qword_100300B50);
  URL.init(string:)();
  result = (*(v4 + 48))(v2, 1, v3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    URL.appendingPathComponent(_:isDirectory:)();
    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

uint64_t sub_1000FAD4C()
{
  v0 = sub_1000EE870(&unk_1002F7BA0, &unk_1002270E0);
  __chkstk_darwin(v0 - 8);
  v2 = &v9 - v1;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000EE8B8(v7, qword_100300B68);
  sub_1000EE91C(v3, qword_100300B68);
  URL.init(string:)();
  result = (*(v4 + 48))(v2, 1, v3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    URL.appendingPathComponent(_:isDirectory:)();
    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

uint64_t sub_1000FAF14()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v87 = &v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000EE870(&qword_1002F7EF0, &unk_100226C90);
  __chkstk_darwin(v5 - 8);
  v90 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v87 - v8;
  __chkstk_darwin(v10);
  v12 = &v87 - v11;
  __chkstk_darwin(v13);
  v15 = &v87 - v14;
  v16 = objc_autoreleasePoolPush();
  isa = sub_100169D38(*v1, *(v1 + 8));
  v91 = v9;
  if (!isa)
  {
    isa = sub_1000F82C4().super.isa;
  }

  v18 = isa;
  v95._countAndFlagsBits = isa;
  sub_1000FD23C(&v95);
  objc_autoreleasePoolPop(v16);
  v95._countAndFlagsBits = 0;
  v95._object = 0xE000000000000000;
  if (IsAppleInternalBuild())
  {
    v94._countAndFlagsBits = 0;
    v94._object = 0xE000000000000000;
    _StringGuts.grow(_:)(27);

    v94._countAndFlagsBits = 0xD000000000000013;
    v94._object = 0x8000000100267B80;
    type metadata accessor for SoundProfileRecord(0);
    type metadata accessor for UUID();
    sub_1000FDE18(&unk_1002F7BC0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v19._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v19);

    v20._countAndFlagsBits = 2108704;
    v20._object = 0xE300000000000000;
    String.append(_:)(v20);
    type metadata accessor for URL();
    sub_1000FDE18(&unk_1002F9C00, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
  }

  else
  {
    v94._countAndFlagsBits = 0;
    v94._object = 0xE000000000000000;
    _StringGuts.grow(_:)(27);

    v94._countAndFlagsBits = 0xD000000000000013;
    v94._object = 0x8000000100267B80;
    type metadata accessor for SoundProfileRecord(0);
    type metadata accessor for UUID();
    sub_1000FDE18(&unk_1002F7BC0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v23._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v23);

    v24._countAndFlagsBits = 2108704;
    v24._object = 0xE300000000000000;
    String.append(_:)(v24);
    v21 = URL.lastPathComponent.getter();
  }

  String.append(_:)(*&v21);

  v25._countAndFlagsBits = 10;
  v25._object = 0xE100000000000000;
  String.append(_:)(v25);
  String.append(_:)(v94);

  v89 = v95;
  v94._countAndFlagsBits = 0;
  v94._object = 0xE000000000000000;
  _StringGuts.grow(_:)(62);
  v26._countAndFlagsBits = 0xD000000000000011;
  v26._object = 0x8000000100267270;
  String.append(_:)(v26);
  v27 = [v18 creationDate];
  v93 = v18;
  if (v27)
  {
    v28 = v27;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v29 = *(v3 + 56);
    v30 = v12;
    v31 = 0;
  }

  else
  {
    v29 = *(v3 + 56);
    v30 = v12;
    v31 = 1;
  }

  v88 = v29;
  v29(v30, v31, 1, v2);
  v92 = v1;
  sub_1000EED5C(v12, v15);
  v32 = *(v3 + 48);
  if (v32(v15, 1, v2))
  {
    v33 = v2;
    v34 = v3;
    sub_1000EEE6C(v15, &qword_1002F7EF0, &unk_100226C90);
    type metadata accessor for SoundProfileRecord(0);
    v35 = objc_opt_self();
    v36 = Date._bridgeToObjectiveC()().super.isa;
    v37 = [v35 localizedStringFromDate:v36 dateStyle:2 timeStyle:2];

    v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v39;
  }

  else
  {
    v41 = v87;
    (*(v3 + 16))(v87, v15, v2);
    sub_1000EEE6C(v15, &qword_1002F7EF0, &unk_100226C90);
    v42 = objc_opt_self();
    v43 = Date._bridgeToObjectiveC()().super.isa;
    v44 = [v42 localizedStringFromDate:v43 dateStyle:2 timeStyle:2];

    v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v45;

    v46 = v2;
    v34 = v3;
    v47 = v41;
    v33 = v46;
    (*(v3 + 8))(v47);
  }

  v48._countAndFlagsBits = v38;
  v48._object = v40;
  String.append(_:)(v48);

  v49._object = 0xEE00203A6E4F6465;
  v49._countAndFlagsBits = 0x696669646F6D202CLL;
  String.append(_:)(v49);
  v50 = [v93 modificationDate];
  if (v50)
  {
    v51 = v90;
    v52 = v50;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v53 = 0;
  }

  else
  {
    v53 = 1;
    v51 = v90;
  }

  v54 = v33;
  v88(v51, v53, 1, v33);
  v55 = v91;
  sub_1000EED5C(v51, v91);
  if (v32(v55, 1, v33))
  {
    sub_1000EEE6C(v55, &qword_1002F7EF0, &unk_100226C90);
    type metadata accessor for SoundProfileRecord(0);
    v56 = objc_opt_self();
    v57 = Date._bridgeToObjectiveC()().super.isa;
    v58 = [v56 localizedStringFromDate:v57 dateStyle:2 timeStyle:2];

    v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v61 = v60;
  }

  else
  {
    v62 = v87;
    (*(v34 + 16))(v87, v55, v33);
    sub_1000EEE6C(v55, &qword_1002F7EF0, &unk_100226C90);
    v63 = objc_opt_self();
    v64 = Date._bridgeToObjectiveC()().super.isa;
    v65 = [v63 localizedStringFromDate:v64 dateStyle:2 timeStyle:2];

    v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v61 = v66;

    (*(v34 + 8))(v62, v54);
  }

  v67 = v93;
  v68._countAndFlagsBits = v59;
  v68._object = v61;
  String.append(_:)(v68);

  v69._object = 0xEF203A7962206465;
  v69._countAndFlagsBits = 0x696669646F6D202CLL;
  String.append(_:)(v69);
  v70 = [v67 modifiedByDevice];
  if (v70)
  {
    v71 = v70;
    v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v74 = v73;
  }

  else
  {
    v74 = 0xE200000000000000;
    v72 = 15932;
  }

  v75._countAndFlagsBits = v72;
  v75._object = v74;
  String.append(_:)(v75);

  v76._countAndFlagsBits = 0x203A67617465202CLL;
  v76._object = 0xE800000000000000;
  String.append(_:)(v76);
  v77 = [v67 recordChangeTag];
  if (v77)
  {
    v78 = v77;
    v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v81 = v80;
  }

  else
  {
    v81 = 0xE200000000000000;
    v79 = 15932;
  }

  v82._countAndFlagsBits = v79;
  v82._object = v81;
  String.append(_:)(v82);

  countAndFlagsBits = v94._countAndFlagsBits;
  object = v94._object;
  v94 = v89;

  v85._countAndFlagsBits = countAndFlagsBits;
  v85._object = object;
  String.append(_:)(v85);

  return v94._countAndFlagsBits;
}

uint64_t sub_1000FB81C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a2;
  v3 = sub_1000EE870(&qword_1002F7EF0, &unk_100226C90);
  __chkstk_darwin(v3 - 8);
  v73 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v75 = &v70 - v6;
  __chkstk_darwin(v7);
  v78 = &v70 - v8;
  v9 = type metadata accessor for Date();
  v79 = *(v9 - 8);
  v80 = v9;
  __chkstk_darwin(v9);
  v74 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v77 = &v70 - v12;
  v13 = type metadata accessor for URL();
  v82 = *(v13 - 8);
  v83 = v13;
  __chkstk_darwin(v13);
  v85 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for UUID();
  v84 = *(v81 - 1);
  __chkstk_darwin(v81);
  v16 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000EE870(&qword_1002F8130, &qword_100227338);
  v86 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = &v70 - v18;
  v20 = type metadata accessor for SoundProfileRecord(0);
  __chkstk_darwin(v20);
  v22 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000EF78C(a1, a1[3]);
  sub_1000FE260();
  v23 = v87;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v23)
  {
    return sub_1000EF824(a1);
  }

  v24 = v85;
  v71 = v22;
  v72 = v20;
  v87 = a1;
  v89 = 0;
  sub_1000EF8C4();
  v25 = v19;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v26 = v17;
  v28 = v71;
  *v71 = *v88;
  LOBYTE(v88[0]) = 1;
  sub_1000FDE18(&unk_1002F8750, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v29 = v16;
  v30 = v81;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v31 = v72;
  (*(v84 + 32))(&v28[*(v72 + 20)], v29, v30);
  LOBYTE(v88[0]) = 2;
  sub_1000FDE18(&qword_1002F8138, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  v32 = v83;
  v70 = 0;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v82 + 32))(&v28[*(v31 + 24)], v24, v32);
  v33 = *(v31 + 28);
  static Date.now.getter();
  LOBYTE(v88[0]) = 3;
  sub_1000FDE18(&qword_1002F7D90, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v34 = v78;
  v35 = v80;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v85 = v25;
  v36 = v79;
  v37 = v79 + 48;
  v84 = *(v79 + 48);
  if ((v84)(v34, 1, v35) == 1)
  {
    v38 = objc_autoreleasePoolPush();
    v39 = v71;
    isa = sub_100169D38(*v71, *(v71 + 1));
    v83 = v37;
    if (!isa)
    {
      isa = sub_1000F82C4().super.isa;
    }

    v82 = v33;
    v88[0] = isa;
    v41 = isa;
    sub_1000FD23C(v88);
    objc_autoreleasePoolPop(v38);
    v42 = [v41 modificationDate];

    if (v42)
    {
      v43 = v74;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v86 + 8))(v85, v26);
      v44 = v79;
      v35 = v80;
      v45 = *(v79 + 32);
      v46 = v75;
      v45(v75, v43, v80);
      (*(v44 + 56))(v46, 0, 1, v35);
      v45(v77, v46, v35);
      v47 = v87;
      v48 = v76;
      v49 = v78;
      v33 = v82;
      v50 = (v84)(v78, 1, v35);
    }

    else
    {
      v52 = *(v79 + 56);
      v53 = v75;
      v52();
      v81 = objc_autoreleasePoolPush();
      v54 = sub_100169D38(*v39, *(v39 + 1));
      v55 = v74;
      if (!v54)
      {
        v54 = sub_1000F82C4().super.isa;
      }

      v56 = v86;
      v88[0] = v54;
      v57 = v54;
      sub_1000FD23C(v88);
      objc_autoreleasePoolPop(v81);
      v58 = [v57 creationDate];

      if (v58)
      {
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        (*(v56 + 8))(v85, v26);
        v59 = *(v79 + 32);
        v60 = v73;
        v61 = v55;
        v62 = v80;
        v59(v73, v61, v80);
        (v52)(v60, 0, 1, v62);
        v59(v77, v60, v62);
        v35 = v62;
        v63 = v75;
        v48 = v76;
        v47 = v87;
        v33 = v82;
      }

      else
      {
        v64 = v73;
        v65 = v52;
        v35 = v80;
        (v65)(v73, 1, 1, v80);
        static Date.now.getter();
        (*(v56 + 8))(v85, v26);
        v66 = (v84)(v64, 1, v35);
        v47 = v87;
        v48 = v76;
        v33 = v82;
        v63 = v53;
        if (v66 != 1)
        {
          sub_1000EEE6C(v64, &qword_1002F7EF0, &unk_100226C90);
        }
      }

      v67 = v84;
      v68 = (v84)(v63, 1, v35);
      v49 = v78;
      if (v68 != 1)
      {
        sub_1000EEE6C(v63, &qword_1002F7EF0, &unk_100226C90);
      }

      v50 = v67(v49, 1, v35);
    }

    v51 = v77;
    if (v50 != 1)
    {
      sub_1000EEE6C(v49, &qword_1002F7EF0, &unk_100226C90);
    }
  }

  else
  {
    (*(v86 + 8))(v85, v26);
    v51 = v77;
    (*(v36 + 32))(v77, v34, v35);
    v47 = v87;
    v48 = v76;
  }

  v69 = v71;
  (*(v79 + 40))(&v71[v33], v51, v35);
  sub_1000FE2B4(v69, v48);
  sub_1000EF824(v47);
  return sub_1000FE318(v69);
}

void sub_1000FC2B4(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1000EE870(&qword_1002F7EF0, &unk_100226C90);
  __chkstk_darwin(v4 - 8);
  v70 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v74 = &v65 - v7;
  v72 = type metadata accessor for Date();
  v73 = *(v72 - 8);
  __chkstk_darwin(v72);
  v75 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v71 = &v65 - v10;
  v11 = type metadata accessor for URL();
  v77 = *(v11 - 8);
  v78 = v11;
  __chkstk_darwin(v11);
  v13 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v76 = &v65 - v15;
  v16 = sub_1000EE870(&qword_1002F8000, &unk_1002262C0);
  __chkstk_darwin(v16 - 8);
  v18 = &v65 - v17;
  v19 = type metadata accessor for UUID();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (CKRecord.recordType.getter() == 0xD000000000000012 && 0x80000001002270D0 == v23)
  {
  }

  else
  {
    v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v24 & 1) == 0)
    {
      sub_1000FDE60();
      swift_allocError();
      *v54 = 1;
      swift_willThrow();

      return;
    }
  }

  v69 = a2;
  v25 = [a1 recordID];
  v26 = [v25 recordName];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  UUID.init(uuidString:)();

  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_1000EEE6C(v18, &qword_1002F8000, &unk_1002262C0);
    v27 = static os_log_type_t.error.getter();
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    v28 = qword_100300E38;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_100226100;
    *(v29 + 56) = sub_1000FA784(0, &qword_1002F85A0, CKRecord_ptr);
    *(v29 + 64) = sub_1000FA830();
    *(v29 + 32) = a1;
    v30 = a1;
    os_log(_:dso:log:_:_:)(v27, &_mh_execute_header, v28, "Invalid Sound Profile Record - %@", 33, 2, v29);

    sub_1000FDE60();
    swift_allocError();
    *v31 = 0;
    swift_willThrow();

    return;
  }

  (*(v20 + 32))(v22, v18, v19);
  v32 = [a1 valueStore];
  sub_1000FA784(0, &unk_1002F9D60, CKRecordValueStore_ptr);
  CKRecordKeyValueSetting.subscript.getter();

  if (!v80)
  {
    sub_1000EEE6C(v79, &qword_1002F8058, &unk_100227110);
    goto LABEL_17;
  }

  sub_1000EE870(&unk_1002F9D70, &qword_100229A40);
  sub_1000FA784(0, &qword_1002F8048, CKAsset_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:
    sub_1000FDE60();
    swift_allocError();
    *v55 = 1;
    swift_willThrow();

    (*(v20 + 8))(v22, v19);
    return;
  }

  v33 = v81;
  v34 = [v81 fileURL];
  if (!v34)
  {

    goto LABEL_17;
  }

  v67 = v33;
  v35 = v34;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v77 + 32))(v76, v13, v78);
  v36 = type metadata accessor for SoundProfileRecord(0);
  (*(v20 + 16))(v69 + *(v36 + 20), v22, v19);
  v37 = [objc_allocWithZone(NSKeyedArchiver) initRequiringSecureCoding:1];
  [a1 encodeSystemFieldsWithCoder:v37];
  [v37 finishEncoding];
  v38 = [v37 encodedData];
  v39 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v41 = v40;

  v42 = v69;
  *v69 = v39;
  v42[1] = v41;
  v43 = v76;
  v44 = v77;
  v45 = v78;
  v68 = v36;
  (*(v77 + 16))(v42 + *(v36 + 24), v76, v78);
  v46 = [a1 modificationDate];
  if (v46)
  {
    v47 = v43;
    v48 = v46;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v44 + 8))(v47, v45);
    (*(v20 + 8))(v22, v19);
    v49 = v73;
    v50 = v74;
    v51 = *(v73 + 32);
    v52 = v72;
    v51(v74, v75, v72);
    (*(v49 + 56))(v50, 0, 1, v52);
    v53 = v71;
    v51(v71, v50, v52);
  }

  else
  {
    v49 = v73;
    v56 = *(v73 + 56);
    v52 = v72;
    v56(v74, 1, 1, v72);
    v57 = [a1 creationDate];
    if (v57)
    {
      v66 = v56;
      v58 = v75;
      v59 = v57;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v49 = v73;
      (*(v77 + 8))(v76, v78);
      (*(v20 + 8))(v22, v19);
      v60 = *(v49 + 32);
      v61 = v70;
      v60(v70, v58, v52);
      v66(v61, 0, 1, v52);
      v53 = v71;
      v60(v71, v61, v52);
      v62 = *(v49 + 48);
    }

    else
    {
      v63 = v70;
      v56(v70, 1, 1, v52);
      v53 = v71;
      static Date.now.getter();

      (*(v77 + 8))(v76, v78);
      (*(v20 + 8))(v22, v19);
      v62 = *(v49 + 48);
      if (v62(v63, 1, v52) != 1)
      {
        sub_1000EEE6C(v63, &qword_1002F7EF0, &unk_100226C90);
      }
    }

    v42 = v69;
    v64 = v74;
    if (v62(v74, 1, v52) != 1)
    {
      sub_1000EEE6C(v64, &qword_1002F7EF0, &unk_100226C90);
    }
  }

  (*(v49 + 32))(v42 + *(v68 + 28), v53, v52);
}

uint64_t sub_1000FCD2C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v41 = a3;
  v5 = sub_1000EE870(&qword_1002F8000, &unk_1002262C0);
  __chkstk_darwin(v5 - 8);
  v7 = &v39 - v6;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v40 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (CKRecord.recordType.getter() == 0xD000000000000012 && 0x80000001002270D0 == v11)
  {
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v12 & 1) == 0)
    {
      sub_1000FDE60();
      swift_allocError();
      v20 = 1;
      goto LABEL_11;
    }
  }

  v42 = a2;
  v13 = [a1 recordID];
  v14 = [v13 recordName];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  UUID.init(uuidString:)();

  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    v21 = v40;
    (*(v9 + 32))(v40, v7, v8);
    v22 = type metadata accessor for SoundProfileRecord(0);
    v23 = *(v22 + 20);
    v24 = *(v9 + 16);
    v25 = a1;
    v39 = a1;
    v26 = v41;
    v24(v41 + v23, v21, v8);
    v27 = [objc_allocWithZone(NSKeyedArchiver) initRequiringSecureCoding:1];
    [v25 encodeSystemFieldsWithCoder:v27];
    [v27 finishEncoding];
    v28 = [v27 encodedData];
    v29 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    *v26 = v29;
    v26[1] = v31;
    v32 = *(v22 + 24);
    v33 = type metadata accessor for URL();
    v34 = *(v33 - 8);
    v35 = v26 + v32;
    v36 = v42;
    (*(v34 + 16))(v35, v42, v33);
    static Date.now.getter();

    (*(v34 + 8))(v36, v33);
    return (*(v9 + 8))(v21, v8);
  }

  sub_1000EEE6C(v7, &qword_1002F8000, &unk_1002262C0);
  v15 = static os_log_type_t.error.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  v16 = qword_100300E38;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_100226100;
  *(v17 + 56) = sub_1000FA784(0, &qword_1002F85A0, CKRecord_ptr);
  *(v17 + 64) = sub_1000FA830();
  *(v17 + 32) = a1;
  v18 = a1;
  os_log(_:dso:log:_:_:)(v15, &_mh_execute_header, v16, "Invalid Sound Profile Record - %@", 33, 2, v17);

  sub_1000FDE60();
  swift_allocError();
  v20 = 0;
  a2 = v42;
LABEL_11:
  *v19 = v20;
  swift_willThrow();

  v38 = type metadata accessor for URL();
  return (*(*(v38 - 8) + 8))(a2, v38);
}

void sub_1000FD23C(id *a1)
{
  v2 = static os_log_type_t.debug.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  v3 = qword_100300E38;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100226100;
  v5 = *a1;
  v6 = [v5 description];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  *(v4 + 56) = &type metadata for String;
  *(v4 + 64) = sub_1000EE954();
  *(v4 + 32) = v7;
  *(v4 + 40) = v9;
  os_log(_:dso:log:_:_:)(v2, &_mh_execute_header, v3, "Updating sound profile record: %@", 33, 2, v4);

  v14 = [v5 valueStore];
  type metadata accessor for SoundProfileRecord(0);
  v10 = objc_allocWithZone(CKAsset);
  URL._bridgeToObjectiveC()(v11);
  v13 = v12;
  [v10 initWithFileURL:v12];

  sub_1000FA784(0, &qword_1002F8048, CKAsset_ptr);
  sub_1000FA784(0, &unk_1002F9D60, CKRecordValueStore_ptr);
  CKRecordKeyValueSetting.subscript.setter();
}

uint64_t sub_1000FD448(void *a1)
{
  v3 = v1;
  v5 = sub_1000EE870(&qword_1002F8118, &qword_100227330);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7];
  sub_1000EF78C(a1, a1[3]);
  sub_1000FE260();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = v3[1];
  v12 = *v3;
  v13 = v9;
  v11[15] = 0;
  sub_1000EE9F4(v12, v9);
  sub_1000EF9D8();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_1000EF870(v12, v13);
  if (!v2)
  {
    type metadata accessor for SoundProfileRecord(0);
    LOBYTE(v12) = 1;
    type metadata accessor for UUID();
    sub_1000FDE18(&qword_1002F8340, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v12) = 2;
    type metadata accessor for URL();
    sub_1000FDE18(&qword_1002F8128, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v12) = 3;
    type metadata accessor for Date();
    sub_1000FDE18(&qword_1002F7DB0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1000FD710()
{
  v1 = 0x74654D64756F6C63;
  v2 = 0xD000000000000014;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0x696669746E656469;
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

uint64_t sub_1000FD7A8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000FE48C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000FD7DC(uint64_t a1)
{
  v2 = sub_1000FE260();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000FD818(uint64_t a1)
{
  v2 = sub_1000FE260();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000FD88C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = type metadata accessor for Date();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

Swift::Int sub_1000FD904()
{
  Hasher.init(_seed:)();
  Data.hash(into:)();
  type metadata accessor for UUID();
  sub_1000FDE18(&unk_1002F8350, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for URL();
  sub_1000FDE18(&qword_1002F8140, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for Date();
  sub_1000FDE18(&qword_1002F7DE0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000FDA60(uint64_t a1)
{
  Data.hash(into:)();
  type metadata accessor for UUID();
  sub_1000FDE18(&unk_1002F8350, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for URL();
  sub_1000FDE18(&qword_1002F8140, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for Date();
  sub_1000FDE18(&qword_1002F7DE0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_1000FDBA8(uint64_t a1)
{
  Hasher.init(_seed:)();
  Data.hash(into:)();
  type metadata accessor for UUID();
  sub_1000FDE18(&unk_1002F8350, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for URL();
  sub_1000FDE18(&qword_1002F8140, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for Date();
  sub_1000FDE18(&qword_1002F7DE0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000FDD00(_BOOL8 *a1, uint64_t *a2, int *a3)
{
  if (!sub_100121564(*a1, a1[1], *a2, a2[1]) || (static UUID.== infix(_:_:)() & 1) == 0 || (static URL.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v6 = a3[7];

  return static Date.== infix(_:_:)(a1 + v6, a2 + v6);
}

uint64_t type metadata accessor for SoundProfileRecord(uint64_t a1)
{
  result = qword_1002F80B8;
  if (!qword_1002F80B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000FDE18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000FDE60()
{
  result = qword_1002F8050;
  if (!qword_1002F8050)
  {
    result = swift_getWitnessTable(&unk_1002272D4, &type metadata for SoundProfileRecord.SoundProfileRecordError, v0, v1);
    atomic_store(result, &qword_1002F8050);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SoundProfileRecord.SoundProfileRecordError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SoundProfileRecord.SoundProfileRecordError(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1000FE038(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for URL();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for Date();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1000FE0E4(uint64_t a1)
{
  *(a1 + 8) = sub_1000FDE18(&qword_1002F80F8, type metadata accessor for SoundProfileRecord, &unk_100227284);
  result = sub_1000FDE18(&qword_1002F9D80, type metadata accessor for SoundProfileRecord, &unk_1002272AC);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1000FE1B4()
{
  result = qword_1002F8108;
  if (!qword_1002F8108)
  {
    result = swift_getWitnessTable(&unk_10022725C, &type metadata for SoundProfileRecord.SoundProfileRecordError, v0, v1);
    atomic_store(result, &qword_1002F8108);
  }

  return result;
}

uint64_t sub_1000FE208(uint64_t a1)
{
  result = sub_1000FDE18(&qword_1002F8110, type metadata accessor for SoundProfileRecord, &unk_100227148);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000FE260()
{
  result = qword_1002F8120;
  if (!qword_1002F8120)
  {
    result = swift_getWitnessTable(&unk_100227404, &type metadata for SoundProfileRecord.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002F8120);
  }

  return result;
}

uint64_t sub_1000FE2B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SoundProfileRecord(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000FE318(uint64_t a1)
{
  v2 = type metadata accessor for SoundProfileRecord(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000FE388()
{
  result = qword_1002F8148;
  if (!qword_1002F8148)
  {
    result = swift_getWitnessTable(&unk_1002273DC, &type metadata for SoundProfileRecord.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002F8148);
  }

  return result;
}

unint64_t sub_1000FE3E0()
{
  result = qword_1002F8150;
  if (!qword_1002F8150)
  {
    result = swift_getWitnessTable(&unk_10022734C, &type metadata for SoundProfileRecord.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002F8150);
  }

  return result;
}

unint64_t sub_1000FE438()
{
  result = qword_1002F8158;
  if (!qword_1002F8158)
  {
    result = swift_getWitnessTable(&unk_100227374, &type metadata for SoundProfileRecord.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002F8158);
  }

  return result;
}

uint64_t sub_1000FE48C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74654D64756F6C63 && a2 == 0xED00006174616461;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000100267C20 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001002672B0 == a2)
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

uint64_t sub_1000FE614(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x6574656C6564;
  }

  else
  {
    v2 = 0x657461647075;
  }

  if (*a2)
  {
    v3 = 0x6574656C6564;
  }

  else
  {
    v3 = 0x657461647075;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

Swift::Int sub_1000FE694()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000FE704(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1000FE758(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000FE7C4@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1002BBBD8, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1000FE824(uint64_t *a1@<X8>)
{
  v2 = 0x657461647075;
  if (*v1)
  {
    v2 = 0x6574656C6564;
  }

  *a1 = v2;
  a1[1] = 0xE600000000000000;
}

uint64_t sub_1000FE904(void *a1)
{
  v3 = v1;
  v5 = sub_1000EE870(&qword_1002F8210, &qword_1002275F0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - v7;
  sub_1000EF78C(a1, a1[3]);
  sub_1000FF510();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v14) = *v3;
  v16 = 0;
  sub_1000FF564();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v14) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10 = type metadata accessor for BTDeferredRecord(0);
    LOBYTE(v14) = 2;
    type metadata accessor for UUID();
    sub_1000FF634(&qword_1002F8340, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v14) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v11 = &v3[*(v10 + 36)];
    v12 = v11[1];
    v14 = *v11;
    v15 = v12;
    v16 = 5;
    sub_1000FF5B8(v14, v12);
    sub_1000EF9D8();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_1000FF5CC(v14, v15);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1000FEBDC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = type metadata accessor for UUID();
  v28 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1000EE870(&qword_1002F8228, &qword_1002275F8);
  v27 = *(v29 - 8);
  __chkstk_darwin(v29);
  v8 = &v24 - v7;
  v9 = type metadata accessor for BTDeferredRecord(0);
  __chkstk_darwin(v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v31 = a1;
  sub_1000EF78C(a1, v12);
  sub_1000FF510();
  v30 = v8;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_1000EF824(v31);
  }

  v25 = v6;
  v13 = v11;
  v14 = v27;
  v15 = v28;
  v33 = 0;
  sub_1000FF5E0();
  v16 = v29;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *v13 = v32;
  LOBYTE(v32) = 1;
  *(v13 + 8) = KeyedDecodingContainer.decode(_:forKey:)();
  *(v13 + 16) = v17;
  LOBYTE(v32) = 2;
  sub_1000FF634(&unk_1002F8750, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v18 = v25;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v15 + 32))(v13 + v9[6], v18, v4);
  LOBYTE(v32) = 3;
  v19 = KeyedDecodingContainer.decode(_:forKey:)();
  v20 = (v13 + v9[7]);
  *v20 = v19;
  v20[1] = v21;
  LOBYTE(v32) = 4;
  KeyedDecodingContainer.decode(_:forKey:)();
  *(v13 + v9[8]) = v22;
  v33 = 5;
  sub_1000EF8C4();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v14 + 8))(v30, v16);
  *(v13 + v9[9]) = v32;
  sub_1000FF67C(v13, v26);
  sub_1000EF824(v31);
  return sub_1000FF6E0(v13);
}

unint64_t sub_1000FF0A4()
{
  v1 = *v0;
  v2 = 0x7079547265666564;
  v3 = 0xD000000000000010;
  v4 = 0x6D617473656D6974;
  if (v1 != 4)
  {
    v4 = 0x614464726F636572;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x795464726F636572;
  if (v1 != 1)
  {
    v5 = 0x696669746E656469;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000FF170@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000FF8A8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000FF198(uint64_t a1)
{
  v2 = sub_1000FF510();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000FF1D4(uint64_t a1)
{
  v2 = sub_1000FF510();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000FF210@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t type metadata accessor for BTDeferredRecord(uint64_t a1)
{
  result = qword_1002F81B8;
  if (!qword_1002F81B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000FF2F8(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    sub_1000FF3A4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000FF3A4()
{
  if (!qword_1002F81C8)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1002F81C8);
    }
  }
}

unint64_t sub_1000FF408()
{
  result = qword_1002F8208;
  if (!qword_1002F8208)
  {
    result = swift_getWitnessTable(&unk_100227558, &type metadata for BTDeferredRecord.BTDeferType, v0, v1);
    atomic_store(result, &qword_1002F8208);
  }

  return result;
}

uint64_t sub_1000FF45C(uint64_t a1)
{
  *(a1 + 8) = sub_1000FF634(&qword_1002F9E50, type metadata accessor for BTDeferredRecord, &unk_10022759C);
  result = sub_1000FF634(&unk_1002F9D20, type metadata accessor for BTDeferredRecord, &unk_1002275C4);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1000FF510()
{
  result = qword_1002F8218;
  if (!qword_1002F8218)
  {
    result = swift_getWitnessTable(&unk_1002276C4, &type metadata for BTDeferredRecord.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002F8218);
  }

  return result;
}

unint64_t sub_1000FF564()
{
  result = qword_1002F8220;
  if (!qword_1002F8220)
  {
    result = swift_getWitnessTable(&unk_100227490, &type metadata for BTDeferredRecord.BTDeferType, v0, v1);
    atomic_store(result, &qword_1002F8220);
  }

  return result;
}

void sub_1000FF5B8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    sub_1000EE9F4(a1, a2);
  }
}

uint64_t sub_1000FF5CC(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1000EF870(result, a2);
  }

  return result;
}

unint64_t sub_1000FF5E0()
{
  result = qword_1002F8230;
  if (!qword_1002F8230)
  {
    result = swift_getWitnessTable(&unk_1002274B8, &type metadata for BTDeferredRecord.BTDeferType, v0, v1);
    atomic_store(result, &qword_1002F8230);
  }

  return result;
}

uint64_t sub_1000FF634(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000FF67C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BTDeferredRecord(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000FF6E0(uint64_t a1)
{
  v2 = type metadata accessor for BTDeferredRecord(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000FF73C()
{
  result = qword_1002F8238;
  if (!qword_1002F8238)
  {
    result = swift_getWitnessTable(&unk_1002274E0, &type metadata for BTDeferredRecord.BTDeferType, v0, v1);
    atomic_store(result, &qword_1002F8238);
  }

  return result;
}

unint64_t sub_1000FF7A4()
{
  result = qword_1002F8240;
  if (!qword_1002F8240)
  {
    result = swift_getWitnessTable(&unk_10022769C, &type metadata for BTDeferredRecord.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002F8240);
  }

  return result;
}

unint64_t sub_1000FF7FC()
{
  result = qword_1002F8248;
  if (!qword_1002F8248)
  {
    result = swift_getWitnessTable(&unk_10022760C, &type metadata for BTDeferredRecord.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002F8248);
  }

  return result;
}

unint64_t sub_1000FF854()
{
  result = qword_1002F8250;
  if (!qword_1002F8250)
  {
    result = swift_getWitnessTable(&unk_100227634, &type metadata for BTDeferredRecord.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002F8250);
  }

  return result;
}

uint64_t sub_1000FF8A8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7079547265666564 && a2 == 0xE900000000000065;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x795464726F636572 && a2 == 0xEA00000000006570 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000100267080 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x614464726F636572 && a2 == 0xEA00000000006174)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1000FFAC4()
{
  v0 = sub_1000EE870(&unk_1002F7BA0, &unk_1002270E0);
  __chkstk_darwin(v0 - 8);
  v2 = &v9 - v1;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000EE8B8(v7, qword_100300B80);
  sub_1000EE91C(v3, qword_100300B80);
  URL.init(string:)();
  result = (*(v4 + 48))(v2, 1, v3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    URL.appendingPathComponent(_:isDirectory:)();
    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

id sub_1000FFC8C()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v93 = *(v2 - 8);
  __chkstk_darwin(v2);
  v89 = &v88 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000EE870(&qword_1002F7EF0, &unk_100226C90);
  __chkstk_darwin(v4 - 8);
  v91 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v88 - v7;
  __chkstk_darwin(v9);
  v11 = &v88 - v10;
  __chkstk_darwin(v12);
  v14 = &v88 - v13;
  v15 = objc_autoreleasePoolPush();
  v16 = type metadata accessor for LegacyAccountMagicKeysRecord(0);
  isa = sub_100169D38(*(v1 + *(v16 + 24)), *(v1 + *(v16 + 24) + 8));
  v92 = v8;
  if (!isa)
  {
    isa = sub_1000F7F40().super.isa;
  }

  v18 = isa;
  v94[0] = isa;
  sub_100101534(v94);
  objc_autoreleasePoolPop(v15);
  v94[0] = 0;
  v94[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(41);

  v94[0] = 0xD000000000000011;
  v94[1] = 0x8000000100267CC0;
  type metadata accessor for UUID();
  sub_1001024FC(&unk_1002F7BC0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v19._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v19);

  v20._countAndFlagsBits = 0x3A79656B202D2029;
  v20._object = 0xE900000000000020;
  String.append(_:)(v20);
  v21 = IsAppleInternalBuild();
  v22 = Data.subdata(in:)();
  v24 = v22;
  v25 = v23;
  if (v21)
  {
    v26 = Data.hexString.getter(v22, v23);
  }

  else
  {
    v26 = Data.description.getter();
  }

  v28 = v26;
  v29 = v27;
  sub_1000EF870(v24, v25);
  v30._countAndFlagsBits = v28;
  v30._object = v29;
  String.append(_:)(v30);

  v31._countAndFlagsBits = 0x203A746E6968202CLL;
  v31._object = 0xE800000000000000;
  String.append(_:)(v31);
  LODWORD(v28) = IsAppleInternalBuild();
  v32 = Data.subdata(in:)();
  v34 = v32;
  v35 = v33;
  if (v28)
  {
    v36 = Data.hexString.getter(v32, v33);
  }

  else
  {
    v36 = Data.description.getter();
  }

  v38 = v36;
  v39 = v37;
  sub_1000EF870(v34, v35);
  v40._countAndFlagsBits = v38;
  v40._object = v39;
  String.append(_:)(v40);

  v41._countAndFlagsBits = 10;
  v41._object = 0xE100000000000000;
  String.append(_:)(v41);
  v42 = v94[1];
  v90 = v94[0];
  v94[0] = 0;
  v94[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(49);

  strcpy(v94, "   createdOn: ");
  HIBYTE(v94[1]) = -18;
  v43 = [v18 creationDate];
  v44 = v93;
  if (v43)
  {
    v45 = v43;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v46 = v44[7];
    v46(v11, 0, 1, v2);
  }

  else
  {
    v46 = *(v93 + 56);
    v46(v11, 1, 1, v2);
  }

  sub_1000EED5C(v11, v14);
  v47 = v44[6];
  if (v47(v14, 1, v2))
  {
    sub_100102138(v14);
    v48 = 0xE200000000000000;
    v49 = 15932;
  }

  else
  {
    v50 = v44[2];
    v88 = v42;
    v51 = v89;
    v50(v89, v14, v2);
    sub_100102138(v14);
    v52 = objc_opt_self();
    v53 = Date._bridgeToObjectiveC()().super.isa;
    v54 = [v52 localizedStringFromDate:v53 dateStyle:2 timeStyle:2];

    v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v48 = v56;

    v44 = v93;
    v57 = v51;
    v42 = v88;
    (*(v93 + 8))(v57, v2);
    v49 = v55;
  }

  v58 = v48;
  String.append(_:)(*&v49);

  v59._countAndFlagsBits = 0x696669646F6D202CLL;
  v59._object = 0xEE00203A6E4F6465;
  String.append(_:)(v59);
  v60 = [v18 modificationDate];
  if (v60)
  {
    v61 = v91;
    v62 = v60;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v63 = 0;
  }

  else
  {
    v63 = 1;
    v61 = v91;
  }

  v46(v61, v63, 1, v2);
  v64 = v92;
  sub_1000EED5C(v61, v92);
  if (v47(v64, 1, v2))
  {
    sub_100102138(v64);
    v65 = 0xE200000000000000;
    v66 = 15932;
  }

  else
  {
    v67 = v42;
    v68 = v89;
    (v44[2])(v89, v64, v2);
    sub_100102138(v64);
    v69 = objc_opt_self();
    v70 = Date._bridgeToObjectiveC()().super.isa;
    v71 = v44;
    v72 = [v69 localizedStringFromDate:v70 dateStyle:2 timeStyle:2];

    v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v65 = v74;

    v75 = v68;
    v42 = v67;
    (v71[1])(v75, v2);
    v66 = v73;
  }

  v76 = v65;
  String.append(_:)(*&v66);

  v77._object = 0xEF203A7962206465;
  v77._countAndFlagsBits = 0x696669646F6D202CLL;
  String.append(_:)(v77);
  v78 = [v18 modifiedByDevice];
  if (v78)
  {
    v79 = v78;
    v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v82 = v81;
  }

  else
  {
    v82 = 0xE200000000000000;
    v80 = 15932;
  }

  v83._countAndFlagsBits = v80;
  v83._object = v82;
  String.append(_:)(v83);

  v84 = v94[0];
  v85 = v94[1];
  v94[0] = v90;
  v94[1] = v42;

  v86._countAndFlagsBits = v84;
  v86._object = v85;
  String.append(_:)(v86);

  return v94[0];
}

uint64_t sub_1001003DC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000EE870(&qword_1002F7EF0, &unk_100226C90);
  __chkstk_darwin(v4 - 8);
  v65 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v69 = &v63 - v7;
  v8 = type metadata accessor for Date();
  v67 = *(v8 - 8);
  v68 = v8;
  __chkstk_darwin(v8);
  v10 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v66 = &v63 - v12;
  v13 = sub_1000EE870(&qword_1002F8000, &unk_1002262C0);
  __chkstk_darwin(v13 - 8);
  v15 = &v63 - v14;
  UUID.init(uuidString:)();
  v16 = type metadata accessor for UUID();
  v17 = *(v16 - 8);
  result = (*(v17 + 48))(v15, 1, v16);
  if (result == 1)
  {
    goto LABEL_34;
  }

  (*(v17 + 32))(a2, v15, v16);
  if (CKRecord.recordType.getter() == 0x654B72657473614DLL && v19 == 0xE900000000000079)
  {
  }

  else
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v20 & 1) == 0)
    {
      sub_100102068();
      swift_allocError();
      *v27 = 0;
      swift_willThrow();
LABEL_24:

      return (*(v17 + 8))(a2, v16);
    }
  }

  v70 = a2;
  v21 = [a1 encryptedValues];
  v22 = String._bridgeToObjectiveC()();
  v23 = [v21 objectForKeyedSubscript:v22];

  if (!v23 || (v73 = v23, sub_1000EE870(&qword_1002F8610, &unk_1002262D0), result = swift_dynamicCast(), (result & 1) == 0))
  {
LABEL_21:
    v49 = static os_log_type_t.error.getter();
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    v50 = qword_100300E38;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_100226100;
    *(v51 + 56) = sub_1000EEE20();
    *(v51 + 64) = sub_1001024FC(&qword_1002F7BE0, sub_1000EEE20, &protocol conformance descriptor for NSObject);
    *(v51 + 32) = a1;
    v52 = a1;
    os_log(_:dso:log:_:_:)(v49, &_mh_execute_header, v50, "Invalid LegacyAccountMagicKeysRecord - %@", 41, 2, v51);

    sub_100102068();
    swift_allocError();
    *v53 = 2;
    swift_willThrow();
    swift_unknownObjectRelease();
    a2 = v70;
    goto LABEL_24;
  }

  v24 = v71;
  v25 = v72;
  v26 = v72 >> 62;
  if ((v72 >> 62) > 1)
  {
    if (v26 == 2)
    {
      v29 = *(v71 + 16);
      v28 = *(v71 + 24);
      v30 = __OFSUB__(v28, v29);
      v31 = v28 - v29;
      if (v30)
      {
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        return result;
      }

      if (v31 == 33)
      {
        goto LABEL_16;
      }
    }

LABEL_20:
    sub_1000EF870(v71, v72);
    goto LABEL_21;
  }

  if (!v26)
  {
    if (BYTE6(v72) != 33)
    {
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  if (__OFSUB__(HIDWORD(v71), v71))
  {
    goto LABEL_33;
  }

  if (HIDWORD(v71) - v71 != 33)
  {
    goto LABEL_20;
  }

LABEL_16:
  v32 = type metadata accessor for LegacyAccountMagicKeysRecord(0);
  v33 = (v70 + *(v32 + 20));
  *v33 = v24;
  v33[1] = v25;
  v34 = [objc_allocWithZone(NSKeyedArchiver) initRequiringSecureCoding:1];
  [a1 encodeSystemFieldsWithCoder:v34];
  [v34 finishEncoding];
  v35 = [v34 encodedData];
  v36 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v38 = v37;

  v64 = v32;
  v39 = (v70 + *(v32 + 24));
  *v39 = v36;
  v39[1] = v38;
  v40 = [a1 modificationDate];
  if (v40)
  {
    v41 = v40;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    swift_unknownObjectRelease();
    v43 = v67;
    v42 = v68;
    v44 = *(v67 + 32);
    v45 = v69;
    v44(v69, v10, v68);
    (*(v43 + 56))(v45, 0, 1, v42);
    v46 = v66;
    v44(v66, v45, v42);
    v47 = v70;
    v48 = v64;
  }

  else
  {
    v43 = v67;
    v42 = v68;
    v54 = *(v67 + 56);
    v54(v69, 1, 1, v68);
    v55 = [a1 creationDate];
    if (v55)
    {
      v56 = v55;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      swift_unknownObjectRelease();
      v57 = *(v43 + 32);
      v58 = v65;
      v57(v65, v10, v42);
      v54(v58, 0, 1, v42);
      v46 = v66;
      v57(v66, v58, v42);
      v59 = *(v43 + 48);
    }

    else
    {
      v60 = v65;
      v54(v65, 1, 1, v42);
      v61 = v60;
      v46 = v66;
      static Date.now.getter();
      swift_unknownObjectRelease();

      v59 = *(v43 + 48);
      if (v59(v61, 1, v42) != 1)
      {
        sub_100102138(v61);
      }
    }

    v62 = v69;
    v47 = v70;
    v48 = v64;
    if (v59(v69, 1, v42) != 1)
    {
      sub_100102138(v62);
    }
  }

  return (*(v43 + 32))(v47 + *(v48 + 28), v46, v42);
}

uint64_t sub_100100BEC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v4 = sub_1000EE870(&qword_1002F7EF0, &unk_100226C90);
  __chkstk_darwin(v4 - 8);
  v66 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v68 = (&v61 - v7);
  __chkstk_darwin(v8);
  v71 = &v61 - v9;
  v10 = type metadata accessor for Date();
  v74 = *(v10 - 8);
  v75 = v10;
  __chkstk_darwin(v10);
  v67 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v69 = &v61 - v13;
  v14 = sub_1000EE870(&qword_1002F8348, &qword_100227970);
  v72 = *(v14 - 8);
  v73 = v14;
  __chkstk_darwin(v14);
  v16 = &v61 - v15;
  v17 = sub_1000EE870(&qword_1002F8000, &unk_1002262C0);
  __chkstk_darwin(v17 - 8);
  v19 = &v61 - v18;
  v20 = type metadata accessor for LegacyAccountMagicKeysRecord(0);
  __chkstk_darwin(v20);
  v22 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init(uuidString:)();
  v23 = type metadata accessor for UUID();
  v24 = *(v23 - 8);
  result = (*(v24 + 48))(v19, 1, v23);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v24 + 32))(v22, v19, v23);
    v26 = a1;
    v27 = a1[3];
    v76 = v26;
    sub_1000EF78C(v26, v27);
    sub_1001023E8();
    dispatch thunk of Decoder.container<A>(keyedBy:)();
    if (v2)
    {
      sub_1000EF824(v76);
      return (*(v24 + 8))(v22, v23);
    }

    else
    {
      v78 = 1;
      sub_1000EF8C4();
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      *&v22[v20[5]] = v77;
      v78 = 2;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v64 = &v22[v20[6]];
      *v64 = v77;
      v65 = v20[7];
      static Date.now.getter();
      LOBYTE(v77) = 3;
      sub_1001024FC(&qword_1002F7D90, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v28 = v75;
      KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
      v29 = v64;
      v30 = v74;
      v31 = v74[6];
      v32 = v71;
      v63 = v74 + 6;
      if (v31(v71, 1, v28) == 1)
      {
        v33 = objc_autoreleasePoolPush();
        isa = sub_100169D38(*v29, *(v29 + 1));
        v62 = v31;
        if (!isa)
        {
          isa = sub_1000F7F40().super.isa;
        }

        v35 = v68;
        *&v77 = isa;
        v36 = isa;
        sub_100101534(&v77);
        objc_autoreleasePoolPop(v33);
        v37 = [v36 modificationDate];

        if (v37)
        {
          v38 = v67;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          (*(v72 + 8))(v16, v73);
          v39 = v74;
          v40 = v74[4];
          v41 = v38;
          v42 = v75;
          v40(v35, v41, v75);
          (v39[7])(v35, 0, 1, v42);
          v43 = v69;
          v40(v69, v35, v42);
          v44 = v42;
          v45 = v71;
          v46 = v65;
        }

        else
        {
          v68 = v74[7];
          v68(v35, 1, 1, v75);
          v63 = objc_autoreleasePoolPush();
          v47 = sub_100169D38(*v29, *(v29 + 1));
          if (!v47)
          {
            v47 = sub_1000F7F40().super.isa;
          }

          *&v77 = v47;
          v48 = v47;
          sub_100101534(&v77);
          objc_autoreleasePoolPop(v63);
          v49 = [v48 creationDate];

          if (v49)
          {
            v50 = v67;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            (*(v72 + 8))(v16, v73);
            v51 = v74[4];
            v52 = v66;
            v53 = v50;
            v54 = v75;
            v51(v66, v53, v75);
            v68(v52, 0, 1, v54);
            v44 = v54;
            v43 = v69;
            v51(v69, v52, v44);
            v45 = v71;
          }

          else
          {
            v55 = v66;
            v56 = v75;
            v68(v66, 1, 1, v75);
            v44 = v56;
            v43 = v69;
            static Date.now.getter();
            v57 = v55;
            (*(v72 + 8))(v16, v73);
            v58 = v62(v55, 1, v44);
            v45 = v71;
            if (v58 != 1)
            {
              sub_100102138(v57);
            }
          }

          v59 = v62(v35, 1, v44);
          v46 = v65;
          if (v59 != 1)
          {
            sub_100102138(v35);
          }
        }

        v60 = v62(v45, 1, v44);
        v30 = v74;
        if (v60 != 1)
        {
          sub_100102138(v45);
        }
      }

      else
      {
        v44 = v28;
        (*(v72 + 8))(v16, v73);
        v43 = v69;
        (v30[4])(v69, v32, v44);
        v46 = v65;
      }

      (v30[5])(&v22[v46], v43, v44);
      sub_10010243C(v22, v70);
      sub_1000EF824(v76);
      return sub_1001024A0(v22);
    }
  }

  return result;
}

uint64_t sub_100101534(id *a1)
{
  v2 = [*a1 encryptedValues];
  swift_getObjectType();
  CKRecordKeyValueSetting.subscript.getter();
  v3 = (v1 + *(type metadata accessor for LegacyAccountMagicKeysRecord(0) + 20));
  v5 = *v3;
  v4 = v3[1];
  if (v15 >> 60 == 15)
  {
    if (v4 >> 60 == 15)
    {
      sub_1000EE9F4(v5, v4);
      swift_unknownObjectRelease();
      return sub_1000FF5CC(v14, v15);
    }

    goto LABEL_5;
  }

  if (v4 >> 60 == 15)
  {
LABEL_5:
    sub_1000EE9F4(v5, v4);
    sub_1000FF5CC(v14, v15);
    sub_1000FF5CC(v5, v4);
LABEL_6:
    v7 = static os_log_type_t.info.getter();
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    v8 = qword_100300E38;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_100226100;
    v10 = Data.hexString.getter(v5, v4);
    v12 = v11;
    *(v9 + 56) = &type metadata for String;
    *(v9 + 64) = sub_1000EE954();
    *(v9 + 32) = v10;
    *(v9 + 40) = v12;
    os_log(_:dso:log:_:_:)(v7, &_mh_execute_header, v8, "Updating LegacyAccountMagicKeysRecord to %@", 43, 2, v9);

    sub_1000EE9F4(v5, v4);
    CKRecordKeyValueSetting.subscript.setter();
    return swift_unknownObjectRelease();
  }

  sub_1000EE9F4(v5, v4);
  sub_1000EE9F4(v5, v4);
  sub_1000FF5B8(v14, v15);
  v13 = sub_100121564(v14, v15, v5, v4);
  sub_1000EF870(v5, v4);
  sub_1000FF5CC(v14, v15);
  sub_1000FF5CC(v5, v4);
  sub_1000FF5CC(v14, v15);
  if (!v13)
  {
    goto LABEL_6;
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_1001017E0(void *a1)
{
  v3 = v1;
  v5 = sub_1000EE870(&qword_1002F8330, &qword_100227968);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - v7;
  sub_1000EF78C(a1, a1[3]);
  sub_1001023E8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v17) = 0;
  type metadata accessor for UUID();
  sub_1001024FC(&qword_1002F8340, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for LegacyAccountMagicKeysRecord(0);
    v10 = (v3 + *(v9 + 20));
    v11 = v10[1];
    v17 = *v10;
    v18 = v11;
    v16 = 1;
    sub_1000EE9F4(v17, v11);
    sub_1000EF9D8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1000EF870(v17, v18);
    v12 = (v3 + *(v9 + 24));
    v13 = v12[1];
    v17 = *v12;
    v18 = v13;
    v16 = 2;
    sub_1000EE9F4(v17, v13);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1000EF870(v17, v18);
    LOBYTE(v17) = 3;
    type metadata accessor for Date();
    sub_1001024FC(&qword_1002F7DB0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_100101A8C()
{
  v1 = 0x696669746E656469;
  v2 = 0x74654D64756F6C63;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0x4B746E756F636361;
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

uint64_t sub_100101B28@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10010265C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100101B50(uint64_t a1)
{
  v2 = sub_1001023E8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100101B8C(uint64_t a1)
{
  v2 = sub_1001023E8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100101C00(uint64_t a1)
{
  v2 = v1 + *(a1 + 24);
  v3 = *v2;
  sub_1000EE9F4(*v2, *(v2 + 8));
  return v3;
}

Swift::Int sub_100101C40(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_1001024FC(&unk_1002F8350, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  Data.hash(into:)();
  Data.hash(into:)();
  type metadata accessor for Date();
  sub_1001024FC(&qword_1002F7DE0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100101D54(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UUID();
  sub_1001024FC(&unk_1002F8350, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  Data.hash(into:)();
  Data.hash(into:)();
  type metadata accessor for Date();
  sub_1001024FC(&qword_1002F7DE0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_100101E50(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_1001024FC(&unk_1002F8350, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  Data.hash(into:)();
  Data.hash(into:)();
  type metadata accessor for Date();
  sub_1001024FC(&qword_1002F7DE0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100101F60(uint64_t a1, uint64_t a2, int *a3)
{
  if ((static UUID.== infix(_:_:)() & 1) == 0 || !sub_100121564(*(a1 + a3[5]), *(a1 + a3[5] + 8), *(a2 + a3[5]), *(a2 + a3[5] + 8)) || !sub_100121564(*(a1 + a3[6]), *(a1 + a3[6] + 8), *(a2 + a3[6]), *(a2 + a3[6] + 8)))
  {
    return 0;
  }

  v6 = a3[7];

  return static Date.== infix(_:_:)(a1 + v6, a2 + v6);
}

uint64_t sub_100102000@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

unint64_t sub_100102068()
{
  result = qword_1002F8258;
  if (!qword_1002F8258)
  {
    result = swift_getWitnessTable(&unk_100227900, &type metadata for LegacyAccountMagicKeysRecord.LegacyAccountMagicKeysRecordError, v0, v1);
    atomic_store(result, &qword_1002F8258);
  }

  return result;
}

uint64_t type metadata accessor for LegacyAccountMagicKeysRecord(uint64_t a1)
{
  result = qword_1002F82C8;
  if (!qword_1002F82C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100102138(uint64_t a1)
{
  v2 = sub_1000EE870(&qword_1002F7EF0, &unk_100226C90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001021D8(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Date();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10010226C(uint64_t a1)
{
  *(a1 + 8) = sub_1001024FC(&qword_1002F9DE0, type metadata accessor for LegacyAccountMagicKeysRecord, &unk_1002278D8);
  result = sub_1001024FC(&qword_1002F8310, type metadata accessor for LegacyAccountMagicKeysRecord, &unk_100227940);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100102338(uint64_t a1)
{
  result = sub_1001024FC(&qword_1002F8320, type metadata accessor for LegacyAccountMagicKeysRecord, &unk_100227780);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100102394()
{
  result = qword_1002F8328;
  if (!qword_1002F8328)
  {
    result = swift_getWitnessTable(&unk_1002278B0, &type metadata for LegacyAccountMagicKeysRecord.LegacyAccountMagicKeysRecordError, v0, v1);
    atomic_store(result, &qword_1002F8328);
  }

  return result;
}

unint64_t sub_1001023E8()
{
  result = qword_1002F8338;
  if (!qword_1002F8338)
  {
    result = swift_getWitnessTable(&unk_100227A3C, &type metadata for LegacyAccountMagicKeysRecord.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002F8338);
  }

  return result;
}

uint64_t sub_10010243C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LegacyAccountMagicKeysRecord(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001024A0(uint64_t a1)
{
  v2 = type metadata accessor for LegacyAccountMagicKeysRecord(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001024FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100102558()
{
  result = qword_1002F8360;
  if (!qword_1002F8360)
  {
    result = swift_getWitnessTable(&unk_100227A14, &type metadata for LegacyAccountMagicKeysRecord.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002F8360);
  }

  return result;
}

unint64_t sub_1001025B0()
{
  result = qword_1002F8368;
  if (!qword_1002F8368)
  {
    result = swift_getWitnessTable(&unk_100227984, &type metadata for LegacyAccountMagicKeysRecord.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002F8368);
  }

  return result;
}

unint64_t sub_100102608()
{
  result = qword_1002F8370;
  if (!qword_1002F8370)
  {
    result = swift_getWitnessTable(&unk_1002279AC, &type metadata for LegacyAccountMagicKeysRecord.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002F8370);
  }

  return result;
}

uint64_t sub_10010265C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4B746E756F636361 && a2 == 0xEF626F6C42737965 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74654D64756F6C63 && a2 == 0xED00006174616461 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001002672B0 == a2)
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

uint64_t sub_100102AE0(uint64_t a1)
{
  v2 = sub_1000EE870(&unk_1002F9C10, &qword_100228390);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_100102B48(char *a1, uint64_t a2, int a3)
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = &v3[OBJC_IVAR____TtC15audioaccessoryd17BTUserTransaction_name];
  *v11 = 0;
  *(v11 + 1) = 0;
  *&v3[OBJC_IVAR____TtC15audioaccessoryd17BTUserTransaction_underlyingTransaction] = 0;
  *&v3[OBJC_IVAR____TtC15audioaccessoryd17BTUserTransaction_underlyingActivity] = 0;
  v12 = &v3[OBJC_IVAR____TtC15audioaccessoryd17BTUserTransaction_activityState];
  v13 = type metadata accessor for BTUserTransaction();
  *v12 = 0;
  *(v12 + 1) = 0;
  v50.receiver = v3;
  v50.super_class = v13;
  result = objc_msgSendSuper2(&v50, "init");
  v15 = result;
  v47 = a3;
  v46 = a2;
  if (a3)
  {
    if (!(a1 >> 32))
    {
      if ((a1 & 0xFFFFF800) == 0xD800)
      {
LABEL_21:
        __break(1u);
        return result;
      }

      if (a1 >> 16 <= 0x10)
      {
        v17 = (a1 & 0x3F) << 8;
        v18 = (a1 >> 6) + v17 + 33217;
        v19 = (v17 | (a1 >> 6) & 0x3F) << 8;
        v20 = (a1 >> 18) + ((v19 | (a1 >> 12) & 0x3F) << 8) - 2122219023;
        v21 = (a1 >> 12) + v19 + 8487393;
        if (a1 >> 16)
        {
          v22 = v20;
        }

        else
        {
          v22 = v21;
        }

        if (a1 < 0x800)
        {
          v22 = v18;
        }

        if (a1 <= 0x7F)
        {
          v22 = a1 + 1;
        }

        v48 = (v22 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v22) >> 3))));
        v23 = result;
        goto LABEL_15;
      }

LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (!a1)
  {
    __break(1u);
    goto LABEL_19;
  }

  v16 = result;
LABEL_15:
  v48 = static String._fromUTF8Repairing(_:)();
  v49 = v24;

  v25._countAndFlagsBits = 46;
  v25._object = 0xE100000000000000;
  String.append(_:)(v25);

  v26 = v48;
  v27 = v49;
  UUID.init()();
  v28 = UUID.uuidString.getter();
  v30 = v29;
  (*(v8 + 8))(v10, v7);
  v48 = v26;
  v49 = v27;

  v31._countAndFlagsBits = v28;
  v31._object = v30;
  String.append(_:)(v31);

  v32 = v49;
  v33 = &v15[OBJC_IVAR____TtC15audioaccessoryd17BTUserTransaction_name];
  *v33 = v48;
  v33[1] = v32;

  String.utf8CString.getter();

  v34 = os_transaction_create();

  *&v15[OBJC_IVAR____TtC15audioaccessoryd17BTUserTransaction_underlyingTransaction] = v34;
  swift_unknownObjectRelease();
  v35 = _BTActivityCreate(_:dso:)(a1, v46, v47, &_mh_execute_header);
  *&v15[OBJC_IVAR____TtC15audioaccessoryd17BTUserTransaction_underlyingActivity] = v35;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v36 = OBJC_IVAR____TtC15audioaccessoryd17BTUserTransaction_activityState;
  swift_beginAccess();
  os_activity_scope_enter(v35, &v15[v36]);
  swift_endAccess();
  swift_unknownObjectRelease();
  v37 = static os_log_type_t.default.getter();
  if (qword_1002F7B08 != -1)
  {
    swift_once();
  }

  v38 = qword_100300E58;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_100226100;
  v40 = v15;
  v41 = [v40 description];
  v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v44 = v43;

  *(v39 + 56) = &type metadata for String;
  *(v39 + 64) = sub_1000EE954();
  *(v39 + 32) = v42;
  *(v39 + 40) = v44;
  os_log(_:dso:log:_:_:)(v37, &_mh_execute_header, v38, "Opened %@", 9, 2, v39);

  return v40;
}

void static BTUserTransaction.named(_:with:)(char *a1, uint64_t a2, int a3, void (*a4)(void))
{
  v8 = objc_allocWithZone(type metadata accessor for BTUserTransaction());
  v9 = sub_100102B48(a1, a2, a3);
  a4();
}

{
  v8 = objc_allocWithZone(type metadata accessor for BTUserTransaction());
  v9 = sub_100102B48(a1, a2, a3);
  a4();
}

id BTUserTransaction.__deallocating_deinit(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15audioaccessoryd17BTUserTransaction_underlyingTransaction;
  if (*&v1[OBJC_IVAR____TtC15audioaccessoryd17BTUserTransaction_underlyingTransaction])
  {
    v3 = static os_log_type_t.default.getter();
    if (qword_1002F7B08 != -1)
    {
      swift_once();
    }

    v4 = qword_100300E58;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_100226100;
    v6 = v1;
    v7 = [v6 description];
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    *(v5 + 56) = &type metadata for String;
    *(v5 + 64) = sub_1000EE954();
    *(v5 + 32) = v8;
    *(v5 + 40) = v10;
    os_log(_:dso:log:_:_:)(v3, &_mh_execute_header, v4, "Closed %@", 9, 2, v5);

    v11 = OBJC_IVAR____TtC15audioaccessoryd17BTUserTransaction_activityState;
    swift_beginAccess();
    os_activity_scope_leave(&v6[v11]);
    swift_endAccess();
    *&v1[v2] = 0;
    swift_unknownObjectRelease();
  }

  v13.receiver = v1;
  v13.super_class = type metadata accessor for BTUserTransaction();
  return objc_msgSendSuper2(&v13, "dealloc");
}

uint64_t BTUserTransaction.description.getter()
{

  sub_1000EE870(&qword_1002F94C0, qword_100227A98);
  v0._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v0);

  v1._countAndFlagsBits = 93;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  return 0x3A4E58545BLL;
}

Swift::Int sub_1001034C8()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_100103534(uint64_t a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

void sub_10010359C()
{
  v0 = [objc_allocWithZone(type metadata accessor for DeviceManager()) init];
  sub_10010432C();
  qword_100300B98 = v0;
}

unint64_t sub_100103638(unsigned __int8 a1)
{
  sub_1000EE870(&unk_1002F9530, qword_1002294F0);
  if (a1 <= 1u)
  {
    if (a1)
    {
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100226100;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v4 = inited + 32;
      *(inited + 72) = &type metadata for String;
      *(inited + 40) = v8;
      *(inited + 48) = 0x2064696C61766E49;
      v5 = 0xEE0064726F636572;
    }

    else
    {
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100226100;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v4 = inited + 32;
      *(inited + 72) = &type metadata for String;
      *(inited + 40) = v7;
      *(inited + 48) = 0x206E776F6E6B6E55;
      v5 = 0xED0000726F727265;
    }
  }

  else
  {
    if (a1 == 2)
    {
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100226100;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v4 = inited + 32;
      v5 = 0x80000001002691F0;
      *(inited + 72) = &type metadata for String;
      v6 = 0xD000000000000015;
    }

    else if (a1 == 3)
    {
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100226100;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v4 = inited + 32;
      v5 = 0x80000001002691D0;
      *(inited + 72) = &type metadata for String;
      v6 = 0xD000000000000010;
    }

    else
    {
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100226100;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v4 = inited + 32;
      v5 = 0x80000001002691B0;
      *(inited + 72) = &type metadata for String;
      v6 = 0xD000000000000017;
    }

    *(inited + 40) = v3;
    *(inited + 48) = v6;
  }

  *(inited + 56) = v5;
  v9 = sub_1000F99F0(inited);
  swift_setDeallocating();
  sub_1000EEE6C(v4, &unk_1002F9EB0, &unk_100227D50);
  return v9;
}

uint64_t sub_1001038BC(uint64_t a1)
{
  v2 = sub_1001155B0();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1001038F8(uint64_t a1)
{
  v2 = sub_1001155B0();

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100103934()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC15audioaccessoryd13DeviceManager____lazy_storage___deviceStore;
  if (*&v0[OBJC_IVAR____TtC15audioaccessoryd13DeviceManager____lazy_storage___deviceStore])
  {
    v6 = *&v0[OBJC_IVAR____TtC15audioaccessoryd13DeviceManager____lazy_storage___deviceStore];
  }

  else
  {
    type metadata accessor for DeviceStore(0);
    sub_100174350();
    v7 = *&v0[OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_managerQueue];
    swift_allocObject();
    v8 = v7;
    v9 = v0;
    v6 = sub_1001CA61C(v0, &off_1002BC910, v4, v8);

    *&v1[v5] = v6;
  }

  return v6;
}

char *sub_100103A4C()
{
  v1 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v1);
  v2 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v0[OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_pushService] = 0;
  *&v0[OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_buddyStateWatcher] = 0;
  *&v0[OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_firstUnlockStateWatcher] = 0;
  v25 = OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_managerQueue;
  v24 = sub_1000FA784(0, &qword_1002F9700, OS_dispatch_queue_ptr);
  (*(v4 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v3);
  static DispatchQoS.unspecified.getter();
  aBlock = _swiftEmptyArrayStorage;
  sub_100114C58(&unk_1002F93A0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000EE870(&qword_1002F9710, &unk_100227B80);
  sub_100115260(&qword_1002F93B0, &qword_1002F9710, &unk_100227B80);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *&v0[v25] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v0[OBJC_IVAR____TtC15audioaccessoryd13DeviceManager____lazy_storage___deviceStore] = 0;
  *&v0[OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_subscribers] = _swiftEmptyArrayStorage;
  v7 = type metadata accessor for DeviceManager();
  v32.receiver = v0;
  v32.super_class = v7;
  v8 = objc_msgSendSuper2(&v32, "init");
  v9 = static os_log_type_t.default.getter();
  if (qword_1002F7AE0 != -1)
  {
    v23 = v9;
    swift_once();
    v9 = v23;
  }

  v10 = qword_100300E30;
  os_log(_:dso:log:_:_:)(v9, &_mh_execute_header, qword_100300E30, "DeviceManager init", 18, 2, _swiftEmptyArrayStorage);
  if (qword_1002F79F8 != -1)
  {
    swift_once();
  }

  v11 = static DarwinNotificationManager.shared;
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  v30 = sub_1001152B4;
  v31 = v13;
  aBlock = _NSConcreteStackBlock;
  v27 = 1107296256;
  v28 = sub_100115F4C;
  v29 = &unk_1002BD8E8;
  v14 = _Block_copy(&aBlock);
  v15 = v11;

  xpc_set_event_stream_handler("com.apple.notifyd.matching", v12, v14);
  _Block_release(v14);

  v16 = objc_opt_self();
  LODWORD(v14) = [v16 isBuddyComplete];
  v17 = static os_log_type_t.default.getter();
  if (v14)
  {
    os_log(_:dso:log:_:_:)(v17, &_mh_execute_header, v10, "DeviceManager buddy is done", 27, 2, _swiftEmptyArrayStorage);
    sub_10010432C();
  }

  else
  {
    os_log(_:dso:log:_:_:)(v17, &_mh_execute_header, v10, "DeviceManager buddy is NOT done, wait...", 40, 2, _swiftEmptyArrayStorage);
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v30 = sub_1001152BC;
    v31 = v18;
    aBlock = _NSConcreteStackBlock;
    v27 = 1107296256;
    v28 = sub_1001742E0;
    v29 = &unk_1002BD910;
    v19 = _Block_copy(&aBlock);

    v20 = [v16 addBuddyCompleteObserver:v19];
    _Block_release(v19);
    v21 = *&v8[OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_buddyStateWatcher];
    *&v8[OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_buddyStateWatcher] = v20;
  }

  return v8;
}

void sub_100103FC0(uint64_t a1)
{
  v1 = static os_log_type_t.default.getter();
  if (qword_1002F7AE0 != -1)
  {
    swift_once();
  }

  v2 = qword_100300E30;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100226100;
  v4 = [objc_opt_self() isBuddyComplete];
  *(v3 + 56) = &type metadata for Bool;
  *(v3 + 64) = &protocol witness table for Bool;
  *(v3 + 32) = v4;
  os_log(_:dso:log:_:_:)(v1, &_mh_execute_header, v2, "DeviceManager buddy done callback: %i", v9);

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_10010432C();
  }

  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    v8 = *&v7[OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_buddyStateWatcher];
    *&v7[OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_buddyStateWatcher] = 0;
  }
}

id sub_100104148(uint64_t a1)
{
  v2 = static os_log_type_t.default.getter();
  if (qword_1002F7AE0 != -1)
  {
    v4 = v2;
    swift_once();
    v2 = v4;
  }

  os_log(_:dso:log:_:_:)(v2, &_mh_execute_header, qword_100300E30, "DeviceManager deinit", 20, 2, _swiftEmptyArrayStorage);
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DeviceManager();
  return objc_msgSendSuper2(&v5, "dealloc");
}

void sub_10010432C()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_opt_self();
  if ([v9 isFirstUnlocked])
  {
    v23 = v2;
    v10 = *(v0 + OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_managerQueue);
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v29 = sub_1001150A0;
    v30 = v11;
    aBlock = _NSConcreteStackBlock;
    v26 = 1107296256;
    v27 = sub_1001742E0;
    v28 = &unk_1002BD488;
    v21 = _Block_copy(&aBlock);
    v12 = v10;
    v22 = v5;
    v13 = v12;

    static DispatchQoS.unspecified.getter();
    v24 = _swiftEmptyArrayStorage;
    sub_100114C58(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
    sub_100115260(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v14 = v21;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v14);

    (*(v23 + 8))(v4, v1);
    (*(v6 + 8))(v8, v22);
  }

  else
  {
    v15 = static os_log_type_t.default.getter();
    if (qword_1002F7AE0 != -1)
    {
      v20 = v15;
      swift_once();
      v15 = v20;
    }

    os_log(_:dso:log:_:_:)(v15, &_mh_execute_header, qword_100300E30, "DeviceManager cannot start, device needs to be first unlocked after boot", 72, 2, _swiftEmptyArrayStorage);
    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v29 = sub_100115098;
    v30 = v16;
    aBlock = _NSConcreteStackBlock;
    v26 = 1107296256;
    v27 = sub_1001742E0;
    v28 = &unk_1002BD460;
    v17 = _Block_copy(&aBlock);

    v18 = [v9 addFirstUnlockObserver:v17];
    _Block_release(v17);
    v19 = *(v0 + OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_firstUnlockStateWatcher);
    *(v0 + OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_firstUnlockStateWatcher) = v18;
  }
}

void sub_100104778(uint64_t a1)
{
  v1 = static os_log_type_t.default.getter();
  if (qword_1002F7AE0 != -1)
  {
    v6 = v1;
    swift_once();
    v1 = v6;
  }

  os_log(_:dso:log:_:_:)(v1, &_mh_execute_header, qword_100300E30, "Setting up DeviceManager after device first unlocked after boot", 63, 2, _swiftEmptyArrayStorage);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_10010432C();
  }

  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = *&v4[OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_firstUnlockStateWatcher];
    *&v4[OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_firstUnlockStateWatcher] = 0;
  }
}

void *sub_100104870(uint64_t a1)
{
  v1 = type metadata accessor for CloudCoordinatorConfiguration(0);
  __chkstk_darwin(v1 - 8);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    sub_100103934();
    v6 = static os_log_type_t.default.getter();
    if (qword_1002F7AE8 != -1)
    {
      v7 = v6;
      swift_once();
      v6 = v7;
    }

    os_log(_:dso:log:_:_:)(v6, &_mh_execute_header, qword_100300E38, "Activate Cloud Coordinator", 26, 2, _swiftEmptyArrayStorage);
    sub_100192770(v3);
    sub_10011481C(v3);
    sub_1001150A8(v3, type metadata accessor for CloudCoordinatorConfiguration);
    sub_100193560();
    sub_100141480();

    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_1001049F0(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    v3 = static os_log_type_t.default.getter();
    if (qword_1002F7AE0 != -1)
    {
      v6 = v3;
      swift_once();
      v3 = v6;
    }

    os_log(_:dso:log:_:_:)(v3, &_mh_execute_header, qword_100300E30, "Device Manager deactivate", 25, 2, _swiftEmptyArrayStorage);
    v4 = sub_100103934();
    v5 = static os_log_type_t.default.getter();
    if (qword_1002F7AE8 != -1)
    {
      v7 = v5;
      swift_once();
      v5 = v7;
    }

    os_log(_:dso:log:_:_:)(v5, &_mh_execute_header, qword_100300E38, "Deactivate Cloud Coordinator", 28, 2, _swiftEmptyArrayStorage);
    sub_100193560();
    sub_10015F824(v4);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100104BB4(uint64_t a1)
{
  v1 = sub_1000EE870(&qword_1002F9D90, &qword_100227B30);
  __chkstk_darwin(v1 - 8);
  v3 = &v39 - v2;
  v4 = type metadata accessor for LegacyMagicPairingSettingsRecords(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v13 = static os_log_type_t.default.getter();
  if (Strong)
  {
    v42 = v5;
    if (qword_1002F7AE0 != -1)
    {
      v34 = v13;
      swift_once();
      v13 = v34;
    }

    v14 = qword_100300E30;
    os_log(_:dso:log:_:_:)(v13, &_mh_execute_header, qword_100300E30, "CloudSync: Pinged cloud layer to send cached data", 49, 2, _swiftEmptyArrayStorage);
    sub_100103934();
    v43 = objc_opt_self();
    v15 = [v43 isFirstUnlocked];
    v40 = v7;
    v41 = v14;
    if (v15)
    {
      sub_100192340();
      if (qword_1002F79C0 != -1)
      {
        swift_once();
      }

      v16 = sub_1000EE91C(v8, qword_100300AF0);
      (*(v9 + 16))(v11, v16, v8);
      v17 = sub_10018B20C(v11);

      (*(v9 + 8))(v11, v8);
    }

    else
    {
      v19 = static os_log_type_t.error.getter();
      if (qword_1002F7AE8 != -1)
      {
        v36 = v19;
        swift_once();
        v19 = v36;
      }

      v17 = _swiftEmptyArrayStorage;
      os_log(_:dso:log:_:_:)(v19, &_mh_execute_header, qword_100300E38, "deviceRecords call failed because in device is in beforeFirstUnlock state", 73, 2, _swiftEmptyArrayStorage);
    }

    sub_1001746E8(v17);

    if ([v43 isFirstUnlocked])
    {
      sub_100192340();
      if (qword_1002F7A68 != -1)
      {
        swift_once();
      }

      v20 = sub_1000EE91C(v8, qword_100300D48);
      (*(v9 + 16))(v11, v20, v8);
      v21 = sub_10018BDC8(v11);

      (*(v9 + 8))(v11, v8);
    }

    else
    {
      v22 = static os_log_type_t.error.getter();
      if (qword_1002F7AE8 != -1)
      {
        v37 = v22;
        swift_once();
        v22 = v37;
      }

      v21 = _swiftEmptyArrayStorage;
      os_log(_:dso:log:_:_:)(v22, &_mh_execute_header, qword_100300E38, "deviceSupportInformationRecords call failed because in device is in beforeFirstUnlock state", 91, 2, _swiftEmptyArrayStorage);
    }

    sub_1001754E4(v21);

    sub_100194630(v3);

    v23 = v42;
    if ((*(v42 + 48))(v3, 1, v4) == 1)
    {
      sub_1000EEE6C(v3, &qword_1002F9D90, &qword_100227B30);
      v24 = v41;
    }

    else
    {
      v25 = v3;
      v26 = v40;
      sub_100114F1C(v25, v40, type metadata accessor for LegacyMagicPairingSettingsRecords);
      v27 = static os_log_type_t.default.getter();
      v24 = v41;
      os_log(_:dso:log:_:_:)(v27, &_mh_execute_header, v41, "CloudSync: Pinged cloud layer to send cached primaryDevice legacy data", 70, 2, _swiftEmptyArrayStorage);
      sub_1000EE870(&qword_1002F8528, &unk_100229A90);
      v28 = (*(v23 + 80) + 32) & ~*(v23 + 80);
      v29 = swift_allocObject();
      *(v29 + 1) = xmmword_100226100;
      sub_100115124(v26, v29 + v28, type metadata accessor for LegacyMagicPairingSettingsRecords);
      sub_100175BB0(v29);

      sub_1001150A8(v26, type metadata accessor for LegacyMagicPairingSettingsRecords);
    }

    v30 = static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)(v30, &_mh_execute_header, v24, "CloudSync: Pinged cloud layer to send cached primaryDevice data", 63, 2, _swiftEmptyArrayStorage);

    if ([v43 isFirstUnlocked])
    {
      sub_100192340();
      if (qword_1002F7A00 != -1)
      {
        swift_once();
      }

      v31 = sub_1000EE91C(v8, qword_100300BA8);
      (*(v9 + 16))(v11, v31, v8);
      v32 = sub_10018C984(v11);

      (*(v9 + 8))(v11, v8);
    }

    else
    {
      v33 = static os_log_type_t.error.getter();
      if (qword_1002F7AE8 != -1)
      {
        v38 = v33;
        swift_once();
        v33 = v38;
      }

      v32 = _swiftEmptyArrayStorage;
      os_log(_:dso:log:_:_:)(v33, &_mh_execute_header, qword_100300E38, "magicPairingSettingsRecords call failed because in device is in beforeFirstUnlock state", 87, 2, _swiftEmptyArrayStorage);
    }

    sub_100176C18(v32);
  }

  else
  {
    if (qword_1002F7AE0 != -1)
    {
      v35 = v13;
      swift_once();
      v13 = v35;
    }

    return os_log(_:dso:log:_:_:)(v13, &_mh_execute_header, qword_100300E30, "Ping unavailable", 16, 2, _swiftEmptyArrayStorage);
  }
}

void sub_100105430(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v5 = sub_1000EE870(&qword_1002F8520, &unk_100227B60);
  __chkstk_darwin(v5 - 8);
  v91 = &v81 - v6;
  v96 = type metadata accessor for BTDeferredRecord(0);
  v7 = *(v96 - 8);
  __chkstk_darwin(v96);
  v83 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v87 = &v81 - v10;
  __chkstk_darwin(v11);
  v13 = &v81 - v12;
  v14 = type metadata accessor for DeviceRecord(0);
  *&v93 = *(v14 - 8);
  __chkstk_darwin(v14);
  v82 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v81 - v17;
  v19 = type metadata accessor for URL();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v81 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v86 = a2;
    v23 = static os_log_type_t.default.getter();
    if (qword_1002F7AE0 != -1)
    {
      goto LABEL_64;
    }

    while (1)
    {
      v85 = qword_100300E30;
      os_log(_:dso:log:_:_:)(v23, &_mh_execute_header, qword_100300E30, "fetchDeviceList", 15, 2, _swiftEmptyArrayStorage);
      v97 = _swiftEmptyArrayStorage;
      v24 = sub_100103934();
      if ([objc_opt_self() isFirstUnlocked])
      {
        v95 = v24;
        sub_100192340();
        if (qword_1002F79C0 != -1)
        {
          swift_once();
        }

        v25 = sub_1000EE91C(v19, qword_100300AF0);
        (*(v20 + 16))(v22, v25, v19);
        v26 = sub_10018B20C(v22);

        v27 = v22;
        v22 = v26;
        v23 = (*(v20 + 8))(v27, v19);
      }

      else
      {
        v28 = static os_log_type_t.error.getter();
        if (qword_1002F7AE8 != -1)
        {
          v80 = v28;
          swift_once();
          v28 = v80;
        }

        v22 = _swiftEmptyArrayStorage;
        os_log(_:dso:log:_:_:)(v28, &_mh_execute_header, qword_100300E38, "deviceRecords call failed because in device is in beforeFirstUnlock state", 73, 2, _swiftEmptyArrayStorage);
      }

      v19 = v91;
      v29 = *(v22 + 2);
      v95 = a3;
      v92 = v29;
      if (!v29)
      {
        break;
      }

      v20 = 0;
      v89 = &v22[(*(v93 + 80) + 32) & ~*(v93 + 80)];
      v90 = OBJC_IVAR____TtC15audioaccessoryd13DeviceManager____lazy_storage___deviceStore;
      v88 = _swiftEmptyArrayStorage;
      v84 = v22;
      while (v20 < *(v22 + 2))
      {
        sub_100115124(&v89[*(v93 + 72) * v20], v18, type metadata accessor for DeviceRecord);

        v30 = sub_10019391C();

        a3 = v30[2];
        if (a3)
        {
          v19 = 0;
          v22 = v30 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
          while (v19 < v30[2])
          {
            sub_100115124(&v22[*(v7 + 72) * v19], v13, type metadata accessor for BTDeferredRecord);
            v31 = *(v13 + 1) == 0x6552656369766544 && *(v13 + 2) == 0xEC00000064726F63;
            if (v31 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && ((v32 = &v13[*(v96 + 28)], v33 = *v32, v34 = *(v32 + 1), v35 = &v18[*(v14 + 24)], v33 == *v35) ? (v36 = v34 == *(v35 + 1)) : (v36 = 0), v36 || (_stringCompareWithSmolCheck(_:_:expecting:)()))
            {
              if (*v13 == 1)
              {

                sub_1001150A8(v13, type metadata accessor for BTDeferredRecord);
LABEL_14:

                a3 = v95;
                v19 = v91;
                v22 = v84;
                goto LABEL_15;
              }

              v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

              v23 = sub_1001150A8(v13, type metadata accessor for BTDeferredRecord);
              if (v37)
              {
                goto LABEL_14;
              }
            }

            else
            {
              v23 = sub_1001150A8(v13, type metadata accessor for BTDeferredRecord);
            }

            if (a3 == ++v19)
            {

              v19 = v91;
              v22 = v84;
              goto LABEL_37;
            }
          }

          __break(1u);
          break;
        }

LABEL_37:
        v38 = objc_allocWithZone(BTCloudDevice);
        v39 = String._bridgeToObjectiveC()();
        v40 = [v38 initWithBluetoothAddress:v39];

        v41 = String._bridgeToObjectiveC()();
        [v40 setNickname:v41];

        v42 = String._bridgeToObjectiveC()();
        [v40 setModelNumber:v42];

        v43 = String._bridgeToObjectiveC()();
        [v40 setManufacturer:v43];

        v44 = String._bridgeToObjectiveC()();
        [v40 setProductID:v44];

        v45 = String._bridgeToObjectiveC()();
        [v40 setVendorID:v45];

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v97 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v97 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v88 = v97;
        a3 = v95;
LABEL_15:
        ++v20;
        v23 = sub_1001150A8(v18, type metadata accessor for DeviceRecord);
        if (v20 == v92)
        {

          goto LABEL_42;
        }
      }

      __break(1u);
LABEL_64:
      v79 = v23;
      swift_once();
      v23 = v79;
    }

    v88 = _swiftEmptyArrayStorage;
LABEL_42:

    v46 = sub_10019391C();

    v47 = *(v46 + 2);
    v48 = v86;
    if (v47)
    {
      v92 = 0;
      v49 = *(v7 + 80);
      v84 = v46;
      v50 = &v46[(v49 + 32) & ~v49];
      v51 = *(v7 + 72);
      v89 = (v93 + 56);
      v93 = xmmword_100226100;
      v52 = v87;
      v90 = v51;
      do
      {
        sub_100115124(v50, v52, type metadata accessor for BTDeferredRecord);
        v59 = *(v52 + 8) == 0x6552656369766544 && *(v52 + 16) == 0xEC00000064726F63;
        if (!v59 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_46;
        }

        if (*v52)
        {
          v60 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v61 = v92;
          if ((v60 & 1) == 0)
          {
            goto LABEL_46;
          }
        }

        else
        {

          v61 = v92;
        }

        v62 = v52 + *(v96 + 36);
        v63 = *(v62 + 8);
        if (v63 >> 60 != 15)
        {
          v64 = *v62;
          sub_1000EE9F4(*v62, *(v62 + 8));
          v65 = objc_autoreleasePoolPush();
          type metadata accessor for PropertyListDecoder();
          swift_allocObject();
          PropertyListDecoder.init()();
          sub_100114C58(&qword_1002F9C20, type metadata accessor for DeviceRecord, &unk_100226AD4);
          v66 = v91;
          dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
          if (!v61)
          {
            v92 = 0;

            objc_autoreleasePoolPop(v65);
            (*v89)(v66, 0, 1, v14);
            v67 = v66;
            v68 = v82;
            sub_100114F1C(v67, v82, type metadata accessor for DeviceRecord);
            LODWORD(v88) = static os_log_type_t.default.getter();
            sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
            v69 = swift_allocObject();
            *(v69 + 16) = v93;
            v70 = sub_1000EA6CC();
            v72 = v71;
            *(v69 + 56) = &type metadata for String;
            *(v69 + 64) = sub_1000EE954();
            *(v69 + 32) = v70;
            *(v69 + 40) = v72;
            os_log(_:dso:log:_:_:)(v88, &_mh_execute_header, v85, "Construct deferred BTCloudDevice - %@", 37, 2, v69);

            sub_100106284();
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v97 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v97 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              v68 = v82;
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            sub_1000FF5CC(v64, v63);
            sub_1001150A8(v68, type metadata accessor for DeviceRecord);
            v88 = v97;
            v48 = v86;
            v52 = v87;
            goto LABEL_46;
          }

          objc_autoreleasePoolPop(v65);
          sub_1000FF5CC(v64, v63);
          (*v89)(v66, 1, 1, v14);
          sub_1000EEE6C(v66, &qword_1002F8520, &unk_100227B60);
          v92 = 0;
        }

        v53 = static os_log_type_t.default.getter();
        sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
        v54 = swift_allocObject();
        *(v54 + 16) = v93;
        v55 = v87;
        sub_100115124(v87, v83, type metadata accessor for BTDeferredRecord);
        v56 = String.init<A>(describing:)();
        v58 = v57;
        *(v54 + 56) = &type metadata for String;
        *(v54 + 64) = sub_1000EE954();
        *(v54 + 32) = v56;
        *(v54 + 40) = v58;
        os_log(_:dso:log:_:_:)(v53, &_mh_execute_header, v85, "Unable to contruct deferred BTCloudDevice - %@", 46, 2, v54);
        v52 = v55;

        v48 = v86;
        v51 = v90;
LABEL_46:
        sub_1001150A8(v52, type metadata accessor for BTDeferredRecord);
        v50 += v51;
        --v47;
      }

      while (v47);
    }

    v73 = static os_log_type_t.debug.getter();
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v74 = swift_allocObject();
    *(v74 + 16) = xmmword_100226100;
    sub_1000FA784(0, &qword_1002F9CD0, BTCloudDevice_ptr);
    v75 = v88;
    v76 = Array.description.getter();
    v78 = v77;
    *(v74 + 56) = &type metadata for String;
    *(v74 + 64) = sub_1000EE954();
    *(v74 + 32) = v76;
    *(v74 + 40) = v78;
    os_log(_:dso:log:_:_:)(v73, &_mh_execute_header, v85, "fetched Device List - %@", 24, 2, v74);

    (v48)(v75);
  }

  else
  {
    a2();
  }
}