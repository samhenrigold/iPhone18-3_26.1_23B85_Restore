AppIntents_SQLite::JoinType_optional __swiftcall JoinType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100190BE0, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

AppIntents_SQLite::JoinType_optional sub_100133734@<W0>(Swift::String *a1@<X0>, AppIntents_SQLite::JoinType_optional *a2@<X8>)
{
  result.value = JoinType.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_100133764@<X0>(uint64_t *a1@<X8>)
{
  result = JoinType.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

AppIntents_SQLite::OnConflict_optional __swiftcall OnConflict.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100190C60, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

AppIntents_SQLite::OnConflict_optional sub_100133800@<W0>(Swift::String *a1@<X0>, AppIntents_SQLite::OnConflict_optional *a2@<X8>)
{
  result.value = OnConflict.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_100133830@<X0>(uint64_t *a1@<X8>)
{
  result = OnConflict.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

Swift::Int sub_10013385C(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1000BD904(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1001338C8(v6);
  *a1 = v2;
  return result;
}

Swift::Int sub_1001338C8(uint64_t *a1)
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
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7[0] = (v6 + 4);
      v7[1] = v5;
      sub_10009DD50(v7, v8, a1, v4);
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
    return sub_10009DB8C(0, v2, 1, a1);
  }

  return result;
}

unint64_t sub_100133A50()
{
  result = qword_10019CD00;
  if (!qword_10019CD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10019CD00);
  }

  return result;
}

unint64_t sub_100133AA4(uint64_t a1)
{
  result = sub_100133ACC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100133ACC()
{
  result = qword_10019CDC8;
  if (!qword_10019CDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10019CDC8);
  }

  return result;
}

unint64_t sub_100133B24()
{
  result = qword_10019CDD0;
  if (!qword_10019CDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10019CDD0);
  }

  return result;
}

unint64_t sub_100133B7C()
{
  result = qword_10019CDD8[0];
  if (!qword_10019CDD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10019CDD8);
  }

  return result;
}

uint64_t sub_100133BFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100133C38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100133C8C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return sub_1000128D0(-1);
  }

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

  return sub_1000128D0(v2);
}

uint64_t sub_100133CC8(uint64_t result, int a2, int a3)
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

      return sub_1000112F4(result, a2);
    }

    *(result + 24) = 0;
    if (a2)
    {
      return sub_1000112F4(result, a2);
    }
  }

  return result;
}

uint64_t sub_100133D18(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return sub_1000128D0(-1);
  }

  if (a2 < 0 && *(a1 + 16))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return sub_1000128D0(v2);
}

_BYTE *storeEnumTagSinglePayload for JoinType(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for OnConflict(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_100133F10(uint64_t a1, int a2)
{
  if (!a2)
  {
    return sub_1000128D0(-1);
  }

  if (a2 < 0 && *(a1 + 176))
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

  return sub_1000128D0(v2);
}

uint64_t sub_100133F4C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 176) = 1;
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

      return sub_1000112F4(result, a2);
    }

    *(result + 176) = 0;
    if (a2)
    {
      return sub_1000112F4(result, a2);
    }
  }

  return result;
}

uint64_t sub_100133FD0()
{
  sub_10001AB9C();
  v14 = sub_10002EB80(v3, v4);
  v15 = &protocol witness table for Expression<A>;
  v11 = v2;
  v12 = v1;
  v13 = v0;

  v5._countAndFlagsBits = 40;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  sub_1000034B4(&v11, v14);
  v6 = v11;
  v7 = v12;

  v8._countAndFlagsBits = v6;
  v8._object = v7;
  String.append(_:)(v8);

  v9._countAndFlagsBits = 41;
  v9._object = 0xE100000000000000;
  String.append(_:)(v9);

  sub_1000034F8(&v11);
  return sub_10001317C();
}

uint64_t sub_1001340D0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    v6 = sub_1000FDAEC(0, a2);
    sub_10002EC70(v6, v7);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_100134134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {

    sub_100018CD0(a2, a3, a4);
  }
}

void sub_100134224(uint64_t *a1@<X8>)
{

  sub_100013640(v1, a1);
}

uint64_t sub_100134244(unsigned __int8 a1, char a2)
{
  v2 = 0x53534F5243;
  v3 = 0xE500000000000000;
  v4 = a1;
  v5 = 0x53534F5243;
  switch(v4)
  {
    case 1:
      v5 = 0x52454E4E49;
      break;
    case 2:
      v5 = 0x54554F205446454CLL;
      v3 = 0xEA00000000005245;
      break;
    case 3:
      v5 = 0;
      v3 = 0xE000000000000000;
      break;
    default:
      break;
  }

  v6 = 0xE500000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x52454E4E49;
      break;
    case 2:
      v2 = 0x54554F205446454CLL;
      v6 = 0xEA00000000005245;
      break;
    case 3:
      v2 = 0;
      v6 = 0xE000000000000000;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

uint64_t sub_10013436C(unsigned __int8 a1, char a2)
{
  v2 = 0xE90000000000004ELL;
  v3 = 0x4F49544341204F4ELL;
  v4 = a1;
  v5 = 0x4F49544341204F4ELL;
  v6 = 0xE90000000000004ELL;
  switch(v4)
  {
    case 1:
      v6 = 0xE800000000000000;
      v5 = 0x5443495254534552;
      break;
    case 2:
      v6 = 0xE800000000000000;
      v5 = 0x4C4C554E20544553;
      break;
    case 3:
      v5 = 0x4146454420544553;
      v6 = 0xEB00000000544C55;
      break;
    case 4:
      v6 = 0xE700000000000000;
      v5 = 0x45444143534143;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v2 = 0xE800000000000000;
      v3 = 0x5443495254534552;
      break;
    case 2:
      v2 = 0xE800000000000000;
      v3 = 0x4C4C554E20544553;
      break;
    case 3:
      v3 = 0x4146454420544553;
      v2 = 0xEB00000000544C55;
      break;
    case 4:
      v2 = 0xE700000000000000;
      v3 = 0x45444143534143;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

uint64_t sub_100134500(unsigned __int8 a1, char a2)
{
  v2 = 0x4543414C504552;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = 0x4543414C504552;
  switch(v4)
  {
    case 1:
      v3 = 0xE800000000000000;
      v5 = 0x4B4341424C4C4F52;
      break;
    case 2:
      v3 = 0xE500000000000000;
      v5 = 0x54524F4241;
      break;
    case 3:
      v3 = 0xE400000000000000;
      v5 = 1279869254;
      break;
    case 4:
      v3 = 0xE600000000000000;
      v5 = 0x45524F4E4749;
      break;
    default:
      break;
  }

  v6 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE800000000000000;
      v2 = 0x4B4341424C4C4F52;
      break;
    case 2:
      v6 = 0xE500000000000000;
      v2 = 0x54524F4241;
      break;
    case 3:
      v6 = 0xE400000000000000;
      v2 = 1279869254;
      break;
    case 4:
      v6 = 0xE600000000000000;
      v2 = 0x45524F4E4749;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

uint64_t sub_10013465C(char a1, char a2)
{
  v2 = 0xE900000000000045;
  v3 = 0x4445525245464544;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x54414944454D4D49;
    }

    else
    {
      v4 = 0x564953554C435845;
    }

    v5 = 0xE900000000000045;
  }

  else
  {
    v5 = 0xE800000000000000;
    v4 = 0x4445525245464544;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0x54414944454D4D49;
    }

    else
    {
      v3 = 0x564953554C435845;
    }
  }

  else
  {
    v2 = 0xE800000000000000;
  }

  if (v4 == v3 && v5 == v2)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

Swift::Int sub_100134768(uint64_t a1)
{
  v1 = a1;
  Hasher.init(_seed:)();
  sub_10013482C(v3, v1);
  return Hasher._finalize()();
}

Swift::Int sub_1001347C8(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  Hasher.init(_seed:)();
  v4 = a2(a1);
  sub_10001ABB0(v4, v5, v6);

  return Hasher._finalize()();
}

uint64_t sub_10013482C(uint64_t a1, char a2)
{
  String.hash(into:)();
}

uint64_t sub_1001348D0(uint64_t a1, char a2)
{
  String.hash(into:)();
}

uint64_t sub_1001349AC(uint64_t a1, char a2)
{
  String.hash(into:)();
}

uint64_t sub_100134A6C(uint64_t a1, char a2)
{
  String.hash(into:)();
}

Swift::Int sub_100134B00(uint64_t a1, char a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_100134BD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  Hasher.init(_seed:)();
  v5 = a3(a2);
  sub_10001ABB0(v5, v6, v7);

  return Hasher._finalize()();
}

Swift::Int sub_100134C2C(uint64_t a1, char a2)
{
  Hasher.init(_seed:)();
  sub_10013482C(v4, a2);
  return Hasher._finalize()();
}

uint64_t Connection.prepare(_:_:)()
{
  sub_100007400();
  return sub_100135C08(v0, v1, v2, v3);
}

{
  sub_100007D4C();
  return sub_100135C08(v0, v1, v2, v3);
}

_OWORD *sub_100134C8C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_1000398F4(a1, v13);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v2;
    result = sub_100137C0C(v13, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v11;
  }

  else
  {
    sub_100003E9C(a1, &qword_1001992F0, &qword_10014E000);
    v6 = sub_100137AA0(a2);
    if (v7)
    {
      v8 = v6;
      v9 = swift_isUniquelyReferenced_nonNull_native();
      v12 = *v2;
      v10 = *(*v2 + 24);
      sub_10002EB80(&qword_10019D030, &qword_100153540);
      _NativeDictionary.ensureUnique(isUnique:capacity:)(v9, v10);
      sub_1000398F4((*(v12 + 56) + 32 * v8), v13);
      _NativeDictionary._delete(at:)();
      *v2 = v12;
    }

    else
    {
      memset(v13, 0, sizeof(v13));
    }

    return sub_100003E9C(v13, &qword_1001992F0, &qword_10014E000);
  }

  return result;
}

uint64_t Connection.scalar(_:_:)()
{
  sub_100007400();
  return sub_100135CD4(v0, v1, v2, v3, v4);
}

{
  return Connection.scalar(_:_:)();
}

{
  sub_100007D4C();
  return sub_100135CD4(v0, v1, v2, v3, v4);
}

sqlite3_int64 Connection.lastInsertRowid.getter(uint64_t a1, uint64_t a2)
{
  v2 = Connection.handle.getter(a1, a2);

  return sqlite3_last_insert_rowid(v2);
}

id sub_100134E18(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100015918();
  if (qword_10019CA08 != -1)
  {
    sub_1000082CC(&qword_10019CA08);
  }

  static OS_dispatch_queue.getSpecific<A>(key:)();
  v8 = sub_100015D94();
  if ((v15 & 1) != 0 || v14 != v8)
  {
    insert_rowid = *(a1 + 104);
    OS_dispatch_queue.sync<A>(execute:)();

    if (!v5)
    {
      insert_rowid = v16;
    }
  }

  else
  {
    insert_rowid = a2;
    Connection.run(_:_:)();
    if (!v5)
    {

      v12 = Connection.handle.getter(v10, v11);
      insert_rowid = sqlite3_last_insert_rowid(v12);
    }
  }

  return insert_rowid;
}

uint64_t sub_100134F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100015918();
  if (qword_10019CA08 != -1)
  {
    swift_once();
  }

  static OS_dispatch_queue.getSpecific<A>(key:)();
  v6 = sub_100015D94();
  if ((v13 & 1) != 0 || v12 != v6)
  {
    v10 = *(a1 + 104);
    OS_dispatch_queue.sync<A>(execute:)();
    if (v4)
    {

      return v10;
    }

    v10 = v14;
LABEL_11:

    return v10;
  }

  v8 = Connection.handle.getter(v6, v7);
  v9 = String.utf8CString.getter();
  v10 = sqlite3_exec(v8, (v9 + 32), 0, 0, 0);

  sub_100015DD4(v10, 0);
  if (!v4)
  {

    goto LABEL_11;
  }

  return v10;
}

uint64_t sub_100135174(int a1)
{
  switch(a1)
  {
    case 9:
      return 2;
    case 18:
      return 0;
    case 23:
      return 1;
  }

  _StringGuts.grow(_:)(28);

  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

Swift::Int sub_10013525C(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Connection.Operation.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

uint64_t Connection.__allocating_init(_:readonly:)()
{
  sub_100018554();
  sub_100008988();
  return v0;
}

uint64_t Connection.init(_:readonly:)(uint64_t a1, unint64_t a2, char a3)
{
  v19 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  sub_100002944();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_100002958();
  v9 = v8 - v7;
  v10 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v10 - 8);
  sub_100002958();
  v11 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v11);
  sub_100002958();
  *(v3 + 16) = 0u;
  v12 = (v3 + 16);
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0u;
  *(v3 + 32) = 0u;
  *(v3 + 80) = 0;
  *(v3 + 88) = _swiftEmptyDictionarySingleton;
  *(v3 + 96) = _swiftEmptyDictionarySingleton;
  sub_100015918();
  sub_100066220();
  sub_10002EB80(&qword_1001992C8, &unk_10014DFF0);
  sub_10004AE28();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  static DispatchQoS.unspecified.getter();
  (*(v5 + 104))(v9, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v19);
  *(v3 + 104) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v3 + 112) = 0;
  *(v3 + 120) = 1;
  sub_100006BAC();
  if (a3)
  {
    v13 = 65537;
  }

  else
  {
    v13 = 65542;
  }

  v14 = String.utf8CString.getter();

  sub_1000135FC();
  swift_beginAccess();
  v15 = sqlite3_open_v2((v14 + 32), v12, v13, 0);
  swift_endAccess();

  sub_100015DD4(v15, 0);
  if (v22)
  {
  }

  else
  {
    v16 = qword_10019CA08;
    v17 = *(v20 + 104);
    if (v16 != -1)
    {
      sub_1000082CC(&qword_10019CA08);
    }

    sub_100015D94();
    OS_dispatch_queue.setSpecific<A>(key:value:)();
  }

  return v20;
}

uint64_t Connection.Location.description.getter()
{
  sub_100006BAC();
  if (v1 == 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = v0;
  }

  if (v1)
  {
    v4 = v3;
  }

  else
  {
    v4 = v2;
  }

  sub_10002CD10(v0, v1);
  return v4;
}

uint64_t Connection.deinit(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = Connection.handle.getter(a1, a2);
  sqlite3_close(v4);
  sub_100011208(v2 + 24, v5);
  v6 = *(v2 + 24);
  if (v6)
  {
    v7 = *(v2 + 32);

    v6(v8);
    sub_10002CCE0(v6, v7);
    v9 = *(v3 + 24);
  }

  else
  {
    v9 = 0;
  }

  sub_10002CCE0(v9, *(v3 + 32));
  _Block_release(*(v3 + 48));
  _Block_release(*(v3 + 56));
  _Block_release(*(v3 + 64));
  _Block_release(*(v3 + 72));
  _Block_release(*(v3 + 80));

  return v3;
}

uint64_t Connection.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  Connection.deinit(a1, a2);

  return _swift_deallocClassInstance(v2);
}

uint64_t Connection.onClose.getter(uint64_t a1, uint64_t a2)
{
  sub_100011208(v2 + 24, a2);
  v3 = *(v2 + 24);
  sub_1000069B8(v3, *(v2 + 32));
  return v3;
}

uint64_t Connection.onClose.setter()
{
  sub_100007D40();
  swift_beginAccess();
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return sub_10002CCE0(v3, v4);
}

uint64_t (*Connection.onClose.modify())(uint64_t a1)
{
  sub_1000135FC();
  swift_beginAccess();
  return j__swift_endAccess;
}

unint64_t Connection.userVersion.getter()
{
  Connection.scalar(_:_:)();
  if (!v5)
  {
    sub_100003E9C(v4, &qword_100199ED0, &qword_10014ED20);
    goto LABEL_2;
  }

  sub_10002EB80(&unk_10019ABC0, &qword_10014F8D0);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_2:
    v0 = 0;
    v1 = 1;
LABEL_3:
    v4[0] = v1;
    return v0 | (v1 << 32);
  }

  if (v3 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v3 <= 0x7FFFFFFF)
  {
    v1 = 0;
    v0 = v3;
    goto LABEL_3;
  }

  __break(1u);
  return result;
}

uint64_t Connection.userVersion.setter()
{
  _StringGuts.grow(_:)(24);

  v0._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v0);

  Connection.run(_:_:)();
}

uint64_t (*Connection.userVersion.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = Connection.userVersion.getter();
  *(a1 + 8) = v3;
  *(a1 + 12) = BYTE4(v3) & 1;
  return sub_100135AD8;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Connection.execute(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;

  sub_100134F9C(v1, v1, countAndFlagsBits, object);
}

const char *sub_100135B58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD *a4@<X8>)
{
  v6 = Connection.handle.getter(a1, a2);
  v7 = String.utf8CString.getter();
  v8 = sqlite3_exec(v6, (v7 + 32), 0, 0, 0);

  result = sub_100015DD4(v8, 0);
  if (!v4)
  {
    *a4 = v8;
  }

  return result;
}

uint64_t sub_100135C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = Connection.prepare(_:_:)(a1, a2, _swiftEmptyArrayStorage);
  if (!v4)
  {
    v8 = a4(a3);

    return v8;
  }

  return result;
}

uint64_t sub_100135CD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t)@<X3>, uint64_t *a5@<X8>)
{
  result = Connection.prepare(_:_:)(a1, a2, _swiftEmptyArrayStorage);
  if (!v5)
  {
    a4(a3);
    Statement.scalar(_:)(_swiftEmptyArrayStorage, a5);
  }

  return result;
}

AppIntents_SQLite::Connection::TransactionMode_optional __swiftcall Connection.TransactionMode.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100190CF8, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t Connection.TransactionMode.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x4445525245464544;
  }

  if (a1 == 1)
  {
    return 0x54414944454D4D49;
  }

  return 0x564953554C435845;
}

AppIntents_SQLite::Connection::TransactionMode_optional sub_100135E34@<W0>(Swift::String *a1@<X0>, AppIntents_SQLite::Connection::TransactionMode_optional *a2@<X8>)
{
  result.value = Connection.TransactionMode.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_100135E64@<X0>(uint64_t *a1@<X8>)
{
  result = Connection.TransactionMode.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t Connection.savepoint(_:block:)(uint64_t a1, unint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v6._countAndFlagsBits = sub_1000198BC(39, 0xE100000000000000, a1, a2);
  String.append(_:)(v6);

  sub_100012B18(v7, v8, v9, v10, v11, v12, v13, v14, 0x4E494F5045564153, 0xEA00000000002054);
  v15 = v26;
  v16 = v28;
  sub_100012B18(v17, v18, v19, v20, v21, v22, v23, v24, v26, v28);
  sub_100025558(0x4E494F5045564153, 0xEA00000000002054, a3, a4, v15, v16, v27, v29);
}

Swift::Void __swiftcall Connection.interrupt()()
{
  v2 = Connection.handle.getter(v0, v1);

  sqlite3_interrupt(v2);
}

void sub_100135FD8(uint64_t a1, uint64_t a2)
{
  v3 = Connection.handle.getter(a1, a2);
  swift_beginAccess();
  v4 = *(v2 + 40) * 1000.0;
  if (COERCE__INT64(fabs(v4)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v4 <= -2147483650.0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v4 < 2147483650.0)
  {
    sqlite3_busy_timeout(v3, v4);
    return;
  }

LABEL_7:
  __break(1u);
}

void Connection.busyTimeout.setter(double a1)
{
  v3 = swift_beginAccess();
  *(v1 + 40) = a1;
  sub_100135FD8(v3, v4);
}

void (*Connection.busyTimeout.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  sub_1000135FC();
  swift_beginAccess();
  return sub_100136130;
}

void sub_100136130(uint64_t a1, char a2)
{
  v3 = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_100135FD8(v3, v4);
  }
}

void Connection.busyHandler(_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    sub_100007D40();
    sub_100004DD8();
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v2;
    sub_100002EA8();
    sub_100007924();
    v20[2] = sub_100136260;
    v20[3] = &unk_1001918E8;
    _Block_copy(v20);
    sub_100006920();

    Connection.handle.getter(v7, v8);
    sub_1000075B8();
    sqlite3_busy_handler(v9, v10, v11);
    v12 = sub_100002B74();
    sub_10002CCE0(v12, v13);
    v14 = *(v3 + 48);
    *(v3 + 48) = v5;
    _Block_release(v14);
    sub_10001AA78();
  }

  else
  {
    Connection.handle.getter(0, a2);
    sub_100009990();
    sqlite3_busy_handler(v15, v16, v17);
    *(v3 + 48) = 0;
    sub_10001AA78();

    _Block_release(v18);
  }
}

uint64_t sub_100136260(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v4 = v3(a2);

  return v4;
}

void sub_1001362C4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
    v13[4] = sub_100138670;
    v13[5] = v5;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 1107296256;
    v13[2] = sub_10013641C;
    v13[3] = &unk_100191C78;
    v6 = _Block_copy(v13);
    sub_1000069B8(a1, a2);

    v9 = Connection.handle.getter(v7, v8);
    sqlite3_trace_v2(v9, 1u, sub_100136518, v6);
    sub_10002CCE0(a1, a2);
    v10 = *(v2 + 56);
    *(v2 + 56) = v6;
    _Block_release(v10);
  }

  else
  {
    v11 = Connection.handle.getter(0, a2);
    sqlite3_trace_v2(v11, 0, 0, 0);
    v12 = *(v2 + 56);
    *(v2 + 56) = 0;

    _Block_release(v12);
  }
}

uint64_t sub_10013641C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_100136470(uint64_t a1, void (*a2)(uint64_t))
{
  v3 = String.init(cString:)();
  a2(v3);
}

