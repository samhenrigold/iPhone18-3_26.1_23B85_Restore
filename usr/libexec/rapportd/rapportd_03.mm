unint64_t sub_1000CE590(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000C4810(&qword_1001D52B8, &qword_10014A238);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1000C39E8(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_1000CE704()
{
  result = qword_1001D52B0;
  if (!qword_1001D52B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D52B0);
  }

  return result;
}

__n128 sub_1000CE758(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1000CE774(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000CE7BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RPPairingTXTRecord.Keys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for RPPairingTXTRecord.Keys(uint64_t result, unsigned int a2, unsigned int a3)
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

void *sub_1000CE97C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

Swift::Int RPIdentitySyncError.hashValue.getter()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_1000CEA34(uint64_t a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_1000CEA74()
{
  [v0 airdropHash1];
  sub_1000CEB90();
  v1 = FixedWidthInteger.bigEndianBytes.getter();
  [v0 airdropHash2];
  v2 = FixedWidthInteger.bigEndianBytes.getter();
  sub_1000C3794(v2);
  [v0 airdropHash3];
  v3 = FixedWidthInteger.bigEndianBytes.getter();
  sub_1000C3794(v3);
  [v0 airdropHash4];
  v4 = FixedWidthInteger.bigEndianBytes.getter();
  sub_1000C3794(v4);
  v5 = sub_1000CDC6C(v1);

  return v5;
}

unint64_t sub_1000CEB90()
{
  result = qword_1001D52E8;
  if (!qword_1001D52E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D52E8);
  }

  return result;
}

uint64_t sub_1000CEBE4@<X0>(uint64_t a2@<X8>)
{
  v3 = [objc_opt_self() defaultManager];
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 containerURLForSecurityApplicationGroupIdentifier:v4];

  if (v5)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = type metadata accessor for URL();
  v8 = *(*(v7 - 8) + 56);

  return v8(a2, v6, 1, v7);
}

id sub_1000CECE4(uint64_t a1, uint64_t a2)
{
  sub_1000CEDE4(0, a2);
  sub_1000C4810(&qword_1001D52C0, &qword_10014A240);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10014A0A0;
  *(v2 + 56) = &type metadata for String;
  *(v2 + 64) = sub_1000CEE30();
  *(v2 + 32) = 0xD000000000000029;
  *(v2 + 40) = 0x80000001001791C0;
  v3 = NSPredicate.init(format:_:)();
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 evaluateWithObject:v4];

  return v5;
}

unint64_t sub_1000CEDE4(uint64_t a1, uint64_t a2)
{
  result = qword_1001D52F0;
  if (!qword_1001D52F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1001D52F0);
  }

  return result;
}

unint64_t sub_1000CEE30()
{
  result = qword_1001D52F8;
  if (!qword_1001D52F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D52F8);
  }

  return result;
}

unint64_t sub_1000CEE88()
{
  result = qword_1001D5300;
  if (!qword_1001D5300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5300);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RPIdentitySyncError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for RPIdentitySyncError(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_1000CEFC4()
{
  v0 = type metadata accessor for Logger();
  sub_1000C5A94(v0, qword_1001D7308);
  v1 = sub_10000BB0C(v0, qword_1001D7308);
  v2 = sub_10010ACCC();
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1000CF078()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000C5EF0;

  return sub_1000CF19C();
}

uint64_t sub_1000CF108()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000C5EF0;

  return sub_1000CF078();
}

uint64_t sub_1000CF1BC()
{
  v1 = v0[2];
  v2 = *(v1 + 112);
  v0[3] = *(v1 + 216);
  [v2 setSessionTelemetry:?];
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_1000CF268;

  return sub_1000D1388();
}

uint64_t sub_1000CF268()
{
  v1 = *(*v0 + 16);

  return _swift_task_switch(sub_1000CF378, v1, 0);
}

uint64_t sub_1000CF378(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  if (!*(v3 + 176))
  {
    type metadata accessor for RPIdentitySyncBluetoothDiscovery(0, a2);
    *(v3 + 176) = sub_1000C7B68();
  }

  v4 = swift_task_alloc();
  *(v2 + 40) = v4;
  *v4 = v2;
  v4[1] = sub_1000CF434;

  return sub_1000D1930();
}

uint64_t sub_1000CF434()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 48) = v3;
  *v3 = v2;
  v3[1] = sub_1000CF578;

  return sub_1000D22E4(0);
}

uint64_t sub_1000CF578()
{
  v1 = *(*v0 + 16);

  return _swift_task_switch(sub_1000CF688, v1, 0);
}

uint64_t sub_1000CF688()
{
  v1 = *(*(v0 + 16) + 224);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_1000CF728;

  return sub_1001028F4(v1);
}

uint64_t sub_1000CF728()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 64) = v3;
  *v3 = v2;
  v3[1] = sub_1000CF868;

  return sub_1000D2B10();
}

uint64_t sub_1000CF868()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000CF984(const char *a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  v7 = sub_1000C4810(&qword_1001D4F68, &qword_100149690);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  if (qword_1001D7300 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000BB0C(v10, qword_1001D7308);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, a1, v13, 2u);
  }

  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v6;

  sub_1000C1E34(0, 0, v9, a3, v15);
}

uint64_t sub_1000CFB68()
{
  v1 = *(v0 + 40);
  if (*(v1 + 184))
  {

    sub_1000C4810(&qword_1001D50D0, &unk_100149DB0);
    Task.cancel()();
  }

  v2 = *(v0 + 40);
  *(v1 + 184) = 0;

  swift_beginAccess();
  *(v2 + 160) = &_swiftEmptySetSingleton;

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000CFC54(char a1)
{
  v2 = v1;
  v4 = sub_1000C4810(&qword_1001D4F68, &qword_100149690);
  result = __chkstk_darwin(v4 - 8);
  v7 = &v14 - v6;
  if ((a1 & 4) != 0)
  {
    if (qword_1001D7300 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000BB0C(v8, qword_1001D7308);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Self identity changed detected", v11, 2u);
    }

    v12 = type metadata accessor for TaskPriority();
    (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
    v13 = swift_allocObject();
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = v2;

    sub_1000C1E34(0, 0, v7, &unk_10014A370, v13);
  }

  return result;
}

uint64_t sub_1000CFE24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_1000CFEBC;

  return sub_1000D22E4(1);
}

uint64_t sub_1000CFEBC()
{
  v1 = *(*v0 + 16);

  return _swift_task_switch(sub_1000CFFCC, v1, 0);
}

uint64_t sub_1000CFFCC()
{
  v1 = *(v0[2] + 128);
  if (v1 && (v2 = [v1 deviceIRKData]) != 0)
  {
    v3 = v2;
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0xF000000000000000;
  }

  v0[4] = v4;
  v0[5] = v6;
  v7 = swift_task_alloc();
  v0[6] = v7;
  *v7 = v0;
  v7[1] = sub_1000D00B8;

  return sub_1000F3F8C(v4, v6);
}

uint64_t sub_1000D00B8()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v4 = *v0;

  sub_1000C5928(v3, v2);
  v5 = swift_task_alloc();
  *(v1 + 56) = v5;
  *v5 = v4;
  v5[1] = sub_1000DB4B4;

  return sub_1000D2B10();
}

uint64_t sub_1000D0234()
{
  v1[5] = v0;
  sub_1000C4810(&qword_1001D4F68, &qword_100149690);
  v1[6] = swift_task_alloc();
  v2 = type metadata accessor for UUID();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();

  return _swift_task_switch(sub_1000D032C, v0, 0);
}

uint64_t sub_1000D032C()
{
  v22 = v0;
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  UUID.init()();
  v4 = UUID.uuidString.getter();
  v6 = v5;
  (*(v2 + 8))(v1, v3);
  if (qword_1001D7300 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000BB0C(v7, qword_1001D7308);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_1000C3440(v4, v6, &v21);
    _os_log_impl(&_mh_execute_header, v8, v9, "Adding browse session %s", v10, 0xCu);
    sub_1000C5604(v11);
  }

  v12 = v0[5];
  swift_beginAccess();

  sub_1000D80FC(&v21, v4, v6);
  swift_endAccess();

  if (!*(v12 + 184))
  {
    v14 = v0[5];
    v13 = v0[6];
    v15 = type metadata accessor for TaskPriority();
    (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
    v17 = sub_1000DB168(&qword_1001D5308, v16, type metadata accessor for RPIdentitySyncService, &unk_10014A3A0);
    v18 = swift_allocObject();
    v18[2] = v14;
    v18[3] = v17;
    v18[4] = v14;
    swift_retain_n();
    *(v12 + 184) = sub_1000BE36C(0, 0, v13, &unk_10014A388, v18);
  }

  v19 = v0[1];

  return v19(v4, v6);
}

uint64_t sub_1000D0624()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000C3348;

  return sub_1000D06B4();
}

uint64_t sub_1000D06B4()
{
  v1[92] = v0;
  v2 = sub_1000C4810(&qword_1001D5068, &qword_10014A460);
  v1[93] = v2;
  v1[94] = *(v2 - 8);
  v1[95] = swift_task_alloc();

  return _swift_task_switch(sub_1000D0780, v0, 0);
}

uint64_t sub_1000D0780()
{
  v1 = *(v0[92] + 176);
  v0[96] = v1;
  if (v1)
  {
    v2 = qword_1001D7300;

    if (v2 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    v0[97] = sub_10000BB0C(v3, qword_1001D7308);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Starting bluetooth monitoring task", v6, 2u);
    }

    sub_1000C6A54();
    v8 = sub_1000DB168(&qword_1001D5308, v7, type metadata accessor for RPIdentitySyncService, &unk_10014A3A0);
    v0[98] = v8;
    v9 = v0[92];
    v10 = swift_task_alloc();
    v0[99] = v10;
    *v10 = v0;
    v10[1] = sub_1000D098C;
    v11 = v0[93];

    return AsyncStream.Iterator.next(isolation:)(v0 + 22, v9, v8, v11);
  }

  else
  {

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_1000D098C()
{
  v1 = *(*v0 + 736);

  return _swift_task_switch(sub_1000D0A9C, v1, 0);
}

uint64_t sub_1000D0A9C()
{
  v30 = v0;
  v1 = *(v0 + 192);
  *(v0 + 96) = *(v0 + 176);
  *(v0 + 112) = v1;
  v2 = *(v0 + 224);
  *(v0 + 128) = *(v0 + 208);
  *(v0 + 144) = v2;
  *(v0 + 153) = *(v0 + 233);
  v3 = *(v0 + 104);
  if (v3)
  {
    v5 = *(v0 + 112);
    v4 = *(v0 + 128);
    v6 = *(v0 + 96);
    *(v0 + 32) = v5;
    *(v0 + 48) = v4;
    v7 = *(v0 + 128);
    *(v0 + 64) = *(v0 + 144);
    *(v0 + 73) = *(v0 + 153);
    v8 = *(v0 + 144);
    *(v0 + 288) = v7;
    *(v0 + 304) = v8;
    *(v0 + 313) = *(v0 + 153);
    *(v0 + 16) = *(v0 + 96);
    *(v0 + 24) = v3;
    *(v0 + 256) = v6;
    *(v0 + 272) = v5;
    sub_1000D8D78(v0 + 256, v0 + 336);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    sub_1000C59E0(v0 + 96, &qword_1001D5338, &qword_10014A468);
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v29 = v12;
      *v11 = 136315138;
      v13 = *(v0 + 64);
      *(v0 + 608) = *(v0 + 48);
      *(v0 + 624) = v13;
      *(v0 + 633) = *(v0 + 73);
      v14 = *(v0 + 32);
      *(v0 + 576) = *(v0 + 16);
      *(v0 + 592) = v14;
      v15 = *(v0 + 144);
      *(v0 + 528) = *(v0 + 128);
      *(v0 + 544) = v15;
      *(v0 + 553) = *(v0 + 153);
      v16 = *(v0 + 112);
      *(v0 + 496) = *(v0 + 96);
      *(v0 + 512) = v16;
      sub_1000D8D78(v0 + 496, v0 + 656);
      sub_1000D8DD4();
      v17 = dispatch thunk of CustomStringConvertible.description.getter();
      v19 = v18;
      v20 = *(v0 + 624);
      *(v0 + 448) = *(v0 + 608);
      *(v0 + 464) = v20;
      *(v0 + 473) = *(v0 + 633);
      v21 = *(v0 + 592);
      *(v0 + 416) = *(v0 + 576);
      *(v0 + 432) = v21;
      sub_1000D8E28(v0 + 416);
      v22 = sub_1000C3440(v17, v19, &v29);

      *(v11 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v9, v10, "Bluetooth event %s", v11, 0xCu);
      sub_1000C5604(v12);
    }

    v23 = swift_task_alloc();
    *(v0 + 800) = v23;
    *v23 = v0;
    v23[1] = sub_1000D0E08;

    return sub_1000D4148(v0 + 16);
  }

  else
  {
    (*(*(v0 + 752) + 8))(*(v0 + 760), *(v0 + 744));
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "Finished bluetooth monitoring task", v27, 2u);
    }

    else
    {
    }

    v28 = *(v0 + 8);

    return v28();
  }
}

uint64_t sub_1000D0E08()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 808) = v3;
  *v3 = v2;
  v3[1] = sub_1000D0F50;

  return sub_1000D52A8(v1 + 16);
}

uint64_t sub_1000D0F50()
{
  v1 = *(*v0 + 736);

  return _swift_task_switch(sub_1000D1060, v1, 0);
}

uint64_t sub_1000D1060()
{
  sub_1000C59E0((v0 + 12), &qword_1001D5338, &qword_10014A468);
  v1 = v0[98];
  v2 = v0[92];
  v3 = swift_task_alloc();
  v0[99] = v3;
  *v3 = v0;
  v3[1] = sub_1000D098C;
  v4 = v0[93];

  return AsyncStream.Iterator.next(isolation:)(v0 + 22, v2, v1, v4);
}

uint64_t sub_1000D1130(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  return _swift_task_switch(sub_1000D1154, v2, 0);
}