uint64_t sub_1001364C0(int a1, uint64_t a2, sqlite3_stmt *pStmt)
{
  if (pStmt)
  {
    v4 = sqlite3_expanded_sql(pStmt);
    if (v4)
    {
      v5 = v4;
      (*(a2 + 16))(a2, v4);
      sqlite3_free(v5);
    }
  }

  return 0;
}

void Connection.updateHook(_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    sub_100007D40();
    sub_100004DD8();
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v2;
    sub_100002EA8();
    sub_100007924();
    v20[2] = sub_1001366C0;
    v20[3] = &unk_100191938;
    _Block_copy(v20);
    sub_100006920();

    Connection.handle.getter(v7, v8);
    sub_1000075B8();
    sqlite3_update_hook(v9, v10, v11);
    v12 = sub_100002B74();
    sub_10002CCE0(v12, v13);
    v14 = *(v3 + 64);
    *(v3 + 64) = v5;
    _Block_release(v14);
    sub_10001AA78();
  }

  else
  {
    Connection.handle.getter(0, a2);
    sub_100009990();
    sqlite3_update_hook(v15, v16, v17);
    *(v3 + 64) = 0;
    sub_10001AA78();

    _Block_release(v18);
  }
}

uint64_t sub_100136618(int a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = sub_100135174(a1);
  v8 = String.init(cString:)();
  v10 = v9;
  v11 = String.init(cString:)();
  a5(v7, v8, v10, v11, v12, a4);
}

uint64_t sub_1001366C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);

  v9(a2, a3, a4, a5);
}

uint64_t sub_100136738(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    if (a4)
    {
      return (*(result + 16))(result, a2);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void Connection.commitHook(_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    sub_100007D40();
    sub_100004DD8();
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v2;
    sub_100002EA8();
    sub_100007924();
    v20[2] = sub_1001368A8;
    v20[3] = &unk_100191988;
    _Block_copy(v20);
    sub_100006920();

    Connection.handle.getter(v7, v8);
    sub_1000075B8();
    sqlite3_commit_hook(v9, v10, v11);
    v12 = sub_100002B74();
    sub_10002CCE0(v12, v13);
    v14 = *(v3 + 72);
    *(v3 + 72) = v5;
    _Block_release(v14);
    sub_10001AA78();
  }

  else
  {
    Connection.handle.getter(0, a2);
    sub_100009990();
    sqlite3_commit_hook(v15, v16, v17);
    *(v3 + 72) = 0;
    sub_10001AA78();

    _Block_release(v18);
  }
}

uint64_t sub_1001368A8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  return v3;
}

void Connection.rollbackHook(_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    sub_100007D40();
    sub_100004DD8();
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v2;
    sub_100002EA8();
    sub_100007924();
    v20[2] = sub_10000C13C;
    v20[3] = &unk_1001919D8;
    _Block_copy(v20);
    sub_100006920();

    Connection.handle.getter(v7, v8);
    sub_1000075B8();
    sqlite3_rollback_hook(v9, v10, v11);
    v12 = sub_100002B74();
    sub_10002CCE0(v12, v13);
    v14 = *(v3 + 80);
    *(v3 + 80) = v5;
    _Block_release(v14);
    sub_10001AA78();
  }

  else
  {
    Connection.handle.getter(0, a2);
    sub_100009990();
    sqlite3_rollback_hook(v15, v16, v17);
    *(v3 + 80) = 0;
    sub_10001AA78();

    _Block_release(v18);
  }
}

uint64_t Connection.createFunction(_:argumentCount:deterministic:_:)(sqlite3 *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v11 = a1;
  if (a4)
  {
    v12 = -1;
  }

  else
  {
    v12 = a3;
    if (a3 < 0)
    {
LABEL_11:
      __break(1u);
      goto LABEL_12;
    }
  }

  sub_100004DD8();
  v13 = swift_allocObject();
  *(v13 + 16) = a6;
  *(v13 + 24) = a7;
  v35 = sub_100137A90;
  v36 = v13;
  aBlock = _NSConcreteStackBlock;
  v32 = 1107296256;
  v33 = sub_1001370DC;
  v34 = &unk_100191A28;
  v14 = _Block_copy(&aBlock);

  a1 = Connection.handle.getter(v15, v16);
  if (v12 > 0x7FFFFFFF)
  {
    __break(1u);
    goto LABEL_11;
  }

  v17 = a1;
  if (a5)
  {
    v18 = 2049;
  }

  else
  {
    v18 = 1;
  }

  v19 = String.utf8CString.getter();
  function_v2 = sqlite3_create_function_v2(v17, (v19 + 32), v12, v18, v14, sub_1001371A4, 0, 0, 0);

  a1 = sub_100140D4C(function_v2);
  if (!a2)
  {
    v34 = sub_10002EB80(&qword_10019CF18, &qword_1001532E8);
    aBlock = v14;
    _Block_copy(v14);
    sub_1001371A8(v11, a2, v12, &aBlock);
    _Block_release(v14);
    return sub_1000034F8(&aBlock);
  }

LABEL_12:
  v22 = a1;
  v23 = a3;
  aBlock = 0;
  v32 = 0xE000000000000000;
  v24 = a4;
  v25 = a2;
  _StringGuts.grow(_:)(27);

  sub_100013D5C();
  aBlock = v27;
  v32 = v26;
  v28._countAndFlagsBits = Result.description.getter(v22, v25, v23, v24);
  String.append(_:)(v28);

  result = sub_100019DB8("Fatal error", v29, v30, aBlock, v32, "AppIntents_SQLite/Connection.swift");
  __break(1u);
  return result;
}

uint64_t sub_100136C50(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *__return_ptr))
{
  sub_100136CD0(a2, a3);
  a4(v6);

  sub_100136DD0();
  return sub_100003E9C(v6, &qword_100199ED0, &qword_10014ED20);
}

void sub_100136CD0(uint64_t result, uint64_t a2)
{
  if ((result & 0x80000000) != 0)
  {
LABEL_10:
    __break(1u);
    return;
  }

  if (result)
  {
    v3 = result;
    v14 = _swiftEmptyArrayStorage;
    sub_1000B35B4(0, result, 0);
    v4 = 0;
    v5 = _swiftEmptyArrayStorage;
    while (v3 != v4)
    {
      v11 = v4;
      sub_10013783C(&v11, a2, v12);
      v14 = v5;
      v7 = v5[2];
      v6 = v5[3];
      if (v7 >= v6 >> 1)
      {
        sub_1000B35B4((v6 > 1), v7 + 1, 1);
        v5 = v14;
      }

      ++v4;
      v5[2] = v7 + 1;
      v8 = &v5[5 * v7];
      v9 = v12[0];
      v10 = v12[1];
      v8[8] = v13;
      *(v8 + 2) = v9;
      *(v8 + 3) = v10;
      if (v3 == v4)
      {
        return;
      }
    }

    __break(1u);
    goto LABEL_10;
  }
}

uint64_t sub_100136DD0()
{
  sub_100007D40();
  type metadata accessor for String.Encoding();
  sub_100002944();
  __chkstk_darwin(v2);
  sub_100002958();
  sub_10001B618(v1, v31);
  if (!v32)
  {
    sqlite3_result_null(v0);
    return sub_100003E9C(v31, &qword_100199ED0, &qword_10014ED20);
  }

  sub_10001B618(v31, v30);
  v3 = sub_10002EB80(&unk_10019ABC0, &qword_10014F8D0);
  v6 = sub_10000538C(v3, v4, v5, &type metadata for Blob);
  if (v6)
  {
    LODWORD(v9) = LODWORD(v27);
    v10 = *(*&v27 + 16);
    if (!(v10 >> 31))
    {
      sqlite3_result_blob(v0, (*&v27 + 32), v10, 0);

LABEL_15:
      sub_1000034F8(v30);
      return sub_100003E9C(v31, &qword_100199ED0, &qword_10014ED20);
    }

    __break(1u);
    goto LABEL_18;
  }

  v11 = sub_10000538C(v6, v7, v8, &type metadata for Double);
  if (v11)
  {
    sqlite3_result_double(v0, v27);
    goto LABEL_15;
  }

  v14 = sub_10000538C(v11, v12, v13, &type metadata for Int64);
  if (v14)
  {
    sqlite3_result_int64(v0, *&v27);
    goto LABEL_15;
  }

  if (sub_10000538C(v14, v15, v16, &type metadata for String))
  {
    static String.Encoding.utf8.getter();
    sub_10000BE0C();
    v9 = StringProtocol.lengthOfBytes(using:)();
    v17 = sub_10001209C();
    v18(v17);
    if (v9 >= 0xFFFFFFFF80000000)
    {
      if (v9 <= 0x7FFFFFFF)
      {
        if (qword_10019CA00 == -1)
        {
LABEL_14:
          v19 = qword_10019E5B8;
          v20 = String.utf8CString.getter();

          sqlite3_result_text(v0, (v20 + 32), v9, v19);

          goto LABEL_15;
        }

LABEL_20:
        swift_once();
        goto LABEL_14;
      }

LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  sub_1000034F8(v30);
  v30[0] = 0;
  v30[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(27);

  sub_100013D5C();
  v28 = v23;
  v29 = v22;
  sub_10001B618(v1, v30);
  sub_10002EB80(&qword_100199ED0, &qword_10014ED20);
  v24._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v24);

  result = sub_100019DB8("Fatal error", v25, v26, v28, v29, "AppIntents_SQLite/Connection.swift");
  __break(1u);
  return result;
}

uint64_t sub_1001370DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);

  v7(a2, a3, a4);
}

uint64_t sub_10013714C(sqlite3_context *a1)
{
  v1 = *(sqlite3_user_data(a1) + 2);

  return v1();
}

uint64_t sub_1001371A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  swift_beginAccess();
  sub_1000A0FE0(a1, a2, *(v4 + 88));
  v11 = v10;
  swift_endAccess();
  if (v11)
  {
  }

  else
  {
    v12 = Dictionary.init(dictionaryLiteral:)();
    sub_1000135FC();
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17[0] = *(v5 + 88);
    sub_100137D3C(v12, a1, a2, isUniquelyReferenced_nonNull_native);
    *(v5 + 88) = v17[0];
    swift_endAccess();
  }

  sub_1000135FC();
  swift_beginAccess();
  v14 = sub_100137318(v18, a1, a2);
  if (*v15)
  {
    sub_100004D14(a4, v17);
    sub_100134C8C(v17, a3);
  }

  (v14)(v18, 0);
  return swift_endAccess();
}

uint64_t (*sub_100137318(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  v6 = sub_100137A1C(0x28uLL);
  *a1 = v6;
  v6[4] = sub_100138328(v6, a2, a3);
  return sub_10013738C;
}

void sub_10013738C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

void Connection.createCollation(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  sub_100004DD8();
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;
  sub_100002EA8();
  sub_100007924();
  v19[2] = sub_1001375FC;
  v19[3] = &unk_100191A78;
  v12 = _Block_copy(v19);

  v15 = Connection.handle.getter(v13, v14);
  sub_10001209C();
  v16 = String.utf8CString.getter();
  collation_v2 = sqlite3_create_collation_v2(v15, (v16 + 32), 1, v12, sub_1001376DC, 0);

  sub_100015DD4(collation_v2, 0);
  if (!v5)
  {
    sub_1000135FC();
    swift_beginAccess();
    _Block_copy(v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *(v6 + 96);
    sub_100137E78(v12, a1, a2, isUniquelyReferenced_nonNull_native);
    *(v6 + 96) = v20;
    swift_endAccess();
  }

  _Block_release(v12);
}

uint64_t sub_10013755C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = String.init(cString:)();
  v6 = v5;
  v7 = String.init(cString:)();
  v9 = a3(v4, v6, v7, v8);

  if (v9 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v9 <= 0x7FFFFFFF)
  {
    return v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_1001375FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v6 = v5(a2, a3);

  return v6;
}

uint64_t sub_100137658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 && a5)
  {
    v6 = *(a1 + 16);

    return v6();
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void *Connection.backup(databaseName:usingConnection:andDatabaseName:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  type metadata accessor for Backup();
  swift_allocObject();
  sub_10002CD10(a1, a2);
  v11 = sub_10001209C();
  sub_10002CD10(v11, v12);

  return Backup.init(sourceConnection:sourceName:targetConnection:targetName:)(v5, a1, a2, a3, a4, a5);
}

uint64_t sub_10013778C()
{
  sub_10002EB80(&qword_10019D048, &qword_100153558);
  swift_allocObject();
  result = DispatchSpecificKey.init()();
  qword_10019CF10 = result;
  return result;
}

const char *Connection.description.getter(uint64_t a1, uint64_t a2)
{
  v2 = Connection.handle.getter(a1, a2);
  result = sqlite3_db_filename(v2, 0);
  if (result)
  {

    return String.init(cString:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10013783C(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    v4 = *(a2 + 8 * *a1);
    switch(sqlite3_value_type(v4))
    {
      case 1:
        v5 = sqlite3_value_int64(v4);
        v6 = &type metadata for Int64;
        v7 = &protocol witness table for Int64;
        goto LABEL_9;
      case 2:
        v13 = sqlite3_value_double(v4);
        *(a3 + 24) = &type metadata for Double;
        *(a3 + 32) = &protocol witness table for Double;
        *a3 = v13;
        return;
      case 3:
        if (!sqlite3_value_text(v4))
        {
          goto LABEL_13;
        }

        v8 = String.init(cString:)();
        *(a3 + 24) = &type metadata for String;
        *(a3 + 32) = &protocol witness table for String;
        *a3 = v8;
        *(a3 + 8) = v9;
        return;
      case 4:
        v10 = sqlite3_value_blob(v4);
        if (!v10)
        {
          goto LABEL_14;
        }

        v11 = v10;
        v12 = sqlite3_value_bytes(v4);
        v5 = Blob.init(bytes:length:)(v11, v12);
        v6 = &type metadata for Blob;
        v7 = &protocol witness table for Blob;
LABEL_9:
        *(a3 + 24) = v6;
        *(a3 + 32) = v7;
        *a3 = v5;
        break;
      case 5:
        *(a3 + 32) = 0;
        *a3 = 0u;
        *(a3 + 16) = 0u;
        break;
      default:
        goto LABEL_15;
    }
  }

  else
  {
    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    _StringGuts.grow(_:)(26);

    v14._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v14);

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

void *sub_100137A1C(size_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

unint64_t sub_100137AA0(uint64_t a1)
{
  v2 = static Hasher._hash(seed:_:)();

  return sub_1001382C8(a1, v2);
}

void sub_100137AE4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10000C2A0(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_11;
  }

  v16 = v11;
  v17 = v12;
  sub_10002EB80(&qword_10019CEF8, &unk_1001532B0);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a4 & 1, v15))
  {
    goto LABEL_5;
  }

  v18 = sub_10000C2A0(a2, a3);
  if ((v17 & 1) != (v19 & 1))
  {
LABEL_11:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v16 = v18;
LABEL_5:
  v20 = *v5;
  if (v17)
  {
    *(v20[7] + 8 * v16) = a1;
  }

  else
  {
    sub_100069A70(v16, a2, a3, a1, v20);
  }
}

_OWORD *sub_100137C0C(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_100137AA0(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_13;
  }

  v14 = v9;
  v15 = v10;
  sub_10002EB80(&qword_10019D030, &qword_100153540);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a3 & 1, v13))
  {
    goto LABEL_5;
  }

  v16 = sub_100137AA0(a2);
  if ((v15 & 1) != (v17 & 1))
  {
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v14 = v16;
LABEL_5:
  v18 = *v4;
  if (v15)
  {
    v19 = (v18[7] + 32 * v14);
    sub_1000034F8(v19);

    return sub_1000398F4(a1, v19);
  }

  else
  {

    return sub_100138260(v14, a2, a1, v18);
  }
}

void sub_100137D3C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10000C2A0(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v11;
  v17 = v12;
  sub_10002EB80(&qword_10019D038, &qword_100153548);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a4 & 1, v15))
  {
    goto LABEL_5;
  }

  v18 = sub_10000C2A0(a2, a3);
  if ((v17 & 1) != (v19 & 1))
  {
LABEL_13:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v16 = v18;
LABEL_5:
  v20 = *v5;
  if (v17)
  {
    *(v20[7] + 8 * v16) = a1;
  }

  else
  {
    sub_100069A70(v16, a2, a3, a1, v20);
  }
}

void sub_100137E78(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10000C2A0(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v11;
  v17 = v12;
  sub_10002EB80(&qword_10019D028, &unk_100153530);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a4 & 1, v15))
  {
    goto LABEL_5;
  }

  v18 = sub_10000C2A0(a2, a3);
  if ((v17 & 1) != (v19 & 1))
  {
LABEL_13:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v16 = v18;
LABEL_5:
  v20 = *v5;
  if (v17)
  {
    v21 = v20[7];
    v22 = *(v21 + 8 * v16);
    *(v21 + 8 * v16) = a1;

    _Block_release(v22);
  }

  else
  {
    sub_100069A70(v16, a2, a3, a1, v20);
  }
}

unint64_t sub_100137FB8()
{
  result = qword_10019CF20;
  if (!qword_10019CF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10019CF20);
  }

  return result;
}

unint64_t sub_100138010()
{
  result = qword_10019CF28;
  if (!qword_10019CF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10019CF28);
  }

  return result;
}

uint64_t sub_100138088(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1001380A0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001380F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_100138150(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

_BYTE *sub_100138188(_BYTE *result, unsigned int a2, unsigned int a3)
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

_OWORD *sub_100138260(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_1000398F4(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_1001382C8(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

void (*sub_100138328(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  v6 = sub_100137A1C(0x50uLL);
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6[8] = sub_10013863C(v6);
  v6[9] = sub_100138420(v6 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_1001383C0;
}

void sub_1001383C0(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_100138420(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1)
{
  v5 = v4;
  v10 = sub_100137A1C(0x30uLL);
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v11 = *v4;
  v12 = sub_10000C2A0(a2, a3);
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
  sub_10002EB80(&qword_10019D038, &qword_100153548);
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(a4 & 1, v16))
  {
    v19 = sub_10000C2A0(a2, a3);
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
  return sub_100138560;
}

void sub_100138560(uint64_t **a1)
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
      *(v5[7] + 8 * v4) = v2;
    }

    else
    {
      sub_100069A70(v4, v1[1], v1[2], v2, v5);
    }
  }

  else if ((*a1)[5])
  {
    sub_10001D368(*(*v1[3] + 48) + 16 * v1[4]);
    sub_10002EB80(&qword_10019D040, &qword_100153550);
    _NativeDictionary._delete(at:)();
  }

  free(v1);
}

uint64_t (*sub_10013863C(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_100138664;
}

uint64_t sub_100138710(double a1)
{
  sub_10002EB80(&unk_10019B450, &unk_10014ED30);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10014CE90;
  *(v2 + 56) = &type metadata for Double;
  *(v2 + 64) = &protocol witness table for Double;
  *(v2 + 32) = a1;
  return 63;
}

uint64_t sub_100138780(uint64_t a1)
{
  sub_10002EB80(&unk_10019B450, &unk_10014ED30);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10014CE90;
  *(v2 + 56) = &type metadata for Blob;
  *(v2 + 64) = &protocol witness table for Blob;
  *(v2 + 32) = a1;

  return 63;
}

uint64_t sub_1001387FC(char a1)
{
  sub_10002EB80(&unk_10019B450, &unk_10014ED30);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10014CE90;
  *(v2 + 56) = &type metadata for Int64;
  *(v2 + 64) = &protocol witness table for Int64;
  *(v2 + 32) = a1 & 1;
  return 63;
}

uint64_t sub_100138870(uint64_t a1)
{
  sub_10002EB80(&unk_10019B450, &unk_10014ED30);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10014CE90;
  *(v2 + 56) = &type metadata for Int64;
  *(v2 + 64) = &protocol witness table for Int64;
  *(v2 + 32) = a1;
  return 63;
}

uint64_t sub_1001388E0(uint64_t a1, unint64_t a2)
{
  sub_1000098F0(a1, a2);

  return sub_1001393D8(a1, a2);
}

uint64_t sub_100138920()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  sub_10002EB80(&unk_10019B450, &unk_10014ED30);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10014CE90;
  *(v7 + 56) = &type metadata for String;
  *(v7 + 64) = &protocol witness table for String;
  if (qword_10019CA18 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = dateFormatter.super.super.isa;
  isa = Date._bridgeToObjectiveC()().super.isa;
  v10 = [(objc_class *)v8 stringFromDate:isa];

  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  *(v7 + 32) = v11;
  *(v7 + 40) = v13;
  (*(v3 + 8))(v6, v2);
  return 63;
}

uint64_t sub_100138B00()
{
  v1 = type metadata accessor for UUID();
  v2 = __chkstk_darwin(v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, v0, v2);
  return sub_100139470(v4);
}

uint64_t Value.expression.getter()
{
  sub_100007D40();
  sub_100002944();
  v4 = v3;
  __chkstk_darwin(v5);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Expression(0, v2, v8, v9);
  (*(v4 + 16))(v7, v1, v2);
  WitnessTable = swift_getWitnessTable();
  ExpressionType<>.init(value:)(v7, v10, WitnessTable, v0);
  v14[0] = v14[3];
  v14[1] = v14[4];
  v14[2] = v14[5];
  v12 = ExpressionType.expression.getter();

  return v12;
}

Swift::String __swiftcall Expressible.asSQL()()
{
  v1 = (*(v0 + 8))();
  v3 = v2;
  v5 = HIBYTE(v4) & 0xF;
  v21 = v1;
  v22 = v4;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = v1 & 0xFFFFFFFFFFFFLL;
  }

  v23 = 0;
  v24 = v5;
  v6 = v2 + 32;

  v7 = 0;
  v8 = 0;
  for (i = 0xE000000000000000; ; i = v20)
  {
    v12 = String.Iterator.next()();
    object = v12.value._object;
    countAndFlagsBits = v12.value._countAndFlagsBits;
    if (!v12.value._object)
    {

      countAndFlagsBits = v7;
      object = i;
      goto LABEL_18;
    }

    v13 = v12.value._countAndFlagsBits;
    if (v12.value._countAndFlagsBits != 63 || v12.value._object != 0xE100000000000000)
    {
      countAndFlagsBits = _stringCompareWithSmolCheck(_:_:expecting:)();
      if ((countAndFlagsBits & 1) == 0)
      {

        v16 = v12.value._object;
        goto LABEL_14;
      }
    }

    if ((v8 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v8 >= *(v3 + 16))
    {
      goto LABEL_17;
    }

    sub_10001B618(v6 + 40 * v8, &v19);
    v13 = sub_1001296FC(&v19);
    v16 = v15;
    sub_10010E64C(&v19);
    ++v8;
LABEL_14:
    v19 = v7;
    v20 = i;

    v17._countAndFlagsBits = v13;
    v17._object = v16;
    String.append(_:)(v17);

    v7 = v19;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result._object = object;
  result._countAndFlagsBits = countAndFlagsBits;
  return result;
}

uint64_t ExpressionType.init(_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1000198BC(34, 0xE100000000000000, a1, a2);
  v8 = v7;

  v9 = *(a4 + 40);

  return v9(v6, v8, _swiftEmptyArrayStorage, a3, a4);
}

uint64_t ExpressionType<>.init(value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v28 = a3;
  v26[1] = a6;
  v27 = a2;
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for Optional();
  sub_100002944();
  v11 = v10;
  __chkstk_darwin(v12);
  v14 = v26 - v13;
  v15 = swift_getAssociatedTypeWitness();
  sub_100002944();
  v17 = v16;
  __chkstk_darwin(v18);
  v20 = v26 - v19;
  sub_10002EB80(&unk_10019B450, &unk_10014ED30);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_10014CE90;
  v22 = *(v11 + 16);
  v29 = a1;
  v22(v14, a1, v9);
  if (sub_1000032C4(v14, 1, AssociatedTypeWitness) == 1)
  {
    (*(v11 + 8))(v14, v9);
    *(v21 + 64) = 0;
    *(v21 + 32) = 0u;
    *(v21 + 48) = 0u;
  }

  else
  {
    (*(a5 + 56))(AssociatedTypeWitness, a5);
    sub_1000073F4();
    (*(v23 + 8))(v14, AssociatedTypeWitness);
    *(v21 + 56) = v15;
    *(v21 + 64) = swift_getAssociatedConformanceWitness();
    v24 = sub_100013234((v21 + 32));
    (*(v17 + 32))(v24, v20, v15);
  }

  (*(v28 + 40))(63, 0xE100000000000000, v21, v27);
  return (*(v11 + 8))(v29, v9);
}

uint64_t sub_1001392C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  sub_10002EB80(&qword_1001987A0, &qword_10014BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10014BC40;
  *(inited + 56) = a1;
  *(inited + 64) = *(a2 + 8);
  sub_100013234((inited + 32));
  sub_1000073F4();
  (*(v11 + 16))();
  v12 = sub_10002EB80(&qword_10019CA28, &unk_100152718);
  *(inited + 104) = &protocol witness table for Expression<A>;
  *(inited + 72) = a3;
  *(inited + 80) = a4;
  *(inited + 88) = _swiftEmptyArrayStorage;
  *(inited + 96) = v12;
  sub_100013640(inited, a5);
  swift_setDeallocating();
  return sub_100018898();
}

uint64_t sub_1001393D8(uint64_t a1, unint64_t a2)
{
  sub_10002EB80(&unk_10019B450, &unk_10014ED30);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10014CE90;
  *(v4 + 56) = &type metadata for Blob;
  *(v4 + 64) = &protocol witness table for Blob;
  *(v4 + 32) = Data.datatypeValue.getter(a1, a2);
  sub_100009B18(a1, a2);
  return 63;
}

uint64_t sub_100139470(uint64_t a1)
{
  sub_10002EB80(&unk_10019B450, &unk_10014ED30);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10014CE90;
  *(v2 + 56) = &type metadata for String;
  *(v2 + 64) = &protocol witness table for String;
  *(v2 + 32) = UUID.uuidString.getter();
  *(v2 + 40) = v3;
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 8))(a1, v4);
  return 63;
}

uint64_t ExpressionType<>.init(value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10002EB80(&unk_10019B450, &unk_10014ED30);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10014CE90;
  v9 = *(a4 + 56);
  swift_getAssociatedTypeWitness();
  *(v8 + 56) = swift_getAssociatedTypeWitness();
  *(v8 + 64) = swift_getAssociatedConformanceWitness();
  sub_100013234((v8 + 32));
  v10 = swift_checkMetadataState();
  v9(v10, a4);
  (*(a3 + 40))(63, 0xE100000000000000, v8, a2, a3);
  sub_1000073F4();
  v12 = *(v11 + 8);

  return v12(a1, v10);
}

uint64_t static ExpressionType<>.null.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for Optional();
  __chkstk_darwin(v10 - 8);
  v12 = &v14 - v11;
  sub_1000075C4(&v14 - v11, 1, 1, AssociatedTypeWitness);
  return ExpressionType<>.init(value:)(v12, a1, a2, a4, a5);
}

uint64_t sub_1001397AC()
{
  result = sub_1000198BC(34, 0xE100000000000000, 0x4449574F52, 0xE500000000000000);
  rowid = result;
  *algn_10019E5C8 = v1;
  qword_10019E5D0 = _swiftEmptyArrayStorage;
  return result;
}

uint64_t *rowid.unsafeMutableAddressor()
{
  if (qword_10019CA10 != -1)
  {
    swift_once();
  }

  return &rowid;
}

uint64_t cast<A, B>(_:)(Swift::String a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1000082EC(a1);
  sub_100006958();
  v8._countAndFlagsBits = (*(a6 + 40))(a4, a6);
  String.append(_:)(v8);

  v9._countAndFlagsBits = 41;
  v9._object = 0xE100000000000000;
  String.append(_:)(v9);

  return v11;
}

{
  sub_1000082EC(a1);
  sub_100006958();
  v8._countAndFlagsBits = (*(a6 + 40))(a4, a6);
  String.append(_:)(v8);

  v9._countAndFlagsBits = 41;
  v9._object = 0xE100000000000000;
  String.append(_:)(v9);
  type metadata accessor for Optional();

  return v11;
}

unint64_t static Expression.jsonExtract(key:source:)()
{
  sub_100007D40();
  _StringGuts.grow(_:)(37);

  v2._countAndFlagsBits = v1;
  v2._object = v0;
  String.append(_:)(v2);
  v3._countAndFlagsBits = 10535;
  v3._object = 0xE200000000000000;
  String.append(_:)(v3);
  return 0xD000000000000021;
}

uint64_t sub_100139A34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_100139A74()
{
  result = Statement.failableNext()();
  if (v1)
  {
    result = sub_100007D64(result, "AppIntents_SQLite/Statement.swift");
    __break(1u);
  }

  return result;
}

uint64_t sub_100139AB4(uint64_t a1, uint64_t a2)
{
  v3 = Statement.failableNext()();
  if (v4)
  {
    result = sub_100007D64(v3, "AppIntents_SQLite/Statement.swift");
    __break(1u);
  }

  else
  {
    if (!v3)
    {
      return 0;
    }

    return a2;
  }

  return result;
}

uint64_t Statement.scalar(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  Statement.bind(_:)(a1);
  Statement.scalar(_:)(_swiftEmptyArrayStorage, a2);
}

{
  Statement.bind(_:)(a1);
  Statement.scalar(_:)(_swiftEmptyArrayStorage, a2);
}

uint64_t Statement.columnCount.setter(uint64_t result)
{
  *(v1 + 32) = result;
  *(v1 + 40) = 0;
  return result;
}

uint64_t (*Statement.columnCount.modify(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = Statement.columnCount.getter();
  return sub_100139EF0;
}

void *sub_100139EF0(void *result)
{
  v1 = result[1];
  *(v1 + 32) = *result;
  *(v1 + 40) = 0;
  return result;
}

uint64_t (*Statement.columnNames.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  Statement.columnNames.getter();
  *a1 = v3;
  return sub_100139F58;
}

uint64_t sub_100139F58(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return Statement.columnNames.setter(*a1);
  }

  Statement.columnNames.setter(v2);
}

uint64_t Statement.row.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 56) = result;
  *(v2 + 64) = a2;
  return result;
}

uint64_t (*Statement.row.modify(uint64_t *a1))()
{
  a1[2] = v1;
  *a1 = Statement.row.getter();
  a1[1] = v3;
  return sub_10013A000;
}

void *sub_10013A000(void *result)
{
  v2 = result[1];
  v1 = result[2];
  *(v1 + 56) = *result;
  *(v1 + 64) = v2;
  return result;
}

Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Statement.step()()
{
  v1 = *(v0 + 24);

  return sub_1000157D4(v1, v0);
}

void Statement.scalar(_:)(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = v3;
  if (*(a1 + 16))
  {
    Statement.bind(_:)(a1);
    Statement.scalar(_:)(_swiftEmptyArrayStorage, a2);
    sub_1000053AC();
  }

  else
  {
    sub_10001AFE8(0);
    v6 = *(v2 + 24);

    sub_1000157D4(v6, v2);
    if (!v4)
    {
      v7 = Statement.row.getter();
      Cursor.subscript.getter(a2, 0, v7);
    }
  }
}

uint64_t Statement.makeIterator()()
{
  sub_10001AFE8(0);
}

uint64_t sub_10013A118@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  Statement.makeIterator()();

  *a1 = v3;
  return result;
}

void *sub_10013A194()
{
  v0 = sub_10013A9C0();

  return v0;
}

uint64_t Array.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a1;
  v29 = a3;
  v7 = type metadata accessor for Optional();
  v23 = *(v7 - 8);
  v24 = v7;
  __chkstk_darwin(v7);
  v9 = &v22 - v8;
  v10 = *(a2 - 8);
  __chkstk_darwin(v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v22 - v15;
  v30 = Array.init()();
  v27 = a4;
  v25 = *(a4 + 16);
  v26 = a4 + 16;
  while (1)
  {
    v25(v29, v27);
    if (v4)
    {
      v17 = sub_100006978();
      (*(v18 + 8))(v17);
    }

    if (sub_1000032C4(v9, 1, a2) == 1)
    {
      break;
    }

    (*(v10 + 32))(v16, v9, a2);
    (*(v10 + 16))(v13, v16, a2);
    type metadata accessor for Array();
    Array.append(_:)();
    (*(v10 + 8))(v16, a2);
  }

  v20 = sub_100006978();
  (*(v21 + 8))(v20);
  (*(v23 + 8))(v9, v24);
  return v30;
}

unint64_t sub_10013A4AC@<X0>(unint64_t *a1@<X8>)
{
  result = Statement.failableNext()();
  if (!v3)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_10013A4DC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100139A74();
  *a1 = result;
  return result;
}

void sub_10013A538()
{
  Statement.columnNames.getter();
  v1 = v0;
  v2 = 0;
  v3 = *(v0 + 16);
  for (i = (v0 + 40); ; i += 2)
  {
    if (v3 == v2)
    {

      return;
    }

    if (v2 >= *(v1 + 16))
    {
      break;
    }

    v6 = *(i - 1);
    v5 = *i;

    v7 = sub_1000198BC(34, 0xE100000000000000, v6, v5);
    v9 = v8;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100137AE4(v2, v7, v9, isUniquelyReferenced_nonNull_native);

    ++v2;
  }

  __break(1u);
}

const char *Statement.description.getter()
{
  sub_100002ECC();
  swift_beginAccess();
  result = sqlite3_sql(*(v0 + 16));
  if (result)
  {
    return String.init(cString:)();
  }

  __break(1u);
  return result;
}

double Cursor.subscript.getter(uint64_t iCol, sqlite3_stmt *a2)
{
  if (iCol < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (iCol <= 0x7FFFFFFF)
  {
    return sqlite3_column_double(a2, iCol);
  }

  __break(1u);
  return result;
}

uint64_t Cursor.subscript.getter(uint64_t iCol, sqlite3_stmt *a2)
{
  if (iCol < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (iCol > 0x7FFFFFFF)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  iCol = sqlite3_column_text(a2, iCol);
  if (!iCol)
  {
LABEL_9:
    __break(1u);
    return iCol;
  }

  return String.init(cString:)();
}

{
  if (iCol < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  v2 = iCol;
  if (iCol > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    return iCol;
  }

  v4 = sqlite3_column_blob(a2, iCol);
  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  v5 = v4;
  v6 = sqlite3_column_bytes(a2, v2);

  return Blob.init(bytes:length:)(v5, v6);
}

BOOL Cursor.subscript.getter(_BOOL8 iCol, sqlite3_stmt *a2)
{
  if (iCol < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (iCol <= 0x7FFFFFFF)
  {
    return sqlite3_column_int64(a2, iCol) != 0;
  }

  __break(1u);
  return iCol;
}

sqlite3_int64 sub_10013A804(sqlite3_int64 iCol, sqlite3_stmt *a2)
{
  if (iCol < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (iCol <= 0x7FFFFFFF)
  {
    return sqlite3_column_int64(a2, iCol);
  }

  __break(1u);
  return iCol;
}

uint64_t Cursor.makeIterator()(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = swift_allocObject();
  v5[2] = v4;
  v5[3] = a1;
  v5[4] = a2;
  sub_10002EB80(&qword_10019D100, &qword_100153638);
  result = swift_allocObject();
  *(result + 16) = sub_10013AB4C;
  *(result + 24) = v5;
  return result;
}

double sub_10013A8D0@<D0>(uint64_t a1@<X0>, sqlite3_stmt *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  swift_beginAccess();
  v8 = *(a1 + 16);
  if (v8 >= a3)
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    *&result = 1;
    *(a4 + 24) = xmmword_100153620;
  }

  else
  {
    swift_beginAccess();
    *(a1 + 16) = v8 + 1;
    Cursor.subscript.getter(a4, v8, a2);
  }

  return result;
}

uint64_t sub_10013A97C@<X0>(uint64_t *a1@<X8>)
{
  result = Cursor.makeIterator()(*v1, v1[1]);
  *a1 = result;
  return result;
}

void *sub_10013A9C0()
{
  sub_10001AFE8(0);

  v0 = 0;
  v1 = _swiftEmptyArrayStorage;
  for (i = &_swiftEmptyArrayStorage[4]; ; ++i)
  {
    v3 = Statement.failableNext()();
    if (v4)
    {
      goto LABEL_27;
    }

    v5 = v3;
    if (!v3)
    {
      break;
    }

    if (!v0)
    {
      v6 = v1[3];
      if (((v6 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_25;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if (v7 <= 1)
      {
        v8 = 1;
      }

      else
      {
        v8 = v7;
      }

      sub_10002EB80(&qword_10019D1E8, &unk_100153810);
      v9 = swift_allocObject();
      v10 = (j__malloc_size(v9) - 32) / 8;
      v9[2] = v8;
      v9[3] = 2 * v10;
      v11 = (v9 + 4);
      v12 = v1[3];
      v13 = v12 >> 1;
      if (v1[2])
      {
        if (v9 != v1 || v11 >= &v1[v13 + 4])
        {
          memmove(v9 + 4, v1 + 4, 8 * v13);
        }

        v1[2] = 0;
      }

      i = (v11 + 8 * v13);
      v0 = (v10 & 0x7FFFFFFFFFFFFFFFLL) - (v12 >> 1);

      v1 = v9;
    }

    v15 = __OFSUB__(v0--, 1);
    if (v15)
    {
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    *i = v5;
  }

  v16 = v1[3];
  if (v16 < 2)
  {
    return v1;
  }

  v17 = v16 >> 1;
  v15 = __OFSUB__(v17, v0);
  v18 = v17 - v0;
  if (!v15)
  {
    v1[2] = v18;
    return v1;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

unint64_t sub_10013AB5C()
{
  result = qword_10019D108;
  if (!qword_10019D108)
  {
    type metadata accessor for Statement();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10019D108);
  }

  return result;
}

unint64_t sub_10013ABB0(uint64_t a1)
{
  result = sub_10013AB5C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10013ABDC()
{
  result = qword_10019D110;
  if (!qword_10019D110)
  {
    sub_10002EC70(&qword_10019D118, &qword_100153720);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10019D110);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Cursor(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 == 1 || !*(a1 + 16))
    {
      if (*a1)
      {
        v2 = -1;
      }

      else
      {
        v2 = 0;
      }
    }

    else
    {
      v2 = *a1 + 1;
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for Cursor(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    if (a3 >= 2)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

void sub_10013ACC8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = a4;
  v11[4] = a5;
  sub_10002EB80(&qword_10019D100, &qword_100153638);
  v12 = swift_allocObject();
  *(v12 + 16) = sub_10013AED8;
  *(v12 + 24) = v11;
  if (a2 && a3)
  {
    if ((a3 & 0x8000000000000000) == 0)
    {
      v13 = 0;
      while (1)
      {
        v14 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        sub_10013AB4C(&v17);
        if (*(&v18 + 1) == 1)
        {
          sub_100003E9C(&v17, &qword_10019D1E0, &qword_100153808);
          goto LABEL_10;
        }

        v15 = v18;
        v20 = v17;
        v21 = v18;
        v16 = v19;
        v22 = v19;
        *a2 = v17;
        *(a2 + 16) = v15;
        *(a2 + 32) = v16;
        a2 += 40;
        ++v13;
        if (v14 == a3)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_10:
    *a1 = v12;
  }
}

uint64_t sub_10013AE18(void *a1, uint64_t a2, uint64_t a3)
{
  sub_10001AFE8(0);
  v7 = 0;
  if (a2 && a3)
  {
    if ((a3 & 0x8000000000000000) == 0)
    {
      v7 = 0;
      while (1)
      {
        v8 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        v9 = Statement.failableNext()();
        if (v10)
        {
          goto LABEL_13;
        }

        if (!v9)
        {
          goto LABEL_10;
        }

        *(a2 + 8 * v7++) = v9;
        if (v8 == a3)
        {
          v7 = a3;
          goto LABEL_10;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_13:
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
LABEL_10:
    *a1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_10013AEE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23[4] = &protocol witness table for Expression<A>;
  v23[0] = a1;
  v23[1] = a2;
  v23[2] = a3;
  v23[3] = sub_10002EB80(&qword_100199EC8, &unk_10014ED00);
  v22[3] = &type metadata for Int;
  v22[4] = &protocol witness table for Int;
  v22[0] = a4;
  sub_10002EB80(&qword_1001987A0, &qword_10014BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10014BC40;
  sub_100013334(v23, inited + 32);
  sub_100013334(v22, inited + 72);
  v19[0] = 32;
  v19[1] = 0xE100000000000000;

  v8._countAndFlagsBits = a5;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);
  v9._countAndFlagsBits = 32;
  v9._object = 0xE100000000000000;
  String.append(_:)(v9);
  sub_100013640(inited, v19);

  v10 = v20;
  v11 = v21;
  sub_1000034B4(v19, v20);
  v12 = (*(v11 + 8))(v10, v11);
  v14 = v13;
  v16 = v15;
  sub_1000034F8(v19);
  v17 = sub_100133FBC(v12, v14, v16, 0, 0xE000000000000000);

  swift_setDeallocating();
  sub_100018898();
  sub_1000034F8(v22);
  sub_1000034F8(v23);
  return v17;
}

uint64_t Setter.expression.getter()
{
  sub_10002EB80(&qword_1001987A0, &qword_10014BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10014BC40;
  sub_100013334(v0, inited + 32);
  sub_100013334(v0 + 40, inited + 72);
  sub_100013640(inited, v6);
  swift_setDeallocating();
  sub_100018898();
  v2 = v7;
  v3 = v8;
  sub_1000034B4(v6, v7);
  v4 = (*(v3 + 8))(v2, v3);
  sub_1000034F8(v6);
  return v4;
}

uint64_t sub_10013B198@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  result = type metadata accessor for Expression(0, a7, a3, a4);
  *a8 = a1;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = result;
  a8[8] = result;
  a8[9] = &protocol witness table for Expression<A>;
  a8[4] = &protocol witness table for Expression<A>;
  a8[5] = a4;
  a8[6] = a5;
  a8[7] = a6;
  return result;
}

uint64_t sub_10013B210@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  a7[3] = type metadata accessor for Expression(0, a5, a3, a4);
  a7[4] = &protocol witness table for Expression<A>;
  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;
  v14 = *(a6 + 8);
  a7[8] = a5;
  a7[9] = v14;
  v15 = sub_100013234(a7 + 5);
  v16 = *(*(a5 - 8) + 32);

  return v16(v15, a4, a5);
}

uint64_t sub_10013B2CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v16 = type metadata accessor for Optional();
  a8[3] = type metadata accessor for Expression(0, v16, v17, v18);
  a8[4] = &protocol witness table for Expression<A>;
  *a8 = a1;
  a8[1] = a2;
  a8[2] = a3;
  result = type metadata accessor for Expression(0, a7, v19, v20);
  a8[8] = result;
  a8[9] = &protocol witness table for Expression<A>;
  a8[5] = a4;
  a8[6] = a5;
  a8[7] = a6;
  return result;
}

uint64_t sub_10013B36C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a8@<X8>)
{
  v15 = type metadata accessor for Optional();
  result = type metadata accessor for Expression(0, v15, v16, v17);
  *a8 = a1;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = result;
  a8[8] = result;
  a8[9] = &protocol witness table for Expression<A>;
  a8[4] = &protocol witness table for Expression<A>;
  a8[5] = a4;
  a8[6] = a5;
  a8[7] = a6;
  return result;
}

uint64_t sub_10013B3F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v22 = a6;
  v12 = type metadata accessor for Optional();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v21 - v14;
  v18 = type metadata accessor for Expression(0, v12, v16, v17);
  a7[3] = v18;
  a7[4] = &protocol witness table for Expression<A>;
  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;
  (*(v13 + 16))(v15, a4, v12);
  a7[8] = v18;
  a7[9] = &protocol witness table for Expression<A>;
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  ExpressionType<>.init(value:)(v15, v18, WitnessTable, v22, (a7 + 5));
  return (*(v13 + 8))(a4, v12);
}

double <- infix<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  return sub_10013B718(a1, a2, a3, a4, a5, a6, a7, a8, sub_10013B198);
}

{
  return sub_10013B718(a1, a2, a3, a4, a5, a6, a7, a8, sub_10013B2CC);
}

{
  return sub_10013B718(a1, a2, a3, a4, a5, a6, a7, a8, sub_10013B36C);
}

double <- infix<A>(_:_:)()
{
  sub_10001ABD4();
  sub_10000399C();
  v7 = __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, v11, v12, v7);
  sub_10013B210(v4, v3, v2, v9, v1, v0, v5);

  return result;
}

double sub_10013B718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(void))
{
  sub_10001ABD4();
  a9();

  return result;
}

uint64_t <- infix<A>(_:_:)()
{
  sub_10001ABD4();
  v2 = v1;
  sub_100009AF0();
  v3 = type metadata accessor for Optional();
  v4 = __chkstk_darwin(v3);
  v6 = &v13 - v5;
  (*(v7 + 16))(&v13 - v5, v2, v4);

  v8 = sub_1000089AC();
  return sub_10013B3F0(v8, v9, v10, v6, v0, v11);
}

double += infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return sub_10013BA3C();
}

{
  return sub_10013BA3C();
}

double sub_10013B978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t *a21)
{
  sub_100006A04();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31();
  v34 = v33;
  v36 = v35;
  v37 = sub_10002EB80(v22, a21);
  *v30 = v28;
  v30[1] = v26;
  v30[2] = v24;
  v30[3] = v37;
  v30[8] = v37;
  v30[9] = &protocol witness table for Expression<A>;
  v30[4] = &protocol witness table for Expression<A>;
  v30[5] = v32;
  v30[6] = v34;
  v30[7] = v36;

  sub_1000069EC();

  return result;
}

double sub_10013BA3C()
{
  sub_100006A04();
  v5 = v4;
  v7 = v6;
  sub_10000399C();
  v9 = v8();
  v11 = v10;
  v13 = v12;
  v14 = sub_10002EB80(v7, v5);
  *v3 = v2;
  v3[1] = v1;
  v3[2] = v0;
  v3[3] = v14;
  v3[8] = v14;
  v3[9] = &protocol witness table for Expression<A>;
  v3[4] = &protocol witness table for Expression<A>;
  v3[5] = v9;
  v3[6] = v11;
  v3[7] = v13;

  sub_1000069EC();

  return result;
}

uint64_t += infix<A>(_:_:)()
{
  sub_100007D84();
  return sub_10013BB74(v0, v1, v2, v3, v4, v5, v6, v7, v8, + infix<A>(_:_:), v10);
}

{
  sub_100008324();
  return sub_10013BB74(v0, v1, v2, v3, v4, v5, v6, v7, v8, + infix<A>(_:_:), v10);
}

{
  sub_100008324();
  return sub_10013BB74(v0, v1, v2, v3, v4, v5, v6, v7, v8, + infix<A>(_:_:), v10);
}

uint64_t sub_10013BB74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(uint64_t), void (*a11)(uint64_t))
{
  sub_10000399C();
  a10(v11);
  v12 = sub_100003CEC();
  a11(v12);
}

uint64_t sub_10013BC70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void (*a21)(uint64_t))
{
  sub_100006A04();
  sub_10001ABD4();
  sub_10000399C();
  v21();
  v22 = sub_100003CEC();
  a21(v22);

  sub_1000069EC();
}

uint64_t -= infix<A>(_:_:)()
{
  sub_100007D84();
  return sub_10013BB74(v0, v1, v2, v3, v4, v5, v6, v7, v8, - infix<A>(_:_:), v10);
}

{
  sub_100008324();
  return sub_10013BB74(v0, v1, v2, v3, v4, v5, v6, v7, v8, - infix<A>(_:_:), v10);
}

{
  sub_100008324();
  return sub_10013BB74(v0, v1, v2, v3, v4, v5, v6, v7, v8, - infix<A>(_:_:), v10);
}

uint64_t *= infix<A>(_:_:)()
{
  sub_100007D84();
  return sub_10013BB74(v0, v1, v2, v3, v4, v5, v6, v7, v8, * infix<A>(_:_:), v10);
}

{
  sub_100008324();
  return sub_10013BB74(v0, v1, v2, v3, v4, v5, v6, v7, v8, * infix<A>(_:_:), v10);
}

{
  sub_100008324();
  return sub_10013BB74(v0, v1, v2, v3, v4, v5, v6, v7, v8, * infix<A>(_:_:), v10);
}

uint64_t /= infix<A>(_:_:)()
{
  sub_100007D84();
  return sub_10013BB74(v0, v1, v2, v3, v4, v5, v6, v7, v8, / infix<A>(_:_:), v10);
}

{
  sub_100008324();
  return sub_10013BB74(v0, v1, v2, v3, v4, v5, v6, v7, v8, / infix<A>(_:_:), v10);
}

{
  sub_100008324();
  return sub_10013BB74(v0, v1, v2, v3, v4, v5, v6, v7, v8, / infix<A>(_:_:), v10);
}

uint64_t %= infix<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return sub_10013C18C();
}

{
  return sub_10013C18C();
}

uint64_t sub_10013C0BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void (*a21)(void), void (*a22)(uint64_t))
{
  sub_100006A04();
  sub_10000399C();
  a21();
  v22 = sub_100003CEC();
  a22(v22);

  sub_1000069EC();
}

uint64_t sub_10013C18C()
{
  sub_100006A04();
  v1 = v0;
  sub_100009AF0();
  v2();
  v3 = sub_1000089AC();
  v1(v3);

  sub_1000069EC();
}

uint64_t <<= infix<A>(_:_:)()
{
  return sub_10013C18C();
}

{
  return sub_10013C18C();
}

uint64_t >>= infix<A>(_:_:)()
{
  return sub_10013C18C();
}

{
  return sub_10013C18C();
}

uint64_t &= infix<A>(_:_:)()
{
  return sub_10013C18C();
}

{
  return sub_10013C18C();
}

uint64_t |= infix<A>(_:_:)()
{
  return sub_10013C18C();
}

{
  return sub_10013C18C();
}

uint64_t ^= infix<A>(_:_:)()
{
  return sub_10013C18C();
}

{
  return sub_10013C18C();
}

uint64_t ++ postfix<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return sub_10013C72C();
}

{
  return sub_10013C7D4();
}

uint64_t -- postfix<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return sub_10013C72C();
}

{
  return sub_10013C7D4();
}

uint64_t sub_10013C72C()
{
  sub_100018580();
  sub_10002EB80(&qword_100199EC8, &unk_10014ED00);
  type metadata accessor for Expression(0, v0, v4, v5);
  sub_10013C880();

  v6 = sub_100005090();
  v14 = sub_100013608(v6, v7, v8, v9, v10, v11, v12, v13, v3);
  v22 = sub_100011968(v14, v15, v16, v17, v18, v19, v20, v21, v26, v2, v1, v27, v28, v29);
  return sub_100011224(v22, v23, v24, &protocol witness table for Expression<A>);
}

uint64_t sub_10013C7D4()
{
  sub_100018580();
  sub_10002EB80(&qword_100199EC8, &unk_10014ED00);
  v3 = type metadata accessor for Optional();
  type metadata accessor for Expression(0, v3, v4, v5);
  sub_10013C880();

  v6 = sub_100005090();
  v14 = sub_100013608(v6, v7, v8, v9, v10, v11, v12, v13, v2);
  v22 = sub_100011968(v14, v15, v16, v17, v18, v19, v20, v21, v26, v1, v0, v27, v28, v29);
  return sub_100011224(v22, v23, v24, &protocol witness table for Expression<A>);
}

unint64_t sub_10013C880()
{
  result = qword_10019C140;
  if (!qword_10019C140)
  {
    sub_10002EC70(&qword_100199EC8, &unk_10014ED00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10019C140);
  }

  return result;
}

uint64_t sub_10013C8E4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_10013C924(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10013C9A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a5 + 16);
  if (v8)
  {
    sub_10013CDFC(0x3F, 0xE100000000000000, v8);
    sub_10002EB80(&unk_10019ACC0, &qword_1001507B0);
    sub_10009153C();
    v9 = BidirectionalCollection<>.joined(separator:)();
    v11 = v10;

    v12._countAndFlagsBits = 539770664;
    v12._object = 0xE400000000000000;
    String.append(_:)(v12);
    v13._countAndFlagsBits = v9;
    v13._object = v11;
    String.append(_:)(v13);

    v14._countAndFlagsBits = 41;
    v14._object = 0xE100000000000000;
    String.append(_:)(v14);
    v15 = a1;
    sub_10002EB80(&unk_100198B60, &qword_10014E3C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10014CE90;
    *(inited + 32) = a3;
    *(inited + 40) = a4;
    v21 = inited;

    sub_10006E3AC(v17);
    sub_10006DF2C(v21);
  }

  else
  {

    v18._countAndFlagsBits = 2703144;
    v18._object = 0xE300000000000000;
    String.append(_:)(v18);
    v15 = a1;
    sub_10002EB80(&unk_10019B450, &unk_10014ED30);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_10014CE90;
    *(v19 + 56) = &type metadata for String;
    *(v19 + 64) = &protocol witness table for String;
    *(v19 + 32) = a3;
    *(v19 + 40) = a4;
  }

  return v15;
}

uint64_t static DateFunctions.strftime(_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a5 + 16);
  if (v9)
  {
    sub_10013CDFC(0x3F, 0xE100000000000000, v9);
    sub_10002EB80(&unk_10019ACC0, &qword_1001507B0);
    sub_10009153C();
    v10 = BidirectionalCollection<>.joined(separator:)();
    v12 = v11;

    _StringGuts.grow(_:)(18);

    v13._countAndFlagsBits = v10;
    v13._object = v12;
    String.append(_:)(v13);

    v14._countAndFlagsBits = 41;
    v14._object = 0xE100000000000000;
    String.append(_:)(v14);
    sub_10002EB80(&unk_100198B60, &qword_10014E3C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10014BC40;
    *(inited + 32) = a1;
    *(inited + 40) = a2;
    *(inited + 48) = a3;
    *(inited + 56) = a4;
    v19 = inited;

    sub_10006E3AC(v16);
    sub_10006DF2C(v19);
  }

  else
  {
    sub_10002EB80(&unk_10019B450, &unk_10014ED30);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_10014BC40;
    *(v17 + 56) = &type metadata for String;
    *(v17 + 64) = &protocol witness table for String;
    *(v17 + 32) = a1;
    *(v17 + 40) = a2;
    *(v17 + 96) = &type metadata for String;
    *(v17 + 104) = &protocol witness table for String;
    *(v17 + 72) = a3;
    *(v17 + 80) = a4;
  }

  return 0x656D697466727473;
}

void *sub_10013CDFC(void *result, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a3)
    {
      v5 = result;
      v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v6 + 16) = a3;
      v7 = a3 - 1;
      for (i = 32; ; i += 16)
      {
        v9 = (v6 + i);
        *v9 = v5;
        v9[1] = a2;
        if (!v7)
        {
          break;
        }

        --v7;
      }
    }

    else
    {

      return _swiftEmptyArrayStorage;
    }

    return v6;
  }

  return result;
}

uint64_t sub_10013CF0C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for DateFunctions();
  if (qword_10019CA18 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = dateFormatter.super.super.isa;
  isa = Date._bridgeToObjectiveC()().super.isa;
  v6 = [(objc_class *)v4 stringFromDate:isa];

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v10 = sub_10013C9A0(a1, a2, v7, v9, _swiftEmptyArrayStorage);

  return v10;
}

uint64_t sub_10013D07C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  String.append(_:)(*&a1);
  v4._countAndFlagsBits = 41;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);

  return a4;
}