uint64_t sub_1000D1154()
{
  v15 = v0;
  if (qword_1001D7300 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000BB0C(v1, qword_1001D7308);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[5];
    v4 = v0[6];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1000C3440(v5, v4, &v14);
    _os_log_impl(&_mh_execute_header, v2, v3, "Removing browse session %s", v6, 0xCu);
    sub_1000C5604(v7);
  }

  v8 = v0[6];
  v9 = v0[7];
  v10 = v0[5];
  swift_beginAccess();
  sub_1000D8A78(v10, v8);
  swift_endAccess();

  if (!*(*(v9 + 160) + 16))
  {
    v11 = v0[7];
    if (*(v11 + 184))
    {

      sub_1000C4810(&qword_1001D50D0, &unk_100149DB0);
      Task.cancel()();
    }

    *(v11 + 184) = 0;
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_1000D13A8()
{
  v1 = v0[18];
  if (v1[25])
  {
LABEL_2:
    v2 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v2, v1, sub_1000D3890, SFAppleIDValidationRecordDidChangeNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

    v3 = v0[1];

    return v3();
  }

  if (qword_1001D7300 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000BB0C(v5, qword_1001D7308);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Setting up monitor for RPIdentitySyncService", v8, 2u);
  }

  v9 = [objc_allocWithZone(CUSystemMonitor) init];
  v10 = v1[25];
  v1[25] = v9;

  v11 = v1[25];
  if (!v11)
  {
    v1 = v0[18];
    goto LABEL_2;
  }

  v12 = swift_allocObject();
  swift_weakInit();
  v0[14] = sub_1000DB214;
  v0[15] = v12;
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1000D36FC;
  v0[13] = &unk_1001AFE20;
  v13 = _Block_copy(v0 + 10);
  v14 = v11;

  [v14 setScreenOnChangedHandler:v13];
  _Block_release(v13);

  v15 = v1[25];
  if (!v15)
  {
    v1 = v0[18];
    goto LABEL_2;
  }

  v16 = swift_allocObject();
  swift_weakInit();
  v0[14] = sub_1000DB264;
  v0[15] = v16;
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1000D36FC;
  v0[13] = &unk_1001AFE48;
  v17 = _Block_copy(v0 + 10);
  v18 = v15;

  [v18 setFirstUnlockHandler:v17];
  _Block_release(v17);

  v19 = v1[25];
  v0[19] = v19;
  if (!v19)
  {
    v1 = v0[18];
    goto LABEL_2;
  }

  v0[2] = v0;
  v0[3] = sub_1000D1798;
  v20 = swift_continuation_init();
  v0[17] = sub_1000C4810(&qword_1001D5388, &qword_10014A4E8);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1000D385C;
  v0[13] = &unk_1001AFE70;
  v0[14] = v20;
  [v19 activateWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1000D1798()
{
  v1 = *(*v0 + 144);

  return _swift_task_switch(sub_1000D188C, v1, 0);
}

uint64_t sub_1000D188C()
{
  v1 = *(v0 + 144);
  v2 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v2, v1, sub_1000D3890, SFAppleIDValidationRecordDidChangeNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000D1950(uint64_t a1, uint64_t a2)
{
  if (*(v2[19] + 208))
  {
    v3 = v2[1];

    return v3();
  }

  else
  {
    v5 = objc_opt_self();
    v2[2] = v2;
    v2[7] = v2 + 18;
    v2[3] = sub_1000D1AB4;
    v6 = swift_continuation_init();
    v2[17] = sub_1000C4810(&qword_1001D5368, &qword_10014A4D0);
    v2[10] = _NSConcreteStackBlock;
    v2[11] = 1107296256;
    v2[12] = sub_1000D39A8;
    v2[13] = &unk_1001AFDA8;
    v2[14] = v6;
    [v5 myAccountWithCompletion:v2 + 10];

    return _swift_continuation_await(v2 + 2);
  }
}

uint64_t sub_1000D1AB4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 160) = v2;
  v3 = *(v1 + 152);
  if (v2)
  {
    v4 = sub_1000D2138;
  }

  else
  {
    v4 = sub_1000D1BD4;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000D1BD4()
{
  v44 = v0;
  v1 = v0[18];
  if (qword_1001D7300 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000BB0C(v2, qword_1001D7308);
  v3 = v1;
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
    _os_log_impl(&_mh_execute_header, v4, v5, "Loaded appleID from sharing agent %@", v6, 0xCu);
    sub_1000C59E0(v7, &qword_1001D55A0, &unk_100149890);
  }

  v9 = [v3 contactInfo];
  if (v9 && (v10 = v9, v11 = [v9 validatedEmailAddresses], v10, v11))
  {
    v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v13 = [v3 contactInfo];
  if (v13 && (v14 = v13, v15 = [v13 validatedPhoneNumbers], v14, v15))
  {
    v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  v17 = v0[19];
  v18 = *(v17 + 208);
  *(v17 + 208) = v3;
  v42 = v3;

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v43[0] = swift_slowAlloc();
    *v21 = 136315394;
    v22 = Array.description.getter();
    v24 = sub_1000C3440(v22, v23, v43);

    *(v21 + 4) = v24;
    *(v21 + 12) = 2080;
    v25 = Array.description.getter();
    v27 = sub_1000C3440(v25, v26, v43);

    *(v21 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v19, v20, "Loaded validation record handles %s - %s", v21, 0x16u);
    swift_arrayDestroy();
  }

  v28 = [*(v0[19] + 120) idsAccountSet];
  if (v28)
  {
    v29 = v28;
    sub_1000C5AF8(0, &qword_1001D5370, IDSAccount_ptr);
    sub_1000DB0F8();
    v30 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1000D3B84(&_swiftEmptySetSingleton, v30);
    v32 = v31;
  }

  else
  {
    v32 = &_swiftEmptySetSingleton;
  }

  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v43[0] = v36;
    *v35 = 136315138;
    v37 = Set.description.getter();
    v39 = sub_1000C3440(v37, v38, v43);

    *(v35 + 4) = v39;
    _os_log_impl(&_mh_execute_header, v33, v34, "Loaded IDS handles %s", v35, 0xCu);
    sub_1000C5604(v36);
  }

  swift_beginAccess();
  sub_1000D3F54(v32);
  sub_1000DA8D0(v12);

  sub_1000DA8D0(v16);
  swift_endAccess();

  v40 = v0[1];

  return v40();
}

uint64_t sub_1000D2138()
{
  swift_willThrow();
  if (qword_1001D7300 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000BB0C(v1, qword_1001D7308);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Unable to fetch AppleID account info %@", v4, 0xCu);
    sub_1000C59E0(v5, &qword_1001D55A0, &unk_100149890);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1000D22E4(char a1)
{
  *(v2 + 160) = v1;
  *(v2 + 240) = a1;
  v3 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  *(v2 + 168) = v3;
  *(v2 + 176) = *(v3 - 8);
  *(v2 + 184) = swift_task_alloc();
  *(v2 + 192) = type metadata accessor for OS_dispatch_queue.Attributes();
  *(v2 + 200) = swift_task_alloc();
  type metadata accessor for DispatchQoS();
  *(v2 + 208) = swift_task_alloc();

  return _swift_task_switch(sub_1000D2404, v1, 0);
}

uint64_t sub_1000D2404()
{
  if (*(*(v0 + 160) + 128))
  {
    v1 = *(v0 + 240) == 0;
  }

  else
  {
    v1 = 0;
  }

  if (v1)
  {

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    v2 = *(v0 + 184);
    v3 = *(v0 + 176);
    v9 = *(v0 + 168);
    sub_1000C5AF8(0, &qword_1001D54F0, OS_dispatch_queue_ptr);
    static DispatchQoS.default.getter();
    *(v0 + 144) = _swiftEmptyArrayStorage;
    sub_1000DB168(&qword_1001D5F50, 255, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
    sub_1000C4810(&unk_1001D5500, &qword_100149A50);
    sub_1000DB1B0();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v3 + 104))(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v9);
    v4 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    *(v0 + 216) = v4;
    v5 = [objc_allocWithZone(RPClient) init];
    *(v0 + 224) = v5;
    [v5 setDispatchQueue:v4];
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 152;
    *(v0 + 24) = sub_1000D26F8;
    v6 = swift_continuation_init();
    *(v0 + 136) = sub_1000C4810(&qword_1001D5380, &qword_10014C050);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1000D4058;
    *(v0 + 104) = &unk_1001AFDD0;
    *(v0 + 112) = v6;
    [v5 getIdentitiesWithFlags:1 completion:?];

    return _swift_continuation_await(v0 + 16);
  }
}

uint64_t sub_1000D26F8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 232) = v2;
  v3 = *(v1 + 160);
  if (v2)
  {
    v4 = sub_1000D293C;
  }

  else
  {
    v4 = sub_1000D2818;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000D2818()
{
  v1 = v0[19];
  if (v1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:

    v4 = 0;
    goto LABEL_9;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_8;
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

    v3 = *(v1 + 32);
  }

  v4 = v3;

LABEL_9:
  v6 = v0[27];
  v5 = v0[28];
  v7 = v0[20];
  v8 = *(v7 + 128);
  *(v7 + 128) = v4;

  [v5 invalidate];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1000D293C()
{
  v1 = v0[28];
  v2 = v0[27];
  swift_willThrow();

  if (qword_1001D7300 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000BB0C(v3, qword_1001D7308);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to fetch self identity %@", v6, 0xCu);
    sub_1000C59E0(v7, &qword_1001D55A0, &unk_100149890);
  }

  else
  {
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_1000D2B30()
{
  v1 = *(v0[2] + 200);
  v0[3] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = swift_task_alloc();
    v0[4] = v3;
    *v3 = v0;
    v3[1] = sub_1000D2C08;

    return sub_1000D1930();
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_1000D2C08()
{
  v1 = *(*v0 + 16);

  return _swift_task_switch(sub_1000D2D18, v1, 0);
}

uint64_t sub_1000D2D18()
{
  if ([*(v0 + 24) firstUnlocked])
  {
    v1 = [*(v0 + 24) screenOn];
    v2 = *(v0 + 16);
    if (v1 && v2[26])
    {
      v3 = swift_task_alloc();
      *(v0 + 40) = v3;
      *v3 = v0;
      v3[1] = sub_1000D2EB8;

      return sub_1000D22E4(0);
    }
  }

  else
  {
    v2 = *(v0 + 16);
  }

  v5 = v2[19];
  *(v0 + 72) = v5;
  if (v5)
  {
    v6 = v2[18];

    v7 = swift_task_alloc();
    *(v0 + 80) = v7;
    *v7 = v0;
    v7[1] = sub_1000D322C;

    return sub_1000D1130(v6, v5);
  }

  else
  {

    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_1000D2EB8()
{
  v1 = *(*v0 + 16);

  return _swift_task_switch(sub_1000D2FC8, v1, 0);
}

uint64_t sub_1000D2FC8()
{
  if (*(*(v0 + 16) + 152))
  {

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v3 = swift_task_alloc();
    *(v0 + 48) = v3;
    *v3 = v0;
    v3[1] = sub_1000D309C;

    return sub_1000D0234();
  }
}

uint64_t sub_1000D309C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 16);
  *(v3 + 56) = a1;
  *(v3 + 64) = a2;

  return _swift_task_switch(sub_1000D31B4, v4, 0);
}

uint64_t sub_1000D31B4()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 16);

  *(v3 + 144) = v1;
  *(v3 + 152) = v2;

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000D322C()
{
  v1 = *(*v0 + 16);

  return _swift_task_switch(sub_1000D3358, v1, 0);
}

uint64_t sub_1000D3358()
{
  v1 = *(v0 + 16);
  *(v1 + 144) = 0;
  *(v1 + 152) = 0;

  v2 = RPNWEndpoint.deviceColor.getter();
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  *v3 = v0;
  v3[1] = sub_1000D340C;

  return sub_1000F3458(v2 & 1);
}

uint64_t sub_1000D340C()
{
  v1 = *(*v0 + 16);

  return _swift_task_switch(sub_1000D351C, v1, 0);
}

uint64_t sub_1000D351C()
{
  v1 = *(v0 + 24);
  sub_1000D3580();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000D3580()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v13[-v7];
  Date.init()();
  Date.addingTimeInterval(_:)();
  v9 = *(v3 + 8);
  v9(v6, v2);
  swift_beginAccess();
  v14 = v8;

  v11 = sub_1000DAB98(v10, sub_1000DB0EC);

  *(v1 + 168) = v11;

  return (v9)(v8, v2);
}

uint64_t sub_1000D36FC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_1000D3740(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1000C4810(&qword_1001D4F68, &qword_100149690);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = type metadata accessor for TaskPriority();
    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = v8;
    sub_1000C1E34(0, 0, v6, a3, v10);
  }

  return result;
}

uint64_t sub_1000D385C(uint64_t a1)
{
  v1 = *sub_1000CE97C((a1 + 32), *(a1 + 56));

  return _swift_continuation_resume(v1);
}

uint64_t sub_1000D3890(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000C4810(&qword_1001D4F68, &qword_100149690);
  result = __chkstk_darwin(v3 - 8);
  v6 = &v10 - v5;
  if (a2)
  {
    v7 = type metadata accessor for TaskPriority();
    v8 = *(*(v7 - 8) + 56);

    v8(v6, 1, 1, v7);
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = a2;
    sub_1000C1E34(0, 0, v6, &unk_10014A4F8, v9);
  }

  return result;
}

uint64_t sub_1000D39A8(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_1000CE97C((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    sub_1000C4810(&qword_1001D50D0, &unk_100149DB0);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return _swift_continuation_throwingResumeWithError(v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_1000D3A80(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_1000D80FC(v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_1000D3B84(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if ((a2 & 0xC000000000000001) != 0)
  {

    __CocoaSet.makeIterator()();
    sub_1000C5AF8(0, &qword_1001D5370, IDSAccount_ptr);
    sub_1000DB0F8();
    Set.Iterator.init(_cocoa:)();
    v2 = v39;
    v4 = v40;
    v5 = v41;
    v6 = v42;
    v7 = v43;
  }

  else
  {
    v8 = -1 << *(a2 + 32);
    v4 = a2 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(a2 + 56);

    v6 = 0;
  }

  v11 = (v5 + 64) >> 6;
  v35 = v4;
  v33 = v2;
  while (v2 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (sub_1000C5AF8(0, &qword_1001D5370, IDSAccount_ptr), swift_dynamicCast(), v17 = v44, v16 = v6, v37 = v7, v4 = v35, !v44))
    {
LABEL_32:
      sub_1000DB160(v2);
      return;
    }

LABEL_20:
    v36 = v17;
    v18 = [v17 vettedAliases];
    if (v18)
    {
      v34 = a1;
      v19 = v18;
      v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v38 = *(v20 + 16);
      if (v38)
      {
        v21 = 0;
        v22 = (v20 + 40);
        v12 = _swiftEmptyArrayStorage;
        while (v21 < *(v20 + 16))
        {
          v23 = *(v22 - 1);
          v24 = *v22;

          if ((sub_1000CECE4(v23, v24) & 1) == 0)
          {
            v25 = objc_opt_self();
            v26 = String._bridgeToObjectiveC()();
            v27 = [v25 formatPhoneNumber:v26];

            v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v29 = v28;

            v24 = v29;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v12 = sub_1000D7FF0(0, *(v12 + 2) + 1, 1, v12);
          }

          v31 = *(v12 + 2);
          v30 = *(v12 + 3);
          if (v31 >= v30 >> 1)
          {
            v12 = sub_1000D7FF0((v30 > 1), v31 + 1, 1, v12);
          }

          ++v21;
          *(v12 + 2) = v31 + 1;
          v32 = &v12[16 * v31];
          *(v32 + 4) = v23;
          *(v32 + 5) = v24;
          v22 += 2;
          if (v38 == v21)
          {
            goto LABEL_9;
          }
        }

        __break(1u);
        goto LABEL_35;
      }

      v12 = _swiftEmptyArrayStorage;
LABEL_9:

      v13 = sub_1000DA838(v12);

      a1 = sub_1000D3A80(v13, v34);

      v2 = v33;
      v4 = v35;
    }

    v6 = v16;
    v7 = v37;
    v11 = (v5 + 64) >> 6;
  }

  v14 = v6;
  v15 = v7;
  v16 = v6;
  if (v7)
  {
LABEL_16:
    v37 = (v15 - 1) & v15;
    v17 = *(*(v2 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
    if (!v17)
    {
      goto LABEL_32;
    }

    goto LABEL_20;
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= v11)
    {
      goto LABEL_32;
    }

    v15 = *(v4 + 8 * v16);
    ++v14;
    if (v15)
    {
      goto LABEL_16;
    }
  }

LABEL_35:
  __break(1u);
}

uint64_t sub_1000D3F54(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_1000D80FC(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_1000D4058(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_1000CE97C((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1000C4810(&qword_1001D50D0, &unk_100149DB0);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    sub_1000C5AF8(0, &qword_1001D4F90, RPIdentity_ptr);
    **(*(v4 + 64) + 40) = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    return _swift_continuation_throwingResume(v4);
  }
}

uint64_t sub_1000D4148(uint64_t a1)
{
  v2[44] = a1;
  v2[45] = v1;
  sub_1000C4810(&qword_1001D5348, &qword_10014A480);
  v2[46] = swift_task_alloc();

  return _swift_task_switch(sub_1000D41E4, v1, 0);
}

uint64_t sub_1000D41E4(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 352);
  if ((*(v3 + 16) & 1) == 0 || !*(*(v2 + 360) + 208))
  {
LABEL_10:

    v9 = *(v2 + 8);

    return v9();
  }

  *(v2 + 272) = *(v3 + 56);
  v4 = *(v2 + 280);
  *(v2 + 376) = *(v2 + 272);
  *(v2 + 384) = v4;
  if (v4 >> 60 == 15 || (*(v2 + 288) = *(v3 + 24), *(v2 + 296) >> 60 == 15))
  {
    if (qword_1001D7300 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000BB0C(v5, qword_1001D7308);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Mising BT data", v8, 2u);
    }

    goto LABEL_10;
  }

  v11 = objc_opt_self();
  sub_1000C5808(v2 + 272, v2 + 304, &qword_1001D5350, &qword_10014A488);
  sub_1000C5808(v2 + 288, v2 + 320, &qword_1001D5350, &qword_10014A488);
  isa = Data._bridgeToObjectiveC()().super.isa;
  *(v2 + 392) = isa;
  *(v2 + 16) = v2;
  *(v2 + 56) = v2 + 336;
  *(v2 + 24) = sub_1000D44B0;
  v13 = swift_continuation_init();
  *(v2 + 216) = sub_1000C4810(&qword_1001D5358, &qword_10014A490);
  *(v2 + 160) = _NSConcreteStackBlock;
  *(v2 + 168) = 1107296256;
  *(v2 + 176) = sub_1000D5E10;
  *(v2 + 184) = &unk_1001AFD80;
  *(v2 + 192) = v13;
  [v11 contactHandlesForShortHashes:isa completion:v2 + 160];

  return _swift_continuation_await(v2 + 16);
}

uint64_t sub_1000D44B0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 400) = v2;
  v3 = *(v1 + 360);
  if (v2)
  {
    v4 = sub_1000D5144;
  }

  else
  {
    v4 = sub_1000D45D0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000D45D0()
{
  v21 = v0;
  v1 = v0[49];
  v2 = v0[42];
  v0[51] = v2;

  if (*(v2 + 16))
  {
    if (qword_1001D7300 != -1)
    {
      swift_once();
    }

    v3 = v0[44];
    v4 = type metadata accessor for Logger();
    v0[52] = sub_10000BB0C(v4, qword_1001D7308);
    sub_1000D8D78(v3, (v0 + 10));

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    sub_1000D8E28(v3);

    if (os_log_type_enabled(v5, v6))
    {
      v7 = v0[44];
      v8 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v8 = 136315394;
      *(v8 + 4) = sub_1000C3440(*v7, *(v7 + 8), &v20);
      *(v8 + 12) = 2080;
      v9 = Set.description.getter();
      v11 = sub_1000C3440(v9, v10, &v20);

      *(v8 + 14) = v11;
      _os_log_impl(&_mh_execute_header, v5, v6, "Found handles for identifier %s - %s", v8, 0x16u);
      swift_arrayDestroy();
    }

    v12 = swift_task_alloc();
    v0[53] = v12;
    *v12 = v0;
    v12[1] = sub_1000D4938;
    v13 = v0[44];

    return sub_1000D5EF4(v13);
  }

  else
  {

    if (qword_1001D7300 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_10000BB0C(v15, qword_1001D7308);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "No known handles - skipping identity share", v18, 2u);
    }

    sub_1000C59E0((v0 + 34), &qword_1001D5350, &qword_10014A488);
    sub_1000C59E0((v0 + 36), &qword_1001D5350, &qword_10014A488);

    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_1000D4938()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  v1[54] = v3;
  *v3 = v2;
  v3[1] = sub_1000D4AA4;
  v4 = v1[44];
  v5 = v1[51];

  return sub_1000D6380(v5, v4);
}

uint64_t sub_1000D4AA4(uint64_t a1)
{
  v2 = *(*v1 + 360);
  *(*v1 + 440) = a1;

  return _swift_task_switch(sub_1000D4BD8, v2, 0);
}

uint64_t sub_1000D4BD8()
{
  v19 = v0;
  v1 = v0[55];
  if (!v1)
  {
    sub_1000C59E0((v0 + 34), &qword_1001D5350, &qword_10014A488);
    v16 = (v0 + 36);
LABEL_12:
    sub_1000C59E0(v16, &qword_1001D5350, &qword_10014A488);
    goto LABEL_13;
  }

  v0[43] = v1;
  if (*(v1 + 16))
  {
    swift_beginAccess();

    sub_1000D9E80(v2);

    v3 = v0[43];
    v0[56] = v3;
    if (*(v3 + 16))
    {
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        v18 = v7;
        *v6 = 136315138;

        v8 = Set.description.getter();
        v10 = v9;

        v11 = sub_1000C3440(v8, v10, &v18);

        *(v6 + 4) = v11;
        _os_log_impl(&_mh_execute_header, v4, v5, "Needs identity share handles -  %s", v6, 0xCu);
        sub_1000C5604(v7);
      }

      v12 = swift_task_alloc();
      v0[57] = v12;
      *v12 = v0;
      v12[1] = sub_1000D4EC8;
      v14 = v0[47];
      v13 = v0[48];

      return sub_1000FFB00(v14, v13, v3);
    }

    sub_1000C59E0((v0 + 36), &qword_1001D5350, &qword_10014A488);
    v16 = (v0 + 34);
    goto LABEL_12;
  }

  sub_1000C59E0((v0 + 34), &qword_1001D5350, &qword_10014A488);
  sub_1000C59E0((v0 + 36), &qword_1001D5350, &qword_10014A488);

LABEL_13:

  v17 = v0[1];

  return v17();
}

uint64_t sub_1000D4EC8()
{
  v1 = *(*v0 + 360);

  return _swift_task_switch(sub_1000D4FF4, v1, 0);
}

uint64_t sub_1000D4FF4()
{
  v2 = v0[47];
  v1 = v0[48];
  v3 = v0[45];
  v4 = v0[46];

  sub_1000DAD18(v5, v0 + 43, v3);

  Date.init()();
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 56))(v4, 0, 1, v6);
  swift_beginAccess();
  sub_1000D7AE8(v4, v2, v1);
  swift_endAccess();
  sub_1000C59E0((v0 + 36), &qword_1001D5350, &qword_10014A488);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1000D5144()
{
  v1 = *(v0 + 392);
  swift_willThrow();

  if (qword_1001D7300 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000BB0C(v2, qword_1001D7308);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "No known handles - skipping identity share", v5, 2u);
  }

  sub_1000C59E0(v0 + 272, &qword_1001D5350, &qword_10014A488);
  sub_1000C59E0(v0 + 288, &qword_1001D5350, &qword_10014A488);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1000D52A8(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;
  return _swift_task_switch(sub_1000D52C8, v1, 0);
}

uint64_t sub_1000D52C8()
{
  v21 = v0;
  v1 = v0[18];
  if ((*(v1 + 16) & 1) == 0)
  {
    if (qword_1001D7300 != -1)
    {
      swift_once();
      v1 = v0[18];
    }

    v2 = type metadata accessor for Logger();
    sub_10000BB0C(v2, qword_1001D7308);
    sub_1000D8D78(v1, (v0 + 2));
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    sub_1000D8E28(v1);
    if (os_log_type_enabled(v3, v4))
    {
      v5 = v0[18];
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v20 = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_1000C3440(*v5, *(v5 + 8), &v20);
      _os_log_impl(&_mh_execute_header, v3, v4, "Removing known device peer %s", v6, 0xCu);
      sub_1000C5604(v7);
    }

    v8 = v0[18];
    v9 = *v8;
    v10 = v8[1];
    swift_beginAccess();
    sub_1000D8A78(v9, v10);
    swift_endAccess();
  }

  v11 = v0[19];
  swift_beginAccess();
  if (*(*(v11 + 192) + 16))
  {
    v12 = v0[1];

    return v12();
  }

  else
  {
    if (qword_1001D7300 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000BB0C(v14, qword_1001D7308);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "No more remaining known type5 peers - ending sync cache session", v17, 2u);
    }

    v18 = RPNWEndpoint.deviceColor.getter();
    v19 = swift_task_alloc();
    v0[20] = v19;
    *v19 = v0;
    v19[1] = sub_1000D55F0;

    return sub_1000F3458(v18 & 1);
  }
}

uint64_t sub_1000D55F0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000D56E4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000C48EC;

  return sub_1000D2B10();
}

uint64_t sub_1000D5794()
{
  if (qword_1001D7300 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000BB0C(v1, qword_1001D7308);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "FirstUnlock complete", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_1000D58E0;

  return sub_1000D2B10();
}

uint64_t sub_1000D58E0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000D59F4()
{
  if (qword_1001D7300 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000BB0C(v1, qword_1001D7308);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "AppleID changed", v4, 2u);
  }

  v5 = *(v0 + 40);

  return _swift_task_switch(sub_1000D5B14, v5, 0);
}

uint64_t sub_1000D5B14()
{
  v1 = *(v0 + 40);
  v2 = *(v1 + 208);
  *(v1 + 208) = 0;

  swift_beginAccess();
  *(v1 + 136) = &_swiftEmptySetSingleton;

  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_1000D5BDC;

  return sub_1000D1930();
}

uint64_t sub_1000D5BDC()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 56) = v3;
  *v3 = v2;
  v3[1] = sub_1000D5D1C;

  return sub_1000D2B10();
}

uint64_t sub_1000D5D1C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000D5E10(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_1000CE97C((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1000C4810(&qword_1001D50D0, &unk_100149DB0);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    **(*(v4 + 64) + 40) = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    return _swift_continuation_throwingResume(v4);
  }
}

uint64_t sub_1000D5EF4(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;
  return _swift_task_switch(sub_1000D5F14, v1, 0);
}

uint64_t sub_1000D5F14()
{
  v27 = v0;
  if ((*(v0[18] + 16) & 1) == 0)
  {
    goto LABEL_7;
  }

  v1 = v0[19];
  swift_beginAccess();
  v2 = *(*(v1 + 192) + 16);
  if (qword_1001D7300 != -1)
  {
    swift_once();
  }

  v3 = v0[18];
  v4 = type metadata accessor for Logger();
  sub_10000BB0C(v4, qword_1001D7308);
  sub_1000D8D78(v3, (v0 + 2));
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  sub_1000D8E28(v3);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[18];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v26 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_1000C3440(*v7, *(v7 + 8), &v26);
    _os_log_impl(&_mh_execute_header, v5, v6, "Adding known device peer %s", v8, 0xCu);
    sub_1000C5604(v9);
  }

  v10 = v0[18];
  v11 = *v10;
  v12 = v10[1];
  swift_beginAccess();

  sub_1000D80FC(&v26, v11, v12);
  swift_endAccess();

  if (!v2)
  {
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Known type5 peer detected - starting sync cache session", v17, 2u);
    }

    v18 = v0[19];

    v19 = *(v18 + 128);
    if (v19 && (v20 = [v19 deviceIRKData]) != 0)
    {
      v21 = v20;
      v22 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;
    }

    else
    {
      v22 = 0;
      v24 = 0xF000000000000000;
    }

    v0[20] = v22;
    v0[21] = v24;
    v25 = swift_task_alloc();
    v0[22] = v25;
    *v25 = v0;
    v25[1] = sub_1000D6258;

    return sub_1000F1E28(v22, v24);
  }

  else
  {
LABEL_7:
    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_1000D6258()
{
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 160);
  v5 = *v0;

  sub_1000C5928(v2, v1);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1000D6380(uint64_t a1, uint64_t a2)
{
  v3[34] = a2;
  v3[35] = v2;
  v3[33] = a1;
  sub_1000C4810(&qword_1001D5348, &qword_10014A480);
  v3[36] = swift_task_alloc();

  return _swift_task_switch(sub_1000D644C, v2, 0);
}

uint64_t sub_1000D644C()
{
  v107 = v0;
  v1 = [*(v0[35] + 112) getFriendDeviceIdentities];
  if (!v1)
  {
    if (qword_1001D7300 != -1)
    {
LABEL_79:
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_10000BB0C(v23, qword_1001D7308);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v24, v25))
    {
      goto LABEL_39;
    }

    v26 = swift_slowAlloc();
    *v26 = 0;
    v27 = "Unable to fetch friend device identities";
    goto LABEL_38;
  }

  v2 = v1;
  sub_1000C5AF8(0, &qword_1001D4F90, RPIdentity_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
    goto LABEL_32;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v0; v4; i = v0)
  {
    v5 = 0;
    v6 = v0[33];
    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v0 = (v6 + 56);
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v5 >= *(v7 + 16))
        {
          goto LABEL_31;
        }

        v8 = *(v3 + 32 + 8 * v5);
      }

      v9 = v8;
      if (__OFADD__(v5++, 1))
      {
        break;
      }

      v11 = [v8 accountID];
      if (v11)
      {
        v12 = v11;
        v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v15 = v14;

        if (*(v6 + 16))
        {
          v16 = v4;
          Hasher.init(_seed:)();
          String.hash(into:)();
          v17 = Hasher._finalize()();
          v18 = -1 << *(v6 + 32);
          v19 = v17 & ~v18;
          if ((*(v0 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
          {
            v20 = ~v18;
            while (1)
            {
              v21 = (*(v6 + 48) + 16 * v19);
              v22 = *v21 == v13 && v21[1] == v15;
              if (v22 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                break;
              }

              v19 = (v19 + 1) & v20;
              if (((*(v0 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
              {
                goto LABEL_21;
              }
            }

            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          else
          {
LABEL_21:
          }

          v4 = v16;
          v7 = v3 & 0xFFFFFFFFFFFFFF8;
        }

        else
        {
        }
      }

      else
      {
      }

      if (v5 == v4)
      {
        v0 = i;
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

LABEL_33:
  v0[37] = _swiftEmptyArrayStorage;
  v28 = v0[34];

  *(v0 + 15) = *(v28 + 56);
  v30 = v0[15];
  v29 = v0[16];
  v0[38] = v30;
  v0[39] = v29;
  if (v29 >> 60 == 15)
  {

    if (qword_1001D7300 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_10000BB0C(v31, qword_1001D7308);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v24, v25))
    {
      goto LABEL_39;
    }

    v26 = swift_slowAlloc();
    *v26 = 0;
    v27 = "Missing BT data";
LABEL_38:
    _os_log_impl(&_mh_execute_header, v24, v25, v27, v26, 2u);

LABEL_39:

    goto LABEL_40;
  }

  *(v0 + 17) = *(v0[34] + 40);
  v35 = v0[18];
  v0[40] = v0[17];
  v0[41] = v35;
  if (v35 >> 60 == 15)
  {
    goto LABEL_81;
  }

  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
  {
    v77 = _CocoaArrayWrapper.endIndex.getter();
    v0[42] = v77;
    if (v77)
    {
      goto LABEL_48;
    }

LABEL_81:
    v78 = v0[35];
    swift_beginAccess();
    v79 = *(v78 + 168);
    if (*(v79 + 16))
    {
      sub_1000C5808((v0 + 15), (v0 + 19), &qword_1001D5350, &qword_10014A488);
      v80 = sub_1000DA11C(v30, v29);
      v81 = v0[36];
      if (v82)
      {
        v83 = v80;
        v84 = *(v79 + 56);
        v85 = type metadata accessor for Date();
        v86 = *(v85 - 8);
        (*(v86 + 16))(v81, v84 + *(v86 + 72) * v83, v85);
        (*(v86 + 56))(v81, 0, 1, v85);
      }

      else
      {
        v85 = type metadata accessor for Date();
        (*(*(v85 - 8) + 56))(v81, 1, 1, v85);
      }

      v88 = v0;
    }

    else
    {
      v87 = v0[36];
      v85 = type metadata accessor for Date();
      v88 = v0;
      (*(*(v85 - 8) + 56))(v87, 1, 1, v85);
      sub_1000C5808((v88 + 15), (v88 + 21), &qword_1001D5350, &qword_10014A488);
    }

    v89 = v88[36];
    swift_endAccess();
    type metadata accessor for Date();
    v90 = (*(*(v85 - 8) + 48))(v89, 1, v85);
    sub_1000C59E0(v89, &qword_1001D5348, &qword_10014A480);
    if (qword_1001D7300 != -1)
    {
      swift_once();
    }

    v91 = v88[34];
    v92 = type metadata accessor for Logger();
    sub_10000BB0C(v92, qword_1001D7308);

    sub_1000D8D78(v91, (v88 + 2));
    v93 = Logger.logObject.getter();
    v94 = static os_log_type_t.default.getter();
    sub_1000D8E28(v91);
    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v106[0] = v96;
      *v95 = 134218498;
      v97 = _swiftEmptyArrayStorage & 0x4000000000000000;
      if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || v97)
      {
        v98 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v98 = _swiftEmptyArrayStorage[2];
      }

      *(v95 + 4) = v98;

      *(v95 + 12) = 2080;
      v99 = i[18];
      if (v99 >> 60 == 15)
      {
        v100 = 0xE600000000000000;
        v101 = 0x3E656E6F6E3CLL;
      }

      else
      {
        v101 = sub_1000CC910(i[17], v99);
        v100 = v102;
      }

      v103 = sub_1000C3440(v101, v100, v106);

      *(v95 + 14) = v103;
      *(v95 + 22) = 1024;
      *(v95 + 24) = v90 != 1;
      _os_log_impl(&_mh_execute_header, v93, v94, "No matching identities %ld for authTag %s - attempted sync previously %{BOOL}d", v95, 0x1Cu);
      sub_1000C5604(v96);
    }

    else
    {

      v97 = _swiftEmptyArrayStorage & 0x4000000000000000;
    }

    if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || v97)
    {
      v104 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v104 = _swiftEmptyArrayStorage[2];
    }

    v0 = i;
    sub_1000C59E0((i + 15), &qword_1001D5350, &qword_10014A488);
    if (!v104 || v90 == 1)
    {
      v32 = i[33];

      goto LABEL_41;
    }

LABEL_40:
    v32 = 0;
LABEL_41:

    v33 = v0[1];

    return v33(v32);
  }

  v36 = _swiftEmptyArrayStorage[2];
  v0[42] = v36;
  if (!v36)
  {
    goto LABEL_81;
  }

LABEL_48:
  *(v0 + 89) = *(v0[34] + 72);
  sub_1000C5808((v0 + 15), (v0 + 23), &qword_1001D5350, &qword_10014A488);
  sub_1000C5808((v0 + 17), (v0 + 25), &qword_1001D5350, &qword_10014A488);
  v37 = 0;
  v0[31] = sub_1000DA838(_swiftEmptyArrayStorage);
  while (1)
  {
    v38 = v0[37];
    if ((v38 & 0xC000000000000001) != 0)
    {
      v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v37 >= *(v38 + 16))
      {
        goto LABEL_78;
      }

      v39 = *(v38 + 8 * v37 + 32);
    }

    v40 = v39;
    v0[43] = v39;
    v0[44] = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      __break(1u);
LABEL_78:
      __break(1u);
      goto LABEL_79;
    }

    v41 = [v39 accountID];
    if (v41)
    {
      break;
    }

LABEL_50:
    v37 = v0[44];
    if (v37 == v0[42])
    {
      sub_1000C59E0((v0 + 17), &qword_1001D5350, &qword_10014A488);
      sub_1000C59E0((v0 + 15), &qword_1001D5350, &qword_10014A488);

      v32 = v0[31];
      goto LABEL_41;
    }
  }

  if (*(v0 + 89) >= 3u)
  {
    v42 = 5;
  }

  else
  {
    v42 = 2;
  }

  v43 = v41;
  v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v46 = v45;

  v0[45] = v44;
  v0[46] = v46;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v48 = Data._bridgeToObjectiveC()().super.isa;
  v0[32] = 0;
  v49 = [v40 verifyAuthTag:isa data:v48 type:v42 error:v0 + 32];

  v50 = v0[32];
  if (!v49)
  {
    v51 = v50;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1001D7300 != -1)
    {
      swift_once();
    }

    v52 = type metadata accessor for Logger();
    sub_10000BB0C(v52, qword_1001D7308);
    v53 = v40;

    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v106[0] = v58;
      *v56 = 138412546;
      *(v56 + 4) = v53;
      *v57 = v53;
      *(v56 + 12) = 2080;
      v59 = v53;
      *(v56 + 14) = sub_1000C3440(v44, v46, v106);
      _os_log_impl(&_mh_execute_header, v54, v55, "AuthTag doesn't match identity %@ - %s needs identity share", v56, 0x16u);
      sub_1000C59E0(v57, &qword_1001D55A0, &unk_100149890);

      sub_1000C5604(v58);
    }

    sub_1000D80FC(v0 + 27, v44, v46);

    goto LABEL_50;
  }

  v60 = v0;
  v61 = qword_1001D7300;
  v62 = v50;
  if (v61 != -1)
  {
    swift_once();
  }

  v63 = type metadata accessor for Logger();
  v60[47] = sub_10000BB0C(v63, qword_1001D7308);
  v64 = v40;
  v65 = Logger.logObject.getter();
  v66 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    *v67 = 138412290;
    *(v67 + 4) = v64;
    *v68 = v64;
    v69 = v64;
    _os_log_impl(&_mh_execute_header, v65, v66, "AuthTag matches existing identity %@", v67, 0xCu);
    sub_1000C59E0(v68, &qword_1001D55A0, &unk_100149890);
  }

  v70 = v60[35];

  v71 = *(v70 + 224);
  v60[48] = v71;
  v72 = [v64 deviceIRKData];
  if (v72)
  {
    v73 = v72;
    v74 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v76 = v75;
  }

  else
  {
    v74 = 0;
    v76 = 0xF000000000000000;
  }

  v60[49] = v74;
  v60[50] = v76;

  return _swift_task_switch(sub_1000D726C, v71, 0);
}

uint64_t sub_1000D726C()
{
  v2 = *(v0 + 392);
  v1 = *(v0 + 400);
  v3 = *(v0 + 280);
  *(v0 + 90) = sub_1000F2ADC(v2, v1) & 1;
  sub_1000C5928(v2, v1);

  return _swift_task_switch(sub_1000D7334, v3, 0);
}

uint64_t sub_1000D7334()
{
  v63 = v0;
  if (*(v0 + 90))
  {
    v1 = *(v0 + 344);

    v2 = v1;
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = *(v0 + 344);
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      *(v6 + 4) = v5;
      *v7 = v5;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v3, v4, "Identity was previously synced with peer %@ - no identity share needed", v6, 0xCu);
      sub_1000C59E0(v7, &qword_1001D55A0, &unk_100149890);
    }

    v9 = *(v0 + 344);
    sub_1000C59E0(v0 + 136, &qword_1001D5350, &qword_10014A488);
    sub_1000C59E0(v0 + 120, &qword_1001D5350, &qword_10014A488);

    v10 = 0;
    goto LABEL_9;
  }

  v11 = *(v0 + 344);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = *(v0 + 344);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412290;
    *(v15 + 4) = v14;
    *v16 = v14;
    v17 = v14;
    _os_log_impl(&_mh_execute_header, v12, v13, "Identity not synced with peer %@ - needs identity share", v15, 0xCu);
    sub_1000C59E0(v16, &qword_1001D55A0, &unk_100149890);
  }

  v19 = *(v0 + 360);
  v18 = *(v0 + 368);
  v20 = *(v0 + 344);

  v21 = (v0 + 248);
  sub_1000D80FC((v0 + 232), v19, v18);

  v22 = *(v0 + 352);
  if (v22 == *(v0 + 336))
  {
LABEL_8:
    sub_1000C59E0(v0 + 136, &qword_1001D5350, &qword_10014A488);
    sub_1000C59E0(v0 + 120, &qword_1001D5350, &qword_10014A488);

    v10 = *(v0 + 248);
LABEL_9:

    v23 = *(v0 + 8);

    return v23(v10);
  }

  while (1)
  {
    v25 = *(v0 + 296);
    if ((v25 & 0xC000000000000001) != 0)
    {
      v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v22 >= *(v25 + 16))
      {
        goto LABEL_40;
      }

      v26 = *(v25 + 8 * v22 + 32);
    }

    v21 = v26;
    *(v0 + 344) = v26;
    *(v0 + 352) = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v27 = [v26 accountID];
    if (v27)
    {
      break;
    }

LABEL_14:
    v22 = *(v0 + 352);
    if (v22 == *(v0 + 336))
    {
      goto LABEL_8;
    }
  }

  if (*(v0 + 89) >= 3u)
  {
    v28 = 5;
  }

  else
  {
    v28 = 2;
  }

  v29 = v27;
  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v31;

  *(v0 + 360) = v30;
  *(v0 + 368) = v32;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v34 = Data._bridgeToObjectiveC()().super.isa;
  *(v0 + 256) = 0;
  v35 = [v21 verifyAuthTag:isa data:v34 type:v28 error:v0 + 256];

  v36 = *(v0 + 256);
  if (!v35)
  {
    v37 = v36;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1001D7300 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_10000BB0C(v38, qword_1001D7308);
    v39 = v21;

    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v62 = v44;
      *v42 = 138412546;
      *(v42 + 4) = v39;
      *v43 = v39;
      *(v42 + 12) = 2080;
      v45 = v39;
      *(v42 + 14) = sub_1000C3440(v30, v32, &v62);
      _os_log_impl(&_mh_execute_header, v40, v41, "AuthTag doesn't match identity %@ - %s needs identity share", v42, 0x16u);
      sub_1000C59E0(v43, &qword_1001D55A0, &unk_100149890);

      sub_1000C5604(v44);
    }

    v21 = (v0 + 248);
    sub_1000D80FC((v0 + 216), v30, v32);

    goto LABEL_14;
  }

  v46 = qword_1001D7300;
  v47 = v36;
  if (v46 == -1)
  {
    goto LABEL_31;
  }

LABEL_41:
  swift_once();
LABEL_31:
  v48 = type metadata accessor for Logger();
  *(v0 + 376) = sub_10000BB0C(v48, qword_1001D7308);
  v49 = v21;
  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    *v52 = 138412290;
    *(v52 + 4) = v49;
    *v53 = v49;
    v54 = v49;
    _os_log_impl(&_mh_execute_header, v50, v51, "AuthTag matches existing identity %@", v52, 0xCu);
    sub_1000C59E0(v53, &qword_1001D55A0, &unk_100149890);
  }

  v55 = *(v0 + 280);

  v56 = *(v55 + 224);
  *(v0 + 384) = v56;
  v57 = [v49 deviceIRKData];
  if (v57)
  {
    v58 = v57;
    v59 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v61 = v60;
  }

  else
  {
    v59 = 0;
    v61 = 0xF000000000000000;
  }

  *(v0 + 392) = v59;
  *(v0 + 400) = v61;

  return _swift_task_switch(sub_1000D726C, v56, 0);
}

uint64_t sub_1000D7AE8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = sub_1000C4810(&qword_1001D5348, &qword_10014A480);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_1000C59E0(a1, &qword_1001D5348, &qword_10014A480);
    sub_1000D9FAC(a2, a3, v9);
    sub_1000C4AA4(a2, a3);
    return sub_1000C59E0(v9, &qword_1001D5348, &qword_10014A480);
  }

  else
  {
    (*(v11 + 32))(v13, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_1000DA388(v13, a2, a3, isUniquelyReferenced_nonNull_native);
    result = sub_1000C4AA4(a2, a3);
    *v3 = v17;
  }

  return result;
}

id sub_1000D7CFC()
{
  ObjectType = swift_getObjectType();
  swift_defaultActor_initialize();
  v0[14] = [objc_opt_self() sharedPeopleDaemon];
  v0[15] = [objc_opt_self() sharedCloudDaemon];
  v0[16] = 0;
  v0[17] = &_swiftEmptySetSingleton;
  v0[18] = 0;
  v0[19] = 0;
  v0[20] = &_swiftEmptySetSingleton;
  v0[21] = &_swiftEmptyDictionarySingleton;
  v0[22] = 0;
  v0[23] = 0;
  v0[24] = &_swiftEmptySetSingleton;
  type metadata accessor for RPIdentitySyncSessionTelemetry(0, v2);
  v0[25] = 0;
  v0[26] = 0;
  v0[27] = sub_100102D8C();
  type metadata accessor for RPIdentitySyncCache(0, v3);
  v0[28] = sub_1000F472C();
  v5.receiver = v0;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, "init");
}

id *sub_1000D7E0C()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1000D7E9C()
{
  sub_1000D7E0C();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1000D7EC8()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000C48EC;

  return sub_1000CFB48(v3, v4, v5, v2);
}

uint64_t sub_1000D7F5C()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000C5EF0;

  return sub_1000CFE24(v3, v4, v5, v2);
}