uint64_t Backup.__allocating_init(sourceConnection:sourceName:targetConnection:targetName:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v12 = swift_allocObject();
  Backup.init(sourceConnection:sourceName:targetConnection:targetName:)(a1, a2, a3, a4, a5, a6);
  return v12;
}

sqlite3_backup *Backup.pageCount.getter()
{
  result = *(v0 + 32);
  if (result)
  {
    return sqlite3_backup_pagecount(result);
  }

  return result;
}

sqlite3_backup *Backup.remainingPages.getter()
{
  result = *(v0 + 32);
  if (result)
  {
    return sqlite3_backup_remaining(result);
  }

  return result;
}

void *Backup.init(sourceConnection:sourceName:targetConnection:targetName:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v7 = v6;
  v6[3] = a1;
  v6[4] = 0;
  v6[2] = a4;
  pDest = Connection.handle.getter(a1, a2);
  v9 = Connection.handle.getter(pDest, v8);
  v10 = String.utf8CString.getter();

  v11 = String.utf8CString.getter();

  v12 = sqlite3_backup_init(pDest, (v10 + 32), v9, (v11 + 32));

  v7[4] = v12;
  if (v12 || (v15 = Connection.handle.getter(v13, v14), v16 = sqlite3_errcode(v15), , v17 = sub_100140D4C(v16), !v18))
  {
  }

  else
  {
    v21 = v17;
    v22 = v18;
    v23 = v19;
    v24 = v20;
    sub_10002EC1C();
    swift_allocError();
    *v25 = v21;
    *(v25 + 8) = v22;
    *(v25 + 16) = v23;
    *(v25 + 24) = v24;
    swift_willThrow();
  }

  return v7;
}

void Backup.step(pagesToCopy:)(uint64_t a1)
{
  if ((a1 & &_mh_execute_header) != 0)
  {
    v2 = -1;
  }

  else
  {
    v2 = a1;
  }

  v3 = sqlite3_backup_step(*(v1 + 32), v2);
  if (v3 == 101)
  {
    Backup.finish()();
  }

  else
  {
    v4 = v3;

    v5 = sub_100140D4C(v4);
    if (v6)
    {
      v9 = v5;
      v10 = v6;
      v11 = v7;
      v12 = v8;
      sub_10002EC1C();
      swift_allocError();
      *v13 = v9;
      *(v13 + 8) = v10;
      *(v13 + 16) = v11;
      *(v13 + 24) = v12;
      swift_willThrow();
    }
  }
}

Swift::Void __swiftcall Backup.finish()()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    sqlite3_backup_finish(v1);
    *(v0 + 32) = 0;
  }
}

uint64_t Backup.deinit()
{
  Backup.finish()();

  return v0;
}

uint64_t Backup.__deallocating_deinit()
{
  Backup.deinit();

  return _swift_deallocClassInstance(v0);
}

uint64_t sub_10013D4E0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

NSDateFormatter *dateFormatter.unsafeMutableAddressor()
{
  if (qword_10019CA18 != -1)
  {
    sub_100002F00(&qword_10019CA18);
  }

  return &dateFormatter;
}

uint64_t static Data.fromDatatypeValue(_:)()
{

  return sub_1000F4E4C(v0);
}

uint64_t Data.datatypeValue.getter(uint64_t result, unint64_t a2)
{
  v3 = result;
  switch(a2 >> 62)
  {
    case 1uLL:
      if (result >> 32 >= result)
      {
        sub_1000098F0(result, a2);
        v7 = a2 & 0x3FFFFFFFFFFFFFFFLL;
        v8 = v3;
        v9 = v3 >> 32;
        goto LABEL_8;
      }

      __break(1u);
      break;
    case 2uLL:
      v5 = *(result + 16);
      v6 = *(result + 24);
      sub_1000098F0(result, a2);
      v7 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      v8 = v5;
      v9 = v6;
LABEL_8:
      result = sub_10013DD58(v8, v9, v7, v3, a2);
      break;
    case 3uLL:
      result = 0;
      v4 = 0;
      goto LABEL_5;
    default:
      v4 = a2 & 0xFFFFFFFFFFFFFFLL;
LABEL_5:
      result = sub_10013DCB0(result, v4, v3, a2);
      break;
  }

  return result;
}