char *sub_1000D7FF0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000C4810(&qword_1001D52C8, &qword_10014A248);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1000D80FC(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
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

    sub_1000D8564(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1000D8270()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000C48EC;

  return sub_1000D0624();
}

Swift::Int sub_1000D8304(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000C4810(&unk_1001D5660, &unk_10014B240);
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

Swift::Int sub_1000D8564(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
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
    sub_1000D8304(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1000D86E4();
      goto LABEL_16;
    }

    sub_1000D8840(v8 + 1);
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

void *sub_1000D86E4()
{
  v1 = v0;
  sub_1000C4810(&unk_1001D5660, &unk_10014B240);
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

Swift::Int sub_1000D8840(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000C4810(&unk_1001D5660, &unk_10014B240);
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

uint64_t sub_1000D8A78(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
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
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1000D86E4();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_1000D8BB4(v8);
  *v2 = v16;
  return v12;
}

unint64_t sub_1000D8BB4(unint64_t result)
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
        v10 = Hasher._finalize()();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
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

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1000D8DD4()
{
  result = qword_1001D5340;
  if (!qword_1001D5340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5340);
  }

  return result;
}

Swift::Int sub_1000D8E94(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v40 = type metadata accessor for Date();
  v5 = *(v40 - 8);
  __chkstk_darwin(v40);
  v39 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_1000C4810(&qword_1001D5360, &unk_10014A4A8);
  v38 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
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
    v36 = (v5 + 16);
    v37 = v5;
    v16 = (v5 + 32);
    v17 = result + 64;
    while (v14)
    {
      v20 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v23 = v20 | (v10 << 6);
      v24 = *(v5 + 72);
      v25 = *(v7 + 56) + v24 * v23;
      v41 = *(*(v7 + 48) + 16 * v23);
      v26 = *(&v41 + 1);
      if (v38)
      {
        (*v16)(v39, v25, v40);
      }

      else
      {
        (*v36)(v39, v25, v40);
        sub_1000C61D4(v41, v26);
      }

      Hasher.init(_seed:)();
      Data.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        v19 = v41;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v18 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
      v19 = v41;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v9 + 48) + 16 * v18) = v19;
      result = (*v16)(*(v9 + 56) + v24 * v18, v39, v40);
      ++*(v9 + 16);
      v5 = v37;
    }

    v21 = v10;
    while (1)
    {
      v10 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v22 = v11[v10];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v14 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v34 = 1 << *(v7 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v7 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_1000D921C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if (((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return v6;
  }

  v7 = v3;
  v10 = ~v5;
  v11 = a2 >> 62;
  if (a1)
  {
    v12 = 0;
  }

  else
  {
    v12 = a2 == 0xC000000000000000;
  }

  v13 = !v12;
  v74 = v13;
  v14 = __OFSUB__(HIDWORD(a1), a1);
  v71 = v14;
  __n = BYTE6(a2);
  v69 = a1;
  v70 = HIDWORD(a1) - a1;
  v65 = (a1 >> 32) - a1;
  v66 = a1 >> 32;
  v72 = v10;
  v73 = v3 + 64;
  while (1)
  {
    v15 = (*(v7 + 48) + 16 * v6);
    v17 = *v15;
    v16 = v15[1];
    v18 = v16 >> 62;
    if (v16 >> 62 == 3)
    {
      if (v17)
      {
        v19 = 0;
      }

      else
      {
        v19 = v16 == 0xC000000000000000;
      }

      v21 = !v19 || v11 < 3;
      if (((v21 | v74) & 1) == 0)
      {
        return v6;
      }

LABEL_36:
      v22 = 0;
      if (v11 <= 1)
      {
        goto LABEL_33;
      }

      goto LABEL_37;
    }

    if (v18 > 1)
    {
      if (v18 != 2)
      {
        goto LABEL_36;
      }

      v24 = *(v17 + 16);
      v23 = *(v17 + 24);
      v25 = __OFSUB__(v23, v24);
      v22 = v23 - v24;
      if (v25)
      {
        goto LABEL_142;
      }

      if (v11 <= 1)
      {
        goto LABEL_33;
      }
    }

    else if (v18)
    {
      LODWORD(v22) = HIDWORD(v17) - v17;
      if (__OFSUB__(HIDWORD(v17), v17))
      {
        goto LABEL_141;
      }

      v22 = v22;
      if (v11 <= 1)
      {
LABEL_33:
        v26 = __n;
        if (v11)
        {
          v26 = v70;
          if (v71)
          {
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
LABEL_148:
            __break(1u);
LABEL_149:
            __break(1u);
LABEL_150:
            __break(1u);
LABEL_151:
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
LABEL_157:
            __break(1u);
LABEL_158:
            __break(1u);
LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
LABEL_161:
            __break(1u);
          }
        }

        goto LABEL_39;
      }
    }

    else
    {
      v22 = BYTE6(v16);
      if (v11 <= 1)
      {
        goto LABEL_33;
      }
    }

LABEL_37:
    if (v11 != 2)
    {
      if (!v22)
      {
        return v6;
      }

      goto LABEL_13;
    }

    v28 = *(a1 + 16);
    v27 = *(a1 + 24);
    v25 = __OFSUB__(v27, v28);
    v26 = v27 - v28;
    if (v25)
    {
      goto LABEL_140;
    }

LABEL_39:
    if (v22 != v26)
    {
      goto LABEL_13;
    }

    if (v22 < 1)
    {
      return v6;
    }

    if (v18 > 1)
    {
      break;
    }

    if (v18)
    {
      if (v17 > v17 >> 32)
      {
        goto LABEL_143;
      }

      sub_1000C61D4(v17, v16);
      v35 = __DataStorage._bytes.getter();
      if (v35)
      {
        v40 = __DataStorage._offset.getter();
        if (__OFSUB__(v17, v40))
        {
          goto LABEL_145;
        }

        v35 += v17 - v40;
      }

      __DataStorage._length.getter();
      if (v11 == 2)
      {
        v59 = *(a1 + 16);
        v64 = *(a1 + 24);
        v37 = __DataStorage._bytes.getter();
        if (v37)
        {
          v60 = __DataStorage._offset.getter();
          if (__OFSUB__(v59, v60))
          {
            goto LABEL_160;
          }

          v37 += v59 - v60;
        }

        v25 = __OFSUB__(v64, v59);
        v61 = v64 - v59;
        if (v25)
        {
          goto LABEL_155;
        }

        result = __DataStorage._length.getter();
        if (result >= v61)
        {
          v39 = v61;
        }

        else
        {
          v39 = result;
        }

        if (!v35)
        {
          goto LABEL_175;
        }

        if (!v37)
        {
          goto LABEL_174;
        }

        goto LABEL_130;
      }

      if (v11 == 1)
      {
        if (v66 < v69)
        {
          goto LABEL_154;
        }

        v37 = __DataStorage._bytes.getter();
        if (v37)
        {
          v41 = __DataStorage._offset.getter();
          if (__OFSUB__(v69, v41))
          {
            goto LABEL_161;
          }

          v37 += v69 - v41;
        }

        result = __DataStorage._length.getter();
        v39 = v65;
        if (result < v65)
        {
          v39 = result;
        }

        if (!v35)
        {
          goto LABEL_177;
        }

        if (!v37)
        {
          goto LABEL_176;
        }

        goto LABEL_130;
      }

      LOWORD(__s1[0]) = a1;
      BYTE2(__s1[0]) = BYTE2(a1);
      BYTE3(__s1[0]) = BYTE3(a1);
      BYTE4(__s1[0]) = v67;
      BYTE5(__s1[0]) = BYTE5(a1);
      BYTE6(__s1[0]) = BYTE6(a1);
      HIBYTE(__s1[0]) = HIBYTE(a1);
      LOWORD(__s1[1]) = a2;
      BYTE2(__s1[1]) = BYTE2(a2);
      BYTE3(__s1[1]) = BYTE3(a2);
      BYTE4(__s1[1]) = BYTE4(a2);
      BYTE5(__s1[1]) = BYTE5(a2);
      if (!v35)
      {
        goto LABEL_166;
      }

      goto LABEL_133;
    }

    __s1[0] = v17;
    LOWORD(__s1[1]) = v16;
    BYTE2(__s1[1]) = BYTE2(v16);
    BYTE3(__s1[1]) = BYTE3(v16);
    BYTE4(__s1[1]) = BYTE4(v16);
    BYTE5(__s1[1]) = BYTE5(v16);
    if (!v11)
    {
      goto LABEL_91;
    }

    if (v11 != 1)
    {
      v48 = *(a1 + 16);
      v47 = *(a1 + 24);
      sub_1000C61D4(v17, v16);
      v32 = __DataStorage._bytes.getter();
      if (v32)
      {
        v49 = __DataStorage._offset.getter();
        if (__OFSUB__(v48, v49))
        {
          goto LABEL_157;
        }

        v32 += v48 - v49;
      }

      v25 = __OFSUB__(v47, v48);
      v45 = v47 - v48;
      if (v25)
      {
        goto LABEL_149;
      }

      v46 = __DataStorage._length.getter();
      v7 = v68;
      if (!v32)
      {
        goto LABEL_164;
      }

      goto LABEL_98;
    }

    if (v66 < v69)
    {
      goto LABEL_146;
    }

    sub_1000C61D4(v17, v16);
    v29 = __DataStorage._bytes.getter();
    if (!v29)
    {
      goto LABEL_167;
    }

    v30 = v29;
    v31 = __DataStorage._offset.getter();
    if (__OFSUB__(v69, v31))
    {
      goto LABEL_152;
    }

    v32 = v69 - v31 + v30;
    result = __DataStorage._length.getter();
    if (!v32)
    {
      goto LABEL_168;
    }

LABEL_105:
    if (result >= v65)
    {
      v50 = v65;
    }

    else
    {
      v50 = result;
    }

LABEL_108:
    v54 = __s1;
    v55 = v32;
LABEL_134:
    v62 = memcmp(v54, v55, v50);
    sub_1000C4AA4(v17, v16);
LABEL_135:
    v10 = v72;
    v4 = v73;
    if (!v62)
    {
      return v6;
    }

LABEL_13:
    v6 = (v6 + 1) & v10;
    if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return v6;
    }
  }

  if (v18 == 2)
  {
    v34 = *(v17 + 16);
    sub_1000C61D4(v17, v16);
    v35 = __DataStorage._bytes.getter();
    if (v35)
    {
      v36 = __DataStorage._offset.getter();
      if (__OFSUB__(v34, v36))
      {
        goto LABEL_144;
      }

      v35 += v34 - v36;
    }

    result = __DataStorage._length.getter();
    if (v11 == 2)
    {
      v56 = *(a1 + 16);
      v63 = *(a1 + 24);
      v37 = __DataStorage._bytes.getter();
      if (v37)
      {
        v57 = __DataStorage._offset.getter();
        if (__OFSUB__(v56, v57))
        {
          goto LABEL_158;
        }

        v37 += v56 - v57;
      }

      v25 = __OFSUB__(v63, v56);
      v58 = v63 - v56;
      if (v25)
      {
        goto LABEL_153;
      }

      result = __DataStorage._length.getter();
      if (result >= v58)
      {
        v39 = v58;
      }

      else
      {
        v39 = result;
      }

      if (!v35)
      {
        goto LABEL_173;
      }

      if (!v37)
      {
        goto LABEL_172;
      }

      goto LABEL_130;
    }

    if (v11 == 1)
    {
      if (v66 < v69)
      {
        goto LABEL_148;
      }

      v37 = __DataStorage._bytes.getter();
      if (v37)
      {
        v38 = __DataStorage._offset.getter();
        if (__OFSUB__(v69, v38))
        {
          goto LABEL_159;
        }

        v37 += v69 - v38;
      }

      result = __DataStorage._length.getter();
      v39 = v65;
      if (result < v65)
      {
        v39 = result;
      }

      if (!v35)
      {
        goto LABEL_171;
      }

      if (!v37)
      {
        goto LABEL_170;
      }

LABEL_130:
      if (v35 == v37)
      {
        sub_1000C4AA4(v17, v16);
        return v6;
      }

      v62 = memcmp(v35, v37, v39);
      sub_1000C4AA4(v17, v16);
      v7 = v68;
      goto LABEL_135;
    }

    LOWORD(__s1[0]) = a1;
    BYTE2(__s1[0]) = BYTE2(a1);
    BYTE3(__s1[0]) = BYTE3(a1);
    BYTE4(__s1[0]) = v67;
    BYTE5(__s1[0]) = BYTE5(a1);
    BYTE6(__s1[0]) = BYTE6(a1);
    HIBYTE(__s1[0]) = HIBYTE(a1);
    LOWORD(__s1[1]) = a2;
    BYTE2(__s1[1]) = BYTE2(a2);
    BYTE3(__s1[1]) = BYTE3(a2);
    BYTE4(__s1[1]) = BYTE4(a2);
    BYTE5(__s1[1]) = BYTE5(a2);
    if (!v35)
    {
      goto LABEL_169;
    }

LABEL_133:
    v55 = __s1;
    v54 = v35;
    v50 = __n;
    goto LABEL_134;
  }

  memset(__s1, 0, 14);
  if (!v11)
  {
LABEL_91:
    __s2 = a1;
    v77 = BYTE2(a1);
    v78 = BYTE3(a1);
    v79 = v67;
    v80 = BYTE5(a1);
    v81 = BYTE6(a1);
    v82 = HIBYTE(a1);
    v83 = a2;
    v84 = BYTE2(a2);
    v85 = BYTE3(a2);
    v86 = BYTE4(a2);
    v87 = BYTE5(a2);
    if (!memcmp(__s1, &__s2, __n))
    {
      return v6;
    }

    goto LABEL_13;
  }

  if (v11 == 2)
  {
    v43 = *(a1 + 16);
    v42 = *(a1 + 24);
    sub_1000C61D4(v17, v16);
    v32 = __DataStorage._bytes.getter();
    if (v32)
    {
      v44 = __DataStorage._offset.getter();
      if (__OFSUB__(v43, v44))
      {
        goto LABEL_156;
      }

      v32 += v43 - v44;
    }

    v25 = __OFSUB__(v42, v43);
    v45 = v42 - v43;
    if (v25)
    {
      goto LABEL_150;
    }

    v46 = __DataStorage._length.getter();
    v7 = v68;
    if (!v32)
    {
      goto LABEL_165;
    }

LABEL_98:
    if (v46 >= v45)
    {
      v50 = v45;
    }

    else
    {
      v50 = v46;
    }

    goto LABEL_108;
  }

  if (v66 < v69)
  {
    goto LABEL_147;
  }

  sub_1000C61D4(v17, v16);
  v51 = __DataStorage._bytes.getter();
  if (v51)
  {
    v52 = v51;
    v53 = __DataStorage._offset.getter();
    if (__OFSUB__(v69, v53))
    {
      goto LABEL_151;
    }

    v32 = v69 - v53 + v52;
    result = __DataStorage._length.getter();
    if (!v32)
    {
      goto LABEL_163;
    }

    goto LABEL_105;
  }

  __DataStorage._length.getter();
LABEL_163:
  __break(1u);
LABEL_164:
  __break(1u);
LABEL_165:
  __break(1u);
LABEL_166:
  __break(1u);
LABEL_167:
  result = __DataStorage._length.getter();
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
LABEL_173:
  __break(1u);
LABEL_174:
  __break(1u);
LABEL_175:
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
  return result;
}

void *sub_1000D9A80(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, unint64_t, char *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_1000DA940(result, a2, a3, a4);

    return v8;
  }

  return result;
}

Swift::Int sub_1000D9B10(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for Date();
  v48 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v50 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v45 = &v41 - v12;
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  v44 = v11;
  sub_1000C4810(&qword_1001D5360, &unk_10014A4A8);
  result = static _DictionaryStorage.allocate(capacity:)();
  v14 = result;
  if (a2 < 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = *a1;
  }

  v16 = 0;
  v42 = result;
  v43 = v48 + 16;
  v49 = v48 + 32;
  v17 = result + 64;
  v18 = v44;
  v41 = a4;
  while (v15)
  {
    v19 = v18;
    v20 = __clz(__rbit64(v15));
    v46 = (v15 - 1) & v15;
LABEL_16:
    v23 = v20 | (v16 << 6);
    v24 = a4[7];
    v25 = (a4[6] + 16 * v23);
    v26 = *v25;
    v27 = v25[1];
    v28 = v48;
    v47 = *(v48 + 72);
    v29 = v45;
    (*(v48 + 16))(v45, v24 + v47 * v23, v19);
    v30 = *(v28 + 32);
    v30(v50, v29, v19);
    v14 = v42;
    Hasher.init(_seed:)();
    sub_1000C61D4(v26, v27);
    Data.hash(into:)();
    result = Hasher._finalize()();
    v31 = -1 << *(v14 + 32);
    v32 = result & ~v31;
    v33 = v32 >> 6;
    if (((-1 << v32) & ~*(v17 + 8 * (v32 >> 6))) == 0)
    {
      v35 = 0;
      v36 = (63 - v31) >> 6;
      v18 = v44;
      while (++v33 != v36 || (v35 & 1) == 0)
      {
        v37 = v33 == v36;
        if (v33 == v36)
        {
          v33 = 0;
        }

        v35 |= v37;
        v38 = *(v17 + 8 * v33);
        if (v38 != -1)
        {
          v34 = __clz(__rbit64(~v38)) + (v33 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v34 = __clz(__rbit64((-1 << v32) & ~*(v17 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
    v18 = v44;
LABEL_26:
    *(v17 + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v34;
    v39 = (*(v14 + 48) + 16 * v34);
    *v39 = v26;
    v39[1] = v27;
    result = (v30)(*(v14 + 56) + v34 * v47, v50, v18);
    ++*(v14 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v41;
    v15 = v46;
    if (!a3)
    {
      return v14;
    }
  }

  v21 = v16;
  while (1)
  {
    v16 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v16 >= a2)
    {
      return v14;
    }

    v22 = a1[v16];
    ++v21;
    if (v22)
    {
      v19 = v18;
      v20 = __clz(__rbit64(v22));
      v46 = (v22 - 1) & v22;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1000D9E80(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_1000D8A78(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_1000D9FAC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_1000DA11C(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1000DA5BC();
      v10 = v20;
    }

    sub_1000C4AA4(*(*(v10 + 48) + 16 * v8), *(*(v10 + 48) + 16 * v8 + 8));
    v11 = *(v10 + 56);
    v12 = type metadata accessor for Date();
    v19 = *(v12 - 8);
    (*(v19 + 32))(a3, v11 + *(v19 + 72) * v8, v12);
    sub_1000DA194(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = type metadata accessor for Date();
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_1000DA11C(uint64_t a1, unint64_t a2)
{
  Hasher.init(_seed:)();
  Data.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_1000D921C(a1, a2, v4);
}

unint64_t sub_1000DA194(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    while (1)
    {
      v9 = (*(a2 + 48) + 16 * v6);
      v10 = *v9;
      v11 = v9[1];
      Hasher.init(_seed:)();
      sub_1000C61D4(v10, v11);
      Data.hash(into:)();
      v12 = Hasher._finalize()();
      result = sub_1000C4AA4(v10, v11);
      v13 = v12 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v13 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v14 = *(a2 + 48);
      v15 = (v14 + 16 * v3);
      v16 = (v14 + 16 * v6);
      if (v3 != v6 || v15 >= v16 + 1)
      {
        *v15 = *v16;
      }

      v17 = *(a2 + 56);
      v18 = *(*(type metadata accessor for Date() - 8) + 72);
      v19 = v18 * v3;
      result = v17 + v18 * v3;
      v20 = v18 * v6;
      v21 = v17 + v18 * v6 + v18;
      if (v19 < v20 || result >= v21)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v19 == v20)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v13 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v13)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1000DA388(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1000DA11C(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_1000DA5BC();
      goto LABEL_7;
    }

    sub_1000D8E94(v15, a4 & 1);
    v26 = sub_1000DA11C(a2, a3);
    if ((v16 & 1) == (v27 & 1))
    {
      v12 = v26;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = type metadata accessor for Date();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_1000DA50C(v12, a2, a3, a1, v18);

  return sub_1000C61D4(a2, a3);
}

uint64_t sub_1000DA50C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for Date();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

char *sub_1000DA5BC()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v37 = v2;
  v38 = v3;
  __chkstk_darwin(v2);
  v36 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C4810(&qword_1001D5360, &unk_10014A4A8);
  v5 = *v0;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v32 = v1;
    v33 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v39 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v34 = v38 + 32;
    v35 = v38 + 16;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v40 = (v15 - 1) & v15;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = 16 * v20;
        v22 = (*(v5 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v37;
        v26 = v38;
        v27 = *(v38 + 72) * v20;
        v28 = v36;
        (*(v38 + 16))(v36, *(v5 + 56) + v27, v37);
        v29 = v39;
        v30 = (*(v39 + 48) + v21);
        *v30 = v23;
        v30[1] = v24;
        (*(v26 + 32))(*(v29 + 56) + v27, v28, v25);
        result = sub_1000C61D4(v23, v24);
        v15 = v40;
      }

      while (v40);
    }

    v18 = v11;
    v7 = v39;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v32;
        goto LABEL_18;
      }

      v19 = *(v33 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v40 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

uint64_t sub_1000DA838(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1000D80FC(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1000DA8D0(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;

      sub_1000D80FC(&v5, v4, v3);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_1000DA940(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, unint64_t, char *))
{
  v29 = a2;
  v39 = a4;
  v30 = a1;
  v38 = type metadata accessor for Date();
  result = __chkstk_darwin(v38);
  v36 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v6;
  v8 = 0;
  v40 = a3;
  v9 = *(a3 + 64);
  v31 = 0;
  v32 = a3 + 64;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v9;
  v13 = (v10 + 63) >> 6;
  v34 = v6 + 8;
  v35 = v6 + 16;
  while (v12)
  {
    v14 = __clz(__rbit64(v12));
    v41 = (v12 - 1) & v12;
LABEL_11:
    v17 = v14 | (v8 << 6);
    v18 = v40[7];
    v19 = (v40[6] + 16 * v17);
    v20 = *v19;
    v21 = v19[1];
    v22 = v36;
    v23 = v37;
    v24 = *(v37 + 72);
    v33 = v17;
    v25 = v38;
    (*(v37 + 16))(v36, v18 + v24 * v17, v38);
    sub_1000C61D4(v20, v21);
    v26 = v39(v20, v21, v22);
    (*(v23 + 8))(v22, v25);
    result = sub_1000C4AA4(v20, v21);
    v12 = v41;
    if (v26)
    {
      *(v30 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v33;
      if (__OFADD__(v31++, 1))
      {
        __break(1u);
        return sub_1000D9B10(v30, v29, v31, v40);
      }
    }
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
      return sub_1000D9B10(v30, v29, v31, v40);
    }

    v16 = *(v32 + 8 * v8);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v41 = (v16 - 1) & v16;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_1000DAB98(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, char *))
{
  v4 = a1;
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(a1);
    v8 = &v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = sub_1000DA940(v8, v6, v4, a2);
    if (v2)
    {
      return swift_willThrow();
    }

    return result;
  }

  v10 = swift_slowAlloc();
  v11 = sub_1000D9A80(v10, v6, v4, a2);

  if (!v2)
  {
    return v11;
  }

  return result;
}

void sub_1000DAD18(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 56);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  v30 = v8;
  v31 = v4;
  v37 = a3;
  if (v7)
  {
LABEL_5:
    v10 = v9;
LABEL_9:
    v35 = v10;
    v36 = (v7 - 1) & v7;
    v11 = (*(a1 + 48) + ((v10 << 10) | (16 * __clz(__rbit64(v7)))));
    v39 = *v11;
    v41 = v11[1];

    swift_beginAccess();
    v12 = *a2 + 56;
    v13 = 1 << *(*a2 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(*a2 + 56);
    v16 = (v13 + 63) >> 6;
    v40 = *a2;
    swift_bridgeObjectRetain_n();
    v17 = 0;
    v38 = v12;
    while (v15)
    {
LABEL_19:
      v22 = (*(v40 + 48) + ((v17 << 10) | (16 * __clz(__rbit64(v15)))));
      v24 = *v22;
      v23 = v22[1];
      v25 = qword_1001D7300;

      if (v25 != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      sub_10000BB0C(v26, qword_1001D7308);

      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        *v29 = 136315394;
        *(v29 + 4) = sub_1000C3440(v24, v23, &v42);
        *(v29 + 12) = 2080;
        *(v29 + 14) = sub_1000C3440(v39, v41, &v42);
        _os_log_impl(&_mh_execute_header, v27, v28, "Sending identity share request to %s from %s", v29, 0x16u);
        swift_arrayDestroy();

        a3 = v37;
      }

      v15 &= v15 - 1;
      v18 = *(a3 + 112);
      v19 = String._bridgeToObjectiveC()();
      v20 = String._bridgeToObjectiveC()();
      [v18 sendFriendRequest:v19 nonWakingRequest:0 sendersKnownAlias:v20];

      v12 = v38;
    }

    while (1)
    {
      v21 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v21 >= v16)
      {

        if (v33)
        {

          return;
        }

        v9 = v35;
        v7 = v36;
        v8 = v30;
        v4 = v31;
        if (!v36)
        {
          goto LABEL_6;
        }

        goto LABEL_5;
      }

      v15 = *(v12 + 8 * v21);
      ++v17;
      if (v15)
      {
        v17 = v21;
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v8)
      {

        return;
      }

      v7 = *(v4 + 8 * v10);
      ++v9;
      if (v7)
      {
        goto LABEL_9;
      }
    }
  }

  __break(1u);
}

unint64_t sub_1000DB0F8()
{
  result = qword_1001D5378;
  if (!qword_1001D5378)
  {
    sub_1000C5AF8(255, &qword_1001D5370, IDSAccount_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5378);
  }

  return result;
}

uint64_t sub_1000DB168(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t sub_1000DB1B0()
{
  result = qword_1001D5F60;
  if (!qword_1001D5F60)
  {
    sub_1000C6A0C(&unk_1001D5500, &qword_100149A50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5F60);
  }

  return result;
}

uint64_t sub_1000DB24C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000DB29C()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000C5EF0;

  return sub_1000D59D4(v3, v4, v5, v2);
}

uint64_t sub_1000DB330()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000C5EF0;

  return sub_1000D5774(v3, v4, v5, v2);
}

uint64_t sub_1000DB3C4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000DB404()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000C5EF0;

  return sub_1000D56E4();
}

uint64_t sub_1000DB4C0()
{
  v0 = type metadata accessor for Logger();
  sub_1000C5A94(v0, qword_1001DA698);
  sub_10000BB0C(v0, qword_1001DA698);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000DB540()
{
  v0 = type metadata accessor for Logger();
  sub_1000C5A94(v0, qword_1001D73B0);
  v1 = sub_10000BB0C(v0, qword_1001D73B0);
  if (qword_1001D73A0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000BB0C(v0, qword_1001DA698);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1000DB610(uint64_t a1)
{
  if (__OFSUB__(a1, 1))
  {
    __break(1u);
    goto LABEL_25;
  }

  v2 = __exp10((a1 - 1));
  if (v2 <= -9.22337204e18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v2 >= 9.22337204e18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v3 = v2 - 1;
  if (__OFSUB__(v2, 1))
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v4 = __exp10(a1);
  if (v4 == INFINITY || v2 == INFINITY)
  {
    goto LABEL_28;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v4 >= 9.22337204e18)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v5 = v4 - 1;
  if (__OFSUB__(v4, 1))
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v5 < v3)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v6 = __OFADD__(v5, 1);
  v7 = v4;
  if (v6)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    goto LABEL_15;
  }

  v8 = 1 - v2;
  if (!__OFSUB__(0, v3))
  {
LABEL_15:
    v6 = __OFADD__(v3, v8);
    v9 = v3 + v8;
    if (!v6)
    {
      if (v9 <= 0xFFFFFFFFLL)
      {
        v6 = __OFADD__(v7, v8);
        v10 = v7 + v8;
        if (!v6)
        {
          if (((v9 | v10) & 0x8000000000000000) == 0)
          {
            if (v10 <= 0xFFFFFFFFLL)
            {
              if (v10 >= v9)
              {
                v11 = arc4random_uniform(v10 - v9);
                if (!__CFADD__(v9, v11))
                {
                  if (!__OFSUB__(v9 + v11, v8))
                  {
                    dispatch thunk of CustomStringConvertible.description.getter();
                    return;
                  }

                  goto LABEL_41;
                }

LABEL_40:
                __break(1u);
LABEL_41:
                __break(1u);
                goto LABEL_42;
              }

LABEL_39:
              __break(1u);
              goto LABEL_40;
            }

LABEL_38:
            __break(1u);
            goto LABEL_39;
          }

LABEL_37:
          __break(1u);
          goto LABEL_38;
        }

LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

LABEL_42:
  __break(1u);
}

unint64_t sub_1000DB7B8()
{
  result = qword_1001D5390;
  if (!qword_1001D5390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5390);
  }

  return result;
}

unint64_t sub_1000DB80C()
{
  v1 = type metadata accessor for URL();
  __chkstk_darwin(v1);
  v3 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v4 = *(v0 + 8);
  v6 = *(v0 + 32);
  v8 = (v7 + 8);
  if (*(v0 + 40) > 1u)
  {
    if (*(v0 + 40) == 2)
    {
      URL.init(fileURLWithPath:)();
      v19 = URL.lastPathComponent.getter();
      v21 = v20;
      (*v8)(v3, v1);
      v42 = v19;
      v43 = v21;
      v22._countAndFlagsBits = 58;
      v22._object = 0xE100000000000000;
      String.append(_:)(v22);
      v41 = v6;
      v23._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v23);

      v14 = v42;
      v15 = v43;
      v42 = 0;
      v43 = 0xE000000000000000;
      _StringGuts.grow(_:)(22);

      v24 = 0x20676E697373694DLL;
      v25 = 0xEF203A65756C6176;
    }

    else
    {
      URL.init(fileURLWithPath:)();
      v31 = URL.lastPathComponent.getter();
      v33 = v32;
      (*v8)(v3, v1);
      v42 = v31;
      v43 = v33;
      v34._countAndFlagsBits = 58;
      v34._object = 0xE100000000000000;
      String.append(_:)(v34);
      v41 = v6;
      v35._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v35);

      v14 = v42;
      v15 = v43;
      v42 = 0;
      v43 = 0xE000000000000000;
      _StringGuts.grow(_:)(16);

      v24 = 0x3A74756F656D6954;
      v25 = 0xE900000000000020;
    }

    v42 = v24;
    v43 = v25;
    goto LABEL_9;
  }

  if (*(v0 + 40))
  {
    URL.init(fileURLWithPath:)();
    v26 = URL.lastPathComponent.getter();
    v28 = v27;
    (*v8)(v3, v1);
    v42 = v26;
    v43 = v28;
    v29._countAndFlagsBits = 58;
    v29._object = 0xE100000000000000;
    String.append(_:)(v29);
    v41 = v6;
    v30._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v30);

    v14 = v42;
    v15 = v43;
    v42 = 0;
    v43 = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    v42 = 0xD000000000000010;
    v43 = 0x80000001001794A0;
LABEL_9:
    v36._countAndFlagsBits = v5;
    v36._object = v4;
    String.append(_:)(v36);
    v17 = 23328;
    v18 = 0xE200000000000000;
    goto LABEL_10;
  }

  URL.init(fileURLWithPath:)();
  v9 = URL.lastPathComponent.getter();
  v11 = v10;
  (*v8)(v3, v1);
  v42 = v9;
  v43 = v11;
  v12._countAndFlagsBits = 58;
  v12._object = 0xE100000000000000;
  String.append(_:)(v12);
  v41 = v6;
  v13._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v13);

  v14 = v42;
  v15 = v43;
  v42 = 0;
  v43 = 0xE000000000000000;
  _StringGuts.grow(_:)(35);

  v42 = 0xD00000000000001BLL;
  v43 = 0x80000001001794C0;
  v16._countAndFlagsBits = v5;
  v16._object = v4;
  String.append(_:)(v16);
  v17 = 5972002;
  v18 = 0xE300000000000000;
LABEL_10:
  String.append(_:)(*&v17);
  v37._countAndFlagsBits = v14;
  v37._object = v15;
  String.append(_:)(v37);

  v38._countAndFlagsBits = 93;
  v38._object = 0xE100000000000000;
  String.append(_:)(v38);
  return v42;
}

unint64_t sub_1000DBC04()
{
  sub_1000C4810(&qword_1001D5398, &qword_10014A540);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10014A0A0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v1;
  v2 = sub_1000DB80C();
  v4 = 0x6C616E7265746E49;
  if (v3)
  {
    v4 = v2;
  }

  v5 = 0xEF2E726F72726520;
  *(inited + 72) = &type metadata for String;
  if (v3)
  {
    v5 = v3;
  }

  *(inited + 48) = v4;
  *(inited + 56) = v5;
  v6 = sub_1000DEDBC(inited);
  swift_setDeallocating();
  sub_1000C59E0(inited + 32, &qword_1001D53A0, &qword_10014A548);
  return v6;
}

uint64_t sub_1000DBCE8(uint64_t a1)
{
  v2 = sub_1000E07A8();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1000DBD24(uint64_t a1)
{
  v2 = sub_1000E07A8();

  return Error<>._code.getter(a1, v2);
}

unint64_t sub_1000DBD70()
{
  result = sub_1000DB80C();
  if (!v1)
  {
    return 0x6C616E7265746E49;
  }

  return result;
}

uint64_t sub_1000DBDEC@<X0>(uint64_t a1@<X8>)
{
  String.utf8CString.getter();
  v2 = nw_interface_create_with_name();

  if (v2)
  {
    swift_unknownObjectRelease();
    String.utf8CString.getter();
    v3 = nw_interface_create_with_name();

    if (v3)
    {
      goto LABEL_13;
    }

    __break(1u);
  }

  if (IsAppleInternalBuild())
  {
    String.utf8CString.getter();
    v4 = nw_interface_create_with_name();

    if (v4)
    {
      swift_unknownObjectRelease();
      String.utf8CString.getter();
      v5 = nw_interface_create_with_name();

      if (v5)
      {
        goto LABEL_13;
      }

      __break(1u);
    }
  }

  if (qword_1001D73A8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000BB0C(v6, qword_1001D73B0);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Failed to initialize nw_interface, defaulting to loopback", v9, 2u);
  }

  String.utf8CString.getter();
  v10 = nw_interface_create_with_name();

  if (!v10)
  {
    __break(1u);
    return result;
  }

LABEL_13:
  NWInterface.init(_:)();
  v12 = type metadata accessor for NWInterface();
  v13 = *(*(v12 - 8) + 56);

  return v13(a1, 0, 1, v12);
}

uint64_t sub_1000DC030(uint64_t a1, uint64_t a2)
{
  __chkstk_darwin(a1);
  (*(v3 + 16))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  return String.init<A>(reflecting:)();
}

unint64_t sub_1000DC104()
{
  v1 = *v0;
  v2 = 1702125924;
  v3 = 1701669236;
  v4 = 0x69546F4E656D6974;
  if (v1 != 3)
  {
    v4 = 1819047270;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000010;
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

uint64_t sub_1000DC198@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000DF0E4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000DC1D8(uint64_t a1)
{
  v2 = sub_1000DEEEC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000DC214(uint64_t a1)
{
  v2 = sub_1000DEEEC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000DC25C(uint64_t a1)
{
  v2 = sub_1000DF03C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000DC298(uint64_t a1)
{
  v2 = sub_1000DF03C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000DC2D4(uint64_t a1)
{
  v2 = sub_1000DF090();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000DC310(uint64_t a1)
{
  v2 = sub_1000DF090();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000DC34C(uint64_t a1)
{
  v2 = sub_1000DEF40();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000DC388(uint64_t a1)
{
  v2 = sub_1000DEF40();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000DC3C4(uint64_t a1)
{
  v2 = sub_1000DEFE8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000DC400(uint64_t a1)
{
  v2 = sub_1000DEFE8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000DC43C@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_1000DC46C(uint64_t a1)
{
  v2 = sub_1000DEF94();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000DC4A8(uint64_t a1)
{
  v2 = sub_1000DEF94();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000DC4E4(void *a1, int a2)
{
  v40 = a2;
  v3 = sub_1000C4810(&qword_1001D53B0, &qword_10014A558);
  v36 = *(v3 - 8);
  v37 = v3;
  __chkstk_darwin(v3);
  v35 = &v29 - v4;
  v5 = sub_1000C4810(&qword_1001D53B8, &qword_10014A560);
  v33 = *(v5 - 8);
  v34 = v5;
  __chkstk_darwin(v5);
  v32 = &v29 - v6;
  v7 = sub_1000C4810(&qword_1001D53C0, &qword_10014A568);
  v30 = *(v7 - 8);
  v31 = v7;
  __chkstk_darwin(v7);
  v29 = &v29 - v8;
  v9 = sub_1000C4810(&qword_1001D53C8, &qword_10014A570);
  v39 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v29 - v10;
  v12 = sub_1000C4810(&qword_1001D53D0, &qword_10014A578);
  v38 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v29 - v13;
  v41 = sub_1000C4810(&qword_1001D53D8, &qword_10014A580);
  v15 = *(v41 - 8);
  __chkstk_darwin(v41);
  v17 = &v29 - v16;
  sub_1000CE97C(a1, a1[3]);
  sub_1000DEEEC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v18 = (v15 + 8);
  if (v40 <= 1u)
  {
    v24 = v38;
    v23 = v39;
    if (v40)
    {
      v43 = 1;
      sub_1000DF03C();
      v28 = v41;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v23 + 8))(v11, v9);
      return (*v18)(v17, v28);
    }

    v42 = 0;
    sub_1000DF090();
    v25 = v41;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v24 + 8))(v14, v12);
    return (*v18)(v17, v25);
  }

  if (v40 == 2)
  {
    v44 = 2;
    sub_1000DEFE8();
    v26 = v29;
    v25 = v41;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v30 + 8))(v26, v31);
    return (*v18)(v17, v25);
  }

  if (v40 == 3)
  {
    v45 = 3;
    sub_1000DEF94();
    v19 = v32;
    v20 = v41;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v22 = v33;
    v21 = v34;
  }

  else
  {
    v46 = 4;
    sub_1000DEF40();
    v19 = v35;
    v20 = v41;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v22 = v36;
    v21 = v37;
  }

  (*(v22 + 8))(v19, v21);
  return (*v18)(v17, v20);
}

uint64_t sub_1000DCA58@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_1000DF2A8(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

id sub_1000DCAA0()
{
  v0 = [objc_allocWithZone(NSDateFormatter) init];
  v1 = String._bridgeToObjectiveC()();
  [v0 setDateFormat:v1];

  return v0;
}

void sub_1000DCBAC(uint64_t a1, void *a2, unsigned __int8 a3)
{
  v6 = sub_1000DCAA0();
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 dateFromString:v7];

  if (v8)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v9 = 0xEF303038302D3232;
    v10 = 0x8000000100179550;
    v11 = 0xEC0000003530332ELL;
    v12 = 0x37333A39303A3631;
    if (a3 != 3)
    {
      v12 = 0xD00000000000001CLL;
      v11 = 0x80000001001794E0;
    }

    if (a3 == 2)
    {
      v12 = 0xD000000000000011;
    }

    else
    {
      v10 = v11;
    }

    if (a3)
    {
      v9 = 0xEA00000000003232;
    }

    if (a3 <= 1u)
    {
      v13 = 0x2D31302D32323032;
    }

    else
    {
      v13 = v12;
    }

    if (a3 <= 1u)
    {
      v14 = v9;
    }

    else
    {
      v14 = v10;
    }

    _StringGuts.grow(_:)(67);
    v15._countAndFlagsBits = 0xD00000000000001BLL;
    v15._object = 0x8000000100179500;
    String.append(_:)(v15);
    v16._countAndFlagsBits = a1;
    v16._object = a2;
    String.append(_:)(v16);
    v17._countAndFlagsBits = 0xD000000000000023;
    v17._object = 0x8000000100179520;
    String.append(_:)(v17);
    v18._countAndFlagsBits = v13;
    v18._object = v14;
    String.append(_:)(v18);

    v19._countAndFlagsBits = 96;
    v19._object = 0xE100000000000000;
    String.append(_:)(v19);
    sub_1000DB7B8();
    swift_allocError();
    *v20 = 0;
    *(v20 + 8) = 0xE000000000000000;
    *(v20 + 16) = 0xD000000000000059;
    *(v20 + 24) = 0x8000000100179440;
    *(v20 + 32) = 243;
    *(v20 + 40) = 1;
    swift_willThrow();
  }
}

uint64_t sub_1000DCDF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656C797473 && a2 == 0xE500000000000000)
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

uint64_t sub_1000DCE88(uint64_t a1)
{
  v2 = sub_1000DF9A0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000DCEC4(uint64_t a1)
{
  v2 = sub_1000DF9A0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000DCF00(void *a1, char a2)
{
  v4 = sub_1000C4810(&qword_1001D53E0, &qword_10014A588);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9[-v6];
  sub_1000CE97C(a1, a1[3]);
  sub_1000DF9A0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9[15] = a2;
  sub_1000DF9F4();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v7, v4);
}

void sub_1000DD048(uint64_t *a1@<X8>)
{
  v2 = sub_1000DCAA0();
  isa = Date._bridgeToObjectiveC()().super.isa;
  v4 = [v2 stringFromDate:isa];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  *a1 = v5;
  a1[1] = v7;
}

void *sub_1000DD0F4@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_1000DFA48(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000DD13C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>)
{
  *&v39 = a7;
  *(&v39 + 1) = a8;
  v41 = a5;
  v42 = a3;
  v14 = type metadata accessor for String.Encoding();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);

  v40 = a6;

  static String.Encoding.utf8.getter();
  *&v38 = a1;
  v18 = String.data(using:allowLossyConversion:)();
  v20 = v19;
  *(&v38 + 1) = a2;

  v21 = *(v15 + 8);
  v43 = v14;
  result = v21(v17, v14);
  v37 = v20;
  if (v20 >> 60 == 15)
  {
    __break(1u);
    goto LABEL_6;
  }

  v35 = v18;
  static String.Encoding.utf8.getter();
  v34 = String.data(using:allowLossyConversion:)();
  v24 = v23;
  v36 = a4;

  result = v21(v17, v43);
  if (v24 >> 60 == 15)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  static String.Encoding.utf8.getter();
  v26 = v40;
  v25 = v41;
  v27 = String.data(using:allowLossyConversion:)();
  v29 = v28;

  result = v21(v17, v43);
  if (v29 >> 60 != 15)
  {
    v45 = v38;
    *&v46 = v42;
    *(&v46 + 1) = v36;
    *&v47 = v25;
    *(&v47 + 1) = v26;
    v48 = v39;
    *&v49 = v35;
    *(&v49 + 1) = v37;
    *&v50 = v34;
    *(&v50 + 1) = v24;
    *&v51 = v27;
    *(&v51 + 1) = v29;
    v52 = v38;
    v53 = v42;
    v54 = v36;
    v55 = v25;
    v56 = v26;
    v57 = v39;
    v58 = v35;
    v59 = v37;
    v60 = v34;
    v61 = v24;
    v62 = v27;
    v63 = v29;
    sub_1000DFBB8(&v45, &v44);
    result = sub_1000DFBF0(&v52);
    v30 = v50;
    a9[4] = v49;
    a9[5] = v30;
    a9[6] = v51;
    v31 = v46;
    *a9 = v45;
    a9[1] = v31;
    v32 = v48;
    a9[2] = v47;
    a9[3] = v32;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_1000DD3E4()
{
  v1 = sub_1000C4810(&qword_1001D53A8, &qword_10014A550);
  v2 = __chkstk_darwin(v1 - 8);
  v123 = &v114 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v6 = &v114 - v5;
  v7 = __chkstk_darwin(v4);
  v125 = &v114 - v8;
  v9 = __chkstk_darwin(v7);
  v129 = &v114 - v10;
  v11 = __chkstk_darwin(v9);
  v126 = &v114 - v12;
  v13 = __chkstk_darwin(v11);
  v127 = &v114 - v14;
  v15 = __chkstk_darwin(v13);
  v132 = &v114 - v16;
  v17 = __chkstk_darwin(v15);
  v131 = &v114 - v18;
  v19 = __chkstk_darwin(v17);
  v135 = &v114 - v20;
  v21 = __chkstk_darwin(v19);
  v134 = &v114 - v22;
  v23 = __chkstk_darwin(v21);
  v137 = &v114 - v24;
  v25 = __chkstk_darwin(v23);
  v136 = &v114 - v26;
  v27 = __chkstk_darwin(v25);
  v144 = (&v114 - v28);
  __chkstk_darwin(v27);
  v30 = &v114 - v29;
  v31 = type metadata accessor for DispatchData();
  v142 = *(v31 - 8);
  v32 = __chkstk_darwin(v31);
  v121 = &v114 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v32);
  v122 = &v114 - v35;
  v36 = __chkstk_darwin(v34);
  v124 = &v114 - v37;
  v38 = __chkstk_darwin(v36);
  v128 = &v114 - v39;
  v40 = __chkstk_darwin(v38);
  v130 = &v114 - v41;
  v42 = __chkstk_darwin(v40);
  v133 = &v114 - v43;
  __chkstk_darwin(v42);
  v45 = &v114 - v44;
  v46 = type metadata accessor for String.Encoding();
  v47 = *(v46 - 8);
  __chkstk_darwin(v46);
  v49 = &v114 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!v0[7])
  {
    sub_1000DB7B8();
    swift_allocError();
    *v113 = xmmword_10014A530;
    *(v113 + 16) = 0xD000000000000059;
    *(v113 + 24) = 0x8000000100179440;
    *(v113 + 32) = 273;
    *(v113 + 40) = 2;
    swift_willThrow();
    return;
  }

  v116 = v6;
  static String.Encoding.utf8.getter();
  v139 = String.data(using:allowLossyConversion:)();
  v51 = v50;
  (*(v47 + 8))(v49, v46);
  v138 = v51;
  if (v51 >> 60 == 15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v140 = v0;
  v53 = v0[8];
  v52 = v0[9];
  v54 = v142;
  v55 = v142 + 7;
  v56 = v142[7];
  v56(v30, 1, 1, v31);
  v118 = v53;
  v117 = v52;
  v57 = v145;
  sub_1000DEA94(v53, v52, v30);
  v120 = v57;
  v58 = v144;
  sub_1000C5808(v30, v144, &qword_1001D53A8, &qword_10014A550);
  v59 = v54 + 6;
  v141 = v54[6];
  if (v141(v58, 1, v31) == 1)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v60 = v54[4];
  v145 = v54 + 4;
  v144 = v60;
  (v60)(v45, v58, v31);
  sub_1000C59E0(v30, &qword_1001D53A8, &qword_10014A550);
  v119 = DispatchData._bridgeToObjectiveC()();
  v62 = v54[1];
  v61 = v54 + 1;
  v143 = v62;
  v62(v45, v31);
  v63 = v140[10];
  v64 = v140[11];
  v65 = v136;
  v56(v136, 1, 1, v31);
  v115 = v63;
  v114 = v64;
  v66 = v120;
  sub_1000DEA94(v63, v64, v65);
  v142 = v66;
  v67 = v137;
  sub_1000C5808(v65, v137, &qword_1001D53A8, &qword_10014A550);
  if (v141(v67, 1, v31) == 1)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v68 = v56;
  v69 = v133;
  (v144)(v133, v67, v31);
  sub_1000C59E0(v65, &qword_1001D53A8, &qword_10014A550);
  v137 = DispatchData._bridgeToObjectiveC()();
  v143(v69, v31);
  v70 = v140[12];
  v71 = v140[13];
  v72 = v134;
  v68(v134, 1, 1, v31);
  v133 = v70;
  v120 = v71;
  v73 = v142;
  sub_1000DEA94(v70, v71, v72);
  v142 = v73;
  v74 = v135;
  sub_1000C5808(v72, v135, &qword_1001D53A8, &qword_10014A550);
  if (v141(v74, 1, v31) == 1)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v75 = v130;
  (v144)(v130, v74, v31);
  sub_1000C59E0(v72, &qword_1001D53A8, &qword_10014A550);
  v76 = DispatchData._bridgeToObjectiveC()();
  v143(v75, v31);
  v77 = v131;
  v140 = v55;
  v136 = v68;
  v68(v131, 1, 1, v31);
  v78 = v77;
  v79 = v142;
  sub_1000DEA94(v139, v138, v77);
  v142 = v79;
  v80 = v77;
  v81 = v132;
  sub_1000C5808(v80, v132, &qword_1001D53A8, &qword_10014A550);
  v82 = v141;
  if (v141(v81, 1, v31) == 1)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v83 = v59;
  v84 = v82;
  v85 = v128;
  (v144)(v128, v81, v31);
  sub_1000C59E0(v78, &qword_1001D53A8, &qword_10014A550);
  v86 = DispatchData._bridgeToObjectiveC()();
  v143(v85, v31);
  v87 = v119;
  v88 = v137;
  client_SPAKE2PLUSV1_identity = sec_identity_create_client_SPAKE2PLUSV1_identity();

  v90 = v129;
  if (!client_SPAKE2PLUSV1_identity)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v91 = sec_identity_copy_SPAKE2PLUSV1_server_password_verifier();
  v92 = v127;
  v135 = v91;
  if (!v91)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v132 = client_SPAKE2PLUSV1_identity;
  v134 = sec_identity_copy_SPAKE2PLUSV1_registration_record();
  if (!v134)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v93 = v136;
  (v136)(v92, 1, 1, v31);
  v94 = v142;
  sub_1000DEA94(v118, v117, v92);
  v142 = v94;
  v95 = v126;
  sub_1000C5808(v92, v126, &qword_1001D53A8, &qword_10014A550);
  v96 = v84(v95, 1, v31);
  v137 = v83;
  if (v96 == 1)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v97 = v124;
  v98 = v95;
  v99 = v144;
  (v144)(v124, v98, v31);
  sub_1000C59E0(v92, &qword_1001D53A8, &qword_10014A550);
  v130 = DispatchData._bridgeToObjectiveC()();
  v100 = v143;
  v143(v97, v31);
  v93(v90, 1, 1, v31);
  v101 = v142;
  sub_1000DEA94(v115, v114, v90);
  v131 = v101;
  v102 = v125;
  sub_1000C5808(v90, v125, &qword_1001D53A8, &qword_10014A550);
  if (v84(v102, 1, v31) == 1)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v103 = v122;
  v99(v122, v102, v31);
  sub_1000C59E0(v90, &qword_1001D53A8, &qword_10014A550);
  v104 = DispatchData._bridgeToObjectiveC()();
  v142 = v61;
  v100(v103, v31);
  v105 = v116;
  v93(v116, 1, 1, v31);
  sub_1000DEA94(v133, v120, v105);
  v106 = v123;
  sub_1000C5808(v105, v123, &qword_1001D53A8, &qword_10014A550);
  if (v84(v106, 1, v31) != 1)
  {
    v107 = v121;
    v99(v121, v106, v31);
    sub_1000C59E0(v105, &qword_1001D53A8, &qword_10014A550);
    v108 = DispatchData._bridgeToObjectiveC()();
    v100(v107, v31);
    v109 = v130;
    v111 = v134;
    v110 = v135;
    server_SPAKE2PLUSV1_identity = sec_identity_create_server_SPAKE2PLUSV1_identity();

    if (server_SPAKE2PLUSV1_identity)
    {
      swift_unknownObjectRelease();

      sub_1000C5928(v139, v138);
      return;
    }

    goto LABEL_27;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
}

void sub_1000DE06C()
{
  v1 = sub_1000C4810(&qword_1001D53A8, &qword_10014A550);
  v2 = __chkstk_darwin(v1 - 8);
  v68 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v67 = &v63 - v5;
  v6 = __chkstk_darwin(v4);
  v71 = &v63 - v7;
  v8 = __chkstk_darwin(v6);
  v70 = &v63 - v9;
  v10 = __chkstk_darwin(v8);
  v73 = &v63 - v11;
  v12 = __chkstk_darwin(v10);
  v72 = &v63 - v13;
  v14 = __chkstk_darwin(v12);
  v77 = (&v63 - v15);
  __chkstk_darwin(v14);
  v17 = &v63 - v16;
  v18 = type metadata accessor for DispatchData();
  v81 = *(v18 - 8);
  v19 = __chkstk_darwin(v18);
  v21 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v66 = &v63 - v23;
  v24 = __chkstk_darwin(v22);
  v69 = &v63 - v25;
  __chkstk_darwin(v24);
  v27 = &v63 - v26;
  v28 = type metadata accessor for String.Encoding();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v31 = &v63 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = v0;
  if (!v0[7])
  {
    sub_1000DB7B8();
    swift_allocError();
    *v62 = xmmword_10014A530;
    *(v62 + 16) = 0xD000000000000059;
    *(v62 + 24) = 0x8000000100179440;
    *(v62 + 32) = 292;
    *(v62 + 40) = 2;
    swift_willThrow();
    return;
  }

  v64 = v21;
  static String.Encoding.utf8.getter();
  v75 = String.data(using:allowLossyConversion:)();
  v33 = v32;
  (*(v29 + 8))(v31, v28);
  v74 = v33;
  if (v33 >> 60 == 15)
  {
    __break(1u);
    goto LABEL_11;
  }

  v34 = v80[8];
  v35 = v80[9];
  v36 = v81;
  v79 = v81[7];
  v79(v17, 1, 1, v18);
  v37 = v78;
  sub_1000DEA94(v34, v35, v17);
  v65 = v37;
  v38 = v77;
  sub_1000C5808(v17, v77, &qword_1001D53A8, &qword_10014A550);
  v78 = v36[6];
  if ((v78)(v38, 1, v18) == 1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v77 = v36[4];
  (v77)(v27, v38, v18);
  sub_1000C59E0(v17, &qword_1001D53A8, &qword_10014A550);
  v63 = DispatchData._bridgeToObjectiveC()();
  v39 = v36[1];
  v81 = v36 + 1;
  v76 = v39;
  v39(v27, v18);
  v40 = v80[10];
  v41 = v80[11];
  v42 = v72;
  v79(v72, 1, 1, v18);
  v43 = v65;
  sub_1000DEA94(v40, v41, v42);
  v65 = v43;
  v44 = v73;
  sub_1000C5808(v42, v73, &qword_1001D53A8, &qword_10014A550);
  if ((v78)(v44, 1, v18) == 1)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v45 = v69;
  (v77)(v69, v44, v18);
  sub_1000C59E0(v42, &qword_1001D53A8, &qword_10014A550);
  v73 = DispatchData._bridgeToObjectiveC()();
  v76(v45, v18);
  v46 = v80[12];
  v47 = v80[13];
  v48 = v70;
  v79(v70, 1, 1, v18);
  v49 = v65;
  sub_1000DEA94(v46, v47, v48);
  v80 = v49;
  v50 = v71;
  sub_1000C5808(v48, v71, &qword_1001D53A8, &qword_10014A550);
  if ((v78)(v50, 1, v18) == 1)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v51 = v66;
  (v77)(v66, v50, v18);
  sub_1000C59E0(v48, &qword_1001D53A8, &qword_10014A550);
  v52 = DispatchData._bridgeToObjectiveC()();
  v76(v51, v18);
  v53 = v67;
  v79(v67, 1, 1, v18);
  v54 = v53;
  sub_1000DEA94(v75, v74, v53);
  v55 = v53;
  v56 = v68;
  sub_1000C5808(v55, v68, &qword_1001D53A8, &qword_10014A550);
  if ((v78)(v56, 1, v18) != 1)
  {
    v57 = v64;
    (v77)(v64, v56, v18);
    sub_1000C59E0(v54, &qword_1001D53A8, &qword_10014A550);
    v58 = DispatchData._bridgeToObjectiveC()();
    v76(v57, v18);
    v59 = v63;
    v60 = v73;
    client_SPAKE2PLUSV1_identity = sec_identity_create_client_SPAKE2PLUSV1_identity();

    if (client_SPAKE2PLUSV1_identity)
    {
      sub_1000C5928(v75, v74);
      return;
    }

    goto LABEL_15;
  }

LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
}

id sub_1000DE818@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  [v1[2] lock];
  v4 = *(*v1 + 12);
  swift_beginAccess();
  (*(*(v3[10] - 8) + 16))(a1, v1 + v4);
  return [v1[2] unlock];
}

uint64_t sub_1000DE8D8(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_1000DE918(a1);
  return v2;
}

char *sub_1000DE918(uint64_t a1)
{
  v3 = *v1;
  *(v1 + 2) = [objc_allocWithZone(NSLock) init];
  (*(*(*(v3 + 80) - 8) + 32))(&v1[*(*v1 + 96)], a1);
  return v1;
}

id *sub_1000DE9BC()
{
  v1 = *v0;

  (*(*(v1[10] - 8) + 8))(v0 + *(*v0 + 12));
  return v0;
}

uint64_t sub_1000DEA3C()
{
  sub_1000DE9BC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_1000DEA94(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_1000C4810(&qword_1001D53A8, &qword_10014A550);
  __chkstk_darwin(v6 - 8);
  v8 = v14 - v7;
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v9 != 2)
    {
      memset(&v14[1], 0, 14);
      goto LABEL_9;
    }

    v10 = *(a1 + 16);
    v11 = *(a1 + 24);
    return sub_1000DEC84(v10, v11, a2 & 0x3FFFFFFFFFFFFFFFLL, a3);
  }

  if (v9)
  {
    v10 = a1;
    v11 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_1000DEC84(v10, v11, a2 & 0x3FFFFFFFFFFFFFFFLL, a3);
  }

  v14[1] = a1;
  LOWORD(v14[2]) = a2;
  BYTE2(v14[2]) = BYTE2(a2);
  BYTE3(v14[2]) = BYTE3(a2);
  BYTE4(v14[2]) = BYTE4(a2);
  BYTE5(v14[2]) = BYTE5(a2);
LABEL_9:
  DispatchData.init(bytes:)();
  v13 = type metadata accessor for DispatchData();
  (*(*(v13 - 8) + 56))(v8, 0, 1, v13);
  return sub_1000E0850(v8, a3);
}

uint64_t sub_1000DEC84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1000C4810(&qword_1001D53A8, &qword_10014A550);
  __chkstk_darwin(v7 - 8);
  v9 = &v12 - v8;
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      __DataStorage._length.getter();
      DispatchData.init(bytes:)();
      v11 = type metadata accessor for DispatchData();
      (*(*(v11 - 8) + 56))(v9, 0, 1, v11);
      return sub_1000E0850(v9, a4);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1000DEDBC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000C4810(&qword_1001D5468, &unk_10014B188);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000C5808(v4, &v13, &qword_1001D53A0, &qword_10014A548);
      v5 = v13;
      v6 = v14;
      result = sub_1000C39E8(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1000E08C0(&v15, (v3[7] + 32 * result));
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

unint64_t sub_1000DEEEC()
{
  result = qword_1001D73C8;
  if (!qword_1001D73C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D73C8);
  }

  return result;
}

unint64_t sub_1000DEF40()
{
  result = qword_1001D73D0;
  if (!qword_1001D73D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D73D0);
  }

  return result;
}

unint64_t sub_1000DEF94()
{
  result = qword_1001D73D8;
  if (!qword_1001D73D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D73D8);
  }

  return result;
}

unint64_t sub_1000DEFE8()
{
  result = qword_1001D73E0;
  if (!qword_1001D73E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D73E0);
  }

  return result;
}

unint64_t sub_1000DF03C()
{
  result = qword_1001D73E8;
  if (!qword_1001D73E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D73E8);
  }

  return result;
}

unint64_t sub_1000DF090()
{
  result = qword_1001D73F0;
  if (!qword_1001D73F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D73F0);
  }

  return result;
}

uint64_t sub_1000DF0E4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x8000000100179570 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701669236 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x69546F4E656D6974 && a2 == 0xEE00656E6F5A656DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1819047270 && a2 == 0xE400000000000000)
  {

    return 4;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1000DF2A8(void *a1)
{
  v2 = sub_1000C4810(&qword_1001D5430, &qword_10014B150);
  v48 = *(v2 - 8);
  v49 = v2;
  __chkstk_darwin(v2);
  v50 = &v37[-v3];
  v4 = sub_1000C4810(&qword_1001D5438, &qword_10014B158);
  v5 = *(v4 - 8);
  v46 = v4;
  v47 = v5;
  __chkstk_darwin(v4);
  v52 = &v37[-v6];
  v7 = sub_1000C4810(&qword_1001D5440, &qword_10014B160);
  v44 = *(v7 - 8);
  v45 = v7;
  __chkstk_darwin(v7);
  v51 = &v37[-v8];
  v9 = sub_1000C4810(&qword_1001D5448, &qword_10014B168);
  v42 = *(v9 - 8);
  v43 = v9;
  __chkstk_darwin(v9);
  v11 = &v37[-v10];
  v12 = sub_1000C4810(&qword_1001D5450, &qword_10014B170);
  v41 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v37[-v13];
  v15 = sub_1000C4810(&qword_1001D5458, &qword_10014B178);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v37[-v17];
  v19 = a1[3];
  v54 = a1;
  sub_1000CE97C(a1, v19);
  sub_1000DEEEC();
  v20 = v53;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v20)
  {
    goto LABEL_18;
  }

  v39 = v12;
  v40 = v18;
  v22 = v51;
  v21 = v52;
  v53 = v16;
  v23 = KeyedDecodingContainer.allKeys.getter();
  v24 = *(v23 + 16);
  if (!v24 || ((v25 = *(v23 + 32), v24 == 1) ? (v26 = v25 == 5) : (v26 = 1), v26))
  {
    v27 = type metadata accessor for DecodingError();
    swift_allocError();
    v28 = v15;
    v30 = v29;
    sub_1000C4810(&qword_1001D5460, &qword_10014B180);
    *v30 = &type metadata for OSLogDateFormatter.Style;
    v31 = v40;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v27 - 8) + 104))(v30, enum case for DecodingError.typeMismatch(_:), v27);
    swift_willThrow();
    (*(v53 + 8))(v31, v28);
    swift_unknownObjectRelease();
LABEL_18:
    sub_1000C5604(v54);
    return 0;
  }

  v38 = *(v23 + 32);
  if (v25 <= 1)
  {
    if (v25)
    {
      v56 = 1;
      sub_1000DF03C();
      v34 = v40;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v42 + 8))(v11, v43);
    }

    else
    {
      v55 = 0;
      sub_1000DF090();
      v34 = v40;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v41 + 8))(v14, v39);
    }

    (*(v53 + 8))(v34, v15);
  }

  else
  {
    v32 = v53;
    if (v25 == 2)
    {
      v57 = 2;
      sub_1000DEFE8();
      v33 = v40;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v44 + 8))(v22, v45);
    }

    else
    {
      v33 = v40;
      if (v25 == 3)
      {
        v58 = 3;
        sub_1000DEF94();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v47 + 8))(v21, v46);
      }

      else
      {
        v59 = 4;
        sub_1000DEF40();
        v35 = v50;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v48 + 8))(v35, v49);
      }
    }

    (*(v32 + 8))(v33, v15);
  }

  swift_unknownObjectRelease();
  sub_1000C5604(v54);
  return v38;
}

unint64_t sub_1000DF9A0()
{
  result = qword_1001D73F8[0];
  if (!qword_1001D73F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1001D73F8);
  }

  return result;
}

unint64_t sub_1000DF9F4()
{
  result = qword_1001D53E8;
  if (!qword_1001D53E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D53E8);
  }

  return result;
}

void *sub_1000DFA48(void *a1)
{
  v3 = sub_1000C4810(&qword_1001D5420, &qword_10014B148);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9[-v5];
  v7 = sub_1000CE97C(a1, a1[3]);
  sub_1000DF9A0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_1000C5604(a1);
  }

  else
  {
    sub_1000E07FC();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v7 = v9[15];
    sub_1000C5604(a1);
  }

  return v7;
}

unint64_t sub_1000DFC28()
{
  result = qword_1001D53F0;
  if (!qword_1001D53F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D53F0);
  }

  return result;
}

unint64_t sub_1000DFC80()
{
  result = qword_1001D53F8;
  if (!qword_1001D53F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D53F8);
  }

  return result;
}

unint64_t sub_1000DFCD8()
{
  result = qword_1001D5400;
  if (!qword_1001D5400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5400);
  }

  return result;
}

unint64_t sub_1000DFD30()
{
  result = qword_1001D5408;
  if (!qword_1001D5408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5408);
  }

  return result;
}