void *sub_10013D66C@<X0>(void *result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, void *a4@<X8>)
{
  if (result)
  {
    v4 = _swiftEmptyArrayStorage;
    v5 = result;
    switch(a3 >> 62)
    {
      case 1uLL:
        if (!__OFSUB__(HIDWORD(a2), a2))
        {
          v7 = HIDWORD(a2) - a2;
          goto LABEL_7;
        }

        __break(1u);
        goto LABEL_11;
      case 2uLL:
        v9 = *(a2 + 16);
        v8 = *(a2 + 24);
        v7 = v8 - v9;
        if (!__OFSUB__(v8, v9))
        {
          goto LABEL_7;
        }

LABEL_11:
        __break(1u);
        break;
      case 3uLL:
        goto LABEL_9;
      default:
        v7 = BYTE6(a3);
LABEL_7:
        if (v7)
        {
          v4 = sub_10000A7A4(v7, 0);
          result = memcpy(v4 + 4, v5, v7);
        }

LABEL_9:
        *a4 = v4;
        return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10013D734@<X0>(uint64_t *a1@<X8>)
{
  result = static Data.fromDatatypeValue(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10013D760@<X0>(uint64_t *a1@<X8>)
{
  result = Data.datatypeValue.getter(*v1, *(v1 + 8));
  *a1 = result;
  return result;
}

void static Date.fromDatatypeValue(_:)()
{
  if (qword_10019CA18 != -1)
  {
    sub_100002F00(&qword_10019CA18);
  }

  swift_beginAccess();
  v0 = dateFormatter.super.super.isa;
  v1 = String._bridgeToObjectiveC()();
  v2 = [(objc_class *)v0 dateFromString:v1];

  if (v2)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    __break(1u);
  }
}

uint64_t Date.datatypeValue.getter()
{
  if (qword_10019CA18 != -1)
  {
    sub_100002F00(&qword_10019CA18);
  }

  swift_beginAccess();
  v0 = dateFormatter.super.super.isa;
  isa = Date._bridgeToObjectiveC()().super.isa;
  v2 = [(objc_class *)v0 stringFromDate:isa];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v3;
}

uint64_t sub_10013D92C@<X0>(uint64_t *a1@<X8>)
{
  result = Date.datatypeValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

objc_class *sub_10013D954()
{
  result = sub_10013D974();
  dateFormatter.super.super.isa = result;
  return result;
}

id sub_10013D974()
{
  v0 = sub_10002EB80(&qword_10019D3F8, &unk_100153980);
  __chkstk_darwin(v0 - 8);
  v2 = &v12 - v1;
  v3 = type metadata accessor for Locale();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(NSDateFormatter) init];
  sub_10013DE38(0xD000000000000019, 0x8000000100159170, v7);
  Locale.init(identifier:)();
  isa = Locale._bridgeToObjectiveC()().super.isa;
  (*(v4 + 8))(v6, v3);
  [v7 setLocale:isa];

  TimeZone.init(secondsFromGMT:)();
  v9 = type metadata accessor for TimeZone();
  v10 = 0;
  if (sub_1000032C4(v2, 1, v9) != 1)
  {
    v10 = TimeZone._bridgeToObjectiveC()().super.isa;
    (*(*(v9 - 8) + 8))(v2, v9);
  }

  [v7 setTimeZone:v10];

  return v7;
}

uint64_t static UUID.fromDatatypeValue(_:)@<X0>(uint64_t a3@<X8>)
{
  v4 = sub_10002EB80(&qword_100199C90, &qword_10014D060);
  __chkstk_darwin(v4 - 8);
  v6 = &v9 - v5;
  UUID.init(uuidString:)();
  v7 = type metadata accessor for UUID();
  result = sub_1000032C4(v6, 1, v7);
  if (result != 1)
  {
    return (*(*(v7 - 8) + 32))(a3, v6, v7);
  }

  __break(1u);
  return result;
}

uint64_t sub_10013DC88@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = UUID.datatypeValue.getter(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_10013DCB0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v9 = a1;
  v11 = WORD2(a2);
  v10 = a2;
  sub_10013D66C(&v9, a3, a4, &v8);
  result = sub_100009B18(a3, a4);
  if (!v4)
  {
    return v8;
  }

  return result;
}

char *sub_10013DD58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = __DataStorage._bytes.getter();
  v11 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  __DataStorage._length.getter();
  sub_10013D66C(v11, a4, a5, &v12);
  result = sub_100009B18(a4, a5);
  if (!v5)
  {
    return v12;
  }

  return result;
}

void sub_10013DE38(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();

  [a3 setDateFormat:v4];
}

unint64_t QueryError.description.getter(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  switch(a4)
  {
    case 1:
      sub_100007E1C();
      _StringGuts.grow(_:)(33);

      sub_100007458();
      v16 = v11;
      v12._countAndFlagsBits = sub_100002F20();
      String.append(_:)(v12);
      v13._countAndFlagsBits = 0x6C6F63206E692060;
      v13._object = 0xED000020736E6D75;
      String.append(_:)(v13);
      v14._countAndFlagsBits = Array.description.getter();
      String.append(_:)(v14);

      return v16;
    case 2:
      sub_100007E1C();
      _StringGuts.grow(_:)(47);

      v16 = 0xD000000000000012;
      v6._countAndFlagsBits = sub_100002F20();
      String.append(_:)(v6);
      v7._countAndFlagsBits = 0xD000000000000018;
      v7._object = 0x80000001001591E0;
      String.append(_:)(v7);
      v8._countAndFlagsBits = Array.description.getter();
      String.append(_:)(v8);

      v4 = 41;
      goto LABEL_5;
    case 3:
      sub_100007E1C();
      _StringGuts.grow(_:)(37);

      sub_100007458();
      v16 = v9 + 18;
      v10._countAndFlagsBits = sub_100002F20();
      String.append(_:)(v10);
      v4 = 96;
LABEL_5:
      v5 = 0xE100000000000000;
      goto LABEL_6;
    default:
      sub_100007E1C();
      _StringGuts.grow(_:)(17);

      v16 = 0x2068637573206F4ELL;
      v4 = sub_100002F20();
LABEL_6:
      String.append(_:)(*&v4);
      return v16;
  }
}

__n128 sub_10013E0A4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_10013E0B8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 25))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 3)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10013E0F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_10013E158(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  __chkstk_darwin(a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v13 = &v27 - v12;
  __chkstk_darwin(v14);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  __chkstk_darwin(v16);
  v18 = &v27 - v17;
  v19 = dispatch thunk of Collection.count.getter();
  if (!v19)
  {
    return static Array._allocateUninitialized(_:)();
  }

  v41 = v19;
  v45 = ContiguousArray.init()();
  v32 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v41);
  result = dispatch thunk of Collection.startIndex.getter();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = dispatch thunk of Collection.subscript.read();
      v23 = v13;
      v24 = v13;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      ContiguousArray.append(_:)();
      result = dispatch thunk of Collection.formIndex(after:)();
      ++v21;
      v13 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10013E574(void *a1, uint64_t a2)
{

  v3._countAndFlagsBits = 40;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  v4 = a1[3];
  v5 = a1[4];
  sub_1000034B4(a1, v4);
  v6 = *(v5 + 8);
  v7 = v6(v4, v5);
  v9 = v8;

  v10._countAndFlagsBits = v7;
  v10._object = v9;
  String.append(_:)(v10);

  v11._countAndFlagsBits = 41;
  v11._object = 0xE100000000000000;
  String.append(_:)(v11);
  v6(v4, v5);

  return a2;
}

unint64_t sub_10013E670(char a1)
{
  result = 7561825;
  switch(a1)
  {
    case 1:
      result = 0x646E756F72;
      break;
    case 2:
      result = 0x6D6F646E6172;
      break;
    case 3:
      result = 0x6C626D6F646E6172;
      break;
    case 4:
      result = 0x626F6C626F72657ALL;
      break;
    case 5:
      result = 0x6874676E656CLL;
      break;
    case 6:
      v3 = 1702326124;
      goto LABEL_17;
    case 7:
      v3 = 1701867637;
LABEL_17:
      result = v3 & 0xFFFF0000FFFFFFFFLL | 0x7200000000;
      break;
    case 8:
      result = 0x6D6972746CLL;
      break;
    case 9:
      result = 0x6D69727472;
      break;
    case 10:
      result = 1835627124;
      break;
    case 11:
      result = 0x6563616C706572;
      break;
    case 12:
      result = 0x727473627573;
      break;
    case 13:
      result = 1162561868;
      break;
    case 14:
      result = 20041;
      break;
    case 15:
      result = 1112493127;
      break;
    case 16:
      result = 0x484354414DLL;
      break;
    case 17:
      result = 0x505845474552;
      break;
    case 18:
      result = 0x4554414C4C4F43;
      break;
    case 19:
      result = 0x6C6C756E6669;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10013E820(void *a1, char a2)
{
  v3 = sub_10013E670(a2);
  sub_10012932C(a1, v3, v4);
  v6 = v5;

  return v6;
}

uint64_t sub_10013E890(uint64_t a1, char a2)
{
  v3 = sub_10013E670(a2);
  v5 = v4;
  sub_100013640(a1, v9);
  sub_10012932C(v9, v3, v5);
  v7 = v6;

  sub_1000034F8(v9);
  return v7;
}

uint64_t ExpressionType<>.absoluteValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100002770(a1, a2, a3, a4, a5, a6, a7, a8, v10, v11[0], v11[1], v11[2], v11[3], v11[4]);
  sub_1000073F4();
  (*(v8 + 16))();
  swift_getAssociatedTypeWitness();
  sub_10013E820(v11, 0);
  sub_100003CB8();
  sub_1000034F8(v11);
  return sub_100007D30();
}

uint64_t ExpressionType<>.round(_:)(uint64_t a1, char a2)
{
  sub_1000064E4();
  sub_10002EB80(&qword_1001987A0, &qword_10014BE50);
  if (a2)
  {
    inited = swift_initStackObject();
    sub_100006BC4(inited, xmmword_10014CE90);
    sub_10001892C();
    v5();
    sub_10000C124(inited, v9);
  }

  else
  {
    v6 = swift_initStackObject();
    sub_100006BC4(v6, xmmword_10014BC40);
    sub_10001892C();
    v7();
    v6[6].n128_u64[0] = &type metadata for Int;
    v6[6].n128_u64[1] = &protocol witness table for Int;
    v6[4].n128_u64[1] = v2;
    sub_10000C124(v6, v9);
  }

  swift_setDeallocating();
  sub_100018898();
  sub_1000034B4(v9, v9[3]);
  sub_100012B38();
  sub_100129C20();
  sub_100003CB8();
  sub_1000034F8(v9);
  return sub_100007D30();
}

void ExpressionType<>.round(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000064E4();
  sub_10000518C();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_100002958();
  v10 = v9 - v8;
  if (v11)
  {
    sub_10001892C();
    v12();
    sub_100012B38();
    sub_100129C20();
    sub_100007930();
    (*(v6 + 8))(v10, a3);
  }

  else
  {
    sub_10002EB80(&qword_1001987A0, &qword_10014BE50);
    inited = swift_initStackObject();
    sub_100006BC4(inited, xmmword_10014BC40);
    sub_10001892C();
    v14();
    inited[6].n128_u64[0] = &type metadata for Int;
    inited[6].n128_u64[1] = &protocol witness table for Int;
    inited[4].n128_u64[1] = v3;
    sub_10000C124(inited, v15);
    swift_setDeallocating();
    sub_100018898();
    sub_1000034B4(v15, v15[3]);
    sub_100012B38();
    sub_100129C20();
    sub_100007930();
    sub_1000034F8(v15);
  }

  sub_10000724C();
}

uint64_t static ExpressionType<>.random()(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();

  return sub_10013E890(_swiftEmptyArrayStorage, 2);
}

uint64_t sub_10013ED48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10000C124(_swiftEmptyArrayStorage, v6);
  sub_10013E574(v6, a4);
  sub_100003CB8();
  sub_1000034F8(v6);
  return sub_100007D30();
}

uint64_t ExpressionType<>.like(_:escape:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return sub_10013F440(a1, a2, a3, a4, a5, a6, sub_10012E714);
}

{
  return sub_10013F440(a1, a2, a3, a4, a5, a6, sub_10012E728);
}

uint64_t ExpressionType<>.like(_:escape:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  return sub_10013F74C(a1, a2, a3, a4, a5, a6, a7, sub_10012E714);
}

{
  return sub_10013F74C(a1, a2, a3, a4, a5, a6, a7, sub_10012E728);
}

void ExpressionType<>.glob(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_100013630(a1, a2, a3, a4, a5, a6, sub_10012E714);
}

{
  sub_100013630(a1, a2, a3, a4, a5, a6, sub_10012E728);
}

void ExpressionType<>.regexp(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_100003D1C(a1, a2, a3, a4, a5, a6, sub_10012E714);
}

{
  sub_100003D1C(a1, a2, a3, a4, a5, a6, sub_10012E728);
}

void ExpressionType<>.collate(_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10013FCA4(a1, a2, a3, a4, sub_10012E6EC);
}

{
  sub_10013FCA4(a1, a2, a3, a4, sub_10012E700);
}

void sub_10013EEDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = v6;
  sub_10000518C();
  v15 = v14;
  __chkstk_darwin(v16);
  sub_100002958();
  v19 = (v18 - v17);
  if (v20)
  {
    sub_10002EB80(&qword_1001987A0, &qword_10014BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10014BC40;
    *(inited + 56) = a2;
    v22 = sub_10001AA8C(inited, *(a3 + 8));
    (*(v15 + 16))(v22, v10, a2);
    v30[0] = a1;

    sub_10002EB80(&qword_10019D400, &qword_100153AC0);
    sub_100011994();
    sub_100013EBC(v23, &qword_10019D400, &qword_100153AC0, v24);
    v25 = String.init<A>(_:)();
    *(inited + 96) = &type metadata for String;
    *(inited + 104) = &protocol witness table for String;
    *(inited + 72) = v25;
    *(inited + 80) = v26;
    sub_10000C124(inited, v30);
    swift_setDeallocating();
    sub_100018898();
    v27 = v31;
    v28 = v32;
    v29 = sub_1000034B4(v30, v31);
    a6(v29, a4, a5, v27, v28);
    sub_100007930();
    sub_1000034F8(v30);
  }

  else
  {
    (*(v15 + 16))(v19, v10, a2);
    a6(v19, a4, a5, a2, *(a3 + 8));
    sub_100007930();
    (*(v15 + 8))(v19, a2);
  }

  sub_10000724C();
}

uint64_t ExpressionType<>.trim(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    sub_10002EB80(&qword_1001987A0, &qword_10014BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10014BC40;
    *(inited + 56) = a2;
    sub_10001AA8C(inited, *(a3 + 8));
    sub_1000073F4();
    (*(v7 + 16))();
    v14[0] = a1;

    sub_10002EB80(&qword_10019D400, &qword_100153AC0);
    sub_100011994();
    sub_100013EBC(v8, &qword_10019D400, &qword_100153AC0, v9);
    v10 = String.init<A>(_:)();
    *(inited + 96) = &type metadata for String;
    *(inited + 104) = &protocol witness table for String;
    *(inited + 72) = v10;
    *(inited + 80) = v11;
  }

  else
  {
    sub_10002EB80(&qword_1001987A0, &qword_10014BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10014CE90;
    *(inited + 56) = a2;
    sub_10001AA8C(inited, *(a3 + 8));
    sub_1000073F4();
    (*(v12 + 16))();
  }

  sub_10000C124(inited, v14);
  swift_setDeallocating();
  sub_100018898();
  sub_1000034B4(v14, v14[3]);
  sub_100129C20();
  sub_100003CB8();
  sub_1000034F8(v14);
  return sub_100007D30();
}

uint64_t sub_10013F324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, void))
{
  sub_10000518C();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_100002958();
  v16 = v15 - v14;
  (*(v12 + 16))(v15 - v14, v5, a1);
  a5(v16, a3, a4, a1, *(a2 + 8));
  sub_100003CB8();
  (*(v12 + 8))(v16, a1);
  return sub_100007D30();
}

uint64_t sub_10013F440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void))
{
  if (a4)
  {

    _StringGuts.grow(_:)(20);

    v30[0] = 40;
    v30[1] = 0xE100000000000000;
    v13._countAndFlagsBits = (*(a6 + 24))(a5, a6);
    String.append(_:)(v13);

    v14._object = 0x8000000100159220;
    v14._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v14);
    v15 = 40;
    (*(a6 + 32))(a5, a6);
    sub_10002EB80(&unk_10019B450, &unk_10014ED30);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10014BC40;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = &protocol witness table for String;
    *(inited + 32) = a1;
    *(inited + 40) = a2;
    *(inited + 96) = &type metadata for String;
    *(inited + 104) = &protocol witness table for String;
    *(inited + 72) = a3;
    *(inited + 80) = a4;

    sub_100129C24(inited);
  }

  else
  {
    v18 = *(a6 + 8);
    v30[3] = a5;
    v30[4] = v18;
    sub_100013234(v30);
    sub_1000073F4();
    (*(v19 + 16))();
    v29[3] = &type metadata for String;
    v29[4] = &protocol witness table for String;
    v29[0] = a1;
    v29[1] = a2;
    sub_10002EB80(&qword_1001987A0, &qword_10014BE50);
    v20 = swift_initStackObject();
    *(v20 + 16) = xmmword_10014BC40;
    sub_100013334(v30, v20 + 32);
    sub_100013334(v29, v20 + 72);
    sub_100002758();
    v26[0] = v21;
    v26[1] = v22;

    sub_100012808();
    sub_10000EF48();
    sub_100013640(v20, v26);

    v23 = v27;
    v24 = v28;
    sub_1000034B4(v26, v27);
    (*(v24 + 8))(v23, v24);
    sub_1000034F8(v26);
    sub_100009AE4();
    v15 = a7();

    swift_setDeallocating();
    sub_100018898();
    sub_1000034F8(v29);
    sub_1000034F8(v30);
  }

  return v15;
}

uint64_t sub_10013F74C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(void))
{
  if (a5)
  {
    v13 = *(a7 + 8);
    v73 = a6;
    v74 = v13;
    sub_100013234(v72);
    sub_1000073F4();
    (*(v14 + 16))();
    v70 = sub_10002EB80(&unk_10019AAC0, &unk_10014BE40);
    v71 = &protocol witness table for Expression<A>;
    v67 = a1;
    v68 = a2;
    v69 = a3;
    sub_10002EB80(&qword_1001987A0, &qword_10014BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10014BC40;
    sub_100013334(v72, inited + 32);
    sub_100013334(&v67, inited + 72);

    sub_10001D650();
    sub_100013640(inited, v16);
    swift_setDeallocating();
    sub_100018898();
    sub_1000034B4(&v63, v65);
    v17 = sub_10000746C();
    v18(v17);
    sub_10000C990();
    v20 = v19;
    sub_1000034F8(&v63);
    sub_1000034F8(&v67);
    sub_1000034F8(v72);
    v72[0] = 40;
    v72[1] = 0xE100000000000000;
    v21._countAndFlagsBits = sub_10000373C();
    String.append(_:)(v21);

    sub_1000247C4();
    sub_10002EB80(&unk_10019B450, &unk_10014ED30);
    v22 = swift_initStackObject();
    *(v22 + 16) = xmmword_10014CE90;
    *(v22 + 56) = &type metadata for String;
    *(v22 + 64) = &protocol witness table for String;
    *(v22 + 32) = a4;
    *(v22 + 40) = a5;
    v72[0] = v20;
    sub_100129C24(v22);
  }

  else
  {
    v24 = *(a7 + 8);
    v73 = a6;
    v74 = v24;
    sub_100013234(v72);
    sub_1000073F4();
    (*(v25 + 16))();
    v70 = sub_10002EB80(&unk_10019AAC0, &unk_10014BE40);
    v71 = &protocol witness table for Expression<A>;
    v67 = a1;
    v68 = a2;
    v69 = a3;
    sub_10002EB80(&qword_1001987A0, &qword_10014BE50);
    v26 = swift_initStackObject();
    *(v26 + 16) = xmmword_10014BC40;
    sub_100013334(v72, v26 + 32);
    sub_100013334(&v67, v26 + 72);
    sub_100002758();
    v63 = v27;
    v64 = v28;

    sub_100012808();
    sub_10000EF48();
    sub_10001062C(v29, v30, v31, v32, v33, v34, v35, v36, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64);

    v37 = v65;
    v38 = v66;
    sub_1000034B4(&v63, v65);
    (*(v38 + 8))(v37, v38);
    sub_1000115B0();
    sub_1000034F8(&v63);
    sub_100140D20();
    sub_100009AE4();
    a8();
    sub_10000C990();

    swift_setDeallocating();
    sub_100018898();
    sub_1000034F8(&v67);
    sub_1000034F8(v72);
  }

  return sub_10000373C();
}

void sub_10013FAEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t (*a7)(void))
{
  v12 = *(a4 + 8);
  v34[3] = a3;
  v34[4] = v12;
  sub_100013234(v34);
  sub_1000073F4();
  (*(v13 + 16))();
  v33[3] = &type metadata for String;
  v33[4] = &protocol witness table for String;
  v33[0] = a1;
  v33[1] = a2;
  sub_10002EB80(&qword_1001987A0, &qword_10014BE50);
  inited = swift_initStackObject();
  v15 = sub_1000133F4(inited, xmmword_10014BC40);
  sub_100013334(v15, &inited[2]);
  sub_100013334(v33, &inited[4].n128_i64[1]);
  sub_100002758();
  v30 = v16;
  v31 = v17;

  v18._countAndFlagsBits = a5;
  v18._object = a6;
  String.append(_:)(v18);
  sub_10000EF48();
  sub_100140D2C(v19, v20, v21, v22, v23, v24, v25, v26, v29, v30, v31);

  sub_1000034B4(&v30, v32);
  v27 = sub_10000746C();
  v28(v27);
  sub_1000034F8(&v30);
  sub_100009AE4();
  a7();
  sub_1000115B0();

  swift_setDeallocating();
  sub_100018898();
  sub_100004C24();
  sub_100140D20();
}

void sub_10013FCA4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v8 = *(a4 + 8);
  v30[3] = a3;
  v30[4] = v8;
  sub_100013234(v30);
  sub_1000073F4();
  (*(v9 + 16))();
  v29[3] = &type metadata for Collation;
  v29[4] = &protocol witness table for Collation;
  v29[0] = a1;
  v29[1] = a2;
  sub_10002EB80(&qword_1001987A0, &qword_10014BE50);
  inited = swift_initStackObject();
  v11 = sub_1000133F4(inited, xmmword_10014BC40);
  sub_100013334(v11, &inited[2]);
  sub_100013334(v29, &inited[4].n128_i64[1]);
  sub_100002758();
  v26 = v12;
  v27 = v13;
  sub_100127814(a1, a2);
  v14._countAndFlagsBits = 0x4554414C4C4F43;
  v14._object = 0xE700000000000000;
  String.append(_:)(v14);
  sub_10000EF48();
  sub_100140D2C(v15, v16, v17, v18, v19, v20, v21, v22, v25, v26, v27);

  sub_1000034B4(&v26, v28);
  v23 = sub_10000746C();
  v24(v23);
  sub_1000034F8(&v26);
  sub_100009AE4();
  a5();
  sub_1000115B0();

  swift_setDeallocating();
  sub_100018898();
  sub_100004C24();
  sub_100140D20();
}

uint64_t sub_10013FE70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void *, uint64_t, unint64_t, uint64_t, uint64_t))
{
  sub_10001123C();
  sub_10002EB80(&qword_1001987A0, &qword_10014BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10014E1F0;
  *(inited + 56) = a5;
  sub_10001AA8C(inited, *(a6 + 8));
  sub_1000073F4();
  (*(v15 + 16))();
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = &protocol witness table for String;
  *(inited + 72) = v9;
  *(inited + 80) = v8;
  *(inited + 136) = &type metadata for String;
  *(inited + 144) = &protocol witness table for String;
  *(inited + 112) = v7;
  *(inited + 120) = a4;

  sub_10000C124(inited, v20);
  swift_setDeallocating();
  sub_100018898();
  v16 = v21;
  v17 = v22;
  v18 = sub_1000034B4(v20, v21);
  a7(v18, 0x6563616C706572, 0xE700000000000000, v16, v17);
  sub_100003CB8();
  sub_1000034F8(v20);
  return sub_100007D30();
}

void sub_10013FFC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  sub_1001286C4();
  a57 = v59;
  a58 = v60;
  v62 = v61;
  v63 = v58;
  v65 = v64;
  v67 = v66;
  v69 = v68;
  v71 = v70;
  v73 = v72;
  sub_10002EB80(&qword_1001987A0, &qword_10014BE50);
  if (v69)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10014BC40;
    *(inited + 56) = v67;
    v75 = sub_10001AA8C(inited, *(v65 + 8));
    (*(*(v67 - 8) + 16))(v75, v63, v67);
    *(inited + 96) = &type metadata for Int;
    *(inited + 104) = &protocol witness table for Int;
    *(inited + 72) = v73;
    sub_10000C124(inited, &a28);
  }

  else
  {
    v76 = swift_initStackObject();
    *(v76 + 16) = xmmword_10014E1F0;
    *(v76 + 56) = v67;
    v77 = sub_10001AA8C(v76, *(v65 + 8));
    (*(*(v67 - 8) + 16))(v77, v63, v67);
    *(v76 + 96) = &type metadata for Int;
    *(v76 + 104) = &protocol witness table for Int;
    *(v76 + 72) = v73;
    *(v76 + 136) = &type metadata for Int;
    *(v76 + 144) = &protocol witness table for Int;
    *(v76 + 112) = v71;
    sub_10000C124(v76, &a28);
  }

  swift_setDeallocating();
  sub_100018898();
  v78 = a31;
  v79 = a32;
  v80 = sub_1000034B4(&a28, a31);
  v62(v80, 0x727473627573, 0xE600000000000000, v78, v79);
  sub_100003CB8();
  sub_1000034F8(&a28);
  sub_100007D30();
  sub_10001DD48();
}

uint64_t sub_100140178(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, void, uint64_t, uint64_t))
{
  v5 = __OFSUB__(a2, result);
  v6 = a2 - result;
  if (!v5)
  {
    return a5(result, v6, 0, a3, a4);
  }

  __break(1u);
  return result;
}

uint64_t sub_100140648@<X0>(uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v6 = *(a3 + 56);
  swift_getAssociatedTypeWitness();
  a4[3] = swift_getAssociatedTypeWitness();
  a4[4] = swift_getAssociatedConformanceWitness();
  sub_100013234(a4);
  v7 = swift_checkMetadataState();
  return v6(v7, a3);
}