unint64_t sub_1000DFD88()
{
  result = qword_1001D5410;
  if (!qword_1001D5410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5410);
  }

  return result;
}

__n128 sub_1000DFDF8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000DFE0C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 41))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 40);
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

uint64_t sub_1000DFE54(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

__n128 sub_1000DFEDC(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_1000DFF00(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_1000DFF48(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000DFFB4(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000E0084(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1000E0118(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000E022C()
{
  result = qword_1001D8180[0];
  if (!qword_1001D8180[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1001D8180);
  }

  return result;
}

unint64_t sub_1000E0284()
{
  result = qword_1001D8390[0];
  if (!qword_1001D8390[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1001D8390);
  }

  return result;
}

unint64_t sub_1000E02DC()
{
  result = qword_1001D84A0;
  if (!qword_1001D84A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D84A0);
  }

  return result;
}

unint64_t sub_1000E0334()
{
  result = qword_1001D84A8[0];
  if (!qword_1001D84A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1001D84A8);
  }

  return result;
}

unint64_t sub_1000E038C()
{
  result = qword_1001D8530;
  if (!qword_1001D8530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D8530);
  }

  return result;
}

unint64_t sub_1000E03E4()
{
  result = qword_1001D8538[0];
  if (!qword_1001D8538[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1001D8538);
  }

  return result;
}

unint64_t sub_1000E043C()
{
  result = qword_1001D85C0;
  if (!qword_1001D85C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D85C0);
  }

  return result;
}

unint64_t sub_1000E0494()
{
  result = qword_1001D85C8[0];
  if (!qword_1001D85C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1001D85C8);
  }

  return result;
}

unint64_t sub_1000E04EC()
{
  result = qword_1001D8650;
  if (!qword_1001D8650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D8650);
  }

  return result;
}

unint64_t sub_1000E0544()
{
  result = qword_1001D8658[0];
  if (!qword_1001D8658[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1001D8658);
  }

  return result;
}

unint64_t sub_1000E059C()
{
  result = qword_1001D86E0;
  if (!qword_1001D86E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D86E0);
  }

  return result;
}

unint64_t sub_1000E05F4()
{
  result = qword_1001D86E8[0];
  if (!qword_1001D86E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1001D86E8);
  }

  return result;
}

unint64_t sub_1000E064C()
{
  result = qword_1001D8770;
  if (!qword_1001D8770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D8770);
  }

  return result;
}

unint64_t sub_1000E06A4()
{
  result = qword_1001D8778;
  if (!qword_1001D8778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D8778);
  }

  return result;
}

unint64_t sub_1000E06FC()
{
  result = qword_1001D8800;
  if (!qword_1001D8800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D8800);
  }

  return result;
}

unint64_t sub_1000E0754()
{
  result = qword_1001D8808[0];
  if (!qword_1001D8808[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1001D8808);
  }

  return result;
}

unint64_t sub_1000E07A8()
{
  result = qword_1001D5418;
  if (!qword_1001D5418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5418);
  }

  return result;
}

unint64_t sub_1000E07FC()
{
  result = qword_1001D5428;
  if (!qword_1001D5428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5428);
  }

  return result;
}

uint64_t sub_1000E0850(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C4810(&qword_1001D53A8, &qword_10014A550);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

_OWORD *sub_1000E08C0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1000E0908()
{
  v0 = type metadata accessor for Logger();
  sub_1000C5A94(v0, qword_1001DA6B0);
  sub_10000BB0C(v0, qword_1001DA6B0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000E098C()
{
  v0 = type metadata accessor for Logger();
  sub_1000C5A94(v0, qword_1001D88A0);
  v1 = sub_10000BB0C(v0, qword_1001D88A0);
  if (qword_1001D8890 != -1)
  {
    swift_once();
  }

  v2 = sub_10000BB0C(v0, qword_1001DA6B0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1000E0A54(uint64_t a1, uint64_t a2)
{
  result = [objc_allocWithZone(type metadata accessor for RPPairingDaemon(a1 a2))];
  qword_1001DA6C8 = result;
  return result;
}

uint64_t *sub_1000E0A84()
{
  if (qword_1001D88B8 != -1)
  {
    swift_once();
  }

  return &qword_1001DA6C8;
}

id RPPairingDaemon.dispatchQueue.getter()
{
  v1 = OBJC_IVAR____TtC8rapportd15RPPairingDaemon_dispatchQueue;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void RPPairingDaemon.dispatchQueue.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8rapportd15RPPairingDaemon_dispatchQueue;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void variable initialization expression of RPPairingDaemon.xpcConnections()
{
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {

    sub_1000E8414(_swiftEmptyArrayStorage);
  }
}

double RPPairingDaemon.activeSenders.getter()
{
  swift_beginAccess();

  return result;
}

uint64_t RPPairingDaemon.activeSenders.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8rapportd15RPPairingDaemon_activeSenders;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1000E0E70(int64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = OBJC_IVAR____TtC8rapportd15RPPairingDaemon_dispatchQueue;
  swift_beginAccess();
  v11 = *(v3 + v10);
  *v9 = v11;
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  v14 = *(v7 + 8);
  v13 = (v7 + 8);
  result = v14(v9, v6);
  if ((v11 & 1) == 0)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v13 = (v3 + OBJC_IVAR____TtC8rapportd15RPPairingDaemon__currentPairingValue);
  v16 = *(v3 + OBJC_IVAR____TtC8rapportd15RPPairingDaemon__currentPairingValue + 8);
  if (!v16)
  {
    if (!a2)
    {
      return result;
    }

LABEL_11:
    if (qword_1001D8898 == -1)
    {
LABEL_12:
      v18 = type metadata accessor for Logger();
      sub_10000BB0C(v18, qword_1001D88A0);

      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v52 = v22;
        *v21 = 136315138;
        v53 = a1;
        v54 = a2;
        v23 = sub_1000C4810(&qword_1001D5650, &qword_10014B230);
        v24 = sub_1000DC030(&v53, v23);
        v26 = sub_1000C3440(v24, v25, &v52);

        *(v21 + 4) = v26;
        _os_log_impl(&_mh_execute_header, v19, v20, "CurrentPairingValue updated: %s", v21, 0xCu);
        sub_1000C5604(v22);
      }

      *v13 = a1;
      v13[1] = a2;

      v27 = OBJC_IVAR____TtC8rapportd15RPPairingDaemon_xpcConnections;
      swift_beginAccess();
      v50 = *(v3 + v27);
      if ((v50 & 0xC000000000000001) != 0)
      {

        swift_unknownObjectRetain();
        v28 = __CocoaSet.makeIterator()();
        type metadata accessor for RPPairingDaemonXPCConnection(v28, v29);
        sub_1000E9980(&qword_1001D5648, v30, type metadata accessor for RPPairingDaemonXPCConnection, &protocol conformance descriptor for NSObject);
        Set.Iterator.init(_cocoa:)();
        v31 = v53;
        a2 = v54;
        v32 = v55;
        a1 = v56;
        v33 = v57;
      }

      else
      {
        v34 = -1 << *(v50 + 32);
        a2 = v50 + 56;
        v32 = ~v34;
        v35 = -v34;
        if (v35 < 64)
        {
          v36 = ~(-1 << v35);
        }

        else
        {
          v36 = -1;
        }

        v33 = v36 & *(v50 + 56);
        v31 = v50;
        swift_bridgeObjectRetain_n();
        a1 = 0;
      }

      v49 = v32;
      v37 = (v32 + 64) >> 6;
      while (1)
      {
        if (v31 < 0)
        {
          v43 = __CocoaSet.Iterator.next()();
          if (!v43 || (v51 = v43, type metadata accessor for RPPairingDaemonXPCConnection(v43, v44), swift_dynamicCast(), v42 = v52, v41 = a1, v3 = v33, !v52))
          {
LABEL_36:
            sub_1000DB160(v31);
          }
        }

        else
        {
          v39 = a1;
          v40 = v33;
          v41 = a1;
          if (!v33)
          {
            while (1)
            {
              v41 = v39 + 1;
              if (__OFADD__(v39, 1))
              {
                break;
              }

              if (v41 >= v37)
              {
                goto LABEL_36;
              }

              v40 = *(a2 + 8 * v41);
              ++v39;
              if (v40)
              {
                goto LABEL_29;
              }
            }

            __break(1u);
            goto LABEL_40;
          }

LABEL_29:
          v3 = (v40 - 1) & v40;
          v42 = *(*(v31 + 48) + ((v41 << 9) | (8 * __clz(__rbit64(v40)))));
          if (!v42)
          {
            goto LABEL_36;
          }
        }

        v45 = v13[1];
        v46 = *&v42[OBJC_IVAR____TtC8rapportd28RPPairingDaemonXPCConnection_xpcCnx];

        v47 = [v46 remoteObjectProxy];
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        sub_1000C4810(&qword_1001D5488, &unk_10014B198);
        if (swift_dynamicCast())
        {
          v48 = v51;
          swift_unknownObjectRetain();
          if (v45)
          {
            v38 = String._bridgeToObjectiveC()();
          }

          else
          {
            v38 = 0;
          }

          [v48 pairingValueUpdated:v38];

          swift_unknownObjectRelease_n();
        }

        a1 = v41;
        v33 = v3;
      }
    }

LABEL_41:
    swift_once();
    goto LABEL_12;
  }

  if (!a2)
  {
    goto LABEL_11;
  }

  v17 = *v13 == a1 && v16 == a2;
  if (!v17 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_11;
  }
}

uint64_t sub_1000E13E0(uint64_t a1, NSString a2)
{
  v4 = [*(v2 + OBJC_IVAR____TtC8rapportd28RPPairingDaemonXPCConnection_xpcCnx) remoteObjectProxy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_1000C4810(&qword_1001D5488, &unk_10014B198);
  result = swift_dynamicCast();
  if (result)
  {
    swift_unknownObjectRetain();
    if (a2)
    {
      a2 = String._bridgeToObjectiveC()();
    }

    [v6 pairingValueUpdated:a2];

    return swift_unknownObjectRelease_n();
  }

  return result;
}

uint64_t sub_1000E14CC(char a1)
{
  v3 = v1;
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = OBJC_IVAR____TtC8rapportd15RPPairingDaemon_dispatchQueue;
  swift_beginAccess();
  v10 = *&v3[v9];
  *v8 = v10;
  (*(v6 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v5);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  result = (*(v6 + 8))(v8, v5);
  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_10:
    swift_once();
    goto LABEL_4;
  }

  v2 = OBJC_IVAR____TtC8rapportd15RPPairingDaemon__pairingValueUIVisible;
  if (v3[OBJC_IVAR____TtC8rapportd15RPPairingDaemon__pairingValueUIVisible] == (a1 & 1))
  {
    return result;
  }

  if (qword_1001D8898 != -1)
  {
    goto LABEL_10;
  }

LABEL_4:
  v13 = type metadata accessor for Logger();
  sub_10000BB0C(v13, qword_1001D88A0);
  v14 = v3;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 67109376;
    *(v17 + 4) = v3[v2];

    *(v17 + 8) = 1024;
    *(v17 + 10) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v15, v16, "Pairing value UI visible updated: %{BOOL}d -> %{BOOL}d", v17, 0xEu);
  }

  else
  {

    v15 = v14;
  }

  v3[v2] = a1 & 1;
  return sub_10000BB44();
}

id sub_1000E1718()
{
  ObjectType = swift_getObjectType();
  v1 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v12 = *(v1 - 8);
  v13 = v1;
  __chkstk_darwin(v1);
  v11 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v3);
  v4 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v4 - 8);
  *&v0[OBJC_IVAR____TtC8rapportd15RPPairingDaemon_systemMonitor] = 0;
  *&v0[OBJC_IVAR____TtC8rapportd15RPPairingDaemon_xpcListener] = 0;
  v5 = &_swiftEmptySetSingleton;
  if (_swiftEmptyArrayStorage >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      sub_1000E8414(_swiftEmptyArrayStorage);
    }

    else
    {
      v5 = &_swiftEmptySetSingleton;
    }
  }

  *&v0[OBJC_IVAR____TtC8rapportd15RPPairingDaemon_xpcConnections] = v5;
  *&v0[OBJC_IVAR____TtC8rapportd15RPPairingDaemon_xpcLastID] = 0;
  *&v0[OBJC_IVAR____TtC8rapportd15RPPairingDaemon_activeSenders] = &_swiftEmptySetSingleton;
  *&v0[OBJC_IVAR____TtC8rapportd15RPPairingDaemon_bleNearbyActionAdvertiser] = 0;
  *&v0[OBJC_IVAR____TtC8rapportd15RPPairingDaemon_bleNearbyActionDiscovery] = 0;
  v6 = OBJC_IVAR____TtC8rapportd15RPPairingDaemon_blePairingDevices;
  *&v0[v6] = sub_1000E86D8(_swiftEmptyArrayStorage);
  *&v0[OBJC_IVAR____TtC8rapportd15RPPairingDaemon_bonjourListener] = 0;
  v0[OBJC_IVAR____TtC8rapportd15RPPairingDaemon_bonjourListenerStarted] = 0;
  v7 = &v0[OBJC_IVAR____TtC8rapportd15RPPairingDaemon__currentPairingValue];
  *v7 = 0;
  v7[1] = 0;
  v0[OBJC_IVAR____TtC8rapportd15RPPairingDaemon__pairingValueUIVisible] = 0;
  v0[OBJC_IVAR____TtC8rapportd15RPPairingDaemon_shouldPostPairingNotification] = 0;
  sub_1000C6968(0, v8);
  static DispatchQoS.default.getter();
  v16 = _swiftEmptyArrayStorage;
  sub_1000E9980(&qword_1001D5F50, 255, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000C4810(&unk_1001D5500, &qword_100149A50);
  sub_1000E8DF0(&qword_1001D5F60, &unk_1001D5500, &qword_100149A50);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v12 + 104))(v11, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v13);
  *&v0[OBJC_IVAR____TtC8rapportd15RPPairingDaemon_dispatchQueue] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v15.receiver = v0;
  v15.super_class = ObjectType;
  return objc_msgSendSuper2(&v15, "init");
}