uint64_t String.like(_:escape:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  if (a5)
  {
    v74 = &type metadata for String;
    v75 = &protocol witness table for String;
    v72 = a6;
    v73 = a7;
    v70 = sub_10002EB80(&unk_10019AAC0, &unk_10014BE40);
    v71 = &protocol witness table for Expression<A>;
    v67 = a1;
    v68 = a2;
    v69 = a3;
    sub_10002EB80(&qword_1001987A0, &qword_10014BE50);
    inited = swift_initStackObject();
    v13 = sub_1000133F4(inited, xmmword_10014BC40);
    sub_100013334(v13, &inited[2]);
    sub_100013334(&v67, &inited[4].n128_i64[1]);

    sub_10001D650();
    sub_100013640(inited, v14);
    swift_setDeallocating();
    sub_100018898();
    sub_1000034B4(&v64, v66);
    v15 = sub_10000746C();
    v16(v15);
    sub_10000C990();
    v18 = v17;
    sub_1000034F8(&v64);
    sub_100004C24();
    v72 = 40;
    v73 = 0xE100000000000000;
    v19._countAndFlagsBits = sub_10000373C();
    String.append(_:)(v19);

    sub_1000247C4();
    sub_10002EB80(&unk_10019B450, &unk_10014ED30);
    v20 = swift_initStackObject();
    *(v20 + 16) = xmmword_10014CE90;
    *(v20 + 56) = &type metadata for String;
    *(v20 + 64) = &protocol witness table for String;
    *(v20 + 32) = a4;
    *(v20 + 40) = a5;
    v72 = v18;
    sub_100129C24(v20);
  }

  else
  {
    v74 = &type metadata for String;
    v75 = &protocol witness table for String;
    v72 = a6;
    v73 = a7;
    v70 = sub_10002EB80(&unk_10019AAC0, &unk_10014BE40);
    v71 = &protocol witness table for Expression<A>;
    v67 = a1;
    v68 = a2;
    v69 = a3;
    sub_10002EB80(&qword_1001987A0, &qword_10014BE50);
    v21 = swift_initStackObject();
    v22 = sub_1000133F4(v21, xmmword_10014BC40);
    sub_100013334(v22, &v21[2]);
    sub_100013334(&v67, &v21[4].n128_i64[1]);
    sub_100002758();
    v64 = v23;
    v65 = v24;

    sub_100012808();
    sub_10000EF48();
    sub_10001062C(v25, v26, v27, v28, v29, v30, v31, v32, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65);

    sub_1000034B4(&v64, v66);
    v33 = sub_1000053DC();
    v34(v33);
    sub_1000115B0();
    sub_1000034F8(&v64);
    sub_100140D20();
    sub_100009AE4();
    sub_10012E714(v35, v36, v37, v38, v39);
    sub_10000C990();

    swift_setDeallocating();
    sub_100018898();
    sub_100004C24();
  }

  return sub_10000373C();
}

uint64_t ?? infix<A>(_:_:)(unint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  sub_10002EB80(&qword_1001987A0, &qword_10014BE50);
  inited = swift_initStackObject();
  v12 = sub_100011B98(inited, xmmword_10014BC40);
  inited[3].n128_u64[1] = sub_1000048F8(v12, v13, v14, v15);
  inited[4].n128_u64[0] = &protocol witness table for Expression<A>;
  inited[2].n128_u64[0] = a1;
  inited[2].n128_u64[1] = a2;
  inited[3].n128_u64[0] = a3;
  inited[6].n128_u64[0] = a5;
  inited[6].n128_u64[1] = *(a6 + 8);
  sub_100013234(&inited[4].n128_i64[1]);
  sub_1000073F4();
  (*(v16 + 16))();

  sub_1000126D8();
  sub_100012154();
  sub_100018898();
  return sub_100013484();
}

uint64_t ?? infix<A>(_:_:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7)
{
  sub_10002EB80(&qword_1001987A0, &qword_10014BE50);
  inited = swift_initStackObject();
  v15 = sub_100011B98(inited, xmmword_10014BC40);
  inited[3].n128_u64[1] = sub_1000048F8(v15, v16, v17, v18);
  inited[4].n128_u64[0] = &protocol witness table for Expression<A>;
  inited[2].n128_u64[0] = a1;
  inited[2].n128_u64[1] = a2;
  inited[3].n128_u64[0] = a3;
  inited[6].n128_u64[0] = type metadata accessor for Expression(0, a7, v19, v20);
  inited[6].n128_u64[1] = &protocol witness table for Expression<A>;
  inited[4].n128_u64[1] = a4;
  inited[5].n128_u64[0] = a5;
  inited[5].n128_u64[1] = a6;

  sub_1000126D8();
  sub_100012154();
  sub_100018898();
  return sub_100013484();
}

uint64_t ?? infix<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  sub_10001123C();
  sub_10002EB80(&qword_1001987A0, &qword_10014BE50);
  inited = swift_initStackObject();
  v13 = sub_100011B98(inited, xmmword_10014BC40);
  v17 = sub_1000048F8(v13, v14, v15, v16);
  inited[2].n128_u64[0] = v8;
  inited[2].n128_u64[1] = v7;
  inited[3].n128_u64[0] = v6;
  inited[3].n128_u64[1] = v17;
  inited[6].n128_u64[0] = v17;
  inited[6].n128_u64[1] = &protocol witness table for Expression<A>;
  inited[4].n128_u64[0] = &protocol witness table for Expression<A>;
  inited[4].n128_u64[1] = a4;
  inited[5].n128_u64[0] = a5;
  inited[5].n128_u64[1] = a6;

  sub_1000126D8();
  sub_100012154();
  sub_100018898();
  return sub_100013484();
}

void sub_100140D2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{

  sub_100013640(v11, &a10);
}

const char *sub_100140D4C(unsigned int a1)
{
  if (qword_10019CA20 != -1)
  {
    swift_once();
  }

  v2 = sub_1000159C8(a1, qword_10019D410);
  if (v2)
  {

    return 0;
  }

  v5 = Connection.handle.getter(v2, v3);
  result = sqlite3_errmsg(v5);
  if (result)
  {
    v4 = String.init(cString:)();

    return v4;
  }

  __break(1u);
  return result;
}

uint64_t sub_100140E20()
{
  result = sub_100140FE8(&off_100190B18);
  qword_10019D410 = result;
  return result;
}

uint64_t Result.description.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {

    _StringGuts.grow(_:)(18);

    v14 = a1;
    v5._countAndFlagsBits = 10272;
    v5._object = 0xE200000000000000;
    String.append(_:)(v5);
    v6._countAndFlagsBits = Statement.description.getter();
    String.append(_:)(v6);

    v7._countAndFlagsBits = 0x3A65646F63282029;
    v7._object = 0xE900000000000020;
    String.append(_:)(v7);
    v8._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v8);

    v9._countAndFlagsBits = 41;
    v9._object = 0xE100000000000000;
    String.append(_:)(v9);
  }

  else
  {
    v14 = a1;

    v10._countAndFlagsBits = 0x203A65646F632820;
    v10._object = 0xE800000000000000;
    String.append(_:)(v10);
    v11._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v11);

    v12._countAndFlagsBits = 41;
    v12._object = 0xE100000000000000;
    String.append(_:)(v12);
  }

  return v14;
}

uint64_t sub_100140FE8(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = &_swiftEmptySetSingleton;
    goto LABEL_14;
  }

  sub_10002EB80(&qword_10019D418, &unk_100153B80);
  result = static _SetStorage.allocate(capacity:)();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_14:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  v7 = ~(-1 << *(result + 32));
  while (1)
  {
    v8 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    v9 = *(a1 + 32 + 4 * v5++);
    for (result = static Hasher._hash(seed:bytes:count:)(); ; result = v10 + 1)
    {
      v10 = result & v7;
      v11 = (result & v7) >> 6;
      v12 = *(v6 + 8 * v11);
      v13 = 1 << (result & v7);
      if ((v13 & v12) == 0)
      {
        break;
      }

      if (*(v3[6] + 4 * v10) == v9)
      {
        goto LABEL_11;
      }
    }

    *(v6 + 8 * v11) = v13 | v12;
    *(v3[6] + 4 * v10) = v9;
    v14 = v3[2];
    v15 = __OFADD__(v14, 1);
    v16 = v14 + 1;
    if (v15)
    {
      goto LABEL_16;
    }

    v3[2] = v16;
LABEL_11:
    if (v8 == v4)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t Collation.expression.getter(uint64_t a1, unint64_t a2)
{
  switch(a2)
  {
    case 0uLL:
      return 0x5952414E4942;
    case 1uLL:
      return 0x455341434F4ELL;
    case 2uLL:
      return 0x4D49525452;
  }

  return sub_1000198BC(34, 0xE100000000000000, a1, a2);
}

uint64_t Collation.description.getter(uint64_t a1, unint64_t a2)
{
  switch(a2)
  {
    case 0uLL:
      return 0x5952414E4942;
    case 1uLL:
      return 0x455341434F4ELL;
    case 2uLL:
      return 0x4D49525452;
  }

  return sub_1000198BC(34, 0xE100000000000000, a1, a2);
}

uint64_t sub_100141258(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100141270(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001412CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_10014132C(uint64_t a1, uint64_t a2)
{
  sub_10002EB80(&unk_10019B450, &unk_10014ED30);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10014CE90;
  if (a2)
  {
    v5 = &protocol witness table for String;
    v6 = &type metadata for String;
  }

  else
  {
    a1 = 0;
    v6 = 0;
    v5 = 0;
    *(v4 + 48) = 0;
  }

  *(v4 + 32) = a1;
  *(v4 + 40) = a2;
  *(v4 + 56) = v6;
  *(v4 + 64) = v5;
  return 63;
}

uint64_t sub_1001413B8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  sub_100141880(a1, a2, a3, a4, a5);
  if (v5 || (LOBYTE(a4) = v11, v11 != 2))
  {
  }

  else
  {
    sub_100133A50();
    swift_allocError();
    *v12 = a1;
    *(v12 + 8) = a2;
    *(v12 + 16) = 0;
    *(v12 + 24) = 3;
    swift_willThrow();
  }

  return a4 & 1;
}

uint64_t sub_10014161C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  sub_100141DE8(a1, a2, a3, a4, a5);
  if (v5)
  {
  }

  else if (v12)
  {
    a4 = v11;
  }

  else
  {
    sub_100133A50();
    swift_allocError();
    *v14 = a1;
    *(v14 + 8) = a2;
    *(v14 + 16) = 0;
    *(v14 + 24) = 3;
    swift_willThrow();
  }

  return a4;
}

uint64_t sub_1001416EC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = sub_10002EB80(&qword_10019BA18, &qword_100150EB8);
  __chkstk_darwin(v12 - 8);
  v14 = &v18 - v13;

  sub_1001420A4(a1, a2, a4, a5, v14);
  if (v6)
  {
  }

  v16 = type metadata accessor for Date();
  if (sub_1000032C4(v14, 1, v16) == 1)
  {
    sub_100003E9C(v14, &qword_10019BA18, &qword_100150EB8);
    sub_100133A50();
    swift_allocError();
    *v17 = a1;
    *(v17 + 8) = a2;
    *(v17 + 16) = 0;
    *(v17 + 24) = 3;
    return swift_willThrow();
  }

  else
  {

    return (*(*(v16 - 8) + 32))(a6, v14, v16);
  }
}

void sub_100141880(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_bridgeObjectRetain_n();
  v42 = a1;
  v9 = sub_100015D3C(a1, a2, a4);
  if ((v10 & 1) == 0)
  {
    v26 = v9;
    swift_bridgeObjectRelease_n();
    v27 = v26;
    v28 = a4;
    v29 = a5;
LABEL_19:
    sub_100142644(v27, v28, v29);
    return;
  }

  v39 = a5;

  v40 = a4;
  v12 = sub_100014224(v11);
  v13 = 0;
  v14 = v12[2];
  v15 = v12 + 5;
  v41 = _swiftEmptyArrayStorage;
LABEL_3:
  v16 = &v15[2 * v13];
  while (v14 != v13)
  {
    if (v13 >= v12[2])
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v17 = *(v16 - 1);
    v18 = *v16;

    v19._countAndFlagsBits = v42;
    v19._object = a2;
    String.append(_:)(v19);
    v20._countAndFlagsBits = 46;
    v20._object = 0xE100000000000000;
    v21 = String.hasSuffix(_:)(v20);

    if (v21)
    {
      v22 = v41;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100011438(0, v41[2] + 1, 1);
        v22 = v41;
      }

      v24 = v22[2];
      v23 = v22[3];
      if (v24 >= v23 >> 1)
      {
        sub_100011438(v23 > 1, v24 + 1, 1);
        v22 = v41;
      }

      ++v13;
      v22[2] = v24 + 1;
      v41 = v22;
      v25 = &v22[2 * v24];
      v25[4] = v17;
      v25[5] = v18;
      v15 = v12 + 5;
      goto LABEL_3;
    }

    v16 += 2;
    ++v13;
  }

  v30 = v41;
  v31 = v41[2];

  if (!v31)
  {

    v30 = sub_1001335F4(v40);
    v37 = 1;
LABEL_22:
    sub_100133A50();
    swift_allocError();
    *v38 = v42;
    *(v38 + 8) = a2;
    *(v38 + 16) = v30;
    *(v38 + 24) = v37;
    swift_willThrow();
    return;
  }

  if (v31 != 1)
  {
    v37 = 2;
    goto LABEL_22;
  }

  if (!v41[2])
  {
    goto LABEL_24;
  }

  v33 = v41[4];
  v32 = v41[5];

  v34 = sub_100015D3C(v33, v32, v40);
  v36 = v35;

  if ((v36 & 1) == 0)
  {

    v27 = v34;
    v28 = v40;
    v29 = v39;
    goto LABEL_19;
  }

LABEL_25:
  __break(1u);
}

void sub_100141B3C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, Swift::String a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  sub_100012A48();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  swift_bridgeObjectRetain_n();
  v70 = v38;
  v39 = sub_100015D3C(v38, v36, v34);
  if ((v40 & 1) == 0)
  {
    v57 = v39;
    swift_bridgeObjectRelease_n();
LABEL_19:
    sub_1001426D4(v57, v34, v32, v30);
LABEL_23:
    sub_100013494();
    return;
  }

  v66 = v32;
  v67 = v30;

  v68 = v34;
  v42 = sub_100014224(v41);
  v43 = 0;
  v44 = v42[2];
  v45 = v42 + 5;
  v69 = _swiftEmptyArrayStorage;
LABEL_3:
  v46 = &v45[2 * v43];
  while (v44 != v43)
  {
    if (v43 >= v42[2])
    {
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v48 = *(v46 - 1);
    v47 = *v46;

    v49._countAndFlagsBits = v70;
    v49._object = v36;
    String.append(_:)(v49);
    v50._countAndFlagsBits = 46;
    v50._object = 0xE100000000000000;
    v51 = String.hasSuffix(_:)(v50);

    if (v51)
    {
      v52 = v69;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100011438(0, v69[2] + 1, 1);
        v52 = v69;
      }

      v53 = v52;
      v55 = v52[2];
      v54 = v52[3];
      if (v55 >= v54 >> 1)
      {
        sub_100011438(v54 > 1, v55 + 1, 1);
        v53 = v69;
      }

      ++v43;
      v53[2] = v55 + 1;
      v69 = v53;
      v56 = &v53[2 * v55];
      v56[4] = v48;
      v56[5] = v47;
      v45 = v42 + 5;
      goto LABEL_3;
    }

    v46 += 2;
    ++v43;
  }

  v58 = v69;
  v59 = v69[2];

  if (!v59)
  {

    v58 = sub_1001335F4(v68);
    v64 = 1;
LABEL_22:
    sub_100133A50();
    swift_allocError();
    *v65 = v70;
    *(v65 + 8) = v36;
    *(v65 + 16) = v58;
    *(v65 + 24) = v64;
    swift_willThrow();
    goto LABEL_23;
  }

  v34 = v68;
  if (v59 != 1)
  {
    v64 = 2;
    goto LABEL_22;
  }

  if (!v69[2])
  {
    goto LABEL_25;
  }

  v61 = v69[4];
  v60 = v69[5];

  v57 = sub_100015D3C(v61, v60, v68);
  v63 = v62;

  v30 = v67;
  v32 = v66;
  if ((v63 & 1) == 0)
  {

    goto LABEL_19;
  }

LABEL_26:
  __break(1u);
}

void sub_100141DE8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_bridgeObjectRetain_n();
  v42 = a1;
  v9 = sub_100015D3C(a1, a2, a4);
  if ((v10 & 1) == 0)
  {
    v26 = v9;
    swift_bridgeObjectRelease_n();
    v27 = v26;
    v28 = a4;
    v29 = a5;
LABEL_19:
    sub_100142768(v27, v28, v29);
    return;
  }

  v39 = a5;

  v40 = a4;
  v12 = sub_100014224(v11);
  v13 = 0;
  v14 = v12[2];
  v15 = v12 + 5;
  v41 = _swiftEmptyArrayStorage;
LABEL_3:
  v16 = &v15[2 * v13];
  while (v14 != v13)
  {
    if (v13 >= v12[2])
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v17 = *(v16 - 1);
    v18 = *v16;

    v19._countAndFlagsBits = v42;
    v19._object = a2;
    String.append(_:)(v19);
    v20._countAndFlagsBits = 46;
    v20._object = 0xE100000000000000;
    v21 = String.hasSuffix(_:)(v20);

    if (v21)
    {
      v22 = v41;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100011438(0, v41[2] + 1, 1);
        v22 = v41;
      }

      v24 = v22[2];
      v23 = v22[3];
      if (v24 >= v23 >> 1)
      {
        sub_100011438(v23 > 1, v24 + 1, 1);
        v22 = v41;
      }

      ++v13;
      v22[2] = v24 + 1;
      v41 = v22;
      v25 = &v22[2 * v24];
      v25[4] = v17;
      v25[5] = v18;
      v15 = v12 + 5;
      goto LABEL_3;
    }

    v16 += 2;
    ++v13;
  }

  v30 = v41;
  v31 = v41[2];

  if (!v31)
  {

    v30 = sub_1001335F4(v40);
    v37 = 1;
LABEL_22:
    sub_100133A50();
    swift_allocError();
    *v38 = v42;
    *(v38 + 8) = a2;
    *(v38 + 16) = v30;
    *(v38 + 24) = v37;
    swift_willThrow();
    return;
  }

  if (v31 != 1)
  {
    v37 = 2;
    goto LABEL_22;
  }

  if (!v41[2])
  {
    goto LABEL_24;
  }

  v33 = v41[4];
  v32 = v41[5];

  v34 = sub_100015D3C(v33, v32, v40);
  v36 = v35;

  if ((v36 & 1) == 0)
  {

    v27 = v34;
    v28 = v40;
    v29 = v39;
    goto LABEL_19;
  }

LABEL_25:
  __break(1u);
}

void sub_1001420A4(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t x8_0@<X8>)
{
  swift_bridgeObjectRetain_n();
  v45 = a1;
  v11 = sub_100015D3C(a1, a2, a4);
  if ((v12 & 1) == 0)
  {
    v28 = v11;
    swift_bridgeObjectRelease_n();
    v29 = x8_0;
    v30 = v28;
    v31 = a5;
LABEL_19:
    sub_1001427F0(v30, v31, v29);
    return;
  }

  v41 = x8_0;
  v42 = a5;

  v43 = a4;
  v14 = sub_100014224(v13);
  v15 = 0;
  v16 = v14[2];
  v17 = v14 + 5;
  v44 = _swiftEmptyArrayStorage;
LABEL_3:
  v18 = &v17[2 * v15];
  while (v16 != v15)
  {
    if (v15 >= v14[2])
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v20 = *(v18 - 1);
    v19 = *v18;

    v21._countAndFlagsBits = v45;
    v21._object = a2;
    String.append(_:)(v21);
    v22._countAndFlagsBits = 46;
    v22._object = 0xE100000000000000;
    v23 = String.hasSuffix(_:)(v22);

    if (v23)
    {
      v24 = v44;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100011438(0, v44[2] + 1, 1);
        v24 = v44;
      }

      v26 = v24[2];
      v25 = v24[3];
      if (v26 >= v25 >> 1)
      {
        sub_100011438(v25 > 1, v26 + 1, 1);
        v24 = v44;
      }

      ++v15;
      v24[2] = v26 + 1;
      v44 = v24;
      v27 = &v24[2 * v26];
      v27[4] = v20;
      v27[5] = v19;
      v17 = v14 + 5;
      goto LABEL_3;
    }

    v18 += 2;
    ++v15;
  }

  v32 = v44;
  v33 = v44[2];

  if (!v33)
  {

    v32 = sub_1001335F4(v43);
    v39 = 1;
LABEL_22:
    sub_100133A50();
    swift_allocError();
    *v40 = v45;
    *(v40 + 8) = a2;
    *(v40 + 16) = v32;
    *(v40 + 24) = v39;
    swift_willThrow();
    return;
  }

  if (v33 != 1)
  {
    v39 = 2;
    goto LABEL_22;
  }

  if (!v44[2])
  {
    goto LABEL_24;
  }

  v35 = v44[4];
  v34 = v44[5];

  v36 = sub_100015D3C(v35, v34, v43);
  v38 = v37;

  if ((v38 & 1) == 0)
  {

    v29 = v41;
    v30 = v36;
    v31 = v42;
    goto LABEL_19;
  }

LABEL_25:
  __break(1u);
}