Swift::Void __swiftcall RPPairingDaemon.activate()()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v15 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v13 = *(v4 - 8);
  v14 = v4;
  __chkstk_darwin(v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC8rapportd15RPPairingDaemon_dispatchQueue;
  swift_beginAccess();
  v8 = *(v0 + v7);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1000E8DC0;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000E9CC0;
  aBlock[3] = &unk_1001B0408;
  v10 = _Block_copy(aBlock);
  v11 = v8;

  static DispatchQoS.unspecified.getter();
  v16 = _swiftEmptyArrayStorage;
  sub_1000E9980(&qword_1001D5510, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000C4810(&qword_1001D5518, &qword_10014B1A8);
  sub_1000E8DF0(&qword_1001D5520, &qword_1001D5518, &qword_10014B1A8);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v10);

  (*(v15 + 8))(v3, v1);
  (*(v13 + 8))(v6, v14);
}

uint64_t sub_1000E1E0C()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 1);
  __chkstk_darwin(v1);
  v4 = (&v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = OBJC_IVAR____TtC8rapportd15RPPairingDaemon_dispatchQueue;
  swift_beginAccess();
  v6 = *(v0 + v5);
  *v4 = v6;
  (*(v2 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v1);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  result = (*(v2 + 8))(v4, v1);
  if ((v6 & 1) == 0)
  {
    __break(1u);
LABEL_13:
    swift_once();
    goto LABEL_8;
  }

  v9 = OBJC_IVAR____TtC8rapportd15RPPairingDaemon_xpcListener;
  if (*(v0 + OBJC_IVAR____TtC8rapportd15RPPairingDaemon_xpcListener))
  {
    return result;
  }

  v1 = RPPairingXPCServiceName.unsafeMutableAddressor();
  v10 = objc_allocWithZone(NSXPCListener);

  v11 = String._bridgeToObjectiveC()();

  v12 = [v10 initWithMachServiceName:v11];

  v13 = *(v0 + v9);
  *(v0 + v9) = v12;

  v14 = *(v0 + v9);
  if (v14)
  {
    [v14 setDelegate:v0];
    v15 = *(v0 + v9);
    if (v15)
    {
      [v15 rp_setQueue:*(v0 + v5)];
      v16 = *(v0 + v9);
      if (v16)
      {
        [v16 resume];
      }
    }
  }

  if (qword_1001D8898 != -1)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = type metadata accessor for Logger();
  sub_10000BB0C(v17, qword_1001D88A0);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v25 = v21;
    *v20 = 136315138;
    v23 = *v1;
    v22 = v1[1];

    v24 = sub_1000C3440(v23, v22, &v25);

    *(v20 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v18, v19, "Started XPC listener for %s", v20, 0xCu);
    sub_1000C5604(v21);
  }

  return sub_10000BB44();
}

Swift::Void __swiftcall RPPairingDaemon.invalidate()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v18 = *(v5 - 8);
  v19 = v5;
  __chkstk_darwin(v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1001D8898 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000BB0C(v8, qword_1001D88A0);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Invalidate", v11, 2u);
  }

  v12 = OBJC_IVAR____TtC8rapportd15RPPairingDaemon_dispatchQueue;
  swift_beginAccess();
  v13 = *(v1 + v12);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1000E8E44;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000E9CC0;
  aBlock[3] = &unk_1001B0430;
  v15 = _Block_copy(aBlock);
  v16 = v13;

  static DispatchQoS.unspecified.getter();
  v21 = _swiftEmptyArrayStorage;
  sub_1000E9980(&qword_1001D5510, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000C4810(&qword_1001D5518, &qword_10014B1A8);
  sub_1000E8DF0(&qword_1001D5520, &qword_1001D5518, &qword_10014B1A8);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v20 + 8))(v4, v2);
  (*(v18 + 8))(v7, v19);
}

void sub_1000E250C()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v23[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = OBJC_IVAR____TtC8rapportd15RPPairingDaemon_dispatchQueue;
  swift_beginAccess();
  v6 = *(v0 + v5);
  *v4 = v6;
  v7 = enum case for DispatchPredicate.onQueue(_:);
  v8 = *(v2 + 104);
  v8(v4, enum case for DispatchPredicate.onQueue(_:), v1);
  v9 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  v10 = *(v2 + 8);
  v10(v4, v1);
  if ((v6 & 1) == 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v11 = *(v0 + v5);
  *v4 = v11;
  v8(v4, v7, v1);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  v10(v4, v1);
  if ((v11 & 1) == 0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  sub_10000C0BC();
  v13 = *(v0 + v5);
  *v4 = v13;
  v8(v4, v7, v1);
  v14 = v13;
  v15 = _dispatchPreconditionTest(_:)();
  v10(v4, v1);
  if ((v15 & 1) == 0)
  {
LABEL_13:
    __break(1u);
    return;
  }

  sub_1000E2EBC();
  sub_10000C9D8();
  sub_1000E14CC(0);
  v16 = OBJC_IVAR____TtC8rapportd15RPPairingDaemon_systemMonitor;
  v17 = *(v0 + OBJC_IVAR____TtC8rapportd15RPPairingDaemon_systemMonitor);
  if (v17)
  {
    [v17 invalidate];
    v18 = *(v0 + v16);
  }

  else
  {
    v18 = 0;
  }

  *(v0 + v16) = 0;

  v19 = OBJC_IVAR____TtC8rapportd15RPPairingDaemon_xpcConnections;
  swift_beginAccess();
  *(v0 + v19) = &_swiftEmptySetSingleton;

  v20 = OBJC_IVAR____TtC8rapportd15RPPairingDaemon_xpcListener;
  v21 = *(v0 + OBJC_IVAR____TtC8rapportd15RPPairingDaemon_xpcListener);
  if (v21)
  {
    [v21 invalidate];
    v22 = *(v0 + v20);
  }

  else
  {
    v22 = 0;
  }

  *(v0 + v20) = 0;
}

uint64_t sub_1000E2828(uint64_t a1, unint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  v40 = a4;
  v41 = a6;
  v9 = v6;
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v44 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v42 = *(v15 - 8);
  v43 = v15;
  __chkstk_darwin(v15);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1001D8898 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_10000BB0C(v18, qword_1001D88A0);

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v38 = v9;
    v22 = a3;
    v23 = v21;
    v24 = swift_slowAlloc();
    v39 = v17;
    v25 = v14;
    v26 = v12;
    v27 = a5;
    v28 = v24;
    aBlock[0] = v24;
    *v23 = 136315138;
    *(v23 + 4) = sub_1000C3440(a1, a2, aBlock);
    v29 = v22;
    v9 = v38;
    _os_log_impl(&_mh_execute_header, v19, v20, v29, v23, 0xCu);
    sub_1000C5604(v28);
    a5 = v27;
    v12 = v26;
    v14 = v25;
    v17 = v39;
  }

  v30 = OBJC_IVAR____TtC8rapportd15RPPairingDaemon_dispatchQueue;
  swift_beginAccess();
  v31 = *(v9 + v30);
  v32 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v33 = swift_allocObject();
  v33[2] = v32;
  v33[3] = a1;
  v33[4] = a2;
  aBlock[4] = a5;
  aBlock[5] = v33;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000E9CC0;
  aBlock[3] = v41;
  v34 = _Block_copy(aBlock);

  v35 = v31;

  static DispatchQoS.unspecified.getter();
  v45 = _swiftEmptyArrayStorage;
  sub_1000E9980(&qword_1001D5510, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000C4810(&qword_1001D5518, &qword_10014B1A8);
  sub_1000E8DF0(&qword_1001D5520, &qword_1001D5518, &qword_10014B1A8);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v34);

  (*(v44 + 8))(v14, v12);
  (*(v42 + 8))(v17, v43);
}

void sub_1000E2C78()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&aBlock[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = OBJC_IVAR____TtC8rapportd15RPPairingDaemon_dispatchQueue;
  swift_beginAccess();
  v6 = *(v0 + v5);
  *v4 = v6;
  (*(v2 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v1);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v4, v1);
  if (v6)
  {
    v8 = OBJC_IVAR____TtC8rapportd15RPPairingDaemon_bleNearbyActionAdvertiser;
    if (!*(v0 + OBJC_IVAR____TtC8rapportd15RPPairingDaemon_bleNearbyActionAdvertiser))
    {
      v9 = [objc_allocWithZone(CBAdvertiser) init];
      [v9 setAdvertiseRate:50];
      [v9 setDispatchQueue:*(v0 + v5)];
      [v9 setNearbyActionType:94];
      v10 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_1000E99C8;
      aBlock[5] = v10;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000C7408;
      aBlock[3] = &unk_1001B0660;
      v11 = _Block_copy(aBlock);

      [v9 activateWithCompletion:v11];
      _Block_release(v11);
      v12 = *(v0 + v8);
      *(v0 + v8) = v9;
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1000E2EBC()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = OBJC_IVAR____TtC8rapportd15RPPairingDaemon_dispatchQueue;
  swift_beginAccess();
  v6 = *(v0 + v5);
  *v4 = v6;
  (*(v2 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v1);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v4, v1);
  if (v6)
  {
    v8 = OBJC_IVAR____TtC8rapportd15RPPairingDaemon_bleNearbyActionDiscovery;
    if (*(v0 + OBJC_IVAR____TtC8rapportd15RPPairingDaemon_bleNearbyActionDiscovery))
    {
      v9 = OBJC_IVAR____TtC8rapportd15RPPairingDaemon_blePairingDevices;
      swift_beginAccess();
      *(v0 + v9) = &_swiftEmptyDictionarySingleton;

      v10 = *(v0 + v8);
      if (v10)
      {
        [v10 invalidate];
        v11 = *(v0 + v8);
      }

      else
      {
        v11 = 0;
      }

      *(v0 + v8) = 0;
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000E304C()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v19[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = OBJC_IVAR____TtC8rapportd15RPPairingDaemon_dispatchQueue;
  swift_beginAccess();
  v6 = *(v0 + v5);
  *v4 = v6;
  v7 = enum case for DispatchPredicate.onQueue(_:);
  v8 = *(v2 + 104);
  v8(v4, enum case for DispatchPredicate.onQueue(_:), v1);
  v9 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  v10 = *(v2 + 8);
  result = v10(v4, v1);
  if ((v6 & 1) == 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v12 = OBJC_IVAR____TtC8rapportd15RPPairingDaemon_blePairingDevices;
  swift_beginAccess();
  if (!*(*(v0 + v12) + 16))
  {
    v17 = 0;
    v18 = 0;
    return sub_1000E0E70(v17, v18);
  }

  v13 = *(v0 + v5);
  *v4 = v13;
  v8(v4, v7, v1);
  v14 = v13;
  v15 = _dispatchPreconditionTest(_:)();
  result = v10(v4, v1);
  if ((v15 & 1) == 0)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  if (*(v0 + OBJC_IVAR____TtC8rapportd15RPPairingDaemon__currentPairingValue + 8))
  {
    return result;
  }

  v16 = sub_1000DB608();
  sub_1000DB610(v16);
  return sub_1000E0E70(v17, v18);
}

void sub_1000E3228()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = OBJC_IVAR____TtC8rapportd15RPPairingDaemon_dispatchQueue;
  swift_beginAccess();
  v6 = *(v0 + v5);
  *v4 = v6;
  (*(v2 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v1);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v4, v1);
  if (v6)
  {
    v8 = OBJC_IVAR____TtC8rapportd15RPPairingDaemon_xpcConnections;
    swift_beginAccess();
    v27[1] = v0;
    v9 = *(v0 + v8);
    if ((v9 & 0xC000000000000001) != 0)
    {

      v10 = __CocoaSet.makeIterator()();
      type metadata accessor for RPPairingDaemonXPCConnection(v10, v11);
      sub_1000E9980(&qword_1001D5648, v12, type metadata accessor for RPPairingDaemonXPCConnection, &protocol conformance descriptor for NSObject);
      Set.Iterator.init(_cocoa:)();
      v9 = v29;
      v13 = v30;
      v14 = v31;
      v15 = v32;
      v16 = v33;
    }

    else
    {
      v17 = -1 << *(v9 + 32);
      v13 = v9 + 56;
      v14 = ~v17;
      v18 = -v17;
      if (v18 < 64)
      {
        v19 = ~(-1 << v18);
      }

      else
      {
        v19 = -1;
      }

      v16 = v19 & *(v9 + 56);

      v15 = 0;
    }

    v27[0] = v14;
    v20 = (v14 + 64) >> 6;
    while (1)
    {
      if (v9 < 0)
      {
        v25 = __CocoaSet.Iterator.next()();
        if (!v25)
        {
LABEL_20:
          LOBYTE(v21) = 0;
LABEL_21:
          sub_1000DB160(v9);
          sub_1000E14CC(v21);
          return;
        }

        v27[2] = v25;
        type metadata accessor for RPPairingDaemonXPCConnection(v25, v26);
        swift_dynamicCast();
        v21 = v28;
        if (!v28)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v23 = v15;
        v24 = v16;
        if (!v16)
        {
          while (1)
          {
            v15 = v23 + 1;
            if (__OFADD__(v23, 1))
            {
              break;
            }

            if (v15 >= v20)
            {
              goto LABEL_20;
            }

            v24 = *(v13 + 8 * v15);
            ++v23;
            if (v24)
            {
              goto LABEL_9;
            }
          }

          __break(1u);
          break;
        }

LABEL_9:
        v16 = (v24 - 1) & v24;
        v21 = *(*(v9 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v24)))));
        if (!v21)
        {
          goto LABEL_21;
        }
      }

      v22 = OBJC_IVAR____TtC8rapportd28RPPairingDaemonXPCConnection_pairingValueUIVisible;
      swift_beginAccess();
      LODWORD(v22) = v21[v22];

      if (v22 == 1)
      {
        LOBYTE(v21) = 1;
        goto LABEL_21;
      }
    }
  }

  __break(1u);
}

uint64_t sub_1000E3568()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v16[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = OBJC_IVAR____TtC8rapportd15RPPairingDaemon_dispatchQueue;
  swift_beginAccess();
  v6 = *(v0 + v5);
  *v4 = v6;
  v7 = enum case for DispatchPredicate.onQueue(_:);
  v8 = *(v2 + 104);
  v8(v4, enum case for DispatchPredicate.onQueue(_:), v1);
  v9 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  v10 = *(v2 + 8);
  result = v10(v4, v1);
  if ((v6 & 1) == 0)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  v12 = OBJC_IVAR____TtC8rapportd15RPPairingDaemon_blePairingDevices;
  swift_beginAccess();
  if (*(*(v0 + v12) + 16))
  {
    v13 = *(v0 + v5);
    *v4 = v13;
    v8(v4, v7, v1);
    v14 = v13;
    v15 = _dispatchPreconditionTest(_:)();
    result = v10(v4, v1);
    if (v15)
    {
      return *(v0 + OBJC_IVAR____TtC8rapportd15RPPairingDaemon__pairingValueUIVisible);
    }

    goto LABEL_8;
  }

  return 0;
}