void sub_100142374(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t *x8_0@<X8>)
{
  swift_bridgeObjectRetain_n();
  v45 = a1;
  v11 = sub_100015D3C(a1, a2, a4);
  if ((v12 & 1) == 0)
  {
    v28 = v11;
    swift_bridgeObjectRelease_n();
    v29 = x8_0;
    v30 = v28;
    v31 = a5;
LABEL_19:
    sub_100142964(v30, v31, v29);
    return;
  }

  v41 = x8_0;
  v42 = a5;

  v43 = a4;
  v14 = sub_100014224(v13);
  v15 = 0;
  v16 = v14[2];
  v17 = v14 + 5;
  v44 = _swiftEmptyArrayStorage;
LABEL_3:
  v18 = &v17[2 * v15];
  while (v16 != v15)
  {
    if (v15 >= v14[2])
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v20 = *(v18 - 1);
    v19 = *v18;

    v21._countAndFlagsBits = v45;
    v21._object = a2;
    String.append(_:)(v21);
    v22._countAndFlagsBits = 46;
    v22._object = 0xE100000000000000;
    v23 = String.hasSuffix(_:)(v22);

    if (v23)
    {
      v24 = v44;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100011438(0, v44[2] + 1, 1);
        v24 = v44;
      }

      v26 = v24[2];
      v25 = v24[3];
      if (v26 >= v25 >> 1)
      {
        sub_100011438(v25 > 1, v26 + 1, 1);
        v24 = v44;
      }

      ++v15;
      v24[2] = v26 + 1;
      v44 = v24;
      v27 = &v24[2 * v26];
      v27[4] = v20;
      v27[5] = v19;
      v17 = v14 + 5;
      goto LABEL_3;
    }

    v18 += 2;
    ++v15;
  }

  v32 = v44;
  v33 = v44[2];

  if (!v33)
  {

    v32 = sub_1001335F4(v43);
    v39 = 1;
LABEL_22:
    sub_100133A50();
    swift_allocError();
    *v40 = v45;
    *(v40 + 8) = a2;
    *(v40 + 16) = v32;
    *(v40 + 24) = v39;
    swift_willThrow();
    return;
  }

  if (v33 != 1)
  {
    v39 = 2;
    goto LABEL_22;
  }

  if (!v44[2])
  {
    goto LABEL_24;
  }

  v35 = v44[4];
  v34 = v44[5];

  v36 = sub_100015D3C(v35, v34, v43);
  v38 = v37;

  if ((v38 & 1) == 0)
  {

    v29 = v41;
    v30 = v36;
    v31 = v42;
    goto LABEL_19;
  }

LABEL_25:
  __break(1u);
}

unint64_t sub_100142644(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 16) <= result)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v7 = v3;
  v8 = v4;
  sub_10001B618(a3 + 40 * result + 32, v6);
  sub_10002EB80(&qword_100199ED0, &qword_10014ED20);
  if (swift_dynamicCast())
  {
    return v5 != 0;
  }

  else
  {
    return 2;
  }
}

unint64_t sub_1001426D4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (*(a3 + 16) <= result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v10 = v4;
  v11 = v5;
  sub_10001B618(a3 + 40 * result + 32, v9);
  sub_10002EB80(&qword_100199ED0, &qword_10014ED20);
  v6 = swift_dynamicCast();
  v7 = v8;
  if (!v6)
  {
    return 0;
  }

  return v7;
}

unint64_t sub_100142768(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 16) <= result)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v7 = v3;
  v8 = v4;
  sub_10001B618(a3 + 40 * result + 32, v6);
  sub_10002EB80(&qword_100199ED0, &qword_10014ED20);
  if (swift_dynamicCast())
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

void sub_1001427F0(unint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v3 = a3;
  if (*(a2 + 16) <= a1)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_5;
  }

  sub_10001B618(a2 + 40 * a1 + 32, v9);
  sub_10002EB80(&qword_100199ED0, &qword_10014ED20);
  if (!swift_dynamicCast())
  {
    v7 = 1;
    goto LABEL_8;
  }

  if (qword_10019CA18 != -1)
  {
    goto LABEL_11;
  }

LABEL_5:
  swift_beginAccess();
  v4 = dateFormatter.super.super.isa;
  v5 = String._bridgeToObjectiveC()();
  v6 = [(objc_class *)v4 dateFromString:v5];

  if (v6)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v7 = 0;
LABEL_8:
    v8 = type metadata accessor for Date();
    sub_1000075C4(v3, v7, 1, v8);
    return;
  }

  __break(1u);
}

unint64_t sub_100142964@<X0>(unint64_t result@<X0>, uint64_t a2@<X2>, unint64_t *a3@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (*(a2 + 16) <= result)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  sub_10001B618(a2 + 40 * result + 32, v6);
  sub_10002EB80(&qword_100199ED0, &qword_10014ED20);
  if (swift_dynamicCast())
  {
    result = sub_1000F4E4C(v5);
  }

  else
  {
    result = 0;
    v4 = 0xF000000000000000;
  }

  *a3 = result;
  a3[1] = v4;
  return result;
}

void QueryType.insert(or:encodable:userInfo:otherSetters:)(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, AppIntents_SQLite::OnConflict or, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, Swift::OpaquePointer a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  sub_100012A48();
  a30 = v32;
  a31 = v33;
  ora = v34;
  v35 = type metadata accessor for SQLiteEncoder();
  v36 = sub_100006BE8(v35);
  sub_100007484(v36, _swiftEmptyArrayStorage);
  sub_100008354();
  sub_100147A78(v37, v38, &unk_100154080);
  sub_100007940();

  sub_1000053F4(v39, v40, v41, v42, v43);
  if (v31)
  {

    sub_1000034F8(&a15);
  }

  else
  {
    v44 = sub_1000034F8(&a15);
    sub_1000039CC(v44, v45, v46, v47, v48);
    a21._rawValue = *(v36 + 16);

    sub_100129CE0(v49);
    QueryType.insert(or:_:)(ora, a21);
    sub_1000050CC();
  }

  sub_1000069A4();
  sub_100013494();
}

AppIntents_SQLite::Insert __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> QueryType.insertMany(_:userInfo:otherSetters:)(Swift::OpaquePointer _, Swift::OpaquePointer userInfo, Swift::OpaquePointer otherSetters)
{
  v4 = *(_._rawValue + 2);
  if (v4)
  {
    v32 = _swiftEmptyArrayStorage;
    sub_100128C20(0, v4, 0);
    v7 = _swiftEmptyArrayStorage;
    v8 = _._rawValue + 32;
    while (1)
    {
      v29 = v4;
      v28 = v8;
      sub_100013334(v8, v31);
      v9 = type metadata accessor for SQLiteEncoder();
      v10 = swift_allocObject();
      v10[2]._rawValue = _swiftEmptyArrayStorage;
      rawValue = userInfo._rawValue;
      v10[3]._rawValue = _swiftEmptyArrayStorage;
      v10[4]._rawValue = userInfo._rawValue;
      v12 = sub_1000034B4(v31, v31[3]);
      v30[3] = v9;
      sub_100008354();
      v30[4] = sub_100147A78(&qword_10019D420, v13, &unk_100154080);
      v30[0] = v10;

      countAndFlagsBits = v12;
      dispatch thunk of Encodable.encode(to:)();
      if (v3)
      {

        sub_1000034F8(v30);
        sub_1000034F8(v31);

        goto LABEL_20;
      }

      sub_1000034F8(v30);
      isUniquelyReferenced_nonNull_native = swift_beginAccess();
      v18 = v10[2]._rawValue;
      v19 = *(otherSetters._rawValue + 2);
      v20 = *(v18 + 16);
      if (__OFADD__(v20, v19))
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || (v21 = *(v18 + 24) >> 1, v21 < v20 + v19))
      {
        sub_100127700();
        v18 = isUniquelyReferenced_nonNull_native;
        v21 = *(isUniquelyReferenced_nonNull_native + 24) >> 1;
      }

      if (v19)
      {
        if (v21 - *(v18 + 16) < v19)
        {
          goto LABEL_22;
        }

        swift_arrayInitWithCopy();

        v22 = *(v18 + 16);
        v23 = __OFADD__(v22, v19);
        v24 = v22 + v19;
        if (v23)
        {
          goto LABEL_23;
        }

        *(v18 + 16) = v24;
      }

      else
      {
      }

      sub_1000034F8(v31);
      v32 = v7;
      v26 = v7[2];
      v25 = v7[3];
      if (v26 >= v25 >> 1)
      {
        sub_100128C20((v25 > 1), v26 + 1, 1);
        v7 = v32;
      }

      v7[2] = v26 + 1;
      v7[v26 + 4] = v18;
      v8 = v28 + 40;
      v4 = v29 - 1;
      if (v29 == 1)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
LABEL_19:
    v33 = QueryType.insertMany(_:)(v7);
    countAndFlagsBits = v33.template._countAndFlagsBits;
    rawValue = v33.template._object;
    v10 = v33.bindings._rawValue;

LABEL_20:
    isUniquelyReferenced_nonNull_native = countAndFlagsBits;
    v16 = rawValue;
    v17 = v10;
  }

  result.bindings._rawValue = v17;
  result.template._object = v16;
  result.template._countAndFlagsBits = isUniquelyReferenced_nonNull_native;
  return result;
}

void QueryType.upsert(_:userInfo:otherSetters:onConflictOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_100012A48();
  a29 = v31;
  a30 = v32;
  v33 = sub_1000089C0();
  v34 = sub_100006BE8(v33);
  sub_100007484(v34, _swiftEmptyArrayStorage);
  sub_100008354();
  sub_100147A78(v35, v36, &unk_100154080);
  sub_100007940();

  sub_1000053F4(v37, v38, v39, v40, v41);
  if (v30)
  {

    sub_1000034F8(&a14);
  }

  else
  {
    v42 = sub_1000034F8(&a14);
    sub_1000039CC(v42, v43, v44, v45, v46);
    a20 = v34[2];

    sub_100129CE0(v47);
    QueryType.upsert(_:onConflictOf:)();
    sub_1000050CC();
  }

  sub_1000069A4();
  sub_100013494();
}

void sub_100142F60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_100012A48();
  a29 = v31;
  a30 = v32;
  v49 = v33;
  v34 = sub_1000089C0();
  v35 = sub_100006BE8(v34);
  sub_100007484(v35, _swiftEmptyArrayStorage);
  sub_100008354();
  sub_100147A78(v36, v37, &unk_100154080);
  sub_100007940();

  sub_1000053F4(v38, v39, v40, v41, v42);
  if (v30)
  {

    sub_1000034F8(&a14);
  }

  else
  {
    v43 = sub_1000034F8(&a14);
    sub_1000039CC(v43, v44, v45, v46, v47);
    a20 = v35[2];

    sub_100129CE0(v48);
    v49(a20, a10, a11);
    sub_1000050CC();
  }

  sub_1000069A4();
  sub_100013494();
}

uint64_t Row.decode<A>(userInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for SQLiteDecoder();
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = _swiftEmptyArrayStorage;
  v8[5] = a1;
  sub_100007DA0();
  sub_100147A78(v9, v10, &unk_100154038);

  return dispatch thunk of Decodable.init(from:)();
}

double Row.decoder(userInfo:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = type metadata accessor for SQLiteDecoder();
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = _swiftEmptyArrayStorage;
  v9[5] = a1;
  a4[3] = v8;
  sub_100007DA0();
  a4[4] = sub_100147A78(v10, v11, &unk_100154038);
  *a4 = v9;

  return result;
}

uint64_t sub_1001431F4(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = _swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_1001432E8()
{
  v1 = *(v0 + 16);
  v2 = dispatch thunk of CodingKey.stringValue.getter();
  v4 = sub_1000198BC(34, 0xE100000000000000, v2, v3);
  v6 = v5;

  v7 = sub_10002EB80(&qword_100199518, &unk_10014ED10);
  sub_10002EB80(&unk_10019B450, &unk_10014ED30);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10014CE90;
  *(v8 + 32) = 0u;
  *(v8 + 48) = 0u;
  *(v8 + 64) = 0;
  swift_beginAccess();
  sub_100127618();
  v9 = *(*(v1 + 16) + 16);
  sub_1001276C4(v9);
  v10 = *(v1 + 16);
  *(v10 + 16) = v9 + 1;
  v11 = (v10 + 80 * v9);
  v11[4] = v4;
  v11[5] = v6;
  v11[6] = _swiftEmptyArrayStorage;
  v11[7] = v7;
  v11[8] = &protocol witness table for Expression<A>;
  v11[9] = 63;
  v11[10] = 0xE100000000000000;
  v11[11] = v8;
  v11[12] = v7;
  v11[13] = &protocol witness table for Expression<A>;
  *(v1 + 16) = v10;
  return swift_endAccess();
}

uint64_t sub_1001434A0(char a1)
{
  v3 = *(v1 + 16);
  v4 = dispatch thunk of CodingKey.stringValue.getter();
  v6 = sub_1000198BC(34, 0xE100000000000000, v4, v5);
  v8 = v7;

  v9 = sub_10002EB80(&qword_10019CBD8, &qword_100152978);
  swift_beginAccess();
  sub_100127618();
  v10 = *(*(v3 + 16) + 16);
  sub_1001276C4(v10);
  v11 = *(v3 + 16);
  *(v11 + 16) = v10 + 1;
  v12 = v11 + 80 * v10;
  *(v12 + 32) = v6;
  *(v12 + 40) = v8;
  *(v12 + 48) = _swiftEmptyArrayStorage;
  *(v12 + 56) = v9;
  *(v12 + 64) = &protocol witness table for Expression<A>;
  *(v12 + 72) = a1;
  *(v12 + 96) = &type metadata for Bool;
  *(v12 + 104) = &protocol witness table for Bool;
  *(v3 + 16) = v11;
  return swift_endAccess();
}

uint64_t sub_1001435E8(float a1)
{
  v3 = *(v1 + 16);
  v4 = dispatch thunk of CodingKey.stringValue.getter();
  v6 = sub_1000198BC(34, 0xE100000000000000, v4, v5);
  v8 = v7;

  v9 = sub_10002EB80(&qword_10019D700, &unk_1001540F0);
  swift_beginAccess();
  sub_100127618();
  v10 = *(*(v3 + 16) + 16);
  sub_1001276C4(v10);
  v11 = *(v3 + 16);
  *(v11 + 16) = v10 + 1;
  v12 = v11 + 80 * v10;
  *(v12 + 32) = v6;
  *(v12 + 40) = v8;
  *(v12 + 48) = _swiftEmptyArrayStorage;
  *(v12 + 56) = v9;
  *(v12 + 64) = &protocol witness table for Expression<A>;
  *(v12 + 72) = a1;
  *(v12 + 96) = &type metadata for Double;
  *(v12 + 104) = &protocol witness table for Double;
  *(v3 + 16) = v11;
  return swift_endAccess();
}

uint64_t sub_10014373C(double a1)
{
  v3 = *(v1 + 16);
  v4 = dispatch thunk of CodingKey.stringValue.getter();
  v6 = sub_1000198BC(34, 0xE100000000000000, v4, v5);
  v8 = v7;

  v9 = sub_10002EB80(&qword_10019D700, &unk_1001540F0);
  swift_beginAccess();
  sub_100127618();
  v10 = *(*(v3 + 16) + 16);
  sub_1001276C4(v10);
  v11 = *(v3 + 16);
  *(v11 + 16) = v10 + 1;
  v12 = v11 + 80 * v10;
  *(v12 + 32) = v6;
  *(v12 + 40) = v8;
  *(v12 + 48) = _swiftEmptyArrayStorage;
  *(v12 + 56) = v9;
  *(v12 + 64) = &protocol witness table for Expression<A>;
  *(v12 + 72) = a1;
  *(v12 + 96) = &type metadata for Double;
  *(v12 + 104) = &protocol witness table for Double;
  *(v3 + 16) = v11;
  return swift_endAccess();
}

uint64_t sub_10014388C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = dispatch thunk of CodingKey.stringValue.getter();
  v8 = sub_1000198BC(34, 0xE100000000000000, v6, v7);
  v10 = v9;

  v11 = sub_10002EB80(&unk_10019AAC0, &unk_10014BE40);
  swift_beginAccess();

  sub_100127618();
  v12 = *(*(v5 + 16) + 16);
  sub_1001276C4(v12);
  v13 = *(v5 + 16);
  *(v13 + 16) = v12 + 1;
  v14 = (v13 + 80 * v12);
  v14[4] = v8;
  v14[5] = v10;
  v14[6] = _swiftEmptyArrayStorage;
  v14[7] = v11;
  v14[8] = &protocol witness table for Expression<A>;
  v14[9] = a1;
  v14[10] = a2;
  v14[12] = &type metadata for String;
  v14[13] = &protocol witness table for String;
  *(v5 + 16) = v13;
  return swift_endAccess();
}

uint64_t sub_1001439E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v104 = a2;
  v97 = a4;
  v108 = a1;
  v103 = *v4;
  v6 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v6 - 8);
  v95[1] = v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002EB80(&qword_100199C90, &qword_10014D060);
  __chkstk_darwin(v8 - 8);
  v99 = v95 - v9;
  v102 = type metadata accessor for UUID();
  v98 = *(v102 - 8);
  __chkstk_darwin(v102);
  v96 = v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10002EB80(&qword_10019BA18, &qword_100150EB8);
  __chkstk_darwin(v11 - 8);
  v13 = v95 - v12;
  v14 = type metadata accessor for Date();
  v101 = *(v14 - 8);
  __chkstk_darwin(v14);
  v100 = v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a3 - 8);
  __chkstk_darwin(v17);
  v19 = v95 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = v95 - v21;
  v24 = __chkstk_darwin(v23);
  v25 = *(v16 + 16);
  v25(v95 - v26, v108, a3, v24);
  if (swift_dynamicCast())
  {
    v27 = v106;
    v28 = v107;
    v29 = v4[2];
    v30 = dispatch thunk of CodingKey.stringValue.getter();
    v32 = sub_1000198BC(34, 0xE100000000000000, v30, v31);
    v34 = v33;

    v35 = sub_10002EB80(&unk_10019AAD0, &unk_100150890);
    swift_beginAccess();
    sub_100127618();
    v36 = *(*(v29 + 16) + 16);
    sub_1001276C4(v36);
    v37 = *(v29 + 16);
    *(v37 + 16) = v36 + 1;
    v38 = (v37 + 80 * v36);
    v38[4] = v32;
    v38[5] = v34;
    v38[6] = _swiftEmptyArrayStorage;
    v38[7] = v35;
    v38[8] = &protocol witness table for Expression<A>;
    v38[9] = v27;
    v38[10] = v28;
    v38[12] = &type metadata for Data;
    v38[13] = &protocol witness table for Data;
    *(v29 + 16) = v37;
    return swift_endAccess();
  }

  else
  {
    v40 = v4;
    (v25)(v22, v108, a3);
    if (swift_dynamicCast())
    {
      sub_1000075C4(v13, 0, 1, v14);
      v42 = v100;
      v41 = v101;
      (*(v101 + 32))(v100, v13, v14);
      v43 = v4[2];
      v108 = v14;
      v44 = dispatch thunk of CodingKey.stringValue.getter();
      v46 = sub_1000198BC(34, 0xE100000000000000, v44, v45);
      v104 = v47;

      if (qword_10019CA18 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v48 = dateFormatter.super.super.isa;
      isa = Date._bridgeToObjectiveC()().super.isa;
      v50 = [(objc_class *)v48 stringFromDate:isa];

      v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v53 = v52;

      v54 = sub_10002EB80(&unk_10019AAC0, &unk_10014BE40);
      swift_beginAccess();
      sub_100127618();
      v55 = *(*(v43 + 16) + 16);
      sub_1001276C4(v55);
      v56 = *(v43 + 16);
      *(v56 + 16) = v55 + 1;
      v57 = (v56 + 80 * v55);
      v58 = v104;
      v57[4] = v46;
      v57[5] = v58;
      v57[6] = _swiftEmptyArrayStorage;
      v57[7] = v54;
      v57[8] = &protocol witness table for Expression<A>;
      v57[9] = v51;
      v57[10] = v53;
      v57[12] = &type metadata for String;
      v57[13] = &protocol witness table for String;
      *(v43 + 16) = v56;
      swift_endAccess();
      return (*(v41 + 8))(v42, v108);
    }

    else
    {
      sub_1000075C4(v13, 1, 1, v14);
      sub_100003E9C(v13, &qword_10019BA18, &qword_100150EB8);
      (v25)(v19, v108, a3);
      v59 = v99;
      v60 = v102;
      if (swift_dynamicCast())
      {
        sub_1000075C4(v59, 0, 1, v60);
        v61 = v98;
        v62 = v96;
        (*(v98 + 32))(v96, v59, v60);
        v63 = v40[2];
        v64 = dispatch thunk of CodingKey.stringValue.getter();
        v108 = sub_1000198BC(34, 0xE100000000000000, v64, v65);
        v67 = v66;

        v68 = UUID.uuidString.getter();
        v70 = v69;
        v71 = sub_10002EB80(&unk_10019AAC0, &unk_10014BE40);
        swift_beginAccess();
        sub_100127618();
        v72 = *(*(v63 + 16) + 16);
        sub_1001276C4(v72);
        v73 = *(v63 + 16);
        *(v73 + 16) = v72 + 1;
        v74 = (v73 + 80 * v72);
        v74[4] = v108;
        v74[5] = v67;
        v74[6] = _swiftEmptyArrayStorage;
        v74[7] = v71;
        v74[8] = &protocol witness table for Expression<A>;
        v74[9] = v68;
        v74[10] = v70;
        v74[12] = &type metadata for String;
        v74[13] = &protocol witness table for String;
        *(v63 + 16) = v73;
        swift_endAccess();
        return (*(v61 + 8))(v62, v102);
      }

      else
      {
        sub_1000075C4(v59, 1, 1, v60);
        sub_100003E9C(v59, &qword_100199C90, &qword_10014D060);
        type metadata accessor for JSONEncoder();
        swift_allocObject();
        JSONEncoder.init()();
        v75 = v105;
        v76 = dispatch thunk of JSONEncoder.encode<A>(_:)();
        v78 = v77;

        if (!v75)
        {
          static String.Encoding.utf8.getter();
          v79 = String.init(data:encoding:)();
          v81 = v80;
          v82 = v40[2];
          v83 = dispatch thunk of CodingKey.stringValue.getter();
          v108 = sub_1000198BC(34, 0xE100000000000000, v83, v84);
          v105 = v85;

          v86 = sub_10002EB80(&qword_100199518, &unk_10014ED10);
          v104 = sub_10014132C(v79, v81);
          v88 = v87;
          v90 = v89;
          swift_beginAccess();
          sub_100127618();
          v91 = *(*(v82 + 16) + 16);
          sub_1001276C4(v91);
          v92 = *(v82 + 16);
          *(v92 + 16) = v91 + 1;
          v93 = (v92 + 80 * v91);
          v93[4] = v108;
          v93[5] = v105;
          v93[6] = _swiftEmptyArrayStorage;
          v93[7] = v86;
          v94 = v104;
          v93[8] = &protocol witness table for Expression<A>;
          v93[9] = v94;
          v93[10] = v88;
          v93[11] = v90;
          v93[12] = v86;
          v93[13] = &protocol witness table for Expression<A>;
          *(v82 + 16) = v92;
          swift_endAccess();
          return sub_100009B18(v76, v78);
        }
      }
    }
  }

  return result;
}

uint64_t sub_100144354(char a1)
{
  v2 = type metadata accessor for EncodingError();
  swift_allocError();
  v4 = v3;
  sub_10002EB80(&qword_10019D6F0, &qword_1001540D8);
  *(v4 + 24) = &type metadata for Int8;
  *v4 = a1;

  EncodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v2 - 8) + 104))(v4, enum case for EncodingError.invalidValue(_:), v2);
  return swift_willThrow();
}

uint64_t sub_100144440(__int16 a1)
{
  v2 = type metadata accessor for EncodingError();
  swift_allocError();
  v4 = v3;
  sub_10002EB80(&qword_10019D6F0, &qword_1001540D8);
  *(v4 + 24) = &type metadata for Int16;
  *v4 = a1;

  EncodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v2 - 8) + 104))(v4, enum case for EncodingError.invalidValue(_:), v2);
  return swift_willThrow();
}

uint64_t sub_10014452C(int a1)
{
  v2 = type metadata accessor for EncodingError();
  swift_allocError();
  v4 = v3;
  sub_10002EB80(&qword_10019D6F0, &qword_1001540D8);
  *(v4 + 24) = &type metadata for Int32;
  *v4 = a1;

  EncodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v2 - 8) + 104))(v4, enum case for EncodingError.invalidValue(_:), v2);
  return swift_willThrow();
}

uint64_t sub_100144650(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v12 = *(v6 + 16);
  v13 = dispatch thunk of CodingKey.stringValue.getter();
  v15 = sub_10001124C(v13, v14);
  v17 = v16;

  v18 = sub_10002EB80(a3, a4);
  swift_beginAccess();
  sub_100127618();
  v19 = *(*(v12 + 16) + 16);
  sub_1001276C4(v19);
  v20 = *(v12 + 16);
  *(v20 + 16) = v19 + 1;
  v21 = (v20 + 80 * v19);
  v21[4] = v15;
  v21[5] = v17;
  v21[6] = _swiftEmptyArrayStorage;
  v21[7] = v18;
  v21[8] = &protocol witness table for Expression<A>;
  v21[9] = a1;
  v21[12] = a5;
  v21[13] = a6;
  *(v12 + 16) = v20;
  return swift_endAccess();
}

uint64_t sub_100144778(uint64_t a1)
{
  v2 = type metadata accessor for EncodingError();
  swift_allocError();
  v4 = v3;
  sub_10002EB80(&qword_10019D6F0, &qword_1001540D8);
  v4[3] = &type metadata for UInt;
  *v4 = a1;

  EncodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v2 - 8) + 104))(v4, enum case for EncodingError.invalidValue(_:), v2);
  return swift_willThrow();
}

uint64_t sub_100144864(char a1)
{
  v2 = type metadata accessor for EncodingError();
  swift_allocError();
  v4 = v3;
  sub_10002EB80(&qword_10019D6F0, &qword_1001540D8);
  *(v4 + 24) = &type metadata for UInt8;
  *v4 = a1;

  EncodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v2 - 8) + 104))(v4, enum case for EncodingError.invalidValue(_:), v2);
  return swift_willThrow();
}

uint64_t sub_100144950(__int16 a1)
{
  v2 = type metadata accessor for EncodingError();
  swift_allocError();
  v4 = v3;
  sub_10002EB80(&qword_10019D6F0, &qword_1001540D8);
  *(v4 + 24) = &type metadata for UInt16;
  *v4 = a1;

  EncodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v2 - 8) + 104))(v4, enum case for EncodingError.invalidValue(_:), v2);
  return swift_willThrow();
}

uint64_t sub_100144A3C(int a1)
{
  v2 = type metadata accessor for EncodingError();
  swift_allocError();
  v4 = v3;
  sub_10002EB80(&qword_10019D6F0, &qword_1001540D8);
  *(v4 + 24) = &type metadata for UInt32;
  *v4 = a1;

  EncodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v2 - 8) + 104))(v4, enum case for EncodingError.invalidValue(_:), v2);
  return swift_willThrow();
}

uint64_t sub_100144B28(uint64_t a1)
{
  v2 = type metadata accessor for EncodingError();
  swift_allocError();
  v4 = v3;
  sub_10002EB80(&qword_10019D6F0, &qword_1001540D8);
  v4[3] = &type metadata for UInt64;
  *v4 = a1;

  EncodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v2 - 8) + 104))(v4, enum case for EncodingError.invalidValue(_:), v2);
  return swift_willThrow();
}

uint64_t sub_100144CCC()
{

  return v0;
}

uint64_t sub_100144CF4()
{
  v0 = sub_100144CCC();

  return _swift_deallocClassInstance(v0);
}

uint64_t sub_100144F98()
{
  sub_100009B04();
  v4 = v3;
  v6 = v5;
  v8 = type metadata accessor for SQLiteEncoder.SQLiteKeyedEncodingContainer(0, *(v7 + 80), *(v7 + 88), v7);
  return v0(v6, v4, v2, v8, v1);
}

uint64_t sub_100145308()
{
  sub_100003D30();
  sub_10001AC10(v1, v2, v3, v4);
  sub_1000119AC();
  return v0();
}

uint64_t sub_10014537C()
{
  sub_100003D30();
  sub_10001AC10(v1, v2, v3, v4);
  sub_1000119AC();
  return v0();
}

uint64_t sub_1001453F0()
{
  sub_100003D30();
  sub_10001AC10(v1, v2, v3, v4);
  sub_1000119AC();
  return v0();
}

uint64_t sub_10014546C()
{
  sub_100009B04();
  v4 = v3;
  v6 = v5;
  v8 = type metadata accessor for SQLiteEncoder.SQLiteKeyedEncodingContainer(0, *(v7 + 80), *(v7 + 88), v7);
  return v0(v6, v4 & 1, v2, v8, v1);
}

uint64_t sub_100145744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SQLiteEncoder.SQLiteKeyedEncodingContainer(0, a2, a3, a4);

  sub_1001431F4(v4);
  swift_getWitnessTable();
  return KeyedEncodingContainer.init<A>(_:)();
}

uint64_t sub_1001457CC()
{

  return v0;
}

uint64_t sub_1001457FC()
{
  v0 = sub_1001457CC();

  return _swift_deallocClassInstance(v0);
}

void *sub_100145898(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  result[2] = _swiftEmptyArrayStorage;
  result[3] = a1;
  result[4] = a2;
  return result;
}

uint64_t sub_1001458E4()
{

  sub_10002EB80(&qword_10019D6E0, &qword_1001540D0);
  sub_100147B7C();
  v0 = Sequence.compactMap<A>(_:)();

  return v0;
}

uint64_t sub_100145A14()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = dispatch thunk of CodingKey.stringValue.getter();
  LOBYTE(v1) = sub_100133528(v3, v4, v1, v2);

  return v1 & 1;
}

uint64_t sub_100145AC4()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = dispatch thunk of CodingKey.stringValue.getter();
  v5 = sub_1000198BC(34, 0xE100000000000000, v3, v4);
  v7 = v6;

  v8 = sub_1001413B8(v5, v7, _swiftEmptyArrayStorage, v1, v2);

  return v8 & 1;
}

uint64_t sub_100145B90()
{
  v0 = type metadata accessor for DecodingError();
  swift_allocError();
  v2 = v1;
  sub_10002EB80(&qword_10019D6D8, &qword_1001540C8);
  *v2 = &type metadata for Int8;

  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v0 - 8) + 104))(v2, enum case for DecodingError.typeMismatch(_:), v0);
  return swift_willThrow();
}

uint64_t sub_100145C74()
{
  v0 = type metadata accessor for DecodingError();
  swift_allocError();
  v2 = v1;
  sub_10002EB80(&qword_10019D6D8, &qword_1001540C8);
  *v2 = &type metadata for Int16;

  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v0 - 8) + 104))(v2, enum case for DecodingError.typeMismatch(_:), v0);
  return swift_willThrow();
}

uint64_t sub_100145D58()
{
  v0 = type metadata accessor for DecodingError();
  swift_allocError();
  v2 = v1;
  sub_10002EB80(&qword_10019D6D8, &qword_1001540C8);
  *v2 = &type metadata for Int32;

  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v0 - 8) + 104))(v2, enum case for DecodingError.typeMismatch(_:), v0);
  return swift_willThrow();
}

uint64_t sub_100145E3C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = dispatch thunk of CodingKey.stringValue.getter();
  v5 = sub_10001124C(v3, v4);
  v7 = v6;

  v8 = sub_100141488(v5, v7, _swiftEmptyArrayStorage, v1, v2);

  return v8;
}

uint64_t sub_100145EF4()
{
  v0 = type metadata accessor for DecodingError();
  swift_allocError();
  v2 = v1;
  sub_10002EB80(&qword_10019D6D8, &qword_1001540C8);
  *v2 = &type metadata for UInt;

  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v0 - 8) + 104))(v2, enum case for DecodingError.typeMismatch(_:), v0);
  return swift_willThrow();
}

uint64_t sub_100145FD8()
{
  v0 = type metadata accessor for DecodingError();
  swift_allocError();
  v2 = v1;
  sub_10002EB80(&qword_10019D6D8, &qword_1001540C8);
  *v2 = &type metadata for UInt8;

  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v0 - 8) + 104))(v2, enum case for DecodingError.typeMismatch(_:), v0);
  return swift_willThrow();
}

uint64_t sub_1001460BC()
{
  v0 = type metadata accessor for DecodingError();
  swift_allocError();
  v2 = v1;
  sub_10002EB80(&qword_10019D6D8, &qword_1001540C8);
  *v2 = &type metadata for UInt16;

  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v0 - 8) + 104))(v2, enum case for DecodingError.typeMismatch(_:), v0);
  return swift_willThrow();
}

uint64_t sub_1001461A0()
{
  v0 = type metadata accessor for DecodingError();
  swift_allocError();
  v2 = v1;
  sub_10002EB80(&qword_10019D6D8, &qword_1001540C8);
  *v2 = &type metadata for UInt32;

  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v0 - 8) + 104))(v2, enum case for DecodingError.typeMismatch(_:), v0);
  return swift_willThrow();
}

uint64_t sub_100146284()
{
  v0 = type metadata accessor for DecodingError();
  swift_allocError();
  v2 = v1;
  sub_10002EB80(&qword_10019D6D8, &qword_1001540C8);
  *v2 = &type metadata for UInt64;

  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v0 - 8) + 104))(v2, enum case for DecodingError.typeMismatch(_:), v0);
  return swift_willThrow();
}

uint64_t sub_100146368()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = dispatch thunk of CodingKey.stringValue.getter();
  v5 = sub_1000198BC(34, 0xE100000000000000, v3, v4);
  v7 = v6;

  sub_10014154C(v5, v7, _swiftEmptyArrayStorage, v1, v2);
}

double sub_10014644C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = dispatch thunk of CodingKey.stringValue.getter();
  v5 = sub_1000198BC(34, 0xE100000000000000, v3, v4);
  v7 = v6;

  v8 = sub_10014154C(v5, v7, _swiftEmptyArrayStorage, v1, v2);

  return v8;
}

uint64_t sub_100146520()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = dispatch thunk of CodingKey.stringValue.getter();
  v5 = sub_1000198BC(34, 0xE100000000000000, v3, v4);
  v7 = v6;

  v8 = sub_10014161C(v5, v7, _swiftEmptyArrayStorage, v1, v2);

  return v8;
}

uint64_t sub_1001465F4@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v47[3] = a3;
  v8 = type metadata accessor for String.Encoding();
  v49 = *(v8 - 8);
  v50 = v8;
  __chkstk_darwin(v8);
  v48 = v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Date();
  __chkstk_darwin(v10);
  v12 = v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = v47 - v15;
  if (a1 == &type metadata for Data)
  {
    v34 = *(v4 + 24);
    v35 = *(v4 + 32);
    v36 = dispatch thunk of CodingKey.stringValue.getter();
    v38 = sub_1000198BC(34, 0xE100000000000000, v36, v37);
    v40 = v39;

    v41 = v54;
    sub_100142374(v38, v40, v34, v35, &v52);
    if (v41)
    {
      return swift_bridgeObjectRelease_n();
    }

    v44 = v53;
    if (v53 >> 60 == 15)
    {
      sub_10000D4DC(v52, v53);
      sub_100133A50();
      swift_allocError();
      *v45 = v38;
      *(v45 + 8) = v40;
      *(v45 + 16) = 0;
      *(v45 + 24) = 3;
      return swift_willThrow();
    }

    v53 = v44;
    return swift_dynamicCast();
  }

  v47[0] = v14;
  v47[1] = a4;
  v47[2] = a2;
  v17 = *(v4 + 32);
  v51 = *(v4 + 24);
  v18 = dispatch thunk of CodingKey.stringValue.getter();
  v20 = sub_1000198BC(34, 0xE100000000000000, v18, v19);
  v22 = v21;

  if (v10 == a1)
  {
    v43 = v54;
    sub_1001416EC(v20, v22, v51, v17, v16);
    if (v43)
    {
    }

    (*(v47[0] + 32))(v12, v16, v10);
    return swift_dynamicCast();
  }

  v23 = v54;
  sub_100141DE8(v20, v22, _swiftEmptyArrayStorage, v51, v17);
  if (v23)
  {
  }

  v25 = v24;

  if (!v25)
  {
    v30 = type metadata accessor for DecodingError();
    swift_allocError();
    v32 = v46;
    sub_10002EB80(&qword_10019D6D8, &qword_1001540C8);
    *v32 = a1;

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    v33 = &enum case for DecodingError.typeMismatch(_:);
    goto LABEL_17;
  }

  v26 = v48;
  static String.Encoding.utf8.getter();
  v27 = String.data(using:allowLossyConversion:)();
  v29 = v28;

  (*(v49 + 8))(v26, v50);
  if (v29 >> 60 == 15)
  {
    v30 = type metadata accessor for DecodingError();
    swift_allocError();
    v32 = v31;

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    v33 = &enum case for DecodingError.dataCorrupted(_:);
LABEL_17:
    (*(*(v30 - 8) + 104))(v32, *v33, v30);
    return swift_willThrow();
  }

  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  return sub_10000D4DC(v27, v29);
}

uint64_t sub_100146B58()
{
  v0 = type metadata accessor for DecodingError();
  swift_allocError();
  v2 = v1;

  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v0 - 8) + 104))(v2, enum case for DecodingError.dataCorrupted(_:), v0);
  return swift_willThrow();
}

uint64_t sub_100146C18()
{
  v0 = type metadata accessor for DecodingError();
  swift_allocError();
  v2 = v1;

  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v0 - 8) + 104))(v2, enum case for DecodingError.dataCorrupted(_:), v0);
  return swift_willThrow();
}

uint64_t sub_100146CD8()
{
  v0 = type metadata accessor for DecodingError();
  swift_allocError();
  v2 = v1;

  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v0 - 8) + 104))(v2, enum case for DecodingError.dataCorrupted(_:), v0);
  return swift_willThrow();
}

uint64_t sub_100146D98()
{
  v0 = type metadata accessor for DecodingError();
  swift_allocError();
  v2 = v1;

  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v0 - 8) + 104))(v2, enum case for DecodingError.dataCorrupted(_:), v0);
  return swift_willThrow();
}

uint64_t sub_100146E58()
{

  return v0;
}

uint64_t sub_100146E90()
{
  v0 = sub_100146E58();

  return _swift_deallocClassInstance(v0);
}

unint64_t sub_1001474E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_100002F40(a1, a2, a3, a4);
  v6 = v4(v5);
  return v6 | ((HIDWORD(v6) & 1) << 32);
}

uint64_t sub_100147558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_100002F40(a1, a2, a3, a4);
  result = v4(v6);
  if (v5)
  {
    return v8;
  }

  return result;
}

uint64_t sub_1001475C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_100002F40(a1, a2, a3, a4);
  result = v4(v6);
  if (v5)
  {
    return v8;
  }

  return result;
}

uint64_t sub_100147710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SQLiteDecoder.SQLiteKeyedDecodingContainer(0, a2, a3, a4);
  sub_100145898(*(v4 + 16), *(v4 + 24));

  swift_getWitnessTable();
  return KeyedDecodingContainer.init<A>(_:)();
}

uint64_t sub_1001477BC()
{
  v0 = type metadata accessor for DecodingError();
  swift_allocError();
  v2 = v1;

  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v0 - 8) + 104))(v2, enum case for DecodingError.dataCorrupted(_:), v0);
  return swift_willThrow();
}

uint64_t sub_10014787C()
{
  v0 = type metadata accessor for DecodingError();
  swift_allocError();
  v2 = v1;

  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v0 - 8) + 104))(v2, enum case for DecodingError.dataCorrupted(_:), v0);
  return swift_willThrow();
}

uint64_t sub_10014793C()
{

  return v0;
}

uint64_t sub_10014797C()
{
  v0 = sub_10014793C();

  return _swift_deallocClassInstance(v0);
}

uint64_t sub_100147A78(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100147B7C()
{
  result = qword_10019D6E8;
  if (!qword_10019D6E8)
  {
    sub_10002EC70(&qword_10019D6E0, &qword_1001540D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10019D6E8);
  }

  return result;
}

Swift::String __swiftcall URL.path(percentEncoded:)(Swift::Bool percentEncoded)
{
  v1 = URL.path(percentEncoded:)(percentEncoded);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = String.lowercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t String.init(cString:)()
{
  return String.init(cString:)();
}

{
  return String.init(cString:)();
}

Swift::String_optional __swiftcall String.Iterator.next()()
{
  v0 = String.Iterator.next()();
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t String.subscript.getter()
{
  return String.subscript.getter();
}

{
  return String.subscript.getter();
}

uint64_t String.init<A>(_:)()
{
  return String.init<A>(_:)();
}

{
  return String.init<A>(_:)();
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> LNProperty.asJson(userInfo:)(Swift::OpaquePointer userInfo)
{
  v1 = LNProperty.asJson(userInfo:)(userInfo._rawValue);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> LNValueType.asJson(prettyPrinted:sortedKeys:)(Swift::Bool prettyPrinted, Swift::Bool sortedKeys)
{
  v2 = LNValueType.asJson(prettyPrinted:sortedKeys:)(prettyPrinted, sortedKeys);
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> LNEnumMetadata.asJson(prettyPrinted:)(Swift::Bool prettyPrinted)
{
  v1 = LNEnumMetadata.asJson(prettyPrinted:)(prettyPrinted);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> LNQueryMetadata.asJson(prettyPrinted:sortKeys:)(Swift::Bool prettyPrinted, Swift::Bool sortKeys)
{
  v2 = LNQueryMetadata.asJson(prettyPrinted:sortKeys:)(prettyPrinted, sortKeys);
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> LNActionMetadata.asJson(prettyPrinted:)(Swift::Bool prettyPrinted)
{
  v1 = LNActionMetadata.asJson(prettyPrinted:)(prettyPrinted);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> LNEntityMetadata.asJson(prettyPrinted:)(Swift::Bool prettyPrinted)
{
  v1 = LNEntityMetadata.asJson(prettyPrinted:)(prettyPrinted);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> LNAutoShortcutMetadata.asJson(userInfo:)(Swift::OpaquePointer userInfo)
{
  v1 = LNAutoShortcutMetadata.asJson(userInfo:)(userInfo._rawValue);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> LNAssistantIntentMetadata.asJson(userInfo:)(Swift::OpaquePointer userInfo)
{
  v1 = LNAssistantIntentMetadata.asJson(userInfo:)(userInfo._rawValue);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> LNExamplePhraseDescription.asJson(userInfo:)(Swift::OpaquePointer userInfo)
{
  v1 = LNExamplePhraseDescription.asJson(userInfo:)(userInfo._rawValue);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> LNAssistantSuggestionPhrase.asJson(userInfo:)(Swift::OpaquePointer userInfo)
{
  v1 = LNAssistantSuggestionPhrase.asJson(userInfo:)(userInfo._rawValue);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> LNAssistantAppEntityMetadata.asJson(userInfo:)(Swift::OpaquePointer userInfo)
{
  v1 = LNAssistantAppEntityMetadata.asJson(userInfo:)(userInfo._rawValue);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> LNAssistantIntentNegativePhrases.asJson(userInfo:)(Swift::OpaquePointer userInfo)
{
  v1 = LNAssistantIntentNegativePhrases.asJson(userInfo:)(userInfo._rawValue);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> LNValue.asJson(userInfo:)(Swift::OpaquePointer userInfo)
{
  v1 = LNValue.asJson(userInfo:)(userInfo._rawValue);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

uint64_t KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)()
{
  return KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
}

uint64_t KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)()
{
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)();
